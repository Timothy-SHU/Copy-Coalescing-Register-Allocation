; ModuleID = 'tree-ssa-pre.c'
source_filename = "tree-ssa-pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.anon = type { i32, i32, i32, i32, i32 }
%struct.pre_expr_d = type { i32, i32, %union.pre_expr_union_d }
%union.pre_expr_union_d = type { ptr }
%struct.vn_ssa_aux = type { ptr, ptr, i32, i32, i32, i8 }
%struct.VEC_bitmap_set_t_base = type { i32, i32, [1 x ptr] }
%struct.bitmap_set = type { ptr, ptr }
%struct.vn_nary_op_s = type { i32, i32, i32, ptr, ptr, [4 x ptr] }
%struct.vn_reference_s = type { i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.vn_reference_op_struct = type { i32, ptr, ptr, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
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
%struct.VEC_vn_reference_op_s_base = type { i32, i32, [1 x %struct.vn_reference_op_struct] }
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
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%04d\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@pass_pre = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr @gate_pre, ptr @do_pre, ptr null, ptr null, i32 0, i32 69, i32 104, i32 0, i32 0, i32 1048576, i32 16391 } }, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"fre\00", align 1
@pass_fre = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.6, ptr @gate_fre, ptr @execute_fre, ptr null, ptr null, i32 0, i32 71, i32 40, i32 0, i32 0, i32 0, i32 7 } }, align 8
@bitmap_set_pool = internal unnamed_addr global ptr null, align 8
@grand_bitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@name_to_id = internal unnamed_addr global ptr null, align 8
@expression_to_id = internal unnamed_addr global ptr null, align 8
@next_expression_id = internal unnamed_addr global i32 0, align 4
@expressions = internal global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"{%s,\00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"%s[%d] := { \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c" (%04d)\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@flag_tree_pre = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@do_partial_partial = internal unnamed_addr global i8 0, align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"exp_gen\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"phi_gen\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"tmp_gen\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"avail_out\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"Insertions\00", align 1
@pre_stats = internal unnamed_addr global %struct.anon zeroinitializer, align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"PA inserted\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"New PHIs\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Eliminated\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Constified\00", align 1
@inserted_exprs = internal global ptr null, align 8
@.str.28 = private unnamed_addr constant [32 x i8] c"Removing unnecessary insertion:\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@in_fre = internal unnamed_addr global i8 0, align 1
@need_creation = internal global ptr null, align 8
@pretemp = internal unnamed_addr global ptr null, align 8
@prephitemp = internal unnamed_addr global ptr null, align 8
@postorder = internal unnamed_addr global ptr null, align 8
@inserted_phi_names = internal unnamed_addr global ptr null, align 8
@phi_translate_table = internal unnamed_addr global ptr null, align 8
@.str.31 = private unnamed_addr constant [12 x i8] c"Bitmap sets\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"pre_expr nodes\00", align 1
@pre_expr_pool = internal unnamed_addr global ptr null, align 8
@need_eh_cleanup = internal unnamed_addr global ptr null, align 8
@.str.33 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@has_abnormal_preds = internal unnamed_addr global ptr null, align 8
@changed_blocks = internal unnamed_addr global ptr null, align 8
@.str.34 = private unnamed_addr constant [23 x i8] c"Starting iteration %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"compute_antic iterations\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"compute_partial_antic iterations\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"ANTIC_OUT\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"ANTIC_IN\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"Block %d was deferred for a future iteration.\0A\00", align 1
@.str.41 = private unnamed_addr constant [55 x i8] c"Could not find SSA_NAME representative for expression:\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"pretmp\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"Created SSA_NAME representative \00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c" for expression:\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [7 x i8] c"PA_OUT\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"PA_IN\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"insert iterations\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"Found fully redundant value\0A\00", align 1
@.str.49 = private unnamed_addr constant [41 x i8] c"Found partial redundancy for expression \00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c" (%04d)\0A\00", align 1
@.str.51 = private unnamed_addr constant [84 x i8] c"Skipping insertion of phi for partial redundancy: Looks like an induction variable\0A\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"prephitmp\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"Created phi \00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c" in block %d\0A\00", align 1
@flag_tree_vectorize = external local_unnamed_addr global i32, align 4
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.55 = private unnamed_addr constant [10 x i8] c"Inserted \00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c" in predecessor %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"Replaced \00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c" with \00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@VN_TOP = external local_unnamed_addr global ptr, align 8
@.str.60 = private unnamed_addr constant [28 x i8] c"  Removed EH side effects.\0A\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"Deleted redundant store \00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"Replacing call target with \00", align 1
@.str.63 = private unnamed_addr constant [38 x i8] c"Replaced redundant PHI node defining \00", align 1
@flag_tree_fre = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_to_value(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !838 {
  %3 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  %4 = icmp eq i32 %3, %0
  br i1 %4, label %6, label %5, !prof !839

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @.str.1) #20
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr @value_expressions, align 8
  %8 = tail call fastcc i32 @VEC_bitmap_set_t_base_length(ptr noundef %7) #19
  %9 = icmp ugt i32 %8, %0
  br i1 %9, label %13, label %10, !prof !840

10:                                               ; preds = %6
  %11 = add i32 %0, 1
  tail call fastcc void @VEC_bitmap_set_t_heap_safe_grow_cleared(i32 noundef %11) #19
  %12 = load ptr, ptr @value_expressions, align 8
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ %7, %6 ]
  %15 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %14, i32 noundef %0) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20, !prof !841

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
define internal fastcc i32 @get_expr_value_id(ptr noundef %0) unnamed_addr #0 !prof !842 !PGOFuncName !843 {
  %2 = load i32, ptr %0, align 8, !tbaa !844
  switch i32 %2, label %25 [
    i32 3, label %3
    i32 0, label %11
    i32 1, label %17
    i32 2, label %21
  ], !prof !849

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !850
  %6 = tail call i32 @get_constant_value_id(ptr noundef %5) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26, !prof !851

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !850
  %10 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %9) #20
  tail call void @add_to_value(i32 noundef %10, ptr noundef nonnull %0) #19
  br label %26

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !850
  %14 = tail call ptr @VN_INFO(ptr noundef %13) #20
  %15 = getelementptr inbounds %struct.vn_ssa_aux, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !852
  br label %26

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !850
  %20 = load i32, ptr %19, align 8, !tbaa !855
  br label %26

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !850
  %24 = load i32, ptr %23, align 8, !tbaa !857
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
define internal fastcc i32 @VEC_bitmap_set_t_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !859 !PGOFuncName !860 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !861

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !862
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitmap_set_t_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !864 !PGOFuncName !865 {
  %2 = load ptr, ptr @value_expressions, align 8, !tbaa !866
  %3 = tail call fastcc i32 @VEC_bitmap_set_t_base_length(ptr noundef %2) #19
  tail call fastcc void @VEC_bitmap_set_t_heap_safe_grow(i32 noundef %0) #19
  %4 = load ptr, ptr @value_expressions, align 8, !tbaa !866
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
define internal fastcc ptr @VEC_bitmap_set_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !867 !PGOFuncName !868 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !866
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bitmap_set_new() unnamed_addr #0 !prof !869 !PGOFuncName !870 {
  %1 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !866
  %2 = tail call ptr @pool_alloc(ptr noundef %1) #20
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  store ptr %3, ptr %2, align 8, !tbaa !871
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  %5 = getelementptr inbounds %struct.bitmap_set, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !873
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_bitmap_set_t_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 !prof !874 !PGOFuncName !875 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !866
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_insert_into_set_1(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !876 !PGOFuncName !877 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %9, !prof !878

6:                                                ; preds = %4
  %7 = tail call zeroext i8 @value_id_constant_p(i32 noundef %2) #20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16, !prof !879

9:                                                ; preds = %6, %4
  %10 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !873
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %2) #20
  %13 = load ptr, ptr %0, align 8, !tbaa !871
  %14 = tail call fastcc i32 @get_or_alloc_expression_id(ptr noundef %1) #19
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %14) #20
  br label %16

16:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_pre_expr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !880 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !866
  tail call fastcc void @print_pre_expr(ptr noundef %2, ptr noundef %0) #19
  %3 = load ptr, ptr @stderr, align 8, !tbaa !866
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_pre_expr(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !880 !PGOFuncName !881 {
  %3 = alloca ptr, align 8
  %4 = load i32, ptr %1, align 8, !tbaa !844
  switch i32 %4, label %115 [
    i32 3, label %5
    i32 0, label %8
    i32 1, label %11
    i32 2, label %43
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !850
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %7, i32 noundef 0) #20
  br label %115

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !850
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %10, i32 noundef 0) #20
  br label %115

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !850
  %14 = getelementptr inbounds %struct.vn_nary_op_s, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65535
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !866
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %19) #19
  %21 = load i32, ptr %14, align 4
  %22 = icmp ult i32 %21, 65536
  br i1 %22, label %41, label %23

23:                                               ; preds = %11, %36
  %24 = phi i64 [ %38, %36 ], [ 0, %11 ]
  %25 = getelementptr inbounds %struct.vn_nary_op_s, ptr %13, i64 0, i32 5, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !866
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
  br i1 %40, label %23, label %41, !llvm.loop !882

41:                                               ; preds = %36, %11
  %42 = tail call i32 @fputc(i32 125, ptr %0)
  br label %115

43:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %44 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !850
  %46 = tail call i32 @fputc(i32 123, ptr %0)
  %47 = getelementptr inbounds %struct.vn_reference_s, ptr %45, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !884
  %49 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %48, i32 noundef 0, ptr noundef nonnull %3) #19, !range !885
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %106, label %51

51:                                               ; preds = %43, %101
  %52 = phi i32 [ %103, %101 ], [ 0, %43 ]
  %53 = load ptr, ptr %3, align 8, !tbaa !866
  %54 = load i32, ptr %53, align 8, !tbaa !886
  %55 = icmp eq i32 %54, 141
  br i1 %55, label %71, label %56

56:                                               ; preds = %51
  %57 = sext i32 %54 to i64
  %58 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !888
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = zext i32 %54 to i64
  %63 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !866
  %65 = tail call i32 @fputs(ptr %64, ptr %0)
  %66 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %53, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !889
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = tail call i32 @fputc(i32 60, ptr %0)
  br label %71

71:                                               ; preds = %61, %69, %56, %51
  %72 = phi i1 [ false, %69 ], [ true, %61 ], [ true, %56 ], [ true, %51 ]
  %73 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %53, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !889
  %75 = icmp eq ptr %74, null
  br i1 %75, label %90, label %76

76:                                               ; preds = %71
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef nonnull %74, i32 noundef 0) #20
  %77 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %53, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !890
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = tail call i32 @fputc(i32 44, ptr %0)
  %82 = load ptr, ptr %77, align 8, !tbaa !890
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %82, i32 noundef 0) #20
  br label %83

83:                                               ; preds = %80, %76
  %84 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %53, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !891
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = tail call i32 @fputc(i32 44, ptr %0)
  %89 = load ptr, ptr %84, align 8, !tbaa !891
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %89, i32 noundef 0) #20
  br label %90

90:                                               ; preds = %83, %87, %71
  br i1 %72, label %93, label %91

91:                                               ; preds = %90
  %92 = tail call i32 @fputc(i32 62, ptr %0)
  br label %93

93:                                               ; preds = %91, %90
  %94 = load ptr, ptr %47, align 8, !tbaa !884
  %95 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %94) #19
  %96 = add i32 %95, -1
  %97 = icmp eq i32 %52, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = tail call i32 @fputc(i32 44, ptr %0)
  %100 = load ptr, ptr %47, align 8, !tbaa !884
  br label %101

101:                                              ; preds = %98, %93
  %102 = phi ptr [ %100, %98 ], [ %94, %93 ]
  %103 = add i32 %52, 1
  %104 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %102, i32 noundef %103, ptr noundef nonnull %3) #19, !range !885
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %51, !llvm.loop !892

106:                                              ; preds = %101, %43
  %107 = tail call i32 @fputc(i32 125, ptr %0)
  %108 = getelementptr inbounds %struct.vn_reference_s, ptr %45, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !893
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = tail call i32 @fputc(i32 64, ptr %0)
  %113 = load ptr, ptr %108, align 8, !tbaa !893
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %113, i32 noundef 0) #20
  br label %114

114:                                              ; preds = %111, %106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %115

115:                                              ; preds = %2, %114, %41, %8, %5
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_bitmap_set(ptr noundef %0) local_unnamed_addr #0 !prof !880 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !866
  tail call fastcc void @print_bitmap_set(ptr noundef %2, ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_bitmap_set(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !880 !PGOFuncName !894 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_iterator, align 8
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %2, i32 noundef %3) #19
  %8 = icmp eq ptr %1, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  %10 = load ptr, ptr %1, align 8, !tbaa !871
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %10, ptr noundef nonnull %5) #19
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !895
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9, %19
  %14 = phi i1 [ true, %19 ], [ false, %9 ]
  %15 = load i32, ptr %5, align 4, !tbaa !888
  %16 = tail call fastcc ptr @expression_for_id(i32 noundef %15) #19
  br i1 %14, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 2, i64 1, ptr %0)
  br label %19

19:                                               ; preds = %17, %13
  tail call fastcc void @print_pre_expr(ptr noundef %0, ptr noundef %16) #19
  %20 = tail call fastcc i32 @get_expr_value_id(ptr noundef %16) #19
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %20) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %22 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !895
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %13, !llvm.loop !896

24:                                               ; preds = %19, %9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %25

25:                                               ; preds = %24, %4
  %26 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 3, i64 1, ptr %0)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_value_expressions(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !880 {
  %3 = alloca [10 x i8], align 1
  %4 = load ptr, ptr @value_expressions, align 8
  %5 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %4, i32 noundef %1) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #21
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %1) #19
  call fastcc void @print_bitmap_set(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 0) #19
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #21
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_value_expressions(i32 noundef %0) local_unnamed_addr #0 !prof !880 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !866
  tail call void @print_value_expressions(ptr noundef %2, i32 noundef %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_pre() #6 !prof !897 !PGOFuncName !898 {
  %1 = load i32, ptr @flag_tree_pre, align 4, !tbaa !888
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @do_pre() #0 !prof !897 !PGOFuncName !899 {
  %1 = tail call fastcc i32 @execute_pre(i8 noundef zeroext 0) #19
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_fre() #6 !prof !897 !PGOFuncName !900 {
  %1 = load i32, ptr @flag_tree_fre, align 4, !tbaa !888
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @execute_fre() #0 !prof !897 !PGOFuncName !901 {
  %1 = tail call fastcc i32 @execute_pre(i8 noundef zeroext 1) #19
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitmap_set_t_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !864 !PGOFuncName !902 {
  %2 = load ptr, ptr @value_expressions, align 8, !tbaa !866
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !903

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !862
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_bitmap_set_t_heap_reserve_exact(i32 noundef %8) #19
  %9 = load ptr, ptr @value_expressions, align 8, !tbaa !866, !nonnull !904, !noundef !904
  store i32 %0, ptr %9, align 8, !tbaa !862
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_bitmap_set_t_base_address(ptr noundef readnone %0) unnamed_addr #7 !prof !864 !PGOFuncName !905 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !903
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitmap_set_t_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !864 !PGOFuncName !906 {
  %2 = load ptr, ptr @value_expressions, align 8, !tbaa !866
  %3 = tail call fastcc i32 @VEC_bitmap_set_t_base_space(ptr noundef %2, i32 noundef %0) #19, !range !885
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !907

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #20
  store ptr %6, ptr @value_expressions, align 8, !tbaa !866
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_bitmap_set_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !864 !PGOFuncName !908 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !903

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !909
  %7 = load i32, ptr %0, align 8, !tbaa !862
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
declare i32 @get_constant_value_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_or_alloc_constant_value_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @VN_INFO(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @value_id_constant_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_or_alloc_expression_id(ptr noundef %0) unnamed_addr #0 !prof !910 !PGOFuncName !911 {
  %2 = tail call fastcc i32 @lookup_expression_id(ptr noundef %0) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !912

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @alloc_expression_id(ptr noundef %0) #19
  br label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 1
  store i32 %2, ptr %7, align 4, !tbaa !913
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %5, %4 ], [ %2, %6 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @lookup_expression_id(ptr noundef %0) unnamed_addr #0 !prof !914 !PGOFuncName !915 {
  %2 = load i32, ptr %0, align 8, !tbaa !844
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %14, !prof !916

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !850
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !850
  %9 = load ptr, ptr @name_to_id, align 8
  %10 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %9) #19
  %11 = icmp ugt i32 %10, %8
  br i1 %11, label %12, label %22, !prof !917

12:                                               ; preds = %4
  %13 = tail call fastcc i32 @VEC_unsigned_base_index(ptr noundef %9, i32 noundef %8) #19
  br label %22

14:                                               ; preds = %1
  %15 = load ptr, ptr @expression_to_id, align 8, !tbaa !866
  %16 = tail call ptr @htab_find_slot(ptr noundef %15, ptr noundef nonnull %0, i32 noundef 0) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18, !prof !918

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !866
  %20 = getelementptr inbounds %struct.pre_expr_d, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !913
  br label %22

22:                                               ; preds = %14, %12, %4, %18
  %23 = phi i32 [ %21, %18 ], [ %13, %12 ], [ 0, %4 ], [ 0, %14 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @alloc_expression_id(ptr noundef %0) unnamed_addr #0 !prof !919 !PGOFuncName !920 {
  %2 = load i32, ptr @next_expression_id, align 4, !tbaa !888
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %6, !prof !921

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 254, ptr noundef nonnull @.str.1) #20
  %5 = load i32, ptr @next_expression_id, align 4, !tbaa !888
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %2, %1 ], [ %5, %4 ]
  %8 = add i32 %7, 1
  store i32 %8, ptr @next_expression_id, align 4, !tbaa !888
  %9 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 1
  store i32 %7, ptr %9, align 4, !tbaa !913
  tail call fastcc void @VEC_pre_expr_heap_safe_push(ptr noundef nonnull @expressions, ptr noundef %0) #19
  %10 = load i32, ptr %0, align 8, !tbaa !844
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %37, !prof !922

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !850
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !850
  %17 = load ptr, ptr @cfun, align 8, !tbaa !866
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !923
  %20 = getelementptr inbounds %struct.gimple_df, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !925
  %22 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %21) #19
  tail call fastcc void @VEC_unsigned_heap_reserve(i32 noundef %22) #19
  %23 = load ptr, ptr @cfun, align 8, !tbaa !866
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !923
  %26 = getelementptr inbounds %struct.gimple_df, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !925
  %28 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %27) #19
  tail call fastcc void @VEC_unsigned_heap_safe_grow_cleared(i32 noundef %28) #19
  %29 = load ptr, ptr @name_to_id, align 8
  %30 = tail call fastcc i32 @VEC_unsigned_base_index(ptr noundef %29, i32 noundef %16) #19
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !929

32:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 265, ptr noundef nonnull @.str.1) #20
  %33 = load ptr, ptr @name_to_id, align 8
  br label %34

34:                                               ; preds = %12, %32
  %35 = phi ptr [ %29, %12 ], [ %33, %32 ]
  %36 = load i32, ptr %9, align 4, !tbaa !913
  tail call fastcc void @VEC_unsigned_base_replace(ptr noundef %35, i32 noundef %16, i32 noundef %36) #19
  br label %44

37:                                               ; preds = %6
  %38 = load ptr, ptr @expression_to_id, align 8, !tbaa !866
  %39 = tail call ptr @htab_find_slot(ptr noundef %38, ptr noundef nonnull %0, i32 noundef 1) #20
  %40 = load ptr, ptr %39, align 8, !tbaa !866
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42, !prof !930

42:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 271, ptr noundef nonnull @.str.1) #20
  br label %43

43:                                               ; preds = %37, %42
  store ptr %0, ptr %39, align 8, !tbaa !866
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, ptr @next_expression_id, align 4, !tbaa !888
  %46 = add i32 %45, -1
  ret i32 %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !931 !PGOFuncName !932 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !933

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !934
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !936 !PGOFuncName !937 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !888
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_pre_expr_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !938 !PGOFuncName !939 {
  tail call fastcc void @VEC_pre_expr_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !866
  tail call fastcc void @VEC_pre_expr_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_reserve(i32 noundef %0) unnamed_addr #0 !prof !940 !PGOFuncName !941 {
  %2 = load ptr, ptr @name_to_id, align 8, !tbaa !866
  %3 = tail call fastcc i32 @VEC_unsigned_base_space(ptr noundef %2, i32 noundef %0) #19, !range !885
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !942

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 4) #20
  store ptr %6, ptr @name_to_id, align 8, !tbaa !866
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !943 !PGOFuncName !944 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !945

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !946
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !940 !PGOFuncName !948 {
  %2 = load ptr, ptr @name_to_id, align 8, !tbaa !866
  %3 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %2) #19
  tail call fastcc void @VEC_unsigned_heap_safe_grow(i32 noundef %0) #19
  %4 = load ptr, ptr @name_to_id, align 8, !tbaa !866
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
define internal fastcc void @VEC_unsigned_base_replace(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !prof !940 !PGOFuncName !949 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %4
  store i32 %2, ptr %5, align 4, !tbaa !888
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_pre_expr_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !938 !PGOFuncName !950 {
  %2 = load ptr, ptr %0, align 8, !tbaa !866
  %3 = tail call fastcc i32 @VEC_pre_expr_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !951

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !866
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_pre_expr_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !938 !PGOFuncName !952 {
  %3 = load i32, ptr %0, align 8, !tbaa !953
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !953
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !866
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_pre_expr_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !938 !PGOFuncName !955 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !956

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !957
  %6 = load i32, ptr %0, align 8, !tbaa !953
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
define internal fastcc i32 @VEC_unsigned_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !958 !PGOFuncName !959 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !960

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !961
  %7 = load i32, ptr %0, align 4, !tbaa !934
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
define internal fastcc void @VEC_unsigned_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !940 !PGOFuncName !962 {
  %2 = load ptr, ptr @name_to_id, align 8, !tbaa !866
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !963

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 4, !tbaa !934
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_unsigned_heap_reserve_exact(i32 noundef %8) #19
  %9 = load ptr, ptr @name_to_id, align 8, !tbaa !866, !nonnull !904, !noundef !904
  store i32 %0, ptr %9, align 4, !tbaa !934
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_unsigned_base_address(ptr noundef readnone %0) unnamed_addr #7 !prof !940 !PGOFuncName !964 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !963
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !940 !PGOFuncName !965 {
  %2 = load ptr, ptr @name_to_id, align 8, !tbaa !866
  %3 = tail call fastcc i32 @VEC_unsigned_base_space(ptr noundef %2, i32 noundef %0) #19, !range !885
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !963

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 4) #20
  store ptr %6, ptr @name_to_id, align 8, !tbaa !866
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !966 !PGOFuncName !967 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !968

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !969
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !971

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !866
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !972 !PGOFuncName !973 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !974

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !969
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !975 !PGOFuncName !976 {
  %4 = load ptr, ptr %1, align 8, !tbaa !977
  store ptr %4, ptr %0, align 8, !tbaa !979
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !982
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !983

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !979
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !984
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !986
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !987
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !988
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !888
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !989 !PGOFuncName !990 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !988
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !991

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !992

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !888
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !993, !llvm.loop !994

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !888
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !888
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !986
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !979
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !986
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !995

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !987
  store i64 %35, ptr %3, align 8, !tbaa !988
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !996

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !888
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !888
  %40 = load i32, ptr %23, align 8, !tbaa !986
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !986
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !997, !llvm.loop !998

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !999
  store ptr %44, ptr %0, align 8, !tbaa !979
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !1000

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !984
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !888
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !988
  store i32 %16, ptr %1, align 4, !tbaa !888
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @expression_for_id(i32 noundef %0) unnamed_addr #11 !prof !1001 !PGOFuncName !1002 {
  %2 = load ptr, ptr @expressions, align 8
  %3 = tail call fastcc ptr @VEC_pre_expr_base_index(ptr noundef %2, i32 noundef %0) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #4 !prof !1003 !PGOFuncName !1004 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !988
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !988
  %6 = load i32, ptr %1, align 4, !tbaa !888
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !888
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_pre_expr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1001 !PGOFuncName !1005 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !866
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @execute_pre(i8 noundef zeroext %0) unnamed_addr #0 !prof !1006 !PGOFuncName !1007 {
  %2 = load i32, ptr @optimize, align 4, !tbaa !888
  %3 = icmp sgt i32 %2, 2
  br i1 %3, label %4, label %9, !prof !1008

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !866
  %6 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %5) #20
  %7 = icmp ne i8 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  store i8 %10, ptr @do_partial_partial, align 1, !tbaa !850
  %11 = icmp eq i8 %0, 0
  br i1 %11, label %12, label %15, !prof !1009

12:                                               ; preds = %9
  tail call void @loop_optimizer_init(i32 noundef 7) #20
  %13 = tail call zeroext i8 @run_scc_vn(i8 noundef zeroext 0) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %19, !prof !1010

15:                                               ; preds = %9
  %16 = tail call zeroext i8 @run_scc_vn(i8 noundef zeroext %0) #20
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %81, label %19, !prof !1010

18:                                               ; preds = %12
  tail call fastcc void @remove_dead_inserted_code() #19
  tail call void @loop_optimizer_finalize() #20
  br label %81

19:                                               ; preds = %15, %12
  tail call fastcc void @init_pre(i8 noundef zeroext %0) #19
  tail call void @scev_initialize() #20
  tail call fastcc void @compute_avail() #19
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %21 = icmp eq ptr %20, null
  br i1 %21, label %58, label %22, !prof !1008

22:                                               ; preds = %19
  %23 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @cfun, align 8, !tbaa !866
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !1011
  %30 = load ptr, ptr %29, align 8, !tbaa !866
  %31 = icmp eq ptr %30, null
  br i1 %31, label %58, label %32

32:                                               ; preds = %26, %32
  %33 = phi ptr [ %56, %32 ], [ %30, %26 ]
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !1012
  %37 = load ptr, ptr %36, align 8, !tbaa !1014
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !1016
  tail call fastcc void @print_bitmap_set(ptr noundef %34, ptr noundef %37, ptr noundef nonnull @.str.19, i32 noundef %39) #19
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %41 = load ptr, ptr %35, align 8, !tbaa !1012
  %42 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !1017
  %44 = load i32, ptr %38, align 8, !tbaa !1016
  tail call fastcc void @print_bitmap_set(ptr noundef %40, ptr noundef %43, ptr noundef nonnull @.str.20, i32 noundef %44) #19
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %46 = load ptr, ptr %35, align 8, !tbaa !1012
  %47 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !1018
  %49 = load i32, ptr %38, align 8, !tbaa !1016
  tail call fastcc void @print_bitmap_set(ptr noundef %45, ptr noundef %48, ptr noundef nonnull @.str.21, i32 noundef %49) #19
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %51 = load ptr, ptr %35, align 8, !tbaa !1012
  %52 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !1019
  %54 = load i32, ptr %38, align 8, !tbaa !1016
  tail call fastcc void @print_bitmap_set(ptr noundef %50, ptr noundef %53, ptr noundef nonnull @.str.22, i32 noundef %54) #19
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !866
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %32, !llvm.loop !1020

58:                                               ; preds = %32, %26, %22, %19
  br i1 %11, label %59, label %67, !prof !1009

59:                                               ; preds = %58
  %60 = load ptr, ptr @cfun, align 8, !tbaa !866
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !1011
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !1021
  %65 = icmp slt i32 %64, 4000
  br i1 %65, label %66, label %67, !prof !1023

66:                                               ; preds = %59
  tail call fastcc void @compute_antic() #19
  tail call fastcc void @insert() #19
  br label %67

67:                                               ; preds = %66, %59, %58
  %68 = tail call fastcc i32 @eliminate() #19
  %69 = load ptr, ptr @cfun, align 8, !tbaa !866
  %70 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 1), align 4, !tbaa !1024
  tail call void @statistics_counter_event(ptr noundef %69, ptr noundef nonnull @.str.23, i32 noundef %70) #20
  %71 = load ptr, ptr @cfun, align 8, !tbaa !866
  %72 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 2), align 4, !tbaa !1026
  tail call void @statistics_counter_event(ptr noundef %71, ptr noundef nonnull @.str.24, i32 noundef %72) #20
  %73 = load ptr, ptr @cfun, align 8, !tbaa !866
  %74 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 3), align 4, !tbaa !1027
  tail call void @statistics_counter_event(ptr noundef %73, ptr noundef nonnull @.str.25, i32 noundef %74) #20
  %75 = load ptr, ptr @cfun, align 8, !tbaa !866
  %76 = load i32, ptr @pre_stats, align 4, !tbaa !1028
  tail call void @statistics_counter_event(ptr noundef %75, ptr noundef nonnull @.str.26, i32 noundef %76) #20
  %77 = load ptr, ptr @cfun, align 8, !tbaa !866
  %78 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 4), align 4, !tbaa !1029
  tail call void @statistics_counter_event(ptr noundef %77, ptr noundef nonnull @.str.27, i32 noundef %78) #20
  tail call void @remove_fake_exit_edges() #20
  tail call void @gsi_commit_edge_inserts() #20
  tail call fastcc void @clear_expression_ids() #19
  tail call void @free_scc_vn() #20
  br i1 %11, label %79, label %80, !prof !1009

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
define internal fastcc void @remove_dead_inserted_code() unnamed_addr #0 !prof !897 !PGOFuncName !1030 {
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
  store ptr %8, ptr %1, align 8, !tbaa !866
  %9 = load ptr, ptr @inserted_exprs, align 8
  %10 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %2) #19, !range !885
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17, !prof !1031

12:                                               ; preds = %25, %0
  %13 = phi ptr [ %9, %0 ], [ %26, %25 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !866
  %15 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %8) #19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %37, !prof !1031

17:                                               ; preds = %0, %25
  %18 = phi ptr [ %26, %25 ], [ %9, %0 ]
  %19 = phi i32 [ %27, %25 ], [ 0, %0 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !866
  %21 = tail call fastcc i32 @gimple_plf(ptr noundef %20) #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !1032

23:                                               ; preds = %17
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %8, ptr noundef %20) #19
  %24 = load ptr, ptr @inserted_exprs, align 8
  br label %25

25:                                               ; preds = %17, %23
  %26 = phi ptr [ %18, %17 ], [ %24, %23 ]
  %27 = add nuw nsw i32 %19, 1
  %28 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %26, i32 noundef %27, ptr noundef nonnull %2) #19, !range !885
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %12, label %17, !prof !1033, !llvm.loop !1034

30:                                               ; preds = %79
  %31 = load ptr, ptr @inserted_exprs, align 8
  br label %32

32:                                               ; preds = %30, %12
  %33 = phi ptr [ %13, %12 ], [ %31, %30 ]
  %34 = phi ptr [ %14, %12 ], [ %39, %30 ]
  store ptr %34, ptr %2, align 8, !tbaa !866
  %35 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %33, i32 noundef 0, ptr noundef nonnull %2) #19, !range !885
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %111, label %83, !prof !1031

37:                                               ; preds = %12, %79
  %38 = phi ptr [ %80, %79 ], [ %8, %12 ]
  %39 = tail call fastcc ptr @VEC_gimple_base_pop(ptr noundef %38) #19
  %40 = tail call fastcc i32 @gimple_code(ptr noundef %39) #19, !range !1035
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %42, label %62, !prof !1036

42:                                               ; preds = %37
  %43 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %39) #19
  call fastcc void @VEC_gimple_heap_reserve(ptr noundef nonnull %1, i32 noundef %43) #19
  %44 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %39) #19
  %45 = icmp eq i32 %44, 0
  %46 = load ptr, ptr %1, align 8
  br i1 %45, label %79, label %47, !prof !1037

47:                                               ; preds = %42, %58
  %48 = phi i32 [ %59, %58 ], [ 0, %42 ]
  %49 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %39, i32 noundef %48) #19
  %50 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %49) #19
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 141
  br i1 %53, label %54, label %58, !prof !1038

54:                                               ; preds = %47
  %55 = tail call fastcc ptr @mark_operand_necessary(ptr noundef nonnull %50) #19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57, !prof !1039

57:                                               ; preds = %54
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %46, ptr noundef nonnull %55) #19
  br label %58

58:                                               ; preds = %54, %57, %47
  %59 = add nuw i32 %48, 1
  %60 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %39) #19
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %47, label %79, !prof !1040, !llvm.loop !1041

62:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  %63 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %39, i32 noundef 5) #19
  %64 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %77, !prof !1042

66:                                               ; preds = %62, %71
  %67 = phi ptr [ %72, %71 ], [ %63, %62 ]
  %68 = tail call fastcc ptr @mark_operand_necessary(ptr noundef %67) #19
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70, !prof !1043

70:                                               ; preds = %66
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %68) #19
  br label %71

71:                                               ; preds = %70, %66
  %72 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #19
  %73 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %66, label %75, !prof !1044, !llvm.loop !1045

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
  br i1 %82, label %30, label %37, !prof !1046, !llvm.loop !1047

83:                                               ; preds = %32, %106
  %84 = phi ptr [ %107, %106 ], [ %33, %32 ]
  %85 = phi i32 [ %108, %106 ], [ 0, %32 ]
  %86 = load ptr, ptr %2, align 8, !tbaa !866
  %87 = call fastcc i32 @gimple_plf(ptr noundef %86) #19
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %106, !prof !1048

89:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %91 = icmp eq ptr %90, null
  br i1 %91, label %99, label %92, !prof !1049

92:                                               ; preds = %89
  %93 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %94 = and i32 %93, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = call i64 @fwrite(ptr nonnull @.str.28, i64 31, i64 1, ptr nonnull %90)
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !866
  call void @print_gimple_stmt(ptr noundef %98, ptr noundef %86, i32 noundef 0, i32 noundef 0) #20
  br label %99

99:                                               ; preds = %96, %92, %89
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %86) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1050
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  %100 = call fastcc i32 @gimple_code(ptr noundef %86) #19, !range !1035
  %101 = icmp eq i32 %100, 16
  br i1 %101, label %102, label %103, !prof !1049

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
  %109 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %107, i32 noundef %108, ptr noundef nonnull %2) #19, !range !885
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %83, !prof !1033, !llvm.loop !1051

111:                                              ; preds = %106, %32
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret void
}

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_pre(i8 noundef zeroext %0) unnamed_addr #0 !prof !1006 !PGOFuncName !1052 {
  store i32 1, ptr @next_expression_id, align 4, !tbaa !888
  store ptr null, ptr @expressions, align 8, !tbaa !866
  tail call fastcc void @VEC_pre_expr_heap_safe_push(ptr noundef nonnull @expressions, ptr noundef null) #19
  %2 = tail call i32 @get_max_value_id() #20
  %3 = add i32 %2, 1
  %4 = tail call fastcc ptr @VEC_bitmap_set_t_heap_alloc(i32 noundef %3) #19
  store ptr %4, ptr @value_expressions, align 8, !tbaa !866
  %5 = tail call i32 @get_max_value_id() #20
  %6 = add i32 %5, 1
  tail call fastcc void @VEC_bitmap_set_t_heap_safe_grow_cleared(i32 noundef %6) #19
  store ptr null, ptr @name_to_id, align 8, !tbaa !866
  store i8 %0, ptr @in_fre, align 1, !tbaa !850
  store ptr null, ptr @inserted_exprs, align 8, !tbaa !866
  store ptr null, ptr @need_creation, align 8, !tbaa !866
  store ptr null, ptr @pretemp, align 8, !tbaa !866
  store ptr null, ptr @prephitemp, align 8, !tbaa !866
  tail call void @connect_infinite_loops_to_exit() #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) @pre_stats, i8 0, i64 20, i1 false)
  %7 = load ptr, ptr @cfun, align 8, !tbaa !866
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !1011
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !1021
  %12 = add nsw i32 %11, -2
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr @xmalloc(i64 noundef %14) #20
  store ptr %15, ptr @postorder, align 8, !tbaa !866
  tail call fastcc void @my_rev_post_order_compute(ptr noundef %15) #19
  %16 = load ptr, ptr @cfun, align 8, !tbaa !866
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !1011
  %19 = load ptr, ptr %18, align 8, !tbaa !866
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21, !prof !1053

21:                                               ; preds = %1, %21
  %22 = phi ptr [ %26, %21 ], [ %19, %1 ]
  %23 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #20
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !1012
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !866
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %21, !prof !1054, !llvm.loop !1055

28:                                               ; preds = %21, %1
  tail call void @calculate_dominance_info(i32 noundef 2) #20
  tail call void @calculate_dominance_info(i32 noundef 1) #20
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @grand_bitmap_obstack) #20
  %29 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  store ptr %29, ptr @inserted_phi_names, align 8, !tbaa !866
  %30 = tail call ptr @htab_create(i64 noundef 5110, ptr noundef nonnull @expr_pred_trans_hash, ptr noundef nonnull @expr_pred_trans_eq, ptr noundef nonnull @free) #20
  store ptr %30, ptr @phi_translate_table, align 8, !tbaa !866
  %31 = load ptr, ptr @cfun, align 8, !tbaa !866
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !923
  %34 = getelementptr inbounds %struct.gimple_df, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !925
  %36 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %35) #19
  %37 = mul i32 %36, 3
  %38 = zext i32 %37 to i64
  %39 = tail call ptr @htab_create(i64 noundef %38, ptr noundef nonnull @pre_expr_hash, ptr noundef nonnull @pre_expr_eq, ptr noundef null) #20
  store ptr %39, ptr @expression_to_id, align 8, !tbaa !866
  %40 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.31, i64 noundef 16, i64 noundef 30) #20
  store ptr %40, ptr @bitmap_set_pool, align 8, !tbaa !866
  %41 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.32, i64 noundef 16, i64 noundef 30) #20
  store ptr %41, ptr @pre_expr_pool, align 8, !tbaa !866
  %42 = load ptr, ptr @cfun, align 8, !tbaa !866
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !1011
  %45 = load ptr, ptr %44, align 8, !tbaa !866
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47, !prof !1053

47:                                               ; preds = %28, %47
  %48 = phi ptr [ %62, %47 ], [ %45, %28 ]
  %49 = tail call fastcc ptr @bitmap_set_new() #19
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !1012
  store ptr %49, ptr %51, align 8, !tbaa !1014
  %52 = tail call fastcc ptr @bitmap_set_new() #19
  %53 = load ptr, ptr %50, align 8, !tbaa !1012
  %54 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %53, i64 0, i32 1
  store ptr %52, ptr %54, align 8, !tbaa !1017
  %55 = tail call fastcc ptr @bitmap_set_new() #19
  %56 = load ptr, ptr %50, align 8, !tbaa !1012
  %57 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %56, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !1018
  %58 = tail call fastcc ptr @bitmap_set_new() #19
  %59 = load ptr, ptr %50, align 8, !tbaa !1012
  %60 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %59, i64 0, i32 3
  store ptr %58, ptr %60, align 8, !tbaa !1019
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !866
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %47, !prof !1054, !llvm.loop !1056

64:                                               ; preds = %47, %28
  %65 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  store ptr %65, ptr @need_eh_cleanup, align 8, !tbaa !866
  ret void
}

; Function Attrs: optsize
declare void @scev_initialize() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_avail() unnamed_addr #0 !prof !1006 !PGOFuncName !1057 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = load ptr, ptr @cfun, align 8, !tbaa !866
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !923
  %13 = getelementptr inbounds %struct.gimple_df, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !925
  %15 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %14) #19
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %17, label %64, !prof !1058

17:                                               ; preds = %0, %55
  %18 = phi ptr [ %61, %55 ], [ %14, %0 ]
  %19 = phi i32 [ %56, %55 ], [ 1, %0 ]
  %20 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %18, i32 noundef %19) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %55, label %22, !prof !1059

22:                                               ; preds = %17
  %23 = load i64, ptr %20, align 8
  %24 = and i64 %23, 4294967296
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %55, label %26, !prof !1060

26:                                               ; preds = %22
  %27 = tail call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %20) #19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %55, !prof !1058

29:                                               ; preds = %26
  %30 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %20) #20
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %55, label %32, !prof !1061

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %20) #19
  %34 = tail call fastcc i32 @get_expr_value_id(ptr noundef %33) #19
  tail call void @add_to_value(i32 noundef %34, ptr noundef %33) #19
  %35 = load i8, ptr @in_fre, align 1, !tbaa !850
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %46, !prof !1009

37:                                               ; preds = %32
  %38 = load ptr, ptr @cfun, align 8, !tbaa !866
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !1011
  %41 = load ptr, ptr %40, align 8, !tbaa !1062
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !1012
  %44 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !1018
  tail call fastcc void @bitmap_insert_into_set(ptr noundef %45, ptr noundef %33) #19
  br label %46

46:                                               ; preds = %37, %32
  %47 = load ptr, ptr @cfun, align 8, !tbaa !866
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !1011
  %50 = load ptr, ptr %49, align 8, !tbaa !1062
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !1012
  %53 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !1019
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %54, ptr noundef %33) #19
  br label %55

55:                                               ; preds = %17, %22, %26, %29, %46
  %56 = add nuw i32 %19, 1
  %57 = load ptr, ptr @cfun, align 8, !tbaa !866
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !923
  %60 = getelementptr inbounds %struct.gimple_df, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !925
  %62 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %61) #19
  %63 = icmp ult i32 %56, %62
  br i1 %63, label %17, label %64, !prof !1063, !llvm.loop !1064

64:                                               ; preds = %55, %0
  %65 = phi ptr [ %10, %0 ], [ %57, %55 ]
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !1011
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !1021
  %70 = sext i32 %69 to i64
  %71 = shl nsw i64 %70, 3
  %72 = tail call ptr @xmalloc(i64 noundef %71) #20
  %73 = load ptr, ptr @cfun, align 8, !tbaa !866
  %74 = getelementptr inbounds %struct.function, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !1011
  %76 = load ptr, ptr %75, align 8, !tbaa !1062
  %77 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %76) #20
  %78 = icmp eq ptr %77, null
  br i1 %78, label %376, label %81, !prof !1053

79:                                               ; preds = %81
  %80 = icmp eq i64 %84, 0
  br i1 %80, label %376, label %88, !prof !1065

81:                                               ; preds = %64, %81
  %82 = phi ptr [ %86, %81 ], [ %77, %64 ]
  %83 = phi i64 [ %84, %81 ], [ 0, %64 ]
  %84 = add i64 %83, 1
  %85 = getelementptr inbounds ptr, ptr %72, i64 %83
  store ptr %82, ptr %85, align 8, !tbaa !866
  %86 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %82) #20
  %87 = icmp eq ptr %86, null
  br i1 %87, label %79, label %81, !prof !1058, !llvm.loop !1066

88:                                               ; preds = %79, %373
  %89 = phi i64 [ %374, %373 ], [ %84, %79 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #21
  %90 = add i64 %89, -1
  %91 = getelementptr inbounds ptr, ptr %72, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !866
  %93 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %92) #20
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95, !prof !1067

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !1012
  %98 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %97, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !1019
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !1012
  %102 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %101, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !1019
  call fastcc void @bitmap_set_copy(ptr noundef %99, ptr noundef %103) #19
  br label %104

104:                                              ; preds = %95, %88
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %92) #20
  %105 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !895
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %111, !prof !1068

107:                                              ; preds = %104, %107
  %108 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19
  call fastcc void @make_values_for_phi(ptr noundef %108, ptr noundef %92) #19
  call fastcc void @gsi_next(ptr noundef nonnull %1) #19
  %109 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !895
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %107, label %111, !prof !1069, !llvm.loop !1070

111:                                              ; preds = %107, %104
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !1012
  %114 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %113, i64 0, i32 8
  %115 = load i8, ptr %114, align 8
  %116 = and i8 %115, -5
  store i8 %116, ptr %114, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %92) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1050
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  %117 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !895
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %363, !prof !1071

119:                                              ; preds = %111, %360
  %120 = phi i32 [ %122, %360 ], [ 1, %111 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  %121 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19
  %122 = add i32 %120, 1
  call fastcc void @gimple_set_uid(ptr noundef %121, i32 noundef %120) #19
  %123 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %121) #19, !range !895
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %140, label %125, !prof !1072

125:                                              ; preds = %119
  %126 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %121) #20
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %140, !prof !1073

128:                                              ; preds = %125
  %129 = call i32 @gimple_call_flags(ptr noundef %121) #20
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132, !prof !1074

132:                                              ; preds = %128
  %133 = and i32 %129, 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %132, %128
  %136 = load ptr, ptr %112, align 8, !tbaa !1012
  %137 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %136, i64 0, i32 8
  %138 = load i8, ptr %137, align 8
  %139 = or i8 %138, 4
  store i8 %139, ptr %137, align 8
  br label %140

140:                                              ; preds = %132, %135, %125, %119
  %141 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %121, i32 noundef 2) #19
  %142 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %161, !prof !1075

144:                                              ; preds = %140, %154
  %145 = phi ptr [ %158, %154 ], [ %141, %140 ]
  %146 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %145) #19
  %147 = call fastcc i32 @get_expr_value_id(ptr noundef %146) #19
  call void @add_to_value(i32 noundef %147, ptr noundef %146) #19
  %148 = load i8, ptr @in_fre, align 1, !tbaa !850
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %154, !prof !1076

150:                                              ; preds = %144
  %151 = load ptr, ptr %112, align 8, !tbaa !1012
  %152 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %151, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !1018
  call fastcc void @bitmap_insert_into_set(ptr noundef %153, ptr noundef %146) #19
  br label %154

154:                                              ; preds = %150, %144
  %155 = load ptr, ptr %112, align 8, !tbaa !1012
  %156 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %155, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !1019
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %157, ptr noundef %146) #19
  %158 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #19
  %159 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %144, label %161, !prof !1077, !llvm.loop !1078

161:                                              ; preds = %154, %140
  %162 = call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %121) #19, !range !895
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %360, !prof !1079

164:                                              ; preds = %161
  %165 = call zeroext i8 @stmt_could_throw_p(ptr noundef %121) #20
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %360, !prof !1079

167:                                              ; preds = %164
  %168 = call fastcc i32 @gimple_code(ptr noundef %121) #19, !range !1035
  %169 = trunc i32 %168 to i8
  switch i8 %169, label %360 [
    i8 9, label %170
    i8 8, label %179
    i8 6, label %244
  ], !prof !1080

170:                                              ; preds = %167
  %171 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %121, i32 noundef 1) #19
  %172 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %360, !prof !1081

174:                                              ; preds = %170, %174
  %175 = phi ptr [ %176, %174 ], [ %171, %170 ]
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef %175) #19
  %176 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #19
  %177 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %174, label %360, !prof !1082, !llvm.loop !1083

179:                                              ; preds = %167
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !866
  %180 = call fastcc zeroext i8 @can_value_number_call(ptr noundef %121) #19, !range !895
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %243, label %182, !prof !1084

182:                                              ; preds = %179
  call void @copy_reference_ops_from_call(ptr noundef %121, ptr noundef nonnull %6) #20
  %183 = call fastcc ptr @gimple_vuse(ptr noundef %121) #19
  %184 = call fastcc ptr @gimple_expr_type(ptr noundef %121) #19
  %185 = load ptr, ptr %6, align 8, !tbaa !866
  %186 = call ptr @vn_reference_lookup_pieces(ptr noundef %183, i32 noundef 0, ptr noundef %184, ptr noundef %185, ptr noundef nonnull %4, i8 noundef zeroext 0) #20
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %6) #19
  %187 = load ptr, ptr %4, align 8, !tbaa !866
  %188 = icmp eq ptr %187, null
  br i1 %188, label %243, label %189

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.vn_reference_s, ptr %187, i64 0, i32 5
  %191 = load ptr, ptr %190, align 8, !tbaa !884
  %192 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %191, i32 noundef 0, ptr noundef nonnull %5) #19, !range !885
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %230, label %194

194:                                              ; preds = %189, %223
  %195 = phi i32 [ %224, %223 ], [ 0, %189 ]
  %196 = load ptr, ptr %5, align 8, !tbaa !866
  %197 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %196, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !889
  %199 = icmp eq ptr %198, null
  br i1 %199, label %205, label %200

200:                                              ; preds = %194
  %201 = load i64, ptr %198, align 8
  %202 = and i64 %201, 65535
  %203 = icmp eq i64 %202, 141
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %198) #19
  br label %205

205:                                              ; preds = %204, %200, %194
  %206 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %196, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !890
  %208 = icmp eq ptr %207, null
  br i1 %208, label %214, label %209

209:                                              ; preds = %205
  %210 = load i64, ptr %207, align 8
  %211 = and i64 %210, 65535
  %212 = icmp eq i64 %211, 141
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %207) #19
  br label %214

214:                                              ; preds = %213, %209, %205
  %215 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %196, i64 0, i32 4
  %216 = load ptr, ptr %215, align 8, !tbaa !891
  %217 = icmp eq ptr %216, null
  br i1 %217, label %223, label %218

218:                                              ; preds = %214
  %219 = load i64, ptr %216, align 8
  %220 = and i64 %219, 65535
  %221 = icmp eq i64 %220, 141
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %216) #19
  br label %223

223:                                              ; preds = %214, %218, %222
  %224 = add i32 %195, 1
  %225 = load ptr, ptr %4, align 8, !tbaa !866
  %226 = getelementptr inbounds %struct.vn_reference_s, ptr %225, i64 0, i32 5
  %227 = load ptr, ptr %226, align 8, !tbaa !884
  %228 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %227, i32 noundef %224, ptr noundef nonnull %5) #19, !range !885
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %194, !llvm.loop !1085

230:                                              ; preds = %223, %189
  %231 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !866
  %232 = call ptr @pool_alloc(ptr noundef %231) #20
  store i32 2, ptr %232, align 8, !tbaa !844
  %233 = getelementptr inbounds %struct.pre_expr_d, ptr %232, i64 0, i32 1
  store i32 0, ptr %233, align 4, !tbaa !913
  %234 = load ptr, ptr %4, align 8, !tbaa !866
  %235 = getelementptr inbounds %struct.pre_expr_d, ptr %232, i64 0, i32 2
  store ptr %234, ptr %235, align 8, !tbaa !850
  %236 = call fastcc i32 @get_or_alloc_expression_id(ptr noundef nonnull %232) #19
  %237 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %232) #19
  call void @add_to_value(i32 noundef %237, ptr noundef nonnull %232) #19
  %238 = load i8, ptr @in_fre, align 1, !tbaa !850
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %230
  %241 = load ptr, ptr %112, align 8, !tbaa !1012
  %242 = load ptr, ptr %241, align 8, !tbaa !1014
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %242, ptr noundef nonnull %232) #19
  br label %243

243:                                              ; preds = %230, %240, %182, %179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %360

244:                                              ; preds = %167
  %245 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %121) #19, !range !1086
  %246 = zext nneg i32 %245 to i64
  %247 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !888
  switch i32 %248, label %342 [
    i32 6, label %249
    i32 7, label %249
    i32 5, label %249
    i32 3, label %288
    i32 4, label %288
  ], !prof !1087

249:                                              ; preds = %244, %244, %244
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %250 = call fastcc i32 @gimple_num_ops(ptr noundef %121) #19
  %251 = add i32 %250, -1
  %252 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %121) #19, !range !1086
  %253 = call fastcc ptr @gimple_expr_type(ptr noundef %121) #19
  %254 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %121) #19
  %255 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %121) #19
  %256 = call ptr @vn_nary_op_lookup_pieces(i32 noundef %251, i32 noundef %252, ptr noundef %253, ptr noundef %254, ptr noundef %255, ptr noundef null, ptr noundef null, ptr noundef nonnull %7) #20
  %257 = load ptr, ptr %7, align 8, !tbaa !866
  %258 = icmp eq ptr %257, null
  br i1 %258, label %263, label %259, !prof !1088

259:                                              ; preds = %249
  %260 = getelementptr inbounds %struct.vn_nary_op_s, ptr %257, i64 0, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = icmp ult i32 %261, 65536
  br i1 %262, label %282, label %264, !prof !1089

263:                                              ; preds = %249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %360

264:                                              ; preds = %259, %274
  %265 = phi ptr [ %275, %274 ], [ %257, %259 ]
  %266 = phi i64 [ %276, %274 ], [ 0, %259 ]
  %267 = getelementptr inbounds %struct.vn_nary_op_s, ptr %265, i64 0, i32 5, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !866
  %269 = load i64, ptr %268, align 8
  %270 = and i64 %269, 65535
  %271 = icmp eq i64 %270, 141
  br i1 %271, label %272, label %274, !prof !1090

272:                                              ; preds = %264
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %268) #19
  %273 = load ptr, ptr %7, align 8, !tbaa !866
  br label %274

274:                                              ; preds = %264, %272
  %275 = phi ptr [ %265, %264 ], [ %273, %272 ]
  %276 = add nuw nsw i64 %266, 1
  %277 = getelementptr inbounds %struct.vn_nary_op_s, ptr %275, i64 0, i32 1
  %278 = load i32, ptr %277, align 4
  %279 = lshr i32 %278, 16
  %280 = zext nneg i32 %279 to i64
  %281 = icmp ult i64 %276, %280
  br i1 %281, label %264, label %282, !prof !1091, !llvm.loop !1092

282:                                              ; preds = %274, %259
  %283 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !866
  %284 = call ptr @pool_alloc(ptr noundef %283) #20
  store i32 1, ptr %284, align 8, !tbaa !844
  %285 = getelementptr inbounds %struct.pre_expr_d, ptr %284, i64 0, i32 1
  store i32 0, ptr %285, align 4, !tbaa !913
  %286 = load ptr, ptr %7, align 8, !tbaa !866
  %287 = getelementptr inbounds %struct.pre_expr_d, ptr %284, i64 0, i32 2
  store ptr %286, ptr %287, align 8, !tbaa !850
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %351

288:                                              ; preds = %244, %244
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %289 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %121) #19
  %290 = call fastcc ptr @gimple_vuse(ptr noundef %121) #19
  %291 = call ptr @vn_reference_lookup(ptr noundef %289, ptr noundef %290, i8 noundef zeroext 1, ptr noundef nonnull %8) #20
  %292 = load ptr, ptr %8, align 8, !tbaa !866
  %293 = icmp eq ptr %292, null
  br i1 %293, label %299, label %294, !prof !1093

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.vn_reference_s, ptr %292, i64 0, i32 5
  %296 = load ptr, ptr %295, align 8, !tbaa !884
  %297 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %296, i32 noundef 0, ptr noundef nonnull %9) #19, !range !885
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %336, label %300, !prof !1094

299:                                              ; preds = %288
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %360

300:                                              ; preds = %294, %329
  %301 = phi i32 [ %330, %329 ], [ 0, %294 ]
  %302 = load ptr, ptr %9, align 8, !tbaa !866
  %303 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %302, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !889
  %305 = icmp eq ptr %304, null
  br i1 %305, label %311, label %306, !prof !1095

306:                                              ; preds = %300
  %307 = load i64, ptr %304, align 8
  %308 = and i64 %307, 65535
  %309 = icmp eq i64 %308, 141
  br i1 %309, label %310, label %311, !prof !1096

310:                                              ; preds = %306
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %304) #19
  br label %311

311:                                              ; preds = %310, %306, %300
  %312 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %302, i64 0, i32 3
  %313 = load ptr, ptr %312, align 8, !tbaa !890
  %314 = icmp eq ptr %313, null
  br i1 %314, label %320, label %315, !prof !1097

315:                                              ; preds = %311
  %316 = load i64, ptr %313, align 8
  %317 = and i64 %316, 65535
  %318 = icmp eq i64 %317, 141
  br i1 %318, label %319, label %320, !prof !1098

319:                                              ; preds = %315
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %313) #19
  br label %320

320:                                              ; preds = %319, %315, %311
  %321 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %302, i64 0, i32 4
  %322 = load ptr, ptr %321, align 8, !tbaa !891
  %323 = icmp eq ptr %322, null
  br i1 %323, label %329, label %324, !prof !1097

324:                                              ; preds = %320
  %325 = load i64, ptr %322, align 8
  %326 = and i64 %325, 65535
  %327 = icmp eq i64 %326, 141
  br i1 %327, label %328, label %329, !prof !1098

328:                                              ; preds = %324
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %322) #19
  br label %329

329:                                              ; preds = %320, %324, %328
  %330 = add i32 %301, 1
  %331 = load ptr, ptr %8, align 8, !tbaa !866
  %332 = getelementptr inbounds %struct.vn_reference_s, ptr %331, i64 0, i32 5
  %333 = load ptr, ptr %332, align 8, !tbaa !884
  %334 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %333, i32 noundef %330, ptr noundef nonnull %9) #19, !range !885
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %300, !prof !1099, !llvm.loop !1100

336:                                              ; preds = %329, %294
  %337 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !866
  %338 = call ptr @pool_alloc(ptr noundef %337) #20
  store i32 2, ptr %338, align 8, !tbaa !844
  %339 = getelementptr inbounds %struct.pre_expr_d, ptr %338, i64 0, i32 1
  store i32 0, ptr %339, align 4, !tbaa !913
  %340 = load ptr, ptr %8, align 8, !tbaa !866
  %341 = getelementptr inbounds %struct.pre_expr_d, ptr %338, i64 0, i32 2
  store ptr %340, ptr %341, align 8, !tbaa !850
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %351

342:                                              ; preds = %244
  %343 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %121, i32 noundef 1) #19
  %344 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %346, label %360, !prof !1101

346:                                              ; preds = %342, %346
  %347 = phi ptr [ %348, %346 ], [ %343, %342 ]
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef %347) #19
  %348 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #19
  %349 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %346, label %360, !prof !1102, !llvm.loop !1103

351:                                              ; preds = %282, %336
  %352 = phi ptr [ %338, %336 ], [ %284, %282 ]
  %353 = call fastcc i32 @get_or_alloc_expression_id(ptr noundef nonnull %352) #19
  %354 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %352) #19
  call void @add_to_value(i32 noundef %354, ptr noundef nonnull %352) #19
  %355 = load i8, ptr @in_fre, align 1, !tbaa !850
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %357, label %360, !prof !1104

357:                                              ; preds = %351
  %358 = load ptr, ptr %112, align 8, !tbaa !1012
  %359 = load ptr, ptr %358, align 8, !tbaa !1014
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %359, ptr noundef nonnull %352) #19
  br label %360

360:                                              ; preds = %346, %174, %342, %170, %299, %263, %167, %357, %351, %161, %164, %243
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  call fastcc void @gsi_next(ptr noundef nonnull %1) #19
  %361 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !895
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %119, label %363, !prof !1105, !llvm.loop !1106

363:                                              ; preds = %360, %111
  %364 = call ptr @first_dom_son(i32 noundef 1, ptr noundef %92) #20
  %365 = icmp eq ptr %364, null
  br i1 %365, label %373, label %366, !prof !1107

366:                                              ; preds = %363, %366
  %367 = phi ptr [ %371, %366 ], [ %364, %363 ]
  %368 = phi i64 [ %369, %366 ], [ %90, %363 ]
  %369 = add i64 %368, 1
  %370 = getelementptr inbounds ptr, ptr %72, i64 %368
  store ptr %367, ptr %370, align 8, !tbaa !866
  %371 = call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %367) #20
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %366, !prof !1108, !llvm.loop !1109

373:                                              ; preds = %366, %363
  %374 = phi i64 [ %90, %363 ], [ %369, %366 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #21
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %88, !prof !1110, !llvm.loop !1111

376:                                              ; preds = %373, %64, %79
  call void @free(ptr noundef %72) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_antic() unnamed_addr #0 !prof !1112 !PGOFuncName !1113 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !866
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1011
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !1114
  %8 = tail call ptr @sbitmap_alloc(i32 noundef %7) #20
  store ptr %8, ptr @has_abnormal_preds, align 8, !tbaa !866
  tail call void @sbitmap_zero(ptr noundef %8) #20
  %9 = load ptr, ptr @cfun, align 8, !tbaa !866
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1011
  %12 = load ptr, ptr %11, align 8, !tbaa !1062
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !1115
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !1116
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %65, label %18, !prof !1117

18:                                               ; preds = %0
  %19 = getelementptr inbounds i8, ptr %1, i64 8
  br label %20

20:                                               ; preds = %18, %41
  %21 = phi ptr [ %14, %18 ], [ %58, %41 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %22 = tail call fastcc ptr @ei_start_1(ptr noundef %21) #19
  store i32 0, ptr %1, align 8, !tbaa.struct !1118
  store ptr %22, ptr %19, align 8, !tbaa.struct !1119
  %23 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %22, ptr noundef nonnull %2) #19, !range !895
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %41, label %25, !prof !1120

25:                                               ; preds = %20, %36
  %26 = load ptr, ptr %2, align 8, !tbaa !866
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !1121
  %29 = and i32 %28, -33
  store i32 %29, ptr %27, align 8, !tbaa !1121
  %30 = and i32 %28, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !1123

32:                                               ; preds = %25
  %33 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !866
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !1016
  tail call fastcc void @SET_BIT(ptr noundef %33, i32 noundef %35) #19
  br label %41

36:                                               ; preds = %25
  call fastcc void @ei_next(ptr noundef nonnull %1) #19
  %37 = load i32, ptr %1, align 8
  %38 = load ptr, ptr %19, align 8
  %39 = call fastcc zeroext i8 @ei_cond(i32 %37, ptr %38, ptr noundef nonnull %2) #19, !range !895
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %25, !prof !1124, !llvm.loop !1125

41:                                               ; preds = %36, %20, %32
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !1012
  %44 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %43, i64 0, i32 8
  %45 = load i8, ptr %44, align 8
  %46 = and i8 %45, -2
  store i8 %46, ptr %44, align 8
  %47 = load ptr, ptr %42, align 8, !tbaa !1012
  %48 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %47, i64 0, i32 8
  %49 = load i8, ptr %48, align 8
  %50 = and i8 %49, -3
  store i8 %50, ptr %48, align 8
  %51 = tail call fastcc ptr @bitmap_set_new() #19
  %52 = load ptr, ptr %42, align 8, !tbaa !1012
  %53 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %52, i64 0, i32 4
  store ptr %51, ptr %53, align 8, !tbaa !1126
  %54 = tail call fastcc ptr @bitmap_set_new() #19
  %55 = load ptr, ptr %42, align 8, !tbaa !1012
  %56 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %55, i64 0, i32 5
  store ptr %54, ptr %56, align 8, !tbaa !1127
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #21
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !1115
  %59 = load ptr, ptr @cfun, align 8, !tbaa !866
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !1011
  %62 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !1116
  %64 = icmp eq ptr %58, %63
  br i1 %64, label %65, label %20, !prof !1128, !llvm.loop !1129

65:                                               ; preds = %41, %0
  %66 = tail call fastcc ptr @bitmap_set_new() #19
  %67 = load ptr, ptr @cfun, align 8, !tbaa !866
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !1011
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !1116
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !1012
  %74 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %73, i64 0, i32 4
  store ptr %66, ptr %74, align 8, !tbaa !1126
  %75 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %73, i64 0, i32 8
  %76 = load i8, ptr %75, align 8
  %77 = or i8 %76, 1
  store i8 %77, ptr %75, align 8
  %78 = tail call fastcc ptr @bitmap_set_new() #19
  %79 = load ptr, ptr @cfun, align 8, !tbaa !866
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !1011
  %82 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !1116
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !1012
  %86 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %85, i64 0, i32 5
  store ptr %78, ptr %86, align 8, !tbaa !1127
  %87 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 5
  %88 = load i32, ptr %87, align 8, !tbaa !1114
  %89 = add nsw i32 %88, 1
  %90 = tail call ptr @sbitmap_alloc(i32 noundef %89) #20
  store ptr %90, ptr @changed_blocks, align 8, !tbaa !866
  tail call void @sbitmap_ones(ptr noundef %90) #20
  br label %93

91:                                               ; preds = %155
  %92 = icmp eq i8 %158, 0
  br i1 %92, label %161, label %93, !prof !1130, !llvm.loop !1131

93:                                               ; preds = %65, %91
  %94 = phi i32 [ 0, %65 ], [ %104, %91 ]
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97, !prof !1132

97:                                               ; preds = %93
  %98 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %95, ptr noundef nonnull @.str.34, i32 noundef %94) #19
  br label %103

103:                                              ; preds = %101, %97, %93
  %104 = add nuw nsw i32 %94, 1
  %105 = load ptr, ptr @cfun, align 8, !tbaa !866
  %106 = getelementptr inbounds %struct.function, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !1011
  %108 = getelementptr inbounds %struct.control_flow_graph, ptr %107, i64 0, i32 3
  %109 = load i32, ptr %108, align 8, !tbaa !1021
  %110 = icmp sgt i32 %109, 2
  br i1 %110, label %111, label %161, !prof !1042

111:                                              ; preds = %103
  %112 = add nsw i32 %109, -3
  %113 = zext nneg i32 %112 to i64
  %114 = load ptr, ptr @changed_blocks, align 8, !tbaa !866
  %115 = load ptr, ptr @postorder, align 8, !tbaa !866
  br label %116

116:                                              ; preds = %111, %155
  %117 = phi ptr [ %115, %111 ], [ %156, %155 ]
  %118 = phi ptr [ %114, %111 ], [ %157, %155 ]
  %119 = phi i64 [ %113, %111 ], [ %159, %155 ]
  %120 = phi i8 [ 0, %111 ], [ %158, %155 ]
  %121 = getelementptr inbounds i32, ptr %117, i64 %119
  %122 = load i32, ptr %121, align 4, !tbaa !888
  %123 = lshr i32 %122, 6
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds %struct.simple_bitmap_def, ptr %118, i64 0, i32 3, i64 %124
  %126 = load i64, ptr %125, align 8, !tbaa !987
  %127 = and i32 %122, 63
  %128 = zext nneg i32 %127 to i64
  %129 = shl nuw i64 1, %128
  %130 = and i64 %129, %126
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %155, label %132, !prof !1133

132:                                              ; preds = %116
  %133 = load ptr, ptr @cfun, align 8, !tbaa !866
  %134 = getelementptr inbounds %struct.function, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !1011
  %136 = getelementptr inbounds %struct.control_flow_graph, ptr %135, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !1134
  %138 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %137, i32 noundef %122) #19
  %139 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !866
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %138, i64 0, i32 9
  %141 = load i32, ptr %140, align 8, !tbaa !1016
  %142 = lshr i32 %141, 6
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds %struct.simple_bitmap_def, ptr %139, i64 0, i32 3, i64 %143
  %145 = load i64, ptr %144, align 8, !tbaa !987
  %146 = and i32 %141, 63
  %147 = zext nneg i32 %146 to i64
  %148 = lshr i64 %145, %147
  %149 = trunc i64 %148 to i8
  %150 = and i8 %149, 1
  %151 = tail call fastcc zeroext i8 @compute_antic_aux(ptr noundef %138, i8 noundef zeroext %150) #19
  %152 = or i8 %151, %120
  %153 = load ptr, ptr @changed_blocks, align 8, !tbaa !866
  %154 = load ptr, ptr @postorder, align 8, !tbaa !866
  br label %155

155:                                              ; preds = %116, %132
  %156 = phi ptr [ %154, %132 ], [ %117, %116 ]
  %157 = phi ptr [ %153, %132 ], [ %118, %116 ]
  %158 = phi i8 [ %152, %132 ], [ %120, %116 ]
  %159 = add nsw i64 %119, -1
  %160 = icmp sgt i64 %119, 0
  br i1 %160, label %116, label %91, !prof !1135, !llvm.loop !1136

161:                                              ; preds = %103, %91
  %162 = load ptr, ptr @cfun, align 8, !tbaa !866
  tail call void @statistics_histogram_event(ptr noundef %162, ptr noundef nonnull @.str.35, i32 noundef %104) #20
  %163 = load i8, ptr @do_partial_partial, align 1, !tbaa !850
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %240, label %165, !prof !1137

165:                                              ; preds = %161
  %166 = load ptr, ptr @changed_blocks, align 8, !tbaa !866
  tail call void @sbitmap_ones(ptr noundef %166) #20
  %167 = tail call zeroext i8 @mark_dfs_back_edges() #20
  br label %170

168:                                              ; preds = %232
  %169 = icmp eq i8 %235, 0
  br i1 %169, label %238, label %170, !prof !1130, !llvm.loop !1138

170:                                              ; preds = %165, %168
  %171 = phi i32 [ 0, %165 ], [ %181, %168 ]
  %172 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %173 = icmp eq ptr %172, null
  br i1 %173, label %180, label %174, !prof !1132

174:                                              ; preds = %170
  %175 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %176 = and i32 %175, 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %172, ptr noundef nonnull @.str.34, i32 noundef %171) #19
  br label %180

180:                                              ; preds = %178, %174, %170
  %181 = add nuw nsw i32 %171, 1
  %182 = load ptr, ptr @cfun, align 8, !tbaa !866
  %183 = getelementptr inbounds %struct.function, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !1011
  %185 = getelementptr inbounds %struct.control_flow_graph, ptr %184, i64 0, i32 3
  %186 = load i32, ptr %185, align 8, !tbaa !1021
  %187 = icmp sgt i32 %186, 2
  br i1 %187, label %188, label %238, !prof !1042

188:                                              ; preds = %180
  %189 = add nsw i32 %186, -3
  %190 = zext nneg i32 %189 to i64
  %191 = load ptr, ptr @changed_blocks, align 8, !tbaa !866
  %192 = load ptr, ptr @postorder, align 8, !tbaa !866
  br label %193

193:                                              ; preds = %188, %232
  %194 = phi ptr [ %192, %188 ], [ %233, %232 ]
  %195 = phi ptr [ %191, %188 ], [ %234, %232 ]
  %196 = phi i64 [ %190, %188 ], [ %236, %232 ]
  %197 = phi i8 [ 0, %188 ], [ %235, %232 ]
  %198 = getelementptr inbounds i32, ptr %194, i64 %196
  %199 = load i32, ptr %198, align 4, !tbaa !888
  %200 = lshr i32 %199, 6
  %201 = zext nneg i32 %200 to i64
  %202 = getelementptr inbounds %struct.simple_bitmap_def, ptr %195, i64 0, i32 3, i64 %201
  %203 = load i64, ptr %202, align 8, !tbaa !987
  %204 = and i32 %199, 63
  %205 = zext nneg i32 %204 to i64
  %206 = shl nuw i64 1, %205
  %207 = and i64 %206, %203
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %232, label %209, !prof !1139

209:                                              ; preds = %193
  %210 = load ptr, ptr @cfun, align 8, !tbaa !866
  %211 = getelementptr inbounds %struct.function, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !1011
  %213 = getelementptr inbounds %struct.control_flow_graph, ptr %212, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !1134
  %215 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %214, i32 noundef %199) #19
  %216 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !866
  %217 = getelementptr inbounds %struct.basic_block_def, ptr %215, i64 0, i32 9
  %218 = load i32, ptr %217, align 8, !tbaa !1016
  %219 = lshr i32 %218, 6
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds %struct.simple_bitmap_def, ptr %216, i64 0, i32 3, i64 %220
  %222 = load i64, ptr %221, align 8, !tbaa !987
  %223 = and i32 %218, 63
  %224 = zext nneg i32 %223 to i64
  %225 = lshr i64 %222, %224
  %226 = trunc i64 %225 to i8
  %227 = and i8 %226, 1
  %228 = tail call fastcc zeroext i8 @compute_partial_antic_aux(ptr noundef %215, i8 noundef zeroext %227) #19, !range !895
  %229 = or i8 %228, %197
  %230 = load ptr, ptr @changed_blocks, align 8, !tbaa !866
  %231 = load ptr, ptr @postorder, align 8, !tbaa !866
  br label %232

232:                                              ; preds = %193, %209
  %233 = phi ptr [ %231, %209 ], [ %194, %193 ]
  %234 = phi ptr [ %230, %209 ], [ %195, %193 ]
  %235 = phi i8 [ %229, %209 ], [ %197, %193 ]
  %236 = add nsw i64 %196, -1
  %237 = icmp sgt i64 %196, 0
  br i1 %237, label %193, label %168, !prof !1135, !llvm.loop !1140

238:                                              ; preds = %180, %168
  %239 = load ptr, ptr @cfun, align 8, !tbaa !866
  tail call void @statistics_histogram_event(ptr noundef %239, ptr noundef nonnull @.str.36, i32 noundef %181) #20
  br label %240

240:                                              ; preds = %238, %161
  %241 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !866
  %242 = load ptr, ptr %241, align 8, !tbaa !1141
  tail call void @free(ptr noundef %242) #19
  tail call void @free(ptr noundef %241) #19
  %243 = load ptr, ptr @changed_blocks, align 8, !tbaa !866
  %244 = load ptr, ptr %243, align 8, !tbaa !1141
  tail call void @free(ptr noundef %244) #19
  tail call void @free(ptr noundef %243) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert() unnamed_addr #0 !prof !1112 !PGOFuncName !1143 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !866
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1011
  %4 = load ptr, ptr %3, align 8, !tbaa !866
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6, !prof !1117

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %13, %6 ], [ %4, %0 ]
  %8 = tail call fastcc ptr @bitmap_set_new() #19
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1012
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 6
  store ptr %8, ptr %11, align 8, !tbaa !1144
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !866
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !prof !1145, !llvm.loop !1146

15:                                               ; preds = %6, %0
  br label %16

16:                                               ; preds = %15, %16
  %17 = phi i32 [ %18, %16 ], [ 0, %15 ]
  %18 = add nuw nsw i32 %17, 1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !866
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !1011
  %22 = load ptr, ptr %21, align 8, !tbaa !1062
  %23 = tail call fastcc zeroext i8 @insert_aux(ptr noundef %22) #19, !range !895
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %16, !prof !1147, !llvm.loop !1148

25:                                               ; preds = %16
  %26 = load ptr, ptr @cfun, align 8, !tbaa !866
  tail call void @statistics_histogram_event(ptr noundef %26, ptr noundef nonnull @.str.47, i32 noundef %18) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @eliminate() unnamed_addr #0 !prof !1006 !PGOFuncName !1149 {
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
  store ptr null, ptr %1, align 8, !tbaa !866
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %11 = load ptr, ptr @cfun, align 8, !tbaa !866
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1011
  %14 = load ptr, ptr %13, align 8, !tbaa !1062
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !1115
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !1116
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %31, label %36, !prof !1053

20:                                               ; preds = %452, %372
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !1115
  %23 = load ptr, ptr @cfun, align 8, !tbaa !866
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !1011
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !1116
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %29, label %36, !prof !1110, !llvm.loop !1150

29:                                               ; preds = %20
  %30 = load ptr, ptr %1, align 8
  br label %31

31:                                               ; preds = %29, %0
  %32 = phi ptr [ null, %0 ], [ %30, %29 ]
  %33 = phi i32 [ 0, %0 ], [ %373, %29 ]
  %34 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %32, i32 noundef 0, ptr noundef nonnull %3) #19, !range !885
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %491, label %455, !prof !1151

36:                                               ; preds = %0, %20
  %37 = phi ptr [ %22, %20 ], [ %16, %0 ]
  %38 = phi i32 [ %373, %20 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %37) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1050
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !895
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %372, !prof !1071

41:                                               ; preds = %36, %368
  %42 = phi i32 [ %369, %368 ], [ %38, %36 ]
  %43 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  store ptr %43, ptr %3, align 8, !tbaa !866
  %44 = call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %43) #19, !range !895
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %233, label %46, !prof !1152

46:                                               ; preds = %41
  %47 = call ptr @gimple_get_lhs(ptr noundef %43) #20
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 141
  br i1 %50, label %51, label %233, !prof !1153

51:                                               ; preds = %46
  %52 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %43) #20
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %233, !prof !1154

54:                                               ; preds = %51
  %55 = call zeroext i8 @gimple_assign_single_p(ptr noundef %43) #20
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %61, label %57, !prof !1155

57:                                               ; preds = %54
  %58 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %43) #19
  %59 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %58) #20
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %233, !prof !1156

61:                                               ; preds = %57, %54
  %62 = call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %43) #19, !range !895
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %233, !prof !1157

64:                                               ; preds = %61
  %65 = call ptr @gimple_get_lhs(ptr noundef %43) #20
  %66 = call fastcc zeroext i8 @has_zero_uses(ptr noundef %65) #19
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %233, !prof !1158

68:                                               ; preds = %64
  %69 = call ptr @gimple_get_lhs(ptr noundef %43) #20
  %70 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %69) #19
  %71 = call zeroext i8 @gimple_assign_single_p(ptr noundef %43) #20
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %75, label %73, !prof !1159

73:                                               ; preds = %68
  %74 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %43) #19
  br label %75

75:                                               ; preds = %73, %68
  %76 = phi ptr [ %74, %73 ], [ null, %68 ]
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !1012
  %79 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !1019
  %81 = call fastcc i32 @get_expr_value_id(ptr noundef %70) #19
  %82 = call fastcc ptr @bitmap_find_leader(ptr noundef %80, i32 noundef %81, ptr noundef null) #19
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %84, !prof !1160

84:                                               ; preds = %75
  %85 = load i32, ptr %82, align 8, !tbaa !844
  switch i32 %85, label %86 [
    i32 3, label %87
    i32 0, label %87
  ], !prof !1161

86:                                               ; preds = %84
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4163, ptr noundef nonnull @.str.1) #20
  br label %91

87:                                               ; preds = %84, %84
  %88 = getelementptr inbounds %struct.pre_expr_d, ptr %82, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !850
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %125, !prof !1065

91:                                               ; preds = %75, %86, %87
  %92 = call ptr @VN_INFO(ptr noundef %69) #20
  %93 = load ptr, ptr %92, align 8, !tbaa !1162
  %94 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %93) #20
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %127, label %96

96:                                               ; preds = %91
  %97 = call ptr @VN_INFO(ptr noundef %69) #20
  %98 = load ptr, ptr %97, align 8, !tbaa !1162
  %99 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !850
  %101 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !850
  %103 = call zeroext i8 @useless_type_conversion_p(ptr noundef %100, ptr noundef %102) #20
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load ptr, ptr %99, align 8, !tbaa !850
  %107 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %106, ptr noundef nonnull %98) #20
  br label %108

108:                                              ; preds = %105, %96
  %109 = phi ptr [ %98, %96 ], [ %107, %105 ]
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %111 = icmp eq ptr %110, null
  br i1 %111, label %229, label %112

112:                                              ; preds = %108
  %113 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %114 = and i32 %113, 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %229, label %116

116:                                              ; preds = %112
  %117 = call i64 @fwrite(ptr nonnull @.str.57, i64 9, i64 1, ptr nonnull %110)
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !866
  call void @print_gimple_expr(ptr noundef %118, ptr noundef %43, i32 noundef 0, i32 noundef 0) #20
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %120 = call i64 @fwrite(ptr nonnull @.str.58, i64 6, i64 1, ptr %119)
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !866
  call void @print_generic_expr(ptr noundef %121, ptr noundef %109, i32 noundef 0) #20
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %123 = call i64 @fwrite(ptr nonnull @.str.59, i64 4, i64 1, ptr %122)
  %124 = load ptr, ptr @dump_file, align 8, !tbaa !866
  call void @print_gimple_stmt(ptr noundef %124, ptr noundef %43, i32 noundef 0, i32 noundef 0) #20
  br label %229

125:                                              ; preds = %87
  %126 = icmp eq ptr %89, %69
  br i1 %126, label %127, label %149, !prof !1163

127:                                              ; preds = %91, %125
  %128 = phi ptr [ %69, %125 ], [ null, %91 ]
  %129 = call ptr @VN_INFO(ptr noundef %69) #20
  %130 = load ptr, ptr %129, align 8, !tbaa !1162
  %131 = load ptr, ptr @VN_TOP, align 8, !tbaa !866
  %132 = icmp eq ptr %130, %131
  br i1 %132, label %149, label %133, !prof !1164

133:                                              ; preds = %127
  %134 = load i64, ptr %130, align 8
  %135 = and i64 %134, 65535
  %136 = icmp eq i64 %135, 141
  br i1 %136, label %137, label %149, !prof !1165

137:                                              ; preds = %133
  %138 = call ptr @VN_INFO(ptr noundef nonnull %130) #20
  %139 = getelementptr inbounds %struct.vn_ssa_aux, ptr %138, i64 0, i32 5
  %140 = load i8, ptr %139, align 4
  %141 = and i8 %140, 16
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %149, label %143, !prof !1165

143:                                              ; preds = %137
  %144 = call ptr @vn_get_expr_for(ptr noundef nonnull %130) #20
  %145 = call fastcc zeroext i8 @can_PRE_operation(ptr noundef %144) #19, !range !895
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = call fastcc ptr @do_SCCVN_insertion(ptr noundef %43, ptr noundef nonnull %130) #19
  br label %149

149:                                              ; preds = %127, %133, %137, %143, %147, %125
  %150 = phi ptr [ %89, %125 ], [ %148, %147 ], [ %128, %143 ], [ %128, %137 ], [ %128, %133 ], [ %128, %127 ]
  %151 = icmp eq ptr %150, null
  %152 = icmp eq ptr %150, %69
  %153 = or i1 %151, %152
  br i1 %153, label %313, label %154, !prof !1166

154:                                              ; preds = %149
  %155 = icmp eq ptr %76, null
  br i1 %155, label %165, label %156, !prof !1167

156:                                              ; preds = %154
  %157 = load i64, ptr %76, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 141
  br i1 %159, label %160, label %165, !prof !1168

160:                                              ; preds = %156
  %161 = call zeroext i8 @may_propagate_copy(ptr noundef nonnull %76, ptr noundef nonnull %150) #20
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load ptr, ptr %3, align 8, !tbaa !866
  br label %313

165:                                              ; preds = %160, %156, %154
  %166 = icmp eq ptr %150, %76
  br i1 %166, label %167, label %168, !prof !1169

167:                                              ; preds = %165
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4209, ptr noundef nonnull @.str.1) #20
  br label %168

168:                                              ; preds = %165, %167
  %169 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %170 = icmp eq ptr %169, null
  br i1 %170, label %186, label %171, !prof !1170

171:                                              ; preds = %168
  %172 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %173 = and i32 %172, 8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %171
  %176 = call i64 @fwrite(ptr nonnull @.str.57, i64 9, i64 1, ptr nonnull %169)
  %177 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %178 = load ptr, ptr %3, align 8, !tbaa !866
  call void @print_gimple_expr(ptr noundef %177, ptr noundef %178, i32 noundef 0, i32 noundef 0) #20
  %179 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %180 = call i64 @fwrite(ptr nonnull @.str.58, i64 6, i64 1, ptr %179)
  %181 = load ptr, ptr @dump_file, align 8, !tbaa !866
  call void @print_generic_expr(ptr noundef %181, ptr noundef nonnull %150, i32 noundef 0) #20
  %182 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %183 = call i64 @fwrite(ptr nonnull @.str.59, i64 4, i64 1, ptr %182)
  %184 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %185 = load ptr, ptr %3, align 8, !tbaa !866
  call void @print_gimple_stmt(ptr noundef %184, ptr noundef %185, i32 noundef 0, i32 noundef 0) #20
  br label %186

186:                                              ; preds = %175, %171, %168
  %187 = load i64, ptr %150, align 8
  %188 = and i64 %187, 65535
  %189 = icmp eq i64 %188, 141
  br i1 %189, label %190, label %193, !prof !1170

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.tree_ssa_name, ptr %150, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !850
  call fastcc void @gimple_set_plf(ptr noundef %192, i8 noundef zeroext 1) #19
  br label %193

193:                                              ; preds = %190, %186
  br i1 %155, label %198, label %194, !prof !1167

194:                                              ; preds = %193
  %195 = load i64, ptr %76, align 8
  %196 = and i64 %195, 65535
  %197 = icmp eq i64 %196, 141
  br i1 %197, label %208, label %198, !prof !1168

198:                                              ; preds = %194, %193
  %199 = load ptr, ptr %3, align 8, !tbaa !866
  %200 = call fastcc ptr @gimple_expr_type(ptr noundef %199) #19
  %201 = getelementptr inbounds %struct.tree_common, ptr %150, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !850
  %203 = call zeroext i8 @useless_type_conversion_p(ptr noundef %200, ptr noundef %202) #20
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %208, !prof !1169

205:                                              ; preds = %198
  %206 = call fastcc ptr @gimple_expr_type(ptr noundef %199) #19
  %207 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %206, ptr noundef nonnull %150) #20
  br label %208

208:                                              ; preds = %205, %198, %194
  %209 = phi ptr [ %150, %198 ], [ %207, %205 ], [ %150, %194 ]
  %210 = load i32, ptr @pre_stats, align 4, !tbaa !1028
  %211 = add nsw i32 %210, 1
  store i32 %211, ptr @pre_stats, align 4, !tbaa !1028
  call void @propagate_tree_value_into_stmt(ptr noundef nonnull %2, ptr noundef %209) #20
  %212 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  store ptr %212, ptr %3, align 8, !tbaa !866
  call fastcc void @update_stmt(ptr noundef %212) #19
  %213 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %212, ptr noundef %212) #20
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %313, label %215, !prof !1170

215:                                              ; preds = %208
  %216 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !866
  %217 = call fastcc ptr @gimple_bb(ptr noundef %212) #19
  %218 = getelementptr inbounds %struct.basic_block_def, ptr %217, i64 0, i32 9
  %219 = load i32, ptr %218, align 8, !tbaa !1016
  %220 = call zeroext i8 @bitmap_set_bit(ptr noundef %216, i32 noundef %219) #20
  %221 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %222 = icmp eq ptr %221, null
  br i1 %222, label %313, label %223

223:                                              ; preds = %215
  %224 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %225 = and i32 %224, 8
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %313, label %227

227:                                              ; preds = %223
  %228 = call i64 @fwrite(ptr nonnull @.str.60, i64 27, i64 1, ptr nonnull %221)
  br label %313

229:                                              ; preds = %108, %112, %116
  %230 = load i32, ptr @pre_stats, align 4, !tbaa !1028
  %231 = add nsw i32 %230, 1
  store i32 %231, ptr @pre_stats, align 4, !tbaa !1028
  call void @propagate_tree_value_into_stmt(ptr noundef nonnull %2, ptr noundef %109) #20
  %232 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  store ptr %232, ptr %3, align 8, !tbaa !866
  call fastcc void @update_stmt(ptr noundef %232) #19
  br label %368

233:                                              ; preds = %64, %61, %57, %51, %46, %41
  %234 = call zeroext i8 @gimple_assign_single_p(ptr noundef %43) #20
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %277, label %236, !prof !1171

236:                                              ; preds = %233
  %237 = call fastcc ptr @gimple_assign_lhs(ptr noundef %43) #19
  %238 = call zeroext i8 @is_gimple_reg(ptr noundef %237) #20
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %277, !prof !1172

240:                                              ; preds = %236
  %241 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %43) #19
  %242 = load i64, ptr %241, align 8
  %243 = and i64 %242, 65535
  %244 = icmp eq i64 %243, 141
  br i1 %244, label %249, label %245, !prof !1173

245:                                              ; preds = %240
  %246 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %43) #19
  %247 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %246) #20
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %277, label %249

249:                                              ; preds = %245, %240
  %250 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %43) #19
  %251 = call fastcc ptr @gimple_assign_lhs(ptr noundef %43) #19
  %252 = call fastcc ptr @gimple_vuse(ptr noundef %43) #19
  %253 = call ptr @vn_reference_lookup(ptr noundef %251, ptr noundef %252, i8 noundef zeroext 1, ptr noundef null) #20
  %254 = load i64, ptr %250, align 8
  %255 = and i64 %254, 65535
  %256 = icmp eq i64 %255, 141
  br i1 %256, label %257, label %260, !prof !1173

257:                                              ; preds = %249
  %258 = call ptr @VN_INFO(ptr noundef nonnull %250) #20
  %259 = load ptr, ptr %258, align 8, !tbaa !1162
  br label %260

260:                                              ; preds = %257, %249
  %261 = phi ptr [ %259, %257 ], [ %250, %249 ]
  %262 = icmp eq ptr %253, null
  br i1 %262, label %313, label %263, !prof !1173

263:                                              ; preds = %260
  %264 = call i32 @operand_equal_p(ptr noundef nonnull %253, ptr noundef %261, i32 noundef 0) #20
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %313, label %266

266:                                              ; preds = %263
  %267 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %268 = icmp eq ptr %267, null
  br i1 %268, label %276, label %269

269:                                              ; preds = %266
  %270 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %271 = and i32 %270, 8
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %269
  %274 = call i64 @fwrite(ptr nonnull @.str.61, i64 24, i64 1, ptr nonnull %267)
  %275 = load ptr, ptr @dump_file, align 8, !tbaa !866
  call void @print_gimple_stmt(ptr noundef %275, ptr noundef %43, i32 noundef 0, i32 noundef 0) #20
  br label %276

276:                                              ; preds = %273, %269, %266
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %1, ptr noundef %43) #19
  br label %313

277:                                              ; preds = %245, %236, %233
  %278 = call fastcc i32 @gimple_code(ptr noundef %43) #19, !range !1035
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %313, !prof !1174

280:                                              ; preds = %277
  %281 = call fastcc ptr @gimple_cond_lhs(ptr noundef %43) #19
  %282 = call fastcc ptr @gimple_cond_rhs(ptr noundef %43) #19
  %283 = load i64, ptr %281, align 8
  %284 = and i64 %283, 65535
  %285 = icmp eq i64 %284, 141
  br i1 %285, label %286, label %289, !prof !1175

286:                                              ; preds = %280
  %287 = call ptr @VN_INFO(ptr noundef nonnull %281) #20
  %288 = load ptr, ptr %287, align 8, !tbaa !1162
  br label %289

289:                                              ; preds = %286, %280
  %290 = phi ptr [ %288, %286 ], [ %281, %280 ]
  %291 = load i64, ptr %282, align 8
  %292 = and i64 %291, 65535
  %293 = icmp eq i64 %292, 141
  br i1 %293, label %294, label %297, !prof !1176

294:                                              ; preds = %289
  %295 = call ptr @VN_INFO(ptr noundef nonnull %282) #20
  %296 = load ptr, ptr %295, align 8, !tbaa !1162
  br label %297

297:                                              ; preds = %294, %289
  %298 = phi ptr [ %296, %294 ], [ %282, %289 ]
  %299 = call fastcc i32 @gimple_cond_code(ptr noundef %43) #19, !range !1086
  %300 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !866
  %301 = call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %299, ptr noundef %300, ptr noundef %290, ptr noundef %298) #20
  %302 = icmp eq ptr %301, null
  br i1 %302, label %313, label %303, !prof !1177

303:                                              ; preds = %297
  %304 = load i64, ptr %301, align 8
  %305 = and i64 %304, 65535
  %306 = icmp eq i64 %305, 23
  br i1 %306, label %307, label %313, !prof !1178

307:                                              ; preds = %303
  %308 = call i32 @integer_zerop(ptr noundef nonnull %301) #20
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %311, label %310

310:                                              ; preds = %307
  call fastcc void @gimple_cond_make_false(ptr noundef %43) #19
  br label %312

311:                                              ; preds = %307
  call fastcc void @gimple_cond_make_true(ptr noundef %43) #19
  br label %312

312:                                              ; preds = %311, %310
  call fastcc void @update_stmt(ptr noundef %43) #19
  br label %313

313:                                              ; preds = %163, %149, %215, %223, %227, %208, %297, %303, %312, %260, %263, %276, %277
  %314 = phi ptr [ %43, %277 ], [ %43, %276 ], [ %43, %263 ], [ %43, %260 ], [ %43, %312 ], [ %43, %303 ], [ %43, %297 ], [ %212, %208 ], [ %212, %227 ], [ %212, %223 ], [ %212, %215 ], [ %164, %163 ], [ %43, %149 ]
  %315 = phi i32 [ %42, %277 ], [ %42, %276 ], [ %42, %263 ], [ %42, %260 ], [ 32, %312 ], [ %42, %303 ], [ %42, %297 ], [ %42, %208 ], [ %42, %227 ], [ %42, %223 ], [ %42, %215 ], [ %42, %163 ], [ %42, %149 ]
  %316 = call fastcc i32 @gimple_code(ptr noundef %314) #19, !range !1035
  %317 = icmp eq i32 %316, 8
  br i1 %317, label %318, label %368, !prof !1179

318:                                              ; preds = %313
  %319 = call fastcc ptr @gimple_call_fn(ptr noundef %314) #19
  %320 = load i64, ptr %319, align 8
  %321 = and i64 %320, 65535
  %322 = icmp eq i64 %321, 141
  br i1 %322, label %323, label %368, !prof !1180

323:                                              ; preds = %318
  %324 = call fastcc ptr @gimple_call_fn(ptr noundef %314) #19
  %325 = call ptr @VN_INFO(ptr noundef %324) #20
  %326 = load ptr, ptr %325, align 8, !tbaa !1162
  %327 = load i64, ptr %326, align 8
  %328 = and i64 %327, 65535
  %329 = icmp eq i64 %328, 121
  br i1 %329, label %330, label %368

330:                                              ; preds = %323
  %331 = getelementptr inbounds %struct.tree_exp, ptr %326, i64 0, i32 3
  %332 = load ptr, ptr %331, align 8, !tbaa !850
  %333 = load i64, ptr %332, align 8
  %334 = and i64 %333, 65535
  %335 = icmp eq i64 %334, 29
  br i1 %335, label %336, label %368

336:                                              ; preds = %330
  %337 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %338 = icmp eq ptr %337, null
  br i1 %338, label %349, label %339

339:                                              ; preds = %336
  %340 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %341 = and i32 %340, 8
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %349, label %343

343:                                              ; preds = %339
  %344 = call i64 @fwrite(ptr nonnull @.str.62, i64 27, i64 1, ptr nonnull %337)
  %345 = load ptr, ptr @dump_file, align 8, !tbaa !866
  call void @print_generic_expr(ptr noundef %345, ptr noundef nonnull %326, i32 noundef 0) #20
  %346 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %347 = call i64 @fwrite(ptr nonnull @.str.59, i64 4, i64 1, ptr %346)
  %348 = load ptr, ptr @dump_file, align 8, !tbaa !866
  call void @print_gimple_stmt(ptr noundef %348, ptr noundef %314, i32 noundef 0, i32 noundef 0) #20
  br label %349

349:                                              ; preds = %343, %339, %336
  call fastcc void @gimple_call_set_fn(ptr noundef %314, ptr noundef nonnull %326) #19
  call fastcc void @update_stmt(ptr noundef %314) #19
  %350 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %314, ptr noundef %314) #20
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %366, label %352

352:                                              ; preds = %349
  %353 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !866
  %354 = call fastcc ptr @gimple_bb(ptr noundef %314) #19
  %355 = getelementptr inbounds %struct.basic_block_def, ptr %354, i64 0, i32 9
  %356 = load i32, ptr %355, align 8, !tbaa !1016
  %357 = call zeroext i8 @bitmap_set_bit(ptr noundef %353, i32 noundef %356) #20
  %358 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %359 = icmp eq ptr %358, null
  br i1 %359, label %366, label %360

360:                                              ; preds = %352
  %361 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %362 = and i32 %361, 8
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %366, label %364

364:                                              ; preds = %360
  %365 = call i64 @fwrite(ptr nonnull @.str.60, i64 27, i64 1, ptr nonnull %358)
  br label %366

366:                                              ; preds = %352, %360, %364, %349
  %367 = or i32 %315, 16384
  br label %368

368:                                              ; preds = %229, %323, %330, %366, %313, %318
  %369 = phi i32 [ %315, %318 ], [ %315, %313 ], [ %42, %229 ], [ %367, %366 ], [ %315, %330 ], [ %315, %323 ]
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  %370 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !895
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %41, label %372, !prof !1105, !llvm.loop !1181

372:                                              ; preds = %368, %36
  %373 = phi i32 [ %38, %36 ], [ %369, %368 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %37) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1050
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  %374 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !895
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %376, label %20, !prof !1182

376:                                              ; preds = %372, %452
  %377 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %378 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %377) #19
  %379 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %378) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #21
  %380 = call fastcc i32 @gimple_phi_num_args(ptr noundef %377) #19
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %391, label %382, !prof !1183

382:                                              ; preds = %376
  %383 = call zeroext i8 @is_gimple_reg(ptr noundef %379) #20
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %391, label %385, !prof !1184

385:                                              ; preds = %382
  %386 = load ptr, ptr @inserted_phi_names, align 8, !tbaa !866
  %387 = getelementptr inbounds %struct.tree_ssa_name, ptr %379, i64 0, i32 3
  %388 = load i32, ptr %387, align 8, !tbaa !850
  %389 = call i32 @bitmap_bit_p(ptr noundef %386, i32 noundef %388) #20
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %392, label %391, !prof !1185

391:                                              ; preds = %385, %382, %376
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  br label %452, !llvm.loop !1186

392:                                              ; preds = %385
  %393 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 2
  %394 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %379) #19
  %395 = load ptr, ptr %393, align 8, !tbaa !1012
  %396 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %395, i64 0, i32 3
  %397 = load ptr, ptr %396, align 8, !tbaa !1019
  %398 = call fastcc i32 @get_expr_value_id(ptr noundef %394) #19
  %399 = call fastcc ptr @bitmap_find_leader(ptr noundef %397, i32 noundef %398, ptr noundef null) #19
  %400 = icmp eq ptr %399, null
  br i1 %400, label %413, label %401, !prof !1187

401:                                              ; preds = %392
  %402 = load i32, ptr %399, align 8, !tbaa !844
  switch i32 %402, label %409 [
    i32 3, label %403
    i32 0, label %406
  ], !prof !1188

403:                                              ; preds = %401
  %404 = getelementptr inbounds %struct.pre_expr_d, ptr %399, i64 0, i32 2
  %405 = load ptr, ptr %404, align 8, !tbaa !850
  br label %410

406:                                              ; preds = %401
  %407 = getelementptr inbounds %struct.pre_expr_d, ptr %399, i64 0, i32 2
  %408 = load ptr, ptr %407, align 8, !tbaa !850
  br label %410

409:                                              ; preds = %401
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4362, ptr noundef nonnull @.str.1) #20
  br label %410

410:                                              ; preds = %403, %409, %406
  %411 = phi ptr [ %405, %403 ], [ %408, %406 ], [ null, %409 ]
  %412 = icmp eq ptr %411, %379
  br i1 %412, label %413, label %414, !prof !1189

413:                                              ; preds = %392, %410
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  br label %452, !llvm.loop !1186

414:                                              ; preds = %410
  %415 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %416 = icmp eq ptr %415, null
  br i1 %416, label %429, label %417

417:                                              ; preds = %414
  %418 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %419 = and i32 %418, 8
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %429, label %421

421:                                              ; preds = %417
  %422 = call i64 @fwrite(ptr nonnull @.str.63, i64 37, i64 1, ptr nonnull %415)
  %423 = load ptr, ptr @dump_file, align 8, !tbaa !866
  call void @print_generic_expr(ptr noundef %423, ptr noundef nonnull %379, i32 noundef 0) #20
  %424 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %425 = call i64 @fwrite(ptr nonnull @.str.58, i64 6, i64 1, ptr %424)
  %426 = load ptr, ptr @dump_file, align 8, !tbaa !866
  call void @print_generic_expr(ptr noundef %426, ptr noundef %411, i32 noundef 0) #20
  %427 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %428 = call i32 @fputc(i32 10, ptr %427)
  br label %429

429:                                              ; preds = %421, %417, %414
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 0) #20
  %430 = getelementptr inbounds %struct.tree_common, ptr %379, i64 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !850
  %432 = getelementptr inbounds %struct.tree_common, ptr %411, i64 0, i32 2
  %433 = load ptr, ptr %432, align 8, !tbaa !850
  %434 = call zeroext i8 @useless_type_conversion_p(ptr noundef %431, ptr noundef %433) #20
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %436, label %439

436:                                              ; preds = %429
  %437 = load ptr, ptr %430, align 8, !tbaa !850
  %438 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %437, ptr noundef nonnull %411) #20
  br label %439

439:                                              ; preds = %436, %429
  %440 = phi ptr [ %411, %429 ], [ %438, %436 ]
  %441 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %379, ptr noundef %440) #20
  %442 = getelementptr inbounds %struct.tree_ssa_name, ptr %379, i64 0, i32 2
  store ptr %441, ptr %442, align 8, !tbaa !850
  %443 = load i64, ptr %440, align 8
  %444 = and i64 %443, 65535
  %445 = icmp eq i64 %444, 141
  br i1 %445, label %446, label %449

446:                                              ; preds = %439
  %447 = getelementptr inbounds %struct.tree_ssa_name, ptr %440, i64 0, i32 2
  %448 = load ptr, ptr %447, align 8, !tbaa !850
  call fastcc void @gimple_set_plf(ptr noundef %448, i8 noundef zeroext 1) #19
  br label %449

449:                                              ; preds = %446, %439
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #21
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %37) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !1050
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #21
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %441, i32 noundef 0) #20
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %1, ptr noundef %441) #19
  %450 = load i32, ptr @pre_stats, align 4, !tbaa !1028
  %451 = add nsw i32 %450, 1
  store i32 %451, ptr @pre_stats, align 4, !tbaa !1028
  br label %452

452:                                              ; preds = %449, %413, %391
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  %453 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !895
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %376, label %20, !prof !1190

455:                                              ; preds = %31, %487
  %456 = phi i32 [ %488, %487 ], [ 0, %31 ]
  %457 = load ptr, ptr %3, align 8, !tbaa !866
  %458 = call fastcc ptr @gimple_assign_lhs(ptr noundef %457) #19
  %459 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %457) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %460 = load i64, ptr %458, align 8
  %461 = and i64 %460, 65535
  %462 = icmp eq i64 %461, 141
  br i1 %462, label %463, label %479

463:                                              ; preds = %455
  %464 = load i64, ptr %459, align 8
  %465 = and i64 %464, 65535
  %466 = icmp eq i64 %465, 141
  br i1 %466, label %467, label %479

467:                                              ; preds = %463
  %468 = call fastcc zeroext i8 @single_imm_use(ptr noundef nonnull %458, ptr noundef nonnull %8, ptr noundef nonnull %9) #19
  %469 = icmp eq i8 %468, 0
  br i1 %469, label %479, label %470

470:                                              ; preds = %467
  %471 = load ptr, ptr %8, align 8, !tbaa !866
  %472 = call fastcc ptr @get_use_from_ptr(ptr noundef %471) #19
  %473 = call zeroext i8 @may_propagate_copy(ptr noundef %472, ptr noundef nonnull %459) #20
  %474 = icmp eq i8 %473, 0
  br i1 %474, label %479, label %475

475:                                              ; preds = %470
  %476 = load ptr, ptr %8, align 8, !tbaa !866
  %477 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %457) #19
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %476, ptr noundef %477) #19
  %478 = load ptr, ptr %9, align 8, !tbaa !866
  call fastcc void @update_stmt(ptr noundef %478) #19
  br label %479

479:                                              ; preds = %475, %470, %467, %463, %455
  %480 = load i64, ptr %458, align 8
  %481 = and i64 %480, 65535
  %482 = icmp eq i64 %481, 141
  br i1 %482, label %483, label %486

483:                                              ; preds = %479
  %484 = call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %458) #19
  %485 = icmp eq i8 %484, 0
  br i1 %485, label %487, label %486

486:                                              ; preds = %483, %479
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %457) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !1050
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #21
  call void @unlink_stmt_vdef(ptr noundef %457) #20
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #20
  call void @release_defs(ptr noundef %457) #20
  br label %487

487:                                              ; preds = %486, %483
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  %488 = add i32 %456, 1
  %489 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %32, i32 noundef %488, ptr noundef nonnull %3) #19, !range !885
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %455, !prof !1191, !llvm.loop !1192

491:                                              ; preds = %487, %31
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
define internal fastcc void @clear_expression_ids() unnamed_addr #12 !prof !1006 !PGOFuncName !1193 {
  tail call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull @expressions) #19
  ret void
}

; Function Attrs: optsize
declare void @free_scc_vn() local_unnamed_addr #2

; Function Attrs: optsize
declare void @scev_finalize() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fini_pre(i8 noundef zeroext %0) unnamed_addr #0 !prof !1006 !PGOFuncName !1194 {
  %2 = load ptr, ptr @postorder, align 8, !tbaa !866
  tail call void @free(ptr noundef %2) #19
  tail call fastcc void @VEC_bitmap_set_t_heap_free() #19
  tail call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull @inserted_exprs) #19
  tail call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull @need_creation) #19
  tail call void @bitmap_obstack_release(ptr noundef nonnull @grand_bitmap_obstack) #20
  %3 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !866
  tail call void @free_alloc_pool(ptr noundef %3) #20
  %4 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !866
  tail call void @free_alloc_pool(ptr noundef %4) #20
  %5 = load ptr, ptr @phi_translate_table, align 8, !tbaa !866
  tail call void @htab_delete(ptr noundef %5) #20
  %6 = load ptr, ptr @expression_to_id, align 8, !tbaa !866
  tail call void @htab_delete(ptr noundef %6) #20
  tail call fastcc void @VEC_unsigned_heap_free() #19
  %7 = load ptr, ptr @cfun, align 8, !tbaa !866
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !1011
  %10 = load ptr, ptr %9, align 8, !tbaa !866
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12, !prof !1053

12:                                               ; preds = %1, %12
  %13 = phi ptr [ %17, %12 ], [ %10, %1 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !1012
  tail call void @free(ptr noundef %15) #19
  store ptr null, ptr %14, align 8, !tbaa !1012
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !866
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %12, !prof !1054, !llvm.loop !1195

19:                                               ; preds = %12, %1
  tail call void @free_dominance_info(i32 noundef 2) #20
  %20 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !866
  %21 = load ptr, ptr %20, align 8, !tbaa !977
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23, !prof !1008

23:                                               ; preds = %19
  %24 = tail call zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef nonnull %20) #20
  %25 = tail call zeroext i8 @cleanup_tree_cfg() #20
  %26 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !866
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi ptr [ %26, %23 ], [ %20, %19 ]
  tail call void @bitmap_obstack_free(ptr noundef %28) #20
  store ptr null, ptr @need_eh_cleanup, align 8, !tbaa !866
  %29 = icmp eq i8 %0, 0
  br i1 %29, label %30, label %31, !prof !1009

30:                                               ; preds = %27
  tail call void @loop_optimizer_finalize() #20
  br label %31

31:                                               ; preds = %30, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !897 !PGOFuncName !1196 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !1197 !PGOFuncName !1198 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1199

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1200
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !1202 !PGOFuncName !1203 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1204

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1200
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1205

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !866
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !866
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_plf(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1206 !PGOFuncName !1207 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 11
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1208 !PGOFuncName !1209 {
  %3 = load i32, ptr %0, align 8, !tbaa !1200
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1200
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !866
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #4 !prof !1210 !PGOFuncName !1211 {
  %2 = load i32, ptr %0, align 8, !tbaa !1200
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !1200
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !866
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1212 !PGOFuncName !1213 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1214 !PGOFuncName !1215 {
  %3 = load ptr, ptr %0, align 8, !tbaa !866
  %4 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %3, i32 noundef %1) #19, !range !885
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !1216

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_p_reserve(ptr noundef %3, i32 noundef %1) #20
  store ptr %7, ptr %0, align 8, !tbaa !866
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1217 !PGOFuncName !1218 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !850
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !1219 !PGOFuncName !1220 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1221
  %4 = load ptr, ptr %3, align 8, !tbaa !866
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1223 !PGOFuncName !1224 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mark_operand_necessary(ptr noundef readonly %0) unnamed_addr #0 !prof !1225 !PGOFuncName !1226 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1227

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4446, ptr noundef nonnull @.str.1) #20
  br label %4

4:                                                ; preds = %1, %3
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %20, !prof !1228

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !850
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !1229

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4452, ptr noundef nonnull @.str.1) #20
  br label %13

13:                                               ; preds = %8, %12
  %14 = tail call fastcc i32 @gimple_plf(ptr noundef %10) #19
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20, !prof !1230

16:                                               ; preds = %13
  %17 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %10) #19, !range !895
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20, !prof !1231

19:                                               ; preds = %16
  tail call fastcc void @gimple_set_plf(ptr noundef %10, i8 noundef zeroext 1) #19
  br label %20

20:                                               ; preds = %13, %16, %4, %19
  %21 = phi ptr [ %10, %19 ], [ null, %4 ], [ null, %16 ], [ null, %13 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1232 !PGOFuncName !1233 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #19
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !1234
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1236 !PGOFuncName !1237 {
  %2 = load i8, ptr %0, align 8, !tbaa !1238
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1239 !PGOFuncName !1240 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0, i32 noundef 1) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !866
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #9 !prof !1236 !PGOFuncName !1241 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1242
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1243

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #19
  %8 = load ptr, ptr %3, align 8, !tbaa !1244
  store ptr %8, ptr %2, align 8, !tbaa !1242
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1246
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !1247

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1248
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #19
  %17 = load ptr, ptr %11, align 8, !tbaa !1250
  store ptr %17, ptr %10, align 8, !tbaa !1246
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !1238
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
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !1251 !PGOFuncName !1252 {
  %2 = load ptr, ptr %0, align 8, !tbaa !866
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1253

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !866
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1214 !PGOFuncName !1254 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !1255

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !1256
  %7 = load i32, ptr %0, align 8, !tbaa !1200
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
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1257 !PGOFuncName !1258 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !850
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !1259

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 3103, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1260 !PGOFuncName !1261 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1035
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_plf(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #4 !prof !1262 !PGOFuncName !1263 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  br i1 %3, label %7, label %5, !prof !1264

5:                                                ; preds = %2
  %6 = or i32 %4, 2048
  br label %9

7:                                                ; preds = %2
  %8 = and i32 %4, -2049
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %8, %7 ], [ %6, %5 ]
  store i32 %10, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1232 !PGOFuncName !1265 {
  %4 = and i32 %2, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !1266

6:                                                ; preds = %3
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !1267

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 747, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %3, %6, %9
  %11 = and i32 %2, 10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !1268

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !1246
  br label %24

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #19
  %17 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !1246
  %18 = icmp eq ptr %16, null
  br i1 %18, label %24, label %19, !prof !1269

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !1270

22:                                               ; preds = %19
  %23 = load ptr, ptr %16, align 8, !tbaa !1250
  store ptr %23, ptr %17, align 8, !tbaa !1246
  br label %24

24:                                               ; preds = %13, %22, %19, %15
  %25 = and i32 %2, 5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29, !prof !1271

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %28, align 8, !tbaa !1242
  br label %40

29:                                               ; preds = %24
  %30 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #19
  %31 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !1242
  %32 = icmp ne i32 %4, 0
  %33 = icmp eq ptr %30, null
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %40, label %35, !prof !1272

35:                                               ; preds = %29
  %36 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !1273

38:                                               ; preds = %35
  %39 = load ptr, ptr %30, align 8, !tbaa !1244
  store ptr %39, ptr %31, align 8, !tbaa !1242
  br label %40

40:                                               ; preds = %27, %38, %35, %29
  store i8 0, ptr %0, align 8, !tbaa !1238
  %41 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1274 !PGOFuncName !1275 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !895
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1276

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !850
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1277 !PGOFuncName !1278 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !895
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1279

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !850
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1280 !PGOFuncName !1281 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !895
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1282

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !850
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1283 !PGOFuncName !1284 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !895
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1285

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !850
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1286 !PGOFuncName !1287 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1035
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1288 !PGOFuncName !1289 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1035
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1290 !PGOFuncName !1291 {
  %2 = load ptr, ptr %0, align 8, !tbaa !866
  ret ptr %2
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_bitmap_set_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1006 !PGOFuncName !1292 {
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
define internal fastcc void @my_rev_post_order_compute(ptr nocapture noundef writeonly %0) unnamed_addr #0 !prof !1006 !PGOFuncName !1293 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !866
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1011
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !1021
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 4
  %10 = tail call ptr @xmalloc(i64 noundef %9) #20
  %11 = load ptr, ptr @cfun, align 8, !tbaa !866
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1011
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !1114
  %16 = tail call ptr @sbitmap_alloc(i32 noundef %15) #20
  tail call void @sbitmap_zero(ptr noundef %16) #20
  %17 = load ptr, ptr @cfun, align 8, !tbaa !866
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !1011
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !1116
  %22 = tail call fastcc ptr @ei_start_1(ptr noundef %21) #19
  store i32 0, ptr %10, align 8, !tbaa.struct !1118
  %23 = getelementptr inbounds i8, ptr %10, i64 8
  store ptr %22, ptr %23, align 8, !tbaa.struct !1119
  br label %24

24:                                               ; preds = %1, %91
  %25 = phi i32 [ 1, %1 ], [ %93, %91 ]
  %26 = phi i32 [ 0, %1 ], [ %92, %91 ]
  %27 = sext i32 %25 to i64
  %28 = getelementptr %struct.edge_iterator, ptr %10, i64 %27
  %29 = getelementptr %struct.edge_iterator, ptr %28, i64 -1
  %30 = load i32, ptr %29, align 8, !tbaa.struct !1118
  %31 = getelementptr %struct.edge_iterator, ptr %28, i64 -1, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa.struct !1119
  %33 = tail call fastcc ptr @ei_edge(i32 %30, ptr %32) #19
  %34 = load ptr, ptr %33, align 8, !tbaa !1294
  %35 = tail call fastcc ptr @ei_edge(i32 %30, ptr %32) #19
  %36 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !1295
  %38 = load ptr, ptr @cfun, align 8, !tbaa !866
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !1011
  %41 = load ptr, ptr %40, align 8, !tbaa !1062
  %42 = icmp eq ptr %34, %41
  br i1 %42, label %68, label %43, !prof !1296

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !1016
  %46 = lshr i32 %45, 6
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !987
  %50 = and i32 %45, 63
  %51 = zext nneg i32 %50 to i64
  %52 = shl nuw i64 1, %51
  %53 = and i64 %52, %49
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %68, !prof !1297

55:                                               ; preds = %43
  tail call fastcc void @SET_BIT(ptr noundef nonnull %16, i32 noundef %45) #19
  %56 = load ptr, ptr %34, align 8, !tbaa !1298
  %57 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %56) #19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59, !prof !1067

59:                                               ; preds = %55
  %60 = add nsw i32 %25, 1
  %61 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %34) #19
  store i32 0, ptr %28, align 8, !tbaa.struct !1118
  %62 = getelementptr inbounds i8, ptr %28, i64 8
  store ptr %61, ptr %62, align 8, !tbaa.struct !1119
  br label %91

63:                                               ; preds = %55
  %64 = load i32, ptr %44, align 8, !tbaa !1016
  %65 = add nsw i32 %26, 1
  %66 = sext i32 %26 to i64
  %67 = getelementptr inbounds i32, ptr %0, i64 %66
  store i32 %64, ptr %67, align 4, !tbaa !888
  br label %91

68:                                               ; preds = %43, %24
  %69 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %30, ptr %32) #19, !range !895
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %84, label %71, !prof !1299

71:                                               ; preds = %68
  %72 = load ptr, ptr @cfun, align 8, !tbaa !866
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !1011
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !1116
  %77 = icmp eq ptr %37, %76
  br i1 %77, label %84, label %78, !prof !1300

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !1016
  %81 = add nsw i32 %26, 1
  %82 = sext i32 %26 to i64
  %83 = getelementptr inbounds i32, ptr %0, i64 %82
  store i32 %80, ptr %83, align 4, !tbaa !888
  br label %84

84:                                               ; preds = %78, %71, %68
  %85 = phi i32 [ %81, %78 ], [ %26, %71 ], [ %26, %68 ]
  %86 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %30, ptr %32) #19, !range !895
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %89, !prof !1299

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
  br i1 %94, label %95, label %24, !prof !1301, !llvm.loop !1302

95:                                               ; preds = %91
  tail call void @free(ptr noundef nonnull %10) #19
  %96 = load ptr, ptr %16, align 8, !tbaa !1141
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
define internal i32 @expr_pred_trans_hash(ptr nocapture noundef readonly %0) #3 !prof !880 !PGOFuncName !1303 {
  %2 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !1304
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @expr_pred_trans_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1306 !PGOFuncName !1307 {
  %3 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1308
  %5 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1308
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %12, !prof !1309

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !1310
  %10 = load ptr, ptr %1, align 8, !tbaa !1310
  %11 = tail call i32 @pre_expr_eq(ptr noundef %9, ptr noundef %10) #19
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pre_expr_hash(ptr nocapture noundef readonly %0) #0 !prof !1311 !PGOFuncName !1312 {
  %2 = load i32, ptr %0, align 8, !tbaa !844
  switch i32 %2, label %22 [
    i32 3, label %3
    i32 0, label %7
    i32 1, label %12
    i32 2, label %17
  ], !prof !1313

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !850
  %6 = tail call fastcc i32 @vn_hash_constant_with_type(ptr noundef %5) #19
  br label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !850
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !850
  br label %23

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !850
  %15 = getelementptr inbounds %struct.vn_nary_op_s, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !1314
  br label %23

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !850
  %20 = getelementptr inbounds %struct.vn_reference_s, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !1315
  br label %23

22:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 229, ptr noundef nonnull @.str.1) #20
  br label %23

23:                                               ; preds = %22, %17, %12, %7, %3
  %24 = phi i32 [ 0, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %7 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pre_expr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1316 !PGOFuncName !1317 {
  %3 = load i32, ptr %0, align 8, !tbaa !844
  %4 = load i32, ptr %1, align 8, !tbaa !844
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %34, !prof !1318

6:                                                ; preds = %2
  switch i32 %3, label %33 [
    i32 3, label %7
    i32 0, label %14
    i32 1, label %21
    i32 2, label %27
  ], !prof !1319

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !850
  %10 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !850
  %12 = tail call fastcc zeroext i8 @vn_constant_eq_with_type(ptr noundef %9, ptr noundef %11) #19, !range !895
  %13 = zext nneg i8 %12 to i32
  br label %34

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !850
  %17 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !850
  %19 = icmp eq ptr %16, %18
  %20 = zext i1 %19 to i32
  br label %34

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !850
  %24 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !850
  %26 = tail call i32 @vn_nary_op_eq(ptr noundef %23, ptr noundef %25) #20
  br label %34

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !850
  %30 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !850
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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 !prof !1320 !PGOFuncName !1321 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1322 !PGOFuncName !1323 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1324

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 !prof !1325 !PGOFuncName !1326 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1141
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1327

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
  %15 = load i64, ptr %14, align 8, !tbaa !987
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !850
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !850
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !987
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !987
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !1328 !PGOFuncName !1329 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1330

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1331
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_one_before_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1333 !PGOFuncName !1334 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1335

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
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1336 !PGOFuncName !1337 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1338

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1339

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1340
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1340
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1342 !PGOFuncName !1343 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !866
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1344 !PGOFuncName !1345 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1346

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #20
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !866
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vn_hash_constant_with_type(ptr noundef %0) unnamed_addr #0 !prof !1347 !PGOFuncName !1348 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !850
  %4 = tail call i32 @iterative_hash_expr(ptr noundef %0, i32 noundef 0) #20
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -6
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %17, !prof !1349

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
define internal fastcc zeroext i8 @vn_constant_eq_with_type(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1350 !PGOFuncName !1351 {
  %3 = tail call zeroext i8 @expressions_equal_p(ptr noundef %0, ptr noundef %1) #20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !1352

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !850
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !850
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
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1353 !PGOFuncName !1354 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !866
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 !prof !1355 !PGOFuncName !1356 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1357
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6, !prof !1358

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !888
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !1359

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
define internal fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %0) unnamed_addr #0 !prof !1360 !PGOFuncName !1361 {
  %2 = alloca %struct.pre_expr_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  store i32 0, ptr %2, align 8, !tbaa !844
  %3 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !913
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 2
  store ptr %0, ptr %4, align 8, !tbaa !850
  %5 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %2) #19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !1362

7:                                                ; preds = %1
  %8 = call fastcc ptr @expression_for_id(i32 noundef %5) #19
  br label %14

9:                                                ; preds = %1
  %10 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !866
  %11 = call ptr @pool_alloc(ptr noundef %10) #20
  store i32 0, ptr %11, align 8, !tbaa !844
  %12 = getelementptr inbounds %struct.pre_expr_d, ptr %11, i64 0, i32 2
  store ptr %0, ptr %12, align 8, !tbaa !850
  %13 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %11) #19
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi ptr [ %8, %7 ], [ %11, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_insert_into_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1363 !PGOFuncName !1364 {
  %3 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  tail call fastcc void @bitmap_insert_into_set_1(ptr noundef %0, ptr noundef %1, i32 noundef %3, i8 noundef zeroext 0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_value_insert_into_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1365 !PGOFuncName !1366 {
  %3 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  %4 = tail call zeroext i8 @value_id_constant_p(i32 noundef %3) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %16, !prof !1367

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !873
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %3) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11, !prof !1368

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8, !tbaa !871
  %13 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !913
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
define internal fastcc void @bitmap_set_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1369 !PGOFuncName !1370 {
  %3 = load ptr, ptr %0, align 8, !tbaa !871
  %4 = load ptr, ptr %1, align 8, !tbaa !871
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %4) #20
  %5 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !873
  %7 = getelementptr inbounds %struct.bitmap_set, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !873
  tail call void @bitmap_copy(ptr noundef %6, ptr noundef %8) #20
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !1371 !PGOFuncName !1372 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1373
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_values_for_phi(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1375 !PGOFuncName !1376 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #19
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %35, label %6, !prof !1377

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %3) #19
  %8 = tail call fastcc i32 @get_expr_value_id(ptr noundef %7) #19
  tail call void @add_to_value(i32 noundef %8, ptr noundef %7) #19
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1012
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1017
  tail call fastcc void @bitmap_insert_into_set(ptr noundef %12, ptr noundef %7) #19
  %13 = load ptr, ptr %9, align 8, !tbaa !1012
  %14 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !1019
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %15, ptr noundef %7) #19
  %16 = load i8, ptr @in_fre, align 1, !tbaa !850
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %35, !prof !1378

18:                                               ; preds = %6
  %19 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21, !prof !1379

21:                                               ; preds = %18, %30
  %22 = phi i64 [ %31, %30 ], [ 0, %18 ]
  %23 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %22) #19
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 141
  br i1 %26, label %27, label %30, !prof !1380

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
  br i1 %34, label %21, label %35, !prof !1381, !llvm.loop !1382

35:                                               ; preds = %30, %18, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #11 !prof !1383 !PGOFuncName !1384 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1373
  %3 = load ptr, ptr %2, align 8, !tbaa !1385
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 !prof !1387 !PGOFuncName !1388 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1373
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1389
  store ptr %4, ptr %0, align 8, !tbaa !1373
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !1390 !PGOFuncName !1391 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !1373
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !1392
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !1393
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_uid(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #16 !prof !1274 !PGOFuncName !1394 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !850
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1395 !PGOFuncName !1396 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1035
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1397 !PGOFuncName !1398 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !895
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !1399

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
define internal fastcc void @add_to_exp_gen(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1400 !PGOFuncName !1401 {
  %3 = load i8, ptr @in_fre, align 1, !tbaa !850
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %17, !prof !1402

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %12, !prof !1403

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @ssa_undefined_value_p(ptr noundef nonnull %1) #20
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17, !prof !1403

12:                                               ; preds = %9, %5
  %13 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %1) #19
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !1012
  %16 = load ptr, ptr %15, align 8, !tbaa !1014
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %16, ptr noundef %13) #19
  br label %17

17:                                               ; preds = %12, %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @can_value_number_call(ptr noundef %0) unnamed_addr #0 !prof !1404 !PGOFuncName !1405 {
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
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !1406 !PGOFuncName !1407 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1035
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ], !prof !1408

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #19
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !1086
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13, !prof !1409

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !850
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #20
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !850
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !866
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !866
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_vn_reference_op_s_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !1410 !PGOFuncName !1411 {
  %2 = load ptr, ptr %0, align 8, !tbaa !866
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1412

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !866
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !1413 !PGOFuncName !1414 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #19, !range !1086
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #19, !range !1035
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !1415

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
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1416 !PGOFuncName !1417 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !850
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !1418 !PGOFuncName !1419 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !1420 !PGOFuncName !1421 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !1422

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
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1423 !PGOFuncName !1424 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !850
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !1425 !PGOFuncName !1426 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #19
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !1390 !PGOFuncName !1427 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1428
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !1429

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !850
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1430

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !1431
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 !prof !1390 !PGOFuncName !1433 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1430

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !1434
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare zeroext i8 @ssa_undefined_value_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !880 !PGOFuncName !1436 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !850
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !850
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !850
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !1404 !PGOFuncName !1437 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1438 !PGOFuncName !1439 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !895
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !1440

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !866
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !1441 !PGOFuncName !1442 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !987
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !1443

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1441 !PGOFuncName !1444 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1035
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #7 !prof !1441 !PGOFuncName !1445 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !888
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1413 !PGOFuncName !1446 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1035
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !1447

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1446, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #7 !prof !1413 !PGOFuncName !1448 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !850
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1449 !PGOFuncName !1450 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !895
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1451

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !866
  ret i8 %10
}

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1452 !PGOFuncName !1453 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !866
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @compute_antic_aux(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1454 !PGOFuncName !1455 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !1012
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 8
  %12 = load i8, ptr %11, align 8
  %13 = or i8 %12, 1
  store i8 %13, ptr %11, align 8
  %14 = icmp eq i8 %1, 0
  br i1 %14, label %15, label %172, !prof !1456

15:                                               ; preds = %2
  %16 = load ptr, ptr %9, align 8, !tbaa !1012
  %17 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !1126
  %19 = tail call fastcc ptr @bitmap_set_new() #19
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !1457
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %113, label %24, !prof !1458

24:                                               ; preds = %15
  %25 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #19, !range !895
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27, !prof !1459

27:                                               ; preds = %24
  %28 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #19
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !1012
  %31 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !1126
  %33 = tail call fastcc zeroext i8 @defer_or_phi_translate_block(ptr noundef %19, ptr noundef %32, ptr noundef nonnull %0, ptr noundef %28) #19, !range !895
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %172, label %113

35:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %36 = tail call fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %22) #19
  store ptr %36, ptr %7, align 8, !tbaa !866
  %37 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %20) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !1118
  %38 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %37, ptr %38, align 8, !tbaa.struct !1119
  %39 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %5) #19, !range !895
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %101, label %41, !prof !1460

41:                                               ; preds = %35, %57
  %42 = phi ptr [ %58, %57 ], [ null, %35 ]
  %43 = icmp eq ptr %42, null
  %44 = load ptr, ptr %5, align 8, !tbaa !866
  %45 = getelementptr inbounds %struct.edge_def, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !1295
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !1012
  %49 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %48, i64 0, i32 8
  %50 = load i8, ptr %49, align 8
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %43, label %53, label %55, !prof !1461

53:                                               ; preds = %41
  br i1 %52, label %54, label %57, !prof !1462

54:                                               ; preds = %53
  br label %57

55:                                               ; preds = %41
  br i1 %52, label %57, label %56, !prof !1463

56:                                               ; preds = %55
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %36, ptr noundef nonnull %46) #19
  br label %57

57:                                               ; preds = %54, %53, %56, %55
  %58 = phi ptr [ %42, %56 ], [ %42, %55 ], [ %46, %53 ], [ null, %54 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %59 = load i32, ptr %6, align 8
  %60 = load ptr, ptr %38, align 8
  %61 = call fastcc zeroext i8 @ei_cond(i32 %59, ptr %60, ptr noundef nonnull %5) #19, !range !895
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %41, !prof !1464, !llvm.loop !1465

63:                                               ; preds = %57
  %64 = icmp eq ptr %58, null
  br i1 %64, label %101, label %65, !prof !1065

65:                                               ; preds = %63
  %66 = tail call fastcc ptr @phi_nodes(ptr noundef nonnull %58) #19
  %67 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %66) #19, !range !895
  %68 = icmp eq i8 %67, 0
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !1012
  %71 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %70, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !1126
  br i1 %68, label %73, label %74, !prof !1462

73:                                               ; preds = %65
  tail call fastcc void @phi_translate_set(ptr noundef %19, ptr noundef %72, ptr noundef %0, ptr noundef nonnull %58) #19
  br label %75

74:                                               ; preds = %65
  tail call fastcc void @bitmap_set_copy(ptr noundef %19, ptr noundef %72) #19
  br label %75

75:                                               ; preds = %74, %73
  %76 = load ptr, ptr %7, align 8
  %77 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %76, i32 noundef 0, ptr noundef nonnull %8) #19, !range !885
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %100, label %79, !prof !1460

79:                                               ; preds = %75, %96
  %80 = phi i32 [ %97, %96 ], [ 0, %75 ]
  %81 = load ptr, ptr %8, align 8, !tbaa !866
  %82 = tail call fastcc ptr @phi_nodes(ptr noundef %81) #19
  %83 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %82) #19, !range !895
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %91, !prof !1466

85:                                               ; preds = %79
  %86 = tail call fastcc ptr @bitmap_set_new() #19
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !1012
  %89 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %88, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !1126
  tail call fastcc void @phi_translate_set(ptr noundef %86, ptr noundef %90, ptr noundef %0, ptr noundef %81) #19
  tail call fastcc void @bitmap_set_and(ptr noundef %19, ptr noundef %86) #19
  tail call fastcc void @bitmap_set_free(ptr noundef %86) #19
  br label %96

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !1012
  %94 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %93, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !1126
  tail call fastcc void @bitmap_set_and(ptr noundef %19, ptr noundef %95) #19
  br label %96

96:                                               ; preds = %85, %91
  %97 = add i32 %80, 1
  %98 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %76, i32 noundef %97, ptr noundef nonnull %8) #19, !range !885
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %79, !prof !1467, !llvm.loop !1468

100:                                              ; preds = %96, %75
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %113

101:                                              ; preds = %35, %63
  %102 = load ptr, ptr @changed_blocks, align 8, !tbaa !866
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %104 = load i32, ptr %103, align 8, !tbaa !1016
  tail call fastcc void @SET_BIT(ptr noundef %102, i32 noundef %104) #19
  %105 = load ptr, ptr %9, align 8, !tbaa !1012
  %106 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %105, i64 0, i32 8
  %107 = load i8, ptr %106, align 8
  %108 = and i8 %107, -2
  store i8 %108, ptr %106, align 8
  %109 = load ptr, ptr %9, align 8, !tbaa !1012
  %110 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %109, i64 0, i32 8
  %111 = load i8, ptr %110, align 8
  %112 = or i8 %111, 2
  store i8 %112, ptr %110, align 8
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %172

113:                                              ; preds = %100, %27, %15
  %114 = load ptr, ptr %9, align 8, !tbaa !1012
  %115 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !1018
  %117 = tail call fastcc ptr @bitmap_set_subtract(ptr noundef %19, ptr noundef %116) #19
  %118 = load ptr, ptr %9, align 8, !tbaa !1012
  %119 = load ptr, ptr %118, align 8, !tbaa !1014
  %120 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %118, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !1018
  %122 = tail call fastcc ptr @bitmap_set_subtract(ptr noundef %119, ptr noundef %121) #19
  %123 = load ptr, ptr %9, align 8, !tbaa !1012
  %124 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %123, i64 0, i32 4
  store ptr %122, ptr %124, align 8, !tbaa !1126
  %125 = load ptr, ptr %117, align 8, !tbaa !871
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %125, ptr noundef nonnull %4) #19
  %126 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !895
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %140, label %128, !prof !1469

128:                                              ; preds = %113, %128
  %129 = load ptr, ptr %9, align 8, !tbaa !1012
  %130 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %129, i64 0, i32 4
  %131 = load ptr, ptr %130, align 8, !tbaa !1126
  %132 = load i32, ptr %4, align 4, !tbaa !888
  %133 = tail call fastcc ptr @expression_for_id(i32 noundef %132) #19
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %131, ptr noundef %133) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %134 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !895
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %128, !prof !1470, !llvm.loop !1471

136:                                              ; preds = %128
  %137 = load ptr, ptr %9, align 8, !tbaa !1012
  %138 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %137, i64 0, i32 4
  %139 = load ptr, ptr %138, align 8, !tbaa !1126
  br label %140

140:                                              ; preds = %136, %113
  %141 = phi ptr [ %139, %136 ], [ %122, %113 ]
  tail call fastcc void @clean(ptr noundef %141, ptr noundef nonnull %0) #19
  %142 = load ptr, ptr %18, align 8, !tbaa !871
  %143 = icmp eq ptr %142, null
  br i1 %143, label %150, label %144, !prof !1458

144:                                              ; preds = %140
  %145 = load ptr, ptr %9, align 8, !tbaa !1012
  %146 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %145, i64 0, i32 4
  %147 = load ptr, ptr %146, align 8, !tbaa !1126
  %148 = tail call fastcc zeroext i8 @bitmap_set_equal(ptr noundef nonnull %18, ptr noundef %147) #19
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %168, !prof !1472

150:                                              ; preds = %144, %140
  %151 = load ptr, ptr @changed_blocks, align 8, !tbaa !866
  %152 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %153 = load i32, ptr %152, align 8, !tbaa !1016
  tail call fastcc void @SET_BIT(ptr noundef %151, i32 noundef %153) #19
  %154 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !1118
  %155 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %154, ptr %155, align 8, !tbaa.struct !1119
  %156 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %154, ptr noundef nonnull %5) #19, !range !895
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %172, label %158, !prof !1473

158:                                              ; preds = %150, %158
  %159 = load ptr, ptr @changed_blocks, align 8, !tbaa !866
  %160 = load ptr, ptr %5, align 8, !tbaa !866
  %161 = load ptr, ptr %160, align 8, !tbaa !1294
  %162 = getelementptr inbounds %struct.basic_block_def, ptr %161, i64 0, i32 9
  %163 = load i32, ptr %162, align 8, !tbaa !1016
  tail call fastcc void @SET_BIT(ptr noundef %159, i32 noundef %163) #19
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %164 = load i32, ptr %6, align 8
  %165 = load ptr, ptr %155, align 8
  %166 = call fastcc zeroext i8 @ei_cond(i32 %164, ptr %165, ptr noundef nonnull %5) #19, !range !895
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %172, label %158, !prof !1474, !llvm.loop !1475

168:                                              ; preds = %144
  %169 = load ptr, ptr @changed_blocks, align 8, !tbaa !866
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %171 = load i32, ptr %170, align 8, !tbaa !1016
  tail call fastcc void @RESET_BIT(ptr noundef %169, i32 noundef %171) #19
  br label %172

172:                                              ; preds = %158, %150, %101, %27, %168, %2
  %173 = phi ptr [ null, %2 ], [ %19, %168 ], [ %19, %27 ], [ %19, %101 ], [ %19, %150 ], [ %19, %158 ]
  %174 = phi ptr [ null, %2 ], [ %18, %168 ], [ %18, %27 ], [ %18, %101 ], [ %18, %150 ], [ %18, %158 ]
  %175 = phi ptr [ null, %2 ], [ %117, %168 ], [ null, %27 ], [ null, %101 ], [ %117, %150 ], [ %117, %158 ]
  %176 = phi i8 [ 0, %2 ], [ 0, %168 ], [ 1, %27 ], [ 1, %101 ], [ 1, %150 ], [ 1, %158 ]
  %177 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %178 = icmp eq ptr %177, null
  br i1 %178, label %211, label %179, !prof !1456

179:                                              ; preds = %172
  %180 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %181 = and i32 %180, 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %211, label %183

183:                                              ; preds = %179
  %184 = load ptr, ptr %9, align 8, !tbaa !1012
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
  %193 = load i32, ptr %192, align 8, !tbaa !1016
  tail call fastcc void @print_bitmap_set(ptr noundef nonnull %177, ptr noundef nonnull %173, ptr noundef nonnull @.str.37, i32 noundef %193) #19
  %194 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %195 = load ptr, ptr %9, align 8, !tbaa !1012
  br label %196

196:                                              ; preds = %191, %189
  %197 = phi ptr [ %195, %191 ], [ %184, %189 ]
  %198 = phi ptr [ %194, %191 ], [ %177, %189 ]
  %199 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %197, i64 0, i32 4
  %200 = load ptr, ptr %199, align 8, !tbaa !1126
  %201 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %202 = load i32, ptr %201, align 8, !tbaa !1016
  tail call fastcc void @print_bitmap_set(ptr noundef %198, ptr noundef %200, ptr noundef nonnull @.str.38, i32 noundef %202) #19
  %203 = icmp eq ptr %175, null
  br i1 %203, label %211, label %204

204:                                              ; preds = %196
  %205 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %206 = load i32, ptr %201, align 8, !tbaa !1016
  tail call fastcc void @print_bitmap_set(ptr noundef %205, ptr noundef nonnull %175, ptr noundef nonnull @.str.39, i32 noundef %206) #19
  br label %211

207:                                              ; preds = %183
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %209 = load i32, ptr %208, align 8, !tbaa !1016
  %210 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %177, ptr noundef nonnull @.str.40, i32 noundef %209) #19
  br label %211

211:                                              ; preds = %207, %204, %196, %179, %172
  %212 = icmp eq ptr %174, null
  br i1 %212, label %214, label %213, !prof !1458

213:                                              ; preds = %211
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %174) #19
  br label %214

214:                                              ; preds = %213, %211
  %215 = icmp eq ptr %175, null
  br i1 %215, label %217, label %216, !prof !1458

216:                                              ; preds = %214
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %175) #19
  br label %217

217:                                              ; preds = %216, %214
  %218 = icmp eq ptr %173, null
  br i1 %218, label %220, label %219, !prof !1458

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
define internal fastcc noundef zeroext i8 @compute_partial_antic_aux(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1476 !PGOFuncName !1477 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %9 = load ptr, ptr @compiler_params, align 8, !tbaa !866
  %10 = getelementptr inbounds %struct.param_info, ptr %9, i64 103, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !1478
  %12 = sext i32 %11 to i64
  %13 = icmp eq i8 %1, 0
  br i1 %13, label %14, label %186, !prof !1480

14:                                               ; preds = %2
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %29, label %16, !prof !1481

16:                                               ; preds = %14
  %17 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !895
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %29, label %19, !prof !1482

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @single_succ(ptr noundef %0) #19
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !1012
  %23 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !1127
  %25 = getelementptr inbounds %struct.bitmap_set, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !873
  %27 = tail call i64 @bitmap_count_bits(ptr noundef %26) #20
  %28 = icmp ugt i64 %27, %12
  br i1 %28, label %186, label %29, !prof !1483

29:                                               ; preds = %19, %16, %14
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !1012
  %32 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !1127
  %34 = tail call fastcc ptr @bitmap_set_new() #19
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !1457
  %37 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %36) #19
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %130, label %39, !prof !1481

39:                                               ; preds = %29
  %40 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #19, !range !895
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %54, label %42, !prof !1482

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #19
  %44 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #19
  %45 = getelementptr inbounds %struct.edge_def, ptr %44, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !1121
  %47 = and i32 %46, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %130, !prof !1484

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !1012
  %52 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %51, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !1127
  tail call fastcc void @phi_translate_set(ptr noundef %34, ptr noundef %53, ptr noundef nonnull %0, ptr noundef %43) #19
  br label %130

54:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %55 = tail call fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %37) #19
  store ptr %55, ptr %5, align 8, !tbaa !866
  %56 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %35) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !1118
  %57 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %56, ptr %57, align 8, !tbaa.struct !1119
  %58 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %56, ptr noundef nonnull %3) #19, !range !895
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %74, label %60, !prof !1485

60:                                               ; preds = %54, %69
  %61 = load ptr, ptr %3, align 8, !tbaa !866
  %62 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 7
  %63 = load i32, ptr %62, align 8, !tbaa !1121
  %64 = and i32 %63, 32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69, !prof !1486

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !1295
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %55, ptr noundef %68) #19
  br label %69

69:                                               ; preds = %60, %66
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %70 = load i32, ptr %4, align 8
  %71 = load ptr, ptr %57, align 8
  %72 = call fastcc zeroext i8 @ei_cond(i32 %70, ptr %71, ptr noundef nonnull %3) #19, !range !895
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %60, !prof !1487, !llvm.loop !1488

74:                                               ; preds = %69, %54
  %75 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %55) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %129, label %77, !prof !1489

77:                                               ; preds = %74
  %78 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %55, i32 noundef 0, ptr noundef nonnull %6) #19, !range !885
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %129, label %80, !prof !1485

80:                                               ; preds = %77, %125
  %81 = phi i32 [ %126, %125 ], [ 0, %77 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  %82 = load ptr, ptr %6, align 8, !tbaa !866
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !1012
  %85 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %84, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !1126
  %87 = load ptr, ptr %86, align 8, !tbaa !871
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %87, ptr noundef nonnull %7) #19
  %88 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !895
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %95, label %90, !prof !1490

90:                                               ; preds = %80, %90
  %91 = load i32, ptr %7, align 4, !tbaa !888
  %92 = tail call fastcc ptr @expression_for_id(i32 noundef %91) #19
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %34, ptr noundef %92) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  %93 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !895
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %90, !prof !1491, !llvm.loop !1492

95:                                               ; preds = %90, %80
  %96 = tail call fastcc ptr @phi_nodes(ptr noundef %82) #19
  %97 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %96) #19, !range !895
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %113, !prof !1493

99:                                               ; preds = %95
  %100 = tail call fastcc ptr @bitmap_set_new() #19
  %101 = load ptr, ptr %83, align 8, !tbaa !1012
  %102 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %101, i64 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !1127
  tail call fastcc void @phi_translate_set(ptr noundef %100, ptr noundef %103, ptr noundef %0, ptr noundef %82) #19
  %104 = load ptr, ptr %100, align 8, !tbaa !871
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %104, ptr noundef nonnull %7) #19
  %105 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !895
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %99, %107
  %108 = load i32, ptr %7, align 4, !tbaa !888
  %109 = tail call fastcc ptr @expression_for_id(i32 noundef %108) #19
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %34, ptr noundef %109) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  %110 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !895
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %107, !llvm.loop !1494

112:                                              ; preds = %107, %99
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %100) #19
  br label %125

113:                                              ; preds = %95
  %114 = load ptr, ptr %83, align 8, !tbaa !1012
  %115 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %114, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !1127
  %117 = load ptr, ptr %116, align 8, !tbaa !871
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %117, ptr noundef nonnull %7) #19
  %118 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !895
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %125, label %120, !prof !1495

120:                                              ; preds = %113, %120
  %121 = load i32, ptr %7, align 4, !tbaa !888
  %122 = tail call fastcc ptr @expression_for_id(i32 noundef %121) #19
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %34, ptr noundef %122) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  %123 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !895
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %120, !prof !1496, !llvm.loop !1497

125:                                              ; preds = %120, %113, %112
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  %126 = add i32 %81, 1
  %127 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %55, i32 noundef %126, ptr noundef nonnull %6) #19, !range !885
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %80, !prof !1487, !llvm.loop !1498

129:                                              ; preds = %125, %77, %74
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %130

130:                                              ; preds = %42, %49, %129, %29
  %131 = load ptr, ptr %30, align 8, !tbaa !1012
  %132 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !1018
  %134 = tail call fastcc ptr @bitmap_set_subtract(ptr noundef %34, ptr noundef %133) #19
  %135 = load ptr, ptr %30, align 8, !tbaa !1012
  %136 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %135, i64 0, i32 5
  store ptr %134, ptr %136, align 8, !tbaa !1127
  %137 = getelementptr inbounds %struct.bitmap_set, ptr %134, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !873
  %139 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %135, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !1017
  %141 = getelementptr inbounds %struct.bitmap_set, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !873
  %143 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %138, ptr noundef %142) #20
  %144 = load ptr, ptr %30, align 8, !tbaa !1012
  %145 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %144, i64 0, i32 5
  %146 = load ptr, ptr %145, align 8, !tbaa !1127
  %147 = load ptr, ptr %146, align 8, !tbaa !871
  %148 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %144, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !1017
  %150 = load ptr, ptr %149, align 8, !tbaa !871
  %151 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %147, ptr noundef %150) #20
  %152 = load ptr, ptr %30, align 8, !tbaa !1012
  %153 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %152, i64 0, i32 5
  %154 = load ptr, ptr %153, align 8, !tbaa !1127
  %155 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %152, i64 0, i32 4
  %156 = load ptr, ptr %155, align 8, !tbaa !1126
  tail call fastcc void @bitmap_set_subtract_values(ptr noundef %154, ptr noundef %156) #19
  %157 = load ptr, ptr %30, align 8, !tbaa !1012
  %158 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %157, i64 0, i32 5
  %159 = load ptr, ptr %158, align 8, !tbaa !1127
  %160 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %157, i64 0, i32 4
  %161 = load ptr, ptr %160, align 8, !tbaa !1126
  tail call fastcc void @dependent_clean(ptr noundef %159, ptr noundef %161, ptr noundef %0) #19
  %162 = load ptr, ptr %30, align 8, !tbaa !1012
  %163 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %162, i64 0, i32 5
  %164 = load ptr, ptr %163, align 8, !tbaa !1127
  %165 = tail call fastcc zeroext i8 @bitmap_set_equal(ptr noundef %33, ptr noundef %164) #19
  %166 = icmp eq i8 %165, 0
  %167 = load ptr, ptr @changed_blocks, align 8, !tbaa !866
  %168 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %169 = load i32, ptr %168, align 8, !tbaa !1016
  br i1 %166, label %170, label %185, !prof !1499

170:                                              ; preds = %130
  tail call fastcc void @SET_BIT(ptr noundef %167, i32 noundef %169) #19
  %171 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !1118
  %172 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %171, ptr %172, align 8, !tbaa.struct !1119
  %173 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %171, ptr noundef nonnull %3) #19, !range !895
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %186, label %175, !prof !1500

175:                                              ; preds = %170, %175
  %176 = load ptr, ptr @changed_blocks, align 8, !tbaa !866
  %177 = load ptr, ptr %3, align 8, !tbaa !866
  %178 = load ptr, ptr %177, align 8, !tbaa !1294
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 9
  %180 = load i32, ptr %179, align 8, !tbaa !1016
  tail call fastcc void @SET_BIT(ptr noundef %176, i32 noundef %180) #19
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %181 = load i32, ptr %4, align 8
  %182 = load ptr, ptr %172, align 8
  %183 = call fastcc zeroext i8 @ei_cond(i32 %181, ptr %182, ptr noundef nonnull %3) #19, !range !895
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %186, label %175, !prof !1501, !llvm.loop !1502

185:                                              ; preds = %130
  tail call fastcc void @RESET_BIT(ptr noundef %167, i32 noundef %169) #19
  br label %186

186:                                              ; preds = %175, %170, %185, %19, %2
  %187 = phi ptr [ null, %2 ], [ null, %19 ], [ %34, %185 ], [ %34, %170 ], [ %34, %175 ]
  %188 = phi ptr [ null, %2 ], [ null, %19 ], [ %33, %185 ], [ %33, %170 ], [ %33, %175 ]
  %189 = phi i8 [ 0, %2 ], [ 0, %19 ], [ 0, %185 ], [ 1, %170 ], [ 1, %175 ]
  %190 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %191 = icmp eq ptr %190, null
  br i1 %191, label %210, label %192, !prof !1480

192:                                              ; preds = %186
  %193 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %194 = and i32 %193, 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %210, label %196

196:                                              ; preds = %192
  %197 = icmp eq ptr %187, null
  br i1 %197, label %202, label %198

198:                                              ; preds = %196
  %199 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %200 = load i32, ptr %199, align 8, !tbaa !1016
  tail call fastcc void @print_bitmap_set(ptr noundef nonnull %190, ptr noundef nonnull %187, ptr noundef nonnull @.str.45, i32 noundef %200) #19
  %201 = load ptr, ptr @dump_file, align 8, !tbaa !866
  br label %202

202:                                              ; preds = %198, %196
  %203 = phi ptr [ %201, %198 ], [ %190, %196 ]
  %204 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !1012
  %206 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %205, i64 0, i32 5
  %207 = load ptr, ptr %206, align 8, !tbaa !1127
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %209 = load i32, ptr %208, align 8, !tbaa !1016
  tail call fastcc void @print_bitmap_set(ptr noundef %203, ptr noundef %207, ptr noundef nonnull @.str.46, i32 noundef %209) #19
  br label %210

210:                                              ; preds = %202, %192, %186
  %211 = icmp eq ptr %188, null
  br i1 %211, label %213, label %212, !prof !1481

212:                                              ; preds = %210
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %188) #19
  br label %213

213:                                              ; preds = %212, %210
  %214 = icmp eq ptr %187, null
  br i1 %214, label %216, label %215, !prof !1481

215:                                              ; preds = %213
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %187) #19
  br label %216

216:                                              ; preds = %215, %213
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %189
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1449 !PGOFuncName !1503 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1504

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
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !1505 !PGOFuncName !1506 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1457
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1507 !PGOFuncName !1508 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1295
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @defer_or_phi_translate_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1509 !PGOFuncName !1510 {
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1012
  %7 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %6, i64 0, i32 8
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %24, !prof !1511

11:                                               ; preds = %4
  %12 = load ptr, ptr @changed_blocks, align 8, !tbaa !866
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !1016
  tail call fastcc void @SET_BIT(ptr noundef %12, i32 noundef %14) #19
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1012
  %17 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %16, i64 0, i32 8
  %18 = load i8, ptr %17, align 8
  %19 = and i8 %18, -2
  store i8 %19, ptr %17, align 8
  %20 = load ptr, ptr %15, align 8, !tbaa !1012
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
define internal fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1512 !PGOFuncName !1513 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1514 !PGOFuncName !1515 {
  %3 = load i32, ptr %0, align 8, !tbaa !1516
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1516
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !866
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !1512 !PGOFuncName !1518 {
  %2 = load ptr, ptr %0, align 8, !tbaa !866
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1519

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !866
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #3 !prof !1520 !PGOFuncName !1521 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !1522

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !1434
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1520 !PGOFuncName !1523 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1428
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !1524

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 510, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !850
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !1525

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1526
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @phi_translate_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1527 !PGOFuncName !1528 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %7 = tail call fastcc ptr @phi_nodes(ptr noundef %3) #19
  %8 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %7) #19, !range !895
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10, !prof !1529

10:                                               ; preds = %4
  tail call fastcc void @bitmap_set_copy(ptr noundef %0, ptr noundef %1) #19
  br label %30

11:                                               ; preds = %4
  %12 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %1) #19
  store ptr %12, ptr %5, align 8, !tbaa !866
  %13 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %6) #19, !range !885
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15, !prof !1530

15:                                               ; preds = %11, %25
  %16 = phi i32 [ %26, %25 ], [ 0, %11 ]
  %17 = load ptr, ptr %6, align 8, !tbaa !866
  %18 = tail call fastcc ptr @phi_translate(ptr noundef %17, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20, !prof !1531

20:                                               ; preds = %15
  %21 = load i32, ptr %18, align 8, !tbaa !844
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24, !prof !1532

23:                                               ; preds = %20
  tail call fastcc void @bitmap_value_replace_in_set(ptr noundef %0, ptr noundef nonnull %18) #19
  br label %25

24:                                               ; preds = %20
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %0, ptr noundef nonnull %18) #19
  br label %25

25:                                               ; preds = %23, %24, %15
  %26 = add nuw nsw i32 %16, 1
  %27 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %12, i32 noundef %26, ptr noundef nonnull %6) #19, !range !885
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %15, !prof !1533, !llvm.loop !1534

29:                                               ; preds = %25, %11
  call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull %5) #19
  br label %30

30:                                               ; preds = %29, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !1535 !PGOFuncName !1536 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1537

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1516
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1538

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !866
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !866
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_set_and(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !1539 !PGOFuncName !1540 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %29, label %6, !prof !1466

6:                                                ; preds = %2
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  %8 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !873
  %10 = getelementptr inbounds %struct.bitmap_set, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !873
  tail call void @bitmap_and_into(ptr noundef %9, ptr noundef %11) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !871
  tail call void @bitmap_copy(ptr noundef %7, ptr noundef %12) #20
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %7, ptr noundef nonnull %4) #19
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !895
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %28, label %15, !prof !1541

15:                                               ; preds = %6, %25
  %16 = load i32, ptr %4, align 4, !tbaa !888
  %17 = tail call fastcc ptr @expression_for_id(i32 noundef %16) #19
  %18 = tail call fastcc i32 @get_expr_value_id(ptr noundef %17) #19
  %19 = load ptr, ptr %8, align 8, !tbaa !873
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %19, i32 noundef %18) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25, !prof !1542

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !871
  %24 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %23, i32 noundef %16) #20
  br label %25

25:                                               ; preds = %22, %15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !895
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %15, !prof !1543, !llvm.loop !1544

28:                                               ; preds = %25, %6
  tail call void @bitmap_obstack_free(ptr noundef %7) #20
  br label %29

29:                                               ; preds = %28, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_set_free(ptr nocapture noundef %0) unnamed_addr #0 !prof !1545 !PGOFuncName !1546 {
  %2 = load ptr, ptr %0, align 8, !tbaa !871
  tail call void @bitmap_obstack_free(ptr noundef %2) #20
  store ptr null, ptr %0, align 8, !tbaa !871
  %3 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !873
  tail call void @bitmap_obstack_free(ptr noundef %4) #20
  store ptr null, ptr %3, align 8, !tbaa !873
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @bitmap_set_subtract(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1547 !PGOFuncName !1548 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = tail call fastcc ptr @bitmap_set_new() #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %6 = load ptr, ptr %5, align 8, !tbaa !871
  %7 = load ptr, ptr %0, align 8, !tbaa !871
  %8 = load ptr, ptr %1, align 8, !tbaa !871
  %9 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %6, ptr noundef %7, ptr noundef %8) #20
  %10 = load ptr, ptr %5, align 8, !tbaa !871
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %10, ptr noundef nonnull %4) #19
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !895
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %23, label %13, !prof !1549

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bitmap_set, ptr %5, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %15
  %16 = load i32, ptr %4, align 4, !tbaa !888
  %17 = tail call fastcc ptr @expression_for_id(i32 noundef %16) #19
  %18 = tail call fastcc i32 @get_expr_value_id(ptr noundef %17) #19
  %19 = load ptr, ptr %14, align 8, !tbaa !873
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %19, i32 noundef %18) #20
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !895
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %15, !prof !1550, !llvm.loop !1551

23:                                               ; preds = %15, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1454 !PGOFuncName !1552 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %5 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %0) #19
  store ptr %5, ptr %3, align 8, !tbaa !866
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %6 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %4) #19, !range !885
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8, !prof !1553

8:                                                ; preds = %2, %14
  %9 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %10 = load ptr, ptr %4, align 8, !tbaa !866
  %11 = tail call fastcc zeroext i8 @valid_in_sets(ptr noundef %0, ptr noundef null, ptr noundef %10, ptr noundef %1) #19
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14, !prof !1554

13:                                               ; preds = %8
  tail call fastcc void @bitmap_remove_from_set(ptr noundef %0, ptr noundef %10) #19
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i32 %9, 1
  %16 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %5, i32 noundef %15, ptr noundef nonnull %4) #19, !range !885
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %8, !prof !1555, !llvm.loop !1556

18:                                               ; preds = %14, %2
  call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bitmap_set_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1452 !PGOFuncName !1557 {
  %3 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !873
  %5 = getelementptr inbounds %struct.bitmap_set, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !873
  %7 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %4, ptr noundef %6) #20
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 !prof !1558 !PGOFuncName !1559 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1141
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1560

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
  %15 = load i64, ptr %14, align 8, !tbaa !987
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !850
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !850
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !987
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !987
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1561 !PGOFuncName !1562 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !895
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !1563

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1457
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sorted_array_from_bitmap_set(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1564 !PGOFuncName !1565 {
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
  %8 = load ptr, ptr %7, align 8, !tbaa !873
  %9 = tail call i64 @bitmap_count_bits(ptr noundef %8) #20
  %10 = trunc i64 %9 to i32
  %11 = tail call fastcc ptr @VEC_pre_expr_heap_alloc(i32 noundef %10) #19
  store ptr %11, ptr %6, align 8, !tbaa !866
  %12 = load ptr, ptr %7, align 8, !tbaa !873
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %12, ptr noundef nonnull %2) #19
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #19, !range !895
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %37, label %15, !prof !1566

15:                                               ; preds = %1, %32
  %16 = load ptr, ptr @value_expressions, align 8
  %17 = load i32, ptr %2, align 4, !tbaa !888
  %18 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %16, i32 noundef %17) #19
  %19 = load ptr, ptr %18, align 8, !tbaa !871
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %19, ptr noundef nonnull %3) #19
  %20 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #19, !range !895
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %32, label %22, !prof !1567

22:                                               ; preds = %15, %29
  %23 = load ptr, ptr %0, align 8, !tbaa !871
  %24 = load i32, ptr %3, align 4, !tbaa !888
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %24) #20
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !1568

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @expression_for_id(i32 noundef %24) #19
  call fastcc void @VEC_pre_expr_heap_safe_push(ptr noundef nonnull %6, ptr noundef %28) #19
  br label %29

29:                                               ; preds = %22, %27
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %3) #19
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #19, !range !895
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %22, !prof !1569, !llvm.loop !1570

32:                                               ; preds = %29, %15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #19
  %33 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #19, !range !895
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %15, !prof !1571, !llvm.loop !1572

35:                                               ; preds = %32
  %36 = load ptr, ptr %6, align 8, !tbaa !866
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
define internal fastcc noundef i32 @VEC_pre_expr_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !1573 !PGOFuncName !1574 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1575

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !953
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1576

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !866
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !866
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_translate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1577 !PGOFuncName !1578 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %27, label %7, !prof !1579

7:                                                ; preds = %5
  %8 = load i32, ptr %0, align 8, !tbaa !844
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %27, label %10, !prof !1580

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @get_expr_value_id(ptr noundef nonnull %0) #19
  %12 = tail call zeroext i8 @value_id_constant_p(i32 noundef %11) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %27, !prof !1581

14:                                               ; preds = %10
  %15 = load i32, ptr %0, align 8, !tbaa !844
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17, !prof !1582

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @phi_trans_lookup(ptr noundef nonnull %0, ptr noundef %3) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %27, !prof !1583

20:                                               ; preds = %17, %14
  %21 = tail call fastcc ptr @phi_translate_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23, !prof !1584

23:                                               ; preds = %20
  %24 = load i32, ptr %0, align 8, !tbaa !844
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !1585

26:                                               ; preds = %23
  tail call fastcc void @phi_trans_add(ptr noundef nonnull %0, ptr noundef nonnull %21, ptr noundef %3) #19
  br label %27

27:                                               ; preds = %20, %23, %26, %17, %10, %7, %5
  %28 = phi ptr [ null, %5 ], [ %0, %7 ], [ %0, %10 ], [ %18, %17 ], [ %21, %26 ], [ %21, %23 ], [ null, %20 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_value_replace_in_set(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1586 !PGOFuncName !1587 {
  %3 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  %4 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %3) #19
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !1588

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
define internal fastcc void @VEC_pre_expr_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !1589 !PGOFuncName !1590 {
  %2 = load ptr, ptr %0, align 8, !tbaa !866
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1591

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !866
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_pre_expr_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1564 !PGOFuncName !1592 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_trans_lookup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1593 !PGOFuncName !1594 {
  %3 = alloca %struct.expr_pred_trans_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  store ptr %0, ptr %3, align 8, !tbaa !1310
  %4 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !1308
  %5 = tail call i32 @pre_expr_hash(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !1016
  %8 = tail call i32 @iterative_hash_hashval_t(i32 noundef %5, i32 noundef %7) #20
  %9 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %3, i64 0, i32 3
  store i32 %8, ptr %9, align 8, !tbaa !1304
  %10 = load ptr, ptr @phi_translate_table, align 8, !tbaa !866
  %11 = call ptr @htab_find_slot_with_hash(ptr noundef %10, ptr noundef nonnull %3, i32 noundef %8, i32 noundef 0) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !1583

13:                                               ; preds = %2
  %14 = load ptr, ptr %11, align 8, !tbaa !866
  %15 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1595
  br label %17

17:                                               ; preds = %2, %13
  %18 = phi ptr [ %16, %13 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_translate_1(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1596 !PGOFuncName !1597 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.vn_nary_op_s, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct.vn_reference_op_struct, align 8
  %14 = load i32, ptr %0, align 8, !tbaa !844
  switch i32 %14, label %376 [
    i32 1, label %15
    i32 2, label %111
    i32 0, label %337
  ], !prof !1598

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %16 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !850
  store ptr %17, ptr %6, align 8, !tbaa !866
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
  br i1 %28, label %109, label %29, !prof !1599

29:                                               ; preds = %15
  %30 = zext nneg i32 %27 to i64
  br label %31

31:                                               ; preds = %29, %60
  %32 = phi i64 [ 0, %29 ], [ %62, %60 ]
  %33 = phi i8 [ 0, %29 ], [ %61, %60 ]
  %34 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 5, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !866
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %60, !prof !1600

39:                                               ; preds = %31
  %40 = tail call ptr @VN_INFO(ptr noundef nonnull %35) #20
  %41 = getelementptr inbounds %struct.vn_ssa_aux, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !852
  %43 = tail call fastcc ptr @find_leader_in_sets(i32 noundef %42, ptr noundef %1, ptr noundef %2) #19
  %44 = tail call fastcc ptr @phi_translate(ptr noundef %43, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  %45 = icmp eq ptr %44, null
  %46 = icmp eq ptr %44, %43
  %47 = or i1 %45, %46
  br i1 %47, label %52, label %48, !prof !1601

48:                                               ; preds = %39
  %49 = tail call fastcc ptr @get_representative_for(ptr noundef nonnull %44) #19
  %50 = icmp eq ptr %49, null
  br i1 %50, label %109, label %51, !prof !1602

51:                                               ; preds = %48
  store ptr %49, ptr %34, align 8, !tbaa !866
  br label %53

52:                                               ; preds = %39
  br i1 %45, label %109, label %53, !prof !1603

53:                                               ; preds = %52, %51
  %54 = phi ptr [ %35, %52 ], [ %49, %51 ]
  %55 = getelementptr inbounds %struct.vn_nary_op_s, ptr %17, i64 0, i32 5, i64 %32
  %56 = load ptr, ptr %55, align 8, !tbaa !866
  %57 = icmp ne ptr %54, %56
  %58 = zext i1 %57 to i8
  %59 = or i8 %33, %58
  br label %60

60:                                               ; preds = %53, %31
  %61 = phi i8 [ %33, %31 ], [ %59, %53 ]
  %62 = add nuw nsw i64 %32, 1
  %63 = icmp eq i64 %62, %30
  br i1 %63, label %64, label %31, !prof !1604, !llvm.loop !1605

64:                                               ; preds = %60
  %65 = icmp eq i8 %61, 0
  br i1 %65, label %109, label %66, !prof !1606

66:                                               ; preds = %64
  %67 = and i32 %26, 65535
  %68 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !1607
  %70 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !866
  %72 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 5, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !866
  %74 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 5, i64 2
  %75 = load ptr, ptr %74, align 8, !tbaa !866
  %76 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 5, i64 3
  %77 = load ptr, ptr %76, align 8, !tbaa !866
  %78 = call ptr @vn_nary_op_lookup_pieces(i32 noundef %27, i32 noundef %67, ptr noundef %69, ptr noundef %71, ptr noundef %73, ptr noundef %75, ptr noundef %77, ptr noundef nonnull %6) #20
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80, !prof !1608

80:                                               ; preds = %66
  %81 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %78) #20
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83, !prof !1609

83:                                               ; preds = %80
  %84 = call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %78) #19
  br label %109

85:                                               ; preds = %80, %66
  %86 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !866
  %87 = call ptr @pool_alloc(ptr noundef %86) #20
  store i32 1, ptr %87, align 8, !tbaa !844
  %88 = getelementptr inbounds %struct.pre_expr_d, ptr %87, i64 0, i32 1
  store i32 0, ptr %88, align 4, !tbaa !913
  %89 = load ptr, ptr %6, align 8, !tbaa !866
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91, !prof !1610

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.pre_expr_d, ptr %87, i64 0, i32 2
  store ptr %89, ptr %92, align 8, !tbaa !850
  %93 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %87) #19
  %94 = icmp eq ptr %93, %87
  br i1 %94, label %95, label %109, !prof !1611

95:                                               ; preds = %91
  %96 = load ptr, ptr %6, align 8, !tbaa !866
  %97 = load i32, ptr %96, align 8, !tbaa !855
  br label %106

98:                                               ; preds = %85
  %99 = call i32 @get_next_value_id() #20
  %100 = call i32 @get_max_value_id() #20
  %101 = add i32 %100, 1
  call fastcc void @VEC_bitmap_set_t_heap_safe_grow_cleared(i32 noundef %101) #19
  %102 = call ptr @vn_nary_op_insert_pieces(i32 noundef %27, i32 noundef %67, ptr noundef %69, ptr noundef %71, ptr noundef %73, ptr noundef %75, ptr noundef %77, ptr noundef %78, i32 noundef %99) #20
  store ptr %102, ptr %6, align 8, !tbaa !866
  %103 = getelementptr inbounds %struct.pre_expr_d, ptr %87, i64 0, i32 2
  store ptr %102, ptr %103, align 8, !tbaa !850
  %104 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %87) #19
  %105 = icmp eq ptr %104, %87
  br i1 %105, label %106, label %109, !prof !1612

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
  %113 = load ptr, ptr %112, align 8, !tbaa !850
  %114 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !884
  %116 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !893
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  store ptr null, ptr %8, align 8, !tbaa !866
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #21
  store i8 1, ptr %9, align 1, !tbaa !850
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  store i32 0, ptr %10, align 4, !tbaa !888
  %118 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %115, i32 noundef 0, ptr noundef nonnull %11) #19, !range !885
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %252, label %120, !prof !1613

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %13, i64 0, i32 1
  %122 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %13, i64 0, i32 2
  %123 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %13, i64 0, i32 3
  %124 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %13, i64 0, i32 4
  br label %125

125:                                              ; preds = %120, %246
  %126 = phi i8 [ 0, %120 ], [ %211, %246 ]
  %127 = phi i32 [ 0, %120 ], [ %248, %246 ]
  %128 = load ptr, ptr %11, align 8, !tbaa !866
  %129 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %128, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !889
  %131 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %128, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !890
  %133 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %128, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !891
  %135 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %128, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !1614
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %128, i64 40, i1 false), !tbaa.struct !1615
  %137 = icmp eq ptr %130, null
  br i1 %137, label %155, label %138, !prof !1616

138:                                              ; preds = %125
  %139 = load i64, ptr %130, align 8
  %140 = and i64 %139, 65535
  %141 = icmp eq i64 %140, 141
  br i1 %141, label %142, label %155, !prof !1617

142:                                              ; preds = %138
  %143 = call ptr @VN_INFO(ptr noundef nonnull %130) #20
  %144 = getelementptr inbounds %struct.vn_ssa_aux, ptr %143, i64 0, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !852
  %146 = call fastcc ptr @find_leader_in_sets(i32 noundef %145, ptr noundef %1, ptr noundef %2) #19
  %147 = call fastcc ptr @phi_translate(ptr noundef %146, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  %148 = icmp eq ptr %147, null
  %149 = icmp eq ptr %147, %146
  %150 = or i1 %148, %149
  br i1 %150, label %154, label %151, !prof !1618

151:                                              ; preds = %142
  %152 = call fastcc ptr @get_representative_for(ptr noundef nonnull %147) #19
  %153 = icmp eq ptr %152, null
  br i1 %153, label %244, label %155

154:                                              ; preds = %142
  br i1 %148, label %244, label %155, !prof !1619

155:                                              ; preds = %154, %151, %138, %125
  %156 = phi ptr [ %130, %138 ], [ null, %125 ], [ %152, %151 ], [ %130, %154 ]
  %157 = icmp ne ptr %156, %130
  %158 = zext i1 %157 to i8
  %159 = or i8 %126, %158
  %160 = icmp eq ptr %132, null
  br i1 %160, label %181, label %161, !prof !1620

161:                                              ; preds = %155
  %162 = load i64, ptr %132, align 8
  %163 = and i64 %162, 65535
  %164 = icmp eq i64 %163, 141
  br i1 %164, label %165, label %178, !prof !1621

165:                                              ; preds = %161
  %166 = call ptr @VN_INFO(ptr noundef nonnull %132) #20
  %167 = getelementptr inbounds %struct.vn_ssa_aux, ptr %166, i64 0, i32 2
  %168 = load i32, ptr %167, align 8, !tbaa !852
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
  br i1 %180, label %244, label %181, !prof !1621

181:                                              ; preds = %177, %174, %155, %178
  %182 = phi ptr [ %132, %178 ], [ null, %155 ], [ %175, %174 ], [ %132, %177 ]
  %183 = icmp ne ptr %182, %132
  %184 = zext i1 %183 to i8
  %185 = or i8 %159, %184
  %186 = icmp eq ptr %134, null
  br i1 %186, label %207, label %187, !prof !1620

187:                                              ; preds = %181
  %188 = load i64, ptr %134, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 141
  br i1 %190, label %191, label %204, !prof !1621

191:                                              ; preds = %187
  %192 = call ptr @VN_INFO(ptr noundef nonnull %134) #20
  %193 = getelementptr inbounds %struct.vn_ssa_aux, ptr %192, i64 0, i32 2
  %194 = load i32, ptr %193, align 8, !tbaa !852
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
  br i1 %206, label %244, label %207, !prof !1621

207:                                              ; preds = %203, %200, %181, %204
  %208 = phi ptr [ %134, %204 ], [ null, %181 ], [ %201, %200 ], [ %134, %203 ]
  %209 = icmp ne ptr %208, %134
  %210 = zext i1 %209 to i8
  %211 = or i8 %185, %210
  %212 = load ptr, ptr %8, align 8
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %216, !prof !1622

214:                                              ; preds = %207
  %215 = call fastcc ptr @VEC_vn_reference_op_s_heap_copy(ptr noundef %115) #19
  store ptr %215, ptr %8, align 8, !tbaa !866
  br label %216

216:                                              ; preds = %214, %207
  %217 = phi ptr [ %215, %214 ], [ %212, %207 ]
  %218 = load i32, ptr %13, align 8, !tbaa !886
  %219 = icmp eq i32 %218, 141
  br i1 %219, label %220, label %226, !prof !1623

220:                                              ; preds = %216
  %221 = load i64, ptr %156, align 8
  %222 = trunc i64 %221 to i32
  %223 = and i32 %222, 65535
  %224 = icmp eq i32 %223, 141
  br i1 %224, label %226, label %225, !prof !1624

225:                                              ; preds = %220
  store i32 %223, ptr %13, align 8, !tbaa !886
  br label %226

226:                                              ; preds = %225, %220, %216
  store ptr %136, ptr %121, align 8, !tbaa !1614
  store ptr %156, ptr %122, align 8, !tbaa !889
  store ptr %182, ptr %123, align 8, !tbaa !890
  store ptr %208, ptr %124, align 8, !tbaa !891
  %227 = load i32, ptr %10, align 4, !tbaa !888
  call fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef %217, i32 noundef %227, ptr noundef nonnull %13) #19
  %228 = load i32, ptr %10, align 4, !tbaa !888
  %229 = icmp ne i32 %228, 0
  %230 = icmp ne ptr %156, null
  %231 = and i1 %230, %229
  br i1 %231, label %232, label %246, !prof !1625

232:                                              ; preds = %226
  %233 = load i64, ptr %156, align 8
  %234 = and i64 %233, 65535
  %235 = icmp eq i64 %234, 121
  br i1 %235, label %236, label %246, !prof !1626

236:                                              ; preds = %232
  %237 = load ptr, ptr %8, align 8
  %238 = add i32 %228, -1
  %239 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %237, i32 noundef %238) #19
  %240 = load i32, ptr %239, align 8, !tbaa !886
  %241 = icmp eq i32 %240, 47
  br i1 %241, label %242, label %246

242:                                              ; preds = %236
  call void @vn_reference_fold_indirect(ptr noundef nonnull %8, ptr noundef nonnull %10) #20
  %243 = load i32, ptr %10, align 4, !tbaa !888
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
  store i32 %249, ptr %10, align 4, !tbaa !888
  %250 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %115, i32 noundef %248, ptr noundef nonnull %11) #19, !range !885
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %125, !prof !1627, !llvm.loop !1628

252:                                              ; preds = %246, %111, %244
  %253 = phi i32 [ %127, %244 ], [ 0, %111 ], [ %248, %246 ]
  %254 = phi i8 [ %245, %244 ], [ 0, %111 ], [ %211, %246 ]
  %255 = call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %115) #19
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %261, label %257, !prof !1629

257:                                              ; preds = %252
  %258 = load ptr, ptr %8, align 8, !tbaa !866
  %259 = icmp eq ptr %258, null
  br i1 %259, label %335, label %260, !prof !1630

260:                                              ; preds = %257
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %8) #19
  br label %335

261:                                              ; preds = %252
  %262 = icmp eq ptr %117, null
  br i1 %262, label %272, label %263, !prof !1631

263:                                              ; preds = %261
  %264 = load ptr, ptr %8, align 8, !tbaa !866
  %265 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 3
  %266 = load i32, ptr %265, align 8, !tbaa !1632
  %267 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 4
  %268 = load ptr, ptr %267, align 8, !tbaa !1633
  %269 = call fastcc ptr @translate_vuse_through_block(ptr noundef %264, i32 noundef %266, ptr noundef %268, ptr noundef nonnull %117, ptr noundef %4, ptr noundef %3, ptr noundef nonnull %9) #19
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %272, !prof !1631

271:                                              ; preds = %263
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %8) #19
  br label %335

272:                                              ; preds = %263, %261
  %273 = phi ptr [ %269, %263 ], [ null, %261 ]
  %274 = icmp eq i8 %254, 0
  %275 = icmp eq ptr %273, %117
  %276 = select i1 %274, i1 %275, i1 false
  br i1 %276, label %333, label %277, !prof !1634

277:                                              ; preds = %272
  %278 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 3
  %279 = load i32, ptr %278, align 8, !tbaa !1632
  %280 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 4
  %281 = load ptr, ptr %280, align 8, !tbaa !1633
  %282 = load ptr, ptr %8, align 8, !tbaa !866
  %283 = call ptr @vn_reference_lookup_pieces(ptr noundef %273, i32 noundef %279, ptr noundef %281, ptr noundef %282, ptr noundef nonnull %12, i8 noundef zeroext 1) #20
  %284 = load ptr, ptr %12, align 8, !tbaa !866
  %285 = icmp eq ptr %284, null
  br i1 %285, label %287, label %286, !prof !1635

286:                                              ; preds = %277
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %8) #19
  br label %287

287:                                              ; preds = %286, %277
  %288 = icmp eq ptr %283, null
  br i1 %288, label %298, label %289, !prof !1636

289:                                              ; preds = %287
  %290 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %283) #20
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %298, label %292, !prof !1637

292:                                              ; preds = %289
  %293 = load ptr, ptr %8, align 8, !tbaa !866
  %294 = icmp eq ptr %293, null
  br i1 %294, label %296, label %295

295:                                              ; preds = %292
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1722, ptr noundef nonnull @.str.1) #20
  br label %296

296:                                              ; preds = %292, %295
  %297 = call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %283) #19
  br label %335

298:                                              ; preds = %289, %287
  %299 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !866
  %300 = call ptr @pool_alloc(ptr noundef %299) #20
  store i32 2, ptr %300, align 8, !tbaa !844
  %301 = getelementptr inbounds %struct.pre_expr_d, ptr %300, i64 0, i32 1
  store i32 0, ptr %301, align 4, !tbaa !913
  %302 = load ptr, ptr %12, align 8, !tbaa !866
  %303 = icmp eq ptr %302, null
  br i1 %303, label %311, label %304, !prof !1635

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.pre_expr_d, ptr %300, i64 0, i32 2
  store ptr %302, ptr %305, align 8, !tbaa !850
  %306 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %300) #19
  %307 = icmp eq ptr %306, %300
  br i1 %307, label %308, label %335, !prof !1638

308:                                              ; preds = %304
  %309 = load ptr, ptr %12, align 8, !tbaa !866
  %310 = load i32, ptr %309, align 8, !tbaa !857
  br label %330

311:                                              ; preds = %298
  %312 = load i8, ptr %9, align 1
  %313 = icmp ne i8 %312, 0
  %314 = select i1 %274, i1 %313, i1 false
  br i1 %314, label %319, label %315, !prof !1639

315:                                              ; preds = %311
  %316 = call i32 @get_next_value_id() #20
  %317 = call i32 @get_max_value_id() #20
  %318 = add i32 %317, 1
  call fastcc void @VEC_bitmap_set_t_heap_safe_grow_cleared(i32 noundef %318) #19
  br label %321

319:                                              ; preds = %311
  %320 = load i32, ptr %113, align 8, !tbaa !857
  br label %321

321:                                              ; preds = %319, %315
  %322 = phi i32 [ %320, %319 ], [ %316, %315 ]
  %323 = load i32, ptr %278, align 8, !tbaa !1632
  %324 = load ptr, ptr %280, align 8, !tbaa !1633
  %325 = load ptr, ptr %8, align 8, !tbaa !866
  %326 = call ptr @vn_reference_insert_pieces(ptr noundef %273, i32 noundef %323, ptr noundef %324, ptr noundef %325, ptr noundef %283, i32 noundef %322) #20
  store ptr %326, ptr %12, align 8, !tbaa !866
  store ptr null, ptr %8, align 8, !tbaa !866
  %327 = getelementptr inbounds %struct.pre_expr_d, ptr %300, i64 0, i32 2
  store ptr %326, ptr %327, align 8, !tbaa !850
  %328 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %300) #19
  %329 = icmp eq ptr %328, %300
  br i1 %329, label %330, label %335, !prof !1640

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
  %339 = load ptr, ptr %338, align 8, !tbaa !850
  %340 = getelementptr inbounds %struct.tree_ssa_name, ptr %339, i64 0, i32 2
  %341 = load ptr, ptr %340, align 8, !tbaa !850
  %342 = tail call fastcc i32 @gimple_code(ptr noundef %341) #19, !range !1035
  %343 = icmp eq i32 %342, 16
  br i1 %343, label %344, label %377, !prof !1641

344:                                              ; preds = %337
  %345 = tail call fastcc ptr @gimple_bb(ptr noundef %341) #19
  %346 = icmp eq ptr %345, %4
  br i1 %346, label %347, label %377, !prof !1642

347:                                              ; preds = %344
  %348 = tail call ptr @find_edge(ptr noundef %3, ptr noundef %4) #20
  %349 = icmp eq ptr %348, null
  br i1 %349, label %377, label %350, !prof !1643

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.edge_def, ptr %348, i64 0, i32 6
  %352 = load i32, ptr %351, align 4, !tbaa !1644
  %353 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %341, i32 noundef %352) #19
  %354 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %353) #19
  %355 = load i64, ptr %354, align 8
  %356 = and i64 %355, 65535
  %357 = icmp eq i64 %356, 141
  br i1 %357, label %358, label %361, !prof !1645

358:                                              ; preds = %350
  %359 = tail call ptr @VN_INFO(ptr noundef nonnull %354) #20
  %360 = load ptr, ptr %359, align 8, !tbaa !1162
  br label %361

361:                                              ; preds = %358, %350
  %362 = phi ptr [ %360, %358 ], [ %354, %350 ]
  %363 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %362) #20
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %367, label %365, !prof !1645

365:                                              ; preds = %361
  %366 = tail call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef %362) #19
  br label %377

367:                                              ; preds = %361
  %368 = load i64, ptr %362, align 8
  %369 = and i64 %368, 65535
  %370 = icmp eq i64 %369, 141
  br i1 %370, label %371, label %374, !prof !1646

371:                                              ; preds = %367
  %372 = tail call zeroext i8 @ssa_undefined_value_p(ptr noundef nonnull %362) #20
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %374, label %377, !prof !1646

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
define internal fastcc void @phi_trans_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1647 !PGOFuncName !1648 {
  %4 = tail call ptr @xmalloc(i64 noundef 32) #20
  store ptr %0, ptr %4, align 8, !tbaa !1310
  %5 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %4, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !1308
  %6 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %4, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !1595
  %7 = tail call i32 @pre_expr_hash(ptr noundef %0) #19
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !1016
  %10 = tail call i32 @iterative_hash_hashval_t(i32 noundef %7, i32 noundef %9) #20
  %11 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %4, i64 0, i32 3
  store i32 %10, ptr %11, align 8, !tbaa !1304
  %12 = load ptr, ptr @phi_translate_table, align 8, !tbaa !866
  %13 = tail call ptr @htab_find_slot_with_hash(ptr noundef %12, ptr noundef nonnull %4, i32 noundef %10, i32 noundef 1) #20
  %14 = load ptr, ptr %13, align 8, !tbaa !866
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !1649

16:                                               ; preds = %3
  tail call void @free(ptr noundef nonnull %14) #19
  br label %17

17:                                               ; preds = %16, %3
  store ptr %4, ptr %13, align 8, !tbaa !866
  ret void
}

; Function Attrs: optsize
declare i32 @iterative_hash_hashval_t(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_leader_in_sets(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1650 !PGOFuncName !1651 {
  %4 = tail call fastcc ptr @bitmap_find_leader(ptr noundef %1, i32 noundef %0, ptr noundef null) #19
  %5 = icmp eq ptr %4, null
  %6 = icmp ne ptr %2, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %10, !prof !1652

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @bitmap_find_leader(ptr noundef nonnull %2, i32 noundef %0, ptr noundef null) #19
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %4, %3 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_representative_for(ptr noundef %0) unnamed_addr #0 !prof !1653 !PGOFuncName !1654 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = tail call fastcc i32 @get_expr_value_id(ptr noundef %0) #19
  %5 = load i32, ptr %0, align 8, !tbaa !844
  switch i32 %5, label %30 [
    i32 0, label %6
    i32 3, label %9
    i32 1, label %12
    i32 2, label %12
  ], !prof !1655

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !850
  br label %74

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !850
  br label %74

12:                                               ; preds = %1, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %13 = load ptr, ptr @value_expressions, align 8
  %14 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %13, i32 noundef %4) #19
  %15 = load ptr, ptr %14, align 8, !tbaa !871
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %15, ptr noundef nonnull %2) #19
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !895
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19, !prof !1656

18:                                               ; preds = %24, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %30

19:                                               ; preds = %12, %24
  %20 = load i32, ptr %2, align 4, !tbaa !888
  %21 = tail call fastcc ptr @expression_for_id(i32 noundef %20) #19
  %22 = load i32, ptr %21, align 8, !tbaa !844
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !1657

24:                                               ; preds = %19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !895
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %18, label %19, !prof !1658, !llvm.loop !1659

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.pre_expr_d, ptr %21, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !850
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %74

30:                                               ; preds = %18, %1
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33, !prof !1660

33:                                               ; preds = %30
  %34 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 54, i64 1, ptr nonnull %31)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !866
  tail call fastcc void @print_pre_expr(ptr noundef %35, ptr noundef nonnull %0) #19
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %37 = tail call i32 @fputc(i32 10, ptr %36)
  br label %38

38:                                               ; preds = %33, %30
  %39 = tail call fastcc ptr @get_expr_type(ptr noundef nonnull %0) #19
  %40 = load ptr, ptr @pretemp, align 8, !tbaa !866
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42, !prof !1661

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !850
  %45 = icmp eq ptr %39, %44
  br i1 %45, label %49, label %46, !prof !1662

46:                                               ; preds = %42, %38
  %47 = tail call ptr @create_tmp_var(ptr noundef %39, ptr noundef nonnull @.str.42) #20
  store ptr %47, ptr @pretemp, align 8, !tbaa !866
  tail call fastcc void @get_var_ann(ptr noundef %47) #19
  %48 = load ptr, ptr @pretemp, align 8, !tbaa !866
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi ptr [ %48, %46 ], [ %40, %42 ]
  %51 = tail call ptr @gimple_build_nop() #20
  %52 = tail call fastcc ptr @make_ssa_name(ptr noundef %50, ptr noundef %51) #19
  %53 = tail call ptr @VN_INFO_GET(ptr noundef %52) #20
  %54 = getelementptr inbounds %struct.vn_ssa_aux, ptr %53, i64 0, i32 2
  store i32 %4, ptr %54, align 8, !tbaa !852
  %55 = load i32, ptr %0, align 8, !tbaa !844
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %60, !prof !1663

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !850
  br label %60

60:                                               ; preds = %49, %57
  %61 = phi ptr [ %59, %57 ], [ %52, %49 ]
  %62 = tail call ptr @VN_INFO(ptr noundef %52) #20
  store ptr %61, ptr %62, align 8, !tbaa !1162
  %63 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %52) #19
  tail call void @add_to_value(i32 noundef %4, ptr noundef %63) #19
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66, !prof !1660

66:                                               ; preds = %60
  %67 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 32, i64 1, ptr nonnull %64)
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !866
  tail call void @print_generic_expr(ptr noundef %68, ptr noundef %52, i32 noundef 0) #20
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %70 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 16, i64 1, ptr %69)
  %71 = load ptr, ptr @dump_file, align 8, !tbaa !866
  tail call fastcc void @print_pre_expr(ptr noundef %71, ptr noundef nonnull %0) #19
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %73 = tail call i32 @fputc(i32 10, ptr %72)
  br label %74

74:                                               ; preds = %27, %60, %66, %9, %6
  %75 = phi ptr [ %29, %27 ], [ %11, %9 ], [ %8, %6 ], [ %52, %66 ], [ %52, %60 ]
  ret ptr %75
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef %0) unnamed_addr #0 !prof !1350 !PGOFuncName !1664 {
  %2 = alloca %struct.pre_expr_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  store i32 3, ptr %2, align 8, !tbaa !844
  %3 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !850
  %4 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %2) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !1665

6:                                                ; preds = %1
  %7 = call fastcc ptr @expression_for_id(i32 noundef %4) #19
  br label %14

8:                                                ; preds = %1
  %9 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !866
  %10 = call ptr @pool_alloc(ptr noundef %9) #20
  store i32 3, ptr %10, align 8, !tbaa !844
  %11 = getelementptr inbounds %struct.pre_expr_d, ptr %10, i64 0, i32 2
  store ptr %0, ptr %11, align 8, !tbaa !850
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
define internal fastcc ptr @fully_constant_expression(ptr noundef readonly %0) unnamed_addr #0 !prof !1666 !PGOFuncName !1667 {
  %2 = load i32, ptr %0, align 8, !tbaa !844
  switch i32 %2, label %178 [
    i32 2, label %82
    i32 1, label %3
  ], !prof !1668

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !850
  %6 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 65535
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !888
  switch i32 %11, label %178 [
    i32 10, label %12
    i32 7, label %14
    i32 5, label %14
    i32 4, label %54
    i32 6, label %56
  ], !prof !1669

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
  %16 = load ptr, ptr %15, align 8, !tbaa !866
  %17 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 5, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !866
  %19 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %16) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %30, !prof !1670

21:                                               ; preds = %14
  %22 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %16) #19
  %23 = tail call fastcc i32 @get_expr_value_id(ptr noundef %22) #19
  %24 = tail call fastcc ptr @get_constant_for_value_id(i32 noundef %23) #19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26, !prof !1671

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !850
  %29 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %28, ptr noundef nonnull %24) #20
  br label %30

30:                                               ; preds = %21, %26, %14
  %31 = phi ptr [ %16, %14 ], [ %29, %26 ], [ %16, %21 ]
  %32 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %18) #20
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %43, !prof !1672

34:                                               ; preds = %30
  %35 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %18) #19
  %36 = tail call fastcc i32 @get_expr_value_id(ptr noundef %35) #19
  %37 = tail call fastcc ptr @get_constant_for_value_id(i32 noundef %36) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39, !prof !1673

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !850
  %42 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %41, ptr noundef nonnull %37) #20
  br label %43

43:                                               ; preds = %34, %39, %30
  %44 = phi ptr [ %18, %30 ], [ %42, %39 ], [ %18, %34 ]
  %45 = load i32, ptr %6, align 4
  %46 = and i32 %45, 65535
  %47 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !1607
  %49 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %46, ptr noundef %48, ptr noundef %31, ptr noundef %44) #20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %178, label %51, !prof !1674

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
  %58 = load ptr, ptr %57, align 8, !tbaa !866
  %59 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %58) #20
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %65, !prof !1675

61:                                               ; preds = %56
  %62 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %58) #19
  %63 = tail call fastcc i32 @get_expr_value_id(ptr noundef %62) #19
  %64 = tail call fastcc ptr @get_constant_for_value_id(i32 noundef %63) #19
  br label %65

65:                                               ; preds = %56, %61
  %66 = phi ptr [ %64, %61 ], [ %58, %56 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %178, label %68, !prof !1675

68:                                               ; preds = %65
  %69 = load ptr, ptr %57, align 8, !tbaa !866
  %70 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !850
  %72 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %71, ptr noundef nonnull %66) #20
  %73 = load i32, ptr %6, align 4
  %74 = and i32 %73, 65535
  %75 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !1607
  %77 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef %74, ptr noundef %76, ptr noundef %72) #20
  %78 = icmp eq ptr %77, null
  br i1 %78, label %178, label %79, !prof !1065

79:                                               ; preds = %68
  %80 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %77) #20
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %178, label %175

82:                                               ; preds = %1
  %83 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !850
  %85 = getelementptr inbounds %struct.vn_reference_s, ptr %84, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !884
  %87 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %86, i32 noundef 0) #19
  %88 = load i32, ptr %87, align 8, !tbaa !886
  %89 = icmp eq i32 %88, 59
  br i1 %89, label %90, label %178, !prof !1676

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %87, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !889
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 121
  br i1 %95, label %96, label %178

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.tree_exp, ptr %92, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !850
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
  %118 = load i32, ptr %112, align 8, !tbaa !886
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !888
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %132, label %123

123:                                              ; preds = %116
  %124 = icmp eq i32 %118, 121
  br i1 %124, label %125, label %130

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %112, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !889
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
  %136 = load i32, ptr %117, align 8, !tbaa !886
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !888
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %150, label %141

141:                                              ; preds = %134
  %142 = icmp eq i32 %136, 121
  br i1 %142, label %143, label %149

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %117, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !889
  %146 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %145) #20
  %147 = icmp eq i8 %146, 0
  %148 = and i1 %147, %135
  br i1 %148, label %178, label %150

149:                                              ; preds = %141
  br i1 %135, label %178, label %150

150:                                              ; preds = %143, %149, %134
  %151 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %117, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !889
  br label %153

153:                                              ; preds = %132, %150
  %154 = phi i32 [ 2, %150 ], [ 1, %132 ]
  %155 = phi ptr [ %152, %150 ], [ null, %132 ]
  %156 = load ptr, ptr %91, align 8, !tbaa !889
  %157 = getelementptr inbounds %struct.tree_exp, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !850
  %159 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %112, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !889
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
  %169 = load ptr, ptr %168, align 8, !tbaa !850
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
define internal fastcc noundef ptr @VEC_vn_reference_op_s_heap_copy(ptr noundef readonly %0) unnamed_addr #0 !prof !972 !PGOFuncName !1677 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !974

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !969
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !1065

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %4, i64 noundef 8, i64 noundef 40) #20
  store i32 %4, ptr %8, align 8, !tbaa !1678
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
define internal fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef writeonly %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #4 !prof !1680 !PGOFuncName !1681 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %8, label %5, !prof !1682

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !1615
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_vn_reference_op_s_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #7 !prof !1683 !PGOFuncName !1684 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @vn_reference_fold_indirect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @translate_vuse_through_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !prof !1685 !PGOFuncName !1686 {
  %8 = alloca %struct.ao_ref_s, align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !850
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #21
  store i8 1, ptr %6, align 1, !tbaa !850
  %12 = tail call fastcc ptr @gimple_bb(ptr noundef %11) #19
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %55, !prof !1687

14:                                               ; preds = %7
  %15 = call zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef nonnull %8, i32 noundef %1, ptr noundef %2, ptr noundef %0) #20
  %16 = call fastcc i32 @gimple_code(ptr noundef %11) #19, !range !1035
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %33, label %18, !prof !1688

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
  %27 = load ptr, ptr %26, align 8, !tbaa !850
  %28 = call fastcc ptr @gimple_bb(ptr noundef %27) #19
  %29 = icmp eq ptr %28, %4
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  %31 = call fastcc i32 @gimple_code(ptr noundef %27) #19, !range !1035
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %33, label %20, !llvm.loop !1689

33:                                               ; preds = %30, %14
  %34 = phi ptr [ %11, %14 ], [ %27, %30 ]
  %35 = call ptr @find_edge(ptr noundef %5, ptr noundef %4) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %55, label %37, !prof !1690

37:                                               ; preds = %33
  %38 = icmp eq i8 %15, 0
  br i1 %38, label %46, label %39, !prof !1691

39:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  store ptr null, ptr %9, align 8, !tbaa !866
  %40 = call ptr @get_continuation_for_phi(ptr noundef %34, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  %41 = load ptr, ptr %9, align 8, !tbaa !866
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43, !prof !1692

43:                                               ; preds = %39
  call void @bitmap_obstack_free(ptr noundef nonnull %41) #20
  br label %44

44:                                               ; preds = %43, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  %45 = icmp eq ptr %40, null
  br i1 %45, label %46, label %50, !prof !1688

46:                                               ; preds = %37, %44
  store i8 0, ptr %6, align 1, !tbaa !850
  %47 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 6
  %48 = load i32, ptr %47, align 4, !tbaa !1644
  %49 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %34, i32 noundef %48) #19
  br label %50

50:                                               ; preds = %46, %44
  %51 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !1644
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
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1693 !PGOFuncName !1694 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !850
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bitmap_find_leader(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #0 !prof !1695 !PGOFuncName !1696 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bitmap_iterator, align 8
  %8 = tail call zeroext i8 @value_id_constant_p(i32 noundef %1) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %26, label %10, !prof !1697

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %11 = load ptr, ptr @value_expressions, align 8
  %12 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %11, i32 noundef %1) #19
  %13 = load ptr, ptr %12, align 8, !tbaa !871
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %13, ptr noundef nonnull %4) #19
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !895
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17, !prof !1117

16:                                               ; preds = %22, %10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  br label %26

17:                                               ; preds = %10, %22
  %18 = load i32, ptr %4, align 4, !tbaa !888
  %19 = tail call fastcc ptr @expression_for_id(i32 noundef %18) #19
  %20 = load i32, ptr %19, align 8, !tbaa !844
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  %23 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !895
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %16, label %17, !prof !1698, !llvm.loop !1699

25:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  br label %61

26:                                               ; preds = %16, %3
  %27 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %1) #19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %61, label %29, !prof !1700

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  %30 = load ptr, ptr @value_expressions, align 8
  %31 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %30, i32 noundef %1) #19
  %32 = load ptr, ptr %31, align 8, !tbaa !871
  %33 = load ptr, ptr %0, align 8, !tbaa !871
  call fastcc void @bmp_iter_and_init(ptr noundef nonnull %7, ptr noundef %32, ptr noundef %33, ptr noundef nonnull %6) #19
  %34 = call fastcc zeroext i8 @bmp_iter_and(ptr noundef nonnull %7, ptr noundef nonnull %6) #19, !range !895
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36, !prof !1117

36:                                               ; preds = %29
  %37 = icmp eq ptr %2, null
  br label %39

38:                                               ; preds = %57, %29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %61

39:                                               ; preds = %36, %57
  %40 = load i32, ptr %6, align 4, !tbaa !888
  %41 = tail call fastcc ptr @expression_for_id(i32 noundef %40) #19
  br i1 %37, label %60, label %42, !prof !1701

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.pre_expr_d, ptr %41, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !850
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !850
  %47 = tail call fastcc i32 @gimple_code(ptr noundef %46) #19, !range !1035
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
  %58 = call fastcc zeroext i8 @bmp_iter_and(ptr noundef nonnull %7, ptr noundef nonnull %6) #19, !range !895
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %38, label %39, !prof !1702, !llvm.loop !1703

60:                                               ; preds = %53, %49, %42, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %61

61:                                               ; preds = %26, %38, %60, %25
  %62 = phi ptr [ %19, %25 ], [ %41, %60 ], [ null, %38 ], [ null, %26 ]
  ret ptr %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1704 !PGOFuncName !1705 {
  %3 = tail call zeroext i8 @value_id_constant_p(i32 noundef %1) #20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %16, !prof !1706

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %16, label %7, !prof !1707

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8, !tbaa !871
  %9 = load ptr, ptr %8, align 8, !tbaa !977
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11, !prof !1708

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !873
  %14 = tail call i32 @bitmap_bit_p(ptr noundef %13, i32 noundef %1) #20
  %15 = trunc i32 %14 to i8
  br label %16

16:                                               ; preds = %5, %7, %2, %11
  %17 = phi i8 [ %15, %11 ], [ 1, %2 ], [ 0, %7 ], [ 0, %5 ]
  ret i8 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_and_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #10 !prof !1709 !PGOFuncName !1710 {
  %5 = load ptr, ptr %1, align 8, !tbaa !977
  store ptr %5, ptr %0, align 8, !tbaa !979
  %6 = load ptr, ptr %2, align 8, !tbaa !977
  %7 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %8 = icmp eq ptr %5, null
  %9 = icmp eq ptr %6, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %14, label %11, !prof !1711

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !984
  br label %16

14:                                               ; preds = %21, %4
  store ptr @bitmap_zero_bits, ptr %7, align 8, !tbaa !982
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !979
  %15 = load i32, ptr getelementptr inbounds (%struct.bitmap_element_def, ptr @bitmap_zero_bits, i64 0, i32 2), align 8, !tbaa !984
  br label %26

16:                                               ; preds = %11, %21
  %17 = phi ptr [ %6, %11 ], [ %22, %21 ]
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !984
  %20 = icmp ult i32 %19, %13
  br i1 %20, label %21, label %24, !prof !1712

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !999
  %23 = icmp eq ptr %22, null
  br i1 %23, label %14, label %16, !prof !1713

24:                                               ; preds = %16
  store ptr %17, ptr %7, align 8, !tbaa !982
  %25 = icmp eq i32 %13, %19
  br i1 %25, label %26, label %36, !prof !1714

26:                                               ; preds = %14, %24
  %27 = phi ptr [ @bitmap_zero_bits, %14 ], [ %5, %24 ]
  %28 = phi ptr [ @bitmap_zero_bits, %14 ], [ %17, %24 ]
  %29 = phi i32 [ %15, %14 ], [ %19, %24 ]
  %30 = shl i32 %29, 7
  %31 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !987
  %33 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !987
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
  store i32 %44, ptr %3, align 4, !tbaa !888
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_and(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !1709 !PGOFuncName !1715 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !988
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !1716

6:                                                ; preds = %34, %2
  %7 = phi i64 [ %4, %2 ], [ %41, %34 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %77, !prof !1717

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !888
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %75, !prof !1718, !llvm.loop !1719

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !888
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !888
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !986
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %0, align 8, !tbaa !979
  br label %28

28:                                               ; preds = %19, %73
  %29 = phi ptr [ %27, %19 ], [ %52, %73 ]
  %30 = phi i32 [ %25, %19 ], [ 0, %73 ]
  store i32 %30, ptr %23, align 8, !tbaa !986
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %49, label %32, !prof !1720

32:                                               ; preds = %28
  %33 = load ptr, ptr %26, align 8, !tbaa !982
  br label %34

34:                                               ; preds = %32, %43
  %35 = phi i32 [ %30, %32 ], [ %47, %43 ]
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !987
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %36
  %40 = load i64, ptr %39, align 8, !tbaa !987
  %41 = and i64 %40, %38
  store i64 %41, ptr %3, align 8, !tbaa !988
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %6, !prof !1721

43:                                               ; preds = %34
  %44 = load i32, ptr %1, align 4, !tbaa !888
  %45 = add i32 %44, 64
  store i32 %45, ptr %1, align 4, !tbaa !888
  %46 = load i32, ptr %23, align 8, !tbaa !986
  %47 = add i32 %46, 1
  store i32 %47, ptr %23, align 8, !tbaa !986
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %34, !prof !1722, !llvm.loop !1723

49:                                               ; preds = %43, %28
  br label %50

50:                                               ; preds = %61, %49
  %51 = phi ptr [ %29, %49 ], [ %52, %61 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !999
  %53 = icmp eq ptr %52, null
  br i1 %53, label %76, label %54, !prof !1724

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bitmap_element_def, ptr %52, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !984
  %57 = load ptr, ptr %26, align 8, !tbaa !982
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !984
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %62, !prof !1725

61:                                               ; preds = %54, %71
  br label %50, !llvm.loop !1726

62:                                               ; preds = %54
  store ptr %52, ptr %0, align 8, !tbaa !979
  br label %63

63:                                               ; preds = %62, %68
  %64 = phi ptr [ %57, %62 ], [ %69, %68 ]
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !984
  %67 = icmp ult i32 %66, %56
  br i1 %67, label %68, label %71, !prof !1727

68:                                               ; preds = %63
  %69 = load ptr, ptr %64, align 8, !tbaa !999
  store ptr %69, ptr %26, align 8, !tbaa !982
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %63, !prof !1728, !llvm.loop !1729

71:                                               ; preds = %63
  %72 = icmp eq i32 %56, %66
  br i1 %72, label %73, label %61, !prof !1730

73:                                               ; preds = %71
  %74 = shl i32 %56, 7
  store i32 %74, ptr %1, align 4, !tbaa !888
  br label %28

75:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !988
  store i32 %16, ptr %1, align 4, !tbaa !888
  br label %77

76:                                               ; preds = %50
  store ptr null, ptr %0, align 8, !tbaa !979
  br label %77

77:                                               ; preds = %68, %6, %75, %76
  %78 = phi i8 [ 0, %76 ], [ 1, %75 ], [ 1, %6 ], [ 0, %68 ]
  ret i8 %78
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !880 !PGOFuncName !1731 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !850
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_expr_type(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1732 !PGOFuncName !1733 {
  %2 = load i32, ptr %0, align 8, !tbaa !844
  switch i32 %2, label %23 [
    i32 0, label %3
    i32 3, label %8
    i32 2, label %13
    i32 1, label %18
  ], !prof !1734

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !850
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !850
  br label %24

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !850
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !850
  br label %24

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !850
  %16 = getelementptr inbounds %struct.vn_reference_s, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !1633
  br label %24

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !850
  %21 = getelementptr inbounds %struct.vn_nary_op_s, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !1607
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
define internal fastcc void @get_var_ann(ptr noundef %0) unnamed_addr #0 !prof !1735 !PGOFuncName !1736 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ], !prof !1737

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
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 144, ptr noundef nonnull @.str.1) #20
  unreachable

13:                                               ; preds = %8, %6, %4
  %14 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !866
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !1738

17:                                               ; preds = %13
  %18 = tail call ptr @create_var_ann(ptr noundef nonnull %0) #20
  br label %19

19:                                               ; preds = %13, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1739 !PGOFuncName !1740 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !866
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
define internal fastcc ptr @get_or_alloc_expr_for(ptr noundef %0) unnamed_addr #0 !prof !1741 !PGOFuncName !1742 {
  %2 = alloca ptr, align 8
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %8, !prof !1743

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %0) #19
  br label %31

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11, !prof !1744

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %0) #19
  br label %31

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %14 = call ptr @vn_nary_op_lookup(ptr noundef nonnull %0, ptr noundef nonnull %2) #20
  %15 = load ptr, ptr %2, align 8, !tbaa !866
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !866
  %19 = call ptr @pool_alloc(ptr noundef %18) #20
  store i32 1, ptr %19, align 8, !tbaa !844
  %20 = load ptr, ptr %2, align 8, !tbaa !866
  %21 = getelementptr inbounds %struct.pre_expr_d, ptr %19, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !850
  %22 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %19) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !866
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
define internal fastcc ptr @get_constant_for_value_id(i32 noundef %0) unnamed_addr #0 !prof !1745 !PGOFuncName !1746 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = tail call zeroext i8 @value_id_constant_p(i32 noundef %0) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6, !prof !1747

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %7 = load ptr, ptr @value_expressions, align 8
  %8 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %7, i32 noundef %0) #19
  %9 = load ptr, ptr %8, align 8, !tbaa !871
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %9, ptr noundef nonnull %2) #19
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !895
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %18, %6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %24

13:                                               ; preds = %6, %18
  %14 = load i32, ptr %2, align 4, !tbaa !888
  %15 = tail call fastcc ptr @expression_for_id(i32 noundef %14) #19
  %16 = load i32, ptr %15, align 8, !tbaa !844
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %19 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !895
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %12, label %13, !llvm.loop !1748

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %15, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !850
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
define internal fastcc void @bitmap_set_replace_value(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1749 !PGOFuncName !1750 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %6 = tail call zeroext i8 @value_id_constant_p(i32 noundef %1) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %31, !prof !1751

8:                                                ; preds = %3
  %9 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %1) #19
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %31, label %11, !prof !1752

11:                                               ; preds = %8
  %12 = load ptr, ptr @value_expressions, align 8
  %13 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %12, i32 noundef %1) #19
  %14 = load ptr, ptr %13, align 8, !tbaa !871
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %14, ptr noundef nonnull %4) #19
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !895
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %31, label %17, !prof !1117

17:                                               ; preds = %11, %28
  %18 = load ptr, ptr %0, align 8, !tbaa !871
  %19 = load i32, ptr %4, align 4, !tbaa !888
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %19) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22, !prof !1753

22:                                               ; preds = %17
  %23 = load ptr, ptr %0, align 8, !tbaa !871
  %24 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %23, i32 noundef %19) #20
  %25 = load ptr, ptr %0, align 8, !tbaa !871
  %26 = tail call fastcc i32 @get_expression_id(ptr noundef %2) #19
  %27 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %25, i32 noundef %26) #20
  br label %31

28:                                               ; preds = %17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !895
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %17, !prof !1754, !llvm.loop !1755

31:                                               ; preds = %28, %11, %8, %3, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @get_expression_id(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1756 !PGOFuncName !1757 {
  %2 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !913
  ret i32 %3
}

; Function Attrs: optsize
declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @valid_in_sets(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !prof !1758 !PGOFuncName !1759 {
  %5 = alloca %struct.pre_expr_d, align 8
  %6 = alloca ptr, align 8
  %7 = load i32, ptr %2, align 8, !tbaa !844
  switch i32 %7, label %102 [
    i32 0, label %8
    i32 1, label %14
    i32 2, label %64
  ], !prof !1760

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1012
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !1019
  %13 = tail call fastcc zeroext i8 @bitmap_set_contains_expr(ptr noundef %12, ptr noundef nonnull %2) #19
  br label %103

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !850
  %17 = getelementptr inbounds %struct.vn_nary_op_s, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, 65536
  br i1 %19, label %53, label %20, !prof !1761

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.pre_expr_d, ptr %5, i64 0, i32 1
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %5, i64 0, i32 2
  br label %23

23:                                               ; preds = %20, %47
  %24 = phi i32 [ %18, %20 ], [ %48, %47 ]
  %25 = phi i64 [ 0, %20 ], [ %49, %47 ]
  %26 = getelementptr inbounds %struct.vn_nary_op_s, ptr %16, i64 0, i32 5, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !866
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 141
  br i1 %30, label %31, label %47, !prof !1762

31:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  store i32 0, ptr %5, align 8, !tbaa !844
  store i32 0, ptr %21, align 4, !tbaa !913
  store ptr %27, ptr %22, align 8, !tbaa !850
  %32 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %5) #19
  store i32 %32, ptr %21, align 4, !tbaa !913
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34, !prof !1763

34:                                               ; preds = %31
  %35 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %5) #19
  %36 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %35) #19
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %44, !prof !1764

38:                                               ; preds = %34
  %39 = icmp eq ptr %1, null
  br i1 %39, label %46, label %40, !prof !1765

40:                                               ; preds = %38
  %41 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %5) #19
  %42 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef nonnull %1, i32 noundef %41) #19
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44, !prof !1766

44:                                               ; preds = %40, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  %45 = load i32, ptr %17, align 4
  br label %47

46:                                               ; preds = %38, %40, %31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  br label %103

47:                                               ; preds = %44, %23
  %48 = phi i32 [ %45, %44 ], [ %24, %23 ]
  %49 = add nuw nsw i64 %25, 1
  %50 = lshr i32 %48, 16
  %51 = zext nneg i32 %50 to i64
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %23, label %53, !prof !1767, !llvm.loop !1768

53:                                               ; preds = %47, %14
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !1012
  %56 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %55, i64 0, i32 8
  %57 = load i8, ptr %56, align 8
  %58 = and i8 %57, 4
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60, !prof !1769

60:                                               ; preds = %53
  %61 = call zeroext i8 @vn_nary_may_trap(ptr noundef nonnull %16) #20
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %103, !prof !1770

63:                                               ; preds = %60, %53
  br label %103

64:                                               ; preds = %4
  %65 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !850
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %67 = getelementptr inbounds %struct.vn_reference_s, ptr %66, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !884
  %69 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %68, i32 noundef 0, ptr noundef nonnull %6) #19, !range !885
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %81, label %76, !prof !1771

71:                                               ; preds = %76
  %72 = add i32 %77, 1
  %73 = load ptr, ptr %67, align 8, !tbaa !884
  %74 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %73, i32 noundef %72, ptr noundef nonnull %6) #19, !range !885
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76, !prof !1772, !llvm.loop !1773

76:                                               ; preds = %64, %71
  %77 = phi i32 [ %72, %71 ], [ 0, %64 ]
  %78 = load ptr, ptr %6, align 8, !tbaa !866
  %79 = tail call fastcc zeroext i8 @vro_valid_in_sets(ptr noundef %0, ptr noundef %1, ptr noundef %78) #19, !range !895
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %100, label %71, !prof !1774

81:                                               ; preds = %71, %64
  %82 = getelementptr inbounds %struct.vn_reference_s, ptr %66, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !893
  %84 = icmp eq ptr %83, null
  br i1 %84, label %96, label %85, !prof !1775

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.tree_ssa_name, ptr %83, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !850
  %88 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %87) #19, !range !895
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %96, !prof !1776

90:                                               ; preds = %85
  %91 = tail call fastcc ptr @gimple_bb(ptr noundef %87) #19
  %92 = icmp eq ptr %91, %3
  br i1 %92, label %96, label %93, !prof !1777

93:                                               ; preds = %90
  %94 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %3, ptr noundef %91) #20
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %100, label %96, !prof !1778

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
define internal fastcc void @bitmap_remove_from_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1779 !PGOFuncName !1780 {
  %3 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  %4 = tail call zeroext i8 @value_id_constant_p(i32 noundef %3) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13, !prof !1781

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !873
  %9 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %8, i32 noundef %3) #20
  %10 = load ptr, ptr %0, align 8, !tbaa !871
  %11 = tail call fastcc i32 @get_expression_id(ptr noundef %1) #19
  %12 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %10, i32 noundef %11) #20
  br label %13

13:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bitmap_set_contains_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1782 !PGOFuncName !1783 {
  %3 = load ptr, ptr %0, align 8, !tbaa !871
  %4 = tail call fastcc i32 @get_expression_id(ptr noundef %1) #19
  %5 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %4) #20
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @vn_nary_may_trap(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vro_valid_in_sets(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1784 !PGOFuncName !1785 {
  %4 = alloca %struct.pre_expr_d, align 8
  %5 = alloca %struct.pre_expr_d, align 8
  %6 = alloca %struct.pre_expr_d, align 8
  %7 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !889
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10, !prof !1786

10:                                               ; preds = %3
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %31, !prof !1787

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  store i32 0, ptr %4, align 8, !tbaa !844
  %15 = getelementptr inbounds %struct.pre_expr_d, ptr %4, i64 0, i32 1
  store i32 0, ptr %15, align 4, !tbaa !913
  %16 = getelementptr inbounds %struct.pre_expr_d, ptr %4, i64 0, i32 2
  store ptr %8, ptr %16, align 8, !tbaa !850
  %17 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %4) #19
  store i32 %17, ptr %15, align 4, !tbaa !913
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19, !prof !1788

19:                                               ; preds = %14
  %20 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %4) #19
  %21 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %20) #19
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30, !prof !1789

23:                                               ; preds = %19
  %24 = icmp eq ptr %1, null
  br i1 %24, label %29, label %25, !prof !1790

25:                                               ; preds = %23
  %26 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %4) #19
  %27 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef nonnull %1, i32 noundef %26) #19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30, !prof !1791

29:                                               ; preds = %14, %25, %23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  br label %81

30:                                               ; preds = %19, %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  br label %31

31:                                               ; preds = %30, %10, %3
  %32 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %2, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !890
  %34 = icmp eq ptr %33, null
  br i1 %34, label %56, label %35, !prof !1792

35:                                               ; preds = %31
  %36 = load i64, ptr %33, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %56, !prof !1793

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  store i32 0, ptr %5, align 8, !tbaa !844
  %40 = getelementptr inbounds %struct.pre_expr_d, ptr %5, i64 0, i32 1
  store i32 0, ptr %40, align 4, !tbaa !913
  %41 = getelementptr inbounds %struct.pre_expr_d, ptr %5, i64 0, i32 2
  store ptr %33, ptr %41, align 8, !tbaa !850
  %42 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %5) #19
  store i32 %42, ptr %40, align 4, !tbaa !913
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
  %58 = load ptr, ptr %57, align 8, !tbaa !891
  %59 = icmp eq ptr %58, null
  br i1 %59, label %81, label %60, !prof !1792

60:                                               ; preds = %56
  %61 = load i64, ptr %58, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 141
  br i1 %63, label %64, label %81, !prof !1793

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  store i32 0, ptr %6, align 8, !tbaa !844
  %65 = getelementptr inbounds %struct.pre_expr_d, ptr %6, i64 0, i32 1
  store i32 0, ptr %65, align 4, !tbaa !913
  %66 = getelementptr inbounds %struct.pre_expr_d, ptr %6, i64 0, i32 2
  store ptr %58, ptr %66, align 8, !tbaa !850
  %67 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %6) #19
  store i32 %67, ptr %65, align 4, !tbaa !913
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
define internal fastcc zeroext i8 @value_dies_in_block_x(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1794 !PGOFuncName !1795 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  %5 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !850
  %7 = getelementptr inbounds %struct.vn_reference_s, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !893
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  %9 = tail call fastcc i32 @get_expression_id(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #21
  %10 = icmp eq ptr %8, null
  br i1 %10, label %80, label %11, !prof !1775

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1012
  %14 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !1796
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17, !prof !1797

17:                                               ; preds = %11
  %18 = shl i32 %9, 1
  %19 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %15, i32 noundef %18) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21, !prof !1798

21:                                               ; preds = %17
  %22 = load ptr, ptr %12, align 8, !tbaa !1012
  %23 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !1796
  %25 = or disjoint i32 %18, 1
  %26 = tail call i32 @bitmap_bit_p(ptr noundef %24, i32 noundef %25) #20
  %27 = trunc i32 %26 to i8
  br label %80

28:                                               ; preds = %17, %11
  %29 = getelementptr inbounds %struct.ao_ref_s, ptr %4, i64 0, i32 1
  store ptr null, ptr %29, align 8, !tbaa !1799
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %1) #19
  %30 = getelementptr inbounds %struct.vn_reference_s, ptr %6, i64 0, i32 3
  %31 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !895
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %59, !prof !1801

33:                                               ; preds = %28, %56
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %35 = call fastcc ptr @gimple_vuse(ptr noundef %34) #19
  %36 = icmp eq ptr %35, null
  br i1 %36, label %56, label %37, !prof !1802

37:                                               ; preds = %33
  %38 = call fastcc ptr @gimple_vdef(ptr noundef %34) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42, !prof !1803

40:                                               ; preds = %37
  %41 = icmp eq ptr %35, %8
  br i1 %41, label %59, label %56, !prof !1804

42:                                               ; preds = %37
  %43 = load ptr, ptr %29, align 8, !tbaa !1799
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %53, !prof !1805

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.vn_reference_s, ptr %6, i64 0, i32 4
  %47 = getelementptr inbounds %struct.vn_reference_s, ptr %6, i64 0, i32 5
  %48 = load i32, ptr %30, align 8, !tbaa !1632
  %49 = load ptr, ptr %46, align 8, !tbaa !1633
  %50 = load ptr, ptr %47, align 8, !tbaa !884
  %51 = call zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef nonnull %4, i32 noundef %48, ptr noundef %49, ptr noundef %50) #20
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %59, label %53, !prof !1806

53:                                               ; preds = %45, %42
  %54 = call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %34, ptr noundef nonnull %4) #20
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %59, !prof !1806

56:                                               ; preds = %53, %40, %33
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %57 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !895
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %33, label %59, !prof !1807, !llvm.loop !1808

59:                                               ; preds = %40, %53, %56, %45, %28
  %60 = phi i1 [ true, %28 ], [ true, %40 ], [ false, %53 ], [ false, %45 ], [ true, %56 ]
  %61 = phi i8 [ 0, %28 ], [ 0, %40 ], [ 1, %53 ], [ 1, %45 ], [ 0, %56 ]
  %62 = load ptr, ptr %12, align 8, !tbaa !1012
  %63 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %62, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !1796
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %70, !prof !1809

66:                                               ; preds = %59
  %67 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  %68 = load ptr, ptr %12, align 8, !tbaa !1012
  %69 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %68, i64 0, i32 7
  store ptr %67, ptr %69, align 8, !tbaa !1796
  br label %70

70:                                               ; preds = %66, %59
  %71 = phi ptr [ %67, %66 ], [ %64, %59 ]
  %72 = shl i32 %9, 1
  %73 = call zeroext i8 @bitmap_set_bit(ptr noundef %71, i32 noundef %72) #20
  br i1 %60, label %80, label %74, !prof !1810

74:                                               ; preds = %70
  %75 = load ptr, ptr %12, align 8, !tbaa !1012
  %76 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %75, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !1796
  %78 = or disjoint i32 %72, 1
  %79 = call zeroext i8 @bitmap_set_bit(ptr noundef %77, i32 noundef %78) #20
  br label %80

80:                                               ; preds = %70, %74, %2, %21
  %81 = phi i8 [ %27, %21 ], [ 0, %2 ], [ %61, %74 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret i8 %81
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !1811 !PGOFuncName !1812 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1489

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1516
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_set_subtract_values(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1476 !PGOFuncName !1813 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  %6 = load ptr, ptr %0, align 8, !tbaa !871
  tail call void @bitmap_copy(ptr noundef %5, ptr noundef %6) #20
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %3) #19
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #19, !range !895
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9, !prof !1814

9:                                                ; preds = %2, %16
  %10 = load i32, ptr %3, align 4, !tbaa !888
  %11 = tail call fastcc ptr @expression_for_id(i32 noundef %10) #19
  %12 = tail call fastcc i32 @get_expr_value_id(ptr noundef %11) #19
  %13 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %1, i32 noundef %12) #19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15, !prof !1815

15:                                               ; preds = %9
  tail call fastcc void @bitmap_remove_from_set(ptr noundef nonnull %0, ptr noundef %11) #19
  br label %16

16:                                               ; preds = %15, %9
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #19, !range !895
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %9, !prof !1816, !llvm.loop !1817

19:                                               ; preds = %16, %2
  tail call void @bitmap_obstack_free(ptr noundef %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dependent_clean(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1476 !PGOFuncName !1818 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %6 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %0) #19
  store ptr %6, ptr %4, align 8, !tbaa !866
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %7 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %5) #19, !range !885
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9, !prof !1819

9:                                                ; preds = %3, %15
  %10 = phi i32 [ %16, %15 ], [ 0, %3 ]
  %11 = load ptr, ptr %5, align 8, !tbaa !866
  %12 = tail call fastcc zeroext i8 @valid_in_sets(ptr noundef %0, ptr noundef %1, ptr noundef %11, ptr noundef %2) #19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15, !prof !1820

14:                                               ; preds = %9
  tail call fastcc void @bitmap_remove_from_set(ptr noundef %0, ptr noundef %11) #19
  br label %15

15:                                               ; preds = %9, %14
  %16 = add nuw nsw i32 %10, 1
  %17 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %6, i32 noundef %16, ptr noundef nonnull %5) #19, !range !885
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %9, !prof !1821, !llvm.loop !1822

19:                                               ; preds = %15, %3
  call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @insert_aux(ptr noundef %0) unnamed_addr #0 !prof !1823 !PGOFuncName !1824 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %43, label %5, !prof !1825

5:                                                ; preds = %1
  %6 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %0) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8, !prof !1826

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1012
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !1144
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14, !prof !1827

14:                                               ; preds = %8
  %15 = load ptr, ptr %12, align 8, !tbaa !871
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %15, ptr noundef nonnull %2) #19
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !895
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %31, label %18, !prof !1828

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  br label %20

20:                                               ; preds = %18, %20
  %21 = load i32, ptr %2, align 4, !tbaa !888
  %22 = tail call fastcc ptr @expression_for_id(i32 noundef %21) #19
  %23 = load ptr, ptr %19, align 8, !tbaa !1012
  %24 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !1144
  tail call fastcc void @bitmap_value_replace_in_set(ptr noundef %25, ptr noundef %22) #19
  %26 = load ptr, ptr %19, align 8, !tbaa !1012
  %27 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !1019
  tail call fastcc void @bitmap_value_replace_in_set(ptr noundef %28, ptr noundef %22) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !895
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %20, !prof !1829, !llvm.loop !1830

31:                                               ; preds = %20, %14, %8
  %32 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %0) #19, !range !895
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %41, !prof !1831

34:                                               ; preds = %31
  %35 = tail call fastcc zeroext i8 @do_regular_insertion(ptr noundef nonnull %0, ptr noundef nonnull %6) #19, !range !895
  %36 = load i8, ptr @do_partial_partial, align 1, !tbaa !850
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38, !prof !1832

38:                                               ; preds = %34
  %39 = tail call fastcc zeroext i8 @do_partial_partial_insertion(ptr noundef nonnull %0, ptr noundef nonnull %6) #19, !range !895
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
  br i1 %46, label %54, label %47, !prof !1833

47:                                               ; preds = %43, %47
  %48 = phi ptr [ %52, %47 ], [ %45, %43 ]
  %49 = phi i8 [ %51, %47 ], [ %44, %43 ]
  %50 = tail call fastcc zeroext i8 @insert_aux(ptr noundef nonnull %48) #19, !range !895
  %51 = or i8 %50, %49
  %52 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %48) #20
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %47, !prof !1834, !llvm.loop !1835

54:                                               ; preds = %47, %43
  %55 = phi i8 [ %44, %43 ], [ %51, %47 ]
  ret i8 %55
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !1558 !PGOFuncName !1836 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1298
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @do_regular_insertion(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1837 !PGOFuncName !1838 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1012
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !1126
  %13 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %12) #19
  store ptr %13, ptr %3, align 8, !tbaa !866
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %14 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %4) #19, !range !885
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %173, label %16, !prof !1839

16:                                               ; preds = %2, %168
  %17 = phi i8 [ %169, %168 ], [ 0, %2 ]
  %18 = phi i32 [ %170, %168 ], [ 0, %2 ]
  %19 = load ptr, ptr %4, align 8, !tbaa !866
  %20 = load i32, ptr %19, align 8, !tbaa !844
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %168, label %22, !prof !1840

22:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %23 = tail call fastcc i32 @get_expr_value_id(ptr noundef nonnull %19) #19
  %24 = load ptr, ptr %9, align 8, !tbaa !1012
  %25 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !1017
  %27 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %26, i32 noundef %23) #19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %166, !prof !1841

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !1012
  %32 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !1019
  %34 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %33, i32 noundef %23) #19
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36, !prof !1842

36:                                               ; preds = %29
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %38 = icmp eq ptr %37, null
  br i1 %38, label %166, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %166, label %43

43:                                               ; preds = %39
  %44 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 28, i64 1, ptr nonnull %37)
  br label %166

45:                                               ; preds = %29
  %46 = getelementptr inbounds i8, ptr %6, i64 8
  %47 = load ptr, ptr @cfun, align 8, !tbaa !866
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !1011
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !1114
  %52 = sext i32 %51 to i64
  %53 = tail call ptr @xcalloc(i64 noundef %52, i64 noundef 8) #20
  %54 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !1118
  store ptr %54, ptr %46, align 8, !tbaa.struct !1119
  %55 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %54, ptr noundef nonnull %5) #19, !range !895
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %164, label %57, !prof !1843

57:                                               ; preds = %45, %98
  %58 = phi i8 [ %102, %98 ], [ 0, %45 ]
  %59 = phi i8 [ %101, %98 ], [ 1, %45 ]
  %60 = phi ptr [ %100, %98 ], [ null, %45 ]
  %61 = phi i8 [ %99, %98 ], [ 0, %45 ]
  %62 = load ptr, ptr %5, align 8, !tbaa !866
  %63 = getelementptr inbounds %struct.edge_def, ptr %62, i64 0, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !1121
  %65 = and i32 %64, 16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67, !prof !1844

67:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3520, ptr noundef nonnull @.str.1) #20
  br label %68

68:                                               ; preds = %57, %67
  %69 = load ptr, ptr %62, align 8, !tbaa !1294
  %70 = load ptr, ptr %9, align 8, !tbaa !1012
  %71 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %70, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !1126
  %73 = tail call fastcc ptr @phi_translate(ptr noundef nonnull %19, ptr noundef %72, ptr noundef null, ptr noundef %69, ptr noundef nonnull %0) #19
  %74 = icmp eq ptr %73, null
  br i1 %74, label %164, label %75, !prof !1845

75:                                               ; preds = %68
  %76 = tail call fastcc ptr @fully_constant_expression(ptr noundef nonnull %73) #19
  %77 = tail call fastcc i32 @get_expr_value_id(ptr noundef %76) #19
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !1012
  %80 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !1019
  %82 = tail call fastcc ptr @bitmap_find_leader(ptr noundef %81, i32 noundef %77, ptr noundef null) #19
  %83 = icmp eq ptr %82, null
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %85 = load i32, ptr %84, align 8, !tbaa !1016
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %53, i64 %86
  br i1 %83, label %88, label %89, !prof !1846

88:                                               ; preds = %75
  store ptr %76, ptr %87, align 8, !tbaa !866
  br label %98

89:                                               ; preds = %75
  store ptr %82, ptr %87, align 8, !tbaa !866
  %90 = tail call zeroext i8 @optimize_edge_for_speed_p(ptr noundef nonnull %62) #20
  %91 = icmp eq i8 %90, 0
  %92 = select i1 %91, i8 %61, i8 1, !prof !1847
  %93 = icmp eq ptr %60, null
  br i1 %93, label %98, label %94, !prof !1848

94:                                               ; preds = %89
  %95 = tail call i32 @pre_expr_eq(ptr noundef nonnull %60, ptr noundef nonnull %82) #19
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, i8 0, i8 %59, !prof !1849
  br label %98

98:                                               ; preds = %89, %94, %88
  %99 = phi i8 [ %92, %94 ], [ %92, %89 ], [ %61, %88 ]
  %100 = phi ptr [ %60, %94 ], [ %82, %89 ], [ %60, %88 ]
  %101 = phi i8 [ %97, %94 ], [ %59, %89 ], [ 0, %88 ]
  %102 = phi i8 [ 1, %94 ], [ 1, %89 ], [ %58, %88 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %103 = load i32, ptr %6, align 8
  %104 = load ptr, ptr %46, align 8
  %105 = call fastcc zeroext i8 @ei_cond(i32 %103, ptr %104, ptr noundef nonnull %5) #19, !range !895
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %57, !prof !1850, !llvm.loop !1851

107:                                              ; preds = %98
  %108 = icmp eq i8 %101, 0
  %109 = icmp ne i8 %102, 0
  %110 = select i1 %108, i1 %109, i1 false
  %111 = icmp ne i8 %99, 0
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %113, label %121, !prof !1852

113:                                              ; preds = %107
  %114 = tail call zeroext i8 @dbg_cnt(i32 noundef 25) #20
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %164, label %116, !prof !1853

116:                                              ; preds = %113
  %117 = tail call fastcc i32 @get_expression_id(ptr noundef nonnull %19) #19
  %118 = tail call fastcc zeroext i8 @insert_into_preds_of_block(ptr noundef nonnull %0, i32 noundef %117, ptr noundef nonnull %53) #19, !range !895
  %119 = icmp eq i8 %118, 0
  %120 = select i1 %119, i8 %17, i8 1, !prof !1853
  br label %164

121:                                              ; preds = %107
  %122 = icmp eq i8 %101, 0
  br i1 %122, label %164, label %123, !prof !1854

123:                                              ; preds = %121
  %124 = icmp eq ptr %76, null
  br i1 %124, label %164, label %125

125:                                              ; preds = %123
  %126 = load i32, ptr %82, align 8, !tbaa !844
  switch i32 %126, label %164 [
    i32 3, label %127
    i32 0, label %127
  ]

127:                                              ; preds = %125, %125
  %128 = tail call zeroext i8 @value_id_constant_p(i32 noundef %23) #20
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %164

130:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  %131 = load ptr, ptr @value_expressions, align 8
  %132 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %131, i32 noundef %23) #19
  %133 = tail call fastcc i32 @get_expr_value_id(ptr noundef nonnull %82) #19
  %134 = load ptr, ptr %132, align 8, !tbaa !871
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %134, ptr noundef nonnull %7) #19
  %135 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !895
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %163, label %137

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.pre_expr_d, ptr %82, i64 0, i32 2
  br label %139

139:                                              ; preds = %137, %160
  %140 = load i32, ptr %7, align 4, !tbaa !888
  %141 = tail call fastcc ptr @expression_for_id(i32 noundef %140) #19
  %142 = load i32, ptr %141, align 8, !tbaa !844
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.pre_expr_d, ptr %141, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !850
  %147 = tail call ptr @VN_INFO(ptr noundef %146) #20
  %148 = load i32, ptr %82, align 8, !tbaa !844
  %149 = icmp eq i32 %148, 3
  %150 = load ptr, ptr %138, align 8, !tbaa !850
  br i1 %149, label %151, label %154

151:                                              ; preds = %144
  %152 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 4), align 4, !tbaa !1029
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 4), align 4, !tbaa !1029
  br label %157

154:                                              ; preds = %144
  %155 = tail call ptr @VN_INFO(ptr noundef %150) #20
  %156 = load ptr, ptr %155, align 8, !tbaa !1162
  br label %157

157:                                              ; preds = %154, %151
  %158 = phi ptr [ %150, %151 ], [ %156, %154 ]
  store ptr %158, ptr %147, align 8
  %159 = getelementptr inbounds %struct.vn_ssa_aux, ptr %147, i64 0, i32 2
  store i32 %133, ptr %159, align 8, !tbaa !852
  br label %160

160:                                              ; preds = %157, %139
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  %161 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !895
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %139, !llvm.loop !1855

163:                                              ; preds = %160, %130
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  br label %164

164:                                              ; preds = %68, %45, %113, %116, %125, %121, %123, %127, %163
  %165 = phi i8 [ %17, %127 ], [ %17, %163 ], [ %17, %123 ], [ %17, %121 ], [ %120, %116 ], [ %17, %125 ], [ %17, %113 ], [ %17, %45 ], [ %17, %68 ]
  tail call void @free(ptr noundef %53) #19
  br label %166

166:                                              ; preds = %36, %39, %43, %22, %164
  %167 = phi i8 [ %165, %164 ], [ %17, %22 ], [ %17, %43 ], [ %17, %39 ], [ %17, %36 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %168

168:                                              ; preds = %166, %16
  %169 = phi i8 [ %167, %166 ], [ %17, %16 ]
  %170 = add nuw nsw i32 %18, 1
  %171 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %13, i32 noundef %170, ptr noundef nonnull %4) #19, !range !885
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %16, !prof !1856, !llvm.loop !1857

173:                                              ; preds = %168, %2
  %174 = phi i8 [ 0, %2 ], [ %169, %168 ]
  call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %174
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @do_partial_partial_insertion(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1837 !PGOFuncName !1858 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1012
  %9 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !1127
  %11 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %10) #19
  store ptr %11, ptr %3, align 8, !tbaa !866
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %12 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %4) #19, !range !885
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %99, label %14, !prof !1859

14:                                               ; preds = %2, %94
  %15 = phi i8 [ %95, %94 ], [ 0, %2 ]
  %16 = phi i32 [ %96, %94 ], [ 0, %2 ]
  %17 = load ptr, ptr %4, align 8, !tbaa !866
  %18 = load i32, ptr %17, align 8, !tbaa !844
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %94, label %20, !prof !1860

20:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %21 = tail call fastcc i32 @get_expr_value_id(ptr noundef nonnull %17) #19
  %22 = load ptr, ptr %7, align 8, !tbaa !1012
  %23 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !1017
  %25 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %24, i32 noundef %21) #19
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %92, !prof !1861

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !1012
  %30 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !1019
  %32 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %31, i32 noundef %21) #19
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %92, !prof !1862

34:                                               ; preds = %27
  %35 = getelementptr inbounds i8, ptr %6, i64 8
  %36 = load ptr, ptr @cfun, align 8, !tbaa !866
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !1011
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !1114
  %41 = sext i32 %40 to i64
  %42 = tail call ptr @xcalloc(i64 noundef %41, i64 noundef 8) #20
  %43 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !1118
  store ptr %43, ptr %35, align 8, !tbaa.struct !1119
  %44 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %43, ptr noundef nonnull %5) #19, !range !895
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %80, label %46, !prof !1863

46:                                               ; preds = %34, %71
  %47 = load ptr, ptr %5, align 8, !tbaa !866
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !1121
  %50 = and i32 %49, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !1864

52:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3659, ptr noundef nonnull @.str.1) #20
  br label %53

53:                                               ; preds = %46, %52
  %54 = load ptr, ptr %47, align 8, !tbaa !1294
  %55 = load ptr, ptr %7, align 8, !tbaa !1012
  %56 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %55, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !1126
  %58 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %55, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !1127
  %60 = tail call fastcc ptr @phi_translate(ptr noundef nonnull %17, ptr noundef %57, ptr noundef %59, ptr noundef %54, ptr noundef nonnull %0) #19
  %61 = icmp eq ptr %60, null
  br i1 %61, label %90, label %62, !prof !1865

62:                                               ; preds = %53
  %63 = tail call fastcc ptr @fully_constant_expression(ptr noundef nonnull %60) #19
  %64 = tail call fastcc i32 @get_expr_value_id(ptr noundef %63) #19
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !1012
  %67 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !1019
  %69 = tail call fastcc ptr @bitmap_find_leader(ptr noundef %68, i32 noundef %64, ptr noundef null) #19
  %70 = icmp eq ptr %69, null
  br i1 %70, label %90, label %71, !prof !1866

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %73 = load i32, ptr %72, align 8, !tbaa !1016
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %42, i64 %74
  store ptr %69, ptr %75, align 8, !tbaa !866
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %76 = load i32, ptr %6, align 8
  %77 = load ptr, ptr %35, align 8
  %78 = call fastcc zeroext i8 @ei_cond(i32 %76, ptr %77, ptr noundef nonnull %5) #19, !range !895
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %46, !prof !1867, !llvm.loop !1868

80:                                               ; preds = %71, %34
  %81 = tail call zeroext i8 @dbg_cnt(i32 noundef 25) #20
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %90, label %83, !prof !1869

83:                                               ; preds = %80
  %84 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 2), align 4, !tbaa !1026
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 2), align 4, !tbaa !1026
  %86 = tail call fastcc i32 @get_expression_id(ptr noundef nonnull %17) #19
  %87 = tail call fastcc zeroext i8 @insert_into_preds_of_block(ptr noundef nonnull %0, i32 noundef %86, ptr noundef %42) #19, !range !895
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, i8 %15, i8 1, !prof !1869
  br label %90

90:                                               ; preds = %62, %53, %83, %80
  %91 = phi i8 [ %15, %80 ], [ %89, %83 ], [ %15, %53 ], [ %15, %62 ]
  tail call void @free(ptr noundef %42) #19
  br label %92

92:                                               ; preds = %27, %20, %90
  %93 = phi i8 [ %91, %90 ], [ %15, %20 ], [ %15, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %94

94:                                               ; preds = %92, %14
  %95 = phi i8 [ %93, %92 ], [ %15, %14 ]
  %96 = add nuw nsw i32 %16, 1
  %97 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %11, i32 noundef %96, ptr noundef nonnull %4) #19, !range !885
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %14, !prof !1870, !llvm.loop !1871

99:                                               ; preds = %94, %2
  %100 = phi i8 [ 0, %2 ], [ %95, %94 ]
  call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %100
}

; Function Attrs: optsize
declare zeroext i8 @optimize_edge_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @insert_into_preds_of_block(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !1872 !PGOFuncName !1873 {
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
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !1151

14:                                               ; preds = %3
  %15 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 40, i64 1, ptr nonnull %12)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !866
  tail call fastcc void @print_pre_expr(ptr noundef %20, ptr noundef %9) #19
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.50, i32 noundef %10) #19
  br label %23

23:                                               ; preds = %18, %14, %3
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %25 = load i32, ptr %24, align 4, !tbaa !1874
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %58, !prof !1875

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 8, !tbaa !1298
  %29 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %28) #19
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !1876
  %34 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %28, i32 noundef 0) #19
  %35 = load ptr, ptr %34, align 8, !tbaa !1294
  %36 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %33, ptr noundef %35) #20
  %37 = load ptr, ptr %32, align 8, !tbaa !1876
  %38 = load ptr, ptr %0, align 8, !tbaa !1298
  %39 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %38, i32 noundef 1) #19
  %40 = load ptr, ptr %39, align 8, !tbaa !1294
  %41 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %37, ptr noundef %40) #20
  %42 = icmp eq i8 %36, %41
  br i1 %42, label %58, label %43

43:                                               ; preds = %31
  %44 = load i32, ptr %9, align 8, !tbaa !844
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = tail call fastcc zeroext i8 @inhibit_phi_insertion(ptr noundef nonnull %0, ptr noundef nonnull %9) #19
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46, %43
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 83, i64 1, ptr nonnull %50)
  br label %58

58:                                               ; preds = %31, %46, %56, %52, %49, %27, %23
  %59 = phi i1 [ false, %27 ], [ false, %23 ], [ false, %46 ], [ false, %31 ], [ true, %56 ], [ true, %52 ], [ true, %49 ]
  %60 = phi i1 [ true, %27 ], [ true, %23 ], [ true, %46 ], [ true, %31 ], [ false, %56 ], [ false, %52 ], [ false, %49 ]
  %61 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %5, align 8, !tbaa.struct !1118
  %62 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %61, ptr %62, align 8, !tbaa.struct !1119
  %63 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %61, ptr noundef nonnull %4) #19, !range !895
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %167, label %65, !prof !1877

65:                                               ; preds = %58, %158
  %66 = phi i8 [ %159, %158 ], [ 0, %58 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !866
  %67 = load ptr, ptr %4, align 8, !tbaa !866
  %68 = load ptr, ptr %67, align 8, !tbaa !1294
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !1016
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %2, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !866
  %74 = load i32, ptr %73, align 8, !tbaa !844
  switch i32 %74, label %75 [
    i32 3, label %84
    i32 0, label %119
  ], !prof !1878

75:                                               ; preds = %65
  %76 = call fastcc ptr @create_expression_by_pieces(ptr noundef nonnull %68, ptr noundef nonnull %73, ptr noundef nonnull %6, ptr noundef null, ptr noundef %11) #19
  %77 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 7
  %78 = load i32, ptr %77, align 8, !tbaa !1121
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81, !prof !1879

81:                                               ; preds = %75
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3302, ptr noundef nonnull @.str.1) #20
  br label %82

82:                                               ; preds = %75, %81
  %83 = load ptr, ptr %6, align 8, !tbaa !866
  call void @gsi_insert_seq_on_edge(ptr noundef nonnull %67, ptr noundef %83) #20
  br label %151

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.pre_expr_d, ptr %73, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !850
  %87 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !850
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
  %102 = load ptr, ptr %85, align 8, !tbaa !850
  %103 = call ptr @VN_INFO_GET(ptr noundef %96) #20
  store ptr %102, ptr %103, align 8, !tbaa !1162
  %104 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %73) #19
  %105 = call ptr @VN_INFO(ptr noundef %96) #20
  %106 = getelementptr inbounds %struct.vn_ssa_aux, ptr %105, i64 0, i32 2
  store i32 %104, ptr %106, align 8, !tbaa !852
  br label %107

107:                                              ; preds = %101, %99
  %108 = load ptr, ptr %6, align 8, !tbaa !866
  %109 = icmp eq ptr %108, null
  br i1 %109, label %151, label %110

110:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #21
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %108) #19
  %111 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !895
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110, %113
  %114 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull @inserted_exprs, ptr noundef %114) #19
  call fastcc void @gimple_set_plf(ptr noundef %114, i8 noundef zeroext 0) #19
  call fastcc void @gsi_next(ptr noundef nonnull %7) #19
  %115 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !895
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %113, label %117, !llvm.loop !1880

117:                                              ; preds = %113, %110
  %118 = load ptr, ptr %6, align 8, !tbaa !866
  call void @gsi_insert_seq_on_edge(ptr noundef nonnull %67, ptr noundef %118) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #21
  br label %151

119:                                              ; preds = %65
  %120 = getelementptr inbounds %struct.pre_expr_d, ptr %73, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !850
  %122 = getelementptr inbounds %struct.tree_common, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !850
  %124 = call zeroext i8 @useless_type_conversion_p(ptr noundef %11, ptr noundef %123) #20
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %158, !prof !1881

126:                                              ; preds = %119
  %127 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %11, ptr noundef nonnull %121) #20
  %128 = call ptr @force_gimple_operand(ptr noundef %127, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef null) #20
  %129 = icmp eq ptr %128, %121
  br i1 %129, label %139, label %130

130:                                              ; preds = %126
  %131 = call ptr @VN_INFO(ptr noundef nonnull %121) #20
  %132 = load ptr, ptr %131, align 8, !tbaa !1162
  %133 = call ptr @VN_INFO_GET(ptr noundef %128) #20
  store ptr %132, ptr %133, align 8, !tbaa !1162
  %134 = call ptr @VN_INFO(ptr noundef nonnull %121) #20
  %135 = getelementptr inbounds %struct.vn_ssa_aux, ptr %134, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !852
  %137 = call ptr @VN_INFO(ptr noundef %128) #20
  %138 = getelementptr inbounds %struct.vn_ssa_aux, ptr %137, i64 0, i32 2
  store i32 %136, ptr %138, align 8, !tbaa !852
  br label %139

139:                                              ; preds = %130, %126
  %140 = load ptr, ptr %6, align 8, !tbaa !866
  %141 = icmp eq ptr %140, null
  br i1 %141, label %151, label %142

142:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #21
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef nonnull %140) #19
  %143 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #19, !range !895
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142, %145
  %146 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #19
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull @inserted_exprs, ptr noundef %146) #19
  call fastcc void @gimple_set_plf(ptr noundef %146, i8 noundef zeroext 0) #19
  call fastcc void @gsi_next(ptr noundef nonnull %8) #19
  %147 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #19, !range !895
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %145, label %149, !llvm.loop !1882

149:                                              ; preds = %145, %142
  %150 = load ptr, ptr %6, align 8, !tbaa !866
  call void @gsi_insert_seq_on_edge(ptr noundef nonnull %67, ptr noundef %150) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #21
  br label %151

151:                                              ; preds = %139, %149, %107, %117, %82
  %152 = phi ptr [ %76, %82 ], [ %96, %117 ], [ %96, %107 ], [ %128, %149 ], [ %128, %139 ]
  %153 = phi i8 [ 1, %82 ], [ %66, %117 ], [ %66, %107 ], [ %66, %149 ], [ %66, %139 ]
  %154 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %152) #19
  %155 = load i32, ptr %69, align 8, !tbaa !1016
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds ptr, ptr %2, i64 %156
  store ptr %154, ptr %157, align 8, !tbaa !866
  br label %158

158:                                              ; preds = %151, %119, %84, %95, %91
  %159 = phi i8 [ %66, %91 ], [ %66, %95 ], [ %66, %84 ], [ %66, %119 ], [ %153, %151 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call fastcc void @ei_next(ptr noundef nonnull %5) #19
  %160 = load i32, ptr %5, align 8
  %161 = load ptr, ptr %62, align 8
  %162 = call fastcc zeroext i8 @ei_cond(i32 %160, ptr %161, ptr noundef nonnull %4) #19, !range !895
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %65, !prof !1883, !llvm.loop !1884

164:                                              ; preds = %158
  %165 = icmp ne i8 %159, 0
  %166 = select i1 %59, i1 %165, i1 false
  br i1 %166, label %268, label %167, !prof !1885

167:                                              ; preds = %58, %164
  %168 = phi i1 [ %165, %164 ], [ false, %58 ]
  %169 = select i1 %60, i1 true, i1 %168
  br i1 %169, label %170, label %268, !prof !1058

170:                                              ; preds = %167
  %171 = load ptr, ptr @prephitemp, align 8, !tbaa !866
  %172 = icmp eq ptr %171, null
  br i1 %172, label %177, label %173, !prof !1886

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.tree_common, ptr %171, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !850
  %176 = icmp eq ptr %175, %11
  br i1 %176, label %180, label %177, !prof !1887

177:                                              ; preds = %173, %170
  %178 = call ptr @create_tmp_var(ptr noundef %11, ptr noundef nonnull @.str.52) #20
  store ptr %178, ptr @prephitemp, align 8, !tbaa !866
  call fastcc void @get_var_ann(ptr noundef %178) #19
  %179 = load ptr, ptr @prephitemp, align 8, !tbaa !866
  br label %180

180:                                              ; preds = %177, %173
  %181 = phi ptr [ %179, %177 ], [ %171, %173 ]
  %182 = call zeroext i8 @add_referenced_var(ptr noundef %181) #20
  %183 = load i64, ptr %11, align 8
  %184 = trunc i64 %183 to i32
  %185 = and i32 %184, 65535
  %186 = add nsw i32 %185, -13
  %187 = icmp ult i32 %186, 2
  br i1 %187, label %188, label %192, !prof !1888

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
  store ptr %194, ptr %195, align 8, !tbaa !1162
  %196 = call fastcc ptr @gimple_phi_result(ptr noundef %193) #19
  %197 = call ptr @VN_INFO(ptr noundef %196) #20
  %198 = getelementptr inbounds %struct.vn_ssa_aux, ptr %197, i64 0, i32 2
  store i32 %10, ptr %198, align 8, !tbaa !852
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull @inserted_exprs, ptr noundef %193) #19
  %199 = load ptr, ptr @inserted_phi_names, align 8, !tbaa !866
  %200 = call fastcc ptr @gimple_phi_result(ptr noundef %193) #19
  %201 = getelementptr inbounds %struct.tree_ssa_name, ptr %200, i64 0, i32 3
  %202 = load i32, ptr %201, align 8, !tbaa !850
  %203 = call zeroext i8 @bitmap_set_bit(ptr noundef %199, i32 noundef %202) #20
  store i32 0, ptr %5, align 8, !tbaa.struct !1118
  store ptr %61, ptr %62, align 8, !tbaa.struct !1119
  %204 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %61, ptr noundef nonnull %4) #19, !range !895
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %239, label %206, !prof !1877

206:                                              ; preds = %192, %231
  %207 = load ptr, ptr %4, align 8, !tbaa !866
  %208 = load ptr, ptr %207, align 8, !tbaa !1294
  %209 = getelementptr inbounds %struct.basic_block_def, ptr %208, i64 0, i32 9
  %210 = load i32, ptr %209, align 8, !tbaa !1016
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds ptr, ptr %2, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !866
  %214 = call fastcc ptr @get_expr_type(ptr noundef %213) #19
  %215 = icmp eq ptr %214, %11
  br i1 %215, label %221, label %216, !prof !1889

216:                                              ; preds = %206
  %217 = call fastcc ptr @get_expr_type(ptr noundef %213) #19
  %218 = call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %11, ptr noundef %217) #20
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3417, ptr noundef nonnull @.str.1) #20
  br label %221

221:                                              ; preds = %206, %216, %220
  %222 = load i32, ptr %213, align 8, !tbaa !844
  %223 = icmp eq i32 %222, 3
  br i1 %223, label %231, label %224, !prof !1890

224:                                              ; preds = %221
  %225 = load ptr, ptr %207, align 8, !tbaa !1294
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %225, i64 0, i32 9
  %227 = load i32, ptr %226, align 8, !tbaa !1016
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds ptr, ptr %2, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !866
  br label %231

231:                                              ; preds = %221, %224
  %232 = phi ptr [ %230, %224 ], [ %213, %221 ]
  %233 = getelementptr inbounds %struct.pre_expr_d, ptr %232, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !850
  call void @add_phi_arg(ptr noundef %193, ptr noundef %234, ptr noundef nonnull %207, i32 noundef 0) #20
  call fastcc void @ei_next(ptr noundef nonnull %5) #19
  %235 = load i32, ptr %5, align 8
  %236 = load ptr, ptr %62, align 8
  %237 = call fastcc zeroext i8 @ei_cond(i32 %235, ptr %236, ptr noundef nonnull %4) #19, !range !895
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %206, !prof !1883, !llvm.loop !1891

239:                                              ; preds = %231, %192
  %240 = call fastcc ptr @gimple_phi_result(ptr noundef %193) #19
  %241 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %240) #19
  call void @add_to_value(i32 noundef %10, ptr noundef %241) #19
  %242 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !1012
  %244 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %243, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !1017
  call fastcc void @bitmap_insert_into_set(ptr noundef %245, ptr noundef %241) #19
  %246 = load ptr, ptr %242, align 8, !tbaa !1012
  %247 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %246, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !1019
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %248, ptr noundef %241) #19
  %249 = load ptr, ptr %242, align 8, !tbaa !1012
  %250 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %249, i64 0, i32 6
  %251 = load ptr, ptr %250, align 8, !tbaa !1144
  call fastcc void @bitmap_insert_into_set(ptr noundef %251, ptr noundef %241) #19
  %252 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %253 = icmp eq ptr %252, null
  br i1 %253, label %265, label %254, !prof !1151

254:                                              ; preds = %239
  %255 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %256 = and i32 %255, 8
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %265, label %258

258:                                              ; preds = %254
  %259 = call i64 @fwrite(ptr nonnull @.str.53, i64 12, i64 1, ptr nonnull %252)
  %260 = load ptr, ptr @dump_file, align 8, !tbaa !866
  call void @print_gimple_stmt(ptr noundef %260, ptr noundef %193, i32 noundef 0, i32 noundef 0) #20
  %261 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %262 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %263 = load i32, ptr %262, align 8, !tbaa !1016
  %264 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %261, ptr noundef nonnull @.str.54, i32 noundef %263) #19
  br label %265

265:                                              ; preds = %258, %254, %239
  %266 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 3), align 4, !tbaa !1027
  %267 = add nsw i32 %266, 1
  store i32 %267, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 3), align 4, !tbaa !1027
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
define internal fastcc noundef zeroext i8 @inhibit_phi_insertion(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !880 !PGOFuncName !1892 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.affine_iv, align 8
  %5 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !850
  %7 = getelementptr inbounds %struct.vn_reference_s, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !884
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %9 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !888
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %2
  %12 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %3) #19, !range !885
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %50, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  br label %16

16:                                               ; preds = %14, %46
  %17 = phi i32 [ 0, %14 ], [ %47, %46 ]
  %18 = load ptr, ptr %3, align 8, !tbaa !866
  %19 = load i32, ptr %18, align 8, !tbaa !886
  switch i32 %19, label %46 [
    i32 45, label %23
    i32 46, label %23
    i32 141, label %20
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !889
  br label %29

23:                                               ; preds = %16, %16
  %24 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %18, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !889
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 141
  br i1 %28, label %29, label %46

29:                                               ; preds = %20, %23
  %30 = phi ptr [ %22, %20 ], [ %25, %23 ]
  %31 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %18, i64 0, i32 2
  %32 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !850
  %34 = call fastcc ptr @gimple_bb(ptr noundef %33) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %15, align 8, !tbaa !1876
  %38 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %37, ptr noundef nonnull %34) #20
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %15, align 8, !tbaa !1876
  %42 = load ptr, ptr %31, align 8, !tbaa !889
  %43 = call zeroext i8 @simple_iv(ptr noundef %41, ptr noundef %41, ptr noundef %42, ptr noundef nonnull %4, i8 noundef zeroext 1) #20
  %44 = icmp eq i8 %43, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  br i1 %44, label %46, label %50

45:                                               ; preds = %36, %29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  br label %46

46:                                               ; preds = %45, %40, %23, %16
  %47 = add i32 %17, 1
  %48 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %8, i32 noundef %47, ptr noundef nonnull %3) #19, !range !885
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %16, !llvm.loop !1893

50:                                               ; preds = %40, %46, %11, %2
  %51 = phi i8 [ 0, %2 ], [ 0, %11 ], [ 1, %40 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_expression_by_pieces(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1894 !PGOFuncName !1895 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !866
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #21
  %8 = icmp eq ptr %4, null
  br i1 %8, label %9, label %11, !prof !1896

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @get_expr_type(ptr noundef %1) #19
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi ptr [ %10, %9 ], [ %4, %5 ]
  %13 = load i32, ptr %1, align 8, !tbaa !844
  switch i32 %13, label %190 [
    i32 0, label %14
    i32 3, label %17
    i32 2, label %20
    i32 1, label %24
  ], !prof !1897

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !850
  br label %84

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !850
  br label %84

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !850
  %23 = tail call fastcc ptr @create_component_ref_by_pieces(ptr noundef %0, ptr noundef %22, ptr noundef %2, ptr noundef %3) #19
  br label %84

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !850
  %27 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 16
  %30 = trunc i32 %29 to i16
  switch i16 %30, label %190 [
    i16 2, label %31
    i16 1, label %68
  ], !prof !1898

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !866
  %34 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %33) #19
  %35 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 5, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !866
  %37 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %36) #19
  %38 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %34, ptr noundef %2, ptr noundef %3) #19
  %39 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %37, ptr noundef %2, ptr noundef %3) #19
  %40 = icmp ne ptr %38, null
  %41 = icmp ne ptr %39, null
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %190, !prof !1899

43:                                               ; preds = %31
  %44 = load i32, ptr %27, align 4
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 66
  br i1 %46, label %47, label %51, !prof !1900

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !1607
  %50 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %49, ptr noundef nonnull %38) #20
  br label %58

51:                                               ; preds = %43
  %52 = load ptr, ptr %32, align 8, !tbaa !866
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !850
  %55 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %54, ptr noundef nonnull %38) #20
  %56 = load ptr, ptr %35, align 8, !tbaa !866
  %57 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  br label %58

58:                                               ; preds = %47, %51
  %59 = phi ptr [ @sizetype_tab, %47 ], [ %57, %51 ]
  %60 = phi ptr [ %50, %47 ], [ %55, %51 ]
  %61 = load ptr, ptr %59, align 8, !tbaa !850
  %62 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %61, ptr noundef nonnull %39) #20
  %63 = load i32, ptr %27, align 4
  %64 = and i32 %63, 65535
  %65 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !1607
  %67 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %64, ptr noundef %66, ptr noundef %60, ptr noundef %62) #20
  br label %84

68:                                               ; preds = %24
  %69 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !866
  %71 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %70) #19
  %72 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %71, ptr noundef %2, ptr noundef %3) #19
  %73 = icmp eq ptr %72, null
  br i1 %73, label %190, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr %69, align 8, !tbaa !866
  %76 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !850
  %78 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %77, ptr noundef nonnull %72) #20
  %79 = load i32, ptr %27, align 4
  %80 = and i32 %79, 65535
  %81 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !1607
  %83 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %80, ptr noundef %82, ptr noundef %78) #20
  br label %84

84:                                               ; preds = %74, %58, %20, %17, %14
  %85 = phi ptr [ %23, %20 ], [ %19, %17 ], [ %16, %14 ], [ %83, %74 ], [ %67, %58 ]
  %86 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !850
  %88 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %12, ptr noundef %87) #20
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %92, !prof !1896

90:                                               ; preds = %84
  %91 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %12, ptr noundef nonnull %85) #20
  br label %92

92:                                               ; preds = %90, %84
  %93 = phi ptr [ %85, %84 ], [ %91, %90 ]
  %94 = tail call ptr @unshare_expr(ptr noundef %93) #20
  %95 = call ptr @force_gimple_operand(ptr noundef %94, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef null) #20
  %96 = load ptr, ptr %6, align 8, !tbaa !866
  %97 = icmp eq ptr %96, null
  br i1 %97, label %133, label %98, !prof !1879

98:                                               ; preds = %92
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %96) #19
  %99 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !895
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
  store ptr %105, ptr %110, align 8, !tbaa !1162
  %111 = call i32 @get_next_value_id() #20
  %112 = call ptr @VN_INFO(ptr noundef nonnull %105) #20
  %113 = getelementptr inbounds %struct.vn_ssa_aux, ptr %112, i64 0, i32 2
  store i32 %111, ptr %113, align 8, !tbaa !852
  %114 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %105) #19
  %115 = call ptr @VN_INFO(ptr noundef nonnull %105) #20
  %116 = getelementptr inbounds %struct.vn_ssa_aux, ptr %115, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !852
  call void @add_to_value(i32 noundef %117, ptr noundef %114) #19
  %118 = load i8, ptr @in_fre, align 1, !tbaa !850
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %109
  %121 = load ptr, ptr %102, align 8, !tbaa !1012
  %122 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %121, i64 0, i32 6
  %123 = load ptr, ptr %122, align 8, !tbaa !1144
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %123, ptr noundef %114) #19
  br label %124

124:                                              ; preds = %120, %109
  %125 = load ptr, ptr %102, align 8, !tbaa !1012
  %126 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %125, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !1019
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %127, ptr noundef %114) #19
  br label %128

128:                                              ; preds = %124, %103
  call void @mark_symbols_for_renaming(ptr noundef %104) #20
  call fastcc void @gsi_next(ptr noundef nonnull %7) #19
  %129 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !895
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %103, label %131, !llvm.loop !1901

131:                                              ; preds = %128, %98
  %132 = load ptr, ptr %6, align 8, !tbaa !866
  call void @gimple_seq_add_seq(ptr noundef %2, ptr noundef %132) #20
  br label %133

133:                                              ; preds = %131, %92
  %134 = load ptr, ptr @pretemp, align 8, !tbaa !866
  %135 = icmp eq ptr %134, null
  br i1 %135, label %140, label %136, !prof !1902

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.tree_common, ptr %134, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !850
  %139 = icmp eq ptr %12, %138
  br i1 %139, label %143, label %140, !prof !1903

140:                                              ; preds = %136, %133
  %141 = call ptr @create_tmp_var(ptr noundef %12, ptr noundef nonnull @.str.42) #20
  store ptr %141, ptr @pretemp, align 8, !tbaa !866
  call fastcc void @get_var_ann(ptr noundef %141) #19
  %142 = load ptr, ptr @pretemp, align 8, !tbaa !866
  br label %143

143:                                              ; preds = %140, %136
  %144 = phi ptr [ %142, %140 ], [ %134, %136 ]
  %145 = call zeroext i8 @add_referenced_var(ptr noundef %144) #20
  %146 = load i64, ptr %12, align 8
  %147 = trunc i64 %146 to i32
  %148 = and i32 %147, 65535
  %149 = add nsw i32 %148, -13
  %150 = icmp ult i32 %149, 2
  br i1 %150, label %151, label %155, !prof !1904

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
  store ptr %157, ptr %158, align 8, !tbaa !1162
  %159 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %1) #19
  %160 = call ptr @VN_INFO(ptr noundef %157) #20
  %161 = getelementptr inbounds %struct.vn_ssa_aux, ptr %160, i64 0, i32 2
  store i32 %159, ptr %161, align 8, !tbaa !852
  %162 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %157) #19
  call void @add_to_value(i32 noundef %159, ptr noundef %162) #19
  %163 = load i8, ptr @in_fre, align 1, !tbaa !850
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %170, !prof !1879

165:                                              ; preds = %155
  %166 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !1012
  %168 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %167, i64 0, i32 6
  %169 = load ptr, ptr %168, align 8, !tbaa !1144
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %169, ptr noundef %162) #19
  br label %170

170:                                              ; preds = %165, %155
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !1012
  %173 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %172, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !1019
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %174, ptr noundef %162) #19
  %175 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 1), align 4, !tbaa !1024
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 1), align 4, !tbaa !1024
  %177 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %178 = icmp eq ptr %177, null
  br i1 %178, label %190, label %179, !prof !1879

179:                                              ; preds = %170
  %180 = load i32, ptr @dump_flags, align 4, !tbaa !888
  %181 = and i32 %180, 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %179
  %184 = call i64 @fwrite(ptr nonnull @.str.55, i64 9, i64 1, ptr nonnull %177)
  %185 = load ptr, ptr @dump_file, align 8, !tbaa !866
  call void @print_gimple_stmt(ptr noundef %185, ptr noundef %156, i32 noundef 0, i32 noundef 0) #20
  %186 = load ptr, ptr @dump_file, align 8, !tbaa !866
  %187 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %188 = load i32, ptr %187, align 8, !tbaa !1016
  %189 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef nonnull @.str.56, i32 noundef %188) #19
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
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !880 !PGOFuncName !1905 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #19
  store ptr %3, ptr %0, align 8, !tbaa !1373
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !1392
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !1385
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #19
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !1393
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
define internal fastcc ptr @create_component_ref_by_pieces(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1906 !PGOFuncName !1907 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !tbaa !888
  %6 = call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_or_generate_expression(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1908 !PGOFuncName !1909 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1012
  %9 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1019
  %11 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  %12 = tail call fastcc ptr @bitmap_find_leader(ptr noundef %10, i32 noundef %11, ptr noundef %3) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14, !prof !1910

14:                                               ; preds = %4
  %15 = load i32, ptr %12, align 8, !tbaa !844
  switch i32 %15, label %19 [
    i32 0, label %16
    i32 3, label %16
  ], !prof !1911

16:                                               ; preds = %14, %14
  %17 = getelementptr inbounds %struct.pre_expr_d, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !850
  br label %19

19:                                               ; preds = %16, %14, %4
  %20 = phi ptr [ null, %4 ], [ null, %14 ], [ %18, %16 ]
  %21 = icmp ne ptr %20, null
  %22 = load i8, ptr @in_fre, align 1
  %23 = icmp ne i8 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %49, label %25, !prof !1132

25:                                               ; preds = %19
  %26 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  %27 = load ptr, ptr @value_expressions, align 8
  %28 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %27, i32 noundef %26) #19
  %29 = load ptr, ptr %28, align 8, !tbaa !871
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %29, ptr noundef nonnull %6) #19
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !range !895
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %25, %37
  %33 = load i32, ptr %6, align 4, !tbaa !888
  %34 = tail call fastcc ptr @expression_for_id(i32 noundef %33) #19
  %35 = load i32, ptr %34, align 8, !tbaa !844
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %38 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !range !895
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %32, !llvm.loop !1912

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
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1894 !PGOFuncName !1913 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #19
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4, !prof !1896

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !1879

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !850
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_component_ref_by_pieces_1(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1894 !PGOFuncName !1914 {
  %6 = getelementptr inbounds %struct.vn_reference_s, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !884
  %8 = load i32, ptr %2, align 4, !tbaa !888
  %9 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %7, i32 noundef %8) #19
  %10 = add i32 %8, 1
  store i32 %10, ptr %2, align 4, !tbaa !888
  %11 = load i32, ptr %9, align 8, !tbaa !886
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
  ], !prof !1915

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !890
  %15 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %7) #19
  %16 = add i32 %15, -1
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = tail call ptr @xmalloc(i64 noundef %18) #20
  %20 = load i32, ptr %2, align 4, !tbaa !888
  %21 = load ptr, ptr %6, align 8, !tbaa !884
  %22 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %21) #19
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %12, %24
  %25 = phi i32 [ %29, %24 ], [ 0, %12 ]
  %26 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds ptr, ptr %19, i64 %27
  store ptr %26, ptr %28, align 8, !tbaa !866
  %29 = add i32 %25, 1
  %30 = load i32, ptr %2, align 4, !tbaa !888
  %31 = load ptr, ptr %6, align 8, !tbaa !884
  %32 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %31) #19
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %24, label %34, !llvm.loop !1916

34:                                               ; preds = %24, %12
  %35 = phi i32 [ 0, %12 ], [ %29, %24 ]
  %36 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !1614
  %38 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !889
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
  store ptr %51, ptr %54, align 8, !tbaa !850
  br label %210

55:                                               ; preds = %5
  %56 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %7, i32 noundef %10) #19
  %57 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %58 = icmp eq ptr %57, null
  br i1 %58, label %210, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !889
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
  %72 = load i32, ptr %71, align 4, !tbaa !888
  %73 = icmp eq i32 %72, 3
  %74 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !1614
  %76 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !890
  %78 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !891
  %80 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %56, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !890
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
  %89 = load ptr, ptr %88, align 8, !tbaa !889
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
  %96 = load ptr, ptr %88, align 8, !tbaa !889
  br label %210

97:                                               ; preds = %87, %5, %5, %5
  %98 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %99 = icmp eq ptr %98, null
  br i1 %99, label %210, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %9, align 8, !tbaa !886
  %102 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !1614
  %104 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %101, ptr noundef %103, ptr noundef nonnull %98) #20
  br label %210

105:                                              ; preds = %5, %5, %5
  %106 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %107 = icmp eq ptr %106, null
  br i1 %107, label %210, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !1614
  %111 = tail call ptr @build_pointer_type(ptr noundef %110) #20
  %112 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %111, ptr noundef nonnull %106) #20
  %113 = load i32, ptr %9, align 8, !tbaa !886
  %114 = icmp eq i32 %113, 49
  %115 = load ptr, ptr %109, align 8, !tbaa !1614
  br i1 %114, label %116, label %120

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !890
  %119 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 49, ptr noundef %115, ptr noundef %112, ptr noundef %118) #20
  br label %210

120:                                              ; preds = %108
  %121 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %113, ptr noundef %115, ptr noundef %112) #20
  br label %210

122:                                              ; preds = %5
  %123 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %124 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !889
  %126 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %125) #19
  %127 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !890
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
  %139 = load ptr, ptr %138, align 8, !tbaa !1614
  %140 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 42, ptr noundef %139, ptr noundef nonnull %123, ptr noundef nonnull %132, ptr noundef nonnull %135) #20
  br label %210

141:                                              ; preds = %5, %5
  %142 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !889
  %144 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !890
  %146 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 4
  %147 = load ptr, ptr %146, align 8, !tbaa !891
  %148 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %149 = icmp eq ptr %148, null
  br i1 %149, label %210, label %150, !prof !1900

150:                                              ; preds = %141
  %151 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %143) #19
  %152 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %151, ptr noundef %3, ptr noundef %4) #19
  %153 = icmp eq ptr %152, null
  br i1 %153, label %210, label %154, !prof !1900

154:                                              ; preds = %150
  %155 = icmp eq ptr %145, null
  br i1 %155, label %160, label %156, !prof !1900

156:                                              ; preds = %154
  %157 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef nonnull %145) #19
  %158 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %157, ptr noundef %3, ptr noundef %4) #19
  %159 = icmp eq ptr %158, null
  br i1 %159, label %210, label %160, !prof !1900

160:                                              ; preds = %156, %154
  %161 = phi ptr [ %158, %156 ], [ null, %154 ]
  %162 = icmp eq ptr %147, null
  br i1 %162, label %177, label %163, !prof !1900

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !850
  %166 = getelementptr inbounds %struct.tree_common, ptr %165, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !850
  %168 = getelementptr inbounds %struct.tree_type, ptr %167, i64 0, i32 7
  %169 = load i32, ptr %168, align 8, !tbaa !850
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
  %179 = load i32, ptr %9, align 8, !tbaa !886
  %180 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !1614
  %182 = tail call ptr @build4_stat(i32 noundef %179, ptr noundef %181, ptr noundef nonnull %148, ptr noundef nonnull %152, ptr noundef %161, ptr noundef %178) #20
  br label %210

183:                                              ; preds = %5
  %184 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !890
  %186 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %187 = icmp eq ptr %186, null
  br i1 %187, label %210, label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !889
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
  %199 = load ptr, ptr %198, align 8, !tbaa !850
  %200 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 41, ptr noundef %199, ptr noundef nonnull %186, ptr noundef %190, ptr noundef %197) #20
  br label %210

201:                                              ; preds = %5
  %202 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !889
  %204 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %203) #19
  %205 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %204, ptr noundef %3, ptr noundef %4) #19
  br label %210

206:                                              ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %207 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !889
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
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1894 !PGOFuncName !1917 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !895
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !1896

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !1879

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1665, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !866
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 !prof !1274 !PGOFuncName !1918 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #19, !range !895
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11, !prof !1919

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #19, !range !895
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !1920

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
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !1921 !PGOFuncName !1922 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !895
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !1169

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #20
  tail call void @update_stmt_operands(ptr noundef %0) #20
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @can_PRE_operation(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !880 !PGOFuncName !1923 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !888
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
define internal fastcc noundef ptr @do_SCCVN_insertion(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !880 !PGOFuncName !1924 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !866
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
  %13 = load ptr, ptr %4, align 8, !tbaa !866
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
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !1197 !PGOFuncName !1925 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !1926 !PGOFuncName !1927 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !1926 !PGOFuncName !1928 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1926 !PGOFuncName !1929 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_false(ptr noundef %0) unnamed_addr #0 !prof !880 !PGOFuncName !1930 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !866
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #19
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !866
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #19
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_true(ptr noundef %0) unnamed_addr #0 !prof !880 !PGOFuncName !1931 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !866
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #19
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !866
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #19
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_fn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !880 !PGOFuncName !1932 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #7 !prof !1933 !PGOFuncName !1934 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 !prof !880 !PGOFuncName !1935 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #19
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19, !range !895
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #19, !range !1035
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #19
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19, !range !895
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !1936

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !880 !PGOFuncName !1937 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1357
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !866
  store ptr null, ptr %2, align 8, !tbaa !866
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1357
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !850
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #19, !range !895
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !866
  %19 = load ptr, ptr %5, align 8, !tbaa !1357
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !850
  store ptr %21, ptr %2, align 8, !tbaa !866
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !888
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
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !880 !PGOFuncName !1938 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1221
  store ptr %1, ptr %4, align 8, !tbaa !866
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1274 !PGOFuncName !1939 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1035
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !1404 !PGOFuncName !1940 {
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
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !880 !PGOFuncName !1941 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !880 !PGOFuncName !1942 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !880 !PGOFuncName !1943 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1035
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #17 !prof !880 !PGOFuncName !1944 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1945
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1357
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !1357
  store ptr %2, ptr %6, align 8, !tbaa !1945
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !880 !PGOFuncName !1946 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !1945
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #19
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !880 !PGOFuncName !1947 {
  store ptr %1, ptr %0, align 8, !tbaa !1945
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1357
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1357
  store ptr %0, ptr %4, align 8, !tbaa !1945
  store ptr %0, ptr %3, align 8, !tbaa !1357
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_bitmap_set_t_heap_free() unnamed_addr #12 !prof !1006 !PGOFuncName !1948 {
  %1 = load ptr, ptr @value_expressions, align 8, !tbaa !866
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1010

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @value_expressions, align 8, !tbaa !866
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_unsigned_heap_free() unnamed_addr #12 !prof !1006 !PGOFuncName !1949 {
  %1 = load ptr, ptr @name_to_id, align 8, !tbaa !866
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1010

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @name_to_id, align 8, !tbaa !866
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #2

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
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!837}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836}
!35 = !{ptr @add_to_value, ptr @get_expr_value_id, i64 669521}
!36 = !{ptr @add_to_value, ptr @fancy_abort, i64 1}
!37 = !{ptr @add_to_value, ptr @VEC_bitmap_set_t_base_length, i64 669521}
!38 = !{ptr @add_to_value, ptr @VEC_bitmap_set_t_heap_safe_grow_cleared, i64 156}
!39 = !{ptr @add_to_value, ptr @VEC_bitmap_set_t_base_index, i64 669521}
!40 = !{ptr @add_to_value, ptr @bitmap_set_new, i64 379980}
!41 = !{ptr @add_to_value, ptr @VEC_bitmap_set_t_base_replace, i64 379980}
!42 = !{ptr @add_to_value, ptr @bitmap_insert_into_set_1, i64 669521}
!43 = !{ptr @get_expr_value_id, ptr @get_constant_value_id, i64 2270}
!44 = !{ptr @get_expr_value_id, ptr @get_or_alloc_constant_value_id, i64 1}
!45 = !{ptr @get_expr_value_id, ptr @add_to_value, i64 1}
!46 = !{ptr @get_expr_value_id, ptr @VN_INFO, i64 1934526}
!47 = !{ptr @get_expr_value_id, ptr @fancy_abort, i64 1}
!48 = !{ptr @VEC_bitmap_set_t_heap_safe_grow_cleared, ptr @VEC_bitmap_set_t_base_length, i64 903}
!49 = !{ptr @VEC_bitmap_set_t_heap_safe_grow_cleared, ptr @VEC_bitmap_set_t_heap_safe_grow, i64 903}
!50 = !{ptr @VEC_bitmap_set_t_heap_safe_grow_cleared, ptr @VEC_bitmap_set_t_base_address, i64 903}
!51 = !{ptr @bitmap_set_new, ptr @pool_alloc, i64 2395552}
!52 = !{ptr @bitmap_set_new, ptr @bitmap_obstack_alloc_stat, i64 4791104}
!53 = !{ptr @bitmap_insert_into_set_1, ptr @value_id_constant_p, i64 205269}
!54 = !{ptr @bitmap_insert_into_set_1, ptr @bitmap_set_bit, i64 1749576}
!55 = !{ptr @bitmap_insert_into_set_1, ptr @get_or_alloc_expression_id, i64 874788}
!56 = !{ptr @do_pre, ptr @execute_pre, i64 38}
!57 = !{ptr @execute_fre, ptr @execute_pre, i64 38}
!58 = !{ptr @VEC_bitmap_set_t_heap_safe_grow, ptr @VEC_bitmap_set_t_heap_reserve_exact, i64 903}
!59 = !{ptr @VEC_bitmap_set_t_heap_reserve_exact, ptr @VEC_bitmap_set_t_base_space, i64 903}
!60 = !{ptr @VEC_bitmap_set_t_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 826}
!61 = !{ptr @get_or_alloc_expression_id, ptr @lookup_expression_id, i64 1132917}
!62 = !{ptr @get_or_alloc_expression_id, ptr @alloc_expression_id, i64 233455}
!63 = !{ptr @lookup_expression_id, ptr @VEC_unsigned_base_length, i64 1495979}
!64 = !{ptr @lookup_expression_id, ptr @VEC_unsigned_base_index, i64 1495867}
!65 = !{ptr @lookup_expression_id, ptr @htab_find_slot, i64 518525}
!66 = !{ptr @alloc_expression_id, ptr @fancy_abort, i64 3}
!67 = !{ptr @alloc_expression_id, ptr @VEC_pre_expr_heap_safe_push, i64 637950}
!68 = !{ptr @alloc_expression_id, ptr @VEC_tree_base_length, i64 808598}
!69 = !{ptr @alloc_expression_id, ptr @VEC_unsigned_heap_reserve, i64 404299}
!70 = !{ptr @alloc_expression_id, ptr @VEC_unsigned_heap_safe_grow_cleared, i64 404299}
!71 = !{ptr @alloc_expression_id, ptr @VEC_unsigned_base_index, i64 404299}
!72 = !{ptr @alloc_expression_id, ptr @VEC_unsigned_base_replace, i64 404299}
!73 = !{ptr @alloc_expression_id, ptr @htab_find_slot, i64 233651}
!74 = !{ptr @VEC_pre_expr_heap_safe_push, ptr @VEC_pre_expr_heap_reserve, i64 657447}
!75 = !{ptr @VEC_pre_expr_heap_safe_push, ptr @VEC_pre_expr_base_quick_push, i64 657447}
!76 = !{ptr @VEC_unsigned_heap_reserve, ptr @VEC_unsigned_base_space, i64 404299}
!77 = !{ptr @VEC_unsigned_heap_reserve, ptr @vec_heap_o_reserve, i64 154}
!78 = !{ptr @VEC_unsigned_heap_safe_grow_cleared, ptr @VEC_unsigned_base_length, i64 404299}
!79 = !{ptr @VEC_unsigned_heap_safe_grow_cleared, ptr @VEC_unsigned_heap_safe_grow, i64 404299}
!80 = !{ptr @VEC_unsigned_heap_safe_grow_cleared, ptr @VEC_unsigned_base_address, i64 404299}
!81 = !{ptr @VEC_pre_expr_heap_reserve, ptr @VEC_pre_expr_base_space, i64 657447}
!82 = !{ptr @VEC_pre_expr_heap_reserve, ptr @vec_heap_p_reserve, i64 878}
!83 = !{ptr @VEC_unsigned_heap_safe_grow, ptr @VEC_unsigned_heap_reserve_exact, i64 404299}
!84 = !{ptr @VEC_unsigned_heap_reserve_exact, ptr @VEC_unsigned_base_space, i64 404299}
!85 = !{ptr @VEC_unsigned_heap_reserve_exact, ptr @vec_heap_o_reserve_exact, i64 1}
!86 = !{ptr @expression_for_id, ptr @VEC_pre_expr_base_index, i64 938560}
!87 = !{ptr @execute_pre, ptr @optimize_function_for_speed_p, i64 75}
!88 = !{ptr @execute_pre, ptr @loop_optimizer_init, i64 38}
!89 = !{ptr @execute_pre, ptr @run_scc_vn, i64 76}
!90 = !{ptr @execute_pre, ptr @init_pre, i64 75}
!91 = !{ptr @execute_pre, ptr @scev_initialize, i64 75}
!92 = !{ptr @execute_pre, ptr @compute_avail, i64 75}
!93 = !{ptr @execute_pre, ptr @print_bitmap_set, i64 40}
!94 = !{ptr @execute_pre, ptr @compute_antic, i64 30}
!95 = !{ptr @execute_pre, ptr @insert, i64 30}
!96 = !{ptr @execute_pre, ptr @eliminate, i64 75}
!97 = !{ptr @execute_pre, ptr @statistics_counter_event, i64 375}
!98 = !{ptr @execute_pre, ptr @remove_fake_exit_edges, i64 75}
!99 = !{ptr @execute_pre, ptr @gsi_commit_edge_inserts, i64 75}
!100 = !{ptr @execute_pre, ptr @clear_expression_ids, i64 75}
!101 = !{ptr @execute_pre, ptr @free_scc_vn, i64 75}
!102 = !{ptr @execute_pre, ptr @remove_dead_inserted_code, i64 38}
!103 = !{ptr @execute_pre, ptr @scev_finalize, i64 75}
!104 = !{ptr @execute_pre, ptr @fini_pre, i64 75}
!105 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_base_length, i64 407}
!106 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_heap_alloc, i64 38}
!107 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_base_iterate, i64 352}
!108 = !{ptr @remove_dead_inserted_code, ptr @gimple_plf, i64 276}
!109 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_base_quick_push, i64 236}
!110 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_base_pop, i64 331}
!111 = !{ptr @remove_dead_inserted_code, ptr @gimple_code, i64 334}
!112 = !{ptr @remove_dead_inserted_code, ptr @gimple_phi_num_args, i64 382}
!113 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_heap_reserve, i64 86}
!114 = !{ptr @remove_dead_inserted_code, ptr @gimple_phi_arg_imm_use_ptr, i64 210}
!115 = !{ptr @remove_dead_inserted_code, ptr @get_use_from_ptr, i64 210}
!116 = !{ptr @remove_dead_inserted_code, ptr @mark_operand_necessary, i64 635}
!117 = !{ptr @remove_dead_inserted_code, ptr @op_iter_init_tree, i64 245}
!118 = !{ptr @remove_dead_inserted_code, ptr @op_iter_done, i64 671}
!119 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_heap_safe_push, i64 95}
!120 = !{ptr @remove_dead_inserted_code, ptr @op_iter_next_tree, i64 426}
!121 = !{ptr @remove_dead_inserted_code, ptr @gsi_for_stmt, i64 3}
!122 = !{ptr @remove_dead_inserted_code, ptr @remove_phi_node, i64 2}
!123 = !{ptr @remove_dead_inserted_code, ptr @gsi_remove, i64 1}
!124 = !{ptr @remove_dead_inserted_code, ptr @release_defs, i64 1}
!125 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_heap_free, i64 38}
!126 = !{ptr @init_pre, ptr @VEC_pre_expr_heap_safe_push, i64 76}
!127 = !{ptr @init_pre, ptr @get_max_value_id, i64 152}
!128 = !{ptr @init_pre, ptr @VEC_bitmap_set_t_heap_alloc, i64 76}
!129 = !{ptr @init_pre, ptr @VEC_bitmap_set_t_heap_safe_grow_cleared, i64 76}
!130 = !{ptr @init_pre, ptr @connect_infinite_loops_to_exit, i64 76}
!131 = !{ptr @init_pre, ptr @xmalloc, i64 76}
!132 = !{ptr @init_pre, ptr @my_rev_post_order_compute, i64 76}
!133 = !{ptr @init_pre, ptr @xcalloc, i64 482387}
!134 = !{ptr @init_pre, ptr @calculate_dominance_info, i64 152}
!135 = !{ptr @init_pre, ptr @bitmap_obstack_initialize, i64 76}
!136 = !{ptr @init_pre, ptr @bitmap_obstack_alloc_stat, i64 152}
!137 = !{ptr @init_pre, ptr @htab_create, i64 152}
!138 = !{ptr @init_pre, ptr @VEC_tree_base_length, i64 76}
!139 = !{ptr @init_pre, ptr @create_alloc_pool, i64 152}
!140 = !{ptr @init_pre, ptr @bitmap_set_new, i64 1929548}
!141 = !{ptr @compute_avail, ptr @VEC_tree_base_length, i64 781765}
!142 = !{ptr @compute_avail, ptr @VEC_tree_base_index, i64 781689}
!143 = !{ptr @compute_avail, ptr @has_zero_uses, i64 151}
!144 = !{ptr @compute_avail, ptr @is_gimple_reg, i64 150}
!145 = !{ptr @compute_avail, ptr @get_or_alloc_expr_for_name, i64 395855}
!146 = !{ptr @compute_avail, ptr @get_expr_value_id, i64 649566}
!147 = !{ptr @compute_avail, ptr @add_to_value, i64 649566}
!148 = !{ptr @compute_avail, ptr @bitmap_insert_into_set, i64 191704}
!149 = !{ptr @compute_avail, ptr @bitmap_value_insert_into_set, i64 521370}
!150 = !{ptr @compute_avail, ptr @xmalloc, i64 76}
!151 = !{ptr @compute_avail, ptr @first_dom_son, i64 482313}
!152 = !{ptr @compute_avail, ptr @next_dom_son, i64 482238}
!153 = !{ptr @compute_avail, ptr @get_immediate_dominator, i64 482237}
!154 = !{ptr @compute_avail, ptr @bitmap_set_copy, i64 482236}
!155 = !{ptr @compute_avail, ptr @gsi_start_phis, i64 482237}
!156 = !{ptr @compute_avail, ptr @gsi_end_p, i64 1743078}
!157 = !{ptr @compute_avail, ptr @gsi_stmt, i64 778604}
!158 = !{ptr @compute_avail, ptr @make_values_for_phi, i64 91616}
!159 = !{ptr @compute_avail, ptr @gsi_next, i64 778604}
!160 = !{ptr @compute_avail, ptr @gsi_start_bb, i64 482237}
!161 = !{ptr @compute_avail, ptr @gimple_set_uid, i64 686988}
!162 = !{ptr @compute_avail, ptr @is_gimple_call, i64 686988}
!163 = !{ptr @compute_avail, ptr @stmt_ends_bb_p, i64 136463}
!164 = !{ptr @compute_avail, ptr @gimple_call_flags, i64 136338}
!165 = !{ptr @compute_avail, ptr @op_iter_init_tree, i64 696862}
!166 = !{ptr @compute_avail, ptr @op_iter_done, i64 1112220}
!167 = !{ptr @compute_avail, ptr @op_iter_next_tree, i64 415358}
!168 = !{ptr @compute_avail, ptr @gimple_has_volatile_ops, i64 686988}
!169 = !{ptr @compute_avail, ptr @stmt_could_throw_p, i64 686987}
!170 = !{ptr @compute_avail, ptr @gimple_code, i64 686986}
!171 = !{ptr @compute_avail, ptr @add_to_exp_gen, i64 115901}
!172 = !{ptr @compute_avail, ptr @can_value_number_call, i64 136463}
!173 = !{ptr @compute_avail, ptr @copy_reference_ops_from_call, i64 1}
!174 = !{ptr @compute_avail, ptr @gimple_vuse, i64 168851}
!175 = !{ptr @compute_avail, ptr @gimple_expr_type, i64 85235}
!176 = !{ptr @compute_avail, ptr @vn_reference_lookup_pieces, i64 1}
!177 = !{ptr @compute_avail, ptr @VEC_vn_reference_op_s_heap_free, i64 1}
!178 = !{ptr @compute_avail, ptr @VEC_vn_reference_op_s_base_iterate, i64 391296}
!179 = !{ptr @compute_avail, ptr @pool_alloc, i64 253711}
!180 = !{ptr @compute_avail, ptr @get_or_alloc_expression_id, i64 253711}
!181 = !{ptr @compute_avail, ptr @gimple_assign_rhs_code, i64 349116}
!182 = !{ptr @compute_avail, ptr @gimple_num_ops, i64 85234}
!183 = !{ptr @compute_avail, ptr @gimple_assign_rhs1, i64 254084}
!184 = !{ptr @compute_avail, ptr @gimple_assign_rhs2, i64 85234}
!185 = !{ptr @compute_avail, ptr @vn_nary_op_lookup_pieces, i64 85234}
!186 = !{ptr @compute_avail, ptr @vn_reference_lookup, i64 168850}
!187 = !{ptr @compute_avail, ptr @free, i64 76}
!188 = !{ptr @compute_antic, ptr @sbitmap_alloc, i64 62}
!189 = !{ptr @compute_antic, ptr @sbitmap_zero, i64 31}
!190 = !{ptr @compute_antic, ptr @ei_start_1, i64 6421}
!191 = !{ptr @compute_antic, ptr @ei_cond, i64 16154}
!192 = !{ptr @compute_antic, ptr @SET_BIT, i64 1}
!193 = !{ptr @compute_antic, ptr @ei_next, i64 9733}
!194 = !{ptr @compute_antic, ptr @bitmap_set_new, i64 12904}
!195 = !{ptr @compute_antic, ptr @sbitmap_ones, i64 61}
!196 = !{ptr @compute_antic, ptr @VEC_basic_block_base_index, i64 15255}
!197 = !{ptr @compute_antic, ptr @compute_antic_aux, i64 8429}
!198 = !{ptr @compute_antic, ptr @statistics_histogram_event, i64 61}
!199 = !{ptr @compute_antic, ptr @mark_dfs_back_edges, i64 30}
!200 = !{ptr @compute_antic, ptr @compute_partial_antic_aux, i64 6826}
!201 = !{ptr @compute_antic, ptr @free, i64 124}
!202 = !{ptr @insert, ptr @bitmap_set_new, i64 6481}
!203 = !{ptr @insert, ptr @insert_aux, i64 61}
!204 = !{ptr @insert, ptr @statistics_histogram_event, i64 31}
!205 = !{ptr @eliminate, ptr @VEC_gimple_base_iterate, i64 77}
!206 = !{ptr @eliminate, ptr @gsi_start_bb, i64 482237}
!207 = !{ptr @eliminate, ptr @gsi_end_p, i64 1743152}
!208 = !{ptr @eliminate, ptr @gsi_stmt, i64 794657}
!209 = !{ptr @eliminate, ptr @gimple_has_lhs, i64 686988}
!210 = !{ptr @eliminate, ptr @gimple_get_lhs, i64 1187077}
!211 = !{ptr @eliminate, ptr @gimple_assign_ssa_name_copy_p, i64 395778}
!212 = !{ptr @eliminate, ptr @gimple_assign_single_p, i64 1082686}
!213 = !{ptr @eliminate, ptr @gimple_assign_rhs1, i64 337715}
!214 = !{ptr @eliminate, ptr @is_gimple_min_invariant, i64 168867}
!215 = !{ptr @eliminate, ptr @gimple_has_volatile_ops, i64 395697}
!216 = !{ptr @eliminate, ptr @has_zero_uses, i64 395696}
!217 = !{ptr @eliminate, ptr @get_or_alloc_expr_for_name, i64 398487}
!218 = !{ptr @eliminate, ptr @get_expr_value_id, i64 398487}
!219 = !{ptr @eliminate, ptr @bitmap_find_leader, i64 398487}
!220 = !{ptr @eliminate, ptr @fancy_abort, i64 3}
!221 = !{ptr @eliminate, ptr @VN_INFO, i64 1039806}
!222 = !{ptr @eliminate, ptr @useless_type_conversion_p, i64 15979}
!223 = !{ptr @eliminate, ptr @vn_get_expr_for, i64 1}
!224 = !{ptr @eliminate, ptr @can_PRE_operation, i64 1}
!225 = !{ptr @eliminate, ptr @do_SCCVN_insertion, i64 1}
!226 = !{ptr @eliminate, ptr @may_propagate_copy, i64 1}
!227 = !{ptr @eliminate, ptr @gimple_set_plf, i64 15977}
!228 = !{ptr @eliminate, ptr @gimple_expr_type, i64 15978}
!229 = !{ptr @eliminate, ptr @fold_convert_loc, i64 1}
!230 = !{ptr @eliminate, ptr @propagate_tree_value_into_stmt, i64 15979}
!231 = !{ptr @eliminate, ptr @update_stmt, i64 15980}
!232 = !{ptr @eliminate, ptr @maybe_clean_or_replace_eh_stmt, i64 15978}
!233 = !{ptr @eliminate, ptr @gimple_bb, i64 1}
!234 = !{ptr @eliminate, ptr @bitmap_set_bit, i64 1}
!235 = !{ptr @eliminate, ptr @gimple_assign_lhs, i64 412}
!236 = !{ptr @eliminate, ptr @is_gimple_reg, i64 92021}
!237 = !{ptr @eliminate, ptr @gimple_vuse, i64 79}
!238 = !{ptr @eliminate, ptr @vn_reference_lookup, i64 79}
!239 = !{ptr @eliminate, ptr @operand_equal_p, i64 1}
!240 = !{ptr @eliminate, ptr @VEC_gimple_heap_safe_push, i64 2}
!241 = !{ptr @eliminate, ptr @gimple_code, i64 978372}
!242 = !{ptr @eliminate, ptr @gimple_cond_lhs, i64 280640}
!243 = !{ptr @eliminate, ptr @gimple_cond_rhs, i64 280640}
!244 = !{ptr @eliminate, ptr @gimple_cond_code, i64 280640}
!245 = !{ptr @eliminate, ptr @fold_binary_loc, i64 280640}
!246 = !{ptr @eliminate, ptr @integer_zerop, i64 1}
!247 = !{ptr @eliminate, ptr @gimple_cond_make_false, i64 1}
!248 = !{ptr @eliminate, ptr @gimple_call_fn, i64 136464}
!249 = !{ptr @eliminate, ptr @gsi_next, i64 778677}
!250 = !{ptr @eliminate, ptr @gsi_start_phis, i64 482237}
!251 = !{ptr @eliminate, ptr @gimple_phi_result_ptr, i64 91690}
!252 = !{ptr @eliminate, ptr @get_def_from_ptr, i64 91690}
!253 = !{ptr @eliminate, ptr @gimple_phi_num_args, i64 91690}
!254 = !{ptr @eliminate, ptr @bitmap_bit_p, i64 3039}
!255 = !{ptr @eliminate, ptr @remove_phi_node, i64 1}
!256 = !{ptr @eliminate, ptr @gimple_build_assign_stat, i64 1}
!257 = !{ptr @eliminate, ptr @gsi_after_labels, i64 1}
!258 = !{ptr @eliminate, ptr @gsi_insert_before, i64 1}
!259 = !{ptr @eliminate, ptr @gsi_for_stmt, i64 1}
!260 = !{ptr @eliminate, ptr @unlink_stmt_vdef, i64 1}
!261 = !{ptr @eliminate, ptr @gsi_remove, i64 1}
!262 = !{ptr @eliminate, ptr @release_defs, i64 1}
!263 = !{ptr @eliminate, ptr @VEC_gimple_heap_free, i64 76}
!264 = !{ptr @clear_expression_ids, ptr @VEC_pre_expr_heap_free, i64 76}
!265 = !{ptr @fini_pre, ptr @free, i64 482463}
!266 = !{ptr @fini_pre, ptr @VEC_bitmap_set_t_heap_free, i64 76}
!267 = !{ptr @fini_pre, ptr @VEC_gimple_heap_free, i64 152}
!268 = !{ptr @fini_pre, ptr @bitmap_obstack_release, i64 76}
!269 = !{ptr @fini_pre, ptr @free_alloc_pool, i64 152}
!270 = !{ptr @fini_pre, ptr @htab_delete, i64 152}
!271 = !{ptr @fini_pre, ptr @VEC_unsigned_heap_free, i64 76}
!272 = !{ptr @fini_pre, ptr @free_dominance_info, i64 76}
!273 = !{ptr @fini_pre, ptr @gimple_purge_all_dead_eh_edges, i64 1}
!274 = !{ptr @fini_pre, ptr @cleanup_tree_cfg, i64 1}
!275 = !{ptr @fini_pre, ptr @bitmap_obstack_free, i64 76}
!276 = !{ptr @fini_pre, ptr @loop_optimizer_finalize, i64 38}
!277 = !{ptr @VEC_gimple_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 38}
!278 = !{ptr @VEC_gimple_heap_reserve, ptr @VEC_gimple_base_space, i64 326}
!279 = !{ptr @VEC_gimple_heap_reserve, ptr @vec_heap_p_reserve, i64 70}
!280 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 4677}
!281 = !{ptr @mark_operand_necessary, ptr @fancy_abort, i64 2}
!282 = !{ptr @mark_operand_necessary, ptr @gimple_plf, i64 591}
!283 = !{ptr @mark_operand_necessary, ptr @gimple_nop_p, i64 506}
!284 = !{ptr @mark_operand_necessary, ptr @gimple_set_plf, i64 265}
!285 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 706278}
!286 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 706278}
!287 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_heap_reserve, i64 238}
!288 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_base_quick_push, i64 238}
!289 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 20272}
!290 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 400986}
!291 = !{ptr @VEC_gimple_heap_free, ptr @free, i64 63}
!292 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!293 = !{ptr @gimple_nop_p, ptr @gimple_code, i64 8744}
!294 = !{ptr @op_iter_init, ptr @fancy_abort, i64 1}
!295 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 696024}
!296 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 405487}
!297 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 10254}
!298 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 10001}
!299 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 696025}
!300 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 411734}
!301 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 10253}
!302 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 187401}
!303 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 2440387}
!304 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 1696066}
!305 = !{ptr @VEC_bitmap_set_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 76}
!306 = !{ptr @my_rev_post_order_compute, ptr @xmalloc, i64 76}
!307 = !{ptr @my_rev_post_order_compute, ptr @sbitmap_alloc, i64 76}
!308 = !{ptr @my_rev_post_order_compute, ptr @sbitmap_zero, i64 76}
!309 = !{ptr @my_rev_post_order_compute, ptr @ei_start_1, i64 482310}
!310 = !{ptr @my_rev_post_order_compute, ptr @ei_edge, i64 2501820}
!311 = !{ptr @my_rev_post_order_compute, ptr @SET_BIT, i64 482235}
!312 = !{ptr @my_rev_post_order_compute, ptr @VEC_edge_base_length, i64 482235}
!313 = !{ptr @my_rev_post_order_compute, ptr @ei_one_before_end_p, i64 1537352}
!314 = !{ptr @my_rev_post_order_compute, ptr @ei_next, i64 286366}
!315 = !{ptr @my_rev_post_order_compute, ptr @free, i64 228}
!316 = !{ptr @expr_pred_trans_eq, ptr @pre_expr_eq, i64 2831}
!317 = !{ptr @pre_expr_hash, ptr @vn_hash_constant_with_type, i64 2467}
!318 = !{ptr @pre_expr_hash, ptr @fancy_abort, i64 1}
!319 = !{ptr @pre_expr_eq, ptr @vn_constant_eq_with_type, i64 2073}
!320 = !{ptr @pre_expr_eq, ptr @vn_nary_op_eq, i64 93714}
!321 = !{ptr @pre_expr_eq, ptr @vn_reference_eq, i64 203787}
!322 = !{ptr @pre_expr_eq, ptr @fancy_abort, i64 1}
!323 = !{ptr @ei_edge, ptr @ei_container, i64 5140339}
!324 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 2570170}
!325 = !{ptr @ei_one_before_end_p, ptr @ei_container, i64 3115163}
!326 = !{ptr @ei_one_before_end_p, ptr @VEC_edge_base_length, i64 1557582}
!327 = !{ptr @ei_next, ptr @ei_container, i64 650267}
!328 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 325134}
!329 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!330 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!331 = !{ptr @vn_hash_constant_with_type, ptr @iterative_hash_expr, i64 2466}
!332 = !{ptr @vn_constant_eq_with_type, ptr @expressions_equal_p, i64 2072}
!333 = !{ptr @vn_constant_eq_with_type, ptr @types_compatible_p, i64 2071}
!334 = !{ptr @has_zero_uses, ptr @has_zero_uses_1, i64 1}
!335 = !{ptr @get_or_alloc_expr_for_name, ptr @lookup_expression_id, i64 874479}
!336 = !{ptr @get_or_alloc_expr_for_name, ptr @expression_for_id, i64 470180}
!337 = !{ptr @get_or_alloc_expr_for_name, ptr @pool_alloc, i64 404299}
!338 = !{ptr @get_or_alloc_expr_for_name, ptr @alloc_expression_id, i64 404299}
!339 = !{ptr @bitmap_insert_into_set, ptr @get_expr_value_id, i64 205268}
!340 = !{ptr @bitmap_insert_into_set, ptr @bitmap_insert_into_set_1, i64 205268}
!341 = !{ptr @bitmap_value_insert_into_set, ptr @get_expr_value_id, i64 601071}
!342 = !{ptr @bitmap_value_insert_into_set, ptr @value_id_constant_p, i64 601071}
!343 = !{ptr @bitmap_value_insert_into_set, ptr @bitmap_set_bit, i64 1130921}
!344 = !{ptr @bitmap_set_copy, ptr @bitmap_copy, i64 987706}
!345 = !{ptr @make_values_for_phi, ptr @gimple_phi_result, i64 92820}
!346 = !{ptr @make_values_for_phi, ptr @is_gimple_reg, i64 92820}
!347 = !{ptr @make_values_for_phi, ptr @get_or_alloc_expr_for_name, i64 9899}
!348 = !{ptr @make_values_for_phi, ptr @get_expr_value_id, i64 9899}
!349 = !{ptr @make_values_for_phi, ptr @add_to_value, i64 9899}
!350 = !{ptr @make_values_for_phi, ptr @bitmap_insert_into_set, i64 3004}
!351 = !{ptr @make_values_for_phi, ptr @bitmap_value_insert_into_set, i64 3004}
!352 = !{ptr @make_values_for_phi, ptr @gimple_phi_num_args, i64 70177}
!353 = !{ptr @make_values_for_phi, ptr @gimple_phi_arg_def, i64 67330}
!354 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 982244}
!355 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 982244}
!356 = !{ptr @is_gimple_call, ptr @gimple_code, i64 1124695}
!357 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 1096931}
!358 = !{ptr @add_to_exp_gen, ptr @ssa_undefined_value_p, i64 58402}
!359 = !{ptr @add_to_exp_gen, ptr @get_or_alloc_expr_for_name, i64 58402}
!360 = !{ptr @add_to_exp_gen, ptr @bitmap_value_insert_into_set, i64 58402}
!361 = !{ptr @can_value_number_call, ptr @gimple_call_flags, i64 138258}
!362 = !{ptr @gimple_expr_type, ptr @gimple_code, i64 102543}
!363 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs_code, i64 102542}
!364 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs1, i64 7}
!365 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 102535}
!366 = !{ptr @VEC_vn_reference_op_s_heap_free, ptr @free, i64 617}
!367 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 456253}
!368 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 456253}
!369 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 186459}
!370 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 786051}
!371 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 86355}
!372 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 86216}
!373 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 67353}
!374 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 67353}
!375 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 138258}
!376 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 1717855}
!377 = !{ptr @gimple_op, ptr @gimple_ops, i64 1717854}
!378 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 1717921}
!379 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!380 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 1717921}
!381 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 1717921}
!382 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 456253}
!383 = !{ptr @ei_cond, ptr @ei_end_p, i64 52275}
!384 = !{ptr @ei_cond, ptr @ei_edge, i64 35426}
!385 = !{ptr @compute_antic_aux, ptr @bitmap_set_new, i64 8701}
!386 = !{ptr @compute_antic_aux, ptr @VEC_edge_base_length, i64 8700}
!387 = !{ptr @compute_antic_aux, ptr @single_succ_p, i64 8699}
!388 = !{ptr @compute_antic_aux, ptr @single_succ, i64 4878}
!389 = !{ptr @compute_antic_aux, ptr @defer_or_phi_translate_block, i64 4878}
!390 = !{ptr @compute_antic_aux, ptr @VEC_basic_block_heap_alloc, i64 3821}
!391 = !{ptr @compute_antic_aux, ptr @ei_start_1, i64 5460}
!392 = !{ptr @compute_antic_aux, ptr @ei_cond, i64 18944}
!393 = !{ptr @compute_antic_aux, ptr @VEC_basic_block_base_quick_push, i64 5742}
!394 = !{ptr @compute_antic_aux, ptr @ei_next, i64 13484}
!395 = !{ptr @compute_antic_aux, ptr @phi_nodes, i64 9561}
!396 = !{ptr @compute_antic_aux, ptr @gimple_seq_empty_p, i64 9561}
!397 = !{ptr @compute_antic_aux, ptr @phi_translate_set, i64 2}
!398 = !{ptr @compute_antic_aux, ptr @bitmap_set_copy, i64 3819}
!399 = !{ptr @compute_antic_aux, ptr @VEC_basic_block_base_iterate, i64 9561}
!400 = !{ptr @compute_antic_aux, ptr @bitmap_set_and, i64 5741}
!401 = !{ptr @compute_antic_aux, ptr @bitmap_set_free, i64 26101}
!402 = !{ptr @compute_antic_aux, ptr @VEC_basic_block_heap_free, i64 3821}
!403 = !{ptr @compute_antic_aux, ptr @SET_BIT, i64 5561}
!404 = !{ptr @compute_antic_aux, ptr @bitmap_set_subtract, i64 13740}
!405 = !{ptr @compute_antic_aux, ptr @bmp_iter_set_init, i64 6870}
!406 = !{ptr @compute_antic_aux, ptr @bmp_iter_set, i64 8297}
!407 = !{ptr @compute_antic_aux, ptr @expression_for_id, i64 1427}
!408 = !{ptr @compute_antic_aux, ptr @bitmap_value_insert_into_set, i64 1427}
!409 = !{ptr @compute_antic_aux, ptr @bmp_iter_next, i64 1427}
!410 = !{ptr @compute_antic_aux, ptr @clean, i64 6870}
!411 = !{ptr @compute_antic_aux, ptr @bitmap_set_equal, i64 6869}
!412 = !{ptr @compute_antic_aux, ptr @RESET_BIT, i64 5231}
!413 = !{ptr @compute_partial_antic_aux, ptr @single_succ_p, i64 14527}
!414 = !{ptr @compute_partial_antic_aux, ptr @single_succ, i64 8545}
!415 = !{ptr @compute_partial_antic_aux, ptr @bitmap_count_bits, i64 4273}
!416 = !{ptr @compute_partial_antic_aux, ptr @bitmap_set_new, i64 7265}
!417 = !{ptr @compute_partial_antic_aux, ptr @VEC_edge_base_length, i64 7264}
!418 = !{ptr @compute_partial_antic_aux, ptr @single_succ_edge, i64 4272}
!419 = !{ptr @compute_partial_antic_aux, ptr @phi_translate_set, i64 4272}
!420 = !{ptr @compute_partial_antic_aux, ptr @VEC_basic_block_heap_alloc, i64 2991}
!421 = !{ptr @compute_partial_antic_aux, ptr @ei_start_1, i64 3631}
!422 = !{ptr @compute_partial_antic_aux, ptr @ei_cond, i64 12309}
!423 = !{ptr @compute_partial_antic_aux, ptr @VEC_basic_block_base_quick_push, i64 7901}
!424 = !{ptr @compute_partial_antic_aux, ptr @ei_next, i64 8678}
!425 = !{ptr @compute_partial_antic_aux, ptr @VEC_basic_block_base_length, i64 2991}
!426 = !{ptr @compute_partial_antic_aux, ptr @VEC_basic_block_base_iterate, i64 10889}
!427 = !{ptr @compute_partial_antic_aux, ptr @bmp_iter_set_init, i64 15798}
!428 = !{ptr @compute_partial_antic_aux, ptr @bmp_iter_set, i64 21398}
!429 = !{ptr @compute_partial_antic_aux, ptr @expression_for_id, i64 5600}
!430 = !{ptr @compute_partial_antic_aux, ptr @bitmap_value_insert_into_set, i64 5600}
!431 = !{ptr @compute_partial_antic_aux, ptr @bmp_iter_next, i64 5600}
!432 = !{ptr @compute_partial_antic_aux, ptr @phi_nodes, i64 7899}
!433 = !{ptr @compute_partial_antic_aux, ptr @gimple_seq_empty_p, i64 7899}
!434 = !{ptr @compute_partial_antic_aux, ptr @bitmap_set_free, i64 14531}
!435 = !{ptr @compute_partial_antic_aux, ptr @VEC_basic_block_heap_free, i64 2991}
!436 = !{ptr @compute_partial_antic_aux, ptr @bitmap_set_subtract, i64 7264}
!437 = !{ptr @compute_partial_antic_aux, ptr @bitmap_ior_into, i64 14528}
!438 = !{ptr @compute_partial_antic_aux, ptr @bitmap_set_subtract_values, i64 7264}
!439 = !{ptr @compute_partial_antic_aux, ptr @dependent_clean, i64 7264}
!440 = !{ptr @compute_partial_antic_aux, ptr @bitmap_set_equal, i64 7264}
!441 = !{ptr @compute_partial_antic_aux, ptr @SET_BIT, i64 1416}
!442 = !{ptr @compute_partial_antic_aux, ptr @RESET_BIT, i64 6624}
!443 = !{ptr @ei_end_p, ptr @ei_container, i64 104549}
!444 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 52275}
!445 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 40934}
!446 = !{ptr @single_succ, ptr @single_succ_edge, i64 13427}
!447 = !{ptr @defer_or_phi_translate_block, ptr @SET_BIT, i64 1}
!448 = !{ptr @defer_or_phi_translate_block, ptr @phi_translate_set, i64 4878}
!449 = !{ptr @VEC_basic_block_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 6814}
!450 = !{ptr @VEC_basic_block_heap_free, ptr @free, i64 6813}
!451 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!452 = !{ptr @phi_translate_set, ptr @phi_nodes, i64 9153}
!453 = !{ptr @phi_translate_set, ptr @gimple_seq_empty_p, i64 9153}
!454 = !{ptr @phi_translate_set, ptr @bitmap_set_copy, i64 1451}
!455 = !{ptr @phi_translate_set, ptr @sorted_array_from_bitmap_set, i64 7702}
!456 = !{ptr @phi_translate_set, ptr @VEC_pre_expr_base_iterate, i64 12711}
!457 = !{ptr @phi_translate_set, ptr @phi_translate, i64 5009}
!458 = !{ptr @phi_translate_set, ptr @bitmap_value_replace_in_set, i64 789}
!459 = !{ptr @phi_translate_set, ptr @bitmap_value_insert_into_set, i64 4043}
!460 = !{ptr @phi_translate_set, ptr @VEC_pre_expr_heap_free, i64 7702}
!461 = !{ptr @bitmap_set_and, ptr @bitmap_obstack_alloc_stat, i64 5743}
!462 = !{ptr @bitmap_set_and, ptr @bitmap_and_into, i64 5743}
!463 = !{ptr @bitmap_set_and, ptr @bitmap_copy, i64 5743}
!464 = !{ptr @bitmap_set_and, ptr @bmp_iter_set_init, i64 5743}
!465 = !{ptr @bitmap_set_and, ptr @bmp_iter_set, i64 7391}
!466 = !{ptr @bitmap_set_and, ptr @expression_for_id, i64 1648}
!467 = !{ptr @bitmap_set_and, ptr @get_expr_value_id, i64 1648}
!468 = !{ptr @bitmap_set_and, ptr @bitmap_bit_p, i64 1648}
!469 = !{ptr @bitmap_set_and, ptr @bitmap_clear_bit, i64 1500}
!470 = !{ptr @bitmap_set_and, ptr @bmp_iter_next, i64 1648}
!471 = !{ptr @bitmap_set_and, ptr @bitmap_obstack_free, i64 5743}
!472 = !{ptr @bitmap_set_free, ptr @bitmap_obstack_free, i64 81270}
!473 = !{ptr @bitmap_set_subtract, ptr @bitmap_set_new, i64 24668}
!474 = !{ptr @bitmap_set_subtract, ptr @bitmap_and_compl, i64 24668}
!475 = !{ptr @bitmap_set_subtract, ptr @bmp_iter_set_init, i64 24668}
!476 = !{ptr @bitmap_set_subtract, ptr @bmp_iter_set, i64 38392}
!477 = !{ptr @bitmap_set_subtract, ptr @expression_for_id, i64 13724}
!478 = !{ptr @bitmap_set_subtract, ptr @get_expr_value_id, i64 13724}
!479 = !{ptr @bitmap_set_subtract, ptr @bitmap_set_bit, i64 13724}
!480 = !{ptr @bitmap_set_subtract, ptr @bmp_iter_next, i64 13724}
!481 = !{ptr @clean, ptr @sorted_array_from_bitmap_set, i64 8701}
!482 = !{ptr @clean, ptr @VEC_pre_expr_base_iterate, i64 16659}
!483 = !{ptr @clean, ptr @valid_in_sets, i64 7958}
!484 = !{ptr @clean, ptr @bitmap_remove_from_set, i64 2274}
!485 = !{ptr @clean, ptr @VEC_pre_expr_heap_free, i64 8701}
!486 = !{ptr @bitmap_set_equal, ptr @bitmap_equal_p, i64 15967}
!487 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 17701}
!488 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!489 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 17701}
!490 = !{ptr @sorted_array_from_bitmap_set, ptr @bitmap_count_bits, i64 26082}
!491 = !{ptr @sorted_array_from_bitmap_set, ptr @VEC_pre_expr_heap_alloc, i64 26082}
!492 = !{ptr @sorted_array_from_bitmap_set, ptr @bmp_iter_set_init, i64 45503}
!493 = !{ptr @sorted_array_from_bitmap_set, ptr @bmp_iter_set, i64 98261}
!494 = !{ptr @sorted_array_from_bitmap_set, ptr @VEC_bitmap_set_t_base_index, i64 19421}
!495 = !{ptr @sorted_array_from_bitmap_set, ptr @bitmap_bit_p, i64 33337}
!496 = !{ptr @sorted_array_from_bitmap_set, ptr @expression_for_id, i64 19421}
!497 = !{ptr @sorted_array_from_bitmap_set, ptr @VEC_pre_expr_heap_safe_push, i64 19421}
!498 = !{ptr @sorted_array_from_bitmap_set, ptr @bmp_iter_next, i64 52758}
!499 = !{ptr @phi_translate, ptr @get_expr_value_id, i64 7252}
!500 = !{ptr @phi_translate, ptr @value_id_constant_p, i64 7252}
!501 = !{ptr @phi_translate, ptr @phi_trans_lookup, i64 4275}
!502 = !{ptr @phi_translate, ptr @phi_translate_1, i64 4421}
!503 = !{ptr @phi_translate, ptr @phi_trans_add, i64 1181}
!504 = !{ptr @bitmap_value_replace_in_set, ptr @get_expr_value_id, i64 28851}
!505 = !{ptr @bitmap_value_replace_in_set, ptr @bitmap_set_contains_value, i64 28851}
!506 = !{ptr @bitmap_value_replace_in_set, ptr @bitmap_set_replace_value, i64 20961}
!507 = !{ptr @bitmap_value_replace_in_set, ptr @bitmap_insert_into_set, i64 7890}
!508 = !{ptr @VEC_pre_expr_heap_free, ptr @free, i64 12251}
!509 = !{ptr @VEC_pre_expr_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 26082}
!510 = !{ptr @phi_trans_lookup, ptr @pre_expr_hash, i64 4277}
!511 = !{ptr @phi_trans_lookup, ptr @iterative_hash_hashval_t, i64 4277}
!512 = !{ptr @phi_trans_lookup, ptr @htab_find_slot_with_hash, i64 4277}
!513 = !{ptr @phi_translate_1, ptr @VN_INFO, i64 1316}
!514 = !{ptr @phi_translate_1, ptr @find_leader_in_sets, i64 679}
!515 = !{ptr @phi_translate_1, ptr @phi_translate, i64 679}
!516 = !{ptr @phi_translate_1, ptr @get_representative_for, i64 241}
!517 = !{ptr @phi_translate_1, ptr @vn_nary_op_lookup_pieces, i64 158}
!518 = !{ptr @phi_translate_1, ptr @is_gimple_min_invariant, i64 4575}
!519 = !{ptr @phi_translate_1, ptr @get_or_alloc_expr_for_constant, i64 2046}
!520 = !{ptr @phi_translate_1, ptr @pool_alloc, i64 1066}
!521 = !{ptr @phi_translate_1, ptr @fully_constant_expression, i64 1067}
!522 = !{ptr @phi_translate_1, ptr @get_next_value_id, i64 665}
!523 = !{ptr @phi_translate_1, ptr @get_max_value_id, i64 665}
!524 = !{ptr @phi_translate_1, ptr @VEC_bitmap_set_t_heap_safe_grow_cleared, i64 665}
!525 = !{ptr @phi_translate_1, ptr @vn_nary_op_insert_pieces, i64 97}
!526 = !{ptr @phi_translate_1, ptr @get_or_alloc_expression_id, i64 1062}
!527 = !{ptr @phi_translate_1, ptr @add_to_value, i64 1062}
!528 = !{ptr @phi_translate_1, ptr @VEC_vn_reference_op_s_base_iterate, i64 4721}
!529 = !{ptr @phi_translate_1, ptr @VEC_vn_reference_op_s_heap_copy, i64 1242}
!530 = !{ptr @phi_translate_1, ptr @VEC_vn_reference_op_s_base_replace, i64 3533}
!531 = !{ptr @phi_translate_1, ptr @VEC_vn_reference_op_s_base_index, i64 1}
!532 = !{ptr @phi_translate_1, ptr @vn_reference_fold_indirect, i64 1}
!533 = !{ptr @phi_translate_1, ptr @VEC_vn_reference_op_s_base_length, i64 1188}
!534 = !{ptr @phi_translate_1, ptr @VEC_vn_reference_op_s_heap_free, i64 1524}
!535 = !{ptr @phi_translate_1, ptr @translate_vuse_through_block, i64 980}
!536 = !{ptr @phi_translate_1, ptr @vn_reference_lookup_pieces, i64 910}
!537 = !{ptr @phi_translate_1, ptr @fancy_abort, i64 2}
!538 = !{ptr @phi_translate_1, ptr @vn_reference_insert_pieces, i64 569}
!539 = !{ptr @phi_translate_1, ptr @gimple_code, i64 2975}
!540 = !{ptr @phi_translate_1, ptr @gimple_bb, i64 2686}
!541 = !{ptr @phi_translate_1, ptr @find_edge, i64 2683}
!542 = !{ptr @phi_translate_1, ptr @gimple_phi_arg_imm_use_ptr, i64 2682}
!543 = !{ptr @phi_translate_1, ptr @get_use_from_ptr, i64 2682}
!544 = !{ptr @phi_translate_1, ptr @ssa_undefined_value_p, i64 637}
!545 = !{ptr @phi_translate_1, ptr @get_or_alloc_expr_for_name, i64 637}
!546 = !{ptr @phi_trans_add, ptr @xmalloc, i64 1181}
!547 = !{ptr @phi_trans_add, ptr @pre_expr_hash, i64 1181}
!548 = !{ptr @phi_trans_add, ptr @iterative_hash_hashval_t, i64 1181}
!549 = !{ptr @phi_trans_add, ptr @htab_find_slot_with_hash, i64 1181}
!550 = !{ptr @phi_trans_add, ptr @free, i64 1}
!551 = !{ptr @find_leader_in_sets, ptr @bitmap_find_leader, i64 678}
!552 = !{ptr @get_representative_for, ptr @get_expr_value_id, i64 221}
!553 = !{ptr @get_representative_for, ptr @VEC_bitmap_set_t_base_index, i64 204}
!554 = !{ptr @get_representative_for, ptr @bmp_iter_set_init, i64 204}
!555 = !{ptr @get_representative_for, ptr @bmp_iter_set, i64 357}
!556 = !{ptr @get_representative_for, ptr @expression_for_id, i64 296}
!557 = !{ptr @get_representative_for, ptr @bmp_iter_next, i64 153}
!558 = !{ptr @get_representative_for, ptr @fwrite, i64 3}
!559 = !{ptr @get_representative_for, ptr @print_pre_expr, i64 2}
!560 = !{ptr @get_representative_for, ptr @fputc, i64 2}
!561 = !{ptr @get_representative_for, ptr @get_expr_type, i64 62}
!562 = !{ptr @get_representative_for, ptr @create_tmp_var, i64 25}
!563 = !{ptr @get_representative_for, ptr @get_var_ann, i64 25}
!564 = !{ptr @get_representative_for, ptr @gimple_build_nop, i64 62}
!565 = !{ptr @get_representative_for, ptr @make_ssa_name, i64 62}
!566 = !{ptr @get_representative_for, ptr @VN_INFO_GET, i64 62}
!567 = !{ptr @get_representative_for, ptr @VN_INFO, i64 62}
!568 = !{ptr @get_representative_for, ptr @get_or_alloc_expr_for_name, i64 62}
!569 = !{ptr @get_representative_for, ptr @add_to_value, i64 62}
!570 = !{ptr @get_representative_for, ptr @print_generic_expr, i64 1}
!571 = !{ptr @get_or_alloc_expr_for_constant, ptr @lookup_expression_id, i64 2072}
!572 = !{ptr @get_or_alloc_expr_for_constant, ptr @expression_for_id, i64 1874}
!573 = !{ptr @get_or_alloc_expr_for_constant, ptr @pool_alloc, i64 198}
!574 = !{ptr @get_or_alloc_expr_for_constant, ptr @alloc_expression_id, i64 198}
!575 = !{ptr @get_or_alloc_expr_for_constant, ptr @get_or_alloc_constant_value_id, i64 198}
!576 = !{ptr @get_or_alloc_expr_for_constant, ptr @add_to_value, i64 198}
!577 = !{ptr @fully_constant_expression, ptr @is_gimple_min_invariant, i64 833}
!578 = !{ptr @fully_constant_expression, ptr @get_or_alloc_expr_for, i64 433}
!579 = !{ptr @fully_constant_expression, ptr @get_expr_value_id, i64 433}
!580 = !{ptr @fully_constant_expression, ptr @get_constant_for_value_id, i64 433}
!581 = !{ptr @fully_constant_expression, ptr @fold_convert_loc, i64 3}
!582 = !{ptr @fully_constant_expression, ptr @fold_binary_loc, i64 397}
!583 = !{ptr @fully_constant_expression, ptr @fold_unary_loc, i64 1}
!584 = !{ptr @fully_constant_expression, ptr @VEC_vn_reference_op_s_base_index, i64 2425}
!585 = !{ptr @fully_constant_expression, ptr @get_or_alloc_expr_for_constant, i64 1}
!586 = !{ptr @VEC_vn_reference_op_s_heap_copy, ptr @vec_heap_o_reserve_exact, i64 1187}
!587 = !{ptr @translate_vuse_through_block, ptr @gimple_bb, i64 989}
!588 = !{ptr @translate_vuse_through_block, ptr @ao_ref_init_from_vn_reference, i64 887}
!589 = !{ptr @translate_vuse_through_block, ptr @gimple_code, i64 893}
!590 = !{ptr @translate_vuse_through_block, ptr @stmt_may_clobber_ref_p_1, i64 7}
!591 = !{ptr @translate_vuse_through_block, ptr @gimple_vuse, i64 7}
!592 = !{ptr @translate_vuse_through_block, ptr @find_edge, i64 886}
!593 = !{ptr @translate_vuse_through_block, ptr @get_continuation_for_phi, i64 885}
!594 = !{ptr @translate_vuse_through_block, ptr @bitmap_obstack_free, i64 477}
!595 = !{ptr @translate_vuse_through_block, ptr @gimple_phi_arg_imm_use_ptr, i64 1771}
!596 = !{ptr @translate_vuse_through_block, ptr @get_use_from_ptr, i64 886}
!597 = !{ptr @bitmap_find_leader, ptr @value_id_constant_p, i64 406228}
!598 = !{ptr @bitmap_find_leader, ptr @VEC_bitmap_set_t_base_index, i64 404428}
!599 = !{ptr @bitmap_find_leader, ptr @bmp_iter_set_init, i64 25}
!600 = !{ptr @bitmap_find_leader, ptr @bmp_iter_set, i64 370}
!601 = !{ptr @bitmap_find_leader, ptr @expression_for_id, i64 401600}
!602 = !{ptr @bitmap_find_leader, ptr @bmp_iter_next, i64 346}
!603 = !{ptr @bitmap_find_leader, ptr @bitmap_set_contains_value, i64 406217}
!604 = !{ptr @bitmap_find_leader, ptr @bmp_iter_and_init, i64 404403}
!605 = !{ptr @bitmap_find_leader, ptr @bmp_iter_and, i64 404404}
!606 = !{ptr @bitmap_find_leader, ptr @gimple_code, i64 1}
!607 = !{ptr @bitmap_find_leader, ptr @gimple_bb, i64 2}
!608 = !{ptr @bitmap_find_leader, ptr @gimple_uid, i64 2}
!609 = !{ptr @bitmap_set_contains_value, ptr @value_id_constant_p, i64 469679}
!610 = !{ptr @bitmap_set_contains_value, ptr @bitmap_bit_p, i64 460049}
!611 = !{ptr @get_expr_type, ptr @fancy_abort, i64 1}
!612 = !{ptr @get_var_ann, ptr @create_var_ann, i64 82}
!613 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 159}
!614 = !{ptr @get_or_alloc_expr_for, ptr @get_or_alloc_expr_for_name, i64 441}
!615 = !{ptr @get_or_alloc_expr_for, ptr @is_gimple_min_invariant, i64 25}
!616 = !{ptr @get_or_alloc_expr_for, ptr @get_or_alloc_expr_for_constant, i64 24}
!617 = !{ptr @get_or_alloc_expr_for, ptr @vn_nary_op_lookup, i64 1}
!618 = !{ptr @get_or_alloc_expr_for, ptr @pool_alloc, i64 1}
!619 = !{ptr @get_or_alloc_expr_for, ptr @lookup_expression_id, i64 1}
!620 = !{ptr @get_constant_for_value_id, ptr @value_id_constant_p, i64 436}
!621 = !{ptr @get_constant_for_value_id, ptr @VEC_bitmap_set_t_base_index, i64 1}
!622 = !{ptr @get_constant_for_value_id, ptr @bmp_iter_set_init, i64 1}
!623 = !{ptr @get_constant_for_value_id, ptr @bmp_iter_set, i64 11}
!624 = !{ptr @get_constant_for_value_id, ptr @expression_for_id, i64 10}
!625 = !{ptr @get_constant_for_value_id, ptr @bmp_iter_next, i64 10}
!626 = !{ptr @bitmap_set_replace_value, ptr @value_id_constant_p, i64 20961}
!627 = !{ptr @bitmap_set_replace_value, ptr @bitmap_set_contains_value, i64 20960}
!628 = !{ptr @bitmap_set_replace_value, ptr @VEC_bitmap_set_t_base_index, i64 20959}
!629 = !{ptr @bitmap_set_replace_value, ptr @bmp_iter_set_init, i64 20959}
!630 = !{ptr @bitmap_set_replace_value, ptr @bmp_iter_set, i64 48673}
!631 = !{ptr @bitmap_set_replace_value, ptr @bitmap_bit_p, i64 48509}
!632 = !{ptr @bitmap_set_replace_value, ptr @bitmap_clear_bit, i64 20795}
!633 = !{ptr @bitmap_set_replace_value, ptr @get_expression_id, i64 20795}
!634 = !{ptr @bitmap_set_replace_value, ptr @bitmap_set_bit, i64 20795}
!635 = !{ptr @bitmap_set_replace_value, ptr @bmp_iter_next, i64 27714}
!636 = !{ptr @valid_in_sets, ptr @bitmap_set_contains_expr, i64 843}
!637 = !{ptr @valid_in_sets, ptr @lookup_expression_id, i64 4801}
!638 = !{ptr @valid_in_sets, ptr @get_expr_value_id, i64 5582}
!639 = !{ptr @valid_in_sets, ptr @bitmap_set_contains_value, i64 5582}
!640 = !{ptr @valid_in_sets, ptr @vn_nary_may_trap, i64 39}
!641 = !{ptr @valid_in_sets, ptr @VEC_vn_reference_op_s_base_iterate, i64 28350}
!642 = !{ptr @valid_in_sets, ptr @vro_valid_in_sets, i64 20116}
!643 = !{ptr @valid_in_sets, ptr @gimple_nop_p, i64 8233}
!644 = !{ptr @valid_in_sets, ptr @gimple_bb, i64 7977}
!645 = !{ptr @valid_in_sets, ptr @dominated_by_p, i64 5093}
!646 = !{ptr @valid_in_sets, ptr @value_dies_in_block_x, i64 8233}
!647 = !{ptr @valid_in_sets, ptr @fancy_abort, i64 1}
!648 = !{ptr @bitmap_remove_from_set, ptr @get_expr_value_id, i64 4582}
!649 = !{ptr @bitmap_remove_from_set, ptr @value_id_constant_p, i64 4582}
!650 = !{ptr @bitmap_remove_from_set, ptr @bitmap_clear_bit, i64 9162}
!651 = !{ptr @bitmap_remove_from_set, ptr @get_expression_id, i64 4581}
!652 = !{ptr @bitmap_set_contains_expr, ptr @get_expression_id, i64 842}
!653 = !{ptr @bitmap_set_contains_expr, ptr @bitmap_bit_p, i64 842}
!654 = !{ptr @vro_valid_in_sets, ptr @lookup_expression_id, i64 986}
!655 = !{ptr @vro_valid_in_sets, ptr @get_expr_value_id, i64 1219}
!656 = !{ptr @vro_valid_in_sets, ptr @bitmap_set_contains_value, i64 1219}
!657 = !{ptr @value_dies_in_block_x, ptr @get_expression_id, i64 8237}
!658 = !{ptr @value_dies_in_block_x, ptr @bitmap_bit_p, i64 8599}
!659 = !{ptr @value_dies_in_block_x, ptr @gsi_start_bb, i64 5082}
!660 = !{ptr @value_dies_in_block_x, ptr @gsi_end_p, i64 7663}
!661 = !{ptr @value_dies_in_block_x, ptr @gsi_stmt, i64 7217}
!662 = !{ptr @value_dies_in_block_x, ptr @gimple_vuse, i64 7217}
!663 = !{ptr @value_dies_in_block_x, ptr @gimple_vdef, i64 5557}
!664 = !{ptr @value_dies_in_block_x, ptr @ao_ref_init_from_vn_reference, i64 2323}
!665 = !{ptr @value_dies_in_block_x, ptr @stmt_may_clobber_ref_p_1, i64 2323}
!666 = !{ptr @value_dies_in_block_x, ptr @gsi_next, i64 2581}
!667 = !{ptr @value_dies_in_block_x, ptr @bitmap_obstack_alloc_stat, i64 2791}
!668 = !{ptr @value_dies_in_block_x, ptr @bitmap_set_bit, i64 7094}
!669 = !{ptr @bitmap_set_subtract_values, ptr @bitmap_obstack_alloc_stat, i64 7266}
!670 = !{ptr @bitmap_set_subtract_values, ptr @bitmap_copy, i64 7266}
!671 = !{ptr @bitmap_set_subtract_values, ptr @bmp_iter_set_init, i64 7266}
!672 = !{ptr @bitmap_set_subtract_values, ptr @bmp_iter_set, i64 12934}
!673 = !{ptr @bitmap_set_subtract_values, ptr @expression_for_id, i64 5668}
!674 = !{ptr @bitmap_set_subtract_values, ptr @get_expr_value_id, i64 5668}
!675 = !{ptr @bitmap_set_subtract_values, ptr @bitmap_set_contains_value, i64 5668}
!676 = !{ptr @bitmap_set_subtract_values, ptr @bitmap_remove_from_set, i64 463}
!677 = !{ptr @bitmap_set_subtract_values, ptr @bmp_iter_next, i64 5668}
!678 = !{ptr @bitmap_set_subtract_values, ptr @bitmap_obstack_free, i64 7266}
!679 = !{ptr @dependent_clean, ptr @sorted_array_from_bitmap_set, i64 7266}
!680 = !{ptr @dependent_clean, ptr @VEC_pre_expr_base_iterate, i64 12472}
!681 = !{ptr @dependent_clean, ptr @valid_in_sets, i64 5206}
!682 = !{ptr @dependent_clean, ptr @bitmap_remove_from_set, i64 1846}
!683 = !{ptr @dependent_clean, ptr @VEC_pre_expr_heap_free, i64 7266}
!684 = !{ptr @insert_aux, ptr @get_immediate_dominator, i64 13315}
!685 = !{ptr @insert_aux, ptr @bmp_iter_set_init, i64 13251}
!686 = !{ptr @insert_aux, ptr @bmp_iter_set, i64 27176}
!687 = !{ptr @insert_aux, ptr @expression_for_id, i64 13925}
!688 = !{ptr @insert_aux, ptr @bitmap_value_replace_in_set, i64 27850}
!689 = !{ptr @insert_aux, ptr @bmp_iter_next, i64 13925}
!690 = !{ptr @insert_aux, ptr @single_pred_p, i64 13252}
!691 = !{ptr @insert_aux, ptr @do_regular_insertion, i64 1207}
!692 = !{ptr @insert_aux, ptr @do_partial_partial_insertion, i64 1206}
!693 = !{ptr @insert_aux, ptr @first_dom_son, i64 13316}
!694 = !{ptr @insert_aux, ptr @insert_aux, i64 13254}
!695 = !{ptr @insert_aux, ptr @next_dom_son, i64 13254}
!696 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 13254}
!697 = !{ptr @do_regular_insertion, ptr @sorted_array_from_bitmap_set, i64 1206}
!698 = !{ptr @do_regular_insertion, ptr @VEC_pre_expr_base_iterate, i64 1998}
!699 = !{ptr @do_regular_insertion, ptr @get_expr_value_id, i64 1897}
!700 = !{ptr @do_regular_insertion, ptr @bitmap_set_contains_value, i64 1158}
!701 = !{ptr @do_regular_insertion, ptr @xcalloc, i64 541}
!702 = !{ptr @do_regular_insertion, ptr @ei_start_1, i64 541}
!703 = !{ptr @do_regular_insertion, ptr @ei_cond, i64 1822}
!704 = !{ptr @do_regular_insertion, ptr @fancy_abort, i64 1}
!705 = !{ptr @do_regular_insertion, ptr @phi_translate, i64 1282}
!706 = !{ptr @do_regular_insertion, ptr @fully_constant_expression, i64 1281}
!707 = !{ptr @do_regular_insertion, ptr @bitmap_find_leader, i64 1281}
!708 = !{ptr @do_regular_insertion, ptr @optimize_edge_for_speed_p, i64 121}
!709 = !{ptr @do_regular_insertion, ptr @pre_expr_eq, i64 46}
!710 = !{ptr @do_regular_insertion, ptr @ei_next, i64 1281}
!711 = !{ptr @do_regular_insertion, ptr @dbg_cnt, i64 539}
!712 = !{ptr @do_regular_insertion, ptr @get_expression_id, i64 532}
!713 = !{ptr @do_regular_insertion, ptr @insert_into_preds_of_block, i64 532}
!714 = !{ptr @do_regular_insertion, ptr @free, i64 541}
!715 = !{ptr @do_regular_insertion, ptr @VEC_pre_expr_heap_free, i64 1206}
!716 = !{ptr @do_partial_partial_insertion, ptr @sorted_array_from_bitmap_set, i64 1206}
!717 = !{ptr @do_partial_partial_insertion, ptr @VEC_pre_expr_base_iterate, i64 1663}
!718 = !{ptr @do_partial_partial_insertion, ptr @get_expr_value_id, i64 948}
!719 = !{ptr @do_partial_partial_insertion, ptr @bitmap_set_contains_value, i64 905}
!720 = !{ptr @do_partial_partial_insertion, ptr @xcalloc, i64 426}
!721 = !{ptr @do_partial_partial_insertion, ptr @ei_start_1, i64 426}
!722 = !{ptr @do_partial_partial_insertion, ptr @ei_cond, i64 500}
!723 = !{ptr @do_partial_partial_insertion, ptr @fancy_abort, i64 1}
!724 = !{ptr @do_partial_partial_insertion, ptr @phi_translate, i64 497}
!725 = !{ptr @do_partial_partial_insertion, ptr @fully_constant_expression, i64 494}
!726 = !{ptr @do_partial_partial_insertion, ptr @bitmap_find_leader, i64 494}
!727 = !{ptr @do_partial_partial_insertion, ptr @ei_next, i64 74}
!728 = !{ptr @do_partial_partial_insertion, ptr @dbg_cnt, i64 3}
!729 = !{ptr @do_partial_partial_insertion, ptr @get_expression_id, i64 2}
!730 = !{ptr @do_partial_partial_insertion, ptr @insert_into_preds_of_block, i64 2}
!731 = !{ptr @do_partial_partial_insertion, ptr @free, i64 426}
!732 = !{ptr @do_partial_partial_insertion, ptr @VEC_pre_expr_heap_free, i64 1206}
!733 = !{ptr @insert_into_preds_of_block, ptr @expression_for_id, i64 75}
!734 = !{ptr @insert_into_preds_of_block, ptr @get_expr_value_id, i64 75}
!735 = !{ptr @insert_into_preds_of_block, ptr @get_expr_type, i64 261}
!736 = !{ptr @insert_into_preds_of_block, ptr @VEC_edge_base_length, i64 1}
!737 = !{ptr @insert_into_preds_of_block, ptr @ei_start_1, i64 75}
!738 = !{ptr @insert_into_preds_of_block, ptr @ei_cond, i64 522}
!739 = !{ptr @insert_into_preds_of_block, ptr @create_expression_by_pieces, i64 65}
!740 = !{ptr @insert_into_preds_of_block, ptr @fancy_abort, i64 1}
!741 = !{ptr @insert_into_preds_of_block, ptr @gsi_insert_seq_on_edge, i64 66}
!742 = !{ptr @insert_into_preds_of_block, ptr @useless_type_conversion_p, i64 124}
!743 = !{ptr @insert_into_preds_of_block, ptr @fold_convert_loc, i64 1}
!744 = !{ptr @insert_into_preds_of_block, ptr @force_gimple_operand, i64 1}
!745 = !{ptr @insert_into_preds_of_block, ptr @VN_INFO, i64 77}
!746 = !{ptr @insert_into_preds_of_block, ptr @VN_INFO_GET, i64 75}
!747 = !{ptr @insert_into_preds_of_block, ptr @gsi_start, i64 1}
!748 = !{ptr @insert_into_preds_of_block, ptr @gsi_end_p, i64 8}
!749 = !{ptr @insert_into_preds_of_block, ptr @gsi_stmt, i64 7}
!750 = !{ptr @insert_into_preds_of_block, ptr @VEC_gimple_heap_safe_push, i64 81}
!751 = !{ptr @insert_into_preds_of_block, ptr @gimple_set_plf, i64 81}
!752 = !{ptr @insert_into_preds_of_block, ptr @gsi_next, i64 7}
!753 = !{ptr @insert_into_preds_of_block, ptr @get_or_alloc_expr_for_name, i64 140}
!754 = !{ptr @insert_into_preds_of_block, ptr @ei_next, i64 373}
!755 = !{ptr @insert_into_preds_of_block, ptr @create_tmp_var, i64 41}
!756 = !{ptr @insert_into_preds_of_block, ptr @get_var_ann, i64 41}
!757 = !{ptr @insert_into_preds_of_block, ptr @add_referenced_var, i64 74}
!758 = !{ptr @insert_into_preds_of_block, ptr @create_phi_node, i64 74}
!759 = !{ptr @insert_into_preds_of_block, ptr @gimple_phi_result, i64 296}
!760 = !{ptr @insert_into_preds_of_block, ptr @bitmap_set_bit, i64 74}
!761 = !{ptr @insert_into_preds_of_block, ptr @add_phi_arg, i64 185}
!762 = !{ptr @insert_into_preds_of_block, ptr @add_to_value, i64 74}
!763 = !{ptr @insert_into_preds_of_block, ptr @bitmap_insert_into_set, i64 148}
!764 = !{ptr @insert_into_preds_of_block, ptr @bitmap_value_replace_in_set, i64 74}
!765 = !{ptr @create_expression_by_pieces, ptr @get_expr_type, i64 1}
!766 = !{ptr @create_expression_by_pieces, ptr @create_component_ref_by_pieces, i64 57}
!767 = !{ptr @create_expression_by_pieces, ptr @get_or_alloc_expr_for, i64 11}
!768 = !{ptr @create_expression_by_pieces, ptr @find_or_generate_expression, i64 11}
!769 = !{ptr @create_expression_by_pieces, ptr @fold_convert_loc, i64 8}
!770 = !{ptr @create_expression_by_pieces, ptr @fold_build2_stat_loc, i64 4}
!771 = !{ptr @create_expression_by_pieces, ptr @useless_type_conversion_p, i64 63}
!772 = !{ptr @create_expression_by_pieces, ptr @unshare_expr, i64 63}
!773 = !{ptr @create_expression_by_pieces, ptr @force_gimple_operand, i64 63}
!774 = !{ptr @create_expression_by_pieces, ptr @gsi_start, i64 1}
!775 = !{ptr @create_expression_by_pieces, ptr @gsi_end_p, i64 12}
!776 = !{ptr @create_expression_by_pieces, ptr @gsi_stmt, i64 11}
!777 = !{ptr @create_expression_by_pieces, ptr @gimple_get_lhs, i64 11}
!778 = !{ptr @create_expression_by_pieces, ptr @VEC_gimple_heap_safe_push, i64 74}
!779 = !{ptr @create_expression_by_pieces, ptr @VN_INFO_GET, i64 69}
!780 = !{ptr @create_expression_by_pieces, ptr @get_next_value_id, i64 6}
!781 = !{ptr @create_expression_by_pieces, ptr @VN_INFO, i64 75}
!782 = !{ptr @create_expression_by_pieces, ptr @get_or_alloc_expr_for_name, i64 69}
!783 = !{ptr @create_expression_by_pieces, ptr @add_to_value, i64 69}
!784 = !{ptr @create_expression_by_pieces, ptr @bitmap_value_replace_in_set, i64 133}
!785 = !{ptr @create_expression_by_pieces, ptr @mark_symbols_for_renaming, i64 74}
!786 = !{ptr @create_expression_by_pieces, ptr @gsi_next, i64 11}
!787 = !{ptr @create_expression_by_pieces, ptr @gimple_seq_add_seq, i64 1}
!788 = !{ptr @create_expression_by_pieces, ptr @create_tmp_var, i64 7}
!789 = !{ptr @create_expression_by_pieces, ptr @get_var_ann, i64 7}
!790 = !{ptr @create_expression_by_pieces, ptr @add_referenced_var, i64 63}
!791 = !{ptr @create_expression_by_pieces, ptr @gimple_build_assign_stat, i64 63}
!792 = !{ptr @create_expression_by_pieces, ptr @make_ssa_name, i64 63}
!793 = !{ptr @create_expression_by_pieces, ptr @gimple_assign_set_lhs, i64 63}
!794 = !{ptr @create_expression_by_pieces, ptr @gimple_set_plf, i64 63}
!795 = !{ptr @create_expression_by_pieces, ptr @gimple_seq_add_stmt, i64 63}
!796 = !{ptr @create_expression_by_pieces, ptr @get_expr_value_id, i64 63}
!797 = !{ptr @create_component_ref_by_pieces, ptr @create_component_ref_by_pieces_1, i64 60}
!798 = !{ptr @find_or_generate_expression, ptr @get_expr_value_id, i64 30}
!799 = !{ptr @find_or_generate_expression, ptr @bitmap_find_leader, i64 30}
!800 = !{ptr @find_or_generate_expression, ptr @expression_for_id, i64 5}
!801 = !{ptr @find_or_generate_expression, ptr @bmp_iter_next, i64 5}
!802 = !{ptr @find_or_generate_expression, ptr @bmp_iter_set, i64 5}
!803 = !{ptr @gimple_assign_set_lhs, ptr @gimple_set_op, i64 66}
!804 = !{ptr @create_component_ref_by_pieces_1, ptr @VEC_vn_reference_op_s_base_index, i64 67}
!805 = !{ptr @create_component_ref_by_pieces_1, ptr @VEC_vn_reference_op_s_base_length, i64 13}
!806 = !{ptr @create_component_ref_by_pieces_1, ptr @xmalloc, i64 1}
!807 = !{ptr @create_component_ref_by_pieces_1, ptr @create_component_ref_by_pieces_1, i64 24}
!808 = !{ptr @create_component_ref_by_pieces_1, ptr @build_call_array_loc, i64 1}
!809 = !{ptr @create_component_ref_by_pieces_1, ptr @free, i64 1}
!810 = !{ptr @create_component_ref_by_pieces_1, ptr @fold_build1_stat_loc, i64 3}
!811 = !{ptr @create_component_ref_by_pieces_1, ptr @build_pointer_type, i64 1}
!812 = !{ptr @create_component_ref_by_pieces_1, ptr @fold_convert_loc, i64 1}
!813 = !{ptr @create_component_ref_by_pieces_1, ptr @fold_build2_stat_loc, i64 1}
!814 = !{ptr @create_component_ref_by_pieces_1, ptr @get_or_alloc_expr_for, i64 15}
!815 = !{ptr @create_component_ref_by_pieces_1, ptr @find_or_generate_expression, i64 13}
!816 = !{ptr @create_component_ref_by_pieces_1, ptr @size_int_kind, i64 3}
!817 = !{ptr @create_component_ref_by_pieces_1, ptr @size_binop_loc, i64 3}
!818 = !{ptr @create_component_ref_by_pieces_1, ptr @build4_stat, i64 3}
!819 = !{ptr @create_component_ref_by_pieces_1, ptr @fancy_abort, i64 1}
!820 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 66}
!821 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 65}
!822 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!823 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 66}
!824 = !{ptr @gimple_has_lhs, ptr @is_gimple_assign, i64 696025}
!825 = !{ptr @gimple_has_lhs, ptr @is_gimple_call, i64 428670}
!826 = !{ptr @gimple_has_lhs, ptr @gimple_call_lhs, i64 138258}
!827 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 16188}
!828 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 16187}
!829 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 16187}
!830 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 415}
!831 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 284328}
!832 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 284328}
!833 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 696025}
!834 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 138258}
!835 = !{ptr @VEC_bitmap_set_t_heap_free, ptr @free, i64 75}
!836 = !{ptr @VEC_unsigned_heap_free, ptr @free, i64 75}
!837 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!838 = !{!"function_entry_count", i64 669521}
!839 = !{!"branch_weights", i32 669522, i32 1}
!840 = !{!"branch_weights", i32 669367, i32 156}
!841 = !{!"branch_weights", i32 379981, i32 289542}
!842 = !{!"function_entry_count", i64 2618950}
!843 = !{!"tree-ssa-pre.c:get_expr_value_id"}
!844 = !{!845, !846, i64 0}
!845 = !{!"pre_expr_d", !846, i64 0, !846, i64 4, !847, i64 8}
!846 = !{!"int", !847, i64 0}
!847 = !{!"omnipotent char", !848, i64 0}
!848 = !{!"Simple C/C++ TBAA"}
!849 = !{!"branch_weights", i32 1, i32 2270, i32 1934530, i32 231679, i32 450475}
!850 = !{!847, !847, i64 0}
!851 = !{!"branch_weights", i32 1, i32 2270}
!852 = !{!853, !846, i64 16}
!853 = !{!"vn_ssa_aux", !854, i64 0, !854, i64 8, !846, i64 16, !846, i64 20, !846, i64 24, !846, i64 28, !846, i64 28, !846, i64 28, !846, i64 28, !846, i64 28}
!854 = !{!"any pointer", !847, i64 0}
!855 = !{!856, !846, i64 0}
!856 = !{!"vn_nary_op_s", !846, i64 0, !846, i64 4, !846, i64 6, !846, i64 8, !854, i64 16, !854, i64 24, !847, i64 32}
!857 = !{!858, !846, i64 0}
!858 = !{!"vn_reference_s", !846, i64 0, !846, i64 4, !854, i64 8, !846, i64 16, !854, i64 24, !854, i64 32, !854, i64 40}
!859 = !{!"function_entry_count", i64 671327}
!860 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_base_length"}
!861 = !{!"branch_weights", i32 1, i32 671328}
!862 = !{!863, !846, i64 0}
!863 = !{!"VEC_bitmap_set_t_base", !846, i64 0, !846, i64 4, !847, i64 8}
!864 = !{!"function_entry_count", i64 903}
!865 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_heap_safe_grow_cleared"}
!866 = !{!854, !854, i64 0}
!867 = !{!"function_entry_count", i64 1114525}
!868 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_base_index"}
!869 = !{!"function_entry_count", i64 2395552}
!870 = !{!"tree-ssa-pre.c:bitmap_set_new"}
!871 = !{!872, !854, i64 0}
!872 = !{!"bitmap_set", !854, i64 0, !854, i64 8}
!873 = !{!872, !854, i64 8}
!874 = !{!"function_entry_count", i64 379980}
!875 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_base_replace"}
!876 = !{!"function_entry_count", i64 874789}
!877 = !{!"tree-ssa-pre.c:bitmap_insert_into_set_1"}
!878 = !{!"branch_weights", i32 205269, i32 669522}
!879 = !{!"branch_weights", i32 205269, i32 1}
!880 = !{!"function_entry_count", i64 0}
!881 = !{!"tree-ssa-pre.c:print_pre_expr"}
!882 = distinct !{!882, !883}
!883 = !{!"llvm.loop.mustprogress"}
!884 = !{!858, !854, i64 32}
!885 = !{i32 0, i32 2}
!886 = !{!887, !846, i64 0}
!887 = !{!"vn_reference_op_struct", !846, i64 0, !854, i64 8, !854, i64 16, !854, i64 24, !854, i64 32}
!888 = !{!846, !846, i64 0}
!889 = !{!887, !854, i64 16}
!890 = !{!887, !854, i64 24}
!891 = !{!887, !854, i64 32}
!892 = distinct !{!892, !883}
!893 = !{!858, !854, i64 8}
!894 = !{!"tree-ssa-pre.c:print_bitmap_set"}
!895 = !{i8 0, i8 2}
!896 = distinct !{!896, !883}
!897 = !{!"function_entry_count", i64 38}
!898 = !{!"tree-ssa-pre.c:gate_pre"}
!899 = !{!"tree-ssa-pre.c:do_pre"}
!900 = !{!"tree-ssa-pre.c:gate_fre"}
!901 = !{!"tree-ssa-pre.c:execute_fre"}
!902 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_heap_safe_grow"}
!903 = !{!"branch_weights", i32 1, i32 904}
!904 = !{}
!905 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_base_address"}
!906 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_heap_reserve_exact"}
!907 = !{!"branch_weights", i32 828, i32 77}
!908 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_base_space"}
!909 = !{!863, !846, i64 4}
!910 = !{!"function_entry_count", i64 1132917}
!911 = !{!"tree-ssa-pre.c:get_or_alloc_expression_id"}
!912 = !{!"branch_weights", i32 233455, i32 899464}
!913 = !{!845, !846, i64 4}
!914 = !{!"function_entry_count", i64 2014504}
!915 = !{!"tree-ssa-pre.c:lookup_expression_id"}
!916 = !{!"branch_weights", i32 1495980, i32 518526}
!917 = !{!"branch_weights", i32 1495869, i32 112}
!918 = !{!"branch_weights", i32 233652, i32 284875}
!919 = !{!"function_entry_count", i64 637950}
!920 = !{!"tree-ssa-pre.c:alloc_expression_id"}
!921 = !{!"branch_weights", i32 1, i32 637951}
!922 = !{!"branch_weights", i32 404300, i32 233652}
!923 = !{!924, !854, i64 24}
!924 = !{!"function", !854, i64 0, !854, i64 8, !854, i64 16, !854, i64 24, !854, i64 32, !854, i64 40, !854, i64 48, !854, i64 56, !854, i64 64, !854, i64 72, !854, i64 80, !854, i64 88, !854, i64 96, !846, i64 104, !846, i64 108, !846, i64 112, !846, i64 116, !846, i64 120, !846, i64 124, !854, i64 128, !846, i64 136, !846, i64 137, !846, i64 138, !846, i64 138, !846, i64 138, !846, i64 138, !846, i64 138, !846, i64 138, !846, i64 138, !846, i64 139, !846, i64 139, !846, i64 139, !846, i64 139, !846, i64 139, !846, i64 139, !846, i64 139}
!925 = !{!926, !854, i64 16}
!926 = !{!"gimple_df", !854, i64 0, !854, i64 8, !854, i64 16, !854, i64 24, !927, i64 32, !927, i64 48, !854, i64 64, !854, i64 72, !854, i64 80, !854, i64 88, !846, i64 96, !928, i64 104}
!927 = !{!"pt_solution", !846, i64 0, !846, i64 0, !846, i64 0, !846, i64 0, !846, i64 0, !846, i64 0, !854, i64 8}
!928 = !{!"ssa_operands", !854, i64 0, !846, i64 8, !846, i64 12, !847, i64 16, !854, i64 24, !854, i64 32}
!929 = !{!"branch_weights", i32 404300, i32 1}
!930 = !{!"branch_weights", i32 233652, i32 1}
!931 = !{!"function_entry_count", i64 2304577}
!932 = !{!"tree-ssa-pre.c:VEC_unsigned_base_length"}
!933 = !{!"branch_weights", i32 77, i32 2304502}
!934 = !{!935, !846, i64 0}
!935 = !{!"VEC_unsigned_base", !846, i64 0, !846, i64 4, !847, i64 8}
!936 = !{!"function_entry_count", i64 1900167}
!937 = !{!"tree-ssa-pre.c:VEC_unsigned_base_index"}
!938 = !{!"function_entry_count", i64 657447}
!939 = !{!"tree-ssa-pre.c:VEC_pre_expr_heap_safe_push"}
!940 = !{!"function_entry_count", i64 404299}
!941 = !{!"tree-ssa-pre.c:VEC_unsigned_heap_reserve"}
!942 = !{!"branch_weights", i32 154, i32 404147}
!943 = !{!"function_entry_count", i64 1600724}
!944 = !{!"tree-ssa-pre.c:VEC_tree_base_length"}
!945 = !{!"branch_weights", i32 1, i32 1600725}
!946 = !{!947, !846, i64 0}
!947 = !{!"VEC_tree_base", !846, i64 0, !846, i64 4, !847, i64 8}
!948 = !{!"tree-ssa-pre.c:VEC_unsigned_heap_safe_grow_cleared"}
!949 = !{!"tree-ssa-pre.c:VEC_unsigned_base_replace"}
!950 = !{!"tree-ssa-pre.c:VEC_pre_expr_heap_reserve"}
!951 = !{!"branch_weights", i32 878, i32 656571}
!952 = !{!"tree-ssa-pre.c:VEC_pre_expr_base_quick_push"}
!953 = !{!954, !846, i64 0}
!954 = !{!"VEC_pre_expr_base", !846, i64 0, !846, i64 4, !847, i64 8}
!955 = !{!"tree-ssa-pre.c:VEC_pre_expr_base_space"}
!956 = !{!"branch_weights", i32 77, i32 657372}
!957 = !{!954, !846, i64 4}
!958 = !{!"function_entry_count", i64 808598}
!959 = !{!"tree-ssa-pre.c:VEC_unsigned_base_space"}
!960 = !{!"branch_weights", i32 77, i32 808523}
!961 = !{!935, !846, i64 4}
!962 = !{!"tree-ssa-pre.c:VEC_unsigned_heap_safe_grow"}
!963 = !{!"branch_weights", i32 1, i32 404300}
!964 = !{!"tree-ssa-pre.c:VEC_unsigned_base_address"}
!965 = !{!"tree-ssa-pre.c:VEC_unsigned_heap_reserve_exact"}
!966 = !{!"function_entry_count", i64 429321}
!967 = !{!"tree-ssa-pre.c:VEC_vn_reference_op_s_base_iterate"}
!968 = !{!"branch_weights", i32 1, i32 429322}
!969 = !{!970, !846, i64 0}
!970 = !{!"VEC_vn_reference_op_s_base", !846, i64 0, !846, i64 4, !847, i64 8}
!971 = !{!"branch_weights", i32 249406, i32 179917}
!972 = !{!"function_entry_count", i64 1188}
!973 = !{!"tree-ssa-pre.c:VEC_vn_reference_op_s_base_length"}
!974 = !{!"branch_weights", i32 1, i32 1189}
!975 = !{!"function_entry_count", i64 142140}
!976 = !{!"tree-ssa-pre.c:bmp_iter_set_init"}
!977 = !{!978, !854, i64 0}
!978 = !{!"bitmap_head_def", !854, i64 0, !854, i64 8, !846, i64 16, !854, i64 24}
!979 = !{!980, !854, i64 0}
!980 = !{!"", !854, i64 0, !854, i64 8, !846, i64 16, !981, i64 24}
!981 = !{!"long", !847, i64 0}
!982 = !{!980, !854, i64 8}
!983 = !{!"branch_weights", i32 60851, i32 81291}
!984 = !{!985, !846, i64 16}
!985 = !{!"bitmap_element_def", !854, i64 0, !854, i64 8, !846, i64 16, !847, i64 24}
!986 = !{!980, !846, i64 16}
!987 = !{!981, !981, i64 0}
!988 = !{!980, !981, i64 24}
!989 = !{!"function_entry_count", i64 265314}
!990 = !{!"tree-ssa-pre.c:bmp_iter_set"}
!991 = !{!"branch_weights", i32 168802, i32 96514}
!992 = !{!"branch_weights", i32 144273, i32 1}
!993 = !{!"branch_weights", i32 2074554, i32 144273}
!994 = distinct !{!994, !883}
!995 = !{!"branch_weights", i32 1, i32 137636}
!996 = !{!"branch_weights", i32 116078, i32 47761}
!997 = !{!"branch_weights", i32 137636, i32 26202}
!998 = distinct !{!998, !883}
!999 = !{!985, !854, i64 0}
!1000 = !{!"branch_weights", i32 121042, i32 16596}
!1001 = !{!"function_entry_count", i64 938560}
!1002 = !{!"tree-ssa-pre.c:expression_for_id"}
!1003 = !{!"function_entry_count", i64 123174}
!1004 = !{!"tree-ssa-pre.c:bmp_iter_next"}
!1005 = !{!"tree-ssa-pre.c:VEC_pre_expr_base_index"}
!1006 = !{!"function_entry_count", i64 76}
!1007 = !{!"tree-ssa-pre.c:execute_pre"}
!1008 = !{!"branch_weights", i32 77, i32 1}
!1009 = !{!"branch_weights", i32 39, i32 39}
!1010 = !{!"branch_weights", i32 1, i32 77}
!1011 = !{!924, !854, i64 8}
!1012 = !{!1013, !854, i64 16}
!1013 = !{!"basic_block_def", !854, i64 0, !854, i64 8, !854, i64 16, !854, i64 24, !847, i64 32, !854, i64 48, !854, i64 56, !847, i64 64, !981, i64 72, !846, i64 80, !846, i64 84, !846, i64 88, !846, i64 92, !846, i64 96}
!1014 = !{!1015, !854, i64 0}
!1015 = !{!"bb_bitmap_sets", !854, i64 0, !854, i64 8, !854, i64 16, !854, i64 24, !854, i64 32, !854, i64 40, !854, i64 48, !854, i64 56, !846, i64 64, !846, i64 64, !846, i64 64}
!1016 = !{!1013, !846, i64 80}
!1017 = !{!1015, !854, i64 8}
!1018 = !{!1015, !854, i64 16}
!1019 = !{!1015, !854, i64 24}
!1020 = distinct !{!1020, !883}
!1021 = !{!1022, !846, i64 24}
!1022 = !{!"control_flow_graph", !854, i64 0, !854, i64 8, !854, i64 16, !846, i64 24, !846, i64 28, !846, i64 32, !854, i64 40, !846, i64 48, !847, i64 52, !847, i64 60, !846, i64 68, !846, i64 72}
!1023 = !{!"branch_weights", i32 32, i32 8}
!1024 = !{!1025, !846, i64 4}
!1025 = !{!"", !846, i64 0, !846, i64 4, !846, i64 8, !846, i64 12, !846, i64 16}
!1026 = !{!1025, !846, i64 8}
!1027 = !{!1025, !846, i64 12}
!1028 = !{!1025, !846, i64 0}
!1029 = !{!1025, !846, i64 16}
!1030 = !{!"tree-ssa-pre.c:remove_dead_inserted_code"}
!1031 = !{!"branch_weights", i32 1, i32 155}
!1032 = !{!"branch_weights", i32 69, i32 74}
!1033 = !{!"branch_weights", i32 155, i32 413}
!1034 = distinct !{!1034, !883}
!1035 = !{i32 0, i32 256}
!1036 = !{!"branch_weights", i32 89, i32 252}
!1037 = !{!"branch_weights", i32 1, i32 177}
!1038 = !{!"branch_weights", i32 216, i32 1}
!1039 = !{!"branch_weights", i32 47, i32 170}
!1040 = !{!"branch_weights", i32 255, i32 177}
!1041 = distinct !{!1041, !883}
!1042 = !{!"branch_weights", i32 251, i32 1}
!1043 = !{!"branch_weights", i32 341, i32 98}
!1044 = !{!"branch_weights", i32 187, i32 251}
!1045 = distinct !{!1045, !883}
!1046 = !{!"branch_weights", i32 155, i32 1205}
!1047 = distinct !{!1047, !883}
!1048 = !{!"branch_weights", i32 3, i32 140}
!1049 = !{!"branch_weights", i32 3, i32 1}
!1050 = !{i64 0, i64 8, !866, i64 8, i64 8, !866, i64 16, i64 8, !866}
!1051 = distinct !{!1051, !883}
!1052 = !{!"tree-ssa-pre.c:init_pre"}
!1053 = !{!"branch_weights", i32 1, i32 153}
!1054 = !{!"branch_weights", i32 153, i32 977315}
!1055 = distinct !{!1055, !883}
!1056 = distinct !{!1056, !883}
!1057 = !{!"tree-ssa-pre.c:compute_avail"}
!1058 = !{!"branch_weights", i32 153, i32 1}
!1059 = !{!"branch_weights", i32 159725, i32 632251}
!1060 = !{!"branch_weights", i32 632099, i32 153}
!1061 = !{!"branch_weights", i32 77, i32 77}
!1062 = !{!1022, !854, i64 0}
!1063 = !{!"branch_weights", i32 1583797, i32 153}
!1064 = distinct !{!1064, !883}
!1065 = !{!"branch_weights", i32 0, i32 -2147483648}
!1066 = distinct !{!1066, !883}
!1067 = !{!"branch_weights", i32 1, i32 488582}
!1068 = !{!"branch_weights", i32 92821, i32 395761}
!1069 = !{!"branch_weights", i32 0, i32 92821}
!1070 = distinct !{!1070, !883}
!1071 = !{!"branch_weights", i32 488581, i32 1}
!1072 = !{!"branch_weights", i32 557768, i32 138259}
!1073 = !{!"branch_weights", i32 138133, i32 127}
!1074 = !{!"branch_weights", i32 138133, i32 1}
!1075 = !{!"branch_weights", i32 400987, i32 295039}
!1076 = !{!"branch_weights", i32 194188, i32 206800}
!1077 = !{!"branch_weights", i32 0, i32 400987}
!1078 = distinct !{!1078, !883}
!1079 = !{!"branch_weights", i32 696026, i32 1}
!1080 = !{!"branch_weights", i32 290337, i32 77, i32 138259, i32 267356}
!1081 = !{!"branch_weights", i32 75, i32 2}
!1082 = !{!"branch_weights", i32 0, i32 75}
!1083 = distinct !{!1083, !883}
!1084 = !{!"branch_weights", i32 138259, i32 1}
!1085 = distinct !{!1085, !883}
!1086 = !{i32 0, i32 65536}
!1087 = !{!"branch_weights", i32 9927, i32 139, i32 47258, i32 38961, i32 141267, i32 29809}
!1088 = !{!"branch_weights", i32 1, i32 86356}
!1089 = !{!"branch_weights", i32 1, i32 86355}
!1090 = !{!"branch_weights", i32 97222, i32 75352}
!1091 = !{!"branch_weights", i32 86218, i32 86355}
!1092 = distinct !{!1092, !883}
!1093 = !{!"branch_weights", i32 378, i32 170698}
!1094 = !{!"branch_weights", i32 1, i32 170697}
!1095 = !{!"branch_weights", i32 350, i32 225394}
!1096 = !{!"branch_weights", i32 356, i32 225039}
!1097 = !{!"branch_weights", i32 196439, i32 29305}
!1098 = !{!"branch_weights", i32 1, i32 29305}
!1099 = !{!"branch_weights", i32 170697, i32 55046}
!1100 = distinct !{!1100, !883}
!1101 = !{!"branch_weights", i32 9926, i32 1}
!1102 = !{!"branch_weights", i32 9835, i32 9926}
!1103 = distinct !{!1103, !883}
!1104 = !{!"branch_weights", i32 127169, i32 129885}
!1105 = !{!"branch_weights", i32 207445, i32 488581}
!1106 = distinct !{!1106, !883}
!1107 = !{!"branch_weights", i32 76, i32 488506}
!1108 = !{!"branch_weights", i32 488506, i32 0}
!1109 = distinct !{!1109, !883}
!1110 = !{!"branch_weights", i32 153, i32 977011}
!1111 = distinct !{!1111, !883}
!1112 = !{!"function_entry_count", i64 31}
!1113 = !{!"tree-ssa-pre.c:compute_antic"}
!1114 = !{!1022, !846, i64 32}
!1115 = !{!1013, !854, i64 56}
!1116 = !{!1022, !854, i64 8}
!1117 = !{!"branch_weights", i32 1, i32 127}
!1118 = !{i64 0, i64 4, !888, i64 8, i64 8, !866}
!1119 = !{i64 0, i64 8, !866}
!1120 = !{!"branch_weights", i32 1, i32 6627}
!1121 = !{!1122, !846, i64 48}
!1122 = !{!"edge_def", !854, i64 0, !854, i64 8, !847, i64 16, !854, i64 24, !854, i64 32, !846, i64 40, !846, i64 44, !846, i64 48, !846, i64 52, !981, i64 56}
!1123 = !{!"branch_weights", i32 10049, i32 1}
!1124 = !{!"branch_weights", i32 6627, i32 3422}
!1125 = distinct !{!1125, !883}
!1126 = !{!1015, !854, i64 32}
!1127 = !{!1015, !854, i64 40}
!1128 = !{!"branch_weights", i32 127, i32 26385}
!1129 = distinct !{!1129, !883}
!1130 = !{!"branch_weights", i32 1086575391, i32 1060908257}
!1131 = distinct !{!1131, !883}
!1132 = !{!"branch_weights", i32 63, i32 1}
!1133 = !{!"branch_weights", i32 4554, i32 8702}
!1134 = !{!1022, !854, i64 16}
!1135 = !{!"branch_weights", i32 52769, i32 251}
!1136 = distinct !{!1136, !883}
!1137 = !{!"branch_weights", i32 1, i32 32}
!1138 = distinct !{!1138, !883}
!1139 = !{!"branch_weights", i32 5989, i32 7267}
!1140 = distinct !{!1140, !883}
!1141 = !{!1142, !854, i64 0}
!1142 = !{!"simple_bitmap_def", !854, i64 0, !846, i64 8, !846, i64 12, !847, i64 16}
!1143 = !{!"tree-ssa-pre.c:insert"}
!1144 = !{!1015, !854, i64 48}
!1145 = !{!"branch_weights", i32 127, i32 26633}
!1146 = distinct !{!1146, !883}
!1147 = !{!"branch_weights", i32 32, i32 31}
!1148 = distinct !{!1148, !883}
!1149 = !{!"tree-ssa-pre.c:eliminate"}
!1150 = distinct !{!1150, !883}
!1151 = !{!"branch_weights", i32 76, i32 1}
!1152 = !{!"branch_weights", i32 294960, i32 401067}
!1153 = !{!"branch_weights", i32 400987, i32 81}
!1154 = !{!"branch_weights", i32 400907, i32 81}
!1155 = !{!"branch_weights", i32 229821, i32 171087}
!1156 = !{!"branch_weights", i32 171087, i32 1}
!1157 = !{!"branch_weights", i32 400907, i32 1}
!1158 = !{!"branch_weights", i32 400732, i32 176}
!1159 = !{!"branch_weights", i32 229821, i32 170912}
!1160 = !{!"branch_weights", i32 1, i32 400732}
!1161 = !{!"branch_weights", i32 6261, i32 6261, i32 -1785808924}
!1162 = !{!853, !854, i64 0}
!1163 = !{!"branch_weights", i32 384544, i32 16189}
!1164 = !{!"branch_weights", i32 1, i32 384544}
!1165 = !{!"branch_weights", i32 384544, i32 1}
!1166 = !{!"branch_weights", i32 -1887162813, i32 101366411}
!1167 = !{!"branch_weights", i32 976, i32 15214}
!1168 = !{!"branch_weights", i32 1, i32 15214}
!1169 = !{!"branch_weights", i32 1, i32 16189}
!1170 = !{!"branch_weights", i32 16189, i32 1}
!1171 = !{!"branch_weights", i32 294960, i32 336}
!1172 = !{!"branch_weights", i32 81, i32 256}
!1173 = !{!"branch_weights", i32 81, i32 1}
!1174 = !{!"branch_weights", i32 284329, i32 10887}
!1175 = !{!"branch_weights", i32 284329, i32 1}
!1176 = !{!"branch_weights", i32 1, i32 284329}
!1177 = !{!"branch_weights", i32 264979, i32 19351}
!1178 = !{!"branch_weights", i32 1, i32 19351}
!1179 = !{!"branch_weights", i32 138259, i32 557768}
!1180 = !{!"branch_weights", i32 1, i32 138259}
!1181 = distinct !{!1181, !883}
!1182 = !{!"branch_weights", i32 92896, i32 395686}
!1183 = !{!"branch_weights", i32 1, i32 92896}
!1184 = !{!"branch_weights", i32 89818, i32 3079}
!1185 = !{!"branch_weights", i32 3004, i32 76}
!1186 = distinct !{!1186, !883}
!1187 = !{!"branch_weights", i32 1, i32 3004}
!1188 = !{!"branch_weights", i32 3004, i32 3005, i32 9024016}
!1189 = !{!"branch_weights", i32 2146769011, i32 714637}
!1190 = !{!"branch_weights", i32 0, i32 92896}
!1191 = !{!"branch_weights", i32 1, i32 0}
!1192 = distinct !{!1192, !883}
!1193 = !{!"tree-ssa-pre.c:clear_expression_ids"}
!1194 = !{!"tree-ssa-pre.c:fini_pre"}
!1195 = distinct !{!1195, !883}
!1196 = !{!"tree-ssa-pre.c:VEC_gimple_heap_alloc"}
!1197 = !{!"function_entry_count", i64 415}
!1198 = !{!"tree-ssa-pre.c:VEC_gimple_base_length"}
!1199 = !{!"branch_weights", i32 15, i32 402}
!1200 = !{!1201, !846, i64 0}
!1201 = !{!"VEC_gimple_base", !846, i64 0, !846, i64 4, !847, i64 8}
!1202 = !{!"function_entry_count", i64 434}
!1203 = !{!"tree-ssa-pre.c:VEC_gimple_base_iterate"}
!1204 = !{!"branch_weights", i32 91, i32 345}
!1205 = !{!"branch_weights", i32 283, i32 63}
!1206 = !{!"function_entry_count", i64 874}
!1207 = !{!"tree-ssa-pre.c:gimple_plf"}
!1208 = !{!"function_entry_count", i64 480}
!1209 = !{!"tree-ssa-pre.c:VEC_gimple_base_quick_push"}
!1210 = !{!"function_entry_count", i64 339}
!1211 = !{!"tree-ssa-pre.c:VEC_gimple_base_pop"}
!1212 = !{!"function_entry_count", i64 13777617}
!1213 = !{!"tree-ssa-pre.c:gimple_code"}
!1214 = !{!"function_entry_count", i64 326}
!1215 = !{!"tree-ssa-pre.c:VEC_gimple_heap_reserve"}
!1216 = !{!"branch_weights", i32 70, i32 258}
!1217 = !{!"function_entry_count", i64 163486}
!1218 = !{!"tree-ssa-pre.c:gimple_phi_num_args"}
!1219 = !{!"function_entry_count", i64 92301}
!1220 = !{!"tree-ssa-pre.c:get_use_from_ptr"}
!1221 = !{!1222, !854, i64 24}
!1222 = !{!"ssa_use_operand_d", !854, i64 0, !854, i64 8, !847, i64 16, !854, i64 24}
!1223 = !{!"function_entry_count", i64 4677}
!1224 = !{!"tree-ssa-pre.c:gimple_phi_arg_imm_use_ptr"}
!1225 = !{!"function_entry_count", i64 652}
!1226 = !{!"tree-ssa-pre.c:mark_operand_necessary"}
!1227 = !{!"branch_weights", i32 1, i32 653}
!1228 = !{!"branch_weights", i32 593, i32 61}
!1229 = !{!"branch_weights", i32 1, i32 593}
!1230 = !{!"branch_weights", i32 508, i32 86}
!1231 = !{!"branch_weights", i32 267, i32 242}
!1232 = !{!"function_entry_count", i64 706278}
!1233 = !{!"tree-ssa-pre.c:op_iter_init_tree"}
!1234 = !{!1235, !846, i64 4}
!1235 = !{!"ssa_operand_iterator_d", !847, i64 0, !846, i64 4, !854, i64 8, !854, i64 16, !846, i64 24, !846, i64 28, !854, i64 32}
!1236 = !{!"function_entry_count", i64 1127535}
!1237 = !{!"tree-ssa-pre.c:op_iter_done"}
!1238 = !{!1235, !847, i64 0}
!1239 = !{!"function_entry_count", i64 238}
!1240 = !{!"tree-ssa-pre.c:VEC_gimple_heap_safe_push"}
!1241 = !{!"tree-ssa-pre.c:op_iter_next_tree"}
!1242 = !{!1235, !854, i64 16}
!1243 = !{!"branch_weights", i32 1107265, i32 20272}
!1244 = !{!1245, !854, i64 0}
!1245 = !{!"use_optype_d", !854, i64 0, !1222, i64 8}
!1246 = !{!1235, !854, i64 8}
!1247 = !{!"branch_weights", i32 706279, i32 400987}
!1248 = !{!1249, !854, i64 8}
!1249 = !{!"def_optype_d", !854, i64 0, !854, i64 8}
!1250 = !{!1249, !854, i64 0}
!1251 = !{!"function_entry_count", i64 266}
!1252 = !{!"tree-ssa-pre.c:VEC_gimple_heap_free"}
!1253 = !{!"branch_weights", i32 205, i32 63}
!1254 = !{!"tree-ssa-pre.c:VEC_gimple_base_space"}
!1255 = !{!"branch_weights", i32 32, i32 296}
!1256 = !{!1201, !846, i64 4}
!1257 = !{!"function_entry_count", i64 72030}
!1258 = !{!"tree-ssa-pre.c:gimple_phi_arg"}
!1259 = !{!"branch_weights", i32 1, i32 72031}
!1260 = !{!"function_entry_count", i64 8744}
!1261 = !{!"tree-ssa-pre.c:gimple_nop_p"}
!1262 = !{!"function_entry_count", i64 16595}
!1263 = !{!"tree-ssa-pre.c:gimple_set_plf"}
!1264 = !{!"branch_weights", i32 142, i32 16455}
!1265 = !{!"tree-ssa-pre.c:op_iter_init"}
!1266 = !{!"branch_weights", i32 706028, i32 252}
!1267 = !{!"branch_weights", i32 1, i32 252}
!1268 = !{!"branch_weights", i32 10254, i32 696026}
!1269 = !{!"branch_weights", i32 896411347, i32 1251072301}
!1270 = !{!"branch_weights", i32 267276, i32 138213}
!1271 = !{!"branch_weights", i32 696026, i32 10254}
!1272 = !{!"branch_weights", i32 52988495, i32 2094495153}
!1273 = !{!"branch_weights", i32 9921, i32 81}
!1274 = !{!"function_entry_count", i64 696025}
!1275 = !{!"tree-ssa-pre.c:gimple_def_ops"}
!1276 = !{!"branch_weights", i32 1, i32 696026}
!1277 = !{!"function_entry_count", i64 411734}
!1278 = !{!"tree-ssa-pre.c:gimple_vdef"}
!1279 = !{!"branch_weights", i32 1303, i32 410433}
!1280 = !{!"function_entry_count", i64 10253}
!1281 = !{!"tree-ssa-pre.c:gimple_use_ops"}
!1282 = !{!"branch_weights", i32 1, i32 10254}
!1283 = !{!"function_entry_count", i64 187401}
!1284 = !{!"tree-ssa-pre.c:gimple_vuse"}
!1285 = !{!"branch_weights", i32 1303, i32 186100}
!1286 = !{!"function_entry_count", i64 2440387}
!1287 = !{!"tree-ssa-pre.c:gimple_has_ops"}
!1288 = !{!"function_entry_count", i64 1696066}
!1289 = !{!"tree-ssa-pre.c:gimple_has_mem_ops"}
!1290 = !{!"function_entry_count", i64 493881}
!1291 = !{!"tree-ssa-pre.c:get_def_from_ptr"}
!1292 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_heap_alloc"}
!1293 = !{!"tree-ssa-pre.c:my_rev_post_order_compute"}
!1294 = !{!1122, !854, i64 0}
!1295 = !{!1122, !854, i64 8}
!1296 = !{!"branch_weights", i32 77, i32 1267297}
!1297 = !{!"branch_weights", i32 488582, i32 778716}
!1298 = !{!1013, !854, i64 0}
!1299 = !{!"branch_weights", i32 290135, i32 488658}
!1300 = !{!"branch_weights", i32 77, i32 488582}
!1301 = !{!"branch_weights", i32 77, i32 1267296}
!1302 = distinct !{!1302, !883}
!1303 = !{!"tree-ssa-pre.c:expr_pred_trans_hash"}
!1304 = !{!1305, !846, i64 24}
!1305 = !{!"expr_pred_trans_d", !854, i64 0, !854, i64 8, !854, i64 16, !846, i64 24}
!1306 = !{!"function_entry_count", i64 2867}
!1307 = !{!"tree-ssa-pre.c:expr_pred_trans_eq"}
!1308 = !{!1305, !854, i64 8}
!1309 = !{!"branch_weights", i32 2833, i32 36}
!1310 = !{!1305, !854, i64 0}
!1311 = !{!"function_entry_count", i64 757634}
!1312 = !{!"tree-ssa-pre.c:pre_expr_hash"}
!1313 = !{!"branch_weights", i32 1, i32 2467, i32 1, i32 256570, i32 498600}
!1314 = !{!856, !846, i64 8}
!1315 = !{!858, !846, i64 4}
!1316 = !{!"function_entry_count", i64 310303}
!1317 = !{!"tree-ssa-pre.c:pre_expr_eq"}
!1318 = !{!"branch_weights", i32 299624, i32 10681}
!1319 = !{!"branch_weights", i32 1, i32 2073, i32 47, i32 93716, i32 203791}
!1320 = !{!"function_entry_count", i64 505932}
!1321 = !{!"tree-ssa-pre.c:ei_start_1"}
!1322 = !{!"function_entry_count", i64 2570170}
!1323 = !{!"tree-ssa-pre.c:ei_edge"}
!1324 = !{!"branch_weights", i32 1, i32 2570171}
!1325 = !{!"function_entry_count", i64 497033}
!1326 = !{!"tree-ssa-pre.c:SET_BIT"}
!1327 = !{!"branch_weights", i32 497034, i32 1}
!1328 = !{!"function_entry_count", i64 2500541}
!1329 = !{!"tree-ssa-pre.c:VEC_edge_base_length"}
!1330 = !{!"branch_weights", i32 1, i32 2500542}
!1331 = !{!1332, !846, i64 0}
!1332 = !{!"VEC_edge_base", !846, i64 0, !846, i64 4, !847, i64 8}
!1333 = !{!"function_entry_count", i64 1557582}
!1334 = !{!"tree-ssa-pre.c:ei_one_before_end_p"}
!1335 = !{!"branch_weights", i32 1, i32 1557583}
!1336 = !{!"function_entry_count", i64 325134}
!1337 = !{!"tree-ssa-pre.c:ei_next"}
!1338 = !{!"branch_weights", i32 1, i32 325135}
!1339 = !{!"branch_weights", i32 325135, i32 1}
!1340 = !{!1341, !846, i64 0}
!1341 = !{!"", !846, i64 0, !854, i64 8}
!1342 = !{!"function_entry_count", i64 2587871}
!1343 = !{!"tree-ssa-pre.c:VEC_edge_base_index"}
!1344 = !{!"function_entry_count", i64 9010322}
!1345 = !{!"tree-ssa-pre.c:ei_container"}
!1346 = !{!"branch_weights", i32 1, i32 9010323}
!1347 = !{!"function_entry_count", i64 2466}
!1348 = !{!"tree-ssa-pre.c:vn_hash_constant_with_type"}
!1349 = !{!"branch_weights", i32 1774031263, i32 717409}
!1350 = !{!"function_entry_count", i64 2072}
!1351 = !{!"tree-ssa-pre.c:vn_constant_eq_with_type"}
!1352 = !{!"branch_weights", i32 1, i32 2073}
!1353 = !{!"function_entry_count", i64 791974}
!1354 = !{!"tree-ssa-pre.c:VEC_tree_base_index"}
!1355 = !{!"function_entry_count", i64 401058}
!1356 = !{!"tree-ssa-pre.c:has_zero_uses"}
!1357 = !{!1222, !854, i64 8}
!1358 = !{!"branch_weights", i32 176, i32 400884}
!1359 = !{!"branch_weights", i32 400884, i32 1}
!1360 = !{!"function_entry_count", i64 874479}
!1361 = !{!"tree-ssa-pre.c:get_or_alloc_expr_for_name"}
!1362 = !{!"branch_weights", i32 404300, i32 470181}
!1363 = !{!"function_entry_count", i64 205268}
!1364 = !{!"tree-ssa-pre.c:bitmap_insert_into_set"}
!1365 = !{!"function_entry_count", i64 601071}
!1366 = !{!"tree-ssa-pre.c:bitmap_value_insert_into_set"}
!1367 = !{!"branch_weights", i32 599024, i32 2049}
!1368 = !{!"branch_weights", i32 67123, i32 531902}
!1369 = !{!"function_entry_count", i64 493853}
!1370 = !{!"tree-ssa-pre.c:bitmap_set_copy"}
!1371 = !{!"function_entry_count", i64 3539403}
!1372 = !{!"tree-ssa-pre.c:gsi_end_p"}
!1373 = !{!1374, !854, i64 0}
!1374 = !{!"", !854, i64 0, !854, i64 8, !854, i64 16}
!1375 = !{!"function_entry_count", i64 92820}
!1376 = !{!"tree-ssa-pre.c:make_values_for_phi"}
!1377 = !{!"branch_weights", i32 89818, i32 3004}
!1378 = !{!"branch_weights", i32 2848, i32 157}
!1379 = !{!"branch_weights", i32 1, i32 2847}
!1380 = !{!"branch_weights", i32 6898, i32 60457}
!1381 = !{!"branch_weights", i32 64507, i32 2847}
!1382 = distinct !{!1382, !883}
!1383 = !{!"function_entry_count", i64 1600200}
!1384 = !{!"tree-ssa-pre.c:gsi_stmt"}
!1385 = !{!1386, !854, i64 0}
!1386 = !{!"gimple_seq_node_d", !854, i64 0, !854, i64 8, !854, i64 16}
!1387 = !{!"function_entry_count", i64 1579997}
!1388 = !{!"tree-ssa-pre.c:gsi_next"}
!1389 = !{!1386, !854, i64 16}
!1390 = !{!"function_entry_count", i64 982244}
!1391 = !{!"tree-ssa-pre.c:gsi_start_bb"}
!1392 = !{!1374, !854, i64 8}
!1393 = !{!1374, !854, i64 16}
!1394 = !{!"tree-ssa-pre.c:gimple_set_uid"}
!1395 = !{!"function_entry_count", i64 1124695}
!1396 = !{!"tree-ssa-pre.c:is_gimple_call"}
!1397 = !{!"function_entry_count", i64 1096931}
!1398 = !{!"tree-ssa-pre.c:gimple_has_volatile_ops"}
!1399 = !{!"branch_weights", i32 290337, i32 806596}
!1400 = !{!"function_entry_count", i64 117410}
!1401 = !{!"tree-ssa-pre.c:add_to_exp_gen"}
!1402 = !{!"branch_weights", i32 58404, i32 59008}
!1403 = !{!"branch_weights", i32 58404, i32 1}
!1404 = !{!"function_entry_count", i64 138258}
!1405 = !{!"tree-ssa-pre.c:can_value_number_call"}
!1406 = !{!"function_entry_count", i64 102543}
!1407 = !{!"tree-ssa-pre.c:gimple_expr_type"}
!1408 = !{!"branch_weights", i32 1, i32 2, i32 410176, i32 1}
!1409 = !{!"branch_weights", i32 7, i32 102538}
!1410 = !{!"function_entry_count", i64 1529}
!1411 = !{!"tree-ssa-pre.c:VEC_vn_reference_op_s_heap_free"}
!1412 = !{!"branch_weights", i32 913, i32 618}
!1413 = !{!"function_entry_count", i64 456253}
!1414 = !{!"tree-ssa-pre.c:gimple_assign_rhs_code"}
!1415 = !{!"branch_weights", i32 186460, i32 269795}
!1416 = !{!"function_entry_count", i64 172776}
!1417 = !{!"tree-ssa-pre.c:gimple_num_ops"}
!1418 = !{!"function_entry_count", i64 786051}
!1419 = !{!"tree-ssa-pre.c:gimple_assign_rhs1"}
!1420 = !{!"function_entry_count", i64 86355}
!1421 = !{!"tree-ssa-pre.c:gimple_assign_rhs2"}
!1422 = !{!"branch_weights", i32 86218, i32 139}
!1423 = !{!"function_entry_count", i64 93195}
!1424 = !{!"tree-ssa-pre.c:gimple_phi_result"}
!1425 = !{!"function_entry_count", i64 67353}
!1426 = !{!"tree-ssa-pre.c:gimple_phi_arg_def"}
!1427 = !{!"tree-ssa-pre.c:bb_seq"}
!1428 = !{!1013, !846, i64 96}
!1429 = !{!"branch_weights", i32 982245, i32 1}
!1430 = !{!"branch_weights", i32 1, i32 982245}
!1431 = !{!1432, !854, i64 0}
!1432 = !{!"gimple_bb_info", !854, i64 0, !854, i64 8}
!1433 = !{!"tree-ssa-pre.c:gimple_seq_first"}
!1434 = !{!1435, !854, i64 0}
!1435 = !{!"gimple_seq_d", !854, i64 0, !854, i64 8, !854, i64 16}
!1436 = !{!"tree-ssa-pre.c:gimple_call_return_type"}
!1437 = !{!"tree-ssa-pre.c:gimple_call_fn"}
!1438 = !{!"function_entry_count", i64 1717855}
!1439 = !{!"tree-ssa-pre.c:gimple_op"}
!1440 = !{!"branch_weights", i32 1, i32 1717856}
!1441 = !{!"function_entry_count", i64 1717921}
!1442 = !{!"tree-ssa-pre.c:gimple_ops"}
!1443 = !{!"branch_weights", i32 1, i32 1717922}
!1444 = !{!"tree-ssa-pre.c:gimple_statement_structure"}
!1445 = !{!"tree-ssa-pre.c:gss_for_code"}
!1446 = !{!"tree-ssa-pre.c:gimple_expr_code"}
!1447 = !{!"branch_weights", i32 1, i32 1825016, i32 2, i32 1}
!1448 = !{!"tree-ssa-pre.c:get_gimple_rhs_class"}
!1449 = !{!"function_entry_count", i64 52275}
!1450 = !{!"tree-ssa-pre.c:ei_cond"}
!1451 = !{!"branch_weights", i32 35427, i32 16850}
!1452 = !{!"function_entry_count", i64 15967}
!1453 = !{!"tree-ssa-pre.c:VEC_basic_block_base_index"}
!1454 = !{!"function_entry_count", i64 8701}
!1455 = !{!"tree-ssa-pre.c:compute_antic_aux"}
!1456 = !{!"branch_weights", i32 8702, i32 1}
!1457 = !{!1013, !854, i64 8}
!1458 = !{!"branch_weights", i32 1, i32 8702}
!1459 = !{!"branch_weights", i32 3823, i32 4880}
!1460 = !{!"branch_weights", i32 1, i32 3822}
!1461 = !{!"branch_weights", i32 3823, i32 5745}
!1462 = !{!"branch_weights", i32 1, i32 3823}
!1463 = !{!"branch_weights", i32 97, i32 2147483551}
!1464 = !{!"branch_weights", i32 3822, i32 5745}
!1465 = distinct !{!1465, !883}
!1466 = !{!"branch_weights", i32 1, i32 5745}
!1467 = !{!"branch_weights", i32 3822, i32 1923}
!1468 = distinct !{!1468, !883}
!1469 = !{!"branch_weights", i32 6895, i32 1807}
!1470 = !{!"branch_weights", i32 1807, i32 0}
!1471 = distinct !{!1471, !883}
!1472 = !{!"branch_weights", i32 2075, i32 6628}
!1473 = !{!"branch_weights", i32 1, i32 2074}
!1474 = !{!"branch_weights", i32 2074, i32 2891}
!1475 = distinct !{!1475, !883}
!1476 = !{!"function_entry_count", i64 7266}
!1477 = !{!"tree-ssa-pre.c:compute_partial_antic_aux"}
!1478 = !{!1479, !846, i64 8}
!1479 = !{!"param_info", !854, i64 0, !846, i64 8, !847, i64 12, !846, i64 16, !846, i64 20, !854, i64 24}
!1480 = !{!"branch_weights", i32 7267, i32 1}
!1481 = !{!"branch_weights", i32 1, i32 7267}
!1482 = !{!"branch_weights", i32 2993, i32 4275}
!1483 = !{!"branch_weights", i32 1, i32 4275}
!1484 = !{!"branch_weights", i32 4275, i32 1}
!1485 = !{!"branch_weights", i32 1, i32 2992}
!1486 = !{!"branch_weights", i32 7907, i32 1}
!1487 = !{!"branch_weights", i32 2992, i32 4915}
!1488 = distinct !{!1488, !883}
!1489 = !{!"branch_weights", i32 1, i32 2993}
!1490 = !{!"branch_weights", i32 4467, i32 3440}
!1491 = !{!"branch_weights", i32 3440, i32 0}
!1492 = distinct !{!1492, !883}
!1493 = !{!"branch_weights", i32 1, i32 7907}
!1494 = distinct !{!1494, !883}
!1495 = !{!"branch_weights", i32 5761, i32 2146}
!1496 = !{!"branch_weights", i32 2146, i32 0}
!1497 = distinct !{!1497, !883}
!1498 = distinct !{!1498, !883}
!1499 = !{!"branch_weights", i32 640, i32 6628}
!1500 = !{!"branch_weights", i32 1, i32 639}
!1501 = !{!"branch_weights", i32 639, i32 137}
!1502 = distinct !{!1502, !883}
!1503 = !{!"tree-ssa-pre.c:ei_end_p"}
!1504 = !{!"branch_weights", i32 1, i32 52276}
!1505 = !{!"function_entry_count", i64 40934}
!1506 = !{!"tree-ssa-pre.c:single_succ_p"}
!1507 = !{!"function_entry_count", i64 13427}
!1508 = !{!"tree-ssa-pre.c:single_succ"}
!1509 = !{!"function_entry_count", i64 4879}
!1510 = !{!"tree-ssa-pre.c:defer_or_phi_translate_block"}
!1511 = !{!"branch_weights", i32 1, i32 4880}
!1512 = !{!"function_entry_count", i64 6814}
!1513 = !{!"tree-ssa-pre.c:VEC_basic_block_heap_alloc"}
!1514 = !{!"function_entry_count", i64 13650}
!1515 = !{!"tree-ssa-pre.c:VEC_basic_block_base_quick_push"}
!1516 = !{!1517, !846, i64 0}
!1517 = !{!"VEC_basic_block_base", !846, i64 0, !846, i64 4, !847, i64 8}
!1518 = !{!"tree-ssa-pre.c:VEC_basic_block_heap_free"}
!1519 = !{!"branch_weights", i32 1, i32 6815}
!1520 = !{!"function_entry_count", i64 26625}
!1521 = !{!"tree-ssa-pre.c:gimple_seq_empty_p"}
!1522 = !{!"branch_weights", i32 18877, i32 7750}
!1523 = !{!"tree-ssa-pre.c:phi_nodes"}
!1524 = !{!"branch_weights", i32 26626, i32 1}
!1525 = !{!"branch_weights", i32 205, i32 26422}
!1526 = !{!1432, !854, i64 8}
!1527 = !{!"function_entry_count", i64 9153}
!1528 = !{!"tree-ssa-pre.c:phi_translate_set"}
!1529 = !{!"branch_weights", i32 7704, i32 1451}
!1530 = !{!"branch_weights", i32 2694, i32 5010}
!1531 = !{!"branch_weights", i32 177, i32 4834}
!1532 = !{!"branch_weights", i32 789, i32 4046}
!1533 = !{!"branch_weights", i32 5010, i32 0}
!1534 = distinct !{!1534, !883}
!1535 = !{!"function_entry_count", i64 20464}
!1536 = !{!"tree-ssa-pre.c:VEC_basic_block_base_iterate"}
!1537 = !{!"branch_weights", i32 1, i32 20465}
!1538 = !{!"branch_weights", i32 13651, i32 6815}
!1539 = !{!"function_entry_count", i64 5744}
!1540 = !{!"tree-ssa-pre.c:bitmap_set_and"}
!1541 = !{!"branch_weights", i32 4096, i32 1649}
!1542 = !{!"branch_weights", i32 1501, i32 149}
!1543 = !{!"branch_weights", i32 1649, i32 0}
!1544 = distinct !{!1544, !883}
!1545 = !{!"function_entry_count", i64 40635}
!1546 = !{!"tree-ssa-pre.c:bitmap_set_free"}
!1547 = !{!"function_entry_count", i64 24668}
!1548 = !{!"tree-ssa-pre.c:bitmap_set_subtract"}
!1549 = !{!"branch_weights", i32 10944, i32 13725}
!1550 = !{!"branch_weights", i32 13725, i32 0}
!1551 = distinct !{!1551, !883}
!1552 = !{!"tree-ssa-pre.c:clean"}
!1553 = !{!"branch_weights", i32 743, i32 7959}
!1554 = !{!"branch_weights", i32 2275, i32 5685}
!1555 = !{!"branch_weights", i32 7959, i32 0}
!1556 = distinct !{!1556, !883}
!1557 = !{!"tree-ssa-pre.c:bitmap_set_equal"}
!1558 = !{!"function_entry_count", i64 13254}
!1559 = !{!"tree-ssa-pre.c:RESET_BIT"}
!1560 = !{!"branch_weights", i32 13255, i32 1}
!1561 = !{!"function_entry_count", i64 17701}
!1562 = !{!"tree-ssa-pre.c:single_succ_edge"}
!1563 = !{!"branch_weights", i32 1, i32 17702}
!1564 = !{!"function_entry_count", i64 26082}
!1565 = !{!"tree-ssa-pre.c:sorted_array_from_bitmap_set"}
!1566 = !{!"branch_weights", i32 6661, i32 19422}
!1567 = !{!"branch_weights", i32 1, i32 19421}
!1568 = !{!"branch_weights", i32 13917, i32 19422}
!1569 = !{!"branch_weights", i32 19421, i32 13917}
!1570 = distinct !{!1570, !883}
!1571 = !{!"branch_weights", i32 19422, i32 0}
!1572 = distinct !{!1572, !883}
!1573 = !{!"function_entry_count", i64 45503}
!1574 = !{!"tree-ssa-pre.c:VEC_pre_expr_base_iterate"}
!1575 = !{!"branch_weights", i32 13908, i32 31597}
!1576 = !{!"branch_weights", i32 19422, i32 12176}
!1577 = !{!"function_entry_count", i64 7432}
!1578 = !{!"tree-ssa-pre.c:phi_translate"}
!1579 = !{!"branch_weights", i32 179, i32 7255}
!1580 = !{!"branch_weights", i32 1, i32 7255}
!1581 = !{!"branch_weights", i32 7255, i32 1}
!1582 = !{!"branch_weights", i32 2978, i32 4278}
!1583 = !{!"branch_weights", i32 1446, i32 2833}
!1584 = !{!"branch_weights", i32 265, i32 4159}
!1585 = !{!"branch_weights", i32 2978, i32 1182}
!1586 = !{!"function_entry_count", i64 28851}
!1587 = !{!"tree-ssa-pre.c:bitmap_value_replace_in_set"}
!1588 = !{!"branch_weights", i32 7891, i32 20962}
!1589 = !{!"function_entry_count", i64 26158}
!1590 = !{!"tree-ssa-pre.c:VEC_pre_expr_heap_free"}
!1591 = !{!"branch_weights", i32 13908, i32 12252}
!1592 = !{!"tree-ssa-pre.c:VEC_pre_expr_heap_alloc"}
!1593 = !{!"function_entry_count", i64 4277}
!1594 = !{!"tree-ssa-pre.c:phi_trans_lookup"}
!1595 = !{!1305, !854, i64 16}
!1596 = !{!"function_entry_count", i64 4422}
!1597 = !{!"tree-ssa-pre.c:phi_translate_1"}
!1598 = !{!"branch_weights", i32 1, i32 258, i32 1189, i32 2978}
!1599 = !{!"branch_weights", i32 1, i32 199}
!1600 = !{!"branch_weights", i32 258, i32 224}
!1601 = !{!"branch_weights", i32 19059, i32 33000}
!1602 = !{!"branch_weights", i32 1, i32 165}
!1603 = !{!"branch_weights", i32 59, i32 36}
!1604 = !{!"branch_weights", i32 199, i32 282}
!1605 = distinct !{!1605, !883}
!1606 = !{!"branch_weights", i32 372741453, i32 1774742195}
!1607 = !{!856, !854, i64 24}
!1608 = !{!"branch_weights", i32 143, i32 23}
!1609 = !{!"branch_weights", i32 23, i32 1}
!1610 = !{!"branch_weights", i32 102, i32 64}
!1611 = !{!"branch_weights", i32 64, i32 1}
!1612 = !{!"branch_weights", i32 102, i32 1}
!1613 = !{!"branch_weights", i32 1, i32 982}
!1614 = !{!887, !854, i64 8}
!1615 = !{i64 0, i64 4, !888, i64 8, i64 8, !866, i64 16, i64 8, !866, i64 24, i64 8, !866, i64 32, i64 8, !866}
!1616 = !{!"branch_weights", i32 366, i32 3222}
!1617 = !{!"branch_weights", i32 378, i32 2845}
!1618 = !{!"branch_weights", i32 55591, i32 9976}
!1619 = !{!"branch_weights", i32 207, i32 115}
!1620 = !{!"branch_weights", i32 2603, i32 779}
!1621 = !{!"branch_weights", i32 1, i32 779}
!1622 = !{!"branch_weights", i32 1189, i32 2193}
!1623 = !{!"branch_weights", i32 160, i32 3222}
!1624 = !{!"branch_weights", i32 160, i32 1}
!1625 = !{!"branch_weights", i32 4008804, i32 3411304}
!1626 = !{!"branch_weights", i32 1, i32 1828}
!1627 = !{!"branch_weights", i32 982, i32 2605}
!1628 = distinct !{!1628, !883}
!1629 = !{!"branch_weights", i32 983, i32 207}
!1630 = !{!"branch_weights", i32 1, i32 207}
!1631 = !{!"branch_weights", i32 1, i32 983}
!1632 = !{!858, !846, i64 16}
!1633 = !{!858, !854, i64 24}
!1634 = !{!"branch_weights", i32 65746, i32 846422}
!1635 = !{!"branch_weights", i32 572, i32 342}
!1636 = !{!"branch_weights", i32 668, i32 246}
!1637 = !{!"branch_weights", i32 246, i32 1}
!1638 = !{!"branch_weights", i32 342, i32 1}
!1639 = !{!"branch_weights", i32 515, i32 295153}
!1640 = !{!"branch_weights", i32 572, i32 1}
!1641 = !{!"branch_weights", i32 2689, i32 290}
!1642 = !{!"branch_weights", i32 2687, i32 3}
!1643 = !{!"branch_weights", i32 1, i32 2687}
!1644 = !{!1122, !846, i64 44}
!1645 = !{!"branch_weights", i32 639, i32 2049}
!1646 = !{!"branch_weights", i32 639, i32 1}
!1647 = !{!"function_entry_count", i64 1181}
!1648 = !{!"tree-ssa-pre.c:phi_trans_add"}
!1649 = !{!"branch_weights", i32 1182, i32 1}
!1650 = !{!"function_entry_count", i64 634}
!1651 = !{!"tree-ssa-pre.c:find_leader_in_sets"}
!1652 = !{!"branch_weights", i32 9680, i32 130876}
!1653 = !{!"function_entry_count", i64 221}
!1654 = !{!"tree-ssa-pre.c:get_representative_for"}
!1655 = !{!"branch_weights", i32 1, i32 15, i32 1, i32 65, i32 144}
!1656 = !{!"branch_weights", i32 1, i32 187}
!1657 = !{!"branch_weights", i32 115, i32 123}
!1658 = !{!"branch_weights", i32 187, i32 287}
!1659 = distinct !{!1659, !883}
!1660 = !{!"branch_weights", i32 94, i32 1}
!1661 = !{!"branch_weights", i32 13, i32 82}
!1662 = !{!"branch_weights", i32 58, i32 25}
!1663 = !{!"branch_weights", i32 1, i32 94}
!1664 = !{!"tree-ssa-pre.c:get_or_alloc_expr_for_constant"}
!1665 = !{!"branch_weights", i32 198, i32 1876}
!1666 = !{!"function_entry_count", i64 2863}
!1667 = !{!"tree-ssa-pre.c:fully_constant_expression"}
!1668 = !{!"branch_weights", i32 2, i32 2428, i32 437}
!1669 = !{!"branch_weights", i32 1, i32 1, i32 371, i32 31, i32 1, i32 37}
!1670 = !{!"branch_weights", i32 267, i32 135}
!1671 = !{!"branch_weights", i32 267, i32 1}
!1672 = !{!"branch_weights", i32 135, i32 267}
!1673 = !{!"branch_weights", i32 135, i32 1}
!1674 = !{!"branch_weights", i32 401, i32 1}
!1675 = !{!"branch_weights", i32 37, i32 1}
!1676 = !{!"branch_weights", i32 1, i32 2428}
!1677 = !{!"tree-ssa-pre.c:VEC_vn_reference_op_s_heap_copy"}
!1678 = !{!1679, !846, i64 0}
!1679 = !{!"VEC_vn_reference_op_s_heap", !970, i64 0}
!1680 = !{!"function_entry_count", i64 3380}
!1681 = !{!"tree-ssa-pre.c:VEC_vn_reference_op_s_base_replace"}
!1682 = !{!"branch_weights", i32 1, i32 3381}
!1683 = !{!"function_entry_count", i64 2493}
!1684 = !{!"tree-ssa-pre.c:VEC_vn_reference_op_s_base_index"}
!1685 = !{!"function_entry_count", i64 982}
!1686 = !{!"tree-ssa-pre.c:translate_vuse_through_block"}
!1687 = !{!"branch_weights", i32 889, i32 95}
!1688 = !{!"branch_weights", i32 889, i32 1}
!1689 = distinct !{!1689, !883}
!1690 = !{!"branch_weights", i32 1894291, i32 2145589357}
!1691 = !{!"branch_weights", i32 1, i32 889}
!1692 = !{!"branch_weights", i32 410, i32 480}
!1693 = !{!"function_entry_count", i64 19433}
!1694 = !{!"tree-ssa-pre.c:gimple_bb"}
!1695 = !{!"function_entry_count", i64 406228}
!1696 = !{!"tree-ssa-pre.c:bitmap_find_leader"}
!1697 = !{!"branch_weights", i32 406205, i32 25}
!1698 = !{!"branch_weights", i32 127, i32 3073}
!1699 = distinct !{!1699, !883}
!1700 = !{!"branch_weights", i32 1814, i32 404392}
!1701 = !{!"branch_weights", i32 404392, i32 1}
!1702 = !{!"branch_weights", i32 127, i32 51762049}
!1703 = distinct !{!1703, !883}
!1704 = !{!"function_entry_count", i64 469679}
!1705 = !{!"tree-ssa-pre.c:bitmap_set_contains_value"}
!1706 = !{!"branch_weights", i32 469680, i32 1}
!1707 = !{!"branch_weights", i32 1, i32 469680}
!1708 = !{!"branch_weights", i32 9628, i32 460053}
!1709 = !{!"function_entry_count", i64 404391}
!1710 = !{!"tree-ssa-pre.c:bmp_iter_and_init"}
!1711 = !{!"branch_weights", i32 25881151, i32 -1008060992}
!1712 = !{!"branch_weights", i32 1073191, i32 404392}
!1713 = !{!"branch_weights", i32 127, i32 189130369}
!1714 = !{!"branch_weights", i32 2140129710, i32 7353938}
!1715 = !{!"tree-ssa-pre.c:bmp_iter_and"}
!1716 = !{!"branch_weights", i32 203652, i32 200741}
!1717 = !{!"branch_weights", i32 404391, i32 1}
!1718 = !{!"branch_weights", i32 12314537, i32 404391}
!1719 = distinct !{!1719, !883}
!1720 = !{!"branch_weights", i32 1, i32 3307}
!1721 = !{!"branch_weights", i32 3352, i32 203652}
!1722 = !{!"branch_weights", i32 3307, i32 203696}
!1723 = distinct !{!1723, !883}
!1724 = !{!"branch_weights", i32 1, i32 40607}
!1725 = !{!"branch_weights", i32 36070, i32 4538}
!1726 = distinct !{!1726, !883}
!1727 = !{!"branch_weights", i32 1967, i32 4538}
!1728 = !{!"branch_weights", i32 1, i32 1967}
!1729 = distinct !{!1729, !883}
!1730 = !{!"branch_weights", i32 3308, i32 1231}
!1731 = !{!"tree-ssa-pre.c:gimple_uid"}
!1732 = !{!"function_entry_count", i64 357}
!1733 = !{!"tree-ssa-pre.c:get_expr_type"}
!1734 = !{!"branch_weights", i32 1, i32 190, i32 1, i32 122, i32 48}
!1735 = !{!"function_entry_count", i64 83}
!1736 = !{!"tree-ssa-pre.c:get_var_ann"}
!1737 = !{!"branch_weights", i32 84, i32 7140, i32 1}
!1738 = !{!"branch_weights", i32 84, i32 1}
!1739 = !{!"function_entry_count", i64 159}
!1740 = !{!"tree-ssa-pre.c:make_ssa_name"}
!1741 = !{!"function_entry_count", i64 466}
!1742 = !{!"tree-ssa-pre.c:get_or_alloc_expr_for"}
!1743 = !{!"branch_weights", i32 443, i32 25}
!1744 = !{!"branch_weights", i32 1, i32 25}
!1745 = !{!"function_entry_count", i64 436}
!1746 = !{!"tree-ssa-pre.c:get_constant_for_value_id"}
!1747 = !{!"branch_weights", i32 437, i32 1}
!1748 = distinct !{!1748, !883}
!1749 = !{!"function_entry_count", i64 20961}
!1750 = !{!"tree-ssa-pre.c:bitmap_set_replace_value"}
!1751 = !{!"branch_weights", i32 20962, i32 1}
!1752 = !{!"branch_weights", i32 1, i32 20962}
!1753 = !{!"branch_weights", i32 27937, i32 20962}
!1754 = !{!"branch_weights", i32 127, i32 6258817}
!1755 = distinct !{!1755, !883}
!1756 = !{!"function_entry_count", i64 34697}
!1757 = !{!"tree-ssa-pre.c:get_expression_id"}
!1758 = !{!"function_entry_count", i64 13164}
!1759 = !{!"tree-ssa-pre.c:valid_in_sets"}
!1760 = !{!"branch_weights", i32 1, i32 843, i32 4040, i32 8284}
!1761 = !{!"branch_weights", i32 1, i32 2062}
!1762 = !{!"branch_weights", i32 4054, i32 2410}
!1763 = !{!"branch_weights", i32 1, i32 4054}
!1764 = !{!"branch_weights", i32 2170, i32 1885}
!1765 = !{!"branch_weights", i32 1510, i32 661}
!1766 = !{!"branch_weights", i32 469, i32 193}
!1767 = !{!"branch_weights", i32 4401, i32 2062}
!1768 = distinct !{!1768, !883}
!1769 = !{!"branch_weights", i32 2017, i32 47}
!1770 = !{!"branch_weights", i32 47, i32 1}
!1771 = !{!"branch_weights", i32 1, i32 8237}
!1772 = !{!"branch_weights", i32 8237, i32 11841}
!1773 = distinct !{!1773, !883}
!1774 = !{!"branch_weights", i32 47, i32 20032}
!1775 = !{!"branch_weights", i32 1, i32 8238}
!1776 = !{!"branch_weights", i32 7982, i32 257}
!1777 = !{!"branch_weights", i32 2886, i32 5097}
!1778 = !{!"branch_weights", i32 1, i32 5097}
!1779 = !{!"function_entry_count", i64 4582}
!1780 = !{!"tree-ssa-pre.c:bitmap_remove_from_set"}
!1781 = !{!"branch_weights", i32 4583, i32 1}
!1782 = !{!"function_entry_count", i64 842}
!1783 = !{!"tree-ssa-pre.c:bitmap_set_contains_expr"}
!1784 = !{!"function_entry_count", i64 20077}
!1785 = !{!"tree-ssa-pre.c:vro_valid_in_sets"}
!1786 = !{!"branch_weights", i32 900, i32 19179}
!1787 = !{!"branch_weights", i32 984, i32 18196}
!1788 = !{!"branch_weights", i32 1, i32 984}
!1789 = !{!"branch_weights", i32 242, i32 743}
!1790 = !{!"branch_weights", i32 8, i32 235}
!1791 = !{!"branch_weights", i32 40, i32 196}
!1792 = !{!"branch_weights", i32 14709, i32 5324}
!1793 = !{!"branch_weights", i32 1, i32 5324}
!1794 = !{!"function_entry_count", i64 8237}
!1795 = !{!"tree-ssa-pre.c:value_dies_in_block_x"}
!1796 = !{!1015, !854, i64 56}
!1797 = !{!"branch_weights", i32 2792, i32 5447}
!1798 = !{!"branch_weights", i32 2292, i32 3156}
!1799 = !{!1800, !854, i64 8}
!1800 = !{!"ao_ref_s", !854, i64 0, !854, i64 8, !981, i64 16, !981, i64 24, !981, i64 32, !846, i64 40, !846, i64 44}
!1801 = !{!"branch_weights", i32 1067, i32 1}
!1802 = !{!"branch_weights", i32 1437, i32 4812}
!1803 = !{!"branch_weights", i32 2800, i32 2013}
!1804 = !{!"branch_weights", i32 2004, i32 797}
!1805 = !{!"branch_weights", i32 2013, i32 1}
!1806 = !{!"branch_weights", i32 1, i32 2013}
!1807 = !{!"branch_weights", i32 5181, i32 1067}
!1808 = distinct !{!1808, !883}
!1809 = !{!"branch_weights", i32 2792, i32 2292}
!1810 = !{!"branch_weights", i32 3071, i32 2013}
!1811 = !{!"function_entry_count", i64 2992}
!1812 = !{!"tree-ssa-pre.c:VEC_basic_block_base_length"}
!1813 = !{!"tree-ssa-pre.c:bitmap_set_subtract_values"}
!1814 = !{!"branch_weights", i32 1598, i32 5669}
!1815 = !{!"branch_weights", i32 5207, i32 463}
!1816 = !{!"branch_weights", i32 5669, i32 0}
!1817 = distinct !{!1817, !883}
!1818 = !{!"tree-ssa-pre.c:dependent_clean"}
!1819 = !{!"branch_weights", i32 2060, i32 5207}
!1820 = !{!"branch_weights", i32 1847, i32 3361}
!1821 = !{!"branch_weights", i32 5207, i32 0}
!1822 = distinct !{!1822, !883}
!1823 = !{!"function_entry_count", i64 13316}
!1824 = !{!"tree-ssa-pre.c:insert_aux"}
!1825 = !{!"branch_weights", i32 1, i32 13317}
!1826 = !{!"branch_weights", i32 63, i32 13255}
!1827 = !{!"branch_weights", i32 1, i32 13255}
!1828 = !{!"branch_weights", i32 1, i32 13254}
!1829 = !{!"branch_weights", i32 13254, i32 675}
!1830 = distinct !{!1830, !883}
!1831 = !{!"branch_weights", i32 1207, i32 12049}
!1832 = !{!"branch_weights", i32 1, i32 1207}
!1833 = !{!"branch_weights", i32 62, i32 13255}
!1834 = !{!"branch_weights", i32 13255, i32 0}
!1835 = distinct !{!1835, !883}
!1836 = !{!"tree-ssa-pre.c:single_pred_p"}
!1837 = !{!"function_entry_count", i64 1206}
!1838 = !{!"tree-ssa-pre.c:do_regular_insertion"}
!1839 = !{!"branch_weights", i32 414, i32 793}
!1840 = !{!"branch_weights", i32 177, i32 617}
!1841 = !{!"branch_weights", i32 544, i32 74}
!1842 = !{!"branch_weights", i32 544, i32 1}
!1843 = !{!"branch_weights", i32 1, i32 543}
!1844 = !{!"branch_weights", i32 1290, i32 1}
!1845 = !{!"branch_weights", i32 1, i32 1290}
!1846 = !{!"branch_weights", i32 1169, i32 122}
!1847 = !{!"branch_weights", i32 7, i32 116}
!1848 = !{!"branch_weights", i32 76, i32 47}
!1849 = !{!"branch_weights", i32 43, i32 5}
!1850 = !{!"branch_weights", i32 543, i32 747}
!1851 = distinct !{!1851, !883}
!1852 = !{!"branch_weights", i32 -2147483648, i32 0}
!1853 = !{!"branch_weights", i32 1, i32 74}
!1854 = !{!"branch_weights", i32 2142934205, i32 4549443}
!1855 = distinct !{!1855, !883}
!1856 = !{!"branch_weights", i32 793, i32 0}
!1857 = distinct !{!1857, !883}
!1858 = !{!"tree-ssa-pre.c:do_partial_partial_insertion"}
!1859 = !{!"branch_weights", i32 750, i32 457}
!1860 = !{!"branch_weights", i32 3, i32 455}
!1861 = !{!"branch_weights", i32 453, i32 3}
!1862 = !{!"branch_weights", i32 429, i32 25}
!1863 = !{!"branch_weights", i32 1, i32 191}
!1864 = !{!"branch_weights", i32 501, i32 1}
!1865 = !{!"branch_weights", i32 3, i32 499}
!1866 = !{!"branch_weights", i32 425, i32 75}
!1867 = !{!"branch_weights", i32 191, i32 31873}
!1868 = distinct !{!1868, !883}
!1869 = !{!"branch_weights", i32 1, i32 3}
!1870 = !{!"branch_weights", i32 457, i32 0}
!1871 = distinct !{!1871, !883}
!1872 = !{!"function_entry_count", i64 75}
!1873 = !{!"tree-ssa-pre.c:insert_into_preds_of_block"}
!1874 = !{!1013, !846, i64 84}
!1875 = !{!"branch_weights", i32 1, i32 76}
!1876 = !{!1013, !854, i64 24}
!1877 = !{!"branch_weights", i32 1, i32 151}
!1878 = !{!"branch_weights", i32 4489, i32 67, i32 8432}
!1879 = !{!"branch_weights", i32 67, i32 1}
!1880 = distinct !{!1880, !883}
!1881 = !{!"branch_weights", i32 1, i32 124}
!1882 = distinct !{!1882, !883}
!1883 = !{!"branch_weights", i32 151, i32 229}
!1884 = distinct !{!1884, !883}
!1885 = !{!"branch_weights", i32 14037048, i32 2133446600}
!1886 = !{!"branch_weights", i32 32, i32 45}
!1887 = !{!"branch_weights", i32 35, i32 11}
!1888 = !{!"branch_weights", i32 153, i32 5776}
!1889 = !{!"branch_weights", i32 190, i32 1}
!1890 = !{!"branch_weights", i32 1, i32 190}
!1891 = distinct !{!1891, !883}
!1892 = !{!"tree-ssa-pre.c:inhibit_phi_insertion"}
!1893 = distinct !{!1893, !883}
!1894 = !{!"function_entry_count", i64 66}
!1895 = !{!"tree-ssa-pre.c:create_expression_by_pieces"}
!1896 = !{!"branch_weights", i32 1, i32 67}
!1897 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 61, i32 7}
!1898 = !{!"branch_weights", i32 1, i32 7, i32 1}
!1899 = !{!"branch_weights", i32 49, i32 15}
!1900 = !{!"branch_weights", i32 1, i32 7}
!1901 = distinct !{!1901, !883}
!1902 = !{!"branch_weights", i32 4, i32 64}
!1903 = !{!"branch_weights", i32 61, i32 4}
!1904 = !{!"branch_weights", i32 135, i32 4489}
!1905 = !{!"tree-ssa-pre.c:gsi_start"}
!1906 = !{!"function_entry_count", i64 60}
!1907 = !{!"tree-ssa-pre.c:create_component_ref_by_pieces"}
!1908 = !{!"function_entry_count", i64 30}
!1909 = !{!"tree-ssa-pre.c:find_or_generate_expression"}
!1910 = !{!"branch_weights", i32 1, i32 31}
!1911 = !{!"branch_weights", i32 25, i32 182, i32 625}
!1912 = distinct !{!1912, !883}
!1913 = !{!"tree-ssa-pre.c:gimple_assign_set_lhs"}
!1914 = !{!"tree-ssa-pre.c:create_component_ref_by_pieces_1"}
!1915 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 7, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 61, i32 1, i32 1, i32 1, i32 1}
!1916 = distinct !{!1916, !883}
!1917 = !{!"tree-ssa-pre.c:gimple_set_op"}
!1918 = !{!"tree-ssa-pre.c:gimple_has_lhs"}
!1919 = !{!"branch_weights", i32 428671, i32 267356}
!1920 = !{!"branch_weights", i32 290413, i32 138259}
!1921 = !{!"function_entry_count", i64 16188}
!1922 = !{!"tree-ssa-pre.c:update_stmt"}
!1923 = !{!"tree-ssa-pre.c:can_PRE_operation"}
!1924 = !{!"tree-ssa-pre.c:do_SCCVN_insertion"}
!1925 = !{!"tree-ssa-pre.c:gimple_assign_lhs"}
!1926 = !{!"function_entry_count", i64 284328}
!1927 = !{!"tree-ssa-pre.c:gimple_cond_lhs"}
!1928 = !{!"tree-ssa-pre.c:gimple_cond_rhs"}
!1929 = !{!"tree-ssa-pre.c:gimple_cond_code"}
!1930 = !{!"tree-ssa-pre.c:gimple_cond_make_false"}
!1931 = !{!"tree-ssa-pre.c:gimple_cond_make_true"}
!1932 = !{!"tree-ssa-pre.c:gimple_call_set_fn"}
!1933 = !{!"function_entry_count", i64 92895}
!1934 = !{!"tree-ssa-pre.c:gimple_phi_result_ptr"}
!1935 = !{!"tree-ssa-pre.c:gsi_after_labels"}
!1936 = distinct !{!1936, !883}
!1937 = !{!"tree-ssa-pre.c:single_imm_use"}
!1938 = !{!"tree-ssa-pre.c:set_ssa_use_from_ptr"}
!1939 = !{!"tree-ssa-pre.c:is_gimple_assign"}
!1940 = !{!"tree-ssa-pre.c:gimple_call_lhs"}
!1941 = !{!"tree-ssa-pre.c:gimple_cond_set_lhs"}
!1942 = !{!"tree-ssa-pre.c:gimple_cond_set_rhs"}
!1943 = !{!"tree-ssa-pre.c:is_gimple_debug"}
!1944 = !{!"tree-ssa-pre.c:delink_imm_use"}
!1945 = !{!1222, !854, i64 0}
!1946 = !{!"tree-ssa-pre.c:link_imm_use"}
!1947 = !{!"tree-ssa-pre.c:link_imm_use_to_list"}
!1948 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_heap_free"}
!1949 = !{!"tree-ssa-pre.c:VEC_unsigned_heap_free"}
