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
define dso_local void @add_to_value(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !894 {
  %3 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  %4 = icmp eq i32 %3, %0
  br i1 %4, label %6, label %5, !prof !895

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @.str.1) #20
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr @value_expressions, align 8
  %8 = tail call fastcc i32 @VEC_bitmap_set_t_base_length(ptr noundef %7) #19
  %9 = icmp ugt i32 %8, %0
  br i1 %9, label %13, label %10, !prof !896

10:                                               ; preds = %6
  %11 = add i32 %0, 1
  tail call fastcc void @VEC_bitmap_set_t_heap_safe_grow_cleared(i32 noundef %11) #19
  %12 = load ptr, ptr @value_expressions, align 8
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ %7, %6 ]
  %15 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %14, i32 noundef %0) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20, !prof !897

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
define internal fastcc i32 @get_expr_value_id(ptr noundef %0) unnamed_addr #0 !prof !898 !PGOFuncName !899 {
  %2 = load i32, ptr %0, align 8, !tbaa !900
  switch i32 %2, label %25 [
    i32 3, label %3
    i32 0, label %11
    i32 1, label %17
    i32 2, label %21
  ], !prof !905

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !906
  %6 = tail call i32 @get_constant_value_id(ptr noundef %5) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26, !prof !907

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !906
  %10 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %9) #20
  tail call void @add_to_value(i32 noundef %10, ptr noundef nonnull %0) #19
  br label %26

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !906
  %14 = tail call ptr @VN_INFO(ptr noundef %13) #20
  %15 = getelementptr inbounds %struct.vn_ssa_aux, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !908
  br label %26

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !906
  %20 = load i32, ptr %19, align 8, !tbaa !911
  br label %26

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !906
  %24 = load i32, ptr %23, align 8, !tbaa !913
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
define internal fastcc i32 @VEC_bitmap_set_t_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !915 !PGOFuncName !916 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !917

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !918
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitmap_set_t_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !920 !PGOFuncName !921 {
  %2 = load ptr, ptr @value_expressions, align 8, !tbaa !922
  %3 = tail call fastcc i32 @VEC_bitmap_set_t_base_length(ptr noundef %2) #19
  tail call fastcc void @VEC_bitmap_set_t_heap_safe_grow(i32 noundef %0) #19
  %4 = load ptr, ptr @value_expressions, align 8, !tbaa !922
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
define internal fastcc ptr @VEC_bitmap_set_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !923 !PGOFuncName !924 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !922
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bitmap_set_new() unnamed_addr #0 !prof !925 !PGOFuncName !926 {
  %1 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !922
  %2 = tail call ptr @pool_alloc(ptr noundef %1) #20
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  store ptr %3, ptr %2, align 8, !tbaa !927
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  %5 = getelementptr inbounds %struct.bitmap_set, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !929
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_bitmap_set_t_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 !prof !930 !PGOFuncName !931 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !922
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_insert_into_set_1(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !932 !PGOFuncName !933 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %9, !prof !934

6:                                                ; preds = %4
  %7 = tail call zeroext i8 @value_id_constant_p(i32 noundef %2) #20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16, !prof !935

9:                                                ; preds = %6, %4
  %10 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !929
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %2) #20
  %13 = load ptr, ptr %0, align 8, !tbaa !927
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
define internal fastcc void @VEC_bitmap_set_t_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !920 !PGOFuncName !936 {
  %2 = load ptr, ptr @value_expressions, align 8, !tbaa !922
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !937

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !918
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_bitmap_set_t_heap_reserve_exact(i32 noundef %8) #19
  %9 = load ptr, ptr @value_expressions, align 8, !tbaa !922, !nonnull !938, !noundef !938
  store i32 %0, ptr %9, align 8, !tbaa !918
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_bitmap_set_t_base_address(ptr noundef readnone %0) unnamed_addr #5 !prof !920 !PGOFuncName !939 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !937
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitmap_set_t_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !920 !PGOFuncName !940 {
  %2 = load ptr, ptr @value_expressions, align 8, !tbaa !922
  %3 = tail call fastcc i32 @VEC_bitmap_set_t_base_space(ptr noundef %2, i32 noundef %0) #19, !range !941
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !942

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #20
  store ptr %6, ptr @value_expressions, align 8, !tbaa !922
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_bitmap_set_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !920 !PGOFuncName !943 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !937

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !944
  %7 = load i32, ptr %0, align 8, !tbaa !918
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
define internal fastcc i32 @get_or_alloc_expression_id(ptr noundef %0) unnamed_addr #0 !prof !945 !PGOFuncName !946 {
  %2 = tail call fastcc i32 @lookup_expression_id(ptr noundef %0) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !947

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @alloc_expression_id(ptr noundef %0) #19
  br label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 1
  store i32 %2, ptr %7, align 4, !tbaa !948
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %5, %4 ], [ %2, %6 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @lookup_expression_id(ptr noundef %0) unnamed_addr #0 !prof !949 !PGOFuncName !950 {
  %2 = load i32, ptr %0, align 8, !tbaa !900
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %14, !prof !951

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !906
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !906
  %9 = load ptr, ptr @name_to_id, align 8
  %10 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %9) #19
  %11 = icmp ugt i32 %10, %8
  br i1 %11, label %12, label %22, !prof !952

12:                                               ; preds = %4
  %13 = tail call fastcc i32 @VEC_unsigned_base_index(ptr noundef %9, i32 noundef %8) #19
  br label %22

14:                                               ; preds = %1
  %15 = load ptr, ptr @expression_to_id, align 8, !tbaa !922
  %16 = tail call ptr @htab_find_slot(ptr noundef %15, ptr noundef nonnull %0, i32 noundef 0) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18, !prof !953

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !922
  %20 = getelementptr inbounds %struct.pre_expr_d, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !948
  br label %22

22:                                               ; preds = %14, %12, %4, %18
  %23 = phi i32 [ %21, %18 ], [ %13, %12 ], [ 0, %4 ], [ 0, %14 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @alloc_expression_id(ptr noundef %0) unnamed_addr #0 !prof !954 !PGOFuncName !955 {
  %2 = load i32, ptr @next_expression_id, align 4, !tbaa !956
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %6, !prof !957

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 254, ptr noundef nonnull @.str.1) #20
  %5 = load i32, ptr @next_expression_id, align 4, !tbaa !956
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %2, %1 ], [ %5, %4 ]
  %8 = add i32 %7, 1
  store i32 %8, ptr @next_expression_id, align 4, !tbaa !956
  %9 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 1
  store i32 %7, ptr %9, align 4, !tbaa !948
  tail call fastcc void @VEC_pre_expr_heap_safe_push(ptr noundef nonnull @expressions, ptr noundef %0) #19
  %10 = load i32, ptr %0, align 8, !tbaa !900
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %37, !prof !958

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !906
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !906
  %17 = load ptr, ptr @cfun, align 8, !tbaa !922
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !959
  %20 = getelementptr inbounds %struct.gimple_df, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !961
  %22 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %21) #19
  tail call fastcc void @VEC_unsigned_heap_reserve(i32 noundef %22) #19
  %23 = load ptr, ptr @cfun, align 8, !tbaa !922
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !959
  %26 = getelementptr inbounds %struct.gimple_df, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !961
  %28 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %27) #19
  tail call fastcc void @VEC_unsigned_heap_safe_grow_cleared(i32 noundef %28) #19
  %29 = load ptr, ptr @name_to_id, align 8
  %30 = tail call fastcc i32 @VEC_unsigned_base_index(ptr noundef %29, i32 noundef %16) #19
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !965

32:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 265, ptr noundef nonnull @.str.1) #20
  %33 = load ptr, ptr @name_to_id, align 8
  br label %34

34:                                               ; preds = %12, %32
  %35 = phi ptr [ %29, %12 ], [ %33, %32 ]
  %36 = load i32, ptr %9, align 4, !tbaa !948
  tail call fastcc void @VEC_unsigned_base_replace(ptr noundef %35, i32 noundef %16, i32 noundef %36) #19
  br label %44

37:                                               ; preds = %6
  %38 = load ptr, ptr @expression_to_id, align 8, !tbaa !922
  %39 = tail call ptr @htab_find_slot(ptr noundef %38, ptr noundef nonnull %0, i32 noundef 1) #20
  %40 = load ptr, ptr %39, align 8, !tbaa !922
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42, !prof !966

42:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 271, ptr noundef nonnull @.str.1) #20
  br label %43

43:                                               ; preds = %37, %42
  store ptr %0, ptr %39, align 8, !tbaa !922
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, ptr @next_expression_id, align 4, !tbaa !956
  %46 = add i32 %45, -1
  ret i32 %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !967 !PGOFuncName !968 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !969

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !970
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !972 !PGOFuncName !973 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !956
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_pre_expr_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !974 !PGOFuncName !975 {
  tail call fastcc void @VEC_pre_expr_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !922
  tail call fastcc void @VEC_pre_expr_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_reserve(i32 noundef %0) unnamed_addr #0 !prof !976 !PGOFuncName !977 {
  %2 = load ptr, ptr @name_to_id, align 8, !tbaa !922
  %3 = tail call fastcc i32 @VEC_unsigned_base_space(ptr noundef %2, i32 noundef %0) #19, !range !941
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !978

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 4) #20
  store ptr %6, ptr @name_to_id, align 8, !tbaa !922
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !979 !PGOFuncName !980 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !981

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !982
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !976 !PGOFuncName !984 {
  %2 = load ptr, ptr @name_to_id, align 8, !tbaa !922
  %3 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %2) #19
  tail call fastcc void @VEC_unsigned_heap_safe_grow(i32 noundef %0) #19
  %4 = load ptr, ptr @name_to_id, align 8, !tbaa !922
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
define internal fastcc void @VEC_unsigned_base_replace(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !prof !976 !PGOFuncName !985 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %4
  store i32 %2, ptr %5, align 4, !tbaa !956
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_pre_expr_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !974 !PGOFuncName !986 {
  %2 = load ptr, ptr %0, align 8, !tbaa !922
  %3 = tail call fastcc i32 @VEC_pre_expr_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !987

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !922
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_pre_expr_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !974 !PGOFuncName !988 {
  %3 = load i32, ptr %0, align 8, !tbaa !989
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !989
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !922
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_pre_expr_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !974 !PGOFuncName !991 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !992

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !993
  %6 = load i32, ptr %0, align 8, !tbaa !989
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
define internal fastcc i32 @VEC_unsigned_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !994 !PGOFuncName !995 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !996

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !997
  %7 = load i32, ptr %0, align 4, !tbaa !970
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
define internal fastcc void @VEC_unsigned_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !976 !PGOFuncName !998 {
  %2 = load ptr, ptr @name_to_id, align 8, !tbaa !922
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !999

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 4, !tbaa !970
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_unsigned_heap_reserve_exact(i32 noundef %8) #19
  %9 = load ptr, ptr @name_to_id, align 8, !tbaa !922, !nonnull !938, !noundef !938
  store i32 %0, ptr %9, align 4, !tbaa !970
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_unsigned_base_address(ptr noundef readnone %0) unnamed_addr #5 !prof !976 !PGOFuncName !1000 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !999
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !976 !PGOFuncName !1001 {
  %2 = load ptr, ptr @name_to_id, align 8, !tbaa !922
  %3 = tail call fastcc i32 @VEC_unsigned_base_space(ptr noundef %2, i32 noundef %0) #19, !range !941
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !999

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 4) #20
  store ptr %6, ptr @name_to_id, align 8, !tbaa !922
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_pre_expr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !1002 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !922
  tail call fastcc void @print_pre_expr(ptr noundef %2, ptr noundef %0) #19
  %3 = load ptr, ptr @stderr, align 8, !tbaa !922
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_pre_expr(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1002 !PGOFuncName !1003 {
  %3 = alloca ptr, align 8
  %4 = load i32, ptr %1, align 8, !tbaa !900
  switch i32 %4, label %115 [
    i32 3, label %5
    i32 0, label %8
    i32 1, label %11
    i32 2, label %43
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !906
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %7, i32 noundef 0) #20
  br label %115

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !906
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %10, i32 noundef 0) #20
  br label %115

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !906
  %14 = getelementptr inbounds %struct.vn_nary_op_s, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65535
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !922
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %19) #19
  %21 = load i32, ptr %14, align 4
  %22 = icmp ult i32 %21, 65536
  br i1 %22, label %41, label %23

23:                                               ; preds = %11, %36
  %24 = phi i64 [ %38, %36 ], [ 0, %11 ]
  %25 = getelementptr inbounds %struct.vn_nary_op_s, ptr %13, i64 0, i32 5, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !922
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
  br i1 %40, label %23, label %41, !llvm.loop !1004

41:                                               ; preds = %36, %11
  %42 = tail call i32 @fputc(i32 125, ptr %0)
  br label %115

43:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %44 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !906
  %46 = tail call i32 @fputc(i32 123, ptr %0)
  %47 = getelementptr inbounds %struct.vn_reference_s, ptr %45, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !1006
  %49 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %48, i32 noundef 0, ptr noundef nonnull %3) #19, !range !941
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %106, label %51

51:                                               ; preds = %43, %101
  %52 = phi i32 [ %103, %101 ], [ 0, %43 ]
  %53 = load ptr, ptr %3, align 8, !tbaa !922
  %54 = load i32, ptr %53, align 8, !tbaa !1007
  %55 = icmp eq i32 %54, 141
  br i1 %55, label %71, label %56

56:                                               ; preds = %51
  %57 = sext i32 %54 to i64
  %58 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !956
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = zext i32 %54 to i64
  %63 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !922
  %65 = tail call i32 @fputs(ptr %64, ptr %0)
  %66 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %53, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !1009
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = tail call i32 @fputc(i32 60, ptr %0)
  br label %71

71:                                               ; preds = %61, %69, %56, %51
  %72 = phi i1 [ false, %69 ], [ true, %61 ], [ true, %56 ], [ true, %51 ]
  %73 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %53, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !1009
  %75 = icmp eq ptr %74, null
  br i1 %75, label %90, label %76

76:                                               ; preds = %71
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef nonnull %74, i32 noundef 0) #20
  %77 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %53, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !1010
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = tail call i32 @fputc(i32 44, ptr %0)
  %82 = load ptr, ptr %77, align 8, !tbaa !1010
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %82, i32 noundef 0) #20
  br label %83

83:                                               ; preds = %80, %76
  %84 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %53, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !1011
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = tail call i32 @fputc(i32 44, ptr %0)
  %89 = load ptr, ptr %84, align 8, !tbaa !1011
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %89, i32 noundef 0) #20
  br label %90

90:                                               ; preds = %83, %87, %71
  br i1 %72, label %93, label %91

91:                                               ; preds = %90
  %92 = tail call i32 @fputc(i32 62, ptr %0)
  br label %93

93:                                               ; preds = %91, %90
  %94 = load ptr, ptr %47, align 8, !tbaa !1006
  %95 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %94) #19
  %96 = add i32 %95, -1
  %97 = icmp eq i32 %52, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = tail call i32 @fputc(i32 44, ptr %0)
  %100 = load ptr, ptr %47, align 8, !tbaa !1006
  br label %101

101:                                              ; preds = %98, %93
  %102 = phi ptr [ %100, %98 ], [ %94, %93 ]
  %103 = add i32 %52, 1
  %104 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %102, i32 noundef %103, ptr noundef nonnull %3) #19, !range !941
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %51, !llvm.loop !1012

106:                                              ; preds = %101, %43
  %107 = tail call i32 @fputc(i32 125, ptr %0)
  %108 = getelementptr inbounds %struct.vn_reference_s, ptr %45, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !1013
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = tail call i32 @fputc(i32 64, ptr %0)
  %113 = load ptr, ptr %108, align 8, !tbaa !1013
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
define internal fastcc noundef i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !1014 !PGOFuncName !1015 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !1016

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1017
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !1019

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !922
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !1020 !PGOFuncName !1021 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1022

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1017
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_bitmap_set(ptr noundef %0) local_unnamed_addr #0 !prof !1002 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !922
  tail call fastcc void @print_bitmap_set(ptr noundef %2, ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_bitmap_set(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !1002 !PGOFuncName !1023 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_iterator, align 8
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %2, i32 noundef %3) #19
  %8 = icmp eq ptr %1, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  %10 = load ptr, ptr %1, align 8, !tbaa !927
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %10, ptr noundef nonnull %5) #19
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !1024
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9, %19
  %14 = phi i1 [ true, %19 ], [ false, %9 ]
  %15 = load i32, ptr %5, align 4, !tbaa !956
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
  %22 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !1024
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %13, !llvm.loop !1025

24:                                               ; preds = %19, %9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %25

25:                                               ; preds = %24, %4
  %26 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 3, i64 1, ptr %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !1026 !PGOFuncName !1027 {
  %4 = load ptr, ptr %1, align 8, !tbaa !1028
  store ptr %4, ptr %0, align 8, !tbaa !1030
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !1033
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !1034

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !1030
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !1035
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !1037
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !1038
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !1039
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !956
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !1040 !PGOFuncName !1041 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1039
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !1042

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !1043

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !956
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !1044, !llvm.loop !1045

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !956
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !956
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !1037
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !1030
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !1037
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !1046

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !1038
  store i64 %35, ptr %3, align 8, !tbaa !1039
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !1047

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !956
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !956
  %40 = load i32, ptr %23, align 8, !tbaa !1037
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !1037
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !1048, !llvm.loop !1049

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !1050
  store ptr %44, ptr %0, align 8, !tbaa !1030
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !1051

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !1035
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !956
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !1039
  store i32 %16, ptr %1, align 4, !tbaa !956
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @expression_for_id(i32 noundef %0) unnamed_addr #10 !prof !1052 !PGOFuncName !1053 {
  %2 = load ptr, ptr @expressions, align 8
  %3 = tail call fastcc ptr @VEC_pre_expr_base_index(ptr noundef %2, i32 noundef %0) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #4 !prof !1054 !PGOFuncName !1055 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1039
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !1039
  %6 = load i32, ptr %1, align 4, !tbaa !956
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !956
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_pre_expr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1052 !PGOFuncName !1056 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !922
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_value_expressions(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !1002 {
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
define dso_local void @debug_value_expressions(i32 noundef %0) local_unnamed_addr #0 !prof !1002 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !922
  tail call void @print_value_expressions(ptr noundef %2, i32 noundef %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_pre() #11 !prof !1057 !PGOFuncName !1058 {
  %1 = load i32, ptr @flag_tree_pre, align 4, !tbaa !956
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @do_pre() #0 !prof !1057 !PGOFuncName !1059 {
  %1 = tail call fastcc i32 @execute_pre(i8 noundef zeroext 0) #19
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @execute_pre(i8 noundef zeroext %0) unnamed_addr #0 !prof !1060 !PGOFuncName !1061 {
  %2 = load i32, ptr @optimize, align 4, !tbaa !956
  %3 = icmp sgt i32 %2, 2
  br i1 %3, label %4, label %9, !prof !1062

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !922
  %6 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %5) #20
  %7 = icmp ne i8 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  store i8 %10, ptr @do_partial_partial, align 1, !tbaa !906
  %11 = icmp eq i8 %0, 0
  br i1 %11, label %12, label %15, !prof !1063

12:                                               ; preds = %9
  tail call void @loop_optimizer_init(i32 noundef 7) #20
  %13 = tail call zeroext i8 @run_scc_vn(i8 noundef zeroext 0) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %19, !prof !1064

15:                                               ; preds = %9
  %16 = tail call zeroext i8 @run_scc_vn(i8 noundef zeroext %0) #20
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %81, label %19, !prof !1064

18:                                               ; preds = %12
  tail call fastcc void @remove_dead_inserted_code() #19
  tail call void @loop_optimizer_finalize() #20
  br label %81

19:                                               ; preds = %15, %12
  tail call fastcc void @init_pre(i8 noundef zeroext %0) #19
  tail call void @scev_initialize() #20
  tail call fastcc void @compute_avail() #19
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %21 = icmp eq ptr %20, null
  br i1 %21, label %58, label %22, !prof !1062

22:                                               ; preds = %19
  %23 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @cfun, align 8, !tbaa !922
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !1065
  %30 = load ptr, ptr %29, align 8, !tbaa !922
  %31 = icmp eq ptr %30, null
  br i1 %31, label %58, label %32

32:                                               ; preds = %26, %32
  %33 = phi ptr [ %56, %32 ], [ %30, %26 ]
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !1066
  %37 = load ptr, ptr %36, align 8, !tbaa !1068
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !1070
  tail call fastcc void @print_bitmap_set(ptr noundef %34, ptr noundef %37, ptr noundef nonnull @.str.18, i32 noundef %39) #19
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %41 = load ptr, ptr %35, align 8, !tbaa !1066
  %42 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !1071
  %44 = load i32, ptr %38, align 8, !tbaa !1070
  tail call fastcc void @print_bitmap_set(ptr noundef %40, ptr noundef %43, ptr noundef nonnull @.str.19, i32 noundef %44) #19
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %46 = load ptr, ptr %35, align 8, !tbaa !1066
  %47 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !1072
  %49 = load i32, ptr %38, align 8, !tbaa !1070
  tail call fastcc void @print_bitmap_set(ptr noundef %45, ptr noundef %48, ptr noundef nonnull @.str.20, i32 noundef %49) #19
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %51 = load ptr, ptr %35, align 8, !tbaa !1066
  %52 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !1073
  %54 = load i32, ptr %38, align 8, !tbaa !1070
  tail call fastcc void @print_bitmap_set(ptr noundef %50, ptr noundef %53, ptr noundef nonnull @.str.21, i32 noundef %54) #19
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !922
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %32, !llvm.loop !1074

58:                                               ; preds = %32, %26, %22, %19
  br i1 %11, label %59, label %67, !prof !1063

59:                                               ; preds = %58
  %60 = load ptr, ptr @cfun, align 8, !tbaa !922
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !1065
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !1075
  %65 = icmp slt i32 %64, 4000
  br i1 %65, label %66, label %67, !prof !1077

66:                                               ; preds = %59
  tail call fastcc void @compute_antic() #19
  tail call fastcc void @insert() #19
  br label %67

67:                                               ; preds = %66, %59, %58
  %68 = tail call fastcc i32 @eliminate() #19
  %69 = load ptr, ptr @cfun, align 8, !tbaa !922
  %70 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 1), align 4, !tbaa !1078
  tail call void @statistics_counter_event(ptr noundef %69, ptr noundef nonnull @.str.22, i32 noundef %70) #20
  %71 = load ptr, ptr @cfun, align 8, !tbaa !922
  %72 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 2), align 4, !tbaa !1080
  tail call void @statistics_counter_event(ptr noundef %71, ptr noundef nonnull @.str.23, i32 noundef %72) #20
  %73 = load ptr, ptr @cfun, align 8, !tbaa !922
  %74 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 3), align 4, !tbaa !1081
  tail call void @statistics_counter_event(ptr noundef %73, ptr noundef nonnull @.str.24, i32 noundef %74) #20
  %75 = load ptr, ptr @cfun, align 8, !tbaa !922
  %76 = load i32, ptr @pre_stats, align 4, !tbaa !1082
  tail call void @statistics_counter_event(ptr noundef %75, ptr noundef nonnull @.str.25, i32 noundef %76) #20
  %77 = load ptr, ptr @cfun, align 8, !tbaa !922
  %78 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 4), align 4, !tbaa !1083
  tail call void @statistics_counter_event(ptr noundef %77, ptr noundef nonnull @.str.26, i32 noundef %78) #20
  tail call void @remove_fake_exit_edges() #20
  tail call void @gsi_commit_edge_inserts() #20
  tail call fastcc void @clear_expression_ids() #19
  tail call void @free_scc_vn() #20
  br i1 %11, label %79, label %80, !prof !1063

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
define internal fastcc void @remove_dead_inserted_code() unnamed_addr #0 !prof !1057 !PGOFuncName !1084 {
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
  store ptr %8, ptr %1, align 8, !tbaa !922
  %9 = load ptr, ptr @inserted_exprs, align 8
  %10 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %2) #19, !range !941
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17, !prof !1085

12:                                               ; preds = %25, %0
  %13 = phi ptr [ %9, %0 ], [ %26, %25 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !922
  %15 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %8) #19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %37, !prof !1085

17:                                               ; preds = %0, %25
  %18 = phi ptr [ %26, %25 ], [ %9, %0 ]
  %19 = phi i32 [ %27, %25 ], [ 0, %0 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !922
  %21 = tail call fastcc i32 @gimple_plf(ptr noundef %20) #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !1086

23:                                               ; preds = %17
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %8, ptr noundef %20) #19
  %24 = load ptr, ptr @inserted_exprs, align 8
  br label %25

25:                                               ; preds = %17, %23
  %26 = phi ptr [ %18, %17 ], [ %24, %23 ]
  %27 = add nuw nsw i32 %19, 1
  %28 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %26, i32 noundef %27, ptr noundef nonnull %2) #19, !range !941
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %12, label %17, !prof !1087, !llvm.loop !1088

30:                                               ; preds = %79
  %31 = load ptr, ptr @inserted_exprs, align 8
  br label %32

32:                                               ; preds = %30, %12
  %33 = phi ptr [ %13, %12 ], [ %31, %30 ]
  %34 = phi ptr [ %14, %12 ], [ %39, %30 ]
  store ptr %34, ptr %2, align 8, !tbaa !922
  %35 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %33, i32 noundef 0, ptr noundef nonnull %2) #19, !range !941
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %111, label %83, !prof !1085

37:                                               ; preds = %12, %79
  %38 = phi ptr [ %80, %79 ], [ %8, %12 ]
  %39 = tail call fastcc ptr @VEC_gimple_base_pop(ptr noundef %38) #19
  %40 = tail call fastcc i32 @gimple_code(ptr noundef %39) #19, !range !1089
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %42, label %62, !prof !1090

42:                                               ; preds = %37
  %43 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %39) #19
  call fastcc void @VEC_gimple_heap_reserve(ptr noundef nonnull %1, i32 noundef %43) #19
  %44 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %39) #19
  %45 = icmp eq i32 %44, 0
  %46 = load ptr, ptr %1, align 8
  br i1 %45, label %79, label %47, !prof !1091

47:                                               ; preds = %42, %58
  %48 = phi i32 [ %59, %58 ], [ 0, %42 ]
  %49 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %39, i32 noundef %48) #19
  %50 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %49) #19
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 141
  br i1 %53, label %54, label %58, !prof !1092

54:                                               ; preds = %47
  %55 = tail call fastcc ptr @mark_operand_necessary(ptr noundef nonnull %50) #19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57, !prof !1093

57:                                               ; preds = %54
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %46, ptr noundef nonnull %55) #19
  br label %58

58:                                               ; preds = %54, %57, %47
  %59 = add nuw i32 %48, 1
  %60 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %39) #19
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %47, label %79, !prof !1094, !llvm.loop !1095

62:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  %63 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %39, i32 noundef 5) #19
  %64 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %77, !prof !1096

66:                                               ; preds = %62, %71
  %67 = phi ptr [ %72, %71 ], [ %63, %62 ]
  %68 = tail call fastcc ptr @mark_operand_necessary(ptr noundef %67) #19
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70, !prof !1097

70:                                               ; preds = %66
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %68) #19
  br label %71

71:                                               ; preds = %70, %66
  %72 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #19
  %73 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %66, label %75, !prof !1098, !llvm.loop !1099

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
  br i1 %82, label %30, label %37, !prof !1100, !llvm.loop !1101

83:                                               ; preds = %32, %106
  %84 = phi ptr [ %107, %106 ], [ %33, %32 ]
  %85 = phi i32 [ %108, %106 ], [ 0, %32 ]
  %86 = load ptr, ptr %2, align 8, !tbaa !922
  %87 = call fastcc i32 @gimple_plf(ptr noundef %86) #19
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %106, !prof !1102

89:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %91 = icmp eq ptr %90, null
  br i1 %91, label %99, label %92, !prof !1103

92:                                               ; preds = %89
  %93 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %94 = and i32 %93, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = call i64 @fwrite(ptr nonnull @.str.27, i64 31, i64 1, ptr nonnull %90)
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !922
  call void @print_gimple_stmt(ptr noundef %98, ptr noundef %86, i32 noundef 0, i32 noundef 0) #20
  br label %99

99:                                               ; preds = %96, %92, %89
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %86) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1104
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  %100 = call fastcc i32 @gimple_code(ptr noundef %86) #19, !range !1089
  %101 = icmp eq i32 %100, 16
  br i1 %101, label %102, label %103, !prof !1105

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
  %109 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %107, i32 noundef %108, ptr noundef nonnull %2) #19, !range !941
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %83, !prof !1087, !llvm.loop !1106

111:                                              ; preds = %106, %32
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret void
}

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_pre(i8 noundef zeroext %0) unnamed_addr #0 !prof !1060 !PGOFuncName !1107 {
  store i32 1, ptr @next_expression_id, align 4, !tbaa !956
  store ptr null, ptr @expressions, align 8, !tbaa !922
  tail call fastcc void @VEC_pre_expr_heap_safe_push(ptr noundef nonnull @expressions, ptr noundef null) #19
  %2 = tail call i32 @get_max_value_id() #20
  %3 = add i32 %2, 1
  %4 = tail call fastcc ptr @VEC_bitmap_set_t_heap_alloc(i32 noundef %3) #19
  store ptr %4, ptr @value_expressions, align 8, !tbaa !922
  %5 = tail call i32 @get_max_value_id() #20
  %6 = add i32 %5, 1
  tail call fastcc void @VEC_bitmap_set_t_heap_safe_grow_cleared(i32 noundef %6) #19
  store ptr null, ptr @name_to_id, align 8, !tbaa !922
  store i8 %0, ptr @in_fre, align 1, !tbaa !906
  store ptr null, ptr @inserted_exprs, align 8, !tbaa !922
  store ptr null, ptr @need_creation, align 8, !tbaa !922
  store ptr null, ptr @pretemp, align 8, !tbaa !922
  store ptr null, ptr @prephitemp, align 8, !tbaa !922
  tail call void @connect_infinite_loops_to_exit() #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) @pre_stats, i8 0, i64 20, i1 false)
  %7 = load ptr, ptr @cfun, align 8, !tbaa !922
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !1065
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !1075
  %12 = add nsw i32 %11, -2
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr @xmalloc(i64 noundef %14) #20
  store ptr %15, ptr @postorder, align 8, !tbaa !922
  tail call fastcc void @my_rev_post_order_compute(ptr noundef %15) #19
  %16 = load ptr, ptr @cfun, align 8, !tbaa !922
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !1065
  %19 = load ptr, ptr %18, align 8, !tbaa !922
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21, !prof !1108

21:                                               ; preds = %1, %21
  %22 = phi ptr [ %26, %21 ], [ %19, %1 ]
  %23 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #20
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !1066
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !922
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %21, !prof !1109, !llvm.loop !1110

28:                                               ; preds = %21, %1
  tail call void @calculate_dominance_info(i32 noundef 2) #20
  tail call void @calculate_dominance_info(i32 noundef 1) #20
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @grand_bitmap_obstack) #20
  %29 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  store ptr %29, ptr @inserted_phi_names, align 8, !tbaa !922
  %30 = tail call ptr @htab_create(i64 noundef 5110, ptr noundef nonnull @expr_pred_trans_hash, ptr noundef nonnull @expr_pred_trans_eq, ptr noundef nonnull @free) #20
  store ptr %30, ptr @phi_translate_table, align 8, !tbaa !922
  %31 = load ptr, ptr @cfun, align 8, !tbaa !922
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !959
  %34 = getelementptr inbounds %struct.gimple_df, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !961
  %36 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %35) #19
  %37 = mul i32 %36, 3
  %38 = zext i32 %37 to i64
  %39 = tail call ptr @htab_create(i64 noundef %38, ptr noundef nonnull @pre_expr_hash, ptr noundef nonnull @pre_expr_eq, ptr noundef null) #20
  store ptr %39, ptr @expression_to_id, align 8, !tbaa !922
  %40 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.30, i64 noundef 16, i64 noundef 30) #20
  store ptr %40, ptr @bitmap_set_pool, align 8, !tbaa !922
  %41 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.31, i64 noundef 16, i64 noundef 30) #20
  store ptr %41, ptr @pre_expr_pool, align 8, !tbaa !922
  %42 = load ptr, ptr @cfun, align 8, !tbaa !922
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !1065
  %45 = load ptr, ptr %44, align 8, !tbaa !922
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47, !prof !1108

47:                                               ; preds = %28, %47
  %48 = phi ptr [ %62, %47 ], [ %45, %28 ]
  %49 = tail call fastcc ptr @bitmap_set_new() #19
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !1066
  store ptr %49, ptr %51, align 8, !tbaa !1068
  %52 = tail call fastcc ptr @bitmap_set_new() #19
  %53 = load ptr, ptr %50, align 8, !tbaa !1066
  %54 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %53, i64 0, i32 1
  store ptr %52, ptr %54, align 8, !tbaa !1071
  %55 = tail call fastcc ptr @bitmap_set_new() #19
  %56 = load ptr, ptr %50, align 8, !tbaa !1066
  %57 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %56, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !1072
  %58 = tail call fastcc ptr @bitmap_set_new() #19
  %59 = load ptr, ptr %50, align 8, !tbaa !1066
  %60 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %59, i64 0, i32 3
  store ptr %58, ptr %60, align 8, !tbaa !1073
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !922
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %47, !prof !1109, !llvm.loop !1111

64:                                               ; preds = %47, %28
  %65 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  store ptr %65, ptr @need_eh_cleanup, align 8, !tbaa !922
  ret void
}

; Function Attrs: optsize
declare void @scev_initialize() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_avail() unnamed_addr #0 !prof !1060 !PGOFuncName !1112 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = load ptr, ptr @cfun, align 8, !tbaa !922
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !959
  %13 = getelementptr inbounds %struct.gimple_df, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !961
  %15 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %14) #19
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %17, label %64, !prof !1113

17:                                               ; preds = %0, %55
  %18 = phi ptr [ %61, %55 ], [ %14, %0 ]
  %19 = phi i32 [ %56, %55 ], [ 1, %0 ]
  %20 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %18, i32 noundef %19) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %55, label %22, !prof !1114

22:                                               ; preds = %17
  %23 = load i64, ptr %20, align 8
  %24 = and i64 %23, 4294967296
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %55, label %26, !prof !1115

26:                                               ; preds = %22
  %27 = tail call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %20) #19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %55, !prof !1116

29:                                               ; preds = %26
  %30 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %20) #20
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %55, label %32, !prof !1117

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %20) #19
  %34 = tail call fastcc i32 @get_expr_value_id(ptr noundef %33) #19
  tail call void @add_to_value(i32 noundef %34, ptr noundef %33) #19
  %35 = load i8, ptr @in_fre, align 1, !tbaa !906
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %46, !prof !1118

37:                                               ; preds = %32
  %38 = load ptr, ptr @cfun, align 8, !tbaa !922
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !1065
  %41 = load ptr, ptr %40, align 8, !tbaa !1119
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !1066
  %44 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !1072
  tail call fastcc void @bitmap_insert_into_set(ptr noundef %45, ptr noundef %33) #19
  br label %46

46:                                               ; preds = %37, %32
  %47 = load ptr, ptr @cfun, align 8, !tbaa !922
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !1065
  %50 = load ptr, ptr %49, align 8, !tbaa !1119
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !1066
  %53 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !1073
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %54, ptr noundef %33) #19
  br label %55

55:                                               ; preds = %17, %22, %26, %29, %46
  %56 = add nuw i32 %19, 1
  %57 = load ptr, ptr @cfun, align 8, !tbaa !922
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !959
  %60 = getelementptr inbounds %struct.gimple_df, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !961
  %62 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %61) #19
  %63 = icmp ult i32 %56, %62
  br i1 %63, label %17, label %64, !prof !1120, !llvm.loop !1121

64:                                               ; preds = %55, %0
  %65 = phi ptr [ %10, %0 ], [ %57, %55 ]
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !1065
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !1075
  %70 = sext i32 %69 to i64
  %71 = shl nsw i64 %70, 3
  %72 = tail call ptr @xmalloc(i64 noundef %71) #20
  %73 = load ptr, ptr @cfun, align 8, !tbaa !922
  %74 = getelementptr inbounds %struct.function, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !1065
  %76 = load ptr, ptr %75, align 8, !tbaa !1119
  %77 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %76) #20
  %78 = icmp eq ptr %77, null
  br i1 %78, label %376, label %81, !prof !1108

79:                                               ; preds = %81
  %80 = icmp eq i64 %84, 0
  br i1 %80, label %376, label %88, !prof !1122

81:                                               ; preds = %64, %81
  %82 = phi ptr [ %86, %81 ], [ %77, %64 ]
  %83 = phi i64 [ %84, %81 ], [ 0, %64 ]
  %84 = add i64 %83, 1
  %85 = getelementptr inbounds ptr, ptr %72, i64 %83
  store ptr %82, ptr %85, align 8, !tbaa !922
  %86 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %82) #20
  %87 = icmp eq ptr %86, null
  br i1 %87, label %79, label %81, !prof !1113, !llvm.loop !1123

88:                                               ; preds = %79, %373
  %89 = phi i64 [ %374, %373 ], [ %84, %79 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #21
  %90 = add i64 %89, -1
  %91 = getelementptr inbounds ptr, ptr %72, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !922
  %93 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %92) #20
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95, !prof !1124

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !1066
  %98 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %97, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !1073
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !1066
  %102 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %101, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !1073
  call fastcc void @bitmap_set_copy(ptr noundef %99, ptr noundef %103) #19
  br label %104

104:                                              ; preds = %95, %88
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %92) #20
  %105 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !1024
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %111, !prof !1125

107:                                              ; preds = %104, %107
  %108 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19
  call fastcc void @make_values_for_phi(ptr noundef %108, ptr noundef %92) #19
  call fastcc void @gsi_next(ptr noundef nonnull %1) #19
  %109 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !1024
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %107, label %111, !prof !1126, !llvm.loop !1127

111:                                              ; preds = %107, %104
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !1066
  %114 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %113, i64 0, i32 8
  %115 = load i8, ptr %114, align 8
  %116 = and i8 %115, -5
  store i8 %116, ptr %114, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %92) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1104
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  %117 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !1024
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %363, !prof !1128

119:                                              ; preds = %111, %360
  %120 = phi i32 [ %122, %360 ], [ 1, %111 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  %121 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19
  %122 = add i32 %120, 1
  call fastcc void @gimple_set_uid(ptr noundef %121, i32 noundef %120) #19
  %123 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %121) #19, !range !1024
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %140, label %125, !prof !1129

125:                                              ; preds = %119
  %126 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %121) #20
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %140, !prof !1130

128:                                              ; preds = %125
  %129 = call i32 @gimple_call_flags(ptr noundef %121) #20
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132, !prof !1131

132:                                              ; preds = %128
  %133 = and i32 %129, 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %140, label %135, !prof !1132

135:                                              ; preds = %132, %128
  %136 = load ptr, ptr %112, align 8, !tbaa !1066
  %137 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %136, i64 0, i32 8
  %138 = load i8, ptr %137, align 8
  %139 = or i8 %138, 4
  store i8 %139, ptr %137, align 8
  br label %140

140:                                              ; preds = %132, %135, %125, %119
  %141 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %121, i32 noundef 2) #19
  %142 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %161, !prof !1133

144:                                              ; preds = %140, %154
  %145 = phi ptr [ %158, %154 ], [ %141, %140 ]
  %146 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %145) #19
  %147 = call fastcc i32 @get_expr_value_id(ptr noundef %146) #19
  call void @add_to_value(i32 noundef %147, ptr noundef %146) #19
  %148 = load i8, ptr @in_fre, align 1, !tbaa !906
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %154, !prof !1134

150:                                              ; preds = %144
  %151 = load ptr, ptr %112, align 8, !tbaa !1066
  %152 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %151, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !1072
  call fastcc void @bitmap_insert_into_set(ptr noundef %153, ptr noundef %146) #19
  br label %154

154:                                              ; preds = %150, %144
  %155 = load ptr, ptr %112, align 8, !tbaa !1066
  %156 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %155, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !1073
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %157, ptr noundef %146) #19
  %158 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #19
  %159 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %144, label %161, !prof !1135, !llvm.loop !1136

161:                                              ; preds = %154, %140
  %162 = call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %121) #19, !range !1024
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %360, !prof !1137

164:                                              ; preds = %161
  %165 = call zeroext i8 @stmt_could_throw_p(ptr noundef %121) #20
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %360, !prof !1138

167:                                              ; preds = %164
  %168 = call fastcc i32 @gimple_code(ptr noundef %121) #19, !range !1089
  %169 = trunc i32 %168 to i8
  switch i8 %169, label %360 [
    i8 9, label %170
    i8 8, label %179
    i8 6, label %244
  ], !prof !1139

170:                                              ; preds = %167
  %171 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %121, i32 noundef 1) #19
  %172 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %360, !prof !1140

174:                                              ; preds = %170, %174
  %175 = phi ptr [ %176, %174 ], [ %171, %170 ]
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef %175) #19
  %176 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #19
  %177 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %174, label %360, !prof !1141, !llvm.loop !1142

179:                                              ; preds = %167
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !922
  %180 = call fastcc zeroext i8 @can_value_number_call(ptr noundef %121) #19, !range !1024
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %243, label %182, !prof !1143

182:                                              ; preds = %179
  call void @copy_reference_ops_from_call(ptr noundef %121, ptr noundef nonnull %6) #20
  %183 = call fastcc ptr @gimple_vuse(ptr noundef %121) #19
  %184 = call fastcc ptr @gimple_expr_type(ptr noundef %121) #19
  %185 = load ptr, ptr %6, align 8, !tbaa !922
  %186 = call ptr @vn_reference_lookup_pieces(ptr noundef %183, i32 noundef 0, ptr noundef %184, ptr noundef %185, ptr noundef nonnull %4, i8 noundef zeroext 0) #20
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %6) #19
  %187 = load ptr, ptr %4, align 8, !tbaa !922
  %188 = icmp eq ptr %187, null
  br i1 %188, label %243, label %189, !prof !1144

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.vn_reference_s, ptr %187, i64 0, i32 5
  %191 = load ptr, ptr %190, align 8, !tbaa !1006
  %192 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %191, i32 noundef 0, ptr noundef nonnull %5) #19, !range !941
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %230, label %194, !prof !1145

194:                                              ; preds = %189, %223
  %195 = phi i32 [ %224, %223 ], [ 0, %189 ]
  %196 = load ptr, ptr %5, align 8, !tbaa !922
  %197 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %196, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !1009
  %199 = icmp eq ptr %198, null
  br i1 %199, label %205, label %200, !prof !1146

200:                                              ; preds = %194
  %201 = load i64, ptr %198, align 8
  %202 = and i64 %201, 65535
  %203 = icmp eq i64 %202, 141
  br i1 %203, label %204, label %205, !prof !1147

204:                                              ; preds = %200
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %198) #19
  br label %205

205:                                              ; preds = %204, %200, %194
  %206 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %196, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !1010
  %208 = icmp eq ptr %207, null
  br i1 %208, label %214, label %209, !prof !1148

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
  %216 = load ptr, ptr %215, align 8, !tbaa !1011
  %217 = icmp eq ptr %216, null
  br i1 %217, label %223, label %218, !prof !1148

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
  %225 = load ptr, ptr %4, align 8, !tbaa !922
  %226 = getelementptr inbounds %struct.vn_reference_s, ptr %225, i64 0, i32 5
  %227 = load ptr, ptr %226, align 8, !tbaa !1006
  %228 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %227, i32 noundef %224, ptr noundef nonnull %5) #19, !range !941
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %194, !prof !1149, !llvm.loop !1150

230:                                              ; preds = %223, %189
  %231 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !922
  %232 = call ptr @pool_alloc(ptr noundef %231) #20
  store i32 2, ptr %232, align 8, !tbaa !900
  %233 = getelementptr inbounds %struct.pre_expr_d, ptr %232, i64 0, i32 1
  store i32 0, ptr %233, align 4, !tbaa !948
  %234 = load ptr, ptr %4, align 8, !tbaa !922
  %235 = getelementptr inbounds %struct.pre_expr_d, ptr %232, i64 0, i32 2
  store ptr %234, ptr %235, align 8, !tbaa !906
  %236 = call fastcc i32 @get_or_alloc_expression_id(ptr noundef nonnull %232) #19
  %237 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %232) #19
  call void @add_to_value(i32 noundef %237, ptr noundef nonnull %232) #19
  %238 = load i8, ptr @in_fre, align 1, !tbaa !906
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %243, !prof !1151

240:                                              ; preds = %230
  %241 = load ptr, ptr %112, align 8, !tbaa !1066
  %242 = load ptr, ptr %241, align 8, !tbaa !1068
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %242, ptr noundef nonnull %232) #19
  br label %243

243:                                              ; preds = %230, %240, %182, %179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %360

244:                                              ; preds = %167
  %245 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %121) #19, !range !1152
  %246 = zext nneg i32 %245 to i64
  %247 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !956
  switch i32 %248, label %342 [
    i32 6, label %249
    i32 7, label %249
    i32 5, label %249
    i32 3, label %288
    i32 4, label %288
  ], !prof !1153

249:                                              ; preds = %244, %244, %244
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %250 = call fastcc i32 @gimple_num_ops(ptr noundef %121) #19
  %251 = add i32 %250, -1
  %252 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %121) #19, !range !1152
  %253 = call fastcc ptr @gimple_expr_type(ptr noundef %121) #19
  %254 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %121) #19
  %255 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %121) #19
  %256 = call ptr @vn_nary_op_lookup_pieces(i32 noundef %251, i32 noundef %252, ptr noundef %253, ptr noundef %254, ptr noundef %255, ptr noundef null, ptr noundef null, ptr noundef nonnull %7) #20
  %257 = load ptr, ptr %7, align 8, !tbaa !922
  %258 = icmp eq ptr %257, null
  br i1 %258, label %263, label %259, !prof !1154

259:                                              ; preds = %249
  %260 = getelementptr inbounds %struct.vn_nary_op_s, ptr %257, i64 0, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = icmp ult i32 %261, 65536
  br i1 %262, label %282, label %264, !prof !1155

263:                                              ; preds = %249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %360

264:                                              ; preds = %259, %274
  %265 = phi ptr [ %275, %274 ], [ %257, %259 ]
  %266 = phi i64 [ %276, %274 ], [ 0, %259 ]
  %267 = getelementptr inbounds %struct.vn_nary_op_s, ptr %265, i64 0, i32 5, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !922
  %269 = load i64, ptr %268, align 8
  %270 = and i64 %269, 65535
  %271 = icmp eq i64 %270, 141
  br i1 %271, label %272, label %274, !prof !1156

272:                                              ; preds = %264
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %268) #19
  %273 = load ptr, ptr %7, align 8, !tbaa !922
  br label %274

274:                                              ; preds = %264, %272
  %275 = phi ptr [ %265, %264 ], [ %273, %272 ]
  %276 = add nuw nsw i64 %266, 1
  %277 = getelementptr inbounds %struct.vn_nary_op_s, ptr %275, i64 0, i32 1
  %278 = load i32, ptr %277, align 4
  %279 = lshr i32 %278, 16
  %280 = zext nneg i32 %279 to i64
  %281 = icmp ult i64 %276, %280
  br i1 %281, label %264, label %282, !prof !1157, !llvm.loop !1158

282:                                              ; preds = %274, %259
  %283 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !922
  %284 = call ptr @pool_alloc(ptr noundef %283) #20
  store i32 1, ptr %284, align 8, !tbaa !900
  %285 = getelementptr inbounds %struct.pre_expr_d, ptr %284, i64 0, i32 1
  store i32 0, ptr %285, align 4, !tbaa !948
  %286 = load ptr, ptr %7, align 8, !tbaa !922
  %287 = getelementptr inbounds %struct.pre_expr_d, ptr %284, i64 0, i32 2
  store ptr %286, ptr %287, align 8, !tbaa !906
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %351

288:                                              ; preds = %244, %244
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %289 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %121) #19
  %290 = call fastcc ptr @gimple_vuse(ptr noundef %121) #19
  %291 = call ptr @vn_reference_lookup(ptr noundef %289, ptr noundef %290, i8 noundef zeroext 1, ptr noundef nonnull %8) #20
  %292 = load ptr, ptr %8, align 8, !tbaa !922
  %293 = icmp eq ptr %292, null
  br i1 %293, label %299, label %294, !prof !1159

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.vn_reference_s, ptr %292, i64 0, i32 5
  %296 = load ptr, ptr %295, align 8, !tbaa !1006
  %297 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %296, i32 noundef 0, ptr noundef nonnull %9) #19, !range !941
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %336, label %300, !prof !1160

299:                                              ; preds = %288
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %360

300:                                              ; preds = %294, %329
  %301 = phi i32 [ %330, %329 ], [ 0, %294 ]
  %302 = load ptr, ptr %9, align 8, !tbaa !922
  %303 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %302, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !1009
  %305 = icmp eq ptr %304, null
  br i1 %305, label %311, label %306, !prof !1161

306:                                              ; preds = %300
  %307 = load i64, ptr %304, align 8
  %308 = and i64 %307, 65535
  %309 = icmp eq i64 %308, 141
  br i1 %309, label %310, label %311, !prof !1162

310:                                              ; preds = %306
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %304) #19
  br label %311

311:                                              ; preds = %310, %306, %300
  %312 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %302, i64 0, i32 3
  %313 = load ptr, ptr %312, align 8, !tbaa !1010
  %314 = icmp eq ptr %313, null
  br i1 %314, label %320, label %315, !prof !1163

315:                                              ; preds = %311
  %316 = load i64, ptr %313, align 8
  %317 = and i64 %316, 65535
  %318 = icmp eq i64 %317, 141
  br i1 %318, label %319, label %320, !prof !1164

319:                                              ; preds = %315
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %313) #19
  br label %320

320:                                              ; preds = %319, %315, %311
  %321 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %302, i64 0, i32 4
  %322 = load ptr, ptr %321, align 8, !tbaa !1011
  %323 = icmp eq ptr %322, null
  br i1 %323, label %329, label %324, !prof !1165

324:                                              ; preds = %320
  %325 = load i64, ptr %322, align 8
  %326 = and i64 %325, 65535
  %327 = icmp eq i64 %326, 141
  br i1 %327, label %328, label %329, !prof !1166

328:                                              ; preds = %324
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %322) #19
  br label %329

329:                                              ; preds = %320, %324, %328
  %330 = add i32 %301, 1
  %331 = load ptr, ptr %8, align 8, !tbaa !922
  %332 = getelementptr inbounds %struct.vn_reference_s, ptr %331, i64 0, i32 5
  %333 = load ptr, ptr %332, align 8, !tbaa !1006
  %334 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %333, i32 noundef %330, ptr noundef nonnull %9) #19, !range !941
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %300, !prof !1167, !llvm.loop !1168

336:                                              ; preds = %329, %294
  %337 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !922
  %338 = call ptr @pool_alloc(ptr noundef %337) #20
  store i32 2, ptr %338, align 8, !tbaa !900
  %339 = getelementptr inbounds %struct.pre_expr_d, ptr %338, i64 0, i32 1
  store i32 0, ptr %339, align 4, !tbaa !948
  %340 = load ptr, ptr %8, align 8, !tbaa !922
  %341 = getelementptr inbounds %struct.pre_expr_d, ptr %338, i64 0, i32 2
  store ptr %340, ptr %341, align 8, !tbaa !906
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %351

342:                                              ; preds = %244
  %343 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %121, i32 noundef 1) #19
  %344 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %346, label %360, !prof !1169

346:                                              ; preds = %342, %346
  %347 = phi ptr [ %348, %346 ], [ %343, %342 ]
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef %347) #19
  %348 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #19
  %349 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %346, label %360, !prof !1170, !llvm.loop !1171

351:                                              ; preds = %282, %336
  %352 = phi ptr [ %338, %336 ], [ %284, %282 ]
  %353 = call fastcc i32 @get_or_alloc_expression_id(ptr noundef nonnull %352) #19
  %354 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %352) #19
  call void @add_to_value(i32 noundef %354, ptr noundef nonnull %352) #19
  %355 = load i8, ptr @in_fre, align 1, !tbaa !906
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %357, label %360, !prof !1172

357:                                              ; preds = %351
  %358 = load ptr, ptr %112, align 8, !tbaa !1066
  %359 = load ptr, ptr %358, align 8, !tbaa !1068
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %359, ptr noundef nonnull %352) #19
  br label %360

360:                                              ; preds = %346, %174, %342, %170, %299, %263, %167, %357, %351, %161, %164, %243
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  call fastcc void @gsi_next(ptr noundef nonnull %1) #19
  %361 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !1024
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %119, label %363, !prof !1173, !llvm.loop !1174

363:                                              ; preds = %360, %111
  %364 = call ptr @first_dom_son(i32 noundef 1, ptr noundef %92) #20
  %365 = icmp eq ptr %364, null
  br i1 %365, label %373, label %366, !prof !1175

366:                                              ; preds = %363, %366
  %367 = phi ptr [ %371, %366 ], [ %364, %363 ]
  %368 = phi i64 [ %369, %366 ], [ %90, %363 ]
  %369 = add i64 %368, 1
  %370 = getelementptr inbounds ptr, ptr %72, i64 %368
  store ptr %367, ptr %370, align 8, !tbaa !922
  %371 = call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %367) #20
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %366, !prof !1176, !llvm.loop !1177

373:                                              ; preds = %366, %363
  %374 = phi i64 [ %90, %363 ], [ %369, %366 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #21
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %88, !prof !1175, !llvm.loop !1178

376:                                              ; preds = %373, %64, %79
  call void @free(ptr noundef %72) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_antic() unnamed_addr #0 !prof !1179 !PGOFuncName !1180 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !922
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1065
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !1181
  %8 = tail call ptr @sbitmap_alloc(i32 noundef %7) #20
  store ptr %8, ptr @has_abnormal_preds, align 8, !tbaa !922
  tail call void @sbitmap_zero(ptr noundef %8) #20
  %9 = load ptr, ptr @cfun, align 8, !tbaa !922
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1065
  %12 = load ptr, ptr %11, align 8, !tbaa !1119
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !1182
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !1183
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %65, label %18, !prof !1184

18:                                               ; preds = %0
  %19 = getelementptr inbounds i8, ptr %1, i64 8
  br label %20

20:                                               ; preds = %18, %41
  %21 = phi ptr [ %14, %18 ], [ %58, %41 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %22 = tail call fastcc ptr @ei_start_1(ptr noundef %21) #19
  store i32 0, ptr %1, align 8, !tbaa.struct !1185
  store ptr %22, ptr %19, align 8, !tbaa.struct !1186
  %23 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %22, ptr noundef nonnull %2) #19, !range !1024
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %41, label %25, !prof !1187

25:                                               ; preds = %20, %36
  %26 = load ptr, ptr %2, align 8, !tbaa !922
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !1188
  %29 = and i32 %28, -33
  store i32 %29, ptr %27, align 8, !tbaa !1188
  %30 = and i32 %28, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !1190

32:                                               ; preds = %25
  %33 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !922
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !1070
  tail call fastcc void @SET_BIT(ptr noundef %33, i32 noundef %35) #19
  br label %41

36:                                               ; preds = %25
  call fastcc void @ei_next(ptr noundef nonnull %1) #19
  %37 = load i32, ptr %1, align 8
  %38 = load ptr, ptr %19, align 8
  %39 = call fastcc zeroext i8 @ei_cond(i32 %37, ptr %38, ptr noundef nonnull %2) #19, !range !1024
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %25, !prof !1191, !llvm.loop !1192

41:                                               ; preds = %36, %20, %32
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !1066
  %44 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %43, i64 0, i32 8
  %45 = load i8, ptr %44, align 8
  %46 = and i8 %45, -2
  store i8 %46, ptr %44, align 8
  %47 = load ptr, ptr %42, align 8, !tbaa !1066
  %48 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %47, i64 0, i32 8
  %49 = load i8, ptr %48, align 8
  %50 = and i8 %49, -3
  store i8 %50, ptr %48, align 8
  %51 = tail call fastcc ptr @bitmap_set_new() #19
  %52 = load ptr, ptr %42, align 8, !tbaa !1066
  %53 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %52, i64 0, i32 4
  store ptr %51, ptr %53, align 8, !tbaa !1193
  %54 = tail call fastcc ptr @bitmap_set_new() #19
  %55 = load ptr, ptr %42, align 8, !tbaa !1066
  %56 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %55, i64 0, i32 5
  store ptr %54, ptr %56, align 8, !tbaa !1194
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #21
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !1182
  %59 = load ptr, ptr @cfun, align 8, !tbaa !922
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !1065
  %62 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !1183
  %64 = icmp eq ptr %58, %63
  br i1 %64, label %65, label %20, !prof !1195, !llvm.loop !1196

65:                                               ; preds = %41, %0
  %66 = tail call fastcc ptr @bitmap_set_new() #19
  %67 = load ptr, ptr @cfun, align 8, !tbaa !922
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !1065
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !1183
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !1066
  %74 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %73, i64 0, i32 4
  store ptr %66, ptr %74, align 8, !tbaa !1193
  %75 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %73, i64 0, i32 8
  %76 = load i8, ptr %75, align 8
  %77 = or i8 %76, 1
  store i8 %77, ptr %75, align 8
  %78 = tail call fastcc ptr @bitmap_set_new() #19
  %79 = load ptr, ptr @cfun, align 8, !tbaa !922
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !1065
  %82 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !1183
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !1066
  %86 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %85, i64 0, i32 5
  store ptr %78, ptr %86, align 8, !tbaa !1194
  %87 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 5
  %88 = load i32, ptr %87, align 8, !tbaa !1181
  %89 = add nsw i32 %88, 1
  %90 = tail call ptr @sbitmap_alloc(i32 noundef %89) #20
  store ptr %90, ptr @changed_blocks, align 8, !tbaa !922
  tail call void @sbitmap_ones(ptr noundef %90) #20
  br label %93

91:                                               ; preds = %155
  %92 = icmp eq i8 %158, 0
  br i1 %92, label %161, label %93, !prof !1197, !llvm.loop !1198

93:                                               ; preds = %65, %91
  %94 = phi i32 [ 0, %65 ], [ %104, %91 ]
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97, !prof !1199

97:                                               ; preds = %93
  %98 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %95, ptr noundef nonnull @.str.33, i32 noundef %94) #19
  br label %103

103:                                              ; preds = %101, %97, %93
  %104 = add nuw nsw i32 %94, 1
  %105 = load ptr, ptr @cfun, align 8, !tbaa !922
  %106 = getelementptr inbounds %struct.function, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !1065
  %108 = getelementptr inbounds %struct.control_flow_graph, ptr %107, i64 0, i32 3
  %109 = load i32, ptr %108, align 8, !tbaa !1075
  %110 = icmp sgt i32 %109, 2
  br i1 %110, label %111, label %161, !prof !1200

111:                                              ; preds = %103
  %112 = add nsw i32 %109, -3
  %113 = zext nneg i32 %112 to i64
  %114 = load ptr, ptr @changed_blocks, align 8, !tbaa !922
  %115 = load ptr, ptr @postorder, align 8, !tbaa !922
  br label %116

116:                                              ; preds = %111, %155
  %117 = phi ptr [ %115, %111 ], [ %156, %155 ]
  %118 = phi ptr [ %114, %111 ], [ %157, %155 ]
  %119 = phi i64 [ %113, %111 ], [ %159, %155 ]
  %120 = phi i8 [ 0, %111 ], [ %158, %155 ]
  %121 = getelementptr inbounds i32, ptr %117, i64 %119
  %122 = load i32, ptr %121, align 4, !tbaa !956
  %123 = lshr i32 %122, 6
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds %struct.simple_bitmap_def, ptr %118, i64 0, i32 3, i64 %124
  %126 = load i64, ptr %125, align 8, !tbaa !1038
  %127 = and i32 %122, 63
  %128 = zext nneg i32 %127 to i64
  %129 = shl nuw i64 1, %128
  %130 = and i64 %129, %126
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %155, label %132, !prof !1201

132:                                              ; preds = %116
  %133 = load ptr, ptr @cfun, align 8, !tbaa !922
  %134 = getelementptr inbounds %struct.function, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !1065
  %136 = getelementptr inbounds %struct.control_flow_graph, ptr %135, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !1202
  %138 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %137, i32 noundef %122) #19
  %139 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !922
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %138, i64 0, i32 9
  %141 = load i32, ptr %140, align 8, !tbaa !1070
  %142 = lshr i32 %141, 6
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds %struct.simple_bitmap_def, ptr %139, i64 0, i32 3, i64 %143
  %145 = load i64, ptr %144, align 8, !tbaa !1038
  %146 = and i32 %141, 63
  %147 = zext nneg i32 %146 to i64
  %148 = lshr i64 %145, %147
  %149 = trunc i64 %148 to i8
  %150 = and i8 %149, 1
  %151 = tail call fastcc zeroext i8 @compute_antic_aux(ptr noundef %138, i8 noundef zeroext %150) #19
  %152 = or i8 %151, %120
  %153 = load ptr, ptr @changed_blocks, align 8, !tbaa !922
  %154 = load ptr, ptr @postorder, align 8, !tbaa !922
  br label %155

155:                                              ; preds = %116, %132
  %156 = phi ptr [ %154, %132 ], [ %117, %116 ]
  %157 = phi ptr [ %153, %132 ], [ %118, %116 ]
  %158 = phi i8 [ %152, %132 ], [ %120, %116 ]
  %159 = add nsw i64 %119, -1
  %160 = icmp sgt i64 %119, 0
  br i1 %160, label %116, label %91, !prof !1203, !llvm.loop !1204

161:                                              ; preds = %103, %91
  %162 = load ptr, ptr @cfun, align 8, !tbaa !922
  tail call void @statistics_histogram_event(ptr noundef %162, ptr noundef nonnull @.str.34, i32 noundef %104) #20
  %163 = load i8, ptr @do_partial_partial, align 1, !tbaa !906
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %240, label %165, !prof !1205

165:                                              ; preds = %161
  %166 = load ptr, ptr @changed_blocks, align 8, !tbaa !922
  tail call void @sbitmap_ones(ptr noundef %166) #20
  %167 = tail call zeroext i8 @mark_dfs_back_edges() #20
  br label %170

168:                                              ; preds = %232
  %169 = icmp eq i8 %235, 0
  br i1 %169, label %238, label %170, !prof !1206, !llvm.loop !1207

170:                                              ; preds = %165, %168
  %171 = phi i32 [ 0, %165 ], [ %181, %168 ]
  %172 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %173 = icmp eq ptr %172, null
  br i1 %173, label %180, label %174, !prof !1208

174:                                              ; preds = %170
  %175 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %176 = and i32 %175, 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %172, ptr noundef nonnull @.str.33, i32 noundef %171) #19
  br label %180

180:                                              ; preds = %178, %174, %170
  %181 = add nuw nsw i32 %171, 1
  %182 = load ptr, ptr @cfun, align 8, !tbaa !922
  %183 = getelementptr inbounds %struct.function, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !1065
  %185 = getelementptr inbounds %struct.control_flow_graph, ptr %184, i64 0, i32 3
  %186 = load i32, ptr %185, align 8, !tbaa !1075
  %187 = icmp sgt i32 %186, 2
  br i1 %187, label %188, label %238, !prof !1209

188:                                              ; preds = %180
  %189 = add nsw i32 %186, -3
  %190 = zext nneg i32 %189 to i64
  %191 = load ptr, ptr @changed_blocks, align 8, !tbaa !922
  %192 = load ptr, ptr @postorder, align 8, !tbaa !922
  br label %193

193:                                              ; preds = %188, %232
  %194 = phi ptr [ %192, %188 ], [ %233, %232 ]
  %195 = phi ptr [ %191, %188 ], [ %234, %232 ]
  %196 = phi i64 [ %190, %188 ], [ %236, %232 ]
  %197 = phi i8 [ 0, %188 ], [ %235, %232 ]
  %198 = getelementptr inbounds i32, ptr %194, i64 %196
  %199 = load i32, ptr %198, align 4, !tbaa !956
  %200 = lshr i32 %199, 6
  %201 = zext nneg i32 %200 to i64
  %202 = getelementptr inbounds %struct.simple_bitmap_def, ptr %195, i64 0, i32 3, i64 %201
  %203 = load i64, ptr %202, align 8, !tbaa !1038
  %204 = and i32 %199, 63
  %205 = zext nneg i32 %204 to i64
  %206 = shl nuw i64 1, %205
  %207 = and i64 %206, %203
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %232, label %209, !prof !1210

209:                                              ; preds = %193
  %210 = load ptr, ptr @cfun, align 8, !tbaa !922
  %211 = getelementptr inbounds %struct.function, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !1065
  %213 = getelementptr inbounds %struct.control_flow_graph, ptr %212, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !1202
  %215 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %214, i32 noundef %199) #19
  %216 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !922
  %217 = getelementptr inbounds %struct.basic_block_def, ptr %215, i64 0, i32 9
  %218 = load i32, ptr %217, align 8, !tbaa !1070
  %219 = lshr i32 %218, 6
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds %struct.simple_bitmap_def, ptr %216, i64 0, i32 3, i64 %220
  %222 = load i64, ptr %221, align 8, !tbaa !1038
  %223 = and i32 %218, 63
  %224 = zext nneg i32 %223 to i64
  %225 = lshr i64 %222, %224
  %226 = trunc i64 %225 to i8
  %227 = and i8 %226, 1
  %228 = tail call fastcc zeroext i8 @compute_partial_antic_aux(ptr noundef %215, i8 noundef zeroext %227) #19, !range !1024
  %229 = or i8 %228, %197
  %230 = load ptr, ptr @changed_blocks, align 8, !tbaa !922
  %231 = load ptr, ptr @postorder, align 8, !tbaa !922
  br label %232

232:                                              ; preds = %193, %209
  %233 = phi ptr [ %231, %209 ], [ %194, %193 ]
  %234 = phi ptr [ %230, %209 ], [ %195, %193 ]
  %235 = phi i8 [ %229, %209 ], [ %197, %193 ]
  %236 = add nsw i64 %196, -1
  %237 = icmp sgt i64 %196, 0
  br i1 %237, label %193, label %168, !prof !1211, !llvm.loop !1212

238:                                              ; preds = %180, %168
  %239 = load ptr, ptr @cfun, align 8, !tbaa !922
  tail call void @statistics_histogram_event(ptr noundef %239, ptr noundef nonnull @.str.35, i32 noundef %181) #20
  br label %240

240:                                              ; preds = %238, %161
  %241 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !922
  %242 = load ptr, ptr %241, align 8, !tbaa !1213
  tail call void @free(ptr noundef %242) #19
  tail call void @free(ptr noundef %241) #19
  %243 = load ptr, ptr @changed_blocks, align 8, !tbaa !922
  %244 = load ptr, ptr %243, align 8, !tbaa !1213
  tail call void @free(ptr noundef %244) #19
  tail call void @free(ptr noundef %243) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert() unnamed_addr #0 !prof !1179 !PGOFuncName !1215 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !922
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1065
  %4 = load ptr, ptr %3, align 8, !tbaa !922
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6, !prof !1184

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %13, %6 ], [ %4, %0 ]
  %8 = tail call fastcc ptr @bitmap_set_new() #19
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1066
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 6
  store ptr %8, ptr %11, align 8, !tbaa !1216
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !922
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !prof !1217, !llvm.loop !1218

15:                                               ; preds = %6, %0
  br label %16

16:                                               ; preds = %15, %16
  %17 = phi i32 [ %18, %16 ], [ 0, %15 ]
  %18 = add nuw nsw i32 %17, 1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !922
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !1065
  %22 = load ptr, ptr %21, align 8, !tbaa !1119
  %23 = tail call fastcc zeroext i8 @insert_aux(ptr noundef %22) #19, !range !1024
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %16, !prof !1219, !llvm.loop !1220

25:                                               ; preds = %16
  %26 = load ptr, ptr @cfun, align 8, !tbaa !922
  tail call void @statistics_histogram_event(ptr noundef %26, ptr noundef nonnull @.str.46, i32 noundef %18) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @eliminate() unnamed_addr #0 !prof !1060 !PGOFuncName !1221 {
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
  store ptr null, ptr %1, align 8, !tbaa !922
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %11 = load ptr, ptr @cfun, align 8, !tbaa !922
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1065
  %14 = load ptr, ptr %13, align 8, !tbaa !1119
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !1182
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !1183
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %31, label %36, !prof !1108

20:                                               ; preds = %453, %373
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !1182
  %23 = load ptr, ptr @cfun, align 8, !tbaa !922
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !1065
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !1183
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %29, label %36, !prof !1175, !llvm.loop !1222

29:                                               ; preds = %20
  %30 = load ptr, ptr %1, align 8
  br label %31

31:                                               ; preds = %29, %0
  %32 = phi ptr [ null, %0 ], [ %30, %29 ]
  %33 = phi i32 [ 0, %0 ], [ %374, %29 ]
  %34 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %32, i32 noundef 0, ptr noundef nonnull %3) #19, !range !941
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %492, label %456, !prof !1223

36:                                               ; preds = %0, %20
  %37 = phi ptr [ %22, %20 ], [ %16, %0 ]
  %38 = phi i32 [ %374, %20 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %37) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1104
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !1024
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %373, !prof !1128

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 2
  br label %43

43:                                               ; preds = %41, %369
  %44 = phi i32 [ %38, %41 ], [ %370, %369 ]
  %45 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  store ptr %45, ptr %3, align 8, !tbaa !922
  %46 = call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %45) #19, !range !1024
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %234, label %48, !prof !1224

48:                                               ; preds = %43
  %49 = call ptr @gimple_get_lhs(ptr noundef %45) #20
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 141
  br i1 %52, label %53, label %234, !prof !1225

53:                                               ; preds = %48
  %54 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %45) #20
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %234, !prof !1226

56:                                               ; preds = %53
  %57 = call zeroext i8 @gimple_assign_single_p(ptr noundef %45) #20
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %63, label %59, !prof !1227

59:                                               ; preds = %56
  %60 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %45) #19
  %61 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %60) #20
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %234, !prof !1228

63:                                               ; preds = %59, %56
  %64 = call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %45) #19, !range !1024
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %234, !prof !1229

66:                                               ; preds = %63
  %67 = call ptr @gimple_get_lhs(ptr noundef %45) #20
  %68 = call fastcc zeroext i8 @has_zero_uses(ptr noundef %67) #19
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %234, !prof !1230

70:                                               ; preds = %66
  %71 = call ptr @gimple_get_lhs(ptr noundef %45) #20
  %72 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %71) #19
  %73 = call zeroext i8 @gimple_assign_single_p(ptr noundef %45) #20
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75, !prof !1231

75:                                               ; preds = %70
  %76 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %45) #19
  br label %77

77:                                               ; preds = %75, %70
  %78 = phi ptr [ %76, %75 ], [ null, %70 ]
  %79 = load ptr, ptr %42, align 8, !tbaa !1066
  %80 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !1073
  %82 = call fastcc i32 @get_expr_value_id(ptr noundef %72) #19
  %83 = call fastcc ptr @bitmap_find_leader(ptr noundef %81, i32 noundef %82, ptr noundef null) #19
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85, !prof !1232

85:                                               ; preds = %77
  %86 = load i32, ptr %83, align 8, !tbaa !900
  switch i32 %86, label %87 [
    i32 3, label %88
    i32 0, label %88
  ], !prof !1233

87:                                               ; preds = %85
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4163, ptr noundef nonnull @.str.1) #20
  br label %92

88:                                               ; preds = %85, %85
  %89 = getelementptr inbounds %struct.pre_expr_d, ptr %83, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !906
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %126, !prof !1122

92:                                               ; preds = %77, %87, %88
  %93 = call ptr @VN_INFO(ptr noundef %71) #20
  %94 = load ptr, ptr %93, align 8, !tbaa !1234
  %95 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %94) #20
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %128, label %97, !prof !1235

97:                                               ; preds = %92
  %98 = call ptr @VN_INFO(ptr noundef %71) #20
  %99 = load ptr, ptr %98, align 8, !tbaa !1234
  %100 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !906
  %102 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !906
  %104 = call zeroext i8 @useless_type_conversion_p(ptr noundef %101, ptr noundef %103) #20
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %109, !prof !1236

106:                                              ; preds = %97
  %107 = load ptr, ptr %100, align 8, !tbaa !906
  %108 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %107, ptr noundef nonnull %99) #20
  br label %109

109:                                              ; preds = %106, %97
  %110 = phi ptr [ %99, %97 ], [ %108, %106 ]
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %112 = icmp eq ptr %111, null
  br i1 %112, label %230, label %113, !prof !1237

113:                                              ; preds = %109
  %114 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %115 = and i32 %114, 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %230, label %117

117:                                              ; preds = %113
  %118 = call i64 @fwrite(ptr nonnull @.str.56, i64 9, i64 1, ptr nonnull %111)
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !922
  call void @print_gimple_expr(ptr noundef %119, ptr noundef %45, i32 noundef 0, i32 noundef 0) #20
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %121 = call i64 @fwrite(ptr nonnull @.str.57, i64 6, i64 1, ptr %120)
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !922
  call void @print_generic_expr(ptr noundef %122, ptr noundef %110, i32 noundef 0) #20
  %123 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %124 = call i64 @fwrite(ptr nonnull @.str.58, i64 4, i64 1, ptr %123)
  %125 = load ptr, ptr @dump_file, align 8, !tbaa !922
  call void @print_gimple_stmt(ptr noundef %125, ptr noundef %45, i32 noundef 0, i32 noundef 0) #20
  br label %230

126:                                              ; preds = %88
  %127 = icmp eq ptr %90, %71
  br i1 %127, label %128, label %150, !prof !1238

128:                                              ; preds = %92, %126
  %129 = phi ptr [ %71, %126 ], [ null, %92 ]
  %130 = call ptr @VN_INFO(ptr noundef %71) #20
  %131 = load ptr, ptr %130, align 8, !tbaa !1234
  %132 = load ptr, ptr @VN_TOP, align 8, !tbaa !922
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %150, label %134, !prof !1239

134:                                              ; preds = %128
  %135 = load i64, ptr %131, align 8
  %136 = and i64 %135, 65535
  %137 = icmp eq i64 %136, 141
  br i1 %137, label %138, label %150, !prof !1240

138:                                              ; preds = %134
  %139 = call ptr @VN_INFO(ptr noundef nonnull %131) #20
  %140 = getelementptr inbounds %struct.vn_ssa_aux, ptr %139, i64 0, i32 5
  %141 = load i8, ptr %140, align 4
  %142 = and i8 %141, 16
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %150, label %144, !prof !1241

144:                                              ; preds = %138
  %145 = call ptr @vn_get_expr_for(ptr noundef nonnull %131) #20
  %146 = call fastcc zeroext i8 @can_PRE_operation(ptr noundef %145) #19, !range !1024
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %150, label %148, !prof !1242

148:                                              ; preds = %144
  %149 = call fastcc ptr @do_SCCVN_insertion(ptr noundef %45, ptr noundef nonnull %131) #19
  br label %150

150:                                              ; preds = %128, %134, %138, %144, %148, %126
  %151 = phi ptr [ %90, %126 ], [ %149, %148 ], [ %129, %144 ], [ %129, %138 ], [ %129, %134 ], [ %129, %128 ]
  %152 = icmp eq ptr %151, null
  %153 = icmp eq ptr %151, %71
  %154 = or i1 %152, %153
  br i1 %154, label %314, label %155, !prof !1243

155:                                              ; preds = %150
  %156 = icmp eq ptr %78, null
  br i1 %156, label %166, label %157, !prof !1244

157:                                              ; preds = %155
  %158 = load i64, ptr %78, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 141
  br i1 %160, label %161, label %166, !prof !1245

161:                                              ; preds = %157
  %162 = call zeroext i8 @may_propagate_copy(ptr noundef nonnull %78, ptr noundef nonnull %151) #20
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load ptr, ptr %3, align 8, !tbaa !922
  br label %314

166:                                              ; preds = %161, %157, %155
  %167 = icmp eq ptr %151, %78
  br i1 %167, label %168, label %169, !prof !1246

168:                                              ; preds = %166
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4209, ptr noundef nonnull @.str.1) #20
  br label %169

169:                                              ; preds = %166, %168
  %170 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %171 = icmp eq ptr %170, null
  br i1 %171, label %187, label %172, !prof !1247

172:                                              ; preds = %169
  %173 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %174 = and i32 %173, 8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %187, label %176

176:                                              ; preds = %172
  %177 = call i64 @fwrite(ptr nonnull @.str.56, i64 9, i64 1, ptr nonnull %170)
  %178 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %179 = load ptr, ptr %3, align 8, !tbaa !922
  call void @print_gimple_expr(ptr noundef %178, ptr noundef %179, i32 noundef 0, i32 noundef 0) #20
  %180 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %181 = call i64 @fwrite(ptr nonnull @.str.57, i64 6, i64 1, ptr %180)
  %182 = load ptr, ptr @dump_file, align 8, !tbaa !922
  call void @print_generic_expr(ptr noundef %182, ptr noundef nonnull %151, i32 noundef 0) #20
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %184 = call i64 @fwrite(ptr nonnull @.str.58, i64 4, i64 1, ptr %183)
  %185 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %186 = load ptr, ptr %3, align 8, !tbaa !922
  call void @print_gimple_stmt(ptr noundef %185, ptr noundef %186, i32 noundef 0, i32 noundef 0) #20
  br label %187

187:                                              ; preds = %176, %172, %169
  %188 = load i64, ptr %151, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 141
  br i1 %190, label %191, label %194, !prof !1248

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.tree_ssa_name, ptr %151, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !906
  call fastcc void @gimple_set_plf(ptr noundef %193, i8 noundef zeroext 1) #19
  br label %194

194:                                              ; preds = %191, %187
  br i1 %156, label %199, label %195, !prof !1244

195:                                              ; preds = %194
  %196 = load i64, ptr %78, align 8
  %197 = and i64 %196, 65535
  %198 = icmp eq i64 %197, 141
  br i1 %198, label %209, label %199, !prof !1245

199:                                              ; preds = %195, %194
  %200 = load ptr, ptr %3, align 8, !tbaa !922
  %201 = call fastcc ptr @gimple_expr_type(ptr noundef %200) #19
  %202 = getelementptr inbounds %struct.tree_common, ptr %151, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !906
  %204 = call zeroext i8 @useless_type_conversion_p(ptr noundef %201, ptr noundef %203) #20
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %209, !prof !1249

206:                                              ; preds = %199
  %207 = call fastcc ptr @gimple_expr_type(ptr noundef %200) #19
  %208 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %207, ptr noundef nonnull %151) #20
  br label %209

209:                                              ; preds = %206, %199, %195
  %210 = phi ptr [ %151, %199 ], [ %208, %206 ], [ %151, %195 ]
  %211 = load i32, ptr @pre_stats, align 4, !tbaa !1082
  %212 = add nsw i32 %211, 1
  store i32 %212, ptr @pre_stats, align 4, !tbaa !1082
  call void @propagate_tree_value_into_stmt(ptr noundef nonnull %2, ptr noundef %210) #20
  %213 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  store ptr %213, ptr %3, align 8, !tbaa !922
  call fastcc void @update_stmt(ptr noundef %213) #19
  %214 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %213, ptr noundef %213) #20
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %314, label %216, !prof !1247

216:                                              ; preds = %209
  %217 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !922
  %218 = call fastcc ptr @gimple_bb(ptr noundef %213) #19
  %219 = getelementptr inbounds %struct.basic_block_def, ptr %218, i64 0, i32 9
  %220 = load i32, ptr %219, align 8, !tbaa !1070
  %221 = call zeroext i8 @bitmap_set_bit(ptr noundef %217, i32 noundef %220) #20
  %222 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %223 = icmp eq ptr %222, null
  br i1 %223, label %314, label %224

224:                                              ; preds = %216
  %225 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %226 = and i32 %225, 8
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %314, label %228

228:                                              ; preds = %224
  %229 = call i64 @fwrite(ptr nonnull @.str.59, i64 27, i64 1, ptr nonnull %222)
  br label %314

230:                                              ; preds = %109, %113, %117
  %231 = load i32, ptr @pre_stats, align 4, !tbaa !1082
  %232 = add nsw i32 %231, 1
  store i32 %232, ptr @pre_stats, align 4, !tbaa !1082
  call void @propagate_tree_value_into_stmt(ptr noundef nonnull %2, ptr noundef %110) #20
  %233 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  store ptr %233, ptr %3, align 8, !tbaa !922
  call fastcc void @update_stmt(ptr noundef %233) #19
  br label %369

234:                                              ; preds = %66, %63, %59, %53, %48, %43
  %235 = call zeroext i8 @gimple_assign_single_p(ptr noundef %45) #20
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %278, label %237, !prof !1250

237:                                              ; preds = %234
  %238 = call fastcc ptr @gimple_assign_lhs(ptr noundef %45) #19
  %239 = call zeroext i8 @is_gimple_reg(ptr noundef %238) #20
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %278, !prof !1251

241:                                              ; preds = %237
  %242 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %45) #19
  %243 = load i64, ptr %242, align 8
  %244 = and i64 %243, 65535
  %245 = icmp eq i64 %244, 141
  br i1 %245, label %250, label %246, !prof !1252

246:                                              ; preds = %241
  %247 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %45) #19
  %248 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %247) #20
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %278, label %250, !prof !1253

250:                                              ; preds = %246, %241
  %251 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %45) #19
  %252 = call fastcc ptr @gimple_assign_lhs(ptr noundef %45) #19
  %253 = call fastcc ptr @gimple_vuse(ptr noundef %45) #19
  %254 = call ptr @vn_reference_lookup(ptr noundef %252, ptr noundef %253, i8 noundef zeroext 1, ptr noundef null) #20
  %255 = load i64, ptr %251, align 8
  %256 = and i64 %255, 65535
  %257 = icmp eq i64 %256, 141
  br i1 %257, label %258, label %261, !prof !1254

258:                                              ; preds = %250
  %259 = call ptr @VN_INFO(ptr noundef nonnull %251) #20
  %260 = load ptr, ptr %259, align 8, !tbaa !1234
  br label %261

261:                                              ; preds = %258, %250
  %262 = phi ptr [ %260, %258 ], [ %251, %250 ]
  %263 = icmp eq ptr %254, null
  br i1 %263, label %314, label %264, !prof !1255

264:                                              ; preds = %261
  %265 = call i32 @operand_equal_p(ptr noundef nonnull %254, ptr noundef %262, i32 noundef 0) #20
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %314, label %267, !prof !1256

267:                                              ; preds = %264
  %268 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %269 = icmp eq ptr %268, null
  br i1 %269, label %277, label %270, !prof !1257

270:                                              ; preds = %267
  %271 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %272 = and i32 %271, 8
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %270
  %275 = call i64 @fwrite(ptr nonnull @.str.60, i64 24, i64 1, ptr nonnull %268)
  %276 = load ptr, ptr @dump_file, align 8, !tbaa !922
  call void @print_gimple_stmt(ptr noundef %276, ptr noundef %45, i32 noundef 0, i32 noundef 0) #20
  br label %277

277:                                              ; preds = %274, %270, %267
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %1, ptr noundef %45) #19
  br label %314

278:                                              ; preds = %246, %237, %234
  %279 = call fastcc i32 @gimple_code(ptr noundef %45) #19, !range !1089
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %314, !prof !1258

281:                                              ; preds = %278
  %282 = call fastcc ptr @gimple_cond_lhs(ptr noundef %45) #19
  %283 = call fastcc ptr @gimple_cond_rhs(ptr noundef %45) #19
  %284 = load i64, ptr %282, align 8
  %285 = and i64 %284, 65535
  %286 = icmp eq i64 %285, 141
  br i1 %286, label %287, label %290, !prof !1259

287:                                              ; preds = %281
  %288 = call ptr @VN_INFO(ptr noundef nonnull %282) #20
  %289 = load ptr, ptr %288, align 8, !tbaa !1234
  br label %290

290:                                              ; preds = %287, %281
  %291 = phi ptr [ %289, %287 ], [ %282, %281 ]
  %292 = load i64, ptr %283, align 8
  %293 = and i64 %292, 65535
  %294 = icmp eq i64 %293, 141
  br i1 %294, label %295, label %298, !prof !1260

295:                                              ; preds = %290
  %296 = call ptr @VN_INFO(ptr noundef nonnull %283) #20
  %297 = load ptr, ptr %296, align 8, !tbaa !1234
  br label %298

298:                                              ; preds = %295, %290
  %299 = phi ptr [ %297, %295 ], [ %283, %290 ]
  %300 = call fastcc i32 @gimple_cond_code(ptr noundef %45) #19, !range !1152
  %301 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !922
  %302 = call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %300, ptr noundef %301, ptr noundef %291, ptr noundef %299) #20
  %303 = icmp eq ptr %302, null
  br i1 %303, label %314, label %304, !prof !1261

304:                                              ; preds = %298
  %305 = load i64, ptr %302, align 8
  %306 = and i64 %305, 65535
  %307 = icmp eq i64 %306, 23
  br i1 %307, label %308, label %314, !prof !1262

308:                                              ; preds = %304
  %309 = call i32 @integer_zerop(ptr noundef nonnull %302) #20
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %312, label %311, !prof !1263

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
  %317 = call fastcc i32 @gimple_code(ptr noundef %315) #19, !range !1089
  %318 = icmp eq i32 %317, 8
  br i1 %318, label %319, label %369, !prof !1264

319:                                              ; preds = %314
  %320 = call fastcc ptr @gimple_call_fn(ptr noundef %315) #19
  %321 = load i64, ptr %320, align 8
  %322 = and i64 %321, 65535
  %323 = icmp eq i64 %322, 141
  br i1 %323, label %324, label %369, !prof !1265

324:                                              ; preds = %319
  %325 = call fastcc ptr @gimple_call_fn(ptr noundef %315) #19
  %326 = call ptr @VN_INFO(ptr noundef %325) #20
  %327 = load ptr, ptr %326, align 8, !tbaa !1234
  %328 = load i64, ptr %327, align 8
  %329 = and i64 %328, 65535
  %330 = icmp eq i64 %329, 121
  br i1 %330, label %331, label %369, !prof !1266

331:                                              ; preds = %324
  %332 = getelementptr inbounds %struct.tree_exp, ptr %327, i64 0, i32 3
  %333 = load ptr, ptr %332, align 8, !tbaa !906
  %334 = load i64, ptr %333, align 8
  %335 = and i64 %334, 65535
  %336 = icmp eq i64 %335, 29
  br i1 %336, label %337, label %369, !prof !1267

337:                                              ; preds = %331
  %338 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %339 = icmp eq ptr %338, null
  br i1 %339, label %350, label %340, !prof !1267

340:                                              ; preds = %337
  %341 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %342 = and i32 %341, 8
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %350, label %344

344:                                              ; preds = %340
  %345 = call i64 @fwrite(ptr nonnull @.str.61, i64 27, i64 1, ptr nonnull %338)
  %346 = load ptr, ptr @dump_file, align 8, !tbaa !922
  call void @print_generic_expr(ptr noundef %346, ptr noundef nonnull %327, i32 noundef 0) #20
  %347 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %348 = call i64 @fwrite(ptr nonnull @.str.58, i64 4, i64 1, ptr %347)
  %349 = load ptr, ptr @dump_file, align 8, !tbaa !922
  call void @print_gimple_stmt(ptr noundef %349, ptr noundef %315, i32 noundef 0, i32 noundef 0) #20
  br label %350

350:                                              ; preds = %344, %340, %337
  call fastcc void @gimple_call_set_fn(ptr noundef %315, ptr noundef nonnull %327) #19
  call fastcc void @update_stmt(ptr noundef %315) #19
  %351 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %315, ptr noundef %315) #20
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %367, label %353, !prof !1267

353:                                              ; preds = %350
  %354 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !922
  %355 = call fastcc ptr @gimple_bb(ptr noundef %315) #19
  %356 = getelementptr inbounds %struct.basic_block_def, ptr %355, i64 0, i32 9
  %357 = load i32, ptr %356, align 8, !tbaa !1070
  %358 = call zeroext i8 @bitmap_set_bit(ptr noundef %354, i32 noundef %357) #20
  %359 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %360 = icmp eq ptr %359, null
  br i1 %360, label %367, label %361

361:                                              ; preds = %353
  %362 = load i32, ptr @dump_flags, align 4, !tbaa !956
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
  %371 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !1024
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %43, label %373, !prof !1173, !llvm.loop !1268

373:                                              ; preds = %369, %36
  %374 = phi i32 [ %38, %36 ], [ %370, %369 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %37) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1104
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  %375 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !1024
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %377, label %20, !prof !1269

377:                                              ; preds = %373, %453
  %378 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %379 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %378) #19
  %380 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %379) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #21
  %381 = call fastcc i32 @gimple_phi_num_args(ptr noundef %378) #19
  %382 = icmp eq i32 %381, 1
  br i1 %382, label %392, label %383, !prof !1270

383:                                              ; preds = %377
  %384 = call zeroext i8 @is_gimple_reg(ptr noundef %380) #20
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %392, label %386, !prof !1271

386:                                              ; preds = %383
  %387 = load ptr, ptr @inserted_phi_names, align 8, !tbaa !922
  %388 = getelementptr inbounds %struct.tree_ssa_name, ptr %380, i64 0, i32 3
  %389 = load i32, ptr %388, align 8, !tbaa !906
  %390 = call i32 @bitmap_bit_p(ptr noundef %387, i32 noundef %389) #20
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %393, label %392, !prof !1272

392:                                              ; preds = %386, %383, %377
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  br label %453, !llvm.loop !1273

393:                                              ; preds = %386
  %394 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 2
  %395 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %380) #19
  %396 = load ptr, ptr %394, align 8, !tbaa !1066
  %397 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %396, i64 0, i32 3
  %398 = load ptr, ptr %397, align 8, !tbaa !1073
  %399 = call fastcc i32 @get_expr_value_id(ptr noundef %395) #19
  %400 = call fastcc ptr @bitmap_find_leader(ptr noundef %398, i32 noundef %399, ptr noundef null) #19
  %401 = icmp eq ptr %400, null
  br i1 %401, label %414, label %402, !prof !1274

402:                                              ; preds = %393
  %403 = load i32, ptr %400, align 8, !tbaa !900
  switch i32 %403, label %410 [
    i32 3, label %404
    i32 0, label %407
  ], !prof !1275

404:                                              ; preds = %402
  %405 = getelementptr inbounds %struct.pre_expr_d, ptr %400, i64 0, i32 2
  %406 = load ptr, ptr %405, align 8, !tbaa !906
  br label %411

407:                                              ; preds = %402
  %408 = getelementptr inbounds %struct.pre_expr_d, ptr %400, i64 0, i32 2
  %409 = load ptr, ptr %408, align 8, !tbaa !906
  br label %411

410:                                              ; preds = %402
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4362, ptr noundef nonnull @.str.1) #20
  br label %411

411:                                              ; preds = %404, %410, %407
  %412 = phi ptr [ %406, %404 ], [ %409, %407 ], [ null, %410 ]
  %413 = icmp eq ptr %412, %380
  br i1 %413, label %414, label %415, !prof !1276

414:                                              ; preds = %393, %411
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  br label %453, !llvm.loop !1273

415:                                              ; preds = %411
  %416 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %417 = icmp eq ptr %416, null
  br i1 %417, label %430, label %418, !prof !1277

418:                                              ; preds = %415
  %419 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %420 = and i32 %419, 8
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %430, label %422

422:                                              ; preds = %418
  %423 = call i64 @fwrite(ptr nonnull @.str.62, i64 37, i64 1, ptr nonnull %416)
  %424 = load ptr, ptr @dump_file, align 8, !tbaa !922
  call void @print_generic_expr(ptr noundef %424, ptr noundef nonnull %380, i32 noundef 0) #20
  %425 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %426 = call i64 @fwrite(ptr nonnull @.str.57, i64 6, i64 1, ptr %425)
  %427 = load ptr, ptr @dump_file, align 8, !tbaa !922
  call void @print_generic_expr(ptr noundef %427, ptr noundef %412, i32 noundef 0) #20
  %428 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %429 = call i32 @fputc(i32 10, ptr %428)
  br label %430

430:                                              ; preds = %422, %418, %415
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 0) #20
  %431 = getelementptr inbounds %struct.tree_common, ptr %380, i64 0, i32 2
  %432 = load ptr, ptr %431, align 8, !tbaa !906
  %433 = getelementptr inbounds %struct.tree_common, ptr %412, i64 0, i32 2
  %434 = load ptr, ptr %433, align 8, !tbaa !906
  %435 = call zeroext i8 @useless_type_conversion_p(ptr noundef %432, ptr noundef %434) #20
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %437, label %440, !prof !1278

437:                                              ; preds = %430
  %438 = load ptr, ptr %431, align 8, !tbaa !906
  %439 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %438, ptr noundef nonnull %412) #20
  br label %440

440:                                              ; preds = %437, %430
  %441 = phi ptr [ %412, %430 ], [ %439, %437 ]
  %442 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %380, ptr noundef %441) #20
  %443 = getelementptr inbounds %struct.tree_ssa_name, ptr %380, i64 0, i32 2
  store ptr %442, ptr %443, align 8, !tbaa !906
  %444 = load i64, ptr %441, align 8
  %445 = and i64 %444, 65535
  %446 = icmp eq i64 %445, 141
  br i1 %446, label %447, label %450, !prof !1279

447:                                              ; preds = %440
  %448 = getelementptr inbounds %struct.tree_ssa_name, ptr %441, i64 0, i32 2
  %449 = load ptr, ptr %448, align 8, !tbaa !906
  call fastcc void @gimple_set_plf(ptr noundef %449, i8 noundef zeroext 1) #19
  br label %450

450:                                              ; preds = %447, %440
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #21
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %37) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !1104
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #21
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %442, i32 noundef 0) #20
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %1, ptr noundef %442) #19
  %451 = load i32, ptr @pre_stats, align 4, !tbaa !1082
  %452 = add nsw i32 %451, 1
  store i32 %452, ptr @pre_stats, align 4, !tbaa !1082
  br label %453

453:                                              ; preds = %450, %414, %392
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  %454 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !1024
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %377, label %20, !prof !1280

456:                                              ; preds = %31, %488
  %457 = phi i32 [ %489, %488 ], [ 0, %31 ]
  %458 = load ptr, ptr %3, align 8, !tbaa !922
  %459 = call fastcc ptr @gimple_assign_lhs(ptr noundef %458) #19
  %460 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %458) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %461 = load i64, ptr %459, align 8
  %462 = and i64 %461, 65535
  %463 = icmp eq i64 %462, 141
  br i1 %463, label %464, label %480, !prof !1281

464:                                              ; preds = %456
  %465 = load i64, ptr %460, align 8
  %466 = and i64 %465, 65535
  %467 = icmp eq i64 %466, 141
  br i1 %467, label %468, label %480, !prof !1279

468:                                              ; preds = %464
  %469 = call fastcc zeroext i8 @single_imm_use(ptr noundef nonnull %459, ptr noundef nonnull %8, ptr noundef nonnull %9) #19
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %480, label %471, !prof !1282

471:                                              ; preds = %468
  %472 = load ptr, ptr %8, align 8, !tbaa !922
  %473 = call fastcc ptr @get_use_from_ptr(ptr noundef %472) #19
  %474 = call zeroext i8 @may_propagate_copy(ptr noundef %473, ptr noundef nonnull %460) #20
  %475 = icmp eq i8 %474, 0
  br i1 %475, label %480, label %476, !prof !1283

476:                                              ; preds = %471
  %477 = load ptr, ptr %8, align 8, !tbaa !922
  %478 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %458) #19
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %477, ptr noundef %478) #19
  %479 = load ptr, ptr %9, align 8, !tbaa !922
  call fastcc void @update_stmt(ptr noundef %479) #19
  br label %480

480:                                              ; preds = %476, %471, %468, %464, %456
  %481 = load i64, ptr %459, align 8
  %482 = and i64 %481, 65535
  %483 = icmp eq i64 %482, 141
  br i1 %483, label %484, label %487, !prof !1281

484:                                              ; preds = %480
  %485 = call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %459) #19
  %486 = icmp eq i8 %485, 0
  br i1 %486, label %488, label %487, !prof !1284

487:                                              ; preds = %484, %480
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %458) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !1104
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #21
  call void @unlink_stmt_vdef(ptr noundef %458) #20
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #20
  call void @release_defs(ptr noundef %458) #20
  br label %488

488:                                              ; preds = %487, %484
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  %489 = add i32 %457, 1
  %490 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %32, i32 noundef %489, ptr noundef nonnull %3) #19, !range !941
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %456, !prof !1285, !llvm.loop !1286

492:                                              ; preds = %488, %31
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
define internal fastcc void @clear_expression_ids() unnamed_addr #12 !prof !1060 !PGOFuncName !1287 {
  tail call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull @expressions) #19
  ret void
}

; Function Attrs: optsize
declare void @free_scc_vn() local_unnamed_addr #2

; Function Attrs: optsize
declare void @scev_finalize() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fini_pre(i8 noundef zeroext %0) unnamed_addr #0 !prof !1060 !PGOFuncName !1288 {
  %2 = load ptr, ptr @postorder, align 8, !tbaa !922
  tail call void @free(ptr noundef %2) #19
  tail call fastcc void @VEC_bitmap_set_t_heap_free() #19
  tail call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull @inserted_exprs) #19
  tail call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull @need_creation) #19
  tail call void @bitmap_obstack_release(ptr noundef nonnull @grand_bitmap_obstack) #20
  %3 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !922
  tail call void @free_alloc_pool(ptr noundef %3) #20
  %4 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !922
  tail call void @free_alloc_pool(ptr noundef %4) #20
  %5 = load ptr, ptr @phi_translate_table, align 8, !tbaa !922
  tail call void @htab_delete(ptr noundef %5) #20
  %6 = load ptr, ptr @expression_to_id, align 8, !tbaa !922
  tail call void @htab_delete(ptr noundef %6) #20
  tail call fastcc void @VEC_unsigned_heap_free() #19
  %7 = load ptr, ptr @cfun, align 8, !tbaa !922
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !1065
  %10 = load ptr, ptr %9, align 8, !tbaa !922
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12, !prof !1108

12:                                               ; preds = %1, %12
  %13 = phi ptr [ %17, %12 ], [ %10, %1 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !1066
  tail call void @free(ptr noundef %15) #19
  store ptr null, ptr %14, align 8, !tbaa !1066
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !922
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %12, !prof !1109, !llvm.loop !1289

19:                                               ; preds = %12, %1
  tail call void @free_dominance_info(i32 noundef 2) #20
  %20 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !922
  %21 = load ptr, ptr %20, align 8, !tbaa !1028
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23, !prof !1062

23:                                               ; preds = %19
  %24 = tail call zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef nonnull %20) #20
  %25 = tail call zeroext i8 @cleanup_tree_cfg() #20
  %26 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !922
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi ptr [ %26, %23 ], [ %20, %19 ]
  tail call void @bitmap_obstack_free(ptr noundef %28) #20
  store ptr null, ptr @need_eh_cleanup, align 8, !tbaa !922
  %29 = icmp eq i8 %0, 0
  br i1 %29, label %30, label %31, !prof !1063

30:                                               ; preds = %27
  tail call void @loop_optimizer_finalize() #20
  br label %31

31:                                               ; preds = %30, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1057 !PGOFuncName !1290 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !1291 !PGOFuncName !1292 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1293

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1294
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !1296 !PGOFuncName !1297 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1298

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1294
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1299

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !922
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !922
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_plf(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1300 !PGOFuncName !1301 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 11
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1302 !PGOFuncName !1303 {
  %3 = load i32, ptr %0, align 8, !tbaa !1294
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1294
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !922
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #4 !prof !1304 !PGOFuncName !1305 {
  %2 = load i32, ptr %0, align 8, !tbaa !1294
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !1294
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !922
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1306 !PGOFuncName !1307 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1308 !PGOFuncName !1309 {
  %3 = load ptr, ptr %0, align 8, !tbaa !922
  %4 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %3, i32 noundef %1) #19, !range !941
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !1310

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_p_reserve(ptr noundef %3, i32 noundef %1) #20
  store ptr %7, ptr %0, align 8, !tbaa !922
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1311 !PGOFuncName !1312 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !906
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !1313 !PGOFuncName !1314 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1315
  %4 = load ptr, ptr %3, align 8, !tbaa !922
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1317 !PGOFuncName !1318 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mark_operand_necessary(ptr noundef readonly %0) unnamed_addr #0 !prof !1319 !PGOFuncName !1320 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1321

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4446, ptr noundef nonnull @.str.1) #20
  br label %4

4:                                                ; preds = %1, %3
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %20, !prof !1322

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !906
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !1323

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4452, ptr noundef nonnull @.str.1) #20
  br label %13

13:                                               ; preds = %8, %12
  %14 = tail call fastcc i32 @gimple_plf(ptr noundef %10) #19
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20, !prof !1324

16:                                               ; preds = %13
  %17 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %10) #19, !range !1024
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20, !prof !1325

19:                                               ; preds = %16
  tail call fastcc void @gimple_set_plf(ptr noundef %10, i8 noundef zeroext 1) #19
  br label %20

20:                                               ; preds = %13, %16, %4, %19
  %21 = phi ptr [ %10, %19 ], [ null, %4 ], [ null, %16 ], [ null, %13 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1326 !PGOFuncName !1327 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #19
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !1328
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1330 !PGOFuncName !1331 {
  %2 = load i8, ptr %0, align 8, !tbaa !1332
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1333 !PGOFuncName !1334 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0, i32 noundef 1) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !922
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #8 !prof !1330 !PGOFuncName !1335 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1336
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1337

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #19
  %8 = load ptr, ptr %3, align 8, !tbaa !1338
  store ptr %8, ptr %2, align 8, !tbaa !1336
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1340
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !1341

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1342
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #19
  %17 = load ptr, ptr %11, align 8, !tbaa !1344
  store ptr %17, ptr %10, align 8, !tbaa !1340
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !1332
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
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !1345 !PGOFuncName !1346 {
  %2 = load ptr, ptr %0, align 8, !tbaa !922
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1347

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !922
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1308 !PGOFuncName !1348 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !1349

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !1350
  %7 = load i32, ptr %0, align 8, !tbaa !1294
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
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1351 !PGOFuncName !1352 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !906
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !1353

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 3103, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1354 !PGOFuncName !1355 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1089
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_plf(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #4 !prof !1356 !PGOFuncName !1357 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -2049
  %6 = select i1 %3, i32 0, i32 2048, !prof !1358
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1326 !PGOFuncName !1359 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9, !prof !1360

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 747, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !1361

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !1340
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #19
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !1340
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18, !prof !1362

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !1363

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !1344
  store ptr %22, ptr %16, align 8, !tbaa !1340
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27, !prof !1364

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !1336
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #19
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !1336
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32, !prof !1365

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !1366

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !1338
  store ptr %36, ptr %29, align 8, !tbaa !1336
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !1332
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1367 !PGOFuncName !1368 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !1024
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1369

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !906
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1370 !PGOFuncName !1371 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !1024
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1372

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !906
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1373 !PGOFuncName !1374 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !1024
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1375

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !906
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1376 !PGOFuncName !1377 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !1024
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1378

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !906
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1379 !PGOFuncName !1380 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1089
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1381 !PGOFuncName !1382 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1089
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1383 !PGOFuncName !1384 {
  %2 = load ptr, ptr %0, align 8, !tbaa !922
  ret ptr %2
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_bitmap_set_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1060 !PGOFuncName !1385 {
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
define internal fastcc void @my_rev_post_order_compute(ptr nocapture noundef writeonly %0) unnamed_addr #0 !prof !1060 !PGOFuncName !1386 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !922
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1065
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !1075
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 4
  %10 = tail call ptr @xmalloc(i64 noundef %9) #20
  %11 = load ptr, ptr @cfun, align 8, !tbaa !922
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1065
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !1181
  %16 = tail call ptr @sbitmap_alloc(i32 noundef %15) #20
  tail call void @sbitmap_zero(ptr noundef %16) #20
  %17 = load ptr, ptr @cfun, align 8, !tbaa !922
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !1065
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !1183
  %22 = tail call fastcc ptr @ei_start_1(ptr noundef %21) #19
  store i32 0, ptr %10, align 8, !tbaa.struct !1185
  %23 = getelementptr inbounds i8, ptr %10, i64 8
  store ptr %22, ptr %23, align 8, !tbaa.struct !1186
  br label %24

24:                                               ; preds = %1, %91
  %25 = phi i32 [ 1, %1 ], [ %93, %91 ]
  %26 = phi i32 [ 0, %1 ], [ %92, %91 ]
  %27 = sext i32 %25 to i64
  %28 = getelementptr %struct.edge_iterator, ptr %10, i64 %27
  %29 = getelementptr %struct.edge_iterator, ptr %28, i64 -1
  %30 = load i32, ptr %29, align 8, !tbaa.struct !1185
  %31 = getelementptr %struct.edge_iterator, ptr %28, i64 -1, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa.struct !1186
  %33 = tail call fastcc ptr @ei_edge(i32 %30, ptr %32) #19
  %34 = load ptr, ptr %33, align 8, !tbaa !1387
  %35 = tail call fastcc ptr @ei_edge(i32 %30, ptr %32) #19
  %36 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !1388
  %38 = load ptr, ptr @cfun, align 8, !tbaa !922
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !1065
  %41 = load ptr, ptr %40, align 8, !tbaa !1119
  %42 = icmp eq ptr %34, %41
  br i1 %42, label %68, label %43, !prof !1389

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !1070
  %46 = lshr i32 %45, 6
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !1038
  %50 = and i32 %45, 63
  %51 = zext nneg i32 %50 to i64
  %52 = shl nuw i64 1, %51
  %53 = and i64 %52, %49
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %68, !prof !1390

55:                                               ; preds = %43
  tail call fastcc void @SET_BIT(ptr noundef nonnull %16, i32 noundef %45) #19
  %56 = load ptr, ptr %34, align 8, !tbaa !1391
  %57 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %56) #19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59, !prof !1124

59:                                               ; preds = %55
  %60 = add nsw i32 %25, 1
  %61 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %34) #19
  store i32 0, ptr %28, align 8, !tbaa.struct !1185
  %62 = getelementptr inbounds i8, ptr %28, i64 8
  store ptr %61, ptr %62, align 8, !tbaa.struct !1186
  br label %91

63:                                               ; preds = %55
  %64 = load i32, ptr %44, align 8, !tbaa !1070
  %65 = add nsw i32 %26, 1
  %66 = sext i32 %26 to i64
  %67 = getelementptr inbounds i32, ptr %0, i64 %66
  store i32 %64, ptr %67, align 4, !tbaa !956
  br label %91

68:                                               ; preds = %43, %24
  %69 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %30, ptr %32) #19, !range !1024
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %84, label %71, !prof !1392

71:                                               ; preds = %68
  %72 = load ptr, ptr @cfun, align 8, !tbaa !922
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !1065
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !1183
  %77 = icmp eq ptr %37, %76
  br i1 %77, label %84, label %78, !prof !1393

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !1070
  %81 = add nsw i32 %26, 1
  %82 = sext i32 %26 to i64
  %83 = getelementptr inbounds i32, ptr %0, i64 %82
  store i32 %80, ptr %83, align 4, !tbaa !956
  br label %84

84:                                               ; preds = %78, %71, %68
  %85 = phi i32 [ %81, %78 ], [ %26, %71 ], [ %26, %68 ]
  %86 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %30, ptr %32) #19, !range !1024
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %89, !prof !1392

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
  br i1 %94, label %95, label %24, !prof !1394, !llvm.loop !1395

95:                                               ; preds = %91
  tail call void @free(ptr noundef nonnull %10) #19
  %96 = load ptr, ptr %16, align 8, !tbaa !1213
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
define internal i32 @expr_pred_trans_hash(ptr nocapture noundef readonly %0) #3 !prof !1396 !PGOFuncName !1397 {
  %2 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !1398
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @expr_pred_trans_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1400 !PGOFuncName !1401 {
  %3 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1402
  %5 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1402
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %12, !prof !1403

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !1404
  %10 = load ptr, ptr %1, align 8, !tbaa !1404
  %11 = tail call i32 @pre_expr_eq(ptr noundef %9, ptr noundef %10) #19
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pre_expr_hash(ptr nocapture noundef readonly %0) #0 !prof !1405 !PGOFuncName !1406 {
  %2 = load i32, ptr %0, align 8, !tbaa !900
  switch i32 %2, label %22 [
    i32 3, label %3
    i32 0, label %7
    i32 1, label %12
    i32 2, label %17
  ], !prof !1407

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !906
  %6 = tail call fastcc i32 @vn_hash_constant_with_type(ptr noundef %5) #19
  br label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !906
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !906
  br label %23

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !906
  %15 = getelementptr inbounds %struct.vn_nary_op_s, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !1408
  br label %23

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !906
  %20 = getelementptr inbounds %struct.vn_reference_s, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !1409
  br label %23

22:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 229, ptr noundef nonnull @.str.1) #20
  br label %23

23:                                               ; preds = %22, %17, %12, %7, %3
  %24 = phi i32 [ 0, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %7 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pre_expr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1410 !PGOFuncName !1411 {
  %3 = load i32, ptr %0, align 8, !tbaa !900
  %4 = load i32, ptr %1, align 8, !tbaa !900
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %34, !prof !1412

6:                                                ; preds = %2
  switch i32 %3, label %33 [
    i32 3, label %7
    i32 0, label %14
    i32 1, label %21
    i32 2, label %27
  ], !prof !1413

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !906
  %10 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !906
  %12 = tail call fastcc zeroext i8 @vn_constant_eq_with_type(ptr noundef %9, ptr noundef %11) #19, !range !1024
  %13 = zext nneg i8 %12 to i32
  br label %34

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !906
  %17 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !906
  %19 = icmp eq ptr %16, %18
  %20 = zext i1 %19 to i32
  br label %34

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !906
  %24 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !906
  %26 = tail call i32 @vn_nary_op_eq(ptr noundef %23, ptr noundef %25) #20
  br label %34

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !906
  %30 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !906
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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #5 !prof !1414 !PGOFuncName !1415 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1416 !PGOFuncName !1417 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1418

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 !prof !1419 !PGOFuncName !1420 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1213
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1421

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
  %15 = load i64, ptr %14, align 8, !tbaa !1038
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !906
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !906
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !1038
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !1038
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !1422 !PGOFuncName !1423 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1424

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1425
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_one_before_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1427 !PGOFuncName !1428 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1429

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
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1430 !PGOFuncName !1431 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1432

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1433

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1434
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1434
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1436 !PGOFuncName !1437 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !922
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1438 !PGOFuncName !1439 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1440

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 687, ptr noundef nonnull @.str.1) #20
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !922
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vn_hash_constant_with_type(ptr noundef %0) unnamed_addr #0 !prof !1441 !PGOFuncName !1442 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !906
  %4 = tail call i32 @iterative_hash_expr(ptr noundef %0, i32 noundef 0) #20
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -6
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %17, !prof !1443

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
define internal fastcc zeroext i8 @vn_constant_eq_with_type(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1444 !PGOFuncName !1445 {
  %3 = tail call zeroext i8 @expressions_equal_p(ptr noundef %0, ptr noundef %1) #20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !1446

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !906
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !906
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
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1447 !PGOFuncName !1448 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !922
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 !prof !1449 !PGOFuncName !1450 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1451
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6, !prof !1452

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !956
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !1453

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
define internal fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %0) unnamed_addr #0 !prof !1454 !PGOFuncName !1455 {
  %2 = alloca %struct.pre_expr_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  store i32 0, ptr %2, align 8, !tbaa !900
  %3 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !948
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 2
  store ptr %0, ptr %4, align 8, !tbaa !906
  %5 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %2) #19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !1456

7:                                                ; preds = %1
  %8 = call fastcc ptr @expression_for_id(i32 noundef %5) #19
  br label %14

9:                                                ; preds = %1
  %10 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !922
  %11 = call ptr @pool_alloc(ptr noundef %10) #20
  store i32 0, ptr %11, align 8, !tbaa !900
  %12 = getelementptr inbounds %struct.pre_expr_d, ptr %11, i64 0, i32 2
  store ptr %0, ptr %12, align 8, !tbaa !906
  %13 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %11) #19
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi ptr [ %8, %7 ], [ %11, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_insert_into_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1457 !PGOFuncName !1458 {
  %3 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  tail call fastcc void @bitmap_insert_into_set_1(ptr noundef %0, ptr noundef %1, i32 noundef %3, i8 noundef zeroext 0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_value_insert_into_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1459 !PGOFuncName !1460 {
  %3 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  %4 = tail call zeroext i8 @value_id_constant_p(i32 noundef %3) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %16, !prof !1461

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !929
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %3) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11, !prof !1462

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8, !tbaa !927
  %13 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !948
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
define internal fastcc void @bitmap_set_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1463 !PGOFuncName !1464 {
  %3 = load ptr, ptr %0, align 8, !tbaa !927
  %4 = load ptr, ptr %1, align 8, !tbaa !927
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %4) #20
  %5 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !929
  %7 = getelementptr inbounds %struct.bitmap_set, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !929
  tail call void @bitmap_copy(ptr noundef %6, ptr noundef %8) #20
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !1465 !PGOFuncName !1466 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1467
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_values_for_phi(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1469 !PGOFuncName !1470 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #19
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %35, label %6, !prof !1471

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %3) #19
  %8 = tail call fastcc i32 @get_expr_value_id(ptr noundef %7) #19
  tail call void @add_to_value(i32 noundef %8, ptr noundef %7) #19
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1066
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1071
  tail call fastcc void @bitmap_insert_into_set(ptr noundef %12, ptr noundef %7) #19
  %13 = load ptr, ptr %9, align 8, !tbaa !1066
  %14 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !1073
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %15, ptr noundef %7) #19
  %16 = load i8, ptr @in_fre, align 1, !tbaa !906
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %35, !prof !1472

18:                                               ; preds = %6
  %19 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21, !prof !1473

21:                                               ; preds = %18, %30
  %22 = phi i64 [ %31, %30 ], [ 0, %18 ]
  %23 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %22) #19
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 141
  br i1 %26, label %27, label %30, !prof !1474

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
  br i1 %34, label %21, label %35, !prof !1475, !llvm.loop !1476

35:                                               ; preds = %30, %18, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #10 !prof !1477 !PGOFuncName !1478 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1467
  %3 = load ptr, ptr %2, align 8, !tbaa !1479
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !1481 !PGOFuncName !1482 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1467
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1483
  store ptr %4, ptr %0, align 8, !tbaa !1467
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !1484 !PGOFuncName !1485 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !1467
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !1486
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !1487
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_uid(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #16 !prof !1367 !PGOFuncName !1488 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !906
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1489 !PGOFuncName !1490 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1089
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1491 !PGOFuncName !1492 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !1024
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !1493

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
define internal fastcc void @add_to_exp_gen(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1494 !PGOFuncName !1495 {
  %3 = load i8, ptr @in_fre, align 1, !tbaa !906
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %17, !prof !1496

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %12, !prof !1497

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @ssa_undefined_value_p(ptr noundef nonnull %1) #20
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17, !prof !1497

12:                                               ; preds = %9, %5
  %13 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %1) #19
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !1066
  %16 = load ptr, ptr %15, align 8, !tbaa !1068
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %16, ptr noundef %13) #19
  br label %17

17:                                               ; preds = %12, %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @can_value_number_call(ptr noundef %0) unnamed_addr #0 !prof !1498 !PGOFuncName !1499 {
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
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !1500 !PGOFuncName !1501 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1089
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ], !prof !1502

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #19
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !1152
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13, !prof !1503

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !906
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #20
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !906
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !922
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !922
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_vn_reference_op_s_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !1504 !PGOFuncName !1505 {
  %2 = load ptr, ptr %0, align 8, !tbaa !922
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1506

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !922
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !1507 !PGOFuncName !1508 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #19, !range !1152
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #19, !range !1089
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !1509

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
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1510 !PGOFuncName !1511 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !906
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !1512 !PGOFuncName !1513 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !1514 !PGOFuncName !1515 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !1516

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
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1517 !PGOFuncName !1518 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !906
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !1519 !PGOFuncName !1520 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #19
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !1484 !PGOFuncName !1521 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1522
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !1523

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !906
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1524

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !1525
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 !prof !1527 !PGOFuncName !1528 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1529

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !1530
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare zeroext i8 @ssa_undefined_value_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !1532 !PGOFuncName !1533 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !906
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !906
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !906
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !1534 !PGOFuncName !1535 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1536 !PGOFuncName !1537 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !1024
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !1538

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !922
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !1539 !PGOFuncName !1540 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !1038
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !1541

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1539 !PGOFuncName !1542 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1089
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #5 !prof !1539 !PGOFuncName !1543 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !956
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1507 !PGOFuncName !1544 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1089
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !1545

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
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #5 !prof !1507 !PGOFuncName !1546 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !906
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1547 !PGOFuncName !1548 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !1024
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1549

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !922
  ret i8 %10
}

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1550 !PGOFuncName !1551 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !922
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @compute_antic_aux(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1552 !PGOFuncName !1553 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !1066
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 8
  %12 = load i8, ptr %11, align 8
  %13 = or i8 %12, 1
  store i8 %13, ptr %11, align 8
  %14 = icmp eq i8 %1, 0
  br i1 %14, label %15, label %172, !prof !1554

15:                                               ; preds = %2
  %16 = load ptr, ptr %9, align 8, !tbaa !1066
  %17 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !1193
  %19 = tail call fastcc ptr @bitmap_set_new() #19
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !1555
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %113, label %24, !prof !1556

24:                                               ; preds = %15
  %25 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #19, !range !1024
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27, !prof !1557

27:                                               ; preds = %24
  %28 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #19
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !1066
  %31 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !1193
  %33 = tail call fastcc zeroext i8 @defer_or_phi_translate_block(ptr noundef %19, ptr noundef %32, ptr noundef nonnull %0, ptr noundef %28) #19, !range !1024
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %172, label %113

35:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %36 = tail call fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %22) #19
  store ptr %36, ptr %7, align 8, !tbaa !922
  %37 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %20) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !1185
  %38 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %37, ptr %38, align 8, !tbaa.struct !1186
  %39 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %5) #19, !range !1024
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %101, label %41, !prof !1558

41:                                               ; preds = %35, %57
  %42 = phi ptr [ %58, %57 ], [ null, %35 ]
  %43 = icmp eq ptr %42, null
  %44 = load ptr, ptr %5, align 8, !tbaa !922
  %45 = getelementptr inbounds %struct.edge_def, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !1388
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !1066
  %49 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %48, i64 0, i32 8
  %50 = load i8, ptr %49, align 8
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %43, label %53, label %55, !prof !1559

53:                                               ; preds = %41
  %54 = select i1 %52, ptr null, ptr %46, !prof !1560
  br label %57

55:                                               ; preds = %41
  br i1 %52, label %57, label %56, !prof !1561

56:                                               ; preds = %55
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %36, ptr noundef nonnull %46) #19
  br label %57

57:                                               ; preds = %53, %56, %55
  %58 = phi ptr [ %42, %56 ], [ %42, %55 ], [ %54, %53 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %59 = load i32, ptr %6, align 8
  %60 = load ptr, ptr %38, align 8
  %61 = call fastcc zeroext i8 @ei_cond(i32 %59, ptr %60, ptr noundef nonnull %5) #19, !range !1024
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %41, !prof !1562, !llvm.loop !1563

63:                                               ; preds = %57
  %64 = icmp eq ptr %58, null
  br i1 %64, label %101, label %65, !prof !1122

65:                                               ; preds = %63
  %66 = tail call fastcc ptr @phi_nodes(ptr noundef nonnull %58) #19
  %67 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %66) #19, !range !1024
  %68 = icmp eq i8 %67, 0
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !1066
  %71 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %70, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !1193
  br i1 %68, label %73, label %74, !prof !1564

73:                                               ; preds = %65
  tail call fastcc void @phi_translate_set(ptr noundef %19, ptr noundef %72, ptr noundef %0, ptr noundef nonnull %58) #19
  br label %75

74:                                               ; preds = %65
  tail call fastcc void @bitmap_set_copy(ptr noundef %19, ptr noundef %72) #19
  br label %75

75:                                               ; preds = %74, %73
  %76 = load ptr, ptr %7, align 8
  %77 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %76, i32 noundef 0, ptr noundef nonnull %8) #19, !range !941
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %100, label %79, !prof !1565

79:                                               ; preds = %75, %96
  %80 = phi i32 [ %97, %96 ], [ 0, %75 ]
  %81 = load ptr, ptr %8, align 8, !tbaa !922
  %82 = tail call fastcc ptr @phi_nodes(ptr noundef %81) #19
  %83 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %82) #19, !range !1024
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %91, !prof !1566

85:                                               ; preds = %79
  %86 = tail call fastcc ptr @bitmap_set_new() #19
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !1066
  %89 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %88, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !1193
  tail call fastcc void @phi_translate_set(ptr noundef %86, ptr noundef %90, ptr noundef %0, ptr noundef %81) #19
  tail call fastcc void @bitmap_set_and(ptr noundef %19, ptr noundef %86) #19
  tail call fastcc void @bitmap_set_free(ptr noundef %86) #19
  br label %96

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !1066
  %94 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %93, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !1193
  tail call fastcc void @bitmap_set_and(ptr noundef %19, ptr noundef %95) #19
  br label %96

96:                                               ; preds = %85, %91
  %97 = add i32 %80, 1
  %98 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %76, i32 noundef %97, ptr noundef nonnull %8) #19, !range !941
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %79, !prof !1567, !llvm.loop !1568

100:                                              ; preds = %96, %75
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %113

101:                                              ; preds = %35, %63
  %102 = load ptr, ptr @changed_blocks, align 8, !tbaa !922
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %104 = load i32, ptr %103, align 8, !tbaa !1070
  tail call fastcc void @SET_BIT(ptr noundef %102, i32 noundef %104) #19
  %105 = load ptr, ptr %9, align 8, !tbaa !1066
  %106 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %105, i64 0, i32 8
  %107 = load i8, ptr %106, align 8
  %108 = and i8 %107, -2
  store i8 %108, ptr %106, align 8
  %109 = load ptr, ptr %9, align 8, !tbaa !1066
  %110 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %109, i64 0, i32 8
  %111 = load i8, ptr %110, align 8
  %112 = or i8 %111, 2
  store i8 %112, ptr %110, align 8
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %172

113:                                              ; preds = %100, %27, %15
  %114 = load ptr, ptr %9, align 8, !tbaa !1066
  %115 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !1072
  %117 = tail call fastcc ptr @bitmap_set_subtract(ptr noundef %19, ptr noundef %116) #19
  %118 = load ptr, ptr %9, align 8, !tbaa !1066
  %119 = load ptr, ptr %118, align 8, !tbaa !1068
  %120 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %118, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !1072
  %122 = tail call fastcc ptr @bitmap_set_subtract(ptr noundef %119, ptr noundef %121) #19
  %123 = load ptr, ptr %9, align 8, !tbaa !1066
  %124 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %123, i64 0, i32 4
  store ptr %122, ptr %124, align 8, !tbaa !1193
  %125 = load ptr, ptr %117, align 8, !tbaa !927
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %125, ptr noundef nonnull %4) #19
  %126 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !1024
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %140, label %128, !prof !1569

128:                                              ; preds = %113, %128
  %129 = load ptr, ptr %9, align 8, !tbaa !1066
  %130 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %129, i64 0, i32 4
  %131 = load ptr, ptr %130, align 8, !tbaa !1193
  %132 = load i32, ptr %4, align 4, !tbaa !956
  %133 = tail call fastcc ptr @expression_for_id(i32 noundef %132) #19
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %131, ptr noundef %133) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %134 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !1024
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %128, !prof !1570, !llvm.loop !1571

136:                                              ; preds = %128
  %137 = load ptr, ptr %9, align 8, !tbaa !1066
  %138 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %137, i64 0, i32 4
  %139 = load ptr, ptr %138, align 8, !tbaa !1193
  br label %140

140:                                              ; preds = %136, %113
  %141 = phi ptr [ %139, %136 ], [ %122, %113 ]
  tail call fastcc void @clean(ptr noundef %141, ptr noundef nonnull %0) #19
  %142 = load ptr, ptr %18, align 8, !tbaa !927
  %143 = icmp eq ptr %142, null
  br i1 %143, label %150, label %144, !prof !1556

144:                                              ; preds = %140
  %145 = load ptr, ptr %9, align 8, !tbaa !1066
  %146 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %145, i64 0, i32 4
  %147 = load ptr, ptr %146, align 8, !tbaa !1193
  %148 = tail call fastcc zeroext i8 @bitmap_set_equal(ptr noundef nonnull %18, ptr noundef %147) #19
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %168, !prof !1572

150:                                              ; preds = %144, %140
  %151 = load ptr, ptr @changed_blocks, align 8, !tbaa !922
  %152 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %153 = load i32, ptr %152, align 8, !tbaa !1070
  tail call fastcc void @SET_BIT(ptr noundef %151, i32 noundef %153) #19
  %154 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !1185
  %155 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %154, ptr %155, align 8, !tbaa.struct !1186
  %156 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %154, ptr noundef nonnull %5) #19, !range !1024
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %172, label %158, !prof !1573

158:                                              ; preds = %150, %158
  %159 = load ptr, ptr @changed_blocks, align 8, !tbaa !922
  %160 = load ptr, ptr %5, align 8, !tbaa !922
  %161 = load ptr, ptr %160, align 8, !tbaa !1387
  %162 = getelementptr inbounds %struct.basic_block_def, ptr %161, i64 0, i32 9
  %163 = load i32, ptr %162, align 8, !tbaa !1070
  tail call fastcc void @SET_BIT(ptr noundef %159, i32 noundef %163) #19
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %164 = load i32, ptr %6, align 8
  %165 = load ptr, ptr %155, align 8
  %166 = call fastcc zeroext i8 @ei_cond(i32 %164, ptr %165, ptr noundef nonnull %5) #19, !range !1024
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %172, label %158, !prof !1574, !llvm.loop !1575

168:                                              ; preds = %144
  %169 = load ptr, ptr @changed_blocks, align 8, !tbaa !922
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %171 = load i32, ptr %170, align 8, !tbaa !1070
  tail call fastcc void @RESET_BIT(ptr noundef %169, i32 noundef %171) #19
  br label %172

172:                                              ; preds = %158, %150, %101, %27, %168, %2
  %173 = phi ptr [ null, %2 ], [ %19, %168 ], [ %19, %27 ], [ %19, %101 ], [ %19, %150 ], [ %19, %158 ]
  %174 = phi ptr [ null, %2 ], [ %18, %168 ], [ %18, %27 ], [ %18, %101 ], [ %18, %150 ], [ %18, %158 ]
  %175 = phi ptr [ null, %2 ], [ %117, %168 ], [ null, %27 ], [ null, %101 ], [ %117, %150 ], [ %117, %158 ]
  %176 = phi i8 [ 0, %2 ], [ 0, %168 ], [ 1, %27 ], [ 1, %101 ], [ 1, %150 ], [ 1, %158 ]
  %177 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %178 = icmp eq ptr %177, null
  br i1 %178, label %211, label %179, !prof !1554

179:                                              ; preds = %172
  %180 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %181 = and i32 %180, 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %211, label %183

183:                                              ; preds = %179
  %184 = load ptr, ptr %9, align 8, !tbaa !1066
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
  %193 = load i32, ptr %192, align 8, !tbaa !1070
  tail call fastcc void @print_bitmap_set(ptr noundef nonnull %177, ptr noundef nonnull %173, ptr noundef nonnull @.str.36, i32 noundef %193) #19
  %194 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %195 = load ptr, ptr %9, align 8, !tbaa !1066
  br label %196

196:                                              ; preds = %191, %189
  %197 = phi ptr [ %195, %191 ], [ %184, %189 ]
  %198 = phi ptr [ %194, %191 ], [ %177, %189 ]
  %199 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %197, i64 0, i32 4
  %200 = load ptr, ptr %199, align 8, !tbaa !1193
  %201 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %202 = load i32, ptr %201, align 8, !tbaa !1070
  tail call fastcc void @print_bitmap_set(ptr noundef %198, ptr noundef %200, ptr noundef nonnull @.str.37, i32 noundef %202) #19
  %203 = icmp eq ptr %175, null
  br i1 %203, label %211, label %204

204:                                              ; preds = %196
  %205 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %206 = load i32, ptr %201, align 8, !tbaa !1070
  tail call fastcc void @print_bitmap_set(ptr noundef %205, ptr noundef nonnull %175, ptr noundef nonnull @.str.38, i32 noundef %206) #19
  br label %211

207:                                              ; preds = %183
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %209 = load i32, ptr %208, align 8, !tbaa !1070
  %210 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %177, ptr noundef nonnull @.str.39, i32 noundef %209) #19
  br label %211

211:                                              ; preds = %207, %204, %196, %179, %172
  %212 = icmp eq ptr %174, null
  br i1 %212, label %214, label %213, !prof !1556

213:                                              ; preds = %211
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %174) #19
  br label %214

214:                                              ; preds = %213, %211
  %215 = icmp eq ptr %175, null
  br i1 %215, label %217, label %216, !prof !1556

216:                                              ; preds = %214
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %175) #19
  br label %217

217:                                              ; preds = %216, %214
  %218 = icmp eq ptr %173, null
  br i1 %218, label %220, label %219, !prof !1556

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
define internal fastcc noundef zeroext i8 @compute_partial_antic_aux(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1576 !PGOFuncName !1577 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %9 = load ptr, ptr @compiler_params, align 8, !tbaa !922
  %10 = getelementptr inbounds %struct.param_info, ptr %9, i64 103, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !1578
  %12 = sext i32 %11 to i64
  %13 = icmp eq i8 %1, 0
  br i1 %13, label %14, label %186, !prof !1580

14:                                               ; preds = %2
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %29, label %16, !prof !1581

16:                                               ; preds = %14
  %17 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !1024
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %29, label %19, !prof !1582

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @single_succ(ptr noundef %0) #19
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !1066
  %23 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !1194
  %25 = getelementptr inbounds %struct.bitmap_set, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !929
  %27 = tail call i64 @bitmap_count_bits(ptr noundef %26) #20
  %28 = icmp ugt i64 %27, %12
  br i1 %28, label %186, label %29, !prof !1583

29:                                               ; preds = %19, %16, %14
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !1066
  %32 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !1194
  %34 = tail call fastcc ptr @bitmap_set_new() #19
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !1555
  %37 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %36) #19
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %130, label %39, !prof !1584

39:                                               ; preds = %29
  %40 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #19, !range !1024
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %54, label %42, !prof !1585

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #19
  %44 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #19
  %45 = getelementptr inbounds %struct.edge_def, ptr %44, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !1188
  %47 = and i32 %46, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %130, !prof !1586

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !1066
  %52 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %51, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !1194
  tail call fastcc void @phi_translate_set(ptr noundef %34, ptr noundef %53, ptr noundef nonnull %0, ptr noundef %43) #19
  br label %130

54:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %55 = tail call fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %37) #19
  store ptr %55, ptr %5, align 8, !tbaa !922
  %56 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %35) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !1185
  %57 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %56, ptr %57, align 8, !tbaa.struct !1186
  %58 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %56, ptr noundef nonnull %3) #19, !range !1024
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %74, label %60, !prof !1587

60:                                               ; preds = %54, %69
  %61 = load ptr, ptr %3, align 8, !tbaa !922
  %62 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 7
  %63 = load i32, ptr %62, align 8, !tbaa !1188
  %64 = and i32 %63, 32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69, !prof !1588

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !1388
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %55, ptr noundef %68) #19
  br label %69

69:                                               ; preds = %60, %66
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %70 = load i32, ptr %4, align 8
  %71 = load ptr, ptr %57, align 8
  %72 = call fastcc zeroext i8 @ei_cond(i32 %70, ptr %71, ptr noundef nonnull %3) #19, !range !1024
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %60, !prof !1589, !llvm.loop !1590

74:                                               ; preds = %69, %54
  %75 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %55) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %129, label %77, !prof !1591

77:                                               ; preds = %74
  %78 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %55, i32 noundef 0, ptr noundef nonnull %6) #19, !range !941
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %129, label %80, !prof !1587

80:                                               ; preds = %77, %125
  %81 = phi i32 [ %126, %125 ], [ 0, %77 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  %82 = load ptr, ptr %6, align 8, !tbaa !922
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !1066
  %85 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %84, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !1193
  %87 = load ptr, ptr %86, align 8, !tbaa !927
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %87, ptr noundef nonnull %7) #19
  %88 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !1024
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %95, label %90, !prof !1592

90:                                               ; preds = %80, %90
  %91 = load i32, ptr %7, align 4, !tbaa !956
  %92 = tail call fastcc ptr @expression_for_id(i32 noundef %91) #19
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %34, ptr noundef %92) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  %93 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !1024
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %90, !prof !1593, !llvm.loop !1594

95:                                               ; preds = %90, %80
  %96 = tail call fastcc ptr @phi_nodes(ptr noundef %82) #19
  %97 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %96) #19, !range !1024
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %113, !prof !1595

99:                                               ; preds = %95
  %100 = tail call fastcc ptr @bitmap_set_new() #19
  %101 = load ptr, ptr %83, align 8, !tbaa !1066
  %102 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %101, i64 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !1194
  tail call fastcc void @phi_translate_set(ptr noundef %100, ptr noundef %103, ptr noundef %0, ptr noundef %82) #19
  %104 = load ptr, ptr %100, align 8, !tbaa !927
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %104, ptr noundef nonnull %7) #19
  %105 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !1024
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %112, label %107, !prof !1596

107:                                              ; preds = %99, %107
  %108 = load i32, ptr %7, align 4, !tbaa !956
  %109 = tail call fastcc ptr @expression_for_id(i32 noundef %108) #19
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %34, ptr noundef %109) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  %110 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !1024
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %107, !prof !1597, !llvm.loop !1598

112:                                              ; preds = %107, %99
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %100) #19
  br label %125

113:                                              ; preds = %95
  %114 = load ptr, ptr %83, align 8, !tbaa !1066
  %115 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %114, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !1194
  %117 = load ptr, ptr %116, align 8, !tbaa !927
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %117, ptr noundef nonnull %7) #19
  %118 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !1024
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %125, label %120, !prof !1599

120:                                              ; preds = %113, %120
  %121 = load i32, ptr %7, align 4, !tbaa !956
  %122 = tail call fastcc ptr @expression_for_id(i32 noundef %121) #19
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %34, ptr noundef %122) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  %123 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !1024
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %120, !prof !1600, !llvm.loop !1601

125:                                              ; preds = %120, %113, %112
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  %126 = add i32 %81, 1
  %127 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %55, i32 noundef %126, ptr noundef nonnull %6) #19, !range !941
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %80, !prof !1589, !llvm.loop !1602

129:                                              ; preds = %125, %77, %74
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %130

130:                                              ; preds = %42, %49, %129, %29
  %131 = load ptr, ptr %30, align 8, !tbaa !1066
  %132 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !1072
  %134 = tail call fastcc ptr @bitmap_set_subtract(ptr noundef %34, ptr noundef %133) #19
  %135 = load ptr, ptr %30, align 8, !tbaa !1066
  %136 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %135, i64 0, i32 5
  store ptr %134, ptr %136, align 8, !tbaa !1194
  %137 = getelementptr inbounds %struct.bitmap_set, ptr %134, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !929
  %139 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %135, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !1071
  %141 = getelementptr inbounds %struct.bitmap_set, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !929
  %143 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %138, ptr noundef %142) #20
  %144 = load ptr, ptr %30, align 8, !tbaa !1066
  %145 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %144, i64 0, i32 5
  %146 = load ptr, ptr %145, align 8, !tbaa !1194
  %147 = load ptr, ptr %146, align 8, !tbaa !927
  %148 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %144, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !1071
  %150 = load ptr, ptr %149, align 8, !tbaa !927
  %151 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %147, ptr noundef %150) #20
  %152 = load ptr, ptr %30, align 8, !tbaa !1066
  %153 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %152, i64 0, i32 5
  %154 = load ptr, ptr %153, align 8, !tbaa !1194
  %155 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %152, i64 0, i32 4
  %156 = load ptr, ptr %155, align 8, !tbaa !1193
  tail call fastcc void @bitmap_set_subtract_values(ptr noundef %154, ptr noundef %156) #19
  %157 = load ptr, ptr %30, align 8, !tbaa !1066
  %158 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %157, i64 0, i32 5
  %159 = load ptr, ptr %158, align 8, !tbaa !1194
  %160 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %157, i64 0, i32 4
  %161 = load ptr, ptr %160, align 8, !tbaa !1193
  tail call fastcc void @dependent_clean(ptr noundef %159, ptr noundef %161, ptr noundef %0) #19
  %162 = load ptr, ptr %30, align 8, !tbaa !1066
  %163 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %162, i64 0, i32 5
  %164 = load ptr, ptr %163, align 8, !tbaa !1194
  %165 = tail call fastcc zeroext i8 @bitmap_set_equal(ptr noundef %33, ptr noundef %164) #19
  %166 = icmp eq i8 %165, 0
  %167 = load ptr, ptr @changed_blocks, align 8, !tbaa !922
  %168 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %169 = load i32, ptr %168, align 8, !tbaa !1070
  br i1 %166, label %170, label %185, !prof !1603

170:                                              ; preds = %130
  tail call fastcc void @SET_BIT(ptr noundef %167, i32 noundef %169) #19
  %171 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !1185
  %172 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %171, ptr %172, align 8, !tbaa.struct !1186
  %173 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %171, ptr noundef nonnull %3) #19, !range !1024
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %186, label %175, !prof !1604

175:                                              ; preds = %170, %175
  %176 = load ptr, ptr @changed_blocks, align 8, !tbaa !922
  %177 = load ptr, ptr %3, align 8, !tbaa !922
  %178 = load ptr, ptr %177, align 8, !tbaa !1387
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 9
  %180 = load i32, ptr %179, align 8, !tbaa !1070
  tail call fastcc void @SET_BIT(ptr noundef %176, i32 noundef %180) #19
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %181 = load i32, ptr %4, align 8
  %182 = load ptr, ptr %172, align 8
  %183 = call fastcc zeroext i8 @ei_cond(i32 %181, ptr %182, ptr noundef nonnull %3) #19, !range !1024
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %186, label %175, !prof !1605, !llvm.loop !1606

185:                                              ; preds = %130
  tail call fastcc void @RESET_BIT(ptr noundef %167, i32 noundef %169) #19
  br label %186

186:                                              ; preds = %175, %170, %185, %19, %2
  %187 = phi ptr [ null, %2 ], [ null, %19 ], [ %34, %185 ], [ %34, %170 ], [ %34, %175 ]
  %188 = phi ptr [ null, %2 ], [ null, %19 ], [ %33, %185 ], [ %33, %170 ], [ %33, %175 ]
  %189 = phi i8 [ 0, %2 ], [ 0, %19 ], [ 0, %185 ], [ 1, %170 ], [ 1, %175 ]
  %190 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %191 = icmp eq ptr %190, null
  br i1 %191, label %210, label %192, !prof !1580

192:                                              ; preds = %186
  %193 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %194 = and i32 %193, 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %210, label %196

196:                                              ; preds = %192
  %197 = icmp eq ptr %187, null
  br i1 %197, label %202, label %198

198:                                              ; preds = %196
  %199 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %200 = load i32, ptr %199, align 8, !tbaa !1070
  tail call fastcc void @print_bitmap_set(ptr noundef nonnull %190, ptr noundef nonnull %187, ptr noundef nonnull @.str.44, i32 noundef %200) #19
  %201 = load ptr, ptr @dump_file, align 8, !tbaa !922
  br label %202

202:                                              ; preds = %198, %196
  %203 = phi ptr [ %201, %198 ], [ %190, %196 ]
  %204 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !1066
  %206 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %205, i64 0, i32 5
  %207 = load ptr, ptr %206, align 8, !tbaa !1194
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %209 = load i32, ptr %208, align 8, !tbaa !1070
  tail call fastcc void @print_bitmap_set(ptr noundef %203, ptr noundef %207, ptr noundef nonnull @.str.45, i32 noundef %209) #19
  br label %210

210:                                              ; preds = %202, %192, %186
  %211 = icmp eq ptr %188, null
  br i1 %211, label %213, label %212, !prof !1607

212:                                              ; preds = %210
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %188) #19
  br label %213

213:                                              ; preds = %212, %210
  %214 = icmp eq ptr %187, null
  br i1 %214, label %216, label %215, !prof !1607

215:                                              ; preds = %213
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %187) #19
  br label %216

216:                                              ; preds = %215, %213
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %189
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1547 !PGOFuncName !1608 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1609

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
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !1610 !PGOFuncName !1611 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1555
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1612 !PGOFuncName !1613 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1388
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @defer_or_phi_translate_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1614 !PGOFuncName !1615 {
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1066
  %7 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %6, i64 0, i32 8
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %24, !prof !1616

11:                                               ; preds = %4
  %12 = load ptr, ptr @changed_blocks, align 8, !tbaa !922
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !1070
  tail call fastcc void @SET_BIT(ptr noundef %12, i32 noundef %14) #19
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1066
  %17 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %16, i64 0, i32 8
  %18 = load i8, ptr %17, align 8
  %19 = and i8 %18, -2
  store i8 %19, ptr %17, align 8
  %20 = load ptr, ptr %15, align 8, !tbaa !1066
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
define internal fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1617 !PGOFuncName !1618 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1619 !PGOFuncName !1620 {
  %3 = load i32, ptr %0, align 8, !tbaa !1621
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1621
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !922
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !1617 !PGOFuncName !1623 {
  %2 = load ptr, ptr %0, align 8, !tbaa !922
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1624

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !922
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #3 !prof !1625 !PGOFuncName !1626 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !1627

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !1530
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1625 !PGOFuncName !1628 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1522
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !1629

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 510, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !906
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !1630

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1631
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @phi_translate_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1632 !PGOFuncName !1633 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %7 = tail call fastcc ptr @phi_nodes(ptr noundef %3) #19
  %8 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %7) #19, !range !1024
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10, !prof !1634

10:                                               ; preds = %4
  tail call fastcc void @bitmap_set_copy(ptr noundef %0, ptr noundef %1) #19
  br label %30

11:                                               ; preds = %4
  %12 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %1) #19
  store ptr %12, ptr %5, align 8, !tbaa !922
  %13 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %6) #19, !range !941
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15, !prof !1635

15:                                               ; preds = %11, %25
  %16 = phi i32 [ %26, %25 ], [ 0, %11 ]
  %17 = load ptr, ptr %6, align 8, !tbaa !922
  %18 = tail call fastcc ptr @phi_translate(ptr noundef %17, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20, !prof !1636

20:                                               ; preds = %15
  %21 = load i32, ptr %18, align 8, !tbaa !900
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24, !prof !1637

23:                                               ; preds = %20
  tail call fastcc void @bitmap_value_replace_in_set(ptr noundef %0, ptr noundef nonnull %18) #19
  br label %25

24:                                               ; preds = %20
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %0, ptr noundef nonnull %18) #19
  br label %25

25:                                               ; preds = %23, %24, %15
  %26 = add nuw nsw i32 %16, 1
  %27 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %12, i32 noundef %26, ptr noundef nonnull %6) #19, !range !941
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %15, !prof !1638, !llvm.loop !1639

29:                                               ; preds = %25, %11
  call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull %5) #19
  br label %30

30:                                               ; preds = %29, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !1640 !PGOFuncName !1641 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1642

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1621
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1643

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !922
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !922
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_set_and(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !1644 !PGOFuncName !1645 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %29, label %6, !prof !1566

6:                                                ; preds = %2
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  %8 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !929
  %10 = getelementptr inbounds %struct.bitmap_set, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !929
  tail call void @bitmap_and_into(ptr noundef %9, ptr noundef %11) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !927
  tail call void @bitmap_copy(ptr noundef %7, ptr noundef %12) #20
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %7, ptr noundef nonnull %4) #19
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !1024
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %28, label %15, !prof !1646

15:                                               ; preds = %6, %25
  %16 = load i32, ptr %4, align 4, !tbaa !956
  %17 = tail call fastcc ptr @expression_for_id(i32 noundef %16) #19
  %18 = tail call fastcc i32 @get_expr_value_id(ptr noundef %17) #19
  %19 = load ptr, ptr %8, align 8, !tbaa !929
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %19, i32 noundef %18) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25, !prof !1647

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !927
  %24 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %23, i32 noundef %16) #20
  br label %25

25:                                               ; preds = %22, %15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !1024
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %15, !prof !1648, !llvm.loop !1649

28:                                               ; preds = %25, %6
  tail call void @bitmap_obstack_free(ptr noundef %7) #20
  br label %29

29:                                               ; preds = %28, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_set_free(ptr nocapture noundef %0) unnamed_addr #0 !prof !1650 !PGOFuncName !1651 {
  %2 = load ptr, ptr %0, align 8, !tbaa !927
  tail call void @bitmap_obstack_free(ptr noundef %2) #20
  store ptr null, ptr %0, align 8, !tbaa !927
  %3 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !929
  tail call void @bitmap_obstack_free(ptr noundef %4) #20
  store ptr null, ptr %3, align 8, !tbaa !929
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @bitmap_set_subtract(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1652 !PGOFuncName !1653 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = tail call fastcc ptr @bitmap_set_new() #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %6 = load ptr, ptr %5, align 8, !tbaa !927
  %7 = load ptr, ptr %0, align 8, !tbaa !927
  %8 = load ptr, ptr %1, align 8, !tbaa !927
  %9 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %6, ptr noundef %7, ptr noundef %8) #20
  %10 = load ptr, ptr %5, align 8, !tbaa !927
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %10, ptr noundef nonnull %4) #19
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !1024
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %23, label %13, !prof !1654

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bitmap_set, ptr %5, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %15
  %16 = load i32, ptr %4, align 4, !tbaa !956
  %17 = tail call fastcc ptr @expression_for_id(i32 noundef %16) #19
  %18 = tail call fastcc i32 @get_expr_value_id(ptr noundef %17) #19
  %19 = load ptr, ptr %14, align 8, !tbaa !929
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %19, i32 noundef %18) #20
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !1024
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %15, !prof !1655, !llvm.loop !1656

23:                                               ; preds = %15, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1552 !PGOFuncName !1657 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %5 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %0) #19
  store ptr %5, ptr %3, align 8, !tbaa !922
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %6 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %4) #19, !range !941
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8, !prof !1569

8:                                                ; preds = %2, %14
  %9 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %10 = load ptr, ptr %4, align 8, !tbaa !922
  %11 = tail call fastcc zeroext i8 @valid_in_sets(ptr noundef %0, ptr noundef null, ptr noundef %10, ptr noundef %1) #19
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14, !prof !1658

13:                                               ; preds = %8
  tail call fastcc void @bitmap_remove_from_set(ptr noundef %0, ptr noundef %10) #19
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i32 %9, 1
  %16 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %5, i32 noundef %15, ptr noundef nonnull %4) #19, !range !941
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %8, !prof !1659, !llvm.loop !1660

18:                                               ; preds = %14, %2
  call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bitmap_set_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1661 !PGOFuncName !1662 {
  %3 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !929
  %5 = getelementptr inbounds %struct.bitmap_set, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !929
  %7 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %4, ptr noundef %6) #20
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 !prof !1663 !PGOFuncName !1664 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1213
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1665

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
  %15 = load i64, ptr %14, align 8, !tbaa !1038
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !906
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !906
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !1038
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !1038
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1666 !PGOFuncName !1667 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !1024
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !1668

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1555
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sorted_array_from_bitmap_set(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1669 !PGOFuncName !1670 {
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
  %8 = load ptr, ptr %7, align 8, !tbaa !929
  %9 = tail call i64 @bitmap_count_bits(ptr noundef %8) #20
  %10 = trunc i64 %9 to i32
  %11 = tail call fastcc ptr @VEC_pre_expr_heap_alloc(i32 noundef %10) #19
  store ptr %11, ptr %6, align 8, !tbaa !922
  %12 = load ptr, ptr %7, align 8, !tbaa !929
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %12, ptr noundef nonnull %2) #19
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #19, !range !1024
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %37, label %15, !prof !1671

15:                                               ; preds = %1, %32
  %16 = load ptr, ptr @value_expressions, align 8
  %17 = load i32, ptr %2, align 4, !tbaa !956
  %18 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %16, i32 noundef %17) #19
  %19 = load ptr, ptr %18, align 8, !tbaa !927
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %19, ptr noundef nonnull %3) #19
  %20 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #19, !range !1024
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %32, label %22, !prof !1672

22:                                               ; preds = %15, %29
  %23 = load ptr, ptr %0, align 8, !tbaa !927
  %24 = load i32, ptr %3, align 4, !tbaa !956
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %24) #20
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !1673

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @expression_for_id(i32 noundef %24) #19
  call fastcc void @VEC_pre_expr_heap_safe_push(ptr noundef nonnull %6, ptr noundef %28) #19
  br label %29

29:                                               ; preds = %22, %27
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %3) #19
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #19, !range !1024
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %22, !prof !1674, !llvm.loop !1675

32:                                               ; preds = %29, %15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #19
  %33 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #19, !range !1024
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %15, !prof !1676, !llvm.loop !1677

35:                                               ; preds = %32
  %36 = load ptr, ptr %6, align 8, !tbaa !922
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
define internal fastcc noundef i32 @VEC_pre_expr_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !1678 !PGOFuncName !1679 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1680

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !989
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1681

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !922
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !922
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_translate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1682 !PGOFuncName !1683 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %27, label %7, !prof !1684

7:                                                ; preds = %5
  %8 = load i32, ptr %0, align 8, !tbaa !900
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %27, label %10, !prof !1685

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @get_expr_value_id(ptr noundef nonnull %0) #19
  %12 = tail call zeroext i8 @value_id_constant_p(i32 noundef %11) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %27, !prof !1686

14:                                               ; preds = %10
  %15 = load i32, ptr %0, align 8, !tbaa !900
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17, !prof !1687

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @phi_trans_lookup(ptr noundef nonnull %0, ptr noundef %3) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %27, !prof !1688

20:                                               ; preds = %17, %14
  %21 = tail call fastcc ptr @phi_translate_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23, !prof !1689

23:                                               ; preds = %20
  %24 = load i32, ptr %0, align 8, !tbaa !900
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !1690

26:                                               ; preds = %23
  tail call fastcc void @phi_trans_add(ptr noundef nonnull %0, ptr noundef nonnull %21, ptr noundef %3) #19
  br label %27

27:                                               ; preds = %20, %23, %26, %17, %10, %7, %5
  %28 = phi ptr [ null, %5 ], [ %0, %7 ], [ %0, %10 ], [ %18, %17 ], [ %21, %26 ], [ %21, %23 ], [ null, %20 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_value_replace_in_set(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1691 !PGOFuncName !1692 {
  %3 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  %4 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %3) #19
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !1693

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
define internal fastcc void @VEC_pre_expr_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !1694 !PGOFuncName !1695 {
  %2 = load ptr, ptr %0, align 8, !tbaa !922
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1696

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !922
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_pre_expr_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1669 !PGOFuncName !1697 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_trans_lookup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1698 !PGOFuncName !1699 {
  %3 = alloca %struct.expr_pred_trans_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  store ptr %0, ptr %3, align 8, !tbaa !1404
  %4 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !1402
  %5 = tail call i32 @pre_expr_hash(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !1070
  %8 = tail call i32 @iterative_hash_hashval_t(i32 noundef %5, i32 noundef %7) #20
  %9 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %3, i64 0, i32 3
  store i32 %8, ptr %9, align 8, !tbaa !1398
  %10 = load ptr, ptr @phi_translate_table, align 8, !tbaa !922
  %11 = call ptr @htab_find_slot_with_hash(ptr noundef %10, ptr noundef nonnull %3, i32 noundef %8, i32 noundef 0) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !1688

13:                                               ; preds = %2
  %14 = load ptr, ptr %11, align 8, !tbaa !922
  %15 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1700
  br label %17

17:                                               ; preds = %2, %13
  %18 = phi ptr [ %16, %13 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_translate_1(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1701 !PGOFuncName !1702 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.vn_nary_op_s, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct.vn_reference_op_struct, align 8
  %14 = load i32, ptr %0, align 8, !tbaa !900
  switch i32 %14, label %376 [
    i32 1, label %15
    i32 2, label %111
    i32 0, label %337
  ], !prof !1703

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %16 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !906
  store ptr %17, ptr %6, align 8, !tbaa !922
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
  br i1 %28, label %109, label %29, !prof !1704

29:                                               ; preds = %15
  %30 = zext nneg i32 %27 to i64
  br label %31

31:                                               ; preds = %29, %60
  %32 = phi i64 [ 0, %29 ], [ %62, %60 ]
  %33 = phi i8 [ 0, %29 ], [ %61, %60 ]
  %34 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 5, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !922
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %60, !prof !1705

39:                                               ; preds = %31
  %40 = tail call ptr @VN_INFO(ptr noundef nonnull %35) #20
  %41 = getelementptr inbounds %struct.vn_ssa_aux, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !908
  %43 = tail call fastcc ptr @find_leader_in_sets(i32 noundef %42, ptr noundef %1, ptr noundef %2) #19
  %44 = tail call fastcc ptr @phi_translate(ptr noundef %43, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  %45 = icmp eq ptr %44, null
  %46 = icmp eq ptr %44, %43
  %47 = or i1 %45, %46
  br i1 %47, label %52, label %48, !prof !1706

48:                                               ; preds = %39
  %49 = tail call fastcc ptr @get_representative_for(ptr noundef nonnull %44) #19
  %50 = icmp eq ptr %49, null
  br i1 %50, label %109, label %51, !prof !1707

51:                                               ; preds = %48
  store ptr %49, ptr %34, align 8, !tbaa !922
  br label %53

52:                                               ; preds = %39
  br i1 %45, label %109, label %53, !prof !1708

53:                                               ; preds = %52, %51
  %54 = phi ptr [ %35, %52 ], [ %49, %51 ]
  %55 = getelementptr inbounds %struct.vn_nary_op_s, ptr %17, i64 0, i32 5, i64 %32
  %56 = load ptr, ptr %55, align 8, !tbaa !922
  %57 = icmp ne ptr %54, %56
  %58 = zext i1 %57 to i8
  %59 = or i8 %33, %58
  br label %60

60:                                               ; preds = %53, %31
  %61 = phi i8 [ %33, %31 ], [ %59, %53 ]
  %62 = add nuw nsw i64 %32, 1
  %63 = icmp eq i64 %62, %30
  br i1 %63, label %64, label %31, !prof !1709, !llvm.loop !1710

64:                                               ; preds = %60
  %65 = icmp eq i8 %61, 0
  br i1 %65, label %109, label %66, !prof !1711

66:                                               ; preds = %64
  %67 = and i32 %26, 65535
  %68 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !1712
  %70 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !922
  %72 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 5, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !922
  %74 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 5, i64 2
  %75 = load ptr, ptr %74, align 8, !tbaa !922
  %76 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 5, i64 3
  %77 = load ptr, ptr %76, align 8, !tbaa !922
  %78 = call ptr @vn_nary_op_lookup_pieces(i32 noundef %27, i32 noundef %67, ptr noundef %69, ptr noundef %71, ptr noundef %73, ptr noundef %75, ptr noundef %77, ptr noundef nonnull %6) #20
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80, !prof !1713

80:                                               ; preds = %66
  %81 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %78) #20
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83, !prof !1714

83:                                               ; preds = %80
  %84 = call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %78) #19
  br label %109

85:                                               ; preds = %80, %66
  %86 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !922
  %87 = call ptr @pool_alloc(ptr noundef %86) #20
  store i32 1, ptr %87, align 8, !tbaa !900
  %88 = getelementptr inbounds %struct.pre_expr_d, ptr %87, i64 0, i32 1
  store i32 0, ptr %88, align 4, !tbaa !948
  %89 = load ptr, ptr %6, align 8, !tbaa !922
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91, !prof !1715

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.pre_expr_d, ptr %87, i64 0, i32 2
  store ptr %89, ptr %92, align 8, !tbaa !906
  %93 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %87) #19
  %94 = icmp eq ptr %93, %87
  br i1 %94, label %95, label %109, !prof !1716

95:                                               ; preds = %91
  %96 = load ptr, ptr %6, align 8, !tbaa !922
  %97 = load i32, ptr %96, align 8, !tbaa !911
  br label %106

98:                                               ; preds = %85
  %99 = call i32 @get_next_value_id() #20
  %100 = call i32 @get_max_value_id() #20
  %101 = add i32 %100, 1
  call fastcc void @VEC_bitmap_set_t_heap_safe_grow_cleared(i32 noundef %101) #19
  %102 = call ptr @vn_nary_op_insert_pieces(i32 noundef %27, i32 noundef %67, ptr noundef %69, ptr noundef %71, ptr noundef %73, ptr noundef %75, ptr noundef %77, ptr noundef %78, i32 noundef %99) #20
  store ptr %102, ptr %6, align 8, !tbaa !922
  %103 = getelementptr inbounds %struct.pre_expr_d, ptr %87, i64 0, i32 2
  store ptr %102, ptr %103, align 8, !tbaa !906
  %104 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %87) #19
  %105 = icmp eq ptr %104, %87
  br i1 %105, label %106, label %109, !prof !1717

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
  %113 = load ptr, ptr %112, align 8, !tbaa !906
  %114 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !1006
  %116 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !1013
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  store ptr null, ptr %8, align 8, !tbaa !922
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #21
  store i8 1, ptr %9, align 1, !tbaa !906
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  store i32 0, ptr %10, align 4, !tbaa !956
  %118 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %115, i32 noundef 0, ptr noundef nonnull %11) #19, !range !941
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %252, label %120, !prof !1718

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %13, i64 0, i32 1
  %122 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %13, i64 0, i32 2
  %123 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %13, i64 0, i32 3
  %124 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %13, i64 0, i32 4
  br label %125

125:                                              ; preds = %120, %246
  %126 = phi i8 [ 0, %120 ], [ %211, %246 ]
  %127 = phi i32 [ 0, %120 ], [ %248, %246 ]
  %128 = load ptr, ptr %11, align 8, !tbaa !922
  %129 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %128, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !1009
  %131 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %128, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !1010
  %133 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %128, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !1011
  %135 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %128, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !1719
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %128, i64 40, i1 false), !tbaa.struct !1720
  %137 = icmp eq ptr %130, null
  br i1 %137, label %155, label %138, !prof !1721

138:                                              ; preds = %125
  %139 = load i64, ptr %130, align 8
  %140 = and i64 %139, 65535
  %141 = icmp eq i64 %140, 141
  br i1 %141, label %142, label %155, !prof !1722

142:                                              ; preds = %138
  %143 = call ptr @VN_INFO(ptr noundef nonnull %130) #20
  %144 = getelementptr inbounds %struct.vn_ssa_aux, ptr %143, i64 0, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !908
  %146 = call fastcc ptr @find_leader_in_sets(i32 noundef %145, ptr noundef %1, ptr noundef %2) #19
  %147 = call fastcc ptr @phi_translate(ptr noundef %146, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  %148 = icmp eq ptr %147, null
  %149 = icmp eq ptr %147, %146
  %150 = or i1 %148, %149
  br i1 %150, label %154, label %151, !prof !1723

151:                                              ; preds = %142
  %152 = call fastcc ptr @get_representative_for(ptr noundef nonnull %147) #19
  %153 = icmp eq ptr %152, null
  br i1 %153, label %244, label %155

154:                                              ; preds = %142
  br i1 %148, label %244, label %155, !prof !1724

155:                                              ; preds = %154, %151, %138, %125
  %156 = phi ptr [ %130, %138 ], [ null, %125 ], [ %152, %151 ], [ %130, %154 ]
  %157 = icmp ne ptr %156, %130
  %158 = zext i1 %157 to i8
  %159 = or i8 %126, %158
  %160 = icmp eq ptr %132, null
  br i1 %160, label %181, label %161, !prof !1725

161:                                              ; preds = %155
  %162 = load i64, ptr %132, align 8
  %163 = and i64 %162, 65535
  %164 = icmp eq i64 %163, 141
  br i1 %164, label %165, label %178, !prof !1726

165:                                              ; preds = %161
  %166 = call ptr @VN_INFO(ptr noundef nonnull %132) #20
  %167 = getelementptr inbounds %struct.vn_ssa_aux, ptr %166, i64 0, i32 2
  %168 = load i32, ptr %167, align 8, !tbaa !908
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
  br i1 %180, label %244, label %181, !prof !1726

181:                                              ; preds = %177, %174, %155, %178
  %182 = phi ptr [ %132, %178 ], [ null, %155 ], [ %175, %174 ], [ %132, %177 ]
  %183 = icmp ne ptr %182, %132
  %184 = zext i1 %183 to i8
  %185 = or i8 %159, %184
  %186 = icmp eq ptr %134, null
  br i1 %186, label %207, label %187, !prof !1727

187:                                              ; preds = %181
  %188 = load i64, ptr %134, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 141
  br i1 %190, label %191, label %204, !prof !1728

191:                                              ; preds = %187
  %192 = call ptr @VN_INFO(ptr noundef nonnull %134) #20
  %193 = getelementptr inbounds %struct.vn_ssa_aux, ptr %192, i64 0, i32 2
  %194 = load i32, ptr %193, align 8, !tbaa !908
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
  br i1 %206, label %244, label %207, !prof !1728

207:                                              ; preds = %203, %200, %181, %204
  %208 = phi ptr [ %134, %204 ], [ null, %181 ], [ %201, %200 ], [ %134, %203 ]
  %209 = icmp ne ptr %208, %134
  %210 = zext i1 %209 to i8
  %211 = or i8 %185, %210
  %212 = load ptr, ptr %8, align 8
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %216, !prof !1729

214:                                              ; preds = %207
  %215 = call fastcc ptr @VEC_vn_reference_op_s_heap_copy(ptr noundef %115) #19
  store ptr %215, ptr %8, align 8, !tbaa !922
  br label %216

216:                                              ; preds = %214, %207
  %217 = phi ptr [ %215, %214 ], [ %212, %207 ]
  %218 = load i32, ptr %13, align 8, !tbaa !1007
  %219 = icmp eq i32 %218, 141
  br i1 %219, label %220, label %226, !prof !1730

220:                                              ; preds = %216
  %221 = load i64, ptr %156, align 8
  %222 = trunc i64 %221 to i32
  %223 = and i32 %222, 65535
  %224 = icmp eq i32 %223, 141
  br i1 %224, label %226, label %225, !prof !1731

225:                                              ; preds = %220
  store i32 %223, ptr %13, align 8, !tbaa !1007
  br label %226

226:                                              ; preds = %225, %220, %216
  store ptr %136, ptr %121, align 8, !tbaa !1719
  store ptr %156, ptr %122, align 8, !tbaa !1009
  store ptr %182, ptr %123, align 8, !tbaa !1010
  store ptr %208, ptr %124, align 8, !tbaa !1011
  %227 = load i32, ptr %10, align 4, !tbaa !956
  call fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef %217, i32 noundef %227, ptr noundef nonnull %13) #19
  %228 = load i32, ptr %10, align 4, !tbaa !956
  %229 = icmp ne i32 %228, 0
  %230 = icmp ne ptr %156, null
  %231 = and i1 %230, %229
  br i1 %231, label %232, label %246, !prof !1732

232:                                              ; preds = %226
  %233 = load i64, ptr %156, align 8
  %234 = and i64 %233, 65535
  %235 = icmp eq i64 %234, 121
  br i1 %235, label %236, label %246, !prof !1733

236:                                              ; preds = %232
  %237 = load ptr, ptr %8, align 8
  %238 = add i32 %228, -1
  %239 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %237, i32 noundef %238) #19
  %240 = load i32, ptr %239, align 8, !tbaa !1007
  %241 = icmp eq i32 %240, 47
  br i1 %241, label %242, label %246, !prof !1734

242:                                              ; preds = %236
  call void @vn_reference_fold_indirect(ptr noundef nonnull %8, ptr noundef nonnull %10) #20
  %243 = load i32, ptr %10, align 4, !tbaa !956
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
  store i32 %249, ptr %10, align 4, !tbaa !956
  %250 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %115, i32 noundef %248, ptr noundef nonnull %11) #19, !range !941
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %125, !prof !1735, !llvm.loop !1736

252:                                              ; preds = %246, %111, %244
  %253 = phi i32 [ %127, %244 ], [ 0, %111 ], [ %248, %246 ]
  %254 = phi i8 [ %245, %244 ], [ 0, %111 ], [ %211, %246 ]
  %255 = call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %115) #19
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %261, label %257, !prof !1737

257:                                              ; preds = %252
  %258 = load ptr, ptr %8, align 8, !tbaa !922
  %259 = icmp eq ptr %258, null
  br i1 %259, label %335, label %260, !prof !1738

260:                                              ; preds = %257
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %8) #19
  br label %335

261:                                              ; preds = %252
  %262 = icmp eq ptr %117, null
  br i1 %262, label %272, label %263, !prof !1739

263:                                              ; preds = %261
  %264 = load ptr, ptr %8, align 8, !tbaa !922
  %265 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 3
  %266 = load i32, ptr %265, align 8, !tbaa !1740
  %267 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 4
  %268 = load ptr, ptr %267, align 8, !tbaa !1741
  %269 = call fastcc ptr @translate_vuse_through_block(ptr noundef %264, i32 noundef %266, ptr noundef %268, ptr noundef nonnull %117, ptr noundef %4, ptr noundef %3, ptr noundef nonnull %9) #19
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %272, !prof !1742

271:                                              ; preds = %263
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %8) #19
  br label %335

272:                                              ; preds = %263, %261
  %273 = phi ptr [ %269, %263 ], [ null, %261 ]
  %274 = icmp eq i8 %254, 0
  %275 = icmp eq ptr %273, %117
  %276 = select i1 %274, i1 %275, i1 false
  br i1 %276, label %333, label %277, !prof !1743

277:                                              ; preds = %272
  %278 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 3
  %279 = load i32, ptr %278, align 8, !tbaa !1740
  %280 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 4
  %281 = load ptr, ptr %280, align 8, !tbaa !1741
  %282 = load ptr, ptr %8, align 8, !tbaa !922
  %283 = call ptr @vn_reference_lookup_pieces(ptr noundef %273, i32 noundef %279, ptr noundef %281, ptr noundef %282, ptr noundef nonnull %12, i8 noundef zeroext 1) #20
  %284 = load ptr, ptr %12, align 8, !tbaa !922
  %285 = icmp eq ptr %284, null
  br i1 %285, label %287, label %286, !prof !1744

286:                                              ; preds = %277
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %8) #19
  br label %287

287:                                              ; preds = %286, %277
  %288 = icmp eq ptr %283, null
  br i1 %288, label %298, label %289, !prof !1745

289:                                              ; preds = %287
  %290 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %283) #20
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %298, label %292, !prof !1746

292:                                              ; preds = %289
  %293 = load ptr, ptr %8, align 8, !tbaa !922
  %294 = icmp eq ptr %293, null
  br i1 %294, label %296, label %295, !prof !1747

295:                                              ; preds = %292
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1722, ptr noundef nonnull @.str.1) #20
  br label %296

296:                                              ; preds = %292, %295
  %297 = call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %283) #19
  br label %335

298:                                              ; preds = %289, %287
  %299 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !922
  %300 = call ptr @pool_alloc(ptr noundef %299) #20
  store i32 2, ptr %300, align 8, !tbaa !900
  %301 = getelementptr inbounds %struct.pre_expr_d, ptr %300, i64 0, i32 1
  store i32 0, ptr %301, align 4, !tbaa !948
  %302 = load ptr, ptr %12, align 8, !tbaa !922
  %303 = icmp eq ptr %302, null
  br i1 %303, label %311, label %304, !prof !1748

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.pre_expr_d, ptr %300, i64 0, i32 2
  store ptr %302, ptr %305, align 8, !tbaa !906
  %306 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %300) #19
  %307 = icmp eq ptr %306, %300
  br i1 %307, label %308, label %335, !prof !1749

308:                                              ; preds = %304
  %309 = load ptr, ptr %12, align 8, !tbaa !922
  %310 = load i32, ptr %309, align 8, !tbaa !913
  br label %330

311:                                              ; preds = %298
  %312 = load i8, ptr %9, align 1
  %313 = icmp ne i8 %312, 0
  %314 = select i1 %274, i1 %313, i1 false
  br i1 %314, label %319, label %315, !prof !1750

315:                                              ; preds = %311
  %316 = call i32 @get_next_value_id() #20
  %317 = call i32 @get_max_value_id() #20
  %318 = add i32 %317, 1
  call fastcc void @VEC_bitmap_set_t_heap_safe_grow_cleared(i32 noundef %318) #19
  br label %321

319:                                              ; preds = %311
  %320 = load i32, ptr %113, align 8, !tbaa !913
  br label %321

321:                                              ; preds = %319, %315
  %322 = phi i32 [ %320, %319 ], [ %316, %315 ]
  %323 = load i32, ptr %278, align 8, !tbaa !1740
  %324 = load ptr, ptr %280, align 8, !tbaa !1741
  %325 = load ptr, ptr %8, align 8, !tbaa !922
  %326 = call ptr @vn_reference_insert_pieces(ptr noundef %273, i32 noundef %323, ptr noundef %324, ptr noundef %325, ptr noundef %283, i32 noundef %322) #20
  store ptr %326, ptr %12, align 8, !tbaa !922
  store ptr null, ptr %8, align 8, !tbaa !922
  %327 = getelementptr inbounds %struct.pre_expr_d, ptr %300, i64 0, i32 2
  store ptr %326, ptr %327, align 8, !tbaa !906
  %328 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %300) #19
  %329 = icmp eq ptr %328, %300
  br i1 %329, label %330, label %335, !prof !1751

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
  %339 = load ptr, ptr %338, align 8, !tbaa !906
  %340 = getelementptr inbounds %struct.tree_ssa_name, ptr %339, i64 0, i32 2
  %341 = load ptr, ptr %340, align 8, !tbaa !906
  %342 = tail call fastcc i32 @gimple_code(ptr noundef %341) #19, !range !1089
  %343 = icmp eq i32 %342, 16
  br i1 %343, label %344, label %377, !prof !1752

344:                                              ; preds = %337
  %345 = tail call fastcc ptr @gimple_bb(ptr noundef %341) #19
  %346 = icmp eq ptr %345, %4
  br i1 %346, label %347, label %377, !prof !1753

347:                                              ; preds = %344
  %348 = tail call ptr @find_edge(ptr noundef %3, ptr noundef %4) #20
  %349 = icmp eq ptr %348, null
  br i1 %349, label %377, label %350, !prof !1754

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.edge_def, ptr %348, i64 0, i32 6
  %352 = load i32, ptr %351, align 4, !tbaa !1755
  %353 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %341, i32 noundef %352) #19
  %354 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %353) #19
  %355 = load i64, ptr %354, align 8
  %356 = and i64 %355, 65535
  %357 = icmp eq i64 %356, 141
  br i1 %357, label %358, label %361, !prof !1756

358:                                              ; preds = %350
  %359 = tail call ptr @VN_INFO(ptr noundef nonnull %354) #20
  %360 = load ptr, ptr %359, align 8, !tbaa !1234
  br label %361

361:                                              ; preds = %358, %350
  %362 = phi ptr [ %360, %358 ], [ %354, %350 ]
  %363 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %362) #20
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %367, label %365, !prof !1757

365:                                              ; preds = %361
  %366 = tail call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef %362) #19
  br label %377

367:                                              ; preds = %361
  %368 = load i64, ptr %362, align 8
  %369 = and i64 %368, 65535
  %370 = icmp eq i64 %369, 141
  br i1 %370, label %371, label %374, !prof !1758

371:                                              ; preds = %367
  %372 = tail call zeroext i8 @ssa_undefined_value_p(ptr noundef nonnull %362) #20
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %374, label %377, !prof !1759

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
define internal fastcc void @phi_trans_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1760 !PGOFuncName !1761 {
  %4 = tail call ptr @xmalloc(i64 noundef 32) #20
  store ptr %0, ptr %4, align 8, !tbaa !1404
  %5 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %4, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !1402
  %6 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %4, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !1700
  %7 = tail call i32 @pre_expr_hash(ptr noundef %0) #19
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !1070
  %10 = tail call i32 @iterative_hash_hashval_t(i32 noundef %7, i32 noundef %9) #20
  %11 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %4, i64 0, i32 3
  store i32 %10, ptr %11, align 8, !tbaa !1398
  %12 = load ptr, ptr @phi_translate_table, align 8, !tbaa !922
  %13 = tail call ptr @htab_find_slot_with_hash(ptr noundef %12, ptr noundef nonnull %4, i32 noundef %10, i32 noundef 1) #20
  %14 = load ptr, ptr %13, align 8, !tbaa !922
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !1762

16:                                               ; preds = %3
  tail call void @free(ptr noundef nonnull %14) #19
  br label %17

17:                                               ; preds = %16, %3
  store ptr %4, ptr %13, align 8, !tbaa !922
  ret void
}

; Function Attrs: optsize
declare i32 @iterative_hash_hashval_t(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_leader_in_sets(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1763 !PGOFuncName !1764 {
  %4 = tail call fastcc ptr @bitmap_find_leader(ptr noundef %1, i32 noundef %0, ptr noundef null) #19
  %5 = icmp eq ptr %4, null
  %6 = icmp ne ptr %2, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %10, !prof !1765

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @bitmap_find_leader(ptr noundef nonnull %2, i32 noundef %0, ptr noundef null) #19
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %4, %3 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_representative_for(ptr noundef %0) unnamed_addr #0 !prof !1766 !PGOFuncName !1767 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = tail call fastcc i32 @get_expr_value_id(ptr noundef %0) #19
  %5 = load i32, ptr %0, align 8, !tbaa !900
  switch i32 %5, label %30 [
    i32 0, label %6
    i32 3, label %9
    i32 1, label %12
    i32 2, label %12
  ], !prof !1768

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !906
  br label %74

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !906
  br label %74

12:                                               ; preds = %1, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %13 = load ptr, ptr @value_expressions, align 8
  %14 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %13, i32 noundef %4) #19
  %15 = load ptr, ptr %14, align 8, !tbaa !927
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %15, ptr noundef nonnull %2) #19
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !1024
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19, !prof !1769

18:                                               ; preds = %24, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %30

19:                                               ; preds = %12, %24
  %20 = load i32, ptr %2, align 4, !tbaa !956
  %21 = tail call fastcc ptr @expression_for_id(i32 noundef %20) #19
  %22 = load i32, ptr %21, align 8, !tbaa !900
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !1770

24:                                               ; preds = %19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !1024
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %18, label %19, !prof !1771, !llvm.loop !1772

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.pre_expr_d, ptr %21, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !906
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %74

30:                                               ; preds = %18, %1
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33, !prof !1773

33:                                               ; preds = %30
  %34 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 54, i64 1, ptr nonnull %31)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !922
  tail call fastcc void @print_pre_expr(ptr noundef %35, ptr noundef nonnull %0) #19
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %37 = tail call i32 @fputc(i32 10, ptr %36)
  br label %38

38:                                               ; preds = %33, %30
  %39 = tail call fastcc ptr @get_expr_type(ptr noundef nonnull %0) #19
  %40 = load ptr, ptr @pretemp, align 8, !tbaa !922
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42, !prof !1774

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !906
  %45 = icmp eq ptr %39, %44
  br i1 %45, label %49, label %46, !prof !1775

46:                                               ; preds = %42, %38
  %47 = tail call ptr @create_tmp_var(ptr noundef %39, ptr noundef nonnull @.str.41) #20
  store ptr %47, ptr @pretemp, align 8, !tbaa !922
  tail call fastcc void @get_var_ann(ptr noundef %47) #19
  %48 = load ptr, ptr @pretemp, align 8, !tbaa !922
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi ptr [ %48, %46 ], [ %40, %42 ]
  %51 = tail call ptr @gimple_build_nop() #20
  %52 = tail call fastcc ptr @make_ssa_name(ptr noundef %50, ptr noundef %51) #19
  %53 = tail call ptr @VN_INFO_GET(ptr noundef %52) #20
  %54 = getelementptr inbounds %struct.vn_ssa_aux, ptr %53, i64 0, i32 2
  store i32 %4, ptr %54, align 8, !tbaa !908
  %55 = load i32, ptr %0, align 8, !tbaa !900
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %60, !prof !1776

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !906
  br label %60

60:                                               ; preds = %49, %57
  %61 = phi ptr [ %59, %57 ], [ %52, %49 ]
  %62 = tail call ptr @VN_INFO(ptr noundef %52) #20
  store ptr %61, ptr %62, align 8, !tbaa !1234
  %63 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %52) #19
  tail call void @add_to_value(i32 noundef %4, ptr noundef %63) #19
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66, !prof !1773

66:                                               ; preds = %60
  %67 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 32, i64 1, ptr nonnull %64)
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !922
  tail call void @print_generic_expr(ptr noundef %68, ptr noundef %52, i32 noundef 0) #20
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %70 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 16, i64 1, ptr %69)
  %71 = load ptr, ptr @dump_file, align 8, !tbaa !922
  tail call fastcc void @print_pre_expr(ptr noundef %71, ptr noundef nonnull %0) #19
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %73 = tail call i32 @fputc(i32 10, ptr %72)
  br label %74

74:                                               ; preds = %27, %60, %66, %9, %6
  %75 = phi ptr [ %29, %27 ], [ %11, %9 ], [ %8, %6 ], [ %52, %66 ], [ %52, %60 ]
  ret ptr %75
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef %0) unnamed_addr #0 !prof !1777 !PGOFuncName !1778 {
  %2 = alloca %struct.pre_expr_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  store i32 3, ptr %2, align 8, !tbaa !900
  %3 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !906
  %4 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %2) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !1779

6:                                                ; preds = %1
  %7 = call fastcc ptr @expression_for_id(i32 noundef %4) #19
  br label %14

8:                                                ; preds = %1
  %9 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !922
  %10 = call ptr @pool_alloc(ptr noundef %9) #20
  store i32 3, ptr %10, align 8, !tbaa !900
  %11 = getelementptr inbounds %struct.pre_expr_d, ptr %10, i64 0, i32 2
  store ptr %0, ptr %11, align 8, !tbaa !906
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
define internal fastcc ptr @fully_constant_expression(ptr noundef readonly %0) unnamed_addr #0 !prof !1780 !PGOFuncName !1781 {
  %2 = load i32, ptr %0, align 8, !tbaa !900
  switch i32 %2, label %177 [
    i32 2, label %82
    i32 1, label %3
  ], !prof !1782

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !906
  %6 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 65535
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !956
  switch i32 %11, label %177 [
    i32 10, label %12
    i32 7, label %14
    i32 5, label %14
    i32 4, label %54
    i32 6, label %56
  ], !prof !1783

12:                                               ; preds = %3
  %13 = trunc i32 %7 to i16
  switch i16 %13, label %177 [
    i16 96, label %56
    i16 93, label %14
    i16 94, label %14
    i16 95, label %14
  ]

14:                                               ; preds = %12, %12, %12, %3, %3
  %15 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !922
  %17 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 5, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !922
  %19 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %16) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %30, !prof !1784

21:                                               ; preds = %14
  %22 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %16) #19
  %23 = tail call fastcc i32 @get_expr_value_id(ptr noundef %22) #19
  %24 = tail call fastcc ptr @get_constant_for_value_id(i32 noundef %23) #19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26, !prof !1785

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !906
  %29 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %28, ptr noundef nonnull %24) #20
  br label %30

30:                                               ; preds = %21, %26, %14
  %31 = phi ptr [ %16, %14 ], [ %29, %26 ], [ %16, %21 ]
  %32 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %18) #20
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %43, !prof !1786

34:                                               ; preds = %30
  %35 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %18) #19
  %36 = tail call fastcc i32 @get_expr_value_id(ptr noundef %35) #19
  %37 = tail call fastcc ptr @get_constant_for_value_id(i32 noundef %36) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39, !prof !1787

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !906
  %42 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %41, ptr noundef nonnull %37) #20
  br label %43

43:                                               ; preds = %34, %39, %30
  %44 = phi ptr [ %18, %30 ], [ %42, %39 ], [ %18, %34 ]
  %45 = load i32, ptr %6, align 4
  %46 = and i32 %45, 65535
  %47 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !1712
  %49 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %46, ptr noundef %48, ptr noundef %31, ptr noundef %44) #20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %177, label %51, !prof !1788

51:                                               ; preds = %43
  %52 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %49) #20
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %177, label %174, !prof !1789

54:                                               ; preds = %3
  %55 = trunc i32 %7 to i16
  switch i16 %55, label %177 [
    i16 43, label %56
    i16 44, label %56
    i16 118, label %56
  ]

56:                                               ; preds = %54, %54, %54, %12, %3
  %57 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !922
  %59 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %58) #20
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %65, !prof !1790

61:                                               ; preds = %56
  %62 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %58) #19
  %63 = tail call fastcc i32 @get_expr_value_id(ptr noundef %62) #19
  %64 = tail call fastcc ptr @get_constant_for_value_id(i32 noundef %63) #19
  br label %65

65:                                               ; preds = %56, %61
  %66 = phi ptr [ %64, %61 ], [ %58, %56 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %177, label %68, !prof !1790

68:                                               ; preds = %65
  %69 = load ptr, ptr %57, align 8, !tbaa !922
  %70 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !906
  %72 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %71, ptr noundef nonnull %66) #20
  %73 = load i32, ptr %6, align 4
  %74 = and i32 %73, 65535
  %75 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !1712
  %77 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef %74, ptr noundef %76, ptr noundef %72) #20
  %78 = icmp eq ptr %77, null
  br i1 %78, label %177, label %79, !prof !1791

79:                                               ; preds = %68
  %80 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %77) #20
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %177, label %174, !prof !1792

82:                                               ; preds = %1
  %83 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !906
  %85 = getelementptr inbounds %struct.vn_reference_s, ptr %84, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !1006
  %87 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %86, i32 noundef 0) #19
  %88 = load i32, ptr %87, align 8, !tbaa !1007
  %89 = icmp eq i32 %88, 59
  br i1 %89, label %90, label %177, !prof !1793

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %87, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !1009
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 121
  br i1 %95, label %96, label %177, !prof !1794

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.tree_exp, ptr %92, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !906
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 29
  br i1 %101, label %102, label %177, !prof !1794

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.tree_function_decl, ptr %98, i64 0, i32 5
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 6144
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %177, label %107, !prof !1795

107:                                              ; preds = %102
  %108 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %86) #19
  %109 = and i32 %108, -2
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %177, !prof !1796

111:                                              ; preds = %107
  %112 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %86, i32 noundef 1) #19
  %113 = icmp ugt i32 %108, 2
  br i1 %113, label %114, label %116, !prof !1797

114:                                              ; preds = %111
  %115 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %86, i32 noundef 2) #19
  br label %116

116:                                              ; preds = %114, %111
  %117 = phi ptr [ %115, %114 ], [ null, %111 ]
  %118 = load i32, ptr %112, align 8, !tbaa !1007
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !956
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %132, label %123, !prof !1798

123:                                              ; preds = %116
  %124 = icmp eq i32 %118, 121
  br i1 %124, label %125, label %130, !prof !1799

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %112, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !1009
  %128 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %127) #20
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %132, !prof !1800

130:                                              ; preds = %125, %123
  %131 = icmp eq ptr %117, null
  br i1 %131, label %177, label %134, !prof !1801

132:                                              ; preds = %116, %125
  %133 = icmp eq ptr %117, null
  br i1 %133, label %152, label %134, !prof !1801

134:                                              ; preds = %132, %130
  %135 = phi i1 [ false, %132 ], [ true, %130 ]
  %136 = load i32, ptr %117, align 8, !tbaa !1007
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !956
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %149, label %141, !prof !1802

141:                                              ; preds = %134
  %142 = icmp eq i32 %136, 121
  br i1 %142, label %143, label %148, !prof !1803

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %117, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !1009
  %146 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %145) #20
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %149, !prof !1804

148:                                              ; preds = %143, %141
  br i1 %135, label %177, label %149, !prof !1805

149:                                              ; preds = %148, %134, %143
  %150 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %117, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !1009
  br label %152

152:                                              ; preds = %132, %149
  %153 = phi i32 [ 2, %149 ], [ 1, %132 ]
  %154 = phi ptr [ %151, %149 ], [ null, %132 ]
  %155 = load ptr, ptr %91, align 8, !tbaa !1009
  %156 = getelementptr inbounds %struct.tree_exp, ptr %155, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !906
  %158 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %112, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !1009
  %160 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %157, i32 noundef %153, ptr noundef %159, ptr noundef %154) #20
  %161 = icmp eq ptr %160, null
  br i1 %161, label %177, label %162, !prof !1806

162:                                              ; preds = %152
  %163 = load i64, ptr %160, align 8
  %164 = and i64 %163, 65535
  %165 = icmp eq i64 %164, 116
  br i1 %165, label %166, label %170, !prof !1807

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.tree_exp, ptr %160, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !906
  %169 = icmp eq ptr %168, null
  br i1 %169, label %177, label %170, !prof !1122

170:                                              ; preds = %162, %166
  %171 = phi ptr [ %168, %166 ], [ %160, %162 ]
  %172 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %171) #20
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %177, label %174, !prof !1808

174:                                              ; preds = %170, %79, %51
  %175 = phi ptr [ %49, %51 ], [ %77, %79 ], [ %171, %170 ]
  %176 = tail call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %175) #19
  br label %177

177:                                              ; preds = %174, %152, %130, %166, %170, %148, %65, %82, %90, %96, %102, %107, %1, %12, %43, %51, %54, %68, %79, %3
  %178 = phi ptr [ %0, %12 ], [ %0, %51 ], [ %0, %43 ], [ %0, %54 ], [ %0, %79 ], [ %0, %68 ], [ %0, %3 ], [ %0, %1 ], [ %0, %107 ], [ %0, %102 ], [ %0, %96 ], [ %0, %90 ], [ %0, %82 ], [ %0, %65 ], [ %0, %148 ], [ %0, %170 ], [ %0, %166 ], [ %0, %130 ], [ %0, %152 ], [ %176, %174 ]
  ret ptr %178
}

; Function Attrs: optsize
declare i32 @get_next_value_id() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vn_nary_op_insert_pieces(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_vn_reference_op_s_heap_copy(ptr noundef readonly %0) unnamed_addr #0 !prof !1809 !PGOFuncName !1810 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !1811

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1017
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !1122

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %4, i64 noundef 8, i64 noundef 40) #20
  store i32 %4, ptr %8, align 8, !tbaa !1812
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
define internal fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef writeonly %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #4 !prof !1814 !PGOFuncName !1815 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %8, label %5, !prof !1816

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !1720
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_vn_reference_op_s_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #5 !prof !1817 !PGOFuncName !1818 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @vn_reference_fold_indirect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @translate_vuse_through_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !prof !1819 !PGOFuncName !1820 {
  %8 = alloca %struct.ao_ref_s, align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !906
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #21
  store i8 1, ptr %6, align 1, !tbaa !906
  %12 = tail call fastcc ptr @gimple_bb(ptr noundef %11) #19
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %55, !prof !1821

14:                                               ; preds = %7
  %15 = call zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef nonnull %8, i32 noundef %1, ptr noundef %2, ptr noundef %0) #20
  %16 = call fastcc i32 @gimple_code(ptr noundef %11) #19, !range !1089
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %33, label %18, !prof !1822

18:                                               ; preds = %14
  %19 = icmp eq i8 %15, 0
  br i1 %19, label %55, label %20, !prof !1823

20:                                               ; preds = %18, %30
  %21 = phi ptr [ %27, %30 ], [ %11, %18 ]
  %22 = call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %21, ptr noundef nonnull %8) #20
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %55, !prof !1824

24:                                               ; preds = %20
  %25 = call fastcc ptr @gimple_vuse(ptr noundef %21) #19
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !906
  %28 = call fastcc ptr @gimple_bb(ptr noundef %27) #19
  %29 = icmp eq ptr %28, %4
  br i1 %29, label %30, label %55, !prof !1825

30:                                               ; preds = %24
  %31 = call fastcc i32 @gimple_code(ptr noundef %27) #19, !range !1089
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %33, label %20, !prof !1826, !llvm.loop !1827

33:                                               ; preds = %30, %14
  %34 = phi ptr [ %11, %14 ], [ %27, %30 ]
  %35 = call ptr @find_edge(ptr noundef %5, ptr noundef %4) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %55, label %37, !prof !1828

37:                                               ; preds = %33
  %38 = icmp eq i8 %15, 0
  br i1 %38, label %46, label %39, !prof !1829

39:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  store ptr null, ptr %9, align 8, !tbaa !922
  %40 = call ptr @get_continuation_for_phi(ptr noundef %34, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  %41 = load ptr, ptr %9, align 8, !tbaa !922
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43, !prof !1830

43:                                               ; preds = %39
  call void @bitmap_obstack_free(ptr noundef nonnull %41) #20
  br label %44

44:                                               ; preds = %43, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  %45 = icmp eq ptr %40, null
  br i1 %45, label %46, label %50, !prof !1831

46:                                               ; preds = %37, %44
  store i8 0, ptr %6, align 1, !tbaa !906
  %47 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 6
  %48 = load i32, ptr %47, align 4, !tbaa !1755
  %49 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %34, i32 noundef %48) #19
  br label %50

50:                                               ; preds = %46, %44
  %51 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !1755
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
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1832 !PGOFuncName !1833 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !906
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bitmap_find_leader(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #0 !prof !1834 !PGOFuncName !1835 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bitmap_iterator, align 8
  %8 = tail call zeroext i8 @value_id_constant_p(i32 noundef %1) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %26, label %10, !prof !1836

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %11 = load ptr, ptr @value_expressions, align 8
  %12 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %11, i32 noundef %1) #19
  %13 = load ptr, ptr %12, align 8, !tbaa !927
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %13, ptr noundef nonnull %4) #19
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !1024
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17, !prof !1837

16:                                               ; preds = %22, %10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  br label %26

17:                                               ; preds = %10, %22
  %18 = load i32, ptr %4, align 4, !tbaa !956
  %19 = tail call fastcc ptr @expression_for_id(i32 noundef %18) #19
  %20 = load i32, ptr %19, align 8, !tbaa !900
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  %23 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !1024
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %16, label %17, !prof !1838, !llvm.loop !1839

25:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  br label %61

26:                                               ; preds = %16, %3
  %27 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %1) #19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %61, label %29, !prof !1840

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  %30 = load ptr, ptr @value_expressions, align 8
  %31 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %30, i32 noundef %1) #19
  %32 = load ptr, ptr %31, align 8, !tbaa !927
  %33 = load ptr, ptr %0, align 8, !tbaa !927
  call fastcc void @bmp_iter_and_init(ptr noundef nonnull %7, ptr noundef %32, ptr noundef %33, ptr noundef nonnull %6) #19
  %34 = call fastcc zeroext i8 @bmp_iter_and(ptr noundef nonnull %7, ptr noundef nonnull %6) #19, !range !1024
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36, !prof !1841

36:                                               ; preds = %29
  %37 = icmp eq ptr %2, null
  br label %39

38:                                               ; preds = %57, %29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %61

39:                                               ; preds = %36, %57
  %40 = load i32, ptr %6, align 4, !tbaa !956
  %41 = tail call fastcc ptr @expression_for_id(i32 noundef %40) #19
  br i1 %37, label %60, label %42, !prof !1842

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.pre_expr_d, ptr %41, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !906
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !906
  %47 = tail call fastcc i32 @gimple_code(ptr noundef %46) #19, !range !1089
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %60, label %49, !prof !1843

49:                                               ; preds = %42
  %50 = tail call fastcc ptr @gimple_bb(ptr noundef %46) #19
  %51 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %2) #19
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %60, !prof !1844

53:                                               ; preds = %49
  %54 = tail call fastcc i32 @gimple_uid(ptr noundef %46) #19
  %55 = tail call fastcc i32 @gimple_uid(ptr noundef nonnull %2) #19
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %60, label %57, !prof !1845

57:                                               ; preds = %53
  call fastcc void @bmp_iter_next(ptr noundef nonnull %7, ptr noundef nonnull %6) #19
  %58 = call fastcc zeroext i8 @bmp_iter_and(ptr noundef nonnull %7, ptr noundef nonnull %6) #19, !range !1024
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %38, label %39, !prof !1846, !llvm.loop !1847

60:                                               ; preds = %53, %49, %42, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %61

61:                                               ; preds = %26, %38, %60, %25
  %62 = phi ptr [ %19, %25 ], [ %41, %60 ], [ null, %38 ], [ null, %26 ]
  ret ptr %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1848 !PGOFuncName !1849 {
  %3 = tail call zeroext i8 @value_id_constant_p(i32 noundef %1) #20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %16, !prof !1850

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %16, label %7, !prof !1851

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8, !tbaa !927
  %9 = load ptr, ptr %8, align 8, !tbaa !1028
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11, !prof !1852

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !929
  %14 = tail call i32 @bitmap_bit_p(ptr noundef %13, i32 noundef %1) #20
  %15 = trunc i32 %14 to i8
  br label %16

16:                                               ; preds = %5, %7, %2, %11
  %17 = phi i8 [ %15, %11 ], [ 1, %2 ], [ 0, %7 ], [ 0, %5 ]
  ret i8 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_and_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 !prof !1853 !PGOFuncName !1854 {
  %5 = load ptr, ptr %1, align 8, !tbaa !1028
  store ptr %5, ptr %0, align 8, !tbaa !1030
  %6 = load ptr, ptr %2, align 8, !tbaa !1028
  %7 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %8 = icmp eq ptr %5, null
  %9 = icmp eq ptr %6, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %14, label %11, !prof !1855

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !1035
  br label %16

14:                                               ; preds = %21, %4
  store ptr @bitmap_zero_bits, ptr %7, align 8, !tbaa !1033
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !1030
  %15 = load i32, ptr getelementptr inbounds (%struct.bitmap_element_def, ptr @bitmap_zero_bits, i64 0, i32 2), align 8, !tbaa !1035
  br label %26

16:                                               ; preds = %11, %21
  %17 = phi ptr [ %6, %11 ], [ %22, %21 ]
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !1035
  %20 = icmp ult i32 %19, %13
  br i1 %20, label %21, label %24, !prof !1856

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !1050
  %23 = icmp eq ptr %22, null
  br i1 %23, label %14, label %16, !prof !1857

24:                                               ; preds = %16
  store ptr %17, ptr %7, align 8, !tbaa !1033
  %25 = icmp eq i32 %13, %19
  br i1 %25, label %26, label %36, !prof !1858

26:                                               ; preds = %14, %24
  %27 = phi ptr [ @bitmap_zero_bits, %14 ], [ %5, %24 ]
  %28 = phi ptr [ @bitmap_zero_bits, %14 ], [ %17, %24 ]
  %29 = phi i32 [ %15, %14 ], [ %19, %24 ]
  %30 = shl i32 %29, 7
  %31 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !1038
  %33 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !1038
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
  store i32 %44, ptr %3, align 4, !tbaa !956
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_and(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !1859 !PGOFuncName !1860 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1039
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !1861

6:                                                ; preds = %34, %2
  %7 = phi i64 [ %4, %2 ], [ %41, %34 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %77, !prof !1862

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !956
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %75, !prof !1863, !llvm.loop !1864

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !956
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !956
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !1037
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %0, align 8, !tbaa !1030
  br label %28

28:                                               ; preds = %19, %73
  %29 = phi ptr [ %27, %19 ], [ %52, %73 ]
  %30 = phi i32 [ %25, %19 ], [ 0, %73 ]
  store i32 %30, ptr %23, align 8, !tbaa !1037
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %49, label %32, !prof !1865

32:                                               ; preds = %28
  %33 = load ptr, ptr %26, align 8, !tbaa !1033
  br label %34

34:                                               ; preds = %32, %43
  %35 = phi i32 [ %30, %32 ], [ %47, %43 ]
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !1038
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %36
  %40 = load i64, ptr %39, align 8, !tbaa !1038
  %41 = and i64 %40, %38
  store i64 %41, ptr %3, align 8, !tbaa !1039
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %6, !prof !1866

43:                                               ; preds = %34
  %44 = load i32, ptr %1, align 4, !tbaa !956
  %45 = add i32 %44, 64
  store i32 %45, ptr %1, align 4, !tbaa !956
  %46 = load i32, ptr %23, align 8, !tbaa !1037
  %47 = add i32 %46, 1
  store i32 %47, ptr %23, align 8, !tbaa !1037
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %34, !prof !1867, !llvm.loop !1868

49:                                               ; preds = %43, %28
  br label %50

50:                                               ; preds = %61, %49
  %51 = phi ptr [ %29, %49 ], [ %52, %61 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !1050
  %53 = icmp eq ptr %52, null
  br i1 %53, label %76, label %54, !prof !1869

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bitmap_element_def, ptr %52, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !1035
  %57 = load ptr, ptr %26, align 8, !tbaa !1033
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !1035
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %62, !prof !1870

61:                                               ; preds = %54, %71
  br label %50, !llvm.loop !1871

62:                                               ; preds = %54
  store ptr %52, ptr %0, align 8, !tbaa !1030
  br label %63

63:                                               ; preds = %62, %68
  %64 = phi ptr [ %57, %62 ], [ %69, %68 ]
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !1035
  %67 = icmp ult i32 %66, %56
  br i1 %67, label %68, label %71, !prof !1872

68:                                               ; preds = %63
  %69 = load ptr, ptr %64, align 8, !tbaa !1050
  store ptr %69, ptr %26, align 8, !tbaa !1033
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %63, !prof !1873, !llvm.loop !1874

71:                                               ; preds = %63
  %72 = icmp eq i32 %56, %66
  br i1 %72, label %73, label %61, !prof !1875

73:                                               ; preds = %71
  %74 = shl i32 %56, 7
  store i32 %74, ptr %1, align 4, !tbaa !956
  br label %28

75:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !1039
  store i32 %16, ptr %1, align 4, !tbaa !956
  br label %77

76:                                               ; preds = %50
  store ptr null, ptr %0, align 8, !tbaa !1030
  br label %77

77:                                               ; preds = %68, %6, %75, %76
  %78 = phi i8 [ 0, %76 ], [ 1, %75 ], [ 1, %6 ], [ 0, %68 ]
  ret i8 %78
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1876 !PGOFuncName !1877 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !906
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_expr_type(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1878 !PGOFuncName !1879 {
  %2 = load i32, ptr %0, align 8, !tbaa !900
  switch i32 %2, label %23 [
    i32 0, label %3
    i32 3, label %8
    i32 2, label %13
    i32 1, label %18
  ], !prof !1880

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !906
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !906
  br label %24

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !906
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !906
  br label %24

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !906
  %16 = getelementptr inbounds %struct.vn_reference_s, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !1741
  br label %24

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !906
  %21 = getelementptr inbounds %struct.vn_nary_op_s, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !1712
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
define internal fastcc void @get_var_ann(ptr noundef %0) unnamed_addr #0 !prof !1881 !PGOFuncName !1882 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ], !prof !1883

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
  %15 = load ptr, ptr %14, align 8, !tbaa !922
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !1884

17:                                               ; preds = %13
  %18 = tail call ptr @create_var_ann(ptr noundef nonnull %0) #20
  br label %19

19:                                               ; preds = %13, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1885 !PGOFuncName !1886 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !922
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
define internal fastcc ptr @get_or_alloc_expr_for(ptr noundef %0) unnamed_addr #0 !prof !1887 !PGOFuncName !1888 {
  %2 = alloca ptr, align 8
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %8, !prof !1889

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %0) #19
  br label %31

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11, !prof !1890

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %0) #19
  br label %31

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %14 = call ptr @vn_nary_op_lookup(ptr noundef nonnull %0, ptr noundef nonnull %2) #20
  %15 = load ptr, ptr %2, align 8, !tbaa !922
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17, !prof !1242

17:                                               ; preds = %13
  %18 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !922
  %19 = call ptr @pool_alloc(ptr noundef %18) #20
  store i32 1, ptr %19, align 8, !tbaa !900
  %20 = load ptr, ptr %2, align 8, !tbaa !922
  %21 = getelementptr inbounds %struct.pre_expr_d, ptr %19, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !906
  %22 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %19) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !1891

24:                                               ; preds = %17
  %25 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !922
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
define internal fastcc ptr @get_constant_for_value_id(i32 noundef %0) unnamed_addr #0 !prof !1892 !PGOFuncName !1893 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = tail call zeroext i8 @value_id_constant_p(i32 noundef %0) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6, !prof !1894

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %7 = load ptr, ptr @value_expressions, align 8
  %8 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %7, i32 noundef %0) #19
  %9 = load ptr, ptr %8, align 8, !tbaa !927
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %9, ptr noundef nonnull %2) #19
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !1024
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13, !prof !1895

12:                                               ; preds = %18, %6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %24

13:                                               ; preds = %6, %18
  %14 = load i32, ptr %2, align 4, !tbaa !956
  %15 = tail call fastcc ptr @expression_for_id(i32 noundef %14) #19
  %16 = load i32, ptr %15, align 8, !tbaa !900
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %21, label %18, !prof !1896

18:                                               ; preds = %13
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %19 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !1024
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %12, label %13, !prof !1897, !llvm.loop !1898

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %15, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !906
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
define internal fastcc void @bitmap_set_replace_value(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1899 !PGOFuncName !1900 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %6 = tail call zeroext i8 @value_id_constant_p(i32 noundef %1) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %31, !prof !1901

8:                                                ; preds = %3
  %9 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %1) #19
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %31, label %11, !prof !1902

11:                                               ; preds = %8
  %12 = load ptr, ptr @value_expressions, align 8
  %13 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %12, i32 noundef %1) #19
  %14 = load ptr, ptr %13, align 8, !tbaa !927
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %14, ptr noundef nonnull %4) #19
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !1024
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %31, label %17, !prof !1903

17:                                               ; preds = %11, %28
  %18 = load ptr, ptr %0, align 8, !tbaa !927
  %19 = load i32, ptr %4, align 4, !tbaa !956
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %19) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22, !prof !1904

22:                                               ; preds = %17
  %23 = load ptr, ptr %0, align 8, !tbaa !927
  %24 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %23, i32 noundef %19) #20
  %25 = load ptr, ptr %0, align 8, !tbaa !927
  %26 = tail call fastcc i32 @get_expression_id(ptr noundef %2) #19
  %27 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %25, i32 noundef %26) #20
  br label %31

28:                                               ; preds = %17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !1024
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %17, !prof !1905, !llvm.loop !1906

31:                                               ; preds = %28, %11, %8, %3, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @get_expression_id(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1907 !PGOFuncName !1908 {
  %2 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !948
  ret i32 %3
}

; Function Attrs: optsize
declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @valid_in_sets(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !prof !1909 !PGOFuncName !1910 {
  %5 = alloca %struct.pre_expr_d, align 8
  %6 = alloca ptr, align 8
  %7 = load i32, ptr %2, align 8, !tbaa !900
  switch i32 %7, label %102 [
    i32 0, label %8
    i32 1, label %14
    i32 2, label %64
  ], !prof !1911

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1066
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !1073
  %13 = tail call fastcc zeroext i8 @bitmap_set_contains_expr(ptr noundef %12, ptr noundef nonnull %2) #19
  br label %103

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !906
  %17 = getelementptr inbounds %struct.vn_nary_op_s, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, 65536
  br i1 %19, label %53, label %20, !prof !1912

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.pre_expr_d, ptr %5, i64 0, i32 1
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %5, i64 0, i32 2
  br label %23

23:                                               ; preds = %20, %47
  %24 = phi i32 [ %18, %20 ], [ %48, %47 ]
  %25 = phi i64 [ 0, %20 ], [ %49, %47 ]
  %26 = getelementptr inbounds %struct.vn_nary_op_s, ptr %16, i64 0, i32 5, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !922
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 141
  br i1 %30, label %31, label %47, !prof !1913

31:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  store i32 0, ptr %5, align 8, !tbaa !900
  store i32 0, ptr %21, align 4, !tbaa !948
  store ptr %27, ptr %22, align 8, !tbaa !906
  %32 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %5) #19
  store i32 %32, ptr %21, align 4, !tbaa !948
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34, !prof !1914

34:                                               ; preds = %31
  %35 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %5) #19
  %36 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %35) #19
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %44, !prof !1915

38:                                               ; preds = %34
  %39 = icmp eq ptr %1, null
  br i1 %39, label %46, label %40, !prof !1916

40:                                               ; preds = %38
  %41 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %5) #19
  %42 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef nonnull %1, i32 noundef %41) #19
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44, !prof !1917

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
  br i1 %52, label %23, label %53, !prof !1918, !llvm.loop !1919

53:                                               ; preds = %47, %14
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !1066
  %56 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %55, i64 0, i32 8
  %57 = load i8, ptr %56, align 8
  %58 = and i8 %57, 4
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60, !prof !1920

60:                                               ; preds = %53
  %61 = call zeroext i8 @vn_nary_may_trap(ptr noundef nonnull %16) #20
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %103, !prof !1921

63:                                               ; preds = %60, %53
  br label %103

64:                                               ; preds = %4
  %65 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !906
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %67 = getelementptr inbounds %struct.vn_reference_s, ptr %66, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !1006
  %69 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %68, i32 noundef 0, ptr noundef nonnull %6) #19, !range !941
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %81, label %76, !prof !1922

71:                                               ; preds = %76
  %72 = add i32 %77, 1
  %73 = load ptr, ptr %67, align 8, !tbaa !1006
  %74 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %73, i32 noundef %72, ptr noundef nonnull %6) #19, !range !941
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76, !prof !1923, !llvm.loop !1924

76:                                               ; preds = %64, %71
  %77 = phi i32 [ %72, %71 ], [ 0, %64 ]
  %78 = load ptr, ptr %6, align 8, !tbaa !922
  %79 = tail call fastcc zeroext i8 @vro_valid_in_sets(ptr noundef %0, ptr noundef %1, ptr noundef %78) #19, !range !1024
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %100, label %71, !prof !1925

81:                                               ; preds = %71, %64
  %82 = getelementptr inbounds %struct.vn_reference_s, ptr %66, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !1013
  %84 = icmp eq ptr %83, null
  br i1 %84, label %96, label %85, !prof !1926

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.tree_ssa_name, ptr %83, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !906
  %88 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %87) #19, !range !1024
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %96, !prof !1927

90:                                               ; preds = %85
  %91 = tail call fastcc ptr @gimple_bb(ptr noundef %87) #19
  %92 = icmp eq ptr %91, %3
  br i1 %92, label %96, label %93, !prof !1928

93:                                               ; preds = %90
  %94 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %3, ptr noundef %91) #20
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %100, label %96, !prof !1929

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
define internal fastcc void @bitmap_remove_from_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1930 !PGOFuncName !1931 {
  %3 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  %4 = tail call zeroext i8 @value_id_constant_p(i32 noundef %3) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13, !prof !1932

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !929
  %9 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %8, i32 noundef %3) #20
  %10 = load ptr, ptr %0, align 8, !tbaa !927
  %11 = tail call fastcc i32 @get_expression_id(ptr noundef %1) #19
  %12 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %10, i32 noundef %11) #20
  br label %13

13:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bitmap_set_contains_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1933 !PGOFuncName !1934 {
  %3 = load ptr, ptr %0, align 8, !tbaa !927
  %4 = tail call fastcc i32 @get_expression_id(ptr noundef %1) #19
  %5 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %4) #20
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @vn_nary_may_trap(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vro_valid_in_sets(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !1935 !PGOFuncName !1936 {
  %4 = alloca %struct.pre_expr_d, align 8
  %5 = alloca %struct.pre_expr_d, align 8
  %6 = alloca %struct.pre_expr_d, align 8
  %7 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1009
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10, !prof !1937

10:                                               ; preds = %3
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %31, !prof !1938

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  store i32 0, ptr %4, align 8, !tbaa !900
  %15 = getelementptr inbounds %struct.pre_expr_d, ptr %4, i64 0, i32 1
  store i32 0, ptr %15, align 4, !tbaa !948
  %16 = getelementptr inbounds %struct.pre_expr_d, ptr %4, i64 0, i32 2
  store ptr %8, ptr %16, align 8, !tbaa !906
  %17 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %4) #19
  store i32 %17, ptr %15, align 4, !tbaa !948
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19, !prof !1939

19:                                               ; preds = %14
  %20 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %4) #19
  %21 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %20) #19
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30, !prof !1940

23:                                               ; preds = %19
  %24 = icmp eq ptr %1, null
  br i1 %24, label %29, label %25, !prof !1941

25:                                               ; preds = %23
  %26 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %4) #19
  %27 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef nonnull %1, i32 noundef %26) #19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30, !prof !1942

29:                                               ; preds = %14, %25, %23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  br label %81

30:                                               ; preds = %19, %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  br label %31

31:                                               ; preds = %30, %10, %3
  %32 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %2, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !1010
  %34 = icmp eq ptr %33, null
  br i1 %34, label %56, label %35, !prof !1943

35:                                               ; preds = %31
  %36 = load i64, ptr %33, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %56, !prof !1944

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  store i32 0, ptr %5, align 8, !tbaa !900
  %40 = getelementptr inbounds %struct.pre_expr_d, ptr %5, i64 0, i32 1
  store i32 0, ptr %40, align 4, !tbaa !948
  %41 = getelementptr inbounds %struct.pre_expr_d, ptr %5, i64 0, i32 2
  store ptr %33, ptr %41, align 8, !tbaa !906
  %42 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %5) #19
  store i32 %42, ptr %40, align 4, !tbaa !948
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
  %58 = load ptr, ptr %57, align 8, !tbaa !1011
  %59 = icmp eq ptr %58, null
  br i1 %59, label %81, label %60, !prof !1945

60:                                               ; preds = %56
  %61 = load i64, ptr %58, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 141
  br i1 %63, label %64, label %81, !prof !1946

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  store i32 0, ptr %6, align 8, !tbaa !900
  %65 = getelementptr inbounds %struct.pre_expr_d, ptr %6, i64 0, i32 1
  store i32 0, ptr %65, align 4, !tbaa !948
  %66 = getelementptr inbounds %struct.pre_expr_d, ptr %6, i64 0, i32 2
  store ptr %58, ptr %66, align 8, !tbaa !906
  %67 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %6) #19
  store i32 %67, ptr %65, align 4, !tbaa !948
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
define internal fastcc zeroext i8 @value_dies_in_block_x(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1947 !PGOFuncName !1948 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  %5 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !906
  %7 = getelementptr inbounds %struct.vn_reference_s, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1013
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  %9 = tail call fastcc i32 @get_expression_id(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #21
  %10 = icmp eq ptr %8, null
  br i1 %10, label %80, label %11, !prof !1949

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1066
  %14 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !1950
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17, !prof !1951

17:                                               ; preds = %11
  %18 = shl i32 %9, 1
  %19 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %15, i32 noundef %18) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21, !prof !1952

21:                                               ; preds = %17
  %22 = load ptr, ptr %12, align 8, !tbaa !1066
  %23 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !1950
  %25 = or disjoint i32 %18, 1
  %26 = tail call i32 @bitmap_bit_p(ptr noundef %24, i32 noundef %25) #20
  %27 = trunc i32 %26 to i8
  br label %80

28:                                               ; preds = %17, %11
  %29 = getelementptr inbounds %struct.ao_ref_s, ptr %4, i64 0, i32 1
  store ptr null, ptr %29, align 8, !tbaa !1953
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %1) #19
  %30 = getelementptr inbounds %struct.vn_reference_s, ptr %6, i64 0, i32 3
  %31 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !1024
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %59, !prof !1955

33:                                               ; preds = %28, %56
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %35 = call fastcc ptr @gimple_vuse(ptr noundef %34) #19
  %36 = icmp eq ptr %35, null
  br i1 %36, label %56, label %37, !prof !1956

37:                                               ; preds = %33
  %38 = call fastcc ptr @gimple_vdef(ptr noundef %34) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42, !prof !1957

40:                                               ; preds = %37
  %41 = icmp eq ptr %35, %8
  br i1 %41, label %59, label %56, !prof !1958

42:                                               ; preds = %37
  %43 = load ptr, ptr %29, align 8, !tbaa !1953
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %53, !prof !1959

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.vn_reference_s, ptr %6, i64 0, i32 4
  %47 = getelementptr inbounds %struct.vn_reference_s, ptr %6, i64 0, i32 5
  %48 = load i32, ptr %30, align 8, !tbaa !1740
  %49 = load ptr, ptr %46, align 8, !tbaa !1741
  %50 = load ptr, ptr %47, align 8, !tbaa !1006
  %51 = call zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef nonnull %4, i32 noundef %48, ptr noundef %49, ptr noundef %50) #20
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %59, label %53, !prof !1960

53:                                               ; preds = %45, %42
  %54 = call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %34, ptr noundef nonnull %4) #20
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %59, !prof !1961

56:                                               ; preds = %53, %40, %33
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %57 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !1024
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %33, label %59, !prof !1962, !llvm.loop !1963

59:                                               ; preds = %40, %53, %56, %45, %28
  %60 = phi i1 [ true, %28 ], [ true, %40 ], [ false, %53 ], [ false, %45 ], [ true, %56 ]
  %61 = phi i8 [ 0, %28 ], [ 0, %40 ], [ 1, %53 ], [ 1, %45 ], [ 0, %56 ]
  %62 = load ptr, ptr %12, align 8, !tbaa !1066
  %63 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %62, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !1950
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %70, !prof !1964

66:                                               ; preds = %59
  %67 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  %68 = load ptr, ptr %12, align 8, !tbaa !1066
  %69 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %68, i64 0, i32 7
  store ptr %67, ptr %69, align 8, !tbaa !1950
  br label %70

70:                                               ; preds = %66, %59
  %71 = phi ptr [ %67, %66 ], [ %64, %59 ]
  %72 = shl i32 %9, 1
  %73 = call zeroext i8 @bitmap_set_bit(ptr noundef %71, i32 noundef %72) #20
  br i1 %60, label %80, label %74, !prof !1965

74:                                               ; preds = %70
  %75 = load ptr, ptr %12, align 8, !tbaa !1066
  %76 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %75, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !1950
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
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !1966 !PGOFuncName !1967 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1591

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1621
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_set_subtract_values(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1968 !PGOFuncName !1969 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  %6 = load ptr, ptr %0, align 8, !tbaa !927
  tail call void @bitmap_copy(ptr noundef %5, ptr noundef %6) #20
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %3) #19
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #19, !range !1024
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9, !prof !1970

9:                                                ; preds = %2, %16
  %10 = load i32, ptr %3, align 4, !tbaa !956
  %11 = tail call fastcc ptr @expression_for_id(i32 noundef %10) #19
  %12 = tail call fastcc i32 @get_expr_value_id(ptr noundef %11) #19
  %13 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %1, i32 noundef %12) #19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15, !prof !1971

15:                                               ; preds = %9
  tail call fastcc void @bitmap_remove_from_set(ptr noundef nonnull %0, ptr noundef %11) #19
  br label %16

16:                                               ; preds = %15, %9
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #19, !range !1024
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %9, !prof !1972, !llvm.loop !1973

19:                                               ; preds = %16, %2
  tail call void @bitmap_obstack_free(ptr noundef %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dependent_clean(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1968 !PGOFuncName !1974 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %6 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %0) #19
  store ptr %6, ptr %4, align 8, !tbaa !922
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %7 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %5) #19, !range !941
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9, !prof !1970

9:                                                ; preds = %3, %15
  %10 = phi i32 [ %16, %15 ], [ 0, %3 ]
  %11 = load ptr, ptr %5, align 8, !tbaa !922
  %12 = tail call fastcc zeroext i8 @valid_in_sets(ptr noundef %0, ptr noundef %1, ptr noundef %11, ptr noundef %2) #19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15, !prof !1975

14:                                               ; preds = %9
  tail call fastcc void @bitmap_remove_from_set(ptr noundef %0, ptr noundef %11) #19
  br label %15

15:                                               ; preds = %9, %14
  %16 = add nuw nsw i32 %10, 1
  %17 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %6, i32 noundef %16, ptr noundef nonnull %5) #19, !range !941
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %9, !prof !1976, !llvm.loop !1977

19:                                               ; preds = %15, %3
  call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @insert_aux(ptr noundef %0) unnamed_addr #0 !prof !1978 !PGOFuncName !1979 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %43, label %5, !prof !1980

5:                                                ; preds = %1
  %6 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %0) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8, !prof !1981

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1066
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !1216
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14, !prof !1982

14:                                               ; preds = %8
  %15 = load ptr, ptr %12, align 8, !tbaa !927
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %15, ptr noundef nonnull %2) #19
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !1024
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %31, label %18, !prof !1983

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  br label %20

20:                                               ; preds = %18, %20
  %21 = load i32, ptr %2, align 4, !tbaa !956
  %22 = tail call fastcc ptr @expression_for_id(i32 noundef %21) #19
  %23 = load ptr, ptr %19, align 8, !tbaa !1066
  %24 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !1216
  tail call fastcc void @bitmap_value_replace_in_set(ptr noundef %25, ptr noundef %22) #19
  %26 = load ptr, ptr %19, align 8, !tbaa !1066
  %27 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !1073
  tail call fastcc void @bitmap_value_replace_in_set(ptr noundef %28, ptr noundef %22) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !1024
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %20, !prof !1984, !llvm.loop !1985

31:                                               ; preds = %20, %14, %8
  %32 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %0) #19, !range !1024
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %41, !prof !1986

34:                                               ; preds = %31
  %35 = tail call fastcc zeroext i8 @do_regular_insertion(ptr noundef nonnull %0, ptr noundef nonnull %6) #19, !range !1024
  %36 = load i8, ptr @do_partial_partial, align 1, !tbaa !906
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38, !prof !1987

38:                                               ; preds = %34
  %39 = tail call fastcc zeroext i8 @do_partial_partial_insertion(ptr noundef nonnull %0, ptr noundef nonnull %6) #19, !range !1024
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
  br i1 %46, label %54, label %47, !prof !1988

47:                                               ; preds = %43, %47
  %48 = phi ptr [ %52, %47 ], [ %45, %43 ]
  %49 = phi i8 [ %51, %47 ], [ %44, %43 ]
  %50 = tail call fastcc zeroext i8 @insert_aux(ptr noundef nonnull %48) #19, !range !1024
  %51 = or i8 %50, %49
  %52 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %48) #20
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %47, !prof !1989, !llvm.loop !1990

54:                                               ; preds = %47, %43
  %55 = phi i8 [ %44, %43 ], [ %51, %47 ]
  ret i8 %55
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !1991 !PGOFuncName !1992 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1391
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @do_regular_insertion(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1993 !PGOFuncName !1994 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1066
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !1193
  %13 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %12) #19
  store ptr %13, ptr %3, align 8, !tbaa !922
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %14 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %4) #19, !range !941
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %174, label %16, !prof !1995

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %18 = getelementptr inbounds i8, ptr %6, i64 8
  br label %19

19:                                               ; preds = %16, %169
  %20 = phi i8 [ 0, %16 ], [ %170, %169 ]
  %21 = phi i32 [ 0, %16 ], [ %171, %169 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !922
  %23 = load i32, ptr %22, align 8, !tbaa !900
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %169, label %25, !prof !1996

25:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %26 = tail call fastcc i32 @get_expr_value_id(ptr noundef nonnull %22) #19
  %27 = load ptr, ptr %9, align 8, !tbaa !1066
  %28 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !1071
  %30 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %29, i32 noundef %26) #19
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %167, !prof !1997

32:                                               ; preds = %25
  %33 = load ptr, ptr %17, align 8, !tbaa !1066
  %34 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !1073
  %36 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %35, i32 noundef %26) #19
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %47, label %38, !prof !1998

38:                                               ; preds = %32
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %40 = icmp eq ptr %39, null
  br i1 %40, label %167, label %41, !prof !1999

41:                                               ; preds = %38
  %42 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %167, label %45

45:                                               ; preds = %41
  %46 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 28, i64 1, ptr nonnull %39)
  br label %167

47:                                               ; preds = %32
  %48 = load ptr, ptr @cfun, align 8, !tbaa !922
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !1065
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !1181
  %53 = sext i32 %52 to i64
  %54 = tail call ptr @xcalloc(i64 noundef %53, i64 noundef 8) #20
  %55 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !1185
  store ptr %55, ptr %18, align 8, !tbaa.struct !1186
  %56 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %55, ptr noundef nonnull %5) #19, !range !1024
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %165, label %58, !prof !2000

58:                                               ; preds = %47, %99
  %59 = phi i8 [ %103, %99 ], [ 0, %47 ]
  %60 = phi i8 [ %102, %99 ], [ 1, %47 ]
  %61 = phi ptr [ %101, %99 ], [ null, %47 ]
  %62 = phi i8 [ %100, %99 ], [ 0, %47 ]
  %63 = load ptr, ptr %5, align 8, !tbaa !922
  %64 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 7
  %65 = load i32, ptr %64, align 8, !tbaa !1188
  %66 = and i32 %65, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68, !prof !2001

68:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3520, ptr noundef nonnull @.str.1) #20
  br label %69

69:                                               ; preds = %58, %68
  %70 = load ptr, ptr %63, align 8, !tbaa !1387
  %71 = load ptr, ptr %9, align 8, !tbaa !1066
  %72 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %71, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !1193
  %74 = tail call fastcc ptr @phi_translate(ptr noundef nonnull %22, ptr noundef %73, ptr noundef null, ptr noundef %70, ptr noundef nonnull %0) #19
  %75 = icmp eq ptr %74, null
  br i1 %75, label %165, label %76, !prof !2002

76:                                               ; preds = %69
  %77 = tail call fastcc ptr @fully_constant_expression(ptr noundef nonnull %74) #19
  %78 = tail call fastcc i32 @get_expr_value_id(ptr noundef %77) #19
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !1066
  %81 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !1073
  %83 = tail call fastcc ptr @bitmap_find_leader(ptr noundef %82, i32 noundef %78, ptr noundef null) #19
  %84 = icmp eq ptr %83, null
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 9
  %86 = load i32, ptr %85, align 8, !tbaa !1070
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %54, i64 %87
  br i1 %84, label %89, label %90, !prof !2003

89:                                               ; preds = %76
  store ptr %77, ptr %88, align 8, !tbaa !922
  br label %99

90:                                               ; preds = %76
  store ptr %83, ptr %88, align 8, !tbaa !922
  %91 = tail call zeroext i8 @optimize_edge_for_speed_p(ptr noundef nonnull %63) #20
  %92 = icmp eq i8 %91, 0
  %93 = select i1 %92, i8 %62, i8 1, !prof !2004
  %94 = icmp eq ptr %61, null
  br i1 %94, label %99, label %95, !prof !2005

95:                                               ; preds = %90
  %96 = tail call i32 @pre_expr_eq(ptr noundef nonnull %61, ptr noundef nonnull %83) #19
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i8 0, i8 %60, !prof !2006
  br label %99

99:                                               ; preds = %90, %95, %89
  %100 = phi i8 [ %93, %95 ], [ %93, %90 ], [ %62, %89 ]
  %101 = phi ptr [ %61, %95 ], [ %83, %90 ], [ %61, %89 ]
  %102 = phi i8 [ %98, %95 ], [ %60, %90 ], [ 0, %89 ]
  %103 = phi i8 [ 1, %95 ], [ 1, %90 ], [ %59, %89 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %104 = load i32, ptr %6, align 8
  %105 = load ptr, ptr %18, align 8
  %106 = call fastcc zeroext i8 @ei_cond(i32 %104, ptr %105, ptr noundef nonnull %5) #19, !range !1024
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %58, !prof !2007, !llvm.loop !2008

108:                                              ; preds = %99
  %109 = icmp eq i8 %102, 0
  %110 = icmp ne i8 %103, 0
  %111 = select i1 %109, i1 %110, i1 false
  %112 = icmp ne i8 %100, 0
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %114, label %122, !prof !2009

114:                                              ; preds = %108
  %115 = tail call zeroext i8 @dbg_cnt(i32 noundef 25) #20
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %165, label %117, !prof !2010

117:                                              ; preds = %114
  %118 = tail call fastcc i32 @get_expression_id(ptr noundef nonnull %22) #19
  %119 = tail call fastcc zeroext i8 @insert_into_preds_of_block(ptr noundef nonnull %0, i32 noundef %118, ptr noundef nonnull %54) #19, !range !1024
  %120 = icmp eq i8 %119, 0
  %121 = select i1 %120, i8 %20, i8 1, !prof !2011
  br label %165

122:                                              ; preds = %108
  %123 = icmp eq i8 %102, 0
  br i1 %123, label %165, label %124, !prof !2012

124:                                              ; preds = %122
  %125 = icmp eq ptr %77, null
  br i1 %125, label %165, label %126, !prof !1122

126:                                              ; preds = %124
  %127 = load i32, ptr %83, align 8, !tbaa !900
  switch i32 %127, label %165 [
    i32 3, label %128
    i32 0, label %128
  ], !prof !2013

128:                                              ; preds = %126, %126
  %129 = tail call zeroext i8 @value_id_constant_p(i32 noundef %26) #20
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %165, !prof !2014

131:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  %132 = load ptr, ptr @value_expressions, align 8
  %133 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %132, i32 noundef %26) #19
  %134 = tail call fastcc i32 @get_expr_value_id(ptr noundef nonnull %83) #19
  %135 = load ptr, ptr %133, align 8, !tbaa !927
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %135, ptr noundef nonnull %7) #19
  %136 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !1024
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %164, label %138, !prof !2015

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.pre_expr_d, ptr %83, i64 0, i32 2
  br label %140

140:                                              ; preds = %138, %161
  %141 = load i32, ptr %7, align 4, !tbaa !956
  %142 = tail call fastcc ptr @expression_for_id(i32 noundef %141) #19
  %143 = load i32, ptr %142, align 8, !tbaa !900
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %161, !prof !2016

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.pre_expr_d, ptr %142, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !906
  %148 = tail call ptr @VN_INFO(ptr noundef %147) #20
  %149 = load i32, ptr %83, align 8, !tbaa !900
  %150 = icmp eq i32 %149, 3
  %151 = load ptr, ptr %139, align 8, !tbaa !906
  br i1 %150, label %152, label %155, !prof !2017

152:                                              ; preds = %145
  %153 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 4), align 4, !tbaa !1083
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 4), align 4, !tbaa !1083
  br label %158

155:                                              ; preds = %145
  %156 = tail call ptr @VN_INFO(ptr noundef %151) #20
  %157 = load ptr, ptr %156, align 8, !tbaa !1234
  br label %158

158:                                              ; preds = %155, %152
  %159 = phi ptr [ %151, %152 ], [ %157, %155 ]
  store ptr %159, ptr %148, align 8
  %160 = getelementptr inbounds %struct.vn_ssa_aux, ptr %148, i64 0, i32 2
  store i32 %134, ptr %160, align 8, !tbaa !908
  br label %161

161:                                              ; preds = %158, %140
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  %162 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !1024
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %140, !prof !2018, !llvm.loop !2019

164:                                              ; preds = %161, %131
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  br label %165

165:                                              ; preds = %69, %47, %114, %117, %126, %122, %124, %128, %164
  %166 = phi i8 [ %20, %128 ], [ %20, %164 ], [ %20, %124 ], [ %20, %122 ], [ %121, %117 ], [ %20, %126 ], [ %20, %114 ], [ %20, %47 ], [ %20, %69 ]
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
  %172 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %13, i32 noundef %171, ptr noundef nonnull %4) #19, !range !941
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %19, !prof !2020, !llvm.loop !2021

174:                                              ; preds = %169, %2
  %175 = phi i8 [ 0, %2 ], [ %170, %169 ]
  call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %175
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @do_partial_partial_insertion(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1993 !PGOFuncName !2022 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1066
  %9 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !1194
  %11 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %10) #19
  store ptr %11, ptr %3, align 8, !tbaa !922
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %12 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %4) #19, !range !941
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %100, label %14, !prof !1995

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %16 = getelementptr inbounds i8, ptr %6, i64 8
  br label %17

17:                                               ; preds = %14, %95
  %18 = phi i8 [ 0, %14 ], [ %96, %95 ]
  %19 = phi i32 [ 0, %14 ], [ %97, %95 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !922
  %21 = load i32, ptr %20, align 8, !tbaa !900
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %95, label %23, !prof !2023

23:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %24 = tail call fastcc i32 @get_expr_value_id(ptr noundef nonnull %20) #19
  %25 = load ptr, ptr %7, align 8, !tbaa !1066
  %26 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !1071
  %28 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %27, i32 noundef %24) #19
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %93, !prof !2024

30:                                               ; preds = %23
  %31 = load ptr, ptr %15, align 8, !tbaa !1066
  %32 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !1073
  %34 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %33, i32 noundef %24) #19
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %93, !prof !2025

36:                                               ; preds = %30
  %37 = load ptr, ptr @cfun, align 8, !tbaa !922
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !1065
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !1181
  %42 = sext i32 %41 to i64
  %43 = tail call ptr @xcalloc(i64 noundef %42, i64 noundef 8) #20
  %44 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !1185
  store ptr %44, ptr %16, align 8, !tbaa.struct !1186
  %45 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %44, ptr noundef nonnull %5) #19, !range !1024
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %81, label %47, !prof !2026

47:                                               ; preds = %36, %72
  %48 = load ptr, ptr %5, align 8, !tbaa !922
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !1188
  %51 = and i32 %50, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53, !prof !2027

53:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3659, ptr noundef nonnull @.str.1) #20
  br label %54

54:                                               ; preds = %47, %53
  %55 = load ptr, ptr %48, align 8, !tbaa !1387
  %56 = load ptr, ptr %7, align 8, !tbaa !1066
  %57 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %56, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !1193
  %59 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %56, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !1194
  %61 = tail call fastcc ptr @phi_translate(ptr noundef nonnull %20, ptr noundef %58, ptr noundef %60, ptr noundef %55, ptr noundef nonnull %0) #19
  %62 = icmp eq ptr %61, null
  br i1 %62, label %91, label %63, !prof !2028

63:                                               ; preds = %54
  %64 = tail call fastcc ptr @fully_constant_expression(ptr noundef nonnull %61) #19
  %65 = tail call fastcc i32 @get_expr_value_id(ptr noundef %64) #19
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !1066
  %68 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !1073
  %70 = tail call fastcc ptr @bitmap_find_leader(ptr noundef %69, i32 noundef %65, ptr noundef null) #19
  %71 = icmp eq ptr %70, null
  br i1 %71, label %91, label %72, !prof !2029

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !1070
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %43, i64 %75
  store ptr %70, ptr %76, align 8, !tbaa !922
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %77 = load i32, ptr %6, align 8
  %78 = load ptr, ptr %16, align 8
  %79 = call fastcc zeroext i8 @ei_cond(i32 %77, ptr %78, ptr noundef nonnull %5) #19, !range !1024
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %47, !prof !2030, !llvm.loop !2031

81:                                               ; preds = %72, %36
  %82 = tail call zeroext i8 @dbg_cnt(i32 noundef 25) #20
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %91, label %84, !prof !2032

84:                                               ; preds = %81
  %85 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 2), align 4, !tbaa !1080
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 2), align 4, !tbaa !1080
  %87 = tail call fastcc i32 @get_expression_id(ptr noundef nonnull %20) #19
  %88 = tail call fastcc zeroext i8 @insert_into_preds_of_block(ptr noundef nonnull %0, i32 noundef %87, ptr noundef %43) #19, !range !1024
  %89 = icmp eq i8 %88, 0
  %90 = select i1 %89, i8 %18, i8 1, !prof !2033
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
  %98 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %11, i32 noundef %97, ptr noundef nonnull %4) #19, !range !941
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %17, !prof !2034, !llvm.loop !2035

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
define internal fastcc noundef zeroext i8 @insert_into_preds_of_block(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !2036 !PGOFuncName !2037 {
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
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !2038

14:                                               ; preds = %3
  %15 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 40, i64 1, ptr nonnull %12)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !922
  tail call fastcc void @print_pre_expr(ptr noundef %20, ptr noundef %9) #19
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.49, i32 noundef %10) #19
  br label %23

23:                                               ; preds = %18, %14, %3
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %25 = load i32, ptr %24, align 4, !tbaa !2039
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %58, !prof !2040

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 8, !tbaa !1391
  %29 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %28) #19
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %58, !prof !2041

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !2042
  %34 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %28, i32 noundef 0) #19
  %35 = load ptr, ptr %34, align 8, !tbaa !1387
  %36 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %33, ptr noundef %35) #20
  %37 = load ptr, ptr %32, align 8, !tbaa !2042
  %38 = load ptr, ptr %0, align 8, !tbaa !1391
  %39 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %38, i32 noundef 1) #19
  %40 = load ptr, ptr %39, align 8, !tbaa !1387
  %41 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %37, ptr noundef %40) #20
  %42 = icmp eq i8 %36, %41
  br i1 %42, label %58, label %43, !prof !2043

43:                                               ; preds = %31
  %44 = load i32, ptr %9, align 8, !tbaa !900
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %49, !prof !2044

46:                                               ; preds = %43
  %47 = tail call fastcc zeroext i8 @inhibit_phi_insertion(ptr noundef nonnull %0, ptr noundef nonnull %9) #19
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %58, label %49, !prof !2045

49:                                               ; preds = %46, %43
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52, !prof !2046

52:                                               ; preds = %49
  %53 = load i32, ptr @dump_flags, align 4, !tbaa !956
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
  store i32 0, ptr %5, align 8, !tbaa.struct !1185
  %62 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %61, ptr %62, align 8, !tbaa.struct !1186
  %63 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %61, ptr noundef nonnull %4) #19, !range !1024
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %167, label %65, !prof !2047

65:                                               ; preds = %58, %158
  %66 = phi i8 [ %159, %158 ], [ 0, %58 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !922
  %67 = load ptr, ptr %4, align 8, !tbaa !922
  %68 = load ptr, ptr %67, align 8, !tbaa !1387
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !1070
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %2, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !922
  %74 = load i32, ptr %73, align 8, !tbaa !900
  switch i32 %74, label %75 [
    i32 3, label %84
    i32 0, label %119
  ], !prof !2048

75:                                               ; preds = %65
  %76 = call fastcc ptr @create_expression_by_pieces(ptr noundef nonnull %68, ptr noundef nonnull %73, ptr noundef nonnull %6, ptr noundef null, ptr noundef %11) #19
  %77 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 7
  %78 = load i32, ptr %77, align 8, !tbaa !1188
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81, !prof !2049

81:                                               ; preds = %75
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3302, ptr noundef nonnull @.str.1) #20
  br label %82

82:                                               ; preds = %75, %81
  %83 = load ptr, ptr %6, align 8, !tbaa !922
  call void @gsi_insert_seq_on_edge(ptr noundef nonnull %67, ptr noundef %83) #20
  br label %151

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.pre_expr_d, ptr %73, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !906
  %87 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !906
  %89 = call zeroext i8 @useless_type_conversion_p(ptr noundef %11, ptr noundef %88) #20
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %158, !prof !2050

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
  %102 = load ptr, ptr %85, align 8, !tbaa !906
  %103 = call ptr @VN_INFO_GET(ptr noundef %96) #20
  store ptr %102, ptr %103, align 8, !tbaa !1234
  %104 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %73) #19
  %105 = call ptr @VN_INFO(ptr noundef %96) #20
  %106 = getelementptr inbounds %struct.vn_ssa_aux, ptr %105, i64 0, i32 2
  store i32 %104, ptr %106, align 8, !tbaa !908
  br label %107

107:                                              ; preds = %101, %99
  %108 = load ptr, ptr %6, align 8, !tbaa !922
  %109 = icmp eq ptr %108, null
  br i1 %109, label %151, label %110

110:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #21
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %108) #19
  %111 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !1024
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110, %113
  %114 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull @inserted_exprs, ptr noundef %114) #19
  call fastcc void @gimple_set_plf(ptr noundef %114, i8 noundef zeroext 0) #19
  call fastcc void @gsi_next(ptr noundef nonnull %7) #19
  %115 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !1024
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %113, label %117, !llvm.loop !2051

117:                                              ; preds = %113, %110
  %118 = load ptr, ptr %6, align 8, !tbaa !922
  call void @gsi_insert_seq_on_edge(ptr noundef nonnull %67, ptr noundef %118) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #21
  br label %151

119:                                              ; preds = %65
  %120 = getelementptr inbounds %struct.pre_expr_d, ptr %73, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !906
  %122 = getelementptr inbounds %struct.tree_common, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !906
  %124 = call zeroext i8 @useless_type_conversion_p(ptr noundef %11, ptr noundef %123) #20
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %158, !prof !2052

126:                                              ; preds = %119
  %127 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %11, ptr noundef nonnull %121) #20
  %128 = call ptr @force_gimple_operand(ptr noundef %127, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef null) #20
  %129 = icmp eq ptr %128, %121
  br i1 %129, label %139, label %130

130:                                              ; preds = %126
  %131 = call ptr @VN_INFO(ptr noundef nonnull %121) #20
  %132 = load ptr, ptr %131, align 8, !tbaa !1234
  %133 = call ptr @VN_INFO_GET(ptr noundef %128) #20
  store ptr %132, ptr %133, align 8, !tbaa !1234
  %134 = call ptr @VN_INFO(ptr noundef nonnull %121) #20
  %135 = getelementptr inbounds %struct.vn_ssa_aux, ptr %134, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !908
  %137 = call ptr @VN_INFO(ptr noundef %128) #20
  %138 = getelementptr inbounds %struct.vn_ssa_aux, ptr %137, i64 0, i32 2
  store i32 %136, ptr %138, align 8, !tbaa !908
  br label %139

139:                                              ; preds = %130, %126
  %140 = load ptr, ptr %6, align 8, !tbaa !922
  %141 = icmp eq ptr %140, null
  br i1 %141, label %151, label %142

142:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #21
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef nonnull %140) #19
  %143 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #19, !range !1024
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142, %145
  %146 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #19
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull @inserted_exprs, ptr noundef %146) #19
  call fastcc void @gimple_set_plf(ptr noundef %146, i8 noundef zeroext 0) #19
  call fastcc void @gsi_next(ptr noundef nonnull %8) #19
  %147 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #19, !range !1024
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %145, label %149, !llvm.loop !2053

149:                                              ; preds = %145, %142
  %150 = load ptr, ptr %6, align 8, !tbaa !922
  call void @gsi_insert_seq_on_edge(ptr noundef nonnull %67, ptr noundef %150) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #21
  br label %151

151:                                              ; preds = %139, %149, %107, %117, %82
  %152 = phi ptr [ %76, %82 ], [ %96, %117 ], [ %96, %107 ], [ %128, %149 ], [ %128, %139 ]
  %153 = phi i8 [ 1, %82 ], [ %66, %117 ], [ %66, %107 ], [ %66, %149 ], [ %66, %139 ]
  %154 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %152) #19
  %155 = load i32, ptr %69, align 8, !tbaa !1070
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds ptr, ptr %2, i64 %156
  store ptr %154, ptr %157, align 8, !tbaa !922
  br label %158

158:                                              ; preds = %151, %119, %84, %95, %91
  %159 = phi i8 [ %66, %91 ], [ %66, %95 ], [ %66, %84 ], [ %66, %119 ], [ %153, %151 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call fastcc void @ei_next(ptr noundef nonnull %5) #19
  %160 = load i32, ptr %5, align 8
  %161 = load ptr, ptr %62, align 8
  %162 = call fastcc zeroext i8 @ei_cond(i32 %160, ptr %161, ptr noundef nonnull %4) #19, !range !1024
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %65, !prof !2054, !llvm.loop !2055

164:                                              ; preds = %158
  %165 = icmp ne i8 %159, 0
  %166 = select i1 %59, i1 %165, i1 false
  br i1 %166, label %268, label %167, !prof !2056

167:                                              ; preds = %58, %164
  %168 = phi i1 [ %165, %164 ], [ false, %58 ]
  %169 = select i1 %60, i1 true, i1 %168
  br i1 %169, label %170, label %268, !prof !2057

170:                                              ; preds = %167
  %171 = load ptr, ptr @prephitemp, align 8, !tbaa !922
  %172 = icmp eq ptr %171, null
  br i1 %172, label %177, label %173, !prof !2058

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.tree_common, ptr %171, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !906
  %176 = icmp eq ptr %175, %11
  br i1 %176, label %180, label %177, !prof !2059

177:                                              ; preds = %173, %170
  %178 = call ptr @create_tmp_var(ptr noundef %11, ptr noundef nonnull @.str.51) #20
  store ptr %178, ptr @prephitemp, align 8, !tbaa !922
  call fastcc void @get_var_ann(ptr noundef %178) #19
  %179 = load ptr, ptr @prephitemp, align 8, !tbaa !922
  br label %180

180:                                              ; preds = %177, %173
  %181 = phi ptr [ %179, %177 ], [ %171, %173 ]
  %182 = call zeroext i8 @add_referenced_var(ptr noundef %181) #20
  %183 = load i64, ptr %11, align 8
  %184 = trunc i64 %183 to i32
  %185 = and i32 %184, 65535
  %186 = add nsw i32 %185, -13
  %187 = icmp ult i32 %186, 2
  br i1 %187, label %188, label %192, !prof !2060

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
  store ptr %194, ptr %195, align 8, !tbaa !1234
  %196 = call fastcc ptr @gimple_phi_result(ptr noundef %193) #19
  %197 = call ptr @VN_INFO(ptr noundef %196) #20
  %198 = getelementptr inbounds %struct.vn_ssa_aux, ptr %197, i64 0, i32 2
  store i32 %10, ptr %198, align 8, !tbaa !908
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull @inserted_exprs, ptr noundef %193) #19
  %199 = load ptr, ptr @inserted_phi_names, align 8, !tbaa !922
  %200 = call fastcc ptr @gimple_phi_result(ptr noundef %193) #19
  %201 = getelementptr inbounds %struct.tree_ssa_name, ptr %200, i64 0, i32 3
  %202 = load i32, ptr %201, align 8, !tbaa !906
  %203 = call zeroext i8 @bitmap_set_bit(ptr noundef %199, i32 noundef %202) #20
  store i32 0, ptr %5, align 8, !tbaa.struct !1185
  store ptr %61, ptr %62, align 8, !tbaa.struct !1186
  %204 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %61, ptr noundef nonnull %4) #19, !range !1024
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %239, label %206, !prof !2061

206:                                              ; preds = %192, %231
  %207 = load ptr, ptr %4, align 8, !tbaa !922
  %208 = load ptr, ptr %207, align 8, !tbaa !1387
  %209 = getelementptr inbounds %struct.basic_block_def, ptr %208, i64 0, i32 9
  %210 = load i32, ptr %209, align 8, !tbaa !1070
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds ptr, ptr %2, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !922
  %214 = call fastcc ptr @get_expr_type(ptr noundef %213) #19
  %215 = icmp eq ptr %214, %11
  br i1 %215, label %221, label %216, !prof !2062

216:                                              ; preds = %206
  %217 = call fastcc ptr @get_expr_type(ptr noundef %213) #19
  %218 = call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %11, ptr noundef %217) #20
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %221, !prof !2063

220:                                              ; preds = %216
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3417, ptr noundef nonnull @.str.1) #20
  br label %221

221:                                              ; preds = %206, %216, %220
  %222 = load i32, ptr %213, align 8, !tbaa !900
  %223 = icmp eq i32 %222, 3
  br i1 %223, label %231, label %224, !prof !2064

224:                                              ; preds = %221
  %225 = load ptr, ptr %207, align 8, !tbaa !1387
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %225, i64 0, i32 9
  %227 = load i32, ptr %226, align 8, !tbaa !1070
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds ptr, ptr %2, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !922
  br label %231

231:                                              ; preds = %221, %224
  %232 = phi ptr [ %230, %224 ], [ %213, %221 ]
  %233 = getelementptr inbounds %struct.pre_expr_d, ptr %232, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !906
  call void @add_phi_arg(ptr noundef %193, ptr noundef %234, ptr noundef nonnull %207, i32 noundef 0) #20
  call fastcc void @ei_next(ptr noundef nonnull %5) #19
  %235 = load i32, ptr %5, align 8
  %236 = load ptr, ptr %62, align 8
  %237 = call fastcc zeroext i8 @ei_cond(i32 %235, ptr %236, ptr noundef nonnull %4) #19, !range !1024
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %206, !prof !2065, !llvm.loop !2066

239:                                              ; preds = %231, %192
  %240 = call fastcc ptr @gimple_phi_result(ptr noundef %193) #19
  %241 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %240) #19
  call void @add_to_value(i32 noundef %10, ptr noundef %241) #19
  %242 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !1066
  %244 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %243, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !1071
  call fastcc void @bitmap_insert_into_set(ptr noundef %245, ptr noundef %241) #19
  %246 = load ptr, ptr %242, align 8, !tbaa !1066
  %247 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %246, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !1073
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %248, ptr noundef %241) #19
  %249 = load ptr, ptr %242, align 8, !tbaa !1066
  %250 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %249, i64 0, i32 6
  %251 = load ptr, ptr %250, align 8, !tbaa !1216
  call fastcc void @bitmap_insert_into_set(ptr noundef %251, ptr noundef %241) #19
  %252 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %253 = icmp eq ptr %252, null
  br i1 %253, label %265, label %254, !prof !2067

254:                                              ; preds = %239
  %255 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %256 = and i32 %255, 8
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %265, label %258

258:                                              ; preds = %254
  %259 = call i64 @fwrite(ptr nonnull @.str.52, i64 12, i64 1, ptr nonnull %252)
  %260 = load ptr, ptr @dump_file, align 8, !tbaa !922
  call void @print_gimple_stmt(ptr noundef %260, ptr noundef %193, i32 noundef 0, i32 noundef 0) #20
  %261 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %262 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %263 = load i32, ptr %262, align 8, !tbaa !1070
  %264 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %261, ptr noundef nonnull @.str.53, i32 noundef %263) #19
  br label %265

265:                                              ; preds = %258, %254, %239
  %266 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 3), align 4, !tbaa !1081
  %267 = add nsw i32 %266, 1
  store i32 %267, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 3), align 4, !tbaa !1081
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
define internal fastcc noundef zeroext i8 @inhibit_phi_insertion(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !2068 !PGOFuncName !2069 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.affine_iv, align 8
  %5 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !906
  %7 = getelementptr inbounds %struct.vn_reference_s, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !1006
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %9 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !956
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %49, label %11, !prof !2070

11:                                               ; preds = %2
  %12 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %3) #19, !range !941
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %49, label %14, !prof !2071

14:                                               ; preds = %11, %45
  %15 = phi i32 [ %46, %45 ], [ 0, %11 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !922
  %17 = load i32, ptr %16, align 8, !tbaa !1007
  switch i32 %17, label %45 [
    i32 45, label %21
    i32 46, label %21
    i32 141, label %18
  ], !prof !2072

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !1009
  br label %27

21:                                               ; preds = %14, %14
  %22 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %16, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !1009
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 141
  br i1 %26, label %27, label %45, !prof !2073

27:                                               ; preds = %18, %21
  %28 = phi ptr [ %20, %18 ], [ %23, %21 ]
  %29 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %16, i64 0, i32 2
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !906
  %32 = call fastcc ptr @gimple_bb(ptr noundef %31) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34, !prof !2074

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !2042
  %37 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %36, ptr noundef nonnull %32) #20
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %44, label %39, !prof !2075

39:                                               ; preds = %34
  %40 = load ptr, ptr %35, align 8, !tbaa !2042
  %41 = load ptr, ptr %29, align 8, !tbaa !1009
  %42 = call zeroext i8 @simple_iv(ptr noundef %40, ptr noundef %40, ptr noundef %41, ptr noundef nonnull %4, i8 noundef zeroext 1) #20
  %43 = icmp eq i8 %42, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  br i1 %43, label %45, label %49

44:                                               ; preds = %34, %27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  br label %45

45:                                               ; preds = %44, %39, %21, %14
  %46 = add i32 %15, 1
  %47 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %8, i32 noundef %46, ptr noundef nonnull %3) #19, !range !941
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %14, !prof !2076, !llvm.loop !2077

49:                                               ; preds = %39, %45, %11, %2
  %50 = phi i8 [ 0, %2 ], [ 0, %11 ], [ 1, %39 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_expression_by_pieces(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !2078 !PGOFuncName !2079 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !922
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #21
  %8 = icmp eq ptr %4, null
  br i1 %8, label %9, label %11, !prof !2080

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @get_expr_type(ptr noundef %1) #19
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi ptr [ %10, %9 ], [ %4, %5 ]
  %13 = load i32, ptr %1, align 8, !tbaa !900
  switch i32 %13, label %189 [
    i32 0, label %14
    i32 3, label %17
    i32 2, label %20
    i32 1, label %24
  ], !prof !2081

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !906
  br label %84

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !906
  br label %84

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !906
  %23 = tail call fastcc ptr @create_component_ref_by_pieces(ptr noundef %0, ptr noundef %22, ptr noundef %2, ptr noundef %3) #19
  br label %84

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !906
  %27 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 16
  %30 = trunc i32 %29 to i16
  switch i16 %30, label %189 [
    i16 2, label %31
    i16 1, label %68
  ], !prof !2082

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !922
  %34 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %33) #19
  %35 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 5, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !922
  %37 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %36) #19
  %38 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %34, ptr noundef %2, ptr noundef %3) #19
  %39 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %37, ptr noundef %2, ptr noundef %3) #19
  %40 = icmp ne ptr %38, null
  %41 = icmp ne ptr %39, null
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %189, !prof !2083

43:                                               ; preds = %31
  %44 = load i32, ptr %27, align 4
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 66
  br i1 %46, label %47, label %51, !prof !2084

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !1712
  %50 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %49, ptr noundef nonnull %38) #20
  br label %58

51:                                               ; preds = %43
  %52 = load ptr, ptr %32, align 8, !tbaa !922
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !906
  %55 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %54, ptr noundef nonnull %38) #20
  %56 = load ptr, ptr %35, align 8, !tbaa !922
  %57 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  br label %58

58:                                               ; preds = %47, %51
  %59 = phi ptr [ @sizetype_tab, %47 ], [ %57, %51 ]
  %60 = phi ptr [ %50, %47 ], [ %55, %51 ]
  %61 = load ptr, ptr %59, align 8, !tbaa !906
  %62 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %61, ptr noundef nonnull %39) #20
  %63 = load i32, ptr %27, align 4
  %64 = and i32 %63, 65535
  %65 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !1712
  %67 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %64, ptr noundef %66, ptr noundef %60, ptr noundef %62) #20
  br label %84

68:                                               ; preds = %24
  %69 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !922
  %71 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %70) #19
  %72 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %71, ptr noundef %2, ptr noundef %3) #19
  %73 = icmp eq ptr %72, null
  br i1 %73, label %189, label %74, !prof !2085

74:                                               ; preds = %68
  %75 = load ptr, ptr %69, align 8, !tbaa !922
  %76 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !906
  %78 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %77, ptr noundef nonnull %72) #20
  %79 = load i32, ptr %27, align 4
  %80 = and i32 %79, 65535
  %81 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !1712
  %83 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %80, ptr noundef %82, ptr noundef %78) #20
  br label %84

84:                                               ; preds = %74, %58, %20, %17, %14
  %85 = phi ptr [ %23, %20 ], [ %19, %17 ], [ %16, %14 ], [ %83, %74 ], [ %67, %58 ]
  %86 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !906
  %88 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %12, ptr noundef %87) #20
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %92, !prof !2086

90:                                               ; preds = %84
  %91 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %12, ptr noundef nonnull %85) #20
  br label %92

92:                                               ; preds = %90, %84
  %93 = phi ptr [ %85, %84 ], [ %91, %90 ]
  %94 = tail call ptr @unshare_expr(ptr noundef %93) #20
  %95 = call ptr @force_gimple_operand(ptr noundef %94, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef null) #20
  %96 = load ptr, ptr %6, align 8, !tbaa !922
  %97 = icmp eq ptr %96, null
  br i1 %97, label %132, label %98, !prof !2087

98:                                               ; preds = %92
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %96) #19
  %99 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !1024
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %130, !prof !2088

101:                                              ; preds = %98, %127
  %102 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19
  %103 = call ptr @gimple_get_lhs(ptr noundef %102) #20
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull @inserted_exprs, ptr noundef %102) #19
  %104 = load i64, ptr %103, align 8
  %105 = and i64 %104, 65535
  %106 = icmp eq i64 %105, 141
  br i1 %106, label %107, label %127, !prof !2089

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %109 = call ptr @VN_INFO_GET(ptr noundef nonnull %103) #20
  store ptr %103, ptr %109, align 8, !tbaa !1234
  %110 = call i32 @get_next_value_id() #20
  %111 = call ptr @VN_INFO(ptr noundef nonnull %103) #20
  %112 = getelementptr inbounds %struct.vn_ssa_aux, ptr %111, i64 0, i32 2
  store i32 %110, ptr %112, align 8, !tbaa !908
  %113 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %103) #19
  %114 = call ptr @VN_INFO(ptr noundef nonnull %103) #20
  %115 = getelementptr inbounds %struct.vn_ssa_aux, ptr %114, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !908
  call void @add_to_value(i32 noundef %116, ptr noundef %113) #19
  %117 = load i8, ptr @in_fre, align 1, !tbaa !906
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %123, !prof !2089

119:                                              ; preds = %107
  %120 = load ptr, ptr %108, align 8, !tbaa !1066
  %121 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %120, i64 0, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !1216
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %122, ptr noundef %113) #19
  br label %123

123:                                              ; preds = %119, %107
  %124 = load ptr, ptr %108, align 8, !tbaa !1066
  %125 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %124, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !1073
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %126, ptr noundef %113) #19
  br label %127

127:                                              ; preds = %123, %101
  call void @mark_symbols_for_renaming(ptr noundef %102) #20
  call fastcc void @gsi_next(ptr noundef nonnull %7) #19
  %128 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !1024
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %101, label %130, !prof !2090, !llvm.loop !2091

130:                                              ; preds = %127, %98
  %131 = load ptr, ptr %6, align 8, !tbaa !922
  call void @gimple_seq_add_seq(ptr noundef %2, ptr noundef %131) #20
  br label %132

132:                                              ; preds = %130, %92
  %133 = load ptr, ptr @pretemp, align 8, !tbaa !922
  %134 = icmp eq ptr %133, null
  br i1 %134, label %139, label %135, !prof !2092

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.tree_common, ptr %133, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !906
  %138 = icmp eq ptr %12, %137
  br i1 %138, label %142, label %139, !prof !2093

139:                                              ; preds = %135, %132
  %140 = call ptr @create_tmp_var(ptr noundef %12, ptr noundef nonnull @.str.41) #20
  store ptr %140, ptr @pretemp, align 8, !tbaa !922
  call fastcc void @get_var_ann(ptr noundef %140) #19
  %141 = load ptr, ptr @pretemp, align 8, !tbaa !922
  br label %142

142:                                              ; preds = %139, %135
  %143 = phi ptr [ %141, %139 ], [ %133, %135 ]
  %144 = call zeroext i8 @add_referenced_var(ptr noundef %143) #20
  %145 = load i64, ptr %12, align 8
  %146 = trunc i64 %145 to i32
  %147 = and i32 %146, 65535
  %148 = add nsw i32 %147, -13
  %149 = icmp ult i32 %148, 2
  br i1 %149, label %150, label %154, !prof !2094

150:                                              ; preds = %142
  %151 = getelementptr inbounds %struct.tree_decl_common, ptr %143, i64 0, i32 2
  %152 = load i64, ptr %151, align 8
  %153 = or i64 %152, 134217728
  store i64 %153, ptr %151, align 8
  br label %154

154:                                              ; preds = %142, %150
  %155 = call ptr @gimple_build_assign_stat(ptr noundef %143, ptr noundef %95) #20
  %156 = call fastcc ptr @make_ssa_name(ptr noundef %143, ptr noundef %155) #19
  call fastcc void @gimple_assign_set_lhs(ptr noundef %155, ptr noundef %156) #19
  call fastcc void @gimple_set_plf(ptr noundef %155, i8 noundef zeroext 0) #19
  call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef %155) #20
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull @inserted_exprs, ptr noundef %155) #19
  call void @mark_symbols_for_renaming(ptr noundef %155) #20
  %157 = call ptr @VN_INFO_GET(ptr noundef %156) #20
  store ptr %156, ptr %157, align 8, !tbaa !1234
  %158 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %1) #19
  %159 = call ptr @VN_INFO(ptr noundef %156) #20
  %160 = getelementptr inbounds %struct.vn_ssa_aux, ptr %159, i64 0, i32 2
  store i32 %158, ptr %160, align 8, !tbaa !908
  %161 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %156) #19
  call void @add_to_value(i32 noundef %158, ptr noundef %161) #19
  %162 = load i8, ptr @in_fre, align 1, !tbaa !906
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %169, !prof !2095

164:                                              ; preds = %154
  %165 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !1066
  %167 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %166, i64 0, i32 6
  %168 = load ptr, ptr %167, align 8, !tbaa !1216
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %168, ptr noundef %161) #19
  br label %169

169:                                              ; preds = %164, %154
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !1066
  %172 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %171, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !1073
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %173, ptr noundef %161) #19
  %174 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 1), align 4, !tbaa !1078
  %175 = add nsw i32 %174, 1
  store i32 %175, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 1), align 4, !tbaa !1078
  %176 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %177 = icmp eq ptr %176, null
  br i1 %177, label %189, label %178, !prof !2096

178:                                              ; preds = %169
  %179 = load i32, ptr @dump_flags, align 4, !tbaa !956
  %180 = and i32 %179, 8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %178
  %183 = call i64 @fwrite(ptr nonnull @.str.54, i64 9, i64 1, ptr nonnull %176)
  %184 = load ptr, ptr @dump_file, align 8, !tbaa !922
  call void @print_gimple_stmt(ptr noundef %184, ptr noundef %155, i32 noundef 0, i32 noundef 0) #20
  %185 = load ptr, ptr @dump_file, align 8, !tbaa !922
  %186 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %187 = load i32, ptr %186, align 8, !tbaa !1070
  %188 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef nonnull @.str.55, i32 noundef %187) #19
  br label %189

189:                                              ; preds = %68, %31, %24, %169, %178, %182, %11
  %190 = phi ptr [ null, %11 ], [ %156, %182 ], [ %156, %178 ], [ %156, %169 ], [ null, %24 ], [ null, %31 ], [ null, %68 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret ptr %190
}

; Function Attrs: optsize
declare void @gsi_insert_seq_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !2097 !PGOFuncName !2098 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #19
  store ptr %3, ptr %0, align 8, !tbaa !1467
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !1486
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !2099

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !1479
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !2099

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #19
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !1487
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
define internal fastcc ptr @create_component_ref_by_pieces(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !2100 !PGOFuncName !2101 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !tbaa !956
  %6 = call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_or_generate_expression(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !2102 !PGOFuncName !2103 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1066
  %9 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1073
  %11 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  %12 = tail call fastcc ptr @bitmap_find_leader(ptr noundef %10, i32 noundef %11, ptr noundef %3) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14, !prof !2104

14:                                               ; preds = %4
  %15 = load i32, ptr %12, align 8, !tbaa !900
  switch i32 %15, label %19 [
    i32 0, label %16
    i32 3, label %16
  ], !prof !2105

16:                                               ; preds = %14, %14
  %17 = getelementptr inbounds %struct.pre_expr_d, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !906
  br label %19

19:                                               ; preds = %16, %14, %4
  %20 = phi ptr [ null, %4 ], [ null, %14 ], [ %18, %16 ]
  %21 = icmp ne ptr %20, null
  %22 = load i8, ptr @in_fre, align 1
  %23 = icmp ne i8 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %49, label %25, !prof !2106

25:                                               ; preds = %19
  %26 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  %27 = load ptr, ptr @value_expressions, align 8
  %28 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %27, i32 noundef %26) #19
  %29 = load ptr, ptr %28, align 8, !tbaa !927
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %29, ptr noundef nonnull %6) #19
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !range !1024
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %43, label %32, !prof !1895

32:                                               ; preds = %25, %37
  %33 = load i32, ptr %6, align 4, !tbaa !956
  %34 = tail call fastcc ptr @expression_for_id(i32 noundef %33) #19
  %35 = load i32, ptr %34, align 8, !tbaa !900
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40, !prof !2107

37:                                               ; preds = %32
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %38 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !range !1024
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %32, !prof !2108, !llvm.loop !2109

40:                                               ; preds = %32
  %41 = tail call fastcc ptr @get_expr_type(ptr noundef %1) #19
  %42 = tail call fastcc ptr @create_expression_by_pieces(ptr noundef %0, ptr noundef nonnull %34, ptr noundef %2, ptr noundef %3, ptr noundef %41) #19
  br label %46

43:                                               ; preds = %37, %25
  %44 = icmp eq ptr %3, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2986, ptr noundef nonnull @.str.1) #20
  br label %46

46:                                               ; preds = %40, %45
  %47 = phi ptr [ null, %45 ], [ %42, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %49

48:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %49

49:                                               ; preds = %19, %46, %48
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
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2110 !PGOFuncName !2111 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #19
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4, !prof !2086

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !2096

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !906
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_component_ref_by_pieces_1(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !2112 !PGOFuncName !2113 {
  %6 = getelementptr inbounds %struct.vn_reference_s, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !1006
  %8 = load i32, ptr %2, align 4, !tbaa !956
  %9 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %7, i32 noundef %8) #19
  %10 = add i32 %8, 1
  store i32 %10, ptr %2, align 4, !tbaa !956
  %11 = load i32, ptr %9, align 8, !tbaa !1007
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
  ], !prof !2114

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !1010
  %15 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %7) #19
  %16 = add i32 %15, -1
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = tail call ptr @xmalloc(i64 noundef %18) #20
  %20 = load i32, ptr %2, align 4, !tbaa !956
  %21 = load ptr, ptr %6, align 8, !tbaa !1006
  %22 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %21) #19
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %34, !prof !2115

24:                                               ; preds = %12, %24
  %25 = phi i32 [ %29, %24 ], [ 0, %12 ]
  %26 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds ptr, ptr %19, i64 %27
  store ptr %26, ptr %28, align 8, !tbaa !922
  %29 = add i32 %25, 1
  %30 = load i32, ptr %2, align 4, !tbaa !956
  %31 = load ptr, ptr %6, align 8, !tbaa !1006
  %32 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %31) #19
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %24, label %34, !prof !2116, !llvm.loop !2117

34:                                               ; preds = %24, %12
  %35 = phi i32 [ 0, %12 ], [ %29, %24 ]
  %36 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !1719
  %38 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !1009
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 29
  br i1 %42, label %43, label %45, !prof !2118

43:                                               ; preds = %34
  %44 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %39) #20
  br label %45

45:                                               ; preds = %34, %43
  %46 = phi ptr [ %44, %43 ], [ %39, %34 ]
  %47 = tail call ptr @build_call_array_loc(i32 noundef 0, ptr noundef %37, ptr noundef %46, i32 noundef %35, ptr noundef %19) #20
  tail call void @free(ptr noundef %19) #19
  %48 = icmp eq ptr %14, null
  br i1 %48, label %210, label %49, !prof !2119

49:                                               ; preds = %45
  %50 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef nonnull %14) #19
  %51 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %50, ptr noundef %3, ptr noundef %4) #19
  %52 = icmp eq ptr %51, null
  br i1 %52, label %210, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 1, i32 0, i32 1
  store ptr %51, ptr %54, align 8, !tbaa !906
  br label %210

55:                                               ; preds = %5
  %56 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %7, i32 noundef %10) #19
  %57 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %58 = icmp eq ptr %57, null
  br i1 %58, label %210, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !1009
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
  %72 = load i32, ptr %71, align 4, !tbaa !956
  %73 = icmp eq i32 %72, 3
  %74 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !1719
  %76 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !1010
  %78 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !1011
  %80 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %56, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !1010
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
  %89 = load ptr, ptr %88, align 8, !tbaa !1009
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91, !prof !2120

91:                                               ; preds = %87
  %92 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %89) #20
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %95, !prof !2120

94:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2751, ptr noundef nonnull @.str.1) #20
  br label %95

95:                                               ; preds = %91, %94
  %96 = load ptr, ptr %88, align 8, !tbaa !1009
  br label %210

97:                                               ; preds = %87, %5, %5, %5
  %98 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %99 = icmp eq ptr %98, null
  br i1 %99, label %210, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %9, align 8, !tbaa !1007
  %102 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !1719
  %104 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %101, ptr noundef %103, ptr noundef nonnull %98) #20
  br label %210

105:                                              ; preds = %5, %5, %5
  %106 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %107 = icmp eq ptr %106, null
  br i1 %107, label %210, label %108, !prof !2121

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !1719
  %111 = tail call ptr @build_pointer_type(ptr noundef %110) #20
  %112 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %111, ptr noundef nonnull %106) #20
  %113 = load i32, ptr %9, align 8, !tbaa !1007
  %114 = icmp eq i32 %113, 49
  %115 = load ptr, ptr %109, align 8, !tbaa !1719
  br i1 %114, label %116, label %120, !prof !2121

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !1010
  %119 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 49, ptr noundef %115, ptr noundef %112, ptr noundef %118) #20
  br label %210

120:                                              ; preds = %108
  %121 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %113, ptr noundef %115, ptr noundef %112) #20
  br label %210

122:                                              ; preds = %5
  %123 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %124 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !1009
  %126 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %125) #19
  %127 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !1010
  %129 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %128) #19
  %130 = icmp eq ptr %123, null
  br i1 %130, label %210, label %131, !prof !2122

131:                                              ; preds = %122
  %132 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %126, ptr noundef %3, ptr noundef %4) #19
  %133 = icmp eq ptr %132, null
  br i1 %133, label %210, label %134, !prof !2122

134:                                              ; preds = %131
  %135 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %129, ptr noundef %3, ptr noundef %4) #19
  %136 = icmp eq ptr %135, null
  br i1 %136, label %210, label %137, !prof !2122

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !1719
  %140 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 42, ptr noundef %139, ptr noundef nonnull %123, ptr noundef nonnull %132, ptr noundef nonnull %135) #20
  br label %210

141:                                              ; preds = %5, %5
  %142 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !1009
  %144 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !1010
  %146 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 4
  %147 = load ptr, ptr %146, align 8, !tbaa !1011
  %148 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %149 = icmp eq ptr %148, null
  br i1 %149, label %210, label %150, !prof !2123

150:                                              ; preds = %141
  %151 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %143) #19
  %152 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %151, ptr noundef %3, ptr noundef %4) #19
  %153 = icmp eq ptr %152, null
  br i1 %153, label %210, label %154, !prof !2123

154:                                              ; preds = %150
  %155 = icmp eq ptr %145, null
  br i1 %155, label %160, label %156, !prof !2123

156:                                              ; preds = %154
  %157 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef nonnull %145) #19
  %158 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %157, ptr noundef %3, ptr noundef %4) #19
  %159 = icmp eq ptr %158, null
  br i1 %159, label %210, label %160, !prof !2123

160:                                              ; preds = %156, %154
  %161 = phi ptr [ %158, %156 ], [ null, %154 ]
  %162 = icmp eq ptr %147, null
  br i1 %162, label %177, label %163, !prof !2123

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !906
  %166 = getelementptr inbounds %struct.tree_common, ptr %165, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !906
  %168 = getelementptr inbounds %struct.tree_type, ptr %167, i64 0, i32 7
  %169 = load i32, ptr %168, align 8, !tbaa !906
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
  %179 = load i32, ptr %9, align 8, !tbaa !1007
  %180 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !1719
  %182 = tail call ptr @build4_stat(i32 noundef %179, ptr noundef %181, ptr noundef nonnull %148, ptr noundef nonnull %152, ptr noundef %161, ptr noundef %178) #20
  br label %210

183:                                              ; preds = %5
  %184 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !1010
  %186 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %187 = icmp eq ptr %186, null
  br i1 %187, label %210, label %188, !prof !2124

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !1009
  %191 = icmp eq ptr %185, null
  br i1 %191, label %196, label %192, !prof !2125

192:                                              ; preds = %188
  %193 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef nonnull %185) #19
  %194 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %193, ptr noundef %3, ptr noundef %4) #19
  %195 = icmp eq ptr %194, null
  br i1 %195, label %210, label %196

196:                                              ; preds = %192, %188
  %197 = phi ptr [ %194, %192 ], [ null, %188 ]
  %198 = getelementptr inbounds %struct.tree_common, ptr %190, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !906
  %200 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 41, ptr noundef %199, ptr noundef nonnull %186, ptr noundef %190, ptr noundef %197) #20
  br label %210

201:                                              ; preds = %5
  %202 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !1009
  %204 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %203) #19
  %205 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %204, ptr noundef %3, ptr noundef %4) #19
  br label %210

206:                                              ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %207 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !1009
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
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !2126 !PGOFuncName !2127 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !1024
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !2128

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !2129

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1665, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !922
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 !prof !1367 !PGOFuncName !2130 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #19, !range !1024
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11, !prof !2131

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #19, !range !1024
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !2132

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
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !2133 !PGOFuncName !2134 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !1024
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !2135

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #20
  tail call void @update_stmt_operands(ptr noundef %0) #20
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @can_PRE_operation(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !2136 !PGOFuncName !2137 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !956
  %6 = add i32 %5, -5
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %13, label %8, !prof !2138

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
define internal fastcc noundef ptr @do_SCCVN_insertion(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2136 !PGOFuncName !2139 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !922
  %6 = tail call ptr @vn_get_expr_for(ptr noundef %1) #20
  %7 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %6) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9, !prof !1242

9:                                                ; preds = %2
  %10 = call fastcc ptr @create_expression_by_pieces(ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef %0, ptr noundef null) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !2140

12:                                               ; preds = %9
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #20
  %13 = load ptr, ptr %4, align 8, !tbaa !922
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
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !2141 !PGOFuncName !2142 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !2143 !PGOFuncName !2144 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !2143 !PGOFuncName !2145 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !2143 !PGOFuncName !2146 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_false(ptr noundef %0) unnamed_addr #0 !prof !2147 !PGOFuncName !2148 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !922
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #19
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !922
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #19
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_true(ptr noundef %0) unnamed_addr #0 !prof !2149 !PGOFuncName !2150 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !922
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #19
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !922
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #19
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_fn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2151 !PGOFuncName !2152 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #5 !prof !2153 !PGOFuncName !2154 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !2155 !PGOFuncName !2156 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #19
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19, !range !1024
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12, !prof !2157

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #19, !range !1089
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12, !prof !2158

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #19
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19, !range !1024
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !prof !2159, !llvm.loop !2160

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !2161 !PGOFuncName !2162 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1451
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9, !prof !2163

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !922
  store ptr null, ptr %2, align 8, !tbaa !922
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1451
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22, !prof !2164

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !906
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #19, !range !1024
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8, !prof !2165

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !922
  %19 = load ptr, ptr %5, align 8, !tbaa !1451
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !906
  store ptr %21, ptr %2, align 8, !tbaa !922
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !956
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %8, label %25, !prof !2166

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #20
  br label %27

27:                                               ; preds = %25, %18, %8
  %28 = phi i8 [ 0, %8 ], [ 1, %18 ], [ %26, %25 ]
  ret i8 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !2167 !PGOFuncName !2168 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1315
  store ptr %1, ptr %4, align 8, !tbaa !922
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1367 !PGOFuncName !2169 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1089
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !1498 !PGOFuncName !2170 {
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
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2171 !PGOFuncName !2172 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2171 !PGOFuncName !2173 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !2167 !PGOFuncName !2174 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !1089
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #17 !prof !2167 !PGOFuncName !2175 {
  %2 = load ptr, ptr %0, align 8, !tbaa !2176
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !1283

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1451
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !1451
  store ptr %2, ptr %6, align 8, !tbaa !2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !2167 !PGOFuncName !2177 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !1283

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !2165

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !2176
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #19
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !2167 !PGOFuncName !2178 {
  store ptr %1, ptr %0, align 8, !tbaa !2176
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1451
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1451
  store ptr %0, ptr %4, align 8, !tbaa !2176
  store ptr %0, ptr %3, align 8, !tbaa !1451
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_bitmap_set_t_heap_free() unnamed_addr #12 !prof !1060 !PGOFuncName !2179 {
  %1 = load ptr, ptr @value_expressions, align 8, !tbaa !922
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1064

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @value_expressions, align 8, !tbaa !922
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_unsigned_heap_free() unnamed_addr #12 !prof !1060 !PGOFuncName !2180 {
  %1 = load ptr, ptr @name_to_id, align 8, !tbaa !922
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !2181

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @name_to_id, align 8, !tbaa !922
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_fre() #11 !prof !1057 !PGOFuncName !2182 {
  %1 = load i32, ptr @flag_tree_fre, align 4, !tbaa !956
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @execute_fre() #0 !prof !1057 !PGOFuncName !2183 {
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!893}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892}
!36 = !{ptr @add_to_value, ptr @get_expr_value_id, i64 2841005}
!37 = !{ptr @add_to_value, ptr @fancy_abort, i64 1}
!38 = !{ptr @add_to_value, ptr @VEC_bitmap_set_t_base_length, i64 2841005}
!39 = !{ptr @add_to_value, ptr @VEC_bitmap_set_t_heap_safe_grow_cleared, i64 4002}
!40 = !{ptr @add_to_value, ptr @VEC_bitmap_set_t_base_index, i64 2841005}
!41 = !{ptr @add_to_value, ptr @bitmap_set_new, i64 1384734}
!42 = !{ptr @add_to_value, ptr @VEC_bitmap_set_t_base_replace, i64 1384734}
!43 = !{ptr @add_to_value, ptr @bitmap_insert_into_set_1, i64 2841005}
!44 = !{ptr @get_expr_value_id, ptr @get_constant_value_id, i64 180383}
!45 = !{ptr @get_expr_value_id, ptr @get_or_alloc_constant_value_id, i64 1}
!46 = !{ptr @get_expr_value_id, ptr @add_to_value, i64 1}
!47 = !{ptr @get_expr_value_id, ptr @VN_INFO, i64 34533793}
!48 = !{ptr @get_expr_value_id, ptr @fancy_abort, i64 1}
!49 = !{ptr @VEC_bitmap_set_t_heap_safe_grow_cleared, ptr @VEC_bitmap_set_t_base_length, i64 537341}
!50 = !{ptr @VEC_bitmap_set_t_heap_safe_grow_cleared, ptr @VEC_bitmap_set_t_heap_safe_grow, i64 537341}
!51 = !{ptr @VEC_bitmap_set_t_heap_safe_grow_cleared, ptr @VEC_bitmap_set_t_base_address, i64 537341}
!52 = !{ptr @bitmap_set_new, ptr @pool_alloc, i64 8197859}
!53 = !{ptr @bitmap_set_new, ptr @bitmap_obstack_alloc_stat, i64 16395718}
!54 = !{ptr @bitmap_insert_into_set_1, ptr @value_id_constant_p, i64 2862975}
!55 = !{ptr @bitmap_insert_into_set_1, ptr @bitmap_set_bit, i64 11407630}
!56 = !{ptr @bitmap_insert_into_set_1, ptr @get_or_alloc_expression_id, i64 5703815}
!57 = !{ptr @VEC_bitmap_set_t_heap_safe_grow, ptr @VEC_bitmap_set_t_heap_reserve_exact, i64 537341}
!58 = !{ptr @VEC_bitmap_set_t_heap_reserve_exact, ptr @VEC_bitmap_set_t_base_space, i64 537341}
!59 = !{ptr @VEC_bitmap_set_t_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 524036}
!60 = !{ptr @get_or_alloc_expression_id, ptr @lookup_expression_id, i64 7125033}
!61 = !{ptr @get_or_alloc_expression_id, ptr @alloc_expression_id, i64 1107076}
!62 = !{ptr @lookup_expression_id, ptr @VEC_unsigned_base_length, i64 14937331}
!63 = !{ptr @lookup_expression_id, ptr @VEC_unsigned_base_index, i64 14791841}
!64 = !{ptr @lookup_expression_id, ptr @htab_find_slot, i64 2967913}
!65 = !{ptr @alloc_expression_id, ptr @fancy_abort, i64 3}
!66 = !{ptr @alloc_expression_id, ptr @VEC_pre_expr_heap_safe_push, i64 2421316}
!67 = !{ptr @alloc_expression_id, ptr @VEC_tree_base_length, i64 2593874}
!68 = !{ptr @alloc_expression_id, ptr @VEC_unsigned_heap_reserve, i64 1296937}
!69 = !{ptr @alloc_expression_id, ptr @VEC_unsigned_heap_safe_grow_cleared, i64 1296937}
!70 = !{ptr @alloc_expression_id, ptr @VEC_unsigned_base_index, i64 1296937}
!71 = !{ptr @alloc_expression_id, ptr @VEC_unsigned_base_replace, i64 1296937}
!72 = !{ptr @alloc_expression_id, ptr @htab_find_slot, i64 1124379}
!73 = !{ptr @VEC_pre_expr_heap_safe_push, ptr @VEC_pre_expr_heap_reserve, i64 18733321}
!74 = !{ptr @VEC_pre_expr_heap_safe_push, ptr @VEC_pre_expr_base_quick_push, i64 18733321}
!75 = !{ptr @VEC_unsigned_heap_reserve, ptr @VEC_unsigned_base_space, i64 1296937}
!76 = !{ptr @VEC_unsigned_heap_reserve, ptr @vec_heap_o_reserve, i64 27610}
!77 = !{ptr @VEC_unsigned_heap_safe_grow_cleared, ptr @VEC_unsigned_base_length, i64 1296937}
!78 = !{ptr @VEC_unsigned_heap_safe_grow_cleared, ptr @VEC_unsigned_heap_safe_grow, i64 1296937}
!79 = !{ptr @VEC_unsigned_heap_safe_grow_cleared, ptr @VEC_unsigned_base_address, i64 1296937}
!80 = !{ptr @VEC_pre_expr_heap_reserve, ptr @VEC_pre_expr_base_space, i64 18733321}
!81 = !{ptr @VEC_pre_expr_heap_reserve, ptr @vec_heap_p_reserve, i64 81017}
!82 = !{ptr @VEC_unsigned_heap_safe_grow, ptr @VEC_unsigned_heap_reserve_exact, i64 1296937}
!83 = !{ptr @VEC_unsigned_heap_reserve_exact, ptr @VEC_unsigned_base_space, i64 1296937}
!84 = !{ptr @VEC_unsigned_heap_reserve_exact, ptr @vec_heap_o_reserve_exact, i64 1}
!85 = !{ptr @expression_for_id, ptr @VEC_pre_expr_base_index, i64 52503059}
!86 = !{ptr @do_pre, ptr @execute_pre, i64 6652}
!87 = !{ptr @execute_pre, ptr @optimize_function_for_speed_p, i64 13303}
!88 = !{ptr @execute_pre, ptr @loop_optimizer_init, i64 6652}
!89 = !{ptr @execute_pre, ptr @run_scc_vn, i64 13304}
!90 = !{ptr @execute_pre, ptr @init_pre, i64 13303}
!91 = !{ptr @execute_pre, ptr @scev_initialize, i64 13303}
!92 = !{ptr @execute_pre, ptr @compute_avail, i64 13303}
!93 = !{ptr @execute_pre, ptr @print_bitmap_set, i64 40}
!94 = !{ptr @execute_pre, ptr @compute_antic, i64 6648}
!95 = !{ptr @execute_pre, ptr @insert, i64 6648}
!96 = !{ptr @execute_pre, ptr @eliminate, i64 13303}
!97 = !{ptr @execute_pre, ptr @statistics_counter_event, i64 66515}
!98 = !{ptr @execute_pre, ptr @remove_fake_exit_edges, i64 13303}
!99 = !{ptr @execute_pre, ptr @gsi_commit_edge_inserts, i64 13303}
!100 = !{ptr @execute_pre, ptr @clear_expression_ids, i64 13303}
!101 = !{ptr @execute_pre, ptr @free_scc_vn, i64 13303}
!102 = !{ptr @execute_pre, ptr @remove_dead_inserted_code, i64 6652}
!103 = !{ptr @execute_pre, ptr @scev_finalize, i64 13303}
!104 = !{ptr @execute_pre, ptr @fini_pre, i64 13303}
!105 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_base_length, i64 241162}
!106 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_heap_alloc, i64 6652}
!107 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_base_iterate, i64 80260}
!108 = !{ptr @remove_dead_inserted_code, ptr @gimple_plf, i64 66956}
!109 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_base_quick_push, i64 89865}
!110 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_base_pop, i64 227858}
!111 = !{ptr @remove_dead_inserted_code, ptr @gimple_code, i64 234323}
!112 = !{ptr @remove_dead_inserted_code, ptr @gimple_phi_num_args, i64 252131}
!113 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_heap_reserve, i64 53019}
!114 = !{ptr @remove_dead_inserted_code, ptr @gimple_phi_arg_imm_use_ptr, i64 146093}
!115 = !{ptr @remove_dead_inserted_code, ptr @get_use_from_ptr, i64 146093}
!116 = !{ptr @remove_dead_inserted_code, ptr @mark_operand_necessary, i64 452181}
!117 = !{ptr @remove_dead_inserted_code, ptr @op_iter_init_tree, i64 174839}
!118 = !{ptr @remove_dead_inserted_code, ptr @op_iter_done, i64 494859}
!119 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_heap_safe_push, i64 137992}
!120 = !{ptr @remove_dead_inserted_code, ptr @op_iter_next_tree, i64 320020}
!121 = !{ptr @remove_dead_inserted_code, ptr @gsi_for_stmt, i64 6465}
!122 = !{ptr @remove_dead_inserted_code, ptr @remove_phi_node, i64 2056}
!123 = !{ptr @remove_dead_inserted_code, ptr @gsi_remove, i64 4409}
!124 = !{ptr @remove_dead_inserted_code, ptr @release_defs, i64 4409}
!125 = !{ptr @remove_dead_inserted_code, ptr @VEC_gimple_heap_free, i64 6652}
!126 = !{ptr @init_pre, ptr @VEC_pre_expr_heap_safe_push, i64 13304}
!127 = !{ptr @init_pre, ptr @get_max_value_id, i64 26608}
!128 = !{ptr @init_pre, ptr @VEC_bitmap_set_t_heap_alloc, i64 13304}
!129 = !{ptr @init_pre, ptr @VEC_bitmap_set_t_heap_safe_grow_cleared, i64 13304}
!130 = !{ptr @init_pre, ptr @connect_infinite_loops_to_exit, i64 13304}
!131 = !{ptr @init_pre, ptr @xmalloc, i64 13304}
!132 = !{ptr @init_pre, ptr @my_rev_post_order_compute, i64 13304}
!133 = !{ptr @init_pre, ptr @xcalloc, i64 671322}
!134 = !{ptr @init_pre, ptr @calculate_dominance_info, i64 26608}
!135 = !{ptr @init_pre, ptr @bitmap_obstack_initialize, i64 13304}
!136 = !{ptr @init_pre, ptr @bitmap_obstack_alloc_stat, i64 26608}
!137 = !{ptr @init_pre, ptr @htab_create, i64 26608}
!138 = !{ptr @init_pre, ptr @VEC_tree_base_length, i64 13304}
!139 = !{ptr @init_pre, ptr @create_alloc_pool, i64 26608}
!140 = !{ptr @init_pre, ptr @bitmap_set_new, i64 2685288}
!141 = !{ptr @compute_avail, ptr @VEC_tree_base_length, i64 1776239}
!142 = !{ptr @compute_avail, ptr @VEC_tree_base_index, i64 1762935}
!143 = !{ptr @compute_avail, ptr @has_zero_uses, i64 38836}
!144 = !{ptr @compute_avail, ptr @is_gimple_reg, i64 38446}
!145 = !{ptr @compute_avail, ptr @get_or_alloc_expr_for_name, i64 928396}
!146 = !{ptr @compute_avail, ptr @get_expr_value_id, i64 1616154}
!147 = !{ptr @compute_avail, ptr @add_to_value, i64 1616154}
!148 = !{ptr @compute_avail, ptr @bitmap_insert_into_set, i64 411541}
!149 = !{ptr @compute_avail, ptr @bitmap_value_insert_into_set, i64 1274499}
!150 = !{ptr @compute_avail, ptr @xmalloc, i64 13304}
!151 = !{ptr @compute_avail, ptr @first_dom_son, i64 658020}
!152 = !{ptr @compute_avail, ptr @next_dom_son, i64 644717}
!153 = !{ptr @compute_avail, ptr @get_immediate_dominator, i64 644716}
!154 = !{ptr @compute_avail, ptr @bitmap_set_copy, i64 644715}
!155 = !{ptr @compute_avail, ptr @gsi_start_phis, i64 644716}
!156 = !{ptr @compute_avail, ptr @gsi_end_p, i64 2939667}
!157 = !{ptr @compute_avail, ptr @gsi_stmt, i64 1650235}
!158 = !{ptr @compute_avail, ptr @make_values_for_phi, i64 195169}
!159 = !{ptr @compute_avail, ptr @gsi_next, i64 1650235}
!160 = !{ptr @compute_avail, ptr @gsi_start_bb, i64 644716}
!161 = !{ptr @compute_avail, ptr @gimple_set_uid, i64 1455066}
!162 = !{ptr @compute_avail, ptr @is_gimple_call, i64 1455066}
!163 = !{ptr @compute_avail, ptr @stmt_ends_bb_p, i64 184980}
!164 = !{ptr @compute_avail, ptr @gimple_call_flags, i64 177751}
!165 = !{ptr @compute_avail, ptr @op_iter_init_tree, i64 1626566}
!166 = !{ptr @compute_avail, ptr @op_iter_done, i64 2743262}
!167 = !{ptr @compute_avail, ptr @op_iter_next_tree, i64 1116696}
!168 = !{ptr @compute_avail, ptr @gimple_has_volatile_ops, i64 1455066}
!169 = !{ptr @compute_avail, ptr @stmt_could_throw_p, i64 1455048}
!170 = !{ptr @compute_avail, ptr @gimple_code, i64 1455047}
!171 = !{ptr @compute_avail, ptr @add_to_exp_gen, i64 843066}
!172 = !{ptr @compute_avail, ptr @can_value_number_call, i64 184979}
!173 = !{ptr @compute_avail, ptr @copy_reference_ops_from_call, i64 10705}
!174 = !{ptr @compute_avail, ptr @gimple_vuse, i64 500061}
!175 = !{ptr @compute_avail, ptr @gimple_expr_type, i64 279168}
!176 = !{ptr @compute_avail, ptr @vn_reference_lookup_pieces, i64 10705}
!177 = !{ptr @compute_avail, ptr @VEC_vn_reference_op_s_heap_free, i64 10705}
!178 = !{ptr @compute_avail, ptr @VEC_vn_reference_op_s_base_iterate, i64 1602610}
!179 = !{ptr @compute_avail, ptr @pool_alloc, i64 687758}
!180 = !{ptr @compute_avail, ptr @get_or_alloc_expression_id, i64 687758}
!181 = !{ptr @compute_avail, ptr @gimple_assign_rhs_code, i64 1184526}
!182 = !{ptr @compute_avail, ptr @gimple_num_ops, i64 268463}
!183 = !{ptr @compute_avail, ptr @gimple_assign_rhs1, i64 757819}
!184 = !{ptr @compute_avail, ptr @gimple_assign_rhs2, i64 268463}
!185 = !{ptr @compute_avail, ptr @vn_nary_op_lookup_pieces, i64 268463}
!186 = !{ptr @compute_avail, ptr @vn_reference_lookup, i64 489356}
!187 = !{ptr @compute_avail, ptr @free, i64 13304}
!188 = !{ptr @compute_antic, ptr @sbitmap_alloc, i64 13298}
!189 = !{ptr @compute_antic, ptr @sbitmap_zero, i64 6649}
!190 = !{ptr @compute_antic, ptr @ei_start_1, i64 326212}
!191 = !{ptr @compute_antic, ptr @ei_cond, i64 777594}
!192 = !{ptr @compute_antic, ptr @SET_BIT, i64 1}
!193 = !{ptr @compute_antic, ptr @ei_next, i64 451382}
!194 = !{ptr @compute_antic, ptr @bitmap_set_new, i64 665722}
!195 = !{ptr @compute_antic, ptr @sbitmap_ones, i64 13297}
!196 = !{ptr @compute_antic, ptr @VEC_basic_block_base_index, i64 1233794}
!197 = !{ptr @compute_antic, ptr @compute_antic_aux, i64 654980}
!198 = !{ptr @compute_antic, ptr @statistics_histogram_event, i64 13297}
!199 = !{ptr @compute_antic, ptr @mark_dfs_back_edges, i64 6648}
!200 = !{ptr @compute_antic, ptr @compute_partial_antic_aux, i64 578814}
!201 = !{ptr @compute_antic, ptr @free, i64 26596}
!202 = !{ptr @insert, ptr @bitmap_set_new, i64 339508}
!203 = !{ptr @insert, ptr @insert_aux, i64 10138}
!204 = !{ptr @insert, ptr @statistics_histogram_event, i64 6649}
!205 = !{ptr @eliminate, ptr @VEC_gimple_base_iterate, i64 16202}
!206 = !{ptr @eliminate, ptr @gsi_start_bb, i64 644716}
!207 = !{ptr @eliminate, ptr @gsi_end_p, i64 2954115}
!208 = !{ptr @eliminate, ptr @gsi_stmt, i64 1761093}
!209 = !{ptr @eliminate, ptr @gimple_has_lhs, i64 1455066}
!210 = !{ptr @eliminate, ptr @gimple_get_lhs, i64 2781119}
!211 = !{ptr @eliminate, ptr @gimple_assign_ssa_name_copy_p, i64 902934}
!212 = !{ptr @eliminate, ptr @gimple_assign_single_p, i64 2336448}
!213 = !{ptr @eliminate, ptr @gimple_assign_rhs1, i64 1283284}
!214 = !{ptr @eliminate, ptr @is_gimple_min_invariant, i64 544206}
!215 = !{ptr @eliminate, ptr @gimple_has_volatile_ops, i64 880426}
!216 = !{ptr @eliminate, ptr @has_zero_uses, i64 882967}
!217 = !{ptr @eliminate, ptr @get_or_alloc_expr_for_name, i64 974529}
!218 = !{ptr @eliminate, ptr @get_expr_value_id, i64 974529}
!219 = !{ptr @eliminate, ptr @bitmap_find_leader, i64 974529}
!220 = !{ptr @eliminate, ptr @fancy_abort, i64 3}
!221 = !{ptr @eliminate, ptr @VN_INFO, i64 1979069}
!222 = !{ptr @eliminate, ptr @useless_type_conversion_p, i64 98961}
!223 = !{ptr @eliminate, ptr @fold_convert_loc, i64 17}
!224 = !{ptr @eliminate, ptr @vn_get_expr_for, i64 1435}
!225 = !{ptr @eliminate, ptr @can_PRE_operation, i64 1435}
!226 = !{ptr @eliminate, ptr @do_SCCVN_insertion, i64 1434}
!227 = !{ptr @eliminate, ptr @may_propagate_copy, i64 1632}
!228 = !{ptr @eliminate, ptr @gimple_set_plf, i64 97178}
!229 = !{ptr @eliminate, ptr @gimple_expr_type, i64 94747}
!230 = !{ptr @eliminate, ptr @propagate_tree_value_into_stmt, i64 96410}
!231 = !{ptr @eliminate, ptr @update_stmt, i64 98482}
!232 = !{ptr @eliminate, ptr @maybe_clean_or_replace_eh_stmt, i64 94768}
!233 = !{ptr @eliminate, ptr @gimple_bb, i64 2}
!234 = !{ptr @eliminate, ptr @bitmap_set_bit, i64 2}
!235 = !{ptr @eliminate, ptr @gimple_assign_lhs, i64 261020}
!236 = !{ptr @eliminate, ptr @is_gimple_reg, i64 342192}
!237 = !{ptr @eliminate, ptr @gimple_vuse, i64 116975}
!238 = !{ptr @eliminate, ptr @vn_reference_lookup, i64 116975}
!239 = !{ptr @eliminate, ptr @operand_equal_p, i64 24737}
!240 = !{ptr @eliminate, ptr @VEC_gimple_heap_safe_push, i64 2899}
!241 = !{ptr @eliminate, ptr @gimple_code, i64 1911859}
!242 = !{ptr @eliminate, ptr @gimple_cond_lhs, i64 286253}
!243 = !{ptr @eliminate, ptr @gimple_cond_rhs, i64 286253}
!244 = !{ptr @eliminate, ptr @gimple_cond_code, i64 286253}
!245 = !{ptr @eliminate, ptr @fold_binary_loc, i64 286253}
!246 = !{ptr @eliminate, ptr @integer_zerop, i64 407}
!247 = !{ptr @eliminate, ptr @gimple_cond_make_false, i64 218}
!248 = !{ptr @eliminate, ptr @gimple_cond_make_true, i64 189}
!249 = !{ptr @eliminate, ptr @gimple_call_fn, i64 191368}
!250 = !{ptr @eliminate, ptr @gimple_call_set_fn, i64 35}
!251 = !{ptr @eliminate, ptr @gsi_next, i64 1662131}
!252 = !{ptr @eliminate, ptr @gsi_start_phis, i64 644716}
!253 = !{ptr @eliminate, ptr @gimple_phi_result_ptr, i64 209617}
!254 = !{ptr @eliminate, ptr @get_def_from_ptr, i64 209617}
!255 = !{ptr @eliminate, ptr @gimple_phi_num_args, i64 209617}
!256 = !{ptr @eliminate, ptr @bitmap_bit_p, i64 109358}
!257 = !{ptr @eliminate, ptr @remove_phi_node, i64 2552}
!258 = !{ptr @eliminate, ptr @gimple_build_assign_stat, i64 2552}
!259 = !{ptr @eliminate, ptr @gsi_after_labels, i64 2552}
!260 = !{ptr @eliminate, ptr @gsi_insert_before, i64 2552}
!261 = !{ptr @eliminate, ptr @single_imm_use, i64 2473}
!262 = !{ptr @eliminate, ptr @get_use_from_ptr, i64 1631}
!263 = !{ptr @eliminate, ptr @set_ssa_use_from_ptr, i64 1630}
!264 = !{ptr @eliminate, ptr @gsi_for_stmt, i64 2203}
!265 = !{ptr @eliminate, ptr @unlink_stmt_vdef, i64 2203}
!266 = !{ptr @eliminate, ptr @gsi_remove, i64 2203}
!267 = !{ptr @eliminate, ptr @release_defs, i64 2203}
!268 = !{ptr @eliminate, ptr @VEC_gimple_heap_free, i64 13304}
!269 = !{ptr @clear_expression_ids, ptr @VEC_pre_expr_heap_free, i64 13304}
!270 = !{ptr @fini_pre, ptr @free, i64 684626}
!271 = !{ptr @fini_pre, ptr @VEC_bitmap_set_t_heap_free, i64 13304}
!272 = !{ptr @fini_pre, ptr @VEC_gimple_heap_free, i64 26608}
!273 = !{ptr @fini_pre, ptr @bitmap_obstack_release, i64 13304}
!274 = !{ptr @fini_pre, ptr @free_alloc_pool, i64 26608}
!275 = !{ptr @fini_pre, ptr @htab_delete, i64 26608}
!276 = !{ptr @fini_pre, ptr @VEC_unsigned_heap_free, i64 13304}
!277 = !{ptr @fini_pre, ptr @free_dominance_info, i64 13304}
!278 = !{ptr @fini_pre, ptr @gimple_purge_all_dead_eh_edges, i64 1}
!279 = !{ptr @fini_pre, ptr @cleanup_tree_cfg, i64 1}
!280 = !{ptr @fini_pre, ptr @bitmap_obstack_free, i64 13304}
!281 = !{ptr @fini_pre, ptr @loop_optimizer_finalize, i64 6652}
!282 = !{ptr @VEC_gimple_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 6652}
!283 = !{ptr @VEC_gimple_heap_reserve, ptr @VEC_gimple_base_space, i64 227420}
!284 = !{ptr @VEC_gimple_heap_reserve, ptr @vec_heap_p_reserve, i64 8684}
!285 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 1361814}
!286 = !{ptr @mark_operand_necessary, ptr @fancy_abort, i64 2}
!287 = !{ptr @mark_operand_necessary, ptr @gimple_plf, i64 441320}
!288 = !{ptr @mark_operand_necessary, ptr @gimple_nop_p, i64 238166}
!289 = !{ptr @mark_operand_necessary, ptr @gimple_set_plf, i64 216810}
!290 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 1801551}
!291 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 1801551}
!292 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_heap_reserve, i64 174394}
!293 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_base_quick_push, i64 174394}
!294 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 533847}
!295 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 903002}
!296 = !{ptr @VEC_gimple_heap_free, ptr @free, i64 6054}
!297 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!298 = !{ptr @gimple_nop_p, ptr @gimple_code, i64 3595640}
!299 = !{ptr @op_iter_init, ptr @fancy_abort, i64 1}
!300 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 1455173}
!301 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1093897}
!302 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 346378}
!303 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 164897}
!304 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 1455174}
!305 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 2778328}
!306 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 346377}
!307 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 2512397}
!308 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 6105446}
!309 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 7626394}
!310 = !{ptr @VEC_bitmap_set_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 13304}
!311 = !{ptr @my_rev_post_order_compute, ptr @xmalloc, i64 13304}
!312 = !{ptr @my_rev_post_order_compute, ptr @sbitmap_alloc, i64 13304}
!313 = !{ptr @my_rev_post_order_compute, ptr @sbitmap_zero, i64 13304}
!314 = !{ptr @my_rev_post_order_compute, ptr @ei_start_1, i64 658018}
!315 = !{ptr @my_rev_post_order_compute, ptr @ei_edge, i64 3231244}
!316 = !{ptr @my_rev_post_order_compute, ptr @SET_BIT, i64 644715}
!317 = !{ptr @my_rev_post_order_compute, ptr @VEC_edge_base_length, i64 644715}
!318 = !{ptr @my_rev_post_order_compute, ptr @ei_one_before_end_p, i64 1941814}
!319 = !{ptr @my_rev_post_order_compute, ptr @ei_next, i64 312889}
!320 = !{ptr @my_rev_post_order_compute, ptr @free, i64 39912}
!321 = !{ptr @expr_pred_trans_eq, ptr @pre_expr_eq, i64 4064961}
!322 = !{ptr @pre_expr_hash, ptr @vn_hash_constant_with_type, i64 140280}
!323 = !{ptr @pre_expr_hash, ptr @fancy_abort, i64 1}
!324 = !{ptr @pre_expr_eq, ptr @vn_constant_eq_with_type, i64 117607}
!325 = !{ptr @pre_expr_eq, ptr @vn_nary_op_eq, i64 2738197}
!326 = !{ptr @pre_expr_eq, ptr @vn_reference_eq, i64 3450407}
!327 = !{ptr @pre_expr_eq, ptr @fancy_abort, i64 1}
!328 = !{ptr @ei_edge, ptr @ei_container, i64 15837769}
!329 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 7918885}
!330 = !{ptr @ei_one_before_end_p, ptr @ei_container, i64 3883915}
!331 = !{ptr @ei_one_before_end_p, ptr @VEC_edge_base_length, i64 1941958}
!332 = !{ptr @ei_next, ptr @ei_container, i64 7483409}
!333 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 3741705}
!334 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!335 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!336 = !{ptr @vn_hash_constant_with_type, ptr @iterative_hash_expr, i64 140279}
!337 = !{ptr @vn_constant_eq_with_type, ptr @expressions_equal_p, i64 117606}
!338 = !{ptr @vn_constant_eq_with_type, ptr @types_compatible_p, i64 114752}
!339 = !{ptr @has_zero_uses, ptr @has_zero_uses_1, i64 1}
!340 = !{ptr @get_or_alloc_expr_for_name, ptr @lookup_expression_id, i64 4707465}
!341 = !{ptr @get_or_alloc_expr_for_name, ptr @expression_for_id, i64 3410528}
!342 = !{ptr @get_or_alloc_expr_for_name, ptr @pool_alloc, i64 1296937}
!343 = !{ptr @get_or_alloc_expr_for_name, ptr @alloc_expression_id, i64 1296937}
!344 = !{ptr @bitmap_insert_into_set, ptr @get_expr_value_id, i64 2862975}
!345 = !{ptr @bitmap_insert_into_set, ptr @bitmap_insert_into_set_1, i64 2862975}
!346 = !{ptr @bitmap_value_insert_into_set, ptr @get_expr_value_id, i64 13009211}
!347 = !{ptr @bitmap_value_insert_into_set, ptr @value_id_constant_p, i64 13009211}
!348 = !{ptr @bitmap_value_insert_into_set, ptr @bitmap_set_bit, i64 23291936}
!349 = !{ptr @bitmap_set_copy, ptr @bitmap_copy, i64 2058950}
!350 = !{ptr @make_values_for_phi, ptr @gimple_phi_result, i64 195183}
!351 = !{ptr @make_values_for_phi, ptr @is_gimple_reg, i64 195183}
!352 = !{ptr @make_values_for_phi, ptr @get_or_alloc_expr_for_name, i64 209761}
!353 = !{ptr @make_values_for_phi, ptr @get_expr_value_id, i64 209761}
!354 = !{ptr @make_values_for_phi, ptr @add_to_value, i64 209761}
!355 = !{ptr @make_values_for_phi, ptr @bitmap_insert_into_set, i64 103095}
!356 = !{ptr @make_values_for_phi, ptr @bitmap_value_insert_into_set, i64 103095}
!357 = !{ptr @make_values_for_phi, ptr @gimple_phi_num_args, i64 199759}
!358 = !{ptr @make_values_for_phi, ptr @gimple_phi_arg_def, i64 149997}
!359 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 2797275}
!360 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 2797275}
!361 = !{ptr @is_gimple_call, ptr @gimple_code, i64 1994197}
!362 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 2335669}
!363 = !{ptr @add_to_exp_gen, ptr @ssa_undefined_value_p, i64 416016}
!364 = !{ptr @add_to_exp_gen, ptr @get_or_alloc_expr_for_name, i64 416016}
!365 = !{ptr @add_to_exp_gen, ptr @bitmap_value_insert_into_set, i64 416016}
!366 = !{ptr @can_value_number_call, ptr @gimple_call_flags, i64 184993}
!367 = !{ptr @gimple_expr_type, ptr @gimple_code, i64 373942}
!368 = !{ptr @gimple_expr_type, ptr @gimple_call_return_type, i64 124647}
!369 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs_code, i64 124647}
!370 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs1, i64 11194}
!371 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 113453}
!372 = !{ptr @VEC_vn_reference_op_s_heap_free, ptr @free, i64 893194}
!373 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 1547694}
!374 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 1547694}
!375 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 714339}
!376 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 2788205}
!377 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 268483}
!378 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 176596}
!379 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 149999}
!380 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 149999}
!381 = !{ptr @gimple_call_return_type, ptr @gimple_call_fn, i64 10865}
!382 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 202246}
!383 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 4185619}
!384 = !{ptr @gimple_op, ptr @gimple_ops, i64 4185618}
!385 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 4205406}
!386 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!387 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 4205406}
!388 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 4205406}
!389 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 1547694}
!390 = !{ptr @ei_cond, ptr @ei_end_p, i64 6503606}
!391 = !{ptr @ei_cond, ptr @ei_edge, i64 4687401}
!392 = !{ptr @compute_antic_aux, ptr @bitmap_set_new, i64 655078}
!393 = !{ptr @compute_antic_aux, ptr @VEC_edge_base_length, i64 655077}
!394 = !{ptr @compute_antic_aux, ptr @single_succ_p, i64 655076}
!395 = !{ptr @compute_antic_aux, ptr @single_succ, i64 408325}
!396 = !{ptr @compute_antic_aux, ptr @defer_or_phi_translate_block, i64 408325}
!397 = !{ptr @compute_antic_aux, ptr @VEC_basic_block_heap_alloc, i64 246751}
!398 = !{ptr @compute_antic_aux, ptr @ei_start_1, i64 495738}
!399 = !{ptr @compute_antic_aux, ptr @ei_cond, i64 1355002}
!400 = !{ptr @compute_antic_aux, ptr @VEC_basic_block_base_quick_push, i64 246693}
!401 = !{ptr @compute_antic_aux, ptr @ei_next, i64 859264}
!402 = !{ptr @compute_antic_aux, ptr @phi_nodes, i64 493442}
!403 = !{ptr @compute_antic_aux, ptr @gimple_seq_empty_p, i64 493442}
!404 = !{ptr @compute_antic_aux, ptr @phi_translate_set, i64 11}
!405 = !{ptr @compute_antic_aux, ptr @bitmap_set_copy, i64 246740}
!406 = !{ptr @compute_antic_aux, ptr @VEC_basic_block_base_iterate, i64 493442}
!407 = !{ptr @compute_antic_aux, ptr @bitmap_set_and, i64 246692}
!408 = !{ptr @compute_antic_aux, ptr @bitmap_set_free, i64 1965232}
!409 = !{ptr @compute_antic_aux, ptr @VEC_basic_block_heap_free, i64 246751}
!410 = !{ptr @compute_antic_aux, ptr @SET_BIT, i64 598374}
!411 = !{ptr @compute_antic_aux, ptr @bitmap_set_subtract, i64 1003908}
!412 = !{ptr @compute_antic_aux, ptr @bmp_iter_set_init, i64 501954}
!413 = !{ptr @compute_antic_aux, ptr @bmp_iter_set, i64 2503703}
!414 = !{ptr @compute_antic_aux, ptr @expression_for_id, i64 2001749}
!415 = !{ptr @compute_antic_aux, ptr @bitmap_value_insert_into_set, i64 2001749}
!416 = !{ptr @compute_antic_aux, ptr @bmp_iter_next, i64 2001749}
!417 = !{ptr @compute_antic_aux, ptr @clean, i64 501954}
!418 = !{ptr @compute_antic_aux, ptr @bitmap_set_equal, i64 501954}
!419 = !{ptr @compute_antic_aux, ptr @RESET_BIT, i64 252967}
!420 = !{ptr @compute_partial_antic_aux, ptr @single_succ_p, i64 1157494}
!421 = !{ptr @compute_partial_antic_aux, ptr @single_succ, i64 670776}
!422 = !{ptr @compute_partial_antic_aux, ptr @bitmap_count_bits, i64 335627}
!423 = !{ptr @compute_partial_antic_aux, ptr @bitmap_set_new, i64 578519}
!424 = !{ptr @compute_partial_antic_aux, ptr @VEC_edge_base_length, i64 578509}
!425 = !{ptr @compute_partial_antic_aux, ptr @single_succ_edge, i64 335149}
!426 = !{ptr @compute_partial_antic_aux, ptr @phi_translate_set, i64 315982}
!427 = !{ptr @compute_partial_antic_aux, ptr @VEC_basic_block_heap_alloc, i64 243359}
!428 = !{ptr @compute_partial_antic_aux, ptr @ei_start_1, i64 489417}
!429 = !{ptr @compute_partial_antic_aux, ptr @ei_cond, i64 1339342}
!430 = !{ptr @compute_partial_antic_aux, ptr @VEC_basic_block_base_quick_push, i64 506187}
!431 = !{ptr @compute_partial_antic_aux, ptr @ei_next, i64 849925}
!432 = !{ptr @compute_partial_antic_aux, ptr @VEC_basic_block_base_length, i64 243359}
!433 = !{ptr @compute_partial_antic_aux, ptr @VEC_basic_block_base_iterate, i64 749544}
!434 = !{ptr @compute_partial_antic_aux, ptr @bmp_iter_set_init, i64 1012372}
!435 = !{ptr @compute_partial_antic_aux, ptr @bmp_iter_set, i64 7205606}
!436 = !{ptr @compute_partial_antic_aux, ptr @expression_for_id, i64 6193234}
!437 = !{ptr @compute_partial_antic_aux, ptr @bitmap_value_insert_into_set, i64 6193234}
!438 = !{ptr @compute_partial_antic_aux, ptr @bmp_iter_next, i64 6193234}
!439 = !{ptr @compute_partial_antic_aux, ptr @phi_nodes, i64 506186}
!440 = !{ptr @compute_partial_antic_aux, ptr @gimple_seq_empty_p, i64 506186}
!441 = !{ptr @compute_partial_antic_aux, ptr @bitmap_set_free, i64 1157030}
!442 = !{ptr @compute_partial_antic_aux, ptr @VEC_basic_block_heap_free, i64 243359}
!443 = !{ptr @compute_partial_antic_aux, ptr @bitmap_set_subtract, i64 578509}
!444 = !{ptr @compute_partial_antic_aux, ptr @bitmap_ior_into, i64 1157018}
!445 = !{ptr @compute_partial_antic_aux, ptr @bitmap_set_subtract_values, i64 578509}
!446 = !{ptr @compute_partial_antic_aux, ptr @dependent_clean, i64 578509}
!447 = !{ptr @compute_partial_antic_aux, ptr @bitmap_set_equal, i64 578509}
!448 = !{ptr @compute_partial_antic_aux, ptr @SET_BIT, i64 589795}
!449 = !{ptr @compute_partial_antic_aux, ptr @RESET_BIT, i64 332451}
!450 = !{ptr @ei_end_p, ptr @ei_container, i64 13007211}
!451 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 6503606}
!452 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 3226833}
!453 = !{ptr @single_succ, ptr @single_succ_edge, i64 1079105}
!454 = !{ptr @defer_or_phi_translate_block, ptr @SET_BIT, i64 1}
!455 = !{ptr @defer_or_phi_translate_block, ptr @phi_translate_set, i64 408325}
!456 = !{ptr @VEC_basic_block_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 490112}
!457 = !{ptr @VEC_basic_block_heap_free, ptr @free, i64 490111}
!458 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!459 = !{ptr @phi_translate_set, ptr @phi_nodes, i64 724319}
!460 = !{ptr @phi_translate_set, ptr @gimple_seq_empty_p, i64 724319}
!461 = !{ptr @phi_translate_set, ptr @bitmap_set_copy, i64 137970}
!462 = !{ptr @phi_translate_set, ptr @sorted_array_from_bitmap_set, i64 586349}
!463 = !{ptr @phi_translate_set, ptr @VEC_pre_expr_base_iterate, i64 4938105}
!464 = !{ptr @phi_translate_set, ptr @phi_translate, i64 4351756}
!465 = !{ptr @phi_translate_set, ptr @bitmap_value_replace_in_set, i64 1447333}
!466 = !{ptr @phi_translate_set, ptr @bitmap_value_insert_into_set, i64 2409783}
!467 = !{ptr @phi_translate_set, ptr @VEC_pre_expr_heap_free, i64 586349}
!468 = !{ptr @bitmap_set_and, ptr @bitmap_obstack_alloc_stat, i64 246693}
!469 = !{ptr @bitmap_set_and, ptr @bitmap_and_into, i64 246693}
!470 = !{ptr @bitmap_set_and, ptr @bitmap_copy, i64 246693}
!471 = !{ptr @bitmap_set_and, ptr @bmp_iter_set_init, i64 246693}
!472 = !{ptr @bitmap_set_and, ptr @bmp_iter_set, i64 1404521}
!473 = !{ptr @bitmap_set_and, ptr @expression_for_id, i64 1157828}
!474 = !{ptr @bitmap_set_and, ptr @get_expr_value_id, i64 1157828}
!475 = !{ptr @bitmap_set_and, ptr @bitmap_bit_p, i64 1157828}
!476 = !{ptr @bitmap_set_and, ptr @bitmap_clear_bit, i64 507629}
!477 = !{ptr @bitmap_set_and, ptr @bmp_iter_next, i64 1157828}
!478 = !{ptr @bitmap_set_and, ptr @bitmap_obstack_free, i64 246693}
!479 = !{ptr @bitmap_set_free, ptr @bitmap_obstack_free, i64 6244530}
!480 = !{ptr @bitmap_set_subtract, ptr @bitmap_set_new, i64 1888667}
!481 = !{ptr @bitmap_set_subtract, ptr @bitmap_and_compl, i64 1888667}
!482 = !{ptr @bitmap_set_subtract, ptr @bmp_iter_set_init, i64 1888667}
!483 = !{ptr @bitmap_set_subtract, ptr @bmp_iter_set, i64 12086951}
!484 = !{ptr @bitmap_set_subtract, ptr @expression_for_id, i64 10198284}
!485 = !{ptr @bitmap_set_subtract, ptr @get_expr_value_id, i64 10198284}
!486 = !{ptr @bitmap_set_subtract, ptr @bitmap_set_bit, i64 10198284}
!487 = !{ptr @bitmap_set_subtract, ptr @bmp_iter_next, i64 10198284}
!488 = !{ptr @clean, ptr @sorted_array_from_bitmap_set, i64 655078}
!489 = !{ptr @clean, ptr @VEC_pre_expr_base_iterate, i64 4189234}
!490 = !{ptr @clean, ptr @valid_in_sets, i64 3534156}
!491 = !{ptr @clean, ptr @bitmap_remove_from_set, i64 213058}
!492 = !{ptr @clean, ptr @VEC_pre_expr_heap_free, i64 655078}
!493 = !{ptr @bitmap_set_equal, ptr @bitmap_equal_p, i64 1233589}
!494 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 1414256}
!495 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!496 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 1414256}
!497 = !{ptr @sorted_array_from_bitmap_set, ptr @bitmap_count_bits, i64 2168057}
!498 = !{ptr @sorted_array_from_bitmap_set, ptr @VEC_pre_expr_heap_alloc, i64 2168057}
!499 = !{ptr @sorted_array_from_bitmap_set, ptr @bmp_iter_set_init, i64 18464334}
!500 = !{ptr @sorted_array_from_bitmap_set, ptr @bmp_iter_set, i64 64597328}
!501 = !{ptr @sorted_array_from_bitmap_set, ptr @VEC_bitmap_set_t_base_index, i64 16296277}
!502 = !{ptr @sorted_array_from_bitmap_set, ptr @bitmap_bit_p, i64 29836717}
!503 = !{ptr @sorted_array_from_bitmap_set, ptr @expression_for_id, i64 16298694}
!504 = !{ptr @sorted_array_from_bitmap_set, ptr @VEC_pre_expr_heap_safe_push, i64 16298694}
!505 = !{ptr @sorted_array_from_bitmap_set, ptr @bmp_iter_next, i64 46132994}
!506 = !{ptr @phi_translate, ptr @get_expr_value_id, i64 8505709}
!507 = !{ptr @phi_translate, ptr @value_id_constant_p, i64 8505709}
!508 = !{ptr @phi_translate, ptr @phi_trans_lookup, i64 6441388}
!509 = !{ptr @phi_translate, ptr @phi_translate_1, i64 4460806}
!510 = !{ptr @phi_translate, ptr @phi_trans_add, i64 1340064}
!511 = !{ptr @bitmap_value_replace_in_set, ptr @get_expr_value_id, i64 6257208}
!512 = !{ptr @bitmap_value_replace_in_set, ptr @bitmap_set_contains_value, i64 6257208}
!513 = !{ptr @bitmap_value_replace_in_set, ptr @bitmap_set_replace_value, i64 3937797}
!514 = !{ptr @bitmap_value_replace_in_set, ptr @bitmap_insert_into_set, i64 2319411}
!515 = !{ptr @VEC_pre_expr_heap_free, ptr @free, i64 1906680}
!516 = !{ptr @VEC_pre_expr_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 2168057}
!517 = !{ptr @phi_trans_lookup, ptr @pre_expr_hash, i64 6441391}
!518 = !{ptr @phi_trans_lookup, ptr @iterative_hash_hashval_t, i64 6441391}
!519 = !{ptr @phi_trans_lookup, ptr @htab_find_slot_with_hash, i64 6441391}
!520 = !{ptr @phi_translate_1, ptr @VN_INFO, i64 2950535}
!521 = !{ptr @phi_translate_1, ptr @find_leader_in_sets, i64 2679974}
!522 = !{ptr @phi_translate_1, ptr @phi_translate, i64 2679974}
!523 = !{ptr @phi_translate_1, ptr @get_representative_for, i64 605322}
!524 = !{ptr @phi_translate_1, ptr @vn_nary_op_lookup_pieces, i64 222703}
!525 = !{ptr @phi_translate_1, ptr @is_gimple_min_invariant, i64 1088931}
!526 = !{ptr @phi_translate_1, ptr @get_or_alloc_expr_for_constant, i64 80012}
!527 = !{ptr @phi_translate_1, ptr @pool_alloc, i64 711410}
!528 = !{ptr @phi_translate_1, ptr @fully_constant_expression, i64 711410}
!529 = !{ptr @phi_translate_1, ptr @get_next_value_id, i64 490317}
!530 = !{ptr @phi_translate_1, ptr @get_max_value_id, i64 490317}
!531 = !{ptr @phi_translate_1, ptr @VEC_bitmap_set_t_heap_safe_grow_cleared, i64 490317}
!532 = !{ptr @phi_translate_1, ptr @vn_nary_op_insert_pieces, i64 164204}
!533 = !{ptr @phi_translate_1, ptr @get_or_alloc_expression_id, i64 695890}
!534 = !{ptr @phi_translate_1, ptr @add_to_value, i64 695890}
!535 = !{ptr @phi_translate_1, ptr @VEC_vn_reference_op_s_base_iterate, i64 4898473}
!536 = !{ptr @phi_translate_1, ptr @VEC_vn_reference_op_s_heap_copy, i64 1317298}
!537 = !{ptr @phi_translate_1, ptr @VEC_vn_reference_op_s_base_replace, i64 3623451}
!538 = !{ptr @phi_translate_1, ptr @VEC_vn_reference_op_s_base_index, i64 2507}
!539 = !{ptr @phi_translate_1, ptr @vn_reference_fold_indirect, i64 551}
!540 = !{ptr @phi_translate_1, ptr @VEC_vn_reference_op_s_base_length, i64 1275022}
!541 = !{ptr @phi_translate_1, ptr @VEC_vn_reference_op_s_heap_free, i64 1371124}
!542 = !{ptr @phi_translate_1, ptr @translate_vuse_through_block, i64 702546}
!543 = !{ptr @phi_translate_1, ptr @vn_reference_lookup_pieces, i64 489646}
!544 = !{ptr @phi_translate_1, ptr @fancy_abort, i64 2}
!545 = !{ptr @phi_translate_1, ptr @vn_reference_insert_pieces, i64 336905}
!546 = !{ptr @phi_translate_1, ptr @gimple_code, i64 2064319}
!547 = !{ptr @phi_translate_1, ptr @gimple_bb, i64 1198902}
!548 = !{ptr @phi_translate_1, ptr @find_edge, i64 349246}
!549 = !{ptr @phi_translate_1, ptr @gimple_phi_arg_imm_use_ptr, i64 349245}
!550 = !{ptr @phi_translate_1, ptr @get_use_from_ptr, i64 349245}
!551 = !{ptr @phi_translate_1, ptr @ssa_undefined_value_p, i64 270171}
!552 = !{ptr @phi_translate_1, ptr @get_or_alloc_expr_for_name, i64 270146}
!553 = !{ptr @phi_trans_add, ptr @xmalloc, i64 1340064}
!554 = !{ptr @phi_trans_add, ptr @pre_expr_hash, i64 1340064}
!555 = !{ptr @phi_trans_add, ptr @iterative_hash_hashval_t, i64 1340064}
!556 = !{ptr @phi_trans_add, ptr @htab_find_slot_with_hash, i64 1340064}
!557 = !{ptr @phi_trans_add, ptr @free, i64 1}
!558 = !{ptr @find_leader_in_sets, ptr @bitmap_find_leader, i64 2529095}
!559 = !{ptr @get_representative_for, ptr @get_expr_value_id, i64 524581}
!560 = !{ptr @get_representative_for, ptr @VEC_bitmap_set_t_base_index, i64 411963}
!561 = !{ptr @get_representative_for, ptr @bmp_iter_set_init, i64 411963}
!562 = !{ptr @get_representative_for, ptr @bmp_iter_set, i64 874895}
!563 = !{ptr @get_representative_for, ptr @expression_for_id, i64 682879}
!564 = !{ptr @get_representative_for, ptr @bmp_iter_next, i64 462932}
!565 = !{ptr @get_representative_for, ptr @fwrite, i64 3}
!566 = !{ptr @get_representative_for, ptr @print_pre_expr, i64 2}
!567 = !{ptr @get_representative_for, ptr @fputc, i64 2}
!568 = !{ptr @get_representative_for, ptr @get_expr_type, i64 192016}
!569 = !{ptr @get_representative_for, ptr @create_tmp_var, i64 131440}
!570 = !{ptr @get_representative_for, ptr @get_var_ann, i64 131440}
!571 = !{ptr @get_representative_for, ptr @gimple_build_nop, i64 192016}
!572 = !{ptr @get_representative_for, ptr @make_ssa_name, i64 192016}
!573 = !{ptr @get_representative_for, ptr @VN_INFO_GET, i64 192016}
!574 = !{ptr @get_representative_for, ptr @VN_INFO, i64 192016}
!575 = !{ptr @get_representative_for, ptr @get_or_alloc_expr_for_name, i64 192016}
!576 = !{ptr @get_representative_for, ptr @add_to_value, i64 192016}
!577 = !{ptr @get_representative_for, ptr @print_generic_expr, i64 1}
!578 = !{ptr @get_or_alloc_expr_for_constant, ptr @lookup_expression_id, i64 107861}
!579 = !{ptr @get_or_alloc_expr_for_constant, ptr @expression_for_id, i64 91677}
!580 = !{ptr @get_or_alloc_expr_for_constant, ptr @pool_alloc, i64 16184}
!581 = !{ptr @get_or_alloc_expr_for_constant, ptr @alloc_expression_id, i64 16184}
!582 = !{ptr @get_or_alloc_expr_for_constant, ptr @get_or_alloc_constant_value_id, i64 16184}
!583 = !{ptr @get_or_alloc_expr_for_constant, ptr @add_to_value, i64 16184}
!584 = !{ptr @fully_constant_expression, ptr @is_gimple_min_invariant, i64 2521614}
!585 = !{ptr @fully_constant_expression, ptr @get_or_alloc_expr_for, i64 1606685}
!586 = !{ptr @fully_constant_expression, ptr @get_expr_value_id, i64 1606685}
!587 = !{ptr @fully_constant_expression, ptr @get_constant_for_value_id, i64 1606685}
!588 = !{ptr @fully_constant_expression, ptr @fold_convert_loc, i64 17603}
!589 = !{ptr @fully_constant_expression, ptr @fold_binary_loc, i64 1041646}
!590 = !{ptr @fully_constant_expression, ptr @fold_unary_loc, i64 17596}
!591 = !{ptr @fully_constant_expression, ptr @VEC_vn_reference_op_s_base_index, i64 1636141}
!592 = !{ptr @fully_constant_expression, ptr @VEC_vn_reference_op_s_base_length, i64 5995}
!593 = !{ptr @fully_constant_expression, ptr @build_call_expr_loc, i64 3001}
!594 = !{ptr @fully_constant_expression, ptr @get_or_alloc_expr_for_constant, i64 18313}
!595 = !{ptr @VEC_vn_reference_op_s_heap_copy, ptr @vec_heap_o_reserve_exact, i64 1219395}
!596 = !{ptr @translate_vuse_through_block, ptr @gimple_bb, i64 748531}
!597 = !{ptr @translate_vuse_through_block, ptr @ao_ref_init_from_vn_reference, i64 443893}
!598 = !{ptr @translate_vuse_through_block, ptr @gimple_code, i64 486013}
!599 = !{ptr @translate_vuse_through_block, ptr @stmt_may_clobber_ref_p_1, i64 46074}
!600 = !{ptr @translate_vuse_through_block, ptr @gimple_vuse, i64 45984}
!601 = !{ptr @translate_vuse_through_block, ptr @find_edge, i64 439721}
!602 = !{ptr @translate_vuse_through_block, ptr @get_continuation_for_phi, i64 428811}
!603 = !{ptr @translate_vuse_through_block, ptr @bitmap_obstack_free, i64 196450}
!604 = !{ptr @translate_vuse_through_block, ptr @gimple_phi_arg_imm_use_ptr, i64 866769}
!605 = !{ptr @translate_vuse_through_block, ptr @get_use_from_ptr, i64 439721}
!606 = !{ptr @bitmap_find_leader, ptr @value_id_constant_p, i64 5841383}
!607 = !{ptr @bitmap_find_leader, ptr @VEC_bitmap_set_t_base_index, i64 2953292}
!608 = !{ptr @bitmap_find_leader, ptr @bmp_iter_set_init, i64 42876}
!609 = !{ptr @bitmap_find_leader, ptr @bmp_iter_set, i64 755743}
!610 = !{ptr @bitmap_find_leader, ptr @expression_for_id, i64 3644594}
!611 = !{ptr @bitmap_find_leader, ptr @bmp_iter_next, i64 712869}
!612 = !{ptr @bitmap_find_leader, ptr @bitmap_set_contains_value, i64 5818387}
!613 = !{ptr @bitmap_find_leader, ptr @bmp_iter_and_init, i64 2910416}
!614 = !{ptr @bitmap_find_leader, ptr @bmp_iter_and, i64 2910418}
!615 = !{ptr @bitmap_find_leader, ptr @gimple_code, i64 6}
!616 = !{ptr @bitmap_find_leader, ptr @gimple_bb, i64 10}
!617 = !{ptr @bitmap_find_leader, ptr @gimple_uid, i64 8}
!618 = !{ptr @bitmap_set_contains_value, ptr @value_id_constant_p, i64 32720047}
!619 = !{ptr @bitmap_set_contains_value, ptr @bitmap_bit_p, i64 30990090}
!620 = !{ptr @get_expr_type, ptr @fancy_abort, i64 1}
!621 = !{ptr @get_var_ann, ptr @create_var_ann, i64 177423}
!622 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 250833}
!623 = !{ptr @get_or_alloc_expr_for, ptr @get_or_alloc_expr_for_name, i64 1624411}
!624 = !{ptr @get_or_alloc_expr_for, ptr @is_gimple_min_invariant, i64 10972}
!625 = !{ptr @get_or_alloc_expr_for, ptr @get_or_alloc_expr_for_constant, i64 9537}
!626 = !{ptr @get_or_alloc_expr_for, ptr @vn_nary_op_lookup, i64 1435}
!627 = !{ptr @get_or_alloc_expr_for, ptr @pool_alloc, i64 1434}
!628 = !{ptr @get_or_alloc_expr_for, ptr @lookup_expression_id, i64 1434}
!629 = !{ptr @get_or_alloc_expr_for, ptr @pool_free, i64 314}
!630 = !{ptr @get_or_alloc_expr_for, ptr @expression_for_id, i64 314}
!631 = !{ptr @get_or_alloc_expr_for, ptr @alloc_expression_id, i64 1120}
!632 = !{ptr @get_constant_for_value_id, ptr @value_id_constant_p, i64 1606689}
!633 = !{ptr @get_constant_for_value_id, ptr @VEC_bitmap_set_t_base_index, i64 6}
!634 = !{ptr @get_constant_for_value_id, ptr @bmp_iter_set_init, i64 6}
!635 = !{ptr @get_constant_for_value_id, ptr @bmp_iter_set, i64 7}
!636 = !{ptr @get_constant_for_value_id, ptr @expression_for_id, i64 7}
!637 = !{ptr @get_constant_for_value_id, ptr @bmp_iter_next, i64 1}
!638 = !{ptr @bitmap_set_replace_value, ptr @value_id_constant_p, i64 3937797}
!639 = !{ptr @bitmap_set_replace_value, ptr @bitmap_set_contains_value, i64 3937796}
!640 = !{ptr @bitmap_set_replace_value, ptr @VEC_bitmap_set_t_base_index, i64 3937795}
!641 = !{ptr @bitmap_set_replace_value, ptr @bmp_iter_set_init, i64 3937795}
!642 = !{ptr @bitmap_set_replace_value, ptr @bmp_iter_set, i64 11488281}
!643 = !{ptr @bitmap_set_replace_value, ptr @bitmap_bit_p, i64 11475171}
!644 = !{ptr @bitmap_set_replace_value, ptr @bitmap_clear_bit, i64 3924685}
!645 = !{ptr @bitmap_set_replace_value, ptr @get_expression_id, i64 3924685}
!646 = !{ptr @bitmap_set_replace_value, ptr @bitmap_set_bit, i64 3924685}
!647 = !{ptr @bitmap_set_replace_value, ptr @bmp_iter_next, i64 7550486}
!648 = !{ptr @valid_in_sets, ptr @bitmap_set_contains_expr, i64 3011240}
!649 = !{ptr @valid_in_sets, ptr @lookup_expression_id, i64 3469183}
!650 = !{ptr @valid_in_sets, ptr @get_expr_value_id, i64 3751446}
!651 = !{ptr @valid_in_sets, ptr @bitmap_set_contains_value, i64 3751446}
!652 = !{ptr @valid_in_sets, ptr @vn_nary_may_trap, i64 222873}
!653 = !{ptr @valid_in_sets, ptr @VEC_vn_reference_op_s_base_iterate, i64 13713913}
!654 = !{ptr @valid_in_sets, ptr @vro_valid_in_sets, i64 10352496}
!655 = !{ptr @valid_in_sets, ptr @gimple_nop_p, i64 3356041}
!656 = !{ptr @valid_in_sets, ptr @gimple_bb, i64 2861174}
!657 = !{ptr @valid_in_sets, ptr @dominated_by_p, i64 2153360}
!658 = !{ptr @valid_in_sets, ptr @value_dies_in_block_x, i64 3331609}
!659 = !{ptr @valid_in_sets, ptr @fancy_abort, i64 1}
!660 = !{ptr @bitmap_remove_from_set, ptr @get_expr_value_id, i64 1312862}
!661 = !{ptr @bitmap_remove_from_set, ptr @value_id_constant_p, i64 1312862}
!662 = !{ptr @bitmap_remove_from_set, ptr @bitmap_clear_bit, i64 2625722}
!663 = !{ptr @bitmap_remove_from_set, ptr @get_expression_id, i64 1312861}
!664 = !{ptr @bitmap_set_contains_expr, ptr @get_expression_id, i64 3011240}
!665 = !{ptr @bitmap_set_contains_expr, ptr @bitmap_bit_p, i64 3011240}
!666 = !{ptr @vro_valid_in_sets, ptr @lookup_expression_id, i64 2603116}
!667 = !{ptr @vro_valid_in_sets, ptr @get_expr_value_id, i64 3059465}
!668 = !{ptr @vro_valid_in_sets, ptr @bitmap_set_contains_value, i64 3059465}
!669 = !{ptr @value_dies_in_block_x, ptr @get_expression_id, i64 3333031}
!670 = !{ptr @value_dies_in_block_x, ptr @bitmap_bit_p, i64 4892208}
!671 = !{ptr @value_dies_in_block_x, ptr @gsi_start_bb, i64 1505198}
!672 = !{ptr @value_dies_in_block_x, ptr @gsi_end_p, i64 2745522}
!673 = !{ptr @value_dies_in_block_x, ptr @gsi_stmt, i64 2167855}
!674 = !{ptr @value_dies_in_block_x, ptr @gimple_vuse, i64 2167855}
!675 = !{ptr @value_dies_in_block_x, ptr @gimple_vdef, i64 1383497}
!676 = !{ptr @value_dies_in_block_x, ptr @ao_ref_init_from_vn_reference, i64 234082}
!677 = !{ptr @value_dies_in_block_x, ptr @stmt_may_clobber_ref_p_1, i64 304963}
!678 = !{ptr @value_dies_in_block_x, ptr @gsi_next, i64 1240324}
!679 = !{ptr @value_dies_in_block_x, ptr @bitmap_obstack_alloc_stat, i64 257900}
!680 = !{ptr @value_dies_in_block_x, ptr @bitmap_set_bit, i64 1629358}
!681 = !{ptr @bitmap_set_subtract_values, ptr @bitmap_obstack_alloc_stat, i64 578511}
!682 = !{ptr @bitmap_set_subtract_values, ptr @bitmap_copy, i64 578511}
!683 = !{ptr @bitmap_set_subtract_values, ptr @bmp_iter_set_init, i64 578511}
!684 = !{ptr @bitmap_set_subtract_values, ptr @bmp_iter_set, i64 7192155}
!685 = !{ptr @bitmap_set_subtract_values, ptr @expression_for_id, i64 6613644}
!686 = !{ptr @bitmap_set_subtract_values, ptr @get_expr_value_id, i64 6613644}
!687 = !{ptr @bitmap_set_subtract_values, ptr @bitmap_set_contains_value, i64 6613644}
!688 = !{ptr @bitmap_set_subtract_values, ptr @bitmap_remove_from_set, i64 726486}
!689 = !{ptr @bitmap_set_subtract_values, ptr @bmp_iter_next, i64 6613644}
!690 = !{ptr @bitmap_set_subtract_values, ptr @bitmap_obstack_free, i64 578511}
!691 = !{ptr @dependent_clean, ptr @sorted_array_from_bitmap_set, i64 578511}
!692 = !{ptr @dependent_clean, ptr @VEC_pre_expr_base_iterate, i64 6465670}
!693 = !{ptr @dependent_clean, ptr @valid_in_sets, i64 5887159}
!694 = !{ptr @dependent_clean, ptr @bitmap_remove_from_set, i64 373319}
!695 = !{ptr @dependent_clean, ptr @VEC_pre_expr_heap_free, i64 578511}
!696 = !{ptr @insert_aux, ptr @get_immediate_dominator, i64 818642}
!697 = !{ptr @insert_aux, ptr @bmp_iter_set_init, i64 808501}
!698 = !{ptr @insert_aux, ptr @bmp_iter_set, i64 3187167}
!699 = !{ptr @insert_aux, ptr @expression_for_id, i64 2378666}
!700 = !{ptr @insert_aux, ptr @bitmap_value_replace_in_set, i64 4757332}
!701 = !{ptr @insert_aux, ptr @bmp_iter_next, i64 2378666}
!702 = !{ptr @insert_aux, ptr @single_pred_p, i64 808502}
!703 = !{ptr @insert_aux, ptr @do_regular_insertion, i64 174059}
!704 = !{ptr @insert_aux, ptr @do_partial_partial_insertion, i64 174058}
!705 = !{ptr @insert_aux, ptr @first_dom_son, i64 818643}
!706 = !{ptr @insert_aux, ptr @insert_aux, i64 808504}
!707 = !{ptr @insert_aux, ptr @next_dom_son, i64 808504}
!708 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 808504}
!709 = !{ptr @do_regular_insertion, ptr @sorted_array_from_bitmap_set, i64 174059}
!710 = !{ptr @do_regular_insertion, ptr @VEC_pre_expr_base_iterate, i64 988774}
!711 = !{ptr @do_regular_insertion, ptr @get_expr_value_id, i64 1446321}
!712 = !{ptr @do_regular_insertion, ptr @bitmap_set_contains_value, i64 829590}
!713 = !{ptr @do_regular_insertion, ptr @xcalloc, i64 387655}
!714 = !{ptr @do_regular_insertion, ptr @ei_start_1, i64 387655}
!715 = !{ptr @do_regular_insertion, ptr @ei_cond, i64 1406520}
!716 = !{ptr @do_regular_insertion, ptr @fancy_abort, i64 1}
!717 = !{ptr @do_regular_insertion, ptr @phi_translate, i64 1020058}
!718 = !{ptr @do_regular_insertion, ptr @fully_constant_expression, i64 1018865}
!719 = !{ptr @do_regular_insertion, ptr @bitmap_find_leader, i64 1018865}
!720 = !{ptr @do_regular_insertion, ptr @optimize_edge_for_speed_p, i64 64745}
!721 = !{ptr @do_regular_insertion, ptr @pre_expr_eq, i64 23551}
!722 = !{ptr @do_regular_insertion, ptr @ei_next, i64 1018865}
!723 = !{ptr @do_regular_insertion, ptr @dbg_cnt, i64 386461}
!724 = !{ptr @do_regular_insertion, ptr @get_expression_id, i64 386443}
!725 = !{ptr @do_regular_insertion, ptr @insert_into_preds_of_block, i64 386443}
!726 = !{ptr @do_regular_insertion, ptr @free, i64 387655}
!727 = !{ptr @do_regular_insertion, ptr @VEC_pre_expr_heap_free, i64 174059}
!728 = !{ptr @do_partial_partial_insertion, ptr @sorted_array_from_bitmap_set, i64 174059}
!729 = !{ptr @do_partial_partial_insertion, ptr @VEC_pre_expr_base_iterate, i64 1884937}
!730 = !{ptr @do_partial_partial_insertion, ptr @get_expr_value_id, i64 2592673}
!731 = !{ptr @do_partial_partial_insertion, ptr @bitmap_set_contains_value, i64 2588347}
!732 = !{ptr @do_partial_partial_insertion, ptr @xcalloc, i64 1260657}
!733 = !{ptr @do_partial_partial_insertion, ptr @ei_start_1, i64 1260657}
!734 = !{ptr @do_partial_partial_insertion, ptr @ei_cond, i64 1297378}
!735 = !{ptr @do_partial_partial_insertion, ptr @fancy_abort, i64 1}
!736 = !{ptr @do_partial_partial_insertion, ptr @phi_translate, i64 1296898}
!737 = !{ptr @do_partial_partial_insertion, ptr @fully_constant_expression, i64 1295567}
!738 = !{ptr @do_partial_partial_insertion, ptr @bitmap_find_leader, i64 1295567}
!739 = !{ptr @do_partial_partial_insertion, ptr @ei_next, i64 36721}
!740 = !{ptr @do_partial_partial_insertion, ptr @dbg_cnt, i64 480}
!741 = !{ptr @do_partial_partial_insertion, ptr @get_expression_id, i64 480}
!742 = !{ptr @do_partial_partial_insertion, ptr @insert_into_preds_of_block, i64 480}
!743 = !{ptr @do_partial_partial_insertion, ptr @free, i64 1260657}
!744 = !{ptr @do_partial_partial_insertion, ptr @VEC_pre_expr_heap_free, i64 174059}
!745 = !{ptr @insert_into_preds_of_block, ptr @expression_for_id, i64 24667}
!746 = !{ptr @insert_into_preds_of_block, ptr @get_expr_value_id, i64 24667}
!747 = !{ptr @insert_into_preds_of_block, ptr @get_expr_type, i64 69097}
!748 = !{ptr @insert_into_preds_of_block, ptr @VEC_edge_base_length, i64 18521}
!749 = !{ptr @insert_into_preds_of_block, ptr @VEC_edge_base_index, i64 32650}
!750 = !{ptr @insert_into_preds_of_block, ptr @flow_bb_inside_loop_p, i64 32650}
!751 = !{ptr @insert_into_preds_of_block, ptr @inhibit_phi_insertion, i64 2839}
!752 = !{ptr @insert_into_preds_of_block, ptr @ei_start_1, i64 24667}
!753 = !{ptr @insert_into_preds_of_block, ptr @ei_cond, i64 146349}
!754 = !{ptr @insert_into_preds_of_block, ptr @create_expression_by_pieces, i64 18674}
!755 = !{ptr @insert_into_preds_of_block, ptr @fancy_abort, i64 2}
!756 = !{ptr @insert_into_preds_of_block, ptr @gsi_insert_seq_on_edge, i64 18675}
!757 = !{ptr @insert_into_preds_of_block, ptr @useless_type_conversion_p, i64 46191}
!758 = !{ptr @insert_into_preds_of_block, ptr @fold_convert_loc, i64 2}
!759 = !{ptr @insert_into_preds_of_block, ptr @is_gimple_min_invariant, i64 1}
!760 = !{ptr @insert_into_preds_of_block, ptr @gsi_stmt, i64 8}
!761 = !{ptr @insert_into_preds_of_block, ptr @VEC_gimple_heap_safe_push, i64 14457}
!762 = !{ptr @insert_into_preds_of_block, ptr @gimple_set_plf, i64 14457}
!763 = !{ptr @insert_into_preds_of_block, ptr @gsi_next, i64 8}
!764 = !{ptr @insert_into_preds_of_block, ptr @gsi_end_p, i64 9}
!765 = !{ptr @insert_into_preds_of_block, ptr @force_gimple_operand, i64 1}
!766 = !{ptr @insert_into_preds_of_block, ptr @VN_INFO, i64 14452}
!767 = !{ptr @insert_into_preds_of_block, ptr @VN_INFO_GET, i64 14450}
!768 = !{ptr @insert_into_preds_of_block, ptr @gsi_start, i64 1}
!769 = !{ptr @insert_into_preds_of_block, ptr @get_or_alloc_expr_for_name, i64 33125}
!770 = !{ptr @insert_into_preds_of_block, ptr @ei_next, i64 107233}
!771 = !{ptr @insert_into_preds_of_block, ptr @create_tmp_var, i64 9328}
!772 = !{ptr @insert_into_preds_of_block, ptr @get_var_ann, i64 9328}
!773 = !{ptr @insert_into_preds_of_block, ptr @add_referenced_var, i64 14449}
!774 = !{ptr @insert_into_preds_of_block, ptr @create_phi_node, i64 14449}
!775 = !{ptr @insert_into_preds_of_block, ptr @gimple_phi_result, i64 57796}
!776 = !{ptr @insert_into_preds_of_block, ptr @bitmap_set_bit, i64 14449}
!777 = !{ptr @insert_into_preds_of_block, ptr @add_phi_arg, i64 43399}
!778 = !{ptr @insert_into_preds_of_block, ptr @add_to_value, i64 14449}
!779 = !{ptr @insert_into_preds_of_block, ptr @bitmap_insert_into_set, i64 28898}
!780 = !{ptr @insert_into_preds_of_block, ptr @bitmap_value_replace_in_set, i64 14449}
!781 = !{ptr @inhibit_phi_insertion, ptr @VEC_vn_reference_op_s_base_iterate, i64 10817}
!782 = !{ptr @inhibit_phi_insertion, ptr @gimple_bb, i64 2237}
!783 = !{ptr @inhibit_phi_insertion, ptr @flow_bb_inside_loop_p, i64 1767}
!784 = !{ptr @inhibit_phi_insertion, ptr @simple_iv, i64 587}
!785 = !{ptr @create_expression_by_pieces, ptr @get_expr_type, i64 1435}
!786 = !{ptr @create_expression_by_pieces, ptr @create_component_ref_by_pieces, i64 11537}
!787 = !{ptr @create_expression_by_pieces, ptr @get_or_alloc_expr_for, i64 14063}
!788 = !{ptr @create_expression_by_pieces, ptr @find_or_generate_expression, i64 14063}
!789 = !{ptr @create_expression_by_pieces, ptr @fold_convert_loc, i64 12628}
!790 = !{ptr @create_expression_by_pieces, ptr @fold_build2_stat_loc, i64 5230}
!791 = !{ptr @create_expression_by_pieces, ptr @fold_build1_stat_loc, i64 2167}
!792 = !{ptr @create_expression_by_pieces, ptr @useless_type_conversion_p, i64 18936}
!793 = !{ptr @create_expression_by_pieces, ptr @unshare_expr, i64 18936}
!794 = !{ptr @create_expression_by_pieces, ptr @force_gimple_operand, i64 18936}
!795 = !{ptr @create_expression_by_pieces, ptr @gsi_start, i64 96}
!796 = !{ptr @create_expression_by_pieces, ptr @gsi_end_p, i64 192}
!797 = !{ptr @create_expression_by_pieces, ptr @gsi_stmt, i64 96}
!798 = !{ptr @create_expression_by_pieces, ptr @gimple_get_lhs, i64 96}
!799 = !{ptr @create_expression_by_pieces, ptr @VEC_gimple_heap_safe_push, i64 19032}
!800 = !{ptr @create_expression_by_pieces, ptr @VN_INFO_GET, i64 19031}
!801 = !{ptr @create_expression_by_pieces, ptr @get_next_value_id, i64 95}
!802 = !{ptr @create_expression_by_pieces, ptr @VN_INFO, i64 19126}
!803 = !{ptr @create_expression_by_pieces, ptr @get_or_alloc_expr_for_name, i64 19031}
!804 = !{ptr @create_expression_by_pieces, ptr @add_to_value, i64 19031}
!805 = !{ptr @create_expression_by_pieces, ptr @bitmap_value_replace_in_set, i64 38058}
!806 = !{ptr @create_expression_by_pieces, ptr @mark_symbols_for_renaming, i64 19032}
!807 = !{ptr @create_expression_by_pieces, ptr @gsi_next, i64 96}
!808 = !{ptr @create_expression_by_pieces, ptr @gimple_seq_add_seq, i64 96}
!809 = !{ptr @create_expression_by_pieces, ptr @create_tmp_var, i64 9359}
!810 = !{ptr @create_expression_by_pieces, ptr @get_var_ann, i64 9359}
!811 = !{ptr @create_expression_by_pieces, ptr @add_referenced_var, i64 18936}
!812 = !{ptr @create_expression_by_pieces, ptr @gimple_build_assign_stat, i64 18936}
!813 = !{ptr @create_expression_by_pieces, ptr @make_ssa_name, i64 18936}
!814 = !{ptr @create_expression_by_pieces, ptr @gimple_assign_set_lhs, i64 18936}
!815 = !{ptr @create_expression_by_pieces, ptr @gimple_set_plf, i64 18936}
!816 = !{ptr @create_expression_by_pieces, ptr @gimple_seq_add_stmt, i64 18936}
!817 = !{ptr @create_expression_by_pieces, ptr @get_expr_value_id, i64 18936}
!818 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 95}
!819 = !{ptr @gsi_start, ptr @gimple_bb, i64 93}
!820 = !{ptr @create_component_ref_by_pieces, ptr @create_component_ref_by_pieces_1, i64 11539}
!821 = !{ptr @find_or_generate_expression, ptr @get_expr_value_id, i64 27524}
!822 = !{ptr @find_or_generate_expression, ptr @bitmap_find_leader, i64 27260}
!823 = !{ptr @find_or_generate_expression, ptr @VEC_bitmap_set_t_base_index, i64 264}
!824 = !{ptr @find_or_generate_expression, ptr @bmp_iter_set_init, i64 264}
!825 = !{ptr @find_or_generate_expression, ptr @bmp_iter_set, i64 362}
!826 = !{ptr @find_or_generate_expression, ptr @expression_for_id, i64 360}
!827 = !{ptr @find_or_generate_expression, ptr @bmp_iter_next, i64 98}
!828 = !{ptr @find_or_generate_expression, ptr @get_expr_type, i64 261}
!829 = !{ptr @find_or_generate_expression, ptr @create_expression_by_pieces, i64 261}
!830 = !{ptr @find_or_generate_expression, ptr @fancy_abort, i64 1}
!831 = !{ptr @gimple_assign_set_lhs, ptr @gimple_set_op, i64 18940}
!832 = !{ptr @create_component_ref_by_pieces_1, ptr @VEC_vn_reference_op_s_base_index, i64 32441}
!833 = !{ptr @create_component_ref_by_pieces_1, ptr @VEC_vn_reference_op_s_base_length, i64 111}
!834 = !{ptr @create_component_ref_by_pieces_1, ptr @xmalloc, i64 41}
!835 = !{ptr @create_component_ref_by_pieces_1, ptr @create_component_ref_by_pieces_1, i64 20898}
!836 = !{ptr @create_component_ref_by_pieces_1, ptr @build_fold_addr_expr_loc, i64 1}
!837 = !{ptr @create_component_ref_by_pieces_1, ptr @build_call_array_loc, i64 41}
!838 = !{ptr @create_component_ref_by_pieces_1, ptr @free, i64 41}
!839 = !{ptr @create_component_ref_by_pieces_1, ptr @get_or_alloc_expr_for, i64 13188}
!840 = !{ptr @create_component_ref_by_pieces_1, ptr @find_or_generate_expression, i64 13185}
!841 = !{ptr @create_component_ref_by_pieces_1, ptr @is_gimple_min_invariant, i64 9}
!842 = !{ptr @create_component_ref_by_pieces_1, ptr @fancy_abort, i64 2}
!843 = !{ptr @create_component_ref_by_pieces_1, ptr @fold_build1_stat_loc, i64 7932}
!844 = !{ptr @create_component_ref_by_pieces_1, ptr @build_pointer_type, i64 7931}
!845 = !{ptr @create_component_ref_by_pieces_1, ptr @fold_convert_loc, i64 7931}
!846 = !{ptr @create_component_ref_by_pieces_1, ptr @fold_build2_stat_loc, i64 1}
!847 = !{ptr @create_component_ref_by_pieces_1, ptr @fold_build3_stat_loc, i64 11299}
!848 = !{ptr @create_component_ref_by_pieces_1, ptr @size_int_kind, i64 1625}
!849 = !{ptr @create_component_ref_by_pieces_1, ptr @size_binop_loc, i64 1625}
!850 = !{ptr @create_component_ref_by_pieces_1, ptr @build4_stat, i64 1016}
!851 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 19787}
!852 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 19786}
!853 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!854 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 19787}
!855 = !{ptr @gimple_has_lhs, ptr @is_gimple_assign, i64 1455174}
!856 = !{ptr @gimple_has_lhs, ptr @is_gimple_call, i64 539023}
!857 = !{ptr @gimple_has_lhs, ptr @gimple_call_lhs, i64 184993}
!858 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 98489}
!859 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 97465}
!860 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 97465}
!861 = !{ptr @do_SCCVN_insertion, ptr @gimple_bb, i64 1434}
!862 = !{ptr @do_SCCVN_insertion, ptr @vn_get_expr_for, i64 1434}
!863 = !{ptr @do_SCCVN_insertion, ptr @get_or_alloc_expr_for, i64 1434}
!864 = !{ptr @do_SCCVN_insertion, ptr @create_expression_by_pieces, i64 1433}
!865 = !{ptr @do_SCCVN_insertion, ptr @gsi_for_stmt, i64 3}
!866 = !{ptr @do_SCCVN_insertion, ptr @gsi_insert_seq_before, i64 3}
!867 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 261037}
!868 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 286271}
!869 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 286271}
!870 = !{ptr @gimple_cond_make_false, ptr @gimple_cond_set_lhs, i64 218}
!871 = !{ptr @gimple_cond_make_false, ptr @gimple_cond_set_rhs, i64 218}
!872 = !{ptr @gimple_cond_make_true, ptr @gimple_cond_set_lhs, i64 188}
!873 = !{ptr @gimple_cond_make_true, ptr @gimple_cond_set_rhs, i64 188}
!874 = !{ptr @gimple_call_set_fn, ptr @gimple_set_op, i64 35}
!875 = !{ptr @gsi_after_labels, ptr @gsi_start_bb, i64 2551}
!876 = !{ptr @gsi_after_labels, ptr @gsi_end_p, i64 2765}
!877 = !{ptr @gsi_after_labels, ptr @gsi_stmt, i64 2656}
!878 = !{ptr @gsi_after_labels, ptr @gimple_code, i64 2656}
!879 = !{ptr @gsi_after_labels, ptr @gsi_next, i64 214}
!880 = !{ptr @single_imm_use, ptr @is_gimple_debug, i64 1631}
!881 = !{ptr @single_imm_use, ptr @single_imm_use_1, i64 1}
!882 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 1632}
!883 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 1632}
!884 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 1455174}
!885 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 184993}
!886 = !{ptr @gimple_cond_set_lhs, ptr @gimple_set_op, i64 406}
!887 = !{ptr @gimple_cond_set_rhs, ptr @gimple_set_op, i64 406}
!888 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 1632}
!889 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 1630}
!890 = !{ptr @VEC_bitmap_set_t_heap_free, ptr @free, i64 13303}
!891 = !{ptr @VEC_unsigned_heap_free, ptr @free, i64 12959}
!892 = !{ptr @execute_fre, ptr @execute_pre, i64 6652}
!893 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!894 = !{!"function_entry_count", i64 2841005}
!895 = !{!"branch_weights", i32 2841006, i32 1}
!896 = !{!"branch_weights", i32 2837005, i32 4002}
!897 = !{!"branch_weights", i32 1384735, i32 1456272}
!898 = !{!"function_entry_count", i64 68491126}
!899 = !{!"tree-ssa-pre.c:get_expr_value_id"}
!900 = !{!901, !902, i64 0}
!901 = !{!"pre_expr_d", !902, i64 0, !902, i64 4, !903, i64 8}
!902 = !{!"int", !903, i64 0}
!903 = !{!"omnipotent char", !904, i64 0}
!904 = !{!"Simple C/C++ TBAA"}
!905 = !{!"branch_weights", i32 1, i32 180383, i32 34533796, i32 15673731, i32 18103220}
!906 = !{!903, !903, i64 0}
!907 = !{!"branch_weights", i32 1, i32 180383}
!908 = !{!909, !902, i64 16}
!909 = !{!"vn_ssa_aux", !910, i64 0, !910, i64 8, !902, i64 16, !902, i64 20, !902, i64 24, !902, i64 28, !902, i64 28, !902, i64 28, !902, i64 28, !902, i64 28}
!910 = !{!"any pointer", !903, i64 0}
!911 = !{!912, !902, i64 0}
!912 = !{!"vn_nary_op_s", !902, i64 0, !902, i64 4, !902, i64 6, !902, i64 8, !910, i64 16, !910, i64 24, !903, i64 32}
!913 = !{!914, !902, i64 0}
!914 = !{!"vn_reference_s", !902, i64 0, !902, i64 4, !910, i64 8, !902, i64 16, !910, i64 24, !910, i64 32, !910, i64 40}
!915 = !{!"function_entry_count", i64 3915687}
!916 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_base_length"}
!917 = !{!"branch_weights", i32 1, i32 3915688}
!918 = !{!919, !902, i64 0}
!919 = !{!"VEC_bitmap_set_t_base", !902, i64 0, !902, i64 4, !903, i64 8}
!920 = !{!"function_entry_count", i64 537341}
!921 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_heap_safe_grow_cleared"}
!922 = !{!910, !910, i64 0}
!923 = !{!"function_entry_count", i64 26432650}
!924 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_base_index"}
!925 = !{!"function_entry_count", i64 8197859}
!926 = !{!"tree-ssa-pre.c:bitmap_set_new"}
!927 = !{!928, !910, i64 0}
!928 = !{!"bitmap_set", !910, i64 0, !910, i64 8}
!929 = !{!928, !910, i64 8}
!930 = !{!"function_entry_count", i64 1384734}
!931 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_base_replace"}
!932 = !{!"function_entry_count", i64 5703980}
!933 = !{!"tree-ssa-pre.c:bitmap_insert_into_set_1"}
!934 = !{!"branch_weights", i32 2862976, i32 2841006}
!935 = !{!"branch_weights", i32 2862812, i32 165}
!936 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_heap_safe_grow"}
!937 = !{!"branch_weights", i32 1, i32 537342}
!938 = !{}
!939 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_base_address"}
!940 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_heap_reserve_exact"}
!941 = !{i32 0, i32 2}
!942 = !{!"branch_weights", i32 524038, i32 13305}
!943 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_base_space"}
!944 = !{!919, !902, i64 4}
!945 = !{!"function_entry_count", i64 7125033}
!946 = !{!"tree-ssa-pre.c:get_or_alloc_expression_id"}
!947 = !{!"branch_weights", i32 1107076, i32 6017959}
!948 = !{!901, !902, i64 4}
!949 = !{!"function_entry_count", i64 17905244}
!950 = !{!"tree-ssa-pre.c:lookup_expression_id"}
!951 = !{!"branch_weights", i32 14937333, i32 2967913}
!952 = !{!"branch_weights", i32 14791844, i32 145490}
!953 = !{!"branch_weights", i32 1124380, i32 1843534}
!954 = !{!"function_entry_count", i64 2421316}
!955 = !{!"tree-ssa-pre.c:alloc_expression_id"}
!956 = !{!902, !902, i64 0}
!957 = !{!"branch_weights", i32 1, i32 2421317}
!958 = !{!"branch_weights", i32 1296938, i32 1124380}
!959 = !{!960, !910, i64 24}
!960 = !{!"function", !910, i64 0, !910, i64 8, !910, i64 16, !910, i64 24, !910, i64 32, !910, i64 40, !910, i64 48, !910, i64 56, !910, i64 64, !910, i64 72, !910, i64 80, !910, i64 88, !910, i64 96, !902, i64 104, !902, i64 108, !902, i64 112, !902, i64 116, !902, i64 120, !902, i64 124, !910, i64 128, !902, i64 136, !902, i64 137, !902, i64 138, !902, i64 138, !902, i64 138, !902, i64 138, !902, i64 138, !902, i64 138, !902, i64 138, !902, i64 139, !902, i64 139, !902, i64 139, !902, i64 139, !902, i64 139, !902, i64 139, !902, i64 139}
!961 = !{!962, !910, i64 16}
!962 = !{!"gimple_df", !910, i64 0, !910, i64 8, !910, i64 16, !910, i64 24, !963, i64 32, !963, i64 48, !910, i64 64, !910, i64 72, !910, i64 80, !910, i64 88, !902, i64 96, !964, i64 104}
!963 = !{!"pt_solution", !902, i64 0, !902, i64 0, !902, i64 0, !902, i64 0, !902, i64 0, !902, i64 0, !910, i64 8}
!964 = !{!"ssa_operands", !910, i64 0, !902, i64 8, !902, i64 12, !903, i64 16, !910, i64 24, !910, i64 32}
!965 = !{!"branch_weights", i32 1296938, i32 1}
!966 = !{!"branch_weights", i32 1124380, i32 1}
!967 = !{!"function_entry_count", i64 17531206}
!968 = !{!"tree-ssa-pre.c:VEC_unsigned_base_length"}
!969 = !{!"branch_weights", i32 12961, i32 17518247}
!970 = !{!971, !902, i64 0}
!971 = !{!"VEC_unsigned_base", !902, i64 0, !902, i64 4, !903, i64 8}
!972 = !{!"function_entry_count", i64 16088780}
!973 = !{!"tree-ssa-pre.c:VEC_unsigned_base_index"}
!974 = !{!"function_entry_count", i64 18733321}
!975 = !{!"tree-ssa-pre.c:VEC_pre_expr_heap_safe_push"}
!976 = !{!"function_entry_count", i64 1296937}
!977 = !{!"tree-ssa-pre.c:VEC_unsigned_heap_reserve"}
!978 = !{!"branch_weights", i32 27610, i32 1269329}
!979 = !{!"function_entry_count", i64 4383548}
!980 = !{!"tree-ssa-pre.c:VEC_tree_base_length"}
!981 = !{!"branch_weights", i32 1, i32 4383549}
!982 = !{!983, !902, i64 0}
!983 = !{!"VEC_tree_base", !902, i64 0, !902, i64 4, !903, i64 8}
!984 = !{!"tree-ssa-pre.c:VEC_unsigned_heap_safe_grow_cleared"}
!985 = !{!"tree-ssa-pre.c:VEC_unsigned_base_replace"}
!986 = !{!"tree-ssa-pre.c:VEC_pre_expr_heap_reserve"}
!987 = !{!"branch_weights", i32 81017, i32 18652306}
!988 = !{!"tree-ssa-pre.c:VEC_pre_expr_base_quick_push"}
!989 = !{!990, !902, i64 0}
!990 = !{!"VEC_pre_expr_base", !902, i64 0, !902, i64 4, !903, i64 8}
!991 = !{!"tree-ssa-pre.c:VEC_pre_expr_base_space"}
!992 = !{!"branch_weights", i32 13305, i32 18720018}
!993 = !{!990, !902, i64 4}
!994 = !{!"function_entry_count", i64 2593874}
!995 = !{!"tree-ssa-pre.c:VEC_unsigned_base_space"}
!996 = !{!"branch_weights", i32 12961, i32 2580915}
!997 = !{!971, !902, i64 4}
!998 = !{!"tree-ssa-pre.c:VEC_unsigned_heap_safe_grow"}
!999 = !{!"branch_weights", i32 1, i32 1296938}
!1000 = !{!"tree-ssa-pre.c:VEC_unsigned_base_address"}
!1001 = !{!"tree-ssa-pre.c:VEC_unsigned_heap_reserve_exact"}
!1002 = !{!"function_entry_count", i64 0}
!1003 = !{!"tree-ssa-pre.c:print_pre_expr"}
!1004 = distinct !{!1004, !1005}
!1005 = !{!"llvm.loop.mustprogress"}
!1006 = !{!914, !910, i64 32}
!1007 = !{!1008, !902, i64 0}
!1008 = !{!"vn_reference_op_struct", !902, i64 0, !910, i64 8, !910, i64 16, !910, i64 24, !910, i64 32}
!1009 = !{!1008, !910, i64 16}
!1010 = !{!1008, !910, i64 24}
!1011 = !{!1008, !910, i64 32}
!1012 = distinct !{!1012, !1005}
!1013 = !{!914, !910, i64 8}
!1014 = !{!"function_entry_count", i64 19837901}
!1015 = !{!"tree-ssa-pre.c:VEC_vn_reference_op_s_base_iterate"}
!1016 = !{!"branch_weights", i32 1, i32 19837902}
!1017 = !{!1018, !902, i64 0}
!1018 = !{!"VEC_vn_reference_op_s_base", !902, i64 0, !902, i64 4, !903, i64 8}
!1019 = !{!"branch_weights", i32 15347267, i32 4490636}
!1020 = !{!"function_entry_count", i64 1292662}
!1021 = !{!"tree-ssa-pre.c:VEC_vn_reference_op_s_base_length"}
!1022 = !{!"branch_weights", i32 1, i32 1292663}
!1023 = !{!"tree-ssa-pre.c:print_bitmap_set"}
!1024 = !{i8 0, i8 2}
!1025 = distinct !{!1025, !1005}
!1026 = !{!"function_entry_count", i64 28048208}
!1027 = !{!"tree-ssa-pre.c:bmp_iter_set_init"}
!1028 = !{!1029, !910, i64 0}
!1029 = !{!"bitmap_head_def", !910, i64 0, !910, i64 8, !902, i64 16, !910, i64 24}
!1030 = !{!1031, !910, i64 0}
!1031 = !{!"", !910, i64 0, !910, i64 8, !902, i64 16, !1032, i64 24}
!1032 = !{!"long", !903, i64 0}
!1033 = !{!1031, !910, i64 8}
!1034 = !{!"branch_weights", i32 1798737, i32 26249473}
!1035 = !{!1036, !902, i64 16}
!1036 = !{!"bitmap_element_def", !910, i64 0, !910, i64 8, !902, i64 16, !903, i64 24}
!1037 = !{!1031, !902, i64 16}
!1038 = !{!1032, !1032, i64 0}
!1039 = !{!1031, !1032, i64 24}
!1040 = !{!"function_entry_count", i64 111312411}
!1041 = !{!"tree-ssa-pre.c:bmp_iter_set"}
!1042 = !{!"branch_weights", i32 50203898, i32 61108515}
!1043 = !{!"branch_weights", i32 87423197, i32 1}
!1044 = !{!"branch_weights", i32 1206126948, i32 87423197}
!1045 = distinct !{!1045, !1005}
!1046 = !{!"branch_weights", i32 1, i32 36888062}
!1047 = !{!"branch_weights", i32 25374442, i32 26314684}
!1048 = !{!"branch_weights", i32 36888062, i32 14801063}
!1049 = distinct !{!1049, !1005}
!1050 = !{!1036, !910, i64 0}
!1051 = !{!"branch_weights", i32 23889215, i32 12998849}
!1052 = !{!"function_entry_count", i64 52503059}
!1053 = !{!"tree-ssa-pre.c:expression_for_id"}
!1054 = !{!"function_entry_count", i64 83264206}
!1055 = !{!"tree-ssa-pre.c:bmp_iter_next"}
!1056 = !{!"tree-ssa-pre.c:VEC_pre_expr_base_index"}
!1057 = !{!"function_entry_count", i64 6652}
!1058 = !{!"tree-ssa-pre.c:gate_pre"}
!1059 = !{!"tree-ssa-pre.c:do_pre"}
!1060 = !{!"function_entry_count", i64 13304}
!1061 = !{!"tree-ssa-pre.c:execute_pre"}
!1062 = !{!"branch_weights", i32 13305, i32 1}
!1063 = !{!"branch_weights", i32 6653, i32 6653}
!1064 = !{!"branch_weights", i32 1, i32 13305}
!1065 = !{!960, !910, i64 8}
!1066 = !{!1067, !910, i64 16}
!1067 = !{!"basic_block_def", !910, i64 0, !910, i64 8, !910, i64 16, !910, i64 24, !903, i64 32, !910, i64 48, !910, i64 56, !903, i64 64, !1032, i64 72, !902, i64 80, !902, i64 84, !902, i64 88, !902, i64 92, !902, i64 96}
!1068 = !{!1069, !910, i64 0}
!1069 = !{!"bb_bitmap_sets", !910, i64 0, !910, i64 8, !910, i64 16, !910, i64 24, !910, i64 32, !910, i64 40, !910, i64 48, !910, i64 56, !902, i64 64, !902, i64 64, !902, i64 64}
!1070 = !{!1067, !902, i64 80}
!1071 = !{!1069, !910, i64 8}
!1072 = !{!1069, !910, i64 16}
!1073 = !{!1069, !910, i64 24}
!1074 = distinct !{!1074, !1005}
!1075 = !{!1076, !902, i64 24}
!1076 = !{!"control_flow_graph", !910, i64 0, !910, i64 8, !910, i64 16, !902, i64 24, !902, i64 28, !902, i64 32, !910, i64 40, !902, i64 48, !903, i64 52, !903, i64 60, !902, i64 68, !902, i64 72}
!1077 = !{!"branch_weights", i32 6650, i32 4}
!1078 = !{!1079, !902, i64 4}
!1079 = !{!"", !902, i64 0, !902, i64 4, !902, i64 8, !902, i64 12, !902, i64 16}
!1080 = !{!1079, !902, i64 8}
!1081 = !{!1079, !902, i64 12}
!1082 = !{!1079, !902, i64 0}
!1083 = !{!1079, !902, i64 16}
!1084 = !{!"tree-ssa-pre.c:remove_dead_inserted_code"}
!1085 = !{!"branch_weights", i32 1, i32 6652}
!1086 = !{!"branch_weights", i32 22403, i32 11081}
!1087 = !{!"branch_weights", i32 6652, i32 26831}
!1088 = distinct !{!1088, !1005}
!1089 = !{i32 0, i32 256}
!1090 = !{!"branch_weights", i32 53027, i32 174866}
!1091 = !{!"branch_weights", i32 1, i32 53026}
!1092 = !{!"branch_weights", i32 132182, i32 13935}
!1093 = !{!"branch_weights", i32 53384, i32 78799}
!1094 = !{!"branch_weights", i32 93090, i32 53026}
!1095 = distinct !{!1095, !1005}
!1096 = !{!"branch_weights", i32 174865, i32 1}
!1097 = !{!"branch_weights", i32 182057, i32 138014}
!1098 = !{!"branch_weights", i32 145205, i32 174865}
!1099 = distinct !{!1099, !1005}
!1100 = !{!"branch_weights", i32 6652, i32 221240}
!1101 = distinct !{!1101, !1005}
!1102 = !{!"branch_weights", i32 6466, i32 27018}
!1103 = !{!"branch_weights", i32 6466, i32 1}
!1104 = !{i64 0, i64 8, !922, i64 8, i64 8, !922, i64 16, i64 8, !922}
!1105 = !{!"branch_weights", i32 2057, i32 4410}
!1106 = distinct !{!1106, !1005}
!1107 = !{!"tree-ssa-pre.c:init_pre"}
!1108 = !{!"branch_weights", i32 1, i32 13304}
!1109 = !{!"branch_weights", i32 13304, i32 658068}
!1110 = distinct !{!1110, !1005}
!1111 = distinct !{!1111, !1005}
!1112 = !{!"tree-ssa-pre.c:compute_avail"}
!1113 = !{!"branch_weights", i32 13304, i32 1}
!1114 = !{!"branch_weights", i32 319692, i32 1443376}
!1115 = !{!"branch_weights", i32 1404538, i32 38839}
!1116 = !{!"branch_weights", i32 38450, i32 390}
!1117 = !{!"branch_weights", i32 12987, i32 25464}
!1118 = !{!"branch_weights", i32 12706, i32 12759}
!1119 = !{!1076, !910, i64 0}
!1120 = !{!"branch_weights", i32 1749763, i32 13304}
!1121 = distinct !{!1121, !1005}
!1122 = !{!"branch_weights", i32 0, i32 -2147483648}
!1123 = distinct !{!1123, !1005}
!1124 = !{!"branch_weights", i32 1, i32 644764}
!1125 = !{!"branch_weights", i32 195184, i32 449580}
!1126 = !{!"branch_weights", i32 0, i32 195184}
!1127 = distinct !{!1127, !1005}
!1128 = !{!"branch_weights", i32 644763, i32 1}
!1129 = !{!"branch_weights", i32 1270182, i32 184994}
!1130 = !{!"branch_weights", i32 177765, i32 7230}
!1131 = !{!"branch_weights", i32 177164, i32 602}
!1132 = !{!"branch_weights", i32 600, i32 3}
!1133 = !{!"branch_weights", i32 903003, i32 552172}
!1134 = !{!"branch_weights", i32 398867, i32 504137}
!1135 = !{!"branch_weights", i32 0, i32 903003}
!1136 = distinct !{!1136, !1005}
!1137 = !{!"branch_weights", i32 1455158, i32 18}
!1138 = !{!"branch_weights", i32 1455158, i32 1}
!1139 = !{!"branch_weights", i32 340775, i32 13257, i32 184994, i32 916135}
!1140 = !{!"branch_weights", i32 7574, i32 5683}
!1141 = !{!"branch_weights", i32 0, i32 7574}
!1142 = distinct !{!1142, !1005}
!1143 = !{!"branch_weights", i32 174289, i32 10706}
!1144 = !{!"branch_weights", i32 27, i32 10680}
!1145 = !{!"branch_weights", i32 1, i32 10679}
!1146 = !{!"branch_weights", i32 1, i32 28157}
!1147 = !{!"branch_weights", i32 13396, i32 14762}
!1148 = !{!"branch_weights", i32 28157, i32 1}
!1149 = !{!"branch_weights", i32 10679, i32 17478}
!1150 = distinct !{!1150, !1005}
!1151 = !{!"branch_weights", i32 5236, i32 5445}
!1152 = !{i32 0, i32 65536}
!1153 = !{!"branch_weights", i32 158257, i32 91888, i32 152248, i32 24350, i32 79964, i32 409433}
!1154 = !{!"branch_weights", i32 2067, i32 266418}
!1155 = !{!"branch_weights", i32 1, i32 266417}
!1156 = !{!"branch_weights", i32 314362, i32 128280}
!1157 = !{!"branch_weights", i32 176224, i32 266417}
!1158 = distinct !{!1158, !1005}
!1159 = !{!"branch_weights", i32 78679, i32 410718}
!1160 = !{!"branch_weights", i32 1, i32 410717}
!1161 = !{!"branch_weights", i32 269056, i32 884139}
!1162 = !{!"branch_weights", i32 301600, i32 582540}
!1163 = !{!"branch_weights", i32 1041455, i32 111740}
!1164 = !{!"branch_weights", i32 1, i32 111740}
!1165 = !{!"branch_weights", i32 1052593, i32 100602}
!1166 = !{!"branch_weights", i32 1, i32 100602}
!1167 = !{!"branch_weights", i32 410717, i32 742477}
!1168 = distinct !{!1168, !1005}
!1169 = !{!"branch_weights", i32 158256, i32 1}
!1170 = !{!"branch_weights", i32 47949, i32 158256}
!1171 = distinct !{!1171, !1005}
!1172 = !{!"branch_weights", i32 340896, i32 336240}
!1173 = !{!"branch_weights", i32 810412, i32 644763}
!1174 = distinct !{!1174, !1005}
!1175 = !{!"branch_weights", i32 13304, i32 631460}
!1176 = !{!"branch_weights", i32 631460, i32 0}
!1177 = distinct !{!1177, !1005}
!1178 = distinct !{!1178, !1005}
!1179 = !{!"function_entry_count", i64 6649}
!1180 = !{!"tree-ssa-pre.c:compute_antic"}
!1181 = !{!1076, !902, i64 32}
!1182 = !{!1067, !910, i64 56}
!1183 = !{!1076, !910, i64 8}
!1184 = !{!"branch_weights", i32 1, i32 6649}
!1185 = !{i64 0, i64 4, !956, i64 8, i64 8, !922}
!1186 = !{i64 0, i64 8, !922}
!1187 = !{!"branch_weights", i32 1, i32 326260}
!1188 = !{!1189, !902, i64 48}
!1189 = !{!"edge_def", !910, i64 0, !910, i64 8, !903, i64 16, !910, i64 24, !910, i64 32, !902, i64 40, !902, i64 44, !902, i64 48, !902, i64 52, !1032, i64 56}
!1190 = !{!"branch_weights", i32 451451, i32 1}
!1191 = !{!"branch_weights", i32 326260, i32 125191}
!1192 = distinct !{!1192, !1005}
!1193 = !{!1069, !910, i64 32}
!1194 = !{!1069, !910, i64 40}
!1195 = !{!"branch_weights", i32 6649, i32 319612}
!1196 = distinct !{!1196, !1005}
!1197 = !{!"branch_weights", i32 1019100619, i32 1128383029}
!1198 = distinct !{!1198, !1005}
!1199 = !{!"branch_weights", i32 14012, i32 1}
!1200 = !{!"branch_weights", i32 14011, i32 1}
!1201 = !{!"branch_weights", i32 278436, i32 655079}
!1202 = !{!1076, !910, i64 16}
!1203 = !{!"branch_weights", i32 919503, i32 14011}
!1204 = distinct !{!1204, !1005}
!1205 = !{!"branch_weights", i32 1, i32 6650}
!1206 = !{!"branch_weights", i32 1135747596, i32 1011736052}
!1207 = distinct !{!1207, !1005}
!1208 = !{!"branch_weights", i32 12573, i32 1}
!1209 = !{!"branch_weights", i32 12572, i32 1}
!1210 = !{!"branch_weights", i32 361812, i32 578989}
!1211 = !{!"branch_weights", i32 928228, i32 12572}
!1212 = distinct !{!1212, !1005}
!1213 = !{!1214, !910, i64 0}
!1214 = !{!"simple_bitmap_def", !910, i64 0, !902, i64 8, !902, i64 12, !903, i64 16}
!1215 = !{!"tree-ssa-pre.c:insert"}
!1216 = !{!1069, !910, i64 48}
!1217 = !{!"branch_weights", i32 6649, i32 332910}
!1218 = distinct !{!1218, !1005}
!1219 = !{!"branch_weights", i32 6650, i32 3490}
!1220 = distinct !{!1220, !1005}
!1221 = !{!"tree-ssa-pre.c:eliminate"}
!1222 = distinct !{!1222, !1005}
!1223 = !{!"branch_weights", i32 10407, i32 2898}
!1224 = !{!"branch_weights", i32 434016, i32 1021160}
!1225 = !{!"branch_weights", i32 903003, i32 118158}
!1226 = !{!"branch_weights", i32 881452, i32 21552}
!1227 = !{!"branch_weights", i32 378654, i32 502799}
!1228 = !{!"branch_weights", i32 501843, i32 957}
!1229 = !{!"branch_weights", i32 880487, i32 10}
!1230 = !{!"branch_weights", i32 879692, i32 796}
!1231 = !{!"branch_weights", i32 378442, i32 501251}
!1232 = !{!"branch_weights", i32 1683, i32 878010}
!1233 = !{!"branch_weights", i32 3429, i32 99459, i32 -1283825139}
!1234 = !{!909, !910, i64 0}
!1235 = !{!"branch_weights", i32 7, i32 1677}
!1236 = !{!"branch_weights", i32 1, i32 1677}
!1237 = !{!"branch_weights", i32 1677, i32 1}
!1238 = !{!"branch_weights", i32 783272, i32 94739}
!1239 = !{!"branch_weights", i32 1, i32 783278}
!1240 = !{!"branch_weights", i32 783278, i32 1}
!1241 = !{!"branch_weights", i32 781844, i32 1435}
!1242 = !{!"branch_weights", i32 1, i32 1435}
!1243 = !{!"branch_weights", i32 -1612922814, i32 324405766}
!1244 = !{!"branch_weights", i32 22791, i32 71951}
!1245 = !{!"branch_weights", i32 1, i32 71951}
!1246 = !{!"branch_weights", i32 1, i32 94741}
!1247 = !{!"branch_weights", i32 94741, i32 1}
!1248 = !{!"branch_weights", i32 94713, i32 29}
!1249 = !{!"branch_weights", i32 15, i32 94727}
!1250 = !{!"branch_weights", i32 434328, i32 141157}
!1251 = !{!"branch_weights", i32 118058, i32 23100}
!1252 = !{!"branch_weights", i32 78293, i32 39766}
!1253 = !{!"branch_weights", i32 1074, i32 38693}
!1254 = !{!"branch_weights", i32 78293, i32 38693}
!1255 = !{!"branch_weights", i32 92247, i32 24739}
!1256 = !{!"branch_weights", i32 24393, i32 347}
!1257 = !{!"branch_weights", i32 347, i32 1}
!1258 = !{!"branch_weights", i32 286272, i32 172229}
!1259 = !{!"branch_weights", i32 286242, i32 31}
!1260 = !{!"branch_weights", i32 38231, i32 248042}
!1261 = !{!"branch_weights", i32 267362, i32 18911}
!1262 = !{!"branch_weights", i32 407, i32 18505}
!1263 = !{!"branch_weights", i32 189, i32 219}
!1264 = !{!"branch_weights", i32 184834, i32 1268666}
!1265 = !{!"branch_weights", i32 6549, i32 178286}
!1266 = !{!"branch_weights", i32 36, i32 6514}
!1267 = !{!"branch_weights", i32 36, i32 1}
!1268 = distinct !{!1268, !1005}
!1269 = !{!"branch_weights", i32 209633, i32 435131}
!1270 = !{!"branch_weights", i32 8573, i32 201061}
!1271 = !{!"branch_weights", i32 91695, i32 109367}
!1272 = !{!"branch_weights", i32 94918, i32 14450}
!1273 = distinct !{!1273, !1005}
!1274 = !{!"branch_weights", i32 39, i32 94880}
!1275 = !{!"branch_weights", i32 23700, i32 1848678, i32 -2048065094}
!1276 = !{!"branch_weights", i32 2089723103, i32 57760545}
!1277 = !{!"branch_weights", i32 2552, i32 1}
!1278 = !{!"branch_weights", i32 1, i32 2552}
!1279 = !{!"branch_weights", i32 2475, i32 78}
!1280 = !{!"branch_weights", i32 0, i32 209633}
!1281 = !{!"branch_weights", i32 2552, i32 347}
!1282 = !{!"branch_weights", i32 843, i32 1633}
!1283 = !{!"branch_weights", i32 1, i32 1633}
!1284 = !{!"branch_weights", i32 695, i32 1858}
!1285 = !{!"branch_weights", i32 2898, i32 0}
!1286 = distinct !{!1286, !1005}
!1287 = !{!"tree-ssa-pre.c:clear_expression_ids"}
!1288 = !{!"tree-ssa-pre.c:fini_pre"}
!1289 = distinct !{!1289, !1005}
!1290 = !{!"tree-ssa-pre.c:VEC_gimple_heap_alloc"}
!1291 = !{!"function_entry_count", i64 241195}
!1292 = !{!"tree-ssa-pre.c:VEC_gimple_base_length"}
!1293 = !{!"branch_weights", i32 8151, i32 233046}
!1294 = !{!1295, !902, i64 0}
!1295 = !{!"VEC_gimple_base", !902, i64 0, !902, i64 4, !903, i64 8}
!1296 = !{!"function_entry_count", i64 96469}
!1297 = !{!"tree-ssa-pre.c:VEC_gimple_base_iterate"}
!1298 = !{!"branch_weights", i32 20558, i32 75913}
!1299 = !{!"branch_weights", i32 69862, i32 6052}
!1300 = !{!"function_entry_count", i64 508285}
!1301 = !{!"tree-ssa-pre.c:gimple_plf"}
!1302 = !{!"function_entry_count", i64 264272}
!1303 = !{!"tree-ssa-pre.c:VEC_gimple_base_quick_push"}
!1304 = !{!"function_entry_count", i64 227891}
!1305 = !{!"tree-ssa-pre.c:VEC_gimple_base_pop"}
!1306 = !{!"function_entry_count", i64 45855666}
!1307 = !{!"tree-ssa-pre.c:gimple_code"}
!1308 = !{!"function_entry_count", i64 227420}
!1309 = !{!"tree-ssa-pre.c:VEC_gimple_heap_reserve"}
!1310 = !{!"branch_weights", i32 8684, i32 218738}
!1311 = !{!"function_entry_count", i64 661560}
!1312 = !{!"tree-ssa-pre.c:gimple_phi_num_args"}
!1313 = !{!"function_entry_count", i64 2047291}
!1314 = !{!"tree-ssa-pre.c:get_use_from_ptr"}
!1315 = !{!1316, !910, i64 24}
!1316 = !{!"ssa_use_operand_d", !910, i64 0, !910, i64 8, !903, i64 16, !910, i64 24}
!1317 = !{!"function_entry_count", i64 1361814}
!1318 = !{!"tree-ssa-pre.c:gimple_phi_arg_imm_use_ptr"}
!1319 = !{!"function_entry_count", i64 452250}
!1320 = !{!"tree-ssa-pre.c:mark_operand_necessary"}
!1321 = !{!"branch_weights", i32 1, i32 452251}
!1322 = !{!"branch_weights", i32 441322, i32 10930}
!1323 = !{!"branch_weights", i32 1, i32 441322}
!1324 = !{!"branch_weights", i32 238168, i32 203155}
!1325 = !{!"branch_weights", i32 216812, i32 21357}
!1326 = !{!"function_entry_count", i64 1801551}
!1327 = !{!"tree-ssa-pre.c:op_iter_init_tree"}
!1328 = !{!1329, !902, i64 4}
!1329 = !{!"ssa_operand_iterator_d", !903, i64 0, !902, i64 4, !910, i64 8, !910, i64 16, !902, i64 24, !902, i64 28, !910, i64 32}
!1330 = !{!"function_entry_count", i64 3238399}
!1331 = !{!"tree-ssa-pre.c:op_iter_done"}
!1332 = !{!1329, !903, i64 0}
!1333 = !{!"function_entry_count", i64 174394}
!1334 = !{!"tree-ssa-pre.c:VEC_gimple_heap_safe_push"}
!1335 = !{!"tree-ssa-pre.c:op_iter_next_tree"}
!1336 = !{!1329, !910, i64 16}
!1337 = !{!"branch_weights", i32 2704554, i32 533847}
!1338 = !{!1339, !910, i64 0}
!1339 = !{!"use_optype_d", !910, i64 0, !1316, i64 8}
!1340 = !{!1329, !910, i64 8}
!1341 = !{!"branch_weights", i32 1801552, i32 903003}
!1342 = !{!1343, !910, i64 8}
!1343 = !{!"def_optype_d", !910, i64 0, !910, i64 8}
!1344 = !{!1343, !910, i64 0}
!1345 = !{!"function_entry_count", i64 46564}
!1346 = !{!"tree-ssa-pre.c:VEC_gimple_heap_free"}
!1347 = !{!"branch_weights", i32 40512, i32 6054}
!1348 = !{!"tree-ssa-pre.c:VEC_gimple_base_space"}
!1349 = !{!"branch_weights", i32 3477, i32 223945}
!1350 = !{!1295, !902, i64 4}
!1351 = !{!"function_entry_count", i64 1511813}
!1352 = !{!"tree-ssa-pre.c:gimple_phi_arg"}
!1353 = !{!"branch_weights", i32 1, i32 1511814}
!1354 = !{!"function_entry_count", i64 3595640}
!1355 = !{!"tree-ssa-pre.c:gimple_nop_p"}
!1356 = !{!"function_entry_count", i64 347386}
!1357 = !{!"tree-ssa-pre.c:gimple_set_plf"}
!1358 = !{!"branch_weights", i32 33390, i32 313998}
!1359 = !{!"tree-ssa-pre.c:op_iter_init"}
!1360 = !{!"branch_weights", i32 1366, i32 -1833779847}
!1361 = !{!"branch_weights", i32 346378, i32 1455175}
!1362 = !{!"branch_weights", i32 533156803, i32 1614326845}
!1363 = !{!"branch_weights", i32 808766, i32 285133}
!1364 = !{!"branch_weights", i32 1455175, i32 346378}
!1365 = !{!"branch_weights", i32 1125151418, i32 1022332230}
!1366 = !{!"branch_weights", i32 47897, i32 117001}
!1367 = !{!"function_entry_count", i64 1455174}
!1368 = !{!"tree-ssa-pre.c:gimple_def_ops"}
!1369 = !{!"branch_weights", i32 19, i32 1455157}
!1370 = !{!"function_entry_count", i64 2778328}
!1371 = !{!"tree-ssa-pre.c:gimple_vdef"}
!1372 = !{!"branch_weights", i32 297324, i32 2481006}
!1373 = !{!"function_entry_count", i64 346377}
!1374 = !{!"tree-ssa-pre.c:gimple_use_ops"}
!1375 = !{!"branch_weights", i32 1, i32 346378}
!1376 = !{!"function_entry_count", i64 2512397}
!1377 = !{!"tree-ssa-pre.c:gimple_vuse"}
!1378 = !{!"branch_weights", i32 297324, i32 2215075}
!1379 = !{!"function_entry_count", i64 6105446}
!1380 = !{!"tree-ssa-pre.c:gimple_has_ops"}
!1381 = !{!"function_entry_count", i64 7626394}
!1382 = !{!"tree-ssa-pre.c:gimple_has_mem_ops"}
!1383 = !{!"function_entry_count", i64 1112634}
!1384 = !{!"tree-ssa-pre.c:get_def_from_ptr"}
!1385 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_heap_alloc"}
!1386 = !{!"tree-ssa-pre.c:my_rev_post_order_compute"}
!1387 = !{!1189, !910, i64 0}
!1388 = !{!1189, !910, i64 8}
!1389 = !{!"branch_weights", i32 13305, i32 1602439}
!1390 = !{!"branch_weights", i32 644764, i32 957676}
!1391 = !{!1067, !910, i64 0}
!1392 = !{!"branch_weights", i32 312913, i32 658068}
!1393 = !{!"branch_weights", i32 13305, i32 644764}
!1394 = !{!"branch_weights", i32 13305, i32 1602438}
!1395 = distinct !{!1395, !1005}
!1396 = !{!"function_entry_count", i64 460742}
!1397 = !{!"tree-ssa-pre.c:expr_pred_trans_hash"}
!1398 = !{!1399, !902, i64 24}
!1399 = !{!"expr_pred_trans_d", !910, i64 0, !910, i64 8, !910, i64 16, !902, i64 24}
!1400 = !{!"function_entry_count", i64 6782796}
!1401 = !{!"tree-ssa-pre.c:expr_pred_trans_eq"}
!1402 = !{!1399, !910, i64 8}
!1403 = !{!"branch_weights", i32 4064962, i32 2717836}
!1404 = !{!1399, !910, i64 0}
!1405 = !{!"function_entry_count", i64 11884751}
!1406 = !{!"tree-ssa-pre.c:pre_expr_hash"}
!1407 = !{!"branch_weights", i32 1, i32 140280, i32 1, i32 5203723, i32 6540751}
!1408 = !{!912, !902, i64 8}
!1409 = !{!914, !902, i64 4}
!1410 = !{!"function_entry_count", i64 6630107}
!1411 = !{!"tree-ssa-pre.c:pre_expr_eq"}
!1412 = !{!"branch_weights", i32 6320742, i32 309367}
!1413 = !{!"branch_weights", i32 1, i32 117607, i32 14528, i32 2738200, i32 3450410}
!1414 = !{!"function_entry_count", i64 3732880}
!1415 = !{!"tree-ssa-pre.c:ei_start_1"}
!1416 = !{!"function_entry_count", i64 7918885}
!1417 = !{!"tree-ssa-pre.c:ei_edge"}
!1418 = !{!"branch_weights", i32 1, i32 7918886}
!1419 = !{!"function_entry_count", i64 2015468}
!1420 = !{!"tree-ssa-pre.c:SET_BIT"}
!1421 = !{!"branch_weights", i32 2015469, i32 1}
!1422 = !{!"function_entry_count", i64 18609592}
!1423 = !{!"tree-ssa-pre.c:VEC_edge_base_length"}
!1424 = !{!"branch_weights", i32 1, i32 18609593}
!1425 = !{!1426, !902, i64 0}
!1426 = !{!"VEC_edge_base", !902, i64 0, !902, i64 4, !903, i64 8}
!1427 = !{!"function_entry_count", i64 1941958}
!1428 = !{!"tree-ssa-pre.c:ei_one_before_end_p"}
!1429 = !{!"branch_weights", i32 1, i32 1941959}
!1430 = !{!"function_entry_count", i64 3741705}
!1431 = !{!"tree-ssa-pre.c:ei_next"}
!1432 = !{!"branch_weights", i32 1, i32 3741706}
!1433 = !{!"branch_weights", i32 3741706, i32 1}
!1434 = !{!1435, !902, i64 0}
!1435 = !{!"", !902, i64 0, !910, i64 8}
!1436 = !{!"function_entry_count", i64 9365793}
!1437 = !{!"tree-ssa-pre.c:VEC_edge_base_index"}
!1438 = !{!"function_entry_count", i64 40212308}
!1439 = !{!"tree-ssa-pre.c:ei_container"}
!1440 = !{!"branch_weights", i32 1, i32 40212309}
!1441 = !{!"function_entry_count", i64 140279}
!1442 = !{!"tree-ssa-pre.c:vn_hash_constant_with_type"}
!1443 = !{!"branch_weights", i32 -342362696, i32 0}
!1444 = !{!"function_entry_count", i64 117606}
!1445 = !{!"tree-ssa-pre.c:vn_constant_eq_with_type"}
!1446 = !{!"branch_weights", i32 2854, i32 114754}
!1447 = !{!"function_entry_count", i64 1763066}
!1448 = !{!"tree-ssa-pre.c:VEC_tree_base_index"}
!1449 = !{!"function_entry_count", i64 921875}
!1450 = !{!"tree-ssa-pre.c:has_zero_uses"}
!1451 = !{!1316, !910, i64 8}
!1452 = !{!"branch_weights", i32 3042, i32 918835}
!1453 = !{!"branch_weights", i32 918835, i32 1}
!1454 = !{!"function_entry_count", i64 4707465}
!1455 = !{!"tree-ssa-pre.c:get_or_alloc_expr_for_name"}
!1456 = !{!"branch_weights", i32 1296938, i32 3410529}
!1457 = !{!"function_entry_count", i64 2862975}
!1458 = !{!"tree-ssa-pre.c:bitmap_insert_into_set"}
!1459 = !{!"function_entry_count", i64 13009211}
!1460 = !{!"tree-ssa-pre.c:bitmap_value_insert_into_set"}
!1461 = !{!"branch_weights", i32 12916203, i32 93010}
!1462 = !{!"branch_weights", i32 2540467, i32 10375737}
!1463 = !{!"function_entry_count", i64 1029475}
!1464 = !{!"tree-ssa-pre.c:bitmap_set_copy"}
!1465 = !{!"function_entry_count", i64 8366113}
!1466 = !{!"tree-ssa-pre.c:gsi_end_p"}
!1467 = !{!1468, !910, i64 0}
!1468 = !{!"", !910, i64 0, !910, i64 8, !910, i64 16}
!1469 = !{!"function_entry_count", i64 195183}
!1470 = !{!"tree-ssa-pre.c:make_values_for_phi"}
!1471 = !{!"branch_weights", i32 92089, i32 103096}
!1472 = !{!"branch_weights", i32 49763, i32 53334}
!1473 = !{!"branch_weights", i32 1, i32 49762}
!1474 = !{!"branch_weights", i32 106669, i32 43332}
!1475 = !{!"branch_weights", i32 100238, i32 49762}
!1476 = distinct !{!1476, !1005}
!1477 = !{!"function_entry_count", i64 5097957}
!1478 = !{!"tree-ssa-pre.c:gsi_stmt"}
!1479 = !{!1480, !910, i64 0}
!1480 = !{!"gimple_seq_node_d", !910, i64 0, !910, i64 8, !910, i64 16}
!1481 = !{!"function_entry_count", i64 4276666}
!1482 = !{!"tree-ssa-pre.c:gsi_next"}
!1483 = !{!1480, !910, i64 16}
!1484 = !{!"function_entry_count", i64 2797275}
!1485 = !{!"tree-ssa-pre.c:gsi_start_bb"}
!1486 = !{!1468, !910, i64 8}
!1487 = !{!1468, !910, i64 16}
!1488 = !{!"tree-ssa-pre.c:gimple_set_uid"}
!1489 = !{!"function_entry_count", i64 1994197}
!1490 = !{!"tree-ssa-pre.c:is_gimple_call"}
!1491 = !{!"function_entry_count", i64 2335669}
!1492 = !{!"tree-ssa-pre.c:gimple_has_volatile_ops"}
!1493 = !{!"branch_weights", i32 340775, i32 1994896}
!1494 = !{!"function_entry_count", i64 843132}
!1495 = !{!"tree-ssa-pre.c:add_to_exp_gen"}
!1496 = !{!"branch_weights", i32 416018, i32 427116}
!1497 = !{!"branch_weights", i32 416018, i32 1}
!1498 = !{!"function_entry_count", i64 184993}
!1499 = !{!"tree-ssa-pre.c:can_value_number_call"}
!1500 = !{!"function_entry_count", i64 373942}
!1501 = !{!"tree-ssa-pre.c:gimple_expr_type"}
!1502 = !{!"branch_weights", i32 1, i32 2, i32 2, i32 1}
!1503 = !{!"branch_weights", i32 32606, i32 330473}
!1504 = !{!"function_entry_count", i64 1381833}
!1505 = !{!"tree-ssa-pre.c:VEC_vn_reference_op_s_heap_free"}
!1506 = !{!"branch_weights", i32 488640, i32 893195}
!1507 = !{!"function_entry_count", i64 1547694}
!1508 = !{!"tree-ssa-pre.c:gimple_assign_rhs_code"}
!1509 = !{!"branch_weights", i32 714340, i32 833356}
!1510 = !{!"function_entry_count", i64 556753}
!1511 = !{!"tree-ssa-pre.c:gimple_num_ops"}
!1512 = !{!"function_entry_count", i64 2788205}
!1513 = !{!"tree-ssa-pre.c:gimple_assign_rhs1"}
!1514 = !{!"function_entry_count", i64 268483}
!1515 = !{!"tree-ssa-pre.c:gimple_assign_rhs2"}
!1516 = !{!"branch_weights", i32 176597, i32 91888}
!1517 = !{!"function_entry_count", i64 267428}
!1518 = !{!"tree-ssa-pre.c:gimple_phi_result"}
!1519 = !{!"function_entry_count", i64 149999}
!1520 = !{!"tree-ssa-pre.c:gimple_phi_arg_def"}
!1521 = !{!"tree-ssa-pre.c:bb_seq"}
!1522 = !{!1067, !902, i64 96}
!1523 = !{!"branch_weights", i32 2797276, i32 1}
!1524 = !{!"branch_weights", i32 1, i32 2797276}
!1525 = !{!1526, !910, i64 0}
!1526 = !{!"gimple_bb_info", !910, i64 0, !910, i64 8}
!1527 = !{!"function_entry_count", i64 2797370}
!1528 = !{!"tree-ssa-pre.c:gimple_seq_first"}
!1529 = !{!"branch_weights", i32 1, i32 2797371}
!1530 = !{!1531, !910, i64 0}
!1531 = !{!"gimple_seq_d", !910, i64 0, !910, i64 8, !910, i64 16}
!1532 = !{!"function_entry_count", i64 10865}
!1533 = !{!"tree-ssa-pre.c:gimple_call_return_type"}
!1534 = !{!"function_entry_count", i64 202246}
!1535 = !{!"tree-ssa-pre.c:gimple_call_fn"}
!1536 = !{!"function_entry_count", i64 4185619}
!1537 = !{!"tree-ssa-pre.c:gimple_op"}
!1538 = !{!"branch_weights", i32 1, i32 4185620}
!1539 = !{!"function_entry_count", i64 4205406}
!1540 = !{!"tree-ssa-pre.c:gimple_ops"}
!1541 = !{!"branch_weights", i32 1, i32 4205407}
!1542 = !{!"tree-ssa-pre.c:gimple_statement_structure"}
!1543 = !{!"tree-ssa-pre.c:gss_for_code"}
!1544 = !{!"tree-ssa-pre.c:gimple_expr_code"}
!1545 = !{!"branch_weights", i32 1, i32 6190780, i32 2, i32 1}
!1546 = !{!"tree-ssa-pre.c:get_gimple_rhs_class"}
!1547 = !{!"function_entry_count", i64 6503606}
!1548 = !{!"tree-ssa-pre.c:ei_cond"}
!1549 = !{!"branch_weights", i32 4687402, i32 1816206}
!1550 = !{!"function_entry_count", i64 1234066}
!1551 = !{!"tree-ssa-pre.c:VEC_basic_block_base_index"}
!1552 = !{!"function_entry_count", i64 655078}
!1553 = !{!"tree-ssa-pre.c:compute_antic_aux"}
!1554 = !{!"branch_weights", i32 655079, i32 1}
!1555 = !{!1067, !910, i64 8}
!1556 = !{!"branch_weights", i32 1, i32 655079}
!1557 = !{!"branch_weights", i32 246753, i32 408327}
!1558 = !{!"branch_weights", i32 1, i32 246752}
!1559 = !{!"branch_weights", i32 258745, i32 251137}
!1560 = !{!"branch_weights", i32 11993, i32 246753}
!1561 = !{!"branch_weights", i32 37984111, i32 2109499537}
!1562 = !{!"branch_weights", i32 246752, i32 263129}
!1563 = distinct !{!1563, !1005}
!1564 = !{!"branch_weights", i32 10, i32 246744}
!1565 = !{!"branch_weights", i32 58, i32 246695}
!1566 = !{!"branch_weights", i32 1, i32 246695}
!1567 = !{!"branch_weights", i32 246695, i32 0}
!1568 = distinct !{!1568, !1005}
!1569 = !{!"branch_weights", i32 1, i32 655078}
!1570 = !{!"branch_weights", i32 655078, i32 1957319}
!1571 = distinct !{!1571, !1005}
!1572 = !{!"branch_weights", i32 324942, i32 330138}
!1573 = !{!"branch_weights", i32 1, i32 324941}
!1574 = !{!"branch_weights", i32 324941, i32 131027}
!1575 = distinct !{!1575, !1005}
!1576 = !{!"function_entry_count", i64 578988}
!1577 = !{!"tree-ssa-pre.c:compute_partial_antic_aux"}
!1578 = !{!1579, !902, i64 8}
!1579 = !{!"param_info", !910, i64 0, !902, i64 8, !903, i64 12, !902, i64 16, !902, i64 20, !910, i64 24}
!1580 = !{!"branch_weights", i32 578989, i32 1}
!1581 = !{!"branch_weights", i32 1, i32 578989}
!1582 = !{!"branch_weights", i32 243361, i32 335629}
!1583 = !{!"branch_weights", i32 478, i32 335152}
!1584 = !{!"branch_weights", i32 1, i32 578512}
!1585 = !{!"branch_weights", i32 243361, i32 335152}
!1586 = !{!"branch_weights", i32 315976, i32 19177}
!1587 = !{!"branch_weights", i32 1, i32 243360}
!1588 = !{!"branch_weights", i32 506192, i32 1}
!1589 = !{!"branch_weights", i32 243360, i32 262832}
!1590 = distinct !{!1590, !1005}
!1591 = !{!"branch_weights", i32 1, i32 243361}
!1592 = !{!"branch_weights", i32 1, i32 506191}
!1593 = !{!"branch_weights", i32 506191, i32 1694626}
!1594 = distinct !{!1594, !1005}
!1595 = !{!"branch_weights", i32 10, i32 506183}
!1596 = !{!"branch_weights", i32 9, i32 1}
!1597 = !{!"branch_weights", i32 1, i32 0}
!1598 = distinct !{!1598, !1005}
!1599 = !{!"branch_weights", i32 1, i32 506182}
!1600 = !{!"branch_weights", i32 506182, i32 3486321}
!1601 = distinct !{!1601, !1005}
!1602 = distinct !{!1602, !1005}
!1603 = !{!"branch_weights", i32 246060, i32 332453}
!1604 = !{!"branch_weights", i32 1, i32 246059}
!1605 = !{!"branch_weights", i32 246059, i32 97680}
!1606 = distinct !{!1606, !1005}
!1607 = !{!"branch_weights", i32 478, i32 578512}
!1608 = !{!"tree-ssa-pre.c:ei_end_p"}
!1609 = !{!"branch_weights", i32 1, i32 6503607}
!1610 = !{!"function_entry_count", i64 3226833}
!1611 = !{!"tree-ssa-pre.c:single_succ_p"}
!1612 = !{!"function_entry_count", i64 1079105}
!1613 = !{!"tree-ssa-pre.c:single_succ"}
!1614 = !{!"function_entry_count", i64 408326}
!1615 = !{!"tree-ssa-pre.c:defer_or_phi_translate_block"}
!1616 = !{!"branch_weights", i32 1, i32 408327}
!1617 = !{!"function_entry_count", i64 490112}
!1618 = !{!"tree-ssa-pre.c:VEC_basic_block_heap_alloc"}
!1619 = !{!"function_entry_count", i64 752885}
!1620 = !{!"tree-ssa-pre.c:VEC_basic_block_base_quick_push"}
!1621 = !{!1622, !902, i64 0}
!1622 = !{!"VEC_basic_block_base", !902, i64 0, !902, i64 4, !903, i64 8}
!1623 = !{!"tree-ssa-pre.c:VEC_basic_block_heap_free"}
!1624 = !{!"branch_weights", i32 1, i32 490113}
!1625 = !{!"function_entry_count", i64 1723956}
!1626 = !{!"tree-ssa-pre.c:gimple_seq_empty_p"}
!1627 = !{!"branch_weights", i32 1109050, i32 614908}
!1628 = !{!"tree-ssa-pre.c:phi_nodes"}
!1629 = !{!"branch_weights", i32 1723957, i32 1}
!1630 = !{!"branch_weights", i32 24177, i32 1699781}
!1631 = !{!1526, !910, i64 8}
!1632 = !{!"function_entry_count", i64 724319}
!1633 = !{!"tree-ssa-pre.c:phi_translate_set"}
!1634 = !{!"branch_weights", i32 586351, i32 137970}
!1635 = !{!"branch_weights", i32 1, i32 586350}
!1636 = !{!"branch_weights", i32 494641, i32 3857128}
!1637 = !{!"branch_weights", i32 1447338, i32 2409791}
!1638 = !{!"branch_weights", i32 586350, i32 3765418}
!1639 = distinct !{!1639, !1005}
!1640 = !{!"function_entry_count", i64 1242997}
!1641 = !{!"tree-ssa-pre.c:VEC_basic_block_base_iterate"}
!1642 = !{!"branch_weights", i32 1, i32 1242998}
!1643 = !{!"branch_weights", i32 752886, i32 490113}
!1644 = !{!"function_entry_count", i64 246694}
!1645 = !{!"tree-ssa-pre.c:bitmap_set_and"}
!1646 = !{!"branch_weights", i32 1, i32 246694}
!1647 = !{!"branch_weights", i32 507634, i32 650204}
!1648 = !{!"branch_weights", i32 246694, i32 911143}
!1649 = distinct !{!1649, !1005}
!1650 = !{!"function_entry_count", i64 3122265}
!1651 = !{!"tree-ssa-pre.c:bitmap_set_free"}
!1652 = !{!"function_entry_count", i64 1888667}
!1653 = !{!"tree-ssa-pre.c:bitmap_set_subtract"}
!1654 = !{!"branch_weights", i32 1, i32 1888667}
!1655 = !{!"branch_weights", i32 1888667, i32 8309622}
!1656 = distinct !{!1656, !1005}
!1657 = !{!"tree-ssa-pre.c:clean"}
!1658 = !{!"branch_weights", i32 213058, i32 3321104}
!1659 = !{!"branch_weights", i32 655078, i32 2879083}
!1660 = distinct !{!1660, !1005}
!1661 = !{!"function_entry_count", i64 1233589}
!1662 = !{!"tree-ssa-pre.c:bitmap_set_equal"}
!1663 = !{!"function_entry_count", i64 662589}
!1664 = !{!"tree-ssa-pre.c:RESET_BIT"}
!1665 = !{!"branch_weights", i32 662590, i32 1}
!1666 = !{!"function_entry_count", i64 1414256}
!1667 = !{!"tree-ssa-pre.c:single_succ_edge"}
!1668 = !{!"branch_weights", i32 1, i32 1414257}
!1669 = !{!"function_entry_count", i64 2168057}
!1670 = !{!"tree-ssa-pre.c:sorted_array_from_bitmap_set"}
!1671 = !{!"branch_weights", i32 1, i32 2168057}
!1672 = !{!"branch_weights", i32 1, i32 16296284}
!1673 = !{!"branch_weights", i32 13538030, i32 16298702}
!1674 = !{!"branch_weights", i32 16296284, i32 13540447}
!1675 = distinct !{!1675, !1005}
!1676 = !{!"branch_weights", i32 2168057, i32 14128228}
!1677 = distinct !{!1677, !1005}
!1678 = !{!"function_entry_count", i64 18466758}
!1679 = !{!"tree-ssa-pre.c:VEC_pre_expr_base_iterate"}
!1680 = !{!"branch_weights", i32 274681, i32 18192079}
!1681 = !{!"branch_weights", i32 16298702, i32 1893378}
!1682 = !{!"function_entry_count", i64 9002538}
!1683 = !{!"tree-ssa-pre.c:phi_translate"}
!1684 = !{!"branch_weights", i32 496828, i32 8505712}
!1685 = !{!"branch_weights", i32 1, i32 8505712}
!1686 = !{!"branch_weights", i32 8505712, i32 1}
!1687 = !{!"branch_weights", i32 2064321, i32 6441392}
!1688 = !{!"branch_weights", i32 2396488, i32 4044905}
!1689 = !{!"branch_weights", i32 1056449, i32 3404360}
!1690 = !{!"branch_weights", i32 2064296, i32 1340065}
!1691 = !{!"function_entry_count", i64 6257208}
!1692 = !{!"tree-ssa-pre.c:bitmap_value_replace_in_set"}
!1693 = !{!"branch_weights", i32 2319412, i32 3937798}
!1694 = !{!"function_entry_count", i64 2181361}
!1695 = !{!"tree-ssa-pre.c:VEC_pre_expr_heap_free"}
!1696 = !{!"branch_weights", i32 274681, i32 1906682}
!1697 = !{!"tree-ssa-pre.c:VEC_pre_expr_heap_alloc"}
!1698 = !{!"function_entry_count", i64 6441391}
!1699 = !{!"tree-ssa-pre.c:phi_trans_lookup"}
!1700 = !{!1399, !910, i64 16}
!1701 = !{!"function_entry_count", i64 4460807}
!1702 = !{!"tree-ssa-pre.c:phi_translate_1"}
!1703 = !{!"branch_weights", i32 1, i32 1121466, i32 1275023, i32 2064321}
!1704 = !{!"branch_weights", i32 1, i32 636652}
!1705 = !{!"branch_weights", i32 1258179, i32 384757}
!1706 = !{!"branch_weights", i32 -1447767117, i32 953717367}
!1707 = !{!"branch_weights", i32 1, i32 315700}
!1708 = !{!"branch_weights", i32 484814, i32 457667}
!1709 = !{!"branch_weights", i32 636652, i32 1006283}
!1710 = distinct !{!1710, !1005}
!1711 = !{!"branch_weights", i32 1260340977, i32 887142671}
!1712 = !{!912, !910, i64 24}
!1713 = !{!"branch_weights", i32 254547, i32 8460}
!1714 = !{!"branch_weights", i32 8460, i32 1}
!1715 = !{!"branch_weights", i32 193922, i32 69085}
!1716 = !{!"branch_weights", i32 58659, i32 10427}
!1717 = !{!"branch_weights", i32 186108, i32 7815}
!1718 = !{!"branch_weights", i32 1, i32 703718}
!1719 = !{!1008, !910, i64 8}
!1720 = !{i64 0, i64 4, !956, i64 8, i64 8, !922, i64 16, i64 8, !922, i64 24, i64 8, !922, i64 32, i64 8, !922}
!1721 = !{!"branch_weights", i32 903424, i32 3022037}
!1722 = !{!"branch_weights", i32 1079655, i32 1942383}
!1723 = !{!"branch_weights", i32 -836690695, i32 829577202}
!1724 = !{!"branch_weights", i32 571305, i32 299469}
!1725 = !{!"branch_weights", i32 3018546, i32 335611}
!1726 = !{!"branch_weights", i32 1, i32 335611}
!1727 = !{!"branch_weights", i32 3052050, i32 302107}
!1728 = !{!"branch_weights", i32 1, i32 302107}
!1729 = !{!"branch_weights", i32 1219397, i32 2134760}
!1730 = !{!"branch_weights", i32 443730, i32 2910427}
!1731 = !{!"branch_weights", i32 441580, i32 2151}
!1732 = !{!"branch_weights", i32 -1588195853, i32 -9235272}
!1733 = !{!"branch_weights", i32 2321, i32 1296062}
!1734 = !{!"branch_weights", i32 510, i32 1812}
!1735 = !{!"branch_weights", i32 703718, i32 3221742}
!1736 = distinct !{!1736, !1005}
!1737 = !{!"branch_weights", i32 703719, i32 571305}
!1738 = !{!"branch_weights", i32 55627, i32 515679}
!1739 = !{!"branch_weights", i32 1172, i32 702548}
!1740 = !{!914, !902, i64 16}
!1741 = !{!914, !910, i64 24}
!1742 = !{!"branch_weights", i32 307, i32 702242}
!1743 = !{!"branch_weights", i32 1688651197, i32 -426966628}
!1744 = !{!"branch_weights", i32 336908, i32 152741}
!1745 = !{!"branch_weights", i32 446043, i32 43606}
!1746 = !{!"branch_weights", i32 42669, i32 938}
!1747 = !{!"branch_weights", i32 938, i32 1}
!1748 = !{!"branch_weights", i32 336908, i32 151804}
!1749 = !{!"branch_weights", i32 151797, i32 8}
!1750 = !{!"branch_weights", i32 122505271, i32 -593386964}
!1751 = !{!"branch_weights", i32 336844, i32 65}
!1752 = !{!"branch_weights", i32 1198904, i32 865418}
!1753 = !{!"branch_weights", i32 349247, i32 849658}
!1754 = !{!"branch_weights", i32 1, i32 349247}
!1755 = !{!1189, !902, i64 44}
!1756 = !{!"branch_weights", i32 270563, i32 78685}
!1757 = !{!"branch_weights", i32 270174, i32 79074}
!1758 = !{!"branch_weights", i32 270174, i32 1}
!1759 = !{!"branch_weights", i32 270149, i32 26}
!1760 = !{!"function_entry_count", i64 1340064}
!1761 = !{!"tree-ssa-pre.c:phi_trans_add"}
!1762 = !{!"branch_weights", i32 1340065, i32 1}
!1763 = !{!"function_entry_count", i64 2337832}
!1764 = !{!"tree-ssa-pre.c:find_leader_in_sets"}
!1765 = !{!"branch_weights", i32 256614429, i32 -1414943637}
!1766 = !{!"function_entry_count", i64 524581}
!1767 = !{!"tree-ssa-pre.c:get_representative_for"}
!1768 = !{!"branch_weights", i32 1, i32 80654, i32 31964, i32 147958, i32 264009}
!1769 = !{!"branch_weights", i32 1, i32 231893}
!1770 = !{!"branch_weights", i32 180073, i32 379006}
!1771 = !{!"branch_weights", i32 231893, i32 327185}
!1772 = distinct !{!1772, !1005}
!1773 = !{!"branch_weights", i32 231894, i32 1}
!1774 = !{!"branch_weights", i32 3010, i32 228885}
!1775 = !{!"branch_weights", i32 73158, i32 155728}
!1776 = !{!"branch_weights", i32 1, i32 231894}
!1777 = !{!"function_entry_count", i64 107861}
!1778 = !{!"tree-ssa-pre.c:get_or_alloc_expr_for_constant"}
!1779 = !{!"branch_weights", i32 16184, i32 91679}
!1780 = !{!"function_entry_count", i64 3062136}
!1781 = !{!"tree-ssa-pre.c:fully_constant_expression"}
!1782 = !{!"branch_weights", i32 31518, i32 1627344, i32 1403278}
!1783 = !{!"branch_weights", i32 1, i32 1, i32 902620, i32 139030, i32 1, i32 361630}
!1784 = !{!"branch_weights", i32 1009874, i32 31776}
!1785 = !{!"branch_weights", i32 1009872, i32 3}
!1786 = !{!"branch_weights", i32 252783, i32 788867}
!1787 = !{!"branch_weights", i32 252780, i32 4}
!1788 = !{!"branch_weights", i32 975460, i32 66190}
!1789 = !{!"branch_weights", i32 52631, i32 13560}
!1790 = !{!"branch_weights", i32 344035, i32 17596}
!1791 = !{!"branch_weights", i32 1575708187, i32 571775461}
!1792 = !{!"branch_weights", i32 1, i32 4685}
!1793 = !{!"branch_weights", i32 32920, i32 1594425}
!1794 = !{!"branch_weights", i32 32920, i32 1}
!1795 = !{!"branch_weights", i32 26925, i32 5996}
!1796 = !{!"branch_weights", i32 33235828, i32 2728181}
!1797 = !{!"branch_weights", i32 3260, i32 2284}
!1798 = !{!"branch_weights", i32 249, i32 5295}
!1799 = !{!"branch_weights", i32 1477, i32 3819}
!1800 = !{!"branch_weights", i32 1, i32 1477}
!1801 = !{!"branch_weights", i32 2284, i32 3260}
!1802 = !{!"branch_weights", i32 389, i32 2872}
!1803 = !{!"branch_weights", i32 1344, i32 1529}
!1804 = !{!"branch_weights", i32 1, i32 1344}
!1805 = !{!"branch_weights", i32 1359566918, i32 787916730}
!1806 = !{!"branch_weights", i32 1, i32 3130}
!1807 = !{!"branch_weights", i32 72, i32 3059}
!1808 = !{!"branch_weights", i32 3059, i32 72}
!1809 = !{!"function_entry_count", i64 1219396}
!1810 = !{!"tree-ssa-pre.c:VEC_vn_reference_op_s_heap_copy"}
!1811 = !{!"branch_weights", i32 1, i32 1219397}
!1812 = !{!1813, !902, i64 0}
!1813 = !{!"VEC_vn_reference_op_s_heap", !1018, i64 0}
!1814 = !{!"function_entry_count", i64 3354155}
!1815 = !{!"tree-ssa-pre.c:VEC_vn_reference_op_s_base_replace"}
!1816 = !{!"branch_weights", i32 1, i32 3354156}
!1817 = !{!"function_entry_count", i64 1670904}
!1818 = !{!"tree-ssa-pre.c:VEC_vn_reference_op_s_base_index"}
!1819 = !{!"function_entry_count", i64 702547}
!1820 = !{!"tree-ssa-pre.c:translate_vuse_through_block"}
!1821 = !{!"branch_weights", i32 443894, i32 258655}
!1822 = !{!"branch_weights", i32 416253, i32 27642}
!1823 = !{!"branch_weights", i32 218, i32 27425}
!1824 = !{!"branch_weights", i32 45987, i32 90}
!1825 = !{!"branch_weights", i32 42124, i32 3864}
!1826 = !{!"branch_weights", i32 23473, i32 18652}
!1827 = distinct !{!1827, !1005}
!1828 = !{!"branch_weights", i32 28, i32 2147483620}
!1829 = !{!"branch_weights", i32 10910, i32 428816}
!1830 = !{!"branch_weights", i32 232364, i32 196453}
!1831 = !{!"branch_weights", i32 426730, i32 12996}
!1832 = !{!"function_entry_count", i64 7317011}
!1833 = !{!"tree-ssa-pre.c:gimple_bb"}
!1834 = !{!"function_entry_count", i64 5841383}
!1835 = !{!"tree-ssa-pre.c:bitmap_find_leader"}
!1836 = !{!"branch_weights", i32 5798509, i32 42876}
!1837 = !{!"branch_weights", i32 1, i32 1714}
!1838 = !{!"branch_weights", i32 1714, i32 59824}
!1839 = distinct !{!1839, !1005}
!1840 = !{!"branch_weights", i32 2898893, i32 2901331}
!1841 = !{!"branch_weights", i32 1, i32 1723}
!1842 = !{!"branch_weights", i32 2899606, i32 6}
!1843 = !{!"branch_weights", i32 1, i32 6}
!1844 = !{!"branch_weights", i32 5, i32 2}
!1845 = !{!"branch_weights", i32 2, i32 4}
!1846 = !{!"branch_weights", i32 1723, i32 2897888}
!1847 = distinct !{!1847, !1005}
!1848 = !{!"function_entry_count", i64 32720047}
!1849 = !{!"tree-ssa-pre.c:bitmap_set_contains_value"}
!1850 = !{!"branch_weights", i32 32718334, i32 1715}
!1851 = !{!"branch_weights", i32 1, i32 32718334}
!1852 = !{!"branch_weights", i32 1728241, i32 30990094}
!1853 = !{!"function_entry_count", i64 2901330}
!1854 = !{!"tree-ssa-pre.c:bmp_iter_and_init"}
!1855 = !{!"branch_weights", i32 21845323, i32 -1345848652}
!1856 = !{!"branch_weights", i32 5082558, i32 2901315}
!1857 = !{!"branch_weights", i32 135, i32 63870841}
!1858 = !{!"branch_weights", i32 2130511745, i32 16971903}
!1859 = !{!"function_entry_count", i64 2901333}
!1860 = !{!"tree-ssa-pre.c:bmp_iter_and"}
!1861 = !{!"branch_weights", i32 1263320, i32 1638015}
!1862 = !{!"branch_weights", i32 2899610, i32 1}
!1863 = !{!"branch_weights", i32 82129819, i32 2899610}
!1864 = distinct !{!1864, !1005}
!1865 = !{!"branch_weights", i32 1, i32 83875}
!1866 = !{!"branch_weights", i32 96011, i32 1261597}
!1867 = !{!"branch_weights", i32 83875, i32 1273732}
!1868 = distinct !{!1868, !1005}
!1869 = !{!"branch_weights", i32 1211, i32 135112}
!1870 = !{!"branch_weights", i32 44739, i32 90374}
!1871 = distinct !{!1871, !1005}
!1872 = !{!"branch_weights", i32 79334, i32 89861}
!1873 = !{!"branch_weights", i32 514, i32 78821}
!1874 = distinct !{!1874, !1005}
!1875 = !{!"branch_weights", i32 82153, i32 7709}
!1876 = !{!"function_entry_count", i64 8}
!1877 = !{!"tree-ssa-pre.c:gimple_uid"}
!1878 = !{!"function_entry_count", i64 302687}
!1879 = !{!"tree-ssa-pre.c:get_expr_type"}
!1880 = !{!"branch_weights", i32 1, i32 36335, i32 8360, i32 144660, i32 113336}
!1881 = !{!"function_entry_count", i64 177424}
!1882 = !{!"tree-ssa-pre.c:get_var_ann"}
!1883 = !{!"branch_weights", i32 22178, i32 -359991290, i32 0}
!1884 = !{!"branch_weights", i32 177425, i32 1}
!1885 = !{!"function_entry_count", i64 250833}
!1886 = !{!"tree-ssa-pre.c:make_ssa_name"}
!1887 = !{!"function_entry_count", i64 1635383}
!1888 = !{!"tree-ssa-pre.c:get_or_alloc_expr_for"}
!1889 = !{!"branch_weights", i32 1624413, i32 10972}
!1890 = !{!"branch_weights", i32 1435, i32 9538}
!1891 = !{!"branch_weights", i32 1122, i32 314}
!1892 = !{!"function_entry_count", i64 1606689}
!1893 = !{!"tree-ssa-pre.c:get_constant_for_value_id"}
!1894 = !{!"branch_weights", i32 1606685, i32 6}
!1895 = !{!"branch_weights", i32 1, i32 127}
!1896 = !{!"branch_weights", i32 6, i32 1}
!1897 = !{!"branch_weights", i32 127, i32 641}
!1898 = distinct !{!1898, !1005}
!1899 = !{!"function_entry_count", i64 3937797}
!1900 = !{!"tree-ssa-pre.c:bitmap_set_replace_value"}
!1901 = !{!"branch_weights", i32 3937798, i32 1}
!1902 = !{!"branch_weights", i32 1, i32 3937798}
!1903 = !{!"branch_weights", i32 1, i32 304}
!1904 = !{!"branch_weights", i32 7575129, i32 3937494}
!1905 = !{!"branch_weights", i32 304, i32 11512318}
!1906 = distinct !{!1906, !1005}
!1907 = !{!"function_entry_count", i64 11619293}
!1908 = !{!"tree-ssa-pre.c:get_expression_id"}
!1909 = !{!"function_entry_count", i64 9421328}
!1910 = !{!"tree-ssa-pre.c:valid_in_sets"}
!1911 = !{!"branch_weights", i32 1, i32 3011241, i32 2924710, i32 3485380}
!1912 = !{!"branch_weights", i32 1, i32 2759387}
!1913 = !{!"branch_weights", i32 3360338, i32 1610926}
!1914 = !{!"branch_weights", i32 1, i32 3360338}
!1915 = !{!"branch_weights", i32 332993, i32 3027346}
!1916 = !{!"branch_weights", i32 59585, i32 273409}
!1917 = !{!"branch_weights", i32 105739, i32 167671}
!1918 = !{!"branch_weights", i32 2211876, i32 2759387}
!1919 = distinct !{!1919, !1005}
!1920 = !{!"branch_weights", i32 2536082, i32 223307}
!1921 = !{!"branch_weights", i32 222984, i32 324}
!1922 = !{!"branch_weights", i32 1, i32 3362850}
!1923 = !{!"branch_weights", i32 3362850, i32 6870049}
!1924 = distinct !{!1924, !1005}
!1925 = !{!"branch_weights", i32 122530, i32 10110370}
!1926 = !{!"branch_weights", i32 5378, i32 3357474}
!1927 = !{!"branch_weights", i32 2862397, i32 495078}
!1928 = !{!"branch_weights", i32 708117, i32 2154281}
!1929 = !{!"branch_weights", i32 29820, i32 2124462}
!1930 = !{!"function_entry_count", i64 1312862}
!1931 = !{!"tree-ssa-pre.c:bitmap_remove_from_set"}
!1932 = !{!"branch_weights", i32 1312863, i32 1}
!1933 = !{!"function_entry_count", i64 3011240}
!1934 = !{!"tree-ssa-pre.c:bitmap_set_contains_expr"}
!1935 = !{!"function_entry_count", i64 10232898}
!1936 = !{!"tree-ssa-pre.c:vro_valid_in_sets"}
!1937 = !{!"branch_weights", i32 2188878, i32 8044022}
!1938 = !{!"branch_weights", i32 2603115, i32 5440908}
!1939 = !{!"branch_weights", i32 1, i32 2603115}
!1940 = !{!"branch_weights", i32 491436, i32 2111680}
!1941 = !{!"branch_weights", i32 35086, i32 456351}
!1942 = !{!"branch_weights", i32 87445, i32 368907}
!1943 = !{!"branch_weights", i32 9049408, i32 1060963}
!1944 = !{!"branch_weights", i32 1, i32 1060963}
!1945 = !{!"branch_weights", i32 9123144, i32 987227}
!1946 = !{!"branch_weights", i32 1, i32 987227}
!1947 = !{!"function_entry_count", i64 3333031}
!1948 = !{!"tree-ssa-pre.c:value_dies_in_block_x"}
!1949 = !{!"branch_weights", i32 5378, i32 3327655}
!1950 = !{!1069, !910, i64 56}
!1951 = !{!"branch_weights", i32 257900, i32 3069756}
!1952 = !{!"branch_weights", i32 1247300, i32 1822457}
!1953 = !{!1954, !910, i64 8}
!1954 = !{!"ao_ref_s", !910, i64 0, !910, i64 8, !1032, i64 16, !1032, i64 24, !1032, i64 32, !902, i64 40, !902, i64 44}
!1955 = !{!"branch_weights", i32 784503, i32 1}
!1956 = !{!"branch_weights", i32 609450, i32 1074983}
!1957 = !{!"branch_weights", i32 834479, i32 240505}
!1958 = !{!"branch_weights", i32 596537, i32 237943}
!1959 = !{!"branch_weights", i32 181884, i32 58622}
!1960 = !{!"branch_weights", i32 3547, i32 178338}
!1961 = !{!"branch_weights", i32 116346, i32 120614}
!1962 = !{!"branch_weights", i32 899929, i32 784503}
!1963 = distinct !{!1963, !1005}
!1964 = !{!"branch_weights", i32 257900, i32 1247300}
!1965 = !{!"branch_weights", i32 1381040, i32 124160}
!1966 = !{!"function_entry_count", i64 243360}
!1967 = !{!"tree-ssa-pre.c:VEC_basic_block_base_length"}
!1968 = !{!"function_entry_count", i64 578511}
!1969 = !{!"tree-ssa-pre.c:bitmap_set_subtract_values"}
!1970 = !{!"branch_weights", i32 1, i32 578511}
!1971 = !{!"branch_weights", i32 5887169, i32 726487}
!1972 = !{!"branch_weights", i32 578511, i32 6035144}
!1973 = distinct !{!1973, !1005}
!1974 = !{!"tree-ssa-pre.c:dependent_clean"}
!1975 = !{!"branch_weights", i32 373320, i32 5513850}
!1976 = !{!"branch_weights", i32 578511, i32 5308658}
!1977 = distinct !{!1977, !1005}
!1978 = !{!"function_entry_count", i64 818643}
!1979 = !{!"tree-ssa-pre.c:insert_aux"}
!1980 = !{!"branch_weights", i32 1, i32 818644}
!1981 = !{!"branch_weights", i32 10140, i32 808505}
!1982 = !{!"branch_weights", i32 1, i32 808505}
!1983 = !{!"branch_weights", i32 1, i32 808504}
!1984 = !{!"branch_weights", i32 808504, i32 1570174}
!1985 = distinct !{!1985, !1005}
!1986 = !{!"branch_weights", i32 174060, i32 634446}
!1987 = !{!"branch_weights", i32 1, i32 174060}
!1988 = !{!"branch_weights", i32 10139, i32 808505}
!1989 = !{!"branch_weights", i32 808505, i32 0}
!1990 = distinct !{!1990, !1005}
!1991 = !{!"function_entry_count", i64 808504}
!1992 = !{!"tree-ssa-pre.c:single_pred_p"}
!1993 = !{!"function_entry_count", i64 174059}
!1994 = !{!"tree-ssa-pre.c:do_regular_insertion"}
!1995 = !{!"branch_weights", i32 1, i32 174059}
!1996 = !{!"branch_weights", i32 387262, i32 427459}
!1997 = !{!"branch_weights", i32 402138, i32 25322}
!1998 = !{!"branch_weights", i32 387660, i32 14479}
!1999 = !{!"branch_weights", i32 14479, i32 1}
!2000 = !{!"branch_weights", i32 1, i32 386468}
!2001 = !{!"branch_weights", i32 1018883, i32 1}
!2002 = !{!"branch_weights", i32 1192, i32 1017692}
!2003 = !{!"branch_weights", i32 953022, i32 64671}
!2004 = !{!"branch_weights", i32 29786, i32 34886}
!2005 = !{!"branch_weights", i32 41148, i32 23524}
!2006 = !{!"branch_weights", i32 12239, i32 11286}
!2007 = !{!"branch_weights", i32 386468, i32 632415}
!2008 = distinct !{!2008, !1005}
!2009 = !{!"branch_weights", i32 -2147483648, i32 0}
!2010 = !{!"branch_weights", i32 1, i32 21419}
!2011 = !{!"branch_weights", i32 5897, i32 15523}
!2012 = !{!"branch_weights", i32 2140875430, i32 6608218}
!2013 = !{!"branch_weights", i32 1055, i32 77088, i32 1113025}
!2014 = !{!"branch_weights", i32 1127, i32 1}
!2015 = !{!"branch_weights", i32 1, i32 1126}
!2016 = !{!"branch_weights", i32 1271, i32 1144}
!2017 = !{!"branch_weights", i32 60, i32 1212}
!2018 = !{!"branch_weights", i32 1126, i32 1288}
!2019 = distinct !{!2019, !1005}
!2020 = !{!"branch_weights", i32 174059, i32 640661}
!2021 = distinct !{!2021, !1005}
!2022 = !{!"tree-ssa-pre.c:do_partial_partial_insertion"}
!2023 = !{!"branch_weights", i32 413775, i32 1297114}
!2024 = !{!"branch_weights", i32 1291250, i32 5865}
!2025 = !{!"branch_weights", i32 1260667, i32 30584}
!2026 = !{!"branch_weights", i32 1, i32 3249}
!2027 = !{!"branch_weights", i32 1294058, i32 1}
!2028 = !{!"branch_weights", i32 1328, i32 1292731}
!2029 = !{!"branch_weights", i32 1256091, i32 36641}
!2030 = !{!"branch_weights", i32 3249, i32 1290809}
!2031 = distinct !{!2031, !1005}
!2032 = !{!"branch_weights", i32 1, i32 3250}
!2033 = !{!"branch_weights", i32 450, i32 2801}
!2034 = !{!"branch_weights", i32 174059, i32 1536829}
!2035 = distinct !{!2035, !1005}
!2036 = !{!"function_entry_count", i64 24667}
!2037 = !{!"tree-ssa-pre.c:insert_into_preds_of_block"}
!2038 = !{!"branch_weights", i32 24668, i32 1}
!2039 = !{!1067, !902, i64 84}
!2040 = !{!"branch_weights", i32 18523, i32 6146}
!2041 = !{!"branch_weights", i32 16327, i32 2197}
!2042 = !{!1067, !910, i64 24}
!2043 = !{!"branch_weights", i32 3438, i32 12890}
!2044 = !{!"branch_weights", i32 2840, i32 10051}
!2045 = !{!"branch_weights", i32 2672, i32 169}
!2046 = !{!"branch_weights", i32 10219, i32 1}
!2047 = !{!"branch_weights", i32 1, i32 24667}
!2048 = !{!"branch_weights", i32 661223780, i32 592325650, i32 1006698798}
!2049 = !{!"branch_weights", i32 18676, i32 1}
!2050 = !{!"branch_weights", i32 1, i32 16730}
!2051 = distinct !{!2051, !1005}
!2052 = !{!"branch_weights", i32 1, i32 28433}
!2053 = distinct !{!2053, !1005}
!2054 = !{!"branch_weights", i32 24667, i32 39170}
!2055 = distinct !{!2055, !1005}
!2056 = !{!"branch_weights", i32 337219784, i32 1810263864}
!2057 = !{!"branch_weights", i32 91720496, i32 40271716}
!2058 = !{!"branch_weights", i32 2301, i32 12150}
!2059 = !{!"branch_weights", i32 5122, i32 7029}
!2060 = !{!"branch_weights", i32 28901, i32 208802500}
!2061 = !{!"branch_weights", i32 1, i32 14449}
!2062 = !{!"branch_weights", i32 42371, i32 1031}
!2063 = !{!"branch_weights", i32 1, i32 1031}
!2064 = !{!"branch_weights", i32 7830, i32 35572}
!2065 = !{!"branch_weights", i32 14449, i32 28952}
!2066 = distinct !{!2066, !1005}
!2067 = !{!"branch_weights", i32 14450, i32 1}
!2068 = !{!"function_entry_count", i64 2839}
!2069 = !{!"tree-ssa-pre.c:inhibit_phi_insertion"}
!2070 = !{!"branch_weights", i32 1, i32 2840}
!2071 = !{!"branch_weights", i32 1, i32 2671}
!2072 = !{!"branch_weights", i32 5216, i32 536, i32 1, i32 1811}
!2073 = !{!"branch_weights", i32 305, i32 232}
!2074 = !{!"branch_weights", i32 445, i32 1671}
!2075 = !{!"branch_weights", i32 1116, i32 556}
!2076 = !{!"branch_weights", i32 2671, i32 4890}
!2077 = distinct !{!2077, !1005}
!2078 = !{!"function_entry_count", i64 20372}
!2079 = !{!"tree-ssa-pre.c:create_expression_by_pieces"}
!2080 = !{!"branch_weights", i32 1435, i32 18939}
!2081 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 11540, i32 8834}
!2082 = !{!"branch_weights", i32 1, i32 5234, i32 3601}
!2083 = !{!"branch_weights", i32 27394756, i32 10469}
!2084 = !{!"branch_weights", i32 474, i32 4761}
!2085 = !{!"branch_weights", i32 1433, i32 2169}
!2086 = !{!"branch_weights", i32 1, i32 18941}
!2087 = !{!"branch_weights", i32 18846, i32 96}
!2088 = !{!"branch_weights", i32 191, i32 1}
!2089 = !{!"branch_weights", i32 96, i32 1}
!2090 = !{!"branch_weights", i32 1, i32 191}
!2091 = distinct !{!2091, !1005}
!2092 = !{!"branch_weights", i32 358, i32 18584}
!2093 = !{!"branch_weights", i32 9581, i32 9004}
!2094 = !{!"branch_weights", i32 37883, i32 358761481}
!2095 = !{!"branch_weights", i32 18939, i32 3}
!2096 = !{!"branch_weights", i32 18941, i32 1}
!2097 = !{!"function_entry_count", i64 95}
!2098 = !{!"tree-ssa-pre.c:gsi_start"}
!2099 = !{!"branch_weights", i32 1, i32 96}
!2100 = !{!"function_entry_count", i64 11539}
!2101 = !{!"tree-ssa-pre.c:create_component_ref_by_pieces"}
!2102 = !{!"function_entry_count", i64 27260}
!2103 = !{!"tree-ssa-pre.c:find_or_generate_expression"}
!2104 = !{!"branch_weights", i32 1696, i32 25566}
!2105 = !{!"branch_weights", i32 9538, i32 152900631, i32 90973444}
!2106 = !{!"branch_weights", i32 45815870, i32 447744}
!2107 = !{!"branch_weights", i32 99, i32 264}
!2108 = !{!"branch_weights", i32 127, i32 46209}
!2109 = distinct !{!2109, !1005}
!2110 = !{!"function_entry_count", i64 18940}
!2111 = !{!"tree-ssa-pre.c:gimple_assign_set_lhs"}
!2112 = !{!"function_entry_count", i64 32440}
!2113 = !{!"tree-ssa-pre.c:create_component_ref_by_pieces_1"}
!2114 = !{!"branch_weights", i32 1, i32 41, i32 1, i32 10, i32 1, i32 1, i32 1, i32 1, i32 1, i32 7936, i32 206, i32 1, i32 1629, i32 11106, i32 7901, i32 1, i32 55, i32 1, i32 1, i32 1, i32 1, i32 3500, i32 66, i32 1, i32 1, i32 1}
!2115 = !{!"branch_weights", i32 29, i32 12}
!2116 = !{!"branch_weights", i32 0, i32 29}
!2117 = distinct !{!2117, !1005}
!2118 = !{!"branch_weights", i32 1, i32 41}
!2119 = !{!"branch_weights", i32 41, i32 1}
!2120 = !{!"branch_weights", i32 1, i32 10}
!2121 = !{!"branch_weights", i32 1, i32 7936}
!2122 = !{!"branch_weights", i32 1, i32 206}
!2123 = !{!"branch_weights", i32 1, i32 1629}
!2124 = !{!"branch_weights", i32 1, i32 11106}
!2125 = !{!"branch_weights", i32 11106, i32 1}
!2126 = !{!"function_entry_count", i64 19787}
!2127 = !{!"tree-ssa-pre.c:gimple_set_op"}
!2128 = !{!"branch_weights", i32 1, i32 19788}
!2129 = !{!"branch_weights", i32 19788, i32 1}
!2130 = !{!"tree-ssa-pre.c:gimple_has_lhs"}
!2131 = !{!"branch_weights", i32 539024, i32 916152}
!2132 = !{!"branch_weights", i32 354031, i32 184994}
!2133 = !{!"function_entry_count", i64 98489}
!2134 = !{!"tree-ssa-pre.c:update_stmt"}
!2135 = !{!"branch_weights", i32 1024, i32 97467}
!2136 = !{!"function_entry_count", i64 1434}
!2137 = !{!"tree-ssa-pre.c:can_PRE_operation"}
!2138 = !{!"branch_weights", i32 5743, i32 1}
!2139 = !{!"tree-ssa-pre.c:do_SCCVN_insertion"}
!2140 = !{!"branch_weights", i32 1433, i32 3}
!2141 = !{!"function_entry_count", i64 261037}
!2142 = !{!"tree-ssa-pre.c:gimple_assign_lhs"}
!2143 = !{!"function_entry_count", i64 286271}
!2144 = !{!"tree-ssa-pre.c:gimple_cond_lhs"}
!2145 = !{!"tree-ssa-pre.c:gimple_cond_rhs"}
!2146 = !{!"tree-ssa-pre.c:gimple_cond_code"}
!2147 = !{!"function_entry_count", i64 218}
!2148 = !{!"tree-ssa-pre.c:gimple_cond_make_false"}
!2149 = !{!"function_entry_count", i64 188}
!2150 = !{!"tree-ssa-pre.c:gimple_cond_make_true"}
!2151 = !{!"function_entry_count", i64 35}
!2152 = !{!"tree-ssa-pre.c:gimple_call_set_fn"}
!2153 = !{!"function_entry_count", i64 209632}
!2154 = !{!"tree-ssa-pre.c:gimple_phi_result_ptr"}
!2155 = !{!"function_entry_count", i64 2551}
!2156 = !{!"tree-ssa-pre.c:gsi_after_labels"}
!2157 = !{!"branch_weights", i32 922, i32 1}
!2158 = !{!"branch_weights", i32 224, i32 2552}
!2159 = !{!"branch_weights", i32 931, i32 922}
!2160 = distinct !{!2160, !1005}
!2161 = !{!"function_entry_count", i64 2474}
!2162 = !{!"tree-ssa-pre.c:single_imm_use"}
!2163 = !{!"branch_weights", i32 226, i32 2250}
!2164 = !{!"branch_weights", i32 1633, i32 618}
!2165 = !{!"branch_weights", i32 1633, i32 1}
!2166 = !{!"branch_weights", i32 618, i32 1}
!2167 = !{!"function_entry_count", i64 1632}
!2168 = !{!"tree-ssa-pre.c:set_ssa_use_from_ptr"}
!2169 = !{!"tree-ssa-pre.c:is_gimple_assign"}
!2170 = !{!"tree-ssa-pre.c:gimple_call_lhs"}
!2171 = !{!"function_entry_count", i64 406}
!2172 = !{!"tree-ssa-pre.c:gimple_cond_set_lhs"}
!2173 = !{!"tree-ssa-pre.c:gimple_cond_set_rhs"}
!2174 = !{!"tree-ssa-pre.c:is_gimple_debug"}
!2175 = !{!"tree-ssa-pre.c:delink_imm_use"}
!2176 = !{!1316, !910, i64 0}
!2177 = !{!"tree-ssa-pre.c:link_imm_use"}
!2178 = !{!"tree-ssa-pre.c:link_imm_use_to_list"}
!2179 = !{!"tree-ssa-pre.c:VEC_bitmap_set_t_heap_free"}
!2180 = !{!"tree-ssa-pre.c:VEC_unsigned_heap_free"}
!2181 = !{!"branch_weights", i32 345, i32 12961}
!2182 = !{!"tree-ssa-pre.c:gate_fre"}
!2183 = !{!"tree-ssa-pre.c:execute_fre"}
