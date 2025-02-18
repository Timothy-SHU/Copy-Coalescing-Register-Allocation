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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
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
%struct.VEC_unsigned_base = type { i32, i32, [1 x i32] }
%struct.vn_nary_op_s = type { i32, i32, i32, ptr, ptr, [4 x ptr] }
%struct.vn_reference_s = type { i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.VEC_vn_reference_op_s_base = type { i32, i32, [1 x %struct.vn_reference_op_struct] }
%struct.vn_reference_op_struct = type { i32, ptr, ptr, ptr, ptr }
%struct.VEC_pre_expr_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.bb_bitmap_sets = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.expr_pred_trans_d = type { ptr, ptr, ptr, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.ao_ref_s = type { ptr, ptr, i64, i64, i64, i32, i32 }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.affine_iv = type { ptr, ptr, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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
@expressions = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"{%s,\00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"%s[%d] := { \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c" (%04d)\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
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
@inserted_exprs = internal unnamed_addr global ptr null, align 8
@.str.28 = private unnamed_addr constant [32 x i8] c"Removing unnecessary insertion:\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@in_fre = internal unnamed_addr global i8 0, align 1
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !310 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !311
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !310 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !311
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !310 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !315
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !320
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !321

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !315
  %11 = load i8, ptr %3, align 1, !tbaa !322
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !310 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !315
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !320
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !321

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !315
  %11 = load i8, ptr %3, align 1, !tbaa !322
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !310 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !311
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !315
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !320
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !321

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !315
  %11 = load i8, ptr %3, align 1, !tbaa !322
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !310 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !311
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !310 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !323
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !324
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !321

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !323
  store i8 %12, ptr %4, align 1, !tbaa !322
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !310 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !323
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !324
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !321

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !323
  store i8 %12, ptr %4, align 1, !tbaa !322
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !310 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !311
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !323
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !324
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !321

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !323
  store i8 %12, ptr %4, align 1, !tbaa !322
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !310 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !310 {
  %2 = load i32, ptr %0, align 8, !tbaa !325
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !310 {
  %2 = load i32, ptr %0, align 8, !tbaa !325
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !310 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !311
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !326
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !310 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !311
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !326
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !310 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !310 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !310 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !310 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #19
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !327

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !310 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @add_to_value(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !330 {
  %3 = load i32, ptr %1, align 8, !tbaa !331
  switch i32 %3, label %26 [
    i32 3, label %4
    i32 0, label %12
    i32 1, label %18
    i32 2, label %22
  ], !prof !333

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !322
  %7 = tail call i32 @get_constant_value_id(ptr noundef %6) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27, !prof !334

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !322
  %11 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %10) #19
  tail call void @add_to_value(i32 noundef %11, ptr noundef nonnull %1)
  br label %27

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !322
  %15 = tail call ptr @VN_INFO(ptr noundef %14) #19
  %16 = getelementptr inbounds %struct.vn_ssa_aux, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !335
  br label %27

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !322
  %21 = load i32, ptr %20, align 8, !tbaa !337
  br label %27

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !322
  %25 = load i32, ptr %24, align 8, !tbaa !339
  br label %27

26:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %27

27:                                               ; preds = %4, %9, %12, %18, %22, %26
  %28 = phi i32 [ 0, %26 ], [ %25, %22 ], [ %21, %18 ], [ %17, %12 ], [ %11, %9 ], [ %7, %4 ]
  %29 = icmp eq i32 %28, %0
  br i1 %29, label %31, label %30, !prof !341

30:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @.str.1) #19
  br label %31

31:                                               ; preds = %27, %30
  %32 = load ptr, ptr @value_expressions, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34, !prof !342

34:                                               ; preds = %31
  %35 = load i32, ptr %32, align 8, !tbaa !343
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi i32 [ %35, %34 ], [ 0, %31 ]
  %38 = icmp ugt i32 %37, %0
  br i1 %38, label %70, label %39, !prof !345

39:                                               ; preds = %36
  %40 = add i32 %0, 1
  br i1 %33, label %43, label %41, !prof !346

41:                                               ; preds = %39
  %42 = load i32, ptr %32, align 8, !tbaa !343
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %42, %41 ], [ 0, %39 ]
  br i1 %33, label %47, label %45, !prof !346

45:                                               ; preds = %43
  %46 = load i32, ptr %32, align 8, !tbaa !343
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %46, %45 ], [ 0, %43 ]
  %49 = sub nsw i32 %40, %48
  br i1 %33, label %56, label %50, !prof !346

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %32, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !347
  %53 = load i32, ptr %32, align 8, !tbaa !343
  %54 = sub i32 %52, %53
  %55 = icmp uge i32 %54, %49
  br label %58

56:                                               ; preds = %47
  %57 = icmp eq i32 %48, %40
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi i1 [ %55, %50 ], [ %57, %56 ]
  br i1 %59, label %62, label %60, !prof !346

60:                                               ; preds = %58
  %61 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %32, i32 noundef %49) #19
  store ptr %61, ptr @value_expressions, align 8, !tbaa !311
  br label %62

62:                                               ; preds = %58, %60
  %63 = load ptr, ptr @value_expressions, align 8, !tbaa !311, !nonnull !348, !noundef !348
  store i32 %40, ptr %63, align 8, !tbaa !343
  %64 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %63, i64 0, i32 2
  %65 = sext i32 %44 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = sub nsw i32 %40, %44
  %68 = sext i32 %67 to i64
  %69 = shl nsw i64 %68, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %66, i8 0, i64 %69, i1 false), !prof !349
  br label %70

70:                                               ; preds = %62, %36
  %71 = load ptr, ptr @value_expressions, align 8
  %72 = zext i32 %0 to i64
  %73 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %71, i64 0, i32 2, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !311
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %84, !prof !350

76:                                               ; preds = %70
  %77 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  %78 = tail call ptr @pool_alloc(ptr noundef %77) #19
  %79 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %79, ptr %78, align 8, !tbaa !351
  %80 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %81 = getelementptr inbounds %struct.bitmap_set, ptr %78, i64 0, i32 1
  store ptr %80, ptr %81, align 8, !tbaa !353
  %82 = load ptr, ptr @value_expressions, align 8
  %83 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %82, i64 0, i32 2, i64 %72
  store ptr %78, ptr %83, align 8, !tbaa !311
  br label %84

84:                                               ; preds = %76, %70
  %85 = phi ptr [ %74, %70 ], [ %78, %76 ]
  %86 = getelementptr inbounds %struct.bitmap_set, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !353
  %88 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %87, i32 noundef %0) #19
  %89 = load ptr, ptr %85, align 8, !tbaa !351
  %90 = load i32, ptr %1, align 8, !tbaa !331
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %107, !prof !354

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !322
  %95 = getelementptr inbounds %struct.tree_ssa_name, ptr %94, i64 0, i32 3
  %96 = load i32, ptr %95, align 8, !tbaa !322
  %97 = load ptr, ptr @name_to_id, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99, !prof !355

99:                                               ; preds = %92
  %100 = load i32, ptr %97, align 4, !tbaa !356
  br label %101

101:                                              ; preds = %99, %92
  %102 = phi i32 [ %100, %99 ], [ 0, %92 ]
  %103 = icmp ugt i32 %102, %96
  br i1 %103, label %104, label %117, !prof !358

104:                                              ; preds = %101
  %105 = zext i32 %96 to i64
  %106 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %97, i64 0, i32 2, i64 %105
  br label %114

107:                                              ; preds = %84
  %108 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %109 = tail call ptr @htab_find_slot(ptr noundef %108, ptr noundef nonnull %1, i32 noundef 0) #19
  %110 = icmp eq ptr %109, null
  br i1 %110, label %117, label %111, !prof !359

111:                                              ; preds = %107
  %112 = load ptr, ptr %109, align 8, !tbaa !311
  %113 = getelementptr inbounds %struct.pre_expr_d, ptr %112, i64 0, i32 1
  br label %114

114:                                              ; preds = %104, %111
  %115 = phi ptr [ %113, %111 ], [ %106, %104 ]
  %116 = load i32, ptr %115, align 4, !tbaa !326
  br label %117

117:                                              ; preds = %114, %107, %101
  %118 = phi i32 [ 0, %101 ], [ 0, %107 ], [ %116, %114 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122, !prof !360

120:                                              ; preds = %117
  %121 = tail call fastcc i32 @alloc_expression_id(ptr noundef nonnull %1)
  br label %124

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 1
  store i32 %118, ptr %123, align 4, !tbaa !361
  br label %124

124:                                              ; preds = %120, %122
  %125 = phi i32 [ %121, %120 ], [ %118, %122 ]
  %126 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %89, i32 noundef %125) #19
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_expr_value_id(ptr noundef %0) unnamed_addr #9 !prof !362 !PGOFuncName !363 {
  %2 = load i32, ptr %0, align 8, !tbaa !331
  switch i32 %2, label %25 [
    i32 3, label %3
    i32 0, label %11
    i32 1, label %17
    i32 2, label %21
  ], !prof !333

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !322
  %6 = tail call i32 @get_constant_value_id(ptr noundef %5) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26, !prof !334

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !322
  %10 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %9) #19
  tail call void @add_to_value(i32 noundef %10, ptr noundef nonnull %0)
  br label %26

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !322
  %14 = tail call ptr @VN_INFO(ptr noundef %13) #19
  %15 = getelementptr inbounds %struct.vn_ssa_aux, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !335
  br label %26

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !322
  %20 = load i32, ptr %19, align 8, !tbaa !337
  br label %26

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !322
  %24 = load i32, ptr %23, align 8, !tbaa !339
  br label %26

25:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %26

26:                                               ; preds = %3, %8, %25, %21, %17, %11
  %27 = phi i32 [ 0, %25 ], [ %24, %21 ], [ %20, %17 ], [ %16, %11 ], [ %10, %8 ], [ %6, %3 ]
  ret i32 %27
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_pre_expr(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !310 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !311
  tail call fastcc void @print_pre_expr(ptr noundef %2, ptr noundef %0)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !311
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_pre_expr(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !310 {
  %3 = load i32, ptr %1, align 8, !tbaa !331
  switch i32 %3, label %120 [
    i32 3, label %4
    i32 0, label %7
    i32 1, label %10
    i32 2, label %41
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !322
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %6, i32 noundef 0) #19
  br label %120

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !322
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %9, i32 noundef 0) #19
  br label %120

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !322
  %13 = getelementptr inbounds %struct.vn_nary_op_s, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 65535
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !311
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %18)
  %20 = load i32, ptr %13, align 4
  %21 = icmp ult i32 %20, 65536
  br i1 %21, label %39, label %22

22:                                               ; preds = %10, %33
  %23 = phi i64 [ %34, %33 ], [ 0, %10 ]
  %24 = getelementptr inbounds %struct.vn_nary_op_s, ptr %12, i64 0, i32 5, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !311
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %25, i32 noundef 0) #19
  %26 = load i32, ptr %13, align 4
  %27 = lshr i32 %26, 16
  %28 = add nsw i32 %27, -1
  %29 = zext i32 %28 to i64
  %30 = icmp eq i64 %23, %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = tail call i32 @fputc(i32 44, ptr %0)
  br label %33

33:                                               ; preds = %22, %31
  %34 = add nuw nsw i64 %23, 1
  %35 = load i32, ptr %13, align 4
  %36 = lshr i32 %35, 16
  %37 = zext nneg i32 %36 to i64
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %22, label %39, !llvm.loop !364

39:                                               ; preds = %33, %10
  %40 = tail call i32 @fputc(i32 125, ptr %0)
  br label %120

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !322
  %44 = tail call i32 @fputc(i32 123, ptr %0)
  %45 = getelementptr inbounds %struct.vn_reference_s, ptr %43, i64 0, i32 5
  br label %46

46:                                               ; preds = %110, %41
  %47 = phi i32 [ 0, %41 ], [ %111, %110 ]
  %48 = load ptr, ptr %45, align 8, !tbaa !365
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %48, align 8, !tbaa !366
  %52 = icmp ugt i32 %51, %47
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = zext i32 %47 to i64
  %55 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %48, i64 0, i32 2, i64 %54
  br label %56

56:                                               ; preds = %46, %50, %53
  %57 = phi ptr [ %55, %53 ], [ null, %50 ], [ null, %46 ]
  %58 = phi i1 [ false, %53 ], [ true, %50 ], [ true, %46 ]
  br i1 %58, label %112, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %57, align 8, !tbaa !368
  %61 = icmp eq i32 %60, 141
  br i1 %61, label %77, label %62

62:                                               ; preds = %59
  %63 = sext i32 %60 to i64
  %64 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !326
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = zext i32 %60 to i64
  %69 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !311
  %71 = tail call i32 @fputs(ptr %70, ptr %0)
  %72 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %57, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !370
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %67
  %76 = tail call i32 @fputc(i32 60, ptr %0)
  br label %77

77:                                               ; preds = %67, %75, %62, %59
  %78 = phi i1 [ false, %75 ], [ true, %67 ], [ true, %62 ], [ true, %59 ]
  %79 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %57, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !370
  %81 = icmp eq ptr %80, null
  br i1 %81, label %96, label %82

82:                                               ; preds = %77
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef nonnull %80, i32 noundef 0) #19
  %83 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %57, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !371
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = tail call i32 @fputc(i32 44, ptr %0)
  %88 = load ptr, ptr %83, align 8, !tbaa !371
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %88, i32 noundef 0) #19
  br label %89

89:                                               ; preds = %86, %82
  %90 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %57, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !372
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = tail call i32 @fputc(i32 44, ptr %0)
  %95 = load ptr, ptr %90, align 8, !tbaa !372
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %95, i32 noundef 0) #19
  br label %96

96:                                               ; preds = %89, %93, %77
  br i1 %78, label %99, label %97

97:                                               ; preds = %96
  %98 = tail call i32 @fputc(i32 62, ptr %0)
  br label %99

99:                                               ; preds = %97, %96
  %100 = load ptr, ptr %45, align 8, !tbaa !365
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr %100, align 8, !tbaa !366
  br label %104

104:                                              ; preds = %99, %102
  %105 = phi i32 [ %103, %102 ], [ 0, %99 ]
  %106 = add i32 %105, -1
  %107 = icmp eq i32 %47, %106
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = tail call i32 @fputc(i32 44, ptr %0)
  br label %110

110:                                              ; preds = %108, %104
  %111 = add i32 %47, 1
  br label %46, !llvm.loop !373

112:                                              ; preds = %56
  %113 = tail call i32 @fputc(i32 125, ptr %0)
  %114 = getelementptr inbounds %struct.vn_reference_s, ptr %43, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !374
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = tail call i32 @fputc(i32 64, ptr %0)
  %119 = load ptr, ptr %114, align 8, !tbaa !374
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %119, i32 noundef 0) #19
  br label %120

120:                                              ; preds = %112, %117, %2, %39, %7, %4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_bitmap_set(ptr noundef %0) local_unnamed_addr #10 !prof !310 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !311
  tail call fastcc void @print_bitmap_set(ptr noundef %2, ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_bitmap_set(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #10 !prof !310 {
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %2, i32 noundef %3)
  %6 = icmp eq ptr %1, null
  br i1 %6, label %94, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %1, align 8, !tbaa !351
  %9 = load ptr, ptr %8, align 8, !tbaa !375
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @bitmap_zero_bits, ptr %9
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !377
  %14 = shl i32 %13, 7
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !379
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %14, %18
  br label %20

20:                                               ; preds = %89, %7
  %21 = phi i64 [ %16, %7 ], [ %92, %89 ]
  %22 = phi i32 [ 0, %7 ], [ %78, %89 ]
  %23 = phi i32 [ %19, %7 ], [ %93, %89 ]
  %24 = phi ptr [ %11, %7 ], [ %80, %89 ]
  %25 = phi i1 [ false, %7 ], [ true, %89 ]
  %26 = icmp eq i64 %21, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %55, %20
  %28 = phi i64 [ %21, %20 ], [ %60, %55 ]
  %29 = phi i32 [ %22, %20 ], [ %56, %55 ]
  %30 = phi i32 [ %23, %20 ], [ %57, %55 ]
  %31 = phi ptr [ %24, %20 ], [ %48, %55 ]
  %32 = and i64 %28, 1
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %38, %34 ], [ %30, %27 ]
  %36 = phi i64 [ %37, %34 ], [ %28, %27 ]
  %37 = lshr exact i64 %36, 1
  %38 = add i32 %35, 1
  %39 = and i64 %36, 2
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %34, label %76, !llvm.loop !380

41:                                               ; preds = %20
  %42 = add i32 %23, 63
  %43 = and i32 %42, -64
  %44 = add i32 %22, 1
  br label %45

45:                                               ; preds = %72, %41
  %46 = phi i64 [ %21, %41 ], [ %67, %72 ]
  %47 = phi i32 [ %43, %41 ], [ %75, %72 ]
  %48 = phi ptr [ %24, %41 ], [ %70, %72 ]
  %49 = phi i32 [ %44, %41 ], [ 0, %72 ]
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %66, label %51

51:                                               ; preds = %45
  %52 = add i32 %47, 128
  %53 = shl i32 %49, 6
  %54 = sub i32 %52, %53
  br label %55

55:                                               ; preds = %51, %62
  %56 = phi i32 [ %64, %62 ], [ %49, %51 ]
  %57 = phi i32 [ %63, %62 ], [ %47, %51 ]
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 3, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !379
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %27

62:                                               ; preds = %55
  %63 = add i32 %57, 64
  %64 = add i32 %56, 1
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %55, !llvm.loop !381

66:                                               ; preds = %62, %45
  %67 = phi i64 [ %46, %45 ], [ %60, %62 ]
  %68 = phi i32 [ %47, %45 ], [ %54, %62 ]
  %69 = phi i32 [ %49, %45 ], [ 2, %62 ]
  %70 = load ptr, ptr %48, align 8, !tbaa !382
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !377
  %75 = shl i32 %74, 7
  br label %45, !llvm.loop !383

76:                                               ; preds = %66, %34, %27
  %77 = phi i64 [ %28, %27 ], [ %37, %34 ], [ %67, %66 ]
  %78 = phi i32 [ %29, %27 ], [ %29, %34 ], [ %69, %66 ]
  %79 = phi i32 [ %30, %27 ], [ %38, %34 ], [ %68, %66 ]
  %80 = phi ptr [ %31, %27 ], [ %31, %34 ], [ %70, %66 ]
  %81 = phi i1 [ false, %27 ], [ false, %34 ], [ true, %66 ]
  br i1 %81, label %94, label %82

82:                                               ; preds = %76
  %83 = load ptr, ptr @expressions, align 8
  %84 = zext i32 %79 to i64
  %85 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %83, i64 0, i32 2, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !311
  br i1 %25, label %87, label %89

87:                                               ; preds = %82
  %88 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 2, i64 1, ptr %0)
  br label %89

89:                                               ; preds = %87, %82
  tail call fastcc void @print_pre_expr(ptr noundef %0, ptr noundef %86)
  %90 = tail call fastcc i32 @get_expr_value_id(ptr noundef %86)
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %90)
  %92 = lshr i64 %77, 1
  %93 = add i32 %79, 1
  br label %20, !llvm.loop !384

94:                                               ; preds = %76, %4
  %95 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 3, i64 1, ptr %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_value_expressions(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !310 {
  %3 = alloca [10 x i8], align 1
  %4 = load ptr, ptr @value_expressions, align 8
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %4, i64 0, i32 2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !311
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #19
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %1)
  call fastcc void @print_bitmap_set(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #19
  br label %11

11:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_value_expressions(i32 noundef %0) local_unnamed_addr #10 !prof !310 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !311
  tail call void @print_value_expressions(ptr noundef %2, i32 noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_pre() #11 !prof !385 !PGOFuncName !386 {
  %1 = load i32, ptr @flag_tree_pre, align 4, !tbaa !326
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @do_pre() #12 !prof !385 !PGOFuncName !387 {
  %1 = tail call fastcc i32 @execute_pre(i8 noundef zeroext 0)
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_fre() #11 !prof !385 !PGOFuncName !388 {
  %1 = load i32, ptr @flag_tree_fre, align 4, !tbaa !326
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_fre() #12 !prof !385 !PGOFuncName !389 {
  %1 = tail call fastcc i32 @execute_pre(i8 noundef zeroext 1)
  ret i32 %1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare i32 @get_constant_value_id(ptr noundef) local_unnamed_addr #3

declare i32 @get_or_alloc_constant_value_id(ptr noundef) local_unnamed_addr #3

declare ptr @VN_INFO(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @value_id_constant_p(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @alloc_expression_id(ptr noundef %0) unnamed_addr #9 !prof !390 !PGOFuncName !391 {
  %2 = load i32, ptr @next_expression_id, align 4, !tbaa !326
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %5, !prof !392

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 254, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, ptr @next_expression_id, align 4, !tbaa !326
  %7 = add i32 %6, 1
  store i32 %7, ptr @next_expression_id, align 4, !tbaa !326
  %8 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 1
  store i32 %6, ptr %8, align 4, !tbaa !361
  %9 = load ptr, ptr @expressions, align 8, !tbaa !311
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11, !prof !392

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !393
  %14 = load i32, ptr %9, align 8, !tbaa !395
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18, !prof !396

16:                                               ; preds = %5, %11
  %17 = tail call ptr @vec_heap_p_reserve(ptr noundef %9, i32 noundef 1) #19
  store ptr %17, ptr @expressions, align 8, !tbaa !311
  br label %18

18:                                               ; preds = %11, %16
  %19 = load ptr, ptr @expressions, align 8, !tbaa !311
  %20 = load i32, ptr %19, align 8, !tbaa !395
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !395
  %22 = zext i32 %20 to i64
  %23 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %19, i64 0, i32 2, i64 %22
  store ptr %0, ptr %23, align 8, !tbaa !311
  %24 = load i32, ptr %0, align 8, !tbaa !331
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %106, !prof !397

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !322
  %29 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !322
  %31 = load ptr, ptr @cfun, align 8, !tbaa !311
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !398
  %34 = getelementptr inbounds %struct.gimple_df, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !400
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !404

37:                                               ; preds = %26
  %38 = load i32, ptr %35, align 8, !tbaa !405
  br label %39

39:                                               ; preds = %26, %37
  %40 = phi i32 [ %38, %37 ], [ 0, %26 ]
  %41 = load ptr, ptr @name_to_id, align 8, !tbaa !311
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43, !prof !407

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %41, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !408
  %46 = load i32, ptr %41, align 4, !tbaa !356
  %47 = sub i32 %45, %46
  %48 = icmp uge i32 %47, %40
  br label %51

49:                                               ; preds = %39
  %50 = icmp eq i32 %40, 0
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi i1 [ %48, %43 ], [ %50, %49 ]
  br i1 %52, label %55, label %53, !prof !409

53:                                               ; preds = %51
  %54 = tail call ptr @vec_heap_o_reserve(ptr noundef %41, i32 noundef %40, i64 noundef 8, i64 noundef 4) #19
  store ptr %54, ptr @name_to_id, align 8, !tbaa !311
  br label %55

55:                                               ; preds = %51, %53
  %56 = load ptr, ptr @cfun, align 8, !tbaa !311
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !398
  %59 = getelementptr inbounds %struct.gimple_df, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !400
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62, !prof !404

62:                                               ; preds = %55
  %63 = load i32, ptr %60, align 8, !tbaa !405
  br label %64

64:                                               ; preds = %55, %62
  %65 = phi i32 [ %63, %62 ], [ 0, %55 ]
  %66 = load ptr, ptr @name_to_id, align 8, !tbaa !311
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !404

68:                                               ; preds = %64
  %69 = load i32, ptr %66, align 4, !tbaa !356
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi i32 [ %69, %68 ], [ 0, %64 ]
  br i1 %67, label %74, label %72, !prof !404

72:                                               ; preds = %70
  %73 = load i32, ptr %66, align 4, !tbaa !356
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %73, %72 ], [ 0, %70 ]
  %76 = sub nsw i32 %65, %75
  br i1 %67, label %83, label %77, !prof !404

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %66, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !408
  %80 = load i32, ptr %66, align 4, !tbaa !356
  %81 = sub i32 %79, %80
  %82 = icmp uge i32 %81, %76
  br label %85

83:                                               ; preds = %74
  %84 = icmp eq i32 %75, %65
  br label %85

85:                                               ; preds = %83, %77
  %86 = phi i1 [ %82, %77 ], [ %84, %83 ]
  br i1 %86, label %89, label %87, !prof !410

87:                                               ; preds = %85
  %88 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %66, i32 noundef %76, i64 noundef 8, i64 noundef 4) #19
  store ptr %88, ptr @name_to_id, align 8, !tbaa !311
  br label %89

89:                                               ; preds = %85, %87
  %90 = load ptr, ptr @name_to_id, align 8, !nonnull !348, !noundef !348
  store i32 %65, ptr %90, align 4, !tbaa !356
  %91 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %90, i64 0, i32 2
  %92 = sext i32 %71 to i64
  %93 = getelementptr inbounds i32, ptr %91, i64 %92
  %94 = sub nsw i32 %65, %71
  %95 = sext i32 %94 to i64
  %96 = shl nsw i64 %95, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %93, i8 0, i64 %96, i1 false), !prof !411
  %97 = zext i32 %30 to i64
  %98 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %90, i64 0, i32 2, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !326
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101, !prof !410

101:                                              ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 265, ptr noundef nonnull @.str.1) #19
  br label %102

102:                                              ; preds = %89, %101
  %103 = load ptr, ptr @name_to_id, align 8
  %104 = load i32, ptr %8, align 4, !tbaa !361
  %105 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %103, i64 0, i32 2, i64 %97
  store i32 %104, ptr %105, align 4, !tbaa !326
  br label %113

106:                                              ; preds = %18
  %107 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %108 = tail call ptr @htab_find_slot(ptr noundef %107, ptr noundef nonnull %0, i32 noundef 1) #19
  %109 = load ptr, ptr %108, align 8, !tbaa !311
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111, !prof !412

111:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 271, ptr noundef nonnull @.str.1) #19
  br label %112

112:                                              ; preds = %106, %111
  store ptr %0, ptr %108, align 8, !tbaa !311
  br label %113

113:                                              ; preds = %112, %102
  %114 = load i32, ptr @next_expression_id, align 4, !tbaa !326
  %115 = add i32 %114, -1
  ret i32 %115
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @execute_pre(i8 noundef zeroext %0) unnamed_addr #12 !prof !413 !PGOFuncName !414 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = load i32, ptr @optimize, align 4, !tbaa !326
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %23, !prof !415

18:                                               ; preds = %1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !311
  %20 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %19) #19
  %21 = icmp ne i8 %20, 0
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %18, %1
  %24 = phi i8 [ 0, %1 ], [ %22, %18 ]
  store i8 %24, ptr @do_partial_partial, align 1, !tbaa !322
  %25 = icmp eq i8 %0, 0
  br i1 %25, label %26, label %27, !prof !416

26:                                               ; preds = %23
  tail call void @loop_optimizer_init(i32 noundef 7) #19
  br label %27

27:                                               ; preds = %26, %23
  %28 = tail call zeroext i8 @run_scc_vn(i8 noundef zeroext %0) #19
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32, !prof !417

30:                                               ; preds = %27
  br i1 %25, label %31, label %5223

31:                                               ; preds = %30
  tail call fastcc void @remove_dead_inserted_code()
  br label %5221

32:                                               ; preds = %27
  store i32 1, ptr @next_expression_id, align 4, !tbaa !326
  store ptr null, ptr @expressions, align 8, !tbaa !311
  %33 = tail call ptr @vec_heap_p_reserve(ptr noundef null, i32 noundef 1) #19
  store ptr %33, ptr @expressions, align 8, !tbaa !311
  %34 = load i32, ptr %33, align 8, !tbaa !395
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 8, !tbaa !395
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %33, i64 0, i32 2, i64 %36
  store ptr null, ptr %37, align 8, !tbaa !311
  %38 = tail call i32 @get_max_value_id() #19
  %39 = add i32 %38, 1
  %40 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %39) #19
  store ptr %40, ptr @value_expressions, align 8, !tbaa !311
  %41 = tail call i32 @get_max_value_id() #19
  %42 = add i32 %41, 1
  %43 = load ptr, ptr @value_expressions, align 8, !tbaa !311
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !417

45:                                               ; preds = %32
  %46 = load i32, ptr %43, align 8, !tbaa !343
  br label %47

47:                                               ; preds = %45, %32
  %48 = phi i32 [ %46, %45 ], [ 0, %32 ]
  br i1 %44, label %51, label %49, !prof !417

49:                                               ; preds = %47
  %50 = load i32, ptr %43, align 8, !tbaa !343
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %50, %49 ], [ 0, %47 ]
  %53 = sub nsw i32 %42, %52
  br i1 %44, label %60, label %54, !prof !417

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %43, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !347
  %57 = load i32, ptr %43, align 8, !tbaa !343
  %58 = sub i32 %56, %57
  %59 = icmp uge i32 %58, %53
  br label %62

60:                                               ; preds = %51
  %61 = icmp eq i32 %52, %42
  br label %62

62:                                               ; preds = %60, %54
  %63 = phi i1 [ %59, %54 ], [ %61, %60 ]
  br i1 %63, label %66, label %64, !prof !415

64:                                               ; preds = %62
  %65 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %43, i32 noundef %53) #19
  store ptr %65, ptr @value_expressions, align 8, !tbaa !311
  br label %66

66:                                               ; preds = %64, %62
  %67 = load ptr, ptr @value_expressions, align 8, !tbaa !311, !nonnull !348, !noundef !348
  store i32 %42, ptr %67, align 8, !tbaa !343
  %68 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %67, i64 0, i32 2
  %69 = sext i32 %48 to i64
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = sub nsw i32 %42, %48
  %72 = sext i32 %71 to i64
  %73 = shl nsw i64 %72, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %70, i8 0, i64 %73, i1 false), !prof !418
  store ptr null, ptr @name_to_id, align 8, !tbaa !311
  store i8 %0, ptr @in_fre, align 1, !tbaa !322
  store ptr null, ptr @inserted_exprs, align 8, !tbaa !311
  store ptr null, ptr @pretemp, align 8, !tbaa !311
  store ptr null, ptr @prephitemp, align 8, !tbaa !311
  tail call void @connect_infinite_loops_to_exit() #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) @pre_stats, i8 0, i64 20, i1 false)
  %74 = load ptr, ptr @cfun, align 8, !tbaa !311
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !419
  %77 = getelementptr inbounds %struct.control_flow_graph, ptr %76, i64 0, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !420
  %79 = add nsw i32 %78, -2
  %80 = sext i32 %79 to i64
  %81 = shl nsw i64 %80, 2
  %82 = tail call ptr @xmalloc(i64 noundef %81) #19
  store ptr %82, ptr @postorder, align 8, !tbaa !311
  %83 = load ptr, ptr @cfun, align 8, !tbaa !311
  %84 = getelementptr inbounds %struct.function, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !419
  %86 = getelementptr inbounds %struct.control_flow_graph, ptr %85, i64 0, i32 3
  %87 = load i32, ptr %86, align 8, !tbaa !420
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = shl nsw i64 %89, 4
  %91 = tail call ptr @xmalloc(i64 noundef %90) #19
  %92 = load ptr, ptr @cfun, align 8, !tbaa !311
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !419
  %95 = getelementptr inbounds %struct.control_flow_graph, ptr %94, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !422
  %97 = tail call ptr @sbitmap_alloc(i32 noundef %96) #19
  tail call void @sbitmap_zero(ptr noundef %97) #19
  %98 = load ptr, ptr @cfun, align 8, !tbaa !311
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !419
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !423
  store i32 0, ptr %91, align 8, !tbaa.struct !424
  %103 = getelementptr inbounds i8, ptr %91, i64 8
  store ptr %102, ptr %103, align 8, !tbaa.struct !425
  br label %104

104:                                              ; preds = %66, %211
  %105 = phi i32 [ 1, %66 ], [ %213, %211 ]
  %106 = phi i32 [ 0, %66 ], [ %212, %211 ]
  %107 = sext i32 %105 to i64
  %108 = getelementptr %struct.edge_iterator, ptr %91, i64 %107
  %109 = getelementptr %struct.edge_iterator, ptr %108, i64 -1
  %110 = load i32, ptr %109, align 8, !tbaa.struct !424
  %111 = getelementptr %struct.edge_iterator, ptr %108, i64 -1, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa.struct !425
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115, !prof !426

114:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #19
  br label %115

115:                                              ; preds = %114, %104
  %116 = load ptr, ptr %112, align 8, !tbaa !311, !nonnull !348, !noundef !348
  %117 = zext i32 %110 to i64
  %118 = getelementptr inbounds %struct.VEC_edge_base, ptr %116, i64 0, i32 2, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !311
  %120 = load ptr, ptr %119, align 8, !tbaa !427
  %121 = getelementptr inbounds %struct.edge_def, ptr %119, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !429
  %123 = load ptr, ptr @cfun, align 8, !tbaa !311
  %124 = getelementptr inbounds %struct.function, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !419
  %126 = load ptr, ptr %125, align 8, !tbaa !430
  %127 = icmp eq ptr %120, %126
  br i1 %127, label %165, label %128, !prof !431

128:                                              ; preds = %115
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 9
  %130 = load i32, ptr %129, align 8, !tbaa !432
  %131 = lshr i32 %130, 6
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds %struct.simple_bitmap_def, ptr %97, i64 0, i32 3, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !379
  %135 = and i32 %130, 63
  %136 = zext nneg i32 %135 to i64
  %137 = shl nuw i64 1, %136
  %138 = and i64 %137, %134
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %165, !prof !434

140:                                              ; preds = %128
  %141 = load ptr, ptr %97, align 8, !tbaa !435
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143, !prof !437

143:                                              ; preds = %140
  %144 = getelementptr inbounds i8, ptr %141, i64 %132
  %145 = load i8, ptr %144, align 1, !tbaa !322
  %146 = add i8 %145, 1
  store i8 %146, ptr %144, align 1, !tbaa !322
  br label %147

147:                                              ; preds = %143, %140
  %148 = load i64, ptr %133, align 8, !tbaa !379
  %149 = or i64 %148, %137
  store i64 %149, ptr %133, align 8, !tbaa !379
  %150 = load ptr, ptr %120, align 8, !tbaa !438
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152, !prof !439

152:                                              ; preds = %147
  %153 = load i32, ptr %150, align 8, !tbaa !440
  br label %154

154:                                              ; preds = %152, %147
  %155 = phi i32 [ %153, %152 ], [ 0, %147 ]
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %160, label %157, !prof !439

157:                                              ; preds = %154
  %158 = add nsw i32 %105, 1
  store i32 0, ptr %108, align 8, !tbaa.struct !424
  %159 = getelementptr inbounds i8, ptr %108, i64 8
  store ptr %120, ptr %159, align 8, !tbaa.struct !425
  br label %211

160:                                              ; preds = %154
  %161 = load i32, ptr %129, align 8, !tbaa !432
  %162 = add nsw i32 %106, 1
  %163 = sext i32 %106 to i64
  %164 = getelementptr inbounds i32, ptr %82, i64 %163
  store i32 %161, ptr %164, align 4, !tbaa !326
  br label %211

165:                                              ; preds = %115, %128
  %166 = load i32, ptr %116, align 8, !tbaa !440
  %167 = add i32 %110, 1
  %168 = icmp eq i32 %167, %166
  br i1 %168, label %169, label %179, !prof !442

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.control_flow_graph, ptr %125, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !423
  %172 = icmp eq ptr %122, %171
  br i1 %172, label %179, label %173, !prof !443

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 9
  %175 = load i32, ptr %174, align 8, !tbaa !432
  %176 = add nsw i32 %106, 1
  %177 = sext i32 %106 to i64
  %178 = getelementptr inbounds i32, ptr %82, i64 %177
  store i32 %175, ptr %178, align 4, !tbaa !326
  br label %179

179:                                              ; preds = %165, %169, %173
  %180 = phi i32 [ %176, %173 ], [ %106, %169 ], [ %106, %165 ]
  %181 = load i32, ptr %116, align 8, !tbaa !440
  %182 = icmp eq i32 %167, %181
  br i1 %182, label %209, label %183, !prof !442

183:                                              ; preds = %179
  %184 = load i32, ptr %109, align 8
  %185 = load ptr, ptr %111, align 8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %188, !prof !444

187:                                              ; preds = %183
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #19
  br label %188

188:                                              ; preds = %187, %183
  %189 = load ptr, ptr %185, align 8, !tbaa !311
  %190 = icmp eq ptr %189, null
  br i1 %190, label %197, label %191, !prof !444

191:                                              ; preds = %188
  %192 = load ptr, ptr %111, align 8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %195, !prof !444

194:                                              ; preds = %191
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #19
  br label %195

195:                                              ; preds = %194, %191
  %196 = load ptr, ptr %192, align 8, !tbaa !311
  br label %197

197:                                              ; preds = %195, %188
  %198 = phi ptr [ %196, %195 ], [ null, %188 ]
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200, !prof !444

200:                                              ; preds = %197
  %201 = load i32, ptr %198, align 8, !tbaa !440
  br label %202

202:                                              ; preds = %200, %197
  %203 = phi i32 [ %201, %200 ], [ 0, %197 ]
  %204 = icmp ult i32 %184, %203
  br i1 %204, label %206, label %205, !prof !445

205:                                              ; preds = %202
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %206

206:                                              ; preds = %205, %202
  %207 = load i32, ptr %109, align 8, !tbaa !446
  %208 = add i32 %207, 1
  store i32 %208, ptr %109, align 8, !tbaa !446
  br label %211

209:                                              ; preds = %179
  %210 = add nsw i32 %105, -1
  br label %211

211:                                              ; preds = %209, %206, %160, %157
  %212 = phi i32 [ %180, %209 ], [ %180, %206 ], [ %106, %157 ], [ %162, %160 ]
  %213 = phi i32 [ %210, %209 ], [ %105, %206 ], [ %158, %157 ], [ %105, %160 ]
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %104, !prof !431, !llvm.loop !448

215:                                              ; preds = %211
  tail call void @free(ptr noundef %91)
  %216 = load ptr, ptr %97, align 8, !tbaa !435
  tail call void @free(ptr noundef %216)
  tail call void @free(ptr noundef %97)
  %217 = load ptr, ptr @cfun, align 8, !tbaa !311
  %218 = getelementptr inbounds %struct.function, ptr %217, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !419
  %220 = load ptr, ptr %219, align 8, !tbaa !311
  %221 = icmp eq ptr %220, null
  br i1 %221, label %229, label %222, !prof !449

222:                                              ; preds = %215, %222
  %223 = phi ptr [ %227, %222 ], [ %220, %215 ]
  %224 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #19
  %225 = getelementptr inbounds %struct.basic_block_def, ptr %223, i64 0, i32 2
  store ptr %224, ptr %225, align 8, !tbaa !450
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %223, i64 0, i32 6
  %227 = load ptr, ptr %226, align 8, !tbaa !311
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %222, !prof !451, !llvm.loop !452

229:                                              ; preds = %222, %215
  tail call void @calculate_dominance_info(i32 noundef 2) #19
  tail call void @calculate_dominance_info(i32 noundef 1) #19
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @grand_bitmap_obstack) #19
  %230 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %230, ptr @inserted_phi_names, align 8, !tbaa !311
  %231 = tail call ptr @htab_create(i64 noundef 5110, ptr noundef nonnull @expr_pred_trans_hash, ptr noundef nonnull @expr_pred_trans_eq, ptr noundef nonnull @free) #19
  store ptr %231, ptr @phi_translate_table, align 8, !tbaa !311
  %232 = load ptr, ptr @cfun, align 8, !tbaa !311
  %233 = getelementptr inbounds %struct.function, ptr %232, i64 0, i32 3
  %234 = load ptr, ptr %233, align 8, !tbaa !398
  %235 = getelementptr inbounds %struct.gimple_df, ptr %234, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !400
  %237 = icmp eq ptr %236, null
  br i1 %237, label %242, label %238, !prof !417

238:                                              ; preds = %229
  %239 = load i32, ptr %236, align 8, !tbaa !405
  %240 = mul i32 %239, 3
  %241 = zext i32 %240 to i64
  br label %242

242:                                              ; preds = %238, %229
  %243 = phi i64 [ %241, %238 ], [ 0, %229 ]
  %244 = tail call ptr @htab_create(i64 noundef %243, ptr noundef nonnull @pre_expr_hash, ptr noundef nonnull @pre_expr_eq, ptr noundef null) #19
  store ptr %244, ptr @expression_to_id, align 8, !tbaa !311
  %245 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.31, i64 noundef 16, i64 noundef 30) #19
  store ptr %245, ptr @bitmap_set_pool, align 8, !tbaa !311
  %246 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.32, i64 noundef 16, i64 noundef 30) #19
  store ptr %246, ptr @pre_expr_pool, align 8, !tbaa !311
  %247 = load ptr, ptr @cfun, align 8, !tbaa !311
  %248 = getelementptr inbounds %struct.function, ptr %247, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !419
  %250 = load ptr, ptr %249, align 8, !tbaa !311
  %251 = icmp eq ptr %250, null
  br i1 %251, label %285, label %252, !prof !449

252:                                              ; preds = %242, %252
  %253 = phi ptr [ %283, %252 ], [ %250, %242 ]
  %254 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  %255 = tail call ptr @pool_alloc(ptr noundef %254) #19
  %256 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %256, ptr %255, align 8, !tbaa !351
  %257 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %258 = getelementptr inbounds %struct.bitmap_set, ptr %255, i64 0, i32 1
  store ptr %257, ptr %258, align 8, !tbaa !353
  %259 = getelementptr inbounds %struct.basic_block_def, ptr %253, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !450
  store ptr %255, ptr %260, align 8, !tbaa !453
  %261 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  %262 = tail call ptr @pool_alloc(ptr noundef %261) #19
  %263 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %263, ptr %262, align 8, !tbaa !351
  %264 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %265 = getelementptr inbounds %struct.bitmap_set, ptr %262, i64 0, i32 1
  store ptr %264, ptr %265, align 8, !tbaa !353
  %266 = load ptr, ptr %259, align 8, !tbaa !450
  %267 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %266, i64 0, i32 1
  store ptr %262, ptr %267, align 8, !tbaa !455
  %268 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  %269 = tail call ptr @pool_alloc(ptr noundef %268) #19
  %270 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %270, ptr %269, align 8, !tbaa !351
  %271 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %272 = getelementptr inbounds %struct.bitmap_set, ptr %269, i64 0, i32 1
  store ptr %271, ptr %272, align 8, !tbaa !353
  %273 = load ptr, ptr %259, align 8, !tbaa !450
  %274 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %273, i64 0, i32 2
  store ptr %269, ptr %274, align 8, !tbaa !456
  %275 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  %276 = tail call ptr @pool_alloc(ptr noundef %275) #19
  %277 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %277, ptr %276, align 8, !tbaa !351
  %278 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %279 = getelementptr inbounds %struct.bitmap_set, ptr %276, i64 0, i32 1
  store ptr %278, ptr %279, align 8, !tbaa !353
  %280 = load ptr, ptr %259, align 8, !tbaa !450
  %281 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %280, i64 0, i32 3
  store ptr %276, ptr %281, align 8, !tbaa !457
  %282 = getelementptr inbounds %struct.basic_block_def, ptr %253, i64 0, i32 6
  %283 = load ptr, ptr %282, align 8, !tbaa !311
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %252, !prof !451, !llvm.loop !458

285:                                              ; preds = %252, %242
  %286 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %286, ptr @need_eh_cleanup, align 8, !tbaa !311
  tail call void @scev_initialize() #19
  br label %287

287:                                              ; preds = %443, %285
  %288 = phi i64 [ %444, %443 ], [ 1, %285 ]
  %289 = load ptr, ptr @cfun, align 8, !tbaa !311
  %290 = getelementptr inbounds %struct.function, ptr %289, i64 0, i32 3
  %291 = load ptr, ptr %290, align 8, !tbaa !398
  %292 = getelementptr inbounds %struct.gimple_df, ptr %291, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !400
  %294 = icmp eq ptr %293, null
  br i1 %294, label %297, label %295, !prof !459

295:                                              ; preds = %287
  %296 = load i32, ptr %293, align 8, !tbaa !405
  br label %297

297:                                              ; preds = %295, %287
  %298 = phi i32 [ %296, %295 ], [ 0, %287 ]
  %299 = zext i32 %298 to i64
  %300 = icmp ult i64 %288, %299
  br i1 %300, label %301, label %445, !prof !460

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.VEC_tree_base, ptr %293, i64 0, i32 2, i64 %288
  %303 = load ptr, ptr %302, align 8, !tbaa !311
  %304 = icmp eq ptr %303, null
  br i1 %304, label %443, label %305, !prof !461

305:                                              ; preds = %301
  %306 = load i64, ptr %303, align 8
  %307 = and i64 %306, 4294967296
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %443, label %309, !prof !462

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.tree_ssa_name, ptr %303, i64 0, i32 5
  %311 = getelementptr inbounds %struct.tree_ssa_name, ptr %303, i64 0, i32 5, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !463
  %313 = icmp eq ptr %310, %312
  br i1 %313, label %319, label %314, !prof !465

314:                                              ; preds = %309
  %315 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !326
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %319, label %317, !prof !466

317:                                              ; preds = %314
  %318 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %310) #19
  br label %319

319:                                              ; preds = %317, %314, %309
  %320 = phi i8 [ %318, %317 ], [ 1, %309 ], [ 0, %314 ]
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %322, label %443, !prof !466

322:                                              ; preds = %319
  %323 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %303) #19
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %443, label %325, !prof !467

325:                                              ; preds = %322
  %326 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %303)
  %327 = load i32, ptr %326, align 8, !tbaa !331
  switch i32 %327, label %350 [
    i32 3, label %328
    i32 0, label %336
    i32 1, label %342
    i32 2, label %346
  ], !prof !333

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.pre_expr_d, ptr %326, i64 0, i32 2
  %330 = load ptr, ptr %329, align 8, !tbaa !322
  %331 = tail call i32 @get_constant_value_id(ptr noundef %330) #19
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %351, !prof !334

333:                                              ; preds = %328
  %334 = load ptr, ptr %329, align 8, !tbaa !322
  %335 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %334) #19
  tail call void @add_to_value(i32 noundef %335, ptr noundef nonnull %326)
  br label %351

336:                                              ; preds = %325
  %337 = getelementptr inbounds %struct.pre_expr_d, ptr %326, i64 0, i32 2
  %338 = load ptr, ptr %337, align 8, !tbaa !322
  %339 = tail call ptr @VN_INFO(ptr noundef %338) #19
  %340 = getelementptr inbounds %struct.vn_ssa_aux, ptr %339, i64 0, i32 2
  %341 = load i32, ptr %340, align 8, !tbaa !335
  br label %351

342:                                              ; preds = %325
  %343 = getelementptr inbounds %struct.pre_expr_d, ptr %326, i64 0, i32 2
  %344 = load ptr, ptr %343, align 8, !tbaa !322
  %345 = load i32, ptr %344, align 8, !tbaa !337
  br label %351

346:                                              ; preds = %325
  %347 = getelementptr inbounds %struct.pre_expr_d, ptr %326, i64 0, i32 2
  %348 = load ptr, ptr %347, align 8, !tbaa !322
  %349 = load i32, ptr %348, align 8, !tbaa !339
  br label %351

350:                                              ; preds = %325
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %351

351:                                              ; preds = %328, %333, %336, %342, %346, %350
  %352 = phi i32 [ 0, %350 ], [ %349, %346 ], [ %345, %342 ], [ %341, %336 ], [ %335, %333 ], [ %331, %328 ]
  tail call void @add_to_value(i32 noundef %352, ptr noundef nonnull %326)
  %353 = load i8, ptr @in_fre, align 1, !tbaa !322
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %355, label %434, !prof !416

355:                                              ; preds = %351
  %356 = load ptr, ptr @cfun, align 8, !tbaa !311
  %357 = getelementptr inbounds %struct.function, ptr %356, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !419
  %359 = load ptr, ptr %358, align 8, !tbaa !430
  %360 = getelementptr inbounds %struct.basic_block_def, ptr %359, i64 0, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !450
  %362 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %361, i64 0, i32 2
  %363 = load ptr, ptr %362, align 8, !tbaa !456
  %364 = load i32, ptr %326, align 8, !tbaa !331
  switch i32 %364, label %387 [
    i32 3, label %365
    i32 0, label %373
    i32 1, label %379
    i32 2, label %383
  ], !prof !333

365:                                              ; preds = %355
  %366 = getelementptr inbounds %struct.pre_expr_d, ptr %326, i64 0, i32 2
  %367 = load ptr, ptr %366, align 8, !tbaa !322
  %368 = tail call i32 @get_constant_value_id(ptr noundef %367) #19
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %388, !prof !334

370:                                              ; preds = %365
  %371 = load ptr, ptr %366, align 8, !tbaa !322
  %372 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %371) #19
  tail call void @add_to_value(i32 noundef %372, ptr noundef nonnull %326)
  br label %388

373:                                              ; preds = %355
  %374 = getelementptr inbounds %struct.pre_expr_d, ptr %326, i64 0, i32 2
  %375 = load ptr, ptr %374, align 8, !tbaa !322
  %376 = tail call ptr @VN_INFO(ptr noundef %375) #19
  %377 = getelementptr inbounds %struct.vn_ssa_aux, ptr %376, i64 0, i32 2
  %378 = load i32, ptr %377, align 8, !tbaa !335
  br label %388

379:                                              ; preds = %355
  %380 = getelementptr inbounds %struct.pre_expr_d, ptr %326, i64 0, i32 2
  %381 = load ptr, ptr %380, align 8, !tbaa !322
  %382 = load i32, ptr %381, align 8, !tbaa !337
  br label %388

383:                                              ; preds = %355
  %384 = getelementptr inbounds %struct.pre_expr_d, ptr %326, i64 0, i32 2
  %385 = load ptr, ptr %384, align 8, !tbaa !322
  %386 = load i32, ptr %385, align 8, !tbaa !339
  br label %388

387:                                              ; preds = %355
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %388

388:                                              ; preds = %365, %370, %373, %379, %383, %387
  %389 = phi i32 [ 0, %387 ], [ %386, %383 ], [ %382, %379 ], [ %378, %373 ], [ %372, %370 ], [ %368, %365 ]
  %390 = tail call zeroext i8 @value_id_constant_p(i32 noundef %389) #19
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %392, label %434, !prof !468

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.bitmap_set, ptr %363, i64 0, i32 1
  %394 = load ptr, ptr %393, align 8, !tbaa !353
  %395 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %394, i32 noundef %389) #19
  %396 = load ptr, ptr %363, align 8, !tbaa !351
  %397 = load i32, ptr %326, align 8, !tbaa !331
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %414, !prof !354

399:                                              ; preds = %392
  %400 = getelementptr inbounds %struct.pre_expr_d, ptr %326, i64 0, i32 2
  %401 = load ptr, ptr %400, align 8, !tbaa !322
  %402 = getelementptr inbounds %struct.tree_ssa_name, ptr %401, i64 0, i32 3
  %403 = load i32, ptr %402, align 8, !tbaa !322
  %404 = load ptr, ptr @name_to_id, align 8
  %405 = icmp eq ptr %404, null
  br i1 %405, label %408, label %406, !prof !355

406:                                              ; preds = %399
  %407 = load i32, ptr %404, align 4, !tbaa !356
  br label %408

408:                                              ; preds = %406, %399
  %409 = phi i32 [ %407, %406 ], [ 0, %399 ]
  %410 = icmp ugt i32 %409, %403
  br i1 %410, label %411, label %424, !prof !358

411:                                              ; preds = %408
  %412 = zext i32 %403 to i64
  %413 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %404, i64 0, i32 2, i64 %412
  br label %421

414:                                              ; preds = %392
  %415 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %416 = tail call ptr @htab_find_slot(ptr noundef %415, ptr noundef nonnull %326, i32 noundef 0) #19
  %417 = icmp eq ptr %416, null
  br i1 %417, label %424, label %418, !prof !359

418:                                              ; preds = %414
  %419 = load ptr, ptr %416, align 8, !tbaa !311
  %420 = getelementptr inbounds %struct.pre_expr_d, ptr %419, i64 0, i32 1
  br label %421

421:                                              ; preds = %411, %418
  %422 = phi ptr [ %420, %418 ], [ %413, %411 ]
  %423 = load i32, ptr %422, align 4, !tbaa !326
  br label %424

424:                                              ; preds = %421, %414, %408
  %425 = phi i32 [ 0, %408 ], [ 0, %414 ], [ %423, %421 ]
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %429, !prof !360

427:                                              ; preds = %424
  %428 = tail call fastcc i32 @alloc_expression_id(ptr noundef nonnull %326)
  br label %431

429:                                              ; preds = %424
  %430 = getelementptr inbounds %struct.pre_expr_d, ptr %326, i64 0, i32 1
  store i32 %425, ptr %430, align 4, !tbaa !361
  br label %431

431:                                              ; preds = %429, %427
  %432 = phi i32 [ %428, %427 ], [ %425, %429 ]
  %433 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %396, i32 noundef %432) #19
  br label %434

434:                                              ; preds = %431, %388, %351
  %435 = load ptr, ptr @cfun, align 8, !tbaa !311
  %436 = getelementptr inbounds %struct.function, ptr %435, i64 0, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !419
  %438 = load ptr, ptr %437, align 8, !tbaa !430
  %439 = getelementptr inbounds %struct.basic_block_def, ptr %438, i64 0, i32 2
  %440 = load ptr, ptr %439, align 8, !tbaa !450
  %441 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %440, i64 0, i32 3
  %442 = load ptr, ptr %441, align 8, !tbaa !457
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %442, ptr noundef nonnull %326)
  br label %443

443:                                              ; preds = %434, %322, %319, %305, %301
  %444 = add nuw nsw i64 %288, 1
  br label %287, !llvm.loop !469

445:                                              ; preds = %297
  %446 = getelementptr inbounds %struct.function, ptr %289, i64 0, i32 1
  %447 = load ptr, ptr %446, align 8, !tbaa !419
  %448 = getelementptr inbounds %struct.control_flow_graph, ptr %447, i64 0, i32 3
  %449 = load i32, ptr %448, align 8, !tbaa !420
  %450 = sext i32 %449 to i64
  %451 = shl nsw i64 %450, 3
  %452 = tail call ptr @xmalloc(i64 noundef %451) #19
  %453 = load ptr, ptr @cfun, align 8, !tbaa !311
  %454 = getelementptr inbounds %struct.function, ptr %453, i64 0, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !419
  %456 = load ptr, ptr %455, align 8, !tbaa !430
  %457 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %456) #19
  %458 = icmp eq ptr %457, null
  br i1 %458, label %459, label %462, !prof !449

459:                                              ; preds = %462, %445
  %460 = phi i64 [ 0, %445 ], [ %465, %462 ]
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %1823, label %472, !prof !449

462:                                              ; preds = %445, %462
  %463 = phi ptr [ %467, %462 ], [ %457, %445 ]
  %464 = phi i64 [ %465, %462 ], [ 0, %445 ]
  %465 = add i64 %464, 1
  %466 = getelementptr inbounds ptr, ptr %452, i64 %464
  store ptr %463, ptr %466, align 8, !tbaa !311
  %467 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %463) #19
  %468 = icmp eq ptr %467, null
  br i1 %468, label %459, label %462, !prof !470, !llvm.loop !471

469:                                              ; preds = %1816, %1813
  %470 = phi i64 [ %474, %1813 ], [ %1819, %1816 ]
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %1823, label %472, !prof !472, !llvm.loop !473

472:                                              ; preds = %459, %469
  %473 = phi i64 [ %470, %469 ], [ %460, %459 ]
  %474 = add i64 %473, -1
  %475 = getelementptr inbounds ptr, ptr %452, i64 %474
  %476 = load ptr, ptr %475, align 8, !tbaa !311
  %477 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %476) #19
  %478 = icmp eq ptr %477, null
  br i1 %478, label %494, label %479, !prof !439

479:                                              ; preds = %472
  %480 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 2
  %481 = load ptr, ptr %480, align 8, !tbaa !450
  %482 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %481, i64 0, i32 3
  %483 = load ptr, ptr %482, align 8, !tbaa !457
  %484 = getelementptr inbounds %struct.basic_block_def, ptr %477, i64 0, i32 2
  %485 = load ptr, ptr %484, align 8, !tbaa !450
  %486 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %485, i64 0, i32 3
  %487 = load ptr, ptr %486, align 8, !tbaa !457
  %488 = load ptr, ptr %483, align 8, !tbaa !351
  %489 = load ptr, ptr %487, align 8, !tbaa !351
  call void @bitmap_copy(ptr noundef %488, ptr noundef %489) #19
  %490 = getelementptr inbounds %struct.bitmap_set, ptr %483, i64 0, i32 1
  %491 = load ptr, ptr %490, align 8, !tbaa !353
  %492 = getelementptr inbounds %struct.bitmap_set, ptr %487, i64 0, i32 1
  %493 = load ptr, ptr %492, align 8, !tbaa !353
  call void @bitmap_copy(ptr noundef %491, ptr noundef %493) #19
  br label %494

494:                                              ; preds = %479, %472
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %476) #19
  %495 = load ptr, ptr %11, align 8, !tbaa.struct !474
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #19
  %496 = icmp eq ptr %495, null
  br i1 %496, label %668, label %497, !prof !475

497:                                              ; preds = %494, %664
  %498 = phi ptr [ %666, %664 ], [ %495, %494 ]
  %499 = load ptr, ptr %498, align 8, !tbaa !476
  %500 = getelementptr inbounds %struct.gimple_statement_phi, ptr %499, i64 0, i32 3
  %501 = load ptr, ptr %500, align 8, !tbaa !322
  %502 = call zeroext i8 @is_gimple_reg(ptr noundef %501) #19
  %503 = icmp eq i8 %502, 0
  br i1 %503, label %664, label %504, !prof !478

504:                                              ; preds = %497
  %505 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 2
  %506 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %501)
  %507 = load i32, ptr %506, align 8, !tbaa !331
  switch i32 %507, label %530 [
    i32 3, label %508
    i32 0, label %516
    i32 1, label %522
    i32 2, label %526
  ], !prof !333

508:                                              ; preds = %504
  %509 = getelementptr inbounds %struct.pre_expr_d, ptr %506, i64 0, i32 2
  %510 = load ptr, ptr %509, align 8, !tbaa !322
  %511 = call i32 @get_constant_value_id(ptr noundef %510) #19
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %531, !prof !334

513:                                              ; preds = %508
  %514 = load ptr, ptr %509, align 8, !tbaa !322
  %515 = call i32 @get_or_alloc_constant_value_id(ptr noundef %514) #19
  call void @add_to_value(i32 noundef %515, ptr noundef nonnull %506)
  br label %531

516:                                              ; preds = %504
  %517 = getelementptr inbounds %struct.pre_expr_d, ptr %506, i64 0, i32 2
  %518 = load ptr, ptr %517, align 8, !tbaa !322
  %519 = call ptr @VN_INFO(ptr noundef %518) #19
  %520 = getelementptr inbounds %struct.vn_ssa_aux, ptr %519, i64 0, i32 2
  %521 = load i32, ptr %520, align 8, !tbaa !335
  br label %531

522:                                              ; preds = %504
  %523 = getelementptr inbounds %struct.pre_expr_d, ptr %506, i64 0, i32 2
  %524 = load ptr, ptr %523, align 8, !tbaa !322
  %525 = load i32, ptr %524, align 8, !tbaa !337
  br label %531

526:                                              ; preds = %504
  %527 = getelementptr inbounds %struct.pre_expr_d, ptr %506, i64 0, i32 2
  %528 = load ptr, ptr %527, align 8, !tbaa !322
  %529 = load i32, ptr %528, align 8, !tbaa !339
  br label %531

530:                                              ; preds = %504
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %531

531:                                              ; preds = %508, %513, %516, %522, %526, %530
  %532 = phi i32 [ 0, %530 ], [ %529, %526 ], [ %525, %522 ], [ %521, %516 ], [ %515, %513 ], [ %511, %508 ]
  call void @add_to_value(i32 noundef %532, ptr noundef nonnull %506)
  %533 = load ptr, ptr %505, align 8, !tbaa !450
  %534 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %533, i64 0, i32 1
  %535 = load ptr, ptr %534, align 8, !tbaa !455
  %536 = load i32, ptr %506, align 8, !tbaa !331
  switch i32 %536, label %559 [
    i32 3, label %537
    i32 0, label %545
    i32 1, label %551
    i32 2, label %555
  ], !prof !333

537:                                              ; preds = %531
  %538 = getelementptr inbounds %struct.pre_expr_d, ptr %506, i64 0, i32 2
  %539 = load ptr, ptr %538, align 8, !tbaa !322
  %540 = call i32 @get_constant_value_id(ptr noundef %539) #19
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %560, !prof !334

542:                                              ; preds = %537
  %543 = load ptr, ptr %538, align 8, !tbaa !322
  %544 = call i32 @get_or_alloc_constant_value_id(ptr noundef %543) #19
  call void @add_to_value(i32 noundef %544, ptr noundef nonnull %506)
  br label %560

545:                                              ; preds = %531
  %546 = getelementptr inbounds %struct.pre_expr_d, ptr %506, i64 0, i32 2
  %547 = load ptr, ptr %546, align 8, !tbaa !322
  %548 = call ptr @VN_INFO(ptr noundef %547) #19
  %549 = getelementptr inbounds %struct.vn_ssa_aux, ptr %548, i64 0, i32 2
  %550 = load i32, ptr %549, align 8, !tbaa !335
  br label %560

551:                                              ; preds = %531
  %552 = getelementptr inbounds %struct.pre_expr_d, ptr %506, i64 0, i32 2
  %553 = load ptr, ptr %552, align 8, !tbaa !322
  %554 = load i32, ptr %553, align 8, !tbaa !337
  br label %560

555:                                              ; preds = %531
  %556 = getelementptr inbounds %struct.pre_expr_d, ptr %506, i64 0, i32 2
  %557 = load ptr, ptr %556, align 8, !tbaa !322
  %558 = load i32, ptr %557, align 8, !tbaa !339
  br label %560

559:                                              ; preds = %531
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %560

560:                                              ; preds = %537, %542, %545, %551, %555, %559
  %561 = phi i32 [ 0, %559 ], [ %558, %555 ], [ %554, %551 ], [ %550, %545 ], [ %544, %542 ], [ %540, %537 ]
  %562 = call zeroext i8 @value_id_constant_p(i32 noundef %561) #19
  %563 = icmp eq i8 %562, 0
  br i1 %563, label %564, label %606, !prof !468

564:                                              ; preds = %560
  %565 = getelementptr inbounds %struct.bitmap_set, ptr %535, i64 0, i32 1
  %566 = load ptr, ptr %565, align 8, !tbaa !353
  %567 = call zeroext i8 @bitmap_set_bit(ptr noundef %566, i32 noundef %561) #19
  %568 = load ptr, ptr %535, align 8, !tbaa !351
  %569 = load i32, ptr %506, align 8, !tbaa !331
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %586, !prof !354

571:                                              ; preds = %564
  %572 = getelementptr inbounds %struct.pre_expr_d, ptr %506, i64 0, i32 2
  %573 = load ptr, ptr %572, align 8, !tbaa !322
  %574 = getelementptr inbounds %struct.tree_ssa_name, ptr %573, i64 0, i32 3
  %575 = load i32, ptr %574, align 8, !tbaa !322
  %576 = load ptr, ptr @name_to_id, align 8
  %577 = icmp eq ptr %576, null
  br i1 %577, label %580, label %578, !prof !355

578:                                              ; preds = %571
  %579 = load i32, ptr %576, align 4, !tbaa !356
  br label %580

580:                                              ; preds = %578, %571
  %581 = phi i32 [ %579, %578 ], [ 0, %571 ]
  %582 = icmp ugt i32 %581, %575
  br i1 %582, label %583, label %596, !prof !358

583:                                              ; preds = %580
  %584 = zext i32 %575 to i64
  %585 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %576, i64 0, i32 2, i64 %584
  br label %593

586:                                              ; preds = %564
  %587 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %588 = call ptr @htab_find_slot(ptr noundef %587, ptr noundef nonnull %506, i32 noundef 0) #19
  %589 = icmp eq ptr %588, null
  br i1 %589, label %596, label %590, !prof !359

590:                                              ; preds = %586
  %591 = load ptr, ptr %588, align 8, !tbaa !311
  %592 = getelementptr inbounds %struct.pre_expr_d, ptr %591, i64 0, i32 1
  br label %593

593:                                              ; preds = %583, %590
  %594 = phi ptr [ %592, %590 ], [ %585, %583 ]
  %595 = load i32, ptr %594, align 4, !tbaa !326
  br label %596

596:                                              ; preds = %593, %586, %580
  %597 = phi i32 [ 0, %580 ], [ 0, %586 ], [ %595, %593 ]
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %601, !prof !360

599:                                              ; preds = %596
  %600 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %506)
  br label %603

601:                                              ; preds = %596
  %602 = getelementptr inbounds %struct.pre_expr_d, ptr %506, i64 0, i32 1
  store i32 %597, ptr %602, align 4, !tbaa !361
  br label %603

603:                                              ; preds = %601, %599
  %604 = phi i32 [ %600, %599 ], [ %597, %601 ]
  %605 = call zeroext i8 @bitmap_set_bit(ptr noundef %568, i32 noundef %604) #19
  br label %606

606:                                              ; preds = %560, %603
  %607 = load ptr, ptr %505, align 8, !tbaa !450
  %608 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %607, i64 0, i32 3
  %609 = load ptr, ptr %608, align 8, !tbaa !457
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %609, ptr noundef nonnull %506)
  %610 = load i8, ptr @in_fre, align 1, !tbaa !322
  %611 = icmp eq i8 %610, 0
  br i1 %611, label %612, label %664, !prof !479

612:                                              ; preds = %606
  %613 = getelementptr inbounds %struct.gimple_statement_phi, ptr %499, i64 0, i32 2
  %614 = load i32, ptr %613, align 4, !tbaa !322
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %664, label %616, !prof !480

616:                                              ; preds = %612
  %617 = getelementptr inbounds %struct.gimple_statement_phi, ptr %499, i64 0, i32 1
  br label %618

618:                                              ; preds = %616, %659
  %619 = phi i64 [ 0, %616 ], [ %660, %659 ]
  %620 = load i32, ptr %617, align 8, !tbaa !322
  %621 = zext i32 %620 to i64
  %622 = icmp ugt i64 %619, %621
  br i1 %622, label %623, label %624, !prof !481

623:                                              ; preds = %618
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %624

624:                                              ; preds = %623, %618
  %625 = getelementptr inbounds %struct.gimple_statement_phi, ptr %499, i64 0, i32 4, i64 %619, i32 0, i32 3
  %626 = load ptr, ptr %625, align 8, !tbaa !482
  %627 = load ptr, ptr %626, align 8, !tbaa !311
  %628 = load i64, ptr %627, align 8
  %629 = and i64 %628, 65535
  %630 = icmp eq i64 %629, 141
  br i1 %630, label %631, label %659, !prof !483

631:                                              ; preds = %624
  %632 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %627)
  %633 = load i32, ptr %632, align 8, !tbaa !331
  switch i32 %633, label %656 [
    i32 3, label %634
    i32 0, label %642
    i32 1, label %648
    i32 2, label %652
  ], !prof !333

634:                                              ; preds = %631
  %635 = getelementptr inbounds %struct.pre_expr_d, ptr %632, i64 0, i32 2
  %636 = load ptr, ptr %635, align 8, !tbaa !322
  %637 = call i32 @get_constant_value_id(ptr noundef %636) #19
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %657, !prof !334

639:                                              ; preds = %634
  %640 = load ptr, ptr %635, align 8, !tbaa !322
  %641 = call i32 @get_or_alloc_constant_value_id(ptr noundef %640) #19
  call void @add_to_value(i32 noundef %641, ptr noundef nonnull %632)
  br label %657

642:                                              ; preds = %631
  %643 = getelementptr inbounds %struct.pre_expr_d, ptr %632, i64 0, i32 2
  %644 = load ptr, ptr %643, align 8, !tbaa !322
  %645 = call ptr @VN_INFO(ptr noundef %644) #19
  %646 = getelementptr inbounds %struct.vn_ssa_aux, ptr %645, i64 0, i32 2
  %647 = load i32, ptr %646, align 8, !tbaa !335
  br label %657

648:                                              ; preds = %631
  %649 = getelementptr inbounds %struct.pre_expr_d, ptr %632, i64 0, i32 2
  %650 = load ptr, ptr %649, align 8, !tbaa !322
  %651 = load i32, ptr %650, align 8, !tbaa !337
  br label %657

652:                                              ; preds = %631
  %653 = getelementptr inbounds %struct.pre_expr_d, ptr %632, i64 0, i32 2
  %654 = load ptr, ptr %653, align 8, !tbaa !322
  %655 = load i32, ptr %654, align 8, !tbaa !339
  br label %657

656:                                              ; preds = %631
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %657

657:                                              ; preds = %634, %639, %642, %648, %652, %656
  %658 = phi i32 [ 0, %656 ], [ %655, %652 ], [ %651, %648 ], [ %647, %642 ], [ %641, %639 ], [ %637, %634 ]
  call void @add_to_value(i32 noundef %658, ptr noundef nonnull %632)
  br label %659

659:                                              ; preds = %657, %624
  %660 = add nuw nsw i64 %619, 1
  %661 = load i32, ptr %613, align 4, !tbaa !322
  %662 = zext i32 %661 to i64
  %663 = icmp ult i64 %660, %662
  br i1 %663, label %618, label %664, !prof !484, !llvm.loop !485

664:                                              ; preds = %659, %612, %606, %497
  %665 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %498, i64 0, i32 2
  %666 = load ptr, ptr %665, align 8, !tbaa !486
  %667 = icmp eq ptr %666, null
  br i1 %667, label %668, label %497, !prof !487, !llvm.loop !488

668:                                              ; preds = %664, %494
  %669 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 2
  %670 = load ptr, ptr %669, align 8, !tbaa !450
  %671 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %670, i64 0, i32 8
  %672 = load i8, ptr %671, align 8
  %673 = and i8 %672, -5
  store i8 %673, ptr %671, align 8
  %674 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 13
  %675 = load i32, ptr %674, align 8, !tbaa !489, !noalias !490
  %676 = and i32 %675, 512
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %678, label %684, !prof !437

678:                                              ; preds = %668
  %679 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 7
  %680 = load ptr, ptr %679, align 8, !tbaa !322, !noalias !490
  %681 = icmp eq ptr %680, null
  br i1 %681, label %684, label %682, !prof !439

682:                                              ; preds = %678
  %683 = load ptr, ptr %680, align 8, !tbaa !493, !noalias !490
  br label %684

684:                                              ; preds = %682, %678, %668
  %685 = phi ptr [ %683, %682 ], [ null, %678 ], [ null, %668 ]
  %686 = icmp eq ptr %685, null
  br i1 %686, label %689, label %687, !prof !439

687:                                              ; preds = %684
  %688 = load ptr, ptr %685, align 8, !tbaa !495, !noalias !490
  br label %689

689:                                              ; preds = %687, %684
  %690 = phi ptr [ %688, %687 ], [ null, %684 ]
  %691 = icmp eq ptr %690, null
  br i1 %691, label %1813, label %692, !prof !497

692:                                              ; preds = %689, %1809
  %693 = phi i32 [ %696, %1809 ], [ 1, %689 ]
  %694 = phi ptr [ %1811, %1809 ], [ %690, %689 ]
  %695 = load ptr, ptr %694, align 8, !tbaa !476
  %696 = add i32 %693, 1
  %697 = getelementptr inbounds %struct.gimple_statement_base, ptr %695, i64 0, i32 1
  store i32 %693, ptr %697, align 4, !tbaa !322
  %698 = load i32, ptr %695, align 8
  %699 = and i32 %698, 255
  %700 = icmp eq i32 %699, 8
  br i1 %700, label %701, label %713, !prof !498

701:                                              ; preds = %692
  %702 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %695) #19
  %703 = icmp eq i8 %702, 0
  br i1 %703, label %704, label %713, !prof !499

704:                                              ; preds = %701
  %705 = call i32 @gimple_call_flags(ptr noundef %695) #19
  %706 = and i32 %705, 5
  %707 = icmp eq i32 %706, 1
  br i1 %707, label %713, label %708, !prof !500

708:                                              ; preds = %704
  %709 = load ptr, ptr %669, align 8, !tbaa !450
  %710 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %709, i64 0, i32 8
  %711 = load i8, ptr %710, align 8
  %712 = or i8 %711, 4
  store i8 %712, ptr %710, align 8
  br label %713

713:                                              ; preds = %708, %704, %701, %692
  %714 = load i32, ptr %695, align 8
  %715 = and i32 %714, 255
  %716 = add nsw i32 %715, -10
  %717 = icmp ult i32 %716, -9
  br i1 %717, label %721, label %718, !prof !501

718:                                              ; preds = %713
  %719 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %695, i64 0, i32 1
  %720 = load ptr, ptr %719, align 8, !tbaa !322
  br label %721

721:                                              ; preds = %718, %713
  %722 = phi ptr [ %720, %718 ], [ null, %713 ]
  %723 = icmp eq ptr %722, null
  br i1 %723, label %734, label %724, !prof !502

724:                                              ; preds = %721
  %725 = and i32 %714, 254
  %726 = add nsw i32 %725, -10
  %727 = icmp ult i32 %726, -4
  br i1 %727, label %734, label %728, !prof !503

728:                                              ; preds = %724
  %729 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %695, i64 0, i32 1
  %730 = load ptr, ptr %729, align 8, !tbaa !322
  %731 = icmp eq ptr %730, null
  br i1 %731, label %734, label %732, !prof !504

732:                                              ; preds = %728
  %733 = load ptr, ptr %722, align 8, !tbaa !505
  br label %734

734:                                              ; preds = %732, %728, %724, %721
  %735 = phi ptr [ %722, %721 ], [ %722, %724 ], [ %722, %728 ], [ %733, %732 ]
  %736 = icmp eq ptr %735, null
  br i1 %736, label %742, label %737, !prof !507

737:                                              ; preds = %734
  %738 = getelementptr inbounds %struct.def_optype_d, ptr %735, i64 0, i32 1
  %739 = load ptr, ptr %738, align 8, !tbaa !508
  %740 = load ptr, ptr %739, align 8, !tbaa !311
  %741 = load ptr, ptr %735, align 8, !tbaa !505
  br label %742

742:                                              ; preds = %737, %734
  %743 = phi ptr [ %741, %737 ], [ %735, %734 ]
  %744 = phi i8 [ 0, %737 ], [ 1, %734 ]
  %745 = phi ptr [ %740, %737 ], [ null, %734 ]
  br i1 %736, label %1043, label %746, !prof !507

746:                                              ; preds = %742, %1038
  %747 = phi ptr [ %1041, %1038 ], [ %745, %742 ]
  %748 = phi i8 [ %1040, %1038 ], [ %744, %742 ]
  %749 = phi ptr [ %1039, %1038 ], [ %743, %742 ]
  %750 = getelementptr inbounds %struct.tree_ssa_name, ptr %747, i64 0, i32 3
  %751 = load i32, ptr %750, align 8, !tbaa !322
  %752 = load ptr, ptr @name_to_id, align 8
  %753 = icmp eq ptr %752, null
  br i1 %753, label %756, label %754, !prof !509

754:                                              ; preds = %746
  %755 = load i32, ptr %752, align 4, !tbaa !356
  br label %756

756:                                              ; preds = %754, %746
  %757 = phi i32 [ %755, %754 ], [ 0, %746 ]
  %758 = icmp ugt i32 %757, %751
  br i1 %758, label %759, label %763, !prof !510

759:                                              ; preds = %756
  %760 = zext i32 %751 to i64
  %761 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %752, i64 0, i32 2, i64 %760
  %762 = load i32, ptr %761, align 4, !tbaa !326
  br label %763

763:                                              ; preds = %759, %756
  %764 = phi i32 [ %762, %759 ], [ 0, %756 ]
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %771, label %766, !prof !511

766:                                              ; preds = %763
  %767 = load ptr, ptr @expressions, align 8
  %768 = zext i32 %764 to i64
  %769 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %767, i64 0, i32 2, i64 %768
  %770 = load ptr, ptr %769, align 8, !tbaa !311
  br label %885

771:                                              ; preds = %763
  %772 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !311
  %773 = call ptr @pool_alloc(ptr noundef %772) #19
  store i32 0, ptr %773, align 8, !tbaa !331
  %774 = getelementptr inbounds %struct.pre_expr_d, ptr %773, i64 0, i32 2
  store ptr %747, ptr %774, align 8, !tbaa !322
  %775 = load i32, ptr @next_expression_id, align 4, !tbaa !326
  %776 = icmp eq i32 %775, -1
  br i1 %776, label %777, label %778, !prof !392

777:                                              ; preds = %771
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 254, ptr noundef nonnull @.str.1) #19
  br label %778

778:                                              ; preds = %777, %771
  %779 = load i32, ptr @next_expression_id, align 4, !tbaa !326
  %780 = add i32 %779, 1
  store i32 %780, ptr @next_expression_id, align 4, !tbaa !326
  %781 = getelementptr inbounds %struct.pre_expr_d, ptr %773, i64 0, i32 1
  store i32 %779, ptr %781, align 4, !tbaa !361
  %782 = load ptr, ptr @expressions, align 8, !tbaa !311
  %783 = icmp eq ptr %782, null
  br i1 %783, label %789, label %784, !prof !392

784:                                              ; preds = %778
  %785 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %782, i64 0, i32 1
  %786 = load i32, ptr %785, align 4, !tbaa !393
  %787 = load i32, ptr %782, align 8, !tbaa !395
  %788 = icmp eq i32 %786, %787
  br i1 %788, label %789, label %791, !prof !396

789:                                              ; preds = %784, %778
  %790 = call ptr @vec_heap_p_reserve(ptr noundef %782, i32 noundef 1) #19
  store ptr %790, ptr @expressions, align 8, !tbaa !311
  br label %791

791:                                              ; preds = %789, %784
  %792 = load ptr, ptr @expressions, align 8, !tbaa !311
  %793 = load i32, ptr %792, align 8, !tbaa !395
  %794 = add i32 %793, 1
  store i32 %794, ptr %792, align 8, !tbaa !395
  %795 = zext i32 %793 to i64
  %796 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %792, i64 0, i32 2, i64 %795
  store ptr %773, ptr %796, align 8, !tbaa !311
  %797 = load i32, ptr %773, align 8, !tbaa !331
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %799, label %878, !prof !397

799:                                              ; preds = %791
  %800 = load ptr, ptr %774, align 8, !tbaa !322
  %801 = getelementptr inbounds %struct.tree_ssa_name, ptr %800, i64 0, i32 3
  %802 = load i32, ptr %801, align 8, !tbaa !322
  %803 = load ptr, ptr @cfun, align 8, !tbaa !311
  %804 = getelementptr inbounds %struct.function, ptr %803, i64 0, i32 3
  %805 = load ptr, ptr %804, align 8, !tbaa !398
  %806 = getelementptr inbounds %struct.gimple_df, ptr %805, i64 0, i32 2
  %807 = load ptr, ptr %806, align 8, !tbaa !400
  %808 = icmp eq ptr %807, null
  br i1 %808, label %811, label %809, !prof !404

809:                                              ; preds = %799
  %810 = load i32, ptr %807, align 8, !tbaa !405
  br label %811

811:                                              ; preds = %809, %799
  %812 = phi i32 [ %810, %809 ], [ 0, %799 ]
  %813 = load ptr, ptr @name_to_id, align 8, !tbaa !311
  %814 = icmp eq ptr %813, null
  br i1 %814, label %821, label %815, !prof !407

815:                                              ; preds = %811
  %816 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %813, i64 0, i32 1
  %817 = load i32, ptr %816, align 4, !tbaa !408
  %818 = load i32, ptr %813, align 4, !tbaa !356
  %819 = sub i32 %817, %818
  %820 = icmp uge i32 %819, %812
  br label %823

821:                                              ; preds = %811
  %822 = icmp eq i32 %812, 0
  br label %823

823:                                              ; preds = %821, %815
  %824 = phi i1 [ %820, %815 ], [ %822, %821 ]
  br i1 %824, label %827, label %825, !prof !409

825:                                              ; preds = %823
  %826 = call ptr @vec_heap_o_reserve(ptr noundef %813, i32 noundef %812, i64 noundef 8, i64 noundef 4) #19
  store ptr %826, ptr @name_to_id, align 8, !tbaa !311
  br label %827

827:                                              ; preds = %825, %823
  %828 = load ptr, ptr @cfun, align 8, !tbaa !311
  %829 = getelementptr inbounds %struct.function, ptr %828, i64 0, i32 3
  %830 = load ptr, ptr %829, align 8, !tbaa !398
  %831 = getelementptr inbounds %struct.gimple_df, ptr %830, i64 0, i32 2
  %832 = load ptr, ptr %831, align 8, !tbaa !400
  %833 = icmp eq ptr %832, null
  br i1 %833, label %836, label %834, !prof !404

834:                                              ; preds = %827
  %835 = load i32, ptr %832, align 8, !tbaa !405
  br label %836

836:                                              ; preds = %834, %827
  %837 = phi i32 [ %835, %834 ], [ 0, %827 ]
  %838 = load ptr, ptr @name_to_id, align 8, !tbaa !311
  %839 = icmp eq ptr %838, null
  br i1 %839, label %842, label %840, !prof !404

840:                                              ; preds = %836
  %841 = load i32, ptr %838, align 4, !tbaa !356
  br label %842

842:                                              ; preds = %840, %836
  %843 = phi i32 [ %841, %840 ], [ 0, %836 ]
  br i1 %839, label %846, label %844, !prof !404

844:                                              ; preds = %842
  %845 = load i32, ptr %838, align 4, !tbaa !356
  br label %846

846:                                              ; preds = %844, %842
  %847 = phi i32 [ %845, %844 ], [ 0, %842 ]
  %848 = sub nsw i32 %837, %847
  br i1 %839, label %855, label %849, !prof !404

849:                                              ; preds = %846
  %850 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %838, i64 0, i32 1
  %851 = load i32, ptr %850, align 4, !tbaa !408
  %852 = load i32, ptr %838, align 4, !tbaa !356
  %853 = sub i32 %851, %852
  %854 = icmp uge i32 %853, %848
  br label %857

855:                                              ; preds = %846
  %856 = icmp eq i32 %847, %837
  br label %857

857:                                              ; preds = %855, %849
  %858 = phi i1 [ %854, %849 ], [ %856, %855 ]
  br i1 %858, label %861, label %859, !prof !410

859:                                              ; preds = %857
  %860 = call ptr @vec_heap_o_reserve_exact(ptr noundef %838, i32 noundef %848, i64 noundef 8, i64 noundef 4) #19
  store ptr %860, ptr @name_to_id, align 8, !tbaa !311
  br label %861

861:                                              ; preds = %859, %857
  %862 = load ptr, ptr @name_to_id, align 8, !nonnull !348, !noundef !348
  store i32 %837, ptr %862, align 4, !tbaa !356
  %863 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %862, i64 0, i32 2
  %864 = sext i32 %843 to i64
  %865 = getelementptr inbounds i32, ptr %863, i64 %864
  %866 = sub nsw i32 %837, %843
  %867 = sext i32 %866 to i64
  %868 = shl nsw i64 %867, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %865, i8 0, i64 %868, i1 false), !prof !512
  %869 = zext i32 %802 to i64
  %870 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %862, i64 0, i32 2, i64 %869
  %871 = load i32, ptr %870, align 4, !tbaa !326
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %874, label %873, !prof !410

873:                                              ; preds = %861
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 265, ptr noundef nonnull @.str.1) #19
  br label %874

874:                                              ; preds = %873, %861
  %875 = load ptr, ptr @name_to_id, align 8
  %876 = load i32, ptr %781, align 4, !tbaa !361
  %877 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %875, i64 0, i32 2, i64 %869
  store i32 %876, ptr %877, align 4, !tbaa !326
  br label %885

878:                                              ; preds = %791
  %879 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %880 = call ptr @htab_find_slot(ptr noundef %879, ptr noundef nonnull %773, i32 noundef 1) #19
  %881 = load ptr, ptr %880, align 8, !tbaa !311
  %882 = icmp eq ptr %881, null
  br i1 %882, label %884, label %883, !prof !412

883:                                              ; preds = %878
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 271, ptr noundef nonnull @.str.1) #19
  br label %884

884:                                              ; preds = %883, %878
  store ptr %773, ptr %880, align 8, !tbaa !311
  br label %885

885:                                              ; preds = %766, %874, %884
  %886 = phi ptr [ %770, %766 ], [ %773, %874 ], [ %773, %884 ]
  %887 = load i32, ptr %886, align 8, !tbaa !331
  switch i32 %887, label %910 [
    i32 3, label %888
    i32 0, label %896
    i32 1, label %902
    i32 2, label %906
  ], !prof !333

888:                                              ; preds = %885
  %889 = getelementptr inbounds %struct.pre_expr_d, ptr %886, i64 0, i32 2
  %890 = load ptr, ptr %889, align 8, !tbaa !322
  %891 = call i32 @get_constant_value_id(ptr noundef %890) #19
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %893, label %911, !prof !334

893:                                              ; preds = %888
  %894 = load ptr, ptr %889, align 8, !tbaa !322
  %895 = call i32 @get_or_alloc_constant_value_id(ptr noundef %894) #19
  call void @add_to_value(i32 noundef %895, ptr noundef nonnull %886)
  br label %911

896:                                              ; preds = %885
  %897 = getelementptr inbounds %struct.pre_expr_d, ptr %886, i64 0, i32 2
  %898 = load ptr, ptr %897, align 8, !tbaa !322
  %899 = call ptr @VN_INFO(ptr noundef %898) #19
  %900 = getelementptr inbounds %struct.vn_ssa_aux, ptr %899, i64 0, i32 2
  %901 = load i32, ptr %900, align 8, !tbaa !335
  br label %911

902:                                              ; preds = %885
  %903 = getelementptr inbounds %struct.pre_expr_d, ptr %886, i64 0, i32 2
  %904 = load ptr, ptr %903, align 8, !tbaa !322
  %905 = load i32, ptr %904, align 8, !tbaa !337
  br label %911

906:                                              ; preds = %885
  %907 = getelementptr inbounds %struct.pre_expr_d, ptr %886, i64 0, i32 2
  %908 = load ptr, ptr %907, align 8, !tbaa !322
  %909 = load i32, ptr %908, align 8, !tbaa !339
  br label %911

910:                                              ; preds = %885
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %911

911:                                              ; preds = %888, %893, %896, %902, %906, %910
  %912 = phi i32 [ 0, %910 ], [ %909, %906 ], [ %905, %902 ], [ %901, %896 ], [ %895, %893 ], [ %891, %888 ]
  call void @add_to_value(i32 noundef %912, ptr noundef %886)
  %913 = load i8, ptr @in_fre, align 1, !tbaa !322
  %914 = icmp eq i8 %913, 0
  br i1 %914, label %915, label %989, !prof !513

915:                                              ; preds = %911
  %916 = load ptr, ptr %669, align 8, !tbaa !450
  %917 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %916, i64 0, i32 2
  %918 = load ptr, ptr %917, align 8, !tbaa !456
  %919 = load i32, ptr %886, align 8, !tbaa !331
  switch i32 %919, label %942 [
    i32 3, label %920
    i32 0, label %928
    i32 1, label %934
    i32 2, label %938
  ], !prof !333

920:                                              ; preds = %915
  %921 = getelementptr inbounds %struct.pre_expr_d, ptr %886, i64 0, i32 2
  %922 = load ptr, ptr %921, align 8, !tbaa !322
  %923 = call i32 @get_constant_value_id(ptr noundef %922) #19
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %925, label %943, !prof !334

925:                                              ; preds = %920
  %926 = load ptr, ptr %921, align 8, !tbaa !322
  %927 = call i32 @get_or_alloc_constant_value_id(ptr noundef %926) #19
  call void @add_to_value(i32 noundef %927, ptr noundef nonnull %886)
  br label %943

928:                                              ; preds = %915
  %929 = getelementptr inbounds %struct.pre_expr_d, ptr %886, i64 0, i32 2
  %930 = load ptr, ptr %929, align 8, !tbaa !322
  %931 = call ptr @VN_INFO(ptr noundef %930) #19
  %932 = getelementptr inbounds %struct.vn_ssa_aux, ptr %931, i64 0, i32 2
  %933 = load i32, ptr %932, align 8, !tbaa !335
  br label %943

934:                                              ; preds = %915
  %935 = getelementptr inbounds %struct.pre_expr_d, ptr %886, i64 0, i32 2
  %936 = load ptr, ptr %935, align 8, !tbaa !322
  %937 = load i32, ptr %936, align 8, !tbaa !337
  br label %943

938:                                              ; preds = %915
  %939 = getelementptr inbounds %struct.pre_expr_d, ptr %886, i64 0, i32 2
  %940 = load ptr, ptr %939, align 8, !tbaa !322
  %941 = load i32, ptr %940, align 8, !tbaa !339
  br label %943

942:                                              ; preds = %915
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %943

943:                                              ; preds = %920, %925, %928, %934, %938, %942
  %944 = phi i32 [ 0, %942 ], [ %941, %938 ], [ %937, %934 ], [ %933, %928 ], [ %927, %925 ], [ %923, %920 ]
  %945 = call zeroext i8 @value_id_constant_p(i32 noundef %944) #19
  %946 = icmp eq i8 %945, 0
  br i1 %946, label %947, label %989, !prof !468

947:                                              ; preds = %943
  %948 = getelementptr inbounds %struct.bitmap_set, ptr %918, i64 0, i32 1
  %949 = load ptr, ptr %948, align 8, !tbaa !353
  %950 = call zeroext i8 @bitmap_set_bit(ptr noundef %949, i32 noundef %944) #19
  %951 = load ptr, ptr %918, align 8, !tbaa !351
  %952 = load i32, ptr %886, align 8, !tbaa !331
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %954, label %969, !prof !354

954:                                              ; preds = %947
  %955 = getelementptr inbounds %struct.pre_expr_d, ptr %886, i64 0, i32 2
  %956 = load ptr, ptr %955, align 8, !tbaa !322
  %957 = getelementptr inbounds %struct.tree_ssa_name, ptr %956, i64 0, i32 3
  %958 = load i32, ptr %957, align 8, !tbaa !322
  %959 = load ptr, ptr @name_to_id, align 8
  %960 = icmp eq ptr %959, null
  br i1 %960, label %963, label %961, !prof !355

961:                                              ; preds = %954
  %962 = load i32, ptr %959, align 4, !tbaa !356
  br label %963

963:                                              ; preds = %961, %954
  %964 = phi i32 [ %962, %961 ], [ 0, %954 ]
  %965 = icmp ugt i32 %964, %958
  br i1 %965, label %966, label %979, !prof !358

966:                                              ; preds = %963
  %967 = zext i32 %958 to i64
  %968 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %959, i64 0, i32 2, i64 %967
  br label %976

969:                                              ; preds = %947
  %970 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %971 = call ptr @htab_find_slot(ptr noundef %970, ptr noundef nonnull %886, i32 noundef 0) #19
  %972 = icmp eq ptr %971, null
  br i1 %972, label %979, label %973, !prof !359

973:                                              ; preds = %969
  %974 = load ptr, ptr %971, align 8, !tbaa !311
  %975 = getelementptr inbounds %struct.pre_expr_d, ptr %974, i64 0, i32 1
  br label %976

976:                                              ; preds = %966, %973
  %977 = phi ptr [ %975, %973 ], [ %968, %966 ]
  %978 = load i32, ptr %977, align 4, !tbaa !326
  br label %979

979:                                              ; preds = %976, %969, %963
  %980 = phi i32 [ 0, %963 ], [ 0, %969 ], [ %978, %976 ]
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %982, label %984, !prof !360

982:                                              ; preds = %979
  %983 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %886)
  br label %986

984:                                              ; preds = %979
  %985 = getelementptr inbounds %struct.pre_expr_d, ptr %886, i64 0, i32 1
  store i32 %980, ptr %985, align 4, !tbaa !361
  br label %986

986:                                              ; preds = %984, %982
  %987 = phi i32 [ %983, %982 ], [ %980, %984 ]
  %988 = call zeroext i8 @bitmap_set_bit(ptr noundef %951, i32 noundef %987) #19
  br label %989

989:                                              ; preds = %986, %943, %911
  %990 = load ptr, ptr %669, align 8, !tbaa !450
  %991 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %990, i64 0, i32 3
  %992 = load ptr, ptr %991, align 8, !tbaa !457
  %993 = load i32, ptr %886, align 8, !tbaa !331
  switch i32 %993, label %1016 [
    i32 3, label %994
    i32 0, label %1002
    i32 1, label %1008
    i32 2, label %1012
  ], !prof !333

994:                                              ; preds = %989
  %995 = getelementptr inbounds %struct.pre_expr_d, ptr %886, i64 0, i32 2
  %996 = load ptr, ptr %995, align 8, !tbaa !322
  %997 = call i32 @get_constant_value_id(ptr noundef %996) #19
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %999, label %1017, !prof !334

999:                                              ; preds = %994
  %1000 = load ptr, ptr %995, align 8, !tbaa !322
  %1001 = call i32 @get_or_alloc_constant_value_id(ptr noundef %1000) #19
  call void @add_to_value(i32 noundef %1001, ptr noundef nonnull %886)
  br label %1017

1002:                                             ; preds = %989
  %1003 = getelementptr inbounds %struct.pre_expr_d, ptr %886, i64 0, i32 2
  %1004 = load ptr, ptr %1003, align 8, !tbaa !322
  %1005 = call ptr @VN_INFO(ptr noundef %1004) #19
  %1006 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1005, i64 0, i32 2
  %1007 = load i32, ptr %1006, align 8, !tbaa !335
  br label %1017

1008:                                             ; preds = %989
  %1009 = getelementptr inbounds %struct.pre_expr_d, ptr %886, i64 0, i32 2
  %1010 = load ptr, ptr %1009, align 8, !tbaa !322
  %1011 = load i32, ptr %1010, align 8, !tbaa !337
  br label %1017

1012:                                             ; preds = %989
  %1013 = getelementptr inbounds %struct.pre_expr_d, ptr %886, i64 0, i32 2
  %1014 = load ptr, ptr %1013, align 8, !tbaa !322
  %1015 = load i32, ptr %1014, align 8, !tbaa !339
  br label %1017

1016:                                             ; preds = %989
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %1017

1017:                                             ; preds = %1016, %1012, %1008, %1002, %999, %994
  %1018 = phi i32 [ 0, %1016 ], [ %1015, %1012 ], [ %1011, %1008 ], [ %1007, %1002 ], [ %1001, %999 ], [ %997, %994 ]
  %1019 = call zeroext i8 @value_id_constant_p(i32 noundef %1018) #19
  %1020 = icmp eq i8 %1019, 0
  br i1 %1020, label %1021, label %1031, !prof !514

1021:                                             ; preds = %1017
  %1022 = getelementptr inbounds %struct.bitmap_set, ptr %992, i64 0, i32 1
  %1023 = load ptr, ptr %1022, align 8, !tbaa !353
  %1024 = call zeroext i8 @bitmap_set_bit(ptr noundef %1023, i32 noundef %1018) #19
  %1025 = icmp eq i8 %1024, 0
  br i1 %1025, label %1031, label %1026, !prof !515

1026:                                             ; preds = %1021
  %1027 = load ptr, ptr %992, align 8, !tbaa !351
  %1028 = getelementptr inbounds %struct.pre_expr_d, ptr %886, i64 0, i32 1
  %1029 = load i32, ptr %1028, align 4, !tbaa !361
  %1030 = call zeroext i8 @bitmap_set_bit(ptr noundef %1027, i32 noundef %1029) #19
  br label %1031

1031:                                             ; preds = %1026, %1021, %1017
  %1032 = icmp eq ptr %749, null
  br i1 %1032, label %1038, label %1033, !prof !516

1033:                                             ; preds = %1031
  %1034 = getelementptr inbounds %struct.def_optype_d, ptr %749, i64 0, i32 1
  %1035 = load ptr, ptr %1034, align 8, !tbaa !508
  %1036 = load ptr, ptr %1035, align 8, !tbaa !311
  %1037 = load ptr, ptr %749, align 8, !tbaa !505
  br label %1038

1038:                                             ; preds = %1033, %1031
  %1039 = phi ptr [ %1037, %1033 ], [ %749, %1031 ]
  %1040 = phi i8 [ %748, %1033 ], [ 1, %1031 ]
  %1041 = phi ptr [ %1036, %1033 ], [ null, %1031 ]
  %1042 = icmp eq i8 %1040, 0
  br i1 %1042, label %746, label %1043, !prof !517, !llvm.loop !518

1043:                                             ; preds = %1038, %742
  %1044 = load i32, ptr %695, align 8
  %1045 = and i32 %1044, 254
  %1046 = add nsw i32 %1045, -10
  %1047 = icmp ult i32 %1046, -4
  %1048 = and i32 %1044, 16384
  %1049 = icmp eq i32 %1048, 0
  %1050 = or i1 %1049, %1047
  br i1 %1050, label %1051, label %1809, !prof !519

1051:                                             ; preds = %1043
  %1052 = call zeroext i8 @stmt_could_throw_p(ptr noundef %695) #19
  %1053 = icmp eq i8 %1052, 0
  br i1 %1053, label %1054, label %1809, !prof !519

1054:                                             ; preds = %1051
  %1055 = load i32, ptr %695, align 8
  %1056 = trunc i32 %1055 to i8
  switch i8 %1056, label %1809 [
    i8 9, label %1057
    i8 8, label %1118
    i8 6, label %1212
  ], !prof !520

1057:                                             ; preds = %1054
  %1058 = and i32 %1055, 255
  %1059 = add nsw i32 %1058, -10
  %1060 = icmp ult i32 %1059, -9
  br i1 %1060, label %1064, label %1061, !prof !417

1061:                                             ; preds = %1057
  %1062 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %695, i64 0, i32 2
  %1063 = load ptr, ptr %1062, align 8, !tbaa !322
  br label %1064

1064:                                             ; preds = %1061, %1057
  %1065 = phi ptr [ %1063, %1061 ], [ null, %1057 ]
  %1066 = icmp eq ptr %1065, null
  br i1 %1066, label %1077, label %1067, !prof !521

1067:                                             ; preds = %1064
  %1068 = and i32 %1055, 254
  %1069 = add nsw i32 %1068, -10
  %1070 = icmp ult i32 %1069, -4
  br i1 %1070, label %1077, label %1071, !prof !522

1071:                                             ; preds = %1067
  %1072 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %695, i64 0, i32 2
  %1073 = load ptr, ptr %1072, align 8, !tbaa !322
  %1074 = icmp eq ptr %1073, null
  br i1 %1074, label %1077, label %1075, !prof !523

1075:                                             ; preds = %1071
  %1076 = load ptr, ptr %1065, align 8, !tbaa !524
  br label %1077

1077:                                             ; preds = %1075, %1071, %1067, %1064
  %1078 = phi ptr [ %1065, %1064 ], [ %1065, %1067 ], [ %1065, %1071 ], [ %1076, %1075 ]
  %1079 = icmp eq ptr %1078, null
  br i1 %1079, label %1085, label %1080, !prof !521

1080:                                             ; preds = %1077
  %1081 = getelementptr inbounds %struct.use_optype_d, ptr %1078, i64 0, i32 1, i32 3
  %1082 = load ptr, ptr %1081, align 8, !tbaa !482
  %1083 = load ptr, ptr %1082, align 8, !tbaa !311
  %1084 = load ptr, ptr %1078, align 8, !tbaa !524
  br label %1085

1085:                                             ; preds = %1080, %1077
  %1086 = phi ptr [ %1084, %1080 ], [ %1078, %1077 ]
  %1087 = phi i8 [ 0, %1080 ], [ 1, %1077 ]
  %1088 = phi ptr [ %1083, %1080 ], [ null, %1077 ]
  br i1 %1079, label %1809, label %1089, !prof !521

1089:                                             ; preds = %1085, %1113
  %1090 = phi ptr [ %1116, %1113 ], [ %1088, %1085 ]
  %1091 = phi i8 [ %1115, %1113 ], [ %1087, %1085 ]
  %1092 = phi ptr [ %1114, %1113 ], [ %1086, %1085 ]
  %1093 = load i8, ptr @in_fre, align 1, !tbaa !322
  %1094 = icmp eq i8 %1093, 0
  br i1 %1094, label %1095, label %1106, !prof !526

1095:                                             ; preds = %1089
  %1096 = load i64, ptr %1090, align 8
  %1097 = and i64 %1096, 65535
  %1098 = icmp eq i64 %1097, 141
  br i1 %1098, label %1099, label %1102, !prof !527

1099:                                             ; preds = %1095
  %1100 = call zeroext i8 @ssa_undefined_value_p(ptr noundef nonnull %1090) #19
  %1101 = icmp eq i8 %1100, 0
  br i1 %1101, label %1102, label %1106, !prof !527

1102:                                             ; preds = %1099, %1095
  %1103 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %1090)
  %1104 = load ptr, ptr %669, align 8, !tbaa !450
  %1105 = load ptr, ptr %1104, align 8, !tbaa !453
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %1105, ptr noundef %1103)
  br label %1106

1106:                                             ; preds = %1089, %1099, %1102
  %1107 = icmp eq ptr %1092, null
  br i1 %1107, label %1113, label %1108, !prof !523

1108:                                             ; preds = %1106
  %1109 = getelementptr inbounds %struct.use_optype_d, ptr %1092, i64 0, i32 1, i32 3
  %1110 = load ptr, ptr %1109, align 8, !tbaa !482
  %1111 = load ptr, ptr %1110, align 8, !tbaa !311
  %1112 = load ptr, ptr %1092, align 8, !tbaa !524
  br label %1113

1113:                                             ; preds = %1106, %1108
  %1114 = phi ptr [ %1112, %1108 ], [ %1092, %1106 ]
  %1115 = phi i8 [ %1091, %1108 ], [ 1, %1106 ]
  %1116 = phi ptr [ %1111, %1108 ], [ null, %1106 ]
  %1117 = icmp eq i8 %1115, 0
  br i1 %1117, label %1089, label %1809, !prof !522, !llvm.loop !528

1118:                                             ; preds = %1054
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  store ptr null, ptr %13, align 8, !tbaa !311
  %1119 = call i32 @gimple_call_flags(ptr noundef %695) #19
  %1120 = and i32 %1119, 3
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1211, label %1122, !prof !529

1122:                                             ; preds = %1118
  call void @copy_reference_ops_from_call(ptr noundef %695, ptr noundef nonnull %13) #19
  %1123 = load i32, ptr %695, align 8
  %1124 = and i32 %1123, 254
  %1125 = add nsw i32 %1124, -10
  %1126 = icmp ult i32 %1125, -4
  br i1 %1126, label %1130, label %1127

1127:                                             ; preds = %1122
  %1128 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %695, i64 0, i32 2
  %1129 = load ptr, ptr %1128, align 8, !tbaa !322
  br label %1130

1130:                                             ; preds = %1127, %1122
  %1131 = phi ptr [ %1129, %1127 ], [ null, %1122 ]
  %1132 = call fastcc ptr @gimple_expr_type(ptr noundef nonnull %695)
  %1133 = load ptr, ptr %13, align 8, !tbaa !311
  %1134 = call ptr @vn_reference_lookup_pieces(ptr noundef %1131, i32 noundef 0, ptr noundef %1132, ptr noundef %1133, ptr noundef nonnull %12, i8 noundef zeroext 0) #19
  %1135 = load ptr, ptr %13, align 8, !tbaa !311
  %1136 = icmp eq ptr %1135, null
  br i1 %1136, label %1138, label %1137

1137:                                             ; preds = %1130
  call void @free(ptr noundef %1135)
  br label %1138

1138:                                             ; preds = %1137, %1130
  store ptr null, ptr %13, align 8, !tbaa !311
  %1139 = load ptr, ptr %12, align 8, !tbaa !311
  %1140 = icmp eq ptr %1139, null
  br i1 %1140, label %1211, label %1141

1141:                                             ; preds = %1138, %1183
  %1142 = phi i32 [ %1184, %1183 ], [ 0, %1138 ]
  %1143 = load ptr, ptr %12, align 8, !tbaa !311
  %1144 = getelementptr inbounds %struct.vn_reference_s, ptr %1143, i64 0, i32 5
  %1145 = load ptr, ptr %1144, align 8, !tbaa !365
  %1146 = icmp eq ptr %1145, null
  br i1 %1146, label %1153, label %1147

1147:                                             ; preds = %1141
  %1148 = load i32, ptr %1145, align 8, !tbaa !366
  %1149 = icmp ugt i32 %1148, %1142
  br i1 %1149, label %1150, label %1153

1150:                                             ; preds = %1147
  %1151 = zext i32 %1142 to i64
  %1152 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %1145, i64 0, i32 2, i64 %1151
  br label %1153

1153:                                             ; preds = %1150, %1147, %1141
  %1154 = phi ptr [ %1152, %1150 ], [ null, %1147 ], [ null, %1141 ]
  %1155 = phi i1 [ false, %1150 ], [ true, %1147 ], [ true, %1141 ]
  br i1 %1155, label %1185, label %1156

1156:                                             ; preds = %1153
  %1157 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1154, i64 0, i32 2
  %1158 = load ptr, ptr %1157, align 8, !tbaa !370
  %1159 = icmp eq ptr %1158, null
  br i1 %1159, label %1165, label %1160

1160:                                             ; preds = %1156
  %1161 = load i64, ptr %1158, align 8
  %1162 = and i64 %1161, 65535
  %1163 = icmp eq i64 %1162, 141
  br i1 %1163, label %1164, label %1165

1164:                                             ; preds = %1160
  call fastcc void @add_to_exp_gen(ptr noundef %476, ptr noundef nonnull %1158)
  br label %1165

1165:                                             ; preds = %1164, %1160, %1156
  %1166 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1154, i64 0, i32 3
  %1167 = load ptr, ptr %1166, align 8, !tbaa !371
  %1168 = icmp eq ptr %1167, null
  br i1 %1168, label %1174, label %1169

1169:                                             ; preds = %1165
  %1170 = load i64, ptr %1167, align 8
  %1171 = and i64 %1170, 65535
  %1172 = icmp eq i64 %1171, 141
  br i1 %1172, label %1173, label %1174

1173:                                             ; preds = %1169
  call fastcc void @add_to_exp_gen(ptr noundef %476, ptr noundef nonnull %1167)
  br label %1174

1174:                                             ; preds = %1173, %1169, %1165
  %1175 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1154, i64 0, i32 4
  %1176 = load ptr, ptr %1175, align 8, !tbaa !372
  %1177 = icmp eq ptr %1176, null
  br i1 %1177, label %1183, label %1178

1178:                                             ; preds = %1174
  %1179 = load i64, ptr %1176, align 8
  %1180 = and i64 %1179, 65535
  %1181 = icmp eq i64 %1180, 141
  br i1 %1181, label %1182, label %1183

1182:                                             ; preds = %1178
  call fastcc void @add_to_exp_gen(ptr noundef %476, ptr noundef nonnull %1176)
  br label %1183

1183:                                             ; preds = %1182, %1178, %1174
  %1184 = add i32 %1142, 1
  br label %1141, !llvm.loop !530

1185:                                             ; preds = %1153
  %1186 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !311
  %1187 = call ptr @pool_alloc(ptr noundef %1186) #19
  store i32 2, ptr %1187, align 8, !tbaa !331
  %1188 = getelementptr inbounds %struct.pre_expr_d, ptr %1187, i64 0, i32 1
  store i32 0, ptr %1188, align 4, !tbaa !361
  %1189 = load ptr, ptr %12, align 8, !tbaa !311
  %1190 = getelementptr inbounds %struct.pre_expr_d, ptr %1187, i64 0, i32 2
  store ptr %1189, ptr %1190, align 8, !tbaa !322
  %1191 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %1192 = call ptr @htab_find_slot(ptr noundef %1191, ptr noundef nonnull %1187, i32 noundef 0) #19
  %1193 = icmp eq ptr %1192, null
  br i1 %1193, label %1198, label %1194

1194:                                             ; preds = %1185
  %1195 = load ptr, ptr %1192, align 8, !tbaa !311
  %1196 = getelementptr inbounds %struct.pre_expr_d, ptr %1195, i64 0, i32 1
  %1197 = load i32, ptr %1196, align 4, !tbaa !361
  br label %1198

1198:                                             ; preds = %1194, %1185
  %1199 = phi i32 [ %1197, %1194 ], [ 0, %1185 ]
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1201, label %1203

1201:                                             ; preds = %1198
  %1202 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %1187)
  br label %1204

1203:                                             ; preds = %1198
  store i32 %1199, ptr %1188, align 4, !tbaa !361
  br label %1204

1204:                                             ; preds = %1203, %1201
  %1205 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %1187)
  call void @add_to_value(i32 noundef %1205, ptr noundef nonnull %1187)
  %1206 = load i8, ptr @in_fre, align 1, !tbaa !322
  %1207 = icmp eq i8 %1206, 0
  br i1 %1207, label %1208, label %1211

1208:                                             ; preds = %1204
  %1209 = load ptr, ptr %669, align 8, !tbaa !450
  %1210 = load ptr, ptr %1209, align 8, !tbaa !453
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %1210, ptr noundef nonnull %1187)
  br label %1211

1211:                                             ; preds = %1208, %1204, %1138, %1118
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  br label %1809

1212:                                             ; preds = %1054
  %1213 = lshr i32 %1055, 16
  %1214 = zext nneg i32 %1213 to i64
  %1215 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1214
  %1216 = load i8, ptr %1215, align 1, !tbaa !322
  %1217 = icmp eq i8 %1216, 3
  br i1 %1217, label %1218, label %1237, !prof !531

1218:                                             ; preds = %1212
  %1219 = and i32 %1055, 255
  %1220 = add nsw i32 %1219, -1
  %1221 = icmp ult i32 %1220, 9
  call void @llvm.assume(i1 %1221)
  %1222 = zext nneg i32 %1219 to i64
  %1223 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1222
  %1224 = load i32, ptr %1223, align 4, !tbaa !326
  %1225 = zext i32 %1224 to i64
  %1226 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1225
  %1227 = load i64, ptr %1226, align 8, !tbaa !379
  %1228 = icmp eq i64 %1227, 0
  br i1 %1228, label %1229, label %1230, !prof !532

1229:                                             ; preds = %1218
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1230

1230:                                             ; preds = %1229, %1218
  %1231 = getelementptr inbounds i8, ptr %695, i64 %1227
  %1232 = getelementptr inbounds ptr, ptr %1231, i64 1
  %1233 = load ptr, ptr %1232, align 8, !tbaa !311
  %1234 = load i64, ptr %1233, align 8
  %1235 = trunc i64 %1234 to i32
  %1236 = and i32 %1235, 65535
  br label %1237

1237:                                             ; preds = %1230, %1212
  %1238 = phi i32 [ %1236, %1230 ], [ %1213, %1212 ]
  %1239 = zext nneg i32 %1238 to i64
  %1240 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1239
  %1241 = load i32, ptr %1240, align 4, !tbaa !326
  switch i32 %1241, label %1531 [
    i32 6, label %1242
    i32 7, label %1242
    i32 5, label %1242
    i32 3, label %1438
    i32 4, label %1438
  ], !prof !533

1242:                                             ; preds = %1237, %1237, %1237
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #19
  %1243 = getelementptr inbounds %struct.gimple_statement_base, ptr %695, i64 0, i32 3
  %1244 = load i32, ptr %1243, align 4, !tbaa !322
  %1245 = add i32 %1244, -1
  %1246 = load i32, ptr %695, align 8
  %1247 = trunc i32 %1246 to i8
  switch i8 %1247, label %1250 [
    i8 6, label %1248
    i8 1, label %1248
    i8 8, label %1251
  ], !prof !534

1248:                                             ; preds = %1242, %1242
  %1249 = lshr i32 %1246, 16
  br label %1251

1250:                                             ; preds = %1242
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1446, ptr noundef nonnull @.str.1) #19
  br label %1251

1251:                                             ; preds = %1242, %1250, %1248
  %1252 = phi i32 [ %1249, %1248 ], [ 0, %1250 ], [ 59, %1242 ]
  %1253 = zext nneg i32 %1252 to i64
  %1254 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1253
  %1255 = load i8, ptr %1254, align 1, !tbaa !322
  %1256 = icmp eq i8 %1255, 3
  br i1 %1256, label %1257, label %1277, !prof !535

1257:                                             ; preds = %1251
  %1258 = load i32, ptr %695, align 8
  %1259 = and i32 %1258, 255
  %1260 = add nsw i32 %1259, -1
  %1261 = icmp ult i32 %1260, 9
  call void @llvm.assume(i1 %1261)
  %1262 = zext nneg i32 %1259 to i64
  %1263 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1262
  %1264 = load i32, ptr %1263, align 4, !tbaa !326
  %1265 = zext i32 %1264 to i64
  %1266 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1265
  %1267 = load i64, ptr %1266, align 8, !tbaa !379
  %1268 = icmp eq i64 %1267, 0
  br i1 %1268, label %1269, label %1270

1269:                                             ; preds = %1257
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1270

1270:                                             ; preds = %1269, %1257
  %1271 = getelementptr inbounds i8, ptr %695, i64 %1267
  %1272 = getelementptr inbounds ptr, ptr %1271, i64 1
  %1273 = load ptr, ptr %1272, align 8, !tbaa !311
  %1274 = load i64, ptr %1273, align 8
  %1275 = trunc i64 %1274 to i32
  %1276 = and i32 %1275, 65535
  br label %1277

1277:                                             ; preds = %1270, %1251
  %1278 = phi i32 [ %1276, %1270 ], [ %1252, %1251 ]
  %1279 = load i32, ptr %695, align 8
  %1280 = trunc i32 %1279 to i8
  switch i8 %1280, label %1351 [
    i8 8, label %1281
    i8 6, label %1302
    i8 1, label %1352
  ], !prof !536

1281:                                             ; preds = %1277
  %1282 = and i32 %1279, 255
  %1283 = add nsw i32 %1282, -1
  %1284 = icmp ult i32 %1283, 9
  call void @llvm.assume(i1 %1284)
  %1285 = zext nneg i32 %1282 to i64
  %1286 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1285
  %1287 = load i32, ptr %1286, align 4, !tbaa !326
  %1288 = zext i32 %1287 to i64
  %1289 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1288
  %1290 = load i64, ptr %1289, align 8, !tbaa !379
  %1291 = icmp eq i64 %1290, 0
  br i1 %1291, label %1292, label %1293

1292:                                             ; preds = %1281
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1293

1293:                                             ; preds = %1292, %1281
  %1294 = getelementptr inbounds i8, ptr %695, i64 %1290
  %1295 = getelementptr inbounds ptr, ptr %1294, i64 1
  %1296 = load ptr, ptr %1295, align 8, !tbaa !311
  %1297 = getelementptr inbounds %struct.tree_common, ptr %1296, i64 0, i32 2
  %1298 = load ptr, ptr %1297, align 8, !tbaa !322
  %1299 = getelementptr inbounds %struct.tree_common, ptr %1298, i64 0, i32 2
  %1300 = load ptr, ptr %1299, align 8, !tbaa !322
  %1301 = getelementptr inbounds %struct.tree_common, ptr %1300, i64 0, i32 2
  br label %1352

1302:                                             ; preds = %1277
  %1303 = lshr i32 %1279, 16
  %1304 = zext nneg i32 %1303 to i64
  %1305 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1304
  %1306 = load i8, ptr %1305, align 1, !tbaa !322
  %1307 = icmp eq i8 %1306, 3
  br i1 %1307, label %1308, label %1327, !prof !537

1308:                                             ; preds = %1302
  %1309 = and i32 %1279, 255
  %1310 = add nsw i32 %1309, -1
  %1311 = icmp ult i32 %1310, 9
  call void @llvm.assume(i1 %1311)
  %1312 = zext nneg i32 %1309 to i64
  %1313 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1312
  %1314 = load i32, ptr %1313, align 4, !tbaa !326
  %1315 = zext i32 %1314 to i64
  %1316 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1315
  %1317 = load i64, ptr %1316, align 8, !tbaa !379
  %1318 = icmp eq i64 %1317, 0
  br i1 %1318, label %1319, label %1320, !prof !538

1319:                                             ; preds = %1308
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1320

1320:                                             ; preds = %1319, %1308
  %1321 = getelementptr inbounds i8, ptr %695, i64 %1317
  %1322 = getelementptr inbounds ptr, ptr %1321, i64 1
  %1323 = load ptr, ptr %1322, align 8, !tbaa !311
  %1324 = load i64, ptr %1323, align 8
  %1325 = trunc i64 %1324 to i32
  %1326 = and i32 %1325, 65535
  br label %1327

1327:                                             ; preds = %1320, %1302
  %1328 = phi i32 [ %1326, %1320 ], [ %1303, %1302 ]
  %1329 = icmp eq i32 %1328, 66
  br i1 %1329, label %1330, label %1348, !prof !539

1330:                                             ; preds = %1327
  %1331 = load i32, ptr %695, align 8
  %1332 = and i32 %1331, 255
  %1333 = add nsw i32 %1332, -1
  %1334 = icmp ult i32 %1333, 9
  call void @llvm.assume(i1 %1334)
  %1335 = zext nneg i32 %1332 to i64
  %1336 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1335
  %1337 = load i32, ptr %1336, align 4, !tbaa !326
  %1338 = zext i32 %1337 to i64
  %1339 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1338
  %1340 = load i64, ptr %1339, align 8, !tbaa !379
  %1341 = icmp eq i64 %1340, 0
  br i1 %1341, label %1342, label %1343, !prof !540

1342:                                             ; preds = %1330
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1343

1343:                                             ; preds = %1342, %1330
  %1344 = getelementptr inbounds i8, ptr %695, i64 %1340
  %1345 = getelementptr inbounds ptr, ptr %1344, i64 1
  %1346 = load ptr, ptr %1345, align 8, !tbaa !311
  %1347 = getelementptr inbounds %struct.tree_common, ptr %1346, i64 0, i32 2
  br label %1352

1348:                                             ; preds = %1327
  %1349 = call ptr @gimple_get_lhs(ptr noundef nonnull %695) #19
  %1350 = getelementptr inbounds %struct.tree_common, ptr %1349, i64 0, i32 2
  br label %1352

1351:                                             ; preds = %1277
  br label %1352

1352:                                             ; preds = %1277, %1293, %1343, %1348, %1351
  %1353 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %1351 ], [ %1301, %1293 ], [ %1347, %1343 ], [ %1350, %1348 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %1277 ]
  %1354 = load ptr, ptr %1353, align 8, !tbaa !322
  %1355 = load i32, ptr %695, align 8
  %1356 = and i32 %1355, 255
  %1357 = add nsw i32 %1356, -10
  %1358 = icmp ult i32 %1357, -9
  br i1 %1358, label %1372, label %1359, !prof !535

1359:                                             ; preds = %1352
  %1360 = zext nneg i32 %1356 to i64
  %1361 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1360
  %1362 = load i32, ptr %1361, align 4, !tbaa !326
  %1363 = zext i32 %1362 to i64
  %1364 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1363
  %1365 = load i64, ptr %1364, align 8, !tbaa !379
  %1366 = icmp eq i64 %1365, 0
  br i1 %1366, label %1367, label %1368, !prof !535

1367:                                             ; preds = %1359
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1368

1368:                                             ; preds = %1367, %1359
  %1369 = getelementptr inbounds i8, ptr %695, i64 %1365
  %1370 = getelementptr inbounds ptr, ptr %1369, i64 1
  %1371 = load ptr, ptr %1370, align 8, !tbaa !311
  br label %1372

1372:                                             ; preds = %1368, %1352
  %1373 = phi ptr [ %1371, %1368 ], [ null, %1352 ]
  %1374 = load i32, ptr %1243, align 4, !tbaa !322
  %1375 = icmp ugt i32 %1374, 2
  br i1 %1375, label %1376, label %1394, !prof !541

1376:                                             ; preds = %1372
  %1377 = load i32, ptr %695, align 8
  %1378 = and i32 %1377, 255
  %1379 = add nsw i32 %1378, -10
  %1380 = icmp ult i32 %1379, -9
  br i1 %1380, label %1394, label %1381, !prof !542

1381:                                             ; preds = %1376
  %1382 = zext nneg i32 %1378 to i64
  %1383 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1382
  %1384 = load i32, ptr %1383, align 4, !tbaa !326
  %1385 = zext i32 %1384 to i64
  %1386 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1385
  %1387 = load i64, ptr %1386, align 8, !tbaa !379
  %1388 = icmp eq i64 %1387, 0
  br i1 %1388, label %1389, label %1390, !prof !542

1389:                                             ; preds = %1381
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1390

1390:                                             ; preds = %1389, %1381
  %1391 = getelementptr inbounds i8, ptr %695, i64 %1387
  %1392 = getelementptr inbounds ptr, ptr %1391, i64 2
  %1393 = load ptr, ptr %1392, align 8, !tbaa !311
  br label %1394

1394:                                             ; preds = %1390, %1376, %1372
  %1395 = phi ptr [ null, %1372 ], [ %1393, %1390 ], [ null, %1376 ]
  %1396 = call ptr @vn_nary_op_lookup_pieces(i32 noundef %1245, i32 noundef %1278, ptr noundef %1354, ptr noundef %1373, ptr noundef %1395, ptr noundef null, ptr noundef null, ptr noundef nonnull %14) #19
  %1397 = load ptr, ptr %14, align 8, !tbaa !311
  %1398 = icmp eq ptr %1397, null
  br i1 %1398, label %1436, label %1399, !prof !535

1399:                                             ; preds = %1394
  %1400 = load ptr, ptr %14, align 8, !tbaa !311
  %1401 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1400, i64 0, i32 1
  %1402 = load i32, ptr %1401, align 4
  %1403 = icmp ult i32 %1402, 65536
  br i1 %1403, label %1430, label %1404, !prof !543

1404:                                             ; preds = %1399, %1422
  %1405 = phi i64 [ %1423, %1422 ], [ 0, %1399 ]
  %1406 = phi ptr [ %1424, %1422 ], [ %1400, %1399 ]
  %1407 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1406, i64 0, i32 5, i64 %1405
  %1408 = load ptr, ptr %1407, align 8, !tbaa !311
  %1409 = load i64, ptr %1408, align 8
  %1410 = and i64 %1409, 65535
  %1411 = icmp eq i64 %1410, 141
  %1412 = load i8, ptr @in_fre, align 1
  %1413 = icmp eq i8 %1412, 0
  %1414 = select i1 %1411, i1 %1413, i1 false
  br i1 %1414, label %1415, label %1422, !prof !544

1415:                                             ; preds = %1404
  %1416 = call zeroext i8 @ssa_undefined_value_p(ptr noundef nonnull %1408) #19
  %1417 = icmp eq i8 %1416, 0
  br i1 %1417, label %1418, label %1422, !prof !527

1418:                                             ; preds = %1415
  %1419 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %1408)
  %1420 = load ptr, ptr %669, align 8, !tbaa !450
  %1421 = load ptr, ptr %1420, align 8, !tbaa !453
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %1421, ptr noundef %1419)
  br label %1422

1422:                                             ; preds = %1418, %1415, %1404
  %1423 = add nuw nsw i64 %1405, 1
  %1424 = load ptr, ptr %14, align 8, !tbaa !311
  %1425 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1424, i64 0, i32 1
  %1426 = load i32, ptr %1425, align 4
  %1427 = lshr i32 %1426, 16
  %1428 = zext nneg i32 %1427 to i64
  %1429 = icmp ult i64 %1423, %1428
  br i1 %1429, label %1404, label %1430, !prof !545, !llvm.loop !546

1430:                                             ; preds = %1422, %1399
  %1431 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !311
  %1432 = call ptr @pool_alloc(ptr noundef %1431) #19
  store i32 1, ptr %1432, align 8, !tbaa !331
  %1433 = getelementptr inbounds %struct.pre_expr_d, ptr %1432, i64 0, i32 1
  store i32 0, ptr %1433, align 4, !tbaa !361
  %1434 = load ptr, ptr %14, align 8, !tbaa !311
  %1435 = getelementptr inbounds %struct.pre_expr_d, ptr %1432, i64 0, i32 2
  store ptr %1434, ptr %1435, align 8, !tbaa !322
  br label %1436

1436:                                             ; preds = %1430, %1394
  %1437 = phi ptr [ %1432, %1430 ], [ null, %1394 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  br i1 %1398, label %1809, label %1593, !prof !535

1438:                                             ; preds = %1237, %1237
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #19
  %1439 = load i32, ptr %695, align 8
  %1440 = and i32 %1439, 255
  %1441 = add nsw i32 %1440, -10
  %1442 = icmp ult i32 %1441, -9
  br i1 %1442, label %1456, label %1443, !prof !547

1443:                                             ; preds = %1438
  %1444 = zext nneg i32 %1440 to i64
  %1445 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1444
  %1446 = load i32, ptr %1445, align 4, !tbaa !326
  %1447 = zext i32 %1446 to i64
  %1448 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1447
  %1449 = load i64, ptr %1448, align 8, !tbaa !379
  %1450 = icmp eq i64 %1449, 0
  br i1 %1450, label %1451, label %1452, !prof !547

1451:                                             ; preds = %1443
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1452

1452:                                             ; preds = %1451, %1443
  %1453 = getelementptr inbounds i8, ptr %695, i64 %1449
  %1454 = getelementptr inbounds ptr, ptr %1453, i64 1
  %1455 = load ptr, ptr %1454, align 8, !tbaa !311
  br label %1456

1456:                                             ; preds = %1452, %1438
  %1457 = phi ptr [ %1455, %1452 ], [ null, %1438 ]
  %1458 = load i32, ptr %695, align 8
  %1459 = and i32 %1458, 254
  %1460 = add nsw i32 %1459, -10
  %1461 = icmp ult i32 %1460, -4
  br i1 %1461, label %1465, label %1462, !prof !547

1462:                                             ; preds = %1456
  %1463 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %695, i64 0, i32 2
  %1464 = load ptr, ptr %1463, align 8, !tbaa !322
  br label %1465

1465:                                             ; preds = %1462, %1456
  %1466 = phi ptr [ %1464, %1462 ], [ null, %1456 ]
  %1467 = call ptr @vn_reference_lookup(ptr noundef %1457, ptr noundef %1466, i8 noundef zeroext 1, ptr noundef nonnull %15) #19
  %1468 = load ptr, ptr %15, align 8, !tbaa !311
  %1469 = icmp eq ptr %1468, null
  br i1 %1469, label %1529, label %1470, !prof !548

1470:                                             ; preds = %1465, %1521
  %1471 = phi i32 [ %1522, %1521 ], [ 0, %1465 ]
  %1472 = load ptr, ptr %15, align 8, !tbaa !311
  %1473 = getelementptr inbounds %struct.vn_reference_s, ptr %1472, i64 0, i32 5
  %1474 = load ptr, ptr %1473, align 8, !tbaa !365
  %1475 = icmp eq ptr %1474, null
  br i1 %1475, label %1482, label %1476, !prof !549

1476:                                             ; preds = %1470
  %1477 = load i32, ptr %1474, align 8, !tbaa !366
  %1478 = icmp ugt i32 %1477, %1471
  br i1 %1478, label %1479, label %1482, !prof !550

1479:                                             ; preds = %1476
  %1480 = zext i32 %1471 to i64
  %1481 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %1474, i64 0, i32 2, i64 %1480
  br label %1482

1482:                                             ; preds = %1479, %1476, %1470
  %1483 = phi ptr [ %1481, %1479 ], [ null, %1476 ], [ null, %1470 ]
  %1484 = phi i1 [ false, %1479 ], [ true, %1476 ], [ true, %1470 ]
  br i1 %1484, label %1523, label %1485, !prof !551

1485:                                             ; preds = %1482
  %1486 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1483, i64 0, i32 2
  %1487 = load ptr, ptr %1486, align 8, !tbaa !370
  %1488 = icmp eq ptr %1487, null
  br i1 %1488, label %1503, label %1489, !prof !552

1489:                                             ; preds = %1485
  %1490 = load i64, ptr %1487, align 8
  %1491 = and i64 %1490, 65535
  %1492 = icmp eq i64 %1491, 141
  br i1 %1492, label %1493, label %1503, !prof !553

1493:                                             ; preds = %1489
  %1494 = load i8, ptr @in_fre, align 1, !tbaa !322
  %1495 = icmp eq i8 %1494, 0
  br i1 %1495, label %1496, label %1503, !prof !526

1496:                                             ; preds = %1493
  %1497 = call zeroext i8 @ssa_undefined_value_p(ptr noundef nonnull %1487) #19
  %1498 = icmp eq i8 %1497, 0
  br i1 %1498, label %1499, label %1503, !prof !527

1499:                                             ; preds = %1496
  %1500 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %1487)
  %1501 = load ptr, ptr %669, align 8, !tbaa !450
  %1502 = load ptr, ptr %1501, align 8, !tbaa !453
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %1502, ptr noundef %1500)
  br label %1503

1503:                                             ; preds = %1499, %1496, %1493, %1489, %1485
  %1504 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1483, i64 0, i32 3
  %1505 = load ptr, ptr %1504, align 8, !tbaa !371
  %1506 = icmp eq ptr %1505, null
  br i1 %1506, label %1512, label %1507, !prof !554

1507:                                             ; preds = %1503
  %1508 = load i64, ptr %1505, align 8
  %1509 = and i64 %1508, 65535
  %1510 = icmp eq i64 %1509, 141
  br i1 %1510, label %1511, label %1512, !prof !555

1511:                                             ; preds = %1507
  call fastcc void @add_to_exp_gen(ptr noundef %476, ptr noundef nonnull %1505)
  br label %1512

1512:                                             ; preds = %1511, %1507, %1503
  %1513 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1483, i64 0, i32 4
  %1514 = load ptr, ptr %1513, align 8, !tbaa !372
  %1515 = icmp eq ptr %1514, null
  br i1 %1515, label %1521, label %1516, !prof !554

1516:                                             ; preds = %1512
  %1517 = load i64, ptr %1514, align 8
  %1518 = and i64 %1517, 65535
  %1519 = icmp eq i64 %1518, 141
  br i1 %1519, label %1520, label %1521, !prof !555

1520:                                             ; preds = %1516
  call fastcc void @add_to_exp_gen(ptr noundef %476, ptr noundef nonnull %1514)
  br label %1521

1521:                                             ; preds = %1520, %1516, %1512
  %1522 = add i32 %1471, 1
  br label %1470, !llvm.loop !556

1523:                                             ; preds = %1482
  %1524 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !311
  %1525 = call ptr @pool_alloc(ptr noundef %1524) #19
  store i32 2, ptr %1525, align 8, !tbaa !331
  %1526 = getelementptr inbounds %struct.pre_expr_d, ptr %1525, i64 0, i32 1
  store i32 0, ptr %1526, align 4, !tbaa !361
  %1527 = load ptr, ptr %15, align 8, !tbaa !311
  %1528 = getelementptr inbounds %struct.pre_expr_d, ptr %1525, i64 0, i32 2
  store ptr %1527, ptr %1528, align 8, !tbaa !322
  br label %1529

1529:                                             ; preds = %1523, %1465
  %1530 = phi ptr [ %1525, %1523 ], [ null, %1465 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  br i1 %1469, label %1809, label %1593, !prof !548

1531:                                             ; preds = %1237
  %1532 = load i32, ptr %695, align 8
  %1533 = and i32 %1532, 255
  %1534 = add nsw i32 %1533, -10
  %1535 = icmp ult i32 %1534, -9
  br i1 %1535, label %1539, label %1536, !prof !557

1536:                                             ; preds = %1531
  %1537 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %695, i64 0, i32 2
  %1538 = load ptr, ptr %1537, align 8, !tbaa !322
  br label %1539

1539:                                             ; preds = %1536, %1531
  %1540 = phi ptr [ %1538, %1536 ], [ null, %1531 ]
  %1541 = icmp eq ptr %1540, null
  br i1 %1541, label %1552, label %1542, !prof !557

1542:                                             ; preds = %1539
  %1543 = and i32 %1532, 254
  %1544 = add nsw i32 %1543, -10
  %1545 = icmp ult i32 %1544, -4
  br i1 %1545, label %1552, label %1546, !prof !557

1546:                                             ; preds = %1542
  %1547 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %695, i64 0, i32 2
  %1548 = load ptr, ptr %1547, align 8, !tbaa !322
  %1549 = icmp eq ptr %1548, null
  br i1 %1549, label %1552, label %1550, !prof !558

1550:                                             ; preds = %1546
  %1551 = load ptr, ptr %1540, align 8, !tbaa !524
  br label %1552

1552:                                             ; preds = %1550, %1546, %1542, %1539
  %1553 = phi ptr [ %1540, %1539 ], [ %1540, %1542 ], [ %1540, %1546 ], [ %1551, %1550 ]
  %1554 = icmp eq ptr %1553, null
  br i1 %1554, label %1560, label %1555, !prof !557

1555:                                             ; preds = %1552
  %1556 = getelementptr inbounds %struct.use_optype_d, ptr %1553, i64 0, i32 1, i32 3
  %1557 = load ptr, ptr %1556, align 8, !tbaa !482
  %1558 = load ptr, ptr %1557, align 8, !tbaa !311
  %1559 = load ptr, ptr %1553, align 8, !tbaa !524
  br label %1560

1560:                                             ; preds = %1555, %1552
  %1561 = phi ptr [ %1559, %1555 ], [ %1553, %1552 ]
  %1562 = phi i8 [ 0, %1555 ], [ 1, %1552 ]
  %1563 = phi ptr [ %1558, %1555 ], [ null, %1552 ]
  br i1 %1554, label %1809, label %1564, !prof !559

1564:                                             ; preds = %1560, %1588
  %1565 = phi ptr [ %1591, %1588 ], [ %1563, %1560 ]
  %1566 = phi i8 [ %1590, %1588 ], [ %1562, %1560 ]
  %1567 = phi ptr [ %1589, %1588 ], [ %1561, %1560 ]
  %1568 = load i8, ptr @in_fre, align 1, !tbaa !322
  %1569 = icmp eq i8 %1568, 0
  br i1 %1569, label %1570, label %1581, !prof !526

1570:                                             ; preds = %1564
  %1571 = load i64, ptr %1565, align 8
  %1572 = and i64 %1571, 65535
  %1573 = icmp eq i64 %1572, 141
  br i1 %1573, label %1574, label %1577, !prof !527

1574:                                             ; preds = %1570
  %1575 = call zeroext i8 @ssa_undefined_value_p(ptr noundef nonnull %1565) #19
  %1576 = icmp eq i8 %1575, 0
  br i1 %1576, label %1577, label %1581, !prof !527

1577:                                             ; preds = %1574, %1570
  %1578 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %1565)
  %1579 = load ptr, ptr %669, align 8, !tbaa !450
  %1580 = load ptr, ptr %1579, align 8, !tbaa !453
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %1580, ptr noundef %1578)
  br label %1581

1581:                                             ; preds = %1564, %1574, %1577
  %1582 = icmp eq ptr %1567, null
  br i1 %1582, label %1588, label %1583, !prof !560

1583:                                             ; preds = %1581
  %1584 = getelementptr inbounds %struct.use_optype_d, ptr %1567, i64 0, i32 1, i32 3
  %1585 = load ptr, ptr %1584, align 8, !tbaa !482
  %1586 = load ptr, ptr %1585, align 8, !tbaa !311
  %1587 = load ptr, ptr %1567, align 8, !tbaa !524
  br label %1588

1588:                                             ; preds = %1581, %1583
  %1589 = phi ptr [ %1587, %1583 ], [ %1567, %1581 ]
  %1590 = phi i8 [ %1566, %1583 ], [ 1, %1581 ]
  %1591 = phi ptr [ %1586, %1583 ], [ null, %1581 ]
  %1592 = icmp eq i8 %1590, 0
  br i1 %1592, label %1564, label %1809, !prof !561, !llvm.loop !562

1593:                                             ; preds = %1529, %1436
  %1594 = phi ptr [ %1530, %1529 ], [ %1437, %1436 ]
  %1595 = load i32, ptr %1594, align 8, !tbaa !331
  %1596 = icmp eq i32 %1595, 0
  br i1 %1596, label %1597, label %1612, !prof !563

1597:                                             ; preds = %1593
  %1598 = getelementptr inbounds %struct.pre_expr_d, ptr %1594, i64 0, i32 2
  %1599 = load ptr, ptr %1598, align 8, !tbaa !322
  %1600 = getelementptr inbounds %struct.tree_ssa_name, ptr %1599, i64 0, i32 3
  %1601 = load i32, ptr %1600, align 8, !tbaa !322
  %1602 = load ptr, ptr @name_to_id, align 8
  %1603 = icmp eq ptr %1602, null
  br i1 %1603, label %1606, label %1604

1604:                                             ; preds = %1597
  %1605 = load i32, ptr %1602, align 4, !tbaa !356
  br label %1606

1606:                                             ; preds = %1604, %1597
  %1607 = phi i32 [ %1605, %1604 ], [ 0, %1597 ]
  %1608 = icmp ugt i32 %1607, %1601
  br i1 %1608, label %1609, label %1622

1609:                                             ; preds = %1606
  %1610 = zext i32 %1601 to i64
  %1611 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %1602, i64 0, i32 2, i64 %1610
  br label %1619

1612:                                             ; preds = %1593
  %1613 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %1614 = call ptr @htab_find_slot(ptr noundef %1613, ptr noundef nonnull %1594, i32 noundef 0) #19
  %1615 = icmp eq ptr %1614, null
  br i1 %1615, label %1622, label %1616, !prof !564

1616:                                             ; preds = %1612
  %1617 = load ptr, ptr %1614, align 8, !tbaa !311
  %1618 = getelementptr inbounds %struct.pre_expr_d, ptr %1617, i64 0, i32 1
  br label %1619

1619:                                             ; preds = %1609, %1616
  %1620 = phi ptr [ %1618, %1616 ], [ %1611, %1609 ]
  %1621 = load i32, ptr %1620, align 4, !tbaa !326
  br label %1622

1622:                                             ; preds = %1619, %1612, %1606
  %1623 = phi i32 [ 0, %1606 ], [ 0, %1612 ], [ %1621, %1619 ]
  %1624 = icmp eq i32 %1623, 0
  br i1 %1624, label %1625, label %1737, !prof !564

1625:                                             ; preds = %1622
  %1626 = load i32, ptr @next_expression_id, align 4, !tbaa !326
  %1627 = icmp eq i32 %1626, -1
  br i1 %1627, label %1628, label %1629, !prof !392

1628:                                             ; preds = %1625
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 254, ptr noundef nonnull @.str.1) #19
  br label %1629

1629:                                             ; preds = %1628, %1625
  %1630 = load i32, ptr @next_expression_id, align 4, !tbaa !326
  %1631 = add i32 %1630, 1
  store i32 %1631, ptr @next_expression_id, align 4, !tbaa !326
  %1632 = getelementptr inbounds %struct.pre_expr_d, ptr %1594, i64 0, i32 1
  store i32 %1630, ptr %1632, align 4, !tbaa !361
  %1633 = load ptr, ptr @expressions, align 8, !tbaa !311
  %1634 = icmp eq ptr %1633, null
  br i1 %1634, label %1640, label %1635, !prof !392

1635:                                             ; preds = %1629
  %1636 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %1633, i64 0, i32 1
  %1637 = load i32, ptr %1636, align 4, !tbaa !393
  %1638 = load i32, ptr %1633, align 8, !tbaa !395
  %1639 = icmp eq i32 %1637, %1638
  br i1 %1639, label %1640, label %1642, !prof !396

1640:                                             ; preds = %1635, %1629
  %1641 = call ptr @vec_heap_p_reserve(ptr noundef %1633, i32 noundef 1) #19
  store ptr %1641, ptr @expressions, align 8, !tbaa !311
  br label %1642

1642:                                             ; preds = %1640, %1635
  %1643 = load ptr, ptr @expressions, align 8, !tbaa !311
  %1644 = load i32, ptr %1643, align 8, !tbaa !395
  %1645 = add i32 %1644, 1
  store i32 %1645, ptr %1643, align 8, !tbaa !395
  %1646 = zext i32 %1644 to i64
  %1647 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %1643, i64 0, i32 2, i64 %1646
  store ptr %1594, ptr %1647, align 8, !tbaa !311
  %1648 = load i32, ptr %1594, align 8, !tbaa !331
  %1649 = icmp eq i32 %1648, 0
  br i1 %1649, label %1650, label %1730, !prof !397

1650:                                             ; preds = %1642
  %1651 = getelementptr inbounds %struct.pre_expr_d, ptr %1594, i64 0, i32 2
  %1652 = load ptr, ptr %1651, align 8, !tbaa !322
  %1653 = getelementptr inbounds %struct.tree_ssa_name, ptr %1652, i64 0, i32 3
  %1654 = load i32, ptr %1653, align 8, !tbaa !322
  %1655 = load ptr, ptr @cfun, align 8, !tbaa !311
  %1656 = getelementptr inbounds %struct.function, ptr %1655, i64 0, i32 3
  %1657 = load ptr, ptr %1656, align 8, !tbaa !398
  %1658 = getelementptr inbounds %struct.gimple_df, ptr %1657, i64 0, i32 2
  %1659 = load ptr, ptr %1658, align 8, !tbaa !400
  %1660 = icmp eq ptr %1659, null
  br i1 %1660, label %1663, label %1661, !prof !404

1661:                                             ; preds = %1650
  %1662 = load i32, ptr %1659, align 8, !tbaa !405
  br label %1663

1663:                                             ; preds = %1661, %1650
  %1664 = phi i32 [ %1662, %1661 ], [ 0, %1650 ]
  %1665 = load ptr, ptr @name_to_id, align 8, !tbaa !311
  %1666 = icmp eq ptr %1665, null
  br i1 %1666, label %1673, label %1667, !prof !407

1667:                                             ; preds = %1663
  %1668 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %1665, i64 0, i32 1
  %1669 = load i32, ptr %1668, align 4, !tbaa !408
  %1670 = load i32, ptr %1665, align 4, !tbaa !356
  %1671 = sub i32 %1669, %1670
  %1672 = icmp uge i32 %1671, %1664
  br label %1675

1673:                                             ; preds = %1663
  %1674 = icmp eq i32 %1664, 0
  br label %1675

1675:                                             ; preds = %1673, %1667
  %1676 = phi i1 [ %1672, %1667 ], [ %1674, %1673 ]
  br i1 %1676, label %1679, label %1677, !prof !409

1677:                                             ; preds = %1675
  %1678 = call ptr @vec_heap_o_reserve(ptr noundef %1665, i32 noundef %1664, i64 noundef 8, i64 noundef 4) #19
  store ptr %1678, ptr @name_to_id, align 8, !tbaa !311
  br label %1679

1679:                                             ; preds = %1677, %1675
  %1680 = load ptr, ptr @cfun, align 8, !tbaa !311
  %1681 = getelementptr inbounds %struct.function, ptr %1680, i64 0, i32 3
  %1682 = load ptr, ptr %1681, align 8, !tbaa !398
  %1683 = getelementptr inbounds %struct.gimple_df, ptr %1682, i64 0, i32 2
  %1684 = load ptr, ptr %1683, align 8, !tbaa !400
  %1685 = icmp eq ptr %1684, null
  br i1 %1685, label %1688, label %1686, !prof !404

1686:                                             ; preds = %1679
  %1687 = load i32, ptr %1684, align 8, !tbaa !405
  br label %1688

1688:                                             ; preds = %1686, %1679
  %1689 = phi i32 [ %1687, %1686 ], [ 0, %1679 ]
  %1690 = load ptr, ptr @name_to_id, align 8, !tbaa !311
  %1691 = icmp eq ptr %1690, null
  br i1 %1691, label %1694, label %1692, !prof !404

1692:                                             ; preds = %1688
  %1693 = load i32, ptr %1690, align 4, !tbaa !356
  br label %1694

1694:                                             ; preds = %1692, %1688
  %1695 = phi i32 [ %1693, %1692 ], [ 0, %1688 ]
  br i1 %1691, label %1698, label %1696, !prof !404

1696:                                             ; preds = %1694
  %1697 = load i32, ptr %1690, align 4, !tbaa !356
  br label %1698

1698:                                             ; preds = %1696, %1694
  %1699 = phi i32 [ %1697, %1696 ], [ 0, %1694 ]
  %1700 = sub nsw i32 %1689, %1699
  br i1 %1691, label %1707, label %1701, !prof !404

1701:                                             ; preds = %1698
  %1702 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %1690, i64 0, i32 1
  %1703 = load i32, ptr %1702, align 4, !tbaa !408
  %1704 = load i32, ptr %1690, align 4, !tbaa !356
  %1705 = sub i32 %1703, %1704
  %1706 = icmp uge i32 %1705, %1700
  br label %1709

1707:                                             ; preds = %1698
  %1708 = icmp eq i32 %1699, %1689
  br label %1709

1709:                                             ; preds = %1707, %1701
  %1710 = phi i1 [ %1706, %1701 ], [ %1708, %1707 ]
  br i1 %1710, label %1713, label %1711, !prof !410

1711:                                             ; preds = %1709
  %1712 = call ptr @vec_heap_o_reserve_exact(ptr noundef %1690, i32 noundef %1700, i64 noundef 8, i64 noundef 4) #19
  store ptr %1712, ptr @name_to_id, align 8, !tbaa !311
  br label %1713

1713:                                             ; preds = %1711, %1709
  %1714 = load ptr, ptr @name_to_id, align 8, !nonnull !348, !noundef !348
  store i32 %1689, ptr %1714, align 4, !tbaa !356
  %1715 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %1714, i64 0, i32 2
  %1716 = sext i32 %1695 to i64
  %1717 = getelementptr inbounds i32, ptr %1715, i64 %1716
  %1718 = sub nsw i32 %1689, %1695
  %1719 = sext i32 %1718 to i64
  %1720 = shl nsw i64 %1719, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %1717, i8 0, i64 %1720, i1 false), !prof !565
  %1721 = zext i32 %1654 to i64
  %1722 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %1714, i64 0, i32 2, i64 %1721
  %1723 = load i32, ptr %1722, align 4, !tbaa !326
  %1724 = icmp eq i32 %1723, 0
  br i1 %1724, label %1726, label %1725, !prof !410

1725:                                             ; preds = %1713
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 265, ptr noundef nonnull @.str.1) #19
  br label %1726

1726:                                             ; preds = %1725, %1713
  %1727 = load ptr, ptr @name_to_id, align 8
  %1728 = load i32, ptr %1632, align 4, !tbaa !361
  %1729 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %1727, i64 0, i32 2, i64 %1721
  store i32 %1728, ptr %1729, align 4, !tbaa !326
  br label %1739

1730:                                             ; preds = %1642
  %1731 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %1732 = call ptr @htab_find_slot(ptr noundef %1731, ptr noundef nonnull %1594, i32 noundef 1) #19
  %1733 = load ptr, ptr %1732, align 8, !tbaa !311
  %1734 = icmp eq ptr %1733, null
  br i1 %1734, label %1736, label %1735, !prof !412

1735:                                             ; preds = %1730
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 271, ptr noundef nonnull @.str.1) #19
  br label %1736

1736:                                             ; preds = %1735, %1730
  store ptr %1594, ptr %1732, align 8, !tbaa !311
  br label %1739

1737:                                             ; preds = %1622
  %1738 = getelementptr inbounds %struct.pre_expr_d, ptr %1594, i64 0, i32 1
  store i32 %1623, ptr %1738, align 4, !tbaa !361
  br label %1739

1739:                                             ; preds = %1736, %1726, %1737
  %1740 = load i32, ptr %1594, align 8, !tbaa !331
  switch i32 %1740, label %1763 [
    i32 3, label %1741
    i32 0, label %1749
    i32 1, label %1755
    i32 2, label %1759
  ], !prof !333

1741:                                             ; preds = %1739
  %1742 = getelementptr inbounds %struct.pre_expr_d, ptr %1594, i64 0, i32 2
  %1743 = load ptr, ptr %1742, align 8, !tbaa !322
  %1744 = call i32 @get_constant_value_id(ptr noundef %1743) #19
  %1745 = icmp eq i32 %1744, 0
  br i1 %1745, label %1746, label %1764, !prof !334

1746:                                             ; preds = %1741
  %1747 = load ptr, ptr %1742, align 8, !tbaa !322
  %1748 = call i32 @get_or_alloc_constant_value_id(ptr noundef %1747) #19
  call void @add_to_value(i32 noundef %1748, ptr noundef nonnull %1594)
  br label %1764

1749:                                             ; preds = %1739
  %1750 = getelementptr inbounds %struct.pre_expr_d, ptr %1594, i64 0, i32 2
  %1751 = load ptr, ptr %1750, align 8, !tbaa !322
  %1752 = call ptr @VN_INFO(ptr noundef %1751) #19
  %1753 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1752, i64 0, i32 2
  %1754 = load i32, ptr %1753, align 8, !tbaa !335
  br label %1764

1755:                                             ; preds = %1739
  %1756 = getelementptr inbounds %struct.pre_expr_d, ptr %1594, i64 0, i32 2
  %1757 = load ptr, ptr %1756, align 8, !tbaa !322
  %1758 = load i32, ptr %1757, align 8, !tbaa !337
  br label %1764

1759:                                             ; preds = %1739
  %1760 = getelementptr inbounds %struct.pre_expr_d, ptr %1594, i64 0, i32 2
  %1761 = load ptr, ptr %1760, align 8, !tbaa !322
  %1762 = load i32, ptr %1761, align 8, !tbaa !339
  br label %1764

1763:                                             ; preds = %1739
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %1764

1764:                                             ; preds = %1741, %1746, %1749, %1755, %1759, %1763
  %1765 = phi i32 [ 0, %1763 ], [ %1762, %1759 ], [ %1758, %1755 ], [ %1754, %1749 ], [ %1748, %1746 ], [ %1744, %1741 ]
  call void @add_to_value(i32 noundef %1765, ptr noundef nonnull %1594)
  %1766 = load i8, ptr @in_fre, align 1, !tbaa !322
  %1767 = icmp eq i8 %1766, 0
  br i1 %1767, label %1768, label %1809, !prof !566

1768:                                             ; preds = %1764
  %1769 = load ptr, ptr %669, align 8, !tbaa !450
  %1770 = load ptr, ptr %1769, align 8, !tbaa !453
  %1771 = load i32, ptr %1594, align 8, !tbaa !331
  switch i32 %1771, label %1794 [
    i32 3, label %1772
    i32 0, label %1780
    i32 1, label %1786
    i32 2, label %1790
  ], !prof !333

1772:                                             ; preds = %1768
  %1773 = getelementptr inbounds %struct.pre_expr_d, ptr %1594, i64 0, i32 2
  %1774 = load ptr, ptr %1773, align 8, !tbaa !322
  %1775 = call i32 @get_constant_value_id(ptr noundef %1774) #19
  %1776 = icmp eq i32 %1775, 0
  br i1 %1776, label %1777, label %1795, !prof !334

1777:                                             ; preds = %1772
  %1778 = load ptr, ptr %1773, align 8, !tbaa !322
  %1779 = call i32 @get_or_alloc_constant_value_id(ptr noundef %1778) #19
  call void @add_to_value(i32 noundef %1779, ptr noundef nonnull %1594)
  br label %1795

1780:                                             ; preds = %1768
  %1781 = getelementptr inbounds %struct.pre_expr_d, ptr %1594, i64 0, i32 2
  %1782 = load ptr, ptr %1781, align 8, !tbaa !322
  %1783 = call ptr @VN_INFO(ptr noundef %1782) #19
  %1784 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1783, i64 0, i32 2
  %1785 = load i32, ptr %1784, align 8, !tbaa !335
  br label %1795

1786:                                             ; preds = %1768
  %1787 = getelementptr inbounds %struct.pre_expr_d, ptr %1594, i64 0, i32 2
  %1788 = load ptr, ptr %1787, align 8, !tbaa !322
  %1789 = load i32, ptr %1788, align 8, !tbaa !337
  br label %1795

1790:                                             ; preds = %1768
  %1791 = getelementptr inbounds %struct.pre_expr_d, ptr %1594, i64 0, i32 2
  %1792 = load ptr, ptr %1791, align 8, !tbaa !322
  %1793 = load i32, ptr %1792, align 8, !tbaa !339
  br label %1795

1794:                                             ; preds = %1768
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %1795

1795:                                             ; preds = %1794, %1790, %1786, %1780, %1777, %1772
  %1796 = phi i32 [ 0, %1794 ], [ %1793, %1790 ], [ %1789, %1786 ], [ %1785, %1780 ], [ %1779, %1777 ], [ %1775, %1772 ]
  %1797 = call zeroext i8 @value_id_constant_p(i32 noundef %1796) #19
  %1798 = icmp eq i8 %1797, 0
  br i1 %1798, label %1799, label %1809, !prof !514

1799:                                             ; preds = %1795
  %1800 = getelementptr inbounds %struct.bitmap_set, ptr %1770, i64 0, i32 1
  %1801 = load ptr, ptr %1800, align 8, !tbaa !353
  %1802 = call zeroext i8 @bitmap_set_bit(ptr noundef %1801, i32 noundef %1796) #19
  %1803 = icmp eq i8 %1802, 0
  br i1 %1803, label %1809, label %1804, !prof !515

1804:                                             ; preds = %1799
  %1805 = load ptr, ptr %1770, align 8, !tbaa !351
  %1806 = getelementptr inbounds %struct.pre_expr_d, ptr %1594, i64 0, i32 1
  %1807 = load i32, ptr %1806, align 4, !tbaa !361
  %1808 = call zeroext i8 @bitmap_set_bit(ptr noundef %1805, i32 noundef %1807) #19
  br label %1809

1809:                                             ; preds = %1588, %1113, %1560, %1085, %1804, %1799, %1795, %1529, %1764, %1436, %1211, %1054, %1051, %1043
  %1810 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %694, i64 0, i32 2
  %1811 = load ptr, ptr %1810, align 8, !tbaa !486
  %1812 = icmp eq ptr %1811, null
  br i1 %1812, label %1813, label %692, !prof !567, !llvm.loop !568

1813:                                             ; preds = %1809, %689
  %1814 = call ptr @first_dom_son(i32 noundef 1, ptr noundef %476) #19
  %1815 = icmp eq ptr %1814, null
  br i1 %1815, label %469, label %1816, !prof !569

1816:                                             ; preds = %1813, %1816
  %1817 = phi ptr [ %1821, %1816 ], [ %1814, %1813 ]
  %1818 = phi i64 [ %1819, %1816 ], [ %474, %1813 ]
  %1819 = add i64 %1818, 1
  %1820 = getelementptr inbounds ptr, ptr %452, i64 %1818
  store ptr %1817, ptr %1820, align 8, !tbaa !311
  %1821 = call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %1817) #19
  %1822 = icmp eq ptr %1821, null
  br i1 %1822, label %469, label %1816, !prof !570, !llvm.loop !571

1823:                                             ; preds = %469, %459
  call void @free(ptr noundef %452)
  %1824 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %1825 = icmp eq ptr %1824, null
  br i1 %1825, label %1862, label %1826, !prof !415

1826:                                             ; preds = %1823
  %1827 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %1828 = and i32 %1827, 8
  %1829 = icmp eq i32 %1828, 0
  br i1 %1829, label %1862, label %1830

1830:                                             ; preds = %1826
  %1831 = load ptr, ptr @cfun, align 8, !tbaa !311
  %1832 = getelementptr inbounds %struct.function, ptr %1831, i64 0, i32 1
  %1833 = load ptr, ptr %1832, align 8, !tbaa !419
  %1834 = load ptr, ptr %1833, align 8, !tbaa !311
  %1835 = icmp eq ptr %1834, null
  br i1 %1835, label %1862, label %1836

1836:                                             ; preds = %1830, %1836
  %1837 = phi ptr [ %1860, %1836 ], [ %1834, %1830 ]
  %1838 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %1839 = getelementptr inbounds %struct.basic_block_def, ptr %1837, i64 0, i32 2
  %1840 = load ptr, ptr %1839, align 8, !tbaa !450
  %1841 = load ptr, ptr %1840, align 8, !tbaa !453
  %1842 = getelementptr inbounds %struct.basic_block_def, ptr %1837, i64 0, i32 9
  %1843 = load i32, ptr %1842, align 8, !tbaa !432
  call fastcc void @print_bitmap_set(ptr noundef %1838, ptr noundef %1841, ptr noundef nonnull @.str.19, i32 noundef %1843)
  %1844 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %1845 = load ptr, ptr %1839, align 8, !tbaa !450
  %1846 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %1845, i64 0, i32 1
  %1847 = load ptr, ptr %1846, align 8, !tbaa !455
  %1848 = load i32, ptr %1842, align 8, !tbaa !432
  call fastcc void @print_bitmap_set(ptr noundef %1844, ptr noundef %1847, ptr noundef nonnull @.str.20, i32 noundef %1848)
  %1849 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %1850 = load ptr, ptr %1839, align 8, !tbaa !450
  %1851 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %1850, i64 0, i32 2
  %1852 = load ptr, ptr %1851, align 8, !tbaa !456
  %1853 = load i32, ptr %1842, align 8, !tbaa !432
  call fastcc void @print_bitmap_set(ptr noundef %1849, ptr noundef %1852, ptr noundef nonnull @.str.21, i32 noundef %1853)
  %1854 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %1855 = load ptr, ptr %1839, align 8, !tbaa !450
  %1856 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %1855, i64 0, i32 3
  %1857 = load ptr, ptr %1856, align 8, !tbaa !457
  %1858 = load i32, ptr %1842, align 8, !tbaa !432
  call fastcc void @print_bitmap_set(ptr noundef %1854, ptr noundef %1857, ptr noundef nonnull @.str.22, i32 noundef %1858)
  %1859 = getelementptr inbounds %struct.basic_block_def, ptr %1837, i64 0, i32 6
  %1860 = load ptr, ptr %1859, align 8, !tbaa !311
  %1861 = icmp eq ptr %1860, null
  br i1 %1861, label %1862, label %1836, !llvm.loop !572

1862:                                             ; preds = %1836, %1830, %1826, %1823
  br i1 %25, label %1863, label %3657, !prof !416

1863:                                             ; preds = %1862
  %1864 = load ptr, ptr @cfun, align 8, !tbaa !311
  %1865 = getelementptr inbounds %struct.function, ptr %1864, i64 0, i32 1
  %1866 = load ptr, ptr %1865, align 8, !tbaa !419
  %1867 = getelementptr inbounds %struct.control_flow_graph, ptr %1866, i64 0, i32 3
  %1868 = load i32, ptr %1867, align 8, !tbaa !420
  %1869 = icmp slt i32 %1868, 4000
  br i1 %1869, label %1870, label %3657, !prof !573

1870:                                             ; preds = %1863
  %1871 = getelementptr inbounds %struct.control_flow_graph, ptr %1866, i64 0, i32 5
  %1872 = load i32, ptr %1871, align 8, !tbaa !422
  %1873 = call ptr @sbitmap_alloc(i32 noundef %1872) #19
  store ptr %1873, ptr @has_abnormal_preds, align 8, !tbaa !311
  call void @sbitmap_zero(ptr noundef %1873) #19
  %1874 = load ptr, ptr @cfun, align 8, !tbaa !311
  %1875 = getelementptr inbounds %struct.function, ptr %1874, i64 0, i32 1
  %1876 = load ptr, ptr %1875, align 8, !tbaa !419
  %1877 = load ptr, ptr %1876, align 8, !tbaa !430
  %1878 = getelementptr inbounds %struct.basic_block_def, ptr %1877, i64 0, i32 6
  %1879 = load ptr, ptr %1878, align 8, !tbaa !574
  %1880 = getelementptr inbounds %struct.control_flow_graph, ptr %1876, i64 0, i32 1
  %1881 = load ptr, ptr %1880, align 8, !tbaa !423
  %1882 = icmp eq ptr %1879, %1881
  br i1 %1882, label %1979, label %1883, !prof !575

1883:                                             ; preds = %1870, %1947
  %1884 = phi ptr [ %1972, %1947 ], [ %1879, %1870 ]
  %1885 = icmp eq ptr %1884, null
  br label %1886

1886:                                             ; preds = %1883, %1945
  %1887 = phi i32 [ %1946, %1945 ], [ 0, %1883 ]
  br i1 %1885, label %1888, label %1889, !prof !576

1888:                                             ; preds = %1886
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #19
  br label %1889

1889:                                             ; preds = %1888, %1886
  %1890 = load ptr, ptr %1884, align 8, !tbaa !311
  %1891 = icmp eq ptr %1890, null
  br i1 %1891, label %1894, label %1892, !prof !576

1892:                                             ; preds = %1889
  %1893 = load i32, ptr %1890, align 8, !tbaa !440
  br label %1894

1894:                                             ; preds = %1892, %1889
  %1895 = phi i32 [ %1893, %1892 ], [ 0, %1889 ]
  %1896 = icmp eq i32 %1895, %1887
  br i1 %1896, label %1901, label %1897, !prof !577

1897:                                             ; preds = %1894
  %1898 = zext i32 %1887 to i64
  %1899 = getelementptr inbounds %struct.VEC_edge_base, ptr %1890, i64 0, i32 2, i64 %1898
  %1900 = load ptr, ptr %1899, align 8, !tbaa !311
  br label %1901

1901:                                             ; preds = %1897, %1894
  %1902 = phi ptr [ %1900, %1897 ], [ null, %1894 ]
  br i1 %1896, label %1947, label %1903, !prof !577

1903:                                             ; preds = %1901
  %1904 = getelementptr inbounds %struct.edge_def, ptr %1902, i64 0, i32 7
  %1905 = load i32, ptr %1904, align 8, !tbaa !578
  %1906 = and i32 %1905, -33
  store i32 %1906, ptr %1904, align 8, !tbaa !578
  %1907 = and i32 %1905, 2
  %1908 = icmp eq i32 %1907, 0
  br i1 %1908, label %1938, label %1909, !prof !579

1909:                                             ; preds = %1903
  %1910 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !311
  %1911 = getelementptr inbounds %struct.basic_block_def, ptr %1884, i64 0, i32 9
  %1912 = load i32, ptr %1911, align 8, !tbaa !432
  %1913 = load ptr, ptr %1910, align 8, !tbaa !435
  %1914 = icmp eq ptr %1913, null
  br i1 %1914, label %1929, label %1915

1915:                                             ; preds = %1909
  %1916 = lshr i32 %1912, 6
  %1917 = zext nneg i32 %1916 to i64
  %1918 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1910, i64 0, i32 3, i64 %1917
  %1919 = load i64, ptr %1918, align 8, !tbaa !379
  %1920 = and i32 %1912, 63
  %1921 = zext nneg i32 %1920 to i64
  %1922 = shl nuw i64 1, %1921
  %1923 = and i64 %1919, %1922
  %1924 = icmp eq i64 %1923, 0
  br i1 %1924, label %1925, label %1929

1925:                                             ; preds = %1915
  %1926 = getelementptr inbounds i8, ptr %1913, i64 %1917
  %1927 = load i8, ptr %1926, align 1, !tbaa !322
  %1928 = add i8 %1927, 1
  store i8 %1928, ptr %1926, align 1, !tbaa !322
  br label %1929

1929:                                             ; preds = %1925, %1915, %1909
  %1930 = and i32 %1912, 63
  %1931 = zext nneg i32 %1930 to i64
  %1932 = shl nuw i64 1, %1931
  %1933 = lshr i32 %1912, 6
  %1934 = zext nneg i32 %1933 to i64
  %1935 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1910, i64 0, i32 3, i64 %1934
  %1936 = load i64, ptr %1935, align 8, !tbaa !379
  %1937 = or i64 %1936, %1932
  store i64 %1937, ptr %1935, align 8, !tbaa !379
  br label %1947

1938:                                             ; preds = %1903
  br i1 %1891, label %1941, label %1939, !prof !580

1939:                                             ; preds = %1938
  %1940 = load i32, ptr %1890, align 8, !tbaa !440
  br label %1941

1941:                                             ; preds = %1939, %1938
  %1942 = phi i32 [ %1940, %1939 ], [ 0, %1938 ]
  %1943 = icmp ult i32 %1887, %1942
  br i1 %1943, label %1945, label %1944, !prof !579

1944:                                             ; preds = %1941
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %1945

1945:                                             ; preds = %1944, %1941
  %1946 = add i32 %1887, 1
  br label %1886, !llvm.loop !581

1947:                                             ; preds = %1901, %1929
  %1948 = getelementptr inbounds %struct.basic_block_def, ptr %1884, i64 0, i32 2
  %1949 = load ptr, ptr %1948, align 8, !tbaa !450
  %1950 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %1949, i64 0, i32 8
  %1951 = load i8, ptr %1950, align 8
  %1952 = and i8 %1951, -2
  store i8 %1952, ptr %1950, align 8
  %1953 = load ptr, ptr %1948, align 8, !tbaa !450
  %1954 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %1953, i64 0, i32 8
  %1955 = load i8, ptr %1954, align 8
  %1956 = and i8 %1955, -3
  store i8 %1956, ptr %1954, align 8
  %1957 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  %1958 = call ptr @pool_alloc(ptr noundef %1957) #19
  %1959 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %1959, ptr %1958, align 8, !tbaa !351
  %1960 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %1961 = getelementptr inbounds %struct.bitmap_set, ptr %1958, i64 0, i32 1
  store ptr %1960, ptr %1961, align 8, !tbaa !353
  %1962 = load ptr, ptr %1948, align 8, !tbaa !450
  %1963 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %1962, i64 0, i32 4
  store ptr %1958, ptr %1963, align 8, !tbaa !582
  %1964 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  %1965 = call ptr @pool_alloc(ptr noundef %1964) #19
  %1966 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %1966, ptr %1965, align 8, !tbaa !351
  %1967 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %1968 = getelementptr inbounds %struct.bitmap_set, ptr %1965, i64 0, i32 1
  store ptr %1967, ptr %1968, align 8, !tbaa !353
  %1969 = load ptr, ptr %1948, align 8, !tbaa !450
  %1970 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %1969, i64 0, i32 5
  store ptr %1965, ptr %1970, align 8, !tbaa !583
  %1971 = getelementptr inbounds %struct.basic_block_def, ptr %1884, i64 0, i32 6
  %1972 = load ptr, ptr %1971, align 8, !tbaa !574
  %1973 = load ptr, ptr @cfun, align 8, !tbaa !311
  %1974 = getelementptr inbounds %struct.function, ptr %1973, i64 0, i32 1
  %1975 = load ptr, ptr %1974, align 8, !tbaa !419
  %1976 = getelementptr inbounds %struct.control_flow_graph, ptr %1975, i64 0, i32 1
  %1977 = load ptr, ptr %1976, align 8, !tbaa !423
  %1978 = icmp eq ptr %1972, %1977
  br i1 %1978, label %1979, label %1883, !prof !584, !llvm.loop !585

1979:                                             ; preds = %1947, %1870
  %1980 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  %1981 = call ptr @pool_alloc(ptr noundef %1980) #19
  %1982 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %1982, ptr %1981, align 8, !tbaa !351
  %1983 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %1984 = getelementptr inbounds %struct.bitmap_set, ptr %1981, i64 0, i32 1
  store ptr %1983, ptr %1984, align 8, !tbaa !353
  %1985 = load ptr, ptr @cfun, align 8, !tbaa !311
  %1986 = getelementptr inbounds %struct.function, ptr %1985, i64 0, i32 1
  %1987 = load ptr, ptr %1986, align 8, !tbaa !419
  %1988 = getelementptr inbounds %struct.control_flow_graph, ptr %1987, i64 0, i32 1
  %1989 = load ptr, ptr %1988, align 8, !tbaa !423
  %1990 = getelementptr inbounds %struct.basic_block_def, ptr %1989, i64 0, i32 2
  %1991 = load ptr, ptr %1990, align 8, !tbaa !450
  %1992 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %1991, i64 0, i32 4
  store ptr %1981, ptr %1992, align 8, !tbaa !582
  %1993 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %1991, i64 0, i32 8
  %1994 = load i8, ptr %1993, align 8
  %1995 = or i8 %1994, 1
  store i8 %1995, ptr %1993, align 8
  %1996 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  %1997 = call ptr @pool_alloc(ptr noundef %1996) #19
  %1998 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %1998, ptr %1997, align 8, !tbaa !351
  %1999 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %2000 = getelementptr inbounds %struct.bitmap_set, ptr %1997, i64 0, i32 1
  store ptr %1999, ptr %2000, align 8, !tbaa !353
  %2001 = load ptr, ptr @cfun, align 8, !tbaa !311
  %2002 = getelementptr inbounds %struct.function, ptr %2001, i64 0, i32 1
  %2003 = load ptr, ptr %2002, align 8, !tbaa !419
  %2004 = getelementptr inbounds %struct.control_flow_graph, ptr %2003, i64 0, i32 1
  %2005 = load ptr, ptr %2004, align 8, !tbaa !423
  %2006 = getelementptr inbounds %struct.basic_block_def, ptr %2005, i64 0, i32 2
  %2007 = load ptr, ptr %2006, align 8, !tbaa !450
  %2008 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2007, i64 0, i32 5
  store ptr %1997, ptr %2008, align 8, !tbaa !583
  %2009 = getelementptr inbounds %struct.control_flow_graph, ptr %2003, i64 0, i32 5
  %2010 = load i32, ptr %2009, align 8, !tbaa !422
  %2011 = add nsw i32 %2010, 1
  %2012 = call ptr @sbitmap_alloc(i32 noundef %2011) #19
  store ptr %2012, ptr @changed_blocks, align 8, !tbaa !311
  call void @sbitmap_ones(ptr noundef %2012) #19
  br label %2016

2013:                                             ; preds = %2692, %2026
  %2014 = phi i8 [ 0, %2026 ], [ %2693, %2692 ]
  %2015 = icmp eq i8 %2014, 0
  br i1 %2015, label %2696, label %2016, !prof !586, !llvm.loop !587

2016:                                             ; preds = %1979, %2013
  %2017 = phi i32 [ 0, %1979 ], [ %2027, %2013 ]
  %2018 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %2019 = icmp eq ptr %2018, null
  br i1 %2019, label %2026, label %2020, !prof !588

2020:                                             ; preds = %2016
  %2021 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %2022 = and i32 %2021, 8
  %2023 = icmp eq i32 %2022, 0
  br i1 %2023, label %2026, label %2024

2024:                                             ; preds = %2020
  %2025 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2018, ptr noundef nonnull @.str.34, i32 noundef %2017)
  br label %2026

2026:                                             ; preds = %2024, %2020, %2016
  %2027 = add nuw nsw i32 %2017, 1
  %2028 = load ptr, ptr @cfun, align 8, !tbaa !311
  %2029 = getelementptr inbounds %struct.function, ptr %2028, i64 0, i32 1
  %2030 = load ptr, ptr %2029, align 8, !tbaa !419
  %2031 = getelementptr inbounds %struct.control_flow_graph, ptr %2030, i64 0, i32 3
  %2032 = load i32, ptr %2031, align 8, !tbaa !420
  %2033 = icmp sgt i32 %2032, 2
  br i1 %2033, label %2034, label %2013, !prof !589

2034:                                             ; preds = %2026
  %2035 = add nsw i32 %2032, -3
  %2036 = zext i32 %2035 to i64
  br label %2037

2037:                                             ; preds = %2034, %2692
  %2038 = phi i64 [ %2036, %2034 ], [ %2694, %2692 ]
  %2039 = phi i8 [ 0, %2034 ], [ %2693, %2692 ]
  %2040 = load ptr, ptr @changed_blocks, align 8, !tbaa !311
  %2041 = load ptr, ptr @postorder, align 8, !tbaa !311
  %2042 = getelementptr inbounds i32, ptr %2041, i64 %2038
  %2043 = load i32, ptr %2042, align 4, !tbaa !326
  %2044 = lshr i32 %2043, 6
  %2045 = zext nneg i32 %2044 to i64
  %2046 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2040, i64 0, i32 3, i64 %2045
  %2047 = load i64, ptr %2046, align 8, !tbaa !379
  %2048 = and i32 %2043, 63
  %2049 = zext nneg i32 %2048 to i64
  %2050 = shl nuw i64 1, %2049
  %2051 = and i64 %2050, %2047
  %2052 = icmp eq i64 %2051, 0
  br i1 %2052, label %2692, label %2053, !prof !590

2053:                                             ; preds = %2037
  %2054 = load ptr, ptr @cfun, align 8, !tbaa !311
  %2055 = getelementptr inbounds %struct.function, ptr %2054, i64 0, i32 1
  %2056 = load ptr, ptr %2055, align 8, !tbaa !419
  %2057 = getelementptr inbounds %struct.control_flow_graph, ptr %2056, i64 0, i32 2
  %2058 = load ptr, ptr %2057, align 8, !tbaa !591
  %2059 = zext i32 %2043 to i64
  %2060 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %2058, i64 0, i32 2, i64 %2059
  %2061 = load ptr, ptr %2060, align 8, !tbaa !311
  %2062 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !311
  %2063 = getelementptr inbounds %struct.basic_block_def, ptr %2061, i64 0, i32 9
  %2064 = load i32, ptr %2063, align 8, !tbaa !432
  %2065 = lshr i32 %2064, 6
  %2066 = zext nneg i32 %2065 to i64
  %2067 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2062, i64 0, i32 3, i64 %2066
  %2068 = load i64, ptr %2067, align 8, !tbaa !379
  %2069 = and i32 %2064, 63
  %2070 = zext nneg i32 %2069 to i64
  %2071 = getelementptr inbounds %struct.basic_block_def, ptr %2061, i64 0, i32 2
  %2072 = load ptr, ptr %2071, align 8, !tbaa !450
  %2073 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2072, i64 0, i32 8
  %2074 = load i8, ptr %2073, align 8
  %2075 = or i8 %2074, 1
  store i8 %2075, ptr %2073, align 8
  %2076 = shl nuw i64 1, %2070
  %2077 = and i64 %2076, %2068
  %2078 = icmp eq i64 %2077, 0
  br i1 %2078, label %2079, label %2638, !prof !592

2079:                                             ; preds = %2053
  %2080 = load ptr, ptr %2071, align 8, !tbaa !450
  %2081 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2080, i64 0, i32 4
  %2082 = load ptr, ptr %2081, align 8, !tbaa !582
  %2083 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  %2084 = call ptr @pool_alloc(ptr noundef %2083) #19
  %2085 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %2085, ptr %2084, align 8, !tbaa !351
  %2086 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %2087 = getelementptr inbounds %struct.bitmap_set, ptr %2084, i64 0, i32 1
  store ptr %2086, ptr %2087, align 8, !tbaa !353
  %2088 = getelementptr inbounds %struct.basic_block_def, ptr %2061, i64 0, i32 1
  %2089 = load ptr, ptr %2088, align 8, !tbaa !593
  %2090 = icmp eq ptr %2089, null
  br i1 %2090, label %2093, label %2091, !prof !594

2091:                                             ; preds = %2079
  %2092 = load i32, ptr %2089, align 8, !tbaa !440
  br label %2093

2093:                                             ; preds = %2091, %2079
  %2094 = phi i32 [ %2092, %2091 ], [ 0, %2079 ]
  %2095 = icmp eq i32 %2094, 0
  br i1 %2095, label %2355, label %2096, !prof !594

2096:                                             ; preds = %2093
  br i1 %2090, label %2101, label %2097, !prof !594

2097:                                             ; preds = %2096
  %2098 = load i32, ptr %2089, align 8, !tbaa !440
  %2099 = icmp eq i32 %2098, 1
  %2100 = zext i1 %2099 to i8
  br label %2101

2101:                                             ; preds = %2097, %2096
  %2102 = phi i8 [ %2100, %2097 ], [ 0, %2096 ]
  %2103 = icmp eq i8 %2102, 0
  br i1 %2103, label %2162, label %2104, !prof !595

2104:                                             ; preds = %2101
  br i1 %2090, label %2108, label %2105, !prof !596

2105:                                             ; preds = %2104
  %2106 = load i32, ptr %2089, align 8, !tbaa !440
  %2107 = icmp eq i32 %2106, 1
  br i1 %2107, label %2109, label %2108, !prof !597

2108:                                             ; preds = %2105, %2104
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 645, ptr noundef nonnull @.str.1) #19
  br label %2109

2109:                                             ; preds = %2108, %2105
  %2110 = load ptr, ptr %2088, align 8, !tbaa !593
  %2111 = getelementptr inbounds %struct.VEC_edge_base, ptr %2110, i64 0, i32 2, i64 0
  %2112 = load ptr, ptr %2111, align 8, !tbaa !311
  %2113 = getelementptr inbounds %struct.edge_def, ptr %2112, i64 0, i32 1
  %2114 = load ptr, ptr %2113, align 8, !tbaa !429
  %2115 = getelementptr inbounds %struct.basic_block_def, ptr %2114, i64 0, i32 2
  %2116 = load ptr, ptr %2115, align 8, !tbaa !450
  %2117 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2116, i64 0, i32 8
  %2118 = load i8, ptr %2117, align 8
  %2119 = and i8 %2118, 1
  %2120 = icmp eq i8 %2119, 0
  br i1 %2120, label %2121, label %2157, !prof !596

2121:                                             ; preds = %2109
  %2122 = load ptr, ptr @changed_blocks, align 8, !tbaa !311
  %2123 = load i32, ptr %2063, align 8, !tbaa !432
  %2124 = load ptr, ptr %2122, align 8, !tbaa !435
  %2125 = icmp eq ptr %2124, null
  br i1 %2125, label %2140, label %2126

2126:                                             ; preds = %2121
  %2127 = lshr i32 %2123, 6
  %2128 = zext nneg i32 %2127 to i64
  %2129 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2122, i64 0, i32 3, i64 %2128
  %2130 = load i64, ptr %2129, align 8, !tbaa !379
  %2131 = and i32 %2123, 63
  %2132 = zext nneg i32 %2131 to i64
  %2133 = shl nuw i64 1, %2132
  %2134 = and i64 %2130, %2133
  %2135 = icmp eq i64 %2134, 0
  br i1 %2135, label %2136, label %2140

2136:                                             ; preds = %2126
  %2137 = getelementptr inbounds i8, ptr %2124, i64 %2128
  %2138 = load i8, ptr %2137, align 1, !tbaa !322
  %2139 = add i8 %2138, 1
  store i8 %2139, ptr %2137, align 1, !tbaa !322
  br label %2140

2140:                                             ; preds = %2136, %2126, %2121
  %2141 = and i32 %2123, 63
  %2142 = zext nneg i32 %2141 to i64
  %2143 = shl nuw i64 1, %2142
  %2144 = lshr i32 %2123, 6
  %2145 = zext nneg i32 %2144 to i64
  %2146 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2122, i64 0, i32 3, i64 %2145
  %2147 = load i64, ptr %2146, align 8, !tbaa !379
  %2148 = or i64 %2147, %2143
  store i64 %2148, ptr %2146, align 8, !tbaa !379
  %2149 = load ptr, ptr %2071, align 8, !tbaa !450
  %2150 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2149, i64 0, i32 8
  %2151 = load i8, ptr %2150, align 8
  %2152 = and i8 %2151, -2
  store i8 %2152, ptr %2150, align 8
  %2153 = load ptr, ptr %2071, align 8, !tbaa !450
  %2154 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2153, i64 0, i32 8
  %2155 = load i8, ptr %2154, align 8
  %2156 = or i8 %2155, 2
  store i8 %2156, ptr %2154, align 8
  br label %2160

2157:                                             ; preds = %2109
  %2158 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2116, i64 0, i32 4
  %2159 = load ptr, ptr %2158, align 8, !tbaa !582
  call fastcc void @phi_translate_set(ptr noundef nonnull %2084, ptr noundef %2159, ptr noundef %2061, ptr noundef %2114)
  br label %2160

2160:                                             ; preds = %2157, %2140
  %2161 = xor i8 %2119, 1
  br i1 %2120, label %2638, label %2355, !prof !596

2162:                                             ; preds = %2101
  br i1 %2090, label %2165, label %2163, !prof !598

2163:                                             ; preds = %2162
  %2164 = load i32, ptr %2089, align 8, !tbaa !440
  br label %2165

2165:                                             ; preds = %2163, %2162
  %2166 = phi i32 [ %2164, %2163 ], [ 0, %2162 ]
  %2167 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %2166) #19
  br label %2168

2168:                                             ; preds = %2219, %2165
  %2169 = phi i32 [ 0, %2165 ], [ %2220, %2219 ]
  %2170 = phi ptr [ null, %2165 ], [ %2210, %2219 ]
  %2171 = load ptr, ptr %2088, align 8, !tbaa !311
  %2172 = icmp eq ptr %2171, null
  br i1 %2172, label %2175, label %2173, !prof !599

2173:                                             ; preds = %2168
  %2174 = load i32, ptr %2171, align 8, !tbaa !440
  br label %2175

2175:                                             ; preds = %2173, %2168
  %2176 = phi i32 [ %2174, %2173 ], [ 0, %2168 ]
  %2177 = icmp eq i32 %2176, %2169
  br i1 %2177, label %2182, label %2178, !prof !600

2178:                                             ; preds = %2175
  %2179 = zext i32 %2169 to i64
  %2180 = getelementptr inbounds %struct.VEC_edge_base, ptr %2171, i64 0, i32 2, i64 %2179
  %2181 = load ptr, ptr %2180, align 8, !tbaa !311
  br label %2182

2182:                                             ; preds = %2178, %2175
  %2183 = phi ptr [ %2181, %2178 ], [ null, %2175 ]
  %2184 = icmp eq ptr %2170, null
  br i1 %2177, label %2221, label %2185, !prof !600

2185:                                             ; preds = %2182
  br i1 %2184, label %2186, label %2195, !prof !601

2186:                                             ; preds = %2185
  %2187 = getelementptr inbounds %struct.edge_def, ptr %2183, i64 0, i32 1
  %2188 = load ptr, ptr %2187, align 8, !tbaa !429
  %2189 = getelementptr inbounds %struct.basic_block_def, ptr %2188, i64 0, i32 2
  %2190 = load ptr, ptr %2189, align 8, !tbaa !450
  %2191 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2190, i64 0, i32 8
  %2192 = load i8, ptr %2191, align 8
  %2193 = and i8 %2192, 1
  %2194 = icmp eq i8 %2193, 0
  br i1 %2194, label %2195, label %2209, !prof !598

2195:                                             ; preds = %2186, %2185
  %2196 = getelementptr inbounds %struct.edge_def, ptr %2183, i64 0, i32 1
  %2197 = load ptr, ptr %2196, align 8, !tbaa !429
  %2198 = getelementptr inbounds %struct.basic_block_def, ptr %2197, i64 0, i32 2
  %2199 = load ptr, ptr %2198, align 8, !tbaa !450
  %2200 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2199, i64 0, i32 8
  %2201 = load i8, ptr %2200, align 8
  %2202 = and i8 %2201, 1
  %2203 = icmp eq i8 %2202, 0
  br i1 %2203, label %2209, label %2204, !prof !602

2204:                                             ; preds = %2195
  %2205 = load i32, ptr %2167, align 8, !tbaa !603
  %2206 = add i32 %2205, 1
  store i32 %2206, ptr %2167, align 8, !tbaa !603
  %2207 = zext i32 %2205 to i64
  %2208 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %2167, i64 0, i32 2, i64 %2207
  store ptr %2197, ptr %2208, align 8, !tbaa !311
  br label %2209

2209:                                             ; preds = %2186, %2204, %2195
  %2210 = phi ptr [ %2170, %2204 ], [ %2170, %2195 ], [ %2188, %2186 ]
  %2211 = load ptr, ptr %2088, align 8, !tbaa !311
  %2212 = icmp eq ptr %2211, null
  br i1 %2212, label %2215, label %2213, !prof !605

2213:                                             ; preds = %2209
  %2214 = load i32, ptr %2211, align 8, !tbaa !440
  br label %2215

2215:                                             ; preds = %2213, %2209
  %2216 = phi i32 [ %2214, %2213 ], [ 0, %2209 ]
  %2217 = icmp ult i32 %2169, %2216
  br i1 %2217, label %2219, label %2218, !prof !606

2218:                                             ; preds = %2215
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %2219

2219:                                             ; preds = %2218, %2215
  %2220 = add i32 %2169, 1
  br label %2168, !llvm.loop !607

2221:                                             ; preds = %2182
  br i1 %2184, label %2222, label %2259, !prof !598

2222:                                             ; preds = %2221
  %2223 = load ptr, ptr @changed_blocks, align 8, !tbaa !311
  %2224 = load i32, ptr %2063, align 8, !tbaa !432
  %2225 = load ptr, ptr %2223, align 8, !tbaa !435
  %2226 = icmp eq ptr %2225, null
  br i1 %2226, label %2241, label %2227

2227:                                             ; preds = %2222
  %2228 = lshr i32 %2224, 6
  %2229 = zext nneg i32 %2228 to i64
  %2230 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2223, i64 0, i32 3, i64 %2229
  %2231 = load i64, ptr %2230, align 8, !tbaa !379
  %2232 = and i32 %2224, 63
  %2233 = zext nneg i32 %2232 to i64
  %2234 = shl nuw i64 1, %2233
  %2235 = and i64 %2231, %2234
  %2236 = icmp eq i64 %2235, 0
  br i1 %2236, label %2237, label %2241

2237:                                             ; preds = %2227
  %2238 = getelementptr inbounds i8, ptr %2225, i64 %2229
  %2239 = load i8, ptr %2238, align 1, !tbaa !322
  %2240 = add i8 %2239, 1
  store i8 %2240, ptr %2238, align 1, !tbaa !322
  br label %2241

2241:                                             ; preds = %2237, %2227, %2222
  %2242 = and i32 %2224, 63
  %2243 = zext nneg i32 %2242 to i64
  %2244 = shl nuw i64 1, %2243
  %2245 = lshr i32 %2224, 6
  %2246 = zext nneg i32 %2245 to i64
  %2247 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2223, i64 0, i32 3, i64 %2246
  %2248 = load i64, ptr %2247, align 8, !tbaa !379
  %2249 = or i64 %2248, %2244
  store i64 %2249, ptr %2247, align 8, !tbaa !379
  %2250 = load ptr, ptr %2071, align 8, !tbaa !450
  %2251 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2250, i64 0, i32 8
  %2252 = load i8, ptr %2251, align 8
  %2253 = and i8 %2252, -2
  store i8 %2253, ptr %2251, align 8
  %2254 = load ptr, ptr %2071, align 8, !tbaa !450
  %2255 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2254, i64 0, i32 8
  %2256 = load i8, ptr %2255, align 8
  %2257 = or i8 %2256, 2
  store i8 %2257, ptr %2255, align 8
  %2258 = icmp eq ptr %2167, null
  br i1 %2258, label %2353, label %2351

2259:                                             ; preds = %2221
  %2260 = getelementptr inbounds %struct.basic_block_def, ptr %2170, i64 0, i32 13
  %2261 = load i32, ptr %2260, align 8, !tbaa !489
  %2262 = and i32 %2261, 512
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2265, label %2264, !prof !608

2264:                                             ; preds = %2259
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 510, ptr noundef nonnull @.str.1) #19
  br label %2265

2265:                                             ; preds = %2264, %2259
  %2266 = getelementptr inbounds %struct.basic_block_def, ptr %2170, i64 0, i32 7
  %2267 = load ptr, ptr %2266, align 8, !tbaa !322
  %2268 = icmp eq ptr %2267, null
  br i1 %2268, label %2272, label %2269, !prof !598

2269:                                             ; preds = %2265
  %2270 = getelementptr inbounds %struct.gimple_bb_info, ptr %2267, i64 0, i32 1
  %2271 = load ptr, ptr %2270, align 8, !tbaa !609
  br label %2272

2272:                                             ; preds = %2269, %2265
  %2273 = phi ptr [ %2271, %2269 ], [ null, %2265 ]
  %2274 = icmp eq ptr %2273, null
  br i1 %2274, label %2279, label %2275, !prof !608

2275:                                             ; preds = %2272
  %2276 = load ptr, ptr %2273, align 8, !tbaa !495
  %2277 = icmp eq ptr %2276, null
  %2278 = zext i1 %2277 to i8
  br label %2279

2279:                                             ; preds = %2275, %2272
  %2280 = phi i8 [ 1, %2272 ], [ %2278, %2275 ]
  %2281 = icmp eq i8 %2280, 0
  %2282 = getelementptr inbounds %struct.basic_block_def, ptr %2170, i64 0, i32 2
  %2283 = load ptr, ptr %2282, align 8, !tbaa !450
  %2284 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2283, i64 0, i32 4
  %2285 = load ptr, ptr %2284, align 8, !tbaa !582
  br i1 %2281, label %2286, label %2287, !prof !598

2286:                                             ; preds = %2279
  call fastcc void @phi_translate_set(ptr noundef nonnull %2084, ptr noundef %2285, ptr noundef %2061, ptr noundef nonnull %2170)
  br label %2293

2287:                                             ; preds = %2279
  %2288 = load ptr, ptr %2084, align 8, !tbaa !351
  %2289 = load ptr, ptr %2285, align 8, !tbaa !351
  call void @bitmap_copy(ptr noundef %2288, ptr noundef %2289) #19
  %2290 = load ptr, ptr %2087, align 8, !tbaa !353
  %2291 = getelementptr inbounds %struct.bitmap_set, ptr %2285, i64 0, i32 1
  %2292 = load ptr, ptr %2291, align 8, !tbaa !353
  call void @bitmap_copy(ptr noundef %2290, ptr noundef %2292) #19
  br label %2293

2293:                                             ; preds = %2287, %2286
  %2294 = icmp eq ptr %2167, null
  br label %2295

2295:                                             ; preds = %2348, %2293
  %2296 = phi i64 [ 0, %2293 ], [ %2349, %2348 ]
  br i1 %2294, label %2305, label %2297, !prof !605

2297:                                             ; preds = %2295
  %2298 = trunc i64 %2296 to i32
  %2299 = load i32, ptr %2167, align 8, !tbaa !603
  %2300 = icmp ugt i32 %2299, %2298
  br i1 %2300, label %2301, label %2305, !prof !610

2301:                                             ; preds = %2297
  %2302 = and i64 %2296, 4294967295
  %2303 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %2167, i64 0, i32 2, i64 %2302
  %2304 = load ptr, ptr %2303, align 8, !tbaa !311
  br label %2305

2305:                                             ; preds = %2301, %2297, %2295
  %2306 = phi ptr [ %2304, %2301 ], [ null, %2297 ], [ null, %2295 ]
  %2307 = phi i1 [ false, %2301 ], [ true, %2297 ], [ true, %2295 ]
  br i1 %2307, label %2350, label %2308, !prof !601

2308:                                             ; preds = %2305
  %2309 = getelementptr inbounds %struct.basic_block_def, ptr %2306, i64 0, i32 13
  %2310 = load i32, ptr %2309, align 8, !tbaa !489
  %2311 = and i32 %2310, 512
  %2312 = icmp eq i32 %2311, 0
  br i1 %2312, label %2314, label %2313, !prof !611

2313:                                             ; preds = %2308
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 510, ptr noundef nonnull @.str.1) #19
  br label %2314

2314:                                             ; preds = %2313, %2308
  %2315 = getelementptr inbounds %struct.basic_block_def, ptr %2306, i64 0, i32 7
  %2316 = load ptr, ptr %2315, align 8, !tbaa !322
  %2317 = icmp eq ptr %2316, null
  br i1 %2317, label %2321, label %2318, !prof !602

2318:                                             ; preds = %2314
  %2319 = getelementptr inbounds %struct.gimple_bb_info, ptr %2316, i64 0, i32 1
  %2320 = load ptr, ptr %2319, align 8, !tbaa !609
  br label %2321

2321:                                             ; preds = %2318, %2314
  %2322 = phi ptr [ %2320, %2318 ], [ null, %2314 ]
  %2323 = icmp eq ptr %2322, null
  br i1 %2323, label %2328, label %2324, !prof !612

2324:                                             ; preds = %2321
  %2325 = load ptr, ptr %2322, align 8, !tbaa !495
  %2326 = icmp eq ptr %2325, null
  %2327 = zext i1 %2326 to i8
  br label %2328

2328:                                             ; preds = %2324, %2321
  %2329 = phi i8 [ 1, %2321 ], [ %2327, %2324 ]
  %2330 = icmp eq i8 %2329, 0
  br i1 %2330, label %2331, label %2343, !prof !602

2331:                                             ; preds = %2328
  %2332 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  %2333 = call ptr @pool_alloc(ptr noundef %2332) #19
  %2334 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %2334, ptr %2333, align 8, !tbaa !351
  %2335 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %2336 = getelementptr inbounds %struct.bitmap_set, ptr %2333, i64 0, i32 1
  store ptr %2335, ptr %2336, align 8, !tbaa !353
  %2337 = getelementptr inbounds %struct.basic_block_def, ptr %2306, i64 0, i32 2
  %2338 = load ptr, ptr %2337, align 8, !tbaa !450
  %2339 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2338, i64 0, i32 4
  %2340 = load ptr, ptr %2339, align 8, !tbaa !582
  call fastcc void @phi_translate_set(ptr noundef nonnull %2333, ptr noundef %2340, ptr noundef %2061, ptr noundef %2306)
  call fastcc void @bitmap_set_and(ptr noundef nonnull %2084, ptr noundef nonnull %2333)
  %2341 = load ptr, ptr %2333, align 8, !tbaa !351
  call void @bitmap_obstack_free(ptr noundef %2341) #19
  store ptr null, ptr %2333, align 8, !tbaa !351
  %2342 = load ptr, ptr %2336, align 8, !tbaa !353
  call void @bitmap_obstack_free(ptr noundef %2342) #19
  store ptr null, ptr %2336, align 8, !tbaa !353
  br label %2348

2343:                                             ; preds = %2328
  %2344 = getelementptr inbounds %struct.basic_block_def, ptr %2306, i64 0, i32 2
  %2345 = load ptr, ptr %2344, align 8, !tbaa !450
  %2346 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2345, i64 0, i32 4
  %2347 = load ptr, ptr %2346, align 8, !tbaa !582
  call fastcc void @bitmap_set_and(ptr noundef nonnull %2084, ptr noundef %2347)
  br label %2348

2348:                                             ; preds = %2343, %2331
  %2349 = add i64 %2296, 1
  br label %2295, !llvm.loop !613

2350:                                             ; preds = %2305
  br i1 %2294, label %2353, label %2351, !prof !598

2351:                                             ; preds = %2350, %2241
  %2352 = phi i8 [ 1, %2241 ], [ 0, %2350 ]
  call void @free(ptr noundef %2167)
  br label %2353

2353:                                             ; preds = %2351, %2350, %2241
  %2354 = phi i8 [ 1, %2241 ], [ 0, %2350 ], [ %2352, %2351 ]
  br i1 %2184, label %2638, label %2355, !prof !598

2355:                                             ; preds = %2353, %2160, %2093
  %2356 = phi i8 [ 0, %2093 ], [ %2161, %2160 ], [ %2354, %2353 ]
  %2357 = load ptr, ptr %2071, align 8, !tbaa !450
  %2358 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2357, i64 0, i32 2
  %2359 = load ptr, ptr %2358, align 8, !tbaa !456
  %2360 = call fastcc ptr @bitmap_set_subtract(ptr noundef nonnull %2084, ptr noundef %2359)
  %2361 = load ptr, ptr %2071, align 8, !tbaa !450
  %2362 = load ptr, ptr %2361, align 8, !tbaa !453
  %2363 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2361, i64 0, i32 2
  %2364 = load ptr, ptr %2363, align 8, !tbaa !456
  %2365 = call fastcc ptr @bitmap_set_subtract(ptr noundef %2362, ptr noundef %2364)
  %2366 = load ptr, ptr %2071, align 8, !tbaa !450
  %2367 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2366, i64 0, i32 4
  store ptr %2365, ptr %2367, align 8, !tbaa !582
  %2368 = load ptr, ptr %2360, align 8, !tbaa !351
  %2369 = load ptr, ptr %2368, align 8, !tbaa !375
  %2370 = icmp eq ptr %2369, null
  %2371 = select i1 %2370, ptr @bitmap_zero_bits, ptr %2369, !prof !614
  %2372 = getelementptr inbounds %struct.bitmap_element_def, ptr %2371, i64 0, i32 2
  %2373 = load i32, ptr %2372, align 8, !tbaa !377
  %2374 = shl i32 %2373, 7
  %2375 = getelementptr inbounds %struct.bitmap_element_def, ptr %2371, i64 0, i32 3
  %2376 = load i64, ptr %2375, align 8, !tbaa !379
  %2377 = icmp eq i64 %2376, 0
  %2378 = zext i1 %2377 to i32
  %2379 = or disjoint i32 %2374, %2378
  br label %2380

2380:                                             ; preds = %2444, %2355
  %2381 = phi ptr [ %2371, %2355 ], [ %2436, %2444 ]
  %2382 = phi i32 [ %2379, %2355 ], [ %2450, %2444 ]
  %2383 = phi i32 [ 0, %2355 ], [ %2438, %2444 ]
  %2384 = phi i64 [ %2376, %2355 ], [ %2449, %2444 ]
  %2385 = icmp eq i64 %2384, 0
  br i1 %2385, label %2400, label %2386, !prof !615

2386:                                             ; preds = %2414, %2380
  %2387 = phi ptr [ %2381, %2380 ], [ %2405, %2414 ]
  %2388 = phi i32 [ %2382, %2380 ], [ %2416, %2414 ]
  %2389 = phi i32 [ %2383, %2380 ], [ %2415, %2414 ]
  %2390 = phi i64 [ %2384, %2380 ], [ %2419, %2414 ]
  %2391 = and i64 %2390, 1
  %2392 = icmp eq i64 %2391, 0
  br i1 %2392, label %2393, label %2435, !prof !616

2393:                                             ; preds = %2386, %2393
  %2394 = phi i64 [ %2396, %2393 ], [ %2390, %2386 ]
  %2395 = phi i32 [ %2397, %2393 ], [ %2388, %2386 ]
  %2396 = lshr exact i64 %2394, 1
  %2397 = add i32 %2395, 1
  %2398 = and i64 %2394, 2
  %2399 = icmp eq i64 %2398, 0
  br i1 %2399, label %2393, label %2435, !prof !617, !llvm.loop !380

2400:                                             ; preds = %2380
  %2401 = add i32 %2382, 63
  %2402 = and i32 %2401, -64
  %2403 = add i32 %2383, 1
  br label %2404

2404:                                             ; preds = %2431, %2400
  %2405 = phi ptr [ %2381, %2400 ], [ %2429, %2431 ]
  %2406 = phi i32 [ %2402, %2400 ], [ %2434, %2431 ]
  %2407 = phi i64 [ %2384, %2400 ], [ %2427, %2431 ]
  %2408 = phi i32 [ %2403, %2400 ], [ 0, %2431 ]
  %2409 = icmp eq i32 %2408, 2
  br i1 %2409, label %2425, label %2410, !prof !618

2410:                                             ; preds = %2404
  %2411 = add i32 %2406, 128
  %2412 = shl i32 %2408, 6
  %2413 = sub i32 %2411, %2412
  br label %2414

2414:                                             ; preds = %2410, %2421
  %2415 = phi i32 [ %2423, %2421 ], [ %2408, %2410 ]
  %2416 = phi i32 [ %2422, %2421 ], [ %2406, %2410 ]
  %2417 = zext i32 %2415 to i64
  %2418 = getelementptr inbounds %struct.bitmap_element_def, ptr %2405, i64 0, i32 3, i64 %2417
  %2419 = load i64, ptr %2418, align 8, !tbaa !379
  %2420 = icmp eq i64 %2419, 0
  br i1 %2420, label %2421, label %2386, !prof !619

2421:                                             ; preds = %2414
  %2422 = add i32 %2416, 64
  %2423 = add i32 %2415, 1
  %2424 = icmp eq i32 %2423, 2
  br i1 %2424, label %2425, label %2414, !prof !620, !llvm.loop !381

2425:                                             ; preds = %2421, %2404
  %2426 = phi i32 [ %2406, %2404 ], [ %2413, %2421 ]
  %2427 = phi i64 [ %2407, %2404 ], [ %2419, %2421 ]
  %2428 = phi i32 [ %2408, %2404 ], [ 2, %2421 ]
  %2429 = load ptr, ptr %2405, align 8, !tbaa !382
  %2430 = icmp eq ptr %2429, null
  br i1 %2430, label %2435, label %2431, !prof !621

2431:                                             ; preds = %2425
  %2432 = getelementptr inbounds %struct.bitmap_element_def, ptr %2429, i64 0, i32 2
  %2433 = load i32, ptr %2432, align 8, !tbaa !377
  %2434 = shl i32 %2433, 7
  br label %2404, !llvm.loop !383

2435:                                             ; preds = %2425, %2393, %2386
  %2436 = phi ptr [ %2387, %2386 ], [ %2387, %2393 ], [ %2429, %2425 ]
  %2437 = phi i32 [ %2388, %2386 ], [ %2397, %2393 ], [ %2426, %2425 ]
  %2438 = phi i32 [ %2389, %2386 ], [ %2389, %2393 ], [ %2428, %2425 ]
  %2439 = phi i64 [ %2390, %2386 ], [ %2396, %2393 ], [ %2427, %2425 ]
  %2440 = phi i1 [ false, %2386 ], [ false, %2393 ], [ true, %2425 ]
  %2441 = load ptr, ptr %2071, align 8, !tbaa !450
  %2442 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2441, i64 0, i32 4
  %2443 = load ptr, ptr %2442, align 8, !tbaa !582
  br i1 %2440, label %2451, label %2444, !prof !622

2444:                                             ; preds = %2435
  %2445 = load ptr, ptr @expressions, align 8
  %2446 = zext i32 %2437 to i64
  %2447 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %2445, i64 0, i32 2, i64 %2446
  %2448 = load ptr, ptr %2447, align 8, !tbaa !311
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %2443, ptr noundef %2448)
  %2449 = lshr i64 %2439, 1
  %2450 = add i32 %2437, 1
  br label %2380, !llvm.loop !623

2451:                                             ; preds = %2435
  %2452 = call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %2443)
  %2453 = icmp eq ptr %2452, null
  br label %2454

2454:                                             ; preds = %2506, %2451
  %2455 = phi i64 [ %2507, %2506 ], [ 0, %2451 ]
  br i1 %2453, label %2463, label %2456, !prof !624

2456:                                             ; preds = %2454
  %2457 = load i32, ptr %2452, align 8, !tbaa !395
  %2458 = zext i32 %2457 to i64
  %2459 = icmp ult i64 %2455, %2458
  br i1 %2459, label %2460, label %2463, !prof !625

2460:                                             ; preds = %2456
  %2461 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %2452, i64 0, i32 2, i64 %2455
  %2462 = load ptr, ptr %2461, align 8, !tbaa !311
  br label %2463

2463:                                             ; preds = %2460, %2456, %2454
  %2464 = phi ptr [ %2462, %2460 ], [ null, %2456 ], [ null, %2454 ]
  %2465 = phi i1 [ false, %2460 ], [ true, %2456 ], [ true, %2454 ]
  br i1 %2465, label %2508, label %2466, !prof !626

2466:                                             ; preds = %2463
  %2467 = call fastcc zeroext i8 @valid_in_sets(ptr noundef %2443, ptr noundef null, ptr noundef %2464, ptr noundef %2061)
  %2468 = icmp eq i8 %2467, 0
  br i1 %2468, label %2469, label %2506, !prof !627

2469:                                             ; preds = %2466
  %2470 = load i32, ptr %2464, align 8, !tbaa !331
  switch i32 %2470, label %2493 [
    i32 3, label %2471
    i32 0, label %2479
    i32 1, label %2485
    i32 2, label %2489
  ], !prof !333

2471:                                             ; preds = %2469
  %2472 = getelementptr inbounds %struct.pre_expr_d, ptr %2464, i64 0, i32 2
  %2473 = load ptr, ptr %2472, align 8, !tbaa !322
  %2474 = call i32 @get_constant_value_id(ptr noundef %2473) #19
  %2475 = icmp eq i32 %2474, 0
  br i1 %2475, label %2476, label %2494, !prof !334

2476:                                             ; preds = %2471
  %2477 = load ptr, ptr %2472, align 8, !tbaa !322
  %2478 = call i32 @get_or_alloc_constant_value_id(ptr noundef %2477) #19
  call void @add_to_value(i32 noundef %2478, ptr noundef nonnull %2464)
  br label %2494

2479:                                             ; preds = %2469
  %2480 = getelementptr inbounds %struct.pre_expr_d, ptr %2464, i64 0, i32 2
  %2481 = load ptr, ptr %2480, align 8, !tbaa !322
  %2482 = call ptr @VN_INFO(ptr noundef %2481) #19
  %2483 = getelementptr inbounds %struct.vn_ssa_aux, ptr %2482, i64 0, i32 2
  %2484 = load i32, ptr %2483, align 8, !tbaa !335
  br label %2494

2485:                                             ; preds = %2469
  %2486 = getelementptr inbounds %struct.pre_expr_d, ptr %2464, i64 0, i32 2
  %2487 = load ptr, ptr %2486, align 8, !tbaa !322
  %2488 = load i32, ptr %2487, align 8, !tbaa !337
  br label %2494

2489:                                             ; preds = %2469
  %2490 = getelementptr inbounds %struct.pre_expr_d, ptr %2464, i64 0, i32 2
  %2491 = load ptr, ptr %2490, align 8, !tbaa !322
  %2492 = load i32, ptr %2491, align 8, !tbaa !339
  br label %2494

2493:                                             ; preds = %2469
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %2494

2494:                                             ; preds = %2471, %2476, %2479, %2485, %2489, %2493
  %2495 = phi i32 [ 0, %2493 ], [ %2492, %2489 ], [ %2488, %2485 ], [ %2484, %2479 ], [ %2478, %2476 ], [ %2474, %2471 ]
  %2496 = call zeroext i8 @value_id_constant_p(i32 noundef %2495) #19
  %2497 = icmp eq i8 %2496, 0
  br i1 %2497, label %2498, label %2506, !prof !628

2498:                                             ; preds = %2494
  %2499 = getelementptr inbounds %struct.bitmap_set, ptr %2443, i64 0, i32 1
  %2500 = load ptr, ptr %2499, align 8, !tbaa !353
  %2501 = call zeroext i8 @bitmap_clear_bit(ptr noundef %2500, i32 noundef %2495) #19
  %2502 = load ptr, ptr %2443, align 8, !tbaa !351
  %2503 = getelementptr inbounds %struct.pre_expr_d, ptr %2464, i64 0, i32 1
  %2504 = load i32, ptr %2503, align 4, !tbaa !361
  %2505 = call zeroext i8 @bitmap_clear_bit(ptr noundef %2502, i32 noundef %2504) #19
  br label %2506

2506:                                             ; preds = %2498, %2494, %2466
  %2507 = add nuw i64 %2455, 1
  br label %2454, !llvm.loop !629

2508:                                             ; preds = %2463
  br i1 %2453, label %2510, label %2509, !prof !630

2509:                                             ; preds = %2508
  call void @free(ptr noundef %2452)
  br label %2510

2510:                                             ; preds = %2509, %2508
  %2511 = load ptr, ptr %2082, align 8, !tbaa !351
  %2512 = icmp eq ptr %2511, null
  br i1 %2512, label %2523, label %2513, !prof !594

2513:                                             ; preds = %2510
  %2514 = load ptr, ptr %2071, align 8, !tbaa !450
  %2515 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2514, i64 0, i32 4
  %2516 = load ptr, ptr %2515, align 8, !tbaa !582
  %2517 = getelementptr inbounds %struct.bitmap_set, ptr %2082, i64 0, i32 1
  %2518 = load ptr, ptr %2517, align 8, !tbaa !353
  %2519 = getelementptr inbounds %struct.bitmap_set, ptr %2516, i64 0, i32 1
  %2520 = load ptr, ptr %2519, align 8, !tbaa !353
  %2521 = call zeroext i8 @bitmap_equal_p(ptr noundef %2518, ptr noundef %2520) #19
  %2522 = icmp eq i8 %2521, 0
  br i1 %2522, label %2523, label %2609, !prof !631

2523:                                             ; preds = %2513, %2510
  %2524 = load ptr, ptr @changed_blocks, align 8, !tbaa !311
  %2525 = load i32, ptr %2063, align 8, !tbaa !432
  %2526 = load ptr, ptr %2524, align 8, !tbaa !435
  %2527 = icmp eq ptr %2526, null
  br i1 %2527, label %2542, label %2528, !prof !632

2528:                                             ; preds = %2523
  %2529 = lshr i32 %2525, 6
  %2530 = zext nneg i32 %2529 to i64
  %2531 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2524, i64 0, i32 3, i64 %2530
  %2532 = load i64, ptr %2531, align 8, !tbaa !379
  %2533 = and i32 %2525, 63
  %2534 = zext nneg i32 %2533 to i64
  %2535 = shl nuw i64 1, %2534
  %2536 = and i64 %2532, %2535
  %2537 = icmp eq i64 %2536, 0
  br i1 %2537, label %2538, label %2542

2538:                                             ; preds = %2528
  %2539 = getelementptr inbounds i8, ptr %2526, i64 %2530
  %2540 = load i8, ptr %2539, align 1, !tbaa !322
  %2541 = add i8 %2540, 1
  store i8 %2541, ptr %2539, align 1, !tbaa !322
  br label %2542

2542:                                             ; preds = %2538, %2528, %2523
  %2543 = and i32 %2525, 63
  %2544 = zext nneg i32 %2543 to i64
  %2545 = shl nuw i64 1, %2544
  %2546 = lshr i32 %2525, 6
  %2547 = zext nneg i32 %2546 to i64
  %2548 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2524, i64 0, i32 3, i64 %2547
  %2549 = load i64, ptr %2548, align 8, !tbaa !379
  %2550 = or i64 %2549, %2545
  store i64 %2550, ptr %2548, align 8, !tbaa !379
  %2551 = icmp eq ptr %2061, null
  br label %2552

2552:                                             ; preds = %2607, %2542
  %2553 = phi i32 [ 0, %2542 ], [ %2608, %2607 ]
  br i1 %2551, label %2554, label %2555, !prof !633

2554:                                             ; preds = %2552
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #19
  br label %2555

2555:                                             ; preds = %2554, %2552
  %2556 = load ptr, ptr %2061, align 8, !tbaa !311
  %2557 = icmp eq ptr %2556, null
  br i1 %2557, label %2560, label %2558, !prof !633

2558:                                             ; preds = %2555
  %2559 = load i32, ptr %2556, align 8, !tbaa !440
  br label %2560

2560:                                             ; preds = %2558, %2555
  %2561 = phi i32 [ %2559, %2558 ], [ 0, %2555 ]
  %2562 = icmp eq i32 %2561, %2553
  br i1 %2562, label %2567, label %2563, !prof !634

2563:                                             ; preds = %2560
  %2564 = zext i32 %2553 to i64
  %2565 = getelementptr inbounds %struct.VEC_edge_base, ptr %2556, i64 0, i32 2, i64 %2564
  %2566 = load ptr, ptr %2565, align 8, !tbaa !311
  br label %2567

2567:                                             ; preds = %2563, %2560
  %2568 = phi ptr [ %2566, %2563 ], [ null, %2560 ]
  br i1 %2562, label %2638, label %2569, !prof !634

2569:                                             ; preds = %2567
  %2570 = load ptr, ptr @changed_blocks, align 8, !tbaa !311
  %2571 = load ptr, ptr %2568, align 8, !tbaa !427
  %2572 = getelementptr inbounds %struct.basic_block_def, ptr %2571, i64 0, i32 9
  %2573 = load i32, ptr %2572, align 8, !tbaa !432
  %2574 = load ptr, ptr %2570, align 8, !tbaa !435
  %2575 = icmp eq ptr %2574, null
  br i1 %2575, label %2590, label %2576, !prof !635

2576:                                             ; preds = %2569
  %2577 = lshr i32 %2573, 6
  %2578 = zext nneg i32 %2577 to i64
  %2579 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2570, i64 0, i32 3, i64 %2578
  %2580 = load i64, ptr %2579, align 8, !tbaa !379
  %2581 = and i32 %2573, 63
  %2582 = zext nneg i32 %2581 to i64
  %2583 = shl nuw i64 1, %2582
  %2584 = and i64 %2580, %2583
  %2585 = icmp eq i64 %2584, 0
  br i1 %2585, label %2586, label %2590

2586:                                             ; preds = %2576
  %2587 = getelementptr inbounds i8, ptr %2574, i64 %2578
  %2588 = load i8, ptr %2587, align 1, !tbaa !322
  %2589 = add i8 %2588, 1
  store i8 %2589, ptr %2587, align 1, !tbaa !322
  br label %2590

2590:                                             ; preds = %2586, %2576, %2569
  %2591 = and i32 %2573, 63
  %2592 = zext nneg i32 %2591 to i64
  %2593 = shl nuw i64 1, %2592
  %2594 = lshr i32 %2573, 6
  %2595 = zext nneg i32 %2594 to i64
  %2596 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2570, i64 0, i32 3, i64 %2595
  %2597 = load i64, ptr %2596, align 8, !tbaa !379
  %2598 = or i64 %2597, %2593
  store i64 %2598, ptr %2596, align 8, !tbaa !379
  %2599 = load ptr, ptr %2061, align 8, !tbaa !311
  %2600 = icmp eq ptr %2599, null
  br i1 %2600, label %2603, label %2601, !prof !636

2601:                                             ; preds = %2590
  %2602 = load i32, ptr %2599, align 8, !tbaa !440
  br label %2603

2603:                                             ; preds = %2601, %2590
  %2604 = phi i32 [ %2602, %2601 ], [ 0, %2590 ]
  %2605 = icmp ult i32 %2553, %2604
  br i1 %2605, label %2607, label %2606, !prof !635

2606:                                             ; preds = %2603
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %2607

2607:                                             ; preds = %2606, %2603
  %2608 = add i32 %2553, 1
  br label %2552, !llvm.loop !637

2609:                                             ; preds = %2513
  %2610 = load ptr, ptr @changed_blocks, align 8, !tbaa !311
  %2611 = load i32, ptr %2063, align 8, !tbaa !432
  %2612 = load ptr, ptr %2610, align 8, !tbaa !435
  %2613 = icmp eq ptr %2612, null
  br i1 %2613, label %2628, label %2614, !prof !638

2614:                                             ; preds = %2609
  %2615 = lshr i32 %2611, 6
  %2616 = zext nneg i32 %2615 to i64
  %2617 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2610, i64 0, i32 3, i64 %2616
  %2618 = load i64, ptr %2617, align 8, !tbaa !379
  %2619 = and i32 %2611, 63
  %2620 = zext nneg i32 %2619 to i64
  %2621 = shl nuw i64 1, %2620
  %2622 = and i64 %2618, %2621
  %2623 = icmp eq i64 %2622, 0
  br i1 %2623, label %2628, label %2624

2624:                                             ; preds = %2614
  %2625 = getelementptr inbounds i8, ptr %2612, i64 %2616
  %2626 = load i8, ptr %2625, align 1, !tbaa !322
  %2627 = add i8 %2626, -1
  store i8 %2627, ptr %2625, align 1, !tbaa !322
  br label %2628

2628:                                             ; preds = %2624, %2614, %2609
  %2629 = and i32 %2611, 63
  %2630 = zext nneg i32 %2629 to i64
  %2631 = shl nuw i64 1, %2630
  %2632 = xor i64 %2631, -1
  %2633 = lshr i32 %2611, 6
  %2634 = zext nneg i32 %2633 to i64
  %2635 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2610, i64 0, i32 3, i64 %2634
  %2636 = load i64, ptr %2635, align 8, !tbaa !379
  %2637 = and i64 %2636, %2632
  store i64 %2637, ptr %2635, align 8, !tbaa !379
  br label %2638

2638:                                             ; preds = %2567, %2353, %2628, %2160, %2053
  %2639 = phi ptr [ null, %2053 ], [ %2084, %2628 ], [ %2084, %2160 ], [ %2084, %2353 ], [ %2084, %2567 ]
  %2640 = phi ptr [ null, %2053 ], [ %2082, %2628 ], [ %2082, %2160 ], [ %2082, %2353 ], [ %2082, %2567 ]
  %2641 = phi ptr [ null, %2053 ], [ %2360, %2628 ], [ null, %2160 ], [ null, %2353 ], [ %2360, %2567 ]
  %2642 = phi i8 [ 0, %2053 ], [ %2356, %2628 ], [ %2161, %2160 ], [ %2354, %2353 ], [ 1, %2567 ]
  %2643 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %2644 = icmp eq ptr %2643, null
  br i1 %2644, label %2672, label %2645, !prof !592

2645:                                             ; preds = %2638
  %2646 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %2647 = and i32 %2646, 8
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2672, label %2649

2649:                                             ; preds = %2645
  %2650 = load ptr, ptr %2071, align 8, !tbaa !450
  %2651 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2650, i64 0, i32 8
  %2652 = load i8, ptr %2651, align 8
  %2653 = and i8 %2652, 3
  %2654 = icmp eq i8 %2653, 2
  br i1 %2654, label %2669, label %2655

2655:                                             ; preds = %2649
  %2656 = icmp eq ptr %2639, null
  br i1 %2656, label %2659, label %2657

2657:                                             ; preds = %2655
  %2658 = load i32, ptr %2063, align 8, !tbaa !432
  call fastcc void @print_bitmap_set(ptr noundef nonnull %2643, ptr noundef nonnull %2639, ptr noundef nonnull @.str.37, i32 noundef %2658)
  br label %2659

2659:                                             ; preds = %2657, %2655
  %2660 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %2661 = load ptr, ptr %2071, align 8, !tbaa !450
  %2662 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2661, i64 0, i32 4
  %2663 = load ptr, ptr %2662, align 8, !tbaa !582
  %2664 = load i32, ptr %2063, align 8, !tbaa !432
  call fastcc void @print_bitmap_set(ptr noundef %2660, ptr noundef %2663, ptr noundef nonnull @.str.38, i32 noundef %2664)
  %2665 = icmp eq ptr %2641, null
  br i1 %2665, label %2672, label %2666

2666:                                             ; preds = %2659
  %2667 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %2668 = load i32, ptr %2063, align 8, !tbaa !432
  call fastcc void @print_bitmap_set(ptr noundef %2667, ptr noundef nonnull %2641, ptr noundef nonnull @.str.39, i32 noundef %2668)
  br label %2672

2669:                                             ; preds = %2649
  %2670 = load i32, ptr %2063, align 8, !tbaa !432
  %2671 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2643, ptr noundef nonnull @.str.40, i32 noundef %2670)
  br label %2672

2672:                                             ; preds = %2669, %2666, %2659, %2645, %2638
  %2673 = icmp eq ptr %2640, null
  br i1 %2673, label %2678, label %2674, !prof !594

2674:                                             ; preds = %2672
  %2675 = load ptr, ptr %2640, align 8, !tbaa !351
  call void @bitmap_obstack_free(ptr noundef %2675) #19
  store ptr null, ptr %2640, align 8, !tbaa !351
  %2676 = getelementptr inbounds %struct.bitmap_set, ptr %2640, i64 0, i32 1
  %2677 = load ptr, ptr %2676, align 8, !tbaa !353
  call void @bitmap_obstack_free(ptr noundef %2677) #19
  store ptr null, ptr %2676, align 8, !tbaa !353
  br label %2678

2678:                                             ; preds = %2674, %2672
  %2679 = icmp eq ptr %2641, null
  br i1 %2679, label %2684, label %2680, !prof !594

2680:                                             ; preds = %2678
  %2681 = load ptr, ptr %2641, align 8, !tbaa !351
  call void @bitmap_obstack_free(ptr noundef %2681) #19
  store ptr null, ptr %2641, align 8, !tbaa !351
  %2682 = getelementptr inbounds %struct.bitmap_set, ptr %2641, i64 0, i32 1
  %2683 = load ptr, ptr %2682, align 8, !tbaa !353
  call void @bitmap_obstack_free(ptr noundef %2683) #19
  store ptr null, ptr %2682, align 8, !tbaa !353
  br label %2684

2684:                                             ; preds = %2680, %2678
  %2685 = icmp eq ptr %2639, null
  br i1 %2685, label %2690, label %2686, !prof !594

2686:                                             ; preds = %2684
  %2687 = load ptr, ptr %2639, align 8, !tbaa !351
  call void @bitmap_obstack_free(ptr noundef %2687) #19
  store ptr null, ptr %2639, align 8, !tbaa !351
  %2688 = getelementptr inbounds %struct.bitmap_set, ptr %2639, i64 0, i32 1
  %2689 = load ptr, ptr %2688, align 8, !tbaa !353
  call void @bitmap_obstack_free(ptr noundef %2689) #19
  store ptr null, ptr %2688, align 8, !tbaa !353
  br label %2690

2690:                                             ; preds = %2686, %2684
  %2691 = or i8 %2642, %2039
  br label %2692

2692:                                             ; preds = %2690, %2037
  %2693 = phi i8 [ %2691, %2690 ], [ %2039, %2037 ]
  %2694 = add nsw i64 %2038, -1
  %2695 = icmp sgt i64 %2038, 0
  br i1 %2695, label %2037, label %2013, !prof !639, !llvm.loop !640

2696:                                             ; preds = %2013
  %2697 = load ptr, ptr @cfun, align 8, !tbaa !311
  call void @statistics_histogram_event(ptr noundef %2697, ptr noundef nonnull @.str.35, i32 noundef %2027) #19
  %2698 = load i8, ptr @do_partial_partial, align 1, !tbaa !322
  %2699 = icmp eq i8 %2698, 0
  br i1 %2699, label %3622, label %2700, !prof !641

2700:                                             ; preds = %2696
  %2701 = load ptr, ptr @changed_blocks, align 8, !tbaa !311
  call void @sbitmap_ones(ptr noundef %2701) #19
  %2702 = call zeroext i8 @mark_dfs_back_edges() #19
  br label %2706

2703:                                             ; preds = %3616, %2716
  %2704 = phi i8 [ 0, %2716 ], [ %3617, %3616 ]
  %2705 = icmp eq i8 %2704, 0
  br i1 %2705, label %3620, label %2706, !prof !586, !llvm.loop !642

2706:                                             ; preds = %2700, %2703
  %2707 = phi i32 [ 0, %2700 ], [ %2717, %2703 ]
  %2708 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %2709 = icmp eq ptr %2708, null
  br i1 %2709, label %2716, label %2710, !prof !588

2710:                                             ; preds = %2706
  %2711 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %2712 = and i32 %2711, 8
  %2713 = icmp eq i32 %2712, 0
  br i1 %2713, label %2716, label %2714

2714:                                             ; preds = %2710
  %2715 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2708, ptr noundef nonnull @.str.34, i32 noundef %2707)
  br label %2716

2716:                                             ; preds = %2714, %2710, %2706
  %2717 = add nuw nsw i32 %2707, 1
  %2718 = load ptr, ptr @cfun, align 8, !tbaa !311
  %2719 = getelementptr inbounds %struct.function, ptr %2718, i64 0, i32 1
  %2720 = load ptr, ptr %2719, align 8, !tbaa !419
  %2721 = getelementptr inbounds %struct.control_flow_graph, ptr %2720, i64 0, i32 3
  %2722 = load i32, ptr %2721, align 8, !tbaa !420
  %2723 = icmp sgt i32 %2722, 2
  br i1 %2723, label %2724, label %2703, !prof !589

2724:                                             ; preds = %2716
  %2725 = add nsw i32 %2722, -3
  %2726 = zext i32 %2725 to i64
  br label %2727

2727:                                             ; preds = %2724, %3616
  %2728 = phi i64 [ %2726, %2724 ], [ %3618, %3616 ]
  %2729 = phi i8 [ 0, %2724 ], [ %3617, %3616 ]
  %2730 = load ptr, ptr @changed_blocks, align 8, !tbaa !311
  %2731 = load ptr, ptr @postorder, align 8, !tbaa !311
  %2732 = getelementptr inbounds i32, ptr %2731, i64 %2728
  %2733 = load i32, ptr %2732, align 4, !tbaa !326
  %2734 = lshr i32 %2733, 6
  %2735 = zext nneg i32 %2734 to i64
  %2736 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2730, i64 0, i32 3, i64 %2735
  %2737 = load i64, ptr %2736, align 8, !tbaa !379
  %2738 = and i32 %2733, 63
  %2739 = zext nneg i32 %2738 to i64
  %2740 = shl nuw i64 1, %2739
  %2741 = and i64 %2740, %2737
  %2742 = icmp eq i64 %2741, 0
  br i1 %2742, label %3616, label %2743, !prof !643

2743:                                             ; preds = %2727
  %2744 = load ptr, ptr @cfun, align 8, !tbaa !311
  %2745 = getelementptr inbounds %struct.function, ptr %2744, i64 0, i32 1
  %2746 = load ptr, ptr %2745, align 8, !tbaa !419
  %2747 = getelementptr inbounds %struct.control_flow_graph, ptr %2746, i64 0, i32 2
  %2748 = load ptr, ptr %2747, align 8, !tbaa !591
  %2749 = zext i32 %2733 to i64
  %2750 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %2748, i64 0, i32 2, i64 %2749
  %2751 = load ptr, ptr %2750, align 8, !tbaa !311
  %2752 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !311
  %2753 = getelementptr inbounds %struct.basic_block_def, ptr %2751, i64 0, i32 9
  %2754 = load i32, ptr %2753, align 8, !tbaa !432
  %2755 = lshr i32 %2754, 6
  %2756 = zext nneg i32 %2755 to i64
  %2757 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2752, i64 0, i32 3, i64 %2756
  %2758 = load i64, ptr %2757, align 8, !tbaa !379
  %2759 = and i32 %2754, 63
  %2760 = zext nneg i32 %2759 to i64
  %2761 = load ptr, ptr @compiler_params, align 8, !tbaa !311
  %2762 = getelementptr inbounds %struct.param_info, ptr %2761, i64 103, i32 1
  %2763 = load i32, ptr %2762, align 8, !tbaa !644
  %2764 = sext i32 %2763 to i64
  %2765 = shl nuw i64 1, %2760
  %2766 = and i64 %2765, %2758
  %2767 = icmp eq i64 %2766, 0
  br i1 %2767, label %2768, label %3581, !prof !646

2768:                                             ; preds = %2743
  %2769 = icmp eq i32 %2763, 0
  br i1 %2769, label %2800, label %2770, !prof !647

2770:                                             ; preds = %2768
  %2771 = getelementptr inbounds %struct.basic_block_def, ptr %2751, i64 0, i32 1
  %2772 = load ptr, ptr %2771, align 8, !tbaa !593
  %2773 = icmp eq ptr %2772, null
  br i1 %2773, label %2778, label %2774, !prof !647

2774:                                             ; preds = %2770
  %2775 = load i32, ptr %2772, align 8, !tbaa !440
  %2776 = icmp eq i32 %2775, 1
  %2777 = zext i1 %2776 to i8
  br label %2778

2778:                                             ; preds = %2774, %2770
  %2779 = phi i8 [ %2777, %2774 ], [ 0, %2770 ]
  %2780 = icmp eq i8 %2779, 0
  br i1 %2780, label %2800, label %2781, !prof !648

2781:                                             ; preds = %2778
  br i1 %2773, label %2785, label %2782, !prof !649

2782:                                             ; preds = %2781
  %2783 = load i32, ptr %2772, align 8, !tbaa !440
  %2784 = icmp eq i32 %2783, 1
  br i1 %2784, label %2786, label %2785, !prof !650

2785:                                             ; preds = %2782, %2781
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 645, ptr noundef nonnull @.str.1) #19
  br label %2786

2786:                                             ; preds = %2785, %2782
  %2787 = load ptr, ptr %2771, align 8, !tbaa !593
  %2788 = getelementptr inbounds %struct.VEC_edge_base, ptr %2787, i64 0, i32 2, i64 0
  %2789 = load ptr, ptr %2788, align 8, !tbaa !311
  %2790 = getelementptr inbounds %struct.edge_def, ptr %2789, i64 0, i32 1
  %2791 = load ptr, ptr %2790, align 8, !tbaa !429
  %2792 = getelementptr inbounds %struct.basic_block_def, ptr %2791, i64 0, i32 2
  %2793 = load ptr, ptr %2792, align 8, !tbaa !450
  %2794 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2793, i64 0, i32 5
  %2795 = load ptr, ptr %2794, align 8, !tbaa !583
  %2796 = getelementptr inbounds %struct.bitmap_set, ptr %2795, i64 0, i32 1
  %2797 = load ptr, ptr %2796, align 8, !tbaa !353
  %2798 = call i64 @bitmap_count_bits(ptr noundef %2797) #19
  %2799 = icmp ugt i64 %2798, %2764
  br i1 %2799, label %3581, label %2800, !prof !649

2800:                                             ; preds = %2786, %2778, %2768
  %2801 = getelementptr inbounds %struct.basic_block_def, ptr %2751, i64 0, i32 2
  %2802 = load ptr, ptr %2801, align 8, !tbaa !450
  %2803 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2802, i64 0, i32 5
  %2804 = load ptr, ptr %2803, align 8, !tbaa !583
  %2805 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  %2806 = call ptr @pool_alloc(ptr noundef %2805) #19
  %2807 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %2807, ptr %2806, align 8, !tbaa !351
  %2808 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %2809 = getelementptr inbounds %struct.bitmap_set, ptr %2806, i64 0, i32 1
  store ptr %2808, ptr %2809, align 8, !tbaa !353
  %2810 = getelementptr inbounds %struct.basic_block_def, ptr %2751, i64 0, i32 1
  %2811 = load ptr, ptr %2810, align 8, !tbaa !593
  %2812 = icmp eq ptr %2811, null
  br i1 %2812, label %2815, label %2813, !prof !647

2813:                                             ; preds = %2800
  %2814 = load i32, ptr %2811, align 8, !tbaa !440
  br label %2815

2815:                                             ; preds = %2813, %2800
  %2816 = phi i32 [ %2814, %2813 ], [ 0, %2800 ]
  %2817 = icmp eq i32 %2816, 0
  br i1 %2817, label %3207, label %2818, !prof !647

2818:                                             ; preds = %2815
  br i1 %2812, label %2823, label %2819, !prof !647

2819:                                             ; preds = %2818
  %2820 = load i32, ptr %2811, align 8, !tbaa !440
  %2821 = icmp eq i32 %2820, 1
  %2822 = zext i1 %2821 to i8
  br label %2823

2823:                                             ; preds = %2819, %2818
  %2824 = phi i8 [ %2822, %2819 ], [ 0, %2818 ]
  %2825 = icmp eq i8 %2824, 0
  br i1 %2825, label %2855, label %2826, !prof !648

2826:                                             ; preds = %2823
  br i1 %2812, label %2830, label %2827, !prof !649

2827:                                             ; preds = %2826
  %2828 = load i32, ptr %2811, align 8, !tbaa !440
  %2829 = icmp eq i32 %2828, 1
  br i1 %2829, label %2831, label %2830, !prof !650

2830:                                             ; preds = %2827, %2826
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 645, ptr noundef nonnull @.str.1) #19
  br label %2831

2831:                                             ; preds = %2830, %2827
  %2832 = load ptr, ptr %2810, align 8, !tbaa !593
  %2833 = getelementptr inbounds %struct.VEC_edge_base, ptr %2832, i64 0, i32 2, i64 0
  %2834 = load ptr, ptr %2833, align 8, !tbaa !311
  %2835 = getelementptr inbounds %struct.edge_def, ptr %2834, i64 0, i32 1
  %2836 = load ptr, ptr %2835, align 8, !tbaa !429
  %2837 = icmp eq ptr %2832, null
  br i1 %2837, label %2841, label %2838, !prof !649

2838:                                             ; preds = %2831
  %2839 = load i32, ptr %2832, align 8, !tbaa !440
  %2840 = icmp eq i32 %2839, 1
  br i1 %2840, label %2842, label %2841, !prof !650

2841:                                             ; preds = %2838, %2831
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 645, ptr noundef nonnull @.str.1) #19
  br label %2842

2842:                                             ; preds = %2841, %2838
  %2843 = load ptr, ptr %2810, align 8, !tbaa !593
  %2844 = getelementptr inbounds %struct.VEC_edge_base, ptr %2843, i64 0, i32 2, i64 0
  %2845 = load ptr, ptr %2844, align 8, !tbaa !311
  %2846 = getelementptr inbounds %struct.edge_def, ptr %2845, i64 0, i32 7
  %2847 = load i32, ptr %2846, align 8, !tbaa !578
  %2848 = and i32 %2847, 32
  %2849 = icmp eq i32 %2848, 0
  br i1 %2849, label %2850, label %3207, !prof !650

2850:                                             ; preds = %2842
  %2851 = getelementptr inbounds %struct.basic_block_def, ptr %2836, i64 0, i32 2
  %2852 = load ptr, ptr %2851, align 8, !tbaa !450
  %2853 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2852, i64 0, i32 5
  %2854 = load ptr, ptr %2853, align 8, !tbaa !583
  call fastcc void @phi_translate_set(ptr noundef nonnull %2806, ptr noundef %2854, ptr noundef %2751, ptr noundef %2836)
  br label %3207

2855:                                             ; preds = %2823
  br i1 %2812, label %2858, label %2856, !prof !651

2856:                                             ; preds = %2855
  %2857 = load i32, ptr %2811, align 8, !tbaa !440
  br label %2858

2858:                                             ; preds = %2856, %2855
  %2859 = phi i32 [ %2857, %2856 ], [ 0, %2855 ]
  %2860 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %2859) #19
  br label %2861

2861:                                             ; preds = %2897, %2858
  %2862 = phi i32 [ 0, %2858 ], [ %2898, %2897 ]
  %2863 = load ptr, ptr %2810, align 8, !tbaa !311
  %2864 = icmp eq ptr %2863, null
  br i1 %2864, label %2867, label %2865, !prof !652

2865:                                             ; preds = %2861
  %2866 = load i32, ptr %2863, align 8, !tbaa !440
  br label %2867

2867:                                             ; preds = %2865, %2861
  %2868 = phi i32 [ %2866, %2865 ], [ 0, %2861 ]
  %2869 = icmp eq i32 %2868, %2862
  br i1 %2869, label %2874, label %2870, !prof !653

2870:                                             ; preds = %2867
  %2871 = zext i32 %2862 to i64
  %2872 = getelementptr inbounds %struct.VEC_edge_base, ptr %2863, i64 0, i32 2, i64 %2871
  %2873 = load ptr, ptr %2872, align 8, !tbaa !311
  br label %2874

2874:                                             ; preds = %2870, %2867
  %2875 = phi ptr [ %2873, %2870 ], [ null, %2867 ]
  br i1 %2869, label %2899, label %2876, !prof !653

2876:                                             ; preds = %2874
  %2877 = getelementptr inbounds %struct.edge_def, ptr %2875, i64 0, i32 7
  %2878 = load i32, ptr %2877, align 8, !tbaa !578
  %2879 = and i32 %2878, 32
  %2880 = icmp eq i32 %2879, 0
  br i1 %2880, label %2881, label %2888, !prof !654

2881:                                             ; preds = %2876
  %2882 = getelementptr inbounds %struct.edge_def, ptr %2875, i64 0, i32 1
  %2883 = load ptr, ptr %2882, align 8, !tbaa !429
  %2884 = load i32, ptr %2860, align 8, !tbaa !603
  %2885 = add i32 %2884, 1
  store i32 %2885, ptr %2860, align 8, !tbaa !603
  %2886 = zext i32 %2884 to i64
  %2887 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %2860, i64 0, i32 2, i64 %2886
  store ptr %2883, ptr %2887, align 8, !tbaa !311
  br label %2888

2888:                                             ; preds = %2881, %2876
  %2889 = load ptr, ptr %2810, align 8, !tbaa !311
  %2890 = icmp eq ptr %2889, null
  br i1 %2890, label %2893, label %2891, !prof !655

2891:                                             ; preds = %2888
  %2892 = load i32, ptr %2889, align 8, !tbaa !440
  br label %2893

2893:                                             ; preds = %2891, %2888
  %2894 = phi i32 [ %2892, %2891 ], [ 0, %2888 ]
  %2895 = icmp ult i32 %2862, %2894
  br i1 %2895, label %2897, label %2896, !prof !654

2896:                                             ; preds = %2893
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %2897

2897:                                             ; preds = %2896, %2893
  %2898 = add i32 %2862, 1
  br label %2861, !llvm.loop !656

2899:                                             ; preds = %2874
  %2900 = icmp eq ptr %2860, null
  br i1 %2900, label %2903, label %2901, !prof !651

2901:                                             ; preds = %2899
  %2902 = load i32, ptr %2860, align 8, !tbaa !603
  br label %2903

2903:                                             ; preds = %2901, %2899
  %2904 = phi i32 [ %2902, %2901 ], [ 0, %2899 ]
  %2905 = icmp eq i32 %2904, 0
  br i1 %2905, label %3205, label %2906, !prof !651

2906:                                             ; preds = %2903, %3203
  %2907 = phi i64 [ %3204, %3203 ], [ 0, %2903 ]
  br i1 %2900, label %2916, label %2908, !prof !652

2908:                                             ; preds = %2906
  %2909 = trunc i64 %2907 to i32
  %2910 = load i32, ptr %2860, align 8, !tbaa !603
  %2911 = icmp ugt i32 %2910, %2909
  br i1 %2911, label %2912, label %2916, !prof !657

2912:                                             ; preds = %2908
  %2913 = and i64 %2907, 4294967295
  %2914 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %2860, i64 0, i32 2, i64 %2913
  %2915 = load ptr, ptr %2914, align 8, !tbaa !311
  br label %2916

2916:                                             ; preds = %2912, %2908, %2906
  %2917 = phi ptr [ %2915, %2912 ], [ null, %2908 ], [ null, %2906 ]
  %2918 = phi i1 [ false, %2912 ], [ true, %2908 ], [ true, %2906 ]
  br i1 %2918, label %3205, label %2919, !prof !653

2919:                                             ; preds = %2916
  %2920 = getelementptr inbounds %struct.basic_block_def, ptr %2917, i64 0, i32 2
  %2921 = load ptr, ptr %2920, align 8, !tbaa !450
  %2922 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %2921, i64 0, i32 4
  %2923 = load ptr, ptr %2922, align 8, !tbaa !582
  %2924 = load ptr, ptr %2923, align 8, !tbaa !351
  %2925 = load ptr, ptr %2924, align 8, !tbaa !375
  %2926 = icmp eq ptr %2925, null
  %2927 = select i1 %2926, ptr @bitmap_zero_bits, ptr %2925, !prof !658
  %2928 = getelementptr inbounds %struct.bitmap_element_def, ptr %2927, i64 0, i32 2
  %2929 = load i32, ptr %2928, align 8, !tbaa !377
  %2930 = shl i32 %2929, 7
  %2931 = getelementptr inbounds %struct.bitmap_element_def, ptr %2927, i64 0, i32 3
  %2932 = load i64, ptr %2931, align 8, !tbaa !379
  %2933 = icmp eq i64 %2932, 0
  %2934 = zext i1 %2933 to i32
  %2935 = or disjoint i32 %2930, %2934
  br label %2936

2936:                                             ; preds = %2997, %2919
  %2937 = phi i32 [ %2935, %2919 ], [ %3003, %2997 ]
  %2938 = phi i64 [ %2932, %2919 ], [ %3002, %2997 ]
  %2939 = phi i32 [ 0, %2919 ], [ %2994, %2997 ]
  %2940 = phi ptr [ %2927, %2919 ], [ %2995, %2997 ]
  %2941 = icmp eq i64 %2938, 0
  br i1 %2941, label %2956, label %2942, !prof !659

2942:                                             ; preds = %2970, %2936
  %2943 = phi i32 [ %2937, %2936 ], [ %2972, %2970 ]
  %2944 = phi i64 [ %2938, %2936 ], [ %2975, %2970 ]
  %2945 = phi i32 [ %2939, %2936 ], [ %2971, %2970 ]
  %2946 = phi ptr [ %2940, %2936 ], [ %2963, %2970 ]
  %2947 = and i64 %2944, 1
  %2948 = icmp eq i64 %2947, 0
  br i1 %2948, label %2949, label %2991, !prof !660

2949:                                             ; preds = %2942, %2949
  %2950 = phi i64 [ %2952, %2949 ], [ %2944, %2942 ]
  %2951 = phi i32 [ %2953, %2949 ], [ %2943, %2942 ]
  %2952 = lshr exact i64 %2950, 1
  %2953 = add i32 %2951, 1
  %2954 = and i64 %2950, 2
  %2955 = icmp eq i64 %2954, 0
  br i1 %2955, label %2949, label %2991, !prof !661, !llvm.loop !380

2956:                                             ; preds = %2936
  %2957 = add i32 %2937, 63
  %2958 = and i32 %2957, -64
  %2959 = add i32 %2939, 1
  br label %2960

2960:                                             ; preds = %2987, %2956
  %2961 = phi i32 [ %2958, %2956 ], [ %2990, %2987 ]
  %2962 = phi i64 [ %2938, %2956 ], [ %2983, %2987 ]
  %2963 = phi ptr [ %2940, %2956 ], [ %2985, %2987 ]
  %2964 = phi i32 [ %2959, %2956 ], [ 0, %2987 ]
  %2965 = icmp eq i32 %2964, 2
  br i1 %2965, label %2981, label %2966, !prof !662

2966:                                             ; preds = %2960
  %2967 = add i32 %2961, 128
  %2968 = shl i32 %2964, 6
  %2969 = sub i32 %2967, %2968
  br label %2970

2970:                                             ; preds = %2966, %2977
  %2971 = phi i32 [ %2979, %2977 ], [ %2964, %2966 ]
  %2972 = phi i32 [ %2978, %2977 ], [ %2961, %2966 ]
  %2973 = zext i32 %2971 to i64
  %2974 = getelementptr inbounds %struct.bitmap_element_def, ptr %2963, i64 0, i32 3, i64 %2973
  %2975 = load i64, ptr %2974, align 8, !tbaa !379
  %2976 = icmp eq i64 %2975, 0
  br i1 %2976, label %2977, label %2942, !prof !663

2977:                                             ; preds = %2970
  %2978 = add i32 %2972, 64
  %2979 = add i32 %2971, 1
  %2980 = icmp eq i32 %2979, 2
  br i1 %2980, label %2981, label %2970, !prof !664, !llvm.loop !381

2981:                                             ; preds = %2977, %2960
  %2982 = phi i32 [ %2961, %2960 ], [ %2969, %2977 ]
  %2983 = phi i64 [ %2962, %2960 ], [ %2975, %2977 ]
  %2984 = phi i32 [ %2964, %2960 ], [ 2, %2977 ]
  %2985 = load ptr, ptr %2963, align 8, !tbaa !382
  %2986 = icmp eq ptr %2985, null
  br i1 %2986, label %2991, label %2987, !prof !665

2987:                                             ; preds = %2981
  %2988 = getelementptr inbounds %struct.bitmap_element_def, ptr %2985, i64 0, i32 2
  %2989 = load i32, ptr %2988, align 8, !tbaa !377
  %2990 = shl i32 %2989, 7
  br label %2960, !llvm.loop !383

2991:                                             ; preds = %2981, %2949, %2942
  %2992 = phi i32 [ %2943, %2942 ], [ %2953, %2949 ], [ %2982, %2981 ]
  %2993 = phi i64 [ %2944, %2942 ], [ %2952, %2949 ], [ %2983, %2981 ]
  %2994 = phi i32 [ %2945, %2942 ], [ %2945, %2949 ], [ %2984, %2981 ]
  %2995 = phi ptr [ %2946, %2942 ], [ %2946, %2949 ], [ %2985, %2981 ]
  %2996 = phi i1 [ false, %2942 ], [ false, %2949 ], [ true, %2981 ]
  br i1 %2996, label %3004, label %2997, !prof !666

2997:                                             ; preds = %2991
  %2998 = load ptr, ptr @expressions, align 8
  %2999 = zext i32 %2992 to i64
  %3000 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %2998, i64 0, i32 2, i64 %2999
  %3001 = load ptr, ptr %3000, align 8, !tbaa !311
  call fastcc void @bitmap_value_insert_into_set(ptr noundef nonnull %2806, ptr noundef %3001)
  %3002 = lshr i64 %2993, 1
  %3003 = add i32 %2992, 1
  br label %2936, !llvm.loop !667

3004:                                             ; preds = %2991
  %3005 = getelementptr inbounds %struct.basic_block_def, ptr %2917, i64 0, i32 13
  %3006 = load i32, ptr %3005, align 8, !tbaa !489
  %3007 = and i32 %3006, 512
  %3008 = icmp eq i32 %3007, 0
  br i1 %3008, label %3010, label %3009, !prof !654

3009:                                             ; preds = %3004
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 510, ptr noundef nonnull @.str.1) #19
  br label %3010

3010:                                             ; preds = %3009, %3004
  %3011 = getelementptr inbounds %struct.basic_block_def, ptr %2917, i64 0, i32 7
  %3012 = load ptr, ptr %3011, align 8, !tbaa !322
  %3013 = icmp eq ptr %3012, null
  br i1 %3013, label %3017, label %3014, !prof !655

3014:                                             ; preds = %3010
  %3015 = getelementptr inbounds %struct.gimple_bb_info, ptr %3012, i64 0, i32 1
  %3016 = load ptr, ptr %3015, align 8, !tbaa !609
  br label %3017

3017:                                             ; preds = %3014, %3010
  %3018 = phi ptr [ %3016, %3014 ], [ null, %3010 ]
  %3019 = icmp eq ptr %3018, null
  br i1 %3019, label %3024, label %3020, !prof !668

3020:                                             ; preds = %3017
  %3021 = load ptr, ptr %3018, align 8, !tbaa !495
  %3022 = icmp eq ptr %3021, null
  %3023 = zext i1 %3022 to i8
  br label %3024

3024:                                             ; preds = %3020, %3017
  %3025 = phi i8 [ 1, %3017 ], [ %3023, %3020 ]
  %3026 = icmp eq i8 %3025, 0
  br i1 %3026, label %3027, label %3119, !prof !655

3027:                                             ; preds = %3024
  %3028 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  %3029 = call ptr @pool_alloc(ptr noundef %3028) #19
  %3030 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %3030, ptr %3029, align 8, !tbaa !351
  %3031 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %3032 = getelementptr inbounds %struct.bitmap_set, ptr %3029, i64 0, i32 1
  store ptr %3031, ptr %3032, align 8, !tbaa !353
  %3033 = load ptr, ptr %2920, align 8, !tbaa !450
  %3034 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %3033, i64 0, i32 5
  %3035 = load ptr, ptr %3034, align 8, !tbaa !583
  call fastcc void @phi_translate_set(ptr noundef nonnull %3029, ptr noundef %3035, ptr noundef %2751, ptr noundef %2917)
  %3036 = load ptr, ptr %3029, align 8, !tbaa !351
  %3037 = load ptr, ptr %3036, align 8, !tbaa !375
  %3038 = icmp eq ptr %3037, null
  %3039 = select i1 %3038, ptr @bitmap_zero_bits, ptr %3037
  %3040 = getelementptr inbounds %struct.bitmap_element_def, ptr %3039, i64 0, i32 2
  %3041 = load i32, ptr %3040, align 8, !tbaa !377
  %3042 = shl i32 %3041, 7
  %3043 = getelementptr inbounds %struct.bitmap_element_def, ptr %3039, i64 0, i32 3
  %3044 = load i64, ptr %3043, align 8, !tbaa !379
  %3045 = icmp eq i64 %3044, 0
  %3046 = zext i1 %3045 to i32
  %3047 = or disjoint i32 %3042, %3046
  br label %3048

3048:                                             ; preds = %3109, %3027
  %3049 = phi i32 [ %3047, %3027 ], [ %3115, %3109 ]
  %3050 = phi i64 [ %3044, %3027 ], [ %3114, %3109 ]
  %3051 = phi i32 [ 0, %3027 ], [ %3106, %3109 ]
  %3052 = phi ptr [ %3039, %3027 ], [ %3107, %3109 ]
  %3053 = icmp eq i64 %3050, 0
  br i1 %3053, label %3068, label %3054

3054:                                             ; preds = %3082, %3048
  %3055 = phi i32 [ %3049, %3048 ], [ %3084, %3082 ]
  %3056 = phi i64 [ %3050, %3048 ], [ %3087, %3082 ]
  %3057 = phi i32 [ %3051, %3048 ], [ %3083, %3082 ]
  %3058 = phi ptr [ %3052, %3048 ], [ %3075, %3082 ]
  %3059 = and i64 %3056, 1
  %3060 = icmp eq i64 %3059, 0
  br i1 %3060, label %3061, label %3103

3061:                                             ; preds = %3054, %3061
  %3062 = phi i64 [ %3064, %3061 ], [ %3056, %3054 ]
  %3063 = phi i32 [ %3065, %3061 ], [ %3055, %3054 ]
  %3064 = lshr exact i64 %3062, 1
  %3065 = add i32 %3063, 1
  %3066 = and i64 %3062, 2
  %3067 = icmp eq i64 %3066, 0
  br i1 %3067, label %3061, label %3103, !llvm.loop !380

3068:                                             ; preds = %3048
  %3069 = add i32 %3049, 63
  %3070 = and i32 %3069, -64
  %3071 = add i32 %3051, 1
  br label %3072

3072:                                             ; preds = %3099, %3068
  %3073 = phi i32 [ %3070, %3068 ], [ %3102, %3099 ]
  %3074 = phi i64 [ %3050, %3068 ], [ %3095, %3099 ]
  %3075 = phi ptr [ %3052, %3068 ], [ %3097, %3099 ]
  %3076 = phi i32 [ %3071, %3068 ], [ 0, %3099 ]
  %3077 = icmp eq i32 %3076, 2
  br i1 %3077, label %3093, label %3078

3078:                                             ; preds = %3072
  %3079 = add i32 %3073, 128
  %3080 = shl i32 %3076, 6
  %3081 = sub i32 %3079, %3080
  br label %3082

3082:                                             ; preds = %3078, %3089
  %3083 = phi i32 [ %3091, %3089 ], [ %3076, %3078 ]
  %3084 = phi i32 [ %3090, %3089 ], [ %3073, %3078 ]
  %3085 = zext i32 %3083 to i64
  %3086 = getelementptr inbounds %struct.bitmap_element_def, ptr %3075, i64 0, i32 3, i64 %3085
  %3087 = load i64, ptr %3086, align 8, !tbaa !379
  %3088 = icmp eq i64 %3087, 0
  br i1 %3088, label %3089, label %3054

3089:                                             ; preds = %3082
  %3090 = add i32 %3084, 64
  %3091 = add i32 %3083, 1
  %3092 = icmp eq i32 %3091, 2
  br i1 %3092, label %3093, label %3082, !llvm.loop !381

3093:                                             ; preds = %3089, %3072
  %3094 = phi i32 [ %3073, %3072 ], [ %3081, %3089 ]
  %3095 = phi i64 [ %3074, %3072 ], [ %3087, %3089 ]
  %3096 = phi i32 [ %3076, %3072 ], [ 2, %3089 ]
  %3097 = load ptr, ptr %3075, align 8, !tbaa !382
  %3098 = icmp eq ptr %3097, null
  br i1 %3098, label %3103, label %3099

3099:                                             ; preds = %3093
  %3100 = getelementptr inbounds %struct.bitmap_element_def, ptr %3097, i64 0, i32 2
  %3101 = load i32, ptr %3100, align 8, !tbaa !377
  %3102 = shl i32 %3101, 7
  br label %3072, !llvm.loop !383

3103:                                             ; preds = %3093, %3061, %3054
  %3104 = phi i32 [ %3055, %3054 ], [ %3065, %3061 ], [ %3094, %3093 ]
  %3105 = phi i64 [ %3056, %3054 ], [ %3064, %3061 ], [ %3095, %3093 ]
  %3106 = phi i32 [ %3057, %3054 ], [ %3057, %3061 ], [ %3096, %3093 ]
  %3107 = phi ptr [ %3058, %3054 ], [ %3058, %3061 ], [ %3097, %3093 ]
  %3108 = phi i1 [ false, %3054 ], [ false, %3061 ], [ true, %3093 ]
  br i1 %3108, label %3116, label %3109

3109:                                             ; preds = %3103
  %3110 = load ptr, ptr @expressions, align 8
  %3111 = zext i32 %3104 to i64
  %3112 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %3110, i64 0, i32 2, i64 %3111
  %3113 = load ptr, ptr %3112, align 8, !tbaa !311
  call fastcc void @bitmap_value_insert_into_set(ptr noundef nonnull %2806, ptr noundef %3113)
  %3114 = lshr i64 %3105, 1
  %3115 = add i32 %3104, 1
  br label %3048, !llvm.loop !669

3116:                                             ; preds = %3103
  %3117 = load ptr, ptr %3029, align 8, !tbaa !351
  call void @bitmap_obstack_free(ptr noundef %3117) #19
  store ptr null, ptr %3029, align 8, !tbaa !351
  %3118 = load ptr, ptr %3032, align 8, !tbaa !353
  call void @bitmap_obstack_free(ptr noundef %3118) #19
  store ptr null, ptr %3032, align 8, !tbaa !353
  br label %3203

3119:                                             ; preds = %3024
  %3120 = load ptr, ptr %2920, align 8, !tbaa !450
  %3121 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %3120, i64 0, i32 5
  %3122 = load ptr, ptr %3121, align 8, !tbaa !583
  %3123 = load ptr, ptr %3122, align 8, !tbaa !351
  %3124 = load ptr, ptr %3123, align 8, !tbaa !375
  %3125 = icmp eq ptr %3124, null
  %3126 = select i1 %3125, ptr @bitmap_zero_bits, ptr %3124, !prof !670
  %3127 = getelementptr inbounds %struct.bitmap_element_def, ptr %3126, i64 0, i32 2
  %3128 = load i32, ptr %3127, align 8, !tbaa !377
  %3129 = shl i32 %3128, 7
  %3130 = getelementptr inbounds %struct.bitmap_element_def, ptr %3126, i64 0, i32 3
  %3131 = load i64, ptr %3130, align 8, !tbaa !379
  %3132 = icmp eq i64 %3131, 0
  %3133 = zext i1 %3132 to i32
  %3134 = or disjoint i32 %3129, %3133
  br label %3135

3135:                                             ; preds = %3196, %3119
  %3136 = phi i32 [ %3134, %3119 ], [ %3202, %3196 ]
  %3137 = phi i64 [ %3131, %3119 ], [ %3201, %3196 ]
  %3138 = phi i32 [ 0, %3119 ], [ %3193, %3196 ]
  %3139 = phi ptr [ %3126, %3119 ], [ %3194, %3196 ]
  %3140 = icmp eq i64 %3137, 0
  br i1 %3140, label %3155, label %3141, !prof !671

3141:                                             ; preds = %3169, %3135
  %3142 = phi i32 [ %3136, %3135 ], [ %3171, %3169 ]
  %3143 = phi i64 [ %3137, %3135 ], [ %3174, %3169 ]
  %3144 = phi i32 [ %3138, %3135 ], [ %3170, %3169 ]
  %3145 = phi ptr [ %3139, %3135 ], [ %3162, %3169 ]
  %3146 = and i64 %3143, 1
  %3147 = icmp eq i64 %3146, 0
  br i1 %3147, label %3148, label %3190, !prof !672

3148:                                             ; preds = %3141, %3148
  %3149 = phi i64 [ %3151, %3148 ], [ %3143, %3141 ]
  %3150 = phi i32 [ %3152, %3148 ], [ %3142, %3141 ]
  %3151 = lshr exact i64 %3149, 1
  %3152 = add i32 %3150, 1
  %3153 = and i64 %3149, 2
  %3154 = icmp eq i64 %3153, 0
  br i1 %3154, label %3148, label %3190, !prof !673, !llvm.loop !380

3155:                                             ; preds = %3135
  %3156 = add i32 %3136, 63
  %3157 = and i32 %3156, -64
  %3158 = add i32 %3138, 1
  br label %3159

3159:                                             ; preds = %3186, %3155
  %3160 = phi i32 [ %3157, %3155 ], [ %3189, %3186 ]
  %3161 = phi i64 [ %3137, %3155 ], [ %3182, %3186 ]
  %3162 = phi ptr [ %3139, %3155 ], [ %3184, %3186 ]
  %3163 = phi i32 [ %3158, %3155 ], [ 0, %3186 ]
  %3164 = icmp eq i32 %3163, 2
  br i1 %3164, label %3180, label %3165, !prof !674

3165:                                             ; preds = %3159
  %3166 = add i32 %3160, 128
  %3167 = shl i32 %3163, 6
  %3168 = sub i32 %3166, %3167
  br label %3169

3169:                                             ; preds = %3165, %3176
  %3170 = phi i32 [ %3178, %3176 ], [ %3163, %3165 ]
  %3171 = phi i32 [ %3177, %3176 ], [ %3160, %3165 ]
  %3172 = zext i32 %3170 to i64
  %3173 = getelementptr inbounds %struct.bitmap_element_def, ptr %3162, i64 0, i32 3, i64 %3172
  %3174 = load i64, ptr %3173, align 8, !tbaa !379
  %3175 = icmp eq i64 %3174, 0
  br i1 %3175, label %3176, label %3141, !prof !675

3176:                                             ; preds = %3169
  %3177 = add i32 %3171, 64
  %3178 = add i32 %3170, 1
  %3179 = icmp eq i32 %3178, 2
  br i1 %3179, label %3180, label %3169, !prof !676, !llvm.loop !381

3180:                                             ; preds = %3176, %3159
  %3181 = phi i32 [ %3160, %3159 ], [ %3168, %3176 ]
  %3182 = phi i64 [ %3161, %3159 ], [ %3174, %3176 ]
  %3183 = phi i32 [ %3163, %3159 ], [ 2, %3176 ]
  %3184 = load ptr, ptr %3162, align 8, !tbaa !382
  %3185 = icmp eq ptr %3184, null
  br i1 %3185, label %3190, label %3186, !prof !677

3186:                                             ; preds = %3180
  %3187 = getelementptr inbounds %struct.bitmap_element_def, ptr %3184, i64 0, i32 2
  %3188 = load i32, ptr %3187, align 8, !tbaa !377
  %3189 = shl i32 %3188, 7
  br label %3159, !llvm.loop !383

3190:                                             ; preds = %3180, %3148, %3141
  %3191 = phi i32 [ %3142, %3141 ], [ %3152, %3148 ], [ %3181, %3180 ]
  %3192 = phi i64 [ %3143, %3141 ], [ %3151, %3148 ], [ %3182, %3180 ]
  %3193 = phi i32 [ %3144, %3141 ], [ %3144, %3148 ], [ %3183, %3180 ]
  %3194 = phi ptr [ %3145, %3141 ], [ %3145, %3148 ], [ %3184, %3180 ]
  %3195 = phi i1 [ false, %3141 ], [ false, %3148 ], [ true, %3180 ]
  br i1 %3195, label %3203, label %3196, !prof !678

3196:                                             ; preds = %3190
  %3197 = load ptr, ptr @expressions, align 8
  %3198 = zext i32 %3191 to i64
  %3199 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %3197, i64 0, i32 2, i64 %3198
  %3200 = load ptr, ptr %3199, align 8, !tbaa !311
  call fastcc void @bitmap_value_insert_into_set(ptr noundef nonnull %2806, ptr noundef %3200)
  %3201 = lshr i64 %3192, 1
  %3202 = add i32 %3191, 1
  br label %3135, !llvm.loop !679

3203:                                             ; preds = %3190, %3116
  %3204 = add i64 %2907, 1
  br label %2906, !llvm.loop !680

3205:                                             ; preds = %2916, %2903
  br i1 %2900, label %3207, label %3206, !prof !651

3206:                                             ; preds = %3205
  call void @free(ptr noundef %2860)
  br label %3207

3207:                                             ; preds = %3206, %3205, %2850, %2842, %2815
  %3208 = load ptr, ptr %2801, align 8, !tbaa !450
  %3209 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %3208, i64 0, i32 2
  %3210 = load ptr, ptr %3209, align 8, !tbaa !456
  %3211 = call fastcc ptr @bitmap_set_subtract(ptr noundef nonnull %2806, ptr noundef %3210)
  %3212 = load ptr, ptr %2801, align 8, !tbaa !450
  %3213 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %3212, i64 0, i32 5
  store ptr %3211, ptr %3213, align 8, !tbaa !583
  %3214 = getelementptr inbounds %struct.bitmap_set, ptr %3211, i64 0, i32 1
  %3215 = load ptr, ptr %3214, align 8, !tbaa !353
  %3216 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %3212, i64 0, i32 1
  %3217 = load ptr, ptr %3216, align 8, !tbaa !455
  %3218 = getelementptr inbounds %struct.bitmap_set, ptr %3217, i64 0, i32 1
  %3219 = load ptr, ptr %3218, align 8, !tbaa !353
  %3220 = call zeroext i8 @bitmap_ior_into(ptr noundef %3215, ptr noundef %3219) #19
  %3221 = load ptr, ptr %2801, align 8, !tbaa !450
  %3222 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %3221, i64 0, i32 5
  %3223 = load ptr, ptr %3222, align 8, !tbaa !583
  %3224 = load ptr, ptr %3223, align 8, !tbaa !351
  %3225 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %3221, i64 0, i32 1
  %3226 = load ptr, ptr %3225, align 8, !tbaa !455
  %3227 = load ptr, ptr %3226, align 8, !tbaa !351
  %3228 = call zeroext i8 @bitmap_ior_into(ptr noundef %3224, ptr noundef %3227) #19
  %3229 = load ptr, ptr %2801, align 8, !tbaa !450
  %3230 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %3229, i64 0, i32 5
  %3231 = load ptr, ptr %3230, align 8, !tbaa !583
  %3232 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %3229, i64 0, i32 4
  %3233 = load ptr, ptr %3232, align 8, !tbaa !582
  %3234 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %3235 = load ptr, ptr %3231, align 8, !tbaa !351
  call void @bitmap_copy(ptr noundef %3234, ptr noundef %3235) #19
  %3236 = load ptr, ptr %3234, align 8, !tbaa !375
  %3237 = icmp eq ptr %3236, null
  %3238 = select i1 %3237, ptr @bitmap_zero_bits, ptr %3236, !prof !681
  %3239 = getelementptr inbounds %struct.bitmap_element_def, ptr %3238, i64 0, i32 2
  %3240 = load i32, ptr %3239, align 8, !tbaa !377
  %3241 = shl i32 %3240, 7
  %3242 = getelementptr inbounds %struct.bitmap_element_def, ptr %3238, i64 0, i32 3
  %3243 = load i64, ptr %3242, align 8, !tbaa !379
  %3244 = icmp eq i64 %3243, 0
  %3245 = zext i1 %3244 to i32
  %3246 = or disjoint i32 %3241, %3245
  br label %3247

3247:                                             ; preds = %3393, %3207
  %3248 = phi i64 [ %3243, %3207 ], [ %3394, %3393 ]
  %3249 = phi i32 [ 0, %3207 ], [ %3304, %3393 ]
  %3250 = phi i32 [ %3246, %3207 ], [ %3395, %3393 ]
  %3251 = phi ptr [ %3238, %3207 ], [ %3306, %3393 ]
  %3252 = icmp eq i64 %3248, 0
  br i1 %3252, label %3267, label %3253, !prof !682

3253:                                             ; preds = %3281, %3247
  %3254 = phi i64 [ %3248, %3247 ], [ %3286, %3281 ]
  %3255 = phi i32 [ %3249, %3247 ], [ %3282, %3281 ]
  %3256 = phi i32 [ %3250, %3247 ], [ %3283, %3281 ]
  %3257 = phi ptr [ %3251, %3247 ], [ %3274, %3281 ]
  %3258 = and i64 %3254, 1
  %3259 = icmp eq i64 %3258, 0
  br i1 %3259, label %3260, label %3302, !prof !683

3260:                                             ; preds = %3253, %3260
  %3261 = phi i32 [ %3264, %3260 ], [ %3256, %3253 ]
  %3262 = phi i64 [ %3263, %3260 ], [ %3254, %3253 ]
  %3263 = lshr exact i64 %3262, 1
  %3264 = add i32 %3261, 1
  %3265 = and i64 %3262, 2
  %3266 = icmp eq i64 %3265, 0
  br i1 %3266, label %3260, label %3302, !prof !684, !llvm.loop !380

3267:                                             ; preds = %3247
  %3268 = add i32 %3250, 63
  %3269 = and i32 %3268, -64
  %3270 = add i32 %3249, 1
  br label %3271

3271:                                             ; preds = %3298, %3267
  %3272 = phi i64 [ %3248, %3267 ], [ %3293, %3298 ]
  %3273 = phi i32 [ %3269, %3267 ], [ %3301, %3298 ]
  %3274 = phi ptr [ %3251, %3267 ], [ %3296, %3298 ]
  %3275 = phi i32 [ %3270, %3267 ], [ 0, %3298 ]
  %3276 = icmp eq i32 %3275, 2
  br i1 %3276, label %3292, label %3277, !prof !685

3277:                                             ; preds = %3271
  %3278 = add i32 %3273, 128
  %3279 = shl i32 %3275, 6
  %3280 = sub i32 %3278, %3279
  br label %3281

3281:                                             ; preds = %3277, %3288
  %3282 = phi i32 [ %3290, %3288 ], [ %3275, %3277 ]
  %3283 = phi i32 [ %3289, %3288 ], [ %3273, %3277 ]
  %3284 = zext i32 %3282 to i64
  %3285 = getelementptr inbounds %struct.bitmap_element_def, ptr %3274, i64 0, i32 3, i64 %3284
  %3286 = load i64, ptr %3285, align 8, !tbaa !379
  %3287 = icmp eq i64 %3286, 0
  br i1 %3287, label %3288, label %3253, !prof !686

3288:                                             ; preds = %3281
  %3289 = add i32 %3283, 64
  %3290 = add i32 %3282, 1
  %3291 = icmp eq i32 %3290, 2
  br i1 %3291, label %3292, label %3281, !prof !687, !llvm.loop !381

3292:                                             ; preds = %3288, %3271
  %3293 = phi i64 [ %3272, %3271 ], [ %3286, %3288 ]
  %3294 = phi i32 [ %3273, %3271 ], [ %3280, %3288 ]
  %3295 = phi i32 [ %3275, %3271 ], [ 2, %3288 ]
  %3296 = load ptr, ptr %3274, align 8, !tbaa !382
  %3297 = icmp eq ptr %3296, null
  br i1 %3297, label %3302, label %3298, !prof !688

3298:                                             ; preds = %3292
  %3299 = getelementptr inbounds %struct.bitmap_element_def, ptr %3296, i64 0, i32 2
  %3300 = load i32, ptr %3299, align 8, !tbaa !377
  %3301 = shl i32 %3300, 7
  br label %3271, !llvm.loop !383

3302:                                             ; preds = %3292, %3260, %3253
  %3303 = phi i64 [ %3254, %3253 ], [ %3263, %3260 ], [ %3293, %3292 ]
  %3304 = phi i32 [ %3255, %3253 ], [ %3255, %3260 ], [ %3295, %3292 ]
  %3305 = phi i32 [ %3256, %3253 ], [ %3264, %3260 ], [ %3294, %3292 ]
  %3306 = phi ptr [ %3257, %3253 ], [ %3257, %3260 ], [ %3296, %3292 ]
  %3307 = phi i1 [ false, %3253 ], [ false, %3260 ], [ true, %3292 ]
  br i1 %3307, label %3396, label %3308, !prof !689

3308:                                             ; preds = %3302
  %3309 = load ptr, ptr @expressions, align 8
  %3310 = zext i32 %3305 to i64
  %3311 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %3309, i64 0, i32 2, i64 %3310
  %3312 = load ptr, ptr %3311, align 8, !tbaa !311
  %3313 = load i32, ptr %3312, align 8, !tbaa !331
  switch i32 %3313, label %3336 [
    i32 3, label %3314
    i32 0, label %3322
    i32 1, label %3328
    i32 2, label %3332
  ], !prof !333

3314:                                             ; preds = %3308
  %3315 = getelementptr inbounds %struct.pre_expr_d, ptr %3312, i64 0, i32 2
  %3316 = load ptr, ptr %3315, align 8, !tbaa !322
  %3317 = call i32 @get_constant_value_id(ptr noundef %3316) #19
  %3318 = icmp eq i32 %3317, 0
  br i1 %3318, label %3319, label %3337, !prof !334

3319:                                             ; preds = %3314
  %3320 = load ptr, ptr %3315, align 8, !tbaa !322
  %3321 = call i32 @get_or_alloc_constant_value_id(ptr noundef %3320) #19
  call void @add_to_value(i32 noundef %3321, ptr noundef nonnull %3312)
  br label %3337

3322:                                             ; preds = %3308
  %3323 = getelementptr inbounds %struct.pre_expr_d, ptr %3312, i64 0, i32 2
  %3324 = load ptr, ptr %3323, align 8, !tbaa !322
  %3325 = call ptr @VN_INFO(ptr noundef %3324) #19
  %3326 = getelementptr inbounds %struct.vn_ssa_aux, ptr %3325, i64 0, i32 2
  %3327 = load i32, ptr %3326, align 8, !tbaa !335
  br label %3337

3328:                                             ; preds = %3308
  %3329 = getelementptr inbounds %struct.pre_expr_d, ptr %3312, i64 0, i32 2
  %3330 = load ptr, ptr %3329, align 8, !tbaa !322
  %3331 = load i32, ptr %3330, align 8, !tbaa !337
  br label %3337

3332:                                             ; preds = %3308
  %3333 = getelementptr inbounds %struct.pre_expr_d, ptr %3312, i64 0, i32 2
  %3334 = load ptr, ptr %3333, align 8, !tbaa !322
  %3335 = load i32, ptr %3334, align 8, !tbaa !339
  br label %3337

3336:                                             ; preds = %3308
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %3337

3337:                                             ; preds = %3314, %3319, %3322, %3328, %3332, %3336
  %3338 = phi i32 [ 0, %3336 ], [ %3335, %3332 ], [ %3331, %3328 ], [ %3327, %3322 ], [ %3321, %3319 ], [ %3317, %3314 ]
  %3339 = icmp eq ptr %3233, null
  %3340 = call zeroext i8 @value_id_constant_p(i32 noundef %3338) #19
  %3341 = icmp ne i8 %3340, 0
  %3342 = select i1 %3341, i1 true, i1 %3339
  %3343 = zext i1 %3341 to i8
  br i1 %3342, label %3353, label %3344, !prof !690

3344:                                             ; preds = %3337
  %3345 = load ptr, ptr %3233, align 8, !tbaa !351
  %3346 = load ptr, ptr %3345, align 8, !tbaa !375
  %3347 = icmp eq ptr %3346, null
  br i1 %3347, label %3353, label %3348, !prof !691

3348:                                             ; preds = %3344
  %3349 = getelementptr inbounds %struct.bitmap_set, ptr %3233, i64 0, i32 1
  %3350 = load ptr, ptr %3349, align 8, !tbaa !353
  %3351 = call i32 @bitmap_bit_p(ptr noundef %3350, i32 noundef %3338) #19
  %3352 = trunc i32 %3351 to i8
  br label %3353

3353:                                             ; preds = %3337, %3344, %3348
  %3354 = phi i8 [ %3352, %3348 ], [ %3343, %3337 ], [ 0, %3344 ]
  %3355 = icmp eq i8 %3354, 0
  br i1 %3355, label %3393, label %3356, !prof !692

3356:                                             ; preds = %3353
  %3357 = load i32, ptr %3312, align 8, !tbaa !331
  switch i32 %3357, label %3380 [
    i32 3, label %3358
    i32 0, label %3366
    i32 1, label %3372
    i32 2, label %3376
  ], !prof !333

3358:                                             ; preds = %3356
  %3359 = getelementptr inbounds %struct.pre_expr_d, ptr %3312, i64 0, i32 2
  %3360 = load ptr, ptr %3359, align 8, !tbaa !322
  %3361 = call i32 @get_constant_value_id(ptr noundef %3360) #19
  %3362 = icmp eq i32 %3361, 0
  br i1 %3362, label %3363, label %3381, !prof !334

3363:                                             ; preds = %3358
  %3364 = load ptr, ptr %3359, align 8, !tbaa !322
  %3365 = call i32 @get_or_alloc_constant_value_id(ptr noundef %3364) #19
  call void @add_to_value(i32 noundef %3365, ptr noundef nonnull %3312)
  br label %3381

3366:                                             ; preds = %3356
  %3367 = getelementptr inbounds %struct.pre_expr_d, ptr %3312, i64 0, i32 2
  %3368 = load ptr, ptr %3367, align 8, !tbaa !322
  %3369 = call ptr @VN_INFO(ptr noundef %3368) #19
  %3370 = getelementptr inbounds %struct.vn_ssa_aux, ptr %3369, i64 0, i32 2
  %3371 = load i32, ptr %3370, align 8, !tbaa !335
  br label %3381

3372:                                             ; preds = %3356
  %3373 = getelementptr inbounds %struct.pre_expr_d, ptr %3312, i64 0, i32 2
  %3374 = load ptr, ptr %3373, align 8, !tbaa !322
  %3375 = load i32, ptr %3374, align 8, !tbaa !337
  br label %3381

3376:                                             ; preds = %3356
  %3377 = getelementptr inbounds %struct.pre_expr_d, ptr %3312, i64 0, i32 2
  %3378 = load ptr, ptr %3377, align 8, !tbaa !322
  %3379 = load i32, ptr %3378, align 8, !tbaa !339
  br label %3381

3380:                                             ; preds = %3356
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %3381

3381:                                             ; preds = %3358, %3363, %3366, %3372, %3376, %3380
  %3382 = phi i32 [ 0, %3380 ], [ %3379, %3376 ], [ %3375, %3372 ], [ %3371, %3366 ], [ %3365, %3363 ], [ %3361, %3358 ]
  %3383 = call zeroext i8 @value_id_constant_p(i32 noundef %3382) #19
  %3384 = icmp eq i8 %3383, 0
  br i1 %3384, label %3385, label %3393, !prof !628

3385:                                             ; preds = %3381
  %3386 = getelementptr inbounds %struct.bitmap_set, ptr %3231, i64 0, i32 1
  %3387 = load ptr, ptr %3386, align 8, !tbaa !353
  %3388 = call zeroext i8 @bitmap_clear_bit(ptr noundef %3387, i32 noundef %3382) #19
  %3389 = load ptr, ptr %3231, align 8, !tbaa !351
  %3390 = getelementptr inbounds %struct.pre_expr_d, ptr %3312, i64 0, i32 1
  %3391 = load i32, ptr %3390, align 4, !tbaa !361
  %3392 = call zeroext i8 @bitmap_clear_bit(ptr noundef %3389, i32 noundef %3391) #19
  br label %3393

3393:                                             ; preds = %3385, %3381, %3353
  %3394 = lshr i64 %3303, 1
  %3395 = add i32 %3305, 1
  br label %3247, !llvm.loop !693

3396:                                             ; preds = %3302
  call void @bitmap_obstack_free(ptr noundef nonnull %3234) #19
  %3397 = load ptr, ptr %2801, align 8, !tbaa !450
  %3398 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %3397, i64 0, i32 5
  %3399 = load ptr, ptr %3398, align 8, !tbaa !583
  %3400 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %3397, i64 0, i32 4
  %3401 = load ptr, ptr %3400, align 8, !tbaa !582
  %3402 = call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %3399)
  %3403 = icmp eq ptr %3402, null
  br label %3404

3404:                                             ; preds = %3456, %3396
  %3405 = phi i64 [ %3457, %3456 ], [ 0, %3396 ]
  br i1 %3403, label %3413, label %3406, !prof !694

3406:                                             ; preds = %3404
  %3407 = load i32, ptr %3402, align 8, !tbaa !395
  %3408 = zext i32 %3407 to i64
  %3409 = icmp ult i64 %3405, %3408
  br i1 %3409, label %3410, label %3413, !prof !695

3410:                                             ; preds = %3406
  %3411 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %3402, i64 0, i32 2, i64 %3405
  %3412 = load ptr, ptr %3411, align 8, !tbaa !311
  br label %3413

3413:                                             ; preds = %3410, %3406, %3404
  %3414 = phi ptr [ %3412, %3410 ], [ null, %3406 ], [ null, %3404 ]
  %3415 = phi i1 [ false, %3410 ], [ true, %3406 ], [ true, %3404 ]
  br i1 %3415, label %3458, label %3416, !prof !696

3416:                                             ; preds = %3413
  %3417 = call fastcc zeroext i8 @valid_in_sets(ptr noundef %3399, ptr noundef %3401, ptr noundef %3414, ptr noundef %2751)
  %3418 = icmp eq i8 %3417, 0
  br i1 %3418, label %3419, label %3456, !prof !697

3419:                                             ; preds = %3416
  %3420 = load i32, ptr %3414, align 8, !tbaa !331
  switch i32 %3420, label %3443 [
    i32 3, label %3421
    i32 0, label %3429
    i32 1, label %3435
    i32 2, label %3439
  ], !prof !333

3421:                                             ; preds = %3419
  %3422 = getelementptr inbounds %struct.pre_expr_d, ptr %3414, i64 0, i32 2
  %3423 = load ptr, ptr %3422, align 8, !tbaa !322
  %3424 = call i32 @get_constant_value_id(ptr noundef %3423) #19
  %3425 = icmp eq i32 %3424, 0
  br i1 %3425, label %3426, label %3444, !prof !334

3426:                                             ; preds = %3421
  %3427 = load ptr, ptr %3422, align 8, !tbaa !322
  %3428 = call i32 @get_or_alloc_constant_value_id(ptr noundef %3427) #19
  call void @add_to_value(i32 noundef %3428, ptr noundef nonnull %3414)
  br label %3444

3429:                                             ; preds = %3419
  %3430 = getelementptr inbounds %struct.pre_expr_d, ptr %3414, i64 0, i32 2
  %3431 = load ptr, ptr %3430, align 8, !tbaa !322
  %3432 = call ptr @VN_INFO(ptr noundef %3431) #19
  %3433 = getelementptr inbounds %struct.vn_ssa_aux, ptr %3432, i64 0, i32 2
  %3434 = load i32, ptr %3433, align 8, !tbaa !335
  br label %3444

3435:                                             ; preds = %3419
  %3436 = getelementptr inbounds %struct.pre_expr_d, ptr %3414, i64 0, i32 2
  %3437 = load ptr, ptr %3436, align 8, !tbaa !322
  %3438 = load i32, ptr %3437, align 8, !tbaa !337
  br label %3444

3439:                                             ; preds = %3419
  %3440 = getelementptr inbounds %struct.pre_expr_d, ptr %3414, i64 0, i32 2
  %3441 = load ptr, ptr %3440, align 8, !tbaa !322
  %3442 = load i32, ptr %3441, align 8, !tbaa !339
  br label %3444

3443:                                             ; preds = %3419
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %3444

3444:                                             ; preds = %3421, %3426, %3429, %3435, %3439, %3443
  %3445 = phi i32 [ 0, %3443 ], [ %3442, %3439 ], [ %3438, %3435 ], [ %3434, %3429 ], [ %3428, %3426 ], [ %3424, %3421 ]
  %3446 = call zeroext i8 @value_id_constant_p(i32 noundef %3445) #19
  %3447 = icmp eq i8 %3446, 0
  br i1 %3447, label %3448, label %3456, !prof !628

3448:                                             ; preds = %3444
  %3449 = getelementptr inbounds %struct.bitmap_set, ptr %3399, i64 0, i32 1
  %3450 = load ptr, ptr %3449, align 8, !tbaa !353
  %3451 = call zeroext i8 @bitmap_clear_bit(ptr noundef %3450, i32 noundef %3445) #19
  %3452 = load ptr, ptr %3399, align 8, !tbaa !351
  %3453 = getelementptr inbounds %struct.pre_expr_d, ptr %3414, i64 0, i32 1
  %3454 = load i32, ptr %3453, align 4, !tbaa !361
  %3455 = call zeroext i8 @bitmap_clear_bit(ptr noundef %3452, i32 noundef %3454) #19
  br label %3456

3456:                                             ; preds = %3448, %3444, %3416
  %3457 = add nuw i64 %3405, 1
  br label %3404, !llvm.loop !698

3458:                                             ; preds = %3413
  br i1 %3403, label %3460, label %3459, !prof !699

3459:                                             ; preds = %3458
  call void @free(ptr noundef %3402)
  br label %3460

3460:                                             ; preds = %3459, %3458
  %3461 = load ptr, ptr %2801, align 8, !tbaa !450
  %3462 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %3461, i64 0, i32 5
  %3463 = load ptr, ptr %3462, align 8, !tbaa !583
  %3464 = getelementptr inbounds %struct.bitmap_set, ptr %2804, i64 0, i32 1
  %3465 = load ptr, ptr %3464, align 8, !tbaa !353
  %3466 = getelementptr inbounds %struct.bitmap_set, ptr %3463, i64 0, i32 1
  %3467 = load ptr, ptr %3466, align 8, !tbaa !353
  %3468 = call zeroext i8 @bitmap_equal_p(ptr noundef %3465, ptr noundef %3467) #19
  %3469 = icmp eq i8 %3468, 0
  %3470 = load ptr, ptr @changed_blocks, align 8, !tbaa !311
  %3471 = load i32, ptr %2753, align 8, !tbaa !432
  %3472 = load ptr, ptr %3470, align 8, !tbaa !435
  %3473 = icmp eq ptr %3472, null
  br i1 %3469, label %3474, label %3556, !prof !700

3474:                                             ; preds = %3460
  br i1 %3473, label %3489, label %3475, !prof !701

3475:                                             ; preds = %3474
  %3476 = lshr i32 %3471, 6
  %3477 = zext nneg i32 %3476 to i64
  %3478 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3470, i64 0, i32 3, i64 %3477
  %3479 = load i64, ptr %3478, align 8, !tbaa !379
  %3480 = and i32 %3471, 63
  %3481 = zext nneg i32 %3480 to i64
  %3482 = shl nuw i64 1, %3481
  %3483 = and i64 %3479, %3482
  %3484 = icmp eq i64 %3483, 0
  br i1 %3484, label %3485, label %3489

3485:                                             ; preds = %3475
  %3486 = getelementptr inbounds i8, ptr %3472, i64 %3477
  %3487 = load i8, ptr %3486, align 1, !tbaa !322
  %3488 = add i8 %3487, 1
  store i8 %3488, ptr %3486, align 1, !tbaa !322
  br label %3489

3489:                                             ; preds = %3485, %3475, %3474
  %3490 = and i32 %3471, 63
  %3491 = zext nneg i32 %3490 to i64
  %3492 = shl nuw i64 1, %3491
  %3493 = lshr i32 %3471, 6
  %3494 = zext nneg i32 %3493 to i64
  %3495 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3470, i64 0, i32 3, i64 %3494
  %3496 = load i64, ptr %3495, align 8, !tbaa !379
  %3497 = or i64 %3496, %3492
  store i64 %3497, ptr %3495, align 8, !tbaa !379
  %3498 = icmp eq ptr %2751, null
  br label %3499

3499:                                             ; preds = %3554, %3489
  %3500 = phi i32 [ 0, %3489 ], [ %3555, %3554 ]
  br i1 %3498, label %3501, label %3502, !prof !702

3501:                                             ; preds = %3499
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #19
  br label %3502

3502:                                             ; preds = %3501, %3499
  %3503 = load ptr, ptr %2751, align 8, !tbaa !311
  %3504 = icmp eq ptr %3503, null
  br i1 %3504, label %3507, label %3505, !prof !702

3505:                                             ; preds = %3502
  %3506 = load i32, ptr %3503, align 8, !tbaa !440
  br label %3507

3507:                                             ; preds = %3505, %3502
  %3508 = phi i32 [ %3506, %3505 ], [ 0, %3502 ]
  %3509 = icmp eq i32 %3508, %3500
  br i1 %3509, label %3514, label %3510, !prof !703

3510:                                             ; preds = %3507
  %3511 = zext i32 %3500 to i64
  %3512 = getelementptr inbounds %struct.VEC_edge_base, ptr %3503, i64 0, i32 2, i64 %3511
  %3513 = load ptr, ptr %3512, align 8, !tbaa !311
  br label %3514

3514:                                             ; preds = %3510, %3507
  %3515 = phi ptr [ %3513, %3510 ], [ null, %3507 ]
  br i1 %3509, label %3581, label %3516, !prof !703

3516:                                             ; preds = %3514
  %3517 = load ptr, ptr @changed_blocks, align 8, !tbaa !311
  %3518 = load ptr, ptr %3515, align 8, !tbaa !427
  %3519 = getelementptr inbounds %struct.basic_block_def, ptr %3518, i64 0, i32 9
  %3520 = load i32, ptr %3519, align 8, !tbaa !432
  %3521 = load ptr, ptr %3517, align 8, !tbaa !435
  %3522 = icmp eq ptr %3521, null
  br i1 %3522, label %3537, label %3523, !prof !704

3523:                                             ; preds = %3516
  %3524 = lshr i32 %3520, 6
  %3525 = zext nneg i32 %3524 to i64
  %3526 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3517, i64 0, i32 3, i64 %3525
  %3527 = load i64, ptr %3526, align 8, !tbaa !379
  %3528 = and i32 %3520, 63
  %3529 = zext nneg i32 %3528 to i64
  %3530 = shl nuw i64 1, %3529
  %3531 = and i64 %3527, %3530
  %3532 = icmp eq i64 %3531, 0
  br i1 %3532, label %3533, label %3537

3533:                                             ; preds = %3523
  %3534 = getelementptr inbounds i8, ptr %3521, i64 %3525
  %3535 = load i8, ptr %3534, align 1, !tbaa !322
  %3536 = add i8 %3535, 1
  store i8 %3536, ptr %3534, align 1, !tbaa !322
  br label %3537

3537:                                             ; preds = %3533, %3523, %3516
  %3538 = and i32 %3520, 63
  %3539 = zext nneg i32 %3538 to i64
  %3540 = shl nuw i64 1, %3539
  %3541 = lshr i32 %3520, 6
  %3542 = zext nneg i32 %3541 to i64
  %3543 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3517, i64 0, i32 3, i64 %3542
  %3544 = load i64, ptr %3543, align 8, !tbaa !379
  %3545 = or i64 %3544, %3540
  store i64 %3545, ptr %3543, align 8, !tbaa !379
  %3546 = load ptr, ptr %2751, align 8, !tbaa !311
  %3547 = icmp eq ptr %3546, null
  br i1 %3547, label %3550, label %3548, !prof !705

3548:                                             ; preds = %3537
  %3549 = load i32, ptr %3546, align 8, !tbaa !440
  br label %3550

3550:                                             ; preds = %3548, %3537
  %3551 = phi i32 [ %3549, %3548 ], [ 0, %3537 ]
  %3552 = icmp ult i32 %3500, %3551
  br i1 %3552, label %3554, label %3553, !prof !704

3553:                                             ; preds = %3550
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %3554

3554:                                             ; preds = %3553, %3550
  %3555 = add i32 %3500, 1
  br label %3499, !llvm.loop !706

3556:                                             ; preds = %3460
  br i1 %3473, label %3571, label %3557, !prof !638

3557:                                             ; preds = %3556
  %3558 = lshr i32 %3471, 6
  %3559 = zext nneg i32 %3558 to i64
  %3560 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3470, i64 0, i32 3, i64 %3559
  %3561 = load i64, ptr %3560, align 8, !tbaa !379
  %3562 = and i32 %3471, 63
  %3563 = zext nneg i32 %3562 to i64
  %3564 = shl nuw i64 1, %3563
  %3565 = and i64 %3561, %3564
  %3566 = icmp eq i64 %3565, 0
  br i1 %3566, label %3571, label %3567

3567:                                             ; preds = %3557
  %3568 = getelementptr inbounds i8, ptr %3472, i64 %3559
  %3569 = load i8, ptr %3568, align 1, !tbaa !322
  %3570 = add i8 %3569, -1
  store i8 %3570, ptr %3568, align 1, !tbaa !322
  br label %3571

3571:                                             ; preds = %3567, %3557, %3556
  %3572 = and i32 %3471, 63
  %3573 = zext nneg i32 %3572 to i64
  %3574 = shl nuw i64 1, %3573
  %3575 = xor i64 %3574, -1
  %3576 = lshr i32 %3471, 6
  %3577 = zext nneg i32 %3576 to i64
  %3578 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3470, i64 0, i32 3, i64 %3577
  %3579 = load i64, ptr %3578, align 8, !tbaa !379
  %3580 = and i64 %3579, %3575
  store i64 %3580, ptr %3578, align 8, !tbaa !379
  br label %3581

3581:                                             ; preds = %3514, %3571, %2786, %2743
  %3582 = phi ptr [ null, %2743 ], [ null, %2786 ], [ %2806, %3571 ], [ %2806, %3514 ]
  %3583 = phi ptr [ null, %2743 ], [ null, %2786 ], [ %2804, %3571 ], [ %2804, %3514 ]
  %3584 = phi i8 [ 0, %2743 ], [ 0, %2786 ], [ 0, %3571 ], [ 1, %3514 ]
  %3585 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %3586 = icmp eq ptr %3585, null
  br i1 %3586, label %3602, label %3587, !prof !646

3587:                                             ; preds = %3581
  %3588 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %3589 = and i32 %3588, 8
  %3590 = icmp eq i32 %3589, 0
  br i1 %3590, label %3602, label %3591

3591:                                             ; preds = %3587
  %3592 = icmp eq ptr %3582, null
  br i1 %3592, label %3595, label %3593

3593:                                             ; preds = %3591
  %3594 = load i32, ptr %2753, align 8, !tbaa !432
  call fastcc void @print_bitmap_set(ptr noundef nonnull %3585, ptr noundef nonnull %3582, ptr noundef nonnull @.str.45, i32 noundef %3594)
  br label %3595

3595:                                             ; preds = %3593, %3591
  %3596 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %3597 = getelementptr inbounds %struct.basic_block_def, ptr %2751, i64 0, i32 2
  %3598 = load ptr, ptr %3597, align 8, !tbaa !450
  %3599 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %3598, i64 0, i32 5
  %3600 = load ptr, ptr %3599, align 8, !tbaa !583
  %3601 = load i32, ptr %2753, align 8, !tbaa !432
  call fastcc void @print_bitmap_set(ptr noundef %3596, ptr noundef %3600, ptr noundef nonnull @.str.46, i32 noundef %3601)
  br label %3602

3602:                                             ; preds = %3595, %3587, %3581
  %3603 = icmp eq ptr %3583, null
  br i1 %3603, label %3608, label %3604, !prof !647

3604:                                             ; preds = %3602
  %3605 = load ptr, ptr %3583, align 8, !tbaa !351
  call void @bitmap_obstack_free(ptr noundef %3605) #19
  store ptr null, ptr %3583, align 8, !tbaa !351
  %3606 = getelementptr inbounds %struct.bitmap_set, ptr %3583, i64 0, i32 1
  %3607 = load ptr, ptr %3606, align 8, !tbaa !353
  call void @bitmap_obstack_free(ptr noundef %3607) #19
  store ptr null, ptr %3606, align 8, !tbaa !353
  br label %3608

3608:                                             ; preds = %3604, %3602
  %3609 = icmp eq ptr %3582, null
  br i1 %3609, label %3614, label %3610, !prof !647

3610:                                             ; preds = %3608
  %3611 = load ptr, ptr %3582, align 8, !tbaa !351
  call void @bitmap_obstack_free(ptr noundef %3611) #19
  store ptr null, ptr %3582, align 8, !tbaa !351
  %3612 = getelementptr inbounds %struct.bitmap_set, ptr %3582, i64 0, i32 1
  %3613 = load ptr, ptr %3612, align 8, !tbaa !353
  call void @bitmap_obstack_free(ptr noundef %3613) #19
  store ptr null, ptr %3612, align 8, !tbaa !353
  br label %3614

3614:                                             ; preds = %3610, %3608
  %3615 = or i8 %3584, %2729
  br label %3616

3616:                                             ; preds = %3614, %2727
  %3617 = phi i8 [ %3615, %3614 ], [ %2729, %2727 ]
  %3618 = add nsw i64 %2728, -1
  %3619 = icmp sgt i64 %2728, 0
  br i1 %3619, label %2727, label %2703, !prof !639, !llvm.loop !707

3620:                                             ; preds = %2703
  %3621 = load ptr, ptr @cfun, align 8, !tbaa !311
  call void @statistics_histogram_event(ptr noundef %3621, ptr noundef nonnull @.str.36, i32 noundef %2717) #19
  br label %3622

3622:                                             ; preds = %2696, %3620
  %3623 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !311
  %3624 = load ptr, ptr %3623, align 8, !tbaa !435
  call void @free(ptr noundef %3624)
  call void @free(ptr noundef %3623)
  %3625 = load ptr, ptr @changed_blocks, align 8, !tbaa !311
  %3626 = load ptr, ptr %3625, align 8, !tbaa !435
  call void @free(ptr noundef %3626)
  call void @free(ptr noundef %3625)
  %3627 = load ptr, ptr @cfun, align 8, !tbaa !311
  %3628 = getelementptr inbounds %struct.function, ptr %3627, i64 0, i32 1
  %3629 = load ptr, ptr %3628, align 8, !tbaa !419
  %3630 = load ptr, ptr %3629, align 8, !tbaa !311
  %3631 = icmp eq ptr %3630, null
  br i1 %3631, label %3645, label %3632, !prof !575

3632:                                             ; preds = %3622, %3632
  %3633 = phi ptr [ %3643, %3632 ], [ %3630, %3622 ]
  %3634 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  %3635 = call ptr @pool_alloc(ptr noundef %3634) #19
  %3636 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %3636, ptr %3635, align 8, !tbaa !351
  %3637 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %3638 = getelementptr inbounds %struct.bitmap_set, ptr %3635, i64 0, i32 1
  store ptr %3637, ptr %3638, align 8, !tbaa !353
  %3639 = getelementptr inbounds %struct.basic_block_def, ptr %3633, i64 0, i32 2
  %3640 = load ptr, ptr %3639, align 8, !tbaa !450
  %3641 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %3640, i64 0, i32 6
  store ptr %3635, ptr %3641, align 8, !tbaa !708
  %3642 = getelementptr inbounds %struct.basic_block_def, ptr %3633, i64 0, i32 6
  %3643 = load ptr, ptr %3642, align 8, !tbaa !311
  %3644 = icmp eq ptr %3643, null
  br i1 %3644, label %3645, label %3632, !prof !709, !llvm.loop !710

3645:                                             ; preds = %3632, %3622
  br label %3646

3646:                                             ; preds = %3645, %3646
  %3647 = phi i32 [ %3648, %3646 ], [ 0, %3645 ]
  %3648 = add nuw nsw i32 %3647, 1
  %3649 = load ptr, ptr @cfun, align 8, !tbaa !311
  %3650 = getelementptr inbounds %struct.function, ptr %3649, i64 0, i32 1
  %3651 = load ptr, ptr %3650, align 8, !tbaa !419
  %3652 = load ptr, ptr %3651, align 8, !tbaa !430
  %3653 = call fastcc zeroext i8 @insert_aux(ptr noundef %3652), !range !711
  %3654 = icmp eq i8 %3653, 0
  br i1 %3654, label %3655, label %3646, !prof !586, !llvm.loop !712

3655:                                             ; preds = %3646
  %3656 = load ptr, ptr @cfun, align 8, !tbaa !311
  call void @statistics_histogram_event(ptr noundef %3656, ptr noundef nonnull @.str.47, i32 noundef %3648) #19
  br label %3657

3657:                                             ; preds = %3655, %1863, %1862
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %3658 = load ptr, ptr @cfun, align 8, !tbaa !311
  %3659 = getelementptr inbounds %struct.function, ptr %3658, i64 0, i32 1
  %3660 = load ptr, ptr %3659, align 8, !tbaa !419
  %3661 = load ptr, ptr %3660, align 8, !tbaa !430
  %3662 = getelementptr inbounds %struct.basic_block_def, ptr %3661, i64 0, i32 6
  %3663 = load ptr, ptr %3662, align 8, !tbaa !574
  %3664 = getelementptr inbounds %struct.control_flow_graph, ptr %3660, i64 0, i32 1
  %3665 = load ptr, ptr %3664, align 8, !tbaa !423
  %3666 = icmp eq ptr %3663, %3665
  br i1 %3666, label %3680, label %3667, !prof !449

3667:                                             ; preds = %3657
  %3668 = getelementptr inbounds i8, ptr %5, i64 8
  %3669 = getelementptr inbounds i8, ptr %5, i64 16
  br label %3684

3670:                                             ; preds = %5001, %4838
  %3671 = phi ptr [ %4839, %4838 ], [ %5002, %5001 ]
  %3672 = getelementptr inbounds %struct.basic_block_def, ptr %3685, i64 0, i32 6
  %3673 = load ptr, ptr %3672, align 8, !tbaa !574
  %3674 = load ptr, ptr @cfun, align 8, !tbaa !311
  %3675 = getelementptr inbounds %struct.function, ptr %3674, i64 0, i32 1
  %3676 = load ptr, ptr %3675, align 8, !tbaa !419
  %3677 = getelementptr inbounds %struct.control_flow_graph, ptr %3676, i64 0, i32 1
  %3678 = load ptr, ptr %3677, align 8, !tbaa !423
  %3679 = icmp eq ptr %3673, %3678
  br i1 %3679, label %3680, label %3684, !prof !472, !llvm.loop !713

3680:                                             ; preds = %3670, %3657
  %3681 = phi ptr [ null, %3657 ], [ %3671, %3670 ]
  %3682 = phi i32 [ 0, %3657 ], [ %4840, %3670 ]
  %3683 = icmp eq ptr %3681, null
  br label %5005

3684:                                             ; preds = %3667, %3670
  %3685 = phi ptr [ %3663, %3667 ], [ %3673, %3670 ]
  %3686 = phi i32 [ 0, %3667 ], [ %4840, %3670 ]
  %3687 = phi ptr [ null, %3667 ], [ %3671, %3670 ]
  %3688 = getelementptr inbounds %struct.basic_block_def, ptr %3685, i64 0, i32 13
  %3689 = load i32, ptr %3688, align 8, !tbaa !489, !noalias !714
  %3690 = and i32 %3689, 512
  %3691 = icmp eq i32 %3690, 0
  br i1 %3691, label %3692, label %3698, !prof !437

3692:                                             ; preds = %3684
  %3693 = getelementptr inbounds %struct.basic_block_def, ptr %3685, i64 0, i32 7
  %3694 = load ptr, ptr %3693, align 8, !tbaa !322, !noalias !714
  %3695 = icmp eq ptr %3694, null
  br i1 %3695, label %3698, label %3696, !prof !439

3696:                                             ; preds = %3692
  %3697 = load ptr, ptr %3694, align 8, !tbaa !493, !noalias !714
  br label %3698

3698:                                             ; preds = %3696, %3692, %3684
  %3699 = phi ptr [ %3697, %3696 ], [ null, %3692 ], [ null, %3684 ]
  %3700 = icmp eq ptr %3699, null
  br i1 %3700, label %3703, label %3701, !prof !439

3701:                                             ; preds = %3698
  %3702 = load ptr, ptr %3699, align 8, !tbaa !495, !noalias !714
  br label %3703

3703:                                             ; preds = %3701, %3698
  %3704 = phi ptr [ %3702, %3701 ], [ null, %3698 ]
  store ptr %3704, ptr %5, align 8, !tbaa.struct !474
  store ptr %3699, ptr %3668, align 8, !tbaa.struct !717
  store ptr %3685, ptr %3669, align 8, !tbaa.struct !425
  %3705 = icmp eq ptr %3704, null
  br i1 %3705, label %4838, label %3706, !prof !497

3706:                                             ; preds = %3703, %4831
  %3707 = phi ptr [ %4836, %4831 ], [ %3704, %3703 ]
  %3708 = phi i32 [ %4833, %4831 ], [ %3686, %3703 ]
  %3709 = phi ptr [ %4832, %4831 ], [ %3687, %3703 ]
  %3710 = load ptr, ptr %3707, align 8, !tbaa !476
  %3711 = load i32, ptr %3710, align 8
  %3712 = trunc i32 %3711 to i8
  switch i8 %3712, label %3728 [
    i8 6, label %3729
    i8 8, label %3713
  ], !prof !718

3713:                                             ; preds = %3706
  %3714 = and i32 %3711, 255
  %3715 = zext nneg i32 %3714 to i64
  %3716 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %3715
  %3717 = load i32, ptr %3716, align 4, !tbaa !326
  %3718 = zext i32 %3717 to i64
  %3719 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3718
  %3720 = load i64, ptr %3719, align 8, !tbaa !379
  %3721 = icmp eq i64 %3720, 0
  br i1 %3721, label %3722, label %3723, !prof !719

3722:                                             ; preds = %3713
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %3723

3723:                                             ; preds = %3722, %3713
  %3724 = getelementptr inbounds i8, ptr %3710, i64 %3720
  %3725 = load ptr, ptr %3724, align 8, !tbaa !311
  %3726 = icmp ne ptr %3725, null
  %3727 = zext i1 %3726 to i8
  br label %3729

3728:                                             ; preds = %3706
  br label %3729

3729:                                             ; preds = %3728, %3723, %3706
  %3730 = phi i8 [ 1, %3706 ], [ %3727, %3723 ], [ 0, %3728 ]
  %3731 = icmp eq i8 %3730, 0
  br i1 %3731, label %4403, label %3732, !prof !720

3732:                                             ; preds = %3729
  %3733 = call ptr @gimple_get_lhs(ptr noundef %3710) #19
  %3734 = load i64, ptr %3733, align 8
  %3735 = and i64 %3734, 65535
  %3736 = icmp eq i64 %3735, 141
  br i1 %3736, label %3737, label %4403, !prof !721

3737:                                             ; preds = %3732
  %3738 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %3710) #19
  %3739 = icmp eq i8 %3738, 0
  br i1 %3739, label %3740, label %4403, !prof !722

3740:                                             ; preds = %3737
  %3741 = call zeroext i8 @gimple_assign_single_p(ptr noundef %3710) #19
  %3742 = icmp eq i8 %3741, 0
  br i1 %3742, label %3765, label %3743, !prof !723

3743:                                             ; preds = %3740
  %3744 = load i32, ptr %3710, align 8
  %3745 = and i32 %3744, 255
  %3746 = add nsw i32 %3745, -10
  %3747 = icmp ult i32 %3746, -9
  br i1 %3747, label %3761, label %3748, !prof !724

3748:                                             ; preds = %3743
  %3749 = zext nneg i32 %3745 to i64
  %3750 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %3749
  %3751 = load i32, ptr %3750, align 4, !tbaa !326
  %3752 = zext i32 %3751 to i64
  %3753 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3752
  %3754 = load i64, ptr %3753, align 8, !tbaa !379
  %3755 = icmp eq i64 %3754, 0
  br i1 %3755, label %3756, label %3757, !prof !724

3756:                                             ; preds = %3748
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %3757

3757:                                             ; preds = %3756, %3748
  %3758 = getelementptr inbounds i8, ptr %3710, i64 %3754
  %3759 = getelementptr inbounds ptr, ptr %3758, i64 1
  %3760 = load ptr, ptr %3759, align 8, !tbaa !311
  br label %3761

3761:                                             ; preds = %3757, %3743
  %3762 = phi ptr [ %3760, %3757 ], [ null, %3743 ]
  %3763 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %3762) #19
  %3764 = icmp eq i8 %3763, 0
  br i1 %3764, label %3765, label %4403, !prof !725

3765:                                             ; preds = %3761, %3740
  %3766 = load i32, ptr %3710, align 8
  %3767 = and i32 %3766, 254
  %3768 = add nsw i32 %3767, -10
  %3769 = icmp ult i32 %3768, -4
  %3770 = and i32 %3766, 16384
  %3771 = icmp eq i32 %3770, 0
  %3772 = or i1 %3771, %3769
  br i1 %3772, label %3773, label %4403, !prof !726

3773:                                             ; preds = %3765
  %3774 = call ptr @gimple_get_lhs(ptr noundef %3710) #19
  %3775 = getelementptr inbounds %struct.tree_ssa_name, ptr %3774, i64 0, i32 5
  %3776 = getelementptr inbounds %struct.tree_ssa_name, ptr %3774, i64 0, i32 5, i32 1
  %3777 = load ptr, ptr %3776, align 8, !tbaa !463
  %3778 = icmp eq ptr %3775, %3777
  br i1 %3778, label %3784, label %3779, !prof !727

3779:                                             ; preds = %3773
  %3780 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !326
  %3781 = icmp eq i32 %3780, 0
  br i1 %3781, label %3784, label %3782, !prof !728

3782:                                             ; preds = %3779
  %3783 = call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %3775) #19
  br label %3784

3784:                                             ; preds = %3782, %3779, %3773
  %3785 = phi i8 [ %3783, %3782 ], [ 1, %3773 ], [ 0, %3779 ]
  %3786 = icmp eq i8 %3785, 0
  br i1 %3786, label %3787, label %4403, !prof !729

3787:                                             ; preds = %3784
  %3788 = call ptr @gimple_get_lhs(ptr noundef %3710) #19
  %3789 = getelementptr inbounds %struct.tree_ssa_name, ptr %3788, i64 0, i32 3
  %3790 = load i32, ptr %3789, align 8, !tbaa !322
  %3791 = load ptr, ptr @name_to_id, align 8
  %3792 = icmp eq ptr %3791, null
  br i1 %3792, label %3795, label %3793, !prof !509

3793:                                             ; preds = %3787
  %3794 = load i32, ptr %3791, align 4, !tbaa !356
  br label %3795

3795:                                             ; preds = %3793, %3787
  %3796 = phi i32 [ %3794, %3793 ], [ 0, %3787 ]
  %3797 = icmp ugt i32 %3796, %3790
  br i1 %3797, label %3798, label %3802, !prof !510

3798:                                             ; preds = %3795
  %3799 = zext i32 %3790 to i64
  %3800 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %3791, i64 0, i32 2, i64 %3799
  %3801 = load i32, ptr %3800, align 4, !tbaa !326
  br label %3802

3802:                                             ; preds = %3798, %3795
  %3803 = phi i32 [ %3801, %3798 ], [ 0, %3795 ]
  %3804 = icmp eq i32 %3803, 0
  br i1 %3804, label %3810, label %3805, !prof !511

3805:                                             ; preds = %3802
  %3806 = load ptr, ptr @expressions, align 8
  %3807 = zext i32 %3803 to i64
  %3808 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %3806, i64 0, i32 2, i64 %3807
  %3809 = load ptr, ptr %3808, align 8, !tbaa !311
  br label %3924

3810:                                             ; preds = %3802
  %3811 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !311
  %3812 = call ptr @pool_alloc(ptr noundef %3811) #19
  store i32 0, ptr %3812, align 8, !tbaa !331
  %3813 = getelementptr inbounds %struct.pre_expr_d, ptr %3812, i64 0, i32 2
  store ptr %3788, ptr %3813, align 8, !tbaa !322
  %3814 = load i32, ptr @next_expression_id, align 4, !tbaa !326
  %3815 = icmp eq i32 %3814, -1
  br i1 %3815, label %3816, label %3817, !prof !392

3816:                                             ; preds = %3810
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 254, ptr noundef nonnull @.str.1) #19
  br label %3817

3817:                                             ; preds = %3816, %3810
  %3818 = load i32, ptr @next_expression_id, align 4, !tbaa !326
  %3819 = add i32 %3818, 1
  store i32 %3819, ptr @next_expression_id, align 4, !tbaa !326
  %3820 = getelementptr inbounds %struct.pre_expr_d, ptr %3812, i64 0, i32 1
  store i32 %3818, ptr %3820, align 4, !tbaa !361
  %3821 = load ptr, ptr @expressions, align 8, !tbaa !311
  %3822 = icmp eq ptr %3821, null
  br i1 %3822, label %3828, label %3823, !prof !392

3823:                                             ; preds = %3817
  %3824 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %3821, i64 0, i32 1
  %3825 = load i32, ptr %3824, align 4, !tbaa !393
  %3826 = load i32, ptr %3821, align 8, !tbaa !395
  %3827 = icmp eq i32 %3825, %3826
  br i1 %3827, label %3828, label %3830, !prof !396

3828:                                             ; preds = %3823, %3817
  %3829 = call ptr @vec_heap_p_reserve(ptr noundef %3821, i32 noundef 1) #19
  store ptr %3829, ptr @expressions, align 8, !tbaa !311
  br label %3830

3830:                                             ; preds = %3828, %3823
  %3831 = load ptr, ptr @expressions, align 8, !tbaa !311
  %3832 = load i32, ptr %3831, align 8, !tbaa !395
  %3833 = add i32 %3832, 1
  store i32 %3833, ptr %3831, align 8, !tbaa !395
  %3834 = zext i32 %3832 to i64
  %3835 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %3831, i64 0, i32 2, i64 %3834
  store ptr %3812, ptr %3835, align 8, !tbaa !311
  %3836 = load i32, ptr %3812, align 8, !tbaa !331
  %3837 = icmp eq i32 %3836, 0
  br i1 %3837, label %3838, label %3917, !prof !397

3838:                                             ; preds = %3830
  %3839 = load ptr, ptr %3813, align 8, !tbaa !322
  %3840 = getelementptr inbounds %struct.tree_ssa_name, ptr %3839, i64 0, i32 3
  %3841 = load i32, ptr %3840, align 8, !tbaa !322
  %3842 = load ptr, ptr @cfun, align 8, !tbaa !311
  %3843 = getelementptr inbounds %struct.function, ptr %3842, i64 0, i32 3
  %3844 = load ptr, ptr %3843, align 8, !tbaa !398
  %3845 = getelementptr inbounds %struct.gimple_df, ptr %3844, i64 0, i32 2
  %3846 = load ptr, ptr %3845, align 8, !tbaa !400
  %3847 = icmp eq ptr %3846, null
  br i1 %3847, label %3850, label %3848, !prof !404

3848:                                             ; preds = %3838
  %3849 = load i32, ptr %3846, align 8, !tbaa !405
  br label %3850

3850:                                             ; preds = %3848, %3838
  %3851 = phi i32 [ %3849, %3848 ], [ 0, %3838 ]
  %3852 = load ptr, ptr @name_to_id, align 8, !tbaa !311
  %3853 = icmp eq ptr %3852, null
  br i1 %3853, label %3860, label %3854, !prof !407

3854:                                             ; preds = %3850
  %3855 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %3852, i64 0, i32 1
  %3856 = load i32, ptr %3855, align 4, !tbaa !408
  %3857 = load i32, ptr %3852, align 4, !tbaa !356
  %3858 = sub i32 %3856, %3857
  %3859 = icmp uge i32 %3858, %3851
  br label %3862

3860:                                             ; preds = %3850
  %3861 = icmp eq i32 %3851, 0
  br label %3862

3862:                                             ; preds = %3860, %3854
  %3863 = phi i1 [ %3859, %3854 ], [ %3861, %3860 ]
  br i1 %3863, label %3866, label %3864, !prof !409

3864:                                             ; preds = %3862
  %3865 = call ptr @vec_heap_o_reserve(ptr noundef %3852, i32 noundef %3851, i64 noundef 8, i64 noundef 4) #19
  store ptr %3865, ptr @name_to_id, align 8, !tbaa !311
  br label %3866

3866:                                             ; preds = %3864, %3862
  %3867 = load ptr, ptr @cfun, align 8, !tbaa !311
  %3868 = getelementptr inbounds %struct.function, ptr %3867, i64 0, i32 3
  %3869 = load ptr, ptr %3868, align 8, !tbaa !398
  %3870 = getelementptr inbounds %struct.gimple_df, ptr %3869, i64 0, i32 2
  %3871 = load ptr, ptr %3870, align 8, !tbaa !400
  %3872 = icmp eq ptr %3871, null
  br i1 %3872, label %3875, label %3873, !prof !404

3873:                                             ; preds = %3866
  %3874 = load i32, ptr %3871, align 8, !tbaa !405
  br label %3875

3875:                                             ; preds = %3873, %3866
  %3876 = phi i32 [ %3874, %3873 ], [ 0, %3866 ]
  %3877 = load ptr, ptr @name_to_id, align 8, !tbaa !311
  %3878 = icmp eq ptr %3877, null
  br i1 %3878, label %3881, label %3879, !prof !404

3879:                                             ; preds = %3875
  %3880 = load i32, ptr %3877, align 4, !tbaa !356
  br label %3881

3881:                                             ; preds = %3879, %3875
  %3882 = phi i32 [ %3880, %3879 ], [ 0, %3875 ]
  br i1 %3878, label %3885, label %3883, !prof !404

3883:                                             ; preds = %3881
  %3884 = load i32, ptr %3877, align 4, !tbaa !356
  br label %3885

3885:                                             ; preds = %3883, %3881
  %3886 = phi i32 [ %3884, %3883 ], [ 0, %3881 ]
  %3887 = sub nsw i32 %3876, %3886
  br i1 %3878, label %3894, label %3888, !prof !404

3888:                                             ; preds = %3885
  %3889 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %3877, i64 0, i32 1
  %3890 = load i32, ptr %3889, align 4, !tbaa !408
  %3891 = load i32, ptr %3877, align 4, !tbaa !356
  %3892 = sub i32 %3890, %3891
  %3893 = icmp uge i32 %3892, %3887
  br label %3896

3894:                                             ; preds = %3885
  %3895 = icmp eq i32 %3886, %3876
  br label %3896

3896:                                             ; preds = %3894, %3888
  %3897 = phi i1 [ %3893, %3888 ], [ %3895, %3894 ]
  br i1 %3897, label %3900, label %3898, !prof !410

3898:                                             ; preds = %3896
  %3899 = call ptr @vec_heap_o_reserve_exact(ptr noundef %3877, i32 noundef %3887, i64 noundef 8, i64 noundef 4) #19
  store ptr %3899, ptr @name_to_id, align 8, !tbaa !311
  br label %3900

3900:                                             ; preds = %3898, %3896
  %3901 = load ptr, ptr @name_to_id, align 8, !nonnull !348, !noundef !348
  store i32 %3876, ptr %3901, align 4, !tbaa !356
  %3902 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %3901, i64 0, i32 2
  %3903 = sext i32 %3882 to i64
  %3904 = getelementptr inbounds i32, ptr %3902, i64 %3903
  %3905 = sub nsw i32 %3876, %3882
  %3906 = sext i32 %3905 to i64
  %3907 = shl nsw i64 %3906, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %3904, i8 0, i64 %3907, i1 false), !prof !730
  %3908 = zext i32 %3841 to i64
  %3909 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %3901, i64 0, i32 2, i64 %3908
  %3910 = load i32, ptr %3909, align 4, !tbaa !326
  %3911 = icmp eq i32 %3910, 0
  br i1 %3911, label %3913, label %3912, !prof !410

3912:                                             ; preds = %3900
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 265, ptr noundef nonnull @.str.1) #19
  br label %3913

3913:                                             ; preds = %3912, %3900
  %3914 = load ptr, ptr @name_to_id, align 8
  %3915 = load i32, ptr %3820, align 4, !tbaa !361
  %3916 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %3914, i64 0, i32 2, i64 %3908
  store i32 %3915, ptr %3916, align 4, !tbaa !326
  br label %3924

3917:                                             ; preds = %3830
  %3918 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %3919 = call ptr @htab_find_slot(ptr noundef %3918, ptr noundef nonnull %3812, i32 noundef 1) #19
  %3920 = load ptr, ptr %3919, align 8, !tbaa !311
  %3921 = icmp eq ptr %3920, null
  br i1 %3921, label %3923, label %3922, !prof !412

3922:                                             ; preds = %3917
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 271, ptr noundef nonnull @.str.1) #19
  br label %3923

3923:                                             ; preds = %3922, %3917
  store ptr %3812, ptr %3919, align 8, !tbaa !311
  br label %3924

3924:                                             ; preds = %3805, %3913, %3923
  %3925 = phi ptr [ %3809, %3805 ], [ %3812, %3913 ], [ %3812, %3923 ]
  %3926 = call zeroext i8 @gimple_assign_single_p(ptr noundef %3710) #19
  %3927 = icmp eq i8 %3926, 0
  br i1 %3927, label %3946, label %3928, !prof !731

3928:                                             ; preds = %3924
  %3929 = load i32, ptr %3710, align 8
  %3930 = and i32 %3929, 255
  %3931 = add nsw i32 %3930, -10
  %3932 = icmp ult i32 %3931, -9
  br i1 %3932, label %3946, label %3933, !prof !732

3933:                                             ; preds = %3928
  %3934 = zext nneg i32 %3930 to i64
  %3935 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %3934
  %3936 = load i32, ptr %3935, align 4, !tbaa !326
  %3937 = zext i32 %3936 to i64
  %3938 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3937
  %3939 = load i64, ptr %3938, align 8, !tbaa !379
  %3940 = icmp eq i64 %3939, 0
  br i1 %3940, label %3941, label %3942, !prof !732

3941:                                             ; preds = %3933
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %3942

3942:                                             ; preds = %3941, %3933
  %3943 = getelementptr inbounds i8, ptr %3710, i64 %3939
  %3944 = getelementptr inbounds ptr, ptr %3943, i64 1
  %3945 = load ptr, ptr %3944, align 8, !tbaa !311
  br label %3946

3946:                                             ; preds = %3942, %3928, %3924
  %3947 = phi ptr [ null, %3924 ], [ %3945, %3942 ], [ null, %3928 ]
  %3948 = getelementptr inbounds %struct.basic_block_def, ptr %3685, i64 0, i32 2
  %3949 = load ptr, ptr %3948, align 8, !tbaa !450
  %3950 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %3949, i64 0, i32 3
  %3951 = load ptr, ptr %3950, align 8, !tbaa !457
  %3952 = load i32, ptr %3925, align 8, !tbaa !331
  switch i32 %3952, label %3975 [
    i32 3, label %3953
    i32 0, label %3961
    i32 1, label %3967
    i32 2, label %3971
  ], !prof !333

3953:                                             ; preds = %3946
  %3954 = getelementptr inbounds %struct.pre_expr_d, ptr %3925, i64 0, i32 2
  %3955 = load ptr, ptr %3954, align 8, !tbaa !322
  %3956 = call i32 @get_constant_value_id(ptr noundef %3955) #19
  %3957 = icmp eq i32 %3956, 0
  br i1 %3957, label %3958, label %3976, !prof !334

3958:                                             ; preds = %3953
  %3959 = load ptr, ptr %3954, align 8, !tbaa !322
  %3960 = call i32 @get_or_alloc_constant_value_id(ptr noundef %3959) #19
  call void @add_to_value(i32 noundef %3960, ptr noundef nonnull %3925)
  br label %3976

3961:                                             ; preds = %3946
  %3962 = getelementptr inbounds %struct.pre_expr_d, ptr %3925, i64 0, i32 2
  %3963 = load ptr, ptr %3962, align 8, !tbaa !322
  %3964 = call ptr @VN_INFO(ptr noundef %3963) #19
  %3965 = getelementptr inbounds %struct.vn_ssa_aux, ptr %3964, i64 0, i32 2
  %3966 = load i32, ptr %3965, align 8, !tbaa !335
  br label %3976

3967:                                             ; preds = %3946
  %3968 = getelementptr inbounds %struct.pre_expr_d, ptr %3925, i64 0, i32 2
  %3969 = load ptr, ptr %3968, align 8, !tbaa !322
  %3970 = load i32, ptr %3969, align 8, !tbaa !337
  br label %3976

3971:                                             ; preds = %3946
  %3972 = getelementptr inbounds %struct.pre_expr_d, ptr %3925, i64 0, i32 2
  %3973 = load ptr, ptr %3972, align 8, !tbaa !322
  %3974 = load i32, ptr %3973, align 8, !tbaa !339
  br label %3976

3975:                                             ; preds = %3946
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %3976

3976:                                             ; preds = %3953, %3958, %3961, %3967, %3971, %3975
  %3977 = phi i32 [ 0, %3975 ], [ %3974, %3971 ], [ %3970, %3967 ], [ %3966, %3961 ], [ %3960, %3958 ], [ %3956, %3953 ]
  %3978 = call zeroext i8 @value_id_constant_p(i32 noundef %3977) #19
  %3979 = icmp eq i8 %3978, 0
  br i1 %3979, label %4072, label %3980, !prof !733

3980:                                             ; preds = %3976
  %3981 = load ptr, ptr @value_expressions, align 8
  %3982 = zext i32 %3977 to i64
  %3983 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %3981, i64 0, i32 2, i64 %3982
  %3984 = load ptr, ptr %3983, align 8, !tbaa !311
  %3985 = load ptr, ptr %3984, align 8, !tbaa !351
  %3986 = load ptr, ptr %3985, align 8, !tbaa !375
  %3987 = icmp eq ptr %3986, null
  %3988 = select i1 %3987, ptr @bitmap_zero_bits, ptr %3986, !prof !734
  %3989 = getelementptr inbounds %struct.bitmap_element_def, ptr %3988, i64 0, i32 2
  %3990 = load i32, ptr %3989, align 8, !tbaa !377
  %3991 = shl i32 %3990, 7
  %3992 = getelementptr inbounds %struct.bitmap_element_def, ptr %3988, i64 0, i32 3
  %3993 = load i64, ptr %3992, align 8, !tbaa !379
  %3994 = icmp eq i64 %3993, 0
  %3995 = zext i1 %3994 to i32
  %3996 = or disjoint i32 %3991, %3995
  br label %3997

3997:                                             ; preds = %4067, %3980
  %3998 = phi i32 [ 0, %3980 ], [ %4054, %4067 ]
  %3999 = phi i64 [ %3993, %3980 ], [ %4068, %4067 ]
  %4000 = phi ptr [ %3988, %3980 ], [ %4056, %4067 ]
  %4001 = phi i32 [ %3996, %3980 ], [ %4069, %4067 ]
  %4002 = phi ptr [ undef, %3980 ], [ %4066, %4067 ]
  %4003 = icmp eq i64 %3999, 0
  br i1 %4003, label %4018, label %4004, !prof !735

4004:                                             ; preds = %4032, %3997
  %4005 = phi i32 [ %3998, %3997 ], [ %4033, %4032 ]
  %4006 = phi i64 [ %3999, %3997 ], [ %4037, %4032 ]
  %4007 = phi ptr [ %4000, %3997 ], [ %4024, %4032 ]
  %4008 = phi i32 [ %4001, %3997 ], [ %4034, %4032 ]
  %4009 = and i64 %4006, 1
  %4010 = icmp eq i64 %4009, 0
  br i1 %4010, label %4011, label %4053, !prof !736

4011:                                             ; preds = %4004, %4011
  %4012 = phi i32 [ %4015, %4011 ], [ %4008, %4004 ]
  %4013 = phi i64 [ %4014, %4011 ], [ %4006, %4004 ]
  %4014 = lshr exact i64 %4013, 1
  %4015 = add i32 %4012, 1
  %4016 = and i64 %4013, 2
  %4017 = icmp eq i64 %4016, 0
  br i1 %4017, label %4011, label %4053, !prof !737, !llvm.loop !380

4018:                                             ; preds = %3997
  %4019 = add i32 %4001, 63
  %4020 = and i32 %4019, -64
  %4021 = add i32 %3998, 1
  br label %4022

4022:                                             ; preds = %4049, %4018
  %4023 = phi i64 [ %3999, %4018 ], [ %4044, %4049 ]
  %4024 = phi ptr [ %4000, %4018 ], [ %4047, %4049 ]
  %4025 = phi i32 [ %4020, %4018 ], [ %4052, %4049 ]
  %4026 = phi i32 [ %4021, %4018 ], [ 0, %4049 ]
  %4027 = icmp eq i32 %4026, 2
  br i1 %4027, label %4043, label %4028, !prof !738

4028:                                             ; preds = %4022
  %4029 = add i32 %4025, 128
  %4030 = shl i32 %4026, 6
  %4031 = sub i32 %4029, %4030
  br label %4032

4032:                                             ; preds = %4039, %4028
  %4033 = phi i32 [ %4041, %4039 ], [ %4026, %4028 ]
  %4034 = phi i32 [ %4040, %4039 ], [ %4025, %4028 ]
  %4035 = zext i32 %4033 to i64
  %4036 = getelementptr inbounds %struct.bitmap_element_def, ptr %4024, i64 0, i32 3, i64 %4035
  %4037 = load i64, ptr %4036, align 8, !tbaa !379
  %4038 = icmp eq i64 %4037, 0
  br i1 %4038, label %4039, label %4004, !prof !739

4039:                                             ; preds = %4032
  %4040 = add i32 %4034, 64
  %4041 = add i32 %4033, 1
  %4042 = icmp eq i32 %4041, 2
  br i1 %4042, label %4043, label %4032, !prof !739, !llvm.loop !381

4043:                                             ; preds = %4039, %4022
  %4044 = phi i64 [ %4023, %4022 ], [ %4037, %4039 ]
  %4045 = phi i32 [ %4025, %4022 ], [ %4031, %4039 ]
  %4046 = phi i32 [ %4026, %4022 ], [ 2, %4039 ]
  %4047 = load ptr, ptr %4024, align 8, !tbaa !382
  %4048 = icmp eq ptr %4047, null
  br i1 %4048, label %4053, label %4049

4049:                                             ; preds = %4043
  %4050 = getelementptr inbounds %struct.bitmap_element_def, ptr %4047, i64 0, i32 2
  %4051 = load i32, ptr %4050, align 8, !tbaa !377
  %4052 = shl i32 %4051, 7
  br label %4022, !llvm.loop !383

4053:                                             ; preds = %4043, %4011, %4004
  %4054 = phi i32 [ %4005, %4004 ], [ %4005, %4011 ], [ %4046, %4043 ]
  %4055 = phi i64 [ %4006, %4004 ], [ %4014, %4011 ], [ %4044, %4043 ]
  %4056 = phi ptr [ %4007, %4004 ], [ %4007, %4011 ], [ %4047, %4043 ]
  %4057 = phi i32 [ %4008, %4004 ], [ %4015, %4011 ], [ %4045, %4043 ]
  %4058 = phi i1 [ true, %4004 ], [ true, %4011 ], [ false, %4043 ]
  br i1 %4058, label %4059, label %4070, !prof !740

4059:                                             ; preds = %4053
  %4060 = load ptr, ptr @expressions, align 8
  %4061 = zext i32 %4057 to i64
  %4062 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %4060, i64 0, i32 2, i64 %4061
  %4063 = load ptr, ptr %4062, align 8, !tbaa !311
  %4064 = load i32, ptr %4063, align 8, !tbaa !331
  %4065 = icmp eq i32 %4064, 3
  %4066 = select i1 %4065, ptr %4063, ptr %4002, !prof !740
  br i1 %4065, label %4070, label %4067, !prof !740

4067:                                             ; preds = %4059
  %4068 = lshr i64 %4055, 1
  %4069 = add i32 %4057, 1
  br label %3997, !llvm.loop !741

4070:                                             ; preds = %4059, %4053
  %4071 = phi ptr [ %4066, %4059 ], [ %4002, %4053 ]
  br i1 %4058, label %4210, label %4072, !prof !740

4072:                                             ; preds = %4070, %3976
  %4073 = phi ptr [ %4071, %4070 ], [ undef, %3976 ]
  %4074 = call zeroext i8 @value_id_constant_p(i32 noundef %3977) #19
  %4075 = icmp eq i8 %4074, 0
  br i1 %4075, label %4076, label %4088, !prof !742

4076:                                             ; preds = %4072
  %4077 = icmp eq ptr %3951, null
  br i1 %4077, label %4209, label %4078, !prof !743

4078:                                             ; preds = %4076
  %4079 = load ptr, ptr %3951, align 8, !tbaa !351
  %4080 = load ptr, ptr %4079, align 8, !tbaa !375
  %4081 = icmp eq ptr %4080, null
  br i1 %4081, label %4209, label %4082, !prof !691

4082:                                             ; preds = %4078
  %4083 = getelementptr inbounds %struct.bitmap_set, ptr %3951, i64 0, i32 1
  %4084 = load ptr, ptr %4083, align 8, !tbaa !353
  %4085 = call i32 @bitmap_bit_p(ptr noundef %4084, i32 noundef %3977) #19
  %4086 = and i32 %4085, 255
  %4087 = icmp eq i32 %4086, 0
  br i1 %4087, label %4209, label %4088, !prof !744

4088:                                             ; preds = %4082, %4072
  %4089 = load ptr, ptr @value_expressions, align 8
  %4090 = zext i32 %3977 to i64
  %4091 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %4089, i64 0, i32 2, i64 %4090
  %4092 = load ptr, ptr %4091, align 8, !tbaa !311
  %4093 = load ptr, ptr %4092, align 8, !tbaa !351
  %4094 = load ptr, ptr %3951, align 8, !tbaa !351
  %4095 = load ptr, ptr %4093, align 8, !tbaa !375
  %4096 = load ptr, ptr %4094, align 8, !tbaa !375
  %4097 = icmp eq ptr %4095, null
  %4098 = icmp eq ptr %4096, null
  %4099 = select i1 %4097, i1 true, i1 %4098
  br i1 %4099, label %4111, label %4100, !prof !738

4100:                                             ; preds = %4088
  %4101 = getelementptr inbounds %struct.bitmap_element_def, ptr %4095, i64 0, i32 2
  %4102 = load i32, ptr %4101, align 8, !tbaa !377
  br label %4103

4103:                                             ; preds = %4108, %4100
  %4104 = phi ptr [ %4096, %4100 ], [ %4109, %4108 ]
  %4105 = getelementptr inbounds %struct.bitmap_element_def, ptr %4104, i64 0, i32 2
  %4106 = load i32, ptr %4105, align 8, !tbaa !377
  %4107 = icmp ult i32 %4106, %4102
  br i1 %4107, label %4108, label %4111, !prof !745

4108:                                             ; preds = %4103
  %4109 = load ptr, ptr %4104, align 8, !tbaa !382
  %4110 = icmp eq ptr %4109, null
  br i1 %4110, label %4111, label %4103, !prof !746, !llvm.loop !747

4111:                                             ; preds = %4108, %4103, %4088
  %4112 = phi ptr [ @bitmap_zero_bits, %4088 ], [ %4104, %4103 ], [ @bitmap_zero_bits, %4108 ]
  %4113 = phi ptr [ @bitmap_zero_bits, %4088 ], [ %4095, %4103 ], [ @bitmap_zero_bits, %4108 ]
  %4114 = getelementptr inbounds %struct.bitmap_element_def, ptr %4113, i64 0, i32 2
  %4115 = load i32, ptr %4114, align 8, !tbaa !377
  %4116 = getelementptr inbounds %struct.bitmap_element_def, ptr %4112, i64 0, i32 2
  %4117 = load i32, ptr %4116, align 8, !tbaa !377
  %4118 = icmp eq i32 %4115, %4117
  br i1 %4118, label %4119, label %4126, !prof !748

4119:                                             ; preds = %4111
  %4120 = shl i32 %4115, 7
  %4121 = getelementptr inbounds %struct.bitmap_element_def, ptr %4113, i64 0, i32 3
  %4122 = load i64, ptr %4121, align 8, !tbaa !379
  %4123 = getelementptr inbounds %struct.bitmap_element_def, ptr %4112, i64 0, i32 3
  %4124 = load i64, ptr %4123, align 8, !tbaa !379
  %4125 = and i64 %4124, %4122
  br label %4126

4126:                                             ; preds = %4119, %4111
  %4127 = phi i64 [ %4125, %4119 ], [ 0, %4111 ]
  %4128 = phi i32 [ 1, %4119 ], [ 2, %4111 ]
  %4129 = phi i32 [ %4120, %4119 ], [ 0, %4111 ]
  %4130 = icmp eq i64 %4127, 0
  %4131 = zext i1 %4130 to i32
  %4132 = or disjoint i32 %4129, %4131
  %4133 = load ptr, ptr @expressions, align 8
  br i1 %4130, label %4146, label %4134, !prof !749

4134:                                             ; preds = %4161, %4126
  %4135 = phi i32 [ %4132, %4126 ], [ %4163, %4161 ]
  %4136 = phi i64 [ %4127, %4126 ], [ %4169, %4161 ]
  %4137 = and i64 %4136, 1
  %4138 = icmp eq i64 %4137, 0
  br i1 %4138, label %4139, label %4200, !prof !750

4139:                                             ; preds = %4134, %4139
  %4140 = phi i64 [ %4142, %4139 ], [ %4136, %4134 ]
  %4141 = phi i32 [ %4143, %4139 ], [ %4135, %4134 ]
  %4142 = lshr exact i64 %4140, 1
  %4143 = add i32 %4141, 1
  %4144 = and i64 %4140, 2
  %4145 = icmp eq i64 %4144, 0
  br i1 %4145, label %4139, label %4200, !prof !751, !llvm.loop !752

4146:                                             ; preds = %4126
  %4147 = add nuw nsw i32 %4132, 63
  %4148 = and i32 %4147, -64
  br label %4149

4149:                                             ; preds = %4198, %4146
  %4150 = phi i32 [ %4148, %4146 ], [ %4199, %4198 ]
  %4151 = phi ptr [ %4112, %4146 ], [ %4189, %4198 ]
  %4152 = phi ptr [ %4113, %4146 ], [ %4181, %4198 ]
  %4153 = phi i32 [ %4128, %4146 ], [ 0, %4198 ]
  %4154 = icmp eq i32 %4153, 2
  br i1 %4154, label %4159, label %4155, !prof !753

4155:                                             ; preds = %4149
  %4156 = add i32 %4150, 128
  %4157 = shl nuw nsw i32 %4153, 6
  %4158 = sub i32 %4156, %4157
  br label %4161

4159:                                             ; preds = %4171, %4149
  %4160 = phi i32 [ %4150, %4149 ], [ %4158, %4171 ]
  br label %4175

4161:                                             ; preds = %4171, %4155
  %4162 = phi i32 [ %4173, %4171 ], [ %4153, %4155 ]
  %4163 = phi i32 [ %4172, %4171 ], [ %4150, %4155 ]
  %4164 = zext i32 %4162 to i64
  %4165 = getelementptr inbounds %struct.bitmap_element_def, ptr %4152, i64 0, i32 3, i64 %4164
  %4166 = load i64, ptr %4165, align 8, !tbaa !379
  %4167 = getelementptr inbounds %struct.bitmap_element_def, ptr %4151, i64 0, i32 3, i64 %4164
  %4168 = load i64, ptr %4167, align 8, !tbaa !379
  %4169 = and i64 %4168, %4166
  %4170 = icmp eq i64 %4169, 0
  br i1 %4170, label %4171, label %4134, !prof !754

4171:                                             ; preds = %4161
  %4172 = add i32 %4163, 64
  %4173 = add i32 %4162, 1
  %4174 = icmp eq i32 %4173, 2
  br i1 %4174, label %4159, label %4161, !prof !755, !llvm.loop !756

4175:                                             ; preds = %4196, %4159
  %4176 = phi ptr [ %4189, %4196 ], [ %4151, %4159 ]
  %4177 = phi ptr [ %4181, %4196 ], [ %4152, %4159 ]
  %4178 = getelementptr inbounds %struct.bitmap_element_def, ptr %4176, i64 0, i32 2
  br label %4179

4179:                                             ; preds = %4183, %4175
  %4180 = phi ptr [ %4177, %4175 ], [ %4181, %4183 ]
  %4181 = load ptr, ptr %4180, align 8, !tbaa !382
  %4182 = icmp eq ptr %4181, null
  br i1 %4182, label %4200, label %4183, !prof !757

4183:                                             ; preds = %4179
  %4184 = getelementptr inbounds %struct.bitmap_element_def, ptr %4181, i64 0, i32 2
  %4185 = load i32, ptr %4184, align 8, !tbaa !377
  %4186 = load i32, ptr %4178, align 8, !tbaa !377
  %4187 = icmp ult i32 %4185, %4186
  br i1 %4187, label %4179, label %4188, !prof !758, !llvm.loop !759

4188:                                             ; preds = %4183, %4193
  %4189 = phi ptr [ %4194, %4193 ], [ %4176, %4183 ]
  %4190 = getelementptr inbounds %struct.bitmap_element_def, ptr %4189, i64 0, i32 2
  %4191 = load i32, ptr %4190, align 8, !tbaa !377
  %4192 = icmp ult i32 %4191, %4185
  br i1 %4192, label %4193, label %4196, !prof !760

4193:                                             ; preds = %4188
  %4194 = load ptr, ptr %4189, align 8, !tbaa !382
  %4195 = icmp eq ptr %4194, null
  br i1 %4195, label %4200, label %4188, !prof !761, !llvm.loop !762

4196:                                             ; preds = %4188
  %4197 = icmp eq i32 %4185, %4191
  br i1 %4197, label %4198, label %4175, !prof !763, !llvm.loop !764

4198:                                             ; preds = %4196
  %4199 = shl i32 %4185, 7
  br label %4149, !llvm.loop !765

4200:                                             ; preds = %4139, %4179, %4193, %4134
  %4201 = phi i32 [ %4135, %4134 ], [ %4160, %4193 ], [ %4160, %4179 ], [ %4143, %4139 ]
  %4202 = phi i1 [ false, %4134 ], [ true, %4193 ], [ true, %4179 ], [ false, %4139 ]
  br i1 %4202, label %4207, label %4203, !prof !766

4203:                                             ; preds = %4200
  %4204 = zext i32 %4201 to i64
  %4205 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %4133, i64 0, i32 2, i64 %4204
  %4206 = load ptr, ptr %4205, align 8, !tbaa !311
  br label %4207

4207:                                             ; preds = %4203, %4200
  %4208 = phi ptr [ %4206, %4203 ], [ %4073, %4200 ]
  br i1 %4202, label %4209, label %4210, !prof !766

4209:                                             ; preds = %4207, %4082, %4078, %4076
  br label %4210

4210:                                             ; preds = %4070, %4207, %4209
  %4211 = phi ptr [ %4071, %4070 ], [ %4208, %4207 ], [ null, %4209 ]
  %4212 = icmp eq ptr %4211, null
  br i1 %4212, label %4222, label %4213, !prof !767

4213:                                             ; preds = %4210
  %4214 = load i32, ptr %4211, align 8, !tbaa !331
  switch i32 %4214, label %4221 [
    i32 3, label %4215
    i32 0, label %4218
  ], !prof !768

4215:                                             ; preds = %4213
  %4216 = getelementptr inbounds %struct.pre_expr_d, ptr %4211, i64 0, i32 2
  %4217 = load ptr, ptr %4216, align 8, !tbaa !322
  br label %4222

4218:                                             ; preds = %4213
  %4219 = getelementptr inbounds %struct.pre_expr_d, ptr %4211, i64 0, i32 2
  %4220 = load ptr, ptr %4219, align 8, !tbaa !322
  br label %4222

4221:                                             ; preds = %4213
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4163, ptr noundef nonnull @.str.1) #19
  br label %4222

4222:                                             ; preds = %4221, %4218, %4215, %4210
  %4223 = phi ptr [ %4217, %4215 ], [ %4220, %4218 ], [ null, %4221 ], [ null, %4210 ]
  %4224 = icmp eq ptr %4223, null
  br i1 %4224, label %4225, label %4269, !prof !767

4225:                                             ; preds = %4222
  %4226 = call ptr @VN_INFO(ptr noundef %3788) #19
  %4227 = load ptr, ptr %4226, align 8, !tbaa !769
  %4228 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %4227) #19
  %4229 = icmp eq i8 %4228, 0
  br i1 %4229, label %4271, label %4230

4230:                                             ; preds = %4225
  %4231 = call ptr @VN_INFO(ptr noundef %3788) #19
  %4232 = load ptr, ptr %4231, align 8, !tbaa !769
  %4233 = getelementptr inbounds %struct.tree_common, ptr %3788, i64 0, i32 2
  %4234 = load ptr, ptr %4233, align 8, !tbaa !322
  %4235 = getelementptr inbounds %struct.tree_common, ptr %4232, i64 0, i32 2
  %4236 = load ptr, ptr %4235, align 8, !tbaa !322
  %4237 = call zeroext i8 @useless_type_conversion_p(ptr noundef %4234, ptr noundef %4236) #19
  %4238 = icmp eq i8 %4237, 0
  br i1 %4238, label %4239, label %4242

4239:                                             ; preds = %4230
  %4240 = load ptr, ptr %4233, align 8, !tbaa !322
  %4241 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %4240, ptr noundef %4232) #19
  br label %4242

4242:                                             ; preds = %4239, %4230
  %4243 = phi ptr [ %4232, %4230 ], [ %4241, %4239 ]
  %4244 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %4245 = icmp eq ptr %4244, null
  br i1 %4245, label %4259, label %4246

4246:                                             ; preds = %4242
  %4247 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %4248 = and i32 %4247, 8
  %4249 = icmp eq i32 %4248, 0
  br i1 %4249, label %4259, label %4250

4250:                                             ; preds = %4246
  %4251 = call i64 @fwrite(ptr nonnull @.str.57, i64 9, i64 1, ptr nonnull %4244)
  %4252 = load ptr, ptr @dump_file, align 8, !tbaa !311
  call void @print_gimple_expr(ptr noundef %4252, ptr noundef %3710, i32 noundef 0, i32 noundef 0) #19
  %4253 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %4254 = call i64 @fwrite(ptr nonnull @.str.58, i64 6, i64 1, ptr %4253)
  %4255 = load ptr, ptr @dump_file, align 8, !tbaa !311
  call void @print_generic_expr(ptr noundef %4255, ptr noundef %4243, i32 noundef 0) #19
  %4256 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %4257 = call i64 @fwrite(ptr nonnull @.str.59, i64 4, i64 1, ptr %4256)
  %4258 = load ptr, ptr @dump_file, align 8, !tbaa !311
  call void @print_gimple_stmt(ptr noundef %4258, ptr noundef %3710, i32 noundef 0, i32 noundef 0) #19
  br label %4259

4259:                                             ; preds = %4250, %4246, %4242
  %4260 = load i32, ptr @pre_stats, align 4, !tbaa !770
  %4261 = add nsw i32 %4260, 1
  store i32 %4261, ptr @pre_stats, align 4, !tbaa !770
  call void @propagate_tree_value_into_stmt(ptr noundef nonnull %5, ptr noundef %4243) #19
  %4262 = load ptr, ptr %5, align 8
  %4263 = load ptr, ptr %4262, align 8, !tbaa !476
  %4264 = load i32, ptr %4263, align 8
  %4265 = and i32 %4264, 255
  %4266 = add nsw i32 %4265, -10
  %4267 = icmp ult i32 %4266, -9
  br i1 %4267, label %4400, label %4268

4268:                                             ; preds = %4259
  call void @gimple_set_modified(ptr noundef nonnull %4263, i8 noundef zeroext 1) #19
  call void @update_stmt_operands(ptr noundef nonnull %4263) #19
  br label %4400

4269:                                             ; preds = %4222
  %4270 = icmp eq ptr %4223, %3788
  br i1 %4270, label %4271, label %4315, !prof !772

4271:                                             ; preds = %4225, %4269
  %4272 = call ptr @VN_INFO(ptr noundef %3788) #19
  %4273 = load ptr, ptr %4272, align 8, !tbaa !769
  %4274 = load ptr, ptr @VN_TOP, align 8, !tbaa !311
  %4275 = icmp eq ptr %4273, %4274
  br i1 %4275, label %4315, label %4276, !prof !773

4276:                                             ; preds = %4271
  %4277 = load i64, ptr %4273, align 8
  %4278 = and i64 %4277, 65535
  %4279 = icmp eq i64 %4278, 141
  br i1 %4279, label %4280, label %4315, !prof !774

4280:                                             ; preds = %4276
  %4281 = call ptr @VN_INFO(ptr noundef nonnull %4273) #19
  %4282 = getelementptr inbounds %struct.vn_ssa_aux, ptr %4281, i64 0, i32 5
  %4283 = load i8, ptr %4282, align 4
  %4284 = and i8 %4283, 16
  %4285 = icmp eq i8 %4284, 0
  br i1 %4285, label %4315, label %4286, !prof !774

4286:                                             ; preds = %4280
  %4287 = call ptr @vn_get_expr_for(ptr noundef nonnull %4273) #19
  %4288 = load i64, ptr %4287, align 8
  %4289 = and i64 %4288, 65535
  %4290 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4289
  %4291 = load i32, ptr %4290, align 4, !tbaa !326
  %4292 = add i32 %4291, -5
  %4293 = icmp ult i32 %4292, 3
  br i1 %4293, label %4299, label %4294

4294:                                             ; preds = %4286
  %4295 = trunc i64 %4288 to i16
  switch i16 %4295, label %4296 [
    i16 47, label %4299
    i16 41, label %4299
    i16 118, label %4299
    i16 59, label %4299
  ]

4296:                                             ; preds = %4294
  %4297 = icmp eq i64 %4289, 45
  %4298 = zext i1 %4297 to i8
  br label %4299

4299:                                             ; preds = %4294, %4294, %4294, %4296, %4294, %4286
  %4300 = phi i8 [ %4298, %4296 ], [ 1, %4286 ], [ 1, %4294 ], [ 1, %4294 ], [ 1, %4294 ], [ 1, %4294 ]
  %4301 = icmp eq i8 %4300, 0
  br i1 %4301, label %4315, label %4302

4302:                                             ; preds = %4299
  %4303 = getelementptr inbounds %struct.gimple_statement_base, ptr %3710, i64 0, i32 4
  %4304 = load ptr, ptr %4303, align 8, !tbaa !322
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !311
  %4305 = call ptr @vn_get_expr_for(ptr noundef nonnull %4273) #19
  %4306 = call fastcc ptr @get_or_alloc_expr_for(ptr noundef %4305)
  %4307 = icmp eq ptr %4306, null
  br i1 %4307, label %4313, label %4308

4308:                                             ; preds = %4302
  %4309 = call fastcc ptr @create_expression_by_pieces(ptr noundef %4304, ptr noundef nonnull %4306, ptr noundef nonnull %3, ptr noundef %3710, ptr noundef null)
  %4310 = icmp eq ptr %4309, null
  br i1 %4310, label %4313, label %4311

4311:                                             ; preds = %4308
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %3710) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !474
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  %4312 = load ptr, ptr %3, align 8, !tbaa !311
  call void @gsi_insert_seq_before(ptr noundef nonnull %2, ptr noundef %4312, i32 noundef 1) #19
  br label %4313

4313:                                             ; preds = %4311, %4308, %4302
  %4314 = phi ptr [ %4309, %4311 ], [ null, %4302 ], [ null, %4308 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %4315

4315:                                             ; preds = %4271, %4313, %4299, %4280, %4276, %4269
  %4316 = phi ptr [ %4223, %4269 ], [ %4314, %4313 ], [ %4223, %4299 ], [ %4223, %4280 ], [ %4223, %4276 ], [ %4223, %4271 ]
  %4317 = icmp eq ptr %4316, null
  %4318 = icmp eq ptr %4316, %3788
  %4319 = or i1 %4317, %4318
  br i1 %4319, label %4400, label %4320, !prof !772

4320:                                             ; preds = %4315
  %4321 = icmp eq ptr %3947, null
  br i1 %4321, label %4329, label %4322, !prof !775

4322:                                             ; preds = %4320
  %4323 = load i64, ptr %3947, align 8
  %4324 = and i64 %4323, 65535
  %4325 = icmp eq i64 %4324, 141
  br i1 %4325, label %4326, label %4329, !prof !538

4326:                                             ; preds = %4322
  %4327 = call zeroext i8 @may_propagate_copy(ptr noundef nonnull %3947, ptr noundef nonnull %4316) #19
  %4328 = icmp eq i8 %4327, 0
  br i1 %4328, label %4400, label %4329

4329:                                             ; preds = %4326, %4322, %4320
  %4330 = icmp eq ptr %4316, %3947
  br i1 %4330, label %4331, label %4332, !prof !776

4331:                                             ; preds = %4329
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4209, ptr noundef nonnull @.str.1) #19
  br label %4332

4332:                                             ; preds = %4331, %4329
  %4333 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %4334 = icmp eq ptr %4333, null
  br i1 %4334, label %4348, label %4335, !prof !777

4335:                                             ; preds = %4332
  %4336 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %4337 = and i32 %4336, 8
  %4338 = icmp eq i32 %4337, 0
  br i1 %4338, label %4348, label %4339

4339:                                             ; preds = %4335
  %4340 = call i64 @fwrite(ptr nonnull @.str.57, i64 9, i64 1, ptr nonnull %4333)
  %4341 = load ptr, ptr @dump_file, align 8, !tbaa !311
  call void @print_gimple_expr(ptr noundef %4341, ptr noundef %3710, i32 noundef 0, i32 noundef 0) #19
  %4342 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %4343 = call i64 @fwrite(ptr nonnull @.str.58, i64 6, i64 1, ptr %4342)
  %4344 = load ptr, ptr @dump_file, align 8, !tbaa !311
  call void @print_generic_expr(ptr noundef %4344, ptr noundef nonnull %4316, i32 noundef 0) #19
  %4345 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %4346 = call i64 @fwrite(ptr nonnull @.str.59, i64 4, i64 1, ptr %4345)
  %4347 = load ptr, ptr @dump_file, align 8, !tbaa !311
  call void @print_gimple_stmt(ptr noundef %4347, ptr noundef %3710, i32 noundef 0, i32 noundef 0) #19
  br label %4348

4348:                                             ; preds = %4339, %4335, %4332
  %4349 = load i64, ptr %4316, align 8
  %4350 = and i64 %4349, 65535
  %4351 = icmp eq i64 %4350, 141
  br i1 %4351, label %4352, label %4357, !prof !777

4352:                                             ; preds = %4348
  %4353 = getelementptr inbounds %struct.tree_ssa_name, ptr %4316, i64 0, i32 2
  %4354 = load ptr, ptr %4353, align 8, !tbaa !322
  %4355 = load i32, ptr %4354, align 8
  %4356 = or i32 %4355, 2048
  store i32 %4356, ptr %4354, align 8
  br label %4357

4357:                                             ; preds = %4352, %4348
  br i1 %4321, label %4362, label %4358, !prof !775

4358:                                             ; preds = %4357
  %4359 = load i64, ptr %3947, align 8
  %4360 = and i64 %4359, 65535
  %4361 = icmp eq i64 %4360, 141
  br i1 %4361, label %4371, label %4362, !prof !538

4362:                                             ; preds = %4358, %4357
  %4363 = call fastcc ptr @gimple_expr_type(ptr noundef %3710)
  %4364 = getelementptr inbounds %struct.tree_common, ptr %4316, i64 0, i32 2
  %4365 = load ptr, ptr %4364, align 8, !tbaa !322
  %4366 = call zeroext i8 @useless_type_conversion_p(ptr noundef %4363, ptr noundef %4365) #19
  %4367 = icmp eq i8 %4366, 0
  br i1 %4367, label %4368, label %4371, !prof !776

4368:                                             ; preds = %4362
  %4369 = call fastcc ptr @gimple_expr_type(ptr noundef %3710)
  %4370 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %4369, ptr noundef nonnull %4316) #19
  br label %4371

4371:                                             ; preds = %4368, %4362, %4358
  %4372 = phi ptr [ %4316, %4362 ], [ %4370, %4368 ], [ %4316, %4358 ]
  %4373 = load i32, ptr @pre_stats, align 4, !tbaa !770
  %4374 = add nsw i32 %4373, 1
  store i32 %4374, ptr @pre_stats, align 4, !tbaa !770
  call void @propagate_tree_value_into_stmt(ptr noundef nonnull %5, ptr noundef %4372) #19
  %4375 = load ptr, ptr %5, align 8
  %4376 = load ptr, ptr %4375, align 8, !tbaa !476
  %4377 = load i32, ptr %4376, align 8
  %4378 = and i32 %4377, 255
  %4379 = add nsw i32 %4378, -10
  %4380 = icmp ult i32 %4379, -9
  br i1 %4380, label %4382, label %4381, !prof !776

4381:                                             ; preds = %4371
  call void @gimple_set_modified(ptr noundef nonnull %4376, i8 noundef zeroext 1) #19
  call void @update_stmt_operands(ptr noundef nonnull %4376) #19
  br label %4382

4382:                                             ; preds = %4381, %4371
  %4383 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef nonnull %4376, ptr noundef nonnull %4376) #19
  %4384 = icmp eq i8 %4383, 0
  br i1 %4384, label %4400, label %4385, !prof !777

4385:                                             ; preds = %4382
  %4386 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !311
  %4387 = getelementptr inbounds %struct.gimple_statement_base, ptr %4376, i64 0, i32 4
  %4388 = load ptr, ptr %4387, align 8, !tbaa !322
  %4389 = getelementptr inbounds %struct.basic_block_def, ptr %4388, i64 0, i32 9
  %4390 = load i32, ptr %4389, align 8, !tbaa !432
  %4391 = call zeroext i8 @bitmap_set_bit(ptr noundef %4386, i32 noundef %4390) #19
  %4392 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %4393 = icmp eq ptr %4392, null
  br i1 %4393, label %4400, label %4394

4394:                                             ; preds = %4385
  %4395 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %4396 = and i32 %4395, 8
  %4397 = icmp eq i32 %4396, 0
  br i1 %4397, label %4400, label %4398

4398:                                             ; preds = %4394
  %4399 = call i64 @fwrite(ptr nonnull @.str.60, i64 27, i64 1, ptr nonnull %4392)
  br label %4400

4400:                                             ; preds = %4326, %4398, %4394, %4385, %4382, %4315, %4268, %4259
  %4401 = phi ptr [ %3710, %4315 ], [ %4376, %4382 ], [ %4376, %4385 ], [ %4376, %4394 ], [ %4376, %4398 ], [ %4263, %4259 ], [ %4263, %4268 ], [ %3710, %4326 ]
  %4402 = phi i1 [ true, %4315 ], [ true, %4382 ], [ true, %4385 ], [ true, %4394 ], [ true, %4398 ], [ false, %4259 ], [ false, %4268 ], [ true, %4326 ]
  br i1 %4402, label %4715, label %4831, !prof !728

4403:                                             ; preds = %3784, %3765, %3761, %3737, %3732, %3729
  %4404 = call zeroext i8 @gimple_assign_single_p(ptr noundef %3710) #19
  %4405 = icmp eq i8 %4404, 0
  br i1 %4405, label %4554, label %4406, !prof !778

4406:                                             ; preds = %4403
  %4407 = load i32, ptr %3710, align 8
  %4408 = and i32 %4407, 255
  %4409 = add nsw i32 %4408, -10
  %4410 = icmp ult i32 %4409, -9
  br i1 %4410, label %4423, label %4411, !prof !779

4411:                                             ; preds = %4406
  %4412 = zext nneg i32 %4408 to i64
  %4413 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %4412
  %4414 = load i32, ptr %4413, align 4, !tbaa !326
  %4415 = zext i32 %4414 to i64
  %4416 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %4415
  %4417 = load i64, ptr %4416, align 8, !tbaa !379
  %4418 = icmp eq i64 %4417, 0
  br i1 %4418, label %4419, label %4420, !prof !779

4419:                                             ; preds = %4411
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %4420

4420:                                             ; preds = %4419, %4411
  %4421 = getelementptr inbounds i8, ptr %3710, i64 %4417
  %4422 = load ptr, ptr %4421, align 8, !tbaa !311
  br label %4423

4423:                                             ; preds = %4420, %4406
  %4424 = phi ptr [ %4422, %4420 ], [ null, %4406 ]
  %4425 = call zeroext i8 @is_gimple_reg(ptr noundef %4424) #19
  %4426 = icmp eq i8 %4425, 0
  br i1 %4426, label %4427, label %4554, !prof !780

4427:                                             ; preds = %4423
  %4428 = load i32, ptr %3710, align 8
  %4429 = and i32 %4428, 255
  %4430 = add nsw i32 %4429, -1
  %4431 = icmp ult i32 %4430, 9
  call void @llvm.assume(i1 %4431)
  %4432 = zext nneg i32 %4429 to i64
  %4433 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %4432
  %4434 = load i32, ptr %4433, align 4, !tbaa !326
  %4435 = zext i32 %4434 to i64
  %4436 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %4435
  %4437 = load i64, ptr %4436, align 8, !tbaa !379
  %4438 = icmp eq i64 %4437, 0
  br i1 %4438, label %4439, label %4440, !prof !781

4439:                                             ; preds = %4427
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %4440

4440:                                             ; preds = %4439, %4427
  %4441 = getelementptr inbounds i8, ptr %3710, i64 %4437
  %4442 = getelementptr inbounds ptr, ptr %4441, i64 1
  %4443 = load ptr, ptr %4442, align 8, !tbaa !311
  %4444 = load i64, ptr %4443, align 8
  %4445 = and i64 %4444, 65535
  %4446 = icmp eq i64 %4445, 141
  br i1 %4446, label %4469, label %4447, !prof !782

4447:                                             ; preds = %4440
  %4448 = load i32, ptr %3710, align 8
  %4449 = and i32 %4448, 255
  %4450 = add nsw i32 %4449, -10
  %4451 = icmp ult i32 %4450, -9
  br i1 %4451, label %4465, label %4452

4452:                                             ; preds = %4447
  %4453 = zext nneg i32 %4449 to i64
  %4454 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %4453
  %4455 = load i32, ptr %4454, align 4, !tbaa !326
  %4456 = zext i32 %4455 to i64
  %4457 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %4456
  %4458 = load i64, ptr %4457, align 8, !tbaa !379
  %4459 = icmp eq i64 %4458, 0
  br i1 %4459, label %4460, label %4461

4460:                                             ; preds = %4452
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %4461

4461:                                             ; preds = %4460, %4452
  %4462 = getelementptr inbounds i8, ptr %3710, i64 %4458
  %4463 = getelementptr inbounds ptr, ptr %4462, i64 1
  %4464 = load ptr, ptr %4463, align 8, !tbaa !311
  br label %4465

4465:                                             ; preds = %4461, %4447
  %4466 = phi ptr [ %4464, %4461 ], [ null, %4447 ]
  %4467 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %4466) #19
  %4468 = icmp eq i8 %4467, 0
  br i1 %4468, label %4554, label %4469

4469:                                             ; preds = %4465, %4440
  %4470 = load i32, ptr %3710, align 8
  %4471 = and i32 %4470, 255
  %4472 = add nsw i32 %4471, -10
  %4473 = icmp ult i32 %4472, -9
  br i1 %4473, label %4487, label %4474, !prof !781

4474:                                             ; preds = %4469
  %4475 = zext nneg i32 %4471 to i64
  %4476 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %4475
  %4477 = load i32, ptr %4476, align 4, !tbaa !326
  %4478 = zext i32 %4477 to i64
  %4479 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %4478
  %4480 = load i64, ptr %4479, align 8, !tbaa !379
  %4481 = icmp eq i64 %4480, 0
  br i1 %4481, label %4482, label %4483, !prof !781

4482:                                             ; preds = %4474
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %4483

4483:                                             ; preds = %4482, %4474
  %4484 = getelementptr inbounds i8, ptr %3710, i64 %4480
  %4485 = getelementptr inbounds ptr, ptr %4484, i64 1
  %4486 = load ptr, ptr %4485, align 8, !tbaa !311
  br label %4487

4487:                                             ; preds = %4483, %4469
  %4488 = phi ptr [ %4486, %4483 ], [ null, %4469 ]
  %4489 = load i32, ptr %3710, align 8
  %4490 = and i32 %4489, 255
  %4491 = add nsw i32 %4490, -10
  %4492 = icmp ult i32 %4491, -9
  br i1 %4492, label %4505, label %4493, !prof !781

4493:                                             ; preds = %4487
  %4494 = zext nneg i32 %4490 to i64
  %4495 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %4494
  %4496 = load i32, ptr %4495, align 4, !tbaa !326
  %4497 = zext i32 %4496 to i64
  %4498 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %4497
  %4499 = load i64, ptr %4498, align 8, !tbaa !379
  %4500 = icmp eq i64 %4499, 0
  br i1 %4500, label %4501, label %4502, !prof !781

4501:                                             ; preds = %4493
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %4502

4502:                                             ; preds = %4501, %4493
  %4503 = getelementptr inbounds i8, ptr %3710, i64 %4499
  %4504 = load ptr, ptr %4503, align 8, !tbaa !311
  br label %4505

4505:                                             ; preds = %4502, %4487
  %4506 = phi ptr [ %4504, %4502 ], [ null, %4487 ]
  %4507 = load i32, ptr %3710, align 8
  %4508 = and i32 %4507, 254
  %4509 = add nsw i32 %4508, -10
  %4510 = icmp ult i32 %4509, -4
  br i1 %4510, label %4514, label %4511, !prof !781

4511:                                             ; preds = %4505
  %4512 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %3710, i64 0, i32 2
  %4513 = load ptr, ptr %4512, align 8, !tbaa !322
  br label %4514

4514:                                             ; preds = %4511, %4505
  %4515 = phi ptr [ %4513, %4511 ], [ null, %4505 ]
  %4516 = call ptr @vn_reference_lookup(ptr noundef %4506, ptr noundef %4515, i8 noundef zeroext 1, ptr noundef null) #19
  %4517 = load i64, ptr %4488, align 8
  %4518 = and i64 %4517, 65535
  %4519 = icmp eq i64 %4518, 141
  br i1 %4519, label %4520, label %4523, !prof !782

4520:                                             ; preds = %4514
  %4521 = call ptr @VN_INFO(ptr noundef nonnull %4488) #19
  %4522 = load ptr, ptr %4521, align 8, !tbaa !769
  br label %4523

4523:                                             ; preds = %4520, %4514
  %4524 = phi ptr [ %4522, %4520 ], [ %4488, %4514 ]
  %4525 = icmp eq ptr %4516, null
  br i1 %4525, label %4715, label %4526, !prof !782

4526:                                             ; preds = %4523
  %4527 = call i32 @operand_equal_p(ptr noundef nonnull %4516, ptr noundef %4524, i32 noundef 0) #19
  %4528 = icmp eq i32 %4527, 0
  br i1 %4528, label %4715, label %4529

4529:                                             ; preds = %4526
  %4530 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %4531 = icmp eq ptr %4530, null
  br i1 %4531, label %4539, label %4532

4532:                                             ; preds = %4529
  %4533 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %4534 = and i32 %4533, 8
  %4535 = icmp eq i32 %4534, 0
  br i1 %4535, label %4539, label %4536

4536:                                             ; preds = %4532
  %4537 = call i64 @fwrite(ptr nonnull @.str.61, i64 24, i64 1, ptr nonnull %4530)
  %4538 = load ptr, ptr @dump_file, align 8, !tbaa !311
  call void @print_gimple_stmt(ptr noundef %4538, ptr noundef %3710, i32 noundef 0, i32 noundef 0) #19
  br label %4539

4539:                                             ; preds = %4536, %4532, %4529
  %4540 = icmp eq ptr %3709, null
  br i1 %4540, label %4546, label %4541

4541:                                             ; preds = %4539
  %4542 = getelementptr inbounds %struct.VEC_gimple_base, ptr %3709, i64 0, i32 1
  %4543 = load i32, ptr %4542, align 4, !tbaa !783
  %4544 = load i32, ptr %3709, align 8, !tbaa !785
  %4545 = icmp eq i32 %4543, %4544
  br i1 %4545, label %4546, label %4548

4546:                                             ; preds = %4541, %4539
  %4547 = call ptr @vec_heap_p_reserve(ptr noundef %3709, i32 noundef 1) #19
  br label %4548

4548:                                             ; preds = %4546, %4541
  %4549 = phi ptr [ %3709, %4541 ], [ %4547, %4546 ]
  %4550 = load i32, ptr %4549, align 8, !tbaa !785
  %4551 = add i32 %4550, 1
  store i32 %4551, ptr %4549, align 8, !tbaa !785
  %4552 = zext i32 %4550 to i64
  %4553 = getelementptr inbounds %struct.VEC_gimple_base, ptr %4549, i64 0, i32 2, i64 %4552
  store ptr %3710, ptr %4553, align 8, !tbaa !311
  br label %4715

4554:                                             ; preds = %4465, %4423, %4403
  %4555 = load i32, ptr %3710, align 8
  %4556 = and i32 %4555, 255
  %4557 = icmp eq i32 %4556, 1
  br i1 %4557, label %4558, label %4715, !prof !786

4558:                                             ; preds = %4554
  %4559 = zext nneg i32 %4556 to i64
  %4560 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %4559
  %4561 = load i32, ptr %4560, align 4, !tbaa !326
  %4562 = zext i32 %4561 to i64
  %4563 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %4562
  %4564 = load i64, ptr %4563, align 8, !tbaa !379
  %4565 = icmp eq i64 %4564, 0
  br i1 %4565, label %4566, label %4567, !prof !787

4566:                                             ; preds = %4558
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %4567

4567:                                             ; preds = %4566, %4558
  %4568 = getelementptr inbounds i8, ptr %3710, i64 %4564
  %4569 = load ptr, ptr %4568, align 8, !tbaa !311
  %4570 = load i32, ptr %3710, align 8
  %4571 = and i32 %4570, 255
  %4572 = add nsw i32 %4571, -10
  %4573 = icmp ult i32 %4572, -9
  br i1 %4573, label %4587, label %4574, !prof !787

4574:                                             ; preds = %4567
  %4575 = zext nneg i32 %4571 to i64
  %4576 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %4575
  %4577 = load i32, ptr %4576, align 4, !tbaa !326
  %4578 = zext i32 %4577 to i64
  %4579 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %4578
  %4580 = load i64, ptr %4579, align 8, !tbaa !379
  %4581 = icmp eq i64 %4580, 0
  br i1 %4581, label %4582, label %4583, !prof !787

4582:                                             ; preds = %4574
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %4583

4583:                                             ; preds = %4582, %4574
  %4584 = getelementptr inbounds i8, ptr %3710, i64 %4580
  %4585 = getelementptr inbounds ptr, ptr %4584, i64 1
  %4586 = load ptr, ptr %4585, align 8, !tbaa !311
  br label %4587

4587:                                             ; preds = %4583, %4567
  %4588 = phi ptr [ %4586, %4583 ], [ null, %4567 ]
  %4589 = load i64, ptr %4569, align 8
  %4590 = and i64 %4589, 65535
  %4591 = icmp eq i64 %4590, 141
  br i1 %4591, label %4592, label %4595, !prof !788

4592:                                             ; preds = %4587
  %4593 = call ptr @VN_INFO(ptr noundef nonnull %4569) #19
  %4594 = load ptr, ptr %4593, align 8, !tbaa !769
  br label %4595

4595:                                             ; preds = %4592, %4587
  %4596 = phi ptr [ %4594, %4592 ], [ %4569, %4587 ]
  %4597 = load i64, ptr %4588, align 8
  %4598 = and i64 %4597, 65535
  %4599 = icmp eq i64 %4598, 141
  br i1 %4599, label %4600, label %4603, !prof !787

4600:                                             ; preds = %4595
  %4601 = call ptr @VN_INFO(ptr noundef nonnull %4588) #19
  %4602 = load ptr, ptr %4601, align 8, !tbaa !769
  br label %4603

4603:                                             ; preds = %4600, %4595
  %4604 = phi ptr [ %4602, %4600 ], [ %4588, %4595 ]
  %4605 = load i32, ptr %3710, align 8
  %4606 = lshr i32 %4605, 16
  %4607 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !311
  %4608 = call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %4606, ptr noundef %4607, ptr noundef %4596, ptr noundef %4604) #19
  %4609 = icmp eq ptr %4608, null
  br i1 %4609, label %4715, label %4610, !prof !789

4610:                                             ; preds = %4603
  %4611 = load i64, ptr %4608, align 8
  %4612 = and i64 %4611, 65535
  %4613 = icmp eq i64 %4612, 23
  br i1 %4613, label %4614, label %4715, !prof !790

4614:                                             ; preds = %4610
  %4615 = call i32 @integer_zerop(ptr noundef nonnull %4608) #19
  %4616 = icmp eq i32 %4615, 0
  %4617 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !311
  %4618 = load i32, ptr %3710, align 8
  %4619 = and i32 %4618, 255
  %4620 = add nsw i32 %4619, -10
  %4621 = icmp ult i32 %4620, -9
  br i1 %4616, label %4661, label %4622

4622:                                             ; preds = %4614
  br i1 %4621, label %4627, label %4623

4623:                                             ; preds = %4622
  %4624 = getelementptr inbounds %struct.gimple_statement_base, ptr %3710, i64 0, i32 3
  %4625 = load i32, ptr %4624, align 4, !tbaa !322
  %4626 = icmp eq i32 %4625, 0
  br i1 %4626, label %4627, label %4628

4627:                                             ; preds = %4623, %4622
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %4628

4628:                                             ; preds = %4627, %4623
  %4629 = load i32, ptr %3710, align 8
  %4630 = and i32 %4629, 255
  %4631 = zext nneg i32 %4630 to i64
  %4632 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %4631
  %4633 = load i32, ptr %4632, align 4, !tbaa !326
  %4634 = zext i32 %4633 to i64
  %4635 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %4634
  %4636 = load i64, ptr %4635, align 8, !tbaa !379
  %4637 = icmp eq i64 %4636, 0
  br i1 %4637, label %4638, label %4639

4638:                                             ; preds = %4628
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %4639

4639:                                             ; preds = %4638, %4628
  %4640 = getelementptr inbounds i8, ptr %3710, i64 %4636
  store ptr %4617, ptr %4640, align 8, !tbaa !311
  %4641 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !311
  %4642 = load i32, ptr %3710, align 8
  %4643 = and i32 %4642, 255
  %4644 = add nsw i32 %4643, -10
  %4645 = icmp ult i32 %4644, -9
  br i1 %4645, label %4650, label %4646

4646:                                             ; preds = %4639
  %4647 = getelementptr inbounds %struct.gimple_statement_base, ptr %3710, i64 0, i32 3
  %4648 = load i32, ptr %4647, align 4, !tbaa !322
  %4649 = icmp ugt i32 %4648, 1
  br i1 %4649, label %4651, label %4650

4650:                                             ; preds = %4646, %4639
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %4651

4651:                                             ; preds = %4650, %4646
  %4652 = load i32, ptr %3710, align 8
  %4653 = and i32 %4652, 255
  %4654 = zext nneg i32 %4653 to i64
  %4655 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %4654
  %4656 = load i32, ptr %4655, align 4, !tbaa !326
  %4657 = zext i32 %4656 to i64
  %4658 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %4657
  %4659 = load i64, ptr %4658, align 8, !tbaa !379
  %4660 = icmp eq i64 %4659, 0
  br i1 %4660, label %4700, label %4703

4661:                                             ; preds = %4614
  br i1 %4621, label %4666, label %4662

4662:                                             ; preds = %4661
  %4663 = getelementptr inbounds %struct.gimple_statement_base, ptr %3710, i64 0, i32 3
  %4664 = load i32, ptr %4663, align 4, !tbaa !322
  %4665 = icmp eq i32 %4664, 0
  br i1 %4665, label %4666, label %4667

4666:                                             ; preds = %4662, %4661
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %4667

4667:                                             ; preds = %4666, %4662
  %4668 = load i32, ptr %3710, align 8
  %4669 = and i32 %4668, 255
  %4670 = zext nneg i32 %4669 to i64
  %4671 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %4670
  %4672 = load i32, ptr %4671, align 4, !tbaa !326
  %4673 = zext i32 %4672 to i64
  %4674 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %4673
  %4675 = load i64, ptr %4674, align 8, !tbaa !379
  %4676 = icmp eq i64 %4675, 0
  br i1 %4676, label %4677, label %4678

4677:                                             ; preds = %4667
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %4678

4678:                                             ; preds = %4677, %4667
  %4679 = getelementptr inbounds i8, ptr %3710, i64 %4675
  store ptr %4617, ptr %4679, align 8, !tbaa !311
  %4680 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !311
  %4681 = load i32, ptr %3710, align 8
  %4682 = and i32 %4681, 255
  %4683 = add nsw i32 %4682, -10
  %4684 = icmp ult i32 %4683, -9
  br i1 %4684, label %4689, label %4685

4685:                                             ; preds = %4678
  %4686 = getelementptr inbounds %struct.gimple_statement_base, ptr %3710, i64 0, i32 3
  %4687 = load i32, ptr %4686, align 4, !tbaa !322
  %4688 = icmp ugt i32 %4687, 1
  br i1 %4688, label %4690, label %4689

4689:                                             ; preds = %4685, %4678
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %4690

4690:                                             ; preds = %4689, %4685
  %4691 = load i32, ptr %3710, align 8
  %4692 = and i32 %4691, 255
  %4693 = zext nneg i32 %4692 to i64
  %4694 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %4693
  %4695 = load i32, ptr %4694, align 4, !tbaa !326
  %4696 = zext i32 %4695 to i64
  %4697 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %4696
  %4698 = load i64, ptr %4697, align 8, !tbaa !379
  %4699 = icmp eq i64 %4698, 0
  br i1 %4699, label %4700, label %4703

4700:                                             ; preds = %4690, %4651
  %4701 = phi i64 [ %4659, %4651 ], [ %4698, %4690 ]
  %4702 = phi ptr [ %4641, %4651 ], [ %4680, %4690 ]
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %4703

4703:                                             ; preds = %4700, %4690, %4651
  %4704 = phi i64 [ %4659, %4651 ], [ %4698, %4690 ], [ %4701, %4700 ]
  %4705 = phi ptr [ %4641, %4651 ], [ %4680, %4690 ], [ %4702, %4700 ]
  %4706 = getelementptr inbounds i8, ptr %3710, i64 %4704
  %4707 = getelementptr inbounds ptr, ptr %4706, i64 1
  store ptr %4705, ptr %4707, align 8, !tbaa !311
  %4708 = load i32, ptr %3710, align 8
  %4709 = and i32 %4708, 65535
  %4710 = or disjoint i32 %4709, 6619136
  store i32 %4710, ptr %3710, align 8
  %4711 = and i32 %4708, 255
  %4712 = add nsw i32 %4711, -10
  %4713 = icmp ult i32 %4712, -9
  br i1 %4713, label %4715, label %4714

4714:                                             ; preds = %4703
  call void @gimple_set_modified(ptr noundef nonnull %3710, i8 noundef zeroext 1) #19
  call void @update_stmt_operands(ptr noundef nonnull %3710) #19
  br label %4715

4715:                                             ; preds = %4714, %4703, %4610, %4603, %4554, %4548, %4526, %4523, %4400
  %4716 = phi ptr [ %3710, %4603 ], [ %3710, %4610 ], [ %3710, %4554 ], [ %3710, %4523 ], [ %3710, %4526 ], [ %3710, %4548 ], [ %4401, %4400 ], [ %3710, %4703 ], [ %3710, %4714 ]
  %4717 = phi ptr [ %3709, %4603 ], [ %3709, %4610 ], [ %3709, %4554 ], [ %3709, %4523 ], [ %3709, %4526 ], [ %4549, %4548 ], [ %3709, %4400 ], [ %3709, %4703 ], [ %3709, %4714 ]
  %4718 = phi i32 [ %3708, %4603 ], [ %3708, %4610 ], [ %3708, %4554 ], [ %3708, %4523 ], [ %3708, %4526 ], [ %3708, %4548 ], [ %3708, %4400 ], [ 32, %4703 ], [ 32, %4714 ]
  %4719 = load i32, ptr %4716, align 8
  %4720 = and i32 %4719, 255
  %4721 = icmp eq i32 %4720, 8
  br i1 %4721, label %4722, label %4831, !prof !498

4722:                                             ; preds = %4715
  %4723 = zext nneg i32 %4720 to i64
  %4724 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %4723
  %4725 = load i32, ptr %4724, align 4, !tbaa !326
  %4726 = zext i32 %4725 to i64
  %4727 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %4726
  %4728 = load i64, ptr %4727, align 8, !tbaa !379
  %4729 = icmp eq i64 %4728, 0
  br i1 %4729, label %4730, label %4731, !prof !719

4730:                                             ; preds = %4722
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %4731

4731:                                             ; preds = %4730, %4722
  %4732 = getelementptr inbounds i8, ptr %4716, i64 %4728
  %4733 = getelementptr inbounds ptr, ptr %4732, i64 1
  %4734 = load ptr, ptr %4733, align 8, !tbaa !311
  %4735 = load i64, ptr %4734, align 8
  %4736 = and i64 %4735, 65535
  %4737 = icmp eq i64 %4736, 141
  br i1 %4737, label %4738, label %4831, !prof !719

4738:                                             ; preds = %4731
  %4739 = load i32, ptr %4716, align 8
  %4740 = and i32 %4739, 255
  %4741 = add nsw i32 %4740, -10
  %4742 = icmp ult i32 %4741, -9
  br i1 %4742, label %4756, label %4743

4743:                                             ; preds = %4738
  %4744 = zext nneg i32 %4740 to i64
  %4745 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %4744
  %4746 = load i32, ptr %4745, align 4, !tbaa !326
  %4747 = zext i32 %4746 to i64
  %4748 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %4747
  %4749 = load i64, ptr %4748, align 8, !tbaa !379
  %4750 = icmp eq i64 %4749, 0
  br i1 %4750, label %4751, label %4752

4751:                                             ; preds = %4743
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %4752

4752:                                             ; preds = %4751, %4743
  %4753 = getelementptr inbounds i8, ptr %4716, i64 %4749
  %4754 = getelementptr inbounds ptr, ptr %4753, i64 1
  %4755 = load ptr, ptr %4754, align 8, !tbaa !311
  br label %4756

4756:                                             ; preds = %4752, %4738
  %4757 = phi ptr [ %4755, %4752 ], [ null, %4738 ]
  %4758 = call ptr @VN_INFO(ptr noundef %4757) #19
  %4759 = load ptr, ptr %4758, align 8, !tbaa !769
  %4760 = load i64, ptr %4759, align 8
  %4761 = and i64 %4760, 65535
  %4762 = icmp eq i64 %4761, 121
  br i1 %4762, label %4763, label %4831

4763:                                             ; preds = %4756
  %4764 = getelementptr inbounds %struct.tree_exp, ptr %4759, i64 0, i32 3
  %4765 = load ptr, ptr %4764, align 8, !tbaa !322
  %4766 = load i64, ptr %4765, align 8
  %4767 = and i64 %4766, 65535
  %4768 = icmp eq i64 %4767, 29
  br i1 %4768, label %4769, label %4831

4769:                                             ; preds = %4763
  %4770 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %4771 = icmp eq ptr %4770, null
  br i1 %4771, label %4782, label %4772

4772:                                             ; preds = %4769
  %4773 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %4774 = and i32 %4773, 8
  %4775 = icmp eq i32 %4774, 0
  br i1 %4775, label %4782, label %4776

4776:                                             ; preds = %4772
  %4777 = call i64 @fwrite(ptr nonnull @.str.62, i64 27, i64 1, ptr nonnull %4770)
  %4778 = load ptr, ptr @dump_file, align 8, !tbaa !311
  call void @print_generic_expr(ptr noundef %4778, ptr noundef nonnull %4759, i32 noundef 0) #19
  %4779 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %4780 = call i64 @fwrite(ptr nonnull @.str.59, i64 4, i64 1, ptr %4779)
  %4781 = load ptr, ptr @dump_file, align 8, !tbaa !311
  call void @print_gimple_stmt(ptr noundef %4781, ptr noundef nonnull %4716, i32 noundef 0, i32 noundef 0) #19
  br label %4782

4782:                                             ; preds = %4776, %4772, %4769
  %4783 = load i32, ptr %4716, align 8
  %4784 = and i32 %4783, 255
  %4785 = add nsw i32 %4784, -10
  %4786 = icmp ult i32 %4785, -9
  br i1 %4786, label %4791, label %4787

4787:                                             ; preds = %4782
  %4788 = getelementptr inbounds %struct.gimple_statement_base, ptr %4716, i64 0, i32 3
  %4789 = load i32, ptr %4788, align 4, !tbaa !322
  %4790 = icmp ugt i32 %4789, 1
  br i1 %4790, label %4792, label %4791

4791:                                             ; preds = %4787, %4782
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %4792

4792:                                             ; preds = %4791, %4787
  %4793 = load i32, ptr %4716, align 8
  %4794 = and i32 %4793, 255
  %4795 = zext nneg i32 %4794 to i64
  %4796 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %4795
  %4797 = load i32, ptr %4796, align 4, !tbaa !326
  %4798 = zext i32 %4797 to i64
  %4799 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %4798
  %4800 = load i64, ptr %4799, align 8, !tbaa !379
  %4801 = icmp eq i64 %4800, 0
  br i1 %4801, label %4802, label %4803

4802:                                             ; preds = %4792
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %4803

4803:                                             ; preds = %4802, %4792
  %4804 = getelementptr inbounds i8, ptr %4716, i64 %4800
  %4805 = getelementptr inbounds ptr, ptr %4804, i64 1
  store ptr %4759, ptr %4805, align 8, !tbaa !311
  %4806 = load i32, ptr %4716, align 8
  %4807 = and i32 %4806, 255
  %4808 = add nsw i32 %4807, -10
  %4809 = icmp ult i32 %4808, -9
  br i1 %4809, label %4811, label %4810

4810:                                             ; preds = %4803
  call void @gimple_set_modified(ptr noundef nonnull %4716, i8 noundef zeroext 1) #19
  call void @update_stmt_operands(ptr noundef nonnull %4716) #19
  br label %4811

4811:                                             ; preds = %4810, %4803
  %4812 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef nonnull %4716, ptr noundef nonnull %4716) #19
  %4813 = icmp eq i8 %4812, 0
  br i1 %4813, label %4829, label %4814

4814:                                             ; preds = %4811
  %4815 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !311
  %4816 = getelementptr inbounds %struct.gimple_statement_base, ptr %4716, i64 0, i32 4
  %4817 = load ptr, ptr %4816, align 8, !tbaa !322
  %4818 = getelementptr inbounds %struct.basic_block_def, ptr %4817, i64 0, i32 9
  %4819 = load i32, ptr %4818, align 8, !tbaa !432
  %4820 = call zeroext i8 @bitmap_set_bit(ptr noundef %4815, i32 noundef %4819) #19
  %4821 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %4822 = icmp eq ptr %4821, null
  br i1 %4822, label %4829, label %4823

4823:                                             ; preds = %4814
  %4824 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %4825 = and i32 %4824, 8
  %4826 = icmp eq i32 %4825, 0
  br i1 %4826, label %4829, label %4827

4827:                                             ; preds = %4823
  %4828 = call i64 @fwrite(ptr nonnull @.str.60, i64 27, i64 1, ptr nonnull %4821)
  br label %4829

4829:                                             ; preds = %4827, %4823, %4814, %4811
  %4830 = or i32 %4718, 16384
  br label %4831

4831:                                             ; preds = %4400, %4829, %4763, %4756, %4731, %4715
  %4832 = phi ptr [ %4717, %4829 ], [ %4717, %4763 ], [ %4717, %4756 ], [ %4717, %4731 ], [ %4717, %4715 ], [ %3709, %4400 ]
  %4833 = phi i32 [ %4830, %4829 ], [ %4718, %4763 ], [ %4718, %4756 ], [ %4718, %4731 ], [ %4718, %4715 ], [ %3708, %4400 ]
  %4834 = load ptr, ptr %5, align 8, !tbaa !791
  %4835 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4834, i64 0, i32 2
  %4836 = load ptr, ptr %4835, align 8, !tbaa !486
  store ptr %4836, ptr %5, align 8, !tbaa !791
  %4837 = icmp eq ptr %4836, null
  br i1 %4837, label %4838, label %3706, !prof !567, !llvm.loop !793

4838:                                             ; preds = %4831, %3703
  %4839 = phi ptr [ %3687, %3703 ], [ %4832, %4831 ]
  %4840 = phi i32 [ %3686, %3703 ], [ %4833, %4831 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %3685) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !474
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  %4841 = load ptr, ptr %5, align 8
  %4842 = icmp eq ptr %4841, null
  br i1 %4842, label %3670, label %4843, !prof !794

4843:                                             ; preds = %4838, %5001
  %4844 = phi ptr [ %5003, %5001 ], [ %4841, %4838 ]
  %4845 = phi ptr [ %5002, %5001 ], [ %4839, %4838 ]
  %4846 = load ptr, ptr %4844, align 8, !tbaa !476
  %4847 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4846, i64 0, i32 3
  %4848 = load ptr, ptr %4847, align 8, !tbaa !311
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  %4849 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4846, i64 0, i32 2
  %4850 = load i32, ptr %4849, align 4, !tbaa !322
  %4851 = icmp eq i32 %4850, 1
  br i1 %4851, label %4861, label %4852, !prof !795

4852:                                             ; preds = %4843
  %4853 = call zeroext i8 @is_gimple_reg(ptr noundef %4848) #19
  %4854 = icmp eq i8 %4853, 0
  br i1 %4854, label %4861, label %4855, !prof !796

4855:                                             ; preds = %4852
  %4856 = load ptr, ptr @inserted_phi_names, align 8, !tbaa !311
  %4857 = getelementptr inbounds %struct.tree_ssa_name, ptr %4848, i64 0, i32 3
  %4858 = load i32, ptr %4857, align 8, !tbaa !322
  %4859 = call i32 @bitmap_bit_p(ptr noundef %4856, i32 noundef %4858) #19
  %4860 = icmp eq i32 %4859, 0
  br i1 %4860, label %4865, label %4861, !prof !797

4861:                                             ; preds = %4855, %4852, %4843
  %4862 = load ptr, ptr %5, align 8, !tbaa !791
  %4863 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4862, i64 0, i32 2
  %4864 = load ptr, ptr %4863, align 8, !tbaa !486
  store ptr %4864, ptr %5, align 8, !tbaa !791
  br label %5001, !llvm.loop !798

4865:                                             ; preds = %4855
  %4866 = getelementptr inbounds %struct.basic_block_def, ptr %3685, i64 0, i32 2
  %4867 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %4848)
  %4868 = load ptr, ptr %4866, align 8, !tbaa !450
  %4869 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %4868, i64 0, i32 3
  %4870 = load ptr, ptr %4869, align 8, !tbaa !457
  %4871 = load i32, ptr %4867, align 8, !tbaa !331
  switch i32 %4871, label %4894 [
    i32 3, label %4872
    i32 0, label %4880
    i32 1, label %4886
    i32 2, label %4890
  ], !prof !333

4872:                                             ; preds = %4865
  %4873 = getelementptr inbounds %struct.pre_expr_d, ptr %4867, i64 0, i32 2
  %4874 = load ptr, ptr %4873, align 8, !tbaa !322
  %4875 = call i32 @get_constant_value_id(ptr noundef %4874) #19
  %4876 = icmp eq i32 %4875, 0
  br i1 %4876, label %4877, label %4895, !prof !334

4877:                                             ; preds = %4872
  %4878 = load ptr, ptr %4873, align 8, !tbaa !322
  %4879 = call i32 @get_or_alloc_constant_value_id(ptr noundef %4878) #19
  call void @add_to_value(i32 noundef %4879, ptr noundef nonnull %4867)
  br label %4895

4880:                                             ; preds = %4865
  %4881 = getelementptr inbounds %struct.pre_expr_d, ptr %4867, i64 0, i32 2
  %4882 = load ptr, ptr %4881, align 8, !tbaa !322
  %4883 = call ptr @VN_INFO(ptr noundef %4882) #19
  %4884 = getelementptr inbounds %struct.vn_ssa_aux, ptr %4883, i64 0, i32 2
  %4885 = load i32, ptr %4884, align 8, !tbaa !335
  br label %4895

4886:                                             ; preds = %4865
  %4887 = getelementptr inbounds %struct.pre_expr_d, ptr %4867, i64 0, i32 2
  %4888 = load ptr, ptr %4887, align 8, !tbaa !322
  %4889 = load i32, ptr %4888, align 8, !tbaa !337
  br label %4895

4890:                                             ; preds = %4865
  %4891 = getelementptr inbounds %struct.pre_expr_d, ptr %4867, i64 0, i32 2
  %4892 = load ptr, ptr %4891, align 8, !tbaa !322
  %4893 = load i32, ptr %4892, align 8, !tbaa !339
  br label %4895

4894:                                             ; preds = %4865
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %4895

4895:                                             ; preds = %4872, %4877, %4880, %4886, %4890, %4894
  %4896 = phi i32 [ 0, %4894 ], [ %4893, %4890 ], [ %4889, %4886 ], [ %4885, %4880 ], [ %4879, %4877 ], [ %4875, %4872 ]
  %4897 = call fastcc ptr @bitmap_find_leader(ptr noundef %4870, i32 noundef %4896, ptr noundef null)
  %4898 = icmp eq ptr %4897, null
  br i1 %4898, label %4908, label %4899, !prof !799

4899:                                             ; preds = %4895
  %4900 = load i32, ptr %4897, align 8, !tbaa !331
  switch i32 %4900, label %4907 [
    i32 3, label %4901
    i32 0, label %4904
  ], !prof !800

4901:                                             ; preds = %4899
  %4902 = getelementptr inbounds %struct.pre_expr_d, ptr %4897, i64 0, i32 2
  %4903 = load ptr, ptr %4902, align 8, !tbaa !322
  br label %4908

4904:                                             ; preds = %4899
  %4905 = getelementptr inbounds %struct.pre_expr_d, ptr %4897, i64 0, i32 2
  %4906 = load ptr, ptr %4905, align 8, !tbaa !322
  br label %4908

4907:                                             ; preds = %4899
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4362, ptr noundef nonnull @.str.1) #19
  br label %4908

4908:                                             ; preds = %4907, %4904, %4901, %4895
  %4909 = phi ptr [ %4903, %4901 ], [ %4906, %4904 ], [ null, %4907 ], [ null, %4895 ]
  %4910 = icmp eq ptr %4909, %4848
  %4911 = select i1 %4898, i1 true, i1 %4910, !prof !799
  br i1 %4911, label %4912, label %4916, !prof !801

4912:                                             ; preds = %4908
  %4913 = load ptr, ptr %5, align 8, !tbaa !791
  %4914 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4913, i64 0, i32 2
  %4915 = load ptr, ptr %4914, align 8, !tbaa !486
  store ptr %4915, ptr %5, align 8, !tbaa !791
  br label %5001, !llvm.loop !798

4916:                                             ; preds = %4908
  %4917 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %4918 = icmp eq ptr %4917, null
  br i1 %4918, label %4931, label %4919

4919:                                             ; preds = %4916
  %4920 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %4921 = and i32 %4920, 8
  %4922 = icmp eq i32 %4921, 0
  br i1 %4922, label %4931, label %4923

4923:                                             ; preds = %4919
  %4924 = call i64 @fwrite(ptr nonnull @.str.63, i64 37, i64 1, ptr nonnull %4917)
  %4925 = load ptr, ptr @dump_file, align 8, !tbaa !311
  call void @print_generic_expr(ptr noundef %4925, ptr noundef %4848, i32 noundef 0) #19
  %4926 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %4927 = call i64 @fwrite(ptr nonnull @.str.58, i64 6, i64 1, ptr %4926)
  %4928 = load ptr, ptr @dump_file, align 8, !tbaa !311
  call void @print_generic_expr(ptr noundef %4928, ptr noundef %4909, i32 noundef 0) #19
  %4929 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %4930 = call i32 @fputc(i32 10, ptr %4929)
  br label %4931

4931:                                             ; preds = %4923, %4919, %4916
  call void @remove_phi_node(ptr noundef nonnull %5, i8 noundef zeroext 0) #19
  %4932 = getelementptr inbounds %struct.tree_common, ptr %4848, i64 0, i32 2
  %4933 = load ptr, ptr %4932, align 8, !tbaa !322
  %4934 = getelementptr inbounds %struct.tree_common, ptr %4909, i64 0, i32 2
  %4935 = load ptr, ptr %4934, align 8, !tbaa !322
  %4936 = call zeroext i8 @useless_type_conversion_p(ptr noundef %4933, ptr noundef %4935) #19
  %4937 = icmp eq i8 %4936, 0
  br i1 %4937, label %4938, label %4941

4938:                                             ; preds = %4931
  %4939 = load ptr, ptr %4932, align 8, !tbaa !322
  %4940 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %4939, ptr noundef %4909) #19
  br label %4941

4941:                                             ; preds = %4938, %4931
  %4942 = phi ptr [ %4909, %4931 ], [ %4940, %4938 ]
  %4943 = call ptr @gimple_build_assign_stat(ptr noundef %4848, ptr noundef %4942) #19
  %4944 = getelementptr inbounds %struct.tree_ssa_name, ptr %4848, i64 0, i32 2
  store ptr %4943, ptr %4944, align 8, !tbaa !322
  %4945 = load i64, ptr %4942, align 8
  %4946 = and i64 %4945, 65535
  %4947 = icmp eq i64 %4946, 141
  br i1 %4947, label %4948, label %4953

4948:                                             ; preds = %4941
  %4949 = getelementptr inbounds %struct.tree_ssa_name, ptr %4942, i64 0, i32 2
  %4950 = load ptr, ptr %4949, align 8, !tbaa !322
  %4951 = load i32, ptr %4950, align 8
  %4952 = or i32 %4951, 2048
  store i32 %4952, ptr %4950, align 8
  br label %4953

4953:                                             ; preds = %4948, %4941
  %4954 = load i32, ptr %3688, align 8, !tbaa !489, !noalias !802
  %4955 = and i32 %4954, 512
  %4956 = icmp eq i32 %4955, 0
  br i1 %4956, label %4957, label %4963

4957:                                             ; preds = %4953
  %4958 = getelementptr inbounds %struct.basic_block_def, ptr %3685, i64 0, i32 7
  %4959 = load ptr, ptr %4958, align 8, !tbaa !322, !noalias !802
  %4960 = icmp eq ptr %4959, null
  br i1 %4960, label %4963, label %4961

4961:                                             ; preds = %4957
  %4962 = load ptr, ptr %4959, align 8, !tbaa !493, !noalias !802
  br label %4963

4963:                                             ; preds = %4961, %4957, %4953
  %4964 = phi ptr [ %4962, %4961 ], [ null, %4957 ], [ null, %4953 ]
  %4965 = icmp eq ptr %4964, null
  br i1 %4965, label %4968, label %4966

4966:                                             ; preds = %4963
  %4967 = load ptr, ptr %4964, align 8, !tbaa !495, !noalias !802
  br label %4968

4968:                                             ; preds = %4966, %4963
  %4969 = phi ptr [ %4967, %4966 ], [ null, %4963 ]
  %4970 = icmp eq ptr %4969, null
  br i1 %4970, label %4981, label %4971

4971:                                             ; preds = %4968, %4977
  %4972 = phi ptr [ %4979, %4977 ], [ %4969, %4968 ]
  %4973 = load ptr, ptr %4972, align 8, !tbaa !476, !noalias !807
  %4974 = load i32, ptr %4973, align 8, !noalias !807
  %4975 = and i32 %4974, 255
  %4976 = icmp eq i32 %4975, 4
  br i1 %4976, label %4977, label %4981

4977:                                             ; preds = %4971
  %4978 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4972, i64 0, i32 2
  %4979 = load ptr, ptr %4978, align 8, !tbaa !486, !noalias !807
  %4980 = icmp eq ptr %4979, null
  br i1 %4980, label %4981, label %4971, !llvm.loop !808

4981:                                             ; preds = %4977, %4971, %4968
  %4982 = phi ptr [ %4969, %4968 ], [ %4979, %4977 ], [ %4972, %4971 ]
  %4983 = getelementptr inbounds i8, ptr %7, i64 8
  %4984 = getelementptr inbounds i8, ptr %7, i64 16
  store ptr %4982, ptr %7, align 8, !tbaa.struct !474
  store ptr %4964, ptr %4983, align 8, !tbaa.struct !717
  store ptr %3685, ptr %4984, align 8, !tbaa.struct !425
  call void @gsi_insert_before(ptr noundef nonnull %7, ptr noundef %4943, i32 noundef 0) #19
  %4985 = icmp eq ptr %4845, null
  br i1 %4985, label %4991, label %4986

4986:                                             ; preds = %4981
  %4987 = getelementptr inbounds %struct.VEC_gimple_base, ptr %4845, i64 0, i32 1
  %4988 = load i32, ptr %4987, align 4, !tbaa !783
  %4989 = load i32, ptr %4845, align 8, !tbaa !785
  %4990 = icmp eq i32 %4988, %4989
  br i1 %4990, label %4991, label %4993

4991:                                             ; preds = %4986, %4981
  %4992 = call ptr @vec_heap_p_reserve(ptr noundef %4845, i32 noundef 1) #19
  br label %4993

4993:                                             ; preds = %4991, %4986
  %4994 = phi ptr [ %4845, %4986 ], [ %4992, %4991 ]
  %4995 = load i32, ptr %4994, align 8, !tbaa !785
  %4996 = add i32 %4995, 1
  store i32 %4996, ptr %4994, align 8, !tbaa !785
  %4997 = zext i32 %4995 to i64
  %4998 = getelementptr inbounds %struct.VEC_gimple_base, ptr %4994, i64 0, i32 2, i64 %4997
  store ptr %4943, ptr %4998, align 8, !tbaa !311
  %4999 = load i32, ptr @pre_stats, align 4, !tbaa !770
  %5000 = add nsw i32 %4999, 1
  store i32 %5000, ptr @pre_stats, align 4, !tbaa !770
  br label %5001

5001:                                             ; preds = %4993, %4912, %4861
  %5002 = phi ptr [ %4845, %4861 ], [ %4845, %4912 ], [ %4994, %4993 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  %5003 = load ptr, ptr %5, align 8
  %5004 = icmp eq ptr %5003, null
  br i1 %5004, label %3670, label %4843, !prof !809

5005:                                             ; preds = %3680, %5162
  %5006 = phi i32 [ %5163, %5162 ], [ 0, %3680 ]
  br i1 %3683, label %5014, label %5007, !prof !415

5007:                                             ; preds = %5005
  %5008 = load i32, ptr %3681, align 8, !tbaa !785
  %5009 = icmp ugt i32 %5008, %5006
  br i1 %5009, label %5010, label %5014

5010:                                             ; preds = %5007
  %5011 = zext i32 %5006 to i64
  %5012 = getelementptr inbounds %struct.VEC_gimple_base, ptr %3681, i64 0, i32 2, i64 %5011
  %5013 = load ptr, ptr %5012, align 8, !tbaa !311
  br label %5014

5014:                                             ; preds = %5010, %5007, %5005
  %5015 = phi ptr [ %5013, %5010 ], [ null, %5007 ], [ null, %5005 ]
  %5016 = phi i1 [ false, %5010 ], [ true, %5007 ], [ true, %5005 ]
  br i1 %5016, label %5164, label %5017, !prof !415

5017:                                             ; preds = %5014
  %5018 = load i32, ptr %5015, align 8
  %5019 = and i32 %5018, 255
  %5020 = add nsw i32 %5019, -10
  %5021 = icmp ult i32 %5020, -9
  br i1 %5021, label %5034, label %5022

5022:                                             ; preds = %5017
  %5023 = zext nneg i32 %5019 to i64
  %5024 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %5023
  %5025 = load i32, ptr %5024, align 4, !tbaa !326
  %5026 = zext i32 %5025 to i64
  %5027 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %5026
  %5028 = load i64, ptr %5027, align 8, !tbaa !379
  %5029 = icmp eq i64 %5028, 0
  br i1 %5029, label %5030, label %5031

5030:                                             ; preds = %5022
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %5031

5031:                                             ; preds = %5030, %5022
  %5032 = getelementptr inbounds i8, ptr %5015, i64 %5028
  %5033 = load ptr, ptr %5032, align 8, !tbaa !311
  br label %5034

5034:                                             ; preds = %5031, %5017
  %5035 = phi ptr [ %5033, %5031 ], [ null, %5017 ]
  %5036 = load i32, ptr %5015, align 8
  %5037 = and i32 %5036, 255
  %5038 = add nsw i32 %5037, -10
  %5039 = icmp ult i32 %5038, -9
  br i1 %5039, label %5053, label %5040

5040:                                             ; preds = %5034
  %5041 = zext nneg i32 %5037 to i64
  %5042 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %5041
  %5043 = load i32, ptr %5042, align 4, !tbaa !326
  %5044 = zext i32 %5043 to i64
  %5045 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %5044
  %5046 = load i64, ptr %5045, align 8, !tbaa !379
  %5047 = icmp eq i64 %5046, 0
  br i1 %5047, label %5048, label %5049

5048:                                             ; preds = %5040
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %5049

5049:                                             ; preds = %5048, %5040
  %5050 = getelementptr inbounds i8, ptr %5015, i64 %5046
  %5051 = getelementptr inbounds ptr, ptr %5050, i64 1
  %5052 = load ptr, ptr %5051, align 8, !tbaa !311
  br label %5053

5053:                                             ; preds = %5049, %5034
  %5054 = phi ptr [ %5052, %5049 ], [ null, %5034 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %5055 = load i64, ptr %5035, align 8
  %5056 = and i64 %5055, 65535
  %5057 = icmp eq i64 %5056, 141
  br i1 %5057, label %5058, label %5144

5058:                                             ; preds = %5053
  %5059 = load i64, ptr %5054, align 8
  %5060 = and i64 %5059, 65535
  %5061 = icmp eq i64 %5060, 141
  br i1 %5061, label %5062, label %5144

5062:                                             ; preds = %5058
  %5063 = getelementptr inbounds %struct.tree_ssa_name, ptr %5035, i64 0, i32 5
  %5064 = getelementptr inbounds %struct.tree_ssa_name, ptr %5035, i64 0, i32 5, i32 1
  %5065 = load ptr, ptr %5064, align 8, !tbaa !463
  %5066 = icmp eq ptr %5063, %5065
  br i1 %5066, label %5067, label %5068

5067:                                             ; preds = %5079, %5072, %5062
  store ptr null, ptr %8, align 8, !tbaa !311
  store ptr null, ptr %9, align 8, !tbaa !311
  br label %5084

5068:                                             ; preds = %5062
  %5069 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %5065, i64 0, i32 1
  %5070 = load ptr, ptr %5069, align 8, !tbaa !463
  %5071 = icmp eq ptr %5063, %5070
  br i1 %5071, label %5072, label %5079

5072:                                             ; preds = %5068
  %5073 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %5065, i64 0, i32 2
  %5074 = load ptr, ptr %5073, align 8, !tbaa !322
  %5075 = load i32, ptr %5074, align 8
  %5076 = and i32 %5075, 255
  %5077 = icmp eq i32 %5076, 2
  br i1 %5077, label %5067, label %5078

5078:                                             ; preds = %5072
  store ptr %5065, ptr %8, align 8, !tbaa !311
  store ptr %5074, ptr %9, align 8, !tbaa !311
  br label %5084

5079:                                             ; preds = %5068
  %5080 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !326
  %5081 = icmp eq i32 %5080, 0
  br i1 %5081, label %5067, label %5082

5082:                                             ; preds = %5079
  %5083 = call zeroext i8 @single_imm_use_1(ptr noundef nonnull %5063, ptr noundef nonnull %8, ptr noundef nonnull %9) #19
  br label %5084

5084:                                             ; preds = %5082, %5078, %5067
  %5085 = phi i8 [ 0, %5067 ], [ 1, %5078 ], [ %5083, %5082 ]
  %5086 = icmp eq i8 %5085, 0
  br i1 %5086, label %5144, label %5087

5087:                                             ; preds = %5084
  %5088 = load ptr, ptr %8, align 8, !tbaa !311
  %5089 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %5088, i64 0, i32 3
  %5090 = load ptr, ptr %5089, align 8, !tbaa !482
  %5091 = load ptr, ptr %5090, align 8, !tbaa !311
  %5092 = call zeroext i8 @may_propagate_copy(ptr noundef %5091, ptr noundef nonnull %5054) #19
  %5093 = icmp eq i8 %5092, 0
  br i1 %5093, label %5144, label %5094

5094:                                             ; preds = %5087
  %5095 = load ptr, ptr %8, align 8, !tbaa !311
  %5096 = load i32, ptr %5015, align 8
  %5097 = and i32 %5096, 255
  %5098 = add nsw i32 %5097, -10
  %5099 = icmp ult i32 %5098, -9
  br i1 %5099, label %5113, label %5100

5100:                                             ; preds = %5094
  %5101 = zext nneg i32 %5097 to i64
  %5102 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %5101
  %5103 = load i32, ptr %5102, align 4, !tbaa !326
  %5104 = zext i32 %5103 to i64
  %5105 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %5104
  %5106 = load i64, ptr %5105, align 8, !tbaa !379
  %5107 = icmp eq i64 %5106, 0
  br i1 %5107, label %5108, label %5109

5108:                                             ; preds = %5100
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %5109

5109:                                             ; preds = %5108, %5100
  %5110 = getelementptr inbounds i8, ptr %5015, i64 %5106
  %5111 = getelementptr inbounds ptr, ptr %5110, i64 1
  %5112 = load ptr, ptr %5111, align 8, !tbaa !311
  br label %5113

5113:                                             ; preds = %5109, %5094
  %5114 = phi ptr [ %5112, %5109 ], [ null, %5094 ]
  %5115 = load ptr, ptr %5095, align 8, !tbaa !810
  %5116 = icmp eq ptr %5115, null
  br i1 %5116, label %5122, label %5117

5117:                                             ; preds = %5113
  %5118 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %5095, i64 0, i32 1
  %5119 = load ptr, ptr %5118, align 8, !tbaa !463
  %5120 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %5115, i64 0, i32 1
  store ptr %5119, ptr %5120, align 8, !tbaa !463
  %5121 = load ptr, ptr %5118, align 8, !tbaa !463
  store ptr %5115, ptr %5121, align 8, !tbaa !810
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5095, i8 0, i64 16, i1 false)
  br label %5122

5122:                                             ; preds = %5117, %5113
  %5123 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %5095, i64 0, i32 3
  %5124 = load ptr, ptr %5123, align 8, !tbaa !482
  store ptr %5114, ptr %5124, align 8, !tbaa !311
  %5125 = icmp eq ptr %5114, null
  br i1 %5125, label %5130, label %5126

5126:                                             ; preds = %5122
  %5127 = load i64, ptr %5114, align 8
  %5128 = and i64 %5127, 65535
  %5129 = icmp eq i64 %5128, 141
  br i1 %5129, label %5131, label %5130

5130:                                             ; preds = %5126, %5122
  store ptr null, ptr %5095, align 8, !tbaa !810
  br label %5137

5131:                                             ; preds = %5126
  %5132 = getelementptr inbounds %struct.tree_ssa_name, ptr %5114, i64 0, i32 5
  store ptr %5132, ptr %5095, align 8, !tbaa !810
  %5133 = getelementptr inbounds %struct.tree_ssa_name, ptr %5114, i64 0, i32 5, i32 1
  %5134 = load ptr, ptr %5133, align 8, !tbaa !463
  %5135 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %5095, i64 0, i32 1
  store ptr %5134, ptr %5135, align 8, !tbaa !463
  %5136 = load ptr, ptr %5133, align 8, !tbaa !463
  store ptr %5095, ptr %5136, align 8, !tbaa !810
  store ptr %5095, ptr %5133, align 8, !tbaa !463
  br label %5137

5137:                                             ; preds = %5131, %5130
  %5138 = load ptr, ptr %9, align 8, !tbaa !311
  %5139 = load i32, ptr %5138, align 8
  %5140 = and i32 %5139, 255
  %5141 = add nsw i32 %5140, -10
  %5142 = icmp ult i32 %5141, -9
  br i1 %5142, label %5144, label %5143

5143:                                             ; preds = %5137
  call void @gimple_set_modified(ptr noundef nonnull %5138, i8 noundef zeroext 1) #19
  call void @update_stmt_operands(ptr noundef nonnull %5138) #19
  br label %5144

5144:                                             ; preds = %5143, %5137, %5087, %5084, %5058, %5053
  %5145 = load i64, ptr %5035, align 8
  %5146 = and i64 %5145, 65535
  %5147 = icmp eq i64 %5146, 141
  br i1 %5147, label %5148, label %5161

5148:                                             ; preds = %5144
  %5149 = getelementptr inbounds %struct.tree_ssa_name, ptr %5035, i64 0, i32 5
  %5150 = getelementptr inbounds %struct.tree_ssa_name, ptr %5035, i64 0, i32 5, i32 1
  %5151 = load ptr, ptr %5150, align 8, !tbaa !463
  %5152 = icmp eq ptr %5149, %5151
  br i1 %5152, label %5158, label %5153

5153:                                             ; preds = %5148
  %5154 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !326
  %5155 = icmp eq i32 %5154, 0
  br i1 %5155, label %5158, label %5156

5156:                                             ; preds = %5153
  %5157 = call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %5149) #19
  br label %5158

5158:                                             ; preds = %5156, %5153, %5148
  %5159 = phi i8 [ %5157, %5156 ], [ 1, %5148 ], [ 0, %5153 ]
  %5160 = icmp eq i8 %5159, 0
  br i1 %5160, label %5162, label %5161

5161:                                             ; preds = %5158, %5144
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef nonnull %5015) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !474
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #19
  call void @unlink_stmt_vdef(ptr noundef nonnull %5015) #19
  call void @gsi_remove(ptr noundef nonnull %5, i8 noundef zeroext 1) #19
  call void @release_defs(ptr noundef nonnull %5015) #19
  br label %5162

5162:                                             ; preds = %5161, %5158
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  %5163 = add i32 %5006, 1
  br label %5005, !llvm.loop !811

5164:                                             ; preds = %5014
  br i1 %3683, label %5166, label %5165, !prof !415

5165:                                             ; preds = %5164
  call void @free(ptr noundef %3681)
  br label %5166

5166:                                             ; preds = %5164, %5165
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  %5167 = load ptr, ptr @cfun, align 8, !tbaa !311
  %5168 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 1), align 4, !tbaa !812
  call void @statistics_counter_event(ptr noundef %5167, ptr noundef nonnull @.str.23, i32 noundef %5168) #19
  %5169 = load ptr, ptr @cfun, align 8, !tbaa !311
  %5170 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 2), align 4, !tbaa !813
  call void @statistics_counter_event(ptr noundef %5169, ptr noundef nonnull @.str.24, i32 noundef %5170) #19
  %5171 = load ptr, ptr @cfun, align 8, !tbaa !311
  %5172 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 3), align 4, !tbaa !814
  call void @statistics_counter_event(ptr noundef %5171, ptr noundef nonnull @.str.25, i32 noundef %5172) #19
  %5173 = load ptr, ptr @cfun, align 8, !tbaa !311
  %5174 = load i32, ptr @pre_stats, align 4, !tbaa !770
  call void @statistics_counter_event(ptr noundef %5173, ptr noundef nonnull @.str.26, i32 noundef %5174) #19
  %5175 = load ptr, ptr @cfun, align 8, !tbaa !311
  %5176 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 4), align 4, !tbaa !815
  call void @statistics_counter_event(ptr noundef %5175, ptr noundef nonnull @.str.27, i32 noundef %5176) #19
  call void @remove_fake_exit_edges() #19
  call void @gsi_commit_edge_inserts() #19
  %5177 = load ptr, ptr @expressions, align 8, !tbaa !311
  %5178 = icmp eq ptr %5177, null
  br i1 %5178, label %5180, label %5179, !prof !417

5179:                                             ; preds = %5166
  call void @free(ptr noundef %5177)
  br label %5180

5180:                                             ; preds = %5166, %5179
  store ptr null, ptr @expressions, align 8, !tbaa !311
  call void @free_scc_vn() #19
  br i1 %25, label %5181, label %5182, !prof !416

5181:                                             ; preds = %5180
  call fastcc void @remove_dead_inserted_code()
  br label %5182

5182:                                             ; preds = %5181, %5180
  call void @scev_finalize() #19
  %5183 = load ptr, ptr @postorder, align 8, !tbaa !311
  call void @free(ptr noundef %5183)
  %5184 = load ptr, ptr @value_expressions, align 8, !tbaa !311
  %5185 = icmp eq ptr %5184, null
  br i1 %5185, label %5187, label %5186, !prof !417

5186:                                             ; preds = %5182
  call void @free(ptr noundef %5184)
  br label %5187

5187:                                             ; preds = %5186, %5182
  store ptr null, ptr @value_expressions, align 8, !tbaa !311
  %5188 = load ptr, ptr @inserted_exprs, align 8, !tbaa !311
  %5189 = icmp eq ptr %5188, null
  br i1 %5189, label %5191, label %5190, !prof !816

5190:                                             ; preds = %5187
  call void @free(ptr noundef %5188)
  br label %5191

5191:                                             ; preds = %5190, %5187
  store ptr null, ptr @inserted_exprs, align 8, !tbaa !311
  call void @bitmap_obstack_release(ptr noundef nonnull @grand_bitmap_obstack) #19
  %5192 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  call void @free_alloc_pool(ptr noundef %5192) #19
  %5193 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !311
  call void @free_alloc_pool(ptr noundef %5193) #19
  %5194 = load ptr, ptr @phi_translate_table, align 8, !tbaa !311
  call void @htab_delete(ptr noundef %5194) #19
  %5195 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  call void @htab_delete(ptr noundef %5195) #19
  %5196 = load ptr, ptr @name_to_id, align 8, !tbaa !311
  %5197 = icmp eq ptr %5196, null
  br i1 %5197, label %5199, label %5198, !prof !417

5198:                                             ; preds = %5191
  call void @free(ptr noundef %5196)
  br label %5199

5199:                                             ; preds = %5198, %5191
  store ptr null, ptr @name_to_id, align 8, !tbaa !311
  %5200 = load ptr, ptr @cfun, align 8, !tbaa !311
  %5201 = getelementptr inbounds %struct.function, ptr %5200, i64 0, i32 1
  %5202 = load ptr, ptr %5201, align 8, !tbaa !419
  %5203 = load ptr, ptr %5202, align 8, !tbaa !311
  %5204 = icmp eq ptr %5203, null
  br i1 %5204, label %5212, label %5205, !prof !449

5205:                                             ; preds = %5199, %5205
  %5206 = phi ptr [ %5210, %5205 ], [ %5203, %5199 ]
  %5207 = getelementptr inbounds %struct.basic_block_def, ptr %5206, i64 0, i32 2
  %5208 = load ptr, ptr %5207, align 8, !tbaa !450
  call void @free(ptr noundef %5208)
  store ptr null, ptr %5207, align 8, !tbaa !450
  %5209 = getelementptr inbounds %struct.basic_block_def, ptr %5206, i64 0, i32 6
  %5210 = load ptr, ptr %5209, align 8, !tbaa !311
  %5211 = icmp eq ptr %5210, null
  br i1 %5211, label %5212, label %5205, !prof !451, !llvm.loop !817

5212:                                             ; preds = %5205, %5199
  call void @free_dominance_info(i32 noundef 2) #19
  %5213 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !311
  %5214 = load ptr, ptr %5213, align 8, !tbaa !375
  %5215 = icmp eq ptr %5214, null
  br i1 %5215, label %5219, label %5216, !prof !415

5216:                                             ; preds = %5212
  %5217 = call zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef nonnull %5213) #19
  %5218 = call zeroext i8 @cleanup_tree_cfg() #19
  br label %5219

5219:                                             ; preds = %5216, %5212
  %5220 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !311
  call void @bitmap_obstack_free(ptr noundef %5220) #19
  store ptr null, ptr @need_eh_cleanup, align 8, !tbaa !311
  br i1 %25, label %5221, label %5223, !prof !416

5221:                                             ; preds = %5219, %31
  %5222 = phi i32 [ 0, %31 ], [ %3682, %5219 ]
  call void @loop_optimizer_finalize() #19
  br label %5223

5223:                                             ; preds = %5221, %5219, %30
  %5224 = phi i32 [ 0, %30 ], [ %3682, %5219 ], [ %5222, %5221 ]
  ret i32 %5224
}

declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @run_scc_vn(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_dead_inserted_code() unnamed_addr #12 !prof !385 !PGOFuncName !818 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr @inserted_exprs, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !819

5:                                                ; preds = %0
  %6 = load i32, ptr %3, align 8, !tbaa !785
  br label %7

7:                                                ; preds = %0, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %0 ]
  %9 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %8) #19
  %10 = load ptr, ptr @inserted_exprs, align 8
  %11 = icmp eq ptr %10, null
  br label %12

12:                                               ; preds = %33, %7
  %13 = phi i64 [ %34, %33 ], [ 0, %7 ]
  br i1 %11, label %21, label %14, !prof !820

14:                                               ; preds = %12
  %15 = load i32, ptr %10, align 8, !tbaa !785
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %21, !prof !821

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.VEC_gimple_base, ptr %10, i64 0, i32 2, i64 %13
  %20 = load ptr, ptr %19, align 8, !tbaa !311
  br label %21

21:                                               ; preds = %12, %14, %18
  %22 = phi ptr [ %20, %18 ], [ null, %14 ], [ null, %12 ]
  %23 = phi i1 [ false, %18 ], [ true, %14 ], [ true, %12 ]
  br i1 %23, label %35, label %24, !prof !822

24:                                               ; preds = %21
  %25 = load i32, ptr %22, align 8
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28, !prof !823

28:                                               ; preds = %24
  %29 = load i32, ptr %9, align 8, !tbaa !785
  %30 = add i32 %29, 1
  store i32 %30, ptr %9, align 8, !tbaa !785
  %31 = zext i32 %29 to i64
  %32 = getelementptr inbounds %struct.VEC_gimple_base, ptr %9, i64 0, i32 2, i64 %31
  store ptr %22, ptr %32, align 8, !tbaa !311
  br label %33

33:                                               ; preds = %24, %28
  %34 = add nuw i64 %13, 1
  br label %12, !llvm.loop !824

35:                                               ; preds = %21, %181
  %36 = phi ptr [ %182, %181 ], [ %9, %21 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !825

38:                                               ; preds = %35
  %39 = load i32, ptr %36, align 8, !tbaa !785
  br label %40

40:                                               ; preds = %35, %38
  %41 = phi i32 [ %39, %38 ], [ 0, %35 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %183, label %43, !prof !826

43:                                               ; preds = %40
  %44 = load i32, ptr %36, align 8, !tbaa !785
  %45 = add i32 %44, -1
  store i32 %45, ptr %36, align 8, !tbaa !785
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.VEC_gimple_base, ptr %36, i64 0, i32 2, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !311
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 255
  %51 = icmp eq i32 %50, 16
  br i1 %51, label %52, label %107, !prof !827

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.gimple_statement_phi, ptr %48, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !322
  %55 = getelementptr inbounds %struct.VEC_gimple_base, ptr %36, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !783
  %57 = sub i32 %56, %45
  %58 = icmp ult i32 %57, %54
  br i1 %58, label %59, label %61, !prof !828

59:                                               ; preds = %52
  %60 = tail call ptr @vec_heap_p_reserve(ptr noundef nonnull %36, i32 noundef %54) #19
  br label %61

61:                                               ; preds = %52, %59
  %62 = phi ptr [ %36, %52 ], [ %60, %59 ]
  %63 = load i32, ptr %53, align 4, !tbaa !322
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %181, label %65, !prof !829

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.gimple_statement_phi, ptr %48, i64 0, i32 1
  br label %67

67:                                               ; preds = %65, %102
  %68 = phi i64 [ 0, %65 ], [ %103, %102 ]
  %69 = load i32, ptr %66, align 8, !tbaa !322
  %70 = zext i32 %69 to i64
  %71 = icmp ugt i64 %68, %70
  br i1 %71, label %72, label %73, !prof !830

72:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %73

73:                                               ; preds = %67, %72
  %74 = getelementptr inbounds %struct.gimple_statement_phi, ptr %48, i64 0, i32 4, i64 %68, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !482
  %76 = load ptr, ptr %75, align 8, !tbaa !311
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 141
  br i1 %79, label %80, label %102, !prof !831

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.tree_ssa_name, ptr %76, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !322
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85, !prof !830

84:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4452, ptr noundef nonnull @.str.1) #19
  br label %85

85:                                               ; preds = %84, %80
  %86 = load i32, ptr %82, align 8
  %87 = and i32 %86, 2048
  %88 = icmp ne i32 %87, 0
  %89 = and i32 %86, 255
  %90 = icmp eq i32 %89, 18
  %91 = or i1 %88, %90
  br i1 %91, label %94, label %92, !prof !832

92:                                               ; preds = %85
  %93 = or disjoint i32 %86, 2048
  store i32 %93, ptr %82, align 8
  br label %94

94:                                               ; preds = %85, %92
  %95 = phi ptr [ %82, %92 ], [ null, %85 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %102, label %97, !prof !832

97:                                               ; preds = %94
  %98 = load i32, ptr %62, align 8, !tbaa !785
  %99 = add i32 %98, 1
  store i32 %99, ptr %62, align 8, !tbaa !785
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds %struct.VEC_gimple_base, ptr %62, i64 0, i32 2, i64 %100
  store ptr %95, ptr %101, align 8, !tbaa !311
  br label %102

102:                                              ; preds = %94, %97, %73
  %103 = add nuw nsw i64 %68, 1
  %104 = load i32, ptr %53, align 4, !tbaa !322
  %105 = zext i32 %104 to i64
  %106 = icmp ult i64 %103, %105
  br i1 %106, label %67, label %181, !prof !833, !llvm.loop !834

107:                                              ; preds = %43
  %108 = add nsw i32 %50, -10
  %109 = icmp ult i32 %108, -9
  br i1 %109, label %113, label %110, !prof !835

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %48, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !322
  br label %113

113:                                              ; preds = %110, %107
  %114 = phi ptr [ %112, %110 ], [ null, %107 ]
  %115 = icmp eq ptr %114, null
  br i1 %115, label %121, label %116, !prof !835

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.use_optype_d, ptr %114, i64 0, i32 1, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !482
  %119 = load ptr, ptr %118, align 8, !tbaa !311
  %120 = load ptr, ptr %114, align 8, !tbaa !524
  br label %121

121:                                              ; preds = %113, %116
  %122 = phi ptr [ %120, %116 ], [ %114, %113 ]
  %123 = phi i8 [ 0, %116 ], [ 1, %113 ]
  %124 = phi ptr [ %119, %116 ], [ null, %113 ]
  br i1 %115, label %181, label %125, !prof !836

125:                                              ; preds = %121, %176
  %126 = phi ptr [ %179, %176 ], [ %124, %121 ]
  %127 = phi i8 [ %178, %176 ], [ %123, %121 ]
  %128 = phi ptr [ %169, %176 ], [ %36, %121 ]
  %129 = phi ptr [ %177, %176 ], [ %122, %121 ]
  %130 = icmp eq ptr %126, null
  br i1 %130, label %131, label %132, !prof !837

131:                                              ; preds = %125
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4446, ptr noundef nonnull @.str.1) #19
  br label %132

132:                                              ; preds = %131, %125
  %133 = load i64, ptr %126, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 141
  br i1 %135, label %136, label %150, !prof !838

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.tree_ssa_name, ptr %126, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !322
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %141, !prof !839

140:                                              ; preds = %136
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4452, ptr noundef nonnull @.str.1) #19
  br label %141

141:                                              ; preds = %140, %136
  %142 = load i32, ptr %138, align 8
  %143 = and i32 %142, 2048
  %144 = icmp ne i32 %143, 0
  %145 = and i32 %142, 255
  %146 = icmp eq i32 %145, 18
  %147 = or i1 %144, %146
  br i1 %147, label %150, label %148, !prof !840

148:                                              ; preds = %141
  %149 = or disjoint i32 %142, 2048
  store i32 %149, ptr %138, align 8
  br label %150

150:                                              ; preds = %132, %141, %148
  %151 = phi ptr [ %138, %148 ], [ null, %132 ], [ null, %141 ]
  %152 = icmp eq ptr %151, null
  br i1 %152, label %168, label %153, !prof !841

153:                                              ; preds = %150
  %154 = icmp eq ptr %128, null
  br i1 %154, label %160, label %155, !prof !842

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.VEC_gimple_base, ptr %128, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !783
  %158 = load i32, ptr %128, align 8, !tbaa !785
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %162, !prof !842

160:                                              ; preds = %153, %155
  %161 = tail call ptr @vec_heap_p_reserve(ptr noundef %128, i32 noundef 1) #19
  br label %162

162:                                              ; preds = %155, %160
  %163 = phi ptr [ %128, %155 ], [ %161, %160 ]
  %164 = load i32, ptr %163, align 8, !tbaa !785
  %165 = add i32 %164, 1
  store i32 %165, ptr %163, align 8, !tbaa !785
  %166 = zext i32 %164 to i64
  %167 = getelementptr inbounds %struct.VEC_gimple_base, ptr %163, i64 0, i32 2, i64 %166
  store ptr %151, ptr %167, align 8, !tbaa !311
  br label %168

168:                                              ; preds = %162, %150
  %169 = phi ptr [ %128, %150 ], [ %163, %162 ]
  %170 = icmp eq ptr %129, null
  br i1 %170, label %176, label %171, !prof !843

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.use_optype_d, ptr %129, i64 0, i32 1, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !482
  %174 = load ptr, ptr %173, align 8, !tbaa !311
  %175 = load ptr, ptr %129, align 8, !tbaa !524
  br label %176

176:                                              ; preds = %168, %171
  %177 = phi ptr [ %175, %171 ], [ %129, %168 ]
  %178 = phi i8 [ %127, %171 ], [ 1, %168 ]
  %179 = phi ptr [ %174, %171 ], [ null, %168 ]
  %180 = icmp eq i8 %178, 0
  br i1 %180, label %125, label %181, !prof !844, !llvm.loop !845

181:                                              ; preds = %176, %102, %121, %61
  %182 = phi ptr [ %62, %61 ], [ %36, %121 ], [ %62, %102 ], [ %169, %176 ]
  br label %35, !llvm.loop !846

183:                                              ; preds = %40, %218
  %184 = phi i64 [ %219, %218 ], [ 0, %40 ]
  %185 = load ptr, ptr @inserted_exprs, align 8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %194, label %187, !prof !820

187:                                              ; preds = %183
  %188 = load i32, ptr %185, align 8, !tbaa !785
  %189 = zext i32 %188 to i64
  %190 = icmp ult i64 %184, %189
  br i1 %190, label %191, label %194, !prof !821

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.VEC_gimple_base, ptr %185, i64 0, i32 2, i64 %184
  %193 = load ptr, ptr %192, align 8, !tbaa !311
  br label %194

194:                                              ; preds = %183, %187, %191
  %195 = phi ptr [ %193, %191 ], [ null, %187 ], [ null, %183 ]
  %196 = phi i1 [ false, %191 ], [ true, %187 ], [ true, %183 ]
  br i1 %196, label %220, label %197, !prof !822

197:                                              ; preds = %194
  %198 = load i32, ptr %195, align 8
  %199 = and i32 %198, 2048
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %218, !prof !847

201:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #19
  %202 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %203 = icmp eq ptr %202, null
  br i1 %203, label %211, label %204, !prof !848

204:                                              ; preds = %201
  %205 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %206 = and i32 %205, 8
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %204
  %209 = call i64 @fwrite(ptr nonnull @.str.28, i64 31, i64 1, ptr nonnull %202)
  %210 = load ptr, ptr @dump_file, align 8, !tbaa !311
  call void @print_gimple_stmt(ptr noundef %210, ptr noundef nonnull %195, i32 noundef 0, i32 noundef 0) #19
  br label %211

211:                                              ; preds = %208, %204, %201
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %195) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !474
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  %212 = load i32, ptr %195, align 8
  %213 = and i32 %212, 255
  %214 = icmp eq i32 %213, 16
  br i1 %214, label %215, label %216, !prof !848

215:                                              ; preds = %211
  call void @remove_phi_node(ptr noundef nonnull %1, i8 noundef zeroext 1) #19
  br label %217

216:                                              ; preds = %211
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #19
  call void @release_defs(ptr noundef nonnull %195) #19
  br label %217

217:                                              ; preds = %216, %215
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #19
  br label %218

218:                                              ; preds = %197, %217
  %219 = add nuw i64 %184, 1
  br label %183, !llvm.loop !849

220:                                              ; preds = %194
  br i1 %37, label %222, label %221, !prof !819

221:                                              ; preds = %220
  call void @free(ptr noundef %36)
  br label %222

222:                                              ; preds = %220, %221
  ret void
}

declare void @loop_optimizer_finalize() local_unnamed_addr #3

declare void @scev_initialize() local_unnamed_addr #3

declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @remove_fake_exit_edges() local_unnamed_addr #3

declare void @gsi_commit_edge_inserts() local_unnamed_addr #3

declare void @free_scc_vn() local_unnamed_addr #3

declare void @scev_finalize() local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @release_defs(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #15

declare i32 @get_max_value_id() local_unnamed_addr #3

declare void @connect_infinite_loops_to_exit() local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @expr_pred_trans_hash(ptr nocapture noundef readonly %0) #16 !prof !310 {
  %2 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !850
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @expr_pred_trans_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !852 !PGOFuncName !853 {
  %3 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !854
  %5 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !854
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %50, !prof !855

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !856
  %10 = load ptr, ptr %1, align 8, !tbaa !856
  %11 = load i32, ptr %9, align 8, !tbaa !331
  %12 = load i32, ptr %10, align 8, !tbaa !331
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %50, !prof !857

14:                                               ; preds = %8
  switch i32 %11, label %49 [
    i32 3, label %15
    i32 0, label %30
    i32 1, label %37
    i32 2, label %43
  ], !prof !858

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.pre_expr_d, ptr %9, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !322
  %18 = getelementptr inbounds %struct.pre_expr_d, ptr %10, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !322
  %20 = tail call zeroext i8 @expressions_equal_p(ptr noundef %17, ptr noundef %19) #19
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %50, label %22, !prof !859

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !322
  %25 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !322
  %27 = tail call zeroext i8 @types_compatible_p(ptr noundef %24, ptr noundef %26) #19
  %28 = icmp ne i8 %27, 0
  %29 = zext i1 %28 to i32
  br label %50

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.pre_expr_d, ptr %9, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !322
  %33 = getelementptr inbounds %struct.pre_expr_d, ptr %10, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !322
  %35 = icmp eq ptr %32, %34
  %36 = zext i1 %35 to i32
  br label %50

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.pre_expr_d, ptr %9, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !322
  %40 = getelementptr inbounds %struct.pre_expr_d, ptr %10, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !322
  %42 = tail call i32 @vn_nary_op_eq(ptr noundef %39, ptr noundef %41) #19
  br label %50

43:                                               ; preds = %14
  %44 = getelementptr inbounds %struct.pre_expr_d, ptr %9, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !322
  %46 = getelementptr inbounds %struct.pre_expr_d, ptr %10, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !322
  %48 = tail call i32 @vn_reference_eq(ptr noundef %45, ptr noundef %47) #19
  br label %50

49:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #19
  br label %50

50:                                               ; preds = %49, %43, %37, %30, %22, %15, %8, %2
  %51 = phi i32 [ 0, %2 ], [ 0, %49 ], [ %48, %43 ], [ %42, %37 ], [ %36, %30 ], [ 0, %8 ], [ 0, %15 ], [ %29, %22 ]
  ret i32 %51
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pre_expr_hash(ptr nocapture noundef readonly %0) #9 !prof !860 !PGOFuncName !861 {
  %2 = load i32, ptr %0, align 8, !tbaa !331
  switch i32 %2, label %41 [
    i32 3, label %3
    i32 0, label %26
    i32 1, label %31
    i32 2, label %36
  ], !prof !862

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !322
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !322
  %8 = tail call i32 @iterative_hash_expr(ptr noundef %5, i32 noundef 0) #19
  %9 = load i64, ptr %7, align 8
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 65535
  %12 = add nsw i32 %11, -6
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %14, label %21, !prof !863

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1023
  %18 = lshr i32 %10, 21
  %19 = and i32 %18, 1
  %20 = add nuw nsw i32 %17, %19
  br label %21

21:                                               ; preds = %3, %14
  %22 = phi i32 [ %20, %14 ], [ 0, %3 ]
  %23 = zext i1 %13 to i32
  %24 = add i32 %8, %23
  %25 = add i32 %24, %22
  br label %42

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !322
  %29 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !322
  br label %42

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !322
  %34 = getelementptr inbounds %struct.vn_nary_op_s, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !864
  br label %42

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !322
  %39 = getelementptr inbounds %struct.vn_reference_s, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !865
  br label %42

41:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 229, ptr noundef nonnull @.str.1) #19
  br label %42

42:                                               ; preds = %41, %36, %31, %26, %21
  %43 = phi i32 [ 0, %41 ], [ %40, %36 ], [ %35, %31 ], [ %30, %26 ], [ %25, %21 ]
  ret i32 %43
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pre_expr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !866 !PGOFuncName !867 {
  %3 = load i32, ptr %0, align 8, !tbaa !331
  %4 = load i32, ptr %1, align 8, !tbaa !331
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %42, !prof !857

6:                                                ; preds = %2
  switch i32 %3, label %41 [
    i32 3, label %7
    i32 0, label %22
    i32 1, label %29
    i32 2, label %35
  ], !prof !858

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !322
  %10 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !322
  %12 = tail call zeroext i8 @expressions_equal_p(ptr noundef %9, ptr noundef %11) #19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %42, label %14, !prof !859

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !322
  %17 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !322
  %19 = tail call zeroext i8 @types_compatible_p(ptr noundef %16, ptr noundef %18) #19
  %20 = icmp ne i8 %19, 0
  %21 = zext i1 %20 to i32
  br label %42

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !322
  %25 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !322
  %27 = icmp eq ptr %24, %26
  %28 = zext i1 %27 to i32
  br label %42

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !322
  %32 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !322
  %34 = tail call i32 @vn_nary_op_eq(ptr noundef %31, ptr noundef %33) #19
  br label %42

35:                                               ; preds = %6
  %36 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !322
  %38 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !322
  %40 = tail call i32 @vn_reference_eq(ptr noundef %37, ptr noundef %39) #19
  br label %42

41:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #19
  br label %42

42:                                               ; preds = %14, %7, %2, %41, %35, %29, %22
  %43 = phi i32 [ 0, %41 ], [ %40, %35 ], [ %34, %29 ], [ %28, %22 ], [ 0, %2 ], [ 0, %7 ], [ %21, %14 ]
  ret i32 %43
}

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @vn_nary_op_eq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vn_reference_eq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @expressions_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %0) unnamed_addr #9 !prof !868 !PGOFuncName !869 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !322
  %4 = load ptr, ptr @name_to_id, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !509

6:                                                ; preds = %1
  %7 = load i32, ptr %4, align 4, !tbaa !356
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ]
  %10 = icmp ugt i32 %9, %3
  br i1 %10, label %11, label %15, !prof !510

11:                                               ; preds = %8
  %12 = zext i32 %3 to i64
  %13 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %4, i64 0, i32 2, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !326
  br label %15

15:                                               ; preds = %8, %11
  %16 = phi i32 [ %14, %11 ], [ 0, %8 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18, !prof !511

18:                                               ; preds = %15
  %19 = load ptr, ptr @expressions, align 8
  %20 = zext i32 %16 to i64
  %21 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %19, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !311
  br label %137

23:                                               ; preds = %15
  %24 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !311
  %25 = tail call ptr @pool_alloc(ptr noundef %24) #19
  store i32 0, ptr %25, align 8, !tbaa !331
  %26 = getelementptr inbounds %struct.pre_expr_d, ptr %25, i64 0, i32 2
  store ptr %0, ptr %26, align 8, !tbaa !322
  %27 = load i32, ptr @next_expression_id, align 4, !tbaa !326
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30, !prof !392

29:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 254, ptr noundef nonnull @.str.1) #19
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, ptr @next_expression_id, align 4, !tbaa !326
  %32 = add i32 %31, 1
  store i32 %32, ptr @next_expression_id, align 4, !tbaa !326
  %33 = getelementptr inbounds %struct.pre_expr_d, ptr %25, i64 0, i32 1
  store i32 %31, ptr %33, align 4, !tbaa !361
  %34 = load ptr, ptr @expressions, align 8, !tbaa !311
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36, !prof !392

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %34, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !393
  %39 = load i32, ptr %34, align 8, !tbaa !395
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43, !prof !396

41:                                               ; preds = %36, %30
  %42 = tail call ptr @vec_heap_p_reserve(ptr noundef %34, i32 noundef 1) #19
  store ptr %42, ptr @expressions, align 8, !tbaa !311
  br label %43

43:                                               ; preds = %41, %36
  %44 = load ptr, ptr @expressions, align 8, !tbaa !311
  %45 = load i32, ptr %44, align 8, !tbaa !395
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 8, !tbaa !395
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %44, i64 0, i32 2, i64 %47
  store ptr %25, ptr %48, align 8, !tbaa !311
  %49 = load i32, ptr %25, align 8, !tbaa !331
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %130, !prof !397

51:                                               ; preds = %43
  %52 = load ptr, ptr %26, align 8, !tbaa !322
  %53 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !322
  %55 = load ptr, ptr @cfun, align 8, !tbaa !311
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !398
  %58 = getelementptr inbounds %struct.gimple_df, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !400
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61, !prof !404

61:                                               ; preds = %51
  %62 = load i32, ptr %59, align 8, !tbaa !405
  br label %63

63:                                               ; preds = %61, %51
  %64 = phi i32 [ %62, %61 ], [ 0, %51 ]
  %65 = load ptr, ptr @name_to_id, align 8, !tbaa !311
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67, !prof !407

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %65, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !408
  %70 = load i32, ptr %65, align 4, !tbaa !356
  %71 = sub i32 %69, %70
  %72 = icmp uge i32 %71, %64
  br label %75

73:                                               ; preds = %63
  %74 = icmp eq i32 %64, 0
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi i1 [ %72, %67 ], [ %74, %73 ]
  br i1 %76, label %79, label %77, !prof !409

77:                                               ; preds = %75
  %78 = tail call ptr @vec_heap_o_reserve(ptr noundef %65, i32 noundef %64, i64 noundef 8, i64 noundef 4) #19
  store ptr %78, ptr @name_to_id, align 8, !tbaa !311
  br label %79

79:                                               ; preds = %77, %75
  %80 = load ptr, ptr @cfun, align 8, !tbaa !311
  %81 = getelementptr inbounds %struct.function, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !398
  %83 = getelementptr inbounds %struct.gimple_df, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !400
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86, !prof !404

86:                                               ; preds = %79
  %87 = load i32, ptr %84, align 8, !tbaa !405
  br label %88

88:                                               ; preds = %86, %79
  %89 = phi i32 [ %87, %86 ], [ 0, %79 ]
  %90 = load ptr, ptr @name_to_id, align 8, !tbaa !311
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92, !prof !404

92:                                               ; preds = %88
  %93 = load i32, ptr %90, align 4, !tbaa !356
  br label %94

94:                                               ; preds = %92, %88
  %95 = phi i32 [ %93, %92 ], [ 0, %88 ]
  br i1 %91, label %98, label %96, !prof !404

96:                                               ; preds = %94
  %97 = load i32, ptr %90, align 4, !tbaa !356
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %97, %96 ], [ 0, %94 ]
  %100 = sub nsw i32 %89, %99
  br i1 %91, label %107, label %101, !prof !404

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %90, i64 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !408
  %104 = load i32, ptr %90, align 4, !tbaa !356
  %105 = sub i32 %103, %104
  %106 = icmp uge i32 %105, %100
  br label %109

107:                                              ; preds = %98
  %108 = icmp eq i32 %99, %89
  br label %109

109:                                              ; preds = %107, %101
  %110 = phi i1 [ %106, %101 ], [ %108, %107 ]
  br i1 %110, label %113, label %111, !prof !410

111:                                              ; preds = %109
  %112 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %90, i32 noundef %100, i64 noundef 8, i64 noundef 4) #19
  store ptr %112, ptr @name_to_id, align 8, !tbaa !311
  br label %113

113:                                              ; preds = %111, %109
  %114 = load ptr, ptr @name_to_id, align 8, !nonnull !348, !noundef !348
  store i32 %89, ptr %114, align 4, !tbaa !356
  %115 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %114, i64 0, i32 2
  %116 = sext i32 %95 to i64
  %117 = getelementptr inbounds i32, ptr %115, i64 %116
  %118 = sub nsw i32 %89, %95
  %119 = sext i32 %118 to i64
  %120 = shl nsw i64 %119, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %117, i8 0, i64 %120, i1 false), !prof !870
  %121 = zext i32 %54 to i64
  %122 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %114, i64 0, i32 2, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !326
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125, !prof !410

125:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 265, ptr noundef nonnull @.str.1) #19
  br label %126

126:                                              ; preds = %125, %113
  %127 = load ptr, ptr @name_to_id, align 8
  %128 = load i32, ptr %33, align 4, !tbaa !361
  %129 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %127, i64 0, i32 2, i64 %121
  store i32 %128, ptr %129, align 4, !tbaa !326
  br label %137

130:                                              ; preds = %43
  %131 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %132 = tail call ptr @htab_find_slot(ptr noundef %131, ptr noundef nonnull %25, i32 noundef 1) #19
  %133 = load ptr, ptr %132, align 8, !tbaa !311
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135, !prof !412

135:                                              ; preds = %130
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 271, ptr noundef nonnull @.str.1) #19
  br label %136

136:                                              ; preds = %135, %130
  store ptr %25, ptr %132, align 8, !tbaa !311
  br label %137

137:                                              ; preds = %136, %126, %18
  %138 = phi ptr [ %22, %18 ], [ %25, %126 ], [ %25, %136 ]
  ret ptr %138
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bitmap_value_insert_into_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !871 !PGOFuncName !872 {
  %3 = load i32, ptr %1, align 8, !tbaa !331
  switch i32 %3, label %26 [
    i32 3, label %4
    i32 0, label %12
    i32 1, label %18
    i32 2, label %22
  ], !prof !333

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !322
  %7 = tail call i32 @get_constant_value_id(ptr noundef %6) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27, !prof !334

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !322
  %11 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %10) #19
  tail call void @add_to_value(i32 noundef %11, ptr noundef nonnull %1)
  br label %27

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !322
  %15 = tail call ptr @VN_INFO(ptr noundef %14) #19
  %16 = getelementptr inbounds %struct.vn_ssa_aux, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !335
  br label %27

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !322
  %21 = load i32, ptr %20, align 8, !tbaa !337
  br label %27

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !322
  %25 = load i32, ptr %24, align 8, !tbaa !339
  br label %27

26:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %27

27:                                               ; preds = %4, %9, %12, %18, %22, %26
  %28 = phi i32 [ 0, %26 ], [ %25, %22 ], [ %21, %18 ], [ %17, %12 ], [ %11, %9 ], [ %7, %4 ]
  %29 = tail call zeroext i8 @value_id_constant_p(i32 noundef %28) #19
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %41, !prof !514

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !353
  %34 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %33, i32 noundef %28) #19
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36, !prof !515

36:                                               ; preds = %31
  %37 = load ptr, ptr %0, align 8, !tbaa !351
  %38 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !361
  %40 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %37, i32 noundef %39) #19
  br label %41

41:                                               ; preds = %31, %36, %27
  ret void
}

declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_to_exp_gen(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !310 !PGOFuncName !873 {
  %3 = load i8, ptr @in_fre, align 1, !tbaa !322
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %17, !prof !526

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %12, !prof !527

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @ssa_undefined_value_p(ptr noundef nonnull %1) #19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17, !prof !527

12:                                               ; preds = %9, %5
  %13 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %1)
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !450
  %16 = load ptr, ptr %15, align 8, !tbaa !453
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %16, ptr noundef %13)
  br label %17

17:                                               ; preds = %12, %9, %2
  ret void
}

declare void @copy_reference_ops_from_call(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vn_reference_lookup_pieces(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #9 !prof !874 !PGOFuncName !875 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %75 [
    i8 8, label %4
    i8 6, label %25
    i8 1, label %76
  ], !prof !536

4:                                                ; preds = %1
  %5 = and i32 %2, 255
  %6 = add nsw i32 %5, -1
  %7 = icmp ult i32 %6, 9
  tail call void @llvm.assume(i1 %7)
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !326
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !379
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 %13
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !311
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !322
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !322
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  br label %76

25:                                               ; preds = %1
  %26 = lshr i32 %2, 16
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !322
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %31, label %51, !prof !537

31:                                               ; preds = %25
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 255
  %34 = add nsw i32 %33, -1
  %35 = icmp ult i32 %34, 9
  tail call void @llvm.assume(i1 %35)
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !326
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !379
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44, !prof !538

43:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %44

44:                                               ; preds = %43, %31
  %45 = getelementptr inbounds i8, ptr %0, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !311
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  br label %51

51:                                               ; preds = %25, %44
  %52 = phi i32 [ %50, %44 ], [ %26, %25 ]
  %53 = icmp eq i32 %52, 66
  br i1 %53, label %54, label %72, !prof !539

54:                                               ; preds = %51
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, 255
  %57 = add nsw i32 %56, -1
  %58 = icmp ult i32 %57, 9
  tail call void @llvm.assume(i1 %58)
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !326
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !379
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67, !prof !540

66:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %67

67:                                               ; preds = %66, %54
  %68 = getelementptr inbounds i8, ptr %0, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !311
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  br label %76

72:                                               ; preds = %51
  %73 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #19
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %1, %16, %72, %67, %75
  %77 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %75 ], [ %24, %16 ], [ %71, %67 ], [ %74, %72 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %1 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !322
  ret ptr %78
}

declare ptr @vn_nary_op_lookup_pieces(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vn_reference_lookup(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ssa_undefined_value_p(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #3

declare void @statistics_histogram_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @phi_translate_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #12 !prof !876 !PGOFuncName !877 {
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !489
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !878

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 510, ptr noundef nonnull @.str.1) #19
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !322
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !879

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gimple_bb_info, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !609
  br label %17

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %16, %14 ], [ null, %10 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20, !prof !880

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !495
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %30, !prof !880

23:                                               ; preds = %17, %20
  %24 = load ptr, ptr %0, align 8, !tbaa !351
  %25 = load ptr, ptr %1, align 8, !tbaa !351
  tail call void @bitmap_copy(ptr noundef %24, ptr noundef %25) #19
  %26 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !353
  %28 = getelementptr inbounds %struct.bitmap_set, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !353
  tail call void @bitmap_copy(ptr noundef %27, ptr noundef %29) #19
  br label %57

30:                                               ; preds = %20
  %31 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %1)
  %32 = icmp eq ptr %31, null
  br label %33

33:                                               ; preds = %53, %30
  %34 = phi i64 [ %54, %53 ], [ 0, %30 ]
  br i1 %32, label %42, label %35, !prof !881

35:                                               ; preds = %33
  %36 = load i32, ptr %31, align 8, !tbaa !395
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %42, !prof !882

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %31, i64 0, i32 2, i64 %34
  %41 = load ptr, ptr %40, align 8, !tbaa !311
  br label %42

42:                                               ; preds = %33, %35, %39
  %43 = phi ptr [ %41, %39 ], [ null, %35 ], [ null, %33 ]
  %44 = phi i1 [ false, %39 ], [ true, %35 ], [ true, %33 ]
  br i1 %44, label %55, label %45, !prof !883

45:                                               ; preds = %42
  %46 = tail call fastcc ptr @phi_translate(ptr noundef %43, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48, !prof !884

48:                                               ; preds = %45
  %49 = load i32, ptr %46, align 8, !tbaa !331
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52, !prof !885

51:                                               ; preds = %48
  tail call fastcc void @bitmap_value_replace_in_set(ptr noundef %0, ptr noundef nonnull %46)
  br label %53

52:                                               ; preds = %48
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %0, ptr noundef nonnull %46)
  br label %53

53:                                               ; preds = %51, %52, %45
  %54 = add nuw i64 %34, 1
  br label %33, !llvm.loop !886

55:                                               ; preds = %42
  br i1 %32, label %57, label %56, !prof !887

56:                                               ; preds = %55
  tail call void @free(ptr noundef %31)
  br label %57

57:                                               ; preds = %56, %55, %23
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bitmap_set_and(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #12 !prof !888 !PGOFuncName !889 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %124, label %4, !prof !602

4:                                                ; preds = %2
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %6 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !353
  %8 = getelementptr inbounds %struct.bitmap_set, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !353
  tail call void @bitmap_and_into(ptr noundef %7, ptr noundef %9) #19
  %10 = load ptr, ptr %0, align 8, !tbaa !351
  tail call void @bitmap_copy(ptr noundef %5, ptr noundef %10) #19
  %11 = load ptr, ptr %5, align 8, !tbaa !375
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr @bitmap_zero_bits, ptr %11, !prof !890
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !377
  %16 = shl i32 %15, 7
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %13, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !379
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = or disjoint i32 %16, %20
  br label %22

22:                                               ; preds = %120, %4
  %23 = phi i32 [ 0, %4 ], [ %78, %120 ]
  %24 = phi i64 [ %18, %4 ], [ %121, %120 ]
  %25 = phi ptr [ %13, %4 ], [ %80, %120 ]
  %26 = phi i32 [ %21, %4 ], [ %122, %120 ]
  %27 = icmp eq i64 %24, 0
  br i1 %27, label %42, label %28, !prof !891

28:                                               ; preds = %56, %22
  %29 = phi i32 [ %23, %22 ], [ %57, %56 ]
  %30 = phi i64 [ %24, %22 ], [ %61, %56 ]
  %31 = phi ptr [ %25, %22 ], [ %48, %56 ]
  %32 = phi i32 [ %26, %22 ], [ %58, %56 ]
  %33 = and i64 %30, 1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %77, !prof !892

35:                                               ; preds = %28, %35
  %36 = phi i32 [ %39, %35 ], [ %32, %28 ]
  %37 = phi i64 [ %38, %35 ], [ %30, %28 ]
  %38 = lshr exact i64 %37, 1
  %39 = add i32 %36, 1
  %40 = and i64 %37, 2
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %35, label %77, !prof !893, !llvm.loop !380

42:                                               ; preds = %22
  %43 = add i32 %26, 63
  %44 = and i32 %43, -64
  %45 = add i32 %23, 1
  br label %46

46:                                               ; preds = %73, %42
  %47 = phi i64 [ %24, %42 ], [ %68, %73 ]
  %48 = phi ptr [ %25, %42 ], [ %71, %73 ]
  %49 = phi i32 [ %44, %42 ], [ %76, %73 ]
  %50 = phi i32 [ %45, %42 ], [ 0, %73 ]
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %67, label %52, !prof !894

52:                                               ; preds = %46
  %53 = add i32 %49, 128
  %54 = shl i32 %50, 6
  %55 = sub i32 %53, %54
  br label %56

56:                                               ; preds = %52, %63
  %57 = phi i32 [ %65, %63 ], [ %50, %52 ]
  %58 = phi i32 [ %64, %63 ], [ %49, %52 ]
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 3, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !379
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %28, !prof !895

63:                                               ; preds = %56
  %64 = add i32 %58, 64
  %65 = add i32 %57, 1
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %56, !prof !896, !llvm.loop !381

67:                                               ; preds = %63, %46
  %68 = phi i64 [ %47, %46 ], [ %61, %63 ]
  %69 = phi i32 [ %49, %46 ], [ %55, %63 ]
  %70 = phi i32 [ %50, %46 ], [ 2, %63 ]
  %71 = load ptr, ptr %48, align 8, !tbaa !382
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73, !prof !897

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.bitmap_element_def, ptr %71, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !377
  %76 = shl i32 %75, 7
  br label %46, !llvm.loop !383

77:                                               ; preds = %67, %35, %28
  %78 = phi i32 [ %29, %28 ], [ %29, %35 ], [ %70, %67 ]
  %79 = phi i64 [ %30, %28 ], [ %38, %35 ], [ %68, %67 ]
  %80 = phi ptr [ %31, %28 ], [ %31, %35 ], [ %71, %67 ]
  %81 = phi i32 [ %32, %28 ], [ %39, %35 ], [ %69, %67 ]
  %82 = phi i1 [ false, %28 ], [ false, %35 ], [ true, %67 ]
  br i1 %82, label %123, label %83, !prof !898

83:                                               ; preds = %77
  %84 = load ptr, ptr @expressions, align 8
  %85 = zext i32 %81 to i64
  %86 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %84, i64 0, i32 2, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !311
  %88 = load i32, ptr %87, align 8, !tbaa !331
  switch i32 %88, label %111 [
    i32 3, label %89
    i32 0, label %97
    i32 1, label %103
    i32 2, label %107
  ], !prof !333

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.pre_expr_d, ptr %87, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !322
  %92 = tail call i32 @get_constant_value_id(ptr noundef %91) #19
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %112, !prof !334

94:                                               ; preds = %89
  %95 = load ptr, ptr %90, align 8, !tbaa !322
  %96 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %95) #19
  tail call void @add_to_value(i32 noundef %96, ptr noundef nonnull %87)
  br label %112

97:                                               ; preds = %83
  %98 = getelementptr inbounds %struct.pre_expr_d, ptr %87, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !322
  %100 = tail call ptr @VN_INFO(ptr noundef %99) #19
  %101 = getelementptr inbounds %struct.vn_ssa_aux, ptr %100, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !335
  br label %112

103:                                              ; preds = %83
  %104 = getelementptr inbounds %struct.pre_expr_d, ptr %87, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !322
  %106 = load i32, ptr %105, align 8, !tbaa !337
  br label %112

107:                                              ; preds = %83
  %108 = getelementptr inbounds %struct.pre_expr_d, ptr %87, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !322
  %110 = load i32, ptr %109, align 8, !tbaa !339
  br label %112

111:                                              ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %112

112:                                              ; preds = %89, %94, %97, %103, %107, %111
  %113 = phi i32 [ 0, %111 ], [ %110, %107 ], [ %106, %103 ], [ %102, %97 ], [ %96, %94 ], [ %92, %89 ]
  %114 = load ptr, ptr %6, align 8, !tbaa !353
  %115 = tail call i32 @bitmap_bit_p(ptr noundef %114, i32 noundef %113) #19
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120, !prof !899

117:                                              ; preds = %112
  %118 = load ptr, ptr %0, align 8, !tbaa !351
  %119 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %118, i32 noundef %81) #19
  br label %120

120:                                              ; preds = %117, %112
  %121 = lshr i64 %79, 1
  %122 = add i32 %81, 1
  br label %22, !llvm.loop !900

123:                                              ; preds = %77
  tail call void @bitmap_obstack_free(ptr noundef nonnull %5) #19
  br label %124

124:                                              ; preds = %123, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @bitmap_set_subtract(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !prof !901 !PGOFuncName !902 {
  %3 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !311
  %4 = tail call ptr @pool_alloc(ptr noundef %3) #19
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  store ptr %5, ptr %4, align 8, !tbaa !351
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %7 = getelementptr inbounds %struct.bitmap_set, ptr %4, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !353
  %8 = load ptr, ptr %4, align 8, !tbaa !351
  %9 = load ptr, ptr %0, align 8, !tbaa !351
  %10 = load ptr, ptr %1, align 8, !tbaa !351
  %11 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %8, ptr noundef %9, ptr noundef %10) #19
  %12 = load ptr, ptr %4, align 8, !tbaa !351
  %13 = load ptr, ptr %12, align 8, !tbaa !375
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @bitmap_zero_bits, ptr %13, !prof !903
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !377
  %18 = shl i32 %17, 7
  %19 = getelementptr inbounds %struct.bitmap_element_def, ptr %15, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !379
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %18, %22
  br label %24

24:                                               ; preds = %114, %2
  %25 = phi i32 [ 0, %2 ], [ %80, %114 ]
  %26 = phi i64 [ %20, %2 ], [ %118, %114 ]
  %27 = phi ptr [ %15, %2 ], [ %82, %114 ]
  %28 = phi i32 [ %23, %2 ], [ %119, %114 ]
  %29 = icmp eq i64 %26, 0
  br i1 %29, label %44, label %30, !prof !904

30:                                               ; preds = %58, %24
  %31 = phi i32 [ %25, %24 ], [ %59, %58 ]
  %32 = phi i64 [ %26, %24 ], [ %63, %58 ]
  %33 = phi ptr [ %27, %24 ], [ %50, %58 ]
  %34 = phi i32 [ %28, %24 ], [ %60, %58 ]
  %35 = and i64 %32, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %79, !prof !905

37:                                               ; preds = %30, %37
  %38 = phi i32 [ %41, %37 ], [ %34, %30 ]
  %39 = phi i64 [ %40, %37 ], [ %32, %30 ]
  %40 = lshr exact i64 %39, 1
  %41 = add i32 %38, 1
  %42 = and i64 %39, 2
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %37, label %79, !prof !906, !llvm.loop !380

44:                                               ; preds = %24
  %45 = add i32 %28, 63
  %46 = and i32 %45, -64
  %47 = add i32 %25, 1
  br label %48

48:                                               ; preds = %75, %44
  %49 = phi i64 [ %26, %44 ], [ %70, %75 ]
  %50 = phi ptr [ %27, %44 ], [ %73, %75 ]
  %51 = phi i32 [ %46, %44 ], [ %78, %75 ]
  %52 = phi i32 [ %47, %44 ], [ 0, %75 ]
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %69, label %54, !prof !907

54:                                               ; preds = %48
  %55 = add i32 %51, 128
  %56 = shl i32 %52, 6
  %57 = sub i32 %55, %56
  br label %58

58:                                               ; preds = %54, %65
  %59 = phi i32 [ %67, %65 ], [ %52, %54 ]
  %60 = phi i32 [ %66, %65 ], [ %51, %54 ]
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 3, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !379
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %30, !prof !908

65:                                               ; preds = %58
  %66 = add i32 %60, 64
  %67 = add i32 %59, 1
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %58, !prof !909, !llvm.loop !381

69:                                               ; preds = %65, %48
  %70 = phi i64 [ %49, %48 ], [ %63, %65 ]
  %71 = phi i32 [ %51, %48 ], [ %57, %65 ]
  %72 = phi i32 [ %52, %48 ], [ 2, %65 ]
  %73 = load ptr, ptr %50, align 8, !tbaa !382
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75, !prof !910

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.bitmap_element_def, ptr %73, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !377
  %78 = shl i32 %77, 7
  br label %48, !llvm.loop !383

79:                                               ; preds = %69, %37, %30
  %80 = phi i32 [ %31, %30 ], [ %31, %37 ], [ %72, %69 ]
  %81 = phi i64 [ %32, %30 ], [ %40, %37 ], [ %70, %69 ]
  %82 = phi ptr [ %33, %30 ], [ %33, %37 ], [ %73, %69 ]
  %83 = phi i32 [ %34, %30 ], [ %41, %37 ], [ %71, %69 ]
  %84 = phi i1 [ false, %30 ], [ false, %37 ], [ true, %69 ]
  br i1 %84, label %120, label %85, !prof !911

85:                                               ; preds = %79
  %86 = load ptr, ptr @expressions, align 8
  %87 = zext i32 %83 to i64
  %88 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %86, i64 0, i32 2, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !311
  %90 = load i32, ptr %89, align 8, !tbaa !331
  switch i32 %90, label %113 [
    i32 3, label %91
    i32 0, label %99
    i32 1, label %105
    i32 2, label %109
  ], !prof !333

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.pre_expr_d, ptr %89, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !322
  %94 = tail call i32 @get_constant_value_id(ptr noundef %93) #19
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %114, !prof !334

96:                                               ; preds = %91
  %97 = load ptr, ptr %92, align 8, !tbaa !322
  %98 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %97) #19
  tail call void @add_to_value(i32 noundef %98, ptr noundef nonnull %89)
  br label %114

99:                                               ; preds = %85
  %100 = getelementptr inbounds %struct.pre_expr_d, ptr %89, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !322
  %102 = tail call ptr @VN_INFO(ptr noundef %101) #19
  %103 = getelementptr inbounds %struct.vn_ssa_aux, ptr %102, i64 0, i32 2
  %104 = load i32, ptr %103, align 8, !tbaa !335
  br label %114

105:                                              ; preds = %85
  %106 = getelementptr inbounds %struct.pre_expr_d, ptr %89, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !322
  %108 = load i32, ptr %107, align 8, !tbaa !337
  br label %114

109:                                              ; preds = %85
  %110 = getelementptr inbounds %struct.pre_expr_d, ptr %89, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !322
  %112 = load i32, ptr %111, align 8, !tbaa !339
  br label %114

113:                                              ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %114

114:                                              ; preds = %91, %96, %99, %105, %109, %113
  %115 = phi i32 [ 0, %113 ], [ %112, %109 ], [ %108, %105 ], [ %104, %99 ], [ %98, %96 ], [ %94, %91 ]
  %116 = load ptr, ptr %7, align 8, !tbaa !353
  %117 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %116, i32 noundef %115) #19
  %118 = lshr i64 %81, 1
  %119 = add i32 %83, 1
  br label %24, !llvm.loop !912

120:                                              ; preds = %79
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sorted_array_from_bitmap_set(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !913 !PGOFuncName !914 {
  %2 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !353
  %4 = tail call i64 @bitmap_count_bits(ptr noundef %3) #19
  %5 = trunc i64 %4 to i32
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %5) #19
  %7 = load ptr, ptr %2, align 8, !tbaa !353
  %8 = load ptr, ptr %7, align 8, !tbaa !375
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @bitmap_zero_bits, ptr %8, !prof !915
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !377
  %13 = shl i32 %12, 7
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !379
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = or disjoint i32 %13, %17
  br label %19

19:                                               ; preds = %187, %1
  %20 = phi i32 [ 0, %1 ], [ %76, %187 ]
  %21 = phi i64 [ %15, %1 ], [ %188, %187 ]
  %22 = phi ptr [ %10, %1 ], [ %78, %187 ]
  %23 = phi i32 [ %18, %1 ], [ %189, %187 ]
  %24 = phi ptr [ %6, %1 ], [ %103, %187 ]
  %25 = icmp eq i64 %21, 0
  br i1 %25, label %40, label %26, !prof !916

26:                                               ; preds = %54, %19
  %27 = phi i32 [ %20, %19 ], [ %55, %54 ]
  %28 = phi i64 [ %21, %19 ], [ %59, %54 ]
  %29 = phi ptr [ %22, %19 ], [ %46, %54 ]
  %30 = phi i32 [ %23, %19 ], [ %56, %54 ]
  %31 = and i64 %28, 1
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %75, !prof !917

33:                                               ; preds = %26, %33
  %34 = phi i32 [ %37, %33 ], [ %30, %26 ]
  %35 = phi i64 [ %36, %33 ], [ %28, %26 ]
  %36 = lshr exact i64 %35, 1
  %37 = add i32 %34, 1
  %38 = and i64 %35, 2
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %33, label %75, !prof !918, !llvm.loop !380

40:                                               ; preds = %19
  %41 = add i32 %23, 63
  %42 = and i32 %41, -64
  %43 = add i32 %20, 1
  br label %44

44:                                               ; preds = %71, %40
  %45 = phi i64 [ %21, %40 ], [ %66, %71 ]
  %46 = phi ptr [ %22, %40 ], [ %69, %71 ]
  %47 = phi i32 [ %42, %40 ], [ %74, %71 ]
  %48 = phi i32 [ %43, %40 ], [ 0, %71 ]
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %65, label %50, !prof !919

50:                                               ; preds = %44
  %51 = add i32 %47, 128
  %52 = shl i32 %48, 6
  %53 = sub i32 %51, %52
  br label %54

54:                                               ; preds = %50, %61
  %55 = phi i32 [ %63, %61 ], [ %48, %50 ]
  %56 = phi i32 [ %62, %61 ], [ %47, %50 ]
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %46, i64 0, i32 3, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !379
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %26, !prof !920

61:                                               ; preds = %54
  %62 = add i32 %56, 64
  %63 = add i32 %55, 1
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %54, !prof !921, !llvm.loop !381

65:                                               ; preds = %61, %44
  %66 = phi i64 [ %45, %44 ], [ %59, %61 ]
  %67 = phi i32 [ %47, %44 ], [ %53, %61 ]
  %68 = phi i32 [ %48, %44 ], [ 2, %61 ]
  %69 = load ptr, ptr %46, align 8, !tbaa !382
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71, !prof !922

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.bitmap_element_def, ptr %69, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !377
  %74 = shl i32 %73, 7
  br label %44, !llvm.loop !383

75:                                               ; preds = %65, %33, %26
  %76 = phi i32 [ %27, %26 ], [ %27, %33 ], [ %68, %65 ]
  %77 = phi i64 [ %28, %26 ], [ %36, %33 ], [ %66, %65 ]
  %78 = phi ptr [ %29, %26 ], [ %29, %33 ], [ %69, %65 ]
  %79 = phi i32 [ %30, %26 ], [ %37, %33 ], [ %67, %65 ]
  %80 = phi i1 [ false, %26 ], [ false, %33 ], [ true, %65 ]
  br i1 %80, label %190, label %81, !prof !923

81:                                               ; preds = %75
  %82 = load ptr, ptr @value_expressions, align 8
  %83 = zext i32 %79 to i64
  %84 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %82, i64 0, i32 2, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !311
  %86 = load ptr, ptr %85, align 8, !tbaa !351
  %87 = load ptr, ptr %86, align 8, !tbaa !375
  %88 = icmp eq ptr %87, null
  %89 = select i1 %88, ptr @bitmap_zero_bits, ptr %87, !prof !924
  %90 = getelementptr inbounds %struct.bitmap_element_def, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !377
  %92 = shl i32 %91, 7
  %93 = getelementptr inbounds %struct.bitmap_element_def, ptr %89, i64 0, i32 3
  %94 = load i64, ptr %93, align 8, !tbaa !379
  %95 = icmp eq i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = or disjoint i32 %92, %96
  br label %98

98:                                               ; preds = %183, %81
  %99 = phi i64 [ %94, %81 ], [ %185, %183 ]
  %100 = phi i32 [ %97, %81 ], [ %186, %183 ]
  %101 = phi i32 [ 0, %81 ], [ %157, %183 ]
  %102 = phi ptr [ %89, %81 ], [ %158, %183 ]
  %103 = phi ptr [ %24, %81 ], [ %184, %183 ]
  %104 = icmp eq i64 %99, 0
  br i1 %104, label %119, label %105, !prof !925

105:                                              ; preds = %133, %98
  %106 = phi i64 [ %99, %98 ], [ %138, %133 ]
  %107 = phi i32 [ %100, %98 ], [ %135, %133 ]
  %108 = phi i32 [ %101, %98 ], [ %134, %133 ]
  %109 = phi ptr [ %102, %98 ], [ %126, %133 ]
  %110 = and i64 %106, 1
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %154, !prof !926

112:                                              ; preds = %105, %112
  %113 = phi i32 [ %116, %112 ], [ %107, %105 ]
  %114 = phi i64 [ %115, %112 ], [ %106, %105 ]
  %115 = lshr exact i64 %114, 1
  %116 = add i32 %113, 1
  %117 = and i64 %114, 2
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %112, label %154, !prof !927, !llvm.loop !380

119:                                              ; preds = %98
  %120 = add i32 %100, 63
  %121 = and i32 %120, -64
  %122 = add i32 %101, 1
  br label %123

123:                                              ; preds = %150, %119
  %124 = phi i64 [ %99, %119 ], [ %145, %150 ]
  %125 = phi i32 [ %121, %119 ], [ %153, %150 ]
  %126 = phi ptr [ %102, %119 ], [ %148, %150 ]
  %127 = phi i32 [ %122, %119 ], [ 0, %150 ]
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %144, label %129, !prof !928

129:                                              ; preds = %123
  %130 = add i32 %125, 128
  %131 = shl i32 %127, 6
  %132 = sub i32 %130, %131
  br label %133

133:                                              ; preds = %129, %140
  %134 = phi i32 [ %142, %140 ], [ %127, %129 ]
  %135 = phi i32 [ %141, %140 ], [ %125, %129 ]
  %136 = zext i32 %134 to i64
  %137 = getelementptr inbounds %struct.bitmap_element_def, ptr %126, i64 0, i32 3, i64 %136
  %138 = load i64, ptr %137, align 8, !tbaa !379
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %105, !prof !929

140:                                              ; preds = %133
  %141 = add i32 %135, 64
  %142 = add i32 %134, 1
  %143 = icmp eq i32 %142, 2
  br i1 %143, label %144, label %133, !prof !930, !llvm.loop !381

144:                                              ; preds = %140, %123
  %145 = phi i64 [ %124, %123 ], [ %138, %140 ]
  %146 = phi i32 [ %125, %123 ], [ %132, %140 ]
  %147 = phi i32 [ %127, %123 ], [ 2, %140 ]
  %148 = load ptr, ptr %126, align 8, !tbaa !382
  %149 = icmp eq ptr %148, null
  br i1 %149, label %154, label %150, !prof !931

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.bitmap_element_def, ptr %148, i64 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !377
  %153 = shl i32 %152, 7
  br label %123, !llvm.loop !383

154:                                              ; preds = %144, %112, %105
  %155 = phi i64 [ %106, %105 ], [ %115, %112 ], [ %145, %144 ]
  %156 = phi i32 [ %107, %105 ], [ %116, %112 ], [ %146, %144 ]
  %157 = phi i32 [ %108, %105 ], [ %108, %112 ], [ %147, %144 ]
  %158 = phi ptr [ %109, %105 ], [ %109, %112 ], [ %148, %144 ]
  %159 = phi i1 [ false, %105 ], [ false, %112 ], [ true, %144 ]
  br i1 %159, label %187, label %160, !prof !932

160:                                              ; preds = %154
  %161 = load ptr, ptr %0, align 8, !tbaa !351
  %162 = tail call i32 @bitmap_bit_p(ptr noundef %161, i32 noundef %156) #19
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %183, label %164, !prof !933

164:                                              ; preds = %160
  %165 = load ptr, ptr @expressions, align 8
  %166 = zext i32 %156 to i64
  %167 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %165, i64 0, i32 2, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !311
  %169 = icmp eq ptr %103, null
  br i1 %169, label %175, label %170, !prof !924

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %103, i64 0, i32 1
  %172 = load i32, ptr %171, align 4, !tbaa !393
  %173 = load i32, ptr %103, align 8, !tbaa !395
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %177, !prof !924

175:                                              ; preds = %164, %170
  %176 = tail call ptr @vec_heap_p_reserve(ptr noundef %103, i32 noundef 1) #19
  br label %177

177:                                              ; preds = %170, %175
  %178 = phi ptr [ %176, %175 ], [ %103, %170 ]
  %179 = load i32, ptr %178, align 8, !tbaa !395
  %180 = add i32 %179, 1
  store i32 %180, ptr %178, align 8, !tbaa !395
  %181 = zext i32 %179 to i64
  %182 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %178, i64 0, i32 2, i64 %181
  store ptr %168, ptr %182, align 8, !tbaa !311
  br label %183

183:                                              ; preds = %160, %177
  %184 = phi ptr [ %103, %160 ], [ %178, %177 ]
  %185 = lshr i64 %155, 1
  %186 = add i32 %156, 1
  br label %98, !llvm.loop !934

187:                                              ; preds = %154
  %188 = lshr i64 %77, 1
  %189 = add i32 %79, 1
  br label %19, !llvm.loop !935

190:                                              ; preds = %75
  ret ptr %24
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @phi_translate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #12 !prof !936 !PGOFuncName !937 {
  %6 = alloca %struct.ao_ref_s, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.vn_nary_op_s, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca %struct.expr_pred_trans_d, align 8
  %14 = icmp eq ptr %0, null
  br i1 %14, label %886, label %15, !prof !938

15:                                               ; preds = %5
  %16 = load i32, ptr %0, align 8, !tbaa !331
  switch i32 %16, label %31 [
    i32 3, label %886
    i32 2, label %27
    i32 0, label %17
    i32 1, label %23
  ], !prof !939

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !322
  %20 = tail call ptr @VN_INFO(ptr noundef %19) #19
  %21 = getelementptr inbounds %struct.vn_ssa_aux, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !335
  br label %32

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !322
  %26 = load i32, ptr %25, align 8, !tbaa !337
  br label %32

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !322
  %30 = load i32, ptr %29, align 8, !tbaa !339
  br label %32

31:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %32

32:                                               ; preds = %17, %23, %27, %31
  %33 = phi i32 [ 0, %31 ], [ %30, %27 ], [ %26, %23 ], [ %22, %17 ]
  %34 = tail call zeroext i8 @value_id_constant_p(i32 noundef %33) #19
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %886, !prof !940

36:                                               ; preds = %32
  %37 = load i32, ptr %0, align 8, !tbaa !331
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %91, label %39, !prof !941

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #19
  store ptr %0, ptr %13, align 8, !tbaa !856
  %40 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %13, i64 0, i32 1
  store ptr %3, ptr %40, align 8, !tbaa !854
  switch i32 %37, label %74 [
    i32 3, label %41
    i32 2, label %69
    i32 1, label %64
  ], !prof !942

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !322
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !322
  %46 = tail call i32 @iterative_hash_expr(ptr noundef %43, i32 noundef 0) #19
  %47 = load i64, ptr %45, align 8
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 65535
  %50 = add nsw i32 %49, -6
  %51 = icmp ult i32 %50, 3
  br i1 %51, label %52, label %59, !prof !863

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 1023
  %56 = lshr i32 %48, 21
  %57 = and i32 %56, 1
  %58 = add nuw nsw i32 %55, %57
  br label %59

59:                                               ; preds = %52, %41
  %60 = phi i32 [ %58, %52 ], [ 0, %41 ]
  %61 = zext i1 %51 to i32
  %62 = add i32 %46, %61
  %63 = add i32 %62, %60
  br label %75

64:                                               ; preds = %39
  %65 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !322
  %67 = getelementptr inbounds %struct.vn_nary_op_s, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !864
  br label %75

69:                                               ; preds = %39
  %70 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !322
  %72 = getelementptr inbounds %struct.vn_reference_s, ptr %71, i64 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !865
  br label %75

74:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 229, ptr noundef nonnull @.str.1) #19
  br label %75

75:                                               ; preds = %59, %64, %69, %74
  %76 = phi i32 [ 0, %74 ], [ %73, %69 ], [ %68, %64 ], [ %63, %59 ]
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !432
  %79 = tail call i32 @iterative_hash_hashval_t(i32 noundef %76, i32 noundef %78) #19
  %80 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %13, i64 0, i32 3
  store i32 %79, ptr %80, align 8, !tbaa !850
  %81 = load ptr, ptr @phi_translate_table, align 8, !tbaa !311
  %82 = call ptr @htab_find_slot_with_hash(ptr noundef %81, ptr noundef nonnull %13, i32 noundef %79, i32 noundef 0) #19
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84, !prof !943

84:                                               ; preds = %75
  %85 = load ptr, ptr %82, align 8, !tbaa !311
  %86 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !944
  br label %88

88:                                               ; preds = %75, %84
  %89 = phi ptr [ %87, %84 ], [ null, %75 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #19
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %886, !prof !943

91:                                               ; preds = %88, %36
  %92 = load i32, ptr %0, align 8, !tbaa !331
  switch i32 %92, label %823 [
    i32 1, label %93
    i32 2, label %296
    i32 0, label %775
  ], !prof !945

93:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %94 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !322
  store ptr %95, ptr %8, align 8, !tbaa !311
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #19
  %96 = getelementptr inbounds %struct.vn_nary_op_s, ptr %95, i64 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = lshr i32 %97, 16
  %99 = sub nsw i32 4, %98
  %100 = sext i32 %99 to i64
  %101 = shl nsw i64 %100, 3
  %102 = sub nsw i64 64, %101
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %9, ptr align 8 %95, i64 %102, i1 false), !prof !946
  %103 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = lshr i32 %104, 16
  %106 = icmp ult i32 %104, 65536
  br i1 %106, label %153, label %107, !prof !947

107:                                              ; preds = %93
  %108 = icmp ne ptr %2, null
  %109 = zext nneg i32 %105 to i64
  br label %110

110:                                              ; preds = %107, %149
  %111 = phi i64 [ 0, %107 ], [ %151, %149 ]
  %112 = phi i8 [ 0, %107 ], [ %150, %149 ]
  %113 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5, i64 %111
  %114 = load ptr, ptr %113, align 8, !tbaa !311
  %115 = load i64, ptr %114, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 141
  br i1 %117, label %118, label %149, !prof !948

118:                                              ; preds = %110
  %119 = call ptr @VN_INFO(ptr noundef nonnull %114) #19
  %120 = getelementptr inbounds %struct.vn_ssa_aux, ptr %119, i64 0, i32 2
  %121 = load i32, ptr %120, align 8, !tbaa !335
  %122 = call fastcc ptr @bitmap_find_leader(ptr noundef %1, i32 noundef %121, ptr noundef null)
  %123 = icmp eq ptr %122, null
  %124 = and i1 %108, %123
  br i1 %124, label %125, label %127, !prof !949

125:                                              ; preds = %118
  %126 = call fastcc ptr @bitmap_find_leader(ptr noundef nonnull %2, i32 noundef %121, ptr noundef null)
  br label %127

127:                                              ; preds = %118, %125
  %128 = phi ptr [ %126, %125 ], [ %122, %118 ]
  %129 = call fastcc ptr @phi_translate(ptr noundef %128, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %130 = icmp eq ptr %129, null
  %131 = icmp eq ptr %129, %128
  %132 = or i1 %130, %131
  br i1 %132, label %137, label %133, !prof !950

133:                                              ; preds = %127
  %134 = call fastcc ptr @get_representative_for(ptr noundef nonnull %129)
  %135 = icmp eq ptr %134, null
  br i1 %135, label %146, label %136, !prof !951

136:                                              ; preds = %133
  store ptr %134, ptr %113, align 8, !tbaa !311
  br label %138

137:                                              ; preds = %127
  br i1 %130, label %146, label %138, !prof !952

138:                                              ; preds = %137, %136
  %139 = load ptr, ptr %113, align 8, !tbaa !311
  %140 = load ptr, ptr %8, align 8, !tbaa !311
  %141 = getelementptr inbounds %struct.vn_nary_op_s, ptr %140, i64 0, i32 5, i64 %111
  %142 = load ptr, ptr %141, align 8, !tbaa !311
  %143 = icmp ne ptr %139, %142
  %144 = zext i1 %143 to i8
  %145 = or i8 %112, %144
  br label %146

146:                                              ; preds = %138, %137, %133
  %147 = phi i1 [ true, %138 ], [ false, %137 ], [ false, %133 ]
  %148 = phi i8 [ %145, %138 ], [ %112, %137 ], [ %112, %133 ]
  br i1 %147, label %149, label %294, !prof !953

149:                                              ; preds = %146, %110
  %150 = phi i8 [ %112, %110 ], [ %148, %146 ]
  %151 = add nuw nsw i64 %111, 1
  %152 = icmp eq i64 %151, %109
  br i1 %152, label %153, label %110, !prof !954, !llvm.loop !955

153:                                              ; preds = %149, %93
  %154 = phi i8 [ 0, %93 ], [ %150, %149 ]
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %294, label %156, !prof !956

156:                                              ; preds = %153
  %157 = and i32 %104, 65535
  %158 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 4
  %159 = load ptr, ptr %158, align 8, !tbaa !957
  %160 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5
  %161 = load ptr, ptr %160, align 8, !tbaa !311
  %162 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !311
  %164 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5, i64 2
  %165 = load ptr, ptr %164, align 8, !tbaa !311
  %166 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5, i64 3
  %167 = load ptr, ptr %166, align 8, !tbaa !311
  %168 = call ptr @vn_nary_op_lookup_pieces(i32 noundef %105, i32 noundef %157, ptr noundef %159, ptr noundef %161, ptr noundef %163, ptr noundef %165, ptr noundef %167, ptr noundef nonnull %8) #19
  %169 = icmp eq ptr %168, null
  br i1 %169, label %175, label %170, !prof !958

170:                                              ; preds = %156
  %171 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %168) #19
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %175, label %173, !prof !959

173:                                              ; preds = %170
  %174 = call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %168)
  br label %294

175:                                              ; preds = %170, %156
  %176 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !311
  %177 = call ptr @pool_alloc(ptr noundef %176) #19
  store i32 1, ptr %177, align 8, !tbaa !331
  %178 = getelementptr inbounds %struct.pre_expr_d, ptr %177, i64 0, i32 1
  store i32 0, ptr %178, align 4, !tbaa !361
  %179 = load ptr, ptr %8, align 8, !tbaa !311
  %180 = icmp eq ptr %179, null
  br i1 %180, label %220, label %181, !prof !960

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.pre_expr_d, ptr %177, i64 0, i32 2
  store ptr %179, ptr %182, align 8, !tbaa !322
  %183 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %177)
  %184 = icmp eq ptr %183, %177
  br i1 %184, label %185, label %294, !prof !961

185:                                              ; preds = %181
  %186 = load ptr, ptr %8, align 8, !tbaa !311
  %187 = load i32, ptr %186, align 8, !tbaa !337
  %188 = load i32, ptr %177, align 8, !tbaa !331
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %204, !prof !962

190:                                              ; preds = %185
  %191 = load ptr, ptr %182, align 8, !tbaa !322
  %192 = getelementptr inbounds %struct.tree_ssa_name, ptr %191, i64 0, i32 3
  %193 = load i32, ptr %192, align 8, !tbaa !322
  %194 = load ptr, ptr @name_to_id, align 8
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %190
  %197 = load i32, ptr %194, align 4, !tbaa !356
  br label %198

198:                                              ; preds = %196, %190
  %199 = phi i32 [ %197, %196 ], [ 0, %190 ]
  %200 = icmp ugt i32 %199, %193
  br i1 %200, label %201, label %214

201:                                              ; preds = %198
  %202 = zext i32 %193 to i64
  %203 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %194, i64 0, i32 2, i64 %202
  br label %211

204:                                              ; preds = %185
  %205 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %206 = call ptr @htab_find_slot(ptr noundef %205, ptr noundef nonnull %177, i32 noundef 0) #19
  %207 = icmp eq ptr %206, null
  br i1 %207, label %214, label %208, !prof !962

208:                                              ; preds = %204
  %209 = load ptr, ptr %206, align 8, !tbaa !311
  %210 = getelementptr inbounds %struct.pre_expr_d, ptr %209, i64 0, i32 1
  br label %211

211:                                              ; preds = %201, %208
  %212 = phi ptr [ %210, %208 ], [ %203, %201 ]
  %213 = load i32, ptr %212, align 4, !tbaa !326
  br label %214

214:                                              ; preds = %211, %204, %198
  %215 = phi i32 [ 0, %198 ], [ 0, %204 ], [ %213, %211 ]
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %219, !prof !962

217:                                              ; preds = %214
  %218 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %177)
  br label %292

219:                                              ; preds = %214
  store i32 %215, ptr %178, align 4, !tbaa !361
  br label %292

220:                                              ; preds = %175
  %221 = call i32 @get_next_value_id() #19
  %222 = call i32 @get_max_value_id() #19
  %223 = add i32 %222, 1
  %224 = load ptr, ptr @value_expressions, align 8, !tbaa !311
  %225 = icmp eq ptr %224, null
  br i1 %225, label %228, label %226, !prof !963

226:                                              ; preds = %220
  %227 = load i32, ptr %224, align 8, !tbaa !343
  br label %228

228:                                              ; preds = %226, %220
  %229 = phi i32 [ %227, %226 ], [ 0, %220 ]
  br i1 %225, label %232, label %230, !prof !963

230:                                              ; preds = %228
  %231 = load i32, ptr %224, align 8, !tbaa !343
  br label %232

232:                                              ; preds = %230, %228
  %233 = phi i32 [ %231, %230 ], [ 0, %228 ]
  %234 = sub nsw i32 %223, %233
  br i1 %225, label %241, label %235, !prof !963

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %224, i64 0, i32 1
  %237 = load i32, ptr %236, align 4, !tbaa !347
  %238 = load i32, ptr %224, align 8, !tbaa !343
  %239 = sub i32 %237, %238
  %240 = icmp uge i32 %239, %234
  br label %243

241:                                              ; preds = %232
  %242 = icmp eq i32 %233, %223
  br label %243

243:                                              ; preds = %241, %235
  %244 = phi i1 [ %240, %235 ], [ %242, %241 ]
  br i1 %244, label %247, label %245, !prof !963

245:                                              ; preds = %243
  %246 = call ptr @vec_heap_p_reserve_exact(ptr noundef %224, i32 noundef %234) #19
  store ptr %246, ptr @value_expressions, align 8, !tbaa !311
  br label %247

247:                                              ; preds = %243, %245
  %248 = load ptr, ptr @value_expressions, align 8, !tbaa !311, !nonnull !348, !noundef !348
  store i32 %223, ptr %248, align 8, !tbaa !343
  %249 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %248, i64 0, i32 2
  %250 = sext i32 %229 to i64
  %251 = getelementptr inbounds ptr, ptr %249, i64 %250
  %252 = sub nsw i32 %223, %229
  %253 = sext i32 %252 to i64
  %254 = shl nsw i64 %253, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %251, i8 0, i64 %254, i1 false), !prof !964
  %255 = call ptr @vn_nary_op_insert_pieces(i32 noundef %105, i32 noundef %157, ptr noundef %159, ptr noundef %161, ptr noundef %163, ptr noundef %165, ptr noundef %167, ptr noundef %168, i32 noundef %221) #19
  store ptr %255, ptr %8, align 8, !tbaa !311
  %256 = getelementptr inbounds %struct.pre_expr_d, ptr %177, i64 0, i32 2
  store ptr %255, ptr %256, align 8, !tbaa !322
  %257 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %177)
  %258 = icmp eq ptr %257, %177
  br i1 %258, label %259, label %294, !prof !965

259:                                              ; preds = %247
  %260 = load i32, ptr %177, align 8, !tbaa !331
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %276, !prof !963

262:                                              ; preds = %259
  %263 = load ptr, ptr %256, align 8, !tbaa !322
  %264 = getelementptr inbounds %struct.tree_ssa_name, ptr %263, i64 0, i32 3
  %265 = load i32, ptr %264, align 8, !tbaa !322
  %266 = load ptr, ptr @name_to_id, align 8
  %267 = icmp eq ptr %266, null
  br i1 %267, label %270, label %268

268:                                              ; preds = %262
  %269 = load i32, ptr %266, align 4, !tbaa !356
  br label %270

270:                                              ; preds = %268, %262
  %271 = phi i32 [ %269, %268 ], [ 0, %262 ]
  %272 = icmp ugt i32 %271, %265
  br i1 %272, label %273, label %286

273:                                              ; preds = %270
  %274 = zext i32 %265 to i64
  %275 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %266, i64 0, i32 2, i64 %274
  br label %283

276:                                              ; preds = %259
  %277 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %278 = call ptr @htab_find_slot(ptr noundef %277, ptr noundef nonnull %177, i32 noundef 0) #19
  %279 = icmp eq ptr %278, null
  br i1 %279, label %286, label %280, !prof !965

280:                                              ; preds = %276
  %281 = load ptr, ptr %278, align 8, !tbaa !311
  %282 = getelementptr inbounds %struct.pre_expr_d, ptr %281, i64 0, i32 1
  br label %283

283:                                              ; preds = %273, %280
  %284 = phi ptr [ %282, %280 ], [ %275, %273 ]
  %285 = load i32, ptr %284, align 4, !tbaa !326
  br label %286

286:                                              ; preds = %283, %276, %270
  %287 = phi i32 [ 0, %270 ], [ 0, %276 ], [ %285, %283 ]
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %291, !prof !965

289:                                              ; preds = %286
  %290 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %177)
  br label %292

291:                                              ; preds = %286
  store i32 %287, ptr %178, align 4, !tbaa !361
  br label %292

292:                                              ; preds = %291, %289, %219, %217
  %293 = phi i32 [ %187, %217 ], [ %187, %219 ], [ %221, %289 ], [ %221, %291 ]
  call void @add_to_value(i32 noundef %293, ptr noundef nonnull %177)
  br label %294

294:                                              ; preds = %146, %173, %181, %247, %292, %153
  %295 = phi ptr [ %0, %153 ], [ %174, %173 ], [ %177, %292 ], [ %183, %181 ], [ %257, %247 ], [ null, %146 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %824

296:                                              ; preds = %91
  %297 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !322
  %299 = getelementptr inbounds %struct.vn_reference_s, ptr %298, i64 0, i32 5
  %300 = load ptr, ptr %299, align 8, !tbaa !365
  %301 = getelementptr inbounds %struct.vn_reference_s, ptr %298, i64 0, i32 2
  %302 = load ptr, ptr %301, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  store ptr null, ptr %10, align 8, !tbaa !311
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  %303 = icmp eq ptr %300, null
  br label %304

304:                                              ; preds = %503, %296
  %305 = phi i32 [ 0, %296 ], [ %506, %503 ]
  %306 = phi i32 [ 0, %296 ], [ %504, %503 ]
  %307 = phi i8 [ 0, %296 ], [ %501, %503 ]
  store i32 %305, ptr %11, align 4, !tbaa !326
  br i1 %303, label %314, label %308, !prof !966

308:                                              ; preds = %304
  %309 = load i32, ptr %300, align 8, !tbaa !366
  %310 = icmp ugt i32 %309, %306
  br i1 %310, label %311, label %314, !prof !967

311:                                              ; preds = %308
  %312 = zext i32 %306 to i64
  %313 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %300, i64 0, i32 2, i64 %312
  br label %314

314:                                              ; preds = %304, %308, %311
  %315 = phi ptr [ %313, %311 ], [ null, %308 ], [ null, %304 ]
  %316 = phi i1 [ false, %311 ], [ true, %308 ], [ true, %304 ]
  br i1 %316, label %507, label %317, !prof !968

317:                                              ; preds = %314
  %318 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %315, i64 0, i32 2
  %319 = load ptr, ptr %318, align 8, !tbaa !370
  %320 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %315, i64 0, i32 3
  %321 = load ptr, ptr %320, align 8, !tbaa !371
  %322 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %315, i64 0, i32 4
  %323 = load ptr, ptr %322, align 8, !tbaa !372
  %324 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %315, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !969
  %326 = load i32, ptr %315, align 8, !tbaa.struct !970
  %327 = getelementptr inbounds i8, ptr %315, i64 4
  %328 = load i32, ptr %327, align 4, !tbaa.struct !971
  %329 = icmp eq ptr %319, null
  br i1 %329, label %362, label %330, !prof !972

330:                                              ; preds = %317
  %331 = load i64, ptr %319, align 8
  %332 = and i64 %331, 65535
  %333 = icmp eq i64 %332, 141
  br i1 %333, label %334, label %362, !prof !973

334:                                              ; preds = %330
  %335 = icmp ne ptr %2, null
  %336 = call ptr @VN_INFO(ptr noundef nonnull %319) #19
  %337 = getelementptr inbounds %struct.vn_ssa_aux, ptr %336, i64 0, i32 2
  %338 = load i32, ptr %337, align 8, !tbaa !335
  %339 = call fastcc ptr @bitmap_find_leader(ptr noundef %1, i32 noundef %338, ptr noundef null)
  %340 = icmp eq ptr %339, null
  %341 = and i1 %335, %340
  br i1 %341, label %342, label %344, !prof !974

342:                                              ; preds = %334
  %343 = call fastcc ptr @bitmap_find_leader(ptr noundef nonnull %2, i32 noundef %338, ptr noundef null)
  br label %344

344:                                              ; preds = %334, %342
  %345 = phi ptr [ %343, %342 ], [ %339, %334 ]
  %346 = call fastcc ptr @phi_translate(ptr noundef %345, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %347 = icmp eq ptr %346, null
  %348 = icmp eq ptr %346, %345
  %349 = or i1 %347, %348
  br i1 %349, label %355, label %350, !prof !975

350:                                              ; preds = %344
  %351 = call fastcc ptr @get_representative_for(ptr noundef nonnull %346)
  %352 = icmp eq ptr %351, null
  %353 = select i1 %352, ptr %319, ptr %351, !prof !976
  %354 = select i1 %352, i32 6, i32 0, !prof !976
  br i1 %352, label %358, label %356, !prof !976

355:                                              ; preds = %344
  br i1 %347, label %358, label %356, !prof !977

356:                                              ; preds = %355, %350
  %357 = phi ptr [ %353, %350 ], [ %319, %355 ]
  br label %358

358:                                              ; preds = %355, %356, %350
  %359 = phi ptr [ %357, %356 ], [ %353, %350 ], [ %319, %355 ]
  %360 = phi i32 [ 0, %356 ], [ %354, %350 ], [ 6, %355 ]
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %500, !prof !978

362:                                              ; preds = %358, %330, %317
  %363 = phi ptr [ %319, %330 ], [ null, %317 ], [ %359, %358 ]
  %364 = icmp ne ptr %363, %319
  %365 = zext i1 %364 to i8
  %366 = or i8 %307, %365
  %367 = icmp eq ptr %321, null
  br i1 %367, label %403, label %368, !prof !979

368:                                              ; preds = %362
  %369 = load i64, ptr %321, align 8
  %370 = and i64 %369, 65535
  %371 = icmp eq i64 %370, 141
  br i1 %371, label %372, label %400, !prof !980

372:                                              ; preds = %368
  %373 = icmp ne ptr %2, null
  %374 = call ptr @VN_INFO(ptr noundef nonnull %321) #19
  %375 = getelementptr inbounds %struct.vn_ssa_aux, ptr %374, i64 0, i32 2
  %376 = load i32, ptr %375, align 8, !tbaa !335
  %377 = call fastcc ptr @bitmap_find_leader(ptr noundef %1, i32 noundef %376, ptr noundef null)
  %378 = icmp eq ptr %377, null
  %379 = and i1 %373, %378
  br i1 %379, label %380, label %382

380:                                              ; preds = %372
  %381 = call fastcc ptr @bitmap_find_leader(ptr noundef nonnull %2, i32 noundef %376, ptr noundef null)
  br label %382

382:                                              ; preds = %372, %380
  %383 = phi ptr [ %381, %380 ], [ %377, %372 ]
  %384 = call fastcc ptr @phi_translate(ptr noundef %383, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %385 = icmp eq ptr %384, null
  %386 = icmp eq ptr %384, %383
  %387 = or i1 %385, %386
  br i1 %387, label %393, label %388

388:                                              ; preds = %382
  %389 = call fastcc ptr @get_representative_for(ptr noundef nonnull %384)
  %390 = icmp eq ptr %389, null
  %391 = select i1 %390, ptr %321, ptr %389
  %392 = select i1 %390, i32 6, i32 0
  br i1 %390, label %396, label %394

393:                                              ; preds = %382
  br i1 %385, label %396, label %394

394:                                              ; preds = %393, %388
  %395 = phi ptr [ %391, %388 ], [ %321, %393 ]
  br label %396

396:                                              ; preds = %393, %394, %388
  %397 = phi ptr [ %395, %394 ], [ %391, %388 ], [ %321, %393 ]
  %398 = phi i32 [ 0, %394 ], [ %392, %388 ], [ 6, %393 ]
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %403, label %500

400:                                              ; preds = %368
  %401 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %321) #19
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %500, label %403, !prof !980

403:                                              ; preds = %396, %400, %362
  %404 = phi ptr [ %321, %400 ], [ null, %362 ], [ %397, %396 ]
  %405 = icmp ne ptr %404, %321
  %406 = zext i1 %405 to i8
  %407 = or i8 %366, %406
  %408 = icmp eq ptr %323, null
  br i1 %408, label %444, label %409, !prof !979

409:                                              ; preds = %403
  %410 = load i64, ptr %323, align 8
  %411 = and i64 %410, 65535
  %412 = icmp eq i64 %411, 141
  br i1 %412, label %413, label %441, !prof !980

413:                                              ; preds = %409
  %414 = icmp ne ptr %2, null
  %415 = call ptr @VN_INFO(ptr noundef nonnull %323) #19
  %416 = getelementptr inbounds %struct.vn_ssa_aux, ptr %415, i64 0, i32 2
  %417 = load i32, ptr %416, align 8, !tbaa !335
  %418 = call fastcc ptr @bitmap_find_leader(ptr noundef %1, i32 noundef %417, ptr noundef null)
  %419 = icmp eq ptr %418, null
  %420 = and i1 %414, %419
  br i1 %420, label %421, label %423

421:                                              ; preds = %413
  %422 = call fastcc ptr @bitmap_find_leader(ptr noundef nonnull %2, i32 noundef %417, ptr noundef null)
  br label %423

423:                                              ; preds = %413, %421
  %424 = phi ptr [ %422, %421 ], [ %418, %413 ]
  %425 = call fastcc ptr @phi_translate(ptr noundef %424, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %426 = icmp eq ptr %425, null
  %427 = icmp eq ptr %425, %424
  %428 = or i1 %426, %427
  br i1 %428, label %434, label %429

429:                                              ; preds = %423
  %430 = call fastcc ptr @get_representative_for(ptr noundef nonnull %425)
  %431 = icmp eq ptr %430, null
  %432 = select i1 %431, ptr %323, ptr %430
  %433 = select i1 %431, i32 6, i32 0
  br i1 %431, label %437, label %435

434:                                              ; preds = %423
  br i1 %426, label %437, label %435

435:                                              ; preds = %434, %429
  %436 = phi ptr [ %432, %429 ], [ %323, %434 ]
  br label %437

437:                                              ; preds = %434, %435, %429
  %438 = phi ptr [ %436, %435 ], [ %432, %429 ], [ %323, %434 ]
  %439 = phi i32 [ 0, %435 ], [ %433, %429 ], [ 6, %434 ]
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %444, label %500

441:                                              ; preds = %409
  %442 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %323) #19
  %443 = icmp eq i8 %442, 0
  br i1 %443, label %500, label %444, !prof !980

444:                                              ; preds = %437, %441, %403
  %445 = phi ptr [ %323, %441 ], [ null, %403 ], [ %438, %437 ]
  %446 = icmp ne ptr %445, %323
  %447 = zext i1 %446 to i8
  %448 = or i8 %407, %447
  %449 = load ptr, ptr %10, align 8, !tbaa !311
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %465, !prof !981

451:                                              ; preds = %444
  br i1 %303, label %454, label %452, !prof !982

452:                                              ; preds = %451
  %453 = load i32, ptr %300, align 8, !tbaa !366
  br label %454

454:                                              ; preds = %452, %451
  %455 = phi i32 [ %453, %452 ], [ 0, %451 ]
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %463, label %457, !prof !982

457:                                              ; preds = %454
  %458 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %300, i64 0, i32 2
  %459 = zext i32 %455 to i64
  %460 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %455, i64 noundef 8, i64 noundef 40) #19
  store i32 %455, ptr %460, align 8, !tbaa !983
  %461 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %460, i64 0, i32 2
  %462 = mul nuw nsw i64 %459, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %461, ptr nonnull align 8 %458, i64 %462, i1 false), !prof !985
  br label %463

463:                                              ; preds = %454, %457
  %464 = phi ptr [ %460, %457 ], [ null, %454 ]
  store ptr %464, ptr %10, align 8, !tbaa !311
  br label %465

465:                                              ; preds = %463, %444
  %466 = icmp eq i32 %326, 141
  br i1 %466, label %467, label %473, !prof !986

467:                                              ; preds = %465
  %468 = load i64, ptr %363, align 8
  %469 = trunc i64 %468 to i32
  %470 = and i32 %469, 65535
  %471 = icmp eq i32 %470, 141
  %472 = select i1 %471, i32 %326, i32 %470, !prof !987
  br label %473

473:                                              ; preds = %467, %465
  %474 = phi i32 [ %326, %465 ], [ %472, %467 ]
  %475 = load ptr, ptr %10, align 8
  %476 = load i32, ptr %11, align 4, !tbaa !326
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %475, i64 0, i32 2, i64 %477
  store i32 %474, ptr %478, align 8, !tbaa.struct !970
  %479 = getelementptr inbounds i8, ptr %478, i64 4
  store i32 %328, ptr %479, align 4, !tbaa.struct !971
  %480 = getelementptr inbounds i8, ptr %478, i64 8
  store ptr %325, ptr %480, align 8, !tbaa.struct !988
  %481 = getelementptr inbounds i8, ptr %478, i64 16
  store ptr %363, ptr %481, align 8, !tbaa.struct !474
  %482 = getelementptr inbounds i8, ptr %478, i64 24
  store ptr %404, ptr %482, align 8, !tbaa.struct !717
  %483 = getelementptr inbounds i8, ptr %478, i64 32
  store ptr %445, ptr %483, align 8, !tbaa.struct !425
  %484 = load i32, ptr %11, align 4, !tbaa !326
  %485 = icmp ne i32 %484, 0
  %486 = icmp ne ptr %363, null
  %487 = and i1 %486, %485
  br i1 %487, label %488, label %500, !prof !989

488:                                              ; preds = %473
  %489 = load i64, ptr %363, align 8
  %490 = and i64 %489, 65535
  %491 = icmp eq i64 %490, 121
  br i1 %491, label %492, label %500, !prof !990

492:                                              ; preds = %488
  %493 = load ptr, ptr %10, align 8
  %494 = add i32 %484, -1
  %495 = zext i32 %494 to i64
  %496 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %493, i64 0, i32 2, i64 %495
  %497 = load i32, ptr %496, align 8, !tbaa !368
  %498 = icmp eq i32 %497, 47
  br i1 %498, label %499, label %500

499:                                              ; preds = %492
  call void @vn_reference_fold_indirect(ptr noundef nonnull %10, ptr noundef nonnull %11) #19
  br label %500

500:                                              ; preds = %441, %400, %499, %492, %488, %473, %437, %396, %358
  %501 = phi i8 [ %407, %437 ], [ %366, %396 ], [ %307, %358 ], [ %448, %499 ], [ %448, %492 ], [ %448, %488 ], [ %448, %473 ], [ %366, %400 ], [ %407, %441 ]
  %502 = phi i1 [ false, %437 ], [ false, %396 ], [ false, %358 ], [ true, %499 ], [ true, %492 ], [ true, %488 ], [ true, %473 ], [ false, %400 ], [ false, %441 ]
  br i1 %502, label %503, label %507, !prof !991

503:                                              ; preds = %500
  %504 = add i32 %306, 1
  %505 = load i32, ptr %11, align 4, !tbaa !326
  %506 = add i32 %505, 1
  br label %304, !llvm.loop !992

507:                                              ; preds = %500, %314
  %508 = phi i8 [ %501, %500 ], [ %307, %314 ]
  br i1 %303, label %511, label %509, !prof !982

509:                                              ; preds = %507
  %510 = load i32, ptr %300, align 8, !tbaa !366
  br label %511

511:                                              ; preds = %507, %509
  %512 = phi i32 [ %510, %509 ], [ 0, %507 ]
  %513 = icmp eq i32 %306, %512
  br i1 %513, label %518, label %514, !prof !993

514:                                              ; preds = %511
  %515 = load ptr, ptr %10, align 8, !tbaa !311
  %516 = icmp eq ptr %515, null
  br i1 %516, label %773, label %517, !prof !994

517:                                              ; preds = %514
  call void @free(ptr noundef %515)
  store ptr null, ptr %10, align 8, !tbaa !311
  br label %773

518:                                              ; preds = %511
  %519 = icmp eq ptr %302, null
  br i1 %519, label %603, label %520, !prof !995

520:                                              ; preds = %518
  %521 = load ptr, ptr %10, align 8, !tbaa !311
  %522 = getelementptr inbounds %struct.vn_reference_s, ptr %298, i64 0, i32 3
  %523 = load i32, ptr %522, align 8, !tbaa !996
  %524 = getelementptr inbounds %struct.vn_reference_s, ptr %298, i64 0, i32 4
  %525 = load ptr, ptr %524, align 8, !tbaa !997
  %526 = getelementptr inbounds %struct.tree_ssa_name, ptr %302, i64 0, i32 2
  %527 = load ptr, ptr %526, align 8, !tbaa !322
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #19
  %528 = getelementptr inbounds %struct.gimple_statement_base, ptr %527, i64 0, i32 4
  %529 = load ptr, ptr %528, align 8, !tbaa !322
  %530 = icmp eq ptr %529, %4
  br i1 %530, label %531, label %594, !prof !998

531:                                              ; preds = %520
  %532 = call zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef nonnull %6, i32 noundef %523, ptr noundef %525, ptr noundef %521) #19
  %533 = load i32, ptr %527, align 8
  %534 = and i32 %533, 255
  %535 = icmp eq i32 %534, 16
  br i1 %535, label %558, label %536, !prof !999

536:                                              ; preds = %531
  %537 = icmp eq i8 %532, 0
  br i1 %537, label %594, label %538

538:                                              ; preds = %536, %554
  %539 = phi ptr [ %550, %554 ], [ %527, %536 ]
  %540 = call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef nonnull %539, ptr noundef nonnull %6) #19
  %541 = icmp eq i8 %540, 0
  br i1 %541, label %542, label %561

542:                                              ; preds = %538
  %543 = load i32, ptr %539, align 8
  %544 = and i32 %543, 254
  %545 = add nsw i32 %544, -6
  %546 = icmp ult i32 %545, 4
  call void @llvm.assume(i1 %546)
  %547 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %539, i64 0, i32 2
  %548 = load ptr, ptr %547, align 8, !tbaa !322
  %549 = getelementptr inbounds %struct.tree_ssa_name, ptr %548, i64 0, i32 2
  %550 = load ptr, ptr %549, align 8, !tbaa !322
  %551 = getelementptr inbounds %struct.gimple_statement_base, ptr %550, i64 0, i32 4
  %552 = load ptr, ptr %551, align 8, !tbaa !322
  %553 = icmp eq ptr %552, %4
  br i1 %553, label %554, label %594

554:                                              ; preds = %542
  %555 = load i32, ptr %550, align 8
  %556 = and i32 %555, 255
  %557 = icmp eq i32 %556, 16
  br i1 %557, label %558, label %538, !llvm.loop !1000

558:                                              ; preds = %554, %531
  %559 = phi ptr [ %527, %531 ], [ %550, %554 ]
  %560 = call ptr @find_edge(ptr noundef %3, ptr noundef %4) #19
  br label %561

561:                                              ; preds = %538, %558
  %562 = phi ptr [ %559, %558 ], [ %539, %538 ]
  %563 = phi ptr [ %560, %558 ], [ null, %538 ]
  %564 = icmp eq ptr %563, null
  br i1 %564, label %594, label %565, !prof !1001

565:                                              ; preds = %561
  %566 = icmp eq i8 %532, 0
  br i1 %566, label %574, label %567, !prof !1001

567:                                              ; preds = %565
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store ptr null, ptr %7, align 8, !tbaa !311
  %568 = call ptr @get_continuation_for_phi(ptr noundef %562, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %569 = load ptr, ptr %7, align 8, !tbaa !311
  %570 = icmp eq ptr %569, null
  br i1 %570, label %572, label %571, !prof !1002

571:                                              ; preds = %567
  call void @bitmap_obstack_free(ptr noundef nonnull %569) #19
  store ptr null, ptr %7, align 8, !tbaa !311
  br label %572

572:                                              ; preds = %571, %567
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %573 = icmp eq ptr %568, null
  br i1 %573, label %574, label %581, !prof !999

574:                                              ; preds = %572, %565
  %575 = getelementptr inbounds %struct.edge_def, ptr %563, i64 0, i32 6
  %576 = load i32, ptr %575, align 4, !tbaa !1003
  %577 = getelementptr inbounds %struct.gimple_statement_phi, ptr %562, i64 0, i32 1
  %578 = load i32, ptr %577, align 8, !tbaa !322
  %579 = icmp ult i32 %578, %576
  br i1 %579, label %580, label %581, !prof !1001

580:                                              ; preds = %574
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %581

581:                                              ; preds = %580, %574, %572
  %582 = phi i8 [ 0, %580 ], [ 0, %574 ], [ 1, %572 ]
  %583 = getelementptr inbounds %struct.edge_def, ptr %563, i64 0, i32 6
  %584 = load i32, ptr %583, align 4, !tbaa !1003
  %585 = getelementptr inbounds %struct.gimple_statement_phi, ptr %562, i64 0, i32 1
  %586 = load i32, ptr %585, align 8, !tbaa !322
  %587 = icmp ult i32 %586, %584
  br i1 %587, label %588, label %589, !prof !1001

588:                                              ; preds = %581
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %589

589:                                              ; preds = %588, %581
  %590 = zext i32 %584 to i64
  %591 = getelementptr inbounds %struct.gimple_statement_phi, ptr %562, i64 0, i32 4, i64 %590, i32 0, i32 3
  %592 = load ptr, ptr %591, align 8, !tbaa !482
  %593 = load ptr, ptr %592, align 8, !tbaa !311
  br label %594

594:                                              ; preds = %542, %520, %536, %561, %589
  %595 = phi i8 [ 1, %561 ], [ %582, %589 ], [ 1, %536 ], [ 1, %520 ], [ 1, %542 ]
  %596 = phi ptr [ null, %561 ], [ %593, %589 ], [ null, %536 ], [ %302, %520 ], [ %548, %542 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #19
  %597 = icmp eq ptr %596, null
  br i1 %597, label %598, label %603, !prof !995

598:                                              ; preds = %594
  %599 = load ptr, ptr %10, align 8, !tbaa !311
  %600 = icmp eq ptr %599, null
  br i1 %600, label %602, label %601

601:                                              ; preds = %598
  call void @free(ptr noundef %599)
  br label %602

602:                                              ; preds = %598, %601
  store ptr null, ptr %10, align 8, !tbaa !311
  br label %773

603:                                              ; preds = %594, %518
  %604 = phi i8 [ 1, %518 ], [ %595, %594 ]
  %605 = phi ptr [ null, %518 ], [ %596, %594 ]
  %606 = icmp eq i8 %508, 0
  %607 = icmp eq ptr %605, %302
  %608 = select i1 %606, i1 %607, i1 false, !prof !1004
  br i1 %608, label %767, label %609, !prof !1005

609:                                              ; preds = %603
  %610 = getelementptr inbounds %struct.vn_reference_s, ptr %298, i64 0, i32 3
  %611 = load i32, ptr %610, align 8, !tbaa !996
  %612 = getelementptr inbounds %struct.vn_reference_s, ptr %298, i64 0, i32 4
  %613 = load ptr, ptr %612, align 8, !tbaa !997
  %614 = load ptr, ptr %10, align 8, !tbaa !311
  %615 = call ptr @vn_reference_lookup_pieces(ptr noundef %605, i32 noundef %611, ptr noundef %613, ptr noundef %614, ptr noundef nonnull %12, i8 noundef zeroext 1) #19
  %616 = load ptr, ptr %12, align 8, !tbaa !311
  %617 = icmp eq ptr %616, null
  br i1 %617, label %623, label %618, !prof !1006

618:                                              ; preds = %609
  %619 = load ptr, ptr %10, align 8, !tbaa !311
  %620 = icmp eq ptr %619, null
  br i1 %620, label %622, label %621, !prof !1007

621:                                              ; preds = %618
  call void @free(ptr noundef %619)
  br label %622

622:                                              ; preds = %618, %621
  store ptr null, ptr %10, align 8, !tbaa !311
  br label %623

623:                                              ; preds = %622, %609
  %624 = icmp eq ptr %615, null
  br i1 %624, label %634, label %625, !prof !1008

625:                                              ; preds = %623
  %626 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %615) #19
  %627 = icmp eq i8 %626, 0
  br i1 %627, label %634, label %628, !prof !1009

628:                                              ; preds = %625
  %629 = load ptr, ptr %10, align 8, !tbaa !311
  %630 = icmp eq ptr %629, null
  br i1 %630, label %632, label %631

631:                                              ; preds = %628
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1722, ptr noundef nonnull @.str.1) #19
  br label %632

632:                                              ; preds = %631, %628
  %633 = call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %615)
  br label %763

634:                                              ; preds = %625, %623
  %635 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !311
  %636 = call ptr @pool_alloc(ptr noundef %635) #19
  store i32 2, ptr %636, align 8, !tbaa !331
  %637 = getelementptr inbounds %struct.pre_expr_d, ptr %636, i64 0, i32 1
  store i32 0, ptr %637, align 4, !tbaa !361
  %638 = load ptr, ptr %12, align 8, !tbaa !311
  %639 = icmp eq ptr %638, null
  br i1 %639, label %679, label %640, !prof !1006

640:                                              ; preds = %634
  %641 = getelementptr inbounds %struct.pre_expr_d, ptr %636, i64 0, i32 2
  store ptr %638, ptr %641, align 8, !tbaa !322
  %642 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %636)
  %643 = icmp eq ptr %642, %636
  br i1 %643, label %644, label %763, !prof !1010

644:                                              ; preds = %640
  %645 = load ptr, ptr %12, align 8, !tbaa !311
  %646 = load i32, ptr %645, align 8, !tbaa !339
  %647 = load i32, ptr %636, align 8, !tbaa !331
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %663, !prof !1007

649:                                              ; preds = %644
  %650 = load ptr, ptr %641, align 8, !tbaa !322
  %651 = getelementptr inbounds %struct.tree_ssa_name, ptr %650, i64 0, i32 3
  %652 = load i32, ptr %651, align 8, !tbaa !322
  %653 = load ptr, ptr @name_to_id, align 8
  %654 = icmp eq ptr %653, null
  br i1 %654, label %657, label %655

655:                                              ; preds = %649
  %656 = load i32, ptr %653, align 4, !tbaa !356
  br label %657

657:                                              ; preds = %655, %649
  %658 = phi i32 [ %656, %655 ], [ 0, %649 ]
  %659 = icmp ugt i32 %658, %652
  br i1 %659, label %660, label %673

660:                                              ; preds = %657
  %661 = zext i32 %652 to i64
  %662 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %653, i64 0, i32 2, i64 %661
  br label %670

663:                                              ; preds = %644
  %664 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %665 = call ptr @htab_find_slot(ptr noundef %664, ptr noundef nonnull %636, i32 noundef 0) #19
  %666 = icmp eq ptr %665, null
  br i1 %666, label %673, label %667, !prof !1011

667:                                              ; preds = %663
  %668 = load ptr, ptr %665, align 8, !tbaa !311
  %669 = getelementptr inbounds %struct.pre_expr_d, ptr %668, i64 0, i32 1
  br label %670

670:                                              ; preds = %660, %667
  %671 = phi ptr [ %669, %667 ], [ %662, %660 ]
  %672 = load i32, ptr %671, align 4, !tbaa !326
  br label %673

673:                                              ; preds = %670, %663, %657
  %674 = phi i32 [ 0, %657 ], [ 0, %663 ], [ %672, %670 ]
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %676, label %678, !prof !1011

676:                                              ; preds = %673
  %677 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %636)
  br label %761

678:                                              ; preds = %673
  store i32 %674, ptr %637, align 4, !tbaa !361
  br label %761

679:                                              ; preds = %634
  %680 = icmp ne i8 %604, 0
  %681 = and i1 %606, %680
  br i1 %681, label %717, label %682, !prof !1012

682:                                              ; preds = %679
  %683 = call i32 @get_next_value_id() #19
  %684 = call i32 @get_max_value_id() #19
  %685 = add i32 %684, 1
  %686 = load ptr, ptr @value_expressions, align 8, !tbaa !311
  %687 = icmp eq ptr %686, null
  br i1 %687, label %690, label %688, !prof !1012

688:                                              ; preds = %682
  %689 = load i32, ptr %686, align 8, !tbaa !343
  br label %690

690:                                              ; preds = %688, %682
  %691 = phi i32 [ %689, %688 ], [ 0, %682 ]
  br i1 %687, label %694, label %692, !prof !1012

692:                                              ; preds = %690
  %693 = load i32, ptr %686, align 8, !tbaa !343
  br label %694

694:                                              ; preds = %692, %690
  %695 = phi i32 [ %693, %692 ], [ 0, %690 ]
  %696 = sub nsw i32 %685, %695
  br i1 %687, label %703, label %697, !prof !1012

697:                                              ; preds = %694
  %698 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %686, i64 0, i32 1
  %699 = load i32, ptr %698, align 4, !tbaa !347
  %700 = load i32, ptr %686, align 8, !tbaa !343
  %701 = sub i32 %699, %700
  %702 = icmp uge i32 %701, %696
  br label %705

703:                                              ; preds = %694
  %704 = icmp eq i32 %695, %685
  br label %705

705:                                              ; preds = %703, %697
  %706 = phi i1 [ %702, %697 ], [ %704, %703 ]
  br i1 %706, label %709, label %707, !prof !1012

707:                                              ; preds = %705
  %708 = call ptr @vec_heap_p_reserve_exact(ptr noundef %686, i32 noundef %696) #19
  store ptr %708, ptr @value_expressions, align 8, !tbaa !311
  br label %709

709:                                              ; preds = %705, %707
  %710 = load ptr, ptr @value_expressions, align 8, !tbaa !311, !nonnull !348, !noundef !348
  store i32 %685, ptr %710, align 8, !tbaa !343
  %711 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %710, i64 0, i32 2
  %712 = sext i32 %691 to i64
  %713 = getelementptr inbounds ptr, ptr %711, i64 %712
  %714 = sub nsw i32 %685, %691
  %715 = sext i32 %714 to i64
  %716 = shl nsw i64 %715, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %713, i8 0, i64 %716, i1 false), !prof !1013
  br label %719

717:                                              ; preds = %679
  %718 = load i32, ptr %298, align 8, !tbaa !339
  br label %719

719:                                              ; preds = %717, %709
  %720 = phi i32 [ %718, %717 ], [ %683, %709 ]
  %721 = load i32, ptr %610, align 8, !tbaa !996
  %722 = load ptr, ptr %612, align 8, !tbaa !997
  %723 = load ptr, ptr %10, align 8, !tbaa !311
  %724 = call ptr @vn_reference_insert_pieces(ptr noundef %605, i32 noundef %721, ptr noundef %722, ptr noundef %723, ptr noundef %615, i32 noundef %720) #19
  store ptr %724, ptr %12, align 8, !tbaa !311
  store ptr null, ptr %10, align 8, !tbaa !311
  %725 = getelementptr inbounds %struct.pre_expr_d, ptr %636, i64 0, i32 2
  store ptr %724, ptr %725, align 8, !tbaa !322
  %726 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %636)
  %727 = icmp eq ptr %726, %636
  br i1 %727, label %728, label %763, !prof !1014

728:                                              ; preds = %719
  %729 = load i32, ptr %636, align 8, !tbaa !331
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %745, !prof !1012

731:                                              ; preds = %728
  %732 = load ptr, ptr %725, align 8, !tbaa !322
  %733 = getelementptr inbounds %struct.tree_ssa_name, ptr %732, i64 0, i32 3
  %734 = load i32, ptr %733, align 8, !tbaa !322
  %735 = load ptr, ptr @name_to_id, align 8
  %736 = icmp eq ptr %735, null
  br i1 %736, label %739, label %737

737:                                              ; preds = %731
  %738 = load i32, ptr %735, align 4, !tbaa !356
  br label %739

739:                                              ; preds = %737, %731
  %740 = phi i32 [ %738, %737 ], [ 0, %731 ]
  %741 = icmp ugt i32 %740, %734
  br i1 %741, label %742, label %755

742:                                              ; preds = %739
  %743 = zext i32 %734 to i64
  %744 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %735, i64 0, i32 2, i64 %743
  br label %752

745:                                              ; preds = %728
  %746 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %747 = call ptr @htab_find_slot(ptr noundef %746, ptr noundef nonnull %636, i32 noundef 0) #19
  %748 = icmp eq ptr %747, null
  br i1 %748, label %755, label %749, !prof !1014

749:                                              ; preds = %745
  %750 = load ptr, ptr %747, align 8, !tbaa !311
  %751 = getelementptr inbounds %struct.pre_expr_d, ptr %750, i64 0, i32 1
  br label %752

752:                                              ; preds = %742, %749
  %753 = phi ptr [ %751, %749 ], [ %744, %742 ]
  %754 = load i32, ptr %753, align 4, !tbaa !326
  br label %755

755:                                              ; preds = %752, %745, %739
  %756 = phi i32 [ 0, %739 ], [ 0, %745 ], [ %754, %752 ]
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %760, !prof !1014

758:                                              ; preds = %755
  %759 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %636)
  br label %761

760:                                              ; preds = %755
  store i32 %756, ptr %637, align 4, !tbaa !361
  br label %761

761:                                              ; preds = %760, %758, %678, %676
  %762 = phi i32 [ %646, %676 ], [ %646, %678 ], [ %720, %758 ], [ %720, %760 ]
  call void @add_to_value(i32 noundef %762, ptr noundef nonnull %636)
  br label %763

763:                                              ; preds = %761, %719, %640, %632
  %764 = phi i1 [ false, %632 ], [ true, %761 ], [ false, %640 ], [ false, %719 ]
  %765 = phi ptr [ %0, %632 ], [ %636, %761 ], [ %636, %640 ], [ %636, %719 ]
  %766 = phi ptr [ %633, %632 ], [ undef, %761 ], [ %642, %640 ], [ %726, %719 ]
  br i1 %764, label %767, label %773, !prof !1015

767:                                              ; preds = %763, %603
  %768 = phi ptr [ %765, %763 ], [ %0, %603 ]
  %769 = load ptr, ptr %10, align 8, !tbaa !311
  %770 = icmp eq ptr %769, null
  br i1 %770, label %772, label %771, !prof !1016

771:                                              ; preds = %767
  call void @free(ptr noundef %769)
  br label %772

772:                                              ; preds = %767, %771
  store ptr null, ptr %10, align 8, !tbaa !311
  br label %773

773:                                              ; preds = %772, %763, %602, %517, %514
  %774 = phi ptr [ null, %602 ], [ %768, %772 ], [ %766, %763 ], [ null, %517 ], [ null, %514 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %824

775:                                              ; preds = %91
  %776 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %777 = load ptr, ptr %776, align 8, !tbaa !322
  %778 = getelementptr inbounds %struct.tree_ssa_name, ptr %777, i64 0, i32 2
  %779 = load ptr, ptr %778, align 8, !tbaa !322
  %780 = load i32, ptr %779, align 8
  %781 = and i32 %780, 255
  %782 = icmp eq i32 %781, 16
  br i1 %782, label %783, label %824, !prof !1017

783:                                              ; preds = %775
  %784 = getelementptr inbounds %struct.gimple_statement_base, ptr %779, i64 0, i32 4
  %785 = load ptr, ptr %784, align 8, !tbaa !322
  %786 = icmp eq ptr %785, %4
  br i1 %786, label %787, label %824, !prof !1018

787:                                              ; preds = %783
  %788 = call ptr @find_edge(ptr noundef %3, ptr noundef %785) #19
  %789 = icmp eq ptr %788, null
  br i1 %789, label %824, label %790, !prof !1019

790:                                              ; preds = %787
  %791 = getelementptr inbounds %struct.edge_def, ptr %788, i64 0, i32 6
  %792 = load i32, ptr %791, align 4, !tbaa !1003
  %793 = getelementptr inbounds %struct.gimple_statement_phi, ptr %779, i64 0, i32 1
  %794 = load i32, ptr %793, align 8, !tbaa !322
  %795 = icmp ult i32 %794, %792
  br i1 %795, label %796, label %797, !prof !1019

796:                                              ; preds = %790
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %797

797:                                              ; preds = %790, %796
  %798 = zext i32 %792 to i64
  %799 = getelementptr inbounds %struct.gimple_statement_phi, ptr %779, i64 0, i32 4, i64 %798, i32 0, i32 3
  %800 = load ptr, ptr %799, align 8, !tbaa !482
  %801 = load ptr, ptr %800, align 8, !tbaa !311
  %802 = load i64, ptr %801, align 8
  %803 = and i64 %802, 65535
  %804 = icmp eq i64 %803, 141
  br i1 %804, label %805, label %808, !prof !1020

805:                                              ; preds = %797
  %806 = call ptr @VN_INFO(ptr noundef nonnull %801) #19
  %807 = load ptr, ptr %806, align 8, !tbaa !769
  br label %808

808:                                              ; preds = %805, %797
  %809 = phi ptr [ %807, %805 ], [ %801, %797 ]
  %810 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %809) #19
  %811 = icmp eq i8 %810, 0
  br i1 %811, label %814, label %812, !prof !1020

812:                                              ; preds = %808
  %813 = call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef %809)
  br label %824

814:                                              ; preds = %808
  %815 = load i64, ptr %809, align 8
  %816 = and i64 %815, 65535
  %817 = icmp eq i64 %816, 141
  br i1 %817, label %818, label %821, !prof !1021

818:                                              ; preds = %814
  %819 = call zeroext i8 @ssa_undefined_value_p(ptr noundef nonnull %809) #19
  %820 = icmp eq i8 %819, 0
  br i1 %820, label %821, label %824, !prof !1021

821:                                              ; preds = %818, %814
  %822 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %809)
  br label %824

823:                                              ; preds = %91
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1806, ptr noundef nonnull @.str.1) #19
  br label %824

824:                                              ; preds = %775, %783, %787, %812, %818, %821, %294, %773, %823
  %825 = phi ptr [ null, %823 ], [ %774, %773 ], [ %295, %294 ], [ %0, %783 ], [ %0, %775 ], [ null, %818 ], [ %822, %821 ], [ %813, %812 ], [ %0, %787 ]
  %826 = icmp eq ptr %825, null
  br i1 %826, label %886, label %827, !prof !1022

827:                                              ; preds = %824
  %828 = load i32, ptr %0, align 8, !tbaa !331
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %886, label %830, !prof !1023

830:                                              ; preds = %827
  %831 = call ptr @xmalloc(i64 noundef 32) #19
  store ptr %0, ptr %831, align 8, !tbaa !856
  %832 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %831, i64 0, i32 1
  store ptr %3, ptr %832, align 8, !tbaa !854
  %833 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %831, i64 0, i32 2
  store ptr %825, ptr %833, align 8, !tbaa !944
  %834 = load i32, ptr %0, align 8, !tbaa !331
  switch i32 %834, label %873 [
    i32 3, label %835
    i32 0, label %858
    i32 1, label %863
    i32 2, label %868
  ], !prof !862

835:                                              ; preds = %830
  %836 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %837 = load ptr, ptr %836, align 8, !tbaa !322
  %838 = getelementptr inbounds %struct.tree_common, ptr %837, i64 0, i32 2
  %839 = load ptr, ptr %838, align 8, !tbaa !322
  %840 = call i32 @iterative_hash_expr(ptr noundef %837, i32 noundef 0) #19
  %841 = load i64, ptr %839, align 8
  %842 = trunc i64 %841 to i32
  %843 = and i32 %842, 65535
  %844 = add nsw i32 %843, -6
  %845 = icmp ult i32 %844, 3
  br i1 %845, label %846, label %853, !prof !863

846:                                              ; preds = %835
  %847 = getelementptr inbounds %struct.tree_type, ptr %839, i64 0, i32 6
  %848 = load i32, ptr %847, align 4
  %849 = and i32 %848, 1023
  %850 = lshr i32 %842, 21
  %851 = and i32 %850, 1
  %852 = add nuw nsw i32 %849, %851
  br label %853

853:                                              ; preds = %846, %835
  %854 = phi i32 [ %852, %846 ], [ 0, %835 ]
  %855 = zext i1 %845 to i32
  %856 = add i32 %840, %855
  %857 = add i32 %856, %854
  br label %874

858:                                              ; preds = %830
  %859 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %860 = load ptr, ptr %859, align 8, !tbaa !322
  %861 = getelementptr inbounds %struct.tree_ssa_name, ptr %860, i64 0, i32 3
  %862 = load i32, ptr %861, align 8, !tbaa !322
  br label %874

863:                                              ; preds = %830
  %864 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %865 = load ptr, ptr %864, align 8, !tbaa !322
  %866 = getelementptr inbounds %struct.vn_nary_op_s, ptr %865, i64 0, i32 2
  %867 = load i32, ptr %866, align 8, !tbaa !864
  br label %874

868:                                              ; preds = %830
  %869 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %870 = load ptr, ptr %869, align 8, !tbaa !322
  %871 = getelementptr inbounds %struct.vn_reference_s, ptr %870, i64 0, i32 1
  %872 = load i32, ptr %871, align 4, !tbaa !865
  br label %874

873:                                              ; preds = %830
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 229, ptr noundef nonnull @.str.1) #19
  br label %874

874:                                              ; preds = %853, %858, %863, %868, %873
  %875 = phi i32 [ 0, %873 ], [ %872, %868 ], [ %867, %863 ], [ %862, %858 ], [ %857, %853 ]
  %876 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %877 = load i32, ptr %876, align 8, !tbaa !432
  %878 = call i32 @iterative_hash_hashval_t(i32 noundef %875, i32 noundef %877) #19
  %879 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %831, i64 0, i32 3
  store i32 %878, ptr %879, align 8, !tbaa !850
  %880 = load ptr, ptr @phi_translate_table, align 8, !tbaa !311
  %881 = call ptr @htab_find_slot_with_hash(ptr noundef %880, ptr noundef nonnull %831, i32 noundef %878, i32 noundef 1) #19
  %882 = load ptr, ptr %881, align 8, !tbaa !311
  %883 = icmp eq ptr %882, null
  br i1 %883, label %885, label %884, !prof !1024

884:                                              ; preds = %874
  call void @free(ptr noundef %882)
  br label %885

885:                                              ; preds = %874, %884
  store ptr %831, ptr %881, align 8, !tbaa !311
  br label %886

886:                                              ; preds = %15, %824, %827, %885, %88, %32, %5
  %887 = phi ptr [ null, %5 ], [ %0, %15 ], [ %0, %32 ], [ %89, %88 ], [ %825, %885 ], [ %825, %827 ], [ %825, %824 ]
  ret ptr %887
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bitmap_value_replace_in_set(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #12 !prof !1025 !PGOFuncName !1026 {
  %3 = load i32, ptr %1, align 8, !tbaa !331
  switch i32 %3, label %26 [
    i32 3, label %4
    i32 0, label %12
    i32 1, label %18
    i32 2, label %22
  ], !prof !333

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !322
  %7 = tail call i32 @get_constant_value_id(ptr noundef %6) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27, !prof !334

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !322
  %11 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %10) #19
  tail call void @add_to_value(i32 noundef %11, ptr noundef nonnull %1)
  br label %27

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !322
  %15 = tail call ptr @VN_INFO(ptr noundef %14) #19
  %16 = getelementptr inbounds %struct.vn_ssa_aux, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !335
  br label %27

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !322
  %21 = load i32, ptr %20, align 8, !tbaa !337
  br label %27

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !322
  %25 = load i32, ptr %24, align 8, !tbaa !339
  br label %27

26:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %27

27:                                               ; preds = %4, %9, %12, %18, %22, %26
  %28 = phi i32 [ 0, %26 ], [ %25, %22 ], [ %21, %18 ], [ %17, %12 ], [ %11, %9 ], [ %7, %4 ]
  %29 = tail call zeroext i8 @value_id_constant_p(i32 noundef %28) #19
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %43, !prof !742

31:                                               ; preds = %27
  %32 = icmp eq ptr %0, null
  br i1 %32, label %153, label %33, !prof !743

33:                                               ; preds = %31
  %34 = load ptr, ptr %0, align 8, !tbaa !351
  %35 = load ptr, ptr %34, align 8, !tbaa !375
  %36 = icmp eq ptr %35, null
  br i1 %36, label %153, label %37, !prof !691

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !353
  %40 = tail call i32 @bitmap_bit_p(ptr noundef %39, i32 noundef %28) #19
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %153, label %43, !prof !1027

43:                                               ; preds = %27, %37
  %44 = tail call zeroext i8 @value_id_constant_p(i32 noundef %28) #19
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %224, !prof !1028

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @value_id_constant_p(i32 noundef %28) #19
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %61, !prof !742

49:                                               ; preds = %46
  %50 = icmp eq ptr %0, null
  br i1 %50, label %224, label %51, !prof !743

51:                                               ; preds = %49
  %52 = load ptr, ptr %0, align 8, !tbaa !351
  %53 = load ptr, ptr %52, align 8, !tbaa !375
  %54 = icmp eq ptr %53, null
  br i1 %54, label %224, label %55, !prof !691

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !353
  %58 = tail call i32 @bitmap_bit_p(ptr noundef %57, i32 noundef %28) #19
  %59 = and i32 %58, 255
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %224, label %61, !prof !1029

61:                                               ; preds = %46, %55
  %62 = load ptr, ptr @value_expressions, align 8
  %63 = zext i32 %28 to i64
  %64 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %62, i64 0, i32 2, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !311
  %66 = load ptr, ptr %65, align 8, !tbaa !351
  %67 = load ptr, ptr %66, align 8, !tbaa !375
  %68 = icmp eq ptr %67, null
  %69 = select i1 %68, ptr @bitmap_zero_bits, ptr %67, !prof !1029
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !377
  %72 = shl i32 %71, 7
  %73 = getelementptr inbounds %struct.bitmap_element_def, ptr %69, i64 0, i32 3
  %74 = load i64, ptr %73, align 8, !tbaa !379
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = or disjoint i32 %72, %76
  br label %78

78:                                               ; preds = %150, %61
  %79 = phi i64 [ %74, %61 ], [ %151, %150 ]
  %80 = phi i32 [ 0, %61 ], [ %135, %150 ]
  %81 = phi i32 [ %77, %61 ], [ %152, %150 ]
  %82 = phi ptr [ %69, %61 ], [ %137, %150 ]
  %83 = icmp eq i64 %79, 0
  br i1 %83, label %98, label %84, !prof !1030

84:                                               ; preds = %112, %78
  %85 = phi i64 [ %79, %78 ], [ %117, %112 ]
  %86 = phi i32 [ %80, %78 ], [ %113, %112 ]
  %87 = phi i32 [ %81, %78 ], [ %114, %112 ]
  %88 = phi ptr [ %82, %78 ], [ %105, %112 ]
  %89 = and i64 %85, 1
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %133, !prof !1031

91:                                               ; preds = %84, %91
  %92 = phi i32 [ %95, %91 ], [ %87, %84 ]
  %93 = phi i64 [ %94, %91 ], [ %85, %84 ]
  %94 = lshr exact i64 %93, 1
  %95 = add i32 %92, 1
  %96 = and i64 %93, 2
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %91, label %133, !prof !1032, !llvm.loop !380

98:                                               ; preds = %78
  %99 = add i32 %81, 63
  %100 = and i32 %99, -64
  %101 = add i32 %80, 1
  br label %102

102:                                              ; preds = %129, %98
  %103 = phi i64 [ %79, %98 ], [ %124, %129 ]
  %104 = phi i32 [ %100, %98 ], [ %132, %129 ]
  %105 = phi ptr [ %82, %98 ], [ %127, %129 ]
  %106 = phi i32 [ %101, %98 ], [ 0, %129 ]
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %123, label %108, !prof !1033

108:                                              ; preds = %102
  %109 = add i32 %104, 128
  %110 = shl i32 %106, 6
  %111 = sub i32 %109, %110
  br label %112

112:                                              ; preds = %108, %119
  %113 = phi i32 [ %121, %119 ], [ %106, %108 ]
  %114 = phi i32 [ %120, %119 ], [ %104, %108 ]
  %115 = zext i32 %113 to i64
  %116 = getelementptr inbounds %struct.bitmap_element_def, ptr %105, i64 0, i32 3, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !379
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %84, !prof !1034

119:                                              ; preds = %112
  %120 = add i32 %114, 64
  %121 = add i32 %113, 1
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %112, !prof !1035, !llvm.loop !381

123:                                              ; preds = %119, %102
  %124 = phi i64 [ %103, %102 ], [ %117, %119 ]
  %125 = phi i32 [ %104, %102 ], [ %111, %119 ]
  %126 = phi i32 [ %106, %102 ], [ 2, %119 ]
  %127 = load ptr, ptr %105, align 8, !tbaa !382
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129, !prof !1036

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.bitmap_element_def, ptr %127, i64 0, i32 2
  %131 = load i32, ptr %130, align 8, !tbaa !377
  %132 = shl i32 %131, 7
  br label %102, !llvm.loop !383

133:                                              ; preds = %123, %91, %84
  %134 = phi i64 [ %85, %84 ], [ %94, %91 ], [ %124, %123 ]
  %135 = phi i32 [ %86, %84 ], [ %86, %91 ], [ %126, %123 ]
  %136 = phi i32 [ %87, %84 ], [ %95, %91 ], [ %125, %123 ]
  %137 = phi ptr [ %88, %84 ], [ %88, %91 ], [ %127, %123 ]
  %138 = phi i1 [ false, %84 ], [ false, %91 ], [ true, %123 ]
  br i1 %138, label %224, label %139, !prof !1037

139:                                              ; preds = %133
  %140 = load ptr, ptr %0, align 8, !tbaa !351
  %141 = tail call i32 @bitmap_bit_p(ptr noundef %140, i32 noundef %136) #19
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %150, label %143, !prof !1038

143:                                              ; preds = %139
  %144 = load ptr, ptr %0, align 8, !tbaa !351
  %145 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %144, i32 noundef %136) #19
  %146 = load ptr, ptr %0, align 8, !tbaa !351
  %147 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 1
  %148 = load i32, ptr %147, align 4, !tbaa !361
  %149 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %146, i32 noundef %148) #19
  br label %224

150:                                              ; preds = %139
  %151 = lshr i64 %134, 1
  %152 = add i32 %136, 1
  br label %78, !llvm.loop !1039

153:                                              ; preds = %33, %31, %37
  %154 = load i32, ptr %1, align 8, !tbaa !331
  switch i32 %154, label %177 [
    i32 3, label %155
    i32 0, label %163
    i32 1, label %169
    i32 2, label %173
  ], !prof !333

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !322
  %158 = tail call i32 @get_constant_value_id(ptr noundef %157) #19
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %178, !prof !334

160:                                              ; preds = %155
  %161 = load ptr, ptr %156, align 8, !tbaa !322
  %162 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %161) #19
  tail call void @add_to_value(i32 noundef %162, ptr noundef nonnull %1)
  br label %178

163:                                              ; preds = %153
  %164 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !322
  %166 = tail call ptr @VN_INFO(ptr noundef %165) #19
  %167 = getelementptr inbounds %struct.vn_ssa_aux, ptr %166, i64 0, i32 2
  %168 = load i32, ptr %167, align 8, !tbaa !335
  br label %178

169:                                              ; preds = %153
  %170 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !322
  %172 = load i32, ptr %171, align 8, !tbaa !337
  br label %178

173:                                              ; preds = %153
  %174 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !322
  %176 = load i32, ptr %175, align 8, !tbaa !339
  br label %178

177:                                              ; preds = %153
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %178

178:                                              ; preds = %155, %160, %163, %169, %173, %177
  %179 = phi i32 [ 0, %177 ], [ %176, %173 ], [ %172, %169 ], [ %168, %163 ], [ %162, %160 ], [ %158, %155 ]
  %180 = tail call zeroext i8 @value_id_constant_p(i32 noundef %179) #19
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %224, !prof !468

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !353
  %185 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %184, i32 noundef %179) #19
  %186 = load ptr, ptr %0, align 8, !tbaa !351
  %187 = load i32, ptr %1, align 8, !tbaa !331
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %204, !prof !354

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !322
  %192 = getelementptr inbounds %struct.tree_ssa_name, ptr %191, i64 0, i32 3
  %193 = load i32, ptr %192, align 8, !tbaa !322
  %194 = load ptr, ptr @name_to_id, align 8
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196, !prof !355

196:                                              ; preds = %189
  %197 = load i32, ptr %194, align 4, !tbaa !356
  br label %198

198:                                              ; preds = %196, %189
  %199 = phi i32 [ %197, %196 ], [ 0, %189 ]
  %200 = icmp ugt i32 %199, %193
  br i1 %200, label %201, label %214, !prof !358

201:                                              ; preds = %198
  %202 = zext i32 %193 to i64
  %203 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %194, i64 0, i32 2, i64 %202
  br label %211

204:                                              ; preds = %182
  %205 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %206 = tail call ptr @htab_find_slot(ptr noundef %205, ptr noundef nonnull %1, i32 noundef 0) #19
  %207 = icmp eq ptr %206, null
  br i1 %207, label %214, label %208, !prof !359

208:                                              ; preds = %204
  %209 = load ptr, ptr %206, align 8, !tbaa !311
  %210 = getelementptr inbounds %struct.pre_expr_d, ptr %209, i64 0, i32 1
  br label %211

211:                                              ; preds = %201, %208
  %212 = phi ptr [ %210, %208 ], [ %203, %201 ]
  %213 = load i32, ptr %212, align 4, !tbaa !326
  br label %214

214:                                              ; preds = %211, %204, %198
  %215 = phi i32 [ 0, %198 ], [ 0, %204 ], [ %213, %211 ]
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %219, !prof !360

217:                                              ; preds = %214
  %218 = tail call fastcc i32 @alloc_expression_id(ptr noundef nonnull %1)
  br label %221

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 1
  store i32 %215, ptr %220, align 4, !tbaa !361
  br label %221

221:                                              ; preds = %219, %217
  %222 = phi i32 [ %218, %217 ], [ %215, %219 ]
  %223 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %186, i32 noundef %222) #19
  br label %224

224:                                              ; preds = %133, %51, %49, %221, %178, %143, %55, %43
  ret void
}

declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @iterative_hash_hashval_t(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_representative_for(ptr noundef %0) unnamed_addr #12 !prof !1040 !PGOFuncName !1041 {
  %2 = load i32, ptr %0, align 8, !tbaa !331
  switch i32 %2, label %25 [
    i32 3, label %3
    i32 0, label %11
    i32 1, label %17
    i32 2, label %21
  ], !prof !333

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !322
  %6 = tail call i32 @get_constant_value_id(ptr noundef %5) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26, !prof !334

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !322
  %10 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %9) #19
  tail call void @add_to_value(i32 noundef %10, ptr noundef nonnull %0)
  br label %26

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !322
  %14 = tail call ptr @VN_INFO(ptr noundef %13) #19
  %15 = getelementptr inbounds %struct.vn_ssa_aux, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !335
  br label %26

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !322
  %20 = load i32, ptr %19, align 8, !tbaa !337
  br label %26

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !322
  %24 = load i32, ptr %23, align 8, !tbaa !339
  br label %26

25:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %26

26:                                               ; preds = %3, %8, %11, %17, %21, %25
  %27 = phi i32 [ 0, %25 ], [ %24, %21 ], [ %20, %17 ], [ %16, %11 ], [ %10, %8 ], [ %6, %3 ]
  %28 = load i32, ptr %0, align 8, !tbaa !331
  switch i32 %28, label %131 [
    i32 0, label %29
    i32 3, label %32
    i32 1, label %35
    i32 2, label %35
  ], !prof !1042

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !322
  br label %218

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !322
  br label %218

35:                                               ; preds = %26, %26
  %36 = load ptr, ptr @value_expressions, align 8
  %37 = zext i32 %27 to i64
  %38 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %36, i64 0, i32 2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !311
  %40 = load ptr, ptr %39, align 8, !tbaa !351
  %41 = load ptr, ptr %40, align 8, !tbaa !375
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr @bitmap_zero_bits, ptr %41, !prof !1043
  %44 = getelementptr inbounds %struct.bitmap_element_def, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !377
  %46 = shl i32 %45, 7
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %43, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !379
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = or disjoint i32 %46, %50
  %52 = load ptr, ptr @expressions, align 8
  br label %53

53:                                               ; preds = %126, %35
  %54 = phi i64 [ %48, %35 ], [ %127, %126 ]
  %55 = phi i32 [ 0, %35 ], [ %111, %126 ]
  %56 = phi i32 [ %51, %35 ], [ %128, %126 ]
  %57 = phi ptr [ %43, %35 ], [ %113, %126 ]
  %58 = phi ptr [ undef, %35 ], [ %125, %126 ]
  %59 = icmp eq i64 %54, 0
  br i1 %59, label %74, label %60, !prof !1044

60:                                               ; preds = %88, %53
  %61 = phi i64 [ %54, %53 ], [ %93, %88 ]
  %62 = phi i32 [ %55, %53 ], [ %89, %88 ]
  %63 = phi i32 [ %56, %53 ], [ %90, %88 ]
  %64 = phi ptr [ %57, %53 ], [ %81, %88 ]
  %65 = and i64 %61, 1
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %109, !prof !1045

67:                                               ; preds = %60, %67
  %68 = phi i32 [ %71, %67 ], [ %63, %60 ]
  %69 = phi i64 [ %70, %67 ], [ %61, %60 ]
  %70 = lshr exact i64 %69, 1
  %71 = add i32 %68, 1
  %72 = and i64 %69, 2
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %67, label %109, !prof !1046, !llvm.loop !380

74:                                               ; preds = %53
  %75 = add i32 %56, 63
  %76 = and i32 %75, -64
  %77 = add i32 %55, 1
  br label %78

78:                                               ; preds = %105, %74
  %79 = phi i64 [ %54, %74 ], [ %100, %105 ]
  %80 = phi i32 [ %76, %74 ], [ %108, %105 ]
  %81 = phi ptr [ %57, %74 ], [ %103, %105 ]
  %82 = phi i32 [ %77, %74 ], [ 0, %105 ]
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %99, label %84, !prof !1047

84:                                               ; preds = %78
  %85 = add i32 %80, 128
  %86 = shl i32 %82, 6
  %87 = sub i32 %85, %86
  br label %88

88:                                               ; preds = %84, %95
  %89 = phi i32 [ %97, %95 ], [ %82, %84 ]
  %90 = phi i32 [ %96, %95 ], [ %80, %84 ]
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds %struct.bitmap_element_def, ptr %81, i64 0, i32 3, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !379
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %60, !prof !1048

95:                                               ; preds = %88
  %96 = add i32 %90, 64
  %97 = add i32 %89, 1
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %88, !prof !1049, !llvm.loop !381

99:                                               ; preds = %95, %78
  %100 = phi i64 [ %79, %78 ], [ %93, %95 ]
  %101 = phi i32 [ %80, %78 ], [ %87, %95 ]
  %102 = phi i32 [ %82, %78 ], [ 2, %95 ]
  %103 = load ptr, ptr %81, align 8, !tbaa !382
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105, !prof !1050

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.bitmap_element_def, ptr %103, i64 0, i32 2
  %107 = load i32, ptr %106, align 8, !tbaa !377
  %108 = shl i32 %107, 7
  br label %78, !llvm.loop !383

109:                                              ; preds = %99, %67, %60
  %110 = phi i64 [ %61, %60 ], [ %70, %67 ], [ %100, %99 ]
  %111 = phi i32 [ %62, %60 ], [ %62, %67 ], [ %102, %99 ]
  %112 = phi i32 [ %63, %60 ], [ %71, %67 ], [ %101, %99 ]
  %113 = phi ptr [ %64, %60 ], [ %64, %67 ], [ %103, %99 ]
  %114 = phi i1 [ false, %60 ], [ false, %67 ], [ true, %99 ]
  br i1 %114, label %129, label %115, !prof !1051

115:                                              ; preds = %109
  %116 = zext i32 %112 to i64
  %117 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %52, i64 0, i32 2, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !311
  %119 = load i32, ptr %118, align 8, !tbaa !331
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124, !prof !1052

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.pre_expr_d, ptr %118, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !322
  br label %124

124:                                              ; preds = %115, %121
  %125 = phi ptr [ %123, %121 ], [ %58, %115 ]
  br i1 %120, label %129, label %126, !prof !1052

126:                                              ; preds = %124
  %127 = lshr i64 %110, 1
  %128 = add i32 %112, 1
  br label %53, !llvm.loop !1053

129:                                              ; preds = %109, %124
  %130 = phi ptr [ %125, %124 ], [ %58, %109 ]
  br i1 %114, label %131, label %218, !prof !1054

131:                                              ; preds = %129, %26
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %133 = icmp eq ptr %132, null
  br i1 %133, label %139, label %134, !prof !1050

134:                                              ; preds = %131
  %135 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 54, i64 1, ptr nonnull %132)
  %136 = load ptr, ptr @dump_file, align 8, !tbaa !311
  tail call fastcc void @print_pre_expr(ptr noundef %136, ptr noundef nonnull %0)
  %137 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %138 = tail call i32 @fputc(i32 10, ptr %137)
  br label %139

139:                                              ; preds = %134, %131
  %140 = load i32, ptr %0, align 8, !tbaa !331
  switch i32 %140, label %161 [
    i32 0, label %141
    i32 3, label %146
    i32 2, label %151
    i32 1, label %156
  ], !prof !1055

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !322
  %144 = getelementptr inbounds %struct.tree_common, ptr %143, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !322
  br label %162

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !322
  %149 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !322
  br label %162

151:                                              ; preds = %139
  %152 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !322
  %154 = getelementptr inbounds %struct.vn_reference_s, ptr %153, i64 0, i32 4
  %155 = load ptr, ptr %154, align 8, !tbaa !997
  br label %162

156:                                              ; preds = %139
  %157 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !322
  %159 = getelementptr inbounds %struct.vn_nary_op_s, ptr %158, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !957
  br label %162

161:                                              ; preds = %139
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1397, ptr noundef nonnull @.str.1) #19
  br label %162

162:                                              ; preds = %141, %146, %151, %156, %161
  %163 = phi ptr [ null, %161 ], [ %160, %156 ], [ %155, %151 ], [ %150, %146 ], [ %145, %141 ]
  %164 = load ptr, ptr @pretemp, align 8, !tbaa !311
  %165 = icmp eq ptr %164, null
  br i1 %165, label %170, label %166, !prof !1056

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.tree_common, ptr %164, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !322
  %169 = icmp eq ptr %163, %168
  br i1 %169, label %192, label %170, !prof !1057

170:                                              ; preds = %166, %162
  %171 = tail call ptr @create_tmp_var(ptr noundef %163, ptr noundef nonnull @.str.42) #19
  store ptr %171, ptr @pretemp, align 8, !tbaa !311
  %172 = load i64, ptr %171, align 8
  %173 = trunc i64 %172 to i16
  switch i16 %173, label %178 [
    i16 32, label %174
    i16 34, label %176
  ], !prof !1058

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.tree_var_decl, ptr %171, i64 0, i32 1
  br label %183

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.tree_parm_decl, ptr %171, i64 0, i32 2
  br label %183

178:                                              ; preds = %170
  %179 = and i64 %172, 65535
  %180 = icmp eq i64 %179, 36
  %181 = getelementptr inbounds %struct.tree_result_decl, ptr %171, i64 0, i32 1
  %182 = select i1 %180, ptr %181, ptr null
  br label %183

183:                                              ; preds = %178, %176, %174
  %184 = phi ptr [ %175, %174 ], [ %177, %176 ], [ %182, %178 ]
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %187, !prof !1059

186:                                              ; preds = %183
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 144, ptr noundef nonnull @.str.1) #19
  br label %187

187:                                              ; preds = %186, %183
  %188 = load ptr, ptr %184, align 8, !tbaa !311
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %192, !prof !1060

190:                                              ; preds = %187
  %191 = tail call ptr @create_var_ann(ptr noundef nonnull %171) #19
  br label %192

192:                                              ; preds = %190, %187, %166
  %193 = load ptr, ptr @pretemp, align 8, !tbaa !311
  %194 = tail call ptr @gimple_build_nop() #19
  %195 = load ptr, ptr @cfun, align 8, !tbaa !311
  %196 = tail call ptr @make_ssa_name_fn(ptr noundef %195, ptr noundef %193, ptr noundef %194) #19
  %197 = tail call ptr @VN_INFO_GET(ptr noundef %196) #19
  %198 = getelementptr inbounds %struct.vn_ssa_aux, ptr %197, i64 0, i32 2
  store i32 %27, ptr %198, align 8, !tbaa !335
  %199 = load i32, ptr %0, align 8, !tbaa !331
  %200 = icmp eq i32 %199, 3
  br i1 %200, label %201, label %204, !prof !1061

201:                                              ; preds = %192
  %202 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !322
  br label %204

204:                                              ; preds = %192, %201
  %205 = phi ptr [ %203, %201 ], [ %196, %192 ]
  %206 = tail call ptr @VN_INFO(ptr noundef %196) #19
  store ptr %205, ptr %206, align 8, !tbaa !769
  %207 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %196)
  tail call void @add_to_value(i32 noundef %27, ptr noundef %207)
  %208 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %209 = icmp eq ptr %208, null
  br i1 %209, label %218, label %210, !prof !1050

210:                                              ; preds = %204
  %211 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 32, i64 1, ptr nonnull %208)
  %212 = load ptr, ptr @dump_file, align 8, !tbaa !311
  tail call void @print_generic_expr(ptr noundef %212, ptr noundef %196, i32 noundef 0) #19
  %213 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %214 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 16, i64 1, ptr %213)
  %215 = load ptr, ptr @dump_file, align 8, !tbaa !311
  tail call fastcc void @print_pre_expr(ptr noundef %215, ptr noundef nonnull %0)
  %216 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %217 = tail call i32 @fputc(i32 10, ptr %216)
  br label %218

218:                                              ; preds = %204, %210, %129, %32, %29
  %219 = phi ptr [ %130, %129 ], [ %34, %32 ], [ %31, %29 ], [ %196, %210 ], [ %196, %204 ]
  ret ptr %219
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef %0) unnamed_addr #12 !prof !1062 !PGOFuncName !1063 {
  %2 = alloca %struct.pre_expr_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  store i32 3, ptr %2, align 8, !tbaa !331
  %3 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !322
  %4 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 0) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !1064

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !311
  %9 = getelementptr inbounds %struct.pre_expr_d, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !361
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14, !prof !1064

14:                                               ; preds = %11
  %15 = load ptr, ptr @expressions, align 8
  %16 = zext i32 %12 to i64
  %17 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %15, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !311
  br label %25

19:                                               ; preds = %11
  %20 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !311
  %21 = call ptr @pool_alloc(ptr noundef %20) #19
  store i32 3, ptr %21, align 8, !tbaa !331
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %21, i64 0, i32 2
  store ptr %0, ptr %22, align 8, !tbaa !322
  %23 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %21)
  %24 = call i32 @get_or_alloc_constant_value_id(ptr noundef %0) #19
  call void @add_to_value(i32 noundef %24, ptr noundef nonnull %21)
  br label %25

25:                                               ; preds = %19, %14
  %26 = phi ptr [ %18, %14 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  ret ptr %26
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @fully_constant_expression(ptr noundef readonly %0) unnamed_addr #12 !prof !1065 !PGOFuncName !1066 {
  %2 = load i32, ptr %0, align 8, !tbaa !331
  switch i32 %2, label %271 [
    i32 2, label %163
    i32 1, label %3
  ], !prof !1067

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !322
  %6 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 65535
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !326
  switch i32 %11, label %271 [
    i32 10, label %12
    i32 7, label %14
    i32 5, label %14
    i32 4, label %106
    i32 6, label %108
  ], !prof !1068

12:                                               ; preds = %3
  %13 = trunc i32 %7 to i16
  switch i16 %13, label %271 [
    i16 96, label %108
    i16 93, label %14
    i16 94, label %14
    i16 95, label %14
  ]

14:                                               ; preds = %12, %12, %3, %12, %3
  %15 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !311
  %17 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 5, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !311
  %19 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %16) #19
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %55, !prof !1069

21:                                               ; preds = %14
  %22 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %16)
  %23 = load i32, ptr %22, align 8, !tbaa !331
  switch i32 %23, label %46 [
    i32 3, label %24
    i32 0, label %32
    i32 1, label %38
    i32 2, label %42
  ], !prof !333

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.pre_expr_d, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !322
  %27 = tail call i32 @get_constant_value_id(ptr noundef %26) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %47, !prof !334

29:                                               ; preds = %24
  %30 = load ptr, ptr %25, align 8, !tbaa !322
  %31 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %30) #19
  tail call void @add_to_value(i32 noundef %31, ptr noundef nonnull %22)
  br label %47

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.pre_expr_d, ptr %22, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !322
  %35 = tail call ptr @VN_INFO(ptr noundef %34) #19
  %36 = getelementptr inbounds %struct.vn_ssa_aux, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !335
  br label %47

38:                                               ; preds = %21
  %39 = getelementptr inbounds %struct.pre_expr_d, ptr %22, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !322
  %41 = load i32, ptr %40, align 8, !tbaa !337
  br label %47

42:                                               ; preds = %21
  %43 = getelementptr inbounds %struct.pre_expr_d, ptr %22, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !322
  %45 = load i32, ptr %44, align 8, !tbaa !339
  br label %47

46:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %47

47:                                               ; preds = %24, %29, %32, %38, %42, %46
  %48 = phi i32 [ 0, %46 ], [ %45, %42 ], [ %41, %38 ], [ %37, %32 ], [ %31, %29 ], [ %27, %24 ]
  %49 = tail call fastcc ptr @get_constant_for_value_id(i32 noundef %48)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51, !prof !1070

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !322
  %54 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %53, ptr noundef nonnull %49) #19
  br label %55

55:                                               ; preds = %47, %51, %14
  %56 = phi ptr [ %16, %14 ], [ %54, %51 ], [ %16, %47 ]
  %57 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %18) #19
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %93, !prof !1071

59:                                               ; preds = %55
  %60 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %18)
  %61 = load i32, ptr %60, align 8, !tbaa !331
  switch i32 %61, label %84 [
    i32 3, label %62
    i32 0, label %70
    i32 1, label %76
    i32 2, label %80
  ], !prof !333

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.pre_expr_d, ptr %60, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !322
  %65 = tail call i32 @get_constant_value_id(ptr noundef %64) #19
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %85, !prof !334

67:                                               ; preds = %62
  %68 = load ptr, ptr %63, align 8, !tbaa !322
  %69 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %68) #19
  tail call void @add_to_value(i32 noundef %69, ptr noundef nonnull %60)
  br label %85

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.pre_expr_d, ptr %60, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !322
  %73 = tail call ptr @VN_INFO(ptr noundef %72) #19
  %74 = getelementptr inbounds %struct.vn_ssa_aux, ptr %73, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !335
  br label %85

76:                                               ; preds = %59
  %77 = getelementptr inbounds %struct.pre_expr_d, ptr %60, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !322
  %79 = load i32, ptr %78, align 8, !tbaa !337
  br label %85

80:                                               ; preds = %59
  %81 = getelementptr inbounds %struct.pre_expr_d, ptr %60, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !322
  %83 = load i32, ptr %82, align 8, !tbaa !339
  br label %85

84:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %85

85:                                               ; preds = %62, %67, %70, %76, %80, %84
  %86 = phi i32 [ 0, %84 ], [ %83, %80 ], [ %79, %76 ], [ %75, %70 ], [ %69, %67 ], [ %65, %62 ]
  %87 = tail call fastcc ptr @get_constant_for_value_id(i32 noundef %86)
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89, !prof !1072

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !322
  %92 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %91, ptr noundef nonnull %87) #19
  br label %93

93:                                               ; preds = %85, %89, %55
  %94 = phi ptr [ %18, %55 ], [ %92, %89 ], [ %18, %85 ]
  %95 = load i32, ptr %6, align 4
  %96 = and i32 %95, 65535
  %97 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !957
  %99 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %96, ptr noundef %98, ptr noundef %56, ptr noundef %94) #19
  %100 = icmp eq ptr %99, null
  br i1 %100, label %271, label %101, !prof !1073

101:                                              ; preds = %93
  %102 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %99) #19
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %271, label %104

104:                                              ; preds = %101
  %105 = tail call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %99)
  br label %271

106:                                              ; preds = %3
  %107 = trunc i32 %7 to i16
  switch i16 %107, label %271 [
    i16 43, label %108
    i16 44, label %108
    i16 118, label %108
  ]

108:                                              ; preds = %106, %106, %12, %106, %3
  %109 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 5
  %110 = load ptr, ptr %109, align 8, !tbaa !311
  %111 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %110) #19
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %142, !prof !1060

113:                                              ; preds = %108
  %114 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %110)
  %115 = load i32, ptr %114, align 8, !tbaa !331
  switch i32 %115, label %138 [
    i32 3, label %116
    i32 0, label %124
    i32 1, label %130
    i32 2, label %134
  ], !prof !333

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.pre_expr_d, ptr %114, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !322
  %119 = tail call i32 @get_constant_value_id(ptr noundef %118) #19
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %139, !prof !334

121:                                              ; preds = %116
  %122 = load ptr, ptr %117, align 8, !tbaa !322
  %123 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %122) #19
  tail call void @add_to_value(i32 noundef %123, ptr noundef nonnull %114)
  br label %139

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.pre_expr_d, ptr %114, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !322
  %127 = tail call ptr @VN_INFO(ptr noundef %126) #19
  %128 = getelementptr inbounds %struct.vn_ssa_aux, ptr %127, i64 0, i32 2
  %129 = load i32, ptr %128, align 8, !tbaa !335
  br label %139

130:                                              ; preds = %113
  %131 = getelementptr inbounds %struct.pre_expr_d, ptr %114, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !322
  %133 = load i32, ptr %132, align 8, !tbaa !337
  br label %139

134:                                              ; preds = %113
  %135 = getelementptr inbounds %struct.pre_expr_d, ptr %114, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !322
  %137 = load i32, ptr %136, align 8, !tbaa !339
  br label %139

138:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %139

139:                                              ; preds = %116, %121, %124, %130, %134, %138
  %140 = phi i32 [ 0, %138 ], [ %137, %134 ], [ %133, %130 ], [ %129, %124 ], [ %123, %121 ], [ %119, %116 ]
  %141 = tail call fastcc ptr @get_constant_for_value_id(i32 noundef %140)
  br label %142

142:                                              ; preds = %108, %139
  %143 = phi ptr [ %141, %139 ], [ %110, %108 ]
  %144 = icmp eq ptr %143, null
  br i1 %144, label %155, label %145, !prof !1060

145:                                              ; preds = %142
  %146 = load ptr, ptr %109, align 8, !tbaa !311
  %147 = getelementptr inbounds %struct.tree_common, ptr %146, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !322
  %149 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %148, ptr noundef nonnull %143) #19
  %150 = load i32, ptr %6, align 4
  %151 = and i32 %150, 65535
  %152 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !957
  %154 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef %151, ptr noundef %153, ptr noundef %149) #19
  br label %155

155:                                              ; preds = %145, %142
  %156 = phi ptr [ %154, %145 ], [ null, %142 ]
  %157 = icmp eq ptr %156, null
  br i1 %157, label %271, label %158, !prof !1060

158:                                              ; preds = %155
  %159 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %156) #19
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %271, label %161

161:                                              ; preds = %158
  %162 = tail call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %156)
  br label %271

163:                                              ; preds = %1
  %164 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !322
  %166 = getelementptr inbounds %struct.vn_reference_s, ptr %165, i64 0, i32 5
  %167 = load ptr, ptr %166, align 8, !tbaa !365
  %168 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %167, i64 0, i32 2, i64 0
  %169 = load i32, ptr %168, align 8, !tbaa !368
  %170 = icmp eq i32 %169, 59
  br i1 %170, label %171, label %270, !prof !1074

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %167, i64 0, i32 2, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !370
  %174 = load i64, ptr %173, align 8
  %175 = and i64 %174, 65535
  %176 = icmp eq i64 %175, 121
  br i1 %176, label %177, label %270

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.tree_exp, ptr %173, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !322
  %180 = load i64, ptr %179, align 8
  %181 = and i64 %180, 65535
  %182 = icmp eq i64 %181, 29
  br i1 %182, label %183, label %270

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.tree_function_decl, ptr %179, i64 0, i32 5
  %185 = load i32, ptr %184, align 8
  %186 = and i32 %185, 6144
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %270, label %188

188:                                              ; preds = %183
  %189 = icmp eq ptr %167, null
  br i1 %189, label %270, label %190

190:                                              ; preds = %188
  %191 = load i32, ptr %167, align 8, !tbaa !366
  %192 = icmp ugt i32 %191, 1
  br i1 %192, label %193, label %270

193:                                              ; preds = %190
  br i1 %189, label %197, label %194

194:                                              ; preds = %193
  %195 = load i32, ptr %167, align 8, !tbaa !366
  %196 = icmp ult i32 %195, 4
  br i1 %196, label %197, label %270

197:                                              ; preds = %193, %194
  %198 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %167, i64 0, i32 2, i64 1
  br i1 %189, label %202, label %199

199:                                              ; preds = %197
  %200 = load i32, ptr %167, align 8, !tbaa !366
  %201 = icmp ugt i32 %200, 2
  br label %202

202:                                              ; preds = %197, %199
  %203 = phi i1 [ %201, %199 ], [ false, %197 ]
  %204 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %167, i64 0, i32 2, i64 2
  %205 = select i1 %203, ptr %204, ptr null
  %206 = load i32, ptr %198, align 8, !tbaa !368
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !326
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %218, label %211

211:                                              ; preds = %202
  %212 = icmp eq i32 %206, 121
  br i1 %212, label %213, label %219

213:                                              ; preds = %211
  %214 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %167, i64 1, i32 2, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !370
  %216 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %215) #19
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %213, %202
  br label %219

219:                                              ; preds = %218, %213, %211
  %220 = phi i8 [ 1, %218 ], [ 0, %213 ], [ 0, %211 ]
  br i1 %203, label %221, label %235

221:                                              ; preds = %219
  %222 = load i32, ptr %205, align 8, !tbaa !368
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !326
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %234, label %227

227:                                              ; preds = %221
  %228 = icmp eq i32 %222, 121
  br i1 %228, label %229, label %235

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %205, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !370
  %232 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %231) #19
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %229, %221
  br label %235

235:                                              ; preds = %234, %229, %227, %219
  %236 = phi i8 [ 1, %234 ], [ %220, %229 ], [ %220, %227 ], [ %220, %219 ]
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %267, label %238

238:                                              ; preds = %235
  %239 = load ptr, ptr %172, align 8, !tbaa !370
  %240 = getelementptr inbounds %struct.tree_exp, ptr %239, i64 0, i32 3
  %241 = load ptr, ptr %240, align 8, !tbaa !322
  %242 = select i1 %203, i32 2, i32 1
  %243 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %167, i64 1, i32 2, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !370
  br i1 %203, label %245, label %248

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %205, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !370
  br label %248

248:                                              ; preds = %238, %245
  %249 = phi ptr [ %247, %245 ], [ null, %238 ]
  %250 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %241, i32 noundef %242, ptr noundef %244, ptr noundef %249) #19
  %251 = icmp eq ptr %250, null
  br i1 %251, label %259, label %252

252:                                              ; preds = %248
  %253 = load i64, ptr %250, align 8
  %254 = and i64 %253, 65535
  %255 = icmp eq i64 %254, 116
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.tree_exp, ptr %250, i64 0, i32 3
  %258 = load ptr, ptr %257, align 8, !tbaa !322
  br label %259

259:                                              ; preds = %256, %252, %248
  %260 = phi ptr [ %258, %256 ], [ %250, %252 ], [ null, %248 ]
  %261 = icmp eq ptr %260, null
  br i1 %261, label %267, label %262

262:                                              ; preds = %259
  %263 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %260) #19
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %262
  %266 = tail call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %260)
  br label %267

267:                                              ; preds = %265, %262, %259, %235
  %268 = phi i1 [ true, %235 ], [ false, %265 ], [ true, %262 ], [ true, %259 ]
  %269 = phi ptr [ undef, %235 ], [ %266, %265 ], [ undef, %262 ], [ undef, %259 ]
  br i1 %268, label %270, label %271

270:                                              ; preds = %188, %267, %194, %190, %183, %177, %171, %163
  br label %271

271:                                              ; preds = %155, %106, %93, %12, %1, %270, %267, %101, %104, %158, %161, %3
  %272 = phi ptr [ %105, %104 ], [ %0, %101 ], [ %162, %161 ], [ %0, %158 ], [ %0, %3 ], [ %0, %270 ], [ %269, %267 ], [ %0, %1 ], [ %0, %12 ], [ %0, %93 ], [ %0, %106 ], [ %0, %155 ]
  ret ptr %272
}

declare i32 @get_next_value_id() local_unnamed_addr #3

declare ptr @vn_nary_op_insert_pieces(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @vn_reference_fold_indirect(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vn_reference_insert_pieces(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @bitmap_find_leader(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #9 !prof !1075 !PGOFuncName !1076 {
  %4 = tail call zeroext i8 @value_id_constant_p(i32 noundef %1) #19
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %98, label %6, !prof !733

6:                                                ; preds = %3
  %7 = load ptr, ptr @value_expressions, align 8
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %7, i64 0, i32 2, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !311
  %11 = load ptr, ptr %10, align 8, !tbaa !351
  %12 = load ptr, ptr %11, align 8, !tbaa !375
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @bitmap_zero_bits, ptr %12, !prof !734
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !377
  %17 = shl i32 %16, 7
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !379
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = or disjoint i32 %17, %21
  br label %23

23:                                               ; preds = %93, %6
  %24 = phi i32 [ 0, %6 ], [ %80, %93 ]
  %25 = phi i64 [ %19, %6 ], [ %94, %93 ]
  %26 = phi ptr [ %14, %6 ], [ %82, %93 ]
  %27 = phi i32 [ %22, %6 ], [ %95, %93 ]
  %28 = phi ptr [ undef, %6 ], [ %92, %93 ]
  %29 = icmp eq i64 %25, 0
  br i1 %29, label %44, label %30, !prof !735

30:                                               ; preds = %58, %23
  %31 = phi i32 [ %24, %23 ], [ %59, %58 ]
  %32 = phi i64 [ %25, %23 ], [ %63, %58 ]
  %33 = phi ptr [ %26, %23 ], [ %50, %58 ]
  %34 = phi i32 [ %27, %23 ], [ %60, %58 ]
  %35 = and i64 %32, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %79, !prof !736

37:                                               ; preds = %30, %37
  %38 = phi i32 [ %41, %37 ], [ %34, %30 ]
  %39 = phi i64 [ %40, %37 ], [ %32, %30 ]
  %40 = lshr exact i64 %39, 1
  %41 = add i32 %38, 1
  %42 = and i64 %39, 2
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %37, label %79, !prof !737, !llvm.loop !380

44:                                               ; preds = %23
  %45 = add i32 %27, 63
  %46 = and i32 %45, -64
  %47 = add i32 %24, 1
  br label %48

48:                                               ; preds = %75, %44
  %49 = phi i64 [ %25, %44 ], [ %70, %75 ]
  %50 = phi ptr [ %26, %44 ], [ %73, %75 ]
  %51 = phi i32 [ %46, %44 ], [ %78, %75 ]
  %52 = phi i32 [ %47, %44 ], [ 0, %75 ]
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %69, label %54, !prof !738

54:                                               ; preds = %48
  %55 = add i32 %51, 128
  %56 = shl i32 %52, 6
  %57 = sub i32 %55, %56
  br label %58

58:                                               ; preds = %54, %65
  %59 = phi i32 [ %67, %65 ], [ %52, %54 ]
  %60 = phi i32 [ %66, %65 ], [ %51, %54 ]
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 3, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !379
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %30, !prof !739

65:                                               ; preds = %58
  %66 = add i32 %60, 64
  %67 = add i32 %59, 1
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %58, !prof !739, !llvm.loop !381

69:                                               ; preds = %65, %48
  %70 = phi i64 [ %49, %48 ], [ %63, %65 ]
  %71 = phi i32 [ %51, %48 ], [ %57, %65 ]
  %72 = phi i32 [ %52, %48 ], [ 2, %65 ]
  %73 = load ptr, ptr %50, align 8, !tbaa !382
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.bitmap_element_def, ptr %73, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !377
  %78 = shl i32 %77, 7
  br label %48, !llvm.loop !383

79:                                               ; preds = %69, %37, %30
  %80 = phi i32 [ %31, %30 ], [ %31, %37 ], [ %72, %69 ]
  %81 = phi i64 [ %32, %30 ], [ %40, %37 ], [ %70, %69 ]
  %82 = phi ptr [ %33, %30 ], [ %33, %37 ], [ %73, %69 ]
  %83 = phi i32 [ %34, %30 ], [ %41, %37 ], [ %71, %69 ]
  %84 = phi i1 [ true, %30 ], [ true, %37 ], [ false, %69 ]
  br i1 %84, label %85, label %96, !prof !740

85:                                               ; preds = %79
  %86 = load ptr, ptr @expressions, align 8
  %87 = zext i32 %83 to i64
  %88 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %86, i64 0, i32 2, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !311
  %90 = load i32, ptr %89, align 8, !tbaa !331
  %91 = icmp eq i32 %90, 3
  %92 = select i1 %91, ptr %89, ptr %28, !prof !740
  br i1 %91, label %96, label %93, !prof !740

93:                                               ; preds = %85
  %94 = lshr i64 %81, 1
  %95 = add i32 %83, 1
  br label %23, !llvm.loop !741

96:                                               ; preds = %79, %85
  %97 = phi ptr [ %92, %85 ], [ %28, %79 ]
  br i1 %84, label %290, label %98, !prof !740

98:                                               ; preds = %96, %3
  %99 = phi ptr [ %97, %96 ], [ undef, %3 ]
  %100 = tail call zeroext i8 @value_id_constant_p(i32 noundef %1) #19
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %114, !prof !742

102:                                              ; preds = %98
  %103 = icmp eq ptr %0, null
  br i1 %103, label %289, label %104, !prof !743

104:                                              ; preds = %102
  %105 = load ptr, ptr %0, align 8, !tbaa !351
  %106 = load ptr, ptr %105, align 8, !tbaa !375
  %107 = icmp eq ptr %106, null
  br i1 %107, label %289, label %108, !prof !691

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !353
  %111 = tail call i32 @bitmap_bit_p(ptr noundef %110, i32 noundef %1) #19
  %112 = and i32 %111, 255
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %289, label %114, !prof !744

114:                                              ; preds = %98, %108
  %115 = load ptr, ptr @value_expressions, align 8
  %116 = zext i32 %1 to i64
  %117 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %115, i64 0, i32 2, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !311
  %119 = load ptr, ptr %118, align 8, !tbaa !351
  %120 = load ptr, ptr %0, align 8, !tbaa !351
  %121 = load ptr, ptr %119, align 8, !tbaa !375
  %122 = load ptr, ptr %120, align 8, !tbaa !375
  %123 = icmp eq ptr %121, null
  %124 = icmp eq ptr %122, null
  %125 = select i1 %123, i1 true, i1 %124
  br i1 %125, label %137, label %126, !prof !738

126:                                              ; preds = %114
  %127 = getelementptr inbounds %struct.bitmap_element_def, ptr %121, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !377
  br label %129

129:                                              ; preds = %126, %134
  %130 = phi ptr [ %122, %126 ], [ %135, %134 ]
  %131 = getelementptr inbounds %struct.bitmap_element_def, ptr %130, i64 0, i32 2
  %132 = load i32, ptr %131, align 8, !tbaa !377
  %133 = icmp ult i32 %132, %128
  br i1 %133, label %134, label %137, !prof !745

134:                                              ; preds = %129
  %135 = load ptr, ptr %130, align 8, !tbaa !382
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %129, !prof !746, !llvm.loop !747

137:                                              ; preds = %129, %134, %114
  %138 = phi ptr [ @bitmap_zero_bits, %114 ], [ %130, %129 ], [ @bitmap_zero_bits, %134 ]
  %139 = phi ptr [ @bitmap_zero_bits, %114 ], [ %121, %129 ], [ @bitmap_zero_bits, %134 ]
  %140 = getelementptr inbounds %struct.bitmap_element_def, ptr %139, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !377
  %142 = getelementptr inbounds %struct.bitmap_element_def, ptr %138, i64 0, i32 2
  %143 = load i32, ptr %142, align 8, !tbaa !377
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %152, !prof !748

145:                                              ; preds = %137
  %146 = shl i32 %141, 7
  %147 = getelementptr inbounds %struct.bitmap_element_def, ptr %139, i64 0, i32 3
  %148 = load i64, ptr %147, align 8, !tbaa !379
  %149 = getelementptr inbounds %struct.bitmap_element_def, ptr %138, i64 0, i32 3
  %150 = load i64, ptr %149, align 8, !tbaa !379
  %151 = and i64 %150, %148
  br label %152

152:                                              ; preds = %137, %145
  %153 = phi i64 [ %151, %145 ], [ 0, %137 ]
  %154 = phi i32 [ 0, %145 ], [ 1, %137 ]
  %155 = phi i32 [ %146, %145 ], [ 0, %137 ]
  %156 = icmp eq i64 %153, 0
  %157 = zext i1 %156 to i32
  %158 = or disjoint i32 %155, %157
  br label %159

159:                                              ; preds = %282, %152
  %160 = phi i32 [ %158, %152 ], [ %284, %282 ]
  %161 = phi i64 [ %153, %152 ], [ %283, %282 ]
  %162 = phi i32 [ %154, %152 ], [ %243, %282 ]
  %163 = phi ptr [ %138, %152 ], [ %244, %282 ]
  %164 = phi ptr [ %139, %152 ], [ %245, %282 ]
  %165 = phi ptr [ %99, %152 ], [ %280, %282 ]
  %166 = icmp eq i64 %161, 0
  br i1 %166, label %182, label %167, !prof !749

167:                                              ; preds = %201, %159
  %168 = phi i32 [ %160, %159 ], [ %203, %201 ]
  %169 = phi i64 [ %161, %159 ], [ %209, %201 ]
  %170 = phi i32 [ %162, %159 ], [ %202, %201 ]
  %171 = phi ptr [ %163, %159 ], [ %189, %201 ]
  %172 = phi ptr [ %164, %159 ], [ %190, %201 ]
  %173 = and i64 %169, 1
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %240, !prof !750

175:                                              ; preds = %167, %175
  %176 = phi i64 [ %178, %175 ], [ %169, %167 ]
  %177 = phi i32 [ %179, %175 ], [ %168, %167 ]
  %178 = lshr exact i64 %176, 1
  %179 = add i32 %177, 1
  %180 = and i64 %176, 2
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %175, label %240, !prof !751, !llvm.loop !752

182:                                              ; preds = %159
  %183 = add i32 %160, 63
  %184 = and i32 %183, -64
  %185 = add i32 %162, 1
  br label %186

186:                                              ; preds = %238, %182
  %187 = phi i32 [ %184, %182 ], [ %239, %238 ]
  %188 = phi i64 [ %161, %182 ], [ %199, %238 ]
  %189 = phi ptr [ %163, %182 ], [ %229, %238 ]
  %190 = phi ptr [ %164, %182 ], [ %221, %238 ]
  %191 = phi i32 [ %185, %182 ], [ 0, %238 ]
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %197, label %193, !prof !753

193:                                              ; preds = %186
  %194 = add i32 %187, 128
  %195 = shl i32 %191, 6
  %196 = sub i32 %194, %195
  br label %201

197:                                              ; preds = %211, %186
  %198 = phi i32 [ %187, %186 ], [ %196, %211 ]
  %199 = phi i64 [ %188, %186 ], [ %209, %211 ]
  %200 = phi i32 [ %191, %186 ], [ 2, %211 ]
  br label %215

201:                                              ; preds = %193, %211
  %202 = phi i32 [ %213, %211 ], [ %191, %193 ]
  %203 = phi i32 [ %212, %211 ], [ %187, %193 ]
  %204 = zext i32 %202 to i64
  %205 = getelementptr inbounds %struct.bitmap_element_def, ptr %190, i64 0, i32 3, i64 %204
  %206 = load i64, ptr %205, align 8, !tbaa !379
  %207 = getelementptr inbounds %struct.bitmap_element_def, ptr %189, i64 0, i32 3, i64 %204
  %208 = load i64, ptr %207, align 8, !tbaa !379
  %209 = and i64 %208, %206
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %167, !prof !754

211:                                              ; preds = %201
  %212 = add i32 %203, 64
  %213 = add i32 %202, 1
  %214 = icmp eq i32 %213, 2
  br i1 %214, label %197, label %201, !prof !755, !llvm.loop !756

215:                                              ; preds = %197, %236
  %216 = phi ptr [ %229, %236 ], [ %189, %197 ]
  %217 = phi ptr [ %221, %236 ], [ %190, %197 ]
  %218 = getelementptr inbounds %struct.bitmap_element_def, ptr %216, i64 0, i32 2
  br label %219

219:                                              ; preds = %223, %215
  %220 = phi ptr [ %217, %215 ], [ %221, %223 ]
  %221 = load ptr, ptr %220, align 8, !tbaa !382
  %222 = icmp eq ptr %221, null
  br i1 %222, label %240, label %223, !prof !757

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.bitmap_element_def, ptr %221, i64 0, i32 2
  %225 = load i32, ptr %224, align 8, !tbaa !377
  %226 = load i32, ptr %218, align 8, !tbaa !377
  %227 = icmp ult i32 %225, %226
  br i1 %227, label %219, label %228, !prof !758, !llvm.loop !759

228:                                              ; preds = %223, %233
  %229 = phi ptr [ %234, %233 ], [ %216, %223 ]
  %230 = getelementptr inbounds %struct.bitmap_element_def, ptr %229, i64 0, i32 2
  %231 = load i32, ptr %230, align 8, !tbaa !377
  %232 = icmp ult i32 %231, %225
  br i1 %232, label %233, label %236, !prof !760

233:                                              ; preds = %228
  %234 = load ptr, ptr %229, align 8, !tbaa !382
  %235 = icmp eq ptr %234, null
  br i1 %235, label %240, label %228, !prof !761, !llvm.loop !762

236:                                              ; preds = %228
  %237 = icmp eq i32 %225, %231
  br i1 %237, label %238, label %215, !prof !763, !llvm.loop !764

238:                                              ; preds = %236
  %239 = shl i32 %225, 7
  br label %186, !llvm.loop !765

240:                                              ; preds = %175, %219, %233, %167
  %241 = phi i32 [ %168, %167 ], [ %198, %233 ], [ %198, %219 ], [ %179, %175 ]
  %242 = phi i64 [ %169, %167 ], [ %199, %233 ], [ %199, %219 ], [ %178, %175 ]
  %243 = phi i32 [ %170, %167 ], [ %200, %233 ], [ %200, %219 ], [ %170, %175 ]
  %244 = phi ptr [ %171, %167 ], [ %234, %233 ], [ %216, %219 ], [ %171, %175 ]
  %245 = phi ptr [ %172, %167 ], [ %221, %233 ], [ %221, %219 ], [ %172, %175 ]
  %246 = phi i1 [ false, %167 ], [ true, %233 ], [ true, %219 ], [ false, %175 ]
  br i1 %246, label %285, label %247, !prof !766

247:                                              ; preds = %240
  %248 = load ptr, ptr @expressions, align 8
  %249 = icmp eq ptr %2, null
  %250 = zext i32 %241 to i64
  %251 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %248, i64 0, i32 2, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !311
  br i1 %249, label %277, label %253, !prof !1077

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.pre_expr_d, ptr %252, i64 0, i32 2
  %255 = load ptr, ptr %254, align 8, !tbaa !322
  %256 = getelementptr inbounds %struct.tree_ssa_name, ptr %255, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !322
  %258 = load i32, ptr %257, align 8
  %259 = and i32 %258, 255
  %260 = icmp eq i32 %259, 16
  br i1 %260, label %273, label %261

261:                                              ; preds = %253
  %262 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 4
  %263 = getelementptr inbounds %struct.gimple_statement_base, ptr %257, i64 0, i32 4
  %264 = load ptr, ptr %263, align 8, !tbaa !322
  %265 = load ptr, ptr %262, align 8, !tbaa !322
  %266 = icmp eq ptr %264, %265
  br i1 %266, label %267, label %273

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 1
  %269 = getelementptr inbounds %struct.gimple_statement_base, ptr %257, i64 0, i32 1
  %270 = load i32, ptr %269, align 4, !tbaa !322
  %271 = load i32, ptr %268, align 4, !tbaa !322
  %272 = icmp ult i32 %270, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %267, %261, %253
  br label %274

274:                                              ; preds = %267, %273
  %275 = phi i1 [ true, %273 ], [ false, %267 ]
  %276 = phi i32 [ 0, %273 ], [ 7, %267 ]
  br i1 %275, label %277, label %278

277:                                              ; preds = %274, %247
  br label %278

278:                                              ; preds = %274, %277
  %279 = phi i32 [ 1, %277 ], [ %276, %274 ]
  %280 = phi ptr [ %252, %277 ], [ %165, %274 ]
  %281 = icmp eq i32 %279, 7
  br i1 %281, label %282, label %285, !prof !766

282:                                              ; preds = %278
  %283 = lshr i64 %242, 1
  %284 = add i32 %241, 1
  br label %159, !llvm.loop !1078

285:                                              ; preds = %240, %278
  %286 = phi i32 [ %279, %278 ], [ 0, %240 ]
  %287 = phi ptr [ %280, %278 ], [ %165, %240 ]
  %288 = icmp eq i32 %286, 0
  br i1 %288, label %289, label %290, !prof !766

289:                                              ; preds = %104, %102, %285, %108
  br label %290

290:                                              ; preds = %285, %96, %289
  %291 = phi ptr [ %97, %96 ], [ %287, %285 ], [ null, %289 ]
  ret ptr %291
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !310 !PGOFuncName !1079 {
  %3 = tail call zeroext i8 @value_id_constant_p(i32 noundef %1) #19
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %16, !prof !742

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %16, label %7, !prof !743

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8, !tbaa !351
  %9 = load ptr, ptr %8, align 8, !tbaa !375
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11, !prof !691

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !353
  %14 = tail call i32 @bitmap_bit_p(ptr noundef %13, i32 noundef %1) #19
  %15 = trunc i32 %14 to i8
  br label %16

16:                                               ; preds = %5, %7, %2, %11
  %17 = phi i8 [ %15, %11 ], [ 1, %2 ], [ 0, %7 ], [ 0, %5 ]
  ret i8 %17
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_expr_type(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !310 !PGOFuncName !1080 {
  %2 = load i32, ptr %0, align 8, !tbaa !331
  switch i32 %2, label %23 [
    i32 0, label %3
    i32 3, label %8
    i32 2, label %13
    i32 1, label %18
  ], !prof !1055

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !322
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !322
  br label %24

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !322
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !322
  br label %24

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !322
  %16 = getelementptr inbounds %struct.vn_reference_s, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !997
  br label %24

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !322
  %21 = getelementptr inbounds %struct.vn_nary_op_s, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !957
  br label %24

23:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1397, ptr noundef nonnull @.str.1) #19
  br label %24

24:                                               ; preds = %23, %18, %13, %8, %3
  %25 = phi ptr [ null, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %8 ], [ %7, %3 ]
  ret ptr %25
}

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_nop() local_unnamed_addr #3

declare ptr @VN_INFO_GET(ptr noundef) local_unnamed_addr #3

declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_or_alloc_expr_for(ptr noundef %0) unnamed_addr #12 !prof !1081 !PGOFuncName !1082 {
  %2 = alloca ptr, align 8
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %8, !prof !1083

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %0)
  br label %42

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #19
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11, !prof !734

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %0)
  br label %42

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %14 = call ptr @vn_nary_op_lookup(ptr noundef nonnull %0, ptr noundef nonnull %2) #19
  %15 = load ptr, ptr %2, align 8, !tbaa !311
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !311
  %19 = call ptr @pool_alloc(ptr noundef %18) #19
  store i32 1, ptr %19, align 8, !tbaa !331
  %20 = load ptr, ptr %2, align 8, !tbaa !311
  %21 = getelementptr inbounds %struct.pre_expr_d, ptr %19, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !322
  %22 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %23 = call ptr @htab_find_slot(ptr noundef %22, ptr noundef nonnull %19, i32 noundef 0) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr %23, align 8, !tbaa !311
  %27 = getelementptr inbounds %struct.pre_expr_d, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !361
  br label %29

29:                                               ; preds = %17, %25
  %30 = phi i32 [ %28, %25 ], [ 0, %17 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !311
  call void @pool_free(ptr noundef %33, ptr noundef nonnull %19) #19
  %34 = load ptr, ptr @expressions, align 8
  %35 = zext i32 %30 to i64
  %36 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %34, i64 0, i32 2, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !311
  br label %40

38:                                               ; preds = %29
  %39 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %19)
  br label %40

40:                                               ; preds = %13, %32, %38
  %41 = phi ptr [ %37, %32 ], [ %19, %38 ], [ null, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  br label %42

42:                                               ; preds = %40, %11, %6
  %43 = phi ptr [ %7, %6 ], [ %12, %11 ], [ %41, %40 ]
  ret ptr %43
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_constant_for_value_id(i32 noundef %0) unnamed_addr #12 !prof !1084 !PGOFuncName !1085 {
  %2 = tail call zeroext i8 @value_id_constant_p(i32 noundef %0) #19
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %100, label %4, !prof !1086

4:                                                ; preds = %1
  %5 = load ptr, ptr @value_expressions, align 8
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %5, i64 0, i32 2, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !311
  %9 = load ptr, ptr %8, align 8, !tbaa !351
  %10 = load ptr, ptr %9, align 8, !tbaa !375
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @bitmap_zero_bits, ptr %10
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !377
  %15 = shl i32 %14, 7
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !379
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = or disjoint i32 %15, %19
  %21 = load ptr, ptr @expressions, align 8
  br label %22

22:                                               ; preds = %95, %4
  %23 = phi i64 [ %17, %4 ], [ %96, %95 ]
  %24 = phi i32 [ 0, %4 ], [ %80, %95 ]
  %25 = phi i32 [ %20, %4 ], [ %97, %95 ]
  %26 = phi ptr [ %12, %4 ], [ %82, %95 ]
  %27 = phi ptr [ undef, %4 ], [ %94, %95 ]
  %28 = icmp eq i64 %23, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %57, %22
  %30 = phi i64 [ %23, %22 ], [ %62, %57 ]
  %31 = phi i32 [ %24, %22 ], [ %58, %57 ]
  %32 = phi i32 [ %25, %22 ], [ %59, %57 ]
  %33 = phi ptr [ %26, %22 ], [ %50, %57 ]
  %34 = and i64 %30, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %29, %36
  %37 = phi i32 [ %40, %36 ], [ %32, %29 ]
  %38 = phi i64 [ %39, %36 ], [ %30, %29 ]
  %39 = lshr exact i64 %38, 1
  %40 = add i32 %37, 1
  %41 = and i64 %38, 2
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %36, label %78, !llvm.loop !380

43:                                               ; preds = %22
  %44 = add i32 %25, 63
  %45 = and i32 %44, -64
  %46 = add i32 %24, 1
  br label %47

47:                                               ; preds = %74, %43
  %48 = phi i64 [ %23, %43 ], [ %69, %74 ]
  %49 = phi i32 [ %45, %43 ], [ %77, %74 ]
  %50 = phi ptr [ %26, %43 ], [ %72, %74 ]
  %51 = phi i32 [ %46, %43 ], [ 0, %74 ]
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %68, label %53

53:                                               ; preds = %47
  %54 = add i32 %49, 128
  %55 = shl i32 %51, 6
  %56 = sub i32 %54, %55
  br label %57

57:                                               ; preds = %53, %64
  %58 = phi i32 [ %66, %64 ], [ %51, %53 ]
  %59 = phi i32 [ %65, %64 ], [ %49, %53 ]
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 3, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !379
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %29

64:                                               ; preds = %57
  %65 = add i32 %59, 64
  %66 = add i32 %58, 1
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %57, !llvm.loop !381

68:                                               ; preds = %64, %47
  %69 = phi i64 [ %48, %47 ], [ %62, %64 ]
  %70 = phi i32 [ %49, %47 ], [ %56, %64 ]
  %71 = phi i32 [ %51, %47 ], [ 2, %64 ]
  %72 = load ptr, ptr %50, align 8, !tbaa !382
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.bitmap_element_def, ptr %72, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !377
  %77 = shl i32 %76, 7
  br label %47, !llvm.loop !383

78:                                               ; preds = %68, %36, %29
  %79 = phi i64 [ %30, %29 ], [ %39, %36 ], [ %69, %68 ]
  %80 = phi i32 [ %31, %29 ], [ %31, %36 ], [ %71, %68 ]
  %81 = phi i32 [ %32, %29 ], [ %40, %36 ], [ %70, %68 ]
  %82 = phi ptr [ %33, %29 ], [ %33, %36 ], [ %72, %68 ]
  %83 = phi i1 [ true, %29 ], [ true, %36 ], [ false, %68 ]
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = zext i32 %81 to i64
  %86 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %21, i64 0, i32 2, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !311
  %88 = load i32, ptr %87, align 8, !tbaa !331
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.pre_expr_d, ptr %87, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !322
  br label %93

93:                                               ; preds = %84, %90
  %94 = phi ptr [ %92, %90 ], [ %27, %84 ]
  br i1 %89, label %98, label %95

95:                                               ; preds = %93
  %96 = lshr i64 %79, 1
  %97 = add i32 %81, 1
  br label %22, !llvm.loop !1087

98:                                               ; preds = %78, %93
  %99 = phi ptr [ %94, %93 ], [ %27, %78 ]
  br i1 %83, label %101, label %100

100:                                              ; preds = %98, %1
  br label %101

101:                                              ; preds = %98, %100
  %102 = phi ptr [ %99, %98 ], [ null, %100 ]
  ret ptr %102
}

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_unary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare ptr @vn_nary_op_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_continuation_for_phi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @valid_in_sets(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #12 !prof !1088 !PGOFuncName !1089 {
  %5 = alloca %struct.ao_ref_s, align 8
  %6 = alloca %struct.pre_expr_d, align 8
  %7 = alloca %struct.pre_expr_d, align 8
  %8 = alloca %struct.pre_expr_d, align 8
  %9 = alloca %struct.pre_expr_d, align 8
  %10 = load i32, ptr %2, align 8, !tbaa !331
  switch i32 %10, label %478 [
    i32 0, label %11
    i32 1, label %21
    i32 2, label %134
  ], !prof !1090

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !450
  %14 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !457
  %16 = load ptr, ptr %15, align 8, !tbaa !351
  %17 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !361
  %19 = tail call i32 @bitmap_bit_p(ptr noundef %16, i32 noundef %18) #19
  %20 = trunc i32 %19 to i8
  br label %479

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !322
  %24 = getelementptr inbounds %struct.vn_nary_op_s, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, 65536
  br i1 %26, label %123, label %27, !prof !1091

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.pre_expr_d, ptr %9, i64 0, i32 1
  %29 = getelementptr inbounds %struct.pre_expr_d, ptr %9, i64 0, i32 2
  %30 = icmp eq ptr %0, null
  %31 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  br label %32

32:                                               ; preds = %27, %117
  %33 = phi i64 [ 0, %27 ], [ %118, %117 ]
  %34 = getelementptr inbounds %struct.vn_nary_op_s, ptr %23, i64 0, i32 5, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !311
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %117, !prof !1092

39:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #19
  store i32 0, ptr %9, align 8, !tbaa !331
  store i32 0, ptr %28, align 4, !tbaa !361
  %40 = load ptr, ptr %34, align 8, !tbaa !311
  store ptr %40, ptr %29, align 8, !tbaa !322
  %41 = getelementptr inbounds %struct.tree_ssa_name, ptr %40, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !322
  %43 = load ptr, ptr @name_to_id, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !1093

45:                                               ; preds = %39
  %46 = load i32, ptr %43, align 4, !tbaa !356
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi i32 [ %46, %45 ], [ 0, %39 ]
  %49 = icmp ugt i32 %48, %42
  br i1 %49, label %50, label %54, !prof !1094

50:                                               ; preds = %47
  %51 = zext i32 %42 to i64
  %52 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %43, i64 0, i32 2, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !326
  br label %54

54:                                               ; preds = %47, %50
  %55 = phi i32 [ %53, %50 ], [ 0, %47 ]
  store i32 %55, ptr %28, align 4, !tbaa !361
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %116, label %57, !prof !1093

57:                                               ; preds = %54
  %58 = call ptr @VN_INFO(ptr noundef %40) #19
  %59 = getelementptr inbounds %struct.vn_ssa_aux, ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !335
  %61 = call zeroext i8 @value_id_constant_p(i32 noundef %60) #19
  %62 = icmp ne i8 %61, 0
  %63 = or i1 %62, %30
  %64 = zext i1 %62 to i8
  br i1 %63, label %73, label %65, !prof !690

65:                                               ; preds = %57
  %66 = load ptr, ptr %0, align 8, !tbaa !351
  %67 = load ptr, ptr %66, align 8, !tbaa !375
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69, !prof !691

69:                                               ; preds = %65
  %70 = load ptr, ptr %31, align 8, !tbaa !353
  %71 = call i32 @bitmap_bit_p(ptr noundef %70, i32 noundef %60) #19
  %72 = trunc i32 %71 to i8
  br label %73

73:                                               ; preds = %57, %65, %69
  %74 = phi i8 [ %72, %69 ], [ %64, %57 ], [ 0, %65 ]
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %115, !prof !1095

76:                                               ; preds = %73
  %77 = icmp eq ptr %1, null
  br i1 %77, label %116, label %78, !prof !1096

78:                                               ; preds = %76
  %79 = load i32, ptr %9, align 8, !tbaa !331
  switch i32 %79, label %98 [
    i32 3, label %80
    i32 0, label %87
    i32 1, label %92
    i32 2, label %95
  ], !prof !333

80:                                               ; preds = %78
  %81 = load ptr, ptr %29, align 8, !tbaa !322
  %82 = call i32 @get_constant_value_id(ptr noundef %81) #19
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %99, !prof !334

84:                                               ; preds = %80
  %85 = load ptr, ptr %29, align 8, !tbaa !322
  %86 = call i32 @get_or_alloc_constant_value_id(ptr noundef %85) #19
  call void @add_to_value(i32 noundef %86, ptr noundef nonnull %9)
  br label %99

87:                                               ; preds = %78
  %88 = load ptr, ptr %29, align 8, !tbaa !322
  %89 = call ptr @VN_INFO(ptr noundef %88) #19
  %90 = getelementptr inbounds %struct.vn_ssa_aux, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !335
  br label %99

92:                                               ; preds = %78
  %93 = load ptr, ptr %29, align 8, !tbaa !322
  %94 = load i32, ptr %93, align 8, !tbaa !337
  br label %99

95:                                               ; preds = %78
  %96 = load ptr, ptr %29, align 8, !tbaa !322
  %97 = load i32, ptr %96, align 8, !tbaa !339
  br label %99

98:                                               ; preds = %78
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %99

99:                                               ; preds = %80, %84, %87, %92, %95, %98
  %100 = phi i32 [ 0, %98 ], [ %97, %95 ], [ %94, %92 ], [ %91, %87 ], [ %86, %84 ], [ %82, %80 ]
  %101 = call zeroext i8 @value_id_constant_p(i32 noundef %100) #19
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %112, !prof !1097

103:                                              ; preds = %99
  %104 = load ptr, ptr %1, align 8, !tbaa !351
  %105 = load ptr, ptr %104, align 8, !tbaa !375
  %106 = icmp eq ptr %105, null
  br i1 %106, label %112, label %107, !prof !1098

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.bitmap_set, ptr %1, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !353
  %110 = call i32 @bitmap_bit_p(ptr noundef %109, i32 noundef %100) #19
  %111 = trunc i32 %110 to i8
  br label %112

112:                                              ; preds = %99, %103, %107
  %113 = phi i8 [ %111, %107 ], [ 1, %99 ], [ 0, %103 ]
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %116, label %115, !prof !1099

115:                                              ; preds = %112, %73
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #19
  br label %117

116:                                              ; preds = %76, %112, %54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #19
  br label %479

117:                                              ; preds = %115, %32
  %118 = add nuw nsw i64 %33, 1
  %119 = load i32, ptr %24, align 4
  %120 = lshr i32 %119, 16
  %121 = zext nneg i32 %120 to i64
  %122 = icmp ult i64 %118, %121
  br i1 %122, label %32, label %123, !prof !1100, !llvm.loop !1101

123:                                              ; preds = %117, %21
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !450
  %126 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %125, i64 0, i32 8
  %127 = load i8, ptr %126, align 8
  %128 = and i8 %127, 4
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %133, label %130, !prof !1102

130:                                              ; preds = %123
  %131 = call zeroext i8 @vn_nary_may_trap(ptr noundef %23) #19
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %479, !prof !1103

133:                                              ; preds = %130, %123
  br label %479

134:                                              ; preds = %4
  %135 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !322
  %137 = getelementptr inbounds %struct.vn_reference_s, ptr %136, i64 0, i32 5
  br label %138

138:                                              ; preds = %338, %134
  %139 = phi i32 [ 0, %134 ], [ %339, %338 ]
  %140 = load ptr, ptr %137, align 8, !tbaa !365
  %141 = icmp eq ptr %140, null
  br i1 %141, label %148, label %142, !prof !1104

142:                                              ; preds = %138
  %143 = load i32, ptr %140, align 8, !tbaa !366
  %144 = icmp ugt i32 %143, %139
  br i1 %144, label %145, label %148, !prof !1105

145:                                              ; preds = %142
  %146 = zext i32 %139 to i64
  %147 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %140, i64 0, i32 2, i64 %146
  br label %148

148:                                              ; preds = %138, %142, %145
  %149 = phi ptr [ %147, %145 ], [ null, %142 ], [ null, %138 ]
  %150 = phi i1 [ false, %145 ], [ true, %142 ], [ true, %138 ]
  br i1 %150, label %340, label %151, !prof !1106

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %149, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !370
  %154 = icmp eq ptr %153, null
  br i1 %154, label %240, label %155, !prof !1107

155:                                              ; preds = %151
  %156 = load i64, ptr %153, align 8
  %157 = and i64 %156, 65535
  %158 = icmp eq i64 %157, 141
  br i1 %158, label %159, label %240, !prof !1108

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.pre_expr_d, ptr %6, i64 0, i32 1
  %161 = getelementptr inbounds %struct.pre_expr_d, ptr %6, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  store i32 0, ptr %6, align 8, !tbaa !331
  store i32 0, ptr %160, align 4, !tbaa !361
  store ptr %153, ptr %161, align 8, !tbaa !322
  %162 = getelementptr inbounds %struct.tree_ssa_name, ptr %153, i64 0, i32 3
  %163 = load i32, ptr %162, align 8, !tbaa !322
  %164 = load ptr, ptr @name_to_id, align 8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %168, label %166, !prof !1109

166:                                              ; preds = %159
  %167 = load i32, ptr %164, align 4, !tbaa !356
  br label %168

168:                                              ; preds = %166, %159
  %169 = phi i32 [ %167, %166 ], [ 0, %159 ]
  %170 = icmp ugt i32 %169, %163
  br i1 %170, label %171, label %175, !prof !1110

171:                                              ; preds = %168
  %172 = zext i32 %163 to i64
  %173 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %164, i64 0, i32 2, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !326
  br label %175

175:                                              ; preds = %171, %168
  %176 = phi i32 [ %174, %171 ], [ 0, %168 ]
  store i32 %176, ptr %160, align 4, !tbaa !361
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %239, label %178, !prof !1109

178:                                              ; preds = %175
  %179 = icmp eq ptr %0, null
  %180 = call ptr @VN_INFO(ptr noundef nonnull %153) #19
  %181 = getelementptr inbounds %struct.vn_ssa_aux, ptr %180, i64 0, i32 2
  %182 = load i32, ptr %181, align 8, !tbaa !335
  %183 = call zeroext i8 @value_id_constant_p(i32 noundef %182) #19
  %184 = icmp ne i8 %183, 0
  %185 = or i1 %184, %179
  %186 = zext i1 %184 to i8
  br i1 %185, label %196, label %187, !prof !690

187:                                              ; preds = %178
  %188 = load ptr, ptr %0, align 8, !tbaa !351
  %189 = load ptr, ptr %188, align 8, !tbaa !375
  %190 = icmp eq ptr %189, null
  br i1 %190, label %196, label %191, !prof !691

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !353
  %194 = call i32 @bitmap_bit_p(ptr noundef %193, i32 noundef %182) #19
  %195 = trunc i32 %194 to i8
  br label %196

196:                                              ; preds = %178, %187, %191
  %197 = phi i8 [ %195, %191 ], [ %186, %178 ], [ 0, %187 ]
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %238, !prof !1111

199:                                              ; preds = %196
  %200 = icmp eq ptr %1, null
  br i1 %200, label %239, label %201, !prof !1112

201:                                              ; preds = %199
  %202 = load i32, ptr %6, align 8, !tbaa !331
  switch i32 %202, label %221 [
    i32 3, label %203
    i32 0, label %210
    i32 1, label %215
    i32 2, label %218
  ], !prof !333

203:                                              ; preds = %201
  %204 = load ptr, ptr %161, align 8, !tbaa !322
  %205 = call i32 @get_constant_value_id(ptr noundef %204) #19
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %222, !prof !334

207:                                              ; preds = %203
  %208 = load ptr, ptr %161, align 8, !tbaa !322
  %209 = call i32 @get_or_alloc_constant_value_id(ptr noundef %208) #19
  call void @add_to_value(i32 noundef %209, ptr noundef nonnull %6)
  br label %222

210:                                              ; preds = %201
  %211 = load ptr, ptr %161, align 8, !tbaa !322
  %212 = call ptr @VN_INFO(ptr noundef %211) #19
  %213 = getelementptr inbounds %struct.vn_ssa_aux, ptr %212, i64 0, i32 2
  %214 = load i32, ptr %213, align 8, !tbaa !335
  br label %222

215:                                              ; preds = %201
  %216 = load ptr, ptr %161, align 8, !tbaa !322
  %217 = load i32, ptr %216, align 8, !tbaa !337
  br label %222

218:                                              ; preds = %201
  %219 = load ptr, ptr %161, align 8, !tbaa !322
  %220 = load i32, ptr %219, align 8, !tbaa !339
  br label %222

221:                                              ; preds = %201
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %222

222:                                              ; preds = %203, %207, %210, %215, %218, %221
  %223 = phi i32 [ 0, %221 ], [ %220, %218 ], [ %217, %215 ], [ %214, %210 ], [ %209, %207 ], [ %205, %203 ]
  %224 = call zeroext i8 @value_id_constant_p(i32 noundef %223) #19
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %226, label %235, !prof !1113

226:                                              ; preds = %222
  %227 = load ptr, ptr %1, align 8, !tbaa !351
  %228 = load ptr, ptr %227, align 8, !tbaa !375
  %229 = icmp eq ptr %228, null
  br i1 %229, label %235, label %230, !prof !1114

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.bitmap_set, ptr %1, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !353
  %233 = call i32 @bitmap_bit_p(ptr noundef %232, i32 noundef %223) #19
  %234 = trunc i32 %233 to i8
  br label %235

235:                                              ; preds = %230, %226, %222
  %236 = phi i8 [ %234, %230 ], [ 1, %222 ], [ 0, %226 ]
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %239, label %238, !prof !1115

238:                                              ; preds = %235, %196
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %240

239:                                              ; preds = %235, %199, %175
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %479

240:                                              ; preds = %238, %155, %151
  %241 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %149, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !371
  %243 = icmp eq ptr %242, null
  br i1 %243, label %289, label %244, !prof !1116

244:                                              ; preds = %240
  %245 = load i64, ptr %242, align 8
  %246 = and i64 %245, 65535
  %247 = icmp eq i64 %246, 141
  br i1 %247, label %248, label %289, !prof !1117

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.pre_expr_d, ptr %7, i64 0, i32 1
  %250 = getelementptr inbounds %struct.pre_expr_d, ptr %7, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  store i32 0, ptr %7, align 8, !tbaa !331
  store i32 0, ptr %249, align 4, !tbaa !361
  store ptr %242, ptr %250, align 8, !tbaa !322
  %251 = getelementptr inbounds %struct.tree_ssa_name, ptr %242, i64 0, i32 3
  %252 = load i32, ptr %251, align 8, !tbaa !322
  %253 = load ptr, ptr @name_to_id, align 8
  %254 = icmp eq ptr %253, null
  br i1 %254, label %257, label %255

255:                                              ; preds = %248
  %256 = load i32, ptr %253, align 4, !tbaa !356
  br label %257

257:                                              ; preds = %255, %248
  %258 = phi i32 [ %256, %255 ], [ 0, %248 ]
  %259 = icmp ugt i32 %258, %252
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = zext i32 %252 to i64
  %262 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %253, i64 0, i32 2, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !326
  br label %264

264:                                              ; preds = %260, %257
  %265 = phi i32 [ %263, %260 ], [ 0, %257 ]
  store i32 %265, ptr %249, align 4, !tbaa !361
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %288, label %267

267:                                              ; preds = %264
  %268 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %7)
  %269 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %268)
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %287

271:                                              ; preds = %267
  %272 = icmp eq ptr %1, null
  br i1 %272, label %288, label %273

273:                                              ; preds = %271
  %274 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %7)
  %275 = call zeroext i8 @value_id_constant_p(i32 noundef %274) #19
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %277, label %287

277:                                              ; preds = %273
  %278 = load ptr, ptr %1, align 8, !tbaa !351
  %279 = load ptr, ptr %278, align 8, !tbaa !375
  %280 = icmp eq ptr %279, null
  br i1 %280, label %288, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.bitmap_set, ptr %1, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !353
  %284 = call i32 @bitmap_bit_p(ptr noundef %283, i32 noundef %274) #19
  %285 = and i32 %284, 255
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %273, %281, %267
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  br label %289

288:                                              ; preds = %277, %281, %271, %264
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  br label %479

289:                                              ; preds = %287, %244, %240
  %290 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %149, i64 0, i32 4
  %291 = load ptr, ptr %290, align 8, !tbaa !372
  %292 = icmp eq ptr %291, null
  br i1 %292, label %338, label %293, !prof !1116

293:                                              ; preds = %289
  %294 = load i64, ptr %291, align 8
  %295 = and i64 %294, 65535
  %296 = icmp eq i64 %295, 141
  br i1 %296, label %297, label %338, !prof !1117

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.pre_expr_d, ptr %8, i64 0, i32 1
  %299 = getelementptr inbounds %struct.pre_expr_d, ptr %8, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  store i32 0, ptr %8, align 8, !tbaa !331
  store i32 0, ptr %298, align 4, !tbaa !361
  store ptr %291, ptr %299, align 8, !tbaa !322
  %300 = getelementptr inbounds %struct.tree_ssa_name, ptr %291, i64 0, i32 3
  %301 = load i32, ptr %300, align 8, !tbaa !322
  %302 = load ptr, ptr @name_to_id, align 8
  %303 = icmp eq ptr %302, null
  br i1 %303, label %306, label %304

304:                                              ; preds = %297
  %305 = load i32, ptr %302, align 4, !tbaa !356
  br label %306

306:                                              ; preds = %304, %297
  %307 = phi i32 [ %305, %304 ], [ 0, %297 ]
  %308 = icmp ugt i32 %307, %301
  br i1 %308, label %309, label %313

309:                                              ; preds = %306
  %310 = zext i32 %301 to i64
  %311 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %302, i64 0, i32 2, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !326
  br label %313

313:                                              ; preds = %309, %306
  %314 = phi i32 [ %312, %309 ], [ 0, %306 ]
  store i32 %314, ptr %298, align 4, !tbaa !361
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %337, label %316

316:                                              ; preds = %313
  %317 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %8)
  %318 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %317)
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %320, label %336

320:                                              ; preds = %316
  %321 = icmp eq ptr %1, null
  br i1 %321, label %337, label %322

322:                                              ; preds = %320
  %323 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %8)
  %324 = call zeroext i8 @value_id_constant_p(i32 noundef %323) #19
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %336

326:                                              ; preds = %322
  %327 = load ptr, ptr %1, align 8, !tbaa !351
  %328 = load ptr, ptr %327, align 8, !tbaa !375
  %329 = icmp eq ptr %328, null
  br i1 %329, label %337, label %330

330:                                              ; preds = %326
  %331 = getelementptr inbounds %struct.bitmap_set, ptr %1, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !353
  %333 = call i32 @bitmap_bit_p(ptr noundef %332, i32 noundef %323) #19
  %334 = and i32 %333, 255
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %337, label %336

336:                                              ; preds = %322, %330, %316
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  br label %338

337:                                              ; preds = %326, %330, %320, %313
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  br label %479

338:                                              ; preds = %336, %293, %289
  %339 = add i32 %139, 1
  br label %138, !llvm.loop !1118

340:                                              ; preds = %148
  %341 = getelementptr inbounds %struct.vn_reference_s, ptr %136, i64 0, i32 2
  %342 = load ptr, ptr %341, align 8, !tbaa !374
  %343 = icmp eq ptr %342, null
  br i1 %343, label %357, label %344, !prof !1119

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.tree_ssa_name, ptr %342, i64 0, i32 2
  %346 = load ptr, ptr %345, align 8, !tbaa !322
  %347 = load i32, ptr %346, align 8
  %348 = and i32 %347, 255
  %349 = icmp eq i32 %348, 18
  br i1 %349, label %357, label %350, !prof !1120

350:                                              ; preds = %344
  %351 = getelementptr inbounds %struct.gimple_statement_base, ptr %346, i64 0, i32 4
  %352 = load ptr, ptr %351, align 8, !tbaa !322
  %353 = icmp eq ptr %352, %3
  br i1 %353, label %357, label %354, !prof !1121

354:                                              ; preds = %350
  %355 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %3, ptr noundef %352) #19
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %479, label %357, !prof !1122

357:                                              ; preds = %344, %350, %354, %340
  %358 = load ptr, ptr %135, align 8, !tbaa !322
  %359 = getelementptr inbounds %struct.vn_reference_s, ptr %358, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !374
  %361 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 1
  %362 = load i32, ptr %361, align 4, !tbaa !361
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #19
  %363 = icmp eq ptr %360, null
  br i1 %363, label %476, label %364, !prof !1119

364:                                              ; preds = %357
  %365 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  %366 = load ptr, ptr %365, align 8, !tbaa !450
  %367 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %366, i64 0, i32 7
  %368 = load ptr, ptr %367, align 8, !tbaa !1123
  %369 = icmp eq ptr %368, null
  br i1 %369, label %383, label %370, !prof !1124

370:                                              ; preds = %364
  %371 = shl i32 %362, 1
  %372 = call i32 @bitmap_bit_p(ptr noundef nonnull %368, i32 noundef %371) #19
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %383, label %374, !prof !1125

374:                                              ; preds = %370
  %375 = load ptr, ptr %365, align 8, !tbaa !450
  %376 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %375, i64 0, i32 7
  %377 = load ptr, ptr %376, align 8, !tbaa !1123
  %378 = or disjoint i32 %371, 1
  %379 = call i32 @bitmap_bit_p(ptr noundef %377, i32 noundef %378) #19
  %380 = and i32 %379, 255
  %381 = icmp eq i32 %380, 0
  %382 = zext i1 %381 to i8
  br label %476

383:                                              ; preds = %370, %364
  %384 = getelementptr inbounds %struct.ao_ref_s, ptr %5, i64 0, i32 1
  store ptr null, ptr %384, align 8, !tbaa !1126
  %385 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 13
  %386 = load i32, ptr %385, align 8, !tbaa !489, !noalias !1128
  %387 = and i32 %386, 512
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %395, !prof !1131

389:                                              ; preds = %383
  %390 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %391 = load ptr, ptr %390, align 8, !tbaa !322, !noalias !1128
  %392 = icmp eq ptr %391, null
  br i1 %392, label %395, label %393, !prof !1132

393:                                              ; preds = %389
  %394 = load ptr, ptr %391, align 8, !tbaa !493, !noalias !1128
  br label %395

395:                                              ; preds = %393, %389, %383
  %396 = phi ptr [ %394, %393 ], [ null, %389 ], [ null, %383 ]
  %397 = icmp eq ptr %396, null
  br i1 %397, label %400, label %398, !prof !1132

398:                                              ; preds = %395
  %399 = load ptr, ptr %396, align 8, !tbaa !495, !noalias !1128
  br label %400

400:                                              ; preds = %398, %395
  %401 = phi ptr [ %399, %398 ], [ null, %395 ]
  %402 = icmp eq ptr %401, null
  br i1 %402, label %454, label %403, !prof !1133

403:                                              ; preds = %400, %448
  %404 = phi i8 [ %446, %448 ], [ 0, %400 ]
  %405 = phi ptr [ %450, %448 ], [ %401, %400 ]
  %406 = load ptr, ptr %405, align 8, !tbaa !476
  %407 = load i32, ptr %406, align 8
  %408 = and i32 %407, 254
  %409 = add nsw i32 %408, -10
  %410 = icmp ult i32 %409, -4
  br i1 %410, label %414, label %411, !prof !1134

411:                                              ; preds = %403
  %412 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %406, i64 0, i32 2
  %413 = load ptr, ptr %412, align 8, !tbaa !322
  br label %414

414:                                              ; preds = %411, %403
  %415 = phi ptr [ %413, %411 ], [ null, %403 ]
  br i1 %410, label %419, label %416, !prof !1134

416:                                              ; preds = %414
  %417 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %406, i64 0, i32 1
  %418 = load ptr, ptr %417, align 8, !tbaa !322
  br label %419

419:                                              ; preds = %416, %414
  %420 = phi ptr [ %418, %416 ], [ null, %414 ]
  %421 = icmp eq ptr %415, null
  br i1 %421, label %444, label %422, !prof !1135

422:                                              ; preds = %419
  %423 = icmp eq ptr %420, null
  br i1 %423, label %424, label %427, !prof !1136

424:                                              ; preds = %422
  %425 = icmp eq ptr %415, %360
  %426 = select i1 %425, i32 2, i32 4, !prof !1137
  br label %444

427:                                              ; preds = %422
  %428 = load ptr, ptr %384, align 8, !tbaa !1126
  %429 = icmp eq ptr %428, null
  br i1 %429, label %430, label %439, !prof !1138

430:                                              ; preds = %427
  %431 = getelementptr inbounds %struct.vn_reference_s, ptr %358, i64 0, i32 3
  %432 = getelementptr inbounds %struct.vn_reference_s, ptr %358, i64 0, i32 4
  %433 = getelementptr inbounds %struct.vn_reference_s, ptr %358, i64 0, i32 5
  %434 = load i32, ptr %431, align 8, !tbaa !996
  %435 = load ptr, ptr %432, align 8, !tbaa !997
  %436 = load ptr, ptr %433, align 8, !tbaa !365
  %437 = call zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef nonnull %5, i32 noundef %434, ptr noundef %435, ptr noundef %436) #19
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %444, label %439, !prof !1139

439:                                              ; preds = %430, %427
  %440 = call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef nonnull %406, ptr noundef nonnull %5) #19
  %441 = icmp eq i8 %440, 0
  %442 = select i1 %441, i32 0, i32 2, !prof !1139
  %443 = select i1 %441, i8 %404, i8 1, !prof !1139
  br label %444

444:                                              ; preds = %439, %430, %424, %419
  %445 = phi i32 [ 4, %419 ], [ %426, %424 ], [ 2, %430 ], [ %442, %439 ]
  %446 = phi i8 [ %404, %419 ], [ %404, %424 ], [ 1, %430 ], [ %443, %439 ]
  %447 = icmp eq i32 %445, 2
  br i1 %447, label %452, label %448, !prof !1140

448:                                              ; preds = %444
  %449 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %405, i64 0, i32 2
  %450 = load ptr, ptr %449, align 8, !tbaa !486
  %451 = icmp eq ptr %450, null
  br i1 %451, label %452, label %403, !prof !1141, !llvm.loop !1142

452:                                              ; preds = %444, %448
  %453 = icmp eq i8 %446, 0
  br label %454

454:                                              ; preds = %452, %400
  %455 = phi i1 [ true, %400 ], [ %453, %452 ]
  %456 = load ptr, ptr %365, align 8, !tbaa !450
  %457 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %456, i64 0, i32 7
  %458 = load ptr, ptr %457, align 8, !tbaa !1123
  %459 = icmp eq ptr %458, null
  br i1 %459, label %460, label %464, !prof !1143

460:                                              ; preds = %454
  %461 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #19
  %462 = load ptr, ptr %365, align 8, !tbaa !450
  %463 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %462, i64 0, i32 7
  store ptr %461, ptr %463, align 8, !tbaa !1123
  br label %464

464:                                              ; preds = %460, %454
  %465 = load ptr, ptr %365, align 8, !tbaa !450
  %466 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %465, i64 0, i32 7
  %467 = load ptr, ptr %466, align 8, !tbaa !1123
  %468 = shl i32 %362, 1
  %469 = call zeroext i8 @bitmap_set_bit(ptr noundef %467, i32 noundef %468) #19
  br i1 %455, label %476, label %470, !prof !1144

470:                                              ; preds = %464
  %471 = load ptr, ptr %365, align 8, !tbaa !450
  %472 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %471, i64 0, i32 7
  %473 = load ptr, ptr %472, align 8, !tbaa !1123
  %474 = or disjoint i32 %468, 1
  %475 = call zeroext i8 @bitmap_set_bit(ptr noundef %473, i32 noundef %474) #19
  br label %476

476:                                              ; preds = %357, %374, %464, %470
  %477 = phi i8 [ %382, %374 ], [ 1, %357 ], [ 0, %470 ], [ 1, %464 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #19
  br label %479

478:                                              ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2148, ptr noundef nonnull @.str.1) #19
  br label %479

479:                                              ; preds = %239, %288, %337, %476, %354, %133, %116, %130, %478, %11
  %480 = phi i8 [ 0, %478 ], [ %20, %11 ], [ 0, %116 ], [ 1, %133 ], [ 0, %130 ], [ %477, %476 ], [ 0, %354 ], [ 0, %337 ], [ 0, %288 ], [ 0, %239 ]
  ret i8 %480
}

declare zeroext i8 @vn_nary_may_trap(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @insert_aux(ptr noundef %0) unnamed_addr #12 !prof !1145 !PGOFuncName !1146 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %694, label %3, !prof !1147

3:                                                ; preds = %1
  %4 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %0) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %694, label %6, !prof !1148

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !450
  %9 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !708
  %11 = icmp eq ptr %10, null
  br i1 %11, label %100, label %12, !prof !1149

12:                                               ; preds = %6
  %13 = load ptr, ptr %10, align 8, !tbaa !351
  %14 = load ptr, ptr %13, align 8, !tbaa !375
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @bitmap_zero_bits, ptr %14, !prof !1150
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !377
  %19 = shl i32 %18, 7
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !379
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = or disjoint i32 %19, %23
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  br label %26

26:                                               ; preds = %87, %12
  %27 = phi i64 [ %21, %12 ], [ %98, %87 ]
  %28 = phi i32 [ 0, %12 ], [ %83, %87 ]
  %29 = phi i32 [ %24, %12 ], [ %99, %87 ]
  %30 = phi ptr [ %16, %12 ], [ %85, %87 ]
  %31 = icmp eq i64 %27, 0
  br i1 %31, label %46, label %32, !prof !1151

32:                                               ; preds = %60, %26
  %33 = phi i64 [ %27, %26 ], [ %65, %60 ]
  %34 = phi i32 [ %28, %26 ], [ %61, %60 ]
  %35 = phi i32 [ %29, %26 ], [ %62, %60 ]
  %36 = phi ptr [ %30, %26 ], [ %53, %60 ]
  %37 = and i64 %33, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %81, !prof !1152

39:                                               ; preds = %32, %39
  %40 = phi i32 [ %43, %39 ], [ %35, %32 ]
  %41 = phi i64 [ %42, %39 ], [ %33, %32 ]
  %42 = lshr exact i64 %41, 1
  %43 = add i32 %40, 1
  %44 = and i64 %41, 2
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %39, label %81, !prof !1153, !llvm.loop !380

46:                                               ; preds = %26
  %47 = add i32 %29, 63
  %48 = and i32 %47, -64
  %49 = add i32 %28, 1
  br label %50

50:                                               ; preds = %77, %46
  %51 = phi i64 [ %27, %46 ], [ %72, %77 ]
  %52 = phi i32 [ %48, %46 ], [ %80, %77 ]
  %53 = phi ptr [ %30, %46 ], [ %75, %77 ]
  %54 = phi i32 [ %49, %46 ], [ 0, %77 ]
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %71, label %56, !prof !1154

56:                                               ; preds = %50
  %57 = add i32 %52, 128
  %58 = shl i32 %54, 6
  %59 = sub i32 %57, %58
  br label %60

60:                                               ; preds = %56, %67
  %61 = phi i32 [ %69, %67 ], [ %54, %56 ]
  %62 = phi i32 [ %68, %67 ], [ %52, %56 ]
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds %struct.bitmap_element_def, ptr %53, i64 0, i32 3, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !379
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %32, !prof !1155

67:                                               ; preds = %60
  %68 = add i32 %62, 64
  %69 = add i32 %61, 1
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %60, !prof !1156, !llvm.loop !381

71:                                               ; preds = %67, %50
  %72 = phi i64 [ %51, %50 ], [ %65, %67 ]
  %73 = phi i32 [ %52, %50 ], [ %59, %67 ]
  %74 = phi i32 [ %54, %50 ], [ 2, %67 ]
  %75 = load ptr, ptr %53, align 8, !tbaa !382
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77, !prof !1157

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.bitmap_element_def, ptr %75, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !377
  %80 = shl i32 %79, 7
  br label %50, !llvm.loop !383

81:                                               ; preds = %71, %39, %32
  %82 = phi i64 [ %33, %32 ], [ %42, %39 ], [ %72, %71 ]
  %83 = phi i32 [ %34, %32 ], [ %34, %39 ], [ %74, %71 ]
  %84 = phi i32 [ %35, %32 ], [ %43, %39 ], [ %73, %71 ]
  %85 = phi ptr [ %36, %32 ], [ %36, %39 ], [ %75, %71 ]
  %86 = phi i1 [ false, %32 ], [ false, %39 ], [ true, %71 ]
  br i1 %86, label %100, label %87, !prof !1158

87:                                               ; preds = %81
  %88 = load ptr, ptr @expressions, align 8
  %89 = zext i32 %84 to i64
  %90 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %88, i64 0, i32 2, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !311
  %92 = load ptr, ptr %25, align 8, !tbaa !450
  %93 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %92, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !708
  tail call fastcc void @bitmap_value_replace_in_set(ptr noundef %94, ptr noundef %91)
  %95 = load ptr, ptr %25, align 8, !tbaa !450
  %96 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !457
  tail call fastcc void @bitmap_value_replace_in_set(ptr noundef %97, ptr noundef %91)
  %98 = lshr i64 %82, 1
  %99 = add i32 %84, 1
  br label %26, !llvm.loop !1159

100:                                              ; preds = %81, %6
  %101 = load ptr, ptr %0, align 8, !tbaa !438
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103, !prof !1149

103:                                              ; preds = %100
  %104 = load i32, ptr %101, align 8, !tbaa !440
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %694, label %106, !prof !1160

106:                                              ; preds = %100, %103
  %107 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !450
  %109 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %108, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !582
  %111 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %110)
  %112 = icmp eq ptr %111, null
  br label %113

113:                                              ; preds = %487, %106
  %114 = phi i64 [ %489, %487 ], [ 0, %106 ]
  %115 = phi i8 [ %488, %487 ], [ 0, %106 ]
  br i1 %112, label %123, label %116, !prof !1161

116:                                              ; preds = %113
  %117 = load i32, ptr %111, align 8, !tbaa !395
  %118 = zext i32 %117 to i64
  %119 = icmp ult i64 %114, %118
  br i1 %119, label %120, label %123, !prof !1162

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %111, i64 0, i32 2, i64 %114
  %122 = load ptr, ptr %121, align 8, !tbaa !311
  br label %123

123:                                              ; preds = %120, %116, %113
  %124 = phi ptr [ %122, %120 ], [ null, %116 ], [ null, %113 ]
  %125 = phi i1 [ false, %120 ], [ true, %116 ], [ true, %113 ]
  br i1 %125, label %490, label %126, !prof !1163

126:                                              ; preds = %123
  %127 = load i32, ptr %124, align 8, !tbaa !331
  switch i32 %127, label %144 [
    i32 0, label %487
    i32 3, label %128
    i32 2, label %140
    i32 1, label %136
  ], !prof !1164

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.pre_expr_d, ptr %124, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !322
  %131 = tail call i32 @get_constant_value_id(ptr noundef %130) #19
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %145, !prof !334

133:                                              ; preds = %128
  %134 = load ptr, ptr %129, align 8, !tbaa !322
  %135 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %134) #19
  tail call void @add_to_value(i32 noundef %135, ptr noundef nonnull %124)
  br label %145

136:                                              ; preds = %126
  %137 = getelementptr inbounds %struct.pre_expr_d, ptr %124, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !322
  %139 = load i32, ptr %138, align 8, !tbaa !337
  br label %145

140:                                              ; preds = %126
  %141 = getelementptr inbounds %struct.pre_expr_d, ptr %124, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !322
  %143 = load i32, ptr %142, align 8, !tbaa !339
  br label %145

144:                                              ; preds = %126
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %145

145:                                              ; preds = %128, %133, %136, %140, %144
  %146 = phi i32 [ 0, %144 ], [ %143, %140 ], [ %139, %136 ], [ %135, %133 ], [ %131, %128 ]
  %147 = load ptr, ptr %107, align 8, !tbaa !450
  %148 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %147, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !455
  %150 = tail call zeroext i8 @value_id_constant_p(i32 noundef %146) #19
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %163, !prof !742

152:                                              ; preds = %145
  %153 = icmp eq ptr %149, null
  br i1 %153, label %163, label %154, !prof !743

154:                                              ; preds = %152
  %155 = load ptr, ptr %149, align 8, !tbaa !351
  %156 = load ptr, ptr %155, align 8, !tbaa !375
  %157 = icmp eq ptr %156, null
  br i1 %157, label %163, label %158, !prof !691

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.bitmap_set, ptr %149, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !353
  %161 = tail call i32 @bitmap_bit_p(ptr noundef %160, i32 noundef %146) #19
  %162 = trunc i32 %161 to i8
  br label %163

163:                                              ; preds = %145, %152, %154, %158
  %164 = phi i8 [ %162, %158 ], [ 1, %145 ], [ 0, %154 ], [ 0, %152 ]
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %487, !prof !1165

166:                                              ; preds = %163
  %167 = load ptr, ptr %7, align 8, !tbaa !450
  %168 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %167, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !457
  %170 = tail call zeroext i8 @value_id_constant_p(i32 noundef %146) #19
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %183, !prof !742

172:                                              ; preds = %166
  %173 = icmp eq ptr %169, null
  br i1 %173, label %183, label %174, !prof !743

174:                                              ; preds = %172
  %175 = load ptr, ptr %169, align 8, !tbaa !351
  %176 = load ptr, ptr %175, align 8, !tbaa !375
  %177 = icmp eq ptr %176, null
  br i1 %177, label %183, label %178, !prof !691

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.bitmap_set, ptr %169, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !353
  %181 = tail call i32 @bitmap_bit_p(ptr noundef %180, i32 noundef %146) #19
  %182 = trunc i32 %181 to i8
  br label %183

183:                                              ; preds = %166, %172, %174, %178
  %184 = phi i8 [ %182, %178 ], [ 1, %166 ], [ 0, %174 ], [ 0, %172 ]
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %195, label %186, !prof !1166

186:                                              ; preds = %183
  %187 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %188 = icmp eq ptr %187, null
  br i1 %188, label %487, label %189

189:                                              ; preds = %186
  %190 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %191 = and i32 %190, 8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %487, label %193

193:                                              ; preds = %189
  %194 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 28, i64 1, ptr nonnull %187)
  br label %487

195:                                              ; preds = %183
  %196 = load ptr, ptr @cfun, align 8, !tbaa !311
  %197 = getelementptr inbounds %struct.function, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !419
  %199 = getelementptr inbounds %struct.control_flow_graph, ptr %198, i64 0, i32 5
  %200 = load i32, ptr %199, align 8, !tbaa !422
  %201 = sext i32 %200 to i64
  %202 = tail call ptr @xcalloc(i64 noundef %201, i64 noundef 8) #19
  br label %203

203:                                              ; preds = %343, %195
  %204 = phi i32 [ 0, %195 ], [ %344, %343 ]
  %205 = phi i8 [ 0, %195 ], [ %327, %343 ]
  %206 = phi ptr [ null, %195 ], [ %328, %343 ]
  %207 = phi ptr [ null, %195 ], [ %329, %343 ]
  %208 = phi ptr [ null, %195 ], [ %330, %343 ]
  %209 = phi i8 [ 1, %195 ], [ %331, %343 ]
  %210 = phi i8 [ 0, %195 ], [ %332, %343 ]
  %211 = phi i8 [ 0, %195 ], [ %333, %343 ]
  %212 = load ptr, ptr %0, align 8, !tbaa !311
  %213 = icmp eq ptr %212, null
  br i1 %213, label %216, label %214, !prof !1167

214:                                              ; preds = %203
  %215 = load i32, ptr %212, align 8, !tbaa !440
  br label %216

216:                                              ; preds = %214, %203
  %217 = phi i32 [ %215, %214 ], [ 0, %203 ]
  %218 = icmp eq i32 %217, %204
  br i1 %218, label %223, label %219, !prof !1168

219:                                              ; preds = %216
  %220 = zext i32 %204 to i64
  %221 = getelementptr inbounds %struct.VEC_edge_base, ptr %212, i64 0, i32 2, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !311
  br label %223

223:                                              ; preds = %219, %216
  %224 = phi ptr [ %222, %219 ], [ null, %216 ]
  br i1 %218, label %345, label %225, !prof !1168

225:                                              ; preds = %223
  %226 = getelementptr inbounds %struct.edge_def, ptr %224, i64 0, i32 7
  %227 = load i32, ptr %226, align 8, !tbaa !578
  %228 = and i32 %227, 16
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %231, label %230, !prof !1169

230:                                              ; preds = %225
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3520, ptr noundef nonnull @.str.1) #19
  br label %231

231:                                              ; preds = %230, %225
  %232 = load ptr, ptr %224, align 8, !tbaa !427
  %233 = load ptr, ptr %107, align 8, !tbaa !450
  %234 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %233, i64 0, i32 4
  %235 = load ptr, ptr %234, align 8, !tbaa !582
  %236 = tail call fastcc ptr @phi_translate(ptr noundef nonnull %124, ptr noundef %235, ptr noundef null, ptr noundef %232, ptr noundef nonnull %0)
  %237 = icmp eq ptr %236, null
  br i1 %237, label %326, label %238, !prof !1170

238:                                              ; preds = %231
  %239 = tail call fastcc ptr @fully_constant_expression(ptr noundef nonnull %236)
  %240 = load i32, ptr %239, align 8, !tbaa !331
  switch i32 %240, label %263 [
    i32 3, label %241
    i32 0, label %249
    i32 1, label %255
    i32 2, label %259
  ], !prof !333

241:                                              ; preds = %238
  %242 = getelementptr inbounds %struct.pre_expr_d, ptr %239, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !322
  %244 = tail call i32 @get_constant_value_id(ptr noundef %243) #19
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %264, !prof !334

246:                                              ; preds = %241
  %247 = load ptr, ptr %242, align 8, !tbaa !322
  %248 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %247) #19
  tail call void @add_to_value(i32 noundef %248, ptr noundef nonnull %239)
  br label %264

249:                                              ; preds = %238
  %250 = getelementptr inbounds %struct.pre_expr_d, ptr %239, i64 0, i32 2
  %251 = load ptr, ptr %250, align 8, !tbaa !322
  %252 = tail call ptr @VN_INFO(ptr noundef %251) #19
  %253 = getelementptr inbounds %struct.vn_ssa_aux, ptr %252, i64 0, i32 2
  %254 = load i32, ptr %253, align 8, !tbaa !335
  br label %264

255:                                              ; preds = %238
  %256 = getelementptr inbounds %struct.pre_expr_d, ptr %239, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !322
  %258 = load i32, ptr %257, align 8, !tbaa !337
  br label %264

259:                                              ; preds = %238
  %260 = getelementptr inbounds %struct.pre_expr_d, ptr %239, i64 0, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !322
  %262 = load i32, ptr %261, align 8, !tbaa !339
  br label %264

263:                                              ; preds = %238
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %264

264:                                              ; preds = %241, %246, %249, %255, %259, %263
  %265 = phi i32 [ 0, %263 ], [ %262, %259 ], [ %258, %255 ], [ %254, %249 ], [ %248, %246 ], [ %244, %241 ]
  %266 = getelementptr inbounds %struct.basic_block_def, ptr %232, i64 0, i32 2
  %267 = load ptr, ptr %266, align 8, !tbaa !450
  %268 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %267, i64 0, i32 3
  %269 = load ptr, ptr %268, align 8, !tbaa !457
  %270 = tail call fastcc ptr @bitmap_find_leader(ptr noundef %269, i32 noundef %265, ptr noundef null)
  %271 = icmp eq ptr %270, null
  %272 = getelementptr inbounds %struct.basic_block_def, ptr %232, i64 0, i32 9
  %273 = load i32, ptr %272, align 8, !tbaa !432
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds ptr, ptr %202, i64 %274
  br i1 %271, label %276, label %277, !prof !1171

276:                                              ; preds = %264
  store ptr %239, ptr %275, align 8, !tbaa !311
  br label %326

277:                                              ; preds = %264
  store ptr %270, ptr %275, align 8, !tbaa !311
  %278 = tail call zeroext i8 @optimize_edge_for_speed_p(ptr noundef nonnull %224) #19
  %279 = icmp eq i8 %278, 0
  %280 = select i1 %279, i8 %205, i8 1, !prof !1172
  %281 = icmp eq ptr %208, null
  br i1 %281, label %326, label %282, !prof !1173

282:                                              ; preds = %277
  %283 = load i32, ptr %208, align 8, !tbaa !331
  %284 = load i32, ptr %270, align 8, !tbaa !331
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %322, !prof !857

286:                                              ; preds = %282
  switch i32 %283, label %321 [
    i32 3, label %287
    i32 0, label %302
    i32 1, label %309
    i32 2, label %315
  ], !prof !858

287:                                              ; preds = %286
  %288 = getelementptr inbounds %struct.pre_expr_d, ptr %208, i64 0, i32 2
  %289 = load ptr, ptr %288, align 8, !tbaa !322
  %290 = getelementptr inbounds %struct.pre_expr_d, ptr %270, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !322
  %292 = tail call zeroext i8 @expressions_equal_p(ptr noundef %289, ptr noundef %291) #19
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %322, label %294, !prof !859

294:                                              ; preds = %287
  %295 = getelementptr inbounds %struct.tree_common, ptr %289, i64 0, i32 2
  %296 = load ptr, ptr %295, align 8, !tbaa !322
  %297 = getelementptr inbounds %struct.tree_common, ptr %291, i64 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !322
  %299 = tail call zeroext i8 @types_compatible_p(ptr noundef %296, ptr noundef %298) #19
  %300 = icmp ne i8 %299, 0
  %301 = zext i1 %300 to i32
  br label %322

302:                                              ; preds = %286
  %303 = getelementptr inbounds %struct.pre_expr_d, ptr %208, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !322
  %305 = getelementptr inbounds %struct.pre_expr_d, ptr %270, i64 0, i32 2
  %306 = load ptr, ptr %305, align 8, !tbaa !322
  %307 = icmp eq ptr %304, %306
  %308 = zext i1 %307 to i32
  br label %322

309:                                              ; preds = %286
  %310 = getelementptr inbounds %struct.pre_expr_d, ptr %208, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !322
  %312 = getelementptr inbounds %struct.pre_expr_d, ptr %270, i64 0, i32 2
  %313 = load ptr, ptr %312, align 8, !tbaa !322
  %314 = tail call i32 @vn_nary_op_eq(ptr noundef %311, ptr noundef %313) #19
  br label %322

315:                                              ; preds = %286
  %316 = getelementptr inbounds %struct.pre_expr_d, ptr %208, i64 0, i32 2
  %317 = load ptr, ptr %316, align 8, !tbaa !322
  %318 = getelementptr inbounds %struct.pre_expr_d, ptr %270, i64 0, i32 2
  %319 = load ptr, ptr %318, align 8, !tbaa !322
  %320 = tail call i32 @vn_reference_eq(ptr noundef %317, ptr noundef %319) #19
  br label %322

321:                                              ; preds = %286
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #19
  br label %322

322:                                              ; preds = %282, %287, %294, %302, %309, %315, %321
  %323 = phi i32 [ 0, %321 ], [ %320, %315 ], [ %314, %309 ], [ %308, %302 ], [ 0, %282 ], [ 0, %287 ], [ %301, %294 ]
  %324 = icmp eq i32 %323, 0
  %325 = select i1 %324, i8 0, i8 %209, !prof !1174
  br label %326

326:                                              ; preds = %322, %277, %276, %231
  %327 = phi i8 [ %205, %231 ], [ %205, %276 ], [ %280, %277 ], [ %280, %322 ]
  %328 = phi ptr [ %206, %231 ], [ %270, %276 ], [ %270, %277 ], [ %270, %322 ]
  %329 = phi ptr [ null, %231 ], [ %239, %276 ], [ %239, %277 ], [ %239, %322 ]
  %330 = phi ptr [ %208, %231 ], [ %208, %276 ], [ %270, %277 ], [ %208, %322 ]
  %331 = phi i8 [ %209, %231 ], [ 0, %276 ], [ %209, %277 ], [ %325, %322 ]
  %332 = phi i8 [ 1, %231 ], [ %210, %276 ], [ %210, %277 ], [ %210, %322 ]
  %333 = phi i8 [ %211, %231 ], [ %211, %276 ], [ 1, %277 ], [ 1, %322 ]
  br i1 %237, label %345, label %334, !prof !1170

334:                                              ; preds = %326
  %335 = load ptr, ptr %0, align 8, !tbaa !311
  %336 = icmp eq ptr %335, null
  br i1 %336, label %339, label %337, !prof !1170

337:                                              ; preds = %334
  %338 = load i32, ptr %335, align 8, !tbaa !440
  br label %339

339:                                              ; preds = %337, %334
  %340 = phi i32 [ %338, %337 ], [ 0, %334 ]
  %341 = icmp ult i32 %204, %340
  br i1 %341, label %343, label %342, !prof !1169

342:                                              ; preds = %339
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %343

343:                                              ; preds = %342, %339
  %344 = add i32 %204, 1
  br label %203, !llvm.loop !1175

345:                                              ; preds = %326, %223
  %346 = phi i8 [ %327, %326 ], [ %205, %223 ]
  %347 = phi ptr [ %328, %326 ], [ %206, %223 ]
  %348 = phi ptr [ %329, %326 ], [ %207, %223 ]
  %349 = phi i8 [ %331, %326 ], [ %209, %223 ]
  %350 = phi i8 [ %332, %326 ], [ %210, %223 ]
  %351 = phi i8 [ %333, %326 ], [ %211, %223 ]
  %352 = icmp eq i8 %350, 0
  %353 = icmp eq i8 %349, 0
  %354 = select i1 %352, i1 %353, i1 false, !prof !1166
  %355 = icmp ne i8 %351, 0
  %356 = select i1 %354, i1 %355, i1 false, !prof !1166
  %357 = icmp ne i8 %346, 0
  %358 = select i1 %356, i1 %357, i1 false, !prof !1176
  br i1 %358, label %359, label %368, !prof !1177

359:                                              ; preds = %345
  %360 = tail call zeroext i8 @dbg_cnt(i32 noundef 25) #19
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %368, label %362, !prof !1178

362:                                              ; preds = %359
  %363 = getelementptr inbounds %struct.pre_expr_d, ptr %124, i64 0, i32 1
  %364 = load i32, ptr %363, align 4, !tbaa !361
  %365 = tail call fastcc zeroext i8 @insert_into_preds_of_block(ptr noundef nonnull %0, i32 noundef %364, ptr noundef %202), !range !711
  %366 = icmp eq i8 %365, 0
  %367 = select i1 %366, i8 %115, i8 1, !prof !1178
  br label %485

368:                                              ; preds = %359, %345
  %369 = icmp ne i8 %349, 0
  %370 = select i1 %352, i1 %369, i1 false, !prof !1179
  %371 = icmp ne ptr %348, null
  %372 = and i1 %371, %370
  br i1 %372, label %373, label %485, !prof !1180

373:                                              ; preds = %368
  %374 = load i32, ptr %347, align 8, !tbaa !331
  switch i32 %374, label %485 [
    i32 3, label %375
    i32 0, label %375
  ]

375:                                              ; preds = %373, %373
  %376 = tail call zeroext i8 @value_id_constant_p(i32 noundef %146) #19
  %377 = icmp eq i8 %376, 0
  br i1 %377, label %378, label %485

378:                                              ; preds = %375
  %379 = load ptr, ptr @value_expressions, align 8
  %380 = zext i32 %146 to i64
  %381 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %379, i64 0, i32 2, i64 %380
  %382 = load ptr, ptr %381, align 8, !tbaa !311
  %383 = tail call fastcc i32 @get_expr_value_id(ptr noundef nonnull %347)
  %384 = load ptr, ptr %382, align 8, !tbaa !351
  %385 = load ptr, ptr %384, align 8, !tbaa !375
  %386 = icmp eq ptr %385, null
  %387 = select i1 %386, ptr @bitmap_zero_bits, ptr %385
  %388 = getelementptr inbounds %struct.bitmap_element_def, ptr %387, i64 0, i32 2
  %389 = load i32, ptr %388, align 8, !tbaa !377
  %390 = shl i32 %389, 7
  %391 = getelementptr inbounds %struct.bitmap_element_def, ptr %387, i64 0, i32 3
  %392 = load i64, ptr %391, align 8, !tbaa !379
  %393 = icmp eq i64 %392, 0
  %394 = zext i1 %393 to i32
  %395 = or disjoint i32 %390, %394
  %396 = getelementptr inbounds %struct.pre_expr_d, ptr %347, i64 0, i32 2
  %397 = getelementptr inbounds %struct.pre_expr_d, ptr %347, i64 0, i32 2
  br label %398

398:                                              ; preds = %482, %378
  %399 = phi i32 [ %395, %378 ], [ %484, %482 ]
  %400 = phi i64 [ %392, %378 ], [ %483, %482 ]
  %401 = phi i32 [ 0, %378 ], [ %456, %482 ]
  %402 = phi ptr [ %387, %378 ], [ %457, %482 ]
  %403 = icmp eq i64 %400, 0
  br i1 %403, label %418, label %404

404:                                              ; preds = %432, %398
  %405 = phi i32 [ %399, %398 ], [ %434, %432 ]
  %406 = phi i64 [ %400, %398 ], [ %437, %432 ]
  %407 = phi i32 [ %401, %398 ], [ %433, %432 ]
  %408 = phi ptr [ %402, %398 ], [ %425, %432 ]
  %409 = and i64 %406, 1
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %411, label %453

411:                                              ; preds = %404, %411
  %412 = phi i64 [ %414, %411 ], [ %406, %404 ]
  %413 = phi i32 [ %415, %411 ], [ %405, %404 ]
  %414 = lshr exact i64 %412, 1
  %415 = add i32 %413, 1
  %416 = and i64 %412, 2
  %417 = icmp eq i64 %416, 0
  br i1 %417, label %411, label %453, !llvm.loop !380

418:                                              ; preds = %398
  %419 = add i32 %399, 63
  %420 = and i32 %419, -64
  %421 = add i32 %401, 1
  br label %422

422:                                              ; preds = %449, %418
  %423 = phi i32 [ %420, %418 ], [ %452, %449 ]
  %424 = phi i64 [ %400, %418 ], [ %445, %449 ]
  %425 = phi ptr [ %402, %418 ], [ %447, %449 ]
  %426 = phi i32 [ %421, %418 ], [ 0, %449 ]
  %427 = icmp eq i32 %426, 2
  br i1 %427, label %443, label %428

428:                                              ; preds = %422
  %429 = add i32 %423, 128
  %430 = shl i32 %426, 6
  %431 = sub i32 %429, %430
  br label %432

432:                                              ; preds = %428, %439
  %433 = phi i32 [ %441, %439 ], [ %426, %428 ]
  %434 = phi i32 [ %440, %439 ], [ %423, %428 ]
  %435 = zext i32 %433 to i64
  %436 = getelementptr inbounds %struct.bitmap_element_def, ptr %425, i64 0, i32 3, i64 %435
  %437 = load i64, ptr %436, align 8, !tbaa !379
  %438 = icmp eq i64 %437, 0
  br i1 %438, label %439, label %404

439:                                              ; preds = %432
  %440 = add i32 %434, 64
  %441 = add i32 %433, 1
  %442 = icmp eq i32 %441, 2
  br i1 %442, label %443, label %432, !llvm.loop !381

443:                                              ; preds = %439, %422
  %444 = phi i32 [ %423, %422 ], [ %431, %439 ]
  %445 = phi i64 [ %424, %422 ], [ %437, %439 ]
  %446 = phi i32 [ %426, %422 ], [ 2, %439 ]
  %447 = load ptr, ptr %425, align 8, !tbaa !382
  %448 = icmp eq ptr %447, null
  br i1 %448, label %453, label %449

449:                                              ; preds = %443
  %450 = getelementptr inbounds %struct.bitmap_element_def, ptr %447, i64 0, i32 2
  %451 = load i32, ptr %450, align 8, !tbaa !377
  %452 = shl i32 %451, 7
  br label %422, !llvm.loop !383

453:                                              ; preds = %443, %411, %404
  %454 = phi i32 [ %405, %404 ], [ %415, %411 ], [ %444, %443 ]
  %455 = phi i64 [ %406, %404 ], [ %414, %411 ], [ %445, %443 ]
  %456 = phi i32 [ %407, %404 ], [ %407, %411 ], [ %446, %443 ]
  %457 = phi ptr [ %408, %404 ], [ %408, %411 ], [ %447, %443 ]
  %458 = phi i1 [ false, %404 ], [ false, %411 ], [ true, %443 ]
  br i1 %458, label %485, label %459

459:                                              ; preds = %453
  %460 = load ptr, ptr @expressions, align 8
  %461 = zext i32 %454 to i64
  %462 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %460, i64 0, i32 2, i64 %461
  %463 = load ptr, ptr %462, align 8, !tbaa !311
  %464 = load i32, ptr %463, align 8, !tbaa !331
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %482

466:                                              ; preds = %459
  %467 = getelementptr inbounds %struct.pre_expr_d, ptr %463, i64 0, i32 2
  %468 = load ptr, ptr %467, align 8, !tbaa !322
  %469 = tail call ptr @VN_INFO(ptr noundef %468) #19
  %470 = load i32, ptr %347, align 8, !tbaa !331
  %471 = icmp eq i32 %470, 3
  br i1 %471, label %472, label %476

472:                                              ; preds = %466
  %473 = load ptr, ptr %397, align 8, !tbaa !322
  store ptr %473, ptr %469, align 8, !tbaa !769
  %474 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 4), align 4, !tbaa !815
  %475 = add nsw i32 %474, 1
  store i32 %475, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 4), align 4, !tbaa !815
  br label %480

476:                                              ; preds = %466
  %477 = load ptr, ptr %396, align 8, !tbaa !322
  %478 = tail call ptr @VN_INFO(ptr noundef %477) #19
  %479 = load ptr, ptr %478, align 8, !tbaa !769
  store ptr %479, ptr %469, align 8, !tbaa !769
  br label %480

480:                                              ; preds = %476, %472
  %481 = getelementptr inbounds %struct.vn_ssa_aux, ptr %469, i64 0, i32 2
  store i32 %383, ptr %481, align 8, !tbaa !335
  br label %482

482:                                              ; preds = %480, %459
  %483 = lshr i64 %455, 1
  %484 = add i32 %454, 1
  br label %398, !llvm.loop !1181

485:                                              ; preds = %453, %373, %375, %368, %362
  %486 = phi i8 [ %115, %375 ], [ %115, %368 ], [ %367, %362 ], [ %115, %373 ], [ %115, %453 ]
  tail call void @free(ptr noundef %202)
  br label %487

487:                                              ; preds = %126, %485, %193, %189, %186, %163
  %488 = phi i8 [ %115, %126 ], [ %486, %485 ], [ %115, %163 ], [ %115, %193 ], [ %115, %189 ], [ %115, %186 ]
  %489 = add nuw i64 %114, 1
  br label %113, !llvm.loop !1182

490:                                              ; preds = %123
  br i1 %112, label %492, label %491, !prof !1183

491:                                              ; preds = %490
  tail call void @free(ptr noundef %111)
  br label %492

492:                                              ; preds = %490, %491
  %493 = load i8, ptr @do_partial_partial, align 1, !tbaa !322
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %694, label %495, !prof !1184

495:                                              ; preds = %492
  %496 = load ptr, ptr %107, align 8, !tbaa !450
  %497 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %496, i64 0, i32 5
  %498 = load ptr, ptr %497, align 8, !tbaa !583
  %499 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %498)
  %500 = icmp eq ptr %499, null
  br label %501

501:                                              ; preds = %687, %495
  %502 = phi i64 [ %689, %687 ], [ 0, %495 ]
  %503 = phi i8 [ %688, %687 ], [ 0, %495 ]
  br i1 %500, label %511, label %504, !prof !1185

504:                                              ; preds = %501
  %505 = load i32, ptr %499, align 8, !tbaa !395
  %506 = zext i32 %505 to i64
  %507 = icmp ult i64 %502, %506
  br i1 %507, label %508, label %511, !prof !1186

508:                                              ; preds = %504
  %509 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %499, i64 0, i32 2, i64 %502
  %510 = load ptr, ptr %509, align 8, !tbaa !311
  br label %511

511:                                              ; preds = %508, %504, %501
  %512 = phi ptr [ %510, %508 ], [ null, %504 ], [ null, %501 ]
  %513 = phi i1 [ false, %508 ], [ true, %504 ], [ true, %501 ]
  br i1 %513, label %690, label %514, !prof !1187

514:                                              ; preds = %511
  %515 = load i32, ptr %512, align 8, !tbaa !331
  switch i32 %515, label %532 [
    i32 0, label %687
    i32 3, label %516
    i32 2, label %528
    i32 1, label %524
  ], !prof !1188

516:                                              ; preds = %514
  %517 = getelementptr inbounds %struct.pre_expr_d, ptr %512, i64 0, i32 2
  %518 = load ptr, ptr %517, align 8, !tbaa !322
  %519 = tail call i32 @get_constant_value_id(ptr noundef %518) #19
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %533, !prof !334

521:                                              ; preds = %516
  %522 = load ptr, ptr %517, align 8, !tbaa !322
  %523 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %522) #19
  tail call void @add_to_value(i32 noundef %523, ptr noundef nonnull %512)
  br label %533

524:                                              ; preds = %514
  %525 = getelementptr inbounds %struct.pre_expr_d, ptr %512, i64 0, i32 2
  %526 = load ptr, ptr %525, align 8, !tbaa !322
  %527 = load i32, ptr %526, align 8, !tbaa !337
  br label %533

528:                                              ; preds = %514
  %529 = getelementptr inbounds %struct.pre_expr_d, ptr %512, i64 0, i32 2
  %530 = load ptr, ptr %529, align 8, !tbaa !322
  %531 = load i32, ptr %530, align 8, !tbaa !339
  br label %533

532:                                              ; preds = %514
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %533

533:                                              ; preds = %516, %521, %524, %528, %532
  %534 = phi i32 [ 0, %532 ], [ %531, %528 ], [ %527, %524 ], [ %523, %521 ], [ %519, %516 ]
  %535 = load ptr, ptr %107, align 8, !tbaa !450
  %536 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %535, i64 0, i32 1
  %537 = load ptr, ptr %536, align 8, !tbaa !455
  %538 = tail call zeroext i8 @value_id_constant_p(i32 noundef %534) #19
  %539 = icmp eq i8 %538, 0
  br i1 %539, label %540, label %551, !prof !742

540:                                              ; preds = %533
  %541 = icmp eq ptr %537, null
  br i1 %541, label %551, label %542, !prof !743

542:                                              ; preds = %540
  %543 = load ptr, ptr %537, align 8, !tbaa !351
  %544 = load ptr, ptr %543, align 8, !tbaa !375
  %545 = icmp eq ptr %544, null
  br i1 %545, label %551, label %546, !prof !691

546:                                              ; preds = %542
  %547 = getelementptr inbounds %struct.bitmap_set, ptr %537, i64 0, i32 1
  %548 = load ptr, ptr %547, align 8, !tbaa !353
  %549 = tail call i32 @bitmap_bit_p(ptr noundef %548, i32 noundef %534) #19
  %550 = trunc i32 %549 to i8
  br label %551

551:                                              ; preds = %533, %540, %542, %546
  %552 = phi i8 [ %550, %546 ], [ 1, %533 ], [ 0, %542 ], [ 0, %540 ]
  %553 = icmp eq i8 %552, 0
  br i1 %553, label %554, label %687, !prof !1189

554:                                              ; preds = %551
  %555 = load ptr, ptr %7, align 8, !tbaa !450
  %556 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %555, i64 0, i32 3
  %557 = load ptr, ptr %556, align 8, !tbaa !457
  %558 = tail call zeroext i8 @value_id_constant_p(i32 noundef %534) #19
  %559 = icmp eq i8 %558, 0
  br i1 %559, label %560, label %571, !prof !742

560:                                              ; preds = %554
  %561 = icmp eq ptr %557, null
  br i1 %561, label %571, label %562, !prof !743

562:                                              ; preds = %560
  %563 = load ptr, ptr %557, align 8, !tbaa !351
  %564 = load ptr, ptr %563, align 8, !tbaa !375
  %565 = icmp eq ptr %564, null
  br i1 %565, label %571, label %566, !prof !691

566:                                              ; preds = %562
  %567 = getelementptr inbounds %struct.bitmap_set, ptr %557, i64 0, i32 1
  %568 = load ptr, ptr %567, align 8, !tbaa !353
  %569 = tail call i32 @bitmap_bit_p(ptr noundef %568, i32 noundef %534) #19
  %570 = trunc i32 %569 to i8
  br label %571

571:                                              ; preds = %554, %560, %562, %566
  %572 = phi i8 [ %570, %566 ], [ 1, %554 ], [ 0, %562 ], [ 0, %560 ]
  %573 = icmp eq i8 %572, 0
  br i1 %573, label %574, label %687, !prof !1190

574:                                              ; preds = %571
  %575 = load ptr, ptr @cfun, align 8, !tbaa !311
  %576 = getelementptr inbounds %struct.function, ptr %575, i64 0, i32 1
  %577 = load ptr, ptr %576, align 8, !tbaa !419
  %578 = getelementptr inbounds %struct.control_flow_graph, ptr %577, i64 0, i32 5
  %579 = load i32, ptr %578, align 8, !tbaa !422
  %580 = sext i32 %579 to i64
  %581 = tail call ptr @xcalloc(i64 noundef %580, i64 noundef 8) #19
  br label %582

582:                                              ; preds = %666, %574
  %583 = phi i32 [ 0, %574 ], [ %667, %666 ]
  %584 = phi i8 [ 0, %574 ], [ %655, %666 ]
  %585 = phi i8 [ 1, %574 ], [ %656, %666 ]
  %586 = load ptr, ptr %0, align 8, !tbaa !311
  %587 = icmp eq ptr %586, null
  br i1 %587, label %590, label %588, !prof !1191

588:                                              ; preds = %582
  %589 = load i32, ptr %586, align 8, !tbaa !440
  br label %590

590:                                              ; preds = %588, %582
  %591 = phi i32 [ %589, %588 ], [ 0, %582 ]
  %592 = icmp eq i32 %591, %583
  br i1 %592, label %597, label %593, !prof !1192

593:                                              ; preds = %590
  %594 = zext i32 %583 to i64
  %595 = getelementptr inbounds %struct.VEC_edge_base, ptr %586, i64 0, i32 2, i64 %594
  %596 = load ptr, ptr %595, align 8, !tbaa !311
  br label %597

597:                                              ; preds = %593, %590
  %598 = phi ptr [ %596, %593 ], [ null, %590 ]
  br i1 %592, label %668, label %599, !prof !1192

599:                                              ; preds = %597
  %600 = getelementptr inbounds %struct.edge_def, ptr %598, i64 0, i32 7
  %601 = load i32, ptr %600, align 8, !tbaa !578
  %602 = and i32 %601, 16
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %605, label %604, !prof !1193

604:                                              ; preds = %599
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3659, ptr noundef nonnull @.str.1) #19
  br label %605

605:                                              ; preds = %604, %599
  %606 = load ptr, ptr %598, align 8, !tbaa !427
  %607 = load ptr, ptr %107, align 8, !tbaa !450
  %608 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %607, i64 0, i32 4
  %609 = load ptr, ptr %608, align 8, !tbaa !582
  %610 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %607, i64 0, i32 5
  %611 = load ptr, ptr %610, align 8, !tbaa !583
  %612 = tail call fastcc ptr @phi_translate(ptr noundef nonnull %512, ptr noundef %609, ptr noundef %611, ptr noundef %606, ptr noundef nonnull %0)
  %613 = icmp eq ptr %612, null
  br i1 %613, label %653, label %614, !prof !1194

614:                                              ; preds = %605
  %615 = tail call fastcc ptr @fully_constant_expression(ptr noundef nonnull %612)
  %616 = load i32, ptr %615, align 8, !tbaa !331
  switch i32 %616, label %639 [
    i32 3, label %617
    i32 0, label %625
    i32 1, label %631
    i32 2, label %635
  ], !prof !333

617:                                              ; preds = %614
  %618 = getelementptr inbounds %struct.pre_expr_d, ptr %615, i64 0, i32 2
  %619 = load ptr, ptr %618, align 8, !tbaa !322
  %620 = tail call i32 @get_constant_value_id(ptr noundef %619) #19
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %640, !prof !334

622:                                              ; preds = %617
  %623 = load ptr, ptr %618, align 8, !tbaa !322
  %624 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %623) #19
  tail call void @add_to_value(i32 noundef %624, ptr noundef nonnull %615)
  br label %640

625:                                              ; preds = %614
  %626 = getelementptr inbounds %struct.pre_expr_d, ptr %615, i64 0, i32 2
  %627 = load ptr, ptr %626, align 8, !tbaa !322
  %628 = tail call ptr @VN_INFO(ptr noundef %627) #19
  %629 = getelementptr inbounds %struct.vn_ssa_aux, ptr %628, i64 0, i32 2
  %630 = load i32, ptr %629, align 8, !tbaa !335
  br label %640

631:                                              ; preds = %614
  %632 = getelementptr inbounds %struct.pre_expr_d, ptr %615, i64 0, i32 2
  %633 = load ptr, ptr %632, align 8, !tbaa !322
  %634 = load i32, ptr %633, align 8, !tbaa !337
  br label %640

635:                                              ; preds = %614
  %636 = getelementptr inbounds %struct.pre_expr_d, ptr %615, i64 0, i32 2
  %637 = load ptr, ptr %636, align 8, !tbaa !322
  %638 = load i32, ptr %637, align 8, !tbaa !339
  br label %640

639:                                              ; preds = %614
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %640

640:                                              ; preds = %617, %622, %625, %631, %635, %639
  %641 = phi i32 [ 0, %639 ], [ %638, %635 ], [ %634, %631 ], [ %630, %625 ], [ %624, %622 ], [ %620, %617 ]
  %642 = getelementptr inbounds %struct.basic_block_def, ptr %606, i64 0, i32 2
  %643 = load ptr, ptr %642, align 8, !tbaa !450
  %644 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %643, i64 0, i32 3
  %645 = load ptr, ptr %644, align 8, !tbaa !457
  %646 = tail call fastcc ptr @bitmap_find_leader(ptr noundef %645, i32 noundef %641, ptr noundef null)
  %647 = icmp eq ptr %646, null
  br i1 %647, label %653, label %648, !prof !1195

648:                                              ; preds = %640
  %649 = getelementptr inbounds %struct.basic_block_def, ptr %606, i64 0, i32 9
  %650 = load i32, ptr %649, align 8, !tbaa !432
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds ptr, ptr %581, i64 %651
  store ptr %646, ptr %652, align 8, !tbaa !311
  br label %653

653:                                              ; preds = %648, %640, %605
  %654 = phi i1 [ true, %648 ], [ false, %605 ], [ false, %640 ]
  %655 = phi i8 [ %584, %648 ], [ 1, %605 ], [ %584, %640 ]
  %656 = phi i8 [ %585, %648 ], [ %585, %605 ], [ 0, %640 ]
  br i1 %654, label %657, label %668, !prof !1196

657:                                              ; preds = %653
  %658 = load ptr, ptr %0, align 8, !tbaa !311
  %659 = icmp eq ptr %658, null
  br i1 %659, label %662, label %660, !prof !522

660:                                              ; preds = %657
  %661 = load i32, ptr %658, align 8, !tbaa !440
  br label %662

662:                                              ; preds = %660, %657
  %663 = phi i32 [ %661, %660 ], [ 0, %657 ]
  %664 = icmp ult i32 %583, %663
  br i1 %664, label %666, label %665, !prof !523

665:                                              ; preds = %662
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %666

666:                                              ; preds = %665, %662
  %667 = add i32 %583, 1
  br label %582, !llvm.loop !1197

668:                                              ; preds = %653, %597
  %669 = phi i8 [ %655, %653 ], [ %584, %597 ]
  %670 = phi i8 [ %656, %653 ], [ %585, %597 ]
  %671 = icmp eq i8 %669, 0
  %672 = icmp ne i8 %670, 0
  %673 = select i1 %671, i1 %672, i1 false, !prof !1198
  br i1 %673, label %674, label %685, !prof !1199

674:                                              ; preds = %668
  %675 = tail call zeroext i8 @dbg_cnt(i32 noundef 25) #19
  %676 = icmp eq i8 %675, 0
  br i1 %676, label %685, label %677, !prof !1200

677:                                              ; preds = %674
  %678 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 2), align 4, !tbaa !813
  %679 = add nsw i32 %678, 1
  store i32 %679, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 2), align 4, !tbaa !813
  %680 = getelementptr inbounds %struct.pre_expr_d, ptr %512, i64 0, i32 1
  %681 = load i32, ptr %680, align 4, !tbaa !361
  %682 = tail call fastcc zeroext i8 @insert_into_preds_of_block(ptr noundef nonnull %0, i32 noundef %681, ptr noundef %581), !range !711
  %683 = icmp eq i8 %682, 0
  %684 = select i1 %683, i8 %503, i8 1, !prof !1200
  br label %685

685:                                              ; preds = %677, %674, %668
  %686 = phi i8 [ %503, %674 ], [ %503, %668 ], [ %684, %677 ]
  tail call void @free(ptr noundef %581)
  br label %687

687:                                              ; preds = %514, %685, %571, %551
  %688 = phi i8 [ %503, %514 ], [ %686, %685 ], [ %503, %551 ], [ %503, %571 ]
  %689 = add nuw i64 %502, 1
  br label %501, !llvm.loop !1201

690:                                              ; preds = %511
  br i1 %500, label %692, label %691, !prof !1202

691:                                              ; preds = %690
  tail call void @free(ptr noundef %499)
  br label %692

692:                                              ; preds = %690, %691
  %693 = or i8 %503, %115
  br label %694

694:                                              ; preds = %103, %692, %492, %3, %1
  %695 = phi i8 [ 0, %1 ], [ 0, %3 ], [ 0, %103 ], [ %693, %692 ], [ %115, %492 ]
  %696 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #19
  %697 = icmp eq ptr %696, null
  br i1 %697, label %705, label %698, !prof !1148

698:                                              ; preds = %694, %698
  %699 = phi ptr [ %703, %698 ], [ %696, %694 ]
  %700 = phi i8 [ %702, %698 ], [ %695, %694 ]
  %701 = tail call fastcc zeroext i8 @insert_aux(ptr noundef nonnull %699), !range !711
  %702 = or i8 %701, %700
  %703 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %699) #19
  %704 = icmp eq ptr %703, null
  br i1 %704, label %705, label %698, !prof !1203, !llvm.loop !1204

705:                                              ; preds = %698, %694
  %706 = phi i8 [ %695, %694 ], [ %702, %698 ]
  ret i8 %706
}

declare zeroext i8 @optimize_edge_for_speed_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @insert_into_preds_of_block(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #12 !prof !1205 !PGOFuncName !1206 {
  %4 = alloca %struct.affine_iv, align 8
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr @expressions, align 8
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %6, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !311
  %10 = load i32, ptr %9, align 8, !tbaa !331
  switch i32 %10, label %33 [
    i32 3, label %11
    i32 0, label %19
    i32 1, label %25
    i32 2, label %29
  ], !prof !333

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.pre_expr_d, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !322
  %14 = tail call i32 @get_constant_value_id(ptr noundef %13) #19
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %34, !prof !334

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 8, !tbaa !322
  %18 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %17) #19
  tail call void @add_to_value(i32 noundef %18, ptr noundef nonnull %9)
  br label %34

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.pre_expr_d, ptr %9, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !322
  %22 = tail call ptr @VN_INFO(ptr noundef %21) #19
  %23 = getelementptr inbounds %struct.vn_ssa_aux, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !335
  br label %34

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.pre_expr_d, ptr %9, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !322
  %28 = load i32, ptr %27, align 8, !tbaa !337
  br label %34

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.pre_expr_d, ptr %9, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !322
  %32 = load i32, ptr %31, align 8, !tbaa !339
  br label %34

33:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %34

34:                                               ; preds = %11, %16, %19, %25, %29, %33
  %35 = phi i32 [ 0, %33 ], [ %32, %29 ], [ %28, %25 ], [ %24, %19 ], [ %18, %16 ], [ %14, %11 ]
  %36 = load i32, ptr %9, align 8, !tbaa !331
  switch i32 %36, label %57 [
    i32 0, label %37
    i32 3, label %42
    i32 2, label %47
    i32 1, label %52
  ], !prof !1055

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.pre_expr_d, ptr %9, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !322
  %40 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !322
  br label %58

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.pre_expr_d, ptr %9, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !322
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !322
  br label %58

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.pre_expr_d, ptr %9, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !322
  %50 = getelementptr inbounds %struct.vn_reference_s, ptr %49, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !997
  br label %58

52:                                               ; preds = %34
  %53 = getelementptr inbounds %struct.pre_expr_d, ptr %9, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !322
  %55 = getelementptr inbounds %struct.vn_nary_op_s, ptr %54, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !957
  br label %58

57:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1397, ptr noundef nonnull @.str.1) #19
  br label %58

58:                                               ; preds = %37, %42, %47, %52, %57
  %59 = phi ptr [ null, %57 ], [ %56, %52 ], [ %51, %47 ], [ %46, %42 ], [ %41, %37 ]
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %61 = icmp eq ptr %60, null
  br i1 %61, label %71, label %62, !prof !1207

62:                                               ; preds = %58
  %63 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 40, i64 1, ptr nonnull %60)
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !311
  tail call fastcc void @print_pre_expr(ptr noundef %68, ptr noundef nonnull %9)
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.50, i32 noundef %35)
  br label %71

71:                                               ; preds = %66, %62, %58
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %73 = load i32, ptr %72, align 4, !tbaa !1208
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %157, !prof !1209

75:                                               ; preds = %71
  %76 = load ptr, ptr %0, align 8, !tbaa !438
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %76, align 8, !tbaa !440
  br label %80

80:                                               ; preds = %75, %78
  %81 = phi i32 [ %79, %78 ], [ 0, %75 ]
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %157

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !1210
  %86 = getelementptr inbounds %struct.VEC_edge_base, ptr %76, i64 0, i32 2, i64 0
  %87 = load ptr, ptr %86, align 8, !tbaa !311
  %88 = load ptr, ptr %87, align 8, !tbaa !427
  %89 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %85, ptr noundef %88) #19
  %90 = load ptr, ptr %84, align 8, !tbaa !1210
  %91 = load ptr, ptr %0, align 8, !tbaa !438
  %92 = getelementptr inbounds %struct.VEC_edge_base, ptr %91, i64 0, i32 2, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !311
  %94 = load ptr, ptr %93, align 8, !tbaa !427
  %95 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %90, ptr noundef %94) #19
  %96 = icmp eq i8 %89, %95
  br i1 %96, label %157, label %97

97:                                               ; preds = %83
  %98 = load i32, ptr %9, align 8, !tbaa !331
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %148

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.pre_expr_d, ptr %9, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !322
  %103 = getelementptr inbounds %struct.vn_reference_s, ptr %102, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !365
  %105 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !326
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %157, label %107

107:                                              ; preds = %100
  %108 = icmp eq ptr %104, null
  br label %109

109:                                              ; preds = %107, %146
  %110 = phi i32 [ %147, %146 ], [ 0, %107 ]
  br i1 %108, label %117, label %111

111:                                              ; preds = %109
  %112 = load i32, ptr %104, align 8, !tbaa !366
  %113 = icmp ugt i32 %112, %110
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = zext i32 %110 to i64
  %116 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %104, i64 0, i32 2, i64 %115
  br label %117

117:                                              ; preds = %114, %111, %109
  %118 = phi ptr [ %116, %114 ], [ null, %111 ], [ null, %109 ]
  %119 = phi i1 [ false, %114 ], [ true, %111 ], [ true, %109 ]
  br i1 %119, label %157, label %120

120:                                              ; preds = %117
  %121 = load i32, ptr %118, align 8, !tbaa !368
  switch i32 %121, label %146 [
    i32 45, label %122
    i32 46, label %122
    i32 141, label %128
  ]

122:                                              ; preds = %120, %120
  %123 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %118, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !370
  %125 = load i64, ptr %124, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 141
  br i1 %127, label %128, label %146

128:                                              ; preds = %122, %120
  %129 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %118, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !370
  %131 = getelementptr inbounds %struct.tree_ssa_name, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !322
  %133 = getelementptr inbounds %struct.gimple_statement_base, ptr %132, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !322
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %135 = icmp eq ptr %134, null
  br i1 %135, label %145, label %136

136:                                              ; preds = %128
  %137 = load ptr, ptr %84, align 8, !tbaa !1210
  %138 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %137, ptr noundef nonnull %134) #19
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %84, align 8, !tbaa !1210
  %142 = load ptr, ptr %129, align 8, !tbaa !370
  %143 = call zeroext i8 @simple_iv(ptr noundef %141, ptr noundef %141, ptr noundef %142, ptr noundef nonnull %4, i8 noundef zeroext 1) #19
  %144 = icmp eq i8 %143, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  br i1 %144, label %146, label %148

145:                                              ; preds = %136, %128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  br label %146

146:                                              ; preds = %122, %145, %140, %120
  %147 = add i32 %110, 1
  br label %109, !llvm.loop !1211

148:                                              ; preds = %140, %97
  %149 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %150 = icmp eq ptr %149, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %153 = and i32 %152, 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  %156 = call i64 @fwrite(ptr nonnull @.str.51, i64 83, i64 1, ptr nonnull %149)
  br label %157

157:                                              ; preds = %117, %100, %83, %155, %151, %148, %80, %71
  %158 = phi i1 [ false, %80 ], [ false, %71 ], [ false, %83 ], [ true, %155 ], [ true, %151 ], [ true, %148 ], [ false, %100 ], [ false, %117 ]
  %159 = phi i1 [ true, %80 ], [ true, %71 ], [ true, %83 ], [ false, %155 ], [ false, %151 ], [ false, %148 ], [ true, %100 ], [ true, %117 ]
  %160 = icmp eq ptr %0, null
  br label %161

161:                                              ; preds = %316, %157
  %162 = phi i32 [ 0, %157 ], [ %317, %316 ]
  %163 = phi i8 [ 0, %157 ], [ %307, %316 ]
  br i1 %160, label %164, label %165, !prof !1212

164:                                              ; preds = %161
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.1) #19
  br label %165

165:                                              ; preds = %164, %161
  %166 = load ptr, ptr %0, align 8, !tbaa !311
  %167 = icmp eq ptr %166, null
  br i1 %167, label %170, label %168, !prof !1212

168:                                              ; preds = %165
  %169 = load i32, ptr %166, align 8, !tbaa !440
  br label %170

170:                                              ; preds = %168, %165
  %171 = phi i32 [ %169, %168 ], [ 0, %165 ]
  %172 = icmp eq i32 %171, %162
  br i1 %172, label %177, label %173, !prof !1213

173:                                              ; preds = %170
  %174 = zext i32 %162 to i64
  %175 = getelementptr inbounds %struct.VEC_edge_base, ptr %166, i64 0, i32 2, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !311
  br label %177

177:                                              ; preds = %170, %173
  %178 = phi ptr [ %176, %173 ], [ null, %170 ]
  br i1 %172, label %318, label %179, !prof !1213

179:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !311
  %180 = load ptr, ptr %178, align 8, !tbaa !427
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 9
  %182 = load i32, ptr %181, align 8, !tbaa !432
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds ptr, ptr %2, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !311
  %186 = load i32, ptr %185, align 8, !tbaa !331
  switch i32 %186, label %187 [
    i32 3, label %194
    i32 0, label %246
  ], !prof !1214

187:                                              ; preds = %179
  %188 = call fastcc ptr @create_expression_by_pieces(ptr noundef %180, ptr noundef nonnull %185, ptr noundef nonnull %5, ptr noundef null, ptr noundef %59)
  %189 = getelementptr inbounds %struct.edge_def, ptr %178, i64 0, i32 7
  %190 = load i32, ptr %189, align 8, !tbaa !578
  %191 = and i32 %190, 2
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %295, label %193, !prof !1215

193:                                              ; preds = %187
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3302, ptr noundef nonnull @.str.1) #19
  br label %295

194:                                              ; preds = %179
  %195 = getelementptr inbounds %struct.pre_expr_d, ptr %185, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !322
  %197 = getelementptr inbounds %struct.tree_common, ptr %196, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !322
  %199 = call zeroext i8 @useless_type_conversion_p(ptr noundef %59, ptr noundef %198) #19
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %306

201:                                              ; preds = %194
  %202 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %59, ptr noundef %196) #19
  %203 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %202) #19
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %306

205:                                              ; preds = %201
  %206 = call ptr @force_gimple_operand(ptr noundef %202, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef null) #19
  %207 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %206) #19
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %306

209:                                              ; preds = %205
  %210 = icmp eq ptr %206, %202
  br i1 %210, label %217, label %211

211:                                              ; preds = %209
  %212 = load ptr, ptr %195, align 8, !tbaa !322
  %213 = call ptr @VN_INFO_GET(ptr noundef %206) #19
  store ptr %212, ptr %213, align 8, !tbaa !769
  %214 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %185)
  %215 = call ptr @VN_INFO(ptr noundef %206) #19
  %216 = getelementptr inbounds %struct.vn_ssa_aux, ptr %215, i64 0, i32 2
  store i32 %214, ptr %216, align 8, !tbaa !335
  br label %217

217:                                              ; preds = %211, %209
  %218 = load ptr, ptr %5, align 8, !tbaa !311
  %219 = icmp eq ptr %218, null
  br i1 %219, label %299, label %220

220:                                              ; preds = %217
  %221 = load ptr, ptr %218, align 8, !tbaa !311
  %222 = icmp eq ptr %221, null
  br i1 %222, label %295, label %223

223:                                              ; preds = %220, %235
  %224 = phi ptr [ %244, %235 ], [ %221, %220 ]
  %225 = load ptr, ptr %224, align 8, !tbaa !476
  %226 = load ptr, ptr @inserted_exprs, align 8, !tbaa !311
  %227 = icmp eq ptr %226, null
  br i1 %227, label %233, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.VEC_gimple_base, ptr %226, i64 0, i32 1
  %230 = load i32, ptr %229, align 4, !tbaa !783
  %231 = load i32, ptr %226, align 8, !tbaa !785
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %223, %228
  %234 = call ptr @vec_heap_p_reserve(ptr noundef %226, i32 noundef 1) #19
  store ptr %234, ptr @inserted_exprs, align 8, !tbaa !311
  br label %235

235:                                              ; preds = %228, %233
  %236 = load ptr, ptr @inserted_exprs, align 8, !tbaa !311
  %237 = load i32, ptr %236, align 8, !tbaa !785
  %238 = add i32 %237, 1
  store i32 %238, ptr %236, align 8, !tbaa !785
  %239 = zext i32 %237 to i64
  %240 = getelementptr inbounds %struct.VEC_gimple_base, ptr %236, i64 0, i32 2, i64 %239
  store ptr %225, ptr %240, align 8, !tbaa !311
  %241 = load i32, ptr %225, align 8
  %242 = and i32 %241, -2049
  store i32 %242, ptr %225, align 8
  %243 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %224, i64 0, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !311
  %245 = icmp eq ptr %244, null
  br i1 %245, label %295, label %223, !llvm.loop !1216

246:                                              ; preds = %179
  %247 = getelementptr inbounds %struct.pre_expr_d, ptr %185, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !322
  %249 = getelementptr inbounds %struct.tree_common, ptr %248, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !322
  %251 = call zeroext i8 @useless_type_conversion_p(ptr noundef %59, ptr noundef %250) #19
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %306, !prof !1217

253:                                              ; preds = %246
  %254 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %59, ptr noundef %248) #19
  %255 = call ptr @force_gimple_operand(ptr noundef %254, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef null) #19
  %256 = icmp eq ptr %255, %248
  br i1 %256, label %266, label %257

257:                                              ; preds = %253
  %258 = call ptr @VN_INFO(ptr noundef %248) #19
  %259 = load ptr, ptr %258, align 8, !tbaa !769
  %260 = call ptr @VN_INFO_GET(ptr noundef %255) #19
  store ptr %259, ptr %260, align 8, !tbaa !769
  %261 = call ptr @VN_INFO(ptr noundef %248) #19
  %262 = getelementptr inbounds %struct.vn_ssa_aux, ptr %261, i64 0, i32 2
  %263 = load i32, ptr %262, align 8, !tbaa !335
  %264 = call ptr @VN_INFO(ptr noundef %255) #19
  %265 = getelementptr inbounds %struct.vn_ssa_aux, ptr %264, i64 0, i32 2
  store i32 %263, ptr %265, align 8, !tbaa !335
  br label %266

266:                                              ; preds = %257, %253
  %267 = load ptr, ptr %5, align 8, !tbaa !311
  %268 = icmp eq ptr %267, null
  br i1 %268, label %299, label %269

269:                                              ; preds = %266
  %270 = load ptr, ptr %267, align 8, !tbaa !311
  %271 = icmp eq ptr %270, null
  br i1 %271, label %295, label %272

272:                                              ; preds = %269, %284
  %273 = phi ptr [ %293, %284 ], [ %270, %269 ]
  %274 = load ptr, ptr %273, align 8, !tbaa !476
  %275 = load ptr, ptr @inserted_exprs, align 8, !tbaa !311
  %276 = icmp eq ptr %275, null
  br i1 %276, label %282, label %277

277:                                              ; preds = %272
  %278 = getelementptr inbounds %struct.VEC_gimple_base, ptr %275, i64 0, i32 1
  %279 = load i32, ptr %278, align 4, !tbaa !783
  %280 = load i32, ptr %275, align 8, !tbaa !785
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %272, %277
  %283 = call ptr @vec_heap_p_reserve(ptr noundef %275, i32 noundef 1) #19
  store ptr %283, ptr @inserted_exprs, align 8, !tbaa !311
  br label %284

284:                                              ; preds = %277, %282
  %285 = load ptr, ptr @inserted_exprs, align 8, !tbaa !311
  %286 = load i32, ptr %285, align 8, !tbaa !785
  %287 = add i32 %286, 1
  store i32 %287, ptr %285, align 8, !tbaa !785
  %288 = zext i32 %286 to i64
  %289 = getelementptr inbounds %struct.VEC_gimple_base, ptr %285, i64 0, i32 2, i64 %288
  store ptr %274, ptr %289, align 8, !tbaa !311
  %290 = load i32, ptr %274, align 8
  %291 = and i32 %290, -2049
  store i32 %291, ptr %274, align 8
  %292 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %273, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !311
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %272, !llvm.loop !1218

295:                                              ; preds = %269, %284, %220, %235, %193, %187
  %296 = phi ptr [ %188, %187 ], [ %188, %193 ], [ %206, %235 ], [ %206, %220 ], [ %255, %284 ], [ %255, %269 ]
  %297 = phi i8 [ 1, %187 ], [ 1, %193 ], [ %163, %235 ], [ %163, %220 ], [ %163, %284 ], [ %163, %269 ]
  %298 = load ptr, ptr %5, align 8, !tbaa !311
  call void @gsi_insert_seq_on_edge(ptr noundef nonnull %178, ptr noundef %298) #19
  br label %299

299:                                              ; preds = %295, %266, %217
  %300 = phi ptr [ %206, %217 ], [ %255, %266 ], [ %296, %295 ]
  %301 = phi i8 [ %163, %217 ], [ %163, %266 ], [ %297, %295 ]
  %302 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %300)
  %303 = load i32, ptr %181, align 8, !tbaa !432
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds ptr, ptr %2, i64 %304
  store ptr %302, ptr %305, align 8, !tbaa !311
  br label %306

306:                                              ; preds = %299, %246, %194, %205, %201
  %307 = phi i8 [ %163, %201 ], [ %163, %205 ], [ %163, %194 ], [ %163, %246 ], [ %301, %299 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %308 = load ptr, ptr %0, align 8, !tbaa !311
  %309 = icmp eq ptr %308, null
  br i1 %309, label %312, label %310, !prof !1219

310:                                              ; preds = %306
  %311 = load i32, ptr %308, align 8, !tbaa !440
  br label %312

312:                                              ; preds = %310, %306
  %313 = phi i32 [ %311, %310 ], [ 0, %306 ]
  %314 = icmp ult i32 %162, %313
  br i1 %314, label %316, label %315, !prof !1220

315:                                              ; preds = %312
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %316

316:                                              ; preds = %312, %315
  %317 = add i32 %162, 1
  br label %161, !llvm.loop !1221

318:                                              ; preds = %177
  %319 = icmp ne i8 %163, 0
  %320 = select i1 %158, i1 %319, i1 false, !prof !1209
  br i1 %320, label %641, label %321, !prof !1209

321:                                              ; preds = %318
  %322 = select i1 %159, i1 true, i1 %319, !prof !1207
  br i1 %322, label %323, label %641, !prof !1207

323:                                              ; preds = %321
  %324 = load ptr, ptr @prephitemp, align 8, !tbaa !311
  %325 = icmp eq ptr %324, null
  br i1 %325, label %330, label %326, !prof !1222

326:                                              ; preds = %323
  %327 = getelementptr inbounds %struct.tree_common, ptr %324, i64 0, i32 2
  %328 = load ptr, ptr %327, align 8, !tbaa !322
  %329 = icmp eq ptr %328, %59
  br i1 %329, label %352, label %330, !prof !1223

330:                                              ; preds = %326, %323
  %331 = call ptr @create_tmp_var(ptr noundef %59, ptr noundef nonnull @.str.52) #19
  store ptr %331, ptr @prephitemp, align 8, !tbaa !311
  %332 = load i64, ptr %331, align 8
  %333 = trunc i64 %332 to i16
  switch i16 %333, label %338 [
    i16 32, label %334
    i16 34, label %336
  ], !prof !1224

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.tree_var_decl, ptr %331, i64 0, i32 1
  br label %343

336:                                              ; preds = %330
  %337 = getelementptr inbounds %struct.tree_parm_decl, ptr %331, i64 0, i32 2
  br label %343

338:                                              ; preds = %330
  %339 = and i64 %332, 65535
  %340 = icmp eq i64 %339, 36
  %341 = getelementptr inbounds %struct.tree_result_decl, ptr %331, i64 0, i32 1
  %342 = select i1 %340, ptr %341, ptr null
  br label %343

343:                                              ; preds = %338, %336, %334
  %344 = phi ptr [ %335, %334 ], [ %337, %336 ], [ %342, %338 ]
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %347, !prof !1225

346:                                              ; preds = %343
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 144, ptr noundef nonnull @.str.1) #19
  br label %347

347:                                              ; preds = %346, %343
  %348 = load ptr, ptr %344, align 8, !tbaa !311
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %352, !prof !1226

350:                                              ; preds = %347
  %351 = call ptr @create_var_ann(ptr noundef nonnull %331) #19
  br label %352

352:                                              ; preds = %350, %347, %326
  %353 = load ptr, ptr @prephitemp, align 8, !tbaa !311
  %354 = call zeroext i8 @add_referenced_var(ptr noundef %353) #19
  %355 = load i64, ptr %59, align 8
  %356 = trunc i64 %355 to i32
  %357 = and i32 %356, 65535
  %358 = add nsw i32 %357, -13
  %359 = icmp ult i32 %358, 2
  br i1 %359, label %360, label %364, !prof !1209

360:                                              ; preds = %352
  %361 = getelementptr inbounds %struct.tree_decl_common, ptr %353, i64 0, i32 2
  %362 = load i64, ptr %361, align 8
  %363 = or i64 %362, 134217728
  store i64 %363, ptr %361, align 8
  br label %364

364:                                              ; preds = %352, %360
  %365 = call ptr @create_phi_node(ptr noundef %353, ptr noundef nonnull %0) #19
  %366 = load i32, ptr %365, align 8
  %367 = and i32 %366, -2049
  store i32 %367, ptr %365, align 8
  %368 = getelementptr inbounds %struct.gimple_statement_phi, ptr %365, i64 0, i32 3
  %369 = load ptr, ptr %368, align 8, !tbaa !322
  %370 = call ptr @VN_INFO_GET(ptr noundef %369) #19
  store ptr %369, ptr %370, align 8, !tbaa !769
  %371 = load ptr, ptr %368, align 8, !tbaa !322
  %372 = call ptr @VN_INFO(ptr noundef %371) #19
  %373 = getelementptr inbounds %struct.vn_ssa_aux, ptr %372, i64 0, i32 2
  store i32 %35, ptr %373, align 8, !tbaa !335
  %374 = load ptr, ptr @inserted_exprs, align 8, !tbaa !311
  %375 = icmp eq ptr %374, null
  br i1 %375, label %381, label %376, !prof !1222

376:                                              ; preds = %364
  %377 = getelementptr inbounds %struct.VEC_gimple_base, ptr %374, i64 0, i32 1
  %378 = load i32, ptr %377, align 4, !tbaa !783
  %379 = load i32, ptr %374, align 8, !tbaa !785
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %383, !prof !1227

381:                                              ; preds = %364, %376
  %382 = call ptr @vec_heap_p_reserve(ptr noundef %374, i32 noundef 1) #19
  store ptr %382, ptr @inserted_exprs, align 8, !tbaa !311
  br label %383

383:                                              ; preds = %376, %381
  %384 = load ptr, ptr @inserted_exprs, align 8, !tbaa !311
  %385 = load i32, ptr %384, align 8, !tbaa !785
  %386 = add i32 %385, 1
  store i32 %386, ptr %384, align 8, !tbaa !785
  %387 = zext i32 %385 to i64
  %388 = getelementptr inbounds %struct.VEC_gimple_base, ptr %384, i64 0, i32 2, i64 %387
  store ptr %365, ptr %388, align 8, !tbaa !311
  %389 = load ptr, ptr @inserted_phi_names, align 8, !tbaa !311
  %390 = load ptr, ptr %368, align 8, !tbaa !322
  %391 = getelementptr inbounds %struct.tree_ssa_name, ptr %390, i64 0, i32 3
  %392 = load i32, ptr %391, align 8, !tbaa !322
  %393 = call zeroext i8 @bitmap_set_bit(ptr noundef %389, i32 noundef %392) #19
  br label %394

394:                                              ; preds = %468, %383
  %395 = phi i32 [ 0, %383 ], [ %469, %468 ]
  %396 = load ptr, ptr %0, align 8, !tbaa !311
  %397 = icmp eq ptr %396, null
  br i1 %397, label %400, label %398, !prof !1212

398:                                              ; preds = %394
  %399 = load i32, ptr %396, align 8, !tbaa !440
  br label %400

400:                                              ; preds = %398, %394
  %401 = phi i32 [ %399, %398 ], [ 0, %394 ]
  %402 = icmp eq i32 %401, %395
  br i1 %402, label %407, label %403, !prof !1213

403:                                              ; preds = %400
  %404 = zext i32 %395 to i64
  %405 = getelementptr inbounds %struct.VEC_edge_base, ptr %396, i64 0, i32 2, i64 %404
  %406 = load ptr, ptr %405, align 8, !tbaa !311
  br label %407

407:                                              ; preds = %400, %403
  %408 = phi ptr [ %406, %403 ], [ null, %400 ]
  br i1 %402, label %470, label %409, !prof !1213

409:                                              ; preds = %407
  %410 = load ptr, ptr %408, align 8, !tbaa !427
  %411 = getelementptr inbounds %struct.basic_block_def, ptr %410, i64 0, i32 9
  %412 = load i32, ptr %411, align 8, !tbaa !432
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds ptr, ptr %2, i64 %413
  %415 = load ptr, ptr %414, align 8, !tbaa !311
  %416 = load i32, ptr %415, align 8, !tbaa !331
  switch i32 %416, label %437 [
    i32 0, label %417
    i32 3, label %422
    i32 2, label %427
    i32 1, label %432
  ], !prof !1055

417:                                              ; preds = %409
  %418 = getelementptr inbounds %struct.pre_expr_d, ptr %415, i64 0, i32 2
  %419 = load ptr, ptr %418, align 8, !tbaa !322
  %420 = getelementptr inbounds %struct.tree_common, ptr %419, i64 0, i32 2
  %421 = load ptr, ptr %420, align 8, !tbaa !322
  br label %438

422:                                              ; preds = %409
  %423 = getelementptr inbounds %struct.pre_expr_d, ptr %415, i64 0, i32 2
  %424 = load ptr, ptr %423, align 8, !tbaa !322
  %425 = getelementptr inbounds %struct.tree_common, ptr %424, i64 0, i32 2
  %426 = load ptr, ptr %425, align 8, !tbaa !322
  br label %438

427:                                              ; preds = %409
  %428 = getelementptr inbounds %struct.pre_expr_d, ptr %415, i64 0, i32 2
  %429 = load ptr, ptr %428, align 8, !tbaa !322
  %430 = getelementptr inbounds %struct.vn_reference_s, ptr %429, i64 0, i32 4
  %431 = load ptr, ptr %430, align 8, !tbaa !997
  br label %438

432:                                              ; preds = %409
  %433 = getelementptr inbounds %struct.pre_expr_d, ptr %415, i64 0, i32 2
  %434 = load ptr, ptr %433, align 8, !tbaa !322
  %435 = getelementptr inbounds %struct.vn_nary_op_s, ptr %434, i64 0, i32 4
  %436 = load ptr, ptr %435, align 8, !tbaa !957
  br label %438

437:                                              ; preds = %409
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1397, ptr noundef nonnull @.str.1) #19
  br label %438

438:                                              ; preds = %417, %422, %427, %432, %437
  %439 = phi ptr [ null, %437 ], [ %436, %432 ], [ %431, %427 ], [ %426, %422 ], [ %421, %417 ]
  %440 = icmp eq ptr %439, %59
  br i1 %440, label %446, label %441, !prof !1220

441:                                              ; preds = %438
  %442 = call fastcc ptr @get_expr_type(ptr noundef nonnull %415)
  %443 = call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %59, ptr noundef %442) #19
  %444 = icmp eq i8 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %441
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3417, ptr noundef nonnull @.str.1) #19
  br label %446

446:                                              ; preds = %438, %441, %445
  %447 = load i32, ptr %415, align 8, !tbaa !331
  %448 = icmp eq i32 %447, 3
  br i1 %448, label %456, label %449, !prof !1219

449:                                              ; preds = %446
  %450 = load ptr, ptr %408, align 8, !tbaa !427
  %451 = getelementptr inbounds %struct.basic_block_def, ptr %450, i64 0, i32 9
  %452 = load i32, ptr %451, align 8, !tbaa !432
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds ptr, ptr %2, i64 %453
  %455 = load ptr, ptr %454, align 8, !tbaa !311
  br label %456

456:                                              ; preds = %446, %449
  %457 = phi ptr [ %455, %449 ], [ %415, %446 ]
  %458 = getelementptr inbounds %struct.pre_expr_d, ptr %457, i64 0, i32 2
  %459 = load ptr, ptr %458, align 8, !tbaa !322
  call void @add_phi_arg(ptr noundef nonnull %365, ptr noundef %459, ptr noundef nonnull %408, i32 noundef 0) #19
  %460 = load ptr, ptr %0, align 8, !tbaa !311
  %461 = icmp eq ptr %460, null
  br i1 %461, label %464, label %462, !prof !1219

462:                                              ; preds = %456
  %463 = load i32, ptr %460, align 8, !tbaa !440
  br label %464

464:                                              ; preds = %462, %456
  %465 = phi i32 [ %463, %462 ], [ 0, %456 ]
  %466 = icmp ult i32 %395, %465
  br i1 %466, label %468, label %467, !prof !1220

467:                                              ; preds = %464
  call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %468

468:                                              ; preds = %464, %467
  %469 = add i32 %395, 1
  br label %394, !llvm.loop !1228

470:                                              ; preds = %407
  %471 = load ptr, ptr %368, align 8, !tbaa !322
  %472 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %471)
  call void @add_to_value(i32 noundef %35, ptr noundef %472)
  %473 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %474 = load ptr, ptr %473, align 8, !tbaa !450
  %475 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %474, i64 0, i32 1
  %476 = load ptr, ptr %475, align 8, !tbaa !455
  %477 = load i32, ptr %472, align 8, !tbaa !331
  switch i32 %477, label %500 [
    i32 3, label %478
    i32 0, label %486
    i32 1, label %492
    i32 2, label %496
  ], !prof !333

478:                                              ; preds = %470
  %479 = getelementptr inbounds %struct.pre_expr_d, ptr %472, i64 0, i32 2
  %480 = load ptr, ptr %479, align 8, !tbaa !322
  %481 = call i32 @get_constant_value_id(ptr noundef %480) #19
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %501, !prof !334

483:                                              ; preds = %478
  %484 = load ptr, ptr %479, align 8, !tbaa !322
  %485 = call i32 @get_or_alloc_constant_value_id(ptr noundef %484) #19
  call void @add_to_value(i32 noundef %485, ptr noundef nonnull %472)
  br label %501

486:                                              ; preds = %470
  %487 = getelementptr inbounds %struct.pre_expr_d, ptr %472, i64 0, i32 2
  %488 = load ptr, ptr %487, align 8, !tbaa !322
  %489 = call ptr @VN_INFO(ptr noundef %488) #19
  %490 = getelementptr inbounds %struct.vn_ssa_aux, ptr %489, i64 0, i32 2
  %491 = load i32, ptr %490, align 8, !tbaa !335
  br label %501

492:                                              ; preds = %470
  %493 = getelementptr inbounds %struct.pre_expr_d, ptr %472, i64 0, i32 2
  %494 = load ptr, ptr %493, align 8, !tbaa !322
  %495 = load i32, ptr %494, align 8, !tbaa !337
  br label %501

496:                                              ; preds = %470
  %497 = getelementptr inbounds %struct.pre_expr_d, ptr %472, i64 0, i32 2
  %498 = load ptr, ptr %497, align 8, !tbaa !322
  %499 = load i32, ptr %498, align 8, !tbaa !339
  br label %501

500:                                              ; preds = %470
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %501

501:                                              ; preds = %478, %483, %486, %492, %496, %500
  %502 = phi i32 [ 0, %500 ], [ %499, %496 ], [ %495, %492 ], [ %491, %486 ], [ %485, %483 ], [ %481, %478 ]
  %503 = call zeroext i8 @value_id_constant_p(i32 noundef %502) #19
  %504 = icmp eq i8 %503, 0
  br i1 %504, label %505, label %547, !prof !468

505:                                              ; preds = %501
  %506 = getelementptr inbounds %struct.bitmap_set, ptr %476, i64 0, i32 1
  %507 = load ptr, ptr %506, align 8, !tbaa !353
  %508 = call zeroext i8 @bitmap_set_bit(ptr noundef %507, i32 noundef %502) #19
  %509 = load ptr, ptr %476, align 8, !tbaa !351
  %510 = load i32, ptr %472, align 8, !tbaa !331
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %527, !prof !354

512:                                              ; preds = %505
  %513 = getelementptr inbounds %struct.pre_expr_d, ptr %472, i64 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !322
  %515 = getelementptr inbounds %struct.tree_ssa_name, ptr %514, i64 0, i32 3
  %516 = load i32, ptr %515, align 8, !tbaa !322
  %517 = load ptr, ptr @name_to_id, align 8
  %518 = icmp eq ptr %517, null
  br i1 %518, label %521, label %519, !prof !355

519:                                              ; preds = %512
  %520 = load i32, ptr %517, align 4, !tbaa !356
  br label %521

521:                                              ; preds = %519, %512
  %522 = phi i32 [ %520, %519 ], [ 0, %512 ]
  %523 = icmp ugt i32 %522, %516
  br i1 %523, label %524, label %537, !prof !358

524:                                              ; preds = %521
  %525 = zext i32 %516 to i64
  %526 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %517, i64 0, i32 2, i64 %525
  br label %534

527:                                              ; preds = %505
  %528 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %529 = call ptr @htab_find_slot(ptr noundef %528, ptr noundef nonnull %472, i32 noundef 0) #19
  %530 = icmp eq ptr %529, null
  br i1 %530, label %537, label %531, !prof !359

531:                                              ; preds = %527
  %532 = load ptr, ptr %529, align 8, !tbaa !311
  %533 = getelementptr inbounds %struct.pre_expr_d, ptr %532, i64 0, i32 1
  br label %534

534:                                              ; preds = %524, %531
  %535 = phi ptr [ %533, %531 ], [ %526, %524 ]
  %536 = load i32, ptr %535, align 4, !tbaa !326
  br label %537

537:                                              ; preds = %534, %527, %521
  %538 = phi i32 [ 0, %521 ], [ 0, %527 ], [ %536, %534 ]
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %542, !prof !360

540:                                              ; preds = %537
  %541 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %472)
  br label %544

542:                                              ; preds = %537
  %543 = getelementptr inbounds %struct.pre_expr_d, ptr %472, i64 0, i32 1
  store i32 %538, ptr %543, align 4, !tbaa !361
  br label %544

544:                                              ; preds = %542, %540
  %545 = phi i32 [ %541, %540 ], [ %538, %542 ]
  %546 = call zeroext i8 @bitmap_set_bit(ptr noundef %509, i32 noundef %545) #19
  br label %547

547:                                              ; preds = %501, %544
  %548 = load ptr, ptr %473, align 8, !tbaa !450
  %549 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %548, i64 0, i32 3
  %550 = load ptr, ptr %549, align 8, !tbaa !457
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %550, ptr noundef %472)
  %551 = load ptr, ptr %473, align 8, !tbaa !450
  %552 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %551, i64 0, i32 6
  %553 = load ptr, ptr %552, align 8, !tbaa !708
  %554 = load i32, ptr %472, align 8, !tbaa !331
  switch i32 %554, label %577 [
    i32 3, label %555
    i32 0, label %563
    i32 1, label %569
    i32 2, label %573
  ], !prof !333

555:                                              ; preds = %547
  %556 = getelementptr inbounds %struct.pre_expr_d, ptr %472, i64 0, i32 2
  %557 = load ptr, ptr %556, align 8, !tbaa !322
  %558 = call i32 @get_constant_value_id(ptr noundef %557) #19
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %578, !prof !334

560:                                              ; preds = %555
  %561 = load ptr, ptr %556, align 8, !tbaa !322
  %562 = call i32 @get_or_alloc_constant_value_id(ptr noundef %561) #19
  call void @add_to_value(i32 noundef %562, ptr noundef nonnull %472)
  br label %578

563:                                              ; preds = %547
  %564 = getelementptr inbounds %struct.pre_expr_d, ptr %472, i64 0, i32 2
  %565 = load ptr, ptr %564, align 8, !tbaa !322
  %566 = call ptr @VN_INFO(ptr noundef %565) #19
  %567 = getelementptr inbounds %struct.vn_ssa_aux, ptr %566, i64 0, i32 2
  %568 = load i32, ptr %567, align 8, !tbaa !335
  br label %578

569:                                              ; preds = %547
  %570 = getelementptr inbounds %struct.pre_expr_d, ptr %472, i64 0, i32 2
  %571 = load ptr, ptr %570, align 8, !tbaa !322
  %572 = load i32, ptr %571, align 8, !tbaa !337
  br label %578

573:                                              ; preds = %547
  %574 = getelementptr inbounds %struct.pre_expr_d, ptr %472, i64 0, i32 2
  %575 = load ptr, ptr %574, align 8, !tbaa !322
  %576 = load i32, ptr %575, align 8, !tbaa !339
  br label %578

577:                                              ; preds = %547
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %578

578:                                              ; preds = %555, %560, %563, %569, %573, %577
  %579 = phi i32 [ 0, %577 ], [ %576, %573 ], [ %572, %569 ], [ %568, %563 ], [ %562, %560 ], [ %558, %555 ]
  %580 = call zeroext i8 @value_id_constant_p(i32 noundef %579) #19
  %581 = icmp eq i8 %580, 0
  br i1 %581, label %582, label %624, !prof !468

582:                                              ; preds = %578
  %583 = getelementptr inbounds %struct.bitmap_set, ptr %553, i64 0, i32 1
  %584 = load ptr, ptr %583, align 8, !tbaa !353
  %585 = call zeroext i8 @bitmap_set_bit(ptr noundef %584, i32 noundef %579) #19
  %586 = load ptr, ptr %553, align 8, !tbaa !351
  %587 = load i32, ptr %472, align 8, !tbaa !331
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %589, label %604, !prof !354

589:                                              ; preds = %582
  %590 = getelementptr inbounds %struct.pre_expr_d, ptr %472, i64 0, i32 2
  %591 = load ptr, ptr %590, align 8, !tbaa !322
  %592 = getelementptr inbounds %struct.tree_ssa_name, ptr %591, i64 0, i32 3
  %593 = load i32, ptr %592, align 8, !tbaa !322
  %594 = load ptr, ptr @name_to_id, align 8
  %595 = icmp eq ptr %594, null
  br i1 %595, label %598, label %596, !prof !355

596:                                              ; preds = %589
  %597 = load i32, ptr %594, align 4, !tbaa !356
  br label %598

598:                                              ; preds = %596, %589
  %599 = phi i32 [ %597, %596 ], [ 0, %589 ]
  %600 = icmp ugt i32 %599, %593
  br i1 %600, label %601, label %614, !prof !358

601:                                              ; preds = %598
  %602 = zext i32 %593 to i64
  %603 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %594, i64 0, i32 2, i64 %602
  br label %611

604:                                              ; preds = %582
  %605 = load ptr, ptr @expression_to_id, align 8, !tbaa !311
  %606 = call ptr @htab_find_slot(ptr noundef %605, ptr noundef nonnull %472, i32 noundef 0) #19
  %607 = icmp eq ptr %606, null
  br i1 %607, label %614, label %608, !prof !359

608:                                              ; preds = %604
  %609 = load ptr, ptr %606, align 8, !tbaa !311
  %610 = getelementptr inbounds %struct.pre_expr_d, ptr %609, i64 0, i32 1
  br label %611

611:                                              ; preds = %601, %608
  %612 = phi ptr [ %610, %608 ], [ %603, %601 ]
  %613 = load i32, ptr %612, align 4, !tbaa !326
  br label %614

614:                                              ; preds = %611, %604, %598
  %615 = phi i32 [ 0, %598 ], [ 0, %604 ], [ %613, %611 ]
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %619, !prof !360

617:                                              ; preds = %614
  %618 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %472)
  br label %621

619:                                              ; preds = %614
  %620 = getelementptr inbounds %struct.pre_expr_d, ptr %472, i64 0, i32 1
  store i32 %615, ptr %620, align 4, !tbaa !361
  br label %621

621:                                              ; preds = %619, %617
  %622 = phi i32 [ %618, %617 ], [ %615, %619 ]
  %623 = call zeroext i8 @bitmap_set_bit(ptr noundef %586, i32 noundef %622) #19
  br label %624

624:                                              ; preds = %578, %621
  %625 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %626 = icmp eq ptr %625, null
  br i1 %626, label %638, label %627, !prof !1207

627:                                              ; preds = %624
  %628 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %629 = and i32 %628, 8
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %638, label %631

631:                                              ; preds = %627
  %632 = call i64 @fwrite(ptr nonnull @.str.53, i64 12, i64 1, ptr nonnull %625)
  %633 = load ptr, ptr @dump_file, align 8, !tbaa !311
  call void @print_gimple_stmt(ptr noundef %633, ptr noundef nonnull %365, i32 noundef 0, i32 noundef 0) #19
  %634 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %635 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %636 = load i32, ptr %635, align 8, !tbaa !432
  %637 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %634, ptr noundef nonnull @.str.54, i32 noundef %636)
  br label %638

638:                                              ; preds = %631, %627, %624
  %639 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 3), align 4, !tbaa !814
  %640 = add nsw i32 %639, 1
  store i32 %640, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 3), align 4, !tbaa !814
  br label %641

641:                                              ; preds = %321, %318, %638
  %642 = phi i8 [ 1, %638 ], [ 1, %318 ], [ 0, %321 ]
  ret i8 %642
}

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @create_expression_by_pieces(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #12 !prof !1229 !PGOFuncName !1230 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store ptr null, ptr %7, align 8, !tbaa !311
  %8 = icmp eq ptr %4, null
  br i1 %8, label %9, label %11, !prof !1231

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @get_expr_type(ptr noundef %1)
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi ptr [ %10, %9 ], [ %4, %5 ]
  %13 = load i32, ptr %1, align 8, !tbaa !331
  switch i32 %13, label %309 [
    i32 0, label %14
    i32 3, label %17
    i32 2, label %20
    i32 1, label %24
  ], !prof !1232

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !322
  br label %93

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !322
  br label %93

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !322
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !326
  %23 = call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef %22, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  br label %93

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !322
  %27 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 16
  %30 = trunc i32 %29 to i16
  switch i16 %30, label %90 [
    i16 2, label %31
    i16 1, label %70
  ], !prof !1233

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !311
  %34 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %33)
  %35 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 5, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !311
  %37 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %36)
  %38 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %34, ptr noundef %2, ptr noundef %3)
  %39 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %37, ptr noundef %2, ptr noundef %3)
  %40 = icmp ne ptr %38, null
  %41 = icmp ne ptr %39, null
  %42 = select i1 %40, i1 %41, i1 false, !prof !1234
  br i1 %42, label %43, label %68, !prof !1234

43:                                               ; preds = %31
  %44 = load i32, ptr %27, align 4
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 66
  br i1 %46, label %47, label %51, !prof !540

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !957
  %50 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %49, ptr noundef nonnull %38) #19
  br label %58

51:                                               ; preds = %43
  %52 = load ptr, ptr %32, align 8, !tbaa !311
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !322
  %55 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %54, ptr noundef nonnull %38) #19
  %56 = load ptr, ptr %35, align 8, !tbaa !311
  %57 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  br label %58

58:                                               ; preds = %51, %47
  %59 = phi ptr [ %57, %51 ], [ @sizetype_tab, %47 ]
  %60 = phi ptr [ %55, %51 ], [ %50, %47 ]
  %61 = load ptr, ptr %59, align 8, !tbaa !322
  %62 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %61, ptr noundef nonnull %39) #19
  %63 = load i32, ptr %27, align 4
  %64 = and i32 %63, 65535
  %65 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !957
  %67 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %64, ptr noundef %66, ptr noundef %60, ptr noundef %62) #19
  br label %68

68:                                               ; preds = %31, %58
  %69 = phi ptr [ %67, %58 ], [ undef, %31 ]
  br i1 %42, label %88, label %90, !prof !1234

70:                                               ; preds = %24
  %71 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !311
  %73 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %72)
  %74 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %73, ptr noundef %2, ptr noundef %3)
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %70
  %77 = load ptr, ptr %71, align 8, !tbaa !311
  %78 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !322
  %80 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %79, ptr noundef nonnull %74) #19
  %81 = load i32, ptr %27, align 4
  %82 = and i32 %81, 65535
  %83 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !957
  %85 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %82, ptr noundef %84, ptr noundef %80) #19
  br label %86

86:                                               ; preds = %70, %76
  %87 = phi ptr [ %85, %76 ], [ undef, %70 ]
  br i1 %75, label %90, label %88

88:                                               ; preds = %86, %68
  %89 = phi ptr [ %87, %86 ], [ %69, %68 ]
  br label %90

90:                                               ; preds = %86, %24, %68, %88
  %91 = phi i1 [ true, %88 ], [ false, %68 ], [ false, %24 ], [ false, %86 ]
  %92 = phi ptr [ %89, %88 ], [ %69, %68 ], [ undef, %24 ], [ %87, %86 ]
  br i1 %91, label %93, label %309, !prof !1234

93:                                               ; preds = %90, %20, %17, %14
  %94 = phi ptr [ %92, %90 ], [ %23, %20 ], [ %19, %17 ], [ %16, %14 ]
  %95 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !322
  %97 = call zeroext i8 @useless_type_conversion_p(ptr noundef %12, ptr noundef %96) #19
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %101, !prof !1231

99:                                               ; preds = %93
  %100 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %12, ptr noundef %94) #19
  br label %101

101:                                              ; preds = %99, %93
  %102 = phi ptr [ %94, %93 ], [ %100, %99 ]
  %103 = call ptr @unshare_expr(ptr noundef %102) #19
  %104 = call ptr @force_gimple_operand(ptr noundef %103, ptr noundef nonnull %7, i8 noundef zeroext 0, ptr noundef null) #19
  %105 = load ptr, ptr %7, align 8, !tbaa !311
  %106 = icmp eq ptr %105, null
  br i1 %106, label %160, label %107, !prof !1215

107:                                              ; preds = %101
  %108 = load ptr, ptr %105, align 8, !tbaa !311
  %109 = icmp eq ptr %108, null
  br i1 %109, label %158, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  br label %113

113:                                              ; preds = %110, %154
  %114 = phi ptr [ %108, %110 ], [ %156, %154 ]
  %115 = load ptr, ptr %114, align 8, !tbaa !476
  %116 = call ptr @gimple_get_lhs(ptr noundef %115) #19
  %117 = load ptr, ptr @inserted_exprs, align 8, !tbaa !311
  %118 = icmp eq ptr %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.VEC_gimple_base, ptr %117, i64 0, i32 1
  %121 = load i32, ptr %120, align 4, !tbaa !783
  %122 = load i32, ptr %117, align 8, !tbaa !785
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %113, %119
  %125 = call ptr @vec_heap_p_reserve(ptr noundef %117, i32 noundef 1) #19
  store ptr %125, ptr @inserted_exprs, align 8, !tbaa !311
  br label %126

126:                                              ; preds = %119, %124
  %127 = load ptr, ptr @inserted_exprs, align 8, !tbaa !311
  %128 = load i32, ptr %127, align 8, !tbaa !785
  %129 = add i32 %128, 1
  store i32 %129, ptr %127, align 8, !tbaa !785
  %130 = zext i32 %128 to i64
  %131 = getelementptr inbounds %struct.VEC_gimple_base, ptr %127, i64 0, i32 2, i64 %130
  store ptr %115, ptr %131, align 8, !tbaa !311
  %132 = load i64, ptr %116, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 141
  br i1 %134, label %135, label %154

135:                                              ; preds = %126
  %136 = call ptr @VN_INFO_GET(ptr noundef nonnull %116) #19
  store ptr %116, ptr %136, align 8, !tbaa !769
  %137 = call i32 @get_next_value_id() #19
  %138 = call ptr @VN_INFO(ptr noundef nonnull %116) #19
  %139 = getelementptr inbounds %struct.vn_ssa_aux, ptr %138, i64 0, i32 2
  store i32 %137, ptr %139, align 8, !tbaa !335
  %140 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %116)
  %141 = call ptr @VN_INFO(ptr noundef nonnull %116) #19
  %142 = getelementptr inbounds %struct.vn_ssa_aux, ptr %141, i64 0, i32 2
  %143 = load i32, ptr %142, align 8, !tbaa !335
  call void @add_to_value(i32 noundef %143, ptr noundef %140)
  %144 = load i8, ptr @in_fre, align 1, !tbaa !322
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %135
  %147 = load ptr, ptr %111, align 8, !tbaa !450
  %148 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %147, i64 0, i32 6
  %149 = load ptr, ptr %148, align 8, !tbaa !708
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %149, ptr noundef %140)
  br label %150

150:                                              ; preds = %146, %135
  %151 = load ptr, ptr %112, align 8, !tbaa !450
  %152 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %151, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !457
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %153, ptr noundef %140)
  br label %154

154:                                              ; preds = %150, %126
  call void @mark_symbols_for_renaming(ptr noundef %115) #19
  %155 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %114, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !311
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %113, !llvm.loop !1235

158:                                              ; preds = %154, %107
  %159 = load ptr, ptr %7, align 8, !tbaa !311
  call void @gimple_seq_add_seq(ptr noundef %2, ptr noundef %159) #19
  br label %160

160:                                              ; preds = %158, %101
  %161 = load ptr, ptr @pretemp, align 8, !tbaa !311
  %162 = icmp eq ptr %161, null
  br i1 %162, label %167, label %163, !prof !1236

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.tree_common, ptr %161, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !322
  %166 = icmp eq ptr %12, %165
  br i1 %166, label %189, label %167, !prof !1237

167:                                              ; preds = %163, %160
  %168 = call ptr @create_tmp_var(ptr noundef %12, ptr noundef nonnull @.str.42) #19
  store ptr %168, ptr @pretemp, align 8, !tbaa !311
  %169 = load i64, ptr %168, align 8
  %170 = trunc i64 %169 to i16
  switch i16 %170, label %175 [
    i16 32, label %171
    i16 34, label %173
  ], !prof !1233

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.tree_var_decl, ptr %168, i64 0, i32 1
  br label %180

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.tree_parm_decl, ptr %168, i64 0, i32 2
  br label %180

175:                                              ; preds = %167
  %176 = and i64 %169, 65535
  %177 = icmp eq i64 %176, 36
  %178 = getelementptr inbounds %struct.tree_result_decl, ptr %168, i64 0, i32 1
  %179 = select i1 %177, ptr %178, ptr null
  br label %180

180:                                              ; preds = %175, %173, %171
  %181 = phi ptr [ %172, %171 ], [ %174, %173 ], [ %179, %175 ]
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %184, !prof !540

183:                                              ; preds = %180
  call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 144, ptr noundef nonnull @.str.1) #19
  br label %184

184:                                              ; preds = %183, %180
  %185 = load ptr, ptr %181, align 8, !tbaa !311
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %189, !prof !1234

187:                                              ; preds = %184
  %188 = call ptr @create_var_ann(ptr noundef nonnull %168) #19
  br label %189

189:                                              ; preds = %187, %184, %163
  %190 = load ptr, ptr @pretemp, align 8, !tbaa !311
  %191 = call zeroext i8 @add_referenced_var(ptr noundef %190) #19
  %192 = load i64, ptr %12, align 8
  %193 = trunc i64 %192 to i32
  %194 = and i32 %193, 65535
  %195 = add nsw i32 %194, -13
  %196 = icmp ult i32 %195, 2
  br i1 %196, label %197, label %201, !prof !1231

197:                                              ; preds = %189
  %198 = getelementptr inbounds %struct.tree_decl_common, ptr %190, i64 0, i32 2
  %199 = load i64, ptr %198, align 8
  %200 = or i64 %199, 134217728
  store i64 %200, ptr %198, align 8
  br label %201

201:                                              ; preds = %189, %197
  %202 = call ptr @gimple_build_assign_stat(ptr noundef %190, ptr noundef %104) #19
  %203 = load ptr, ptr @cfun, align 8, !tbaa !311
  %204 = call ptr @make_ssa_name_fn(ptr noundef %203, ptr noundef %190, ptr noundef %202) #19
  %205 = load i32, ptr %202, align 8
  %206 = and i32 %205, 255
  %207 = add nsw i32 %206, -10
  %208 = icmp ult i32 %207, -9
  br i1 %208, label %213, label %209, !prof !1231

209:                                              ; preds = %201
  %210 = getelementptr inbounds %struct.gimple_statement_base, ptr %202, i64 0, i32 3
  %211 = load i32, ptr %210, align 4, !tbaa !322
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214, !prof !1231

213:                                              ; preds = %209, %201
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %214

214:                                              ; preds = %213, %209
  %215 = load i32, ptr %202, align 8
  %216 = and i32 %215, 255
  %217 = zext nneg i32 %216 to i64
  %218 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !326
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %220
  %222 = load i64, ptr %221, align 8, !tbaa !379
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %225, !prof !1231

224:                                              ; preds = %214
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %225

225:                                              ; preds = %224, %214
  %226 = getelementptr inbounds i8, ptr %202, i64 %222
  store ptr %204, ptr %226, align 8, !tbaa !311
  %227 = icmp eq ptr %204, null
  br i1 %227, label %234, label %228, !prof !1231

228:                                              ; preds = %225
  %229 = load i64, ptr %204, align 8
  %230 = and i64 %229, 65535
  %231 = icmp eq i64 %230, 141
  br i1 %231, label %232, label %234, !prof !1215

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.tree_ssa_name, ptr %204, i64 0, i32 2
  store ptr %202, ptr %233, align 8, !tbaa !322
  br label %234

234:                                              ; preds = %225, %228, %232
  %235 = load i32, ptr %202, align 8
  %236 = and i32 %235, -2049
  store i32 %236, ptr %202, align 8
  call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef nonnull %202) #19
  %237 = load ptr, ptr @inserted_exprs, align 8, !tbaa !311
  %238 = icmp eq ptr %237, null
  br i1 %238, label %244, label %239, !prof !1231

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.VEC_gimple_base, ptr %237, i64 0, i32 1
  %241 = load i32, ptr %240, align 4, !tbaa !783
  %242 = load i32, ptr %237, align 8, !tbaa !785
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %246, !prof !1238

244:                                              ; preds = %234, %239
  %245 = call ptr @vec_heap_p_reserve(ptr noundef %237, i32 noundef 1) #19
  store ptr %245, ptr @inserted_exprs, align 8, !tbaa !311
  br label %246

246:                                              ; preds = %239, %244
  %247 = load ptr, ptr @inserted_exprs, align 8, !tbaa !311
  %248 = load i32, ptr %247, align 8, !tbaa !785
  %249 = add i32 %248, 1
  store i32 %249, ptr %247, align 8, !tbaa !785
  %250 = zext i32 %248 to i64
  %251 = getelementptr inbounds %struct.VEC_gimple_base, ptr %247, i64 0, i32 2, i64 %250
  store ptr %202, ptr %251, align 8, !tbaa !311
  call void @mark_symbols_for_renaming(ptr noundef nonnull %202) #19
  %252 = call ptr @VN_INFO_GET(ptr noundef %204) #19
  store ptr %204, ptr %252, align 8, !tbaa !769
  %253 = load i32, ptr %1, align 8, !tbaa !331
  switch i32 %253, label %276 [
    i32 3, label %254
    i32 0, label %262
    i32 1, label %268
    i32 2, label %272
  ], !prof !333

254:                                              ; preds = %246
  %255 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !322
  %257 = call i32 @get_constant_value_id(ptr noundef %256) #19
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %277, !prof !334

259:                                              ; preds = %254
  %260 = load ptr, ptr %255, align 8, !tbaa !322
  %261 = call i32 @get_or_alloc_constant_value_id(ptr noundef %260) #19
  call void @add_to_value(i32 noundef %261, ptr noundef nonnull %1)
  br label %277

262:                                              ; preds = %246
  %263 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %264 = load ptr, ptr %263, align 8, !tbaa !322
  %265 = call ptr @VN_INFO(ptr noundef %264) #19
  %266 = getelementptr inbounds %struct.vn_ssa_aux, ptr %265, i64 0, i32 2
  %267 = load i32, ptr %266, align 8, !tbaa !335
  br label %277

268:                                              ; preds = %246
  %269 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !322
  %271 = load i32, ptr %270, align 8, !tbaa !337
  br label %277

272:                                              ; preds = %246
  %273 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !322
  %275 = load i32, ptr %274, align 8, !tbaa !339
  br label %277

276:                                              ; preds = %246
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %277

277:                                              ; preds = %254, %259, %262, %268, %272, %276
  %278 = phi i32 [ 0, %276 ], [ %275, %272 ], [ %271, %268 ], [ %267, %262 ], [ %261, %259 ], [ %257, %254 ]
  %279 = call ptr @VN_INFO(ptr noundef %204) #19
  %280 = getelementptr inbounds %struct.vn_ssa_aux, ptr %279, i64 0, i32 2
  store i32 %278, ptr %280, align 8, !tbaa !335
  %281 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %204)
  call void @add_to_value(i32 noundef %278, ptr noundef %281)
  %282 = load i8, ptr @in_fre, align 1, !tbaa !322
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %284, label %289, !prof !1215

284:                                              ; preds = %277
  %285 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !450
  %287 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %286, i64 0, i32 6
  %288 = load ptr, ptr %287, align 8, !tbaa !708
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %288, ptr noundef %281)
  br label %289

289:                                              ; preds = %284, %277
  %290 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !450
  %292 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %291, i64 0, i32 3
  %293 = load ptr, ptr %292, align 8, !tbaa !457
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %293, ptr noundef %281)
  %294 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 1), align 4, !tbaa !812
  %295 = add nsw i32 %294, 1
  store i32 %295, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 1), align 4, !tbaa !812
  %296 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %297 = icmp eq ptr %296, null
  br i1 %297, label %309, label %298, !prof !1215

298:                                              ; preds = %289
  %299 = load i32, ptr @dump_flags, align 4, !tbaa !326
  %300 = and i32 %299, 8
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %309, label %302

302:                                              ; preds = %298
  %303 = call i64 @fwrite(ptr nonnull @.str.55, i64 9, i64 1, ptr nonnull %296)
  %304 = load ptr, ptr @dump_file, align 8, !tbaa !311
  call void @print_gimple_stmt(ptr noundef %304, ptr noundef nonnull %202, i32 noundef 0, i32 noundef 0) #19
  %305 = load ptr, ptr @dump_file, align 8, !tbaa !311
  %306 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %307 = load i32, ptr %306, align 8, !tbaa !432
  %308 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %305, ptr noundef nonnull @.str.56, i32 noundef %307)
  br label %309

309:                                              ; preds = %90, %289, %298, %302, %11
  %310 = phi ptr [ null, %11 ], [ %204, %302 ], [ %204, %298 ], [ %204, %289 ], [ null, %90 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  ret ptr %310
}

declare void @gsi_insert_seq_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_or_generate_expression(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #12 !prof !1239 !PGOFuncName !1240 {
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !450
  %7 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !457
  %9 = load i32, ptr %1, align 8, !tbaa !331
  switch i32 %9, label %32 [
    i32 3, label %10
    i32 0, label %18
    i32 1, label %24
    i32 2, label %28
  ], !prof !333

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !322
  %13 = tail call i32 @get_constant_value_id(ptr noundef %12) #19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %33, !prof !334

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 8, !tbaa !322
  %17 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %16) #19
  tail call void @add_to_value(i32 noundef %17, ptr noundef nonnull %1)
  br label %33

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !322
  %21 = tail call ptr @VN_INFO(ptr noundef %20) #19
  %22 = getelementptr inbounds %struct.vn_ssa_aux, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !335
  br label %33

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !322
  %27 = load i32, ptr %26, align 8, !tbaa !337
  br label %33

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !322
  %31 = load i32, ptr %30, align 8, !tbaa !339
  br label %33

32:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %33

33:                                               ; preds = %10, %15, %18, %24, %28, %32
  %34 = phi i32 [ 0, %32 ], [ %31, %28 ], [ %27, %24 ], [ %23, %18 ], [ %17, %15 ], [ %13, %10 ]
  %35 = tail call fastcc ptr @bitmap_find_leader(ptr noundef %8, i32 noundef %34, ptr noundef %3)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37, !prof !1241

37:                                               ; preds = %33
  %38 = load i32, ptr %35, align 8, !tbaa !331
  switch i32 %38, label %42 [
    i32 0, label %39
    i32 3, label %39
  ], !prof !1242

39:                                               ; preds = %37, %37
  %40 = getelementptr inbounds %struct.pre_expr_d, ptr %35, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !322
  br label %42

42:                                               ; preds = %39, %37, %33
  %43 = phi ptr [ null, %33 ], [ null, %37 ], [ %41, %39 ]
  %44 = icmp ne ptr %43, null
  %45 = load i8, ptr @in_fre, align 1
  %46 = icmp ne i8 %45, 0
  %47 = select i1 %44, i1 true, i1 %46, !prof !1243
  br i1 %47, label %154, label %48, !prof !1243

48:                                               ; preds = %42
  %49 = tail call fastcc i32 @get_expr_value_id(ptr noundef nonnull %1)
  %50 = load ptr, ptr @value_expressions, align 8
  %51 = zext i32 %49 to i64
  %52 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %50, i64 0, i32 2, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !311
  %54 = load ptr, ptr %53, align 8, !tbaa !351
  %55 = load ptr, ptr %54, align 8, !tbaa !375
  %56 = icmp eq ptr %55, null
  %57 = select i1 %56, ptr @bitmap_zero_bits, ptr %55
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !377
  %60 = shl i32 %59, 7
  %61 = getelementptr inbounds %struct.bitmap_element_def, ptr %57, i64 0, i32 3
  %62 = load i64, ptr %61, align 8, !tbaa !379
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = or disjoint i32 %60, %64
  br label %66

66:                                               ; preds = %142, %48
  %67 = phi i32 [ 0, %48 ], [ %124, %142 ]
  %68 = phi i64 [ %62, %48 ], [ %143, %142 ]
  %69 = phi ptr [ %57, %48 ], [ %126, %142 ]
  %70 = phi i32 [ %65, %48 ], [ %144, %142 ]
  %71 = phi ptr [ null, %48 ], [ %140, %142 ]
  %72 = phi i8 [ 0, %48 ], [ %141, %142 ]
  %73 = icmp eq i64 %68, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %102, %66
  %75 = phi i32 [ %67, %66 ], [ %103, %102 ]
  %76 = phi i64 [ %68, %66 ], [ %107, %102 ]
  %77 = phi ptr [ %69, %66 ], [ %94, %102 ]
  %78 = phi i32 [ %70, %66 ], [ %104, %102 ]
  %79 = and i64 %76, 1
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %123

81:                                               ; preds = %74, %81
  %82 = phi i32 [ %85, %81 ], [ %78, %74 ]
  %83 = phi i64 [ %84, %81 ], [ %76, %74 ]
  %84 = lshr exact i64 %83, 1
  %85 = add i32 %82, 1
  %86 = and i64 %83, 2
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %81, label %123, !llvm.loop !380

88:                                               ; preds = %66
  %89 = add i32 %70, 63
  %90 = and i32 %89, -64
  %91 = add i32 %67, 1
  br label %92

92:                                               ; preds = %119, %88
  %93 = phi i64 [ %68, %88 ], [ %114, %119 ]
  %94 = phi ptr [ %69, %88 ], [ %117, %119 ]
  %95 = phi i32 [ %90, %88 ], [ %122, %119 ]
  %96 = phi i32 [ %91, %88 ], [ 0, %119 ]
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %113, label %98

98:                                               ; preds = %92
  %99 = add i32 %95, 128
  %100 = shl i32 %96, 6
  %101 = sub i32 %99, %100
  br label %102

102:                                              ; preds = %98, %109
  %103 = phi i32 [ %111, %109 ], [ %96, %98 ]
  %104 = phi i32 [ %110, %109 ], [ %95, %98 ]
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds %struct.bitmap_element_def, ptr %94, i64 0, i32 3, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !379
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %74

109:                                              ; preds = %102
  %110 = add i32 %104, 64
  %111 = add i32 %103, 1
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %102, !llvm.loop !381

113:                                              ; preds = %109, %92
  %114 = phi i64 [ %93, %92 ], [ %107, %109 ]
  %115 = phi i32 [ %95, %92 ], [ %101, %109 ]
  %116 = phi i32 [ %96, %92 ], [ 2, %109 ]
  %117 = load ptr, ptr %94, align 8, !tbaa !382
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.bitmap_element_def, ptr %117, i64 0, i32 2
  %121 = load i32, ptr %120, align 8, !tbaa !377
  %122 = shl i32 %121, 7
  br label %92, !llvm.loop !383

123:                                              ; preds = %113, %81, %74
  %124 = phi i32 [ %75, %74 ], [ %75, %81 ], [ %116, %113 ]
  %125 = phi i64 [ %76, %74 ], [ %84, %81 ], [ %114, %113 ]
  %126 = phi ptr [ %77, %74 ], [ %77, %81 ], [ %117, %113 ]
  %127 = phi i32 [ %78, %74 ], [ %85, %81 ], [ %115, %113 ]
  %128 = phi i1 [ false, %74 ], [ false, %81 ], [ true, %113 ]
  br i1 %128, label %145, label %129

129:                                              ; preds = %123
  %130 = load ptr, ptr @expressions, align 8
  %131 = zext i32 %127 to i64
  %132 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %130, i64 0, i32 2, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !311
  %134 = load i32, ptr %133, align 8, !tbaa !331
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %129
  %137 = tail call fastcc ptr @get_expr_type(ptr noundef nonnull %1)
  %138 = tail call fastcc ptr @create_expression_by_pieces(ptr noundef %0, ptr noundef nonnull %133, ptr noundef %2, ptr noundef %3, ptr noundef %137)
  br label %139

139:                                              ; preds = %129, %136
  %140 = phi ptr [ %138, %136 ], [ %71, %129 ]
  %141 = phi i8 [ 1, %136 ], [ %72, %129 ]
  br i1 %135, label %142, label %145

142:                                              ; preds = %139
  %143 = lshr i64 %125, 1
  %144 = add i32 %127, 1
  br label %66, !llvm.loop !1244

145:                                              ; preds = %139, %123
  %146 = phi ptr [ %140, %139 ], [ %71, %123 ]
  %147 = phi i8 [ %141, %139 ], [ %72, %123 ]
  %148 = icmp ne i8 %147, 0
  %149 = icmp eq ptr %3, null
  %150 = or i1 %149, %148
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = icmp eq i8 %147, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %151
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2986, ptr noundef nonnull @.str.1) #19
  br label %154

154:                                              ; preds = %145, %151, %153, %42
  %155 = phi ptr [ %43, %42 ], [ %146, %153 ], [ %146, %151 ], [ null, %145 ]
  ret ptr %155
}

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #3

declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @create_component_ref_by_pieces_1(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #12 !prof !1229 !PGOFuncName !1245 {
  %6 = getelementptr inbounds %struct.vn_reference_s, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !365
  %8 = load i32, ptr %2, align 4, !tbaa !326
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9
  %11 = add i32 %8, 1
  store i32 %11, ptr %2, align 4, !tbaa !326
  %12 = load i32, ptr %10, align 8, !tbaa !368
  switch i32 %12, label %214 [
    i32 59, label %13
    i32 152, label %60
    i32 121, label %92
    i32 43, label %102
    i32 44, label %102
    i32 118, label %102
    i32 48, label %110
    i32 49, label %110
    i32 47, label %110
    i32 42, label %127
    i32 46, label %146
    i32 45, label %146
    i32 41, label %188
    i32 141, label %206
    i32 28, label %211
    i32 23, label %211
    i32 26, label %211
    i32 27, label %211
    i32 24, label %211
    i32 51, label %211
    i32 32, label %211
    i32 34, label %211
    i32 33, label %211
    i32 36, label %211
    i32 29, label %211
  ], !prof !1246

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !371
  %16 = icmp eq ptr %7, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %7, align 8, !tbaa !366
  %19 = add i32 %18, -1
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 3
  br label %22

22:                                               ; preds = %13, %17
  %23 = phi i64 [ %21, %17 ], [ 34359738360, %13 ]
  %24 = tail call ptr @xmalloc(i64 noundef %23) #19
  br label %25

25:                                               ; preds = %35, %22
  %26 = phi i32 [ 0, %22 ], [ %39, %35 ]
  %27 = load i32, ptr %2, align 4, !tbaa !326
  %28 = load ptr, ptr %6, align 8, !tbaa !365
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %28, align 8, !tbaa !366
  br label %32

32:                                               ; preds = %25, %30
  %33 = phi i32 [ %31, %30 ], [ 0, %25 ]
  %34 = icmp ult i32 %27, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  %37 = zext i32 %26 to i64
  %38 = getelementptr inbounds ptr, ptr %24, i64 %37
  store ptr %36, ptr %38, align 8, !tbaa !311
  %39 = add i32 %26, 1
  br label %25, !llvm.loop !1247

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !969
  %43 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !370
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 29
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %44) #19
  br label %50

50:                                               ; preds = %40, %48
  %51 = phi ptr [ %49, %48 ], [ %44, %40 ]
  %52 = tail call ptr @build_call_array_loc(i32 noundef 0, ptr noundef %42, ptr noundef %51, i32 noundef %26, ptr noundef %24) #19
  tail call void @free(ptr noundef %24)
  %53 = icmp eq ptr %15, null
  br i1 %53, label %215, label %54

54:                                               ; preds = %50
  %55 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef nonnull %15)
  %56 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %55, ptr noundef %3, ptr noundef %4)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %215, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_exp, ptr %52, i64 1, i32 0, i32 1
  store ptr %56, ptr %59, align 8, !tbaa !322
  br label %215

60:                                               ; preds = %5
  %61 = zext i32 %11 to i64
  %62 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  %63 = icmp eq ptr %62, null
  br i1 %63, label %215, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !370
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef nonnull %66)
  %70 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %69, ptr noundef %3, ptr noundef %4)
  %71 = icmp eq ptr %70, null
  br i1 %71, label %215, label %72

72:                                               ; preds = %68, %64
  %73 = phi ptr [ %70, %68 ], [ null, %64 ]
  %74 = load i64, ptr %62, align 8
  %75 = and i64 %74, 65535
  %76 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !326
  %78 = icmp eq i32 %77, 3
  %79 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !969
  %81 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !371
  %83 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !372
  %85 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %61, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !371
  %87 = tail call ptr @unshare_expr(ptr noundef %86) #19
  br i1 %78, label %88, label %90

88:                                               ; preds = %72
  %89 = tail call ptr @build6_stat(i32 noundef 152, ptr noundef %80, ptr noundef nonnull %62, ptr noundef null, ptr noundef %73, ptr noundef %82, ptr noundef %84, ptr noundef %87) #19
  br label %215

90:                                               ; preds = %72
  %91 = tail call ptr @build6_stat(i32 noundef 152, ptr noundef %80, ptr noundef null, ptr noundef nonnull %62, ptr noundef %73, ptr noundef %82, ptr noundef %84, ptr noundef %87) #19
  br label %215

92:                                               ; preds = %5
  %93 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !370
  %95 = icmp eq ptr %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %92
  %97 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %94) #19
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2751, ptr noundef nonnull @.str.1) #19
  br label %100

100:                                              ; preds = %96, %99
  %101 = load ptr, ptr %93, align 8, !tbaa !370
  br label %215

102:                                              ; preds = %5, %5, %92, %5
  %103 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  %104 = icmp eq ptr %103, null
  br i1 %104, label %215, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %10, align 8, !tbaa !368
  %107 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !969
  %109 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %106, ptr noundef %108, ptr noundef nonnull %103) #19
  br label %215

110:                                              ; preds = %5, %5, %5
  %111 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  %112 = icmp eq ptr %111, null
  br i1 %112, label %215, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !969
  %116 = tail call ptr @build_pointer_type(ptr noundef %115) #19
  %117 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %116, ptr noundef nonnull %111) #19
  %118 = load i32, ptr %10, align 8, !tbaa !368
  %119 = icmp eq i32 %118, 49
  %120 = load ptr, ptr %114, align 8, !tbaa !969
  br i1 %119, label %121, label %125

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !371
  %124 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 49, ptr noundef %120, ptr noundef %117, ptr noundef %123) #19
  br label %215

125:                                              ; preds = %113
  %126 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %118, ptr noundef %120, ptr noundef %117) #19
  br label %215

127:                                              ; preds = %5
  %128 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  %129 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !370
  %131 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %130)
  %132 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !371
  %134 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %133)
  %135 = icmp eq ptr %128, null
  br i1 %135, label %215, label %136

136:                                              ; preds = %127
  %137 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %131, ptr noundef %3, ptr noundef %4)
  %138 = icmp eq ptr %137, null
  br i1 %138, label %215, label %139

139:                                              ; preds = %136
  %140 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %134, ptr noundef %3, ptr noundef %4)
  %141 = icmp eq ptr %140, null
  br i1 %141, label %215, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !969
  %145 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 42, ptr noundef %144, ptr noundef nonnull %128, ptr noundef nonnull %137, ptr noundef nonnull %140) #19
  br label %215

146:                                              ; preds = %5, %5
  %147 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !370
  %149 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !371
  %151 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 4
  %152 = load ptr, ptr %151, align 8, !tbaa !372
  %153 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  %154 = icmp eq ptr %153, null
  br i1 %154, label %215, label %155, !prof !540

155:                                              ; preds = %146
  %156 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %148)
  %157 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %156, ptr noundef %3, ptr noundef %4)
  %158 = icmp eq ptr %157, null
  br i1 %158, label %215, label %159, !prof !540

159:                                              ; preds = %155
  %160 = icmp eq ptr %150, null
  br i1 %160, label %165, label %161, !prof !540

161:                                              ; preds = %159
  %162 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef nonnull %150)
  %163 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %162, ptr noundef %3, ptr noundef %4)
  %164 = icmp eq ptr %163, null
  br i1 %164, label %215, label %165, !prof !540

165:                                              ; preds = %161, %159
  %166 = phi ptr [ %163, %161 ], [ null, %159 ]
  %167 = icmp eq ptr %152, null
  br i1 %167, label %182, label %168, !prof !540

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.tree_common, ptr %153, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !322
  %171 = getelementptr inbounds %struct.tree_common, ptr %170, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !322
  %173 = getelementptr inbounds %struct.tree_type, ptr %172, i64 0, i32 7
  %174 = load i32, ptr %173, align 8, !tbaa !322
  %175 = lshr i32 %174, 3
  %176 = zext nneg i32 %175 to i64
  %177 = tail call ptr @size_int_kind(i64 noundef %176, i32 noundef 0) #19
  %178 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 76, ptr noundef nonnull %152, ptr noundef %177) #19
  %179 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %178)
  %180 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %179, ptr noundef %3, ptr noundef %4)
  %181 = icmp eq ptr %180, null
  br i1 %181, label %215, label %182, !prof !540

182:                                              ; preds = %168, %165
  %183 = phi ptr [ %180, %168 ], [ null, %165 ]
  %184 = load i32, ptr %10, align 8, !tbaa !368
  %185 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !969
  %187 = tail call ptr @build4_stat(i32 noundef %184, ptr noundef %186, ptr noundef nonnull %153, ptr noundef nonnull %157, ptr noundef %166, ptr noundef %183) #19
  br label %215

188:                                              ; preds = %5
  %189 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 3
  %190 = load ptr, ptr %189, align 8, !tbaa !371
  %191 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  %192 = icmp eq ptr %191, null
  br i1 %192, label %215, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !370
  %196 = icmp eq ptr %190, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef nonnull %190)
  %199 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %198, ptr noundef %3, ptr noundef %4)
  %200 = icmp eq ptr %199, null
  br i1 %200, label %215, label %201

201:                                              ; preds = %197, %193
  %202 = phi ptr [ %199, %197 ], [ null, %193 ]
  %203 = getelementptr inbounds %struct.tree_common, ptr %195, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !322
  %205 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 41, ptr noundef %204, ptr noundef nonnull %191, ptr noundef %195, ptr noundef %202) #19
  br label %215

206:                                              ; preds = %5
  %207 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !370
  %209 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %208)
  %210 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %209, ptr noundef %3, ptr noundef %4)
  br label %215

211:                                              ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %212 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %7, i64 0, i32 2, i64 %9, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !370
  br label %215

214:                                              ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2904, ptr noundef nonnull @.str.1) #19
  br label %215

215:                                              ; preds = %168, %146, %110, %50, %58, %201, %188, %197, %182, %155, %161, %142, %127, %136, %139, %125, %121, %105, %102, %88, %90, %60, %68, %54, %214, %211, %206, %100
  %216 = phi ptr [ null, %214 ], [ %213, %211 ], [ %210, %206 ], [ %101, %100 ], [ null, %54 ], [ %89, %88 ], [ %91, %90 ], [ null, %60 ], [ null, %68 ], [ %109, %105 ], [ null, %102 ], [ %124, %121 ], [ %126, %125 ], [ %145, %142 ], [ null, %127 ], [ null, %136 ], [ null, %139 ], [ %187, %182 ], [ null, %155 ], [ null, %161 ], [ %205, %201 ], [ null, %188 ], [ null, %197 ], [ %52, %58 ], [ %52, %50 ], [ null, %110 ], [ null, %146 ], [ null, %168 ]
  ret ptr %216
}

declare ptr @build_call_array_loc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build6_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

declare void @print_gimple_expr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @propagate_tree_value_into_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vn_get_expr_for(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @may_propagate_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #18

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nofree nounwind }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!309}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!35 = !{ptr @add_to_value, ptr @get_constant_value_id, i64 580}
!36 = !{ptr @add_to_value, ptr @VN_INFO, i64 494552}
!37 = !{ptr @add_to_value, ptr @vec_heap_p_reserve_exact, i64 155}
!38 = !{ptr @add_to_value, ptr @pool_alloc, i64 379980}
!39 = !{ptr @add_to_value, ptr @bitmap_obstack_alloc_stat, i64 759960}
!40 = !{ptr @add_to_value, ptr @bitmap_set_bit, i64 1339042}
!41 = !{ptr @add_to_value, ptr @htab_find_slot, i64 197709}
!42 = !{ptr @get_expr_value_id, ptr @VN_INFO, i64 1}
!43 = !{ptr @do_pre, ptr @execute_pre, i64 38}
!44 = !{ptr @execute_fre, ptr @execute_pre, i64 38}
!45 = !{ptr @alloc_expression_id, ptr @vec_heap_p_reserve, i64 1}
!46 = !{ptr @alloc_expression_id, ptr @htab_find_slot, i64 330}
!47 = !{ptr @execute_pre, ptr @optimize_function_for_speed_p, i64 76}
!48 = !{ptr @execute_pre, ptr @loop_optimizer_init, i64 38}
!49 = !{ptr @execute_pre, ptr @run_scc_vn, i64 76}
!50 = !{ptr @execute_pre, ptr @vec_heap_p_reserve, i64 834}
!51 = !{ptr @execute_pre, ptr @get_max_value_id, i64 152}
!52 = !{ptr @execute_pre, ptr @vec_heap_p_reserve_exact, i64 6890}
!53 = !{ptr @execute_pre, ptr @connect_infinite_loops_to_exit, i64 76}
!54 = !{ptr @execute_pre, ptr @xmalloc, i64 228}
!55 = !{ptr @execute_pre, ptr @sbitmap_alloc, i64 138}
!56 = !{ptr @execute_pre, ptr @sbitmap_zero, i64 107}
!57 = !{ptr @execute_pre, ptr @free, i64 503504}
!58 = !{ptr @execute_pre, ptr @xcalloc, i64 488732}
!59 = !{ptr @execute_pre, ptr @calculate_dominance_info, i64 152}
!60 = !{ptr @execute_pre, ptr @bitmap_obstack_initialize, i64 76}
!61 = !{ptr @execute_pre, ptr @bitmap_obstack_alloc_stat, i64 3989218}
!62 = !{ptr @execute_pre, ptr @htab_create, i64 152}
!63 = !{ptr @execute_pre, ptr @create_alloc_pool, i64 152}
!64 = !{ptr @execute_pre, ptr @pool_alloc, i64 2618610}
!65 = !{ptr @execute_pre, ptr @scev_initialize, i64 76}
!66 = !{ptr @execute_pre, ptr @is_gimple_reg, i64 186202}
!67 = !{ptr @execute_pre, ptr @get_or_alloc_expr_for_name, i64 71382}
!68 = !{ptr @execute_pre, ptr @VN_INFO, i64 2388542}
!69 = !{ptr @execute_pre, ptr @add_to_value, i64 668014}
!70 = !{ptr @execute_pre, ptr @value_id_constant_p, i64 1537070}
!71 = !{ptr @execute_pre, ptr @bitmap_set_bit, i64 1388185}
!72 = !{ptr @execute_pre, ptr @htab_find_slot, i64 536293}
!73 = !{ptr @execute_pre, ptr @bitmap_value_insert_into_set, i64 68872}
!74 = !{ptr @execute_pre, ptr @first_dom_son, i64 488657}
!75 = !{ptr @execute_pre, ptr @next_dom_son, i64 488581}
!76 = !{ptr @execute_pre, ptr @get_immediate_dominator, i64 488581}
!77 = !{ptr @execute_pre, ptr @bitmap_copy, i64 992072}
!78 = !{ptr @execute_pre, ptr @gsi_start_phis, i64 977162}
!79 = !{ptr @execute_pre, ptr @get_constant_value_id, i64 1566}
!80 = !{ptr @execute_pre, ptr @stmt_ends_bb_p, i64 138258}
!81 = !{ptr @execute_pre, ptr @gimple_call_flags, i64 276390}
!82 = !{ptr @execute_pre, ptr @vec_heap_o_reserve, i64 144}
!83 = !{ptr @execute_pre, ptr @stmt_could_throw_p, i64 696025}
!84 = !{ptr @execute_pre, ptr @ssa_undefined_value_p, i64 58403}
!85 = !{ptr @execute_pre, ptr @gimple_get_lhs, i64 1289053}
!86 = !{ptr @execute_pre, ptr @vn_nary_op_lookup_pieces, i64 86355}
!87 = !{ptr @execute_pre, ptr @vn_reference_lookup, i64 171154}
!88 = !{ptr @execute_pre, ptr @sbitmap_ones, i64 62}
!89 = !{ptr @execute_pre, ptr @phi_translate_set, i64 9153}
!90 = !{ptr @execute_pre, ptr @bitmap_set_and, i64 5744}
!91 = !{ptr @execute_pre, ptr @bitmap_set_subtract, i64 24668}
!92 = !{ptr @execute_pre, ptr @sorted_array_from_bitmap_set, i64 15967}
!93 = !{ptr @execute_pre, ptr @valid_in_sets, i64 13164}
!94 = !{ptr @execute_pre, ptr @bitmap_clear_bit, i64 9164}
!95 = !{ptr @execute_pre, ptr @bitmap_equal_p, i64 15967}
!96 = !{ptr @execute_pre, ptr @bitmap_obstack_free, i64 88612}
!97 = !{ptr @execute_pre, ptr @statistics_histogram_event, i64 93}
!98 = !{ptr @execute_pre, ptr @mark_dfs_back_edges, i64 31}
!99 = !{ptr @execute_pre, ptr @bitmap_count_bits, i64 4274}
!100 = !{ptr @execute_pre, ptr @bitmap_ior_into, i64 14532}
!101 = !{ptr @execute_pre, ptr @bitmap_bit_p, i64 401408}
!102 = !{ptr @execute_pre, ptr @insert_aux, i64 62}
!103 = !{ptr @execute_pre, ptr @gimple_assign_ssa_name_copy_p, i64 400986}
!104 = !{ptr @execute_pre, ptr @gimple_assign_single_p, i64 1096931}
!105 = !{ptr @execute_pre, ptr @is_gimple_min_invariant, i64 171086}
!106 = !{ptr @execute_pre, ptr @gimple_expr_type, i64 16188}
!107 = !{ptr @execute_pre, ptr @useless_type_conversion_p, i64 16188}
!108 = !{ptr @execute_pre, ptr @propagate_tree_value_into_stmt, i64 16188}
!109 = !{ptr @execute_pre, ptr @gimple_set_modified, i64 16188}
!110 = !{ptr @execute_pre, ptr @update_stmt_operands, i64 16188}
!111 = !{ptr @execute_pre, ptr @maybe_clean_or_replace_eh_stmt, i64 16188}
!112 = !{ptr @execute_pre, ptr @fold_binary_loc, i64 284328}
!113 = !{ptr @execute_pre, ptr @bitmap_find_leader, i64 3003}
!114 = !{ptr @execute_pre, ptr @statistics_counter_event, i64 380}
!115 = !{ptr @execute_pre, ptr @remove_fake_exit_edges, i64 76}
!116 = !{ptr @execute_pre, ptr @gsi_commit_edge_inserts, i64 76}
!117 = !{ptr @execute_pre, ptr @free_scc_vn, i64 76}
!118 = !{ptr @execute_pre, ptr @remove_dead_inserted_code, i64 38}
!119 = !{ptr @execute_pre, ptr @scev_finalize, i64 76}
!120 = !{ptr @execute_pre, ptr @bitmap_obstack_release, i64 76}
!121 = !{ptr @execute_pre, ptr @free_alloc_pool, i64 152}
!122 = !{ptr @execute_pre, ptr @htab_delete, i64 152}
!123 = !{ptr @execute_pre, ptr @free_dominance_info, i64 76}
!124 = !{ptr @execute_pre, ptr @loop_optimizer_finalize, i64 38}
!125 = !{ptr @remove_dead_inserted_code, ptr @vec_heap_p_reserve_exact, i64 38}
!126 = !{ptr @remove_dead_inserted_code, ptr @vec_heap_p_reserve, i64 23}
!127 = !{ptr @remove_dead_inserted_code, ptr @gsi_for_stmt, i64 2}
!128 = !{ptr @remove_dead_inserted_code, ptr @remove_phi_node, i64 2}
!129 = !{ptr @remove_dead_inserted_code, ptr @free, i64 31}
!130 = !{ptr @expr_pred_trans_eq, ptr @expressions_equal_p, i64 19}
!131 = !{ptr @expr_pred_trans_eq, ptr @types_compatible_p, i64 19}
!132 = !{ptr @expr_pred_trans_eq, ptr @vn_nary_op_eq, i64 855}
!133 = !{ptr @expr_pred_trans_eq, ptr @vn_reference_eq, i64 1860}
!134 = !{ptr @pre_expr_hash, ptr @iterative_hash_expr, i64 2448}
!135 = !{ptr @pre_expr_eq, ptr @expressions_equal_p, i64 2053}
!136 = !{ptr @pre_expr_eq, ptr @types_compatible_p, i64 2053}
!137 = !{ptr @pre_expr_eq, ptr @vn_nary_op_eq, i64 92846}
!138 = !{ptr @pre_expr_eq, ptr @vn_reference_eq, i64 201900}
!139 = !{ptr @get_or_alloc_expr_for_name, ptr @pool_alloc, i64 33641}
!140 = !{ptr @get_or_alloc_expr_for_name, ptr @vec_heap_p_reserve, i64 42}
!141 = !{ptr @get_or_alloc_expr_for_name, ptr @vec_heap_o_reserve, i64 8}
!142 = !{ptr @get_or_alloc_expr_for_name, ptr @htab_find_slot, i64 12321}
!143 = !{ptr @bitmap_value_insert_into_set, ptr @get_constant_value_id, i64 63}
!144 = !{ptr @bitmap_value_insert_into_set, ptr @VN_INFO, i64 53862}
!145 = !{ptr @bitmap_value_insert_into_set, ptr @value_id_constant_p, i64 72918}
!146 = !{ptr @bitmap_value_insert_into_set, ptr @bitmap_set_bit, i64 137197}
!147 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 16187}
!148 = !{ptr @phi_translate_set, ptr @bitmap_copy, i64 5340}
!149 = !{ptr @phi_translate_set, ptr @sorted_array_from_bitmap_set, i64 6483}
!150 = !{ptr @phi_translate_set, ptr @phi_translate, i64 4215}
!151 = !{ptr @phi_translate_set, ptr @bitmap_value_replace_in_set, i64 663}
!152 = !{ptr @phi_translate_set, ptr @bitmap_value_insert_into_set, i64 3404}
!153 = !{ptr @phi_translate_set, ptr @free, i64 3508}
!154 = !{ptr @bitmap_set_and, ptr @bitmap_obstack_alloc_stat, i64 5744}
!155 = !{ptr @bitmap_set_and, ptr @bitmap_and_into, i64 5744}
!156 = !{ptr @bitmap_set_and, ptr @bitmap_copy, i64 5744}
!157 = !{ptr @bitmap_set_and, ptr @get_constant_value_id, i64 1}
!158 = !{ptr @bitmap_set_and, ptr @VN_INFO, i64 1217}
!159 = !{ptr @bitmap_set_and, ptr @bitmap_bit_p, i64 1648}
!160 = !{ptr @bitmap_set_and, ptr @bitmap_clear_bit, i64 1500}
!161 = !{ptr @bitmap_set_and, ptr @bitmap_obstack_free, i64 5744}
!162 = !{ptr @bitmap_set_subtract, ptr @pool_alloc, i64 24668}
!163 = !{ptr @bitmap_set_subtract, ptr @bitmap_obstack_alloc_stat, i64 49336}
!164 = !{ptr @bitmap_set_subtract, ptr @bitmap_and_compl, i64 24668}
!165 = !{ptr @bitmap_set_subtract, ptr @get_constant_value_id, i64 12}
!166 = !{ptr @bitmap_set_subtract, ptr @VN_INFO, i64 10137}
!167 = !{ptr @bitmap_set_subtract, ptr @bitmap_set_bit, i64 13724}
!168 = !{ptr @sorted_array_from_bitmap_set, ptr @bitmap_count_bits, i64 26082}
!169 = !{ptr @sorted_array_from_bitmap_set, ptr @vec_heap_p_reserve_exact, i64 26082}
!170 = !{ptr @sorted_array_from_bitmap_set, ptr @bitmap_bit_p, i64 33337}
!171 = !{ptr @phi_translate, ptr @VN_INFO, i64 6661}
!172 = !{ptr @phi_translate, ptr @value_id_constant_p, i64 7254}
!173 = !{ptr @phi_translate, ptr @iterative_hash_expr, i64 18}
!174 = !{ptr @phi_translate, ptr @iterative_hash_hashval_t, i64 5458}
!175 = !{ptr @phi_translate, ptr @htab_find_slot_with_hash, i64 5458}
!176 = !{ptr @phi_translate, ptr @bitmap_find_leader, i64 704}
!177 = !{ptr @phi_translate, ptr @phi_translate, i64 660}
!178 = !{ptr @phi_translate, ptr @get_representative_for, i64 238}
!179 = !{ptr @phi_translate, ptr @vn_nary_op_lookup_pieces, i64 159}
!180 = !{ptr @phi_translate, ptr @is_gimple_min_invariant, i64 4508}
!181 = !{ptr @phi_translate, ptr @pool_alloc, i64 1071}
!182 = !{ptr @phi_translate, ptr @fully_constant_expression, i64 1071}
!183 = !{ptr @phi_translate, ptr @htab_find_slot, i64 1071}
!184 = !{ptr @phi_translate, ptr @get_next_value_id, i64 669}
!185 = !{ptr @phi_translate, ptr @get_max_value_id, i64 669}
!186 = !{ptr @phi_translate, ptr @vec_heap_p_reserve_exact, i64 669}
!187 = !{ptr @phi_translate, ptr @vn_nary_op_insert_pieces, i64 98}
!188 = !{ptr @phi_translate, ptr @alloc_expression_id, i64 702}
!189 = !{ptr @phi_translate, ptr @add_to_value, i64 1071}
!190 = !{ptr @phi_translate, ptr @vec_heap_o_reserve_exact, i64 1188}
!191 = !{ptr @phi_translate, ptr @free, i64 617}
!192 = !{ptr @phi_translate, ptr @ao_ref_init_from_vn_reference, i64 888}
!193 = !{ptr @phi_translate, ptr @find_edge, i64 3574}
!194 = !{ptr @phi_translate, ptr @get_continuation_for_phi, i64 888}
!195 = !{ptr @phi_translate, ptr @bitmap_obstack_free, i64 479}
!196 = !{ptr @phi_translate, ptr @vn_reference_lookup_pieces, i64 912}
!197 = !{ptr @phi_translate, ptr @vn_reference_insert_pieces, i64 571}
!198 = !{ptr @phi_translate, ptr @get_or_alloc_expr_for_constant, i64 2048}
!199 = !{ptr @phi_translate, ptr @ssa_undefined_value_p, i64 638}
!200 = !{ptr @phi_translate, ptr @get_or_alloc_expr_for_name, i64 638}
!201 = !{ptr @phi_translate, ptr @xmalloc, i64 1181}
!202 = !{ptr @bitmap_value_replace_in_set, ptr @get_constant_value_id, i64 32}
!203 = !{ptr @bitmap_value_replace_in_set, ptr @VN_INFO, i64 27446}
!204 = !{ptr @bitmap_value_replace_in_set, ptr @value_id_constant_p, i64 78248}
!205 = !{ptr @bitmap_value_replace_in_set, ptr @bitmap_bit_p, i64 95399}
!206 = !{ptr @bitmap_value_replace_in_set, ptr @bitmap_clear_bit, i64 20139}
!207 = !{ptr @bitmap_value_replace_in_set, ptr @bitmap_set_bit, i64 36749}
!208 = !{ptr @bitmap_value_replace_in_set, ptr @htab_find_slot, i64 2452}
!209 = !{ptr @get_representative_for, ptr @VN_INFO, i64 256}
!210 = !{ptr @get_representative_for, ptr @create_tmp_var, i64 36}
!211 = !{ptr @get_representative_for, ptr @create_var_ann, i64 36}
!212 = !{ptr @get_representative_for, ptr @gimple_build_nop, i64 93}
!213 = !{ptr @get_representative_for, ptr @make_ssa_name_fn, i64 93}
!214 = !{ptr @get_representative_for, ptr @VN_INFO_GET, i64 93}
!215 = !{ptr @get_representative_for, ptr @get_or_alloc_expr_for_name, i64 93}
!216 = !{ptr @get_representative_for, ptr @add_to_value, i64 93}
!217 = !{ptr @get_or_alloc_expr_for_constant, ptr @htab_find_slot, i64 2072}
!218 = !{ptr @get_or_alloc_expr_for_constant, ptr @pool_alloc, i64 197}
!219 = !{ptr @get_or_alloc_expr_for_constant, ptr @alloc_expression_id, i64 197}
!220 = !{ptr @get_or_alloc_expr_for_constant, ptr @get_or_alloc_constant_value_id, i64 197}
!221 = !{ptr @get_or_alloc_expr_for_constant, ptr @add_to_value, i64 197}
!222 = !{ptr @fully_constant_expression, ptr @is_gimple_min_invariant, i64 836}
!223 = !{ptr @fully_constant_expression, ptr @get_or_alloc_expr_for, i64 436}
!224 = !{ptr @fully_constant_expression, ptr @VN_INFO, i64 322}
!225 = !{ptr @fully_constant_expression, ptr @get_constant_for_value_id, i64 436}
!226 = !{ptr @fully_constant_expression, ptr @fold_binary_loc, i64 400}
!227 = !{ptr @bitmap_find_leader, ptr @value_id_constant_p, i64 10996}
!228 = !{ptr @bitmap_find_leader, ptr @bitmap_bit_p, i64 5389}
!229 = !{ptr @get_or_alloc_expr_for, ptr @get_or_alloc_expr_for_name, i64 442}
!230 = !{ptr @get_or_alloc_expr_for, ptr @is_gimple_min_invariant, i64 24}
!231 = !{ptr @get_or_alloc_expr_for, ptr @get_or_alloc_expr_for_constant, i64 24}
!232 = !{ptr @get_constant_for_value_id, ptr @value_id_constant_p, i64 436}
!233 = !{ptr @valid_in_sets, ptr @bitmap_bit_p, i64 15724}
!234 = !{ptr @valid_in_sets, ptr @VN_INFO, i64 6536}
!235 = !{ptr @valid_in_sets, ptr @value_id_constant_p, i64 6801}
!236 = !{ptr @valid_in_sets, ptr @get_constant_value_id, i64 1}
!237 = !{ptr @valid_in_sets, ptr @vn_nary_may_trap, i64 38}
!238 = !{ptr @valid_in_sets, ptr @dominated_by_p, i64 5096}
!239 = !{ptr @valid_in_sets, ptr @ao_ref_init_from_vn_reference, i64 2324}
!240 = !{ptr @valid_in_sets, ptr @stmt_may_clobber_ref_p_1, i64 2324}
!241 = !{ptr @valid_in_sets, ptr @bitmap_obstack_alloc_stat, i64 2791}
!242 = !{ptr @valid_in_sets, ptr @bitmap_set_bit, i64 7094}
!243 = !{ptr @insert_aux, ptr @get_immediate_dominator, i64 13316}
!244 = !{ptr @insert_aux, ptr @bitmap_value_replace_in_set, i64 27856}
!245 = !{ptr @insert_aux, ptr @sorted_array_from_bitmap_set, i64 2412}
!246 = !{ptr @insert_aux, ptr @get_constant_value_id, i64 5}
!247 = !{ptr @insert_aux, ptr @value_id_constant_p, i64 2065}
!248 = !{ptr @insert_aux, ptr @bitmap_bit_p, i64 2024}
!249 = !{ptr @insert_aux, ptr @xcalloc, i64 971}
!250 = !{ptr @insert_aux, ptr @phi_translate, i64 1789}
!251 = !{ptr @insert_aux, ptr @fully_constant_expression, i64 1787}
!252 = !{ptr @insert_aux, ptr @VN_INFO, i64 1320}
!253 = !{ptr @insert_aux, ptr @bitmap_find_leader, i64 1787}
!254 = !{ptr @insert_aux, ptr @optimize_edge_for_speed_p, i64 121}
!255 = !{ptr @insert_aux, ptr @vn_nary_op_eq, i64 14}
!256 = !{ptr @insert_aux, ptr @vn_reference_eq, i64 30}
!257 = !{ptr @insert_aux, ptr @dbg_cnt, i64 75}
!258 = !{ptr @insert_aux, ptr @insert_into_preds_of_block, i64 75}
!259 = !{ptr @insert_aux, ptr @free, i64 1783}
!260 = !{ptr @insert_aux, ptr @first_dom_son, i64 13316}
!261 = !{ptr @insert_aux, ptr @insert_aux, i64 13254}
!262 = !{ptr @insert_aux, ptr @next_dom_son, i64 13254}
!263 = !{ptr @insert_into_preds_of_block, ptr @VN_INFO, i64 240}
!264 = !{ptr @insert_into_preds_of_block, ptr @create_expression_by_pieces, i64 66}
!265 = !{ptr @insert_into_preds_of_block, ptr @useless_type_conversion_p, i64 123}
!266 = !{ptr @insert_into_preds_of_block, ptr @gsi_insert_seq_on_edge, i64 66}
!267 = !{ptr @insert_into_preds_of_block, ptr @get_or_alloc_expr_for_name, i64 141}
!268 = !{ptr @insert_into_preds_of_block, ptr @create_tmp_var, i64 41}
!269 = !{ptr @insert_into_preds_of_block, ptr @create_var_ann, i64 41}
!270 = !{ptr @insert_into_preds_of_block, ptr @add_referenced_var, i64 75}
!271 = !{ptr @insert_into_preds_of_block, ptr @create_phi_node, i64 75}
!272 = !{ptr @insert_into_preds_of_block, ptr @VN_INFO_GET, i64 75}
!273 = !{ptr @insert_into_preds_of_block, ptr @vec_heap_p_reserve, i64 37}
!274 = !{ptr @insert_into_preds_of_block, ptr @bitmap_set_bit, i64 375}
!275 = !{ptr @insert_into_preds_of_block, ptr @add_phi_arg, i64 189}
!276 = !{ptr @insert_into_preds_of_block, ptr @add_to_value, i64 75}
!277 = !{ptr @insert_into_preds_of_block, ptr @value_id_constant_p, i64 150}
!278 = !{ptr @insert_into_preds_of_block, ptr @htab_find_slot, i64 44}
!279 = !{ptr @insert_into_preds_of_block, ptr @bitmap_value_replace_in_set, i64 75}
!280 = !{ptr @create_expression_by_pieces, ptr @create_component_ref_by_pieces_1, i64 60}
!281 = !{ptr @create_expression_by_pieces, ptr @get_or_alloc_expr_for, i64 12}
!282 = !{ptr @create_expression_by_pieces, ptr @find_or_generate_expression, i64 12}
!283 = !{ptr @create_expression_by_pieces, ptr @fold_convert_loc, i64 12}
!284 = !{ptr @create_expression_by_pieces, ptr @fold_build2_stat_loc, i64 6}
!285 = !{ptr @create_expression_by_pieces, ptr @useless_type_conversion_p, i64 66}
!286 = !{ptr @create_expression_by_pieces, ptr @unshare_expr, i64 66}
!287 = !{ptr @create_expression_by_pieces, ptr @force_gimple_operand, i64 66}
!288 = !{ptr @create_expression_by_pieces, ptr @create_tmp_var, i64 6}
!289 = !{ptr @create_expression_by_pieces, ptr @create_var_ann, i64 6}
!290 = !{ptr @create_expression_by_pieces, ptr @add_referenced_var, i64 66}
!291 = !{ptr @create_expression_by_pieces, ptr @gimple_build_assign_stat, i64 66}
!292 = !{ptr @create_expression_by_pieces, ptr @make_ssa_name_fn, i64 66}
!293 = !{ptr @create_expression_by_pieces, ptr @gimple_seq_add_stmt, i64 66}
!294 = !{ptr @create_expression_by_pieces, ptr @vec_heap_p_reserve, i64 9}
!295 = !{ptr @create_expression_by_pieces, ptr @mark_symbols_for_renaming, i64 66}
!296 = !{ptr @create_expression_by_pieces, ptr @VN_INFO_GET, i64 66}
!297 = !{ptr @create_expression_by_pieces, ptr @VN_INFO, i64 115}
!298 = !{ptr @create_expression_by_pieces, ptr @get_or_alloc_expr_for_name, i64 66}
!299 = !{ptr @create_expression_by_pieces, ptr @add_to_value, i64 66}
!300 = !{ptr @create_expression_by_pieces, ptr @bitmap_value_replace_in_set, i64 132}
!301 = !{ptr @find_or_generate_expression, ptr @VN_INFO, i64 22}
!302 = !{ptr @find_or_generate_expression, ptr @bitmap_find_leader, i64 30}
!303 = !{ptr @create_component_ref_by_pieces_1, ptr @create_component_ref_by_pieces_1, i64 6}
!304 = !{ptr @create_component_ref_by_pieces_1, ptr @get_or_alloc_expr_for, i64 18}
!305 = !{ptr @create_component_ref_by_pieces_1, ptr @find_or_generate_expression, i64 18}
!306 = !{ptr @create_component_ref_by_pieces_1, ptr @size_int_kind, i64 6}
!307 = !{ptr @create_component_ref_by_pieces_1, ptr @size_binop_loc, i64 6}
!308 = !{ptr @create_component_ref_by_pieces_1, ptr @build4_stat, i64 6}
!309 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!310 = !{!"function_entry_count", i64 0}
!311 = !{!312, !312, i64 0}
!312 = !{!"any pointer", !313, i64 0}
!313 = !{!"omnipotent char", !314, i64 0}
!314 = !{!"Simple C/C++ TBAA"}
!315 = !{!316, !312, i64 8}
!316 = !{!"_IO_FILE", !317, i64 0, !312, i64 8, !312, i64 16, !312, i64 24, !312, i64 32, !312, i64 40, !312, i64 48, !312, i64 56, !312, i64 64, !312, i64 72, !312, i64 80, !312, i64 88, !312, i64 96, !312, i64 104, !317, i64 112, !317, i64 116, !318, i64 120, !319, i64 128, !313, i64 130, !313, i64 131, !312, i64 136, !318, i64 144, !312, i64 152, !312, i64 160, !312, i64 168, !312, i64 176, !318, i64 184, !317, i64 192, !313, i64 196}
!317 = !{!"int", !313, i64 0}
!318 = !{!"long", !313, i64 0}
!319 = !{!"short", !313, i64 0}
!320 = !{!316, !312, i64 16}
!321 = !{!"branch_weights", i32 2000, i32 1}
!322 = !{!313, !313, i64 0}
!323 = !{!316, !312, i64 40}
!324 = !{!316, !312, i64 48}
!325 = !{!316, !317, i64 0}
!326 = !{!317, !317, i64 0}
!327 = distinct !{!327, !328, !329}
!328 = !{!"llvm.loop.mustprogress"}
!329 = !{!"llvm.loop.unroll.disable"}
!330 = !{!"function_entry_count", i64 669521}
!331 = !{!332, !317, i64 0}
!332 = !{!"pre_expr_d", !317, i64 0, !317, i64 4, !313, i64 8}
!333 = !{!"branch_weights", i32 0, i32 2269, i32 1934529, i32 231678, i32 450474}
!334 = !{!"branch_weights", i32 0, i32 2269}
!335 = !{!336, !317, i64 16}
!336 = !{!"vn_ssa_aux", !312, i64 0, !312, i64 8, !317, i64 16, !317, i64 20, !317, i64 24, !317, i64 28, !317, i64 28, !317, i64 28, !317, i64 28, !317, i64 28}
!337 = !{!338, !317, i64 0}
!338 = !{!"vn_nary_op_s", !317, i64 0, !317, i64 4, !317, i64 6, !317, i64 8, !312, i64 16, !312, i64 24, !313, i64 32}
!339 = !{!340, !317, i64 0}
!340 = !{!"vn_reference_s", !317, i64 0, !317, i64 4, !312, i64 8, !317, i64 16, !312, i64 24, !312, i64 32, !312, i64 40}
!341 = !{!"branch_weights", i32 669521, i32 0}
!342 = !{!"branch_weights", i32 0, i32 669521}
!343 = !{!344, !317, i64 0}
!344 = !{!"VEC_bitmap_set_t_base", !317, i64 0, !317, i64 4, !313, i64 8}
!345 = !{!"branch_weights", i32 669366, i32 155}
!346 = !{!"branch_weights", i32 0, i32 155}
!347 = !{!344, !317, i64 4}
!348 = !{}
!349 = !{!"VP", i32 1, i64 155, i64 8, i64 155}
!350 = !{!"branch_weights", i32 379980, i32 289541}
!351 = !{!352, !312, i64 0}
!352 = !{!"bitmap_set", !312, i64 0, !312, i64 8}
!353 = !{!352, !312, i64 8}
!354 = !{!"branch_weights", i32 616464, i32 258325}
!355 = !{!"branch_weights", i32 0, i32 616464}
!356 = !{!357, !317, i64 0}
!357 = !{!"VEC_unsigned_base", !317, i64 0, !317, i64 4, !313, i64 8}
!358 = !{!"branch_weights", i32 616464, i32 0}
!359 = !{!"branch_weights", i32 0, i32 258325}
!360 = !{!"branch_weights", i32 0, i32 874789}
!361 = !{!332, !317, i64 4}
!362 = !{!"function_entry_count", i64 2}
!363 = !{!"tree-ssa-pre.c;get_expr_value_id"}
!364 = distinct !{!364, !328, !329}
!365 = !{!340, !312, i64 32}
!366 = !{!367, !317, i64 0}
!367 = !{!"VEC_vn_reference_op_s_base", !317, i64 0, !317, i64 4, !313, i64 8}
!368 = !{!369, !317, i64 0}
!369 = !{!"vn_reference_op_struct", !317, i64 0, !312, i64 8, !312, i64 16, !312, i64 24, !312, i64 32}
!370 = !{!369, !312, i64 16}
!371 = !{!369, !312, i64 24}
!372 = !{!369, !312, i64 32}
!373 = distinct !{!373, !328, !329}
!374 = !{!340, !312, i64 8}
!375 = !{!376, !312, i64 0}
!376 = !{!"bitmap_head_def", !312, i64 0, !312, i64 8, !317, i64 16, !312, i64 24}
!377 = !{!378, !317, i64 16}
!378 = !{!"bitmap_element_def", !312, i64 0, !312, i64 8, !317, i64 16, !313, i64 24}
!379 = !{!318, !318, i64 0}
!380 = distinct !{!380, !328, !329}
!381 = distinct !{!381, !328, !329}
!382 = !{!378, !312, i64 0}
!383 = distinct !{!383, !329}
!384 = distinct !{!384, !328, !329}
!385 = !{!"function_entry_count", i64 38}
!386 = !{!"tree-ssa-pre.c;gate_pre"}
!387 = !{!"tree-ssa-pre.c;do_pre"}
!388 = !{!"tree-ssa-pre.c;gate_fre"}
!389 = !{!"tree-ssa-pre.c;execute_fre"}
!390 = !{!"function_entry_count", i64 902}
!391 = !{!"tree-ssa-pre.c;alloc_expression_id"}
!392 = !{!"branch_weights", i32 0, i32 637950}
!393 = !{!394, !317, i64 4}
!394 = !{!"VEC_pre_expr_base", !317, i64 0, !317, i64 4, !313, i64 8}
!395 = !{!394, !317, i64 0}
!396 = !{!"branch_weights", i32 801, i32 637149}
!397 = !{!"branch_weights", i32 404299, i32 233651}
!398 = !{!399, !312, i64 24}
!399 = !{!"function", !312, i64 0, !312, i64 8, !312, i64 16, !312, i64 24, !312, i64 32, !312, i64 40, !312, i64 48, !312, i64 56, !312, i64 64, !312, i64 72, !312, i64 80, !312, i64 88, !312, i64 96, !317, i64 104, !317, i64 108, !317, i64 112, !317, i64 116, !317, i64 120, !317, i64 124, !312, i64 128, !317, i64 136, !317, i64 137, !317, i64 138, !317, i64 138, !317, i64 138, !317, i64 138, !317, i64 138, !317, i64 138, !317, i64 138, !317, i64 139, !317, i64 139, !317, i64 139, !317, i64 139, !317, i64 139, !317, i64 139, !317, i64 139}
!400 = !{!401, !312, i64 16}
!401 = !{!"gimple_df", !312, i64 0, !312, i64 8, !312, i64 16, !312, i64 24, !402, i64 32, !402, i64 48, !312, i64 64, !312, i64 72, !312, i64 80, !312, i64 88, !317, i64 96, !403, i64 104}
!402 = !{!"pt_solution", !317, i64 0, !317, i64 0, !317, i64 0, !317, i64 0, !317, i64 0, !317, i64 0, !312, i64 8}
!403 = !{!"ssa_operands", !312, i64 0, !317, i64 8, !317, i64 12, !313, i64 16, !312, i64 24, !312, i64 32}
!404 = !{!"branch_weights", i32 0, i32 404299}
!405 = !{!406, !317, i64 0}
!406 = !{!"VEC_tree_base", !317, i64 0, !317, i64 4, !313, i64 8}
!407 = !{!"branch_weights", i32 76, i32 404223}
!408 = !{!357, !317, i64 4}
!409 = !{!"branch_weights", i32 404146, i32 153}
!410 = !{!"branch_weights", i32 404299, i32 0}
!411 = !{!"VP", i32 1, i64 571, i64 0, i64 571, i64 513, i64 0, i64 4, i64 0, i64 65, i64 0}
!412 = !{!"branch_weights", i32 233651, i32 0}
!413 = !{!"function_entry_count", i64 76}
!414 = !{!"tree-ssa-pre.c;execute_pre"}
!415 = !{!"branch_weights", i32 76, i32 0}
!416 = !{!"branch_weights", i32 38, i32 38}
!417 = !{!"branch_weights", i32 0, i32 76}
!418 = !{!"VP", i32 1, i64 76, i64 513, i64 56, i64 129, i64 14, i64 257, i64 4, i64 128, i64 2}
!419 = !{!399, !312, i64 8}
!420 = !{!421, !317, i64 24}
!421 = !{!"control_flow_graph", !312, i64 0, !312, i64 8, !312, i64 16, !317, i64 24, !317, i64 28, !317, i64 32, !312, i64 40, !317, i64 48, !313, i64 52, !313, i64 60, !317, i64 68, !317, i64 72}
!422 = !{!421, !317, i64 32}
!423 = !{!421, !312, i64 8}
!424 = !{i64 0, i64 4, !326, i64 8, i64 8, !311}
!425 = !{i64 0, i64 8, !311}
!426 = !{!"branch_weights", i32 0, i32 1267372}
!427 = !{!428, !312, i64 0}
!428 = !{!"edge_def", !312, i64 0, !312, i64 8, !313, i64 16, !312, i64 24, !312, i64 32, !317, i64 40, !317, i64 44, !317, i64 48, !317, i64 52, !318, i64 56}
!429 = !{!428, !312, i64 8}
!430 = !{!421, !312, i64 0}
!431 = !{!"branch_weights", i32 76, i32 1267296}
!432 = !{!433, !317, i64 80}
!433 = !{!"basic_block_def", !312, i64 0, !312, i64 8, !312, i64 16, !312, i64 24, !313, i64 32, !312, i64 48, !312, i64 56, !313, i64 64, !318, i64 72, !317, i64 80, !317, i64 84, !317, i64 88, !317, i64 92, !317, i64 96}
!434 = !{!"branch_weights", i32 488581, i32 778715}
!435 = !{!436, !312, i64 0}
!436 = !{!"simple_bitmap_def", !312, i64 0, !317, i64 8, !317, i64 12, !313, i64 16}
!437 = !{!"branch_weights", i32 488581, i32 0}
!438 = !{!433, !312, i64 0}
!439 = !{!"branch_weights", i32 0, i32 488581}
!440 = !{!441, !317, i64 0}
!441 = !{!"VEC_edge_base", !317, i64 0, !317, i64 4, !313, i64 8}
!442 = !{!"branch_weights", i32 488657, i32 290134}
!443 = !{!"branch_weights", i32 76, i32 488581}
!444 = !{!"branch_weights", i32 0, i32 290134}
!445 = !{!"branch_weights", i32 290134, i32 0}
!446 = !{!447, !317, i64 0}
!447 = !{!"", !317, i64 0, !312, i64 8}
!448 = distinct !{!448, !328, !329}
!449 = !{!"branch_weights", i32 1, i32 151}
!450 = !{!433, !312, i64 16}
!451 = !{!"branch_weights", i32 151, i32 977315}
!452 = distinct !{!452, !328, !329}
!453 = !{!454, !312, i64 0}
!454 = !{!"bb_bitmap_sets", !312, i64 0, !312, i64 8, !312, i64 16, !312, i64 24, !312, i64 32, !312, i64 40, !312, i64 48, !312, i64 56, !317, i64 64, !317, i64 64, !317, i64 64}
!455 = !{!454, !312, i64 8}
!456 = !{!454, !312, i64 16}
!457 = !{!454, !312, i64 24}
!458 = distinct !{!458, !328, !329}
!459 = !{!"branch_weights", i32 0, i32 792050}
!460 = !{!"branch_weights", i32 791974, i32 76}
!461 = !{!"branch_weights", i32 159724, i32 632250}
!462 = !{!"branch_weights", i32 632098, i32 152}
!463 = !{!464, !312, i64 8}
!464 = !{!"ssa_use_operand_d", !312, i64 0, !312, i64 8, !313, i64 16, !312, i64 24}
!465 = !{!"branch_weights", i32 0, i32 152}
!466 = !{!"branch_weights", i32 152, i32 0}
!467 = !{!"branch_weights", i32 76, i32 76}
!468 = !{!"branch_weights", i32 205268, i32 0}
!469 = distinct !{!469, !328, !329}
!470 = !{!"branch_weights", i32 151, i32 1}
!471 = distinct !{!471, !328, !329}
!472 = !{!"branch_weights", i32 151, i32 977011}
!473 = distinct !{!473, !328, !329}
!474 = !{i64 0, i64 8, !311, i64 8, i64 8, !311, i64 16, i64 8, !311}
!475 = !{!"branch_weights", i32 395761, i32 92820}
!476 = !{!477, !312, i64 0}
!477 = !{!"gimple_seq_node_d", !312, i64 0, !312, i64 8, !312, i64 16}
!478 = !{!"branch_weights", i32 89817, i32 3003}
!479 = !{!"branch_weights", i32 2847, i32 156}
!480 = !{!"branch_weights", i32 1, i32 2846}
!481 = !{!"branch_weights", i32 0, i32 67353}
!482 = !{!464, !312, i64 24}
!483 = !{!"branch_weights", i32 6897, i32 60456}
!484 = !{!"branch_weights", i32 64507, i32 2846}
!485 = distinct !{!485, !328, !329}
!486 = !{!477, !312, i64 16}
!487 = !{!"branch_weights", i32 92820, i32 0}
!488 = distinct !{!488, !328, !329}
!489 = !{!433, !317, i64 96}
!490 = !{!491}
!491 = distinct !{!491, !492, !"gsi_start_bb: argument 0"}
!492 = distinct !{!492, !"gsi_start_bb"}
!493 = !{!494, !312, i64 0}
!494 = !{!"gimple_bb_info", !312, i64 0, !312, i64 8}
!495 = !{!496, !312, i64 0}
!496 = !{!"gimple_seq_d", !312, i64 0, !312, i64 8, !312, i64 16}
!497 = !{!"branch_weights", i32 1, i32 488580}
!498 = !{!"branch_weights", i32 138258, i32 557767}
!499 = !{!"branch_weights", i32 138132, i32 126}
!500 = !{!"branch_weights", i32 0, i32 138132}
!501 = !{!"branch_weights", i32 0, i32 696025}
!502 = !{!"branch_weights", i32 290538, i32 405487}
!503 = !{!"branch_weights", i32 0, i32 405487}
!504 = !{!"branch_weights", i32 267275, i32 138212}
!505 = !{!506, !312, i64 0}
!506 = !{!"def_optype_d", !312, i64 0, !312, i64 8}
!507 = !{!"branch_weights", i32 295039, i32 400986}
!508 = !{!506, !312, i64 8}
!509 = !{!"branch_weights", i32 76, i32 874403}
!510 = !{!"branch_weights", i32 874368, i32 111}
!511 = !{!"branch_weights", i32 404299, i32 470180}
!512 = !{!"VP", i32 1, i64 117488, i64 0, i64 117456, i64 513, i64 15, i64 4, i64 10, i64 65, i64 4}
!513 = !{!"branch_weights", i32 194187, i32 206799}
!514 = !{!"branch_weights", i32 599023, i32 2048}
!515 = !{!"branch_weights", i32 67122, i32 531901}
!516 = !{!"branch_weights", i32 400986, i32 0}
!517 = !{!"branch_weights", i32 0, i32 400986}
!518 = distinct !{!518, !328, !329}
!519 = !{!"branch_weights", i32 696025, i32 0}
!520 = !{!"branch_weights", i32 290336, i32 76, i32 138258, i32 267355}
!521 = !{!"branch_weights", i32 2, i32 74}
!522 = !{!"branch_weights", i32 0, i32 74}
!523 = !{!"branch_weights", i32 74, i32 0}
!524 = !{!525, !312, i64 0}
!525 = !{!"use_optype_d", !312, i64 0, !464, i64 8}
!526 = !{!"branch_weights", i32 58403, i32 59007}
!527 = !{!"branch_weights", i32 58403, i32 0}
!528 = distinct !{!528, !328, !329}
!529 = !{!"branch_weights", i32 138258, i32 0}
!530 = distinct !{!530, !328, !329}
!531 = !{!"branch_weights", i32 171246, i32 96109}
!532 = !{!"branch_weights", i32 0, i32 171246}
!533 = !{!"branch_weights", i32 9926, i32 138, i32 47257, i32 38960, i32 141266, i32 29808}
!534 = !{!"branch_weights", i32 0, i32 86355, i32 0, i32 0}
!535 = !{!"branch_weights", i32 0, i32 86355}
!536 = !{!"branch_weights", i32 0, i32 0, i32 102543, i32 0}
!537 = !{!"branch_weights", i32 15213, i32 87330}
!538 = !{!"branch_weights", i32 0, i32 15213}
!539 = !{!"branch_weights", i32 6, i32 102537}
!540 = !{!"branch_weights", i32 0, i32 6}
!541 = !{!"branch_weights", i32 86217, i32 138}
!542 = !{!"branch_weights", i32 0, i32 86217}
!543 = !{!"branch_weights", i32 1, i32 86354}
!544 = !{!"branch_weights", i32 1419499515, i32 -649047182}
!545 = !{!"branch_weights", i32 86218, i32 86354}
!546 = distinct !{!546, !328, !329}
!547 = !{!"branch_weights", i32 0, i32 171074}
!548 = !{!"branch_weights", i32 377, i32 170697}
!549 = !{!"branch_weights", i32 0, i32 396439}
!550 = !{!"branch_weights", i32 225742, i32 170697}
!551 = !{!"branch_weights", i32 170697, i32 225742}
!552 = !{!"branch_weights", i32 349, i32 225393}
!553 = !{!"branch_weights", i32 355, i32 225038}
!554 = !{!"branch_weights", i32 196438, i32 29304}
!555 = !{!"branch_weights", i32 0, i32 29304}
!556 = distinct !{!556, !328, !329}
!557 = !{!"branch_weights", i32 0, i32 9926}
!558 = !{!"branch_weights", i32 9846, i32 80}
!559 = !{!"branch_weights", i32 1, i32 9925}
!560 = !{!"branch_weights", i32 9926, i32 9834}
!561 = !{!"branch_weights", i32 9835, i32 9925}
!562 = distinct !{!562, !328, !329}
!563 = !{!"branch_weights", i32 0, i32 257052}
!564 = !{!"branch_weights", i32 232749, i32 24303}
!565 = !{!"VP", i32 1, i64 147503, i64 0, i64 147463, i64 513, i64 18, i64 4, i64 11, i64 65, i64 4}
!566 = !{!"branch_weights", i32 127168, i32 129884}
!567 = !{!"branch_weights", i32 488580, i32 207445}
!568 = distinct !{!568, !328, !329}
!569 = !{!"branch_weights", i32 76, i32 488505}
!570 = !{!"branch_weights", i32 488505, i32 0}
!571 = distinct !{!571, !328, !329}
!572 = distinct !{!572, !328, !329}
!573 = !{!"branch_weights", i32 31, i32 7}
!574 = !{!433, !312, i64 56}
!575 = !{!"branch_weights", i32 1, i32 247}
!576 = !{!"branch_weights", i32 0, i32 16675}
!577 = !{!"branch_weights", i32 6627, i32 10048}
!578 = !{!428, !317, i64 48}
!579 = !{!"branch_weights", i32 10048, i32 0}
!580 = !{!"branch_weights", i32 0, i32 10048}
!581 = distinct !{!581, !328, !329}
!582 = !{!454, !312, i64 32}
!583 = !{!454, !312, i64 40}
!584 = !{!"branch_weights", i32 247, i32 52769}
!585 = distinct !{!585, !328, !329}
!586 = !{!"branch_weights", i32 31, i32 31}
!587 = distinct !{!587, !328, !329}
!588 = !{!"branch_weights", i32 62, i32 0}
!589 = !{!"branch_weights", i32 247, i32 1}
!590 = !{!"branch_weights", i32 4553, i32 8701}
!591 = !{!421, !312, i64 16}
!592 = !{!"branch_weights", i32 8701, i32 0}
!593 = !{!433, !312, i64 8}
!594 = !{!"branch_weights", i32 0, i32 8701}
!595 = !{!"branch_weights", i32 3822, i32 4879}
!596 = !{!"branch_weights", i32 0, i32 4879}
!597 = !{!"branch_weights", i32 4879, i32 0}
!598 = !{!"branch_weights", i32 0, i32 3822}
!599 = !{!"branch_weights", i32 0, i32 13388}
!600 = !{!"branch_weights", i32 3822, i32 9566}
!601 = !{!"branch_weights", i32 3822, i32 5744}
!602 = !{!"branch_weights", i32 0, i32 5744}
!603 = !{!604, !317, i64 0}
!604 = !{!"VEC_basic_block_base", !317, i64 0, !317, i64 4, !313, i64 8}
!605 = !{!"branch_weights", i32 0, i32 9566}
!606 = !{!"branch_weights", i32 9566, i32 0}
!607 = distinct !{!607, !328, !329}
!608 = !{!"branch_weights", i32 3822, i32 0}
!609 = !{!494, !312, i64 8}
!610 = !{!"branch_weights", i32 5744, i32 3822}
!611 = !{!"branch_weights", i32 5744, i32 0}
!612 = !{!"branch_weights", i32 5714, i32 30}
!613 = distinct !{!613, !328, !329}
!614 = !{!"branch_weights", i32 7275, i32 1426}
!615 = !{!"branch_weights", i32 9395, i32 1112}
!616 = !{!"branch_weights", i32 1805, i32 1}
!617 = !{!"branch_weights", i32 41668, i32 1805}
!618 = !{!"branch_weights", i32 1, i32 8804}
!619 = !{!"branch_weights", i32 8215, i32 694}
!620 = !{!"branch_weights", i32 8804, i32 105}
!621 = !{!"branch_weights", i32 8701, i32 104}
!622 = !{!"branch_weights", i32 8701, i32 1806}
!623 = distinct !{!623, !328, !329}
!624 = !{!"branch_weights", i32 3714, i32 12945}
!625 = !{!"branch_weights", i32 7958, i32 4987}
!626 = !{!"branch_weights", i32 8701, i32 7958}
!627 = !{!"branch_weights", i32 2274, i32 5684}
!628 = !{!"branch_weights", i32 4582, i32 0}
!629 = distinct !{!629, !328, !329}
!630 = !{!"branch_weights", i32 3714, i32 4987}
!631 = !{!"branch_weights", i32 2074, i32 6627}
!632 = !{!"branch_weights", i32 2074, i32 0}
!633 = !{!"branch_weights", i32 0, i32 7038}
!634 = !{!"branch_weights", i32 2074, i32 4964}
!635 = !{!"branch_weights", i32 4964, i32 0}
!636 = !{!"branch_weights", i32 0, i32 4964}
!637 = distinct !{!637, !328, !329}
!638 = !{!"branch_weights", i32 6627, i32 0}
!639 = !{!"branch_weights", i32 52769, i32 247}
!640 = distinct !{!640, !328, !329}
!641 = !{!"branch_weights", i32 0, i32 31}
!642 = distinct !{!642, !328, !329}
!643 = !{!"branch_weights", i32 5988, i32 7266}
!644 = !{!645, !317, i64 8}
!645 = !{!"param_info", !312, i64 0, !317, i64 8, !313, i64 12, !317, i64 16, !317, i64 20, !312, i64 24}
!646 = !{!"branch_weights", i32 7266, i32 0}
!647 = !{!"branch_weights", i32 0, i32 7266}
!648 = !{!"branch_weights", i32 2992, i32 4274}
!649 = !{!"branch_weights", i32 0, i32 4274}
!650 = !{!"branch_weights", i32 4274, i32 0}
!651 = !{!"branch_weights", i32 0, i32 2992}
!652 = !{!"branch_weights", i32 0, i32 10898}
!653 = !{!"branch_weights", i32 2992, i32 7906}
!654 = !{!"branch_weights", i32 7906, i32 0}
!655 = !{!"branch_weights", i32 0, i32 7906}
!656 = distinct !{!656, !328, !329}
!657 = !{!"branch_weights", i32 7906, i32 2992}
!658 = !{!"branch_weights", i32 5536, i32 2370}
!659 = !{!"branch_weights", i32 9070, i32 2275}
!660 = !{!"branch_weights", i32 3438, i32 1}
!661 = !{!"branch_weights", i32 70951, i32 3438}
!662 = !{!"branch_weights", i32 1, i32 8018}
!663 = !{!"branch_weights", i32 6968, i32 1164}
!664 = !{!"branch_weights", i32 8018, i32 114}
!665 = !{!"branch_weights", i32 7906, i32 113}
!666 = !{!"branch_weights", i32 7906, i32 3439}
!667 = distinct !{!667, !328, !329}
!668 = !{!"branch_weights", i32 7890, i32 16}
!669 = distinct !{!669, !328, !329}
!670 = !{!"branch_weights", i32 7130, i32 776}
!671 = !{!"branch_weights", i32 8624, i32 1427}
!672 = !{!"branch_weights", i32 2144, i32 1}
!673 = !{!"branch_weights", i32 33535, i32 2144}
!674 = !{!"branch_weights", i32 1, i32 8133}
!675 = !{!"branch_weights", i32 7644, i32 718}
!676 = !{!"branch_weights", i32 8133, i32 229}
!677 = !{!"branch_weights", i32 7906, i32 228}
!678 = !{!"branch_weights", i32 7906, i32 2145}
!679 = distinct !{!679, !328, !329}
!680 = distinct !{!680, !328, !329}
!681 = !{!"branch_weights", i32 5013, i32 2253}
!682 = !{!"branch_weights", i32 9107, i32 3827}
!683 = !{!"branch_weights", i32 5667, i32 1}
!684 = !{!"branch_weights", i32 87610, i32 5667}
!685 = !{!"branch_weights", i32 1, i32 7862}
!686 = !{!"branch_weights", i32 6619, i32 1841}
!687 = !{!"branch_weights", i32 7862, i32 598}
!688 = !{!"branch_weights", i32 7266, i32 597}
!689 = !{!"branch_weights", i32 7266, i32 5668}
!690 = !{!"branch_weights", i32 0, i32 -861227043}
!691 = !{!"branch_weights", i32 9281, i32 459504}
!692 = !{!"branch_weights", i32 5206, i32 462}
!693 = distinct !{!693, !328, !329}
!694 = !{!"branch_weights", i32 5058, i32 7414}
!695 = !{!"branch_weights", i32 5206, i32 2208}
!696 = !{!"branch_weights", i32 7266, i32 5206}
!697 = !{!"branch_weights", i32 1846, i32 3360}
!698 = distinct !{!698, !328, !329}
!699 = !{!"branch_weights", i32 5058, i32 2208}
!700 = !{!"branch_weights", i32 639, i32 6627}
!701 = !{!"branch_weights", i32 639, i32 0}
!702 = !{!"branch_weights", i32 0, i32 1414}
!703 = !{!"branch_weights", i32 639, i32 775}
!704 = !{!"branch_weights", i32 775, i32 0}
!705 = !{!"branch_weights", i32 0, i32 775}
!706 = distinct !{!706, !328, !329}
!707 = distinct !{!707, !328, !329}
!708 = !{!454, !312, i64 48}
!709 = !{!"branch_weights", i32 247, i32 53265}
!710 = distinct !{!710, !328, !329}
!711 = !{i8 0, i8 2}
!712 = distinct !{!712, !328, !329}
!713 = distinct !{!713, !328, !329}
!714 = !{!715}
!715 = distinct !{!715, !716, !"gsi_start_bb: argument 0"}
!716 = distinct !{!716, !"gsi_start_bb"}
!717 = !{i64 0, i64 8, !311, i64 8, i64 8, !311}
!718 = !{!"branch_weights", i32 290412, i32 267355, i32 138258}
!719 = !{!"branch_weights", i32 0, i32 138258}
!720 = !{!"branch_weights", i32 294959, i32 401066}
!721 = !{!"branch_weights", i32 400986, i32 80}
!722 = !{!"branch_weights", i32 400906, i32 80}
!723 = !{!"branch_weights", i32 229820, i32 171086}
!724 = !{!"branch_weights", i32 0, i32 171086}
!725 = !{!"branch_weights", i32 171086, i32 0}
!726 = !{!"branch_weights", i32 400906, i32 0}
!727 = !{!"branch_weights", i32 175, i32 400731}
!728 = !{!"branch_weights", i32 400731, i32 0}
!729 = !{!"branch_weights", i32 400731, i32 175}
!730 = !{!"VP", i32 1, i64 117414, i64 0, i64 117381, i64 513, i64 15, i64 4, i64 9, i64 65, i64 4}
!731 = !{!"branch_weights", i32 229820, i32 170911}
!732 = !{!"branch_weights", i32 0, i32 170911}
!733 = !{!"branch_weights", i32 406204, i32 24}
!734 = !{!"branch_weights", i32 0, i32 24}
!735 = !{!"branch_weights", i32 20, i32 4}
!736 = !{!"branch_weights", i32 191, i32 1}
!737 = !{!"branch_weights", i32 2801, i32 191}
!738 = !{!"branch_weights", i32 0, i32 1}
!739 = !{!"branch_weights", i32 0, i32 20}
!740 = !{!"branch_weights", i32 24, i32 0}
!741 = distinct !{!741, !328, !329}
!742 = !{!"branch_weights", i32 468785, i32 0}
!743 = !{!"branch_weights", i32 0, i32 468785}
!744 = !{!"branch_weights", i32 1813, i32 404391}
!745 = !{!"branch_weights", i32 1073190, i32 404391}
!746 = !{!"branch_weights", i32 0, i32 1477581}
!747 = distinct !{!747, !329}
!748 = !{!"branch_weights", i32 403018, i32 1373}
!749 = !{!"branch_weights", i32 203651, i32 200740}
!750 = !{!"branch_weights", i32 404390, i32 1}
!751 = !{!"branch_weights", i32 12314537, i32 404390}
!752 = distinct !{!752, !328, !329}
!753 = !{!"branch_weights", i32 1, i32 3306}
!754 = !{!"branch_weights", i32 3351, i32 203651}
!755 = !{!"branch_weights", i32 3306, i32 203696}
!756 = distinct !{!756, !328, !329}
!757 = !{!"branch_weights", i32 0, i32 40606}
!758 = !{!"branch_weights", i32 36069, i32 4537}
!759 = distinct !{!759, !328, !329}
!760 = !{!"branch_weights", i32 1966, i32 4537}
!761 = !{!"branch_weights", i32 0, i32 1966}
!762 = distinct !{!762, !328, !329}
!763 = !{!"branch_weights", i32 3307, i32 1230}
!764 = distinct !{!764, !328, !329}
!765 = distinct !{!765, !329}
!766 = !{!"branch_weights", i32 0, i32 404391}
!767 = !{!"branch_weights", i32 0, i32 400731}
!768 = !{!"branch_weights", i32 0, i32 0, i32 400731}
!769 = !{!336, !312, i64 0}
!770 = !{!771, !317, i64 0}
!771 = !{!"", !317, i64 0, !317, i64 4, !317, i64 8, !317, i64 12, !317, i64 16}
!772 = !{!"branch_weights", i32 384543, i32 16188}
!773 = !{!"branch_weights", i32 0, i32 384543}
!774 = !{!"branch_weights", i32 384543, i32 0}
!775 = !{!"branch_weights", i32 975, i32 15213}
!776 = !{!"branch_weights", i32 0, i32 16188}
!777 = !{!"branch_weights", i32 16188, i32 0}
!778 = !{!"branch_weights", i32 294959, i32 335}
!779 = !{!"branch_weights", i32 0, i32 335}
!780 = !{!"branch_weights", i32 80, i32 255}
!781 = !{!"branch_weights", i32 0, i32 80}
!782 = !{!"branch_weights", i32 80, i32 0}
!783 = !{!784, !317, i64 4}
!784 = !{!"VEC_gimple_base", !317, i64 0, !317, i64 4, !313, i64 8}
!785 = !{!784, !317, i64 0}
!786 = !{!"branch_weights", i32 284328, i32 10886}
!787 = !{!"branch_weights", i32 0, i32 284328}
!788 = !{!"branch_weights", i32 284328, i32 0}
!789 = !{!"branch_weights", i32 264978, i32 19350}
!790 = !{!"branch_weights", i32 0, i32 19350}
!791 = !{!792, !312, i64 0}
!792 = !{!"", !312, i64 0, !312, i64 8, !312, i64 16}
!793 = distinct !{!793, !328, !329}
!794 = !{!"branch_weights", i32 395686, i32 92895}
!795 = !{!"branch_weights", i32 0, i32 92895}
!796 = !{!"branch_weights", i32 89817, i32 3078}
!797 = !{!"branch_weights", i32 3003, i32 75}
!798 = distinct !{!798, !328, !329}
!799 = !{!"branch_weights", i32 0, i32 3003}
!800 = !{!"branch_weights", i32 0, i32 0, i32 3003}
!801 = !{!"branch_weights", i32 3003, i32 0}
!802 = !{!803, !805}
!803 = distinct !{!803, !804, !"gsi_start_bb: argument 0"}
!804 = distinct !{!804, !"gsi_start_bb"}
!805 = distinct !{!805, !806, !"gsi_after_labels: argument 0"}
!806 = distinct !{!806, !"gsi_after_labels"}
!807 = !{!805}
!808 = distinct !{!808, !328, !329}
!809 = !{!"branch_weights", i32 92895, i32 0}
!810 = !{!464, !312, i64 0}
!811 = distinct !{!811, !328, !329}
!812 = !{!771, !317, i64 4}
!813 = !{!771, !317, i64 8}
!814 = !{!771, !317, i64 12}
!815 = !{!771, !317, i64 16}
!816 = !{!"branch_weights", i32 45, i32 31}
!817 = distinct !{!817, !328, !329}
!818 = !{!"tree-ssa-pre.c;remove_dead_inserted_code"}
!819 = !{!"branch_weights", i32 7, i32 31}
!820 = !{!"branch_weights", i32 7, i32 172}
!821 = !{!"branch_weights", i32 141, i32 31}
!822 = !{!"branch_weights", i32 38, i32 141}
!823 = !{!"branch_weights", i32 68, i32 73}
!824 = distinct !{!824, !328, !329}
!825 = !{!"branch_weights", i32 7, i32 370}
!826 = !{!"branch_weights", i32 38, i32 339}
!827 = !{!"branch_weights", i32 88, i32 251}
!828 = !{!"branch_weights", i32 23, i32 65}
!829 = !{!"branch_weights", i32 1, i32 175}
!830 = !{!"branch_weights", i32 0, i32 215}
!831 = !{!"branch_weights", i32 215, i32 0}
!832 = !{!"branch_weights", i32 46, i32 169}
!833 = !{!"branch_weights", i32 255, i32 175}
!834 = distinct !{!834, !328, !329}
!835 = !{!"branch_weights", i32 0, i32 251}
!836 = !{!"branch_weights", i32 1, i32 250}
!837 = !{!"branch_weights", i32 0, i32 437}
!838 = !{!"branch_weights", i32 377, i32 60}
!839 = !{!"branch_weights", i32 0, i32 377}
!840 = !{!"branch_weights", i32 280, i32 97}
!841 = !{!"branch_weights", i32 340, i32 97}
!842 = !{!"branch_weights", i32 0, i32 97}
!843 = !{!"branch_weights", i32 251, i32 186}
!844 = !{!"branch_weights", i32 187, i32 250}
!845 = distinct !{!845, !328, !329}
!846 = distinct !{!846, !328, !329}
!847 = !{!"branch_weights", i32 2, i32 139}
!848 = !{!"branch_weights", i32 2, i32 0}
!849 = distinct !{!849, !328, !329}
!850 = !{!851, !317, i64 24}
!851 = !{!"expr_pred_trans_d", !312, i64 0, !312, i64 8, !312, i64 16, !317, i64 24}
!852 = !{!"function_entry_count", i64 2867}
!853 = !{!"tree-ssa-pre.c;expr_pred_trans_eq"}
!854 = !{!851, !312, i64 8}
!855 = !{!"branch_weights", i32 2832, i32 35}
!856 = !{!851, !312, i64 0}
!857 = !{!"branch_weights", i32 299623, i32 10680}
!858 = !{!"branch_weights", i32 0, i32 2072, i32 46, i32 93715, i32 203790}
!859 = !{!"branch_weights", i32 0, i32 2072}
!860 = !{!"function_entry_count", i64 752176}
!861 = !{!"tree-ssa-pre.c;pre_expr_hash"}
!862 = !{!"branch_weights", i32 0, i32 2466, i32 0, i32 256569, i32 498599}
!863 = !{!"branch_weights", i32 2466, i32 0}
!864 = !{!338, !317, i64 8}
!865 = !{!340, !317, i64 4}
!866 = !{!"function_entry_count", i64 307425}
!867 = !{!"tree-ssa-pre.c;pre_expr_eq"}
!868 = !{!"function_entry_count", i64 72764}
!869 = !{!"tree-ssa-pre.c;get_or_alloc_expr_for_name"}
!870 = !{!"VP", i32 1, i64 21319, i64 0, i64 21313, i64 513, i64 2, i64 4, i64 1, i64 65, i64 0}
!871 = !{!"function_entry_count", i64 72918}
!872 = !{!"tree-ssa-pre.c;bitmap_value_insert_into_set"}
!873 = !{!"tree-ssa-pre.c;add_to_exp_gen"}
!874 = !{!"function_entry_count", i64 16188}
!875 = !{!"tree-ssa-pre.c;gimple_expr_type"}
!876 = !{!"function_entry_count", i64 9153}
!877 = !{!"tree-ssa-pre.c;phi_translate_set"}
!878 = !{!"branch_weights", i32 9153, i32 0}
!879 = !{!"branch_weights", i32 204, i32 8949}
!880 = !{!"branch_weights", i32 1450, i32 7703}
!881 = !{!"branch_weights", i32 3535, i32 9177}
!882 = !{!"branch_weights", i32 5009, i32 4168}
!883 = !{!"branch_weights", i32 7703, i32 5009}
!884 = !{!"branch_weights", i32 176, i32 4833}
!885 = !{!"branch_weights", i32 788, i32 4045}
!886 = distinct !{!886, !328, !329}
!887 = !{!"branch_weights", i32 3535, i32 4168}
!888 = !{!"function_entry_count", i64 5744}
!889 = !{!"tree-ssa-pre.c;bitmap_set_and"}
!890 = !{!"branch_weights", i32 4478, i32 1266}
!891 = !{!"branch_weights", i32 6367, i32 1025}
!892 = !{!"branch_weights", i32 1647, i32 1}
!893 = !{!"branch_weights", i32 36372, i32 1647}
!894 = !{!"branch_weights", i32 1, i32 5771}
!895 = !{!"branch_weights", i32 5177, i32 623}
!896 = !{!"branch_weights", i32 5771, i32 29}
!897 = !{!"branch_weights", i32 5744, i32 28}
!898 = !{!"branch_weights", i32 5744, i32 1648}
!899 = !{!"branch_weights", i32 1500, i32 148}
!900 = distinct !{!900, !328, !329}
!901 = !{!"function_entry_count", i64 24668}
!902 = !{!"tree-ssa-pre.c;bitmap_set_subtract"}
!903 = !{!"branch_weights", i32 17263, i32 7405}
!904 = !{!"branch_weights", i32 28960, i32 9432}
!905 = !{!"branch_weights", i32 13723, i32 1}
!906 = !{!"branch_weights", i32 236976, i32 13723}
!907 = !{!"branch_weights", i32 1, i32 25452}
!908 = !{!"branch_weights", i32 21946, i32 4292}
!909 = !{!"branch_weights", i32 25452, i32 786}
!910 = !{!"branch_weights", i32 24668, i32 785}
!911 = !{!"branch_weights", i32 24668, i32 13724}
!912 = distinct !{!912, !328, !329}
!913 = !{!"function_entry_count", i64 26082}
!914 = !{!"tree-ssa-pre.c;sorted_array_from_bitmap_set"}
!915 = !{!"branch_weights", i32 13907, i32 12175}
!916 = !{!"branch_weights", i32 31511, i32 13992}
!917 = !{!"branch_weights", i32 19420, i32 1}
!918 = !{!"branch_weights", i32 316625, i32 19420}
!919 = !{!"branch_weights", i32 1, i32 27341}
!920 = !{!"branch_weights", i32 23173, i32 5429}
!921 = !{!"branch_weights", i32 27341, i32 1261}
!922 = !{!"branch_weights", i32 26082, i32 1260}
!923 = !{!"branch_weights", i32 26082, i32 19421}
!924 = !{!"branch_weights", i32 0, i32 19421}
!925 = !{!"branch_weights", i32 29220, i32 23538}
!926 = !{!"branch_weights", i32 33336, i32 1}
!927 = !{!"branch_weights", i32 554839, i32 33336}
!928 = !{!"branch_weights", i32 1, i32 19676}
!929 = !{!"branch_weights", i32 10134, i32 9799}
!930 = !{!"branch_weights", i32 19676, i32 257}
!931 = !{!"branch_weights", i32 19421, i32 256}
!932 = !{!"branch_weights", i32 19421, i32 33337}
!933 = !{!"branch_weights", i32 13916, i32 19421}
!934 = distinct !{!934, !328, !329}
!935 = distinct !{!935, !328, !329}
!936 = !{!"function_entry_count", i64 7432}
!937 = !{!"tree-ssa-pre.c;phi_translate"}
!938 = !{!"branch_weights", i32 178, i32 7254}
!939 = !{!"branch_weights", i32 0, i32 0, i32 816934599, i32 -786698955, i32 420148053}
!940 = !{!"branch_weights", i32 7254, i32 0}
!941 = !{!"branch_weights", i32 2977, i32 4277}
!942 = !{!"branch_weights", i32 0, i32 2466, i32 498599, i32 256569}
!943 = !{!"branch_weights", i32 1445, i32 2832}
!944 = !{!851, !312, i64 16}
!945 = !{!"branch_weights", i32 0, i32 257, i32 1188, i32 2977}
!946 = !{!"VP", i32 1, i64 257, i64 33, i64 257}
!947 = !{!"branch_weights", i32 1, i32 198}
!948 = !{!"branch_weights", i32 257, i32 223}
!949 = !{!"branch_weights", i32 10, i32 247}
!950 = !{!"branch_weights", i32 93, i32 164}
!951 = !{!"branch_weights", i32 0, i32 164}
!952 = !{!"branch_weights", i32 58, i32 35}
!953 = !{!"branch_weights", i32 199, i32 58}
!954 = !{!"branch_weights", i32 198, i32 282}
!955 = distinct !{!955, !328, !329}
!956 = !{!"branch_weights", i32 35, i32 164}
!957 = !{!338, !312, i64 24}
!958 = !{!"branch_weights", i32 142, i32 22}
!959 = !{!"branch_weights", i32 22, i32 0}
!960 = !{!"branch_weights", i32 101, i32 63}
!961 = !{!"branch_weights", i32 63, i32 0}
!962 = !{!"branch_weights", i32 0, i32 63}
!963 = !{!"branch_weights", i32 0, i32 101}
!964 = !{!"VP", i32 1, i64 101, i64 8, i64 101}
!965 = !{!"branch_weights", i32 101, i32 0}
!966 = !{!"branch_weights", i32 0, i32 4568}
!967 = !{!"branch_weights", i32 3586, i32 982}
!968 = !{!"branch_weights", i32 982, i32 3586}
!969 = !{!369, !312, i64 8}
!970 = !{i64 0, i64 4, !326, i64 8, i64 8, !311, i64 16, i64 8, !311, i64 24, i64 8, !311, i64 32, i64 8, !311}
!971 = !{i64 4, i64 8, !311, i64 12, i64 8, !311, i64 20, i64 8, !311, i64 28, i64 8, !311}
!972 = !{!"branch_weights", i32 365, i32 3221}
!973 = !{!"branch_weights", i32 377, i32 2844}
!974 = !{!"branch_weights", i32 33, i32 344}
!975 = !{!"branch_weights", i32 320, i32 57}
!976 = !{!"branch_weights", i32 0, i32 57}
!977 = !{!"branch_weights", i32 206, i32 114}
!978 = !{!"branch_weights", i32 171, i32 206}
!979 = !{!"branch_weights", i32 2602, i32 778}
!980 = !{!"branch_weights", i32 0, i32 778}
!981 = !{!"branch_weights", i32 1188, i32 2192}
!982 = !{!"branch_weights", i32 0, i32 1188}
!983 = !{!984, !317, i64 0}
!984 = !{!"VEC_vn_reference_op_s_heap", !367, i64 0}
!985 = !{!"VP", i32 1, i64 1188, i64 65, i64 615, i64 33, i64 309, i64 129, i64 264}
!986 = !{!"branch_weights", i32 159, i32 3221}
!987 = !{!"branch_weights", i32 159, i32 0}
!988 = !{i64 0, i64 8, !311, i64 8, i64 8, !311, i64 16, i64 8, !311, i64 24, i64 8, !311}
!989 = !{!"branch_weights", i32 1827, i32 1553}
!990 = !{!"branch_weights", i32 0, i32 1827}
!991 = !{!"branch_weights", i32 3380, i32 206}
!992 = distinct !{!992, !328, !329}
!993 = !{!"branch_weights", i32 982, i32 206}
!994 = !{!"branch_weights", i32 0, i32 206}
!995 = !{!"branch_weights", i32 0, i32 982}
!996 = !{!340, !317, i64 16}
!997 = !{!340, !312, i64 24}
!998 = !{!"branch_weights", i32 888, i32 94}
!999 = !{!"branch_weights", i32 888, i32 0}
!1000 = distinct !{!1000, !328, !329}
!1001 = !{!"branch_weights", i32 0, i32 888}
!1002 = !{!"branch_weights", i32 409, i32 479}
!1003 = !{!428, !317, i64 44}
!1004 = !{!"branch_weights", i32 925, i32 57}
!1005 = !{!"branch_weights", i32 70, i32 912}
!1006 = !{!"branch_weights", i32 571, i32 341}
!1007 = !{!"branch_weights", i32 0, i32 341}
!1008 = !{!"branch_weights", i32 667, i32 245}
!1009 = !{!"branch_weights", i32 245, i32 0}
!1010 = !{!"branch_weights", i32 341, i32 0}
!1011 = !{!"branch_weights", i32 33, i32 308}
!1012 = !{!"branch_weights", i32 0, i32 571}
!1013 = !{!"VP", i32 1, i64 571, i64 8, i64 534, i64 16, i64 37}
!1014 = !{!"branch_weights", i32 571, i32 0}
!1015 = !{!"branch_weights", i32 912, i32 0}
!1016 = !{!"branch_weights", i32 912, i32 70}
!1017 = !{!"branch_weights", i32 2688, i32 289}
!1018 = !{!"branch_weights", i32 2686, i32 2}
!1019 = !{!"branch_weights", i32 0, i32 2686}
!1020 = !{!"branch_weights", i32 638, i32 2048}
!1021 = !{!"branch_weights", i32 638, i32 0}
!1022 = !{!"branch_weights", i32 264, i32 4158}
!1023 = !{!"branch_weights", i32 2977, i32 1181}
!1024 = !{!"branch_weights", i32 1181, i32 0}
!1025 = !{!"function_entry_count", i64 28851}
!1026 = !{!"tree-ssa-pre.c;bitmap_value_replace_in_set"}
!1027 = !{!"branch_weights", i32 7890, i32 20961}
!1028 = !{!"branch_weights", i32 20961, i32 0}
!1029 = !{!"branch_weights", i32 0, i32 20961}
!1030 = !{!"branch_weights", i32 14258, i32 34639}
!1031 = !{!"branch_weights", i32 48896, i32 1}
!1032 = !{!"branch_weights", i32 424251, i32 48896}
!1033 = !{!"branch_weights", i32 1, i32 13197}
!1034 = !{!"branch_weights", i32 21680, i32 14258}
!1035 = !{!"branch_weights", i32 13197, i32 22741}
!1036 = !{!"branch_weights", i32 0, i32 13198}
!1037 = !{!"branch_weights", i32 0, i32 48897}
!1038 = !{!"branch_weights", i32 27936, i32 20961}
!1039 = distinct !{!1039, !328, !329}
!1040 = !{!"function_entry_count", i64 221}
!1041 = !{!"tree-ssa-pre.c;get_representative_for"}
!1042 = !{!"branch_weights", i32 0, i32 14, i32 0, i32 64, i32 143}
!1043 = !{!"branch_weights", i32 0, i32 207}
!1044 = !{!"branch_weights", i32 185, i32 144}
!1045 = !{!"branch_weights", i32 235, i32 1}
!1046 = !{!"branch_weights", i32 5242, i32 235}
!1047 = !{!"branch_weights", i32 1, i32 185}
!1048 = !{!"branch_weights", i32 45, i32 92}
!1049 = !{!"branch_weights", i32 185, i32 89}
!1050 = !{!"branch_weights", i32 93, i32 0}
!1051 = !{!"branch_weights", i32 93, i32 236}
!1052 = !{!"branch_weights", i32 114, i32 122}
!1053 = distinct !{!1053, !328, !329}
!1054 = !{!"branch_weights", i32 93, i32 114}
!1055 = !{!"branch_weights", i32 0, i32 189, i32 0, i32 121, i32 47}
!1056 = !{!"branch_weights", i32 12, i32 81}
!1057 = !{!"branch_weights", i32 57, i32 24}
!1058 = !{!"branch_weights", i32 0, i32 36, i32 0}
!1059 = !{!"branch_weights", i32 0, i32 36}
!1060 = !{!"branch_weights", i32 36, i32 0}
!1061 = !{!"branch_weights", i32 0, i32 93}
!1062 = !{!"function_entry_count", i64 2072}
!1063 = !{!"tree-ssa-pre.c;get_or_alloc_expr_for_constant"}
!1064 = !{!"branch_weights", i32 197, i32 1875}
!1065 = !{!"function_entry_count", i64 2863}
!1066 = !{!"tree-ssa-pre.c;fully_constant_expression"}
!1067 = !{!"branch_weights", i32 0, i32 2427, i32 436}
!1068 = !{!"branch_weights", i32 0, i32 0, i32 370, i32 30, i32 0, i32 36}
!1069 = !{!"branch_weights", i32 266, i32 134}
!1070 = !{!"branch_weights", i32 266, i32 0}
!1071 = !{!"branch_weights", i32 134, i32 266}
!1072 = !{!"branch_weights", i32 134, i32 0}
!1073 = !{!"branch_weights", i32 400, i32 0}
!1074 = !{!"branch_weights", i32 0, i32 2427}
!1075 = !{!"function_entry_count", i64 5498}
!1076 = !{!"tree-ssa-pre.c;bitmap_find_leader"}
!1077 = !{!"branch_weights", i32 404391, i32 0}
!1078 = distinct !{!1078, !328, !329}
!1079 = !{!"tree-ssa-pre.c;bitmap_set_contains_value"}
!1080 = !{!"tree-ssa-pre.c;get_expr_type"}
!1081 = !{!"function_entry_count", i64 466}
!1082 = !{!"tree-ssa-pre.c;get_or_alloc_expr_for"}
!1083 = !{!"branch_weights", i32 442, i32 24}
!1084 = !{!"function_entry_count", i64 436}
!1085 = !{!"tree-ssa-pre.c;get_constant_for_value_id"}
!1086 = !{!"branch_weights", i32 436, i32 0}
!1087 = distinct !{!1087, !328, !329}
!1088 = !{!"function_entry_count", i64 13164}
!1089 = !{!"tree-ssa-pre.c;valid_in_sets"}
!1090 = !{!"branch_weights", i32 0, i32 842, i32 4039, i32 8283}
!1091 = !{!"branch_weights", i32 1, i32 2061}
!1092 = !{!"branch_weights", i32 4053, i32 2409}
!1093 = !{!"branch_weights", i32 0, i32 4053}
!1094 = !{!"branch_weights", i32 4053, i32 0}
!1095 = !{!"branch_weights", i32 2169, i32 1884}
!1096 = !{!"branch_weights", i32 1509, i32 660}
!1097 = !{!"branch_weights", i32 660, i32 0}
!1098 = !{!"branch_weights", i32 325, i32 335}
!1099 = !{!"branch_weights", i32 468, i32 192}
!1100 = !{!"branch_weights", i32 4401, i32 2061}
!1101 = distinct !{!1101, !328, !329}
!1102 = !{!"branch_weights", i32 2016, i32 46}
!1103 = !{!"branch_weights", i32 46, i32 0}
!1104 = !{!"branch_weights", i32 0, i32 28314}
!1105 = !{!"branch_weights", i32 20077, i32 8237}
!1106 = !{!"branch_weights", i32 8237, i32 20077}
!1107 = !{!"branch_weights", i32 899, i32 19178}
!1108 = !{!"branch_weights", i32 983, i32 18195}
!1109 = !{!"branch_weights", i32 0, i32 983}
!1110 = !{!"branch_weights", i32 983, i32 0}
!1111 = !{!"branch_weights", i32 241, i32 742}
!1112 = !{!"branch_weights", i32 7, i32 234}
!1113 = !{!"branch_weights", i32 234, i32 0}
!1114 = !{!"branch_weights", i32 21, i32 213}
!1115 = !{!"branch_weights", i32 39, i32 195}
!1116 = !{!"branch_weights", i32 14708, i32 5323}
!1117 = !{!"branch_weights", i32 0, i32 5323}
!1118 = distinct !{!1118, !328, !329}
!1119 = !{!"branch_weights", i32 0, i32 8237}
!1120 = !{!"branch_weights", i32 256, i32 7981}
!1121 = !{!"branch_weights", i32 2885, i32 5096}
!1122 = !{!"branch_weights", i32 0, i32 5096}
!1123 = !{!454, !312, i64 56}
!1124 = !{!"branch_weights", i32 2791, i32 5446}
!1125 = !{!"branch_weights", i32 2291, i32 3155}
!1126 = !{!1127, !312, i64 8}
!1127 = !{!"ao_ref_s", !312, i64 0, !312, i64 8, !318, i64 16, !318, i64 24, !318, i64 32, !317, i64 40, !317, i64 44}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1130, !"gsi_start_bb: argument 0"}
!1130 = distinct !{!1130, !"gsi_start_bb"}
!1131 = !{!"branch_weights", i32 5082, i32 0}
!1132 = !{!"branch_weights", i32 0, i32 5082}
!1133 = !{!"branch_weights", i32 1, i32 1066}
!1134 = !{!"branch_weights", i32 1302, i32 4945}
!1135 = !{!"branch_weights", i32 1436, i32 4811}
!1136 = !{!"branch_weights", i32 2799, i32 2012}
!1137 = !{!"branch_weights", i32 2003, i32 796}
!1138 = !{!"branch_weights", i32 2012, i32 0}
!1139 = !{!"branch_weights", i32 0, i32 2012}
!1140 = !{!"branch_weights", i32 4015, i32 2232}
!1141 = !{!"branch_weights", i32 1066, i32 5181}
!1142 = distinct !{!1142, !328, !329}
!1143 = !{!"branch_weights", i32 2791, i32 2291}
!1144 = !{!"branch_weights", i32 3070, i32 2012}
!1145 = !{!"function_entry_count", i64 13316}
!1146 = !{!"tree-ssa-pre.c;insert_aux"}
!1147 = !{!"branch_weights", i32 0, i32 13316}
!1148 = !{!"branch_weights", i32 62, i32 13254}
!1149 = !{!"branch_weights", i32 0, i32 13254}
!1150 = !{!"branch_weights", i32 248, i32 13006}
!1151 = !{!"branch_weights", i32 22084, i32 5098}
!1152 = !{!"branch_weights", i32 13927, i32 1}
!1153 = !{!"branch_weights", i32 266145, i32 13927}
!1154 = !{!"branch_weights", i32 1, i32 13279}
!1155 = !{!"branch_weights", i32 4476, i32 8830}
!1156 = !{!"branch_weights", i32 13279, i32 27}
!1157 = !{!"branch_weights", i32 13254, i32 26}
!1158 = !{!"branch_weights", i32 13254, i32 13928}
!1159 = distinct !{!1159, !328, !329}
!1160 = !{!"branch_weights", i32 12048, i32 1206}
!1161 = !{!"branch_weights", i32 580, i32 1418}
!1162 = !{!"branch_weights", i32 792, i32 626}
!1163 = !{!"branch_weights", i32 1206, i32 792}
!1164 = !{!"branch_weights", i32 0, i32 120458096, i32 1397704, i32 277491984, i32 142713648}
!1165 = !{!"branch_weights", i32 543, i32 73}
!1166 = !{!"branch_weights", i32 543, i32 0}
!1167 = !{!"branch_weights", i32 0, i32 1832}
!1168 = !{!"branch_weights", i32 543, i32 1289}
!1169 = !{!"branch_weights", i32 1289, i32 0}
!1170 = !{!"branch_weights", i32 0, i32 1289}
!1171 = !{!"branch_weights", i32 1168, i32 121}
!1172 = !{!"branch_weights", i32 6, i32 115}
!1173 = !{!"branch_weights", i32 75, i32 46}
!1174 = !{!"branch_weights", i32 42, i32 4}
!1175 = distinct !{!1175, !328, !329}
!1176 = !{!"branch_weights", i32 75, i32 468}
!1177 = !{!"branch_weights", i32 73, i32 470}
!1178 = !{!"branch_weights", i32 0, i32 73}
!1179 = !{!"branch_weights", i32 470, i32 0}
!1180 = !{!"branch_weights", i32 0, i32 470}
!1181 = distinct !{!1181, !328, !329}
!1182 = distinct !{!1182, !328, !329}
!1183 = !{!"branch_weights", i32 580, i32 626}
!1184 = !{!"branch_weights", i32 0, i32 1206}
!1185 = !{!"branch_weights", i32 1020, i32 642}
!1186 = !{!"branch_weights", i32 456, i32 186}
!1187 = !{!"branch_weights", i32 1206, i32 456}
!1188 = !{!"branch_weights", i32 0, i32 1368842, i32 1030126, i32 204515196, i32 105181812}
!1189 = !{!"branch_weights", i32 452, i32 2}
!1190 = !{!"branch_weights", i32 428, i32 24}
!1191 = !{!"branch_weights", i32 0, i32 502}
!1192 = !{!"branch_weights", i32 2, i32 500}
!1193 = !{!"branch_weights", i32 500, i32 0}
!1194 = !{!"branch_weights", i32 2, i32 498}
!1195 = !{!"branch_weights", i32 424, i32 74}
!1196 = !{!"branch_weights", i32 74, i32 426}
!1197 = distinct !{!1197, !328, !329}
!1198 = !{!"branch_weights", i32 426, i32 2}
!1199 = !{!"branch_weights", i32 2, i32 426}
!1200 = !{!"branch_weights", i32 0, i32 2}
!1201 = distinct !{!1201, !328, !329}
!1202 = !{!"branch_weights", i32 1020, i32 186}
!1203 = !{!"branch_weights", i32 13254, i32 0}
!1204 = distinct !{!1204, !328, !329}
!1205 = !{!"function_entry_count", i64 75}
!1206 = !{!"tree-ssa-pre.c;insert_into_preds_of_block"}
!1207 = !{!"branch_weights", i32 75, i32 0}
!1208 = !{!433, !317, i64 84}
!1209 = !{!"branch_weights", i32 0, i32 75}
!1210 = !{!433, !312, i64 24}
!1211 = distinct !{!1211, !328, !329}
!1212 = !{!"branch_weights", i32 0, i32 264}
!1213 = !{!"branch_weights", i32 75, i32 189}
!1214 = !{!"branch_weights", i32 66, i32 0, i32 123}
!1215 = !{!"branch_weights", i32 66, i32 0}
!1216 = distinct !{!1216, !328, !329}
!1217 = !{!"branch_weights", i32 0, i32 123}
!1218 = distinct !{!1218, !328, !329}
!1219 = !{!"branch_weights", i32 0, i32 189}
!1220 = !{!"branch_weights", i32 189, i32 0}
!1221 = distinct !{!1221, !328, !329}
!1222 = !{!"branch_weights", i32 31, i32 44}
!1223 = !{!"branch_weights", i32 34, i32 10}
!1224 = !{!"branch_weights", i32 0, i32 41, i32 0}
!1225 = !{!"branch_weights", i32 0, i32 41}
!1226 = !{!"branch_weights", i32 41, i32 0}
!1227 = !{!"branch_weights", i32 6, i32 38}
!1228 = distinct !{!1228, !328, !329}
!1229 = !{!"function_entry_count", i64 66}
!1230 = !{!"tree-ssa-pre.c;create_expression_by_pieces"}
!1231 = !{!"branch_weights", i32 0, i32 66}
!1232 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 60, i32 6}
!1233 = !{!"branch_weights", i32 0, i32 6, i32 0}
!1234 = !{!"branch_weights", i32 6, i32 0}
!1235 = distinct !{!1235, !328, !329}
!1236 = !{!"branch_weights", i32 3, i32 63}
!1237 = !{!"branch_weights", i32 60, i32 3}
!1238 = !{!"branch_weights", i32 9, i32 57}
!1239 = !{!"function_entry_count", i64 30}
!1240 = !{!"tree-ssa-pre.c;find_or_generate_expression"}
!1241 = !{!"branch_weights", i32 0, i32 30}
!1242 = !{!"branch_weights", i32 0, i32 6, i32 24}
!1243 = !{!"branch_weights", i32 30, i32 0}
!1244 = distinct !{!1244, !328, !329}
!1245 = !{!"tree-ssa-pre.c;create_component_ref_by_pieces_1"}
!1246 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 60, i32 0, i32 0, i32 0, i32 0}
!1247 = distinct !{!1247, !328, !329}
