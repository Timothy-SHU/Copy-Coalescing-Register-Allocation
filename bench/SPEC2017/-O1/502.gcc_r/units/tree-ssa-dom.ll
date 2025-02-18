; ModuleID = 'tree-ssa-dom.c'
source_filename = "tree-ssa-dom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.opt_stats_d = type { i64, i64, i64, i64, i64 }
%struct.real_value = type { i32, [3 x i64] }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.edge_info = type { ptr, ptr, ptr, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.expr_hash_elt = type { ptr, %struct.hashable_expr, ptr, i32, ptr }
%struct.hashable_expr = type { ptr, i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, i8, i64, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.VEC_expr_hash_elt_t_base = type { i32, i32, [1 x ptr] }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.cond_equivalence = type { %struct.hashable_expr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"dom\00", align 1
@pass_dominator = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_dominator, ptr @tree_ssa_dominator_optimize, ptr null, ptr null, i32 0, i32 62, i32 40, i32 0, i32 0, i32 0, i32 2085 } }, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Total number of statements:                   %6ld\0A\0A\00", align 1
@opt_stats = internal unnamed_addr global %struct.opt_stats_d zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"Exprs considered for dominator optimizations: %6ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\0AHash table statistics:\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"    avail_exprs: \00", align 1
@avail_exprs = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"phicprop\00", align 1
@pass_phi_only_cprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr @gate_dominator, ptr @eliminate_degenerate_phis, ptr null, ptr null, i32 0, i32 66, i32 40, i32 0, i32 0, i32 0, i32 2103 } }, align 8
@flag_tree_dom = external local_unnamed_addr global i32, align 4
@avail_exprs_stack = internal unnamed_addr global ptr null, align 8
@const_and_copies_stack = internal global ptr null, align 8
@need_eh_cleanup = internal unnamed_addr global ptr null, align 8
@cfg_altered = internal unnamed_addr global i8 0, align 1
@cfun = external local_unnamed_addr global ptr, align 8
@first_pass_instance = external local_unnamed_addr global i8, align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Redundant expressions eliminated\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Constants propagated\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Copies propagated\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@ssa_name_values = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"tree-ssa-dom.c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\0A\0AOptimizing block #%d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@dconst0 = external global %struct.real_value, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"0>>> COPY \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"1>>> \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"STMT \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"COND \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.20 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Optimizing statement \00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"  Folded to: \00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.27 = private unnamed_addr constant [30 x i8] c"  Flagged to clear EH edges.\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.30 = private unnamed_addr constant [13 x i8] c"  Replaced '\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"' with %s '\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"  Replaced redundant expr '\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"' with '\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"LKUP \00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"2>>> \00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"FIND: \00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"==== ASGN \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"<<<< \00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"<<<< COPY \00", align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.43 = private unnamed_addr constant [51 x i8] c"size %ld, %ld elements, %f collision/search ratio\0A\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.44 = private unnamed_addr constant [14 x i8] c"  Replacing '\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"    Original statement:\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"    Updated statement:\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !183 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !184
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !183 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !184
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !183 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !188
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !193
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !194

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !188
  %11 = load i8, ptr %3, align 1, !tbaa !195
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !183 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !188
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !193
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !194

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !188
  %11 = load i8, ptr %3, align 1, !tbaa !195
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !183 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !184
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !188
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !193
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !194

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #21
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !188
  %11 = load i8, ptr %3, align 1, !tbaa !195
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !183 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !184
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !183 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !194

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !196
  store i8 %12, ptr %4, align 1, !tbaa !195
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !183 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !194

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !196
  store i8 %12, ptr %4, align 1, !tbaa !195
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !183 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !184
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !196
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !194

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !196
  store i8 %12, ptr %4, align 1, !tbaa !195
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !183 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #21
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !183 {
  %2 = load i32, ptr %0, align 8, !tbaa !198
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !183 {
  %2 = load i32, ptr %0, align 8, !tbaa !198
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !183 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !184
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !199
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !183 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !184
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !199
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !183 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !183 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !183 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !183 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #21
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
  br i1 %23, label %7, label %24, !llvm.loop !200

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !183 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_dominator() #9 !prof !203 !PGOFuncName !204 {
  %1 = load i32, ptr @flag_tree_dom, align 4, !tbaa !199
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tree_ssa_dominator_optimize() #10 !prof !205 !PGOFuncName !206 {
  %1 = alloca %struct.dom_walk_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @opt_stats, i8 0, i64 40, i1 false)
  %2 = tail call ptr @htab_create(i64 noundef 1024, ptr noundef nonnull @real_avail_expr_hash, ptr noundef nonnull @avail_expr_eq, ptr noundef nonnull @free_expr_hash_elt) #21
  store ptr %2, ptr @avail_exprs, align 8, !tbaa !184
  %3 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #21
  store ptr %3, ptr @avail_exprs_stack, align 8, !tbaa !184
  %4 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #21
  store ptr %4, ptr @const_and_copies_stack, align 8, !tbaa !184
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %5, ptr @need_eh_cleanup, align 8, !tbaa !184
  %6 = load i8, ptr %1, align 8
  %7 = and i8 %6, -4
  %8 = or disjoint i8 %7, 1
  store i8 %8, ptr %1, align 8
  %9 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !207
  %10 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @dom_opt_enter_block, ptr %10, align 8, !tbaa !209
  %11 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr @dom_opt_leave_block, ptr %11, align 8, !tbaa !210
  %12 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 4
  store ptr null, ptr %12, align 8, !tbaa !211
  %13 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 6
  store i64 0, ptr %13, align 8, !tbaa !212
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #21
  call void @calculate_dominance_info(i32 noundef 1) #21
  store i8 0, ptr @cfg_altered, align 1, !tbaa !195
  call void @loop_optimizer_init(i32 noundef 2) #21
  call void @threadedge_initialize_values() #21
  %14 = call zeroext i8 @mark_dfs_back_edges() #21
  %15 = load ptr, ptr @cfun, align 8, !tbaa !184
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !213
  %18 = load ptr, ptr %17, align 8, !tbaa !215
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %18) #21
  %19 = load ptr, ptr @cfun, align 8, !tbaa !184
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !213
  %22 = load ptr, ptr %21, align 8, !tbaa !215
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !217
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !219
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %72, label %37, !prof !220

28:                                               ; preds = %68, %54
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !217
  %31 = load ptr, ptr @cfun, align 8, !tbaa !184
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !213
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !219
  %36 = icmp eq ptr %30, %35
  br i1 %36, label %72, label %37, !prof !221, !llvm.loop !222

37:                                               ; preds = %0, %28
  %38 = phi ptr [ %30, %28 ], [ %24, %0 ]
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 13
  %40 = load i32, ptr %39, align 8, !tbaa !223, !noalias !224
  %41 = and i32 %40, 512
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49, !prof !227

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !195, !noalias !224
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47, !prof !228

47:                                               ; preds = %43
  %48 = load ptr, ptr %45, align 8, !tbaa !229, !noalias !224
  br label %49

49:                                               ; preds = %47, %43, %37
  %50 = phi ptr [ %48, %47 ], [ null, %43 ], [ null, %37 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !228

52:                                               ; preds = %49
  %53 = load ptr, ptr %50, align 8, !tbaa !231, !noalias !224
  br label %54

54:                                               ; preds = %49, %52
  %55 = phi ptr [ %53, %52 ], [ null, %49 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %28, label %57, !prof !233

57:                                               ; preds = %54, %68
  %58 = phi ptr [ %70, %68 ], [ %55, %54 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !234
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 255
  %62 = add nsw i32 %61, -10
  %63 = icmp ult i32 %62, -9
  %64 = and i32 %60, 8192
  %65 = icmp eq i32 %64, 0
  %66 = or i1 %65, %63
  br i1 %66, label %68, label %67, !prof !236

67:                                               ; preds = %57
  call void @update_stmt_operands(ptr noundef nonnull %59) #21
  br label %68

68:                                               ; preds = %57, %67
  %69 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %58, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !237
  %71 = icmp eq ptr %70, null
  br i1 %71, label %28, label %57, !prof !238, !llvm.loop !239

72:                                               ; preds = %28, %0
  call void @update_ssa(i32 noundef 2048) #21
  %73 = load ptr, ptr @cfun, align 8, !tbaa !184
  %74 = getelementptr inbounds %struct.function, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !213
  %76 = load ptr, ptr %75, align 8, !tbaa !215
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !217
  %79 = getelementptr inbounds %struct.control_flow_graph, ptr %75, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !219
  %81 = icmp eq ptr %78, %80
  br i1 %81, label %132, label %91, !prof !220

82:                                               ; preds = %109
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !217
  %85 = load ptr, ptr @cfun, align 8, !tbaa !184
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !213
  %88 = getelementptr inbounds %struct.control_flow_graph, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !219
  %90 = icmp eq ptr %84, %89
  br i1 %90, label %132, label %91, !prof !221, !llvm.loop !240

91:                                               ; preds = %72, %82
  %92 = phi ptr [ %84, %82 ], [ %78, %72 ]
  %93 = icmp eq ptr %92, null
  br label %94

94:                                               ; preds = %91, %130
  %95 = phi i32 [ %131, %130 ], [ 0, %91 ]
  br i1 %93, label %96, label %97, !prof !241

96:                                               ; preds = %94
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 687, ptr noundef nonnull @.str.10) #21
  br label %97

97:                                               ; preds = %96, %94
  %98 = load ptr, ptr %92, align 8, !tbaa !184
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100, !prof !241

100:                                              ; preds = %97
  %101 = load i32, ptr %98, align 8, !tbaa !242
  br label %102

102:                                              ; preds = %100, %97
  %103 = phi i32 [ %101, %100 ], [ 0, %97 ]
  %104 = icmp eq i32 %103, %95
  br i1 %104, label %109, label %105, !prof !244

105:                                              ; preds = %102
  %106 = zext i32 %95 to i64
  %107 = getelementptr inbounds %struct.VEC_edge_base, ptr %98, i64 0, i32 2, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !184
  br label %109

109:                                              ; preds = %105, %102
  %110 = phi ptr [ %108, %105 ], [ null, %102 ]
  br i1 %104, label %82, label %111, !prof !244

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.edge_def, ptr %110, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !245
  %114 = icmp eq ptr %113, null
  br i1 %114, label %121, label %115, !prof !247

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.edge_info, ptr %113, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !248
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119, !prof !250

119:                                              ; preds = %115
  call void @free(ptr noundef %117)
  br label %120

120:                                              ; preds = %119, %115
  call void @free(ptr noundef %113)
  store ptr null, ptr %112, align 8, !tbaa !245
  br label %121

121:                                              ; preds = %120, %111
  %122 = load ptr, ptr %92, align 8, !tbaa !184
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124, !prof !251

124:                                              ; preds = %121
  %125 = load i32, ptr %122, align 8, !tbaa !242
  br label %126

126:                                              ; preds = %124, %121
  %127 = phi i32 [ %125, %124 ], [ 0, %121 ]
  %128 = icmp ult i32 %95, %127
  br i1 %128, label %130, label %129, !prof !252

129:                                              ; preds = %126
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.10) #21
  br label %130

130:                                              ; preds = %129, %126
  %131 = add i32 %95, 1
  br label %94, !llvm.loop !253

132:                                              ; preds = %82, %72
  %133 = load i8, ptr @first_pass_instance, align 1, !tbaa !195
  %134 = call zeroext i8 @thread_through_all_blocks(i8 noundef zeroext %133) #21
  %135 = load i8, ptr @cfg_altered, align 1, !tbaa !195
  %136 = or i8 %135, %134
  store i8 %136, ptr @cfg_altered, align 1, !tbaa !195
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %139, label %138, !prof !254

138:                                              ; preds = %132
  call void @free_dominance_info(i32 noundef 1) #21
  br label %139

139:                                              ; preds = %138, %132
  %140 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !184
  %141 = load ptr, ptr %140, align 8, !tbaa !255
  %142 = icmp eq ptr %141, null
  br i1 %142, label %271, label %143, !prof !257

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.bitmap_element_def, ptr %141, i64 0, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !258
  %146 = shl i32 %145, 7
  %147 = getelementptr inbounds %struct.bitmap_element_def, ptr %141, i64 0, i32 3
  %148 = load i64, ptr %147, align 8, !tbaa !260
  %149 = icmp eq i64 %148, 0
  %150 = zext i1 %149 to i32
  %151 = or disjoint i32 %146, %150
  br label %152

152:                                              ; preds = %264, %143
  %153 = phi i64 [ %148, %143 ], [ %265, %264 ]
  %154 = phi i32 [ %151, %143 ], [ %266, %264 ]
  %155 = phi i32 [ 0, %143 ], [ %210, %264 ]
  %156 = phi ptr [ %141, %143 ], [ %211, %264 ]
  %157 = icmp eq i64 %153, 0
  br i1 %157, label %172, label %158

158:                                              ; preds = %186, %152
  %159 = phi i64 [ %153, %152 ], [ %191, %186 ]
  %160 = phi i32 [ %154, %152 ], [ %188, %186 ]
  %161 = phi i32 [ %155, %152 ], [ %187, %186 ]
  %162 = phi ptr [ %156, %152 ], [ %179, %186 ]
  %163 = and i64 %159, 1
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %207

165:                                              ; preds = %158, %165
  %166 = phi i32 [ %169, %165 ], [ %160, %158 ]
  %167 = phi i64 [ %168, %165 ], [ %159, %158 ]
  %168 = lshr exact i64 %167, 1
  %169 = add i32 %166, 1
  %170 = and i64 %167, 2
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %165, label %207, !llvm.loop !261

172:                                              ; preds = %152
  %173 = add i32 %154, 63
  %174 = and i32 %173, -64
  %175 = add i32 %155, 1
  br label %176

176:                                              ; preds = %203, %172
  %177 = phi i64 [ %153, %172 ], [ %198, %203 ]
  %178 = phi i32 [ %174, %172 ], [ %206, %203 ]
  %179 = phi ptr [ %156, %172 ], [ %201, %203 ]
  %180 = phi i32 [ %175, %172 ], [ 0, %203 ]
  %181 = icmp eq i32 %180, 2
  br i1 %181, label %197, label %182

182:                                              ; preds = %176
  %183 = add i32 %178, 128
  %184 = shl i32 %180, 6
  %185 = sub i32 %183, %184
  br label %186

186:                                              ; preds = %182, %193
  %187 = phi i32 [ %195, %193 ], [ %180, %182 ]
  %188 = phi i32 [ %194, %193 ], [ %178, %182 ]
  %189 = zext i32 %187 to i64
  %190 = getelementptr inbounds %struct.bitmap_element_def, ptr %179, i64 0, i32 3, i64 %189
  %191 = load i64, ptr %190, align 8, !tbaa !260
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %158

193:                                              ; preds = %186
  %194 = add i32 %188, 64
  %195 = add i32 %187, 1
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %197, label %186, !llvm.loop !262

197:                                              ; preds = %193, %176
  %198 = phi i64 [ %177, %176 ], [ %191, %193 ]
  %199 = phi i32 [ %178, %176 ], [ %185, %193 ]
  %200 = phi i32 [ %180, %176 ], [ 2, %193 ]
  %201 = load ptr, ptr %179, align 8, !tbaa !263
  %202 = icmp eq ptr %201, null
  br i1 %202, label %207, label %203

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.bitmap_element_def, ptr %201, i64 0, i32 2
  %205 = load i32, ptr %204, align 8, !tbaa !258
  %206 = shl i32 %205, 7
  br label %176, !llvm.loop !264

207:                                              ; preds = %197, %165, %158
  %208 = phi i64 [ %159, %158 ], [ %168, %165 ], [ %198, %197 ]
  %209 = phi i32 [ %160, %158 ], [ %169, %165 ], [ %199, %197 ]
  %210 = phi i32 [ %161, %158 ], [ %161, %165 ], [ %200, %197 ]
  %211 = phi ptr [ %162, %158 ], [ %162, %165 ], [ %201, %197 ]
  %212 = phi i1 [ false, %158 ], [ false, %165 ], [ true, %197 ]
  br i1 %212, label %267, label %213

213:                                              ; preds = %207
  %214 = load ptr, ptr @cfun, align 8, !tbaa !184
  %215 = getelementptr inbounds %struct.function, ptr %214, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !213
  %217 = getelementptr inbounds %struct.control_flow_graph, ptr %216, i64 0, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !265
  %219 = zext i32 %209 to i64
  %220 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %218, i64 0, i32 2, i64 %219
  %221 = load ptr, ptr %220, align 8, !tbaa !184
  %222 = getelementptr inbounds %struct.basic_block_def, ptr %221, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !266
  %224 = icmp eq ptr %223, null
  br i1 %224, label %229, label %225

225:                                              ; preds = %213
  %226 = load i32, ptr %223, align 8, !tbaa !242
  %227 = icmp eq i32 %226, 1
  %228 = zext i1 %227 to i8
  br label %229

229:                                              ; preds = %213, %225
  %230 = phi i8 [ %228, %225 ], [ 0, %213 ]
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %264, label %232

232:                                              ; preds = %229
  br i1 %224, label %236, label %233

233:                                              ; preds = %232
  %234 = load i32, ptr %223, align 8, !tbaa !242
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %237, label %236

236:                                              ; preds = %232, %233
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.10) #21
  br label %237

237:                                              ; preds = %233, %236
  %238 = load ptr, ptr %222, align 8, !tbaa !266
  %239 = getelementptr inbounds %struct.VEC_edge_base, ptr %238, i64 0, i32 2, i64 0
  %240 = load ptr, ptr %239, align 8, !tbaa !184
  %241 = getelementptr inbounds %struct.edge_def, ptr %240, i64 0, i32 7
  %242 = load i32, ptr %241, align 8, !tbaa !267
  %243 = and i32 %242, 8
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %264

245:                                              ; preds = %237
  %246 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !184
  %247 = call zeroext i8 @bitmap_clear_bit(ptr noundef %246, i32 noundef %209) #21
  %248 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !184
  %249 = load ptr, ptr %222, align 8, !tbaa !266
  %250 = icmp eq ptr %249, null
  br i1 %250, label %254, label %251

251:                                              ; preds = %245
  %252 = load i32, ptr %249, align 8, !tbaa !242
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %255, label %254

254:                                              ; preds = %251, %245
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.10) #21
  br label %255

255:                                              ; preds = %251, %254
  %256 = load ptr, ptr %222, align 8, !tbaa !266
  %257 = getelementptr inbounds %struct.VEC_edge_base, ptr %256, i64 0, i32 2, i64 0
  %258 = load ptr, ptr %257, align 8, !tbaa !184
  %259 = getelementptr inbounds %struct.edge_def, ptr %258, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !268
  %261 = getelementptr inbounds %struct.basic_block_def, ptr %260, i64 0, i32 9
  %262 = load i32, ptr %261, align 8, !tbaa !269
  %263 = call zeroext i8 @bitmap_set_bit(ptr noundef %248, i32 noundef %262) #21
  br label %264

264:                                              ; preds = %255, %237, %229
  %265 = lshr i64 %208, 1
  %266 = add i32 %209, 1
  br label %152, !llvm.loop !270

267:                                              ; preds = %207
  %268 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !184
  %269 = call zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef %268) #21
  %270 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !184
  call void @bitmap_clear(ptr noundef %270) #21
  br label %271

271:                                              ; preds = %267, %139
  %272 = load ptr, ptr @cfun, align 8, !tbaa !184
  %273 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 2), align 8, !tbaa !271
  %274 = trunc i64 %273 to i32
  call void @statistics_counter_event(ptr noundef %272, ptr noundef nonnull @.str.6, i32 noundef %274) #21
  %275 = load ptr, ptr @cfun, align 8, !tbaa !184
  %276 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 3), align 8, !tbaa !273
  %277 = trunc i64 %276 to i32
  call void @statistics_counter_event(ptr noundef %275, ptr noundef nonnull @.str.7, i32 noundef %277) #21
  %278 = load ptr, ptr @cfun, align 8, !tbaa !184
  %279 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 4), align 8, !tbaa !274
  %280 = trunc i64 %279 to i32
  call void @statistics_counter_event(ptr noundef %278, ptr noundef nonnull @.str.8, i32 noundef %280) #21
  %281 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %282 = icmp eq ptr %281, null
  br i1 %282, label %288, label %283, !prof !257

283:                                              ; preds = %271
  %284 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %285 = and i32 %284, 16
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %283
  call void @dump_dominator_optimization_stats(ptr noundef nonnull %281)
  br label %288

288:                                              ; preds = %287, %283, %271
  call void @loop_optimizer_finalize() #21
  %289 = load ptr, ptr @avail_exprs, align 8, !tbaa !184
  call void @htab_delete(ptr noundef %289) #21
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #21
  %290 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !184
  call void @bitmap_obstack_free(ptr noundef %290) #21
  store ptr null, ptr @need_eh_cleanup, align 8, !tbaa !184
  %291 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !184
  %292 = icmp eq ptr %291, null
  br i1 %292, label %294, label %293, !prof !275

293:                                              ; preds = %288
  call void @free(ptr noundef %291)
  br label %294

294:                                              ; preds = %288, %293
  store ptr null, ptr @avail_exprs_stack, align 8, !tbaa !184
  %295 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !184
  %296 = icmp eq ptr %295, null
  br i1 %296, label %298, label %297, !prof !275

297:                                              ; preds = %294
  call void @free(ptr noundef %295)
  br label %298

298:                                              ; preds = %294, %297
  store ptr null, ptr @const_and_copies_stack, align 8, !tbaa !184
  call void @threadedge_finalize_values() #21
  store ptr null, ptr @ssa_name_values, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #21
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_dominator_optimization_stats(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !183 {
  %2 = load i64, ptr @opt_stats, align 8, !tbaa !276
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef %2)
  %4 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 1), align 8, !tbaa !277
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %4)
  %6 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 24, i64 1, ptr %0)
  %7 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 17, i64 1, ptr %0)
  %8 = load ptr, ptr @avail_exprs, align 8, !tbaa !184
  %9 = tail call i64 @htab_size(ptr noundef %8) #21
  %10 = tail call i64 @htab_elements(ptr noundef %8) #21
  %11 = tail call double @htab_collisions(ptr noundef %8) #21
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.43, i64 noundef %9, i64 noundef %10, double noundef %11)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_dominator_optimization_stats() local_unnamed_addr #11 !prof !183 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !184
  tail call void @dump_dominator_optimization_stats(ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @loop_depth_of_name(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !278 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %14, !prof !279

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !195
  %8 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !195
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !280

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !281
  br label %14

14:                                               ; preds = %5, %1, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %1 ], [ 0, %5 ]
  ret i32 %15
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @degenerate_phi_result(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !183 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !195
  %4 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !195
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %48, label %7, !prof !282

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %43
  %10 = phi ptr [ null, %7 ], [ %41, %43 ]
  %11 = phi i64 [ 0, %7 ], [ %44, %43 ]
  %12 = trunc i64 %11 to i32
  %13 = load i32, ptr %8, align 8, !tbaa !195
  %14 = icmp ult i32 %13, %12
  br i1 %14, label %15, label %16, !prof !283

15:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 3103, ptr noundef nonnull @.str.10) #21
  br label %16

16:                                               ; preds = %9, %15
  %17 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %11, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !284
  %19 = load ptr, ptr %18, align 8, !tbaa !184
  %20 = icmp eq ptr %19, %3
  br i1 %20, label %40, label %21, !prof !283

21:                                               ; preds = %16
  %22 = icmp eq ptr %19, null
  br i1 %22, label %40, label %23, !prof !283

23:                                               ; preds = %21
  %24 = icmp eq ptr %10, null
  br i1 %24, label %40, label %25, !prof !286

25:                                               ; preds = %23
  %26 = icmp eq ptr %19, %10
  br i1 %26, label %40, label %27, !prof !287

27:                                               ; preds = %25
  %28 = load i64, ptr %10, align 8
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 65535
  %31 = load i64, ptr %19, align 8
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65535
  %34 = icmp ne i32 %30, %33
  %35 = icmp eq i32 %30, 141
  %36 = or i1 %35, %34
  br i1 %36, label %40, label %37, !prof !288

37:                                               ; preds = %27
  %38 = tail call i32 @operand_equal_p(ptr noundef nonnull %19, ptr noundef nonnull %10, i32 noundef 0) #21
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %37, %23, %27, %25, %21, %16
  %41 = phi ptr [ %10, %16 ], [ %10, %21 ], [ %10, %25 ], [ %10, %27 ], [ %19, %23 ], [ %10, %37 ]
  %42 = phi i1 [ false, %16 ], [ true, %21 ], [ false, %25 ], [ true, %27 ], [ false, %23 ], [ %39, %37 ]
  br i1 %42, label %48, label %43, !prof !289

43:                                               ; preds = %40
  %44 = add nuw nsw i64 %11, 1
  %45 = load i32, ptr %4, align 4, !tbaa !195
  %46 = zext i32 %45 to i64
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %9, label %48, !prof !290, !llvm.loop !291

48:                                               ; preds = %43, %40, %1
  %49 = phi i64 [ 0, %1 ], [ %44, %43 ], [ %11, %40 ]
  %50 = phi ptr [ null, %1 ], [ %41, %40 ], [ %41, %43 ]
  %51 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !195
  %53 = zext i32 %52 to i64
  %54 = icmp eq i64 %49, %53
  %55 = select i1 %54, ptr %50, ptr null, !prof !292
  ret ptr %55
}

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @eliminate_degenerate_phis() #10 !prof !205 !PGOFuncName !293 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %1, ptr @need_eh_cleanup, align 8, !tbaa !184
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  tail call void @calculate_dominance_info(i32 noundef 1) #21
  store i8 0, ptr @cfg_altered, align 1, !tbaa !195
  %4 = load ptr, ptr @cfun, align 8, !tbaa !184
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !213
  %7 = load ptr, ptr %6, align 8, !tbaa !215
  tail call fastcc void @eliminate_degenerate_phis_1(ptr noundef %7, ptr noundef %2)
  %8 = load ptr, ptr %2, align 8, !tbaa !255
  %9 = icmp eq ptr %8, null
  br i1 %9, label %102, label %13, !prof !254

10:                                               ; preds = %80
  %11 = load ptr, ptr %2, align 8, !tbaa !255
  %12 = icmp eq ptr %11, null
  br i1 %12, label %102, label %13, !prof !294, !llvm.loop !295

13:                                               ; preds = %0, %10
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef nonnull %2) #21
  %14 = load ptr, ptr %3, align 8, !tbaa !255
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @bitmap_zero_bits, ptr %14, !prof !296
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !258
  %19 = shl i32 %18, 7
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !260
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = or disjoint i32 %19, %23
  br label %25

25:                                               ; preds = %99, %13
  %26 = phi i64 [ %21, %13 ], [ %100, %99 ]
  %27 = phi i32 [ 0, %13 ], [ %82, %99 ]
  %28 = phi i32 [ %24, %13 ], [ %101, %99 ]
  %29 = phi ptr [ %16, %13 ], [ %84, %99 ]
  %30 = icmp eq i64 %26, 0
  br i1 %30, label %45, label %31, !prof !297

31:                                               ; preds = %59, %25
  %32 = phi i64 [ %26, %25 ], [ %64, %59 ]
  %33 = phi i32 [ %27, %25 ], [ %60, %59 ]
  %34 = phi i32 [ %28, %25 ], [ %61, %59 ]
  %35 = phi ptr [ %29, %25 ], [ %52, %59 ]
  %36 = and i64 %32, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %80, !prof !298

38:                                               ; preds = %31, %38
  %39 = phi i32 [ %42, %38 ], [ %34, %31 ]
  %40 = phi i64 [ %41, %38 ], [ %32, %31 ]
  %41 = lshr exact i64 %40, 1
  %42 = add i32 %39, 1
  %43 = and i64 %40, 2
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %38, label %80, !prof !299, !llvm.loop !261

45:                                               ; preds = %25
  %46 = add i32 %28, 63
  %47 = and i32 %46, -64
  %48 = add i32 %27, 1
  br label %49

49:                                               ; preds = %76, %45
  %50 = phi i64 [ %26, %45 ], [ %71, %76 ]
  %51 = phi i32 [ %47, %45 ], [ %79, %76 ]
  %52 = phi ptr [ %29, %45 ], [ %74, %76 ]
  %53 = phi i32 [ %48, %45 ], [ 0, %76 ]
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %70, label %55, !prof !300

55:                                               ; preds = %49
  %56 = add i32 %51, 128
  %57 = shl i32 %53, 6
  %58 = sub i32 %56, %57
  br label %59

59:                                               ; preds = %55, %66
  %60 = phi i32 [ %68, %66 ], [ %53, %55 ]
  %61 = phi i32 [ %67, %66 ], [ %51, %55 ]
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds %struct.bitmap_element_def, ptr %52, i64 0, i32 3, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !260
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %31, !prof !301

66:                                               ; preds = %59
  %67 = add i32 %61, 64
  %68 = add i32 %60, 1
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %59, !prof !302, !llvm.loop !262

70:                                               ; preds = %66, %49
  %71 = phi i64 [ %50, %49 ], [ %64, %66 ]
  %72 = phi i32 [ %51, %49 ], [ %58, %66 ]
  %73 = phi i32 [ %53, %49 ], [ 2, %66 ]
  %74 = load ptr, ptr %52, align 8, !tbaa !263
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76, !prof !303

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.bitmap_element_def, ptr %74, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !258
  %79 = shl i32 %78, 7
  br label %49, !llvm.loop !264

80:                                               ; preds = %70, %38, %31
  %81 = phi i64 [ %32, %31 ], [ %41, %38 ], [ %71, %70 ]
  %82 = phi i32 [ %33, %31 ], [ %33, %38 ], [ %73, %70 ]
  %83 = phi i32 [ %34, %31 ], [ %42, %38 ], [ %72, %70 ]
  %84 = phi ptr [ %35, %31 ], [ %35, %38 ], [ %74, %70 ]
  %85 = phi i1 [ false, %31 ], [ false, %38 ], [ true, %70 ]
  br i1 %85, label %10, label %86, !prof !304

86:                                               ; preds = %80
  %87 = load ptr, ptr @cfun, align 8, !tbaa !184
  %88 = getelementptr inbounds %struct.function, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !305
  %90 = getelementptr inbounds %struct.gimple_df, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !306
  %92 = zext i32 %83 to i64
  %93 = getelementptr inbounds %struct.VEC_tree_base, ptr %91, i64 0, i32 2, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !184
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96, !prof !310

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.tree_ssa_name, ptr %94, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !195
  tail call fastcc void @eliminate_const_or_copy(ptr noundef %98, ptr noundef nonnull %2)
  br label %99

99:                                               ; preds = %96, %86
  %100 = lshr i64 %81, 1
  %101 = add i32 %83, 1
  br label %25, !llvm.loop !311

102:                                              ; preds = %10, %0
  %103 = load i8, ptr @cfg_altered, align 1, !tbaa !195
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %106, label %105, !prof !257

105:                                              ; preds = %102
  tail call void @free_dominance_info(i32 noundef 1) #21
  br label %106

106:                                              ; preds = %105, %102
  %107 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !184
  %108 = load ptr, ptr %107, align 8, !tbaa !255
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110, !prof !257

110:                                              ; preds = %106
  %111 = tail call zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef nonnull %107) #21
  %112 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !184
  tail call void @bitmap_obstack_free(ptr noundef %112) #21
  store ptr null, ptr @need_eh_cleanup, align 8, !tbaa !184
  br label %113

113:                                              ; preds = %110, %106
  tail call void @bitmap_obstack_free(ptr noundef nonnull %2) #21
  tail call void @bitmap_obstack_free(ptr noundef %3) #21
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @real_avail_expr_hash(ptr nocapture noundef readonly %0) #15 !prof !312 !PGOFuncName !313 {
  %2 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !314
  ret i32 %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @avail_expr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 !prof !317 !PGOFuncName !318 {
  %3 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !319
  %5 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !320
  %8 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !319
  %10 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1
  %11 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !320
  %13 = icmp eq ptr %7, %12
  br i1 %13, label %214, label %14, !prof !321

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !314
  %17 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !314
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %214, !prof !322

20:                                               ; preds = %14
  %21 = load ptr, ptr %5, align 8, !tbaa !323
  %22 = load ptr, ptr %10, align 8, !tbaa !323
  %23 = icmp eq ptr %21, null
  %24 = icmp eq ptr %22, null
  %25 = xor i1 %23, %24
  br i1 %25, label %181, label %26, !prof !324

26:                                               ; preds = %20
  %27 = icmp eq ptr %21, %22
  br i1 %27, label %70, label %28, !prof !325

28:                                               ; preds = %26
  %29 = load i64, ptr %21, align 8
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %181, label %33

33:                                               ; preds = %28
  %34 = load i64, ptr %22, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %181, label %37

37:                                               ; preds = %33
  %38 = xor i64 %34, %29
  %39 = and i64 %38, 2097152
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %181

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = xor i32 %45, %43
  %47 = and i32 %46, 1023
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %181

49:                                               ; preds = %41
  %50 = icmp eq i32 %31, 14
  br i1 %50, label %51, label %53

51:                                               ; preds = %49
  %52 = tail call i32 @vector_type_mode(ptr noundef nonnull %21) #21
  br label %56

53:                                               ; preds = %49
  %54 = lshr i32 %43, 16
  %55 = and i32 %54, 255
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i32 [ %52, %51 ], [ %55, %53 ]
  %58 = load i64, ptr %22, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 14
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = tail call i32 @vector_type_mode(ptr noundef nonnull %22) #21
  br label %67

63:                                               ; preds = %56
  %64 = load i32, ptr %44, align 4
  %65 = lshr i32 %64, 16
  %66 = and i32 %65, 255
  br label %67

67:                                               ; preds = %63, %61
  %68 = phi i32 [ %62, %61 ], [ %66, %63 ]
  %69 = icmp eq i32 %57, %68
  br i1 %69, label %70, label %181

70:                                               ; preds = %67, %26
  %71 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !326
  %73 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !326
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %181, !prof !325

76:                                               ; preds = %70
  switch i32 %72, label %180 [
    i32 0, label %77
    i32 1, label %84
    i32 2, label %106
    i32 3, label %143
  ], !prof !327

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !195
  %80 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !195
  %82 = tail call i32 @operand_equal_p(ptr noundef %79, ptr noundef %81, i32 noundef 0) #21
  %83 = trunc i32 %82 to i8
  br label %181

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 2
  %86 = load i32, ptr %85, align 8, !tbaa !195
  %87 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !195
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %181

90:                                               ; preds = %84
  switch i32 %86, label %99 [
    i32 116, label %91
    i32 113, label %91
    i32 117, label %91
  ]

91:                                               ; preds = %90, %90, %90
  %92 = load ptr, ptr %5, align 8, !tbaa !323
  %93 = load i64, ptr %92, align 8
  %94 = load ptr, ptr %10, align 8, !tbaa !323
  %95 = load i64, ptr %94, align 8
  %96 = xor i64 %95, %93
  %97 = and i64 %96, 2097152
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %181

99:                                               ; preds = %90, %91
  %100 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !195
  %102 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !195
  %104 = tail call i32 @operand_equal_p(ptr noundef %101, ptr noundef %103, i32 noundef 0) #21
  %105 = trunc i32 %104 to i8
  br label %181

106:                                              ; preds = %76
  %107 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !195
  %109 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %110 = load i32, ptr %109, align 8, !tbaa !195
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %181, !prof !328

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !195
  %115 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !195
  %117 = tail call i32 @operand_equal_p(ptr noundef %114, ptr noundef %116, i32 noundef 0) #21
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %126, label %119, !prof !329

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !195
  %122 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !195
  %124 = tail call i32 @operand_equal_p(ptr noundef %121, ptr noundef %123, i32 noundef 0) #21
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %181, !prof !329

126:                                              ; preds = %119, %112
  %127 = load i32, ptr %107, align 8, !tbaa !195
  %128 = tail call zeroext i8 @commutative_tree_code(i32 noundef %127) #21
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %181, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %113, align 8, !tbaa !195
  %132 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !195
  %134 = tail call i32 @operand_equal_p(ptr noundef %131, ptr noundef %133, i32 noundef 0) #21
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %181, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !195
  %139 = load ptr, ptr %115, align 8, !tbaa !195
  %140 = tail call i32 @operand_equal_p(ptr noundef %138, ptr noundef %139, i32 noundef 0) #21
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i8
  br label %181

143:                                              ; preds = %76
  %144 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !195
  %146 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !195
  %148 = tail call i32 @operand_equal_p(ptr noundef %145, ptr noundef %147, i32 noundef 0) #21
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %181, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 1
  %152 = load i8, ptr %151, align 8, !tbaa !195
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %181, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 2
  %156 = load i64, ptr %155, align 8, !tbaa !195
  %157 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 2
  %158 = load i64, ptr %157, align 8, !tbaa !195
  %159 = icmp eq i64 %156, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 3
  %162 = load i64, ptr %155, align 8, !tbaa !195
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %181, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 3
  br label %170

166:                                              ; preds = %170
  %167 = add nuw i64 %171, 1
  %168 = load i64, ptr %155, align 8, !tbaa !195
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %170, label %181, !llvm.loop !330

170:                                              ; preds = %164, %166
  %171 = phi i64 [ 0, %164 ], [ %167, %166 ]
  %172 = load ptr, ptr %161, align 8, !tbaa !195
  %173 = getelementptr inbounds ptr, ptr %172, i64 %171
  %174 = load ptr, ptr %173, align 8, !tbaa !184
  %175 = load ptr, ptr %165, align 8, !tbaa !195
  %176 = getelementptr inbounds ptr, ptr %175, i64 %171
  %177 = load ptr, ptr %176, align 8, !tbaa !184
  %178 = tail call i32 @operand_equal_p(ptr noundef %174, ptr noundef %177, i32 noundef 0) #21
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %181, label %166

180:                                              ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 420, ptr noundef nonnull @.str.10) #21
  br label %181

181:                                              ; preds = %170, %166, %160, %126, %67, %20, %28, %33, %37, %41, %70, %77, %84, %91, %99, %106, %119, %130, %136, %143, %150, %154, %180
  %182 = phi i8 [ 0, %180 ], [ %105, %99 ], [ %83, %77 ], [ 0, %20 ], [ 0, %41 ], [ 0, %37 ], [ 0, %33 ], [ 0, %28 ], [ 0, %70 ], [ 0, %84 ], [ 0, %91 ], [ 0, %106 ], [ 1, %119 ], [ 0, %130 ], [ %142, %136 ], [ 0, %143 ], [ 0, %150 ], [ 0, %154 ], [ 0, %67 ], [ 0, %126 ], [ 1, %160 ], [ 1, %166 ], [ 0, %170 ]
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %214, label %184, !prof !324

184:                                              ; preds = %181
  %185 = load ptr, ptr %5, align 8, !tbaa !323
  %186 = load ptr, ptr %10, align 8, !tbaa !323
  %187 = tail call zeroext i8 @types_compatible_p(ptr noundef %185, ptr noundef %186) #21
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %214, label %189, !prof !324

189:                                              ; preds = %184
  %190 = icmp eq ptr %4, null
  br i1 %190, label %199, label %191, !prof !331

191:                                              ; preds = %189
  %192 = load i32, ptr %4, align 8
  %193 = and i32 %192, 254
  %194 = add nsw i32 %193, -10
  %195 = icmp ult i32 %194, -4
  br i1 %195, label %199, label %196, !prof !332

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !195
  br label %199

199:                                              ; preds = %196, %191, %189
  %200 = phi ptr [ null, %189 ], [ %198, %196 ], [ null, %191 ]
  %201 = icmp eq ptr %9, null
  br i1 %201, label %210, label %202, !prof !333

202:                                              ; preds = %199
  %203 = load i32, ptr %9, align 8
  %204 = and i32 %203, 254
  %205 = add nsw i32 %204, -10
  %206 = icmp ult i32 %205, -4
  br i1 %206, label %210, label %207, !prof !334

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %9, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !195
  br label %210

210:                                              ; preds = %207, %202, %199
  %211 = phi ptr [ null, %199 ], [ %209, %207 ], [ null, %202 ]
  %212 = icmp eq ptr %200, %211
  %213 = zext i1 %212 to i32
  br label %214

214:                                              ; preds = %181, %184, %14, %2, %210
  %215 = phi i32 [ %213, %210 ], [ 1, %2 ], [ 0, %14 ], [ 0, %184 ], [ 0, %181 ]
  ret i32 %215
}

; Function Attrs: inlinehint mustprogress nounwind willreturn uwtable
define internal void @free_expr_hash_elt(ptr nocapture noundef %0) #16 !prof !335 !PGOFuncName !336 {
  %2 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !337
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %8, !prof !338

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.expr_hash_elt, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !195
  tail call void @free(ptr noundef %7)
  br label %8

8:                                                ; preds = %5, %1
  tail call void @free(ptr noundef %0)
  ret void
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @dom_opt_enter_block(ptr nocapture readnone %0, ptr noundef %1) #13 !prof !339 !PGOFuncName !340 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !341

11:                                               ; preds = %2
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !269
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.11, i32 noundef %17)
  br label %19

19:                                               ; preds = %15, %11, %2
  %20 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !184
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22, !prof !342

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %20, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !343
  %25 = load i32, ptr %20, align 8, !tbaa !345
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29, !prof !346

27:                                               ; preds = %19, %22
  %28 = tail call ptr @vec_heap_p_reserve(ptr noundef %20, i32 noundef 1) #21
  store ptr %28, ptr @avail_exprs_stack, align 8, !tbaa !184
  br label %29

29:                                               ; preds = %22, %27
  %30 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !184
  %31 = load i32, ptr %30, align 8, !tbaa !345
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !345
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %30, i64 0, i32 2, i64 %33
  store ptr null, ptr %34, align 8, !tbaa !184
  %35 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !184
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37, !prof !342

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.VEC_tree_base, ptr %35, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !347
  %40 = load i32, ptr %35, align 8, !tbaa !349
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44, !prof !350

42:                                               ; preds = %29, %37
  %43 = tail call ptr @vec_heap_p_reserve(ptr noundef %35, i32 noundef 1) #21
  store ptr %43, ptr @const_and_copies_stack, align 8, !tbaa !184
  br label %44

44:                                               ; preds = %37, %42
  %45 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !184
  %46 = load i32, ptr %45, align 8, !tbaa !349
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !349
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds %struct.VEC_tree_base, ptr %45, i64 0, i32 2, i64 %48
  store ptr null, ptr %49, align 8, !tbaa !184
  %50 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %1) #21
  %51 = icmp eq ptr %1, null
  br label %52

52:                                               ; preds = %88, %44
  %53 = phi i32 [ 0, %44 ], [ %89, %88 ]
  %54 = phi ptr [ null, %44 ], [ %79, %88 ]
  br i1 %51, label %55, label %56, !prof !351

55:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 687, ptr noundef nonnull @.str.10) #21
  br label %56

56:                                               ; preds = %55, %52
  %57 = load ptr, ptr %1, align 8, !tbaa !184
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !352

59:                                               ; preds = %56
  %60 = load i32, ptr %57, align 8, !tbaa !242
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i32 [ %60, %59 ], [ 0, %56 ]
  %63 = icmp eq i32 %62, %53
  br i1 %63, label %68, label %64, !prof !353

64:                                               ; preds = %61
  %65 = zext i32 %53 to i64
  %66 = getelementptr inbounds %struct.VEC_edge_base, ptr %57, i64 0, i32 2, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !184
  br label %68

68:                                               ; preds = %64, %61
  %69 = phi ptr [ %67, %64 ], [ null, %61 ]
  br i1 %63, label %90, label %70, !prof !353

70:                                               ; preds = %68
  %71 = load ptr, ptr %69, align 8, !tbaa !354
  %72 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !268
  %74 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %71, ptr noundef %73) #21
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %78, !prof !355

76:                                               ; preds = %70
  %77 = icmp eq ptr %54, null
  br i1 %77, label %78, label %90, !prof !356

78:                                               ; preds = %76, %70
  %79 = phi ptr [ %54, %70 ], [ %69, %76 ]
  %80 = load ptr, ptr %1, align 8, !tbaa !184
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82, !prof !228

82:                                               ; preds = %78
  %83 = load i32, ptr %80, align 8, !tbaa !242
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi i32 [ %83, %82 ], [ 0, %78 ]
  %86 = icmp ult i32 %53, %85
  br i1 %86, label %88, label %87, !prof !227

87:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.10) #21
  br label %88

88:                                               ; preds = %87, %84
  %89 = add i32 %53, 1
  br label %52, !llvm.loop !357

90:                                               ; preds = %76, %68
  %91 = phi ptr [ null, %76 ], [ %54, %68 ]
  %92 = icmp eq ptr %91, null
  br i1 %92, label %643, label %93, !prof !358

93:                                               ; preds = %90
  %94 = load ptr, ptr %91, align 8, !tbaa !354
  %95 = icmp eq ptr %94, %50
  br i1 %95, label %96, label %643, !prof !359

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !245
  %99 = icmp eq ptr %98, null
  br i1 %99, label %643, label %100, !prof !360

100:                                              ; preds = %96
  %101 = load ptr, ptr %98, align 8, !tbaa !361
  %102 = getelementptr inbounds %struct.edge_info, ptr %98, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !248
  %104 = icmp eq ptr %101, null
  br i1 %104, label %527, label %105, !prof !362

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.edge_info, ptr %98, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !363
  %108 = load i64, ptr %101, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 141
  br i1 %110, label %111, label %125, !prof !364

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.tree_ssa_name, ptr %101, i64 0, i32 3
  %113 = load i32, ptr %112, align 8, !tbaa !195
  %114 = load ptr, ptr @ssa_name_values, align 8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116, !prof !365

116:                                              ; preds = %111
  %117 = load i32, ptr %114, align 8, !tbaa !349
  br label %118

118:                                              ; preds = %116, %111
  %119 = phi i32 [ %117, %116 ], [ 0, %111 ]
  %120 = icmp ult i32 %113, %119
  br i1 %120, label %121, label %125, !prof !366

121:                                              ; preds = %118
  %122 = zext i32 %113 to i64
  %123 = getelementptr inbounds %struct.VEC_tree_base, ptr %114, i64 0, i32 2, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !184
  br label %125

125:                                              ; preds = %121, %118, %105
  %126 = phi ptr [ null, %105 ], [ %124, %121 ], [ null, %118 ]
  %127 = load i64, ptr %107, align 8
  %128 = and i64 %127, 65535
  %129 = icmp eq i64 %128, 141
  br i1 %129, label %130, label %144, !prof !367

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.tree_ssa_name, ptr %107, i64 0, i32 3
  %132 = load i32, ptr %131, align 8, !tbaa !195
  %133 = load ptr, ptr @ssa_name_values, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %130
  %136 = load i32, ptr %133, align 8, !tbaa !349
  br label %137

137:                                              ; preds = %135, %130
  %138 = phi i32 [ %136, %135 ], [ 0, %130 ]
  %139 = icmp ult i32 %132, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = zext i32 %132 to i64
  %142 = getelementptr inbounds %struct.VEC_tree_base, ptr %133, i64 0, i32 2, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !184
  br label %144

144:                                              ; preds = %140, %137, %125
  %145 = phi ptr [ null, %125 ], [ %143, %140 ], [ null, %137 ]
  %146 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %107) #21
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %189, !prof !367

148:                                              ; preds = %144
  %149 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %101) #21
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %189

151:                                              ; preds = %148
  %152 = load i64, ptr %101, align 8
  %153 = and i64 %152, 65535
  %154 = icmp eq i64 %153, 141
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.tree_ssa_name, ptr %101, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !195
  %158 = getelementptr inbounds %struct.gimple_statement_base, ptr %157, i64 0, i32 4
  %159 = load ptr, ptr %158, align 8, !tbaa !195
  %160 = icmp eq ptr %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.basic_block_def, ptr %159, i64 0, i32 10
  %163 = load i32, ptr %162, align 4, !tbaa !281
  br label %164

164:                                              ; preds = %161, %155, %151
  %165 = phi i32 [ %163, %161 ], [ 0, %151 ], [ 0, %155 ]
  %166 = load i64, ptr %107, align 8
  %167 = and i64 %166, 65535
  %168 = icmp eq i64 %167, 141
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.tree_ssa_name, ptr %107, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !195
  %172 = getelementptr inbounds %struct.gimple_statement_base, ptr %171, i64 0, i32 4
  %173 = load ptr, ptr %172, align 8, !tbaa !195
  %174 = icmp eq ptr %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %173, i64 0, i32 10
  %177 = load i32, ptr %176, align 4, !tbaa !281
  br label %178

178:                                              ; preds = %175, %169, %164
  %179 = phi i32 [ %177, %175 ], [ 0, %164 ], [ 0, %169 ]
  %180 = icmp sgt i32 %165, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %178
  %182 = icmp eq ptr %126, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %181
  %184 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %126) #21
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183, %181
  %187 = icmp eq ptr %145, null
  %188 = select i1 %187, ptr %107, ptr %145
  br label %189

189:                                              ; preds = %186, %183, %178, %148, %144
  %190 = phi ptr [ %101, %144 ], [ %107, %178 ], [ %107, %148 ], [ %107, %183 ], [ %101, %186 ]
  %191 = phi ptr [ %107, %144 ], [ %101, %178 ], [ %101, %148 ], [ %126, %183 ], [ %188, %186 ]
  %192 = phi ptr [ %126, %144 ], [ %145, %178 ], [ %145, %148 ], [ %145, %183 ], [ %126, %186 ]
  %193 = load i64, ptr %190, align 8
  %194 = and i64 %193, 65535
  %195 = icmp eq i64 %194, 141
  br i1 %195, label %196, label %527, !prof !364

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.tree_common, ptr %190, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !195
  %199 = load i64, ptr %198, align 8
  %200 = and i64 %199, 65535
  %201 = icmp eq i64 %200, 14
  br i1 %201, label %202, label %204, !prof !365

202:                                              ; preds = %196
  %203 = tail call i32 @vector_type_mode(ptr noundef nonnull %198) #21
  br label %209

204:                                              ; preds = %196
  %205 = getelementptr inbounds %struct.tree_type, ptr %198, i64 0, i32 6
  %206 = load i32, ptr %205, align 4
  %207 = lshr i32 %206, 16
  %208 = and i32 %207, 255
  br label %209

209:                                              ; preds = %204, %202
  %210 = phi i32 [ %203, %202 ], [ %208, %204 ]
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !195
  %214 = icmp eq i8 %213, 8
  br i1 %214, label %269, label %215, !prof !365

215:                                              ; preds = %209
  %216 = load ptr, ptr %197, align 8, !tbaa !195
  %217 = load i64, ptr %216, align 8
  %218 = and i64 %217, 65535
  %219 = icmp eq i64 %218, 14
  br i1 %219, label %220, label %222, !prof !365

220:                                              ; preds = %215
  %221 = tail call i32 @vector_type_mode(ptr noundef nonnull %216) #21
  br label %227

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.tree_type, ptr %216, i64 0, i32 6
  %224 = load i32, ptr %223, align 4
  %225 = lshr i32 %224, 16
  %226 = and i32 %225, 255
  br label %227

227:                                              ; preds = %222, %220
  %228 = phi i32 [ %221, %220 ], [ %226, %222 ]
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !195
  %232 = icmp eq i8 %231, 9
  br i1 %232, label %269, label %233, !prof !365

233:                                              ; preds = %227
  %234 = load ptr, ptr %197, align 8, !tbaa !195
  %235 = load i64, ptr %234, align 8
  %236 = and i64 %235, 65535
  %237 = icmp eq i64 %236, 14
  br i1 %237, label %238, label %240, !prof !365

238:                                              ; preds = %233
  %239 = tail call i32 @vector_type_mode(ptr noundef nonnull %234) #21
  br label %245

240:                                              ; preds = %233
  %241 = getelementptr inbounds %struct.tree_type, ptr %234, i64 0, i32 6
  %242 = load i32, ptr %241, align 4
  %243 = lshr i32 %242, 16
  %244 = and i32 %243, 255
  br label %245

245:                                              ; preds = %240, %238
  %246 = phi i32 [ %239, %238 ], [ %244, %240 ]
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %247
  %249 = load i8, ptr %248, align 1, !tbaa !195
  %250 = icmp eq i8 %249, 11
  br i1 %250, label %269, label %251, !prof !365

251:                                              ; preds = %245
  %252 = load ptr, ptr %197, align 8, !tbaa !195
  %253 = load i64, ptr %252, align 8
  %254 = and i64 %253, 65535
  %255 = icmp eq i64 %254, 14
  br i1 %255, label %256, label %258, !prof !365

256:                                              ; preds = %251
  %257 = tail call i32 @vector_type_mode(ptr noundef nonnull %252) #21
  br label %263

258:                                              ; preds = %251
  %259 = getelementptr inbounds %struct.tree_type, ptr %252, i64 0, i32 6
  %260 = load i32, ptr %259, align 4
  %261 = lshr i32 %260, 16
  %262 = and i32 %261, 255
  br label %263

263:                                              ; preds = %258, %256
  %264 = phi i32 [ %257, %256 ], [ %262, %258 ]
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %265
  %267 = load i8, ptr %266, align 1, !tbaa !195
  %268 = icmp eq i8 %267, 17
  br i1 %268, label %269, label %490, !prof !365

269:                                              ; preds = %263, %245, %227, %209
  %270 = load ptr, ptr %197, align 8, !tbaa !195
  %271 = load i64, ptr %270, align 8
  %272 = and i64 %271, 65535
  %273 = icmp eq i64 %272, 14
  br i1 %273, label %274, label %276

274:                                              ; preds = %269
  %275 = tail call i32 @vector_type_mode(ptr noundef nonnull %270) #21
  br label %281

276:                                              ; preds = %269
  %277 = getelementptr inbounds %struct.tree_type, ptr %270, i64 0, i32 6
  %278 = load i32, ptr %277, align 4
  %279 = lshr i32 %278, 16
  %280 = and i32 %279, 255
  br label %281

281:                                              ; preds = %276, %274
  %282 = phi i32 [ %275, %274 ], [ %280, %276 ]
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !195
  %286 = icmp eq i8 %285, 8
  br i1 %286, label %305, label %287

287:                                              ; preds = %281
  %288 = load ptr, ptr %197, align 8, !tbaa !195
  %289 = load i64, ptr %288, align 8
  %290 = and i64 %289, 65535
  %291 = icmp eq i64 %290, 14
  br i1 %291, label %292, label %294

292:                                              ; preds = %287
  %293 = tail call i32 @vector_type_mode(ptr noundef nonnull %288) #21
  br label %299

294:                                              ; preds = %287
  %295 = getelementptr inbounds %struct.tree_type, ptr %288, i64 0, i32 6
  %296 = load i32, ptr %295, align 4
  %297 = lshr i32 %296, 16
  %298 = and i32 %297, 255
  br label %299

299:                                              ; preds = %294, %292
  %300 = phi i32 [ %293, %292 ], [ %298, %294 ]
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %301
  %303 = load i8, ptr %302, align 1, !tbaa !195
  %304 = icmp eq i8 %303, 9
  br i1 %304, label %305, label %317

305:                                              ; preds = %299, %281
  %306 = load ptr, ptr %197, align 8, !tbaa !195
  %307 = load i64, ptr %306, align 8
  %308 = and i64 %307, 65535
  %309 = icmp eq i64 %308, 14
  br i1 %309, label %310, label %312

310:                                              ; preds = %305
  %311 = tail call i32 @vector_type_mode(ptr noundef nonnull %306) #21
  br label %335

312:                                              ; preds = %305
  %313 = getelementptr inbounds %struct.tree_type, ptr %306, i64 0, i32 6
  %314 = load i32, ptr %313, align 4
  %315 = lshr i32 %314, 16
  %316 = and i32 %315, 255
  br label %335

317:                                              ; preds = %299
  %318 = load ptr, ptr %197, align 8, !tbaa !195
  %319 = load i64, ptr %318, align 8
  %320 = and i64 %319, 65535
  %321 = icmp eq i64 %320, 14
  br i1 %321, label %322, label %324

322:                                              ; preds = %317
  %323 = tail call i32 @vector_type_mode(ptr noundef nonnull %318) #21
  br label %329

324:                                              ; preds = %317
  %325 = getelementptr inbounds %struct.tree_type, ptr %318, i64 0, i32 6
  %326 = load i32, ptr %325, align 4
  %327 = lshr i32 %326, 16
  %328 = and i32 %327, 255
  br label %329

329:                                              ; preds = %324, %322
  %330 = phi i32 [ %323, %322 ], [ %328, %324 ]
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %331
  %333 = load i8, ptr %332, align 1, !tbaa !195
  %334 = zext i8 %333 to i32
  br label %335

335:                                              ; preds = %329, %312, %310
  %336 = phi i32 [ %334, %329 ], [ %311, %310 ], [ %316, %312 ]
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %337
  %339 = load i8, ptr %338, align 1, !tbaa !195
  %340 = icmp eq i8 %339, 9
  %341 = load ptr, ptr %197, align 8, !tbaa !195
  %342 = load i64, ptr %341, align 8
  %343 = and i64 %342, 65535
  %344 = icmp eq i64 %343, 14
  br i1 %340, label %345, label %407

345:                                              ; preds = %335
  br i1 %344, label %346, label %348

346:                                              ; preds = %345
  %347 = tail call i32 @vector_type_mode(ptr noundef nonnull %341) #21
  br label %353

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.tree_type, ptr %341, i64 0, i32 6
  %350 = load i32, ptr %349, align 4
  %351 = lshr i32 %350, 16
  %352 = and i32 %351, 255
  br label %353

353:                                              ; preds = %348, %346
  %354 = phi i32 [ %347, %346 ], [ %352, %348 ]
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %355
  %357 = load i8, ptr %356, align 1, !tbaa !195
  %358 = icmp eq i8 %357, 8
  br i1 %358, label %377, label %359

359:                                              ; preds = %353
  %360 = load ptr, ptr %197, align 8, !tbaa !195
  %361 = load i64, ptr %360, align 8
  %362 = and i64 %361, 65535
  %363 = icmp eq i64 %362, 14
  br i1 %363, label %364, label %366

364:                                              ; preds = %359
  %365 = tail call i32 @vector_type_mode(ptr noundef nonnull %360) #21
  br label %371

366:                                              ; preds = %359
  %367 = getelementptr inbounds %struct.tree_type, ptr %360, i64 0, i32 6
  %368 = load i32, ptr %367, align 4
  %369 = lshr i32 %368, 16
  %370 = and i32 %369, 255
  br label %371

371:                                              ; preds = %366, %364
  %372 = phi i32 [ %365, %364 ], [ %370, %366 ]
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %373
  %375 = load i8, ptr %374, align 1, !tbaa !195
  %376 = icmp eq i8 %375, 9
  br i1 %376, label %377, label %389

377:                                              ; preds = %371, %353
  %378 = load ptr, ptr %197, align 8, !tbaa !195
  %379 = load i64, ptr %378, align 8
  %380 = and i64 %379, 65535
  %381 = icmp eq i64 %380, 14
  br i1 %381, label %382, label %384

382:                                              ; preds = %377
  %383 = tail call i32 @vector_type_mode(ptr noundef nonnull %378) #21
  br label %469

384:                                              ; preds = %377
  %385 = getelementptr inbounds %struct.tree_type, ptr %378, i64 0, i32 6
  %386 = load i32, ptr %385, align 4
  %387 = lshr i32 %386, 16
  %388 = and i32 %387, 255
  br label %469

389:                                              ; preds = %371
  %390 = load ptr, ptr %197, align 8, !tbaa !195
  %391 = load i64, ptr %390, align 8
  %392 = and i64 %391, 65535
  %393 = icmp eq i64 %392, 14
  br i1 %393, label %394, label %396

394:                                              ; preds = %389
  %395 = tail call i32 @vector_type_mode(ptr noundef nonnull %390) #21
  br label %401

396:                                              ; preds = %389
  %397 = getelementptr inbounds %struct.tree_type, ptr %390, i64 0, i32 6
  %398 = load i32, ptr %397, align 4
  %399 = lshr i32 %398, 16
  %400 = and i32 %399, 255
  br label %401

401:                                              ; preds = %396, %394
  %402 = phi i32 [ %395, %394 ], [ %400, %396 ]
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %403
  %405 = load i8, ptr %404, align 1, !tbaa !195
  %406 = zext i8 %405 to i32
  br label %469

407:                                              ; preds = %335
  br i1 %344, label %408, label %410

408:                                              ; preds = %407
  %409 = tail call i32 @vector_type_mode(ptr noundef nonnull %341) #21
  br label %415

410:                                              ; preds = %407
  %411 = getelementptr inbounds %struct.tree_type, ptr %341, i64 0, i32 6
  %412 = load i32, ptr %411, align 4
  %413 = lshr i32 %412, 16
  %414 = and i32 %413, 255
  br label %415

415:                                              ; preds = %410, %408
  %416 = phi i32 [ %409, %408 ], [ %414, %410 ]
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %417
  %419 = load i8, ptr %418, align 1, !tbaa !195
  %420 = icmp eq i8 %419, 8
  br i1 %420, label %439, label %421

421:                                              ; preds = %415
  %422 = load ptr, ptr %197, align 8, !tbaa !195
  %423 = load i64, ptr %422, align 8
  %424 = and i64 %423, 65535
  %425 = icmp eq i64 %424, 14
  br i1 %425, label %426, label %428

426:                                              ; preds = %421
  %427 = tail call i32 @vector_type_mode(ptr noundef nonnull %422) #21
  br label %433

428:                                              ; preds = %421
  %429 = getelementptr inbounds %struct.tree_type, ptr %422, i64 0, i32 6
  %430 = load i32, ptr %429, align 4
  %431 = lshr i32 %430, 16
  %432 = and i32 %431, 255
  br label %433

433:                                              ; preds = %428, %426
  %434 = phi i32 [ %427, %426 ], [ %432, %428 ]
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %435
  %437 = load i8, ptr %436, align 1, !tbaa !195
  %438 = icmp eq i8 %437, 9
  br i1 %438, label %439, label %451

439:                                              ; preds = %433, %415
  %440 = load ptr, ptr %197, align 8, !tbaa !195
  %441 = load i64, ptr %440, align 8
  %442 = and i64 %441, 65535
  %443 = icmp eq i64 %442, 14
  br i1 %443, label %444, label %446

444:                                              ; preds = %439
  %445 = tail call i32 @vector_type_mode(ptr noundef nonnull %440) #21
  br label %469

446:                                              ; preds = %439
  %447 = getelementptr inbounds %struct.tree_type, ptr %440, i64 0, i32 6
  %448 = load i32, ptr %447, align 4
  %449 = lshr i32 %448, 16
  %450 = and i32 %449, 255
  br label %469

451:                                              ; preds = %433
  %452 = load ptr, ptr %197, align 8, !tbaa !195
  %453 = load i64, ptr %452, align 8
  %454 = and i64 %453, 65535
  %455 = icmp eq i64 %454, 14
  br i1 %455, label %456, label %458

456:                                              ; preds = %451
  %457 = tail call i32 @vector_type_mode(ptr noundef nonnull %452) #21
  br label %463

458:                                              ; preds = %451
  %459 = getelementptr inbounds %struct.tree_type, ptr %452, i64 0, i32 6
  %460 = load i32, ptr %459, align 4
  %461 = lshr i32 %460, 16
  %462 = and i32 %461, 255
  br label %463

463:                                              ; preds = %458, %456
  %464 = phi i32 [ %457, %456 ], [ %462, %458 ]
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %465
  %467 = load i8, ptr %466, align 1, !tbaa !195
  %468 = zext i8 %467 to i32
  br label %469

469:                                              ; preds = %463, %446, %444, %401, %384, %382
  %470 = phi i32 [ %406, %401 ], [ %383, %382 ], [ %388, %384 ], [ %468, %463 ], [ %445, %444 ], [ %450, %446 ]
  %471 = add i32 %470, -38
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %472
  %474 = load ptr, ptr %473, align 8, !tbaa !184
  %475 = getelementptr inbounds %struct.real_format, ptr %474, i64 0, i32 14
  %476 = load i8, ptr %475, align 1, !tbaa !368
  %477 = icmp ne i8 %476, 0
  %478 = load i32, ptr @flag_signed_zeros, align 4
  %479 = icmp ne i32 %478, 0
  %480 = select i1 %477, i1 %479, i1 false
  br i1 %480, label %481, label %490

481:                                              ; preds = %469
  %482 = load i64, ptr %191, align 8
  %483 = and i64 %482, 65535
  %484 = icmp eq i64 %483, 24
  br i1 %484, label %485, label %527

485:                                              ; preds = %481
  %486 = getelementptr inbounds %struct.tree_real_cst, ptr %191, i64 0, i32 1
  %487 = load ptr, ptr %486, align 8, !tbaa !195
  %488 = tail call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull @dconst0, ptr noundef %487) #21
  %489 = icmp eq i8 %488, 0
  br i1 %489, label %490, label %527

490:                                              ; preds = %485, %469, %263
  tail call void @set_ssa_name_value(ptr noundef nonnull %190, ptr noundef %191) #21
  %491 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %492 = icmp eq ptr %491, null
  br i1 %492, label %505, label %493, !prof !370

493:                                              ; preds = %490
  %494 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %495 = and i32 %494, 8
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %505, label %497

497:                                              ; preds = %493
  %498 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 10, i64 1, ptr nonnull %491)
  %499 = load ptr, ptr @dump_file, align 8, !tbaa !184
  tail call void @print_generic_expr(ptr noundef %499, ptr noundef nonnull %190, i32 noundef 0) #21
  %500 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %501 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 3, i64 1, ptr %500)
  %502 = load ptr, ptr @dump_file, align 8, !tbaa !184
  tail call void @print_generic_expr(ptr noundef %502, ptr noundef %191, i32 noundef 0) #21
  %503 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %504 = tail call i32 @fputc(i32 10, ptr %503)
  br label %505

505:                                              ; preds = %497, %493, %490
  %506 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !184
  %507 = icmp eq ptr %506, null
  br i1 %507, label %514, label %508, !prof !371

508:                                              ; preds = %505
  %509 = getelementptr inbounds %struct.VEC_tree_base, ptr %506, i64 0, i32 1
  %510 = load i32, ptr %509, align 4, !tbaa !347
  %511 = load i32, ptr %506, align 8, !tbaa !349
  %512 = sub i32 %510, %511
  %513 = icmp ult i32 %512, 2
  br i1 %513, label %514, label %516, !prof !372

514:                                              ; preds = %508, %505
  %515 = tail call ptr @vec_heap_p_reserve(ptr noundef %506, i32 noundef 2) #21
  store ptr %515, ptr @const_and_copies_stack, align 8, !tbaa !184
  br label %516

516:                                              ; preds = %508, %514
  %517 = load ptr, ptr @const_and_copies_stack, align 8
  %518 = load i32, ptr %517, align 8, !tbaa !349
  %519 = add i32 %518, 1
  store i32 %519, ptr %517, align 8, !tbaa !349
  %520 = zext i32 %518 to i64
  %521 = getelementptr inbounds %struct.VEC_tree_base, ptr %517, i64 0, i32 2, i64 %520
  store ptr %192, ptr %521, align 8, !tbaa !184
  %522 = load ptr, ptr @const_and_copies_stack, align 8
  %523 = load i32, ptr %522, align 8, !tbaa !349
  %524 = add i32 %523, 1
  store i32 %524, ptr %522, align 8, !tbaa !349
  %525 = zext i32 %523 to i64
  %526 = getelementptr inbounds %struct.VEC_tree_base, ptr %522, i64 0, i32 2, i64 %525
  store ptr %190, ptr %526, align 8, !tbaa !184
  br label %527

527:                                              ; preds = %516, %485, %481, %189, %100
  %528 = icmp eq ptr %103, null
  br i1 %528, label %643, label %529, !prof !373

529:                                              ; preds = %527
  %530 = getelementptr inbounds %struct.edge_info, ptr %98, i64 0, i32 3
  %531 = load i32, ptr %530, align 8, !tbaa !374
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %643, label %533, !prof !375

533:                                              ; preds = %529, %638
  %534 = phi i64 [ %639, %638 ], [ 0, %529 ]
  %535 = getelementptr inbounds %struct.cond_equivalence, ptr %103, i64 %534
  %536 = call ptr @xcalloc(i64 noundef 1, i64 noundef 80) #21
  %537 = getelementptr inbounds %struct.cond_equivalence, ptr %103, i64 %534, i32 1
  %538 = load ptr, ptr %537, align 8, !tbaa !376
  %539 = getelementptr inbounds %struct.expr_hash_elt, ptr %536, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %539, ptr noundef nonnull align 8 dereferenceable(48) %535, i64 48, i1 false), !tbaa.struct !378
  store ptr %538, ptr %536, align 8, !tbaa !379
  %540 = getelementptr inbounds %struct.expr_hash_elt, ptr %536, i64 0, i32 2
  store ptr null, ptr %540, align 8, !tbaa !319
  %541 = getelementptr inbounds %struct.expr_hash_elt, ptr %536, i64 0, i32 1, i32 1
  %542 = load i32, ptr %541, align 8, !tbaa !326
  switch i32 %542, label %602 [
    i32 0, label %543
    i32 1, label %547
    i32 2, label %563
    i32 3, label %580
  ], !prof !380

543:                                              ; preds = %533
  %544 = getelementptr inbounds %struct.expr_hash_elt, ptr %536, i64 0, i32 1, i32 2
  %545 = load ptr, ptr %544, align 8, !tbaa !195
  %546 = call i32 @iterative_hash_expr(ptr noundef %545, i32 noundef 0) #21
  br label %603

547:                                              ; preds = %533
  %548 = getelementptr inbounds %struct.expr_hash_elt, ptr %536, i64 0, i32 1, i32 2
  %549 = call i32 @iterative_hash(ptr noundef nonnull %548, i64 noundef 4, i32 noundef 0) #21
  %550 = load i32, ptr %548, align 8, !tbaa !195
  switch i32 %550, label %558 [
    i32 116, label %551
    i32 113, label %551
    i32 117, label %551
  ], !prof !381

551:                                              ; preds = %547, %547, %547
  %552 = load ptr, ptr %539, align 8, !tbaa !323
  %553 = load i64, ptr %552, align 8
  %554 = trunc i64 %553 to i32
  %555 = lshr i32 %554, 21
  %556 = and i32 %555, 1
  %557 = add i32 %556, %549
  br label %558

558:                                              ; preds = %551, %547
  %559 = phi i32 [ %557, %551 ], [ %549, %547 ]
  %560 = getelementptr inbounds %struct.expr_hash_elt, ptr %536, i64 0, i32 1, i32 2, i32 0, i32 1
  %561 = load ptr, ptr %560, align 8, !tbaa !195
  %562 = call i32 @iterative_hash_expr(ptr noundef %561, i32 noundef %559) #21
  br label %603

563:                                              ; preds = %533
  %564 = getelementptr inbounds %struct.expr_hash_elt, ptr %536, i64 0, i32 1, i32 2
  %565 = call i32 @iterative_hash(ptr noundef nonnull %564, i64 noundef 4, i32 noundef 0) #21
  %566 = load i32, ptr %564, align 8, !tbaa !195
  %567 = call zeroext i8 @commutative_tree_code(i32 noundef %566) #21
  %568 = icmp eq i8 %567, 0
  %569 = getelementptr inbounds %struct.expr_hash_elt, ptr %536, i64 0, i32 1, i32 2, i32 0, i32 1
  %570 = load ptr, ptr %569, align 8, !tbaa !195
  br i1 %568, label %575, label %571, !prof !382

571:                                              ; preds = %563
  %572 = getelementptr inbounds %struct.expr_hash_elt, ptr %536, i64 0, i32 1, i32 2, i32 0, i32 2
  %573 = load ptr, ptr %572, align 8, !tbaa !195
  %574 = call i32 @iterative_hash_exprs_commutative(ptr noundef %570, ptr noundef %573, i32 noundef %565) #21
  br label %603

575:                                              ; preds = %563
  %576 = call i32 @iterative_hash_expr(ptr noundef %570, i32 noundef %565) #21
  %577 = getelementptr inbounds %struct.expr_hash_elt, ptr %536, i64 0, i32 1, i32 2, i32 0, i32 2
  %578 = load ptr, ptr %577, align 8, !tbaa !195
  %579 = call i32 @iterative_hash_expr(ptr noundef %578, i32 noundef %576) #21
  br label %603

580:                                              ; preds = %533
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 59, ptr %3, align 4, !tbaa !199
  %581 = call i32 @iterative_hash(ptr noundef nonnull %3, i64 noundef 4, i32 noundef 0) #21
  %582 = getelementptr inbounds %struct.expr_hash_elt, ptr %536, i64 0, i32 1, i32 2
  %583 = load ptr, ptr %582, align 8, !tbaa !195
  %584 = call i32 @iterative_hash_expr(ptr noundef %583, i32 noundef %581) #21
  %585 = getelementptr inbounds %struct.expr_hash_elt, ptr %536, i64 0, i32 1, i32 2, i32 0, i32 2
  %586 = load i64, ptr %585, align 8, !tbaa !195
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %600, label %588, !prof !383

588:                                              ; preds = %580
  %589 = getelementptr inbounds %struct.expr_hash_elt, ptr %536, i64 0, i32 1, i32 2, i32 0, i32 3
  br label %590

590:                                              ; preds = %590, %588
  %591 = phi i64 [ 0, %588 ], [ %597, %590 ]
  %592 = phi i32 [ %584, %588 ], [ %596, %590 ]
  %593 = load ptr, ptr %589, align 8, !tbaa !195
  %594 = getelementptr inbounds ptr, ptr %593, i64 %591
  %595 = load ptr, ptr %594, align 8, !tbaa !184
  %596 = call i32 @iterative_hash_expr(ptr noundef %595, i32 noundef %592) #21
  %597 = add nuw i64 %591, 1
  %598 = load i64, ptr %585, align 8, !tbaa !195
  %599 = icmp ult i64 %597, %598
  br i1 %599, label %590, label %600, !prof !384, !llvm.loop !385

600:                                              ; preds = %590, %580
  %601 = phi i32 [ %584, %580 ], [ %596, %590 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %603

602:                                              ; preds = %533
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 481, ptr noundef nonnull @.str.10) #21
  br label %603

603:                                              ; preds = %602, %600, %575, %571, %558, %543
  %604 = phi i32 [ 0, %602 ], [ %601, %600 ], [ %574, %571 ], [ %579, %575 ], [ %562, %558 ], [ %546, %543 ]
  %605 = getelementptr inbounds %struct.expr_hash_elt, ptr %536, i64 0, i32 3
  store i32 %604, ptr %605, align 8, !tbaa !314
  %606 = getelementptr inbounds %struct.expr_hash_elt, ptr %536, i64 0, i32 4
  store ptr %536, ptr %606, align 8, !tbaa !320
  %607 = load ptr, ptr @avail_exprs, align 8, !tbaa !184
  %608 = call ptr @htab_find_slot_with_hash(ptr noundef %607, ptr noundef nonnull %536, i32 noundef %604, i32 noundef 1) #21
  %609 = load ptr, ptr %608, align 8, !tbaa !184
  %610 = icmp eq ptr %609, null
  br i1 %610, label %611, label %637, !prof !386

611:                                              ; preds = %603
  store ptr %536, ptr %608, align 8, !tbaa !184
  %612 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %613 = icmp eq ptr %612, null
  br i1 %613, label %621, label %614, !prof !387

614:                                              ; preds = %611
  %615 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %616 = and i32 %615, 8
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %621, label %618

618:                                              ; preds = %614
  %619 = call i64 @fwrite(ptr nonnull @.str.16, i64 5, i64 1, ptr nonnull %612)
  %620 = load ptr, ptr @dump_file, align 8, !tbaa !184
  call fastcc void @print_expr_hash_elt(ptr noundef %620, ptr noundef nonnull %536)
  br label %621

621:                                              ; preds = %618, %614, %611
  %622 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !184
  %623 = icmp eq ptr %622, null
  br i1 %623, label %629, label %624, !prof !388

624:                                              ; preds = %621
  %625 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %622, i64 0, i32 1
  %626 = load i32, ptr %625, align 4, !tbaa !343
  %627 = load i32, ptr %622, align 8, !tbaa !345
  %628 = icmp eq i32 %626, %627
  br i1 %628, label %629, label %631, !prof !389

629:                                              ; preds = %624, %621
  %630 = call ptr @vec_heap_p_reserve(ptr noundef %622, i32 noundef 1) #21
  store ptr %630, ptr @avail_exprs_stack, align 8, !tbaa !184
  br label %631

631:                                              ; preds = %629, %624
  %632 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !184
  %633 = load i32, ptr %632, align 8, !tbaa !345
  %634 = add i32 %633, 1
  store i32 %634, ptr %632, align 8, !tbaa !345
  %635 = zext i32 %633 to i64
  %636 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %632, i64 0, i32 2, i64 %635
  store ptr %536, ptr %636, align 8, !tbaa !184
  br label %638

637:                                              ; preds = %603
  call void @free(ptr noundef %536)
  br label %638

638:                                              ; preds = %631, %637
  %639 = add nuw nsw i64 %534, 1
  %640 = load i32, ptr %530, align 8, !tbaa !374
  %641 = zext i32 %640 to i64
  %642 = icmp ult i64 %639, %641
  br i1 %642, label %533, label %643, !prof !390, !llvm.loop !391

643:                                              ; preds = %638, %529, %527, %90, %93, %96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef nonnull %1) #21
  %644 = load ptr, ptr %8, align 8, !tbaa.struct !392
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #21
  %645 = icmp eq ptr %644, null
  br i1 %645, label %698, label %646, !prof !393

646:                                              ; preds = %643, %694
  %647 = phi ptr [ %696, %694 ], [ %644, %643 ]
  %648 = load ptr, ptr %647, align 8, !tbaa !234
  %649 = getelementptr inbounds %struct.gimple_statement_phi, ptr %648, i64 0, i32 3
  %650 = load ptr, ptr %649, align 8, !tbaa !195
  %651 = getelementptr inbounds %struct.gimple_statement_phi, ptr %648, i64 0, i32 2
  %652 = load i32, ptr %651, align 4, !tbaa !195
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %681, label %654, !prof !394

654:                                              ; preds = %646
  %655 = getelementptr inbounds %struct.gimple_statement_phi, ptr %648, i64 0, i32 1
  br label %656

656:                                              ; preds = %654, %676
  %657 = phi ptr [ null, %654 ], [ %674, %676 ]
  %658 = phi i64 [ 0, %654 ], [ %677, %676 ]
  %659 = trunc i64 %658 to i32
  %660 = load i32, ptr %655, align 8, !tbaa !195
  %661 = icmp ult i32 %660, %659
  br i1 %661, label %662, label %663, !prof !395

662:                                              ; preds = %656
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 3103, ptr noundef nonnull @.str.10) #21
  br label %663

663:                                              ; preds = %662, %656
  %664 = getelementptr inbounds %struct.gimple_statement_phi, ptr %648, i64 0, i32 4, i64 %658, i32 0, i32 3
  %665 = load ptr, ptr %664, align 8, !tbaa !284
  %666 = load ptr, ptr %665, align 8, !tbaa !184
  %667 = icmp eq ptr %650, %666
  br i1 %667, label %673, label %668, !prof !395

668:                                              ; preds = %663
  %669 = icmp eq ptr %657, null
  br i1 %669, label %673, label %670, !prof !396

670:                                              ; preds = %668
  %671 = call i32 @operand_equal_for_phi_arg_p(ptr noundef nonnull %657, ptr noundef %666) #21
  %672 = icmp eq i32 %671, 0
  br label %673

673:                                              ; preds = %670, %668, %663
  %674 = phi ptr [ %657, %663 ], [ %666, %668 ], [ %657, %670 ]
  %675 = phi i1 [ false, %663 ], [ false, %668 ], [ %672, %670 ]
  br i1 %675, label %681, label %676, !prof !397

676:                                              ; preds = %673
  %677 = add nuw nsw i64 %658, 1
  %678 = load i32, ptr %651, align 4, !tbaa !195
  %679 = zext i32 %678 to i64
  %680 = icmp ult i64 %677, %679
  br i1 %680, label %656, label %681, !prof !398, !llvm.loop !399

681:                                              ; preds = %676, %673, %646
  %682 = phi i64 [ 0, %646 ], [ %677, %676 ], [ %658, %673 ]
  %683 = phi ptr [ null, %646 ], [ %674, %673 ], [ %674, %676 ]
  %684 = getelementptr inbounds %struct.gimple_statement_phi, ptr %648, i64 0, i32 2
  %685 = icmp eq ptr %683, null
  %686 = select i1 %685, ptr %650, ptr %683, !prof !400
  %687 = load i32, ptr %684, align 4, !tbaa !195
  %688 = zext i32 %687 to i64
  %689 = icmp eq i64 %682, %688
  br i1 %689, label %690, label %694, !prof !401

690:                                              ; preds = %681
  %691 = call zeroext i8 @may_propagate_copy(ptr noundef %650, ptr noundef %686) #21
  %692 = icmp eq i8 %691, 0
  br i1 %692, label %694, label %693, !prof !402

693:                                              ; preds = %690
  call void @set_ssa_name_value(ptr noundef %650, ptr noundef %686) #21
  br label %694

694:                                              ; preds = %693, %690, %681
  %695 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %647, i64 0, i32 2
  %696 = load ptr, ptr %695, align 8, !tbaa !237
  %697 = icmp eq ptr %696, null
  br i1 %697, label %698, label %646, !prof !403, !llvm.loop !404

698:                                              ; preds = %694, %643
  %699 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %700 = load i32, ptr %699, align 8, !tbaa !223, !noalias !405
  %701 = and i32 %700, 512
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %703, label %709, !prof !341

703:                                              ; preds = %698
  %704 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %705 = load ptr, ptr %704, align 8, !tbaa !195, !noalias !405
  %706 = icmp eq ptr %705, null
  br i1 %706, label %709, label %707, !prof !408

707:                                              ; preds = %703
  %708 = load ptr, ptr %705, align 8, !tbaa !229, !noalias !405
  br label %709

709:                                              ; preds = %707, %703, %698
  %710 = phi ptr [ %708, %707 ], [ null, %703 ], [ null, %698 ]
  %711 = icmp eq ptr %710, null
  br i1 %711, label %714, label %712, !prof !408

712:                                              ; preds = %709
  %713 = load ptr, ptr %710, align 8, !tbaa !231, !noalias !405
  br label %714

714:                                              ; preds = %709, %712
  %715 = phi ptr [ %713, %712 ], [ null, %709 ]
  %716 = icmp eq ptr %715, null
  br i1 %716, label %1746, label %717, !prof !409

717:                                              ; preds = %714
  %718 = getelementptr inbounds i8, ptr %7, i64 8
  %719 = getelementptr inbounds i8, ptr %7, i64 16
  br label %720

720:                                              ; preds = %717, %1742
  %721 = phi ptr [ %715, %717 ], [ %1744, %1742 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  store ptr %721, ptr %7, align 8
  store ptr %710, ptr %718, align 8
  store ptr %1, ptr %719, align 8
  %722 = load ptr, ptr %721, align 8, !tbaa !234
  %723 = load i32, ptr %722, align 8
  %724 = and i32 %723, 255
  %725 = icmp eq i32 %724, 1
  br i1 %725, label %726, label %822, !prof !410

726:                                              ; preds = %720
  %727 = zext nneg i32 %724 to i64
  %728 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %727
  %729 = load i32, ptr %728, align 4, !tbaa !199
  %730 = zext i32 %729 to i64
  %731 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %730
  %732 = load i64, ptr %731, align 8, !tbaa !260
  %733 = icmp eq i64 %732, 0
  br i1 %733, label %734, label %735, !prof !411

734:                                              ; preds = %726
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %735

735:                                              ; preds = %734, %726
  %736 = getelementptr inbounds i8, ptr %722, i64 %732
  %737 = load ptr, ptr %736, align 8, !tbaa !184
  %738 = load i32, ptr %722, align 8
  %739 = and i32 %738, 255
  %740 = add nsw i32 %739, -10
  %741 = icmp ult i32 %740, -9
  br i1 %741, label %755, label %742, !prof !411

742:                                              ; preds = %735
  %743 = zext nneg i32 %739 to i64
  %744 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %743
  %745 = load i32, ptr %744, align 4, !tbaa !199
  %746 = zext i32 %745 to i64
  %747 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %746
  %748 = load i64, ptr %747, align 8, !tbaa !260
  %749 = icmp eq i64 %748, 0
  br i1 %749, label %750, label %751, !prof !411

750:                                              ; preds = %742
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %751

751:                                              ; preds = %750, %742
  %752 = getelementptr inbounds i8, ptr %722, i64 %748
  %753 = getelementptr inbounds ptr, ptr %752, i64 1
  %754 = load ptr, ptr %753, align 8, !tbaa !184
  br label %755

755:                                              ; preds = %751, %735
  %756 = phi ptr [ %754, %751 ], [ null, %735 ]
  %757 = load i32, ptr %722, align 8
  %758 = freeze i32 %757
  %759 = lshr i32 %758, 16
  %760 = call zeroext i8 @tree_swap_operands_p(ptr noundef %737, ptr noundef %756, i8 noundef zeroext 0) #21
  %761 = icmp eq i8 %760, 0
  br i1 %761, label %822, label %762, !prof !412

762:                                              ; preds = %755
  %763 = and i32 %758, -196608
  %764 = icmp eq i32 %763, 6356992
  br i1 %764, label %767, label %765

765:                                              ; preds = %762
  %766 = trunc i32 %759 to i16
  switch i16 %766, label %822 [
    i16 100, label %767
    i16 98, label %767
  ]

767:                                              ; preds = %765, %765, %762
  %768 = call i32 @swap_tree_comparison(i32 noundef %759) #21
  %769 = load i32, ptr %722, align 8
  %770 = shl i32 %768, 16
  %771 = and i32 %769, 65535
  %772 = or disjoint i32 %771, %770
  store i32 %772, ptr %722, align 8
  %773 = and i32 %769, 255
  %774 = add nsw i32 %773, -10
  %775 = icmp ult i32 %774, -9
  br i1 %775, label %780, label %776

776:                                              ; preds = %767
  %777 = getelementptr inbounds %struct.gimple_statement_base, ptr %722, i64 0, i32 3
  %778 = load i32, ptr %777, align 4, !tbaa !195
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %780, label %781

780:                                              ; preds = %776, %767
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1665, ptr noundef nonnull @.str.10) #21
  br label %781

781:                                              ; preds = %780, %776
  %782 = load i32, ptr %722, align 8
  %783 = and i32 %782, 255
  %784 = zext nneg i32 %783 to i64
  %785 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %784
  %786 = load i32, ptr %785, align 4, !tbaa !199
  %787 = zext i32 %786 to i64
  %788 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %787
  %789 = load i64, ptr %788, align 8, !tbaa !260
  %790 = icmp eq i64 %789, 0
  br i1 %790, label %791, label %792

791:                                              ; preds = %781
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %792

792:                                              ; preds = %791, %781
  %793 = getelementptr inbounds i8, ptr %722, i64 %789
  store ptr %756, ptr %793, align 8, !tbaa !184
  %794 = load i32, ptr %722, align 8
  %795 = and i32 %794, 255
  %796 = add nsw i32 %795, -10
  %797 = icmp ult i32 %796, -9
  br i1 %797, label %802, label %798

798:                                              ; preds = %792
  %799 = getelementptr inbounds %struct.gimple_statement_base, ptr %722, i64 0, i32 3
  %800 = load i32, ptr %799, align 4, !tbaa !195
  %801 = icmp ugt i32 %800, 1
  br i1 %801, label %803, label %802

802:                                              ; preds = %798, %792
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1665, ptr noundef nonnull @.str.10) #21
  br label %803

803:                                              ; preds = %802, %798
  %804 = load i32, ptr %722, align 8
  %805 = and i32 %804, 255
  %806 = zext nneg i32 %805 to i64
  %807 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %806
  %808 = load i32, ptr %807, align 4, !tbaa !199
  %809 = zext i32 %808 to i64
  %810 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %809
  %811 = load i64, ptr %810, align 8, !tbaa !260
  %812 = icmp eq i64 %811, 0
  br i1 %812, label %813, label %814

813:                                              ; preds = %803
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %814

814:                                              ; preds = %813, %803
  %815 = getelementptr inbounds i8, ptr %722, i64 %811
  %816 = getelementptr inbounds ptr, ptr %815, i64 1
  store ptr %737, ptr %816, align 8, !tbaa !184
  %817 = load i32, ptr %722, align 8
  %818 = and i32 %817, 255
  %819 = add nsw i32 %818, -10
  %820 = icmp ult i32 %819, -9
  br i1 %820, label %822, label %821

821:                                              ; preds = %814
  call void @gimple_set_modified(ptr noundef nonnull %722, i8 noundef zeroext 1) #21
  call void @update_stmt_operands(ptr noundef nonnull %722) #21
  br label %822

822:                                              ; preds = %765, %821, %814, %755, %720
  %823 = load i32, ptr %722, align 8
  %824 = and i32 %823, 255
  %825 = add nsw i32 %824, -10
  %826 = icmp ult i32 %825, -9
  %827 = and i32 %823, 8192
  %828 = icmp eq i32 %827, 0
  %829 = or i1 %828, %826
  br i1 %829, label %831, label %830, !prof !236

830:                                              ; preds = %822
  call void @update_stmt_operands(ptr noundef nonnull %722) #21
  br label %831

831:                                              ; preds = %830, %822
  %832 = load i64, ptr @opt_stats, align 8, !tbaa !276
  %833 = add nsw i64 %832, 1
  store i64 %833, ptr @opt_stats, align 8, !tbaa !276
  %834 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %835 = icmp eq ptr %834, null
  br i1 %835, label %843, label %836, !prof !236

836:                                              ; preds = %831
  %837 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %838 = and i32 %837, 8
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %843, label %840

840:                                              ; preds = %836
  %841 = call i64 @fwrite(ptr nonnull @.str.25, i64 21, i64 1, ptr nonnull %834)
  %842 = load ptr, ptr @dump_file, align 8, !tbaa !184
  call void @print_gimple_stmt(ptr noundef %842, ptr noundef nonnull %722, i32 noundef 0, i32 noundef 2) #21
  br label %843

843:                                              ; preds = %840, %836, %831
  %844 = load i32, ptr %722, align 8
  %845 = and i32 %844, 255
  %846 = add nsw i32 %845, -10
  %847 = icmp ult i32 %846, -9
  br i1 %847, label %851, label %848, !prof !413

848:                                              ; preds = %843
  %849 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %722, i64 0, i32 2
  %850 = load ptr, ptr %849, align 8, !tbaa !195
  br label %851

851:                                              ; preds = %848, %843
  %852 = phi ptr [ %850, %848 ], [ null, %843 ]
  %853 = icmp eq ptr %852, null
  br i1 %853, label %857, label %854, !prof !414

854:                                              ; preds = %851
  %855 = getelementptr inbounds %struct.use_optype_d, ptr %852, i64 0, i32 1
  %856 = load ptr, ptr %852, align 8, !tbaa !415
  br label %857

857:                                              ; preds = %854, %851
  %858 = phi ptr [ %856, %854 ], [ %852, %851 ]
  %859 = phi i8 [ 0, %854 ], [ 1, %851 ]
  %860 = phi ptr [ %855, %854 ], [ null, %851 ]
  br i1 %853, label %1006, label %861, !prof !417

861:                                              ; preds = %857, %1001
  %862 = phi ptr [ %1004, %1001 ], [ %860, %857 ]
  %863 = phi i8 [ %1003, %1001 ], [ %859, %857 ]
  %864 = phi ptr [ %1002, %1001 ], [ %858, %857 ]
  %865 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %862, i64 0, i32 3
  %866 = load ptr, ptr %865, align 8, !tbaa !284
  %867 = load ptr, ptr %866, align 8, !tbaa !184
  %868 = load i64, ptr %867, align 8
  %869 = and i64 %868, 65535
  %870 = icmp eq i64 %869, 141
  br i1 %870, label %871, label %996, !prof !418

871:                                              ; preds = %861
  %872 = getelementptr inbounds %struct.tree_ssa_name, ptr %867, i64 0, i32 3
  %873 = load i32, ptr %872, align 8, !tbaa !195
  %874 = load ptr, ptr @ssa_name_values, align 8
  %875 = icmp eq ptr %874, null
  br i1 %875, label %878, label %876, !prof !419

876:                                              ; preds = %871
  %877 = load i32, ptr %874, align 8, !tbaa !349
  br label %878

878:                                              ; preds = %876, %871
  %879 = phi i32 [ %877, %876 ], [ 0, %871 ]
  %880 = icmp ult i32 %873, %879
  br i1 %880, label %881, label %885, !prof !420

881:                                              ; preds = %878
  %882 = zext i32 %873 to i64
  %883 = getelementptr inbounds %struct.VEC_tree_base, ptr %874, i64 0, i32 2, i64 %882
  %884 = load ptr, ptr %883, align 8, !tbaa !184
  br label %885

885:                                              ; preds = %881, %878
  %886 = phi ptr [ %884, %881 ], [ null, %878 ]
  %887 = icmp eq ptr %886, null
  %888 = icmp eq ptr %886, %867
  %889 = or i1 %887, %888
  br i1 %889, label %996, label %890, !prof !421

890:                                              ; preds = %885
  %891 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %867) #21
  %892 = icmp eq i8 %891, 0
  br i1 %892, label %893, label %904, !prof !422

893:                                              ; preds = %890
  %894 = load i64, ptr %886, align 8
  %895 = and i64 %894, 65535
  %896 = icmp eq i64 %895, 141
  br i1 %896, label %897, label %996, !prof !423

897:                                              ; preds = %893
  %898 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %886) #21
  %899 = icmp eq i8 %898, 0
  br i1 %899, label %900, label %996, !prof !423

900:                                              ; preds = %897
  %901 = call ptr @get_virtual_var(ptr noundef nonnull %886) #21
  %902 = call ptr @get_virtual_var(ptr noundef nonnull %867) #21
  %903 = icmp eq ptr %901, %902
  br i1 %903, label %904, label %996, !prof !423

904:                                              ; preds = %900, %890
  %905 = load i32, ptr %722, align 8
  %906 = and i32 %905, 255
  %907 = icmp eq i32 %906, 7
  br i1 %907, label %908, label %911, !prof !424

908:                                              ; preds = %904
  %909 = call zeroext i8 @may_propagate_copy_into_asm(ptr noundef nonnull %867) #21
  %910 = icmp eq i8 %909, 0
  br i1 %910, label %996, label %911

911:                                              ; preds = %908, %904
  %912 = call zeroext i8 @may_propagate_copy(ptr noundef nonnull %867, ptr noundef nonnull %886) #21
  %913 = icmp eq i8 %912, 0
  br i1 %913, label %996, label %914, !prof !424

914:                                              ; preds = %911
  %915 = getelementptr inbounds %struct.tree_common, ptr %886, i64 0, i32 2
  %916 = load ptr, ptr %915, align 8, !tbaa !195
  %917 = load i64, ptr %916, align 8
  %918 = trunc i64 %917 to i16
  switch i16 %918, label %933 [
    i16 10, label %919
    i16 12, label %919
  ], !prof !425

919:                                              ; preds = %914, %914
  %920 = getelementptr inbounds %struct.tree_common, ptr %916, i64 0, i32 2
  %921 = load ptr, ptr %920, align 8, !tbaa !195
  %922 = load i64, ptr %921, align 8
  %923 = and i64 %922, 524288
  %924 = icmp eq i64 %923, 0
  br i1 %924, label %933, label %925

925:                                              ; preds = %919
  %926 = load i32, ptr %722, align 8
  %927 = and i32 %926, 254
  %928 = add nsw i32 %927, -6
  %929 = icmp ult i32 %928, 4
  %930 = and i32 %926, 16384
  %931 = icmp eq i32 %930, 0
  %932 = and i1 %931, %929
  br i1 %932, label %996, label %933

933:                                              ; preds = %925, %919, %914
  %934 = load i64, ptr %886, align 8
  %935 = and i64 %934, 65535
  %936 = icmp eq i64 %935, 141
  br i1 %936, label %937, label %946, !prof !426

937:                                              ; preds = %933
  %938 = getelementptr inbounds %struct.tree_ssa_name, ptr %886, i64 0, i32 2
  %939 = load ptr, ptr %938, align 8, !tbaa !195
  %940 = getelementptr inbounds %struct.gimple_statement_base, ptr %939, i64 0, i32 4
  %941 = load ptr, ptr %940, align 8, !tbaa !195
  %942 = icmp eq ptr %941, null
  br i1 %942, label %946, label %943, !prof !427

943:                                              ; preds = %937
  %944 = getelementptr inbounds %struct.basic_block_def, ptr %941, i64 0, i32 10
  %945 = load i32, ptr %944, align 4, !tbaa !281
  br label %946

946:                                              ; preds = %943, %937, %933
  %947 = phi i32 [ %945, %943 ], [ 0, %933 ], [ 0, %937 ]
  %948 = load i64, ptr %867, align 8
  %949 = and i64 %948, 65535
  %950 = icmp eq i64 %949, 141
  br i1 %950, label %951, label %960, !prof !428

951:                                              ; preds = %946
  %952 = getelementptr inbounds %struct.tree_ssa_name, ptr %867, i64 0, i32 2
  %953 = load ptr, ptr %952, align 8, !tbaa !195
  %954 = getelementptr inbounds %struct.gimple_statement_base, ptr %953, i64 0, i32 4
  %955 = load ptr, ptr %954, align 8, !tbaa !195
  %956 = icmp eq ptr %955, null
  br i1 %956, label %960, label %957, !prof !424

957:                                              ; preds = %951
  %958 = getelementptr inbounds %struct.basic_block_def, ptr %955, i64 0, i32 10
  %959 = load i32, ptr %958, align 4, !tbaa !281
  br label %960

960:                                              ; preds = %957, %951, %946
  %961 = phi i32 [ %959, %957 ], [ 0, %946 ], [ 0, %951 ]
  %962 = icmp sgt i32 %947, %961
  br i1 %962, label %996, label %963, !prof !424

963:                                              ; preds = %960
  %964 = icmp eq i64 %935, 23
  br i1 %964, label %968, label %965, !prof !429

965:                                              ; preds = %963
  %966 = call fastcc zeroext i8 @simple_iv_increment_p(ptr noundef nonnull %722), !range !430
  %967 = icmp eq i8 %966, 0
  br i1 %967, label %968, label %996, !prof !431

968:                                              ; preds = %965, %963
  %969 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %970 = icmp eq ptr %969, null
  br i1 %970, label %989, label %971, !prof !428

971:                                              ; preds = %968
  %972 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %973 = and i32 %972, 8
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %989, label %975

975:                                              ; preds = %971
  %976 = call i64 @fwrite(ptr nonnull @.str.30, i64 12, i64 1, ptr nonnull %969)
  %977 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %978 = load i32, ptr @dump_flags, align 4, !tbaa !199
  call void @print_generic_expr(ptr noundef %977, ptr noundef nonnull %867, i32 noundef %978) #21
  %979 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %980 = load i64, ptr %886, align 8
  %981 = and i64 %980, 65535
  %982 = icmp eq i64 %981, 141
  %983 = select i1 %982, ptr @.str.33, ptr @.str.32
  %984 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %979, ptr noundef nonnull @.str.31, ptr noundef nonnull %983)
  %985 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %986 = load i32, ptr @dump_flags, align 4, !tbaa !199
  call void @print_generic_expr(ptr noundef %985, ptr noundef nonnull %886, i32 noundef %986) #21
  %987 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %988 = call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %987)
  br label %989

989:                                              ; preds = %975, %971, %968
  %990 = load i64, ptr %886, align 8
  %991 = and i64 %990, 65535
  %992 = icmp eq i64 %991, 141
  %993 = select i1 %992, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 4), ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 3), !prof !426
  %994 = load i64, ptr %993, align 8, !tbaa !260
  %995 = add nsw i64 %994, 1
  store i64 %995, ptr %993, align 8, !tbaa !260
  call void @propagate_value(ptr noundef %862, ptr noundef nonnull %886) #21
  call void @gimple_set_modified(ptr noundef nonnull %722, i8 noundef zeroext 1) #21
  br label %996

996:                                              ; preds = %908, %989, %965, %960, %925, %911, %900, %897, %893, %885, %861
  %997 = icmp eq ptr %864, null
  br i1 %997, label %1001, label %998, !prof !432

998:                                              ; preds = %996
  %999 = getelementptr inbounds %struct.use_optype_d, ptr %864, i64 0, i32 1
  %1000 = load ptr, ptr %864, align 8, !tbaa !415
  br label %1001

1001:                                             ; preds = %996, %998
  %1002 = phi ptr [ %1000, %998 ], [ %864, %996 ]
  %1003 = phi i8 [ %863, %998 ], [ 1, %996 ]
  %1004 = phi ptr [ %999, %998 ], [ null, %996 ]
  %1005 = icmp eq i8 %1003, 0
  br i1 %1005, label %861, label %1006, !prof !433, !llvm.loop !434

1006:                                             ; preds = %1001, %857
  %1007 = load i32, ptr %722, align 8
  %1008 = and i32 %1007, 255
  %1009 = add nsw i32 %1008, -10
  %1010 = icmp ult i32 %1009, -9
  %1011 = lshr i32 %1007, 13
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = select i1 %1010, i8 0, i8 %1013, !prof !413
  %1015 = icmp eq i8 %1014, 0
  br i1 %1015, label %1093, label %1016, !prof !435

1016:                                             ; preds = %1006
  %1017 = call zeroext i8 @fold_stmt(ptr noundef nonnull %7) #21
  %1018 = icmp eq i8 %1017, 0
  br i1 %1018, label %1031, label %1019, !prof !436

1019:                                             ; preds = %1016
  %1020 = load ptr, ptr %7, align 8
  %1021 = load ptr, ptr %1020, align 8, !tbaa !234
  call void @gimple_set_modified(ptr noundef %1021, i8 noundef zeroext 1) #21
  %1022 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %1023 = icmp eq ptr %1022, null
  br i1 %1023, label %1031, label %1024, !prof !437

1024:                                             ; preds = %1019
  %1025 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %1026 = and i32 %1025, 8
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1031, label %1028

1028:                                             ; preds = %1024
  %1029 = call i64 @fwrite(ptr nonnull @.str.26, i64 13, i64 1, ptr nonnull %1022)
  %1030 = load ptr, ptr @dump_file, align 8, !tbaa !184
  call void @print_gimple_stmt(ptr noundef %1030, ptr noundef %1021, i32 noundef 0, i32 noundef 2) #21
  br label %1031

1031:                                             ; preds = %1028, %1024, %1019, %1016
  %1032 = phi ptr [ %1021, %1028 ], [ %1021, %1024 ], [ %1021, %1019 ], [ %722, %1016 ]
  %1033 = call zeroext i8 @gimple_assign_single_p(ptr noundef %1032) #21
  %1034 = icmp eq i8 %1033, 0
  %1035 = load i32, ptr %1032, align 8
  %1036 = and i32 %1035, 255
  br i1 %1034, label %1052, label %1037, !prof !438

1037:                                             ; preds = %1031
  %1038 = add nsw i32 %1036, -10
  %1039 = icmp ult i32 %1038, -9
  br i1 %1039, label %1085, label %1040, !prof !439

1040:                                             ; preds = %1037
  %1041 = zext nneg i32 %1036 to i64
  %1042 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1041
  %1043 = load i32, ptr %1042, align 4, !tbaa !199
  %1044 = zext i32 %1043 to i64
  %1045 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1044
  %1046 = load i64, ptr %1045, align 8, !tbaa !260
  %1047 = icmp eq i64 %1046, 0
  br i1 %1047, label %1048, label %1049, !prof !439

1048:                                             ; preds = %1040
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1049

1049:                                             ; preds = %1048, %1040
  %1050 = getelementptr inbounds i8, ptr %1032, i64 %1046
  %1051 = getelementptr inbounds ptr, ptr %1050, i64 1
  br label %1082

1052:                                             ; preds = %1031
  %1053 = trunc i32 %1035 to i8
  switch i8 %1053, label %1085 [
    i8 3, label %1054
    i8 5, label %1068
  ], !prof !440

1054:                                             ; preds = %1052
  %1055 = add nsw i32 %1036, -10
  %1056 = icmp ult i32 %1055, -9
  br i1 %1056, label %1085, label %1057

1057:                                             ; preds = %1054
  %1058 = zext nneg i32 %1036 to i64
  %1059 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1058
  %1060 = load i32, ptr %1059, align 4, !tbaa !199
  %1061 = zext i32 %1060 to i64
  %1062 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1061
  %1063 = load i64, ptr %1062, align 8, !tbaa !260
  %1064 = icmp eq i64 %1063, 0
  br i1 %1064, label %1065, label %1066

1065:                                             ; preds = %1057
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1066

1066:                                             ; preds = %1065, %1057
  %1067 = getelementptr inbounds i8, ptr %1032, i64 %1063
  br label %1082

1068:                                             ; preds = %1052
  %1069 = add nsw i32 %1036, -10
  %1070 = icmp ult i32 %1069, -9
  br i1 %1070, label %1085, label %1071

1071:                                             ; preds = %1068
  %1072 = zext nneg i32 %1036 to i64
  %1073 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1072
  %1074 = load i32, ptr %1073, align 4, !tbaa !199
  %1075 = zext i32 %1074 to i64
  %1076 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1075
  %1077 = load i64, ptr %1076, align 8, !tbaa !260
  %1078 = icmp eq i64 %1077, 0
  br i1 %1078, label %1079, label %1080

1079:                                             ; preds = %1071
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1080

1080:                                             ; preds = %1079, %1071
  %1081 = getelementptr inbounds i8, ptr %1032, i64 %1077
  br label %1082

1082:                                             ; preds = %1049, %1066, %1080
  %1083 = phi ptr [ %1081, %1080 ], [ %1067, %1066 ], [ %1051, %1049 ]
  %1084 = load ptr, ptr %1083, align 8, !tbaa !184
  br label %1085

1085:                                             ; preds = %1082, %1068, %1054, %1052, %1037
  %1086 = phi ptr [ null, %1037 ], [ null, %1054 ], [ null, %1052 ], [ null, %1068 ], [ %1084, %1082 ]
  %1087 = icmp eq ptr %1086, null
  br i1 %1087, label %1093, label %1088, !prof !438

1088:                                             ; preds = %1085
  %1089 = load i64, ptr %1086, align 8
  %1090 = and i64 %1089, 65535
  %1091 = icmp eq i64 %1090, 121
  br i1 %1091, label %1092, label %1093, !prof !439

1092:                                             ; preds = %1088
  call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %1086) #21
  br label %1093

1093:                                             ; preds = %1092, %1088, %1085, %1006
  %1094 = phi ptr [ %722, %1006 ], [ %1032, %1092 ], [ %1032, %1088 ], [ %1032, %1085 ]
  %1095 = load i32, ptr %1094, align 8
  %1096 = and i32 %1095, 254
  %1097 = add nsw i32 %1096, -10
  %1098 = icmp ult i32 %1097, -4
  %1099 = and i32 %1095, 16384
  %1100 = icmp eq i32 %1099, 0
  %1101 = or i1 %1100, %1098
  br i1 %1101, label %1102, label %1135, !prof !236

1102:                                             ; preds = %1093
  %1103 = and i32 %1095, 255
  %1104 = icmp eq i32 %1103, 6
  br i1 %1104, label %1105, label %1108, !prof !441

1105:                                             ; preds = %1102
  %1106 = call zeroext i8 @gimple_rhs_has_side_effects(ptr noundef nonnull %1094) #21
  %1107 = icmp eq i8 %1106, 0
  br i1 %1107, label %1135, label %1108, !prof !442

1108:                                             ; preds = %1105, %1102
  %1109 = load i32, ptr %1094, align 8
  %1110 = and i32 %1109, 255
  %1111 = icmp eq i32 %1110, 8
  br i1 %1111, label %1112, label %1128, !prof !443

1112:                                             ; preds = %1108
  %1113 = zext nneg i32 %1110 to i64
  %1114 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1113
  %1115 = load i32, ptr %1114, align 4, !tbaa !199
  %1116 = zext i32 %1115 to i64
  %1117 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1116
  %1118 = load i64, ptr %1117, align 8, !tbaa !260
  %1119 = icmp eq i64 %1118, 0
  br i1 %1119, label %1120, label %1121, !prof !444

1120:                                             ; preds = %1112
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1121

1121:                                             ; preds = %1120, %1112
  %1122 = getelementptr inbounds i8, ptr %1094, i64 %1118
  %1123 = load ptr, ptr %1122, align 8, !tbaa !184
  %1124 = icmp eq ptr %1123, null
  br i1 %1124, label %1128, label %1125, !prof !445

1125:                                             ; preds = %1121
  %1126 = call zeroext i8 @gimple_rhs_has_side_effects(ptr noundef nonnull %1094) #21
  %1127 = icmp eq i8 %1126, 0
  br i1 %1127, label %1135, label %1128, !prof !446

1128:                                             ; preds = %1125, %1121, %1108
  %1129 = load i32, ptr %1094, align 8
  %1130 = and i32 %1129, 255
  %1131 = icmp eq i32 %1130, 1
  br i1 %1131, label %1135, label %1132, !prof !447

1132:                                             ; preds = %1128
  %1133 = icmp eq i32 %1130, 5
  %1134 = zext i1 %1133 to i8
  br label %1135

1135:                                             ; preds = %1125, %1105, %1132, %1128, %1093
  %1136 = phi i8 [ 0, %1093 ], [ 1, %1128 ], [ %1134, %1132 ], [ 1, %1105 ], [ 1, %1125 ]
  %1137 = icmp eq i8 %1136, 0
  br i1 %1137, label %1465, label %1138, !prof !448

1138:                                             ; preds = %1135
  %1139 = load i32, ptr %1094, align 8
  %1140 = and i32 %1139, 255
  %1141 = icmp eq i32 %1140, 8
  br i1 %1141, label %1142, label %1173, !prof !449

1142:                                             ; preds = %1138
  %1143 = zext nneg i32 %1140 to i64
  %1144 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1143
  %1145 = load i32, ptr %1144, align 4, !tbaa !199
  %1146 = zext i32 %1145 to i64
  %1147 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1146
  %1148 = load i64, ptr %1147, align 8, !tbaa !260
  %1149 = icmp eq i64 %1148, 0
  br i1 %1149, label %1150, label %1151

1150:                                             ; preds = %1142
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1151

1151:                                             ; preds = %1150, %1142
  %1152 = getelementptr inbounds i8, ptr %1094, i64 %1148
  %1153 = getelementptr inbounds ptr, ptr %1152, i64 1
  %1154 = load ptr, ptr %1153, align 8, !tbaa !184
  %1155 = load i64, ptr %1154, align 8
  %1156 = and i64 %1155, 65535
  %1157 = icmp eq i64 %1156, 121
  br i1 %1157, label %1158, label %1161

1158:                                             ; preds = %1151
  %1159 = getelementptr inbounds %struct.tree_exp, ptr %1154, i64 0, i32 3
  %1160 = load ptr, ptr %1159, align 8, !tbaa !195
  br label %1161

1161:                                             ; preds = %1158, %1151
  %1162 = phi ptr [ %1160, %1158 ], [ null, %1151 ]
  %1163 = icmp eq ptr %1162, null
  br i1 %1163, label %1173, label %1164

1164:                                             ; preds = %1161
  %1165 = getelementptr inbounds %struct.tree_function_decl, ptr %1162, i64 0, i32 5
  %1166 = load i32, ptr %1165, align 8
  %1167 = and i32 %1166, 8191
  %1168 = icmp eq i32 %1167, 6572
  br i1 %1168, label %1169, label %1173

1169:                                             ; preds = %1164
  %1170 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !184
  call void @propagate_tree_value_into_stmt(ptr noundef nonnull %7, ptr noundef %1170) #21
  %1171 = load ptr, ptr %7, align 8
  %1172 = load ptr, ptr %1171, align 8, !tbaa !234
  br label %1173

1173:                                             ; preds = %1169, %1164, %1161, %1138
  %1174 = phi ptr [ %1094, %1138 ], [ %1172, %1169 ], [ %1094, %1164 ], [ %1094, %1161 ]
  %1175 = load i32, ptr %1174, align 8
  %1176 = and i32 %1175, 255
  %1177 = add nsw i32 %1176, -10
  %1178 = icmp ult i32 %1177, -9
  %1179 = and i32 %1175, 8192
  %1180 = icmp eq i32 %1179, 0
  %1181 = or i1 %1180, %1178
  br i1 %1181, label %1183, label %1182, !prof !450

1182:                                             ; preds = %1173
  call void @update_stmt_operands(ptr noundef nonnull %1174) #21
  br label %1183

1183:                                             ; preds = %1182, %1173
  %1184 = load ptr, ptr %7, align 8
  %1185 = load ptr, ptr %1184, align 8, !tbaa !234
  %1186 = call ptr @gimple_get_lhs(ptr noundef %1185) #21
  %1187 = icmp eq ptr %1186, null
  br i1 %1187, label %1343, label %1188, !prof !451

1188:                                             ; preds = %1183
  %1189 = load i64, ptr %1186, align 8
  %1190 = and i64 %1189, 4259839
  %1191 = icmp eq i64 %1190, 141
  br i1 %1191, label %1192, label %1343, !prof !452

1192:                                             ; preds = %1188
  %1193 = load i32, ptr %1185, align 8
  %1194 = and i32 %1193, 254
  %1195 = add nsw i32 %1194, -10
  %1196 = icmp ult i32 %1195, -4
  br i1 %1196, label %1200, label %1197, !prof !453

1197:                                             ; preds = %1192
  %1198 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1185, i64 0, i32 1
  %1199 = load ptr, ptr %1198, align 8, !tbaa !195
  br label %1200

1200:                                             ; preds = %1197, %1192
  %1201 = phi ptr [ %1199, %1197 ], [ null, %1192 ]
  %1202 = icmp eq ptr %1201, null
  br i1 %1202, label %1203, label %1343, !prof !454

1203:                                             ; preds = %1200
  %1204 = and i32 %1193, 255
  %1205 = icmp eq i32 %1204, 6
  br i1 %1205, label %1206, label %1343, !prof !455

1206:                                             ; preds = %1203
  %1207 = zext nneg i32 %1204 to i64
  %1208 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1207
  %1209 = load i32, ptr %1208, align 4, !tbaa !199
  %1210 = zext i32 %1209 to i64
  %1211 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1210
  %1212 = load i64, ptr %1211, align 8, !tbaa !260
  %1213 = icmp eq i64 %1212, 0
  br i1 %1213, label %1214, label %1215, !prof !456

1214:                                             ; preds = %1206
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1215

1215:                                             ; preds = %1214, %1206
  %1216 = getelementptr inbounds i8, ptr %1185, i64 %1212
  %1217 = load ptr, ptr %1216, align 8, !tbaa !184
  %1218 = load i64, ptr %1217, align 8
  %1219 = and i64 %1218, 65535
  %1220 = icmp eq i64 %1219, 141
  br i1 %1220, label %1221, label %1343, !prof !457

1221:                                             ; preds = %1215
  %1222 = load i32, ptr %1185, align 8
  %1223 = trunc i32 %1222 to i8
  switch i8 %1223, label %1226 [
    i8 6, label %1224
    i8 1, label %1224
    i8 8, label %1227
  ], !prof !458

1224:                                             ; preds = %1221, %1221
  %1225 = lshr i32 %1222, 16
  br label %1227

1226:                                             ; preds = %1221
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1446, ptr noundef nonnull @.str.10) #21
  br label %1227

1227:                                             ; preds = %1226, %1224, %1221
  %1228 = phi i32 [ %1225, %1224 ], [ 0, %1226 ], [ 59, %1221 ]
  %1229 = zext nneg i32 %1228 to i64
  %1230 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1229
  %1231 = load i8, ptr %1230, align 1, !tbaa !195
  %1232 = icmp eq i8 %1231, 3
  br i1 %1232, label %1233, label %1253, !prof !459

1233:                                             ; preds = %1227
  %1234 = load i32, ptr %1185, align 8
  %1235 = and i32 %1234, 255
  %1236 = add nsw i32 %1235, -1
  %1237 = icmp ult i32 %1236, 9
  call void @llvm.assume(i1 %1237)
  %1238 = zext nneg i32 %1235 to i64
  %1239 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1238
  %1240 = load i32, ptr %1239, align 4, !tbaa !199
  %1241 = zext i32 %1240 to i64
  %1242 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1241
  %1243 = load i64, ptr %1242, align 8, !tbaa !260
  %1244 = icmp eq i64 %1243, 0
  br i1 %1244, label %1245, label %1246, !prof !460

1245:                                             ; preds = %1233
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1246

1246:                                             ; preds = %1245, %1233
  %1247 = getelementptr inbounds i8, ptr %1185, i64 %1243
  %1248 = getelementptr inbounds ptr, ptr %1247, i64 1
  %1249 = load ptr, ptr %1248, align 8, !tbaa !184
  %1250 = load i64, ptr %1249, align 8
  %1251 = trunc i64 %1250 to i32
  %1252 = and i32 %1251, 65535
  br label %1253

1253:                                             ; preds = %1246, %1227
  %1254 = phi i32 [ %1252, %1246 ], [ %1228, %1227 ]
  %1255 = icmp eq i32 %1254, 63
  br i1 %1255, label %1291, label %1256, !prof !461

1256:                                             ; preds = %1253
  %1257 = load i32, ptr %1185, align 8
  %1258 = trunc i32 %1257 to i8
  switch i8 %1258, label %1261 [
    i8 6, label %1259
    i8 1, label %1259
    i8 8, label %1262
  ], !prof !462

1259:                                             ; preds = %1256, %1256
  %1260 = lshr i32 %1257, 16
  br label %1262

1261:                                             ; preds = %1256
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1446, ptr noundef nonnull @.str.10) #21
  br label %1262

1262:                                             ; preds = %1261, %1259, %1256
  %1263 = phi i32 [ %1260, %1259 ], [ 0, %1261 ], [ 59, %1256 ]
  %1264 = zext nneg i32 %1263 to i64
  %1265 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1264
  %1266 = load i8, ptr %1265, align 1, !tbaa !195
  %1267 = icmp eq i8 %1266, 3
  br i1 %1267, label %1268, label %1288, !prof !463

1268:                                             ; preds = %1262
  %1269 = load i32, ptr %1185, align 8
  %1270 = and i32 %1269, 255
  %1271 = add nsw i32 %1270, -1
  %1272 = icmp ult i32 %1271, 9
  call void @llvm.assume(i1 %1272)
  %1273 = zext nneg i32 %1270 to i64
  %1274 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1273
  %1275 = load i32, ptr %1274, align 4, !tbaa !199
  %1276 = zext i32 %1275 to i64
  %1277 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1276
  %1278 = load i64, ptr %1277, align 8, !tbaa !260
  %1279 = icmp eq i64 %1278, 0
  br i1 %1279, label %1280, label %1281, !prof !460

1280:                                             ; preds = %1268
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1281

1281:                                             ; preds = %1280, %1268
  %1282 = getelementptr inbounds i8, ptr %1185, i64 %1278
  %1283 = getelementptr inbounds ptr, ptr %1282, i64 1
  %1284 = load ptr, ptr %1283, align 8, !tbaa !184
  %1285 = load i64, ptr %1284, align 8
  %1286 = trunc i64 %1285 to i32
  %1287 = and i32 %1286, 65535
  br label %1288

1288:                                             ; preds = %1281, %1262
  %1289 = phi i32 [ %1287, %1281 ], [ %1263, %1262 ]
  %1290 = icmp eq i32 %1289, 64
  br i1 %1290, label %1291, label %1343, !prof !464

1291:                                             ; preds = %1288, %1253
  %1292 = load i32, ptr %1185, align 8
  %1293 = and i32 %1292, 255
  %1294 = add nsw i32 %1293, -10
  %1295 = icmp ult i32 %1294, -9
  br i1 %1295, label %1309, label %1296, !prof !465

1296:                                             ; preds = %1291
  %1297 = zext nneg i32 %1293 to i64
  %1298 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1297
  %1299 = load i32, ptr %1298, align 4, !tbaa !199
  %1300 = zext i32 %1299 to i64
  %1301 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1300
  %1302 = load i64, ptr %1301, align 8, !tbaa !260
  %1303 = icmp eq i64 %1302, 0
  br i1 %1303, label %1304, label %1305, !prof !465

1304:                                             ; preds = %1296
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1305

1305:                                             ; preds = %1304, %1296
  %1306 = getelementptr inbounds i8, ptr %1185, i64 %1302
  %1307 = getelementptr inbounds ptr, ptr %1306, i64 1
  %1308 = load ptr, ptr %1307, align 8, !tbaa !184
  br label %1309

1309:                                             ; preds = %1305, %1291
  %1310 = phi ptr [ %1308, %1305 ], [ null, %1291 ]
  %1311 = load i64, ptr %1310, align 8
  %1312 = and i64 %1311, 65535
  %1313 = icmp eq i64 %1312, 141
  br i1 %1313, label %1314, label %1343, !prof !466

1314:                                             ; preds = %1309
  %1315 = getelementptr inbounds %struct.tree_ssa_name, ptr %1310, i64 0, i32 2
  %1316 = load ptr, ptr %1315, align 8, !tbaa !195
  %1317 = load i32, ptr %1316, align 8
  %1318 = and i32 %1317, 255
  %1319 = icmp eq i32 %1318, 16
  br i1 %1319, label %1320, label %1343, !prof !467

1320:                                             ; preds = %1314
  %1321 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1316, i64 0, i32 2
  %1322 = load i32, ptr %1321, align 4, !tbaa !195
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1343, label %1324, !prof !468

1324:                                             ; preds = %1320
  %1325 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1316, i64 0, i32 1
  br label %1331

1326:                                             ; preds = %1337
  %1327 = add nuw nsw i64 %1332, 1
  %1328 = load i32, ptr %1321, align 4, !tbaa !195
  %1329 = zext i32 %1328 to i64
  %1330 = icmp ult i64 %1327, %1329
  br i1 %1330, label %1331, label %1343, !prof !469, !llvm.loop !470

1331:                                             ; preds = %1326, %1324
  %1332 = phi i64 [ 0, %1324 ], [ %1327, %1326 ]
  %1333 = trunc i64 %1332 to i32
  %1334 = load i32, ptr %1325, align 8, !tbaa !195
  %1335 = icmp ult i32 %1334, %1333
  br i1 %1335, label %1336, label %1337, !prof !471

1336:                                             ; preds = %1331
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 3103, ptr noundef nonnull @.str.10) #21
  br label %1337

1337:                                             ; preds = %1336, %1331
  %1338 = and i64 %1332, 4294967295
  %1339 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1316, i64 0, i32 4, i64 %1338, i32 0, i32 3
  %1340 = load ptr, ptr %1339, align 8, !tbaa !284
  %1341 = load ptr, ptr %1340, align 8, !tbaa !184
  %1342 = icmp eq ptr %1341, %1217
  br i1 %1342, label %1343, label %1326, !prof !471

1343:                                             ; preds = %1326, %1337, %1203, %1215, %1309, %1314, %1288, %1320, %1183, %1188, %1200
  %1344 = phi i8 [ 0, %1200 ], [ 0, %1188 ], [ 0, %1183 ], [ 1, %1320 ], [ 1, %1288 ], [ 1, %1314 ], [ 1, %1309 ], [ 1, %1215 ], [ 1, %1203 ], [ 0, %1337 ], [ 1, %1326 ]
  %1345 = call fastcc ptr @lookup_avail_expr(ptr noundef %1185, i8 noundef zeroext %1344)
  %1346 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 1), align 8, !tbaa !277
  %1347 = add nsw i64 %1346, 1
  store i64 %1347, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 1), align 8, !tbaa !277
  %1348 = load i32, ptr %1185, align 8
  %1349 = and i32 %1348, 255
  %1350 = trunc i32 %1348 to i8
  switch i8 %1350, label %1413 [
    i8 6, label %1351
    i8 1, label %1365
    i8 8, label %1367
    i8 5, label %1399
  ], !prof !472

1351:                                             ; preds = %1343
  %1352 = zext nneg i32 %1349 to i64
  %1353 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1352
  %1354 = load i32, ptr %1353, align 4, !tbaa !199
  %1355 = zext i32 %1354 to i64
  %1356 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1355
  %1357 = load i64, ptr %1356, align 8, !tbaa !260
  %1358 = icmp eq i64 %1357, 0
  br i1 %1358, label %1359, label %1360, !prof !473

1359:                                             ; preds = %1351
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1360

1360:                                             ; preds = %1359, %1351
  %1361 = getelementptr inbounds i8, ptr %1185, i64 %1357
  %1362 = load ptr, ptr %1361, align 8, !tbaa !184
  %1363 = getelementptr inbounds %struct.tree_common, ptr %1362, i64 0, i32 2
  %1364 = load ptr, ptr %1363, align 8, !tbaa !195
  br label %1414

1365:                                             ; preds = %1343
  %1366 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  br label %1414

1367:                                             ; preds = %1343
  %1368 = zext nneg i32 %1349 to i64
  %1369 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1368
  %1370 = load i32, ptr %1369, align 4, !tbaa !199
  %1371 = zext i32 %1370 to i64
  %1372 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1371
  %1373 = load i64, ptr %1372, align 8, !tbaa !260
  %1374 = icmp eq i64 %1373, 0
  br i1 %1374, label %1375, label %1376

1375:                                             ; preds = %1367
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1376

1376:                                             ; preds = %1375, %1367
  %1377 = getelementptr inbounds i8, ptr %1185, i64 %1373
  %1378 = load ptr, ptr %1377, align 8, !tbaa !184
  %1379 = icmp eq ptr %1378, null
  br i1 %1379, label %1380, label %1381

1380:                                             ; preds = %1376
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1815, ptr noundef nonnull @.str.10) #21
  br label %1381

1381:                                             ; preds = %1380, %1376
  %1382 = load i32, ptr %1185, align 8
  %1383 = and i32 %1382, 255
  %1384 = add nsw i32 %1383, -1
  %1385 = icmp ult i32 %1384, 9
  call void @llvm.assume(i1 %1385)
  %1386 = zext nneg i32 %1383 to i64
  %1387 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1386
  %1388 = load i32, ptr %1387, align 4, !tbaa !199
  %1389 = zext i32 %1388 to i64
  %1390 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1389
  %1391 = load i64, ptr %1390, align 8, !tbaa !260
  %1392 = icmp eq i64 %1391, 0
  br i1 %1392, label %1393, label %1394

1393:                                             ; preds = %1381
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1394

1394:                                             ; preds = %1393, %1381
  %1395 = getelementptr inbounds i8, ptr %1185, i64 %1391
  %1396 = load ptr, ptr %1395, align 8, !tbaa !184
  %1397 = getelementptr inbounds %struct.tree_common, ptr %1396, i64 0, i32 2
  %1398 = load ptr, ptr %1397, align 8, !tbaa !195
  br label %1414

1399:                                             ; preds = %1343
  %1400 = zext nneg i32 %1349 to i64
  %1401 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1400
  %1402 = load i32, ptr %1401, align 4, !tbaa !199
  %1403 = zext i32 %1402 to i64
  %1404 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1403
  %1405 = load i64, ptr %1404, align 8, !tbaa !260
  %1406 = icmp eq i64 %1405, 0
  br i1 %1406, label %1407, label %1408, !prof !474

1407:                                             ; preds = %1399
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1408

1408:                                             ; preds = %1407, %1399
  %1409 = getelementptr inbounds i8, ptr %1185, i64 %1405
  %1410 = load ptr, ptr %1409, align 8, !tbaa !184
  %1411 = getelementptr inbounds %struct.tree_common, ptr %1410, i64 0, i32 2
  %1412 = load ptr, ptr %1411, align 8, !tbaa !195
  br label %1414

1413:                                             ; preds = %1343
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1822, ptr noundef nonnull @.str.10) #21
  br label %1414

1414:                                             ; preds = %1413, %1408, %1394, %1365, %1360
  %1415 = phi i1 [ false, %1360 ], [ true, %1365 ], [ false, %1394 ], [ true, %1408 ], [ true, %1413 ]
  %1416 = phi ptr [ %1364, %1360 ], [ %1366, %1365 ], [ %1398, %1394 ], [ %1412, %1408 ], [ undef, %1413 ]
  %1417 = icmp eq ptr %1345, null
  br i1 %1417, label %1462, label %1418, !prof !475

1418:                                             ; preds = %1414
  %1419 = load i64, ptr %1345, align 8
  %1420 = and i64 %1419, 65535
  %1421 = icmp eq i64 %1420, 141
  br i1 %1421, label %1428, label %1422, !prof !476

1422:                                             ; preds = %1418
  br i1 %1415, label %1423, label %1431, !prof !477

1423:                                             ; preds = %1422
  %1424 = getelementptr inbounds %struct.tree_common, ptr %1345, i64 0, i32 2
  %1425 = load ptr, ptr %1424, align 8, !tbaa !195
  %1426 = call zeroext i8 @useless_type_conversion_p(ptr noundef %1416, ptr noundef %1425) #21
  %1427 = icmp eq i8 %1426, 0
  br i1 %1427, label %1428, label %1431, !prof !478

1428:                                             ; preds = %1423, %1418
  %1429 = call zeroext i8 @may_propagate_copy_into_stmt(ptr noundef nonnull %1185, ptr noundef nonnull %1345) #21
  %1430 = icmp eq i8 %1429, 0
  br i1 %1430, label %1462, label %1431, !prof !479

1431:                                             ; preds = %1428, %1423, %1422
  %1432 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %1433 = icmp eq ptr %1432, null
  br i1 %1433, label %1448, label %1434, !prof !480

1434:                                             ; preds = %1431
  %1435 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %1436 = and i32 %1435, 8
  %1437 = icmp eq i32 %1436, 0
  br i1 %1437, label %1448, label %1438

1438:                                             ; preds = %1434
  %1439 = call i64 @fwrite(ptr nonnull @.str.35, i64 27, i64 1, ptr nonnull %1432)
  %1440 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %1441 = load i32, ptr @dump_flags, align 4, !tbaa !199
  call void @print_gimple_expr(ptr noundef %1440, ptr noundef nonnull %1185, i32 noundef 0, i32 noundef %1441) #21
  %1442 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %1443 = call i64 @fwrite(ptr nonnull @.str.36, i64 8, i64 1, ptr %1442)
  %1444 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %1445 = load i32, ptr @dump_flags, align 4, !tbaa !199
  call void @print_generic_expr(ptr noundef %1444, ptr noundef nonnull %1345, i32 noundef %1445) #21
  %1446 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %1447 = call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %1446)
  br label %1448

1448:                                             ; preds = %1438, %1434, %1431
  %1449 = load i64, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 2), align 8, !tbaa !271
  %1450 = add nsw i64 %1449, 1
  store i64 %1450, ptr getelementptr inbounds (%struct.opt_stats_d, ptr @opt_stats, i64 0, i32 2), align 8, !tbaa !271
  br i1 %1415, label %1458, label %1451, !prof !481

1451:                                             ; preds = %1448
  %1452 = getelementptr inbounds %struct.tree_common, ptr %1345, i64 0, i32 2
  %1453 = load ptr, ptr %1452, align 8, !tbaa !195
  %1454 = call zeroext i8 @useless_type_conversion_p(ptr noundef %1416, ptr noundef %1453) #21
  %1455 = icmp eq i8 %1454, 0
  br i1 %1455, label %1456, label %1458, !prof !482

1456:                                             ; preds = %1451
  %1457 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1416, ptr noundef nonnull %1345) #21
  br label %1458

1458:                                             ; preds = %1456, %1451, %1448
  %1459 = phi ptr [ %1345, %1451 ], [ %1457, %1456 ], [ %1345, %1448 ]
  call void @propagate_tree_value_into_stmt(ptr noundef nonnull %7, ptr noundef %1459) #21
  %1460 = load ptr, ptr %7, align 8
  %1461 = load ptr, ptr %1460, align 8, !tbaa !234
  call void @gimple_set_modified(ptr noundef %1461, i8 noundef zeroext 1) #21
  br label %1462

1462:                                             ; preds = %1458, %1428, %1414
  %1463 = load ptr, ptr %7, align 8
  %1464 = load ptr, ptr %1463, align 8, !tbaa !234
  br label %1465

1465:                                             ; preds = %1462, %1135
  %1466 = phi ptr [ %1464, %1462 ], [ %1094, %1135 ]
  %1467 = load i32, ptr %1466, align 8
  %1468 = and i32 %1467, 255
  %1469 = icmp eq i32 %1468, 6
  br i1 %1469, label %1470, label %1639, !prof !441

1470:                                             ; preds = %1465
  %1471 = zext nneg i32 %1468 to i64
  %1472 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1471
  %1473 = load i32, ptr %1472, align 4, !tbaa !199
  %1474 = zext i32 %1473 to i64
  %1475 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1474
  %1476 = load i64, ptr %1475, align 8, !tbaa !260
  %1477 = icmp eq i64 %1476, 0
  br i1 %1477, label %1478, label %1479, !prof !473

1478:                                             ; preds = %1470
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1479

1479:                                             ; preds = %1478, %1470
  %1480 = getelementptr inbounds i8, ptr %1466, i64 %1476
  %1481 = load ptr, ptr %1480, align 8, !tbaa !184
  %1482 = load i64, ptr %1481, align 8
  %1483 = and i64 %1482, 65535
  %1484 = icmp eq i64 %1483, 141
  br i1 %1484, label %1485, label %1531, !prof !452

1485:                                             ; preds = %1479
  %1486 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %1466) #21
  %1487 = icmp eq i8 %1486, 0
  br i1 %1487, label %1531, label %1488, !prof !483

1488:                                             ; preds = %1485
  %1489 = load i32, ptr %1466, align 8
  %1490 = and i32 %1489, 255
  %1491 = add nsw i32 %1490, -10
  %1492 = icmp ult i32 %1491, -9
  br i1 %1492, label %1506, label %1493, !prof !484

1493:                                             ; preds = %1488
  %1494 = zext nneg i32 %1490 to i64
  %1495 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1494
  %1496 = load i32, ptr %1495, align 4, !tbaa !199
  %1497 = zext i32 %1496 to i64
  %1498 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1497
  %1499 = load i64, ptr %1498, align 8, !tbaa !260
  %1500 = icmp eq i64 %1499, 0
  br i1 %1500, label %1501, label %1502, !prof !484

1501:                                             ; preds = %1493
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1502

1502:                                             ; preds = %1501, %1493
  %1503 = getelementptr inbounds i8, ptr %1466, i64 %1499
  %1504 = getelementptr inbounds ptr, ptr %1503, i64 1
  %1505 = load ptr, ptr %1504, align 8, !tbaa !184
  br label %1506

1506:                                             ; preds = %1502, %1488
  %1507 = phi ptr [ %1505, %1502 ], [ null, %1488 ]
  br i1 %1137, label %1531, label %1508, !prof !484

1508:                                             ; preds = %1506
  %1509 = load i64, ptr %1507, align 8
  %1510 = and i64 %1509, 65535
  %1511 = icmp eq i64 %1510, 141
  br i1 %1511, label %1515, label %1512, !prof !485

1512:                                             ; preds = %1508
  %1513 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1507) #21
  %1514 = icmp eq i8 %1513, 0
  br i1 %1514, label %1531, label %1515, !prof !486

1515:                                             ; preds = %1512, %1508
  %1516 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %1517 = icmp eq ptr %1516, null
  br i1 %1517, label %1530, label %1518, !prof !487

1518:                                             ; preds = %1515
  %1519 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %1520 = and i32 %1519, 8
  %1521 = icmp eq i32 %1520, 0
  br i1 %1521, label %1530, label %1522

1522:                                             ; preds = %1518
  %1523 = call i64 @fwrite(ptr nonnull @.str.40, i64 10, i64 1, ptr nonnull %1516)
  %1524 = load ptr, ptr @dump_file, align 8, !tbaa !184
  call void @print_generic_expr(ptr noundef %1524, ptr noundef nonnull %1481, i32 noundef 0) #21
  %1525 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %1526 = call i64 @fwrite(ptr nonnull @.str.14, i64 3, i64 1, ptr %1525)
  %1527 = load ptr, ptr @dump_file, align 8, !tbaa !184
  call void @print_generic_expr(ptr noundef %1527, ptr noundef nonnull %1507, i32 noundef 0) #21
  %1528 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %1529 = call i32 @fputc(i32 10, ptr %1528)
  br label %1530

1530:                                             ; preds = %1522, %1518, %1515
  call void @set_ssa_name_value(ptr noundef nonnull %1481, ptr noundef nonnull %1507) #21
  br label %1531

1531:                                             ; preds = %1530, %1512, %1506, %1485, %1479
  %1532 = load i32, ptr %1466, align 8
  %1533 = and i32 %1532, 254
  %1534 = add nsw i32 %1533, -10
  %1535 = icmp ult i32 %1534, -4
  %1536 = and i32 %1532, 16384
  %1537 = icmp ne i32 %1536, 0
  %1538 = or i1 %1537, %1535
  br i1 %1538, label %1639, label %1539, !prof !473

1539:                                             ; preds = %1531
  %1540 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1466, i64 0, i32 2
  %1541 = load ptr, ptr %1540, align 8, !tbaa !195
  %1542 = icmp eq ptr %1541, null
  br i1 %1542, label %1639, label %1543, !prof !488

1543:                                             ; preds = %1539
  %1544 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %1466) #21
  %1545 = icmp eq i8 %1544, 0
  br i1 %1545, label %1639, label %1546, !prof !489

1546:                                             ; preds = %1543
  %1547 = load i32, ptr %1466, align 8
  %1548 = and i32 %1547, 255
  %1549 = add nsw i32 %1548, -1
  %1550 = icmp ult i32 %1549, 9
  call void @llvm.assume(i1 %1550)
  %1551 = zext nneg i32 %1548 to i64
  %1552 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1551
  %1553 = load i32, ptr %1552, align 4, !tbaa !199
  %1554 = zext i32 %1553 to i64
  %1555 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1554
  %1556 = load i64, ptr %1555, align 8, !tbaa !260
  %1557 = icmp eq i64 %1556, 0
  br i1 %1557, label %1558, label %1559, !prof !489

1558:                                             ; preds = %1546
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1559

1559:                                             ; preds = %1558, %1546
  %1560 = getelementptr inbounds i8, ptr %1466, i64 %1556
  %1561 = getelementptr inbounds ptr, ptr %1560, i64 1
  %1562 = load ptr, ptr %1561, align 8, !tbaa !184
  %1563 = load i64, ptr %1562, align 8
  %1564 = and i64 %1563, 65535
  %1565 = icmp eq i64 %1564, 141
  br i1 %1565, label %1588, label %1566, !prof !490

1566:                                             ; preds = %1559
  %1567 = load i32, ptr %1466, align 8
  %1568 = and i32 %1567, 255
  %1569 = add nsw i32 %1568, -10
  %1570 = icmp ult i32 %1569, -9
  br i1 %1570, label %1584, label %1571, !prof !491

1571:                                             ; preds = %1566
  %1572 = zext nneg i32 %1568 to i64
  %1573 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1572
  %1574 = load i32, ptr %1573, align 4, !tbaa !199
  %1575 = zext i32 %1574 to i64
  %1576 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1575
  %1577 = load i64, ptr %1576, align 8, !tbaa !260
  %1578 = icmp eq i64 %1577, 0
  br i1 %1578, label %1579, label %1580, !prof !491

1579:                                             ; preds = %1571
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1580

1580:                                             ; preds = %1579, %1571
  %1581 = getelementptr inbounds i8, ptr %1466, i64 %1577
  %1582 = getelementptr inbounds ptr, ptr %1581, i64 1
  %1583 = load ptr, ptr %1582, align 8, !tbaa !184
  br label %1584

1584:                                             ; preds = %1580, %1566
  %1585 = phi ptr [ %1583, %1580 ], [ null, %1566 ]
  %1586 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %1585) #21
  %1587 = icmp eq i8 %1586, 0
  br i1 %1587, label %1639, label %1588, !prof !492

1588:                                             ; preds = %1584, %1559
  %1589 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1481) #21
  %1590 = icmp eq i8 %1589, 0
  br i1 %1590, label %1591, label %1639, !prof !493

1591:                                             ; preds = %1588
  %1592 = load i32, ptr %1466, align 8
  %1593 = and i32 %1592, 255
  %1594 = add nsw i32 %1593, -10
  %1595 = icmp ult i32 %1594, -9
  br i1 %1595, label %1609, label %1596, !prof !474

1596:                                             ; preds = %1591
  %1597 = zext nneg i32 %1593 to i64
  %1598 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1597
  %1599 = load i32, ptr %1598, align 4, !tbaa !199
  %1600 = zext i32 %1599 to i64
  %1601 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1600
  %1602 = load i64, ptr %1601, align 8, !tbaa !260
  %1603 = icmp eq i64 %1602, 0
  br i1 %1603, label %1604, label %1605, !prof !474

1604:                                             ; preds = %1596
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1605

1605:                                             ; preds = %1604, %1596
  %1606 = getelementptr inbounds i8, ptr %1466, i64 %1602
  %1607 = getelementptr inbounds ptr, ptr %1606, i64 1
  %1608 = load ptr, ptr %1607, align 8, !tbaa !184
  br label %1609

1609:                                             ; preds = %1605, %1591
  %1610 = phi ptr [ %1608, %1605 ], [ null, %1591 ]
  %1611 = load i64, ptr %1610, align 8
  %1612 = and i64 %1611, 65535
  %1613 = icmp eq i64 %1612, 141
  br i1 %1613, label %1614, label %1618, !prof !494

1614:                                             ; preds = %1609
  %1615 = getelementptr inbounds %struct.tree_ssa_name, ptr %1610, i64 0, i32 2
  %1616 = load ptr, ptr %1615, align 8, !tbaa !195
  %1617 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %1610, ptr noundef nonnull %1481) #21
  store ptr %1616, ptr %1615, align 8, !tbaa !195
  br label %1620

1618:                                             ; preds = %1609
  %1619 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %1610, ptr noundef nonnull %1481) #21
  br label %1620

1620:                                             ; preds = %1618, %1614
  %1621 = phi ptr [ %1617, %1614 ], [ %1619, %1618 ]
  %1622 = load i32, ptr %1466, align 8
  %1623 = and i32 %1622, 254
  %1624 = add nsw i32 %1623, -10
  %1625 = icmp ult i32 %1624, -4
  br i1 %1625, label %1629, label %1626, !prof !474

1626:                                             ; preds = %1620
  %1627 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1466, i64 0, i32 1
  %1628 = load ptr, ptr %1627, align 8, !tbaa !195
  br label %1629

1629:                                             ; preds = %1626, %1620
  %1630 = phi ptr [ %1628, %1626 ], [ null, %1620 ]
  %1631 = load i32, ptr %1621, align 8
  %1632 = and i32 %1631, 254
  %1633 = add nsw i32 %1632, -10
  %1634 = icmp ult i32 %1633, -4
  br i1 %1634, label %1635, label %1636, !prof !474

1635:                                             ; preds = %1629
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1407, ptr noundef nonnull @.str.10) #21
  br label %1636

1636:                                             ; preds = %1635, %1629
  %1637 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1621, i64 0, i32 2
  store ptr %1630, ptr %1637, align 8, !tbaa !195
  %1638 = call fastcc ptr @lookup_avail_expr(ptr noundef nonnull %1621, i8 noundef zeroext 1)
  br label %1639

1639:                                             ; preds = %1584, %1636, %1588, %1543, %1539, %1531, %1465
  %1640 = load i32, ptr %1466, align 8
  %1641 = and i32 %1640, 255
  %1642 = add nsw i32 %1641, -10
  %1643 = icmp ult i32 %1642, -9
  %1644 = lshr i32 %1640, 13
  %1645 = trunc i32 %1644 to i8
  %1646 = and i8 %1645, 1
  %1647 = select i1 %1643, i8 0, i8 %1646, !prof !413
  %1648 = or i8 %1647, %1014
  %1649 = icmp eq i8 %1648, 0
  br i1 %1649, label %1742, label %1650, !prof !495

1650:                                             ; preds = %1639
  %1651 = and i32 %1640, 8192
  %1652 = icmp eq i32 %1651, 0
  %1653 = or i1 %1652, %1643
  br i1 %1653, label %1655, label %1654, !prof !496

1654:                                             ; preds = %1650
  call void @update_stmt_operands(ptr noundef nonnull %1466) #21
  br label %1655

1655:                                             ; preds = %1654, %1650
  %1656 = load i32, ptr %1466, align 8
  %1657 = and i32 %1656, 255
  %1658 = trunc i32 %1656 to i8
  switch i8 %1658, label %1715 [
    i8 1, label %1659
    i8 5, label %1700
  ], !prof !497

1659:                                             ; preds = %1655
  %1660 = getelementptr inbounds %struct.gimple_statement_base, ptr %1466, i64 0, i32 2
  %1661 = load i32, ptr %1660, align 8, !tbaa !195
  %1662 = lshr i32 %1656, 16
  %1663 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  %1664 = add nsw i32 %1657, -10
  %1665 = icmp ult i32 %1664, -9
  br i1 %1665, label %1678, label %1666, !prof !498

1666:                                             ; preds = %1659
  %1667 = zext nneg i32 %1657 to i64
  %1668 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1667
  %1669 = load i32, ptr %1668, align 4, !tbaa !199
  %1670 = zext i32 %1669 to i64
  %1671 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1670
  %1672 = load i64, ptr %1671, align 8, !tbaa !260
  %1673 = icmp eq i64 %1672, 0
  br i1 %1673, label %1674, label %1675, !prof !498

1674:                                             ; preds = %1666
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1675

1675:                                             ; preds = %1674, %1666
  %1676 = getelementptr inbounds i8, ptr %1466, i64 %1672
  %1677 = load ptr, ptr %1676, align 8, !tbaa !184
  br label %1678

1678:                                             ; preds = %1675, %1659
  %1679 = phi ptr [ %1677, %1675 ], [ null, %1659 ]
  %1680 = load i32, ptr %1466, align 8
  %1681 = and i32 %1680, 255
  %1682 = add nsw i32 %1681, -10
  %1683 = icmp ult i32 %1682, -9
  br i1 %1683, label %1697, label %1684, !prof !498

1684:                                             ; preds = %1678
  %1685 = zext nneg i32 %1681 to i64
  %1686 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1685
  %1687 = load i32, ptr %1686, align 4, !tbaa !199
  %1688 = zext i32 %1687 to i64
  %1689 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1688
  %1690 = load i64, ptr %1689, align 8, !tbaa !260
  %1691 = icmp eq i64 %1690, 0
  br i1 %1691, label %1692, label %1693, !prof !498

1692:                                             ; preds = %1684
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1693

1693:                                             ; preds = %1692, %1684
  %1694 = getelementptr inbounds i8, ptr %1466, i64 %1690
  %1695 = getelementptr inbounds ptr, ptr %1694, i64 1
  %1696 = load ptr, ptr %1695, align 8, !tbaa !184
  br label %1697

1697:                                             ; preds = %1693, %1678
  %1698 = phi ptr [ %1696, %1693 ], [ null, %1678 ]
  %1699 = call ptr @fold_binary_loc(i32 noundef %1661, i32 noundef %1662, ptr noundef %1663, ptr noundef %1679, ptr noundef %1698) #21
  br label %1715

1700:                                             ; preds = %1655
  %1701 = add nsw i32 %1657, -10
  %1702 = icmp ult i32 %1701, -9
  br i1 %1702, label %1715, label %1703

1703:                                             ; preds = %1700
  %1704 = zext nneg i32 %1657 to i64
  %1705 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1704
  %1706 = load i32, ptr %1705, align 4, !tbaa !199
  %1707 = zext i32 %1706 to i64
  %1708 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1707
  %1709 = load i64, ptr %1708, align 8, !tbaa !260
  %1710 = icmp eq i64 %1709, 0
  br i1 %1710, label %1711, label %1712

1711:                                             ; preds = %1703
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1712

1712:                                             ; preds = %1711, %1703
  %1713 = getelementptr inbounds i8, ptr %1466, i64 %1709
  %1714 = load ptr, ptr %1713, align 8, !tbaa !184
  br label %1715

1715:                                             ; preds = %1712, %1700, %1697, %1655
  %1716 = phi ptr [ %1699, %1697 ], [ null, %1655 ], [ %1714, %1712 ], [ null, %1700 ]
  %1717 = icmp eq ptr %1716, null
  br i1 %1717, label %1726, label %1718, !prof !499

1718:                                             ; preds = %1715
  %1719 = load i64, ptr %1716, align 8
  %1720 = and i64 %1719, 65535
  %1721 = icmp eq i64 %1720, 23
  br i1 %1721, label %1722, label %1726, !prof !500

1722:                                             ; preds = %1718
  %1723 = call ptr @find_taken_edge(ptr noundef nonnull %1, ptr noundef nonnull %1716) #21
  %1724 = icmp eq ptr %1723, null
  br i1 %1724, label %1726, label %1725, !prof !501

1725:                                             ; preds = %1722
  store i8 1, ptr @cfg_altered, align 1, !tbaa !195
  br label %1726

1726:                                             ; preds = %1725, %1722, %1718, %1715
  %1727 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef nonnull %722, ptr noundef nonnull %1466) #21
  %1728 = icmp eq i8 %1727, 0
  br i1 %1728, label %1742, label %1729, !prof !502

1729:                                             ; preds = %1726
  %1730 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %1731 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !184
  %1732 = load i32, ptr %1730, align 8, !tbaa !269
  %1733 = call zeroext i8 @bitmap_set_bit(ptr noundef %1731, i32 noundef %1732) #21
  %1734 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %1735 = icmp eq ptr %1734, null
  br i1 %1735, label %1742, label %1736

1736:                                             ; preds = %1729
  %1737 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %1738 = and i32 %1737, 8
  %1739 = icmp eq i32 %1738, 0
  br i1 %1739, label %1742, label %1740

1740:                                             ; preds = %1736
  %1741 = call i64 @fwrite(ptr nonnull @.str.27, i64 29, i64 1, ptr nonnull %1734)
  br label %1742

1742:                                             ; preds = %1639, %1726, %1729, %1736, %1740
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  %1743 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %721, i64 0, i32 2
  %1744 = load ptr, ptr %1743, align 8, !tbaa !237
  %1745 = icmp eq ptr %1744, null
  br i1 %1745, label %1746, label %720, !prof !503, !llvm.loop !504

1746:                                             ; preds = %1742, %714
  %1747 = load i32, ptr %699, align 8, !tbaa !223, !noalias !505
  %1748 = and i32 %1747, 512
  %1749 = icmp eq i32 %1748, 0
  br i1 %1749, label %1750, label %1756, !prof !341

1750:                                             ; preds = %1746
  %1751 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %1752 = load ptr, ptr %1751, align 8, !tbaa !195, !noalias !505
  %1753 = icmp eq ptr %1752, null
  br i1 %1753, label %1756, label %1754, !prof !408

1754:                                             ; preds = %1750
  %1755 = load ptr, ptr %1752, align 8, !tbaa !229, !noalias !505
  br label %1756

1756:                                             ; preds = %1754, %1750, %1746
  %1757 = phi ptr [ %1755, %1754 ], [ null, %1750 ], [ null, %1746 ]
  %1758 = icmp eq ptr %1757, null
  br i1 %1758, label %1762, label %1759, !prof !408

1759:                                             ; preds = %1756
  %1760 = getelementptr inbounds %struct.gimple_seq_d, ptr %1757, i64 0, i32 1
  %1761 = load ptr, ptr %1760, align 8, !tbaa !508, !noalias !505
  br label %1762

1762:                                             ; preds = %1759, %1756
  %1763 = phi ptr [ %1761, %1759 ], [ null, %1756 ]
  %1764 = icmp eq ptr %1763, null
  br i1 %1764, label %2899, label %1765, !prof !509

1765:                                             ; preds = %1762
  %1766 = load ptr, ptr %1763, align 8, !tbaa !234
  %1767 = getelementptr inbounds %struct.gimple_statement_base, ptr %1766, i64 0, i32 2
  %1768 = load i32, ptr %1767, align 8, !tbaa !195
  %1769 = load i32, ptr %1766, align 8
  %1770 = and i32 %1769, 255
  %1771 = icmp eq i32 %1770, 5
  br i1 %1771, label %1772, label %1908, !prof !510

1772:                                             ; preds = %1765
  %1773 = zext nneg i32 %1770 to i64
  %1774 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1773
  %1775 = load i32, ptr %1774, align 4, !tbaa !199
  %1776 = zext i32 %1775 to i64
  %1777 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1776
  %1778 = load i64, ptr %1777, align 8, !tbaa !260
  %1779 = icmp eq i64 %1778, 0
  br i1 %1779, label %1780, label %1781, !prof !474

1780:                                             ; preds = %1772
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1781

1781:                                             ; preds = %1780, %1772
  %1782 = getelementptr inbounds i8, ptr %1766, i64 %1778
  %1783 = load ptr, ptr %1782, align 8, !tbaa !184
  %1784 = load i64, ptr %1783, align 8
  %1785 = and i64 %1784, 65535
  %1786 = icmp eq i64 %1785, 141
  br i1 %1786, label %1787, label %1908, !prof !494

1787:                                             ; preds = %1781
  %1788 = getelementptr inbounds %struct.gimple_statement_base, ptr %1766, i64 0, i32 3
  %1789 = load i32, ptr %1788, align 4, !tbaa !195
  %1790 = icmp ugt i32 %1789, 1
  br i1 %1790, label %1792, label %1791, !prof !494

1791:                                             ; preds = %1787
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 3162, ptr noundef nonnull @.str.10) #21
  br label %1792

1792:                                             ; preds = %1791, %1787
  %1793 = add i32 %1789, -1
  %1794 = load ptr, ptr @cfun, align 8, !tbaa !184
  %1795 = getelementptr inbounds %struct.function, ptr %1794, i64 0, i32 1
  %1796 = load ptr, ptr %1795, align 8, !tbaa !213
  %1797 = getelementptr inbounds %struct.control_flow_graph, ptr %1796, i64 0, i32 5
  %1798 = load i32, ptr %1797, align 8, !tbaa !511
  %1799 = sext i32 %1798 to i64
  %1800 = call ptr @xcalloc(i64 noundef %1799, i64 noundef 8) #21
  %1801 = icmp sgt i32 %1793, 0
  br i1 %1801, label %1802, label %1858, !prof !512

1802:                                             ; preds = %1792
  %1803 = zext nneg i32 %1793 to i64
  br label %1804

1804:                                             ; preds = %1802, %1856
  %1805 = phi i64 [ 0, %1802 ], [ %1807, %1856 ]
  %1806 = load i32, ptr %1788, align 4, !tbaa !195
  %1807 = add nuw nsw i64 %1805, 1
  %1808 = zext i32 %1806 to i64
  %1809 = icmp ult i64 %1807, %1808
  br i1 %1809, label %1811, label %1810, !prof !513

1810:                                             ; preds = %1804
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 3215, ptr noundef nonnull @.str.10) #21
  br label %1811

1811:                                             ; preds = %1810, %1804
  %1812 = load i32, ptr %1766, align 8
  %1813 = and i32 %1812, 255
  %1814 = add nsw i32 %1813, -10
  %1815 = icmp ult i32 %1814, -9
  br i1 %1815, label %1829, label %1816, !prof !514

1816:                                             ; preds = %1811
  %1817 = zext nneg i32 %1813 to i64
  %1818 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1817
  %1819 = load i32, ptr %1818, align 4, !tbaa !199
  %1820 = zext i32 %1819 to i64
  %1821 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1820
  %1822 = load i64, ptr %1821, align 8, !tbaa !260
  %1823 = icmp eq i64 %1822, 0
  br i1 %1823, label %1824, label %1825, !prof !514

1824:                                             ; preds = %1816
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1825

1825:                                             ; preds = %1824, %1816
  %1826 = getelementptr inbounds i8, ptr %1766, i64 %1822
  %1827 = getelementptr inbounds ptr, ptr %1826, i64 %1807
  %1828 = load ptr, ptr %1827, align 8, !tbaa !184
  br label %1829

1829:                                             ; preds = %1825, %1811
  %1830 = phi ptr [ %1828, %1825 ], [ null, %1811 ]
  %1831 = load ptr, ptr @cfun, align 8, !tbaa !184
  %1832 = getelementptr inbounds %struct.tree_exp, ptr %1830, i64 1, i32 0, i32 1
  %1833 = load ptr, ptr %1832, align 8, !tbaa !195
  %1834 = call ptr @label_to_block_fn(ptr noundef %1831, ptr noundef %1833) #21
  %1835 = getelementptr inbounds %struct.tree_exp, ptr %1830, i64 1
  %1836 = load ptr, ptr %1835, align 8, !tbaa !195
  %1837 = icmp eq ptr %1836, null
  br i1 %1837, label %1838, label %1849, !prof !515

1838:                                             ; preds = %1829
  %1839 = getelementptr inbounds %struct.tree_exp, ptr %1830, i64 0, i32 3
  %1840 = load ptr, ptr %1839, align 8, !tbaa !195
  %1841 = icmp eq ptr %1840, null
  br i1 %1841, label %1849, label %1842, !prof !516

1842:                                             ; preds = %1838
  %1843 = getelementptr inbounds %struct.basic_block_def, ptr %1834, i64 0, i32 9
  %1844 = load i32, ptr %1843, align 8, !tbaa !269
  %1845 = sext i32 %1844 to i64
  %1846 = getelementptr inbounds ptr, ptr %1800, i64 %1845
  %1847 = load ptr, ptr %1846, align 8, !tbaa !184
  %1848 = icmp eq ptr %1847, null
  br i1 %1848, label %1855, label %1849, !prof !517

1849:                                             ; preds = %1842, %1838, %1829
  %1850 = load ptr, ptr @global_trees, align 16, !tbaa !184
  %1851 = getelementptr inbounds %struct.basic_block_def, ptr %1834, i64 0, i32 9
  %1852 = load i32, ptr %1851, align 8, !tbaa !269
  %1853 = sext i32 %1852 to i64
  %1854 = getelementptr inbounds ptr, ptr %1800, i64 %1853
  store ptr %1850, ptr %1854, align 8, !tbaa !184
  br label %1856

1855:                                             ; preds = %1842
  store ptr %1830, ptr %1846, align 8, !tbaa !184
  br label %1856

1856:                                             ; preds = %1855, %1849
  %1857 = icmp eq i64 %1807, %1803
  br i1 %1857, label %1858, label %1804, !prof !518, !llvm.loop !519

1858:                                             ; preds = %1856, %1792
  %1859 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %1860 = getelementptr inbounds %struct.tree_common, ptr %1783, i64 0, i32 2
  br label %1861

1861:                                             ; preds = %1905, %1858
  %1862 = phi i32 [ 0, %1858 ], [ %1906, %1905 ]
  %1863 = load ptr, ptr %1859, align 8, !tbaa !184
  %1864 = icmp eq ptr %1863, null
  br i1 %1864, label %1867, label %1865, !prof !520

1865:                                             ; preds = %1861
  %1866 = load i32, ptr %1863, align 8, !tbaa !242
  br label %1867

1867:                                             ; preds = %1865, %1861
  %1868 = phi i32 [ %1866, %1865 ], [ 0, %1861 ]
  %1869 = icmp eq i32 %1868, %1862
  br i1 %1869, label %1874, label %1870, !prof !521

1870:                                             ; preds = %1867
  %1871 = zext i32 %1862 to i64
  %1872 = getelementptr inbounds %struct.VEC_edge_base, ptr %1863, i64 0, i32 2, i64 %1871
  %1873 = load ptr, ptr %1872, align 8, !tbaa !184
  br label %1874

1874:                                             ; preds = %1870, %1867
  %1875 = phi ptr [ %1873, %1870 ], [ null, %1867 ]
  br i1 %1869, label %1907, label %1876, !prof !521

1876:                                             ; preds = %1874
  %1877 = getelementptr inbounds %struct.edge_def, ptr %1875, i64 0, i32 1
  %1878 = load ptr, ptr %1877, align 8, !tbaa !268
  %1879 = getelementptr inbounds %struct.basic_block_def, ptr %1878, i64 0, i32 9
  %1880 = load i32, ptr %1879, align 8, !tbaa !269
  %1881 = sext i32 %1880 to i64
  %1882 = getelementptr inbounds ptr, ptr %1800, i64 %1881
  %1883 = load ptr, ptr %1882, align 8, !tbaa !184
  %1884 = icmp eq ptr %1883, null
  %1885 = load ptr, ptr @global_trees, align 16
  %1886 = icmp eq ptr %1883, %1885
  %1887 = select i1 %1884, i1 true, i1 %1886, !prof !522
  br i1 %1887, label %1896, label %1888, !prof !523

1888:                                             ; preds = %1876
  %1889 = load ptr, ptr %1860, align 8, !tbaa !195
  %1890 = getelementptr inbounds %struct.tree_exp, ptr %1883, i64 0, i32 3
  %1891 = load ptr, ptr %1890, align 8, !tbaa !195
  %1892 = call ptr @fold_convert_loc(i32 noundef %1768, ptr noundef %1889, ptr noundef %1891) #21
  %1893 = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #21
  %1894 = getelementptr inbounds %struct.edge_def, ptr %1875, i64 0, i32 3
  store ptr %1893, ptr %1894, align 8, !tbaa !245
  store ptr %1783, ptr %1893, align 8, !tbaa !361
  %1895 = getelementptr inbounds %struct.edge_info, ptr %1893, i64 0, i32 1
  store ptr %1892, ptr %1895, align 8, !tbaa !363
  br label %1896

1896:                                             ; preds = %1888, %1876
  %1897 = load ptr, ptr %1859, align 8, !tbaa !184
  %1898 = icmp eq ptr %1897, null
  br i1 %1898, label %1901, label %1899, !prof !522

1899:                                             ; preds = %1896
  %1900 = load i32, ptr %1897, align 8, !tbaa !242
  br label %1901

1901:                                             ; preds = %1899, %1896
  %1902 = phi i32 [ %1900, %1899 ], [ 0, %1896 ]
  %1903 = icmp ult i32 %1862, %1902
  br i1 %1903, label %1905, label %1904, !prof !524

1904:                                             ; preds = %1901
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.10) #21
  br label %1905

1905:                                             ; preds = %1904, %1901
  %1906 = add i32 %1862, 1
  br label %1861, !llvm.loop !525

1907:                                             ; preds = %1874
  call void @free(ptr noundef %1800)
  br label %1908

1908:                                             ; preds = %1907, %1781, %1765
  %1909 = load i32, ptr %1766, align 8
  %1910 = and i32 %1909, 255
  %1911 = icmp eq i32 %1910, 1
  br i1 %1911, label %1912, label %2899, !prof !526

1912:                                             ; preds = %1908
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %1913 = load i32, ptr %1766, align 8
  %1914 = and i32 %1913, 255
  %1915 = add nsw i32 %1914, -10
  %1916 = icmp ult i32 %1915, -9
  br i1 %1916, label %1929, label %1917, !prof !411

1917:                                             ; preds = %1912
  %1918 = zext nneg i32 %1914 to i64
  %1919 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1918
  %1920 = load i32, ptr %1919, align 4, !tbaa !199
  %1921 = zext i32 %1920 to i64
  %1922 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1921
  %1923 = load i64, ptr %1922, align 8, !tbaa !260
  %1924 = icmp eq i64 %1923, 0
  br i1 %1924, label %1925, label %1926, !prof !411

1925:                                             ; preds = %1917
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1926

1926:                                             ; preds = %1925, %1917
  %1927 = getelementptr inbounds i8, ptr %1766, i64 %1923
  %1928 = load ptr, ptr %1927, align 8, !tbaa !184
  br label %1929

1929:                                             ; preds = %1926, %1912
  %1930 = phi ptr [ %1928, %1926 ], [ null, %1912 ]
  %1931 = load i32, ptr %1766, align 8
  %1932 = and i32 %1931, 255
  %1933 = add nsw i32 %1932, -10
  %1934 = icmp ult i32 %1933, -9
  br i1 %1934, label %1948, label %1935, !prof !411

1935:                                             ; preds = %1929
  %1936 = zext nneg i32 %1932 to i64
  %1937 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1936
  %1938 = load i32, ptr %1937, align 4, !tbaa !199
  %1939 = zext i32 %1938 to i64
  %1940 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1939
  %1941 = load i64, ptr %1940, align 8, !tbaa !260
  %1942 = icmp eq i64 %1941, 0
  br i1 %1942, label %1943, label %1944, !prof !411

1943:                                             ; preds = %1935
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %1944

1944:                                             ; preds = %1943, %1935
  %1945 = getelementptr inbounds i8, ptr %1766, i64 %1941
  %1946 = getelementptr inbounds ptr, ptr %1945, i64 1
  %1947 = load ptr, ptr %1946, align 8, !tbaa !184
  br label %1948

1948:                                             ; preds = %1944, %1929
  %1949 = phi ptr [ %1947, %1944 ], [ null, %1929 ]
  %1950 = load i32, ptr %1766, align 8
  %1951 = lshr i32 %1950, 16
  call void @extract_true_false_edges_from_block(ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %1952 = icmp eq i32 %1951, 101
  %1953 = icmp eq i32 %1951, 102
  %1954 = add nsw i32 %1951, -101
  %1955 = icmp ult i32 %1954, 2
  br i1 %1955, label %1956, label %2000, !prof !527

1956:                                             ; preds = %1948
  %1957 = load i64, ptr %1930, align 8
  %1958 = and i64 %1957, 65535
  %1959 = icmp eq i64 %1958, 141
  br i1 %1959, label %1960, label %2000, !prof !528

1960:                                             ; preds = %1956
  %1961 = getelementptr inbounds %struct.tree_common, ptr %1930, i64 0, i32 2
  %1962 = load ptr, ptr %1961, align 8, !tbaa !195
  %1963 = load i64, ptr %1962, align 8
  %1964 = and i64 %1963, 65535
  %1965 = icmp eq i64 %1964, 7
  br i1 %1965, label %1966, label %2000, !prof !529

1966:                                             ; preds = %1960
  %1967 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %1949) #21
  %1968 = icmp eq i8 %1967, 0
  br i1 %1968, label %2000, label %1969, !prof !530

1969:                                             ; preds = %1966
  %1970 = load ptr, ptr %5, align 8, !tbaa !184
  %1971 = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #21
  %1972 = getelementptr inbounds %struct.edge_def, ptr %1970, i64 0, i32 3
  store ptr %1971, ptr %1972, align 8, !tbaa !245
  store ptr %1930, ptr %1971, align 8, !tbaa !361
  %1973 = call i32 @integer_zerop(ptr noundef %1949) #21
  %1974 = icmp eq i32 %1973, 0
  %1975 = getelementptr inbounds %struct.edge_info, ptr %1971, i64 0, i32 1
  br i1 %1952, label %1976, label %1988, !prof !530

1976:                                             ; preds = %1969
  %1977 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %1978 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %1979 = select i1 %1974, ptr %1978, ptr %1977
  store ptr %1979, ptr %1975, align 8, !tbaa !363
  %1980 = load ptr, ptr %6, align 8, !tbaa !184
  %1981 = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #21
  %1982 = getelementptr inbounds %struct.edge_def, ptr %1980, i64 0, i32 3
  store ptr %1981, ptr %1982, align 8, !tbaa !245
  store ptr %1930, ptr %1981, align 8, !tbaa !361
  %1983 = call i32 @integer_zerop(ptr noundef %1949) #21
  %1984 = icmp eq i32 %1983, 0
  %1985 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %1986 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %1987 = select i1 %1984, ptr %1986, ptr %1985
  br label %2894

1988:                                             ; preds = %1969
  %1989 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %1990 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %1991 = select i1 %1974, ptr %1990, ptr %1989, !prof !530
  store ptr %1991, ptr %1975, align 8, !tbaa !363
  %1992 = load ptr, ptr %6, align 8, !tbaa !184
  %1993 = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #21
  %1994 = getelementptr inbounds %struct.edge_def, ptr %1992, i64 0, i32 3
  store ptr %1993, ptr %1994, align 8, !tbaa !245
  store ptr %1930, ptr %1993, align 8, !tbaa !361
  %1995 = call i32 @integer_zerop(ptr noundef %1949) #21
  %1996 = icmp eq i32 %1995, 0
  %1997 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %1998 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %1999 = select i1 %1996, ptr %1998, ptr %1997, !prof !530
  br label %2894

2000:                                             ; preds = %1966, %1960, %1956, %1948
  %2001 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %1930) #21
  %2002 = icmp eq i8 %2001, 0
  br i1 %2002, label %2024, label %2003, !prof !531

2003:                                             ; preds = %2000
  %2004 = load i64, ptr %1949, align 8
  %2005 = and i64 %2004, 65535
  %2006 = icmp eq i64 %2005, 141
  br i1 %2006, label %2010, label %2007, !prof !501

2007:                                             ; preds = %2003
  %2008 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1949) #21
  %2009 = icmp eq i8 %2008, 0
  br i1 %2009, label %2024, label %2010, !prof !501

2010:                                             ; preds = %2007, %2003
  %2011 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  %2012 = call ptr @build2_stat(i32 noundef %1951, ptr noundef %2011, ptr noundef %1930, ptr noundef nonnull %1949) #21
  %2013 = call ptr @invert_truthvalue_loc(i32 noundef %1768, ptr noundef %2012) #21
  %2014 = load ptr, ptr %5, align 8, !tbaa !184
  %2015 = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #21
  %2016 = getelementptr inbounds %struct.edge_def, ptr %2014, i64 0, i32 3
  store ptr %2015, ptr %2016, align 8, !tbaa !245
  call fastcc void @record_conditions(ptr noundef %2015, ptr noundef %2012, ptr noundef %2013)
  br i1 %1952, label %2017, label %2019, !prof !501

2017:                                             ; preds = %2010
  store ptr %1949, ptr %2015, align 8, !tbaa !361
  %2018 = getelementptr inbounds %struct.edge_info, ptr %2015, i64 0, i32 1
  store ptr %1930, ptr %2018, align 8, !tbaa !363
  br label %2019

2019:                                             ; preds = %2017, %2010
  %2020 = load ptr, ptr %6, align 8, !tbaa !184
  %2021 = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #21
  %2022 = getelementptr inbounds %struct.edge_def, ptr %2020, i64 0, i32 3
  store ptr %2021, ptr %2022, align 8, !tbaa !245
  call fastcc void @record_conditions(ptr noundef %2021, ptr noundef %2013, ptr noundef %2012)
  br i1 %1953, label %2023, label %2898, !prof !500

2023:                                             ; preds = %2019
  store ptr %1949, ptr %2021, align 8, !tbaa !361
  br label %2894

2024:                                             ; preds = %2007, %2000
  %2025 = load i64, ptr %1930, align 8
  %2026 = and i64 %2025, 65535
  %2027 = icmp eq i64 %2026, 141
  br i1 %2027, label %2028, label %2898, !prof !532

2028:                                             ; preds = %2024
  %2029 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %1949) #21
  %2030 = icmp eq i8 %2029, 0
  br i1 %2030, label %2031, label %2035, !prof !533

2031:                                             ; preds = %2028
  %2032 = load i64, ptr %1949, align 8
  %2033 = and i64 %2032, 65535
  %2034 = icmp eq i64 %2033, 141
  br i1 %2034, label %2035, label %2898

2035:                                             ; preds = %2031, %2028
  %2036 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  %2037 = call ptr @build2_stat(i32 noundef %1951, ptr noundef %2036, ptr noundef nonnull %1930, ptr noundef %1949) #21
  %2038 = call ptr @invert_truthvalue_loc(i32 noundef %1768, ptr noundef %2037) #21
  %2039 = load ptr, ptr %5, align 8, !tbaa !184
  %2040 = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #21
  %2041 = getelementptr inbounds %struct.edge_def, ptr %2039, i64 0, i32 3
  store ptr %2040, ptr %2041, align 8, !tbaa !245
  %2042 = load i64, ptr %2037, align 8
  %2043 = and i64 %2042, 65535
  %2044 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2043
  %2045 = load i32, ptr %2044, align 4, !tbaa !199
  %2046 = icmp eq i32 %2045, 5
  br i1 %2046, label %2047, label %2462, !prof !534

2047:                                             ; preds = %2035
  %2048 = trunc i64 %2042 to i16
  %2049 = getelementptr inbounds %struct.tree_exp, ptr %2037, i64 0, i32 3
  %2050 = load ptr, ptr %2049, align 8, !tbaa !195
  %2051 = getelementptr inbounds %struct.tree_exp, ptr %2037, i64 1
  %2052 = load ptr, ptr %2051, align 8, !tbaa !195
  switch i16 %2048, label %2395 [
    i16 97, label %2053
    i16 99, label %2053
    i16 100, label %2131
    i16 98, label %2131
    i16 101, label %2162
    i16 103, label %2221
    i16 105, label %2302
    i16 107, label %2302
    i16 109, label %2337
    i16 110, label %2366
  ], !prof !535

2053:                                             ; preds = %2047, %2047
  %2054 = getelementptr inbounds %struct.tree_common, ptr %2050, i64 0, i32 2
  %2055 = load ptr, ptr %2054, align 8, !tbaa !195
  %2056 = load i64, ptr %2055, align 8
  %2057 = trunc i64 %2056 to i16
  switch i16 %2057, label %2093 [
    i16 9, label %2064
    i16 13, label %2058
    i16 14, label %2058
  ], !prof !536

2058:                                             ; preds = %2053, %2053
  %2059 = getelementptr inbounds %struct.tree_common, ptr %2055, i64 0, i32 2
  %2060 = load ptr, ptr %2059, align 8, !tbaa !195
  %2061 = load i64, ptr %2060, align 8
  %2062 = and i64 %2061, 65535
  %2063 = icmp eq i64 %2062, 9
  br i1 %2063, label %2064, label %2093

2064:                                             ; preds = %2058, %2053
  %2065 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 3
  store i32 6, ptr %2065, align 8, !tbaa !374
  %2066 = call ptr @xmalloc(i64 noundef 336) #21
  %2067 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 2
  store ptr %2066, ptr %2067, align 8, !tbaa !248
  %2068 = getelementptr inbounds %struct.cond_equivalence, ptr %2066, i64 4
  %2069 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 104), align 4, !tbaa !199
  %2070 = icmp eq i32 %2069, 5
  br i1 %2070, label %2072, label %2071

2071:                                             ; preds = %2064
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2072

2072:                                             ; preds = %2071, %2064
  %2073 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2073, ptr %2068, align 8, !tbaa !323
  %2074 = getelementptr inbounds %struct.cond_equivalence, ptr %2066, i64 4, i32 0, i32 1
  store i32 2, ptr %2074, align 8, !tbaa !326
  %2075 = getelementptr inbounds %struct.cond_equivalence, ptr %2066, i64 4, i32 0, i32 2
  store i32 104, ptr %2075, align 8, !tbaa !195
  %2076 = getelementptr inbounds %struct.cond_equivalence, ptr %2066, i64 4, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2076, align 8, !tbaa !195
  %2077 = getelementptr inbounds %struct.cond_equivalence, ptr %2066, i64 4, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2077, align 8, !tbaa !195
  %2078 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2079 = getelementptr inbounds %struct.cond_equivalence, ptr %2066, i64 4, i32 1
  store ptr %2078, ptr %2079, align 8, !tbaa !376
  %2080 = load ptr, ptr %2067, align 8, !tbaa !248
  %2081 = getelementptr inbounds %struct.cond_equivalence, ptr %2080, i64 5
  %2082 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 110), align 4, !tbaa !199
  %2083 = icmp eq i32 %2082, 5
  br i1 %2083, label %2085, label %2084

2084:                                             ; preds = %2072
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2085

2085:                                             ; preds = %2084, %2072
  %2086 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2086, ptr %2081, align 8, !tbaa !323
  %2087 = getelementptr inbounds %struct.cond_equivalence, ptr %2080, i64 5, i32 0, i32 1
  store i32 2, ptr %2087, align 8, !tbaa !326
  %2088 = getelementptr inbounds %struct.cond_equivalence, ptr %2080, i64 5, i32 0, i32 2
  store i32 110, ptr %2088, align 8, !tbaa !195
  %2089 = getelementptr inbounds %struct.cond_equivalence, ptr %2080, i64 5, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2089, align 8, !tbaa !195
  %2090 = getelementptr inbounds %struct.cond_equivalence, ptr %2080, i64 5, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2090, align 8, !tbaa !195
  %2091 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2092 = getelementptr inbounds %struct.cond_equivalence, ptr %2080, i64 5, i32 1
  store ptr %2091, ptr %2092, align 8, !tbaa !376
  br label %2097

2093:                                             ; preds = %2058, %2053
  %2094 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 3
  store i32 4, ptr %2094, align 8, !tbaa !374
  %2095 = call ptr @xmalloc(i64 noundef 224) #21
  %2096 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 2
  store ptr %2095, ptr %2096, align 8, !tbaa !248
  br label %2097

2097:                                             ; preds = %2093, %2085
  %2098 = load i64, ptr %2037, align 8
  %2099 = and i64 %2098, 65535
  %2100 = icmp eq i64 %2099, 97
  %2101 = select i1 %2100, i32 98, i32 100, !prof !537
  %2102 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 2
  %2103 = load ptr, ptr %2102, align 8, !tbaa !248
  %2104 = getelementptr inbounds %struct.cond_equivalence, ptr %2103, i64 2
  %2105 = zext nneg i32 %2101 to i64
  %2106 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2105
  %2107 = load i32, ptr %2106, align 4, !tbaa !199
  %2108 = icmp eq i32 %2107, 5
  br i1 %2108, label %2110, label %2109, !prof !538

2109:                                             ; preds = %2097
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2110

2110:                                             ; preds = %2109, %2097
  %2111 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2111, ptr %2104, align 8, !tbaa !323
  %2112 = getelementptr inbounds %struct.cond_equivalence, ptr %2103, i64 2, i32 0, i32 1
  store i32 2, ptr %2112, align 8, !tbaa !326
  %2113 = getelementptr inbounds %struct.cond_equivalence, ptr %2103, i64 2, i32 0, i32 2
  store i32 %2101, ptr %2113, align 8, !tbaa !195
  %2114 = getelementptr inbounds %struct.cond_equivalence, ptr %2103, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2114, align 8, !tbaa !195
  %2115 = getelementptr inbounds %struct.cond_equivalence, ptr %2103, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2115, align 8, !tbaa !195
  %2116 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2117 = getelementptr inbounds %struct.cond_equivalence, ptr %2103, i64 2, i32 1
  store ptr %2116, ptr %2117, align 8, !tbaa !376
  %2118 = load ptr, ptr %2102, align 8, !tbaa !248
  %2119 = getelementptr inbounds %struct.cond_equivalence, ptr %2118, i64 3
  %2120 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 102), align 4, !tbaa !199
  %2121 = icmp eq i32 %2120, 5
  br i1 %2121, label %2123, label %2122, !prof !538

2122:                                             ; preds = %2110
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2123

2123:                                             ; preds = %2122, %2110
  %2124 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2124, ptr %2119, align 8, !tbaa !323
  %2125 = getelementptr inbounds %struct.cond_equivalence, ptr %2118, i64 3, i32 0, i32 1
  store i32 2, ptr %2125, align 8, !tbaa !326
  %2126 = getelementptr inbounds %struct.cond_equivalence, ptr %2118, i64 3, i32 0, i32 2
  store i32 102, ptr %2126, align 8, !tbaa !195
  %2127 = getelementptr inbounds %struct.cond_equivalence, ptr %2118, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2127, align 8, !tbaa !195
  %2128 = getelementptr inbounds %struct.cond_equivalence, ptr %2118, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2128, align 8, !tbaa !195
  %2129 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2130 = getelementptr inbounds %struct.cond_equivalence, ptr %2118, i64 3, i32 1
  store ptr %2129, ptr %2130, align 8, !tbaa !376
  br label %2399

2131:                                             ; preds = %2047, %2047
  %2132 = getelementptr inbounds %struct.tree_common, ptr %2050, i64 0, i32 2
  %2133 = load ptr, ptr %2132, align 8, !tbaa !195
  %2134 = load i64, ptr %2133, align 8
  %2135 = trunc i64 %2134 to i16
  switch i16 %2135, label %2158 [
    i16 9, label %2142
    i16 13, label %2136
    i16 14, label %2136
  ], !prof !536

2136:                                             ; preds = %2131, %2131
  %2137 = getelementptr inbounds %struct.tree_common, ptr %2133, i64 0, i32 2
  %2138 = load ptr, ptr %2137, align 8, !tbaa !195
  %2139 = load i64, ptr %2138, align 8
  %2140 = and i64 %2139, 65535
  %2141 = icmp eq i64 %2140, 9
  br i1 %2141, label %2142, label %2158

2142:                                             ; preds = %2136, %2131
  %2143 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 3
  store i32 3, ptr %2143, align 8, !tbaa !374
  %2144 = call ptr @xmalloc(i64 noundef 168) #21
  %2145 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 2
  store ptr %2144, ptr %2145, align 8, !tbaa !248
  %2146 = getelementptr inbounds %struct.cond_equivalence, ptr %2144, i64 2
  %2147 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 104), align 4, !tbaa !199
  %2148 = icmp eq i32 %2147, 5
  br i1 %2148, label %2150, label %2149

2149:                                             ; preds = %2142
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2150

2150:                                             ; preds = %2149, %2142
  %2151 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2151, ptr %2146, align 8, !tbaa !323
  %2152 = getelementptr inbounds %struct.cond_equivalence, ptr %2144, i64 2, i32 0, i32 1
  store i32 2, ptr %2152, align 8, !tbaa !326
  %2153 = getelementptr inbounds %struct.cond_equivalence, ptr %2144, i64 2, i32 0, i32 2
  store i32 104, ptr %2153, align 8, !tbaa !195
  %2154 = getelementptr inbounds %struct.cond_equivalence, ptr %2144, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2154, align 8, !tbaa !195
  %2155 = getelementptr inbounds %struct.cond_equivalence, ptr %2144, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2155, align 8, !tbaa !195
  %2156 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2157 = getelementptr inbounds %struct.cond_equivalence, ptr %2144, i64 2, i32 1
  store ptr %2156, ptr %2157, align 8, !tbaa !376
  br label %2399

2158:                                             ; preds = %2136, %2131
  %2159 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 3
  store i32 2, ptr %2159, align 8, !tbaa !374
  %2160 = call ptr @xmalloc(i64 noundef 112) #21
  %2161 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 2
  store ptr %2160, ptr %2161, align 8, !tbaa !248
  br label %2399

2162:                                             ; preds = %2047
  %2163 = getelementptr inbounds %struct.tree_common, ptr %2050, i64 0, i32 2
  %2164 = load ptr, ptr %2163, align 8, !tbaa !195
  %2165 = load i64, ptr %2164, align 8
  %2166 = trunc i64 %2165 to i16
  switch i16 %2166, label %2189 [
    i16 9, label %2173
    i16 13, label %2167
    i16 14, label %2167
  ], !prof !539

2167:                                             ; preds = %2162, %2162
  %2168 = getelementptr inbounds %struct.tree_common, ptr %2164, i64 0, i32 2
  %2169 = load ptr, ptr %2168, align 8, !tbaa !195
  %2170 = load i64, ptr %2169, align 8
  %2171 = and i64 %2170, 65535
  %2172 = icmp eq i64 %2171, 9
  br i1 %2172, label %2173, label %2189

2173:                                             ; preds = %2167, %2162
  %2174 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 3
  store i32 5, ptr %2174, align 8, !tbaa !374
  %2175 = call ptr @xmalloc(i64 noundef 280) #21
  %2176 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 2
  store ptr %2175, ptr %2176, align 8, !tbaa !248
  %2177 = getelementptr inbounds %struct.cond_equivalence, ptr %2175, i64 4
  %2178 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 104), align 4, !tbaa !199
  %2179 = icmp eq i32 %2178, 5
  br i1 %2179, label %2181, label %2180

2180:                                             ; preds = %2173
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2181

2181:                                             ; preds = %2180, %2173
  %2182 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2182, ptr %2177, align 8, !tbaa !323
  %2183 = getelementptr inbounds %struct.cond_equivalence, ptr %2175, i64 4, i32 0, i32 1
  store i32 2, ptr %2183, align 8, !tbaa !326
  %2184 = getelementptr inbounds %struct.cond_equivalence, ptr %2175, i64 4, i32 0, i32 2
  store i32 104, ptr %2184, align 8, !tbaa !195
  %2185 = getelementptr inbounds %struct.cond_equivalence, ptr %2175, i64 4, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2185, align 8, !tbaa !195
  %2186 = getelementptr inbounds %struct.cond_equivalence, ptr %2175, i64 4, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2186, align 8, !tbaa !195
  %2187 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2188 = getelementptr inbounds %struct.cond_equivalence, ptr %2175, i64 4, i32 1
  store ptr %2187, ptr %2188, align 8, !tbaa !376
  br label %2193

2189:                                             ; preds = %2167, %2162
  %2190 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 3
  store i32 4, ptr %2190, align 8, !tbaa !374
  %2191 = call ptr @xmalloc(i64 noundef 224) #21
  %2192 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 2
  store ptr %2191, ptr %2192, align 8, !tbaa !248
  br label %2193

2193:                                             ; preds = %2189, %2181
  %2194 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 2
  %2195 = load ptr, ptr %2194, align 8, !tbaa !248
  %2196 = getelementptr inbounds %struct.cond_equivalence, ptr %2195, i64 2
  %2197 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 98), align 4, !tbaa !199
  %2198 = icmp eq i32 %2197, 5
  br i1 %2198, label %2200, label %2199, !prof !540

2199:                                             ; preds = %2193
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2200

2200:                                             ; preds = %2199, %2193
  %2201 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2201, ptr %2196, align 8, !tbaa !323
  %2202 = getelementptr inbounds %struct.cond_equivalence, ptr %2195, i64 2, i32 0, i32 1
  store i32 2, ptr %2202, align 8, !tbaa !326
  %2203 = getelementptr inbounds %struct.cond_equivalence, ptr %2195, i64 2, i32 0, i32 2
  store i32 98, ptr %2203, align 8, !tbaa !195
  %2204 = getelementptr inbounds %struct.cond_equivalence, ptr %2195, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2204, align 8, !tbaa !195
  %2205 = getelementptr inbounds %struct.cond_equivalence, ptr %2195, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2205, align 8, !tbaa !195
  %2206 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2207 = getelementptr inbounds %struct.cond_equivalence, ptr %2195, i64 2, i32 1
  store ptr %2206, ptr %2207, align 8, !tbaa !376
  %2208 = load ptr, ptr %2194, align 8, !tbaa !248
  %2209 = getelementptr inbounds %struct.cond_equivalence, ptr %2208, i64 3
  %2210 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 100), align 4, !tbaa !199
  %2211 = icmp eq i32 %2210, 5
  br i1 %2211, label %2213, label %2212, !prof !540

2212:                                             ; preds = %2200
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2213

2213:                                             ; preds = %2212, %2200
  %2214 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2214, ptr %2209, align 8, !tbaa !323
  %2215 = getelementptr inbounds %struct.cond_equivalence, ptr %2208, i64 3, i32 0, i32 1
  store i32 2, ptr %2215, align 8, !tbaa !326
  %2216 = getelementptr inbounds %struct.cond_equivalence, ptr %2208, i64 3, i32 0, i32 2
  store i32 100, ptr %2216, align 8, !tbaa !195
  %2217 = getelementptr inbounds %struct.cond_equivalence, ptr %2208, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2217, align 8, !tbaa !195
  %2218 = getelementptr inbounds %struct.cond_equivalence, ptr %2208, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2218, align 8, !tbaa !195
  %2219 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2220 = getelementptr inbounds %struct.cond_equivalence, ptr %2208, i64 3, i32 1
  store ptr %2219, ptr %2220, align 8, !tbaa !376
  br label %2399

2221:                                             ; preds = %2047
  %2222 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 3
  store i32 8, ptr %2222, align 8, !tbaa !374
  %2223 = call ptr @xmalloc(i64 noundef 448) #21
  %2224 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 2
  store ptr %2223, ptr %2224, align 8, !tbaa !248
  %2225 = getelementptr inbounds %struct.cond_equivalence, ptr %2223, i64 2
  %2226 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 102), align 4, !tbaa !199
  %2227 = icmp eq i32 %2226, 5
  br i1 %2227, label %2229, label %2228

2228:                                             ; preds = %2221
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2229

2229:                                             ; preds = %2228, %2221
  %2230 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2230, ptr %2225, align 8, !tbaa !323
  %2231 = getelementptr inbounds %struct.cond_equivalence, ptr %2223, i64 2, i32 0, i32 1
  store i32 2, ptr %2231, align 8, !tbaa !326
  %2232 = getelementptr inbounds %struct.cond_equivalence, ptr %2223, i64 2, i32 0, i32 2
  store i32 102, ptr %2232, align 8, !tbaa !195
  %2233 = getelementptr inbounds %struct.cond_equivalence, ptr %2223, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2233, align 8, !tbaa !195
  %2234 = getelementptr inbounds %struct.cond_equivalence, ptr %2223, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2234, align 8, !tbaa !195
  %2235 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2236 = getelementptr inbounds %struct.cond_equivalence, ptr %2223, i64 2, i32 1
  store ptr %2235, ptr %2236, align 8, !tbaa !376
  %2237 = load ptr, ptr %2224, align 8, !tbaa !248
  %2238 = getelementptr inbounds %struct.cond_equivalence, ptr %2237, i64 3
  %2239 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 106), align 4, !tbaa !199
  %2240 = icmp eq i32 %2239, 5
  br i1 %2240, label %2242, label %2241

2241:                                             ; preds = %2229
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2242

2242:                                             ; preds = %2241, %2229
  %2243 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2243, ptr %2238, align 8, !tbaa !323
  %2244 = getelementptr inbounds %struct.cond_equivalence, ptr %2237, i64 3, i32 0, i32 1
  store i32 2, ptr %2244, align 8, !tbaa !326
  %2245 = getelementptr inbounds %struct.cond_equivalence, ptr %2237, i64 3, i32 0, i32 2
  store i32 106, ptr %2245, align 8, !tbaa !195
  %2246 = getelementptr inbounds %struct.cond_equivalence, ptr %2237, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2246, align 8, !tbaa !195
  %2247 = getelementptr inbounds %struct.cond_equivalence, ptr %2237, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2247, align 8, !tbaa !195
  %2248 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2249 = getelementptr inbounds %struct.cond_equivalence, ptr %2237, i64 3, i32 1
  store ptr %2248, ptr %2249, align 8, !tbaa !376
  %2250 = load ptr, ptr %2224, align 8, !tbaa !248
  %2251 = getelementptr inbounds %struct.cond_equivalence, ptr %2250, i64 4
  %2252 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 108), align 4, !tbaa !199
  %2253 = icmp eq i32 %2252, 5
  br i1 %2253, label %2255, label %2254

2254:                                             ; preds = %2242
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2255

2255:                                             ; preds = %2254, %2242
  %2256 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2256, ptr %2251, align 8, !tbaa !323
  %2257 = getelementptr inbounds %struct.cond_equivalence, ptr %2250, i64 4, i32 0, i32 1
  store i32 2, ptr %2257, align 8, !tbaa !326
  %2258 = getelementptr inbounds %struct.cond_equivalence, ptr %2250, i64 4, i32 0, i32 2
  store i32 108, ptr %2258, align 8, !tbaa !195
  %2259 = getelementptr inbounds %struct.cond_equivalence, ptr %2250, i64 4, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2259, align 8, !tbaa !195
  %2260 = getelementptr inbounds %struct.cond_equivalence, ptr %2250, i64 4, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2260, align 8, !tbaa !195
  %2261 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2262 = getelementptr inbounds %struct.cond_equivalence, ptr %2250, i64 4, i32 1
  store ptr %2261, ptr %2262, align 8, !tbaa !376
  %2263 = load ptr, ptr %2224, align 8, !tbaa !248
  %2264 = getelementptr inbounds %struct.cond_equivalence, ptr %2263, i64 5
  %2265 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 109), align 4, !tbaa !199
  %2266 = icmp eq i32 %2265, 5
  br i1 %2266, label %2268, label %2267

2267:                                             ; preds = %2255
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2268

2268:                                             ; preds = %2267, %2255
  %2269 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2269, ptr %2264, align 8, !tbaa !323
  %2270 = getelementptr inbounds %struct.cond_equivalence, ptr %2263, i64 5, i32 0, i32 1
  store i32 2, ptr %2270, align 8, !tbaa !326
  %2271 = getelementptr inbounds %struct.cond_equivalence, ptr %2263, i64 5, i32 0, i32 2
  store i32 109, ptr %2271, align 8, !tbaa !195
  %2272 = getelementptr inbounds %struct.cond_equivalence, ptr %2263, i64 5, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2272, align 8, !tbaa !195
  %2273 = getelementptr inbounds %struct.cond_equivalence, ptr %2263, i64 5, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2273, align 8, !tbaa !195
  %2274 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2275 = getelementptr inbounds %struct.cond_equivalence, ptr %2263, i64 5, i32 1
  store ptr %2274, ptr %2275, align 8, !tbaa !376
  %2276 = load ptr, ptr %2224, align 8, !tbaa !248
  %2277 = getelementptr inbounds %struct.cond_equivalence, ptr %2276, i64 6
  %2278 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 105), align 4, !tbaa !199
  %2279 = icmp eq i32 %2278, 5
  br i1 %2279, label %2281, label %2280

2280:                                             ; preds = %2268
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2281

2281:                                             ; preds = %2280, %2268
  %2282 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2282, ptr %2277, align 8, !tbaa !323
  %2283 = getelementptr inbounds %struct.cond_equivalence, ptr %2276, i64 6, i32 0, i32 1
  store i32 2, ptr %2283, align 8, !tbaa !326
  %2284 = getelementptr inbounds %struct.cond_equivalence, ptr %2276, i64 6, i32 0, i32 2
  store i32 105, ptr %2284, align 8, !tbaa !195
  %2285 = getelementptr inbounds %struct.cond_equivalence, ptr %2276, i64 6, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2285, align 8, !tbaa !195
  %2286 = getelementptr inbounds %struct.cond_equivalence, ptr %2276, i64 6, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2286, align 8, !tbaa !195
  %2287 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2288 = getelementptr inbounds %struct.cond_equivalence, ptr %2276, i64 6, i32 1
  store ptr %2287, ptr %2288, align 8, !tbaa !376
  %2289 = load ptr, ptr %2224, align 8, !tbaa !248
  %2290 = getelementptr inbounds %struct.cond_equivalence, ptr %2289, i64 7
  %2291 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 107), align 4, !tbaa !199
  %2292 = icmp eq i32 %2291, 5
  br i1 %2292, label %2294, label %2293

2293:                                             ; preds = %2281
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2294

2294:                                             ; preds = %2293, %2281
  %2295 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2295, ptr %2290, align 8, !tbaa !323
  %2296 = getelementptr inbounds %struct.cond_equivalence, ptr %2289, i64 7, i32 0, i32 1
  store i32 2, ptr %2296, align 8, !tbaa !326
  %2297 = getelementptr inbounds %struct.cond_equivalence, ptr %2289, i64 7, i32 0, i32 2
  store i32 107, ptr %2297, align 8, !tbaa !195
  %2298 = getelementptr inbounds %struct.cond_equivalence, ptr %2289, i64 7, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2298, align 8, !tbaa !195
  %2299 = getelementptr inbounds %struct.cond_equivalence, ptr %2289, i64 7, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2299, align 8, !tbaa !195
  %2300 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2301 = getelementptr inbounds %struct.cond_equivalence, ptr %2289, i64 7, i32 1
  store ptr %2300, ptr %2301, align 8, !tbaa !376
  br label %2399

2302:                                             ; preds = %2047, %2047
  %2303 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 3
  store i32 4, ptr %2303, align 8, !tbaa !374
  %2304 = call ptr @xmalloc(i64 noundef 224) #21
  %2305 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 2
  store ptr %2304, ptr %2305, align 8, !tbaa !248
  %2306 = load i64, ptr %2037, align 8
  %2307 = and i64 %2306, 65535
  %2308 = icmp eq i64 %2307, 105
  %2309 = select i1 %2308, i32 106, i32 108
  %2310 = getelementptr inbounds %struct.cond_equivalence, ptr %2304, i64 2
  %2311 = zext nneg i32 %2309 to i64
  %2312 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2311
  %2313 = load i32, ptr %2312, align 4, !tbaa !199
  %2314 = icmp eq i32 %2313, 5
  br i1 %2314, label %2316, label %2315

2315:                                             ; preds = %2302
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2316

2316:                                             ; preds = %2315, %2302
  %2317 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2317, ptr %2310, align 8, !tbaa !323
  %2318 = getelementptr inbounds %struct.cond_equivalence, ptr %2304, i64 2, i32 0, i32 1
  store i32 2, ptr %2318, align 8, !tbaa !326
  %2319 = getelementptr inbounds %struct.cond_equivalence, ptr %2304, i64 2, i32 0, i32 2
  store i32 %2309, ptr %2319, align 8, !tbaa !195
  %2320 = getelementptr inbounds %struct.cond_equivalence, ptr %2304, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2320, align 8, !tbaa !195
  %2321 = getelementptr inbounds %struct.cond_equivalence, ptr %2304, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2321, align 8, !tbaa !195
  %2322 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2323 = getelementptr inbounds %struct.cond_equivalence, ptr %2304, i64 2, i32 1
  store ptr %2322, ptr %2323, align 8, !tbaa !376
  %2324 = load ptr, ptr %2305, align 8, !tbaa !248
  %2325 = getelementptr inbounds %struct.cond_equivalence, ptr %2324, i64 3
  %2326 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 102), align 4, !tbaa !199
  %2327 = icmp eq i32 %2326, 5
  br i1 %2327, label %2329, label %2328

2328:                                             ; preds = %2316
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2329

2329:                                             ; preds = %2328, %2316
  %2330 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2330, ptr %2325, align 8, !tbaa !323
  %2331 = getelementptr inbounds %struct.cond_equivalence, ptr %2324, i64 3, i32 0, i32 1
  store i32 2, ptr %2331, align 8, !tbaa !326
  %2332 = getelementptr inbounds %struct.cond_equivalence, ptr %2324, i64 3, i32 0, i32 2
  store i32 102, ptr %2332, align 8, !tbaa !195
  %2333 = getelementptr inbounds %struct.cond_equivalence, ptr %2324, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2333, align 8, !tbaa !195
  %2334 = getelementptr inbounds %struct.cond_equivalence, ptr %2324, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2334, align 8, !tbaa !195
  %2335 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2336 = getelementptr inbounds %struct.cond_equivalence, ptr %2324, i64 3, i32 1
  store ptr %2335, ptr %2336, align 8, !tbaa !376
  br label %2399

2337:                                             ; preds = %2047
  %2338 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 3
  store i32 4, ptr %2338, align 8, !tbaa !374
  %2339 = call ptr @xmalloc(i64 noundef 224) #21
  %2340 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 2
  store ptr %2339, ptr %2340, align 8, !tbaa !248
  %2341 = getelementptr inbounds %struct.cond_equivalence, ptr %2339, i64 2
  %2342 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 106), align 4, !tbaa !199
  %2343 = icmp eq i32 %2342, 5
  br i1 %2343, label %2345, label %2344

2344:                                             ; preds = %2337
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2345

2345:                                             ; preds = %2344, %2337
  %2346 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2346, ptr %2341, align 8, !tbaa !323
  %2347 = getelementptr inbounds %struct.cond_equivalence, ptr %2339, i64 2, i32 0, i32 1
  store i32 2, ptr %2347, align 8, !tbaa !326
  %2348 = getelementptr inbounds %struct.cond_equivalence, ptr %2339, i64 2, i32 0, i32 2
  store i32 106, ptr %2348, align 8, !tbaa !195
  %2349 = getelementptr inbounds %struct.cond_equivalence, ptr %2339, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2349, align 8, !tbaa !195
  %2350 = getelementptr inbounds %struct.cond_equivalence, ptr %2339, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2350, align 8, !tbaa !195
  %2351 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2352 = getelementptr inbounds %struct.cond_equivalence, ptr %2339, i64 2, i32 1
  store ptr %2351, ptr %2352, align 8, !tbaa !376
  %2353 = load ptr, ptr %2340, align 8, !tbaa !248
  %2354 = getelementptr inbounds %struct.cond_equivalence, ptr %2353, i64 3
  %2355 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 108), align 4, !tbaa !199
  %2356 = icmp eq i32 %2355, 5
  br i1 %2356, label %2358, label %2357

2357:                                             ; preds = %2345
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2358

2358:                                             ; preds = %2357, %2345
  %2359 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2359, ptr %2354, align 8, !tbaa !323
  %2360 = getelementptr inbounds %struct.cond_equivalence, ptr %2353, i64 3, i32 0, i32 1
  store i32 2, ptr %2360, align 8, !tbaa !326
  %2361 = getelementptr inbounds %struct.cond_equivalence, ptr %2353, i64 3, i32 0, i32 2
  store i32 108, ptr %2361, align 8, !tbaa !195
  %2362 = getelementptr inbounds %struct.cond_equivalence, ptr %2353, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2362, align 8, !tbaa !195
  %2363 = getelementptr inbounds %struct.cond_equivalence, ptr %2353, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2363, align 8, !tbaa !195
  %2364 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2365 = getelementptr inbounds %struct.cond_equivalence, ptr %2353, i64 3, i32 1
  store ptr %2364, ptr %2365, align 8, !tbaa !376
  br label %2399

2366:                                             ; preds = %2047
  %2367 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 3
  store i32 4, ptr %2367, align 8, !tbaa !374
  %2368 = call ptr @xmalloc(i64 noundef 224) #21
  %2369 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 2
  store ptr %2368, ptr %2369, align 8, !tbaa !248
  %2370 = getelementptr inbounds %struct.cond_equivalence, ptr %2368, i64 2
  %2371 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 102), align 4, !tbaa !199
  %2372 = icmp eq i32 %2371, 5
  br i1 %2372, label %2374, label %2373

2373:                                             ; preds = %2366
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2374

2374:                                             ; preds = %2373, %2366
  %2375 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2375, ptr %2370, align 8, !tbaa !323
  %2376 = getelementptr inbounds %struct.cond_equivalence, ptr %2368, i64 2, i32 0, i32 1
  store i32 2, ptr %2376, align 8, !tbaa !326
  %2377 = getelementptr inbounds %struct.cond_equivalence, ptr %2368, i64 2, i32 0, i32 2
  store i32 102, ptr %2377, align 8, !tbaa !195
  %2378 = getelementptr inbounds %struct.cond_equivalence, ptr %2368, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2378, align 8, !tbaa !195
  %2379 = getelementptr inbounds %struct.cond_equivalence, ptr %2368, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2379, align 8, !tbaa !195
  %2380 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2381 = getelementptr inbounds %struct.cond_equivalence, ptr %2368, i64 2, i32 1
  store ptr %2380, ptr %2381, align 8, !tbaa !376
  %2382 = load ptr, ptr %2369, align 8, !tbaa !248
  %2383 = getelementptr inbounds %struct.cond_equivalence, ptr %2382, i64 3
  %2384 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 104), align 4, !tbaa !199
  %2385 = icmp eq i32 %2384, 5
  br i1 %2385, label %2387, label %2386

2386:                                             ; preds = %2374
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2387

2387:                                             ; preds = %2386, %2374
  %2388 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2388, ptr %2383, align 8, !tbaa !323
  %2389 = getelementptr inbounds %struct.cond_equivalence, ptr %2382, i64 3, i32 0, i32 1
  store i32 2, ptr %2389, align 8, !tbaa !326
  %2390 = getelementptr inbounds %struct.cond_equivalence, ptr %2382, i64 3, i32 0, i32 2
  store i32 104, ptr %2390, align 8, !tbaa !195
  %2391 = getelementptr inbounds %struct.cond_equivalence, ptr %2382, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %2050, ptr %2391, align 8, !tbaa !195
  %2392 = getelementptr inbounds %struct.cond_equivalence, ptr %2382, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %2052, ptr %2392, align 8, !tbaa !195
  %2393 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2394 = getelementptr inbounds %struct.cond_equivalence, ptr %2382, i64 3, i32 1
  store ptr %2393, ptr %2394, align 8, !tbaa !376
  br label %2399

2395:                                             ; preds = %2047
  %2396 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 3
  store i32 2, ptr %2396, align 8, !tbaa !374
  %2397 = call ptr @xmalloc(i64 noundef 112) #21
  %2398 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 2
  store ptr %2397, ptr %2398, align 8, !tbaa !248
  br label %2399

2399:                                             ; preds = %2395, %2387, %2358, %2329, %2294, %2213, %2158, %2150, %2123
  %2400 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 2
  %2401 = load ptr, ptr %2400, align 8, !tbaa !248
  %2402 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2402, ptr %2401, align 8, !tbaa !323
  %2403 = load i64, ptr %2037, align 8
  %2404 = and i64 %2403, 65535
  %2405 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2404
  %2406 = load i32, ptr %2405, align 4, !tbaa !199
  %2407 = icmp eq i32 %2406, 5
  br i1 %2407, label %2408, label %2418, !prof !541

2408:                                             ; preds = %2399
  %2409 = getelementptr inbounds %struct.hashable_expr, ptr %2401, i64 0, i32 1
  store i32 2, ptr %2409, align 8, !tbaa !326
  %2410 = load i64, ptr %2037, align 8
  %2411 = trunc i64 %2410 to i32
  %2412 = and i32 %2411, 65535
  %2413 = getelementptr inbounds %struct.hashable_expr, ptr %2401, i64 0, i32 2
  store i32 %2412, ptr %2413, align 8, !tbaa !195
  %2414 = load ptr, ptr %2049, align 8, !tbaa !195
  %2415 = getelementptr inbounds %struct.hashable_expr, ptr %2401, i64 0, i32 2, i32 0, i32 1
  store ptr %2414, ptr %2415, align 8, !tbaa !195
  %2416 = load ptr, ptr %2051, align 8, !tbaa !195
  %2417 = getelementptr inbounds %struct.hashable_expr, ptr %2401, i64 0, i32 2, i32 0, i32 2
  store ptr %2416, ptr %2417, align 8, !tbaa !195
  br label %2426

2418:                                             ; preds = %2399
  %2419 = icmp eq i64 %2404, 96
  br i1 %2419, label %2420, label %2425

2420:                                             ; preds = %2418
  %2421 = getelementptr inbounds %struct.hashable_expr, ptr %2401, i64 0, i32 1
  store i32 1, ptr %2421, align 8, !tbaa !326
  %2422 = getelementptr inbounds %struct.hashable_expr, ptr %2401, i64 0, i32 2
  store i32 96, ptr %2422, align 8, !tbaa !195
  %2423 = load ptr, ptr %2049, align 8, !tbaa !195
  %2424 = getelementptr inbounds %struct.hashable_expr, ptr %2401, i64 0, i32 2, i32 0, i32 1
  store ptr %2423, ptr %2424, align 8, !tbaa !195
  br label %2426

2425:                                             ; preds = %2418
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 311, ptr noundef nonnull @.str.10) #21
  br label %2426

2426:                                             ; preds = %2425, %2420, %2408
  %2427 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2428 = load ptr, ptr %2400, align 8, !tbaa !248
  %2429 = getelementptr inbounds %struct.cond_equivalence, ptr %2428, i64 0, i32 1
  store ptr %2427, ptr %2429, align 8, !tbaa !376
  %2430 = getelementptr inbounds %struct.cond_equivalence, ptr %2428, i64 1
  %2431 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2431, ptr %2430, align 8, !tbaa !323
  %2432 = load i64, ptr %2038, align 8
  %2433 = and i64 %2432, 65535
  %2434 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2433
  %2435 = load i32, ptr %2434, align 4, !tbaa !199
  %2436 = icmp eq i32 %2435, 5
  br i1 %2436, label %2437, label %2449, !prof !541

2437:                                             ; preds = %2426
  %2438 = getelementptr inbounds %struct.cond_equivalence, ptr %2428, i64 1, i32 0, i32 1
  store i32 2, ptr %2438, align 8, !tbaa !326
  %2439 = load i64, ptr %2038, align 8
  %2440 = trunc i64 %2439 to i32
  %2441 = and i32 %2440, 65535
  %2442 = getelementptr inbounds %struct.cond_equivalence, ptr %2428, i64 1, i32 0, i32 2
  store i32 %2441, ptr %2442, align 8, !tbaa !195
  %2443 = getelementptr inbounds %struct.tree_exp, ptr %2038, i64 0, i32 3
  %2444 = load ptr, ptr %2443, align 8, !tbaa !195
  %2445 = getelementptr inbounds %struct.cond_equivalence, ptr %2428, i64 1, i32 0, i32 2, i32 0, i32 1
  store ptr %2444, ptr %2445, align 8, !tbaa !195
  %2446 = getelementptr inbounds %struct.tree_exp, ptr %2038, i64 1
  %2447 = load ptr, ptr %2446, align 8, !tbaa !195
  %2448 = getelementptr inbounds %struct.cond_equivalence, ptr %2428, i64 1, i32 0, i32 2, i32 0, i32 2
  store ptr %2447, ptr %2448, align 8, !tbaa !195
  br label %2458

2449:                                             ; preds = %2426
  %2450 = icmp eq i64 %2433, 96
  br i1 %2450, label %2451, label %2457

2451:                                             ; preds = %2449
  %2452 = getelementptr inbounds %struct.cond_equivalence, ptr %2428, i64 1, i32 0, i32 1
  store i32 1, ptr %2452, align 8, !tbaa !326
  %2453 = getelementptr inbounds %struct.cond_equivalence, ptr %2428, i64 1, i32 0, i32 2
  store i32 96, ptr %2453, align 8, !tbaa !195
  %2454 = getelementptr inbounds %struct.tree_exp, ptr %2038, i64 0, i32 3
  %2455 = load ptr, ptr %2454, align 8, !tbaa !195
  %2456 = getelementptr inbounds %struct.cond_equivalence, ptr %2428, i64 1, i32 0, i32 2, i32 0, i32 1
  store ptr %2455, ptr %2456, align 8, !tbaa !195
  br label %2458

2457:                                             ; preds = %2449
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 311, ptr noundef nonnull @.str.10) #21
  br label %2458

2458:                                             ; preds = %2457, %2451, %2437
  %2459 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !184
  %2460 = load ptr, ptr %2400, align 8, !tbaa !248
  %2461 = getelementptr inbounds %struct.cond_equivalence, ptr %2460, i64 1, i32 1
  store ptr %2459, ptr %2461, align 8, !tbaa !376
  br label %2462

2462:                                             ; preds = %2035, %2458
  br i1 %1952, label %2463, label %2465, !prof !542

2463:                                             ; preds = %2462
  store ptr %1930, ptr %2040, align 8, !tbaa !361
  %2464 = getelementptr inbounds %struct.edge_info, ptr %2040, i64 0, i32 1
  store ptr %1949, ptr %2464, align 8, !tbaa !363
  br label %2465

2465:                                             ; preds = %2463, %2462
  %2466 = load ptr, ptr %6, align 8, !tbaa !184
  %2467 = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #21
  %2468 = getelementptr inbounds %struct.edge_def, ptr %2466, i64 0, i32 3
  store ptr %2467, ptr %2468, align 8, !tbaa !245
  %2469 = load i64, ptr %2038, align 8
  %2470 = and i64 %2469, 65535
  %2471 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2470
  %2472 = load i32, ptr %2471, align 4, !tbaa !199
  %2473 = icmp eq i32 %2472, 5
  br i1 %2473, label %2474, label %2889, !prof !534

2474:                                             ; preds = %2465
  %2475 = trunc i64 %2469 to i16
  %2476 = getelementptr inbounds %struct.tree_exp, ptr %2038, i64 0, i32 3
  %2477 = load ptr, ptr %2476, align 8, !tbaa !195
  %2478 = getelementptr inbounds %struct.tree_exp, ptr %2038, i64 1
  %2479 = load ptr, ptr %2478, align 8, !tbaa !195
  switch i16 %2475, label %2822 [
    i16 97, label %2480
    i16 99, label %2480
    i16 100, label %2558
    i16 98, label %2558
    i16 101, label %2589
    i16 103, label %2648
    i16 105, label %2729
    i16 107, label %2729
    i16 109, label %2764
    i16 110, label %2793
  ], !prof !535

2480:                                             ; preds = %2474, %2474
  %2481 = getelementptr inbounds %struct.tree_common, ptr %2477, i64 0, i32 2
  %2482 = load ptr, ptr %2481, align 8, !tbaa !195
  %2483 = load i64, ptr %2482, align 8
  %2484 = trunc i64 %2483 to i16
  switch i16 %2484, label %2520 [
    i16 9, label %2491
    i16 13, label %2485
    i16 14, label %2485
  ], !prof !536

2485:                                             ; preds = %2480, %2480
  %2486 = getelementptr inbounds %struct.tree_common, ptr %2482, i64 0, i32 2
  %2487 = load ptr, ptr %2486, align 8, !tbaa !195
  %2488 = load i64, ptr %2487, align 8
  %2489 = and i64 %2488, 65535
  %2490 = icmp eq i64 %2489, 9
  br i1 %2490, label %2491, label %2520

2491:                                             ; preds = %2485, %2480
  %2492 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 3
  store i32 6, ptr %2492, align 8, !tbaa !374
  %2493 = call ptr @xmalloc(i64 noundef 336) #21
  %2494 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 2
  store ptr %2493, ptr %2494, align 8, !tbaa !248
  %2495 = getelementptr inbounds %struct.cond_equivalence, ptr %2493, i64 4
  %2496 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 104), align 4, !tbaa !199
  %2497 = icmp eq i32 %2496, 5
  br i1 %2497, label %2499, label %2498

2498:                                             ; preds = %2491
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2499

2499:                                             ; preds = %2498, %2491
  %2500 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2500, ptr %2495, align 8, !tbaa !323
  %2501 = getelementptr inbounds %struct.cond_equivalence, ptr %2493, i64 4, i32 0, i32 1
  store i32 2, ptr %2501, align 8, !tbaa !326
  %2502 = getelementptr inbounds %struct.cond_equivalence, ptr %2493, i64 4, i32 0, i32 2
  store i32 104, ptr %2502, align 8, !tbaa !195
  %2503 = getelementptr inbounds %struct.cond_equivalence, ptr %2493, i64 4, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2503, align 8, !tbaa !195
  %2504 = getelementptr inbounds %struct.cond_equivalence, ptr %2493, i64 4, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2504, align 8, !tbaa !195
  %2505 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2506 = getelementptr inbounds %struct.cond_equivalence, ptr %2493, i64 4, i32 1
  store ptr %2505, ptr %2506, align 8, !tbaa !376
  %2507 = load ptr, ptr %2494, align 8, !tbaa !248
  %2508 = getelementptr inbounds %struct.cond_equivalence, ptr %2507, i64 5
  %2509 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 110), align 4, !tbaa !199
  %2510 = icmp eq i32 %2509, 5
  br i1 %2510, label %2512, label %2511

2511:                                             ; preds = %2499
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2512

2512:                                             ; preds = %2511, %2499
  %2513 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2513, ptr %2508, align 8, !tbaa !323
  %2514 = getelementptr inbounds %struct.cond_equivalence, ptr %2507, i64 5, i32 0, i32 1
  store i32 2, ptr %2514, align 8, !tbaa !326
  %2515 = getelementptr inbounds %struct.cond_equivalence, ptr %2507, i64 5, i32 0, i32 2
  store i32 110, ptr %2515, align 8, !tbaa !195
  %2516 = getelementptr inbounds %struct.cond_equivalence, ptr %2507, i64 5, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2516, align 8, !tbaa !195
  %2517 = getelementptr inbounds %struct.cond_equivalence, ptr %2507, i64 5, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2517, align 8, !tbaa !195
  %2518 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2519 = getelementptr inbounds %struct.cond_equivalence, ptr %2507, i64 5, i32 1
  store ptr %2518, ptr %2519, align 8, !tbaa !376
  br label %2524

2520:                                             ; preds = %2485, %2480
  %2521 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 3
  store i32 4, ptr %2521, align 8, !tbaa !374
  %2522 = call ptr @xmalloc(i64 noundef 224) #21
  %2523 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 2
  store ptr %2522, ptr %2523, align 8, !tbaa !248
  br label %2524

2524:                                             ; preds = %2520, %2512
  %2525 = load i64, ptr %2038, align 8
  %2526 = and i64 %2525, 65535
  %2527 = icmp eq i64 %2526, 97
  %2528 = select i1 %2527, i32 98, i32 100, !prof !537
  %2529 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 2
  %2530 = load ptr, ptr %2529, align 8, !tbaa !248
  %2531 = getelementptr inbounds %struct.cond_equivalence, ptr %2530, i64 2
  %2532 = zext nneg i32 %2528 to i64
  %2533 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2532
  %2534 = load i32, ptr %2533, align 4, !tbaa !199
  %2535 = icmp eq i32 %2534, 5
  br i1 %2535, label %2537, label %2536, !prof !538

2536:                                             ; preds = %2524
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2537

2537:                                             ; preds = %2536, %2524
  %2538 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2538, ptr %2531, align 8, !tbaa !323
  %2539 = getelementptr inbounds %struct.cond_equivalence, ptr %2530, i64 2, i32 0, i32 1
  store i32 2, ptr %2539, align 8, !tbaa !326
  %2540 = getelementptr inbounds %struct.cond_equivalence, ptr %2530, i64 2, i32 0, i32 2
  store i32 %2528, ptr %2540, align 8, !tbaa !195
  %2541 = getelementptr inbounds %struct.cond_equivalence, ptr %2530, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2541, align 8, !tbaa !195
  %2542 = getelementptr inbounds %struct.cond_equivalence, ptr %2530, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2542, align 8, !tbaa !195
  %2543 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2544 = getelementptr inbounds %struct.cond_equivalence, ptr %2530, i64 2, i32 1
  store ptr %2543, ptr %2544, align 8, !tbaa !376
  %2545 = load ptr, ptr %2529, align 8, !tbaa !248
  %2546 = getelementptr inbounds %struct.cond_equivalence, ptr %2545, i64 3
  %2547 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 102), align 4, !tbaa !199
  %2548 = icmp eq i32 %2547, 5
  br i1 %2548, label %2550, label %2549, !prof !538

2549:                                             ; preds = %2537
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2550

2550:                                             ; preds = %2549, %2537
  %2551 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2551, ptr %2546, align 8, !tbaa !323
  %2552 = getelementptr inbounds %struct.cond_equivalence, ptr %2545, i64 3, i32 0, i32 1
  store i32 2, ptr %2552, align 8, !tbaa !326
  %2553 = getelementptr inbounds %struct.cond_equivalence, ptr %2545, i64 3, i32 0, i32 2
  store i32 102, ptr %2553, align 8, !tbaa !195
  %2554 = getelementptr inbounds %struct.cond_equivalence, ptr %2545, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2554, align 8, !tbaa !195
  %2555 = getelementptr inbounds %struct.cond_equivalence, ptr %2545, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2555, align 8, !tbaa !195
  %2556 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2557 = getelementptr inbounds %struct.cond_equivalence, ptr %2545, i64 3, i32 1
  store ptr %2556, ptr %2557, align 8, !tbaa !376
  br label %2826

2558:                                             ; preds = %2474, %2474
  %2559 = getelementptr inbounds %struct.tree_common, ptr %2477, i64 0, i32 2
  %2560 = load ptr, ptr %2559, align 8, !tbaa !195
  %2561 = load i64, ptr %2560, align 8
  %2562 = trunc i64 %2561 to i16
  switch i16 %2562, label %2585 [
    i16 9, label %2569
    i16 13, label %2563
    i16 14, label %2563
  ], !prof !536

2563:                                             ; preds = %2558, %2558
  %2564 = getelementptr inbounds %struct.tree_common, ptr %2560, i64 0, i32 2
  %2565 = load ptr, ptr %2564, align 8, !tbaa !195
  %2566 = load i64, ptr %2565, align 8
  %2567 = and i64 %2566, 65535
  %2568 = icmp eq i64 %2567, 9
  br i1 %2568, label %2569, label %2585

2569:                                             ; preds = %2563, %2558
  %2570 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 3
  store i32 3, ptr %2570, align 8, !tbaa !374
  %2571 = call ptr @xmalloc(i64 noundef 168) #21
  %2572 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 2
  store ptr %2571, ptr %2572, align 8, !tbaa !248
  %2573 = getelementptr inbounds %struct.cond_equivalence, ptr %2571, i64 2
  %2574 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 104), align 4, !tbaa !199
  %2575 = icmp eq i32 %2574, 5
  br i1 %2575, label %2577, label %2576

2576:                                             ; preds = %2569
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2577

2577:                                             ; preds = %2576, %2569
  %2578 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2578, ptr %2573, align 8, !tbaa !323
  %2579 = getelementptr inbounds %struct.cond_equivalence, ptr %2571, i64 2, i32 0, i32 1
  store i32 2, ptr %2579, align 8, !tbaa !326
  %2580 = getelementptr inbounds %struct.cond_equivalence, ptr %2571, i64 2, i32 0, i32 2
  store i32 104, ptr %2580, align 8, !tbaa !195
  %2581 = getelementptr inbounds %struct.cond_equivalence, ptr %2571, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2581, align 8, !tbaa !195
  %2582 = getelementptr inbounds %struct.cond_equivalence, ptr %2571, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2582, align 8, !tbaa !195
  %2583 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2584 = getelementptr inbounds %struct.cond_equivalence, ptr %2571, i64 2, i32 1
  store ptr %2583, ptr %2584, align 8, !tbaa !376
  br label %2826

2585:                                             ; preds = %2563, %2558
  %2586 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 3
  store i32 2, ptr %2586, align 8, !tbaa !374
  %2587 = call ptr @xmalloc(i64 noundef 112) #21
  %2588 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 2
  store ptr %2587, ptr %2588, align 8, !tbaa !248
  br label %2826

2589:                                             ; preds = %2474
  %2590 = getelementptr inbounds %struct.tree_common, ptr %2477, i64 0, i32 2
  %2591 = load ptr, ptr %2590, align 8, !tbaa !195
  %2592 = load i64, ptr %2591, align 8
  %2593 = trunc i64 %2592 to i16
  switch i16 %2593, label %2616 [
    i16 9, label %2600
    i16 13, label %2594
    i16 14, label %2594
  ], !prof !539

2594:                                             ; preds = %2589, %2589
  %2595 = getelementptr inbounds %struct.tree_common, ptr %2591, i64 0, i32 2
  %2596 = load ptr, ptr %2595, align 8, !tbaa !195
  %2597 = load i64, ptr %2596, align 8
  %2598 = and i64 %2597, 65535
  %2599 = icmp eq i64 %2598, 9
  br i1 %2599, label %2600, label %2616

2600:                                             ; preds = %2594, %2589
  %2601 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 3
  store i32 5, ptr %2601, align 8, !tbaa !374
  %2602 = call ptr @xmalloc(i64 noundef 280) #21
  %2603 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 2
  store ptr %2602, ptr %2603, align 8, !tbaa !248
  %2604 = getelementptr inbounds %struct.cond_equivalence, ptr %2602, i64 4
  %2605 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 104), align 4, !tbaa !199
  %2606 = icmp eq i32 %2605, 5
  br i1 %2606, label %2608, label %2607

2607:                                             ; preds = %2600
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2608

2608:                                             ; preds = %2607, %2600
  %2609 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2609, ptr %2604, align 8, !tbaa !323
  %2610 = getelementptr inbounds %struct.cond_equivalence, ptr %2602, i64 4, i32 0, i32 1
  store i32 2, ptr %2610, align 8, !tbaa !326
  %2611 = getelementptr inbounds %struct.cond_equivalence, ptr %2602, i64 4, i32 0, i32 2
  store i32 104, ptr %2611, align 8, !tbaa !195
  %2612 = getelementptr inbounds %struct.cond_equivalence, ptr %2602, i64 4, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2612, align 8, !tbaa !195
  %2613 = getelementptr inbounds %struct.cond_equivalence, ptr %2602, i64 4, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2613, align 8, !tbaa !195
  %2614 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2615 = getelementptr inbounds %struct.cond_equivalence, ptr %2602, i64 4, i32 1
  store ptr %2614, ptr %2615, align 8, !tbaa !376
  br label %2620

2616:                                             ; preds = %2594, %2589
  %2617 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 3
  store i32 4, ptr %2617, align 8, !tbaa !374
  %2618 = call ptr @xmalloc(i64 noundef 224) #21
  %2619 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 2
  store ptr %2618, ptr %2619, align 8, !tbaa !248
  br label %2620

2620:                                             ; preds = %2616, %2608
  %2621 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 2
  %2622 = load ptr, ptr %2621, align 8, !tbaa !248
  %2623 = getelementptr inbounds %struct.cond_equivalence, ptr %2622, i64 2
  %2624 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 98), align 4, !tbaa !199
  %2625 = icmp eq i32 %2624, 5
  br i1 %2625, label %2627, label %2626, !prof !540

2626:                                             ; preds = %2620
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2627

2627:                                             ; preds = %2626, %2620
  %2628 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2628, ptr %2623, align 8, !tbaa !323
  %2629 = getelementptr inbounds %struct.cond_equivalence, ptr %2622, i64 2, i32 0, i32 1
  store i32 2, ptr %2629, align 8, !tbaa !326
  %2630 = getelementptr inbounds %struct.cond_equivalence, ptr %2622, i64 2, i32 0, i32 2
  store i32 98, ptr %2630, align 8, !tbaa !195
  %2631 = getelementptr inbounds %struct.cond_equivalence, ptr %2622, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2631, align 8, !tbaa !195
  %2632 = getelementptr inbounds %struct.cond_equivalence, ptr %2622, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2632, align 8, !tbaa !195
  %2633 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2634 = getelementptr inbounds %struct.cond_equivalence, ptr %2622, i64 2, i32 1
  store ptr %2633, ptr %2634, align 8, !tbaa !376
  %2635 = load ptr, ptr %2621, align 8, !tbaa !248
  %2636 = getelementptr inbounds %struct.cond_equivalence, ptr %2635, i64 3
  %2637 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 100), align 4, !tbaa !199
  %2638 = icmp eq i32 %2637, 5
  br i1 %2638, label %2640, label %2639, !prof !540

2639:                                             ; preds = %2627
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2640

2640:                                             ; preds = %2639, %2627
  %2641 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2641, ptr %2636, align 8, !tbaa !323
  %2642 = getelementptr inbounds %struct.cond_equivalence, ptr %2635, i64 3, i32 0, i32 1
  store i32 2, ptr %2642, align 8, !tbaa !326
  %2643 = getelementptr inbounds %struct.cond_equivalence, ptr %2635, i64 3, i32 0, i32 2
  store i32 100, ptr %2643, align 8, !tbaa !195
  %2644 = getelementptr inbounds %struct.cond_equivalence, ptr %2635, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2644, align 8, !tbaa !195
  %2645 = getelementptr inbounds %struct.cond_equivalence, ptr %2635, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2645, align 8, !tbaa !195
  %2646 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2647 = getelementptr inbounds %struct.cond_equivalence, ptr %2635, i64 3, i32 1
  store ptr %2646, ptr %2647, align 8, !tbaa !376
  br label %2826

2648:                                             ; preds = %2474
  %2649 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 3
  store i32 8, ptr %2649, align 8, !tbaa !374
  %2650 = call ptr @xmalloc(i64 noundef 448) #21
  %2651 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 2
  store ptr %2650, ptr %2651, align 8, !tbaa !248
  %2652 = getelementptr inbounds %struct.cond_equivalence, ptr %2650, i64 2
  %2653 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 102), align 4, !tbaa !199
  %2654 = icmp eq i32 %2653, 5
  br i1 %2654, label %2656, label %2655

2655:                                             ; preds = %2648
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2656

2656:                                             ; preds = %2655, %2648
  %2657 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2657, ptr %2652, align 8, !tbaa !323
  %2658 = getelementptr inbounds %struct.cond_equivalence, ptr %2650, i64 2, i32 0, i32 1
  store i32 2, ptr %2658, align 8, !tbaa !326
  %2659 = getelementptr inbounds %struct.cond_equivalence, ptr %2650, i64 2, i32 0, i32 2
  store i32 102, ptr %2659, align 8, !tbaa !195
  %2660 = getelementptr inbounds %struct.cond_equivalence, ptr %2650, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2660, align 8, !tbaa !195
  %2661 = getelementptr inbounds %struct.cond_equivalence, ptr %2650, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2661, align 8, !tbaa !195
  %2662 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2663 = getelementptr inbounds %struct.cond_equivalence, ptr %2650, i64 2, i32 1
  store ptr %2662, ptr %2663, align 8, !tbaa !376
  %2664 = load ptr, ptr %2651, align 8, !tbaa !248
  %2665 = getelementptr inbounds %struct.cond_equivalence, ptr %2664, i64 3
  %2666 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 106), align 4, !tbaa !199
  %2667 = icmp eq i32 %2666, 5
  br i1 %2667, label %2669, label %2668

2668:                                             ; preds = %2656
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2669

2669:                                             ; preds = %2668, %2656
  %2670 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2670, ptr %2665, align 8, !tbaa !323
  %2671 = getelementptr inbounds %struct.cond_equivalence, ptr %2664, i64 3, i32 0, i32 1
  store i32 2, ptr %2671, align 8, !tbaa !326
  %2672 = getelementptr inbounds %struct.cond_equivalence, ptr %2664, i64 3, i32 0, i32 2
  store i32 106, ptr %2672, align 8, !tbaa !195
  %2673 = getelementptr inbounds %struct.cond_equivalence, ptr %2664, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2673, align 8, !tbaa !195
  %2674 = getelementptr inbounds %struct.cond_equivalence, ptr %2664, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2674, align 8, !tbaa !195
  %2675 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2676 = getelementptr inbounds %struct.cond_equivalence, ptr %2664, i64 3, i32 1
  store ptr %2675, ptr %2676, align 8, !tbaa !376
  %2677 = load ptr, ptr %2651, align 8, !tbaa !248
  %2678 = getelementptr inbounds %struct.cond_equivalence, ptr %2677, i64 4
  %2679 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 108), align 4, !tbaa !199
  %2680 = icmp eq i32 %2679, 5
  br i1 %2680, label %2682, label %2681

2681:                                             ; preds = %2669
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2682

2682:                                             ; preds = %2681, %2669
  %2683 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2683, ptr %2678, align 8, !tbaa !323
  %2684 = getelementptr inbounds %struct.cond_equivalence, ptr %2677, i64 4, i32 0, i32 1
  store i32 2, ptr %2684, align 8, !tbaa !326
  %2685 = getelementptr inbounds %struct.cond_equivalence, ptr %2677, i64 4, i32 0, i32 2
  store i32 108, ptr %2685, align 8, !tbaa !195
  %2686 = getelementptr inbounds %struct.cond_equivalence, ptr %2677, i64 4, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2686, align 8, !tbaa !195
  %2687 = getelementptr inbounds %struct.cond_equivalence, ptr %2677, i64 4, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2687, align 8, !tbaa !195
  %2688 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2689 = getelementptr inbounds %struct.cond_equivalence, ptr %2677, i64 4, i32 1
  store ptr %2688, ptr %2689, align 8, !tbaa !376
  %2690 = load ptr, ptr %2651, align 8, !tbaa !248
  %2691 = getelementptr inbounds %struct.cond_equivalence, ptr %2690, i64 5
  %2692 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 109), align 4, !tbaa !199
  %2693 = icmp eq i32 %2692, 5
  br i1 %2693, label %2695, label %2694

2694:                                             ; preds = %2682
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2695

2695:                                             ; preds = %2694, %2682
  %2696 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2696, ptr %2691, align 8, !tbaa !323
  %2697 = getelementptr inbounds %struct.cond_equivalence, ptr %2690, i64 5, i32 0, i32 1
  store i32 2, ptr %2697, align 8, !tbaa !326
  %2698 = getelementptr inbounds %struct.cond_equivalence, ptr %2690, i64 5, i32 0, i32 2
  store i32 109, ptr %2698, align 8, !tbaa !195
  %2699 = getelementptr inbounds %struct.cond_equivalence, ptr %2690, i64 5, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2699, align 8, !tbaa !195
  %2700 = getelementptr inbounds %struct.cond_equivalence, ptr %2690, i64 5, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2700, align 8, !tbaa !195
  %2701 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2702 = getelementptr inbounds %struct.cond_equivalence, ptr %2690, i64 5, i32 1
  store ptr %2701, ptr %2702, align 8, !tbaa !376
  %2703 = load ptr, ptr %2651, align 8, !tbaa !248
  %2704 = getelementptr inbounds %struct.cond_equivalence, ptr %2703, i64 6
  %2705 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 105), align 4, !tbaa !199
  %2706 = icmp eq i32 %2705, 5
  br i1 %2706, label %2708, label %2707

2707:                                             ; preds = %2695
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2708

2708:                                             ; preds = %2707, %2695
  %2709 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2709, ptr %2704, align 8, !tbaa !323
  %2710 = getelementptr inbounds %struct.cond_equivalence, ptr %2703, i64 6, i32 0, i32 1
  store i32 2, ptr %2710, align 8, !tbaa !326
  %2711 = getelementptr inbounds %struct.cond_equivalence, ptr %2703, i64 6, i32 0, i32 2
  store i32 105, ptr %2711, align 8, !tbaa !195
  %2712 = getelementptr inbounds %struct.cond_equivalence, ptr %2703, i64 6, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2712, align 8, !tbaa !195
  %2713 = getelementptr inbounds %struct.cond_equivalence, ptr %2703, i64 6, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2713, align 8, !tbaa !195
  %2714 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2715 = getelementptr inbounds %struct.cond_equivalence, ptr %2703, i64 6, i32 1
  store ptr %2714, ptr %2715, align 8, !tbaa !376
  %2716 = load ptr, ptr %2651, align 8, !tbaa !248
  %2717 = getelementptr inbounds %struct.cond_equivalence, ptr %2716, i64 7
  %2718 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 107), align 4, !tbaa !199
  %2719 = icmp eq i32 %2718, 5
  br i1 %2719, label %2721, label %2720

2720:                                             ; preds = %2708
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2721

2721:                                             ; preds = %2720, %2708
  %2722 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2722, ptr %2717, align 8, !tbaa !323
  %2723 = getelementptr inbounds %struct.cond_equivalence, ptr %2716, i64 7, i32 0, i32 1
  store i32 2, ptr %2723, align 8, !tbaa !326
  %2724 = getelementptr inbounds %struct.cond_equivalence, ptr %2716, i64 7, i32 0, i32 2
  store i32 107, ptr %2724, align 8, !tbaa !195
  %2725 = getelementptr inbounds %struct.cond_equivalence, ptr %2716, i64 7, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2725, align 8, !tbaa !195
  %2726 = getelementptr inbounds %struct.cond_equivalence, ptr %2716, i64 7, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2726, align 8, !tbaa !195
  %2727 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2728 = getelementptr inbounds %struct.cond_equivalence, ptr %2716, i64 7, i32 1
  store ptr %2727, ptr %2728, align 8, !tbaa !376
  br label %2826

2729:                                             ; preds = %2474, %2474
  %2730 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 3
  store i32 4, ptr %2730, align 8, !tbaa !374
  %2731 = call ptr @xmalloc(i64 noundef 224) #21
  %2732 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 2
  store ptr %2731, ptr %2732, align 8, !tbaa !248
  %2733 = load i64, ptr %2038, align 8
  %2734 = and i64 %2733, 65535
  %2735 = icmp eq i64 %2734, 105
  %2736 = select i1 %2735, i32 106, i32 108
  %2737 = getelementptr inbounds %struct.cond_equivalence, ptr %2731, i64 2
  %2738 = zext nneg i32 %2736 to i64
  %2739 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2738
  %2740 = load i32, ptr %2739, align 4, !tbaa !199
  %2741 = icmp eq i32 %2740, 5
  br i1 %2741, label %2743, label %2742

2742:                                             ; preds = %2729
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2743

2743:                                             ; preds = %2742, %2729
  %2744 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2744, ptr %2737, align 8, !tbaa !323
  %2745 = getelementptr inbounds %struct.cond_equivalence, ptr %2731, i64 2, i32 0, i32 1
  store i32 2, ptr %2745, align 8, !tbaa !326
  %2746 = getelementptr inbounds %struct.cond_equivalence, ptr %2731, i64 2, i32 0, i32 2
  store i32 %2736, ptr %2746, align 8, !tbaa !195
  %2747 = getelementptr inbounds %struct.cond_equivalence, ptr %2731, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2747, align 8, !tbaa !195
  %2748 = getelementptr inbounds %struct.cond_equivalence, ptr %2731, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2748, align 8, !tbaa !195
  %2749 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2750 = getelementptr inbounds %struct.cond_equivalence, ptr %2731, i64 2, i32 1
  store ptr %2749, ptr %2750, align 8, !tbaa !376
  %2751 = load ptr, ptr %2732, align 8, !tbaa !248
  %2752 = getelementptr inbounds %struct.cond_equivalence, ptr %2751, i64 3
  %2753 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 102), align 4, !tbaa !199
  %2754 = icmp eq i32 %2753, 5
  br i1 %2754, label %2756, label %2755

2755:                                             ; preds = %2743
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2756

2756:                                             ; preds = %2755, %2743
  %2757 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2757, ptr %2752, align 8, !tbaa !323
  %2758 = getelementptr inbounds %struct.cond_equivalence, ptr %2751, i64 3, i32 0, i32 1
  store i32 2, ptr %2758, align 8, !tbaa !326
  %2759 = getelementptr inbounds %struct.cond_equivalence, ptr %2751, i64 3, i32 0, i32 2
  store i32 102, ptr %2759, align 8, !tbaa !195
  %2760 = getelementptr inbounds %struct.cond_equivalence, ptr %2751, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2760, align 8, !tbaa !195
  %2761 = getelementptr inbounds %struct.cond_equivalence, ptr %2751, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2761, align 8, !tbaa !195
  %2762 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2763 = getelementptr inbounds %struct.cond_equivalence, ptr %2751, i64 3, i32 1
  store ptr %2762, ptr %2763, align 8, !tbaa !376
  br label %2826

2764:                                             ; preds = %2474
  %2765 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 3
  store i32 4, ptr %2765, align 8, !tbaa !374
  %2766 = call ptr @xmalloc(i64 noundef 224) #21
  %2767 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 2
  store ptr %2766, ptr %2767, align 8, !tbaa !248
  %2768 = getelementptr inbounds %struct.cond_equivalence, ptr %2766, i64 2
  %2769 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 106), align 4, !tbaa !199
  %2770 = icmp eq i32 %2769, 5
  br i1 %2770, label %2772, label %2771

2771:                                             ; preds = %2764
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2772

2772:                                             ; preds = %2771, %2764
  %2773 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2773, ptr %2768, align 8, !tbaa !323
  %2774 = getelementptr inbounds %struct.cond_equivalence, ptr %2766, i64 2, i32 0, i32 1
  store i32 2, ptr %2774, align 8, !tbaa !326
  %2775 = getelementptr inbounds %struct.cond_equivalence, ptr %2766, i64 2, i32 0, i32 2
  store i32 106, ptr %2775, align 8, !tbaa !195
  %2776 = getelementptr inbounds %struct.cond_equivalence, ptr %2766, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2776, align 8, !tbaa !195
  %2777 = getelementptr inbounds %struct.cond_equivalence, ptr %2766, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2777, align 8, !tbaa !195
  %2778 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2779 = getelementptr inbounds %struct.cond_equivalence, ptr %2766, i64 2, i32 1
  store ptr %2778, ptr %2779, align 8, !tbaa !376
  %2780 = load ptr, ptr %2767, align 8, !tbaa !248
  %2781 = getelementptr inbounds %struct.cond_equivalence, ptr %2780, i64 3
  %2782 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 108), align 4, !tbaa !199
  %2783 = icmp eq i32 %2782, 5
  br i1 %2783, label %2785, label %2784

2784:                                             ; preds = %2772
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2785

2785:                                             ; preds = %2784, %2772
  %2786 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2786, ptr %2781, align 8, !tbaa !323
  %2787 = getelementptr inbounds %struct.cond_equivalence, ptr %2780, i64 3, i32 0, i32 1
  store i32 2, ptr %2787, align 8, !tbaa !326
  %2788 = getelementptr inbounds %struct.cond_equivalence, ptr %2780, i64 3, i32 0, i32 2
  store i32 108, ptr %2788, align 8, !tbaa !195
  %2789 = getelementptr inbounds %struct.cond_equivalence, ptr %2780, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2789, align 8, !tbaa !195
  %2790 = getelementptr inbounds %struct.cond_equivalence, ptr %2780, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2790, align 8, !tbaa !195
  %2791 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2792 = getelementptr inbounds %struct.cond_equivalence, ptr %2780, i64 3, i32 1
  store ptr %2791, ptr %2792, align 8, !tbaa !376
  br label %2826

2793:                                             ; preds = %2474
  %2794 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 3
  store i32 4, ptr %2794, align 8, !tbaa !374
  %2795 = call ptr @xmalloc(i64 noundef 224) #21
  %2796 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 2
  store ptr %2795, ptr %2796, align 8, !tbaa !248
  %2797 = getelementptr inbounds %struct.cond_equivalence, ptr %2795, i64 2
  %2798 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 102), align 4, !tbaa !199
  %2799 = icmp eq i32 %2798, 5
  br i1 %2799, label %2801, label %2800

2800:                                             ; preds = %2793
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2801

2801:                                             ; preds = %2800, %2793
  %2802 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2802, ptr %2797, align 8, !tbaa !323
  %2803 = getelementptr inbounds %struct.cond_equivalence, ptr %2795, i64 2, i32 0, i32 1
  store i32 2, ptr %2803, align 8, !tbaa !326
  %2804 = getelementptr inbounds %struct.cond_equivalence, ptr %2795, i64 2, i32 0, i32 2
  store i32 102, ptr %2804, align 8, !tbaa !195
  %2805 = getelementptr inbounds %struct.cond_equivalence, ptr %2795, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2805, align 8, !tbaa !195
  %2806 = getelementptr inbounds %struct.cond_equivalence, ptr %2795, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2806, align 8, !tbaa !195
  %2807 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2808 = getelementptr inbounds %struct.cond_equivalence, ptr %2795, i64 2, i32 1
  store ptr %2807, ptr %2808, align 8, !tbaa !376
  %2809 = load ptr, ptr %2796, align 8, !tbaa !248
  %2810 = getelementptr inbounds %struct.cond_equivalence, ptr %2809, i64 3
  %2811 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 104), align 4, !tbaa !199
  %2812 = icmp eq i32 %2811, 5
  br i1 %2812, label %2814, label %2813

2813:                                             ; preds = %2801
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %2814

2814:                                             ; preds = %2813, %2801
  %2815 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2815, ptr %2810, align 8, !tbaa !323
  %2816 = getelementptr inbounds %struct.cond_equivalence, ptr %2809, i64 3, i32 0, i32 1
  store i32 2, ptr %2816, align 8, !tbaa !326
  %2817 = getelementptr inbounds %struct.cond_equivalence, ptr %2809, i64 3, i32 0, i32 2
  store i32 104, ptr %2817, align 8, !tbaa !195
  %2818 = getelementptr inbounds %struct.cond_equivalence, ptr %2809, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %2477, ptr %2818, align 8, !tbaa !195
  %2819 = getelementptr inbounds %struct.cond_equivalence, ptr %2809, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %2479, ptr %2819, align 8, !tbaa !195
  %2820 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2821 = getelementptr inbounds %struct.cond_equivalence, ptr %2809, i64 3, i32 1
  store ptr %2820, ptr %2821, align 8, !tbaa !376
  br label %2826

2822:                                             ; preds = %2474
  %2823 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 3
  store i32 2, ptr %2823, align 8, !tbaa !374
  %2824 = call ptr @xmalloc(i64 noundef 112) #21
  %2825 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 2
  store ptr %2824, ptr %2825, align 8, !tbaa !248
  br label %2826

2826:                                             ; preds = %2822, %2814, %2785, %2756, %2721, %2640, %2585, %2577, %2550
  %2827 = getelementptr inbounds %struct.edge_info, ptr %2467, i64 0, i32 2
  %2828 = load ptr, ptr %2827, align 8, !tbaa !248
  %2829 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2829, ptr %2828, align 8, !tbaa !323
  %2830 = load i64, ptr %2038, align 8
  %2831 = and i64 %2830, 65535
  %2832 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2831
  %2833 = load i32, ptr %2832, align 4, !tbaa !199
  %2834 = icmp eq i32 %2833, 5
  br i1 %2834, label %2835, label %2845, !prof !541

2835:                                             ; preds = %2826
  %2836 = getelementptr inbounds %struct.hashable_expr, ptr %2828, i64 0, i32 1
  store i32 2, ptr %2836, align 8, !tbaa !326
  %2837 = load i64, ptr %2038, align 8
  %2838 = trunc i64 %2837 to i32
  %2839 = and i32 %2838, 65535
  %2840 = getelementptr inbounds %struct.hashable_expr, ptr %2828, i64 0, i32 2
  store i32 %2839, ptr %2840, align 8, !tbaa !195
  %2841 = load ptr, ptr %2476, align 8, !tbaa !195
  %2842 = getelementptr inbounds %struct.hashable_expr, ptr %2828, i64 0, i32 2, i32 0, i32 1
  store ptr %2841, ptr %2842, align 8, !tbaa !195
  %2843 = load ptr, ptr %2478, align 8, !tbaa !195
  %2844 = getelementptr inbounds %struct.hashable_expr, ptr %2828, i64 0, i32 2, i32 0, i32 2
  store ptr %2843, ptr %2844, align 8, !tbaa !195
  br label %2853

2845:                                             ; preds = %2826
  %2846 = icmp eq i64 %2831, 96
  br i1 %2846, label %2847, label %2852

2847:                                             ; preds = %2845
  %2848 = getelementptr inbounds %struct.hashable_expr, ptr %2828, i64 0, i32 1
  store i32 1, ptr %2848, align 8, !tbaa !326
  %2849 = getelementptr inbounds %struct.hashable_expr, ptr %2828, i64 0, i32 2
  store i32 96, ptr %2849, align 8, !tbaa !195
  %2850 = load ptr, ptr %2476, align 8, !tbaa !195
  %2851 = getelementptr inbounds %struct.hashable_expr, ptr %2828, i64 0, i32 2, i32 0, i32 1
  store ptr %2850, ptr %2851, align 8, !tbaa !195
  br label %2853

2852:                                             ; preds = %2845
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 311, ptr noundef nonnull @.str.10) #21
  br label %2853

2853:                                             ; preds = %2852, %2847, %2835
  %2854 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %2855 = load ptr, ptr %2827, align 8, !tbaa !248
  %2856 = getelementptr inbounds %struct.cond_equivalence, ptr %2855, i64 0, i32 1
  store ptr %2854, ptr %2856, align 8, !tbaa !376
  %2857 = getelementptr inbounds %struct.cond_equivalence, ptr %2855, i64 1
  %2858 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %2858, ptr %2857, align 8, !tbaa !323
  %2859 = load i64, ptr %2037, align 8
  %2860 = and i64 %2859, 65535
  %2861 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2860
  %2862 = load i32, ptr %2861, align 4, !tbaa !199
  %2863 = icmp eq i32 %2862, 5
  br i1 %2863, label %2864, label %2876, !prof !541

2864:                                             ; preds = %2853
  %2865 = getelementptr inbounds %struct.cond_equivalence, ptr %2855, i64 1, i32 0, i32 1
  store i32 2, ptr %2865, align 8, !tbaa !326
  %2866 = load i64, ptr %2037, align 8
  %2867 = trunc i64 %2866 to i32
  %2868 = and i32 %2867, 65535
  %2869 = getelementptr inbounds %struct.cond_equivalence, ptr %2855, i64 1, i32 0, i32 2
  store i32 %2868, ptr %2869, align 8, !tbaa !195
  %2870 = getelementptr inbounds %struct.tree_exp, ptr %2037, i64 0, i32 3
  %2871 = load ptr, ptr %2870, align 8, !tbaa !195
  %2872 = getelementptr inbounds %struct.cond_equivalence, ptr %2855, i64 1, i32 0, i32 2, i32 0, i32 1
  store ptr %2871, ptr %2872, align 8, !tbaa !195
  %2873 = getelementptr inbounds %struct.tree_exp, ptr %2037, i64 1
  %2874 = load ptr, ptr %2873, align 8, !tbaa !195
  %2875 = getelementptr inbounds %struct.cond_equivalence, ptr %2855, i64 1, i32 0, i32 2, i32 0, i32 2
  store ptr %2874, ptr %2875, align 8, !tbaa !195
  br label %2885

2876:                                             ; preds = %2853
  %2877 = icmp eq i64 %2860, 96
  br i1 %2877, label %2878, label %2884

2878:                                             ; preds = %2876
  %2879 = getelementptr inbounds %struct.cond_equivalence, ptr %2855, i64 1, i32 0, i32 1
  store i32 1, ptr %2879, align 8, !tbaa !326
  %2880 = getelementptr inbounds %struct.cond_equivalence, ptr %2855, i64 1, i32 0, i32 2
  store i32 96, ptr %2880, align 8, !tbaa !195
  %2881 = getelementptr inbounds %struct.tree_exp, ptr %2037, i64 0, i32 3
  %2882 = load ptr, ptr %2881, align 8, !tbaa !195
  %2883 = getelementptr inbounds %struct.cond_equivalence, ptr %2855, i64 1, i32 0, i32 2, i32 0, i32 1
  store ptr %2882, ptr %2883, align 8, !tbaa !195
  br label %2885

2884:                                             ; preds = %2876
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 311, ptr noundef nonnull @.str.10) #21
  br label %2885

2885:                                             ; preds = %2884, %2878, %2864
  %2886 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !184
  %2887 = load ptr, ptr %2827, align 8, !tbaa !248
  %2888 = getelementptr inbounds %struct.cond_equivalence, ptr %2887, i64 1, i32 1
  store ptr %2886, ptr %2888, align 8, !tbaa !376
  br label %2889

2889:                                             ; preds = %2465, %2885
  %2890 = load i64, ptr %2037, align 8
  %2891 = and i64 %2890, 65535
  %2892 = icmp eq i64 %2891, 102
  br i1 %2892, label %2893, label %2898, !prof !543

2893:                                             ; preds = %2889
  store ptr %1930, ptr %2467, align 8, !tbaa !361
  br label %2894

2894:                                             ; preds = %1976, %1988, %2023, %2893
  %2895 = phi ptr [ %2467, %2893 ], [ %2021, %2023 ], [ %1993, %1988 ], [ %1981, %1976 ]
  %2896 = phi ptr [ %1949, %2893 ], [ %1930, %2023 ], [ %1999, %1988 ], [ %1987, %1976 ]
  %2897 = getelementptr inbounds %struct.edge_info, ptr %2895, i64 0, i32 1
  store ptr %2896, ptr %2897, align 8, !tbaa !363
  br label %2898

2898:                                             ; preds = %2894, %2031, %2889, %2024, %2019
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %2899

2899:                                             ; preds = %1762, %1908, %2898
  %2900 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  br label %2901

2901:                                             ; preds = %2988, %2899
  %2902 = phi i32 [ 0, %2899 ], [ %2989, %2988 ]
  %2903 = load ptr, ptr %2900, align 8, !tbaa !184
  %2904 = icmp eq ptr %2903, null
  br i1 %2904, label %2907, label %2905, !prof !544

2905:                                             ; preds = %2901
  %2906 = load i32, ptr %2903, align 8, !tbaa !242
  br label %2907

2907:                                             ; preds = %2905, %2901
  %2908 = phi i32 [ %2906, %2905 ], [ 0, %2901 ]
  %2909 = icmp eq i32 %2908, %2902
  br i1 %2909, label %2914, label %2910, !prof !545

2910:                                             ; preds = %2907
  %2911 = zext i32 %2902 to i64
  %2912 = getelementptr inbounds %struct.VEC_edge_base, ptr %2903, i64 0, i32 2, i64 %2911
  %2913 = load ptr, ptr %2912, align 8, !tbaa !184
  br label %2914

2914:                                             ; preds = %2910, %2907
  %2915 = phi ptr [ %2913, %2910 ], [ null, %2907 ]
  br i1 %2909, label %2990, label %2916, !prof !545

2916:                                             ; preds = %2914
  %2917 = getelementptr inbounds %struct.edge_def, ptr %2915, i64 0, i32 7
  %2918 = load i32, ptr %2917, align 8, !tbaa !267
  %2919 = and i32 %2918, 2
  %2920 = icmp eq i32 %2919, 0
  br i1 %2920, label %2921, label %2979, !prof !546

2921:                                             ; preds = %2916
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %2922 = getelementptr inbounds %struct.edge_def, ptr %2915, i64 0, i32 1
  %2923 = load ptr, ptr %2922, align 8, !tbaa !268
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %2923) #21
  %2924 = load ptr, ptr %4, align 8, !tbaa.struct !392
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %2925 = icmp eq ptr %2924, null
  br i1 %2925, label %2979, label %2926, !prof !547

2926:                                             ; preds = %2921
  %2927 = getelementptr inbounds %struct.edge_def, ptr %2915, i64 0, i32 6
  %2928 = load i32, ptr %2927, align 4, !tbaa !548
  %2929 = zext i32 %2928 to i64
  br label %2930

2930:                                             ; preds = %2926, %2975
  %2931 = phi ptr [ %2924, %2926 ], [ %2977, %2975 ]
  %2932 = load ptr, ptr %2931, align 8, !tbaa !234
  %2933 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2932, i64 0, i32 1
  %2934 = load i32, ptr %2933, align 8, !tbaa !195
  %2935 = icmp ult i32 %2934, %2928
  br i1 %2935, label %2936, label %2937, !prof !549

2936:                                             ; preds = %2930
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 3103, ptr noundef nonnull @.str.10) #21
  br label %2937

2937:                                             ; preds = %2936, %2930
  %2938 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2932, i64 0, i32 4, i64 %2929
  %2939 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2938, i64 0, i32 3
  %2940 = load ptr, ptr %2939, align 8, !tbaa !284
  %2941 = load ptr, ptr %2940, align 8, !tbaa !184
  %2942 = load i64, ptr %2941, align 8
  %2943 = and i64 %2942, 65535
  %2944 = icmp eq i64 %2943, 141
  br i1 %2944, label %2945, label %2975, !prof !550

2945:                                             ; preds = %2937
  %2946 = getelementptr inbounds %struct.tree_ssa_name, ptr %2941, i64 0, i32 3
  %2947 = load i32, ptr %2946, align 8, !tbaa !195
  %2948 = load ptr, ptr @ssa_name_values, align 8
  %2949 = icmp eq ptr %2948, null
  br i1 %2949, label %2952, label %2950, !prof !551

2950:                                             ; preds = %2945
  %2951 = load i32, ptr %2948, align 8, !tbaa !349
  br label %2952

2952:                                             ; preds = %2950, %2945
  %2953 = phi i32 [ %2951, %2950 ], [ 0, %2945 ]
  %2954 = icmp ult i32 %2947, %2953
  br i1 %2954, label %2955, label %2959, !prof !552

2955:                                             ; preds = %2952
  %2956 = zext i32 %2947 to i64
  %2957 = getelementptr inbounds %struct.VEC_tree_base, ptr %2948, i64 0, i32 2, i64 %2956
  %2958 = load ptr, ptr %2957, align 8, !tbaa !184
  br label %2959

2959:                                             ; preds = %2955, %2952
  %2960 = phi ptr [ %2958, %2955 ], [ null, %2952 ]
  %2961 = icmp eq ptr %2960, null
  %2962 = icmp eq ptr %2960, %2941
  %2963 = or i1 %2961, %2962
  br i1 %2963, label %2975, label %2964, !prof !553

2964:                                             ; preds = %2959
  %2965 = load i64, ptr %2960, align 8
  %2966 = and i64 %2965, 65535
  %2967 = icmp eq i64 %2966, 141
  br i1 %2967, label %2971, label %2968, !prof !554

2968:                                             ; preds = %2964
  %2969 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %2960) #21
  %2970 = icmp eq i8 %2969, 0
  br i1 %2970, label %2975, label %2971, !prof !555

2971:                                             ; preds = %2968, %2964
  %2972 = call zeroext i8 @may_propagate_copy(ptr noundef nonnull %2941, ptr noundef nonnull %2960) #21
  %2973 = icmp eq i8 %2972, 0
  br i1 %2973, label %2975, label %2974, !prof !556

2974:                                             ; preds = %2971
  call void @propagate_value(ptr noundef nonnull %2938, ptr noundef nonnull %2960) #21
  br label %2975

2975:                                             ; preds = %2968, %2974, %2971, %2959, %2937
  %2976 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2931, i64 0, i32 2
  %2977 = load ptr, ptr %2976, align 8, !tbaa !237
  %2978 = icmp eq ptr %2977, null
  br i1 %2978, label %2979, label %2930, !prof !557, !llvm.loop !558

2979:                                             ; preds = %2975, %2921, %2916
  %2980 = load ptr, ptr %2900, align 8, !tbaa !184
  %2981 = icmp eq ptr %2980, null
  br i1 %2981, label %2984, label %2982, !prof !559

2982:                                             ; preds = %2979
  %2983 = load i32, ptr %2980, align 8, !tbaa !242
  br label %2984

2984:                                             ; preds = %2982, %2979
  %2985 = phi i32 [ %2983, %2982 ], [ 0, %2979 ]
  %2986 = icmp ult i32 %2902, %2985
  br i1 %2986, label %2988, label %2987, !prof !546

2987:                                             ; preds = %2984
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.10) #21
  br label %2988

2988:                                             ; preds = %2987, %2984
  %2989 = add i32 %2902, 1
  br label %2901, !llvm.loop !560

2990:                                             ; preds = %2914
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @dom_opt_leave_block(ptr nocapture noundef %0, ptr noundef %1) #13 !prof !339 !PGOFuncName !561 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !266
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !342

9:                                                ; preds = %2
  %10 = load i32, ptr %7, align 8, !tbaa !242
  %11 = icmp eq i32 %10, 1
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %2, %9
  %14 = phi i8 [ %12, %9 ], [ 0, %2 ]
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %62, label %16, !prof !562

16:                                               ; preds = %13
  br i1 %8, label %20, label %17, !prof !563

17:                                               ; preds = %16
  %18 = load i32, ptr %7, align 8, !tbaa !242
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %21, label %20, !prof !564

20:                                               ; preds = %16, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.10) #21
  br label %21

21:                                               ; preds = %17, %20
  %22 = load ptr, ptr %6, align 8, !tbaa !266
  %23 = getelementptr inbounds %struct.VEC_edge_base, ptr %22, i64 0, i32 2, i64 0
  %24 = load ptr, ptr %23, align 8, !tbaa !184
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !267
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %62, !prof !564

29:                                               ; preds = %21
  %30 = icmp eq ptr %22, null
  br i1 %30, label %34, label %31, !prof !563

31:                                               ; preds = %29
  %32 = load i32, ptr %22, align 8, !tbaa !242
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %35, label %34, !prof !564

34:                                               ; preds = %31, %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.10) #21
  br label %35

35:                                               ; preds = %31, %34
  %36 = load ptr, ptr %6, align 8, !tbaa !266
  %37 = getelementptr inbounds %struct.VEC_edge_base, ptr %36, i64 0, i32 2, i64 0
  %38 = load ptr, ptr %37, align 8, !tbaa !184
  %39 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !268
  %41 = tail call zeroext i8 @potentially_threadable_block(ptr noundef %40) #21
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %62, label %43, !prof !565

43:                                               ; preds = %35
  %44 = load ptr, ptr %6, align 8, !tbaa !266
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46, !prof !566

46:                                               ; preds = %43
  %47 = load i32, ptr %44, align 8, !tbaa !242
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %50, label %49, !prof !567

49:                                               ; preds = %43, %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 645, ptr noundef nonnull @.str.10) #21
  br label %50

50:                                               ; preds = %46, %49
  %51 = load ptr, ptr %6, align 8, !tbaa !266
  %52 = getelementptr inbounds %struct.VEC_edge_base, ptr %51, i64 0, i32 2, i64 0
  %53 = load ptr, ptr %52, align 8, !tbaa !184
  %54 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !211
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60, !prof !568

57:                                               ; preds = %50
  %58 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !184
  %59 = tail call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %58, ptr noundef %58, ptr noundef null, ptr noundef null) #21
  store ptr %59, ptr %54, align 8, !tbaa !211
  br label %60

60:                                               ; preds = %50, %57
  %61 = load ptr, ptr %54, align 8, !tbaa !211
  tail call void @thread_across_edge(ptr noundef %61, ptr noundef %53, i8 noundef zeroext 0, ptr noundef nonnull @const_and_copies_stack, ptr noundef nonnull @simplify_stmt_for_jump_threading) #21
  br label %332

62:                                               ; preds = %35, %21, %13
  %63 = tail call ptr @last_stmt(ptr noundef %1) #21
  %64 = icmp eq ptr %63, null
  br i1 %64, label %332, label %65, !prof !569

65:                                               ; preds = %62
  %66 = load i32, ptr %63, align 8
  %67 = and i32 %66, 255
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %332, !prof !570

69:                                               ; preds = %65
  %70 = load ptr, ptr %6, align 8, !tbaa !266
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72, !prof !411

72:                                               ; preds = %69
  %73 = load i32, ptr %70, align 8, !tbaa !242
  br label %74

74:                                               ; preds = %69, %72
  %75 = phi i32 [ %73, %72 ], [ 0, %69 ]
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %332, !prof !412

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.VEC_edge_base, ptr %70, i64 0, i32 2, i64 0
  %79 = load ptr, ptr %78, align 8, !tbaa !184
  %80 = getelementptr inbounds %struct.edge_def, ptr %79, i64 0, i32 7
  %81 = load i32, ptr %80, align 8, !tbaa !267
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %332, !prof !412

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.VEC_edge_base, ptr %70, i64 0, i32 2, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !184
  %87 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 7
  %88 = load i32, ptr %87, align 8, !tbaa !267
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %332, !prof !412

91:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @extract_true_false_edges_from_block(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %92 = load ptr, ptr %4, align 8, !tbaa !184
  %93 = getelementptr inbounds %struct.edge_def, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !268
  %95 = call zeroext i8 @potentially_threadable_block(ptr noundef %94) #21
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %167, label %97, !prof !571

97:                                               ; preds = %91
  %98 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !184
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %100, !prof !572

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %98, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !343
  %103 = load i32, ptr %98, align 8, !tbaa !345
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107, !prof !573

105:                                              ; preds = %97, %100
  %106 = call ptr @vec_heap_p_reserve(ptr noundef %98, i32 noundef 1) #21
  store ptr %106, ptr @avail_exprs_stack, align 8, !tbaa !184
  br label %107

107:                                              ; preds = %100, %105
  %108 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !184
  %109 = load i32, ptr %108, align 8, !tbaa !345
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 8, !tbaa !345
  %111 = zext i32 %109 to i64
  %112 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %108, i64 0, i32 2, i64 %111
  store ptr null, ptr %112, align 8, !tbaa !184
  %113 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !184
  %114 = icmp eq ptr %113, null
  br i1 %114, label %120, label %115, !prof !572

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.VEC_tree_base, ptr %113, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !347
  %118 = load i32, ptr %113, align 8, !tbaa !349
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %122, !prof !574

120:                                              ; preds = %107, %115
  %121 = call ptr @vec_heap_p_reserve(ptr noundef %113, i32 noundef 1) #21
  store ptr %121, ptr @const_and_copies_stack, align 8, !tbaa !184
  br label %122

122:                                              ; preds = %115, %120
  %123 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !184
  %124 = load i32, ptr %123, align 8, !tbaa !349
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 8, !tbaa !349
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds %struct.VEC_tree_base, ptr %123, i64 0, i32 2, i64 %126
  store ptr null, ptr %127, align 8, !tbaa !184
  %128 = load ptr, ptr %4, align 8, !tbaa !184
  %129 = getelementptr inbounds %struct.edge_def, ptr %128, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !245
  %131 = icmp eq ptr %130, null
  br i1 %131, label %157, label %132, !prof !572

132:                                              ; preds = %122
  %133 = getelementptr inbounds %struct.edge_info, ptr %130, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !248
  %135 = load ptr, ptr %130, align 8, !tbaa !361
  %136 = getelementptr inbounds %struct.edge_info, ptr %130, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !363
  %138 = icmp eq ptr %135, null
  br i1 %138, label %144, label %139, !prof !575

139:                                              ; preds = %132
  %140 = load i64, ptr %135, align 8
  %141 = and i64 %140, 65535
  %142 = icmp eq i64 %141, 141
  br i1 %142, label %143, label %144, !prof !576

143:                                              ; preds = %139
  call fastcc void @record_const_or_copy(ptr noundef nonnull %135, ptr noundef %137)
  br label %144

144:                                              ; preds = %143, %139, %132
  %145 = icmp eq ptr %134, null
  br i1 %145, label %157, label %146, !prof !577

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.edge_info, ptr %130, i64 0, i32 3
  %148 = load i32, ptr %147, align 8, !tbaa !374
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %157, label %150, !prof !578

150:                                              ; preds = %146, %150
  %151 = phi i64 [ %153, %150 ], [ 0, %146 ]
  %152 = getelementptr inbounds %struct.cond_equivalence, ptr %134, i64 %151
  call fastcc void @record_cond(ptr noundef nonnull %152)
  %153 = add nuw nsw i64 %151, 1
  %154 = load i32, ptr %147, align 8, !tbaa !374
  %155 = zext i32 %154 to i64
  %156 = icmp ult i64 %153, %155
  br i1 %156, label %150, label %157, !prof !579, !llvm.loop !580

157:                                              ; preds = %150, %146, %144, %122
  %158 = load ptr, ptr %4, align 8, !tbaa !184
  %159 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !211
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %165, !prof !568

162:                                              ; preds = %157
  %163 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !184
  %164 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %163, ptr noundef %163, ptr noundef null, ptr noundef null) #21
  store ptr %164, ptr %159, align 8, !tbaa !211
  br label %165

165:                                              ; preds = %157, %162
  %166 = load ptr, ptr %159, align 8, !tbaa !211
  call void @thread_across_edge(ptr noundef %166, ptr noundef %158, i8 noundef zeroext 0, ptr noundef nonnull @const_and_copies_stack, ptr noundef nonnull @simplify_stmt_for_jump_threading) #21
  call fastcc void @remove_local_expressions_from_table()
  br label %167

167:                                              ; preds = %165, %91
  %168 = load ptr, ptr %5, align 8, !tbaa !184
  %169 = getelementptr inbounds %struct.edge_def, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !268
  %171 = call zeroext i8 @potentially_threadable_block(ptr noundef %170) #21
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %331, label %173, !prof !581

173:                                              ; preds = %167
  %174 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !184
  %175 = icmp eq ptr %174, null
  br i1 %175, label %181, label %176, !prof !582

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.VEC_tree_base, ptr %174, i64 0, i32 1
  %178 = load i32, ptr %177, align 4, !tbaa !347
  %179 = load i32, ptr %174, align 8, !tbaa !349
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %183, !prof !583

181:                                              ; preds = %173, %176
  %182 = call ptr @vec_heap_p_reserve(ptr noundef %174, i32 noundef 1) #21
  store ptr %182, ptr @const_and_copies_stack, align 8, !tbaa !184
  br label %183

183:                                              ; preds = %176, %181
  %184 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !184
  %185 = load i32, ptr %184, align 8, !tbaa !349
  %186 = add i32 %185, 1
  store i32 %186, ptr %184, align 8, !tbaa !349
  %187 = zext i32 %185 to i64
  %188 = getelementptr inbounds %struct.VEC_tree_base, ptr %184, i64 0, i32 2, i64 %187
  store ptr null, ptr %188, align 8, !tbaa !184
  %189 = load ptr, ptr %5, align 8, !tbaa !184
  %190 = getelementptr inbounds %struct.edge_def, ptr %189, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !245
  %192 = icmp eq ptr %191, null
  br i1 %192, label %321, label %193, !prof !582

193:                                              ; preds = %183
  %194 = getelementptr inbounds %struct.edge_info, ptr %191, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !248
  %196 = load ptr, ptr %191, align 8, !tbaa !361
  %197 = getelementptr inbounds %struct.edge_info, ptr %191, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !363
  %199 = icmp eq ptr %196, null
  br i1 %199, label %205, label %200, !prof !584

200:                                              ; preds = %193
  %201 = load i64, ptr %196, align 8
  %202 = and i64 %201, 65535
  %203 = icmp eq i64 %202, 141
  br i1 %203, label %204, label %205, !prof !585

204:                                              ; preds = %200
  call fastcc void @record_const_or_copy(ptr noundef nonnull %196, ptr noundef %198)
  br label %205

205:                                              ; preds = %204, %200, %193
  %206 = icmp eq ptr %195, null
  br i1 %206, label %321, label %207, !prof !586

207:                                              ; preds = %205
  %208 = getelementptr inbounds %struct.edge_info, ptr %191, i64 0, i32 3
  %209 = load i32, ptr %208, align 8, !tbaa !374
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %321, label %211, !prof !587

211:                                              ; preds = %207, %316
  %212 = phi i64 [ %317, %316 ], [ 0, %207 ]
  %213 = getelementptr inbounds %struct.cond_equivalence, ptr %195, i64 %212
  %214 = call ptr @xcalloc(i64 noundef 1, i64 noundef 80) #21
  %215 = getelementptr inbounds %struct.cond_equivalence, ptr %195, i64 %212, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !376
  %217 = getelementptr inbounds %struct.expr_hash_elt, ptr %214, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %217, ptr noundef nonnull align 8 dereferenceable(48) %213, i64 48, i1 false), !tbaa.struct !378
  store ptr %216, ptr %214, align 8, !tbaa !379
  %218 = getelementptr inbounds %struct.expr_hash_elt, ptr %214, i64 0, i32 2
  store ptr null, ptr %218, align 8, !tbaa !319
  %219 = getelementptr inbounds %struct.expr_hash_elt, ptr %214, i64 0, i32 1, i32 1
  %220 = load i32, ptr %219, align 8, !tbaa !326
  switch i32 %220, label %280 [
    i32 0, label %221
    i32 1, label %225
    i32 2, label %241
    i32 3, label %258
  ], !prof !380

221:                                              ; preds = %211
  %222 = getelementptr inbounds %struct.expr_hash_elt, ptr %214, i64 0, i32 1, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !195
  %224 = call i32 @iterative_hash_expr(ptr noundef %223, i32 noundef 0) #21
  br label %281

225:                                              ; preds = %211
  %226 = getelementptr inbounds %struct.expr_hash_elt, ptr %214, i64 0, i32 1, i32 2
  %227 = call i32 @iterative_hash(ptr noundef nonnull %226, i64 noundef 4, i32 noundef 0) #21
  %228 = load i32, ptr %226, align 8, !tbaa !195
  switch i32 %228, label %236 [
    i32 116, label %229
    i32 113, label %229
    i32 117, label %229
  ], !prof !381

229:                                              ; preds = %225, %225, %225
  %230 = load ptr, ptr %217, align 8, !tbaa !323
  %231 = load i64, ptr %230, align 8
  %232 = trunc i64 %231 to i32
  %233 = lshr i32 %232, 21
  %234 = and i32 %233, 1
  %235 = add i32 %234, %227
  br label %236

236:                                              ; preds = %229, %225
  %237 = phi i32 [ %235, %229 ], [ %227, %225 ]
  %238 = getelementptr inbounds %struct.expr_hash_elt, ptr %214, i64 0, i32 1, i32 2, i32 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !195
  %240 = call i32 @iterative_hash_expr(ptr noundef %239, i32 noundef %237) #21
  br label %281

241:                                              ; preds = %211
  %242 = getelementptr inbounds %struct.expr_hash_elt, ptr %214, i64 0, i32 1, i32 2
  %243 = call i32 @iterative_hash(ptr noundef nonnull %242, i64 noundef 4, i32 noundef 0) #21
  %244 = load i32, ptr %242, align 8, !tbaa !195
  %245 = call zeroext i8 @commutative_tree_code(i32 noundef %244) #21
  %246 = icmp eq i8 %245, 0
  %247 = getelementptr inbounds %struct.expr_hash_elt, ptr %214, i64 0, i32 1, i32 2, i32 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !195
  br i1 %246, label %253, label %249, !prof !382

249:                                              ; preds = %241
  %250 = getelementptr inbounds %struct.expr_hash_elt, ptr %214, i64 0, i32 1, i32 2, i32 0, i32 2
  %251 = load ptr, ptr %250, align 8, !tbaa !195
  %252 = call i32 @iterative_hash_exprs_commutative(ptr noundef %248, ptr noundef %251, i32 noundef %243) #21
  br label %281

253:                                              ; preds = %241
  %254 = call i32 @iterative_hash_expr(ptr noundef %248, i32 noundef %243) #21
  %255 = getelementptr inbounds %struct.expr_hash_elt, ptr %214, i64 0, i32 1, i32 2, i32 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !195
  %257 = call i32 @iterative_hash_expr(ptr noundef %256, i32 noundef %254) #21
  br label %281

258:                                              ; preds = %211
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 59, ptr %3, align 4, !tbaa !199
  %259 = call i32 @iterative_hash(ptr noundef nonnull %3, i64 noundef 4, i32 noundef 0) #21
  %260 = getelementptr inbounds %struct.expr_hash_elt, ptr %214, i64 0, i32 1, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !195
  %262 = call i32 @iterative_hash_expr(ptr noundef %261, i32 noundef %259) #21
  %263 = getelementptr inbounds %struct.expr_hash_elt, ptr %214, i64 0, i32 1, i32 2, i32 0, i32 2
  %264 = load i64, ptr %263, align 8, !tbaa !195
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %278, label %266, !prof !383

266:                                              ; preds = %258
  %267 = getelementptr inbounds %struct.expr_hash_elt, ptr %214, i64 0, i32 1, i32 2, i32 0, i32 3
  br label %268

268:                                              ; preds = %268, %266
  %269 = phi i64 [ 0, %266 ], [ %275, %268 ]
  %270 = phi i32 [ %262, %266 ], [ %274, %268 ]
  %271 = load ptr, ptr %267, align 8, !tbaa !195
  %272 = getelementptr inbounds ptr, ptr %271, i64 %269
  %273 = load ptr, ptr %272, align 8, !tbaa !184
  %274 = call i32 @iterative_hash_expr(ptr noundef %273, i32 noundef %270) #21
  %275 = add nuw i64 %269, 1
  %276 = load i64, ptr %263, align 8, !tbaa !195
  %277 = icmp ult i64 %275, %276
  br i1 %277, label %268, label %278, !prof !384, !llvm.loop !385

278:                                              ; preds = %268, %258
  %279 = phi i32 [ %262, %258 ], [ %274, %268 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %281

280:                                              ; preds = %211
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 481, ptr noundef nonnull @.str.10) #21
  br label %281

281:                                              ; preds = %280, %278, %253, %249, %236, %221
  %282 = phi i32 [ 0, %280 ], [ %279, %278 ], [ %252, %249 ], [ %257, %253 ], [ %240, %236 ], [ %224, %221 ]
  %283 = getelementptr inbounds %struct.expr_hash_elt, ptr %214, i64 0, i32 3
  store i32 %282, ptr %283, align 8, !tbaa !314
  %284 = getelementptr inbounds %struct.expr_hash_elt, ptr %214, i64 0, i32 4
  store ptr %214, ptr %284, align 8, !tbaa !320
  %285 = load ptr, ptr @avail_exprs, align 8, !tbaa !184
  %286 = call ptr @htab_find_slot_with_hash(ptr noundef %285, ptr noundef nonnull %214, i32 noundef %282, i32 noundef 1) #21
  %287 = load ptr, ptr %286, align 8, !tbaa !184
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %315, !prof !386

289:                                              ; preds = %281
  store ptr %214, ptr %286, align 8, !tbaa !184
  %290 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %291 = icmp eq ptr %290, null
  br i1 %291, label %299, label %292, !prof !387

292:                                              ; preds = %289
  %293 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %294 = and i32 %293, 8
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %292
  %297 = call i64 @fwrite(ptr nonnull @.str.16, i64 5, i64 1, ptr nonnull %290)
  %298 = load ptr, ptr @dump_file, align 8, !tbaa !184
  call fastcc void @print_expr_hash_elt(ptr noundef %298, ptr noundef nonnull %214)
  br label %299

299:                                              ; preds = %296, %292, %289
  %300 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !184
  %301 = icmp eq ptr %300, null
  br i1 %301, label %307, label %302, !prof !388

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %300, i64 0, i32 1
  %304 = load i32, ptr %303, align 4, !tbaa !343
  %305 = load i32, ptr %300, align 8, !tbaa !345
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %309, !prof !389

307:                                              ; preds = %302, %299
  %308 = call ptr @vec_heap_p_reserve(ptr noundef %300, i32 noundef 1) #21
  store ptr %308, ptr @avail_exprs_stack, align 8, !tbaa !184
  br label %309

309:                                              ; preds = %307, %302
  %310 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !184
  %311 = load i32, ptr %310, align 8, !tbaa !345
  %312 = add i32 %311, 1
  store i32 %312, ptr %310, align 8, !tbaa !345
  %313 = zext i32 %311 to i64
  %314 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %310, i64 0, i32 2, i64 %313
  store ptr %214, ptr %314, align 8, !tbaa !184
  br label %316

315:                                              ; preds = %281
  call void @free(ptr noundef %214)
  br label %316

316:                                              ; preds = %309, %315
  %317 = add nuw nsw i64 %212, 1
  %318 = load i32, ptr %208, align 8, !tbaa !374
  %319 = zext i32 %318 to i64
  %320 = icmp ult i64 %317, %319
  br i1 %320, label %211, label %321, !prof !588, !llvm.loop !589

321:                                              ; preds = %316, %207, %205, %183
  %322 = load ptr, ptr %5, align 8, !tbaa !184
  %323 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 4
  %324 = load ptr, ptr %323, align 8, !tbaa !211
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %329, !prof !568

326:                                              ; preds = %321
  %327 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !184
  %328 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %327, ptr noundef %327, ptr noundef null, ptr noundef null) #21
  store ptr %328, ptr %323, align 8, !tbaa !211
  br label %329

329:                                              ; preds = %321, %326
  %330 = load ptr, ptr %323, align 8, !tbaa !211
  call void @thread_across_edge(ptr noundef %330, ptr noundef %322, i8 noundef zeroext 0, ptr noundef nonnull @const_and_copies_stack, ptr noundef nonnull @simplify_stmt_for_jump_threading) #21
  br label %331

331:                                              ; preds = %329, %167
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %332

332:                                              ; preds = %62, %65, %74, %77, %84, %331, %60
  br label %333

333:                                              ; preds = %332, %369
  %334 = load ptr, ptr @avail_exprs_stack, align 8
  %335 = icmp eq ptr %334, null
  br i1 %335, label %338, label %336, !prof !590

336:                                              ; preds = %333
  %337 = load i32, ptr %334, align 8, !tbaa !345
  br label %338

338:                                              ; preds = %336, %333
  %339 = phi i32 [ %337, %336 ], [ 0, %333 ]
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %348, label %341, !prof !590

341:                                              ; preds = %338
  %342 = load i32, ptr %334, align 8, !tbaa !345
  %343 = add i32 %342, -1
  store i32 %343, ptr %334, align 8, !tbaa !345
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %334, i64 0, i32 2, i64 %344
  %346 = load ptr, ptr %345, align 8, !tbaa !184
  %347 = icmp eq ptr %346, null
  br i1 %347, label %348, label %349, !prof !591

348:                                              ; preds = %338, %341
  br label %371

349:                                              ; preds = %341
  %350 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %351 = icmp eq ptr %350, null
  br i1 %351, label %359, label %352, !prof !592

352:                                              ; preds = %349
  %353 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %354 = and i32 %353, 8
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %359, label %356

356:                                              ; preds = %352
  %357 = call i64 @fwrite(ptr nonnull @.str.41, i64 5, i64 1, ptr nonnull %350)
  %358 = load ptr, ptr @dump_file, align 8, !tbaa !184
  call fastcc void @print_expr_hash_elt(ptr noundef %358, ptr noundef nonnull %346)
  br label %359

359:                                              ; preds = %356, %352, %349
  %360 = load ptr, ptr @avail_exprs, align 8, !tbaa !184
  %361 = getelementptr inbounds %struct.expr_hash_elt, ptr %346, i64 0, i32 3
  %362 = load i32, ptr %361, align 8, !tbaa !314
  %363 = call ptr @htab_find_slot_with_hash(ptr noundef %360, ptr noundef nonnull %346, i32 noundef %362, i32 noundef 0) #21
  %364 = icmp eq ptr %363, null
  br i1 %364, label %368, label %365, !prof !338

365:                                              ; preds = %359
  %366 = load ptr, ptr %363, align 8, !tbaa !184
  %367 = icmp eq ptr %366, %346
  br i1 %367, label %369, label %368, !prof !592

368:                                              ; preds = %365, %359
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 839, ptr noundef nonnull @.str.10) #21
  br label %369

369:                                              ; preds = %368, %365
  %370 = load ptr, ptr @avail_exprs, align 8, !tbaa !184
  call void @htab_clear_slot(ptr noundef %370, ptr noundef %363) #21
  br label %333

371:                                              ; preds = %348, %416
  %372 = load ptr, ptr @const_and_copies_stack, align 8
  %373 = icmp eq ptr %372, null
  br i1 %373, label %376, label %374, !prof !593

374:                                              ; preds = %371
  %375 = load i32, ptr %372, align 8, !tbaa !349
  br label %376

376:                                              ; preds = %374, %371
  %377 = phi i32 [ %375, %374 ], [ 0, %371 ]
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %423, label %379, !prof !594

379:                                              ; preds = %376
  %380 = load i32, ptr %372, align 8, !tbaa !349
  %381 = add i32 %380, -1
  store i32 %381, ptr %372, align 8, !tbaa !349
  %382 = zext i32 %381 to i64
  %383 = getelementptr inbounds %struct.VEC_tree_base, ptr %372, i64 0, i32 2, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !184
  %385 = icmp eq ptr %384, null
  br i1 %385, label %423, label %386, !prof !595

386:                                              ; preds = %379
  %387 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %388 = icmp eq ptr %387, null
  br i1 %388, label %416, label %389, !prof !596

389:                                              ; preds = %386
  %390 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %391 = and i32 %390, 8
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %416, label %393

393:                                              ; preds = %389
  %394 = call i64 @fwrite(ptr nonnull @.str.42, i64 10, i64 1, ptr nonnull %387)
  %395 = load ptr, ptr @dump_file, align 8, !tbaa !184
  call void @print_generic_expr(ptr noundef %395, ptr noundef nonnull %384, i32 noundef 0) #21
  %396 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %397 = call i64 @fwrite(ptr nonnull @.str.14, i64 3, i64 1, ptr %396)
  %398 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %399 = getelementptr inbounds %struct.tree_ssa_name, ptr %384, i64 0, i32 3
  %400 = load i32, ptr %399, align 8, !tbaa !195
  %401 = load ptr, ptr @ssa_name_values, align 8
  %402 = icmp eq ptr %401, null
  br i1 %402, label %405, label %403

403:                                              ; preds = %393
  %404 = load i32, ptr %401, align 8, !tbaa !349
  br label %405

405:                                              ; preds = %403, %393
  %406 = phi i32 [ %404, %403 ], [ 0, %393 ]
  %407 = icmp ult i32 %400, %406
  br i1 %407, label %408, label %412

408:                                              ; preds = %405
  %409 = zext i32 %400 to i64
  %410 = getelementptr inbounds %struct.VEC_tree_base, ptr %401, i64 0, i32 2, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !184
  br label %412

412:                                              ; preds = %408, %405
  %413 = phi ptr [ %411, %408 ], [ null, %405 ]
  call void @print_generic_expr(ptr noundef %398, ptr noundef %413, i32 noundef 0) #21
  %414 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %415 = call i32 @fputc(i32 10, ptr %414)
  br label %416

416:                                              ; preds = %412, %389, %386
  %417 = load ptr, ptr @const_and_copies_stack, align 8
  %418 = load i32, ptr %417, align 8, !tbaa !349
  %419 = add i32 %418, -1
  store i32 %419, ptr %417, align 8, !tbaa !349
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds %struct.VEC_tree_base, ptr %417, i64 0, i32 2, i64 %420
  %422 = load ptr, ptr %421, align 8, !tbaa !184
  call void @set_ssa_name_value(ptr noundef nonnull %384, ptr noundef %422) #21
  br label %371

423:                                              ; preds = %379, %376
  ret void
}

declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

declare void @threadedge_initialize_values() local_unnamed_addr #3

declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #3

declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @thread_through_all_blocks(i8 noundef zeroext) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @loop_optimizer_finalize() local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @threadedge_finalize_values() local_unnamed_addr #3

declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @commutative_tree_code(i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #18

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @record_cond(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !597 !PGOFuncName !598 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 80) #21
  %4 = getelementptr inbounds %struct.cond_equivalence, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !376
  %6 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !378
  store ptr %5, ptr %3, align 8, !tbaa !379
  %7 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !319
  %8 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !326
  switch i32 %9, label %69 [
    i32 0, label %10
    i32 1, label %14
    i32 2, label %30
    i32 3, label %47
  ], !prof !380

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !195
  %13 = tail call i32 @iterative_hash_expr(ptr noundef %12, i32 noundef 0) #21
  br label %70

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 2
  %16 = tail call i32 @iterative_hash(ptr noundef nonnull %15, i64 noundef 4, i32 noundef 0) #21
  %17 = load i32, ptr %15, align 8, !tbaa !195
  switch i32 %17, label %25 [
    i32 116, label %18
    i32 113, label %18
    i32 117, label %18
  ], !prof !381

18:                                               ; preds = %14, %14, %14
  %19 = load ptr, ptr %6, align 8, !tbaa !323
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = lshr i32 %21, 21
  %23 = and i32 %22, 1
  %24 = add i32 %23, %16
  br label %25

25:                                               ; preds = %18, %14
  %26 = phi i32 [ %24, %18 ], [ %16, %14 ]
  %27 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 2, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !195
  %29 = tail call i32 @iterative_hash_expr(ptr noundef %28, i32 noundef %26) #21
  br label %70

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 2
  %32 = tail call i32 @iterative_hash(ptr noundef nonnull %31, i64 noundef 4, i32 noundef 0) #21
  %33 = load i32, ptr %31, align 8, !tbaa !195
  %34 = tail call zeroext i8 @commutative_tree_code(i32 noundef %33) #21
  %35 = icmp eq i8 %34, 0
  %36 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 2, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !195
  br i1 %35, label %42, label %38, !prof !382

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 2, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !195
  %41 = tail call i32 @iterative_hash_exprs_commutative(ptr noundef %37, ptr noundef %40, i32 noundef %32) #21
  br label %70

42:                                               ; preds = %30
  %43 = tail call i32 @iterative_hash_expr(ptr noundef %37, i32 noundef %32) #21
  %44 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 2, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !195
  %46 = tail call i32 @iterative_hash_expr(ptr noundef %45, i32 noundef %43) #21
  br label %70

47:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 59, ptr %2, align 4, !tbaa !199
  %48 = call i32 @iterative_hash(ptr noundef nonnull %2, i64 noundef 4, i32 noundef 0) #21
  %49 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !195
  %51 = call i32 @iterative_hash_expr(ptr noundef %50, i32 noundef %48) #21
  %52 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 2, i32 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !195
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %67, label %55, !prof !383

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 1, i32 2, i32 0, i32 3
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i64 [ 0, %55 ], [ %64, %57 ]
  %59 = phi i32 [ %51, %55 ], [ %63, %57 ]
  %60 = load ptr, ptr %56, align 8, !tbaa !195
  %61 = getelementptr inbounds ptr, ptr %60, i64 %58
  %62 = load ptr, ptr %61, align 8, !tbaa !184
  %63 = call i32 @iterative_hash_expr(ptr noundef %62, i32 noundef %59) #21
  %64 = add nuw i64 %58, 1
  %65 = load i64, ptr %52, align 8, !tbaa !195
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %57, label %67, !prof !384, !llvm.loop !385

67:                                               ; preds = %57, %47
  %68 = phi i32 [ %51, %47 ], [ %63, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %70

69:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 481, ptr noundef nonnull @.str.10) #21
  br label %70

70:                                               ; preds = %10, %25, %38, %42, %67, %69
  %71 = phi i32 [ 0, %69 ], [ %68, %67 ], [ %41, %38 ], [ %46, %42 ], [ %29, %25 ], [ %13, %10 ]
  %72 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 3
  store i32 %71, ptr %72, align 8, !tbaa !314
  %73 = getelementptr inbounds %struct.expr_hash_elt, ptr %3, i64 0, i32 4
  store ptr %3, ptr %73, align 8, !tbaa !320
  %74 = load ptr, ptr @avail_exprs, align 8, !tbaa !184
  %75 = call ptr @htab_find_slot_with_hash(ptr noundef %74, ptr noundef nonnull %3, i32 noundef %71, i32 noundef 1) #21
  %76 = load ptr, ptr %75, align 8, !tbaa !184
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %104, !prof !386

78:                                               ; preds = %70
  store ptr %3, ptr %75, align 8, !tbaa !184
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %80 = icmp eq ptr %79, null
  br i1 %80, label %88, label %81, !prof !387

81:                                               ; preds = %78
  %82 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %83 = and i32 %82, 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = call i64 @fwrite(ptr nonnull @.str.16, i64 5, i64 1, ptr nonnull %79)
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !184
  call fastcc void @print_expr_hash_elt(ptr noundef %87, ptr noundef nonnull %3)
  br label %88

88:                                               ; preds = %85, %81, %78
  %89 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !184
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91, !prof !388

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %89, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !343
  %94 = load i32, ptr %89, align 8, !tbaa !345
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98, !prof !389

96:                                               ; preds = %88, %91
  %97 = call ptr @vec_heap_p_reserve(ptr noundef %89, i32 noundef 1) #21
  store ptr %97, ptr @avail_exprs_stack, align 8, !tbaa !184
  br label %98

98:                                               ; preds = %91, %96
  %99 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !184
  %100 = load i32, ptr %99, align 8, !tbaa !345
  %101 = add i32 %100, 1
  store i32 %101, ptr %99, align 8, !tbaa !345
  %102 = zext i32 %100 to i64
  %103 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %99, i64 0, i32 2, i64 %102
  store ptr %3, ptr %103, align 8, !tbaa !184
  br label %105

104:                                              ; preds = %70
  call void @free(ptr noundef %3)
  br label %105

105:                                              ; preds = %104, %98
  ret void
}

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_ssa_name_value(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_expr_hash_elt(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !prof !183 {
  %3 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !319
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @.str.18, ptr @.str.17
  %7 = tail call i64 @fwrite(ptr nonnull %6, i64 5, i64 1, ptr %0)
  %8 = load ptr, ptr %1, align 8, !tbaa !379
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0) #21
  %11 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 3, i64 1, ptr %0)
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !337
  switch i32 %14, label %60 [
    i32 0, label %15
    i32 1, label %18
    i32 2, label %27
    i32 3, label %38
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !195
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %17, i32 noundef 0) #21
  br label %60

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !195
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !184
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %23)
  %25 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !195
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %26, i32 noundef 0) #21
  br label %60

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %29 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !195
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %30, i32 noundef 0) #21
  %31 = load i32, ptr %28, align 8, !tbaa !195
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !184
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %34)
  %36 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !195
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %37, i32 noundef 0) #21
  br label %60

38:                                               ; preds = %12
  %39 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2
  %40 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !195
  %42 = load ptr, ptr %39, align 8, !tbaa !195
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %42, i32 noundef 0) #21
  %43 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 2, i64 1, ptr %0)
  %44 = icmp eq i64 %41, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.expr_hash_elt, ptr %1, i64 0, i32 1, i32 2, i32 0, i32 3
  br label %47

47:                                               ; preds = %45, %56
  %48 = phi i64 [ 0, %45 ], [ %52, %56 ]
  %49 = load ptr, ptr %46, align 8, !tbaa !195
  %50 = getelementptr inbounds ptr, ptr %49, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !184
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %51, i32 noundef 0) #21
  %52 = add nuw i64 %48, 1
  %53 = icmp ult i64 %52, %41
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %0)
  br label %56

56:                                               ; preds = %47, %54
  %57 = icmp eq i64 %52, %41
  br i1 %57, label %58, label %47, !llvm.loop !599

58:                                               ; preds = %56, %38
  %59 = tail call i32 @fputc(i32 41, ptr %0)
  br label %60

60:                                               ; preds = %12, %58, %27, %18, %15
  %61 = tail call i32 @fputc(i32 10, ptr %0)
  %62 = load ptr, ptr %3, align 8, !tbaa !319
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 10, i64 1, ptr %0)
  %66 = load ptr, ptr %3, align 8, !tbaa !319
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %66, i32 noundef 0, i32 noundef 0) #21
  br label %67

67:                                               ; preds = %64, %60
  ret void
}

declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @iterative_hash(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @iterative_hash_exprs_commutative(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare i32 @operand_equal_for_phi_arg_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @may_propagate_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @fold_stmt(ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_rhs_has_side_effects(ptr noundef) local_unnamed_addr #3

declare void @propagate_tree_value_into_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @tree_swap_operands_p(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @swap_tree_comparison(i32 noundef) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare ptr @get_virtual_var(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @may_propagate_copy_into_asm(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @simple_iv_increment_p(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !600 !PGOFuncName !601 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %142, !prof !455

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !199
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !260
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14, !prof !456

13:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %14

14:                                               ; preds = %13, %5
  %15 = getelementptr inbounds i8, ptr %0, i64 %11
  %16 = load ptr, ptr %15, align 8, !tbaa !184
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %20, label %142, !prof !457

20:                                               ; preds = %14
  %21 = load i32, ptr %0, align 8
  %22 = trunc i32 %21 to i8
  switch i8 %22, label %25 [
    i8 6, label %23
    i8 1, label %23
    i8 8, label %26
  ], !prof !458

23:                                               ; preds = %20, %20
  %24 = lshr i32 %21, 16
  br label %26

25:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1446, ptr noundef nonnull @.str.10) #21
  br label %26

26:                                               ; preds = %25, %23, %20
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ], [ 59, %20 ]
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !195
  %31 = icmp eq i8 %30, 3
  br i1 %31, label %32, label %52, !prof !459

32:                                               ; preds = %26
  %33 = load i32, ptr %0, align 8
  %34 = and i32 %33, 255
  %35 = add nsw i32 %34, -1
  %36 = icmp ult i32 %35, 9
  tail call void @llvm.assume(i1 %36)
  %37 = zext nneg i32 %34 to i64
  %38 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !199
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !260
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45, !prof !460

44:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %45

45:                                               ; preds = %44, %32
  %46 = getelementptr inbounds i8, ptr %0, i64 %42
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !184
  %49 = load i64, ptr %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = and i32 %50, 65535
  br label %52

52:                                               ; preds = %26, %45
  %53 = phi i32 [ %51, %45 ], [ %27, %26 ]
  %54 = icmp eq i32 %53, 63
  br i1 %54, label %90, label %55, !prof !461

55:                                               ; preds = %52
  %56 = load i32, ptr %0, align 8
  %57 = trunc i32 %56 to i8
  switch i8 %57, label %60 [
    i8 6, label %58
    i8 1, label %58
    i8 8, label %61
  ], !prof !462

58:                                               ; preds = %55, %55
  %59 = lshr i32 %56, 16
  br label %61

60:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1446, ptr noundef nonnull @.str.10) #21
  br label %61

61:                                               ; preds = %60, %58, %55
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ], [ 59, %55 ]
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !195
  %66 = icmp eq i8 %65, 3
  br i1 %66, label %67, label %87, !prof !463

67:                                               ; preds = %61
  %68 = load i32, ptr %0, align 8
  %69 = and i32 %68, 255
  %70 = add nsw i32 %69, -1
  %71 = icmp ult i32 %70, 9
  tail call void @llvm.assume(i1 %71)
  %72 = zext nneg i32 %69 to i64
  %73 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !199
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !260
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80, !prof !460

79:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %80

80:                                               ; preds = %79, %67
  %81 = getelementptr inbounds i8, ptr %0, i64 %77
  %82 = getelementptr inbounds ptr, ptr %81, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !184
  %84 = load i64, ptr %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = and i32 %85, 65535
  br label %87

87:                                               ; preds = %61, %80
  %88 = phi i32 [ %86, %80 ], [ %62, %61 ]
  %89 = icmp eq i32 %88, 64
  br i1 %89, label %90, label %142, !prof !464

90:                                               ; preds = %87, %52
  %91 = load i32, ptr %0, align 8
  %92 = and i32 %91, 255
  %93 = add nsw i32 %92, -10
  %94 = icmp ult i32 %93, -9
  br i1 %94, label %108, label %95, !prof !465

95:                                               ; preds = %90
  %96 = zext nneg i32 %92 to i64
  %97 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !199
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !260
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104, !prof !465

103:                                              ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %104

104:                                              ; preds = %103, %95
  %105 = getelementptr inbounds i8, ptr %0, i64 %101
  %106 = getelementptr inbounds ptr, ptr %105, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !184
  br label %108

108:                                              ; preds = %90, %104
  %109 = phi ptr [ %107, %104 ], [ null, %90 ]
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 141
  br i1 %112, label %113, label %142, !prof !466

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.tree_ssa_name, ptr %109, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !195
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 255
  %118 = icmp eq i32 %117, 16
  br i1 %118, label %119, label %142, !prof !467

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.gimple_statement_phi, ptr %115, i64 0, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !195
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %142, label %123, !prof !468

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.gimple_statement_phi, ptr %115, i64 0, i32 1
  br label %130

125:                                              ; preds = %136
  %126 = add nuw nsw i64 %131, 1
  %127 = load i32, ptr %120, align 4, !tbaa !195
  %128 = zext i32 %127 to i64
  %129 = icmp ult i64 %126, %128
  br i1 %129, label %130, label %142, !prof !469, !llvm.loop !470

130:                                              ; preds = %123, %125
  %131 = phi i64 [ 0, %123 ], [ %126, %125 ]
  %132 = trunc i64 %131 to i32
  %133 = load i32, ptr %124, align 8, !tbaa !195
  %134 = icmp ult i32 %133, %132
  br i1 %134, label %135, label %136, !prof !471

135:                                              ; preds = %130
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 3103, ptr noundef nonnull @.str.10) #21
  br label %136

136:                                              ; preds = %130, %135
  %137 = and i64 %131, 4294967295
  %138 = getelementptr inbounds %struct.gimple_statement_phi, ptr %115, i64 0, i32 4, i64 %137, i32 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !284
  %140 = load ptr, ptr %139, align 8, !tbaa !184
  %141 = icmp eq ptr %140, %16
  br i1 %141, label %142, label %125, !prof !471

142:                                              ; preds = %136, %125, %119, %87, %113, %108, %14, %1
  %143 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 0, %108 ], [ 0, %113 ], [ 0, %87 ], [ 0, %119 ], [ 0, %125 ], [ 1, %136 ]
  ret i8 %143
}

declare void @propagate_value(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @lookup_avail_expr(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #13 !prof !602 !PGOFuncName !603 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.expr_hash_elt, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #21
  %5 = tail call ptr @gimple_get_lhs(ptr noundef %0) #21
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1
  %9 = trunc i32 %6 to i8
  switch i8 %9, label %376 [
    i8 6, label %10
    i8 1, label %166
    i8 8, label %208
    i8 5, label %304
    i8 3, label %340
  ], !prof !604

10:                                               ; preds = %2
  %11 = lshr i32 %6, 16
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !195
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %16, label %34, !prof !605

16:                                               ; preds = %10
  %17 = add nsw i32 %7, -1
  %18 = icmp ult i32 %17, 9
  tail call void @llvm.assume(i1 %18)
  %19 = zext nneg i32 %7 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !199
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !260
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27, !prof !606

26:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %27

27:                                               ; preds = %26, %16
  %28 = getelementptr inbounds i8, ptr %0, i64 %24
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !184
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65535
  br label %34

34:                                               ; preds = %27, %10
  %35 = phi i32 [ %33, %27 ], [ %11, %10 ]
  store ptr null, ptr %8, align 8, !tbaa !323
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !195
  switch i8 %38, label %165 [
    i8 3, label %39
    i8 2, label %61
    i8 1, label %101
  ], !prof !607

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  store i32 0, ptr %40, align 8, !tbaa !326
  %41 = load i32, ptr %0, align 8
  %42 = and i32 %41, 255
  %43 = add nsw i32 %42, -10
  %44 = icmp ult i32 %43, -9
  br i1 %44, label %58, label %45, !prof !606

45:                                               ; preds = %39
  %46 = zext nneg i32 %42 to i64
  %47 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !199
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !260
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54, !prof !606

53:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %54

54:                                               ; preds = %53, %45
  %55 = getelementptr inbounds i8, ptr %0, i64 %51
  %56 = getelementptr inbounds ptr, ptr %55, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !184
  br label %58

58:                                               ; preds = %54, %39
  %59 = phi ptr [ %57, %54 ], [ null, %39 ]
  %60 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  store ptr %59, ptr %60, align 8, !tbaa !195
  br label %377

61:                                               ; preds = %34
  %62 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  store i32 1, ptr %62, align 8, !tbaa !326
  %63 = load i32, ptr %0, align 8
  %64 = and i32 %63, 255
  %65 = add nsw i32 %64, -1
  %66 = icmp ult i32 %65, 9
  tail call void @llvm.assume(i1 %66)
  %67 = zext nneg i32 %64 to i64
  %68 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !199
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !260
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75, !prof !608

74:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %75

75:                                               ; preds = %74, %61
  %76 = getelementptr inbounds i8, ptr %0, i64 %72
  %77 = load ptr, ptr %76, align 8, !tbaa !184
  %78 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !195
  store ptr %79, ptr %8, align 8, !tbaa !323
  %80 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  store i32 %35, ptr %80, align 8, !tbaa !195
  %81 = load i32, ptr %0, align 8
  %82 = and i32 %81, 255
  %83 = add nsw i32 %82, -10
  %84 = icmp ult i32 %83, -9
  br i1 %84, label %98, label %85, !prof !608

85:                                               ; preds = %75
  %86 = zext nneg i32 %82 to i64
  %87 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !199
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !260
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94, !prof !608

93:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %94

94:                                               ; preds = %93, %85
  %95 = getelementptr inbounds i8, ptr %0, i64 %91
  %96 = getelementptr inbounds ptr, ptr %95, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !184
  br label %98

98:                                               ; preds = %94, %75
  %99 = phi ptr [ %97, %94 ], [ null, %75 ]
  %100 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 1
  store ptr %99, ptr %100, align 8, !tbaa !195
  br label %377

101:                                              ; preds = %34
  %102 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  store i32 2, ptr %102, align 8, !tbaa !326
  %103 = load i32, ptr %0, align 8
  %104 = and i32 %103, 255
  %105 = add nsw i32 %104, -1
  %106 = icmp ult i32 %105, 9
  tail call void @llvm.assume(i1 %106)
  %107 = zext nneg i32 %104 to i64
  %108 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !199
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %110
  %112 = load i64, ptr %111, align 8, !tbaa !260
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115, !prof !609

114:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %115

115:                                              ; preds = %114, %101
  %116 = getelementptr inbounds i8, ptr %0, i64 %112
  %117 = load ptr, ptr %116, align 8, !tbaa !184
  %118 = getelementptr inbounds %struct.tree_common, ptr %117, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !195
  store ptr %119, ptr %8, align 8, !tbaa !323
  %120 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  store i32 %35, ptr %120, align 8, !tbaa !195
  %121 = load i32, ptr %0, align 8
  %122 = and i32 %121, 255
  %123 = add nsw i32 %122, -10
  %124 = icmp ult i32 %123, -9
  br i1 %124, label %138, label %125, !prof !609

125:                                              ; preds = %115
  %126 = zext nneg i32 %122 to i64
  %127 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !199
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !260
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134, !prof !609

133:                                              ; preds = %125
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %134

134:                                              ; preds = %133, %125
  %135 = getelementptr inbounds i8, ptr %0, i64 %131
  %136 = getelementptr inbounds ptr, ptr %135, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !184
  br label %138

138:                                              ; preds = %134, %115
  %139 = phi ptr [ %137, %134 ], [ null, %115 ]
  %140 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 1
  store ptr %139, ptr %140, align 8, !tbaa !195
  %141 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %142 = load i32, ptr %141, align 4, !tbaa !195
  %143 = icmp ugt i32 %142, 2
  br i1 %143, label %144, label %162, !prof !610

144:                                              ; preds = %138
  %145 = load i32, ptr %0, align 8
  %146 = and i32 %145, 255
  %147 = add nsw i32 %146, -10
  %148 = icmp ult i32 %147, -9
  br i1 %148, label %162, label %149, !prof !609

149:                                              ; preds = %144
  %150 = zext nneg i32 %146 to i64
  %151 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !199
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %153
  %155 = load i64, ptr %154, align 8, !tbaa !260
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %158, !prof !609

157:                                              ; preds = %149
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %158

158:                                              ; preds = %157, %149
  %159 = getelementptr inbounds i8, ptr %0, i64 %155
  %160 = getelementptr inbounds ptr, ptr %159, i64 2
  %161 = load ptr, ptr %160, align 8, !tbaa !184
  br label %162

162:                                              ; preds = %158, %144, %138
  %163 = phi ptr [ null, %138 ], [ %161, %158 ], [ null, %144 ]
  %164 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 2
  store ptr %163, ptr %164, align 8, !tbaa !195
  br label %377

165:                                              ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 234, ptr noundef nonnull @.str.10) #21
  br label %377

166:                                              ; preds = %2
  %167 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %167, ptr %8, align 8, !tbaa !323
  %168 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  store i32 2, ptr %168, align 8, !tbaa !326
  %169 = lshr i32 %6, 16
  %170 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  store i32 %169, ptr %170, align 8, !tbaa !195
  %171 = add nsw i32 %7, -10
  %172 = icmp ult i32 %171, -9
  br i1 %172, label %185, label %173, !prof !611

173:                                              ; preds = %166
  %174 = zext nneg i32 %7 to i64
  %175 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !199
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %177
  %179 = load i64, ptr %178, align 8, !tbaa !260
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %182, !prof !611

181:                                              ; preds = %173
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %182

182:                                              ; preds = %181, %173
  %183 = getelementptr inbounds i8, ptr %0, i64 %179
  %184 = load ptr, ptr %183, align 8, !tbaa !184
  br label %185

185:                                              ; preds = %182, %166
  %186 = phi ptr [ %184, %182 ], [ null, %166 ]
  %187 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 1
  store ptr %186, ptr %187, align 8, !tbaa !195
  %188 = load i32, ptr %0, align 8
  %189 = and i32 %188, 255
  %190 = add nsw i32 %189, -10
  %191 = icmp ult i32 %190, -9
  br i1 %191, label %205, label %192, !prof !611

192:                                              ; preds = %185
  %193 = zext nneg i32 %189 to i64
  %194 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !199
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %196
  %198 = load i64, ptr %197, align 8, !tbaa !260
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %201, !prof !611

200:                                              ; preds = %192
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %201

201:                                              ; preds = %200, %192
  %202 = getelementptr inbounds i8, ptr %0, i64 %198
  %203 = getelementptr inbounds ptr, ptr %202, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !184
  br label %205

205:                                              ; preds = %201, %185
  %206 = phi ptr [ %204, %201 ], [ null, %185 ]
  %207 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 2
  store ptr %206, ptr %207, align 8, !tbaa !195
  br label %377

208:                                              ; preds = %2
  %209 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %210 = load i32, ptr %209, align 4, !tbaa !195
  %211 = add i32 %210, -3
  %212 = zext i32 %211 to i64
  %213 = add nsw i32 %7, -10
  %214 = icmp ult i32 %213, -9
  br i1 %214, label %228, label %215, !prof !612

215:                                              ; preds = %208
  %216 = zext nneg i32 %7 to i64
  %217 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !199
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %219
  %221 = load i64, ptr %220, align 8, !tbaa !260
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %224, !prof !612

223:                                              ; preds = %215
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %224

224:                                              ; preds = %223, %215
  %225 = getelementptr inbounds i8, ptr %0, i64 %221
  %226 = load ptr, ptr %225, align 8, !tbaa !184
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %229, !prof !612

228:                                              ; preds = %208, %224
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 250, ptr noundef nonnull @.str.10) #21
  br label %229

229:                                              ; preds = %228, %224
  %230 = load i32, ptr %0, align 8
  %231 = and i32 %230, 255
  %232 = add nsw i32 %231, -1
  %233 = icmp ult i32 %232, 9
  tail call void @llvm.assume(i1 %233)
  %234 = zext nneg i32 %231 to i64
  %235 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !199
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %237
  %239 = load i64, ptr %238, align 8, !tbaa !260
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %242, !prof !612

241:                                              ; preds = %229
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %242

242:                                              ; preds = %241, %229
  %243 = getelementptr inbounds i8, ptr %0, i64 %239
  %244 = load ptr, ptr %243, align 8, !tbaa !184
  %245 = getelementptr inbounds %struct.tree_common, ptr %244, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !195
  store ptr %246, ptr %8, align 8, !tbaa !323
  %247 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  store i32 3, ptr %247, align 8, !tbaa !326
  %248 = load i32, ptr %0, align 8
  %249 = and i32 %248, 255
  %250 = add nsw i32 %249, -10
  %251 = icmp ult i32 %250, -9
  br i1 %251, label %265, label %252, !prof !612

252:                                              ; preds = %242
  %253 = zext nneg i32 %249 to i64
  %254 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !199
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %256
  %258 = load i64, ptr %257, align 8, !tbaa !260
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %261, !prof !612

260:                                              ; preds = %252
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %261

261:                                              ; preds = %260, %252
  %262 = getelementptr inbounds i8, ptr %0, i64 %258
  %263 = getelementptr inbounds ptr, ptr %262, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !184
  br label %265

265:                                              ; preds = %261, %242
  %266 = phi ptr [ %264, %261 ], [ null, %242 ]
  %267 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  store ptr %266, ptr %267, align 8, !tbaa !195
  %268 = tail call i32 @gimple_call_flags(ptr noundef nonnull %0) #21
  %269 = and i32 %268, 3
  %270 = icmp ne i32 %269, 0
  %271 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 1
  %272 = zext i1 %270 to i8
  store i8 %272, ptr %271, align 8, !tbaa !195
  %273 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 2
  store i64 %212, ptr %273, align 8, !tbaa !195
  %274 = tail call ptr @xcalloc(i64 noundef %212, i64 noundef 8) #21
  %275 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 3
  store ptr %274, ptr %275, align 8, !tbaa !195
  %276 = icmp eq i32 %211, 0
  br i1 %276, label %377, label %277, !prof !383

277:                                              ; preds = %265, %298
  %278 = phi i64 [ %302, %298 ], [ 0, %265 ]
  %279 = add nuw nsw i64 %278, 3
  %280 = load i32, ptr %0, align 8
  %281 = and i32 %280, 255
  %282 = add nsw i32 %281, -10
  %283 = icmp ult i32 %282, -9
  br i1 %283, label %298, label %284, !prof !613

284:                                              ; preds = %277
  %285 = zext nneg i32 %281 to i64
  %286 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %285
  %287 = load i32, ptr %286, align 4, !tbaa !199
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %288
  %290 = load i64, ptr %289, align 8, !tbaa !260
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %293, !prof !613

292:                                              ; preds = %284
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %293

293:                                              ; preds = %292, %284
  %294 = getelementptr inbounds i8, ptr %0, i64 %290
  %295 = and i64 %279, 4294967295
  %296 = getelementptr inbounds ptr, ptr %294, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !184
  br label %298

298:                                              ; preds = %293, %277
  %299 = phi ptr [ %297, %293 ], [ null, %277 ]
  %300 = load ptr, ptr %275, align 8, !tbaa !195
  %301 = getelementptr inbounds ptr, ptr %300, i64 %278
  store ptr %299, ptr %301, align 8, !tbaa !184
  %302 = add nuw nsw i64 %278, 1
  %303 = icmp eq i64 %302, %212
  br i1 %303, label %377, label %277, !prof !614, !llvm.loop !615

304:                                              ; preds = %2
  %305 = add nsw i32 %7, -1
  %306 = icmp ult i32 %305, 9
  tail call void @llvm.assume(i1 %306)
  %307 = zext nneg i32 %7 to i64
  %308 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !199
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %310
  %312 = load i64, ptr %311, align 8, !tbaa !260
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %315, !prof !616

314:                                              ; preds = %304
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %315

315:                                              ; preds = %314, %304
  %316 = getelementptr inbounds i8, ptr %0, i64 %312
  %317 = load ptr, ptr %316, align 8, !tbaa !184
  %318 = getelementptr inbounds %struct.tree_common, ptr %317, i64 0, i32 2
  %319 = load ptr, ptr %318, align 8, !tbaa !195
  store ptr %319, ptr %8, align 8, !tbaa !323
  %320 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  store i32 0, ptr %320, align 8, !tbaa !326
  %321 = load i32, ptr %0, align 8
  %322 = and i32 %321, 255
  %323 = add nsw i32 %322, -10
  %324 = icmp ult i32 %323, -9
  br i1 %324, label %337, label %325, !prof !616

325:                                              ; preds = %315
  %326 = zext nneg i32 %322 to i64
  %327 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %326
  %328 = load i32, ptr %327, align 4, !tbaa !199
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %329
  %331 = load i64, ptr %330, align 8, !tbaa !260
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %334, !prof !616

333:                                              ; preds = %325
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %334

334:                                              ; preds = %333, %325
  %335 = getelementptr inbounds i8, ptr %0, i64 %331
  %336 = load ptr, ptr %335, align 8, !tbaa !184
  br label %337

337:                                              ; preds = %334, %315
  %338 = phi ptr [ %336, %334 ], [ null, %315 ]
  %339 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  store ptr %338, ptr %339, align 8, !tbaa !195
  br label %377

340:                                              ; preds = %2
  %341 = add nsw i32 %7, -1
  %342 = icmp ult i32 %341, 9
  tail call void @llvm.assume(i1 %342)
  %343 = zext nneg i32 %7 to i64
  %344 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %343
  %345 = load i32, ptr %344, align 4, !tbaa !199
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %346
  %348 = load i64, ptr %347, align 8, !tbaa !260
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %340
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %351

351:                                              ; preds = %350, %340
  %352 = getelementptr inbounds i8, ptr %0, i64 %348
  %353 = load ptr, ptr %352, align 8, !tbaa !184
  %354 = getelementptr inbounds %struct.tree_common, ptr %353, i64 0, i32 2
  %355 = load ptr, ptr %354, align 8, !tbaa !195
  store ptr %355, ptr %8, align 8, !tbaa !323
  %356 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  store i32 0, ptr %356, align 8, !tbaa !326
  %357 = load i32, ptr %0, align 8
  %358 = and i32 %357, 255
  %359 = add nsw i32 %358, -10
  %360 = icmp ult i32 %359, -9
  br i1 %360, label %373, label %361

361:                                              ; preds = %351
  %362 = zext nneg i32 %358 to i64
  %363 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !199
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %365
  %367 = load i64, ptr %366, align 8, !tbaa !260
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %361
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %370

370:                                              ; preds = %369, %361
  %371 = getelementptr inbounds i8, ptr %0, i64 %367
  %372 = load ptr, ptr %371, align 8, !tbaa !184
  br label %373

373:                                              ; preds = %370, %351
  %374 = phi ptr [ %372, %370 ], [ null, %351 ]
  %375 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  store ptr %374, ptr %375, align 8, !tbaa !195
  br label %377

376:                                              ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 279, ptr noundef nonnull @.str.10) #21
  br label %377

377:                                              ; preds = %298, %265, %58, %98, %162, %165, %205, %337, %373, %376
  store ptr %5, ptr %4, align 8, !tbaa !379
  %378 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 2
  store ptr %0, ptr %378, align 8, !tbaa !319
  %379 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  %380 = load i32, ptr %379, align 8, !tbaa !326
  switch i32 %380, label %440 [
    i32 0, label %381
    i32 1, label %385
    i32 2, label %401
    i32 3, label %418
  ], !prof !380

381:                                              ; preds = %377
  %382 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !195
  %384 = tail call i32 @iterative_hash_expr(ptr noundef %383, i32 noundef 0) #21
  br label %441

385:                                              ; preds = %377
  %386 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  %387 = call i32 @iterative_hash(ptr noundef nonnull %386, i64 noundef 4, i32 noundef 0) #21
  %388 = load i32, ptr %386, align 8, !tbaa !195
  switch i32 %388, label %396 [
    i32 116, label %389
    i32 113, label %389
    i32 117, label %389
  ], !prof !381

389:                                              ; preds = %385, %385, %385
  %390 = load ptr, ptr %8, align 8, !tbaa !323
  %391 = load i64, ptr %390, align 8
  %392 = trunc i64 %391 to i32
  %393 = lshr i32 %392, 21
  %394 = and i32 %393, 1
  %395 = add i32 %394, %387
  br label %396

396:                                              ; preds = %389, %385
  %397 = phi i32 [ %395, %389 ], [ %387, %385 ]
  %398 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 1
  %399 = load ptr, ptr %398, align 8, !tbaa !195
  %400 = call i32 @iterative_hash_expr(ptr noundef %399, i32 noundef %397) #21
  br label %441

401:                                              ; preds = %377
  %402 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  %403 = call i32 @iterative_hash(ptr noundef nonnull %402, i64 noundef 4, i32 noundef 0) #21
  %404 = load i32, ptr %402, align 8, !tbaa !195
  %405 = call zeroext i8 @commutative_tree_code(i32 noundef %404) #21
  %406 = icmp eq i8 %405, 0
  %407 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !195
  br i1 %406, label %413, label %409, !prof !382

409:                                              ; preds = %401
  %410 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 2
  %411 = load ptr, ptr %410, align 8, !tbaa !195
  %412 = call i32 @iterative_hash_exprs_commutative(ptr noundef %408, ptr noundef %411, i32 noundef %403) #21
  br label %441

413:                                              ; preds = %401
  %414 = call i32 @iterative_hash_expr(ptr noundef %408, i32 noundef %403) #21
  %415 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 2
  %416 = load ptr, ptr %415, align 8, !tbaa !195
  %417 = call i32 @iterative_hash_expr(ptr noundef %416, i32 noundef %414) #21
  br label %441

418:                                              ; preds = %377
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 59, ptr %3, align 4, !tbaa !199
  %419 = call i32 @iterative_hash(ptr noundef nonnull %3, i64 noundef 4, i32 noundef 0) #21
  %420 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  %421 = load ptr, ptr %420, align 8, !tbaa !195
  %422 = call i32 @iterative_hash_expr(ptr noundef %421, i32 noundef %419) #21
  %423 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 2
  %424 = load i64, ptr %423, align 8, !tbaa !195
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %438, label %426, !prof !383

426:                                              ; preds = %418
  %427 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 3
  br label %428

428:                                              ; preds = %428, %426
  %429 = phi i64 [ 0, %426 ], [ %435, %428 ]
  %430 = phi i32 [ %422, %426 ], [ %434, %428 ]
  %431 = load ptr, ptr %427, align 8, !tbaa !195
  %432 = getelementptr inbounds ptr, ptr %431, i64 %429
  %433 = load ptr, ptr %432, align 8, !tbaa !184
  %434 = call i32 @iterative_hash_expr(ptr noundef %433, i32 noundef %430) #21
  %435 = add nuw i64 %429, 1
  %436 = load i64, ptr %423, align 8, !tbaa !195
  %437 = icmp ult i64 %435, %436
  br i1 %437, label %428, label %438, !prof !384, !llvm.loop !385

438:                                              ; preds = %428, %418
  %439 = phi i32 [ %422, %418 ], [ %434, %428 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %441

440:                                              ; preds = %377
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 481, ptr noundef nonnull @.str.10) #21
  br label %441

441:                                              ; preds = %440, %438, %413, %409, %396, %381
  %442 = phi i32 [ 0, %440 ], [ %439, %438 ], [ %412, %409 ], [ %417, %413 ], [ %400, %396 ], [ %384, %381 ]
  %443 = icmp eq ptr %0, null
  br i1 %443, label %457, label %444, !prof !617

444:                                              ; preds = %441
  %445 = load i32, ptr %0, align 8
  %446 = and i32 %445, 254
  %447 = add nsw i32 %446, -10
  %448 = icmp ult i32 %447, -4
  br i1 %448, label %452, label %449, !prof !618

449:                                              ; preds = %444
  %450 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !195
  br label %452

452:                                              ; preds = %449, %444
  %453 = phi ptr [ %451, %449 ], [ null, %444 ]
  %454 = icmp eq ptr %453, null
  br i1 %454, label %457, label %455, !prof !619

455:                                              ; preds = %452
  %456 = call i32 @iterative_hash_expr(ptr noundef nonnull %453, i32 noundef %442) #21
  br label %457

457:                                              ; preds = %441, %452, %455
  %458 = phi i32 [ %442, %441 ], [ %456, %455 ], [ %442, %452 ]
  %459 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 3
  store i32 %458, ptr %459, align 8, !tbaa !314
  %460 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 4
  store ptr %4, ptr %460, align 8, !tbaa !320
  %461 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %462 = icmp eq ptr %461, null
  br i1 %462, label %470, label %463, !prof !620

463:                                              ; preds = %457
  %464 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %465 = and i32 %464, 8
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %470, label %467

467:                                              ; preds = %463
  %468 = call i64 @fwrite(ptr nonnull @.str.37, i64 5, i64 1, ptr nonnull %461)
  %469 = load ptr, ptr @dump_file, align 8, !tbaa !184
  call fastcc void @print_expr_hash_elt(ptr noundef %469, ptr noundef nonnull %4)
  br label %470

470:                                              ; preds = %467, %463, %457
  %471 = load i32, ptr %379, align 8, !tbaa !337
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %482, !prof !621

473:                                              ; preds = %470
  %474 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  %475 = load ptr, ptr %474, align 8, !tbaa !195
  %476 = load i64, ptr %475, align 8
  %477 = and i64 %476, 65535
  %478 = icmp eq i64 %477, 141
  br i1 %478, label %556, label %479, !prof !622

479:                                              ; preds = %473
  %480 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %475) #21
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %482, label %556, !prof !623

482:                                              ; preds = %479, %470
  %483 = load ptr, ptr @avail_exprs, align 8, !tbaa !184
  %484 = load i32, ptr %459, align 8, !tbaa !314
  %485 = icmp ne i8 %1, 0
  %486 = zext i1 %485 to i32
  %487 = call ptr @htab_find_slot_with_hash(ptr noundef %483, ptr noundef nonnull %4, i32 noundef %484, i32 noundef %486) #21
  %488 = icmp eq ptr %487, null
  br i1 %488, label %556, label %489, !prof !624

489:                                              ; preds = %482
  %490 = load ptr, ptr %487, align 8, !tbaa !184
  %491 = icmp eq ptr %490, null
  br i1 %491, label %492, label %520, !prof !625

492:                                              ; preds = %489
  %493 = call ptr @xmalloc(i64 noundef 80) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %493, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false), !tbaa.struct !626
  %494 = getelementptr inbounds %struct.expr_hash_elt, ptr %493, i64 0, i32 4
  store ptr %493, ptr %494, align 8, !tbaa !320
  store ptr %493, ptr %487, align 8, !tbaa !184
  %495 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %496 = icmp eq ptr %495, null
  br i1 %496, label %504, label %497, !prof !627

497:                                              ; preds = %492
  %498 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %499 = and i32 %498, 8
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %504, label %501

501:                                              ; preds = %497
  %502 = call i64 @fwrite(ptr nonnull @.str.38, i64 5, i64 1, ptr nonnull %495)
  %503 = load ptr, ptr @dump_file, align 8, !tbaa !184
  call fastcc void @print_expr_hash_elt(ptr noundef %503, ptr noundef %493)
  br label %504

504:                                              ; preds = %501, %497, %492
  %505 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !184
  %506 = icmp eq ptr %505, null
  br i1 %506, label %512, label %507, !prof !628

507:                                              ; preds = %504
  %508 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %505, i64 0, i32 1
  %509 = load i32, ptr %508, align 4, !tbaa !343
  %510 = load i32, ptr %505, align 8, !tbaa !345
  %511 = icmp eq i32 %509, %510
  br i1 %511, label %512, label %514, !prof !629

512:                                              ; preds = %504, %507
  %513 = call ptr @vec_heap_p_reserve(ptr noundef %505, i32 noundef 1) #21
  store ptr %513, ptr @avail_exprs_stack, align 8, !tbaa !184
  br label %514

514:                                              ; preds = %507, %512
  %515 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !184
  %516 = load i32, ptr %515, align 8, !tbaa !345
  %517 = add i32 %516, 1
  store i32 %517, ptr %515, align 8, !tbaa !345
  %518 = zext i32 %516 to i64
  %519 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %515, i64 0, i32 2, i64 %518
  store ptr %493, ptr %519, align 8, !tbaa !184
  br label %556

520:                                              ; preds = %489
  %521 = load ptr, ptr %490, align 8, !tbaa !379
  %522 = load i64, ptr %521, align 8
  %523 = and i64 %522, 65535
  %524 = icmp eq i64 %523, 141
  br i1 %524, label %525, label %543, !prof !630

525:                                              ; preds = %520
  %526 = getelementptr inbounds %struct.tree_ssa_name, ptr %521, i64 0, i32 3
  %527 = load i32, ptr %526, align 8, !tbaa !195
  %528 = load ptr, ptr @ssa_name_values, align 8
  %529 = icmp eq ptr %528, null
  br i1 %529, label %532, label %530, !prof !332

530:                                              ; preds = %525
  %531 = load i32, ptr %528, align 8, !tbaa !349
  br label %532

532:                                              ; preds = %525, %530
  %533 = phi i32 [ %531, %530 ], [ 0, %525 ]
  %534 = icmp ult i32 %527, %533
  br i1 %534, label %535, label %539, !prof !631

535:                                              ; preds = %532
  %536 = zext i32 %527 to i64
  %537 = getelementptr inbounds %struct.VEC_tree_base, ptr %528, i64 0, i32 2, i64 %536
  %538 = load ptr, ptr %537, align 8, !tbaa !184
  br label %539

539:                                              ; preds = %532, %535
  %540 = phi ptr [ %538, %535 ], [ null, %532 ]
  %541 = icmp eq ptr %540, null
  %542 = select i1 %541, ptr %521, ptr %540, !prof !632
  br label %543

543:                                              ; preds = %539, %520
  %544 = phi ptr [ %521, %520 ], [ %542, %539 ]
  %545 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %546 = icmp eq ptr %545, null
  br i1 %546, label %556, label %547, !prof !633

547:                                              ; preds = %543
  %548 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %549 = and i32 %548, 8
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %556, label %551

551:                                              ; preds = %547
  %552 = call i64 @fwrite(ptr nonnull @.str.39, i64 6, i64 1, ptr nonnull %545)
  %553 = load ptr, ptr @dump_file, align 8, !tbaa !184
  call void @print_generic_expr(ptr noundef %553, ptr noundef nonnull %544, i32 noundef 0) #21
  %554 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %555 = call i32 @fputc(i32 10, ptr %554)
  br label %556

556:                                              ; preds = %543, %547, %551, %482, %473, %479, %514
  %557 = phi ptr [ null, %514 ], [ null, %479 ], [ null, %473 ], [ null, %482 ], [ %544, %551 ], [ %544, %547 ], [ %544, %543 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #21
  ret ptr %557
}

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @may_propagate_copy_into_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_gimple_expr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @label_to_block_fn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @invert_truthvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @record_conditions(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #13 !prof !634 !PGOFuncName !635 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !199
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %424, !prof !534

9:                                                ; preds = %3
  %10 = trunc i64 %4 to i16
  %11 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !195
  %13 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !195
  switch i16 %10, label %357 [
    i16 97, label %15
    i16 99, label %15
    i16 100, label %93
    i16 98, label %93
    i16 101, label %124
    i16 103, label %183
    i16 105, label %264
    i16 107, label %264
    i16 109, label %299
    i16 110, label %328
  ], !prof !535

15:                                               ; preds = %9, %9
  %16 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !195
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %55 [
    i16 9, label %26
    i16 13, label %20
    i16 14, label %20
  ], !prof !536

20:                                               ; preds = %15, %15
  %21 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !195
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 9
  br i1 %25, label %26, label %55

26:                                               ; preds = %20, %15
  %27 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 6, ptr %27, align 8, !tbaa !374
  %28 = tail call ptr @xmalloc(i64 noundef 336) #21
  %29 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !248
  %30 = getelementptr inbounds %struct.cond_equivalence, ptr %28, i64 4
  %31 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 104), align 4, !tbaa !199
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %34

34:                                               ; preds = %26, %33
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %35, ptr %30, align 8, !tbaa !323
  %36 = getelementptr inbounds %struct.cond_equivalence, ptr %28, i64 4, i32 0, i32 1
  store i32 2, ptr %36, align 8, !tbaa !326
  %37 = getelementptr inbounds %struct.cond_equivalence, ptr %28, i64 4, i32 0, i32 2
  store i32 104, ptr %37, align 8, !tbaa !195
  %38 = getelementptr inbounds %struct.cond_equivalence, ptr %28, i64 4, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %38, align 8, !tbaa !195
  %39 = getelementptr inbounds %struct.cond_equivalence, ptr %28, i64 4, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %39, align 8, !tbaa !195
  %40 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %41 = getelementptr inbounds %struct.cond_equivalence, ptr %28, i64 4, i32 1
  store ptr %40, ptr %41, align 8, !tbaa !376
  %42 = load ptr, ptr %29, align 8, !tbaa !248
  %43 = getelementptr inbounds %struct.cond_equivalence, ptr %42, i64 5
  %44 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 110), align 4, !tbaa !199
  %45 = icmp eq i32 %44, 5
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %47

47:                                               ; preds = %34, %46
  %48 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %48, ptr %43, align 8, !tbaa !323
  %49 = getelementptr inbounds %struct.cond_equivalence, ptr %42, i64 5, i32 0, i32 1
  store i32 2, ptr %49, align 8, !tbaa !326
  %50 = getelementptr inbounds %struct.cond_equivalence, ptr %42, i64 5, i32 0, i32 2
  store i32 110, ptr %50, align 8, !tbaa !195
  %51 = getelementptr inbounds %struct.cond_equivalence, ptr %42, i64 5, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %51, align 8, !tbaa !195
  %52 = getelementptr inbounds %struct.cond_equivalence, ptr %42, i64 5, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %52, align 8, !tbaa !195
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %54 = getelementptr inbounds %struct.cond_equivalence, ptr %42, i64 5, i32 1
  store ptr %53, ptr %54, align 8, !tbaa !376
  br label %59

55:                                               ; preds = %20, %15
  %56 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %56, align 8, !tbaa !374
  %57 = tail call ptr @xmalloc(i64 noundef 224) #21
  %58 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !248
  br label %59

59:                                               ; preds = %55, %47
  %60 = load i64, ptr %1, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 97
  %63 = select i1 %62, i32 98, i32 100, !prof !537
  %64 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !248
  %66 = getelementptr inbounds %struct.cond_equivalence, ptr %65, i64 2
  %67 = zext nneg i32 %63 to i64
  %68 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !199
  %70 = icmp eq i32 %69, 5
  br i1 %70, label %72, label %71, !prof !538

71:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %72

72:                                               ; preds = %59, %71
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %73, ptr %66, align 8, !tbaa !323
  %74 = getelementptr inbounds %struct.cond_equivalence, ptr %65, i64 2, i32 0, i32 1
  store i32 2, ptr %74, align 8, !tbaa !326
  %75 = getelementptr inbounds %struct.cond_equivalence, ptr %65, i64 2, i32 0, i32 2
  store i32 %63, ptr %75, align 8, !tbaa !195
  %76 = getelementptr inbounds %struct.cond_equivalence, ptr %65, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %76, align 8, !tbaa !195
  %77 = getelementptr inbounds %struct.cond_equivalence, ptr %65, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %77, align 8, !tbaa !195
  %78 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %79 = getelementptr inbounds %struct.cond_equivalence, ptr %65, i64 2, i32 1
  store ptr %78, ptr %79, align 8, !tbaa !376
  %80 = load ptr, ptr %64, align 8, !tbaa !248
  %81 = getelementptr inbounds %struct.cond_equivalence, ptr %80, i64 3
  %82 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 102), align 4, !tbaa !199
  %83 = icmp eq i32 %82, 5
  br i1 %83, label %85, label %84, !prof !538

84:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %85

85:                                               ; preds = %72, %84
  %86 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %86, ptr %81, align 8, !tbaa !323
  %87 = getelementptr inbounds %struct.cond_equivalence, ptr %80, i64 3, i32 0, i32 1
  store i32 2, ptr %87, align 8, !tbaa !326
  %88 = getelementptr inbounds %struct.cond_equivalence, ptr %80, i64 3, i32 0, i32 2
  store i32 102, ptr %88, align 8, !tbaa !195
  %89 = getelementptr inbounds %struct.cond_equivalence, ptr %80, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %89, align 8, !tbaa !195
  %90 = getelementptr inbounds %struct.cond_equivalence, ptr %80, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %90, align 8, !tbaa !195
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %92 = getelementptr inbounds %struct.cond_equivalence, ptr %80, i64 3, i32 1
  store ptr %91, ptr %92, align 8, !tbaa !376
  br label %361

93:                                               ; preds = %9, %9
  %94 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !195
  %96 = load i64, ptr %95, align 8
  %97 = trunc i64 %96 to i16
  switch i16 %97, label %120 [
    i16 9, label %104
    i16 13, label %98
    i16 14, label %98
  ], !prof !536

98:                                               ; preds = %93, %93
  %99 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !195
  %101 = load i64, ptr %100, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 9
  br i1 %103, label %104, label %120

104:                                              ; preds = %98, %93
  %105 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 3, ptr %105, align 8, !tbaa !374
  %106 = tail call ptr @xmalloc(i64 noundef 168) #21
  %107 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %106, ptr %107, align 8, !tbaa !248
  %108 = getelementptr inbounds %struct.cond_equivalence, ptr %106, i64 2
  %109 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 104), align 4, !tbaa !199
  %110 = icmp eq i32 %109, 5
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %112

112:                                              ; preds = %104, %111
  %113 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %113, ptr %108, align 8, !tbaa !323
  %114 = getelementptr inbounds %struct.cond_equivalence, ptr %106, i64 2, i32 0, i32 1
  store i32 2, ptr %114, align 8, !tbaa !326
  %115 = getelementptr inbounds %struct.cond_equivalence, ptr %106, i64 2, i32 0, i32 2
  store i32 104, ptr %115, align 8, !tbaa !195
  %116 = getelementptr inbounds %struct.cond_equivalence, ptr %106, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %116, align 8, !tbaa !195
  %117 = getelementptr inbounds %struct.cond_equivalence, ptr %106, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %117, align 8, !tbaa !195
  %118 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %119 = getelementptr inbounds %struct.cond_equivalence, ptr %106, i64 2, i32 1
  store ptr %118, ptr %119, align 8, !tbaa !376
  br label %361

120:                                              ; preds = %98, %93
  %121 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 2, ptr %121, align 8, !tbaa !374
  %122 = tail call ptr @xmalloc(i64 noundef 112) #21
  %123 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %122, ptr %123, align 8, !tbaa !248
  br label %361

124:                                              ; preds = %9
  %125 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !195
  %127 = load i64, ptr %126, align 8
  %128 = trunc i64 %127 to i16
  switch i16 %128, label %151 [
    i16 9, label %135
    i16 13, label %129
    i16 14, label %129
  ], !prof !539

129:                                              ; preds = %124, %124
  %130 = getelementptr inbounds %struct.tree_common, ptr %126, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !195
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 9
  br i1 %134, label %135, label %151

135:                                              ; preds = %129, %124
  %136 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 5, ptr %136, align 8, !tbaa !374
  %137 = tail call ptr @xmalloc(i64 noundef 280) #21
  %138 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %137, ptr %138, align 8, !tbaa !248
  %139 = getelementptr inbounds %struct.cond_equivalence, ptr %137, i64 4
  %140 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 104), align 4, !tbaa !199
  %141 = icmp eq i32 %140, 5
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %143

143:                                              ; preds = %135, %142
  %144 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %144, ptr %139, align 8, !tbaa !323
  %145 = getelementptr inbounds %struct.cond_equivalence, ptr %137, i64 4, i32 0, i32 1
  store i32 2, ptr %145, align 8, !tbaa !326
  %146 = getelementptr inbounds %struct.cond_equivalence, ptr %137, i64 4, i32 0, i32 2
  store i32 104, ptr %146, align 8, !tbaa !195
  %147 = getelementptr inbounds %struct.cond_equivalence, ptr %137, i64 4, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %147, align 8, !tbaa !195
  %148 = getelementptr inbounds %struct.cond_equivalence, ptr %137, i64 4, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %148, align 8, !tbaa !195
  %149 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %150 = getelementptr inbounds %struct.cond_equivalence, ptr %137, i64 4, i32 1
  store ptr %149, ptr %150, align 8, !tbaa !376
  br label %155

151:                                              ; preds = %129, %124
  %152 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %152, align 8, !tbaa !374
  %153 = tail call ptr @xmalloc(i64 noundef 224) #21
  %154 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %153, ptr %154, align 8, !tbaa !248
  br label %155

155:                                              ; preds = %151, %143
  %156 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !248
  %158 = getelementptr inbounds %struct.cond_equivalence, ptr %157, i64 2
  %159 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 98), align 4, !tbaa !199
  %160 = icmp eq i32 %159, 5
  br i1 %160, label %162, label %161, !prof !540

161:                                              ; preds = %155
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %162

162:                                              ; preds = %155, %161
  %163 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %163, ptr %158, align 8, !tbaa !323
  %164 = getelementptr inbounds %struct.cond_equivalence, ptr %157, i64 2, i32 0, i32 1
  store i32 2, ptr %164, align 8, !tbaa !326
  %165 = getelementptr inbounds %struct.cond_equivalence, ptr %157, i64 2, i32 0, i32 2
  store i32 98, ptr %165, align 8, !tbaa !195
  %166 = getelementptr inbounds %struct.cond_equivalence, ptr %157, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %166, align 8, !tbaa !195
  %167 = getelementptr inbounds %struct.cond_equivalence, ptr %157, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %167, align 8, !tbaa !195
  %168 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %169 = getelementptr inbounds %struct.cond_equivalence, ptr %157, i64 2, i32 1
  store ptr %168, ptr %169, align 8, !tbaa !376
  %170 = load ptr, ptr %156, align 8, !tbaa !248
  %171 = getelementptr inbounds %struct.cond_equivalence, ptr %170, i64 3
  %172 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 100), align 4, !tbaa !199
  %173 = icmp eq i32 %172, 5
  br i1 %173, label %175, label %174, !prof !540

174:                                              ; preds = %162
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %175

175:                                              ; preds = %162, %174
  %176 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %176, ptr %171, align 8, !tbaa !323
  %177 = getelementptr inbounds %struct.cond_equivalence, ptr %170, i64 3, i32 0, i32 1
  store i32 2, ptr %177, align 8, !tbaa !326
  %178 = getelementptr inbounds %struct.cond_equivalence, ptr %170, i64 3, i32 0, i32 2
  store i32 100, ptr %178, align 8, !tbaa !195
  %179 = getelementptr inbounds %struct.cond_equivalence, ptr %170, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %179, align 8, !tbaa !195
  %180 = getelementptr inbounds %struct.cond_equivalence, ptr %170, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %180, align 8, !tbaa !195
  %181 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %182 = getelementptr inbounds %struct.cond_equivalence, ptr %170, i64 3, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !376
  br label %361

183:                                              ; preds = %9
  %184 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 8, ptr %184, align 8, !tbaa !374
  %185 = tail call ptr @xmalloc(i64 noundef 448) #21
  %186 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %185, ptr %186, align 8, !tbaa !248
  %187 = getelementptr inbounds %struct.cond_equivalence, ptr %185, i64 2
  %188 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 102), align 4, !tbaa !199
  %189 = icmp eq i32 %188, 5
  br i1 %189, label %191, label %190

190:                                              ; preds = %183
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %191

191:                                              ; preds = %183, %190
  %192 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %192, ptr %187, align 8, !tbaa !323
  %193 = getelementptr inbounds %struct.cond_equivalence, ptr %185, i64 2, i32 0, i32 1
  store i32 2, ptr %193, align 8, !tbaa !326
  %194 = getelementptr inbounds %struct.cond_equivalence, ptr %185, i64 2, i32 0, i32 2
  store i32 102, ptr %194, align 8, !tbaa !195
  %195 = getelementptr inbounds %struct.cond_equivalence, ptr %185, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %195, align 8, !tbaa !195
  %196 = getelementptr inbounds %struct.cond_equivalence, ptr %185, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %196, align 8, !tbaa !195
  %197 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %198 = getelementptr inbounds %struct.cond_equivalence, ptr %185, i64 2, i32 1
  store ptr %197, ptr %198, align 8, !tbaa !376
  %199 = load ptr, ptr %186, align 8, !tbaa !248
  %200 = getelementptr inbounds %struct.cond_equivalence, ptr %199, i64 3
  %201 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 106), align 4, !tbaa !199
  %202 = icmp eq i32 %201, 5
  br i1 %202, label %204, label %203

203:                                              ; preds = %191
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %204

204:                                              ; preds = %191, %203
  %205 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %205, ptr %200, align 8, !tbaa !323
  %206 = getelementptr inbounds %struct.cond_equivalence, ptr %199, i64 3, i32 0, i32 1
  store i32 2, ptr %206, align 8, !tbaa !326
  %207 = getelementptr inbounds %struct.cond_equivalence, ptr %199, i64 3, i32 0, i32 2
  store i32 106, ptr %207, align 8, !tbaa !195
  %208 = getelementptr inbounds %struct.cond_equivalence, ptr %199, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %208, align 8, !tbaa !195
  %209 = getelementptr inbounds %struct.cond_equivalence, ptr %199, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %209, align 8, !tbaa !195
  %210 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %211 = getelementptr inbounds %struct.cond_equivalence, ptr %199, i64 3, i32 1
  store ptr %210, ptr %211, align 8, !tbaa !376
  %212 = load ptr, ptr %186, align 8, !tbaa !248
  %213 = getelementptr inbounds %struct.cond_equivalence, ptr %212, i64 4
  %214 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 108), align 4, !tbaa !199
  %215 = icmp eq i32 %214, 5
  br i1 %215, label %217, label %216

216:                                              ; preds = %204
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %217

217:                                              ; preds = %204, %216
  %218 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %218, ptr %213, align 8, !tbaa !323
  %219 = getelementptr inbounds %struct.cond_equivalence, ptr %212, i64 4, i32 0, i32 1
  store i32 2, ptr %219, align 8, !tbaa !326
  %220 = getelementptr inbounds %struct.cond_equivalence, ptr %212, i64 4, i32 0, i32 2
  store i32 108, ptr %220, align 8, !tbaa !195
  %221 = getelementptr inbounds %struct.cond_equivalence, ptr %212, i64 4, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %221, align 8, !tbaa !195
  %222 = getelementptr inbounds %struct.cond_equivalence, ptr %212, i64 4, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %222, align 8, !tbaa !195
  %223 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %224 = getelementptr inbounds %struct.cond_equivalence, ptr %212, i64 4, i32 1
  store ptr %223, ptr %224, align 8, !tbaa !376
  %225 = load ptr, ptr %186, align 8, !tbaa !248
  %226 = getelementptr inbounds %struct.cond_equivalence, ptr %225, i64 5
  %227 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 109), align 4, !tbaa !199
  %228 = icmp eq i32 %227, 5
  br i1 %228, label %230, label %229

229:                                              ; preds = %217
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %230

230:                                              ; preds = %217, %229
  %231 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %231, ptr %226, align 8, !tbaa !323
  %232 = getelementptr inbounds %struct.cond_equivalence, ptr %225, i64 5, i32 0, i32 1
  store i32 2, ptr %232, align 8, !tbaa !326
  %233 = getelementptr inbounds %struct.cond_equivalence, ptr %225, i64 5, i32 0, i32 2
  store i32 109, ptr %233, align 8, !tbaa !195
  %234 = getelementptr inbounds %struct.cond_equivalence, ptr %225, i64 5, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %234, align 8, !tbaa !195
  %235 = getelementptr inbounds %struct.cond_equivalence, ptr %225, i64 5, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %235, align 8, !tbaa !195
  %236 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %237 = getelementptr inbounds %struct.cond_equivalence, ptr %225, i64 5, i32 1
  store ptr %236, ptr %237, align 8, !tbaa !376
  %238 = load ptr, ptr %186, align 8, !tbaa !248
  %239 = getelementptr inbounds %struct.cond_equivalence, ptr %238, i64 6
  %240 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 105), align 4, !tbaa !199
  %241 = icmp eq i32 %240, 5
  br i1 %241, label %243, label %242

242:                                              ; preds = %230
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %243

243:                                              ; preds = %230, %242
  %244 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %244, ptr %239, align 8, !tbaa !323
  %245 = getelementptr inbounds %struct.cond_equivalence, ptr %238, i64 6, i32 0, i32 1
  store i32 2, ptr %245, align 8, !tbaa !326
  %246 = getelementptr inbounds %struct.cond_equivalence, ptr %238, i64 6, i32 0, i32 2
  store i32 105, ptr %246, align 8, !tbaa !195
  %247 = getelementptr inbounds %struct.cond_equivalence, ptr %238, i64 6, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %247, align 8, !tbaa !195
  %248 = getelementptr inbounds %struct.cond_equivalence, ptr %238, i64 6, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %248, align 8, !tbaa !195
  %249 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %250 = getelementptr inbounds %struct.cond_equivalence, ptr %238, i64 6, i32 1
  store ptr %249, ptr %250, align 8, !tbaa !376
  %251 = load ptr, ptr %186, align 8, !tbaa !248
  %252 = getelementptr inbounds %struct.cond_equivalence, ptr %251, i64 7
  %253 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 107), align 4, !tbaa !199
  %254 = icmp eq i32 %253, 5
  br i1 %254, label %256, label %255

255:                                              ; preds = %243
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %256

256:                                              ; preds = %243, %255
  %257 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %257, ptr %252, align 8, !tbaa !323
  %258 = getelementptr inbounds %struct.cond_equivalence, ptr %251, i64 7, i32 0, i32 1
  store i32 2, ptr %258, align 8, !tbaa !326
  %259 = getelementptr inbounds %struct.cond_equivalence, ptr %251, i64 7, i32 0, i32 2
  store i32 107, ptr %259, align 8, !tbaa !195
  %260 = getelementptr inbounds %struct.cond_equivalence, ptr %251, i64 7, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %260, align 8, !tbaa !195
  %261 = getelementptr inbounds %struct.cond_equivalence, ptr %251, i64 7, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %261, align 8, !tbaa !195
  %262 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %263 = getelementptr inbounds %struct.cond_equivalence, ptr %251, i64 7, i32 1
  store ptr %262, ptr %263, align 8, !tbaa !376
  br label %361

264:                                              ; preds = %9, %9
  %265 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %265, align 8, !tbaa !374
  %266 = tail call ptr @xmalloc(i64 noundef 224) #21
  %267 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %266, ptr %267, align 8, !tbaa !248
  %268 = load i64, ptr %1, align 8
  %269 = and i64 %268, 65535
  %270 = icmp eq i64 %269, 105
  %271 = select i1 %270, i32 106, i32 108
  %272 = getelementptr inbounds %struct.cond_equivalence, ptr %266, i64 2
  %273 = zext nneg i32 %271 to i64
  %274 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !199
  %276 = icmp eq i32 %275, 5
  br i1 %276, label %278, label %277

277:                                              ; preds = %264
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %278

278:                                              ; preds = %264, %277
  %279 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %279, ptr %272, align 8, !tbaa !323
  %280 = getelementptr inbounds %struct.cond_equivalence, ptr %266, i64 2, i32 0, i32 1
  store i32 2, ptr %280, align 8, !tbaa !326
  %281 = getelementptr inbounds %struct.cond_equivalence, ptr %266, i64 2, i32 0, i32 2
  store i32 %271, ptr %281, align 8, !tbaa !195
  %282 = getelementptr inbounds %struct.cond_equivalence, ptr %266, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %282, align 8, !tbaa !195
  %283 = getelementptr inbounds %struct.cond_equivalence, ptr %266, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %283, align 8, !tbaa !195
  %284 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %285 = getelementptr inbounds %struct.cond_equivalence, ptr %266, i64 2, i32 1
  store ptr %284, ptr %285, align 8, !tbaa !376
  %286 = load ptr, ptr %267, align 8, !tbaa !248
  %287 = getelementptr inbounds %struct.cond_equivalence, ptr %286, i64 3
  %288 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 102), align 4, !tbaa !199
  %289 = icmp eq i32 %288, 5
  br i1 %289, label %291, label %290

290:                                              ; preds = %278
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %291

291:                                              ; preds = %278, %290
  %292 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %292, ptr %287, align 8, !tbaa !323
  %293 = getelementptr inbounds %struct.cond_equivalence, ptr %286, i64 3, i32 0, i32 1
  store i32 2, ptr %293, align 8, !tbaa !326
  %294 = getelementptr inbounds %struct.cond_equivalence, ptr %286, i64 3, i32 0, i32 2
  store i32 102, ptr %294, align 8, !tbaa !195
  %295 = getelementptr inbounds %struct.cond_equivalence, ptr %286, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %295, align 8, !tbaa !195
  %296 = getelementptr inbounds %struct.cond_equivalence, ptr %286, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %296, align 8, !tbaa !195
  %297 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %298 = getelementptr inbounds %struct.cond_equivalence, ptr %286, i64 3, i32 1
  store ptr %297, ptr %298, align 8, !tbaa !376
  br label %361

299:                                              ; preds = %9
  %300 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %300, align 8, !tbaa !374
  %301 = tail call ptr @xmalloc(i64 noundef 224) #21
  %302 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %301, ptr %302, align 8, !tbaa !248
  %303 = getelementptr inbounds %struct.cond_equivalence, ptr %301, i64 2
  %304 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 106), align 4, !tbaa !199
  %305 = icmp eq i32 %304, 5
  br i1 %305, label %307, label %306

306:                                              ; preds = %299
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %307

307:                                              ; preds = %299, %306
  %308 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %308, ptr %303, align 8, !tbaa !323
  %309 = getelementptr inbounds %struct.cond_equivalence, ptr %301, i64 2, i32 0, i32 1
  store i32 2, ptr %309, align 8, !tbaa !326
  %310 = getelementptr inbounds %struct.cond_equivalence, ptr %301, i64 2, i32 0, i32 2
  store i32 106, ptr %310, align 8, !tbaa !195
  %311 = getelementptr inbounds %struct.cond_equivalence, ptr %301, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %311, align 8, !tbaa !195
  %312 = getelementptr inbounds %struct.cond_equivalence, ptr %301, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %312, align 8, !tbaa !195
  %313 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %314 = getelementptr inbounds %struct.cond_equivalence, ptr %301, i64 2, i32 1
  store ptr %313, ptr %314, align 8, !tbaa !376
  %315 = load ptr, ptr %302, align 8, !tbaa !248
  %316 = getelementptr inbounds %struct.cond_equivalence, ptr %315, i64 3
  %317 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 108), align 4, !tbaa !199
  %318 = icmp eq i32 %317, 5
  br i1 %318, label %320, label %319

319:                                              ; preds = %307
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %320

320:                                              ; preds = %307, %319
  %321 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %321, ptr %316, align 8, !tbaa !323
  %322 = getelementptr inbounds %struct.cond_equivalence, ptr %315, i64 3, i32 0, i32 1
  store i32 2, ptr %322, align 8, !tbaa !326
  %323 = getelementptr inbounds %struct.cond_equivalence, ptr %315, i64 3, i32 0, i32 2
  store i32 108, ptr %323, align 8, !tbaa !195
  %324 = getelementptr inbounds %struct.cond_equivalence, ptr %315, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %324, align 8, !tbaa !195
  %325 = getelementptr inbounds %struct.cond_equivalence, ptr %315, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %325, align 8, !tbaa !195
  %326 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %327 = getelementptr inbounds %struct.cond_equivalence, ptr %315, i64 3, i32 1
  store ptr %326, ptr %327, align 8, !tbaa !376
  br label %361

328:                                              ; preds = %9
  %329 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 4, ptr %329, align 8, !tbaa !374
  %330 = tail call ptr @xmalloc(i64 noundef 224) #21
  %331 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %330, ptr %331, align 8, !tbaa !248
  %332 = getelementptr inbounds %struct.cond_equivalence, ptr %330, i64 2
  %333 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 102), align 4, !tbaa !199
  %334 = icmp eq i32 %333, 5
  br i1 %334, label %336, label %335

335:                                              ; preds = %328
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %336

336:                                              ; preds = %328, %335
  %337 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %337, ptr %332, align 8, !tbaa !323
  %338 = getelementptr inbounds %struct.cond_equivalence, ptr %330, i64 2, i32 0, i32 1
  store i32 2, ptr %338, align 8, !tbaa !326
  %339 = getelementptr inbounds %struct.cond_equivalence, ptr %330, i64 2, i32 0, i32 2
  store i32 102, ptr %339, align 8, !tbaa !195
  %340 = getelementptr inbounds %struct.cond_equivalence, ptr %330, i64 2, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %340, align 8, !tbaa !195
  %341 = getelementptr inbounds %struct.cond_equivalence, ptr %330, i64 2, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %341, align 8, !tbaa !195
  %342 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %343 = getelementptr inbounds %struct.cond_equivalence, ptr %330, i64 2, i32 1
  store ptr %342, ptr %343, align 8, !tbaa !376
  %344 = load ptr, ptr %331, align 8, !tbaa !248
  %345 = getelementptr inbounds %struct.cond_equivalence, ptr %344, i64 3
  %346 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 104), align 4, !tbaa !199
  %347 = icmp eq i32 %346, 5
  br i1 %347, label %349, label %348

348:                                              ; preds = %336
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1108, ptr noundef nonnull @.str.10) #21
  br label %349

349:                                              ; preds = %336, %348
  %350 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %350, ptr %345, align 8, !tbaa !323
  %351 = getelementptr inbounds %struct.cond_equivalence, ptr %344, i64 3, i32 0, i32 1
  store i32 2, ptr %351, align 8, !tbaa !326
  %352 = getelementptr inbounds %struct.cond_equivalence, ptr %344, i64 3, i32 0, i32 2
  store i32 104, ptr %352, align 8, !tbaa !195
  %353 = getelementptr inbounds %struct.cond_equivalence, ptr %344, i64 3, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %353, align 8, !tbaa !195
  %354 = getelementptr inbounds %struct.cond_equivalence, ptr %344, i64 3, i32 0, i32 2, i32 0, i32 2
  store ptr %14, ptr %354, align 8, !tbaa !195
  %355 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %356 = getelementptr inbounds %struct.cond_equivalence, ptr %344, i64 3, i32 1
  store ptr %355, ptr %356, align 8, !tbaa !376
  br label %361

357:                                              ; preds = %9
  %358 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 3
  store i32 2, ptr %358, align 8, !tbaa !374
  %359 = tail call ptr @xmalloc(i64 noundef 112) #21
  %360 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  store ptr %359, ptr %360, align 8, !tbaa !248
  br label %361

361:                                              ; preds = %112, %120, %357, %349, %320, %291, %256, %175, %85
  %362 = getelementptr inbounds %struct.edge_info, ptr %0, i64 0, i32 2
  %363 = load ptr, ptr %362, align 8, !tbaa !248
  %364 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %364, ptr %363, align 8, !tbaa !323
  %365 = load i64, ptr %1, align 8
  %366 = and i64 %365, 65535
  %367 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %366
  %368 = load i32, ptr %367, align 4, !tbaa !199
  %369 = icmp eq i32 %368, 5
  br i1 %369, label %370, label %380, !prof !541

370:                                              ; preds = %361
  %371 = getelementptr inbounds %struct.hashable_expr, ptr %363, i64 0, i32 1
  store i32 2, ptr %371, align 8, !tbaa !326
  %372 = load i64, ptr %1, align 8
  %373 = trunc i64 %372 to i32
  %374 = and i32 %373, 65535
  %375 = getelementptr inbounds %struct.hashable_expr, ptr %363, i64 0, i32 2
  store i32 %374, ptr %375, align 8, !tbaa !195
  %376 = load ptr, ptr %11, align 8, !tbaa !195
  %377 = getelementptr inbounds %struct.hashable_expr, ptr %363, i64 0, i32 2, i32 0, i32 1
  store ptr %376, ptr %377, align 8, !tbaa !195
  %378 = load ptr, ptr %13, align 8, !tbaa !195
  %379 = getelementptr inbounds %struct.hashable_expr, ptr %363, i64 0, i32 2, i32 0, i32 2
  store ptr %378, ptr %379, align 8, !tbaa !195
  br label %388

380:                                              ; preds = %361
  %381 = icmp eq i64 %366, 96
  br i1 %381, label %382, label %387

382:                                              ; preds = %380
  %383 = getelementptr inbounds %struct.hashable_expr, ptr %363, i64 0, i32 1
  store i32 1, ptr %383, align 8, !tbaa !326
  %384 = getelementptr inbounds %struct.hashable_expr, ptr %363, i64 0, i32 2
  store i32 96, ptr %384, align 8, !tbaa !195
  %385 = load ptr, ptr %11, align 8, !tbaa !195
  %386 = getelementptr inbounds %struct.hashable_expr, ptr %363, i64 0, i32 2, i32 0, i32 1
  store ptr %385, ptr %386, align 8, !tbaa !195
  br label %388

387:                                              ; preds = %380
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 311, ptr noundef nonnull @.str.10) #21
  br label %388

388:                                              ; preds = %370, %382, %387
  %389 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !184
  %390 = load ptr, ptr %362, align 8, !tbaa !248
  %391 = getelementptr inbounds %struct.cond_equivalence, ptr %390, i64 0, i32 1
  store ptr %389, ptr %391, align 8, !tbaa !376
  %392 = getelementptr inbounds %struct.cond_equivalence, ptr %390, i64 1
  %393 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %393, ptr %392, align 8, !tbaa !323
  %394 = load i64, ptr %2, align 8
  %395 = and i64 %394, 65535
  %396 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %395
  %397 = load i32, ptr %396, align 4, !tbaa !199
  %398 = icmp eq i32 %397, 5
  br i1 %398, label %399, label %411, !prof !541

399:                                              ; preds = %388
  %400 = getelementptr inbounds %struct.cond_equivalence, ptr %390, i64 1, i32 0, i32 1
  store i32 2, ptr %400, align 8, !tbaa !326
  %401 = load i64, ptr %2, align 8
  %402 = trunc i64 %401 to i32
  %403 = and i32 %402, 65535
  %404 = getelementptr inbounds %struct.cond_equivalence, ptr %390, i64 1, i32 0, i32 2
  store i32 %403, ptr %404, align 8, !tbaa !195
  %405 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %406 = load ptr, ptr %405, align 8, !tbaa !195
  %407 = getelementptr inbounds %struct.cond_equivalence, ptr %390, i64 1, i32 0, i32 2, i32 0, i32 1
  store ptr %406, ptr %407, align 8, !tbaa !195
  %408 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %409 = load ptr, ptr %408, align 8, !tbaa !195
  %410 = getelementptr inbounds %struct.cond_equivalence, ptr %390, i64 1, i32 0, i32 2, i32 0, i32 2
  store ptr %409, ptr %410, align 8, !tbaa !195
  br label %420

411:                                              ; preds = %388
  %412 = icmp eq i64 %395, 96
  br i1 %412, label %413, label %419

413:                                              ; preds = %411
  %414 = getelementptr inbounds %struct.cond_equivalence, ptr %390, i64 1, i32 0, i32 1
  store i32 1, ptr %414, align 8, !tbaa !326
  %415 = getelementptr inbounds %struct.cond_equivalence, ptr %390, i64 1, i32 0, i32 2
  store i32 96, ptr %415, align 8, !tbaa !195
  %416 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %417 = load ptr, ptr %416, align 8, !tbaa !195
  %418 = getelementptr inbounds %struct.cond_equivalence, ptr %390, i64 1, i32 0, i32 2, i32 0, i32 1
  store ptr %417, ptr %418, align 8, !tbaa !195
  br label %420

419:                                              ; preds = %411
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 311, ptr noundef nonnull @.str.10) #21
  br label %420

420:                                              ; preds = %399, %413, %419
  %421 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !184
  %422 = load ptr, ptr %362, align 8, !tbaa !248
  %423 = getelementptr inbounds %struct.cond_equivalence, ptr %422, i64 1, i32 1
  store ptr %421, ptr %423, align 8, !tbaa !376
  br label %424

424:                                              ; preds = %3, %420
  ret void
}

declare zeroext i8 @potentially_threadable_block(ptr noundef) local_unnamed_addr #3

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @record_const_or_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !636 !PGOFuncName !637 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !195
  %5 = load ptr, ptr @ssa_name_values, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !638

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 8, !tbaa !349
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %2 ]
  %11 = icmp ult i32 %4, %10
  br i1 %11, label %12, label %16, !prof !639

12:                                               ; preds = %9
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds %struct.VEC_tree_base, ptr %5, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !184
  br label %16

16:                                               ; preds = %9, %12
  %17 = phi ptr [ %15, %12 ], [ null, %9 ]
  %18 = load i64, ptr %0, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %22, label %21, !prof !639

21:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1320, ptr noundef nonnull @.str.10) #21
  br label %22

22:                                               ; preds = %16, %21
  %23 = load i64, ptr %1, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %44, !prof !638

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !195
  %29 = load ptr, ptr @ssa_name_values, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %29, align 8, !tbaa !349
  br label %33

33:                                               ; preds = %26, %31
  %34 = phi i32 [ %32, %31 ], [ 0, %26 ]
  %35 = icmp ult i32 %28, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = zext i32 %28 to i64
  %38 = getelementptr inbounds %struct.VEC_tree_base, ptr %29, i64 0, i32 2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !184
  br label %40

40:                                               ; preds = %33, %36
  %41 = phi ptr [ %39, %36 ], [ null, %33 ]
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr %1, ptr %41
  br label %44

44:                                               ; preds = %40, %22
  %45 = phi ptr [ %43, %40 ], [ %1, %22 ]
  tail call void @set_ssa_name_value(ptr noundef nonnull %0, ptr noundef %45) #21
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48, !prof !370

48:                                               ; preds = %44
  %49 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %50 = and i32 %49, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 10, i64 1, ptr nonnull %46)
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !184
  tail call void @print_generic_expr(ptr noundef %54, ptr noundef nonnull %0, i32 noundef 0) #21
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %56 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 3, i64 1, ptr %55)
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !184
  tail call void @print_generic_expr(ptr noundef %57, ptr noundef %45, i32 noundef 0) #21
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %59 = tail call i32 @fputc(i32 10, ptr %58)
  br label %60

60:                                               ; preds = %52, %48, %44
  %61 = load ptr, ptr @const_and_copies_stack, align 8, !tbaa !184
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63, !prof !371

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.VEC_tree_base, ptr %61, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !347
  %66 = load i32, ptr %61, align 8, !tbaa !349
  %67 = sub i32 %65, %66
  %68 = icmp ult i32 %67, 2
  br i1 %68, label %69, label %71, !prof !372

69:                                               ; preds = %63, %60
  %70 = tail call ptr @vec_heap_p_reserve(ptr noundef %61, i32 noundef 2) #21
  store ptr %70, ptr @const_and_copies_stack, align 8, !tbaa !184
  br label %71

71:                                               ; preds = %63, %69
  %72 = load ptr, ptr @const_and_copies_stack, align 8
  %73 = load i32, ptr %72, align 8, !tbaa !349
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 8, !tbaa !349
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds %struct.VEC_tree_base, ptr %72, i64 0, i32 2, i64 %75
  store ptr %17, ptr %76, align 8, !tbaa !184
  %77 = load ptr, ptr @const_and_copies_stack, align 8
  %78 = load i32, ptr %77, align 8, !tbaa !349
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 8, !tbaa !349
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds %struct.VEC_tree_base, ptr %77, i64 0, i32 2, i64 %80
  store ptr %0, ptr %81, align 8, !tbaa !184
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @remove_local_expressions_from_table() unnamed_addr #13 !prof !640 !PGOFuncName !641 {
  br label %1

1:                                                ; preds = %36, %0
  %2 = load ptr, ptr @avail_exprs_stack, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !590

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !345
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %38, label %9, !prof !590

9:                                                ; preds = %6
  %10 = load i32, ptr %2, align 8, !tbaa !345
  %11 = add i32 %10, -1
  store i32 %11, ptr %2, align 8, !tbaa !345
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %2, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !184
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16, !prof !591

16:                                               ; preds = %9
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19, !prof !592

19:                                               ; preds = %16
  %20 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 5, i64 1, ptr nonnull %17)
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !184
  tail call fastcc void @print_expr_hash_elt(ptr noundef %25, ptr noundef nonnull %14)
  br label %26

26:                                               ; preds = %23, %19, %16
  %27 = load ptr, ptr @avail_exprs, align 8, !tbaa !184
  %28 = getelementptr inbounds %struct.expr_hash_elt, ptr %14, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !314
  %30 = tail call ptr @htab_find_slot_with_hash(ptr noundef %27, ptr noundef nonnull %14, i32 noundef %29, i32 noundef 0) #21
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32, !prof !338

32:                                               ; preds = %26
  %33 = load ptr, ptr %30, align 8, !tbaa !184
  %34 = icmp eq ptr %33, %14
  br i1 %34, label %36, label %35, !prof !592

35:                                               ; preds = %32, %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 839, ptr noundef nonnull @.str.10) #21
  br label %36

36:                                               ; preds = %32, %35
  %37 = load ptr, ptr @avail_exprs, align 8, !tbaa !184
  tail call void @htab_clear_slot(ptr noundef %37, ptr noundef %30) #21
  br i1 %15, label %38, label %1, !prof !591

38:                                               ; preds = %9, %36, %6
  ret void
}

declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @thread_across_edge(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @simplify_stmt_for_jump_threading(ptr noundef %0, ptr nocapture readnone %1) #13 !prof !642 !PGOFuncName !643 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.expr_hash_elt, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #21
  %5 = tail call ptr @gimple_get_lhs(ptr noundef %0) #21
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1
  %9 = trunc i32 %6 to i8
  switch i8 %9, label %376 [
    i8 6, label %10
    i8 1, label %166
    i8 8, label %208
    i8 5, label %304
    i8 3, label %340
  ], !prof !604

10:                                               ; preds = %2
  %11 = lshr i32 %6, 16
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !195
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %16, label %34, !prof !605

16:                                               ; preds = %10
  %17 = add nsw i32 %7, -1
  %18 = icmp ult i32 %17, 9
  tail call void @llvm.assume(i1 %18)
  %19 = zext nneg i32 %7 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !199
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !260
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27, !prof !606

26:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %27

27:                                               ; preds = %26, %16
  %28 = getelementptr inbounds i8, ptr %0, i64 %24
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !184
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65535
  br label %34

34:                                               ; preds = %27, %10
  %35 = phi i32 [ %33, %27 ], [ %11, %10 ]
  store ptr null, ptr %8, align 8, !tbaa !323
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !195
  switch i8 %38, label %165 [
    i8 3, label %39
    i8 2, label %61
    i8 1, label %101
  ], !prof !607

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  store i32 0, ptr %40, align 8, !tbaa !326
  %41 = load i32, ptr %0, align 8
  %42 = and i32 %41, 255
  %43 = add nsw i32 %42, -10
  %44 = icmp ult i32 %43, -9
  br i1 %44, label %58, label %45, !prof !606

45:                                               ; preds = %39
  %46 = zext nneg i32 %42 to i64
  %47 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !199
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !260
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54, !prof !606

53:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %54

54:                                               ; preds = %53, %45
  %55 = getelementptr inbounds i8, ptr %0, i64 %51
  %56 = getelementptr inbounds ptr, ptr %55, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !184
  br label %58

58:                                               ; preds = %54, %39
  %59 = phi ptr [ %57, %54 ], [ null, %39 ]
  %60 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  store ptr %59, ptr %60, align 8, !tbaa !195
  br label %377

61:                                               ; preds = %34
  %62 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  store i32 1, ptr %62, align 8, !tbaa !326
  %63 = load i32, ptr %0, align 8
  %64 = and i32 %63, 255
  %65 = add nsw i32 %64, -1
  %66 = icmp ult i32 %65, 9
  tail call void @llvm.assume(i1 %66)
  %67 = zext nneg i32 %64 to i64
  %68 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !199
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !260
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75, !prof !608

74:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %75

75:                                               ; preds = %74, %61
  %76 = getelementptr inbounds i8, ptr %0, i64 %72
  %77 = load ptr, ptr %76, align 8, !tbaa !184
  %78 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !195
  store ptr %79, ptr %8, align 8, !tbaa !323
  %80 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  store i32 %35, ptr %80, align 8, !tbaa !195
  %81 = load i32, ptr %0, align 8
  %82 = and i32 %81, 255
  %83 = add nsw i32 %82, -10
  %84 = icmp ult i32 %83, -9
  br i1 %84, label %98, label %85, !prof !608

85:                                               ; preds = %75
  %86 = zext nneg i32 %82 to i64
  %87 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !199
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !260
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94, !prof !608

93:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %94

94:                                               ; preds = %93, %85
  %95 = getelementptr inbounds i8, ptr %0, i64 %91
  %96 = getelementptr inbounds ptr, ptr %95, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !184
  br label %98

98:                                               ; preds = %94, %75
  %99 = phi ptr [ %97, %94 ], [ null, %75 ]
  %100 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 1
  store ptr %99, ptr %100, align 8, !tbaa !195
  br label %377

101:                                              ; preds = %34
  %102 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  store i32 2, ptr %102, align 8, !tbaa !326
  %103 = load i32, ptr %0, align 8
  %104 = and i32 %103, 255
  %105 = add nsw i32 %104, -1
  %106 = icmp ult i32 %105, 9
  tail call void @llvm.assume(i1 %106)
  %107 = zext nneg i32 %104 to i64
  %108 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !199
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %110
  %112 = load i64, ptr %111, align 8, !tbaa !260
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115, !prof !609

114:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %115

115:                                              ; preds = %114, %101
  %116 = getelementptr inbounds i8, ptr %0, i64 %112
  %117 = load ptr, ptr %116, align 8, !tbaa !184
  %118 = getelementptr inbounds %struct.tree_common, ptr %117, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !195
  store ptr %119, ptr %8, align 8, !tbaa !323
  %120 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  store i32 %35, ptr %120, align 8, !tbaa !195
  %121 = load i32, ptr %0, align 8
  %122 = and i32 %121, 255
  %123 = add nsw i32 %122, -10
  %124 = icmp ult i32 %123, -9
  br i1 %124, label %138, label %125, !prof !609

125:                                              ; preds = %115
  %126 = zext nneg i32 %122 to i64
  %127 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !199
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !260
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134, !prof !609

133:                                              ; preds = %125
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %134

134:                                              ; preds = %133, %125
  %135 = getelementptr inbounds i8, ptr %0, i64 %131
  %136 = getelementptr inbounds ptr, ptr %135, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !184
  br label %138

138:                                              ; preds = %134, %115
  %139 = phi ptr [ %137, %134 ], [ null, %115 ]
  %140 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 1
  store ptr %139, ptr %140, align 8, !tbaa !195
  %141 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %142 = load i32, ptr %141, align 4, !tbaa !195
  %143 = icmp ugt i32 %142, 2
  br i1 %143, label %144, label %162, !prof !610

144:                                              ; preds = %138
  %145 = load i32, ptr %0, align 8
  %146 = and i32 %145, 255
  %147 = add nsw i32 %146, -10
  %148 = icmp ult i32 %147, -9
  br i1 %148, label %162, label %149, !prof !609

149:                                              ; preds = %144
  %150 = zext nneg i32 %146 to i64
  %151 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !199
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %153
  %155 = load i64, ptr %154, align 8, !tbaa !260
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %158, !prof !609

157:                                              ; preds = %149
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %158

158:                                              ; preds = %157, %149
  %159 = getelementptr inbounds i8, ptr %0, i64 %155
  %160 = getelementptr inbounds ptr, ptr %159, i64 2
  %161 = load ptr, ptr %160, align 8, !tbaa !184
  br label %162

162:                                              ; preds = %158, %144, %138
  %163 = phi ptr [ null, %138 ], [ %161, %158 ], [ null, %144 ]
  %164 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 2
  store ptr %163, ptr %164, align 8, !tbaa !195
  br label %377

165:                                              ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 234, ptr noundef nonnull @.str.10) #21
  br label %377

166:                                              ; preds = %2
  %167 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  store ptr %167, ptr %8, align 8, !tbaa !323
  %168 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  store i32 2, ptr %168, align 8, !tbaa !326
  %169 = lshr i32 %6, 16
  %170 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  store i32 %169, ptr %170, align 8, !tbaa !195
  %171 = add nsw i32 %7, -10
  %172 = icmp ult i32 %171, -9
  br i1 %172, label %185, label %173, !prof !611

173:                                              ; preds = %166
  %174 = zext nneg i32 %7 to i64
  %175 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !199
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %177
  %179 = load i64, ptr %178, align 8, !tbaa !260
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %182, !prof !611

181:                                              ; preds = %173
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %182

182:                                              ; preds = %181, %173
  %183 = getelementptr inbounds i8, ptr %0, i64 %179
  %184 = load ptr, ptr %183, align 8, !tbaa !184
  br label %185

185:                                              ; preds = %182, %166
  %186 = phi ptr [ %184, %182 ], [ null, %166 ]
  %187 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 1
  store ptr %186, ptr %187, align 8, !tbaa !195
  %188 = load i32, ptr %0, align 8
  %189 = and i32 %188, 255
  %190 = add nsw i32 %189, -10
  %191 = icmp ult i32 %190, -9
  br i1 %191, label %205, label %192, !prof !611

192:                                              ; preds = %185
  %193 = zext nneg i32 %189 to i64
  %194 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !199
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %196
  %198 = load i64, ptr %197, align 8, !tbaa !260
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %201, !prof !611

200:                                              ; preds = %192
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %201

201:                                              ; preds = %200, %192
  %202 = getelementptr inbounds i8, ptr %0, i64 %198
  %203 = getelementptr inbounds ptr, ptr %202, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !184
  br label %205

205:                                              ; preds = %201, %185
  %206 = phi ptr [ %204, %201 ], [ null, %185 ]
  %207 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 2
  store ptr %206, ptr %207, align 8, !tbaa !195
  br label %377

208:                                              ; preds = %2
  %209 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %210 = load i32, ptr %209, align 4, !tbaa !195
  %211 = add i32 %210, -3
  %212 = zext i32 %211 to i64
  %213 = add nsw i32 %7, -10
  %214 = icmp ult i32 %213, -9
  br i1 %214, label %228, label %215, !prof !612

215:                                              ; preds = %208
  %216 = zext nneg i32 %7 to i64
  %217 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !199
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %219
  %221 = load i64, ptr %220, align 8, !tbaa !260
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %224, !prof !612

223:                                              ; preds = %215
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %224

224:                                              ; preds = %223, %215
  %225 = getelementptr inbounds i8, ptr %0, i64 %221
  %226 = load ptr, ptr %225, align 8, !tbaa !184
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %229, !prof !612

228:                                              ; preds = %224, %208
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 250, ptr noundef nonnull @.str.10) #21
  br label %229

229:                                              ; preds = %228, %224
  %230 = load i32, ptr %0, align 8
  %231 = and i32 %230, 255
  %232 = add nsw i32 %231, -1
  %233 = icmp ult i32 %232, 9
  tail call void @llvm.assume(i1 %233)
  %234 = zext nneg i32 %231 to i64
  %235 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !199
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %237
  %239 = load i64, ptr %238, align 8, !tbaa !260
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %242, !prof !612

241:                                              ; preds = %229
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %242

242:                                              ; preds = %241, %229
  %243 = getelementptr inbounds i8, ptr %0, i64 %239
  %244 = load ptr, ptr %243, align 8, !tbaa !184
  %245 = getelementptr inbounds %struct.tree_common, ptr %244, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !195
  store ptr %246, ptr %8, align 8, !tbaa !323
  %247 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  store i32 3, ptr %247, align 8, !tbaa !326
  %248 = load i32, ptr %0, align 8
  %249 = and i32 %248, 255
  %250 = add nsw i32 %249, -10
  %251 = icmp ult i32 %250, -9
  br i1 %251, label %265, label %252, !prof !612

252:                                              ; preds = %242
  %253 = zext nneg i32 %249 to i64
  %254 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !199
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %256
  %258 = load i64, ptr %257, align 8, !tbaa !260
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %261, !prof !612

260:                                              ; preds = %252
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %261

261:                                              ; preds = %260, %252
  %262 = getelementptr inbounds i8, ptr %0, i64 %258
  %263 = getelementptr inbounds ptr, ptr %262, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !184
  br label %265

265:                                              ; preds = %261, %242
  %266 = phi ptr [ %264, %261 ], [ null, %242 ]
  %267 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  store ptr %266, ptr %267, align 8, !tbaa !195
  %268 = tail call i32 @gimple_call_flags(ptr noundef nonnull %0) #21
  %269 = and i32 %268, 3
  %270 = icmp ne i32 %269, 0
  %271 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 1
  %272 = zext i1 %270 to i8
  store i8 %272, ptr %271, align 8, !tbaa !195
  %273 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 2
  store i64 %212, ptr %273, align 8, !tbaa !195
  %274 = tail call ptr @xcalloc(i64 noundef %212, i64 noundef 8) #21
  %275 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 3
  store ptr %274, ptr %275, align 8, !tbaa !195
  %276 = icmp eq i32 %211, 0
  br i1 %276, label %377, label %277, !prof !383

277:                                              ; preds = %265, %298
  %278 = phi i64 [ %302, %298 ], [ 0, %265 ]
  %279 = add nuw nsw i64 %278, 3
  %280 = load i32, ptr %0, align 8
  %281 = and i32 %280, 255
  %282 = add nsw i32 %281, -10
  %283 = icmp ult i32 %282, -9
  br i1 %283, label %298, label %284, !prof !613

284:                                              ; preds = %277
  %285 = zext nneg i32 %281 to i64
  %286 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %285
  %287 = load i32, ptr %286, align 4, !tbaa !199
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %288
  %290 = load i64, ptr %289, align 8, !tbaa !260
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %293, !prof !613

292:                                              ; preds = %284
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %293

293:                                              ; preds = %292, %284
  %294 = getelementptr inbounds i8, ptr %0, i64 %290
  %295 = and i64 %279, 4294967295
  %296 = getelementptr inbounds ptr, ptr %294, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !184
  br label %298

298:                                              ; preds = %293, %277
  %299 = phi ptr [ %297, %293 ], [ null, %277 ]
  %300 = load ptr, ptr %275, align 8, !tbaa !195
  %301 = getelementptr inbounds ptr, ptr %300, i64 %278
  store ptr %299, ptr %301, align 8, !tbaa !184
  %302 = add nuw nsw i64 %278, 1
  %303 = icmp eq i64 %302, %212
  br i1 %303, label %377, label %277, !prof !614, !llvm.loop !615

304:                                              ; preds = %2
  %305 = add nsw i32 %7, -1
  %306 = icmp ult i32 %305, 9
  tail call void @llvm.assume(i1 %306)
  %307 = zext nneg i32 %7 to i64
  %308 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !199
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %310
  %312 = load i64, ptr %311, align 8, !tbaa !260
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %315, !prof !616

314:                                              ; preds = %304
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %315

315:                                              ; preds = %314, %304
  %316 = getelementptr inbounds i8, ptr %0, i64 %312
  %317 = load ptr, ptr %316, align 8, !tbaa !184
  %318 = getelementptr inbounds %struct.tree_common, ptr %317, i64 0, i32 2
  %319 = load ptr, ptr %318, align 8, !tbaa !195
  store ptr %319, ptr %8, align 8, !tbaa !323
  %320 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  store i32 0, ptr %320, align 8, !tbaa !326
  %321 = load i32, ptr %0, align 8
  %322 = and i32 %321, 255
  %323 = add nsw i32 %322, -10
  %324 = icmp ult i32 %323, -9
  br i1 %324, label %337, label %325, !prof !616

325:                                              ; preds = %315
  %326 = zext nneg i32 %322 to i64
  %327 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %326
  %328 = load i32, ptr %327, align 4, !tbaa !199
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %329
  %331 = load i64, ptr %330, align 8, !tbaa !260
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %334, !prof !616

333:                                              ; preds = %325
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %334

334:                                              ; preds = %333, %325
  %335 = getelementptr inbounds i8, ptr %0, i64 %331
  %336 = load ptr, ptr %335, align 8, !tbaa !184
  br label %337

337:                                              ; preds = %334, %315
  %338 = phi ptr [ %336, %334 ], [ null, %315 ]
  %339 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  store ptr %338, ptr %339, align 8, !tbaa !195
  br label %377

340:                                              ; preds = %2
  %341 = add nsw i32 %7, -1
  %342 = icmp ult i32 %341, 9
  tail call void @llvm.assume(i1 %342)
  %343 = zext nneg i32 %7 to i64
  %344 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %343
  %345 = load i32, ptr %344, align 4, !tbaa !199
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %346
  %348 = load i64, ptr %347, align 8, !tbaa !260
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %340
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %351

351:                                              ; preds = %350, %340
  %352 = getelementptr inbounds i8, ptr %0, i64 %348
  %353 = load ptr, ptr %352, align 8, !tbaa !184
  %354 = getelementptr inbounds %struct.tree_common, ptr %353, i64 0, i32 2
  %355 = load ptr, ptr %354, align 8, !tbaa !195
  store ptr %355, ptr %8, align 8, !tbaa !323
  %356 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  store i32 0, ptr %356, align 8, !tbaa !326
  %357 = load i32, ptr %0, align 8
  %358 = and i32 %357, 255
  %359 = add nsw i32 %358, -10
  %360 = icmp ult i32 %359, -9
  br i1 %360, label %373, label %361

361:                                              ; preds = %351
  %362 = zext nneg i32 %358 to i64
  %363 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !199
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %365
  %367 = load i64, ptr %366, align 8, !tbaa !260
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %361
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %370

370:                                              ; preds = %369, %361
  %371 = getelementptr inbounds i8, ptr %0, i64 %367
  %372 = load ptr, ptr %371, align 8, !tbaa !184
  br label %373

373:                                              ; preds = %370, %351
  %374 = phi ptr [ %372, %370 ], [ null, %351 ]
  %375 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  store ptr %374, ptr %375, align 8, !tbaa !195
  br label %377

376:                                              ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 279, ptr noundef nonnull @.str.10) #21
  br label %377

377:                                              ; preds = %298, %376, %373, %337, %265, %205, %165, %162, %98, %58
  store ptr %5, ptr %4, align 8, !tbaa !379
  %378 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 2
  store ptr %0, ptr %378, align 8, !tbaa !319
  %379 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 1
  %380 = load i32, ptr %379, align 8, !tbaa !326
  switch i32 %380, label %440 [
    i32 0, label %381
    i32 1, label %385
    i32 2, label %401
    i32 3, label %418
  ], !prof !380

381:                                              ; preds = %377
  %382 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !195
  %384 = tail call i32 @iterative_hash_expr(ptr noundef %383, i32 noundef 0) #21
  br label %441

385:                                              ; preds = %377
  %386 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  %387 = call i32 @iterative_hash(ptr noundef nonnull %386, i64 noundef 4, i32 noundef 0) #21
  %388 = load i32, ptr %386, align 8, !tbaa !195
  switch i32 %388, label %396 [
    i32 116, label %389
    i32 113, label %389
    i32 117, label %389
  ], !prof !381

389:                                              ; preds = %385, %385, %385
  %390 = load ptr, ptr %8, align 8, !tbaa !323
  %391 = load i64, ptr %390, align 8
  %392 = trunc i64 %391 to i32
  %393 = lshr i32 %392, 21
  %394 = and i32 %393, 1
  %395 = add i32 %394, %387
  br label %396

396:                                              ; preds = %389, %385
  %397 = phi i32 [ %395, %389 ], [ %387, %385 ]
  %398 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 1
  %399 = load ptr, ptr %398, align 8, !tbaa !195
  %400 = call i32 @iterative_hash_expr(ptr noundef %399, i32 noundef %397) #21
  br label %441

401:                                              ; preds = %377
  %402 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  %403 = call i32 @iterative_hash(ptr noundef nonnull %402, i64 noundef 4, i32 noundef 0) #21
  %404 = load i32, ptr %402, align 8, !tbaa !195
  %405 = call zeroext i8 @commutative_tree_code(i32 noundef %404) #21
  %406 = icmp eq i8 %405, 0
  %407 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !195
  br i1 %406, label %413, label %409, !prof !382

409:                                              ; preds = %401
  %410 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 2
  %411 = load ptr, ptr %410, align 8, !tbaa !195
  %412 = call i32 @iterative_hash_exprs_commutative(ptr noundef %408, ptr noundef %411, i32 noundef %403) #21
  br label %441

413:                                              ; preds = %401
  %414 = call i32 @iterative_hash_expr(ptr noundef %408, i32 noundef %403) #21
  %415 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 2
  %416 = load ptr, ptr %415, align 8, !tbaa !195
  %417 = call i32 @iterative_hash_expr(ptr noundef %416, i32 noundef %414) #21
  br label %441

418:                                              ; preds = %377
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 59, ptr %3, align 4, !tbaa !199
  %419 = call i32 @iterative_hash(ptr noundef nonnull %3, i64 noundef 4, i32 noundef 0) #21
  %420 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  %421 = load ptr, ptr %420, align 8, !tbaa !195
  %422 = call i32 @iterative_hash_expr(ptr noundef %421, i32 noundef %419) #21
  %423 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 2
  %424 = load i64, ptr %423, align 8, !tbaa !195
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %438, label %426, !prof !383

426:                                              ; preds = %418
  %427 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2, i32 0, i32 3
  br label %428

428:                                              ; preds = %428, %426
  %429 = phi i64 [ 0, %426 ], [ %435, %428 ]
  %430 = phi i32 [ %422, %426 ], [ %434, %428 ]
  %431 = load ptr, ptr %427, align 8, !tbaa !195
  %432 = getelementptr inbounds ptr, ptr %431, i64 %429
  %433 = load ptr, ptr %432, align 8, !tbaa !184
  %434 = call i32 @iterative_hash_expr(ptr noundef %433, i32 noundef %430) #21
  %435 = add nuw i64 %429, 1
  %436 = load i64, ptr %423, align 8, !tbaa !195
  %437 = icmp ult i64 %435, %436
  br i1 %437, label %428, label %438, !prof !384, !llvm.loop !385

438:                                              ; preds = %428, %418
  %439 = phi i32 [ %422, %418 ], [ %434, %428 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %441

440:                                              ; preds = %377
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 481, ptr noundef nonnull @.str.10) #21
  br label %441

441:                                              ; preds = %440, %438, %413, %409, %396, %381
  %442 = phi i32 [ 0, %440 ], [ %439, %438 ], [ %412, %409 ], [ %417, %413 ], [ %400, %396 ], [ %384, %381 ]
  %443 = icmp eq ptr %0, null
  br i1 %443, label %457, label %444, !prof !617

444:                                              ; preds = %441
  %445 = load i32, ptr %0, align 8
  %446 = and i32 %445, 254
  %447 = add nsw i32 %446, -10
  %448 = icmp ult i32 %447, -4
  br i1 %448, label %452, label %449, !prof !618

449:                                              ; preds = %444
  %450 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !195
  br label %452

452:                                              ; preds = %449, %444
  %453 = phi ptr [ %451, %449 ], [ null, %444 ]
  %454 = icmp eq ptr %453, null
  br i1 %454, label %457, label %455, !prof !619

455:                                              ; preds = %452
  %456 = call i32 @iterative_hash_expr(ptr noundef nonnull %453, i32 noundef %442) #21
  br label %457

457:                                              ; preds = %455, %452, %441
  %458 = phi i32 [ %442, %441 ], [ %456, %455 ], [ %442, %452 ]
  %459 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 3
  store i32 %458, ptr %459, align 8, !tbaa !314
  %460 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 4
  store ptr %4, ptr %460, align 8, !tbaa !320
  %461 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %462 = icmp eq ptr %461, null
  br i1 %462, label %470, label %463, !prof !620

463:                                              ; preds = %457
  %464 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %465 = and i32 %464, 8
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %470, label %467

467:                                              ; preds = %463
  %468 = call i64 @fwrite(ptr nonnull @.str.37, i64 5, i64 1, ptr nonnull %461)
  %469 = load ptr, ptr @dump_file, align 8, !tbaa !184
  call fastcc void @print_expr_hash_elt(ptr noundef %469, ptr noundef nonnull %4)
  br label %470

470:                                              ; preds = %467, %463, %457
  %471 = load i32, ptr %379, align 8, !tbaa !337
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %482, !prof !621

473:                                              ; preds = %470
  %474 = getelementptr inbounds %struct.expr_hash_elt, ptr %4, i64 0, i32 1, i32 2
  %475 = load ptr, ptr %474, align 8, !tbaa !195
  %476 = load i64, ptr %475, align 8
  %477 = and i64 %476, 65535
  %478 = icmp eq i64 %477, 141
  br i1 %478, label %554, label %479, !prof !622

479:                                              ; preds = %473
  %480 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %475) #21
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %482, label %554, !prof !623

482:                                              ; preds = %479, %470
  %483 = load ptr, ptr @avail_exprs, align 8, !tbaa !184
  %484 = load i32, ptr %459, align 8, !tbaa !314
  %485 = call ptr @htab_find_slot_with_hash(ptr noundef %483, ptr noundef nonnull %4, i32 noundef %484, i32 noundef 0) #21
  %486 = icmp eq ptr %485, null
  br i1 %486, label %554, label %487, !prof !624

487:                                              ; preds = %482
  %488 = load ptr, ptr %485, align 8, !tbaa !184
  %489 = icmp eq ptr %488, null
  br i1 %489, label %490, label %518, !prof !625

490:                                              ; preds = %487
  %491 = call ptr @xmalloc(i64 noundef 80) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %491, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false), !tbaa.struct !626
  %492 = getelementptr inbounds %struct.expr_hash_elt, ptr %491, i64 0, i32 4
  store ptr %491, ptr %492, align 8, !tbaa !320
  store ptr %491, ptr %485, align 8, !tbaa !184
  %493 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %494 = icmp eq ptr %493, null
  br i1 %494, label %502, label %495, !prof !627

495:                                              ; preds = %490
  %496 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %497 = and i32 %496, 8
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %502, label %499

499:                                              ; preds = %495
  %500 = call i64 @fwrite(ptr nonnull @.str.38, i64 5, i64 1, ptr nonnull %493)
  %501 = load ptr, ptr @dump_file, align 8, !tbaa !184
  call fastcc void @print_expr_hash_elt(ptr noundef %501, ptr noundef %491)
  br label %502

502:                                              ; preds = %499, %495, %490
  %503 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !184
  %504 = icmp eq ptr %503, null
  br i1 %504, label %510, label %505, !prof !628

505:                                              ; preds = %502
  %506 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %503, i64 0, i32 1
  %507 = load i32, ptr %506, align 4, !tbaa !343
  %508 = load i32, ptr %503, align 8, !tbaa !345
  %509 = icmp eq i32 %507, %508
  br i1 %509, label %510, label %512, !prof !629

510:                                              ; preds = %505, %502
  %511 = call ptr @vec_heap_p_reserve(ptr noundef %503, i32 noundef 1) #21
  store ptr %511, ptr @avail_exprs_stack, align 8, !tbaa !184
  br label %512

512:                                              ; preds = %510, %505
  %513 = load ptr, ptr @avail_exprs_stack, align 8, !tbaa !184
  %514 = load i32, ptr %513, align 8, !tbaa !345
  %515 = add i32 %514, 1
  store i32 %515, ptr %513, align 8, !tbaa !345
  %516 = zext i32 %514 to i64
  %517 = getelementptr inbounds %struct.VEC_expr_hash_elt_t_base, ptr %513, i64 0, i32 2, i64 %516
  store ptr %491, ptr %517, align 8, !tbaa !184
  br label %554

518:                                              ; preds = %487
  %519 = load ptr, ptr %488, align 8, !tbaa !379
  %520 = load i64, ptr %519, align 8
  %521 = and i64 %520, 65535
  %522 = icmp eq i64 %521, 141
  br i1 %522, label %523, label %541, !prof !630

523:                                              ; preds = %518
  %524 = getelementptr inbounds %struct.tree_ssa_name, ptr %519, i64 0, i32 3
  %525 = load i32, ptr %524, align 8, !tbaa !195
  %526 = load ptr, ptr @ssa_name_values, align 8
  %527 = icmp eq ptr %526, null
  br i1 %527, label %530, label %528, !prof !332

528:                                              ; preds = %523
  %529 = load i32, ptr %526, align 8, !tbaa !349
  br label %530

530:                                              ; preds = %528, %523
  %531 = phi i32 [ %529, %528 ], [ 0, %523 ]
  %532 = icmp ult i32 %525, %531
  br i1 %532, label %533, label %537, !prof !631

533:                                              ; preds = %530
  %534 = zext i32 %525 to i64
  %535 = getelementptr inbounds %struct.VEC_tree_base, ptr %526, i64 0, i32 2, i64 %534
  %536 = load ptr, ptr %535, align 8, !tbaa !184
  br label %537

537:                                              ; preds = %533, %530
  %538 = phi ptr [ %536, %533 ], [ null, %530 ]
  %539 = icmp eq ptr %538, null
  %540 = select i1 %539, ptr %519, ptr %538, !prof !632
  br label %541

541:                                              ; preds = %537, %518
  %542 = phi ptr [ %519, %518 ], [ %540, %537 ]
  %543 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %544 = icmp eq ptr %543, null
  br i1 %544, label %554, label %545, !prof !633

545:                                              ; preds = %541
  %546 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %547 = and i32 %546, 8
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %554, label %549

549:                                              ; preds = %545
  %550 = call i64 @fwrite(ptr nonnull @.str.39, i64 6, i64 1, ptr nonnull %543)
  %551 = load ptr, ptr @dump_file, align 8, !tbaa !184
  call void @print_generic_expr(ptr noundef %551, ptr noundef nonnull %542, i32 noundef 0) #21
  %552 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %553 = call i32 @fputc(i32 10, ptr %552)
  br label %554

554:                                              ; preds = %473, %479, %482, %512, %541, %545, %549
  %555 = phi ptr [ null, %512 ], [ null, %479 ], [ null, %473 ], [ null, %482 ], [ %542, %549 ], [ %542, %545 ], [ %542, %541 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #21
  ret ptr %555
}

declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

declare double @htab_collisions(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @eliminate_degenerate_phis_1(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !644 !PGOFuncName !645 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #21
  %4 = load ptr, ptr %3, align 8, !tbaa.struct !392
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !646

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !234
  call fastcc void @eliminate_const_or_copy(ptr noundef %8, ptr noundef %1)
  %9 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !237
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !prof !647, !llvm.loop !648

12:                                               ; preds = %6, %2
  %13 = call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15, !prof !649

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %13, %12 ]
  call fastcc void @eliminate_degenerate_phis_1(ptr noundef nonnull %16, ptr noundef %1)
  %17 = call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %16) #21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %15, !prof !650, !llvm.loop !651

19:                                               ; preds = %15, %12
  ret void
}

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @eliminate_const_or_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !652 !PGOFuncName !653 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.immediate_use_iterator_d, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = load i32, ptr %0, align 8
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %24 [
    i8 16, label %10
    i8 6, label %12
  ], !prof !654

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  br label %25

12:                                               ; preds = %2
  %13 = and i32 %8, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !199
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !260
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22, !prof !655

21:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %22

22:                                               ; preds = %21, %12
  %23 = getelementptr inbounds i8, ptr %0, i64 %19
  br label %25

24:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2461, ptr noundef nonnull @.str.10) #21
  unreachable

25:                                               ; preds = %10, %22
  %26 = phi ptr [ %11, %10 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !195
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !195
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 5
  %31 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 5, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !656
  %33 = icmp eq ptr %30, %32
  br i1 %33, label %39, label %34, !prof !657

34:                                               ; preds = %25
  %35 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !199
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37, !prof !658

37:                                               ; preds = %34
  %38 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %30) #21
  br label %39

39:                                               ; preds = %25, %34, %37
  %40 = phi i8 [ %38, %37 ], [ 1, %25 ], [ 0, %34 ]
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %50, label %42, !prof !659

42:                                               ; preds = %39
  %43 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %29) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %0) #21
  %44 = load i32, ptr %0, align 8
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %48, !prof !660

47:                                               ; preds = %42
  call void @remove_phi_node(ptr noundef nonnull %4, i8 noundef zeroext 1) #21
  br label %49

48:                                               ; preds = %42
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 1) #21
  call void @release_defs(ptr noundef nonnull %0) #21
  br label %49

49:                                               ; preds = %47, %48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  br label %673

50:                                               ; preds = %39
  %51 = load i32, ptr %0, align 8
  %52 = and i32 %51, 255
  %53 = icmp eq i32 %52, 16
  br i1 %53, label %54, label %108, !prof !661

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !195
  %57 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !195
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %101, label %60, !prof !282

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  br label %62

62:                                               ; preds = %96, %60
  %63 = phi ptr [ null, %60 ], [ %94, %96 ]
  %64 = phi i64 [ 0, %60 ], [ %97, %96 ]
  %65 = trunc i64 %64 to i32
  %66 = load i32, ptr %61, align 8, !tbaa !195
  %67 = icmp ult i32 %66, %65
  br i1 %67, label %68, label %69, !prof !283

68:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 3103, ptr noundef nonnull @.str.10) #21
  br label %69

69:                                               ; preds = %68, %62
  %70 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %64, i32 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !284
  %72 = load ptr, ptr %71, align 8, !tbaa !184
  %73 = icmp eq ptr %72, %56
  br i1 %73, label %93, label %74, !prof !283

74:                                               ; preds = %69
  %75 = icmp eq ptr %72, null
  br i1 %75, label %93, label %76, !prof !283

76:                                               ; preds = %74
  %77 = icmp eq ptr %63, null
  br i1 %77, label %93, label %78, !prof !286

78:                                               ; preds = %76
  %79 = icmp eq ptr %72, %63
  br i1 %79, label %93, label %80, !prof !287

80:                                               ; preds = %78
  %81 = load i64, ptr %63, align 8
  %82 = trunc i64 %81 to i32
  %83 = and i32 %82, 65535
  %84 = load i64, ptr %72, align 8
  %85 = trunc i64 %84 to i32
  %86 = and i32 %85, 65535
  %87 = icmp ne i32 %83, %86
  %88 = icmp eq i32 %83, 141
  %89 = or i1 %88, %87
  br i1 %89, label %93, label %90, !prof !288

90:                                               ; preds = %80
  %91 = tail call i32 @operand_equal_p(ptr noundef nonnull %72, ptr noundef nonnull %63, i32 noundef 0) #21
  %92 = icmp eq i32 %91, 0
  br label %93

93:                                               ; preds = %90, %80, %78, %76, %74, %69
  %94 = phi ptr [ %63, %69 ], [ %63, %74 ], [ %63, %78 ], [ %63, %80 ], [ %72, %76 ], [ %63, %90 ]
  %95 = phi i1 [ false, %69 ], [ true, %74 ], [ false, %78 ], [ true, %80 ], [ false, %76 ], [ %92, %90 ]
  br i1 %95, label %101, label %96, !prof !289

96:                                               ; preds = %93
  %97 = add nuw nsw i64 %64, 1
  %98 = load i32, ptr %57, align 4, !tbaa !195
  %99 = zext i32 %98 to i64
  %100 = icmp ult i64 %97, %99
  br i1 %100, label %62, label %101, !prof !290, !llvm.loop !291

101:                                              ; preds = %93, %96, %54
  %102 = phi i64 [ 0, %54 ], [ %97, %96 ], [ %64, %93 ]
  %103 = phi ptr [ null, %54 ], [ %94, %96 ], [ %94, %93 ]
  %104 = load i32, ptr %57, align 4, !tbaa !195
  %105 = zext i32 %104 to i64
  %106 = icmp eq i64 %102, %105
  %107 = select i1 %106, ptr %103, ptr null, !prof !292
  br label %130

108:                                              ; preds = %50
  %109 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %0) #21
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %129, label %111, !prof !662

111:                                              ; preds = %108
  %112 = load i32, ptr %0, align 8
  %113 = and i32 %112, 255
  %114 = add nsw i32 %113, -10
  %115 = icmp ult i32 %114, -9
  br i1 %115, label %130, label %116, !prof !662

116:                                              ; preds = %111
  %117 = zext nneg i32 %113 to i64
  %118 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !199
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !260
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125, !prof !662

124:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %125

125:                                              ; preds = %124, %116
  %126 = getelementptr inbounds i8, ptr %0, i64 %122
  %127 = getelementptr inbounds ptr, ptr %126, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !184
  br label %130

129:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2443, ptr noundef nonnull @.str.10) #21
  br label %130

130:                                              ; preds = %101, %111, %125, %129
  %131 = phi ptr [ %107, %101 ], [ null, %129 ], [ %128, %125 ], [ null, %111 ]
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %135, !prof !663

133:                                              ; preds = %130
  %134 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %29) #21
  br label %673

135:                                              ; preds = %130
  %136 = load i64, ptr %27, align 8
  %137 = and i64 %136, 4194304
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %671, !prof !664

139:                                              ; preds = %135
  %140 = load i64, ptr %131, align 8
  %141 = and i64 %140, 4259839
  %142 = icmp eq i64 %141, 4194445
  br i1 %142, label %671, label %143, !prof !665

143:                                              ; preds = %139
  %144 = tail call zeroext i8 @may_propagate_copy(ptr noundef nonnull %27, ptr noundef nonnull %131) #21
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %671, label %146, !prof !665

146:                                              ; preds = %143
  %147 = load i64, ptr %27, align 8
  %148 = and i64 %147, 65535
  %149 = icmp eq i64 %148, 141
  br i1 %149, label %150, label %159, !prof !664

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !195
  %153 = getelementptr inbounds %struct.gimple_statement_base, ptr %152, i64 0, i32 4
  %154 = load ptr, ptr %153, align 8, !tbaa !195
  %155 = icmp eq ptr %154, null
  br i1 %155, label %159, label %156, !prof !665

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.basic_block_def, ptr %154, i64 0, i32 10
  %158 = load i32, ptr %157, align 4, !tbaa !281
  br label %159

159:                                              ; preds = %156, %150, %146
  %160 = phi i32 [ %158, %156 ], [ 0, %146 ], [ 0, %150 ]
  %161 = load i64, ptr %131, align 8
  %162 = and i64 %161, 65535
  %163 = icmp eq i64 %162, 141
  br i1 %163, label %164, label %173, !prof !666

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.tree_ssa_name, ptr %131, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !195
  %167 = getelementptr inbounds %struct.gimple_statement_base, ptr %166, i64 0, i32 4
  %168 = load ptr, ptr %167, align 8, !tbaa !195
  %169 = icmp eq ptr %168, null
  br i1 %169, label %173, label %170, !prof !667

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 10
  %172 = load i32, ptr %171, align 4, !tbaa !281
  br label %173

173:                                              ; preds = %170, %164, %159
  %174 = phi i32 [ %172, %170 ], [ 0, %159 ], [ 0, %164 ]
  %175 = icmp slt i32 %160, %174
  br i1 %175, label %671, label %176, !prof !665

176:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #21
  %177 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %178 = icmp eq ptr %177, null
  br i1 %178, label %197, label %179, !prof !664

179:                                              ; preds = %176
  %180 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %181 = and i32 %180, 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %197, label %183

183:                                              ; preds = %179
  %184 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 13, i64 1, ptr nonnull %177)
  %185 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %186 = load i32, ptr @dump_flags, align 4, !tbaa !199
  tail call void @print_generic_expr(ptr noundef %185, ptr noundef nonnull %27, i32 noundef %186) #21
  %187 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %188 = load i64, ptr %131, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 141
  %191 = select i1 %190, ptr @.str.33, ptr @.str.32
  %192 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %187, ptr noundef nonnull @.str.31, ptr noundef nonnull %191)
  %193 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %194 = load i32, ptr @dump_flags, align 4, !tbaa !199
  tail call void @print_generic_expr(ptr noundef %193, ptr noundef nonnull %131, i32 noundef %194) #21
  %195 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %196 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %195)
  br label %197

197:                                              ; preds = %183, %179, %176
  %198 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 1
  store ptr %30, ptr %198, align 8, !tbaa !668
  %199 = load ptr, ptr %31, align 8, !tbaa !656
  store ptr %199, ptr %5, align 8, !tbaa !670
  %200 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 3
  %201 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 2
  %202 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 2, i32 1
  %203 = icmp eq ptr %199, %30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %201, i8 0, i64 40, i1 false)
  br i1 %203, label %208, label %204, !prof !665

204:                                              ; preds = %197
  call fastcc void @link_use_stmts_after(ptr noundef %199, ptr noundef nonnull %5)
  %205 = load ptr, ptr %5, align 8, !tbaa !670
  %206 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %205, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !195
  br label %208

208:                                              ; preds = %204, %197
  %209 = phi ptr [ %207, %204 ], [ null, %197 ]
  %210 = load ptr, ptr %5, align 8, !tbaa !670
  %211 = load ptr, ptr %198, align 8, !tbaa !668
  %212 = icmp eq ptr %210, %211
  br i1 %212, label %653, label %213, !prof !671

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 1
  %215 = getelementptr inbounds %struct.tree_ssa_name, ptr %131, i64 0, i32 1
  br label %216

216:                                              ; preds = %213, %646
  %217 = phi ptr [ %209, %213 ], [ %647, %646 ]
  %218 = phi i8 [ 1, %213 ], [ %632, %646 ]
  %219 = load i32, ptr %217, align 8
  %220 = and i32 %219, -65281
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %631, label %222, !prof !672

222:                                              ; preds = %216
  %223 = and i32 %219, 255
  %224 = icmp eq i32 %223, 7
  br i1 %224, label %225, label %228, !prof !672

225:                                              ; preds = %222
  %226 = call zeroext i8 @may_propagate_copy_into_asm(ptr noundef nonnull %27) #21
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %631, label %228

228:                                              ; preds = %225, %222
  %229 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %230 = icmp eq ptr %229, null
  br i1 %230, label %239, label %231, !prof !673

231:                                              ; preds = %228
  %232 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %233 = and i32 %232, 8
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %231
  %236 = call i64 @fwrite(ptr nonnull @.str.45, i64 23, i64 1, ptr nonnull %229)
  %237 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %238 = load i32, ptr @dump_flags, align 4, !tbaa !199
  call void @print_gimple_stmt(ptr noundef %237, ptr noundef nonnull %217, i32 noundef 0, i32 noundef %238) #21
  br label %239

239:                                              ; preds = %235, %231, %228
  %240 = load ptr, ptr %5, align 8, !tbaa !670
  %241 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %240, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !656
  store ptr %242, ptr %200, align 8, !tbaa !674
  %243 = icmp eq ptr %240, %201
  br i1 %243, label %255, label %244, !prof !675

244:                                              ; preds = %239, %251
  %245 = phi ptr [ %252, %251 ], [ %240, %239 ]
  call void @propagate_value(ptr noundef %245, ptr noundef nonnull %131) #21
  %246 = load ptr, ptr %200, align 8, !tbaa !674
  store ptr %246, ptr %5, align 8, !tbaa !670
  %247 = icmp eq ptr %246, %201
  br i1 %247, label %251, label %248, !prof !676

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %246, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !656
  store ptr %250, ptr %200, align 8, !tbaa !674
  br label %251

251:                                              ; preds = %248, %244
  %252 = phi ptr [ %246, %248 ], [ null, %244 ]
  %253 = load ptr, ptr %5, align 8, !tbaa !670
  %254 = icmp eq ptr %253, %201
  br i1 %254, label %255, label %244, !prof !677, !llvm.loop !678

255:                                              ; preds = %251, %239
  %256 = load i32, ptr %217, align 8
  %257 = and i32 %256, 255
  %258 = icmp eq i32 %257, 16
  br i1 %258, label %270, label %259, !prof !679

259:                                              ; preds = %255
  %260 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %27) #21
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %262, label %291, !prof !680

262:                                              ; preds = %259
  %263 = load i64, ptr %131, align 8
  %264 = and i64 %263, 65535
  %265 = icmp eq i64 %264, 141
  br i1 %265, label %266, label %291, !prof !681

266:                                              ; preds = %262
  %267 = load ptr, ptr %214, align 8, !tbaa !195
  %268 = load ptr, ptr %215, align 8, !tbaa !195
  %269 = icmp eq ptr %267, %268
  br i1 %269, label %270, label %291, !prof !681

270:                                              ; preds = %266, %255
  %271 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %272 = icmp eq ptr %271, null
  br i1 %272, label %281, label %273, !prof !682

273:                                              ; preds = %270
  %274 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %275 = and i32 %274, 8
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %281, label %277

277:                                              ; preds = %273
  %278 = call i64 @fwrite(ptr nonnull @.str.46, i64 22, i64 1, ptr nonnull %271)
  %279 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %280 = load i32, ptr @dump_flags, align 4, !tbaa !199
  call void @print_gimple_stmt(ptr noundef %279, ptr noundef nonnull %217, i32 noundef 0, i32 noundef %280) #21
  br label %281

281:                                              ; preds = %277, %273, %270
  %282 = load i32, ptr %217, align 8
  %283 = and i32 %282, 255
  %284 = icmp eq i32 %283, 16
  br i1 %284, label %285, label %631, !prof !683

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.gimple_statement_phi, ptr %217, i64 0, i32 3
  %287 = load ptr, ptr %286, align 8, !tbaa !195
  %288 = getelementptr inbounds %struct.tree_ssa_name, ptr %287, i64 0, i32 3
  %289 = load i32, ptr %288, align 8, !tbaa !195
  %290 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %289) #21
  br label %631

291:                                              ; preds = %266, %262, %259
  %292 = call zeroext i8 @fold_stmt_inplace(ptr noundef nonnull %217) #21
  %293 = load i32, ptr %217, align 8
  %294 = and i32 %293, 255
  %295 = add nsw i32 %294, -10
  %296 = icmp ult i32 %295, -9
  br i1 %296, label %298, label %297, !prof !684

297:                                              ; preds = %291
  call void @gimple_set_modified(ptr noundef nonnull %217, i8 noundef zeroext 1) #21
  call void @update_stmt_operands(ptr noundef nonnull %217) #21
  br label %298

298:                                              ; preds = %297, %291
  %299 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %300 = icmp eq ptr %299, null
  br i1 %300, label %309, label %301, !prof !685

301:                                              ; preds = %298
  %302 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %303 = and i32 %302, 8
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %309, label %305

305:                                              ; preds = %301
  %306 = call i64 @fwrite(ptr nonnull @.str.46, i64 22, i64 1, ptr nonnull %299)
  %307 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %308 = load i32, ptr @dump_flags, align 4, !tbaa !199
  call void @print_gimple_stmt(ptr noundef %307, ptr noundef nonnull %217, i32 noundef 0, i32 noundef %308) #21
  br label %309

309:                                              ; preds = %305, %301, %298
  %310 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %217) #21
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %352, label %312, !prof !686

312:                                              ; preds = %309
  %313 = load i32, ptr %217, align 8
  %314 = and i32 %313, 255
  %315 = add nsw i32 %314, -1
  %316 = icmp ult i32 %315, 9
  call void @llvm.assume(i1 %316)
  %317 = zext nneg i32 %314 to i64
  %318 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %317
  %319 = load i32, ptr %318, align 4, !tbaa !199
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %320
  %322 = load i64, ptr %321, align 8, !tbaa !260
  %323 = icmp eq i64 %322, 0
  br i1 %323, label %324, label %325, !prof !687

324:                                              ; preds = %312
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %325

325:                                              ; preds = %324, %312
  %326 = getelementptr inbounds i8, ptr %217, i64 %322
  %327 = getelementptr inbounds ptr, ptr %326, i64 1
  %328 = load ptr, ptr %327, align 8, !tbaa !184
  %329 = load i64, ptr %328, align 8
  %330 = and i64 %329, 65535
  %331 = icmp eq i64 %330, 121
  br i1 %331, label %332, label %352, !prof !687

332:                                              ; preds = %325
  %333 = load i32, ptr %217, align 8
  %334 = and i32 %333, 255
  %335 = add nsw i32 %334, -10
  %336 = icmp ult i32 %335, -9
  br i1 %336, label %350, label %337

337:                                              ; preds = %332
  %338 = zext nneg i32 %334 to i64
  %339 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !199
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %341
  %343 = load i64, ptr %342, align 8, !tbaa !260
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %337
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %346

346:                                              ; preds = %345, %337
  %347 = getelementptr inbounds i8, ptr %217, i64 %343
  %348 = getelementptr inbounds ptr, ptr %347, i64 1
  %349 = load ptr, ptr %348, align 8, !tbaa !184
  br label %350

350:                                              ; preds = %346, %332
  %351 = phi ptr [ %349, %346 ], [ null, %332 ]
  call void @recompute_tree_invariant_for_addr_expr(ptr noundef %351) #21
  br label %352

352:                                              ; preds = %350, %325, %309
  %353 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef nonnull %217, ptr noundef nonnull %217) #21
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %370, label %355, !prof !685

355:                                              ; preds = %352
  %356 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !184
  %357 = getelementptr inbounds %struct.gimple_statement_base, ptr %217, i64 0, i32 4
  %358 = load ptr, ptr %357, align 8, !tbaa !195
  %359 = getelementptr inbounds %struct.basic_block_def, ptr %358, i64 0, i32 9
  %360 = load i32, ptr %359, align 8, !tbaa !269
  %361 = call zeroext i8 @bitmap_set_bit(ptr noundef %356, i32 noundef %360) #21
  %362 = load ptr, ptr @dump_file, align 8, !tbaa !184
  %363 = icmp eq ptr %362, null
  br i1 %363, label %370, label %364

364:                                              ; preds = %355
  %365 = load i32, ptr @dump_flags, align 4, !tbaa !199
  %366 = and i32 %365, 8
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %370, label %368

368:                                              ; preds = %364
  %369 = call i64 @fwrite(ptr nonnull @.str.27, i64 29, i64 1, ptr nonnull %362)
  br label %370

370:                                              ; preds = %368, %364, %355, %352
  %371 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %217) #21
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %458, label %373, !prof !686

373:                                              ; preds = %370
  %374 = load i32, ptr %217, align 8
  %375 = and i32 %374, 255
  %376 = add nsw i32 %375, -1
  %377 = icmp ult i32 %376, 9
  call void @llvm.assume(i1 %377)
  %378 = zext nneg i32 %375 to i64
  %379 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %378
  %380 = load i32, ptr %379, align 4, !tbaa !199
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %381
  %383 = load i64, ptr %382, align 8, !tbaa !260
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %385, label %386, !prof !687

385:                                              ; preds = %373
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %386

386:                                              ; preds = %385, %373
  %387 = getelementptr inbounds i8, ptr %217, i64 %383
  %388 = load ptr, ptr %387, align 8, !tbaa !184
  %389 = load i64, ptr %388, align 8
  %390 = and i64 %389, 65535
  %391 = icmp eq i64 %390, 141
  br i1 %391, label %392, label %458, !prof !688

392:                                              ; preds = %386
  %393 = load i32, ptr %217, align 8
  %394 = and i32 %393, 255
  %395 = add nsw i32 %394, -1
  %396 = icmp ult i32 %395, 9
  call void @llvm.assume(i1 %396)
  %397 = zext nneg i32 %394 to i64
  %398 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !199
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %400
  %402 = load i64, ptr %401, align 8, !tbaa !260
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %404, label %405, !prof !687

404:                                              ; preds = %392
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %405

405:                                              ; preds = %404, %392
  %406 = getelementptr inbounds i8, ptr %217, i64 %402
  %407 = getelementptr inbounds ptr, ptr %406, i64 1
  %408 = load ptr, ptr %407, align 8, !tbaa !184
  %409 = load i64, ptr %408, align 8
  %410 = and i64 %409, 65535
  %411 = icmp eq i64 %410, 141
  br i1 %411, label %434, label %412, !prof !689

412:                                              ; preds = %405
  %413 = load i32, ptr %217, align 8
  %414 = and i32 %413, 255
  %415 = add nsw i32 %414, -10
  %416 = icmp ult i32 %415, -9
  br i1 %416, label %430, label %417, !prof !690

417:                                              ; preds = %412
  %418 = zext nneg i32 %414 to i64
  %419 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %418
  %420 = load i32, ptr %419, align 4, !tbaa !199
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %421
  %423 = load i64, ptr %422, align 8, !tbaa !260
  %424 = icmp eq i64 %423, 0
  br i1 %424, label %425, label %426, !prof !690

425:                                              ; preds = %417
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %426

426:                                              ; preds = %425, %417
  %427 = getelementptr inbounds i8, ptr %217, i64 %423
  %428 = getelementptr inbounds ptr, ptr %427, i64 1
  %429 = load ptr, ptr %428, align 8, !tbaa !184
  br label %430

430:                                              ; preds = %426, %412
  %431 = phi ptr [ %429, %426 ], [ null, %412 ]
  %432 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %431) #21
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %458, label %434, !prof !690

434:                                              ; preds = %430, %405
  %435 = load i32, ptr %217, align 8
  %436 = trunc i32 %435 to i8
  switch i8 %436, label %451 [
    i8 16, label %437
    i8 6, label %439
  ], !prof !654

437:                                              ; preds = %434
  %438 = getelementptr inbounds %struct.gimple_statement_phi, ptr %217, i64 0, i32 3
  br label %452

439:                                              ; preds = %434
  %440 = and i32 %435, 255
  %441 = zext nneg i32 %440 to i64
  %442 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %441
  %443 = load i32, ptr %442, align 4, !tbaa !199
  %444 = zext i32 %443 to i64
  %445 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %444
  %446 = load i64, ptr %445, align 8, !tbaa !260
  %447 = icmp eq i64 %446, 0
  br i1 %447, label %448, label %449, !prof !655

448:                                              ; preds = %439
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %449

449:                                              ; preds = %448, %439
  %450 = getelementptr inbounds i8, ptr %217, i64 %446
  br label %452

451:                                              ; preds = %434
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2461, ptr noundef nonnull @.str.10) #21
  unreachable

452:                                              ; preds = %437, %449
  %453 = phi ptr [ %438, %437 ], [ %450, %449 ]
  %454 = load ptr, ptr %453, align 8, !tbaa !195
  %455 = getelementptr inbounds %struct.tree_ssa_name, ptr %454, i64 0, i32 3
  %456 = load i32, ptr %455, align 8, !tbaa !195
  %457 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %456) #21
  br label %631

458:                                              ; preds = %430, %386, %370
  %459 = load i32, ptr %217, align 8
  %460 = trunc i32 %459 to i8
  switch i8 %460, label %631 [
    i8 1, label %461
    i8 5, label %461
    i8 3, label %461
  ], !prof !691

461:                                              ; preds = %458, %458, %458
  %462 = and i32 %459, 255
  switch i8 %460, label %519 [
    i8 1, label %463
    i8 5, label %504
  ], !prof !692

463:                                              ; preds = %461
  %464 = getelementptr inbounds %struct.gimple_statement_base, ptr %217, i64 0, i32 2
  %465 = load i32, ptr %464, align 8, !tbaa !195
  %466 = lshr i32 %459, 16
  %467 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !184
  %468 = add nsw i32 %462, -10
  %469 = icmp ult i32 %468, -9
  br i1 %469, label %482, label %470, !prof !693

470:                                              ; preds = %463
  %471 = zext nneg i32 %462 to i64
  %472 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %471
  %473 = load i32, ptr %472, align 4, !tbaa !199
  %474 = zext i32 %473 to i64
  %475 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %474
  %476 = load i64, ptr %475, align 8, !tbaa !260
  %477 = icmp eq i64 %476, 0
  br i1 %477, label %478, label %479, !prof !693

478:                                              ; preds = %470
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %479

479:                                              ; preds = %478, %470
  %480 = getelementptr inbounds i8, ptr %217, i64 %476
  %481 = load ptr, ptr %480, align 8, !tbaa !184
  br label %482

482:                                              ; preds = %479, %463
  %483 = phi ptr [ %481, %479 ], [ null, %463 ]
  %484 = load i32, ptr %217, align 8
  %485 = and i32 %484, 255
  %486 = add nsw i32 %485, -10
  %487 = icmp ult i32 %486, -9
  br i1 %487, label %501, label %488, !prof !693

488:                                              ; preds = %482
  %489 = zext nneg i32 %485 to i64
  %490 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %489
  %491 = load i32, ptr %490, align 4, !tbaa !199
  %492 = zext i32 %491 to i64
  %493 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %492
  %494 = load i64, ptr %493, align 8, !tbaa !260
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %496, label %497, !prof !693

496:                                              ; preds = %488
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %497

497:                                              ; preds = %496, %488
  %498 = getelementptr inbounds i8, ptr %217, i64 %494
  %499 = getelementptr inbounds ptr, ptr %498, i64 1
  %500 = load ptr, ptr %499, align 8, !tbaa !184
  br label %501

501:                                              ; preds = %497, %482
  %502 = phi ptr [ %500, %497 ], [ null, %482 ]
  %503 = call ptr @fold_binary_loc(i32 noundef %465, i32 noundef %466, ptr noundef %467, ptr noundef %483, ptr noundef %502) #21
  br label %534

504:                                              ; preds = %461
  %505 = add nsw i32 %462, -10
  %506 = icmp ult i32 %505, -9
  br i1 %506, label %534, label %507

507:                                              ; preds = %504
  %508 = zext nneg i32 %462 to i64
  %509 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %508
  %510 = load i32, ptr %509, align 4, !tbaa !199
  %511 = zext i32 %510 to i64
  %512 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %511
  %513 = load i64, ptr %512, align 8, !tbaa !260
  %514 = icmp eq i64 %513, 0
  br i1 %514, label %515, label %516

515:                                              ; preds = %507
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %516

516:                                              ; preds = %515, %507
  %517 = getelementptr inbounds i8, ptr %217, i64 %513
  %518 = load ptr, ptr %517, align 8, !tbaa !184
  br label %534

519:                                              ; preds = %461
  %520 = add nsw i32 %462, -10
  %521 = icmp ult i32 %520, -9
  br i1 %521, label %534, label %522

522:                                              ; preds = %519
  %523 = zext nneg i32 %462 to i64
  %524 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %523
  %525 = load i32, ptr %524, align 4, !tbaa !199
  %526 = zext i32 %525 to i64
  %527 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %526
  %528 = load i64, ptr %527, align 8, !tbaa !260
  %529 = icmp eq i64 %528, 0
  br i1 %529, label %530, label %531

530:                                              ; preds = %522
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.10) #21
  br label %531

531:                                              ; preds = %530, %522
  %532 = getelementptr inbounds i8, ptr %217, i64 %528
  %533 = load ptr, ptr %532, align 8, !tbaa !184
  br label %534

534:                                              ; preds = %531, %519, %516, %504, %501
  %535 = phi ptr [ %503, %501 ], [ %518, %516 ], [ null, %504 ], [ %533, %531 ], [ null, %519 ]
  %536 = icmp eq ptr %535, null
  br i1 %536, label %631, label %537, !prof !694

537:                                              ; preds = %534
  %538 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %535) #21
  %539 = icmp eq i8 %538, 0
  br i1 %539, label %631, label %540, !prof !695

540:                                              ; preds = %537
  %541 = getelementptr inbounds %struct.gimple_statement_base, ptr %217, i64 0, i32 4
  %542 = load ptr, ptr %541, align 8, !tbaa !195
  %543 = call ptr @find_taken_edge(ptr noundef %542, ptr noundef nonnull %535) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #21
  %544 = getelementptr inbounds %struct.basic_block_def, ptr %542, i64 0, i32 1
  %545 = getelementptr inbounds %struct.edge_def, ptr %543, i64 0, i32 8
  %546 = getelementptr inbounds %struct.edge_def, ptr %543, i64 0, i32 9
  br label %547

547:                                              ; preds = %598, %540
  %548 = phi i32 [ %599, %598 ], [ 0, %540 ]
  %549 = zext i32 %548 to i64
  br label %550

550:                                              ; preds = %547, %582
  %551 = load ptr, ptr %544, align 8, !tbaa !184
  %552 = icmp eq ptr %551, null
  br i1 %552, label %555, label %553

553:                                              ; preds = %550
  %554 = load i32, ptr %551, align 8, !tbaa !242
  br label %555

555:                                              ; preds = %553, %550
  %556 = phi i32 [ %554, %553 ], [ 0, %550 ]
  %557 = icmp eq i32 %556, %548
  br i1 %557, label %561, label %558

558:                                              ; preds = %555
  %559 = getelementptr inbounds %struct.VEC_edge_base, ptr %551, i64 0, i32 2, i64 %549
  %560 = load ptr, ptr %559, align 8, !tbaa !184
  br label %561

561:                                              ; preds = %558, %555
  %562 = phi ptr [ %560, %558 ], [ null, %555 ]
  %563 = icmp eq ptr %562, null
  br i1 %563, label %600, label %564

564:                                              ; preds = %561
  %565 = icmp eq ptr %562, %543
  br i1 %565, label %591, label %566

566:                                              ; preds = %564
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #21
  %567 = getelementptr inbounds %struct.edge_def, ptr %562, i64 0, i32 1
  %568 = load ptr, ptr %567, align 8, !tbaa !268
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %568) #21
  %569 = load ptr, ptr %7, align 8, !tbaa.struct !392
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #21
  %570 = icmp eq ptr %569, null
  br i1 %570, label %582, label %571

571:                                              ; preds = %566, %571
  %572 = phi ptr [ %580, %571 ], [ %569, %566 ]
  %573 = load ptr, ptr %572, align 8, !tbaa !234
  %574 = getelementptr inbounds %struct.gimple_statement_phi, ptr %573, i64 0, i32 3
  %575 = load ptr, ptr %574, align 8, !tbaa !195
  %576 = getelementptr inbounds %struct.tree_ssa_name, ptr %575, i64 0, i32 3
  %577 = load i32, ptr %576, align 8, !tbaa !195
  %578 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %577) #21
  %579 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %572, i64 0, i32 2
  %580 = load ptr, ptr %579, align 8, !tbaa !237
  %581 = icmp eq ptr %580, null
  br i1 %581, label %582, label %571, !llvm.loop !696

582:                                              ; preds = %571, %566
  %583 = getelementptr inbounds %struct.edge_def, ptr %562, i64 0, i32 8
  %584 = load i32, ptr %583, align 4, !tbaa !697
  %585 = load i32, ptr %545, align 4, !tbaa !697
  %586 = add nsw i32 %585, %584
  store i32 %586, ptr %545, align 4, !tbaa !697
  %587 = getelementptr inbounds %struct.edge_def, ptr %562, i64 0, i32 9
  %588 = load i64, ptr %587, align 8, !tbaa !698
  %589 = load i64, ptr %546, align 8, !tbaa !698
  %590 = add nsw i64 %589, %588
  store i64 %590, ptr %546, align 8, !tbaa !698
  call void @remove_edge(ptr noundef nonnull %562) #21
  store i8 1, ptr @cfg_altered, align 1, !tbaa !195
  br label %550, !llvm.loop !699

591:                                              ; preds = %564
  br i1 %552, label %594, label %592

592:                                              ; preds = %591
  %593 = load i32, ptr %551, align 8, !tbaa !242
  br label %594

594:                                              ; preds = %592, %591
  %595 = phi i32 [ %593, %592 ], [ 0, %591 ]
  %596 = icmp ult i32 %548, %595
  br i1 %596, label %598, label %597

597:                                              ; preds = %594
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.10) #21
  br label %598

598:                                              ; preds = %597, %594
  %599 = add i32 %548, 1
  br label %547, !llvm.loop !699

600:                                              ; preds = %561
  %601 = load ptr, ptr %541, align 8, !tbaa !195
  %602 = getelementptr inbounds %struct.basic_block_def, ptr %601, i64 0, i32 13
  %603 = load i32, ptr %602, align 8, !tbaa !223, !noalias !700
  %604 = and i32 %603, 512
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %612

606:                                              ; preds = %600
  %607 = getelementptr inbounds %struct.basic_block_def, ptr %601, i64 0, i32 7
  %608 = load ptr, ptr %607, align 8, !tbaa !195, !noalias !700
  %609 = icmp eq ptr %608, null
  br i1 %609, label %612, label %610

610:                                              ; preds = %606
  %611 = load ptr, ptr %608, align 8, !tbaa !229, !noalias !700
  br label %612

612:                                              ; preds = %610, %606, %600
  %613 = phi ptr [ %611, %610 ], [ null, %606 ], [ null, %600 ]
  %614 = icmp eq ptr %613, null
  br i1 %614, label %618, label %615

615:                                              ; preds = %612
  %616 = getelementptr inbounds %struct.gimple_seq_d, ptr %613, i64 0, i32 1
  %617 = load ptr, ptr %616, align 8, !tbaa !508, !noalias !700
  br label %618

618:                                              ; preds = %615, %612
  %619 = phi ptr [ %617, %615 ], [ null, %612 ]
  %620 = getelementptr inbounds i8, ptr %6, i64 8
  %621 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr %619, ptr %6, align 8, !tbaa.struct !392
  store ptr %613, ptr %620, align 8, !tbaa.struct !703
  store ptr %601, ptr %621, align 8, !tbaa.struct !704
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #21
  %622 = getelementptr inbounds %struct.edge_def, ptr %543, i64 0, i32 7
  %623 = load i32, ptr %622, align 8, !tbaa !267
  %624 = and i32 %623, -3076
  %625 = or disjoint i32 %624, 1
  store i32 %625, ptr %622, align 8, !tbaa !267
  %626 = getelementptr inbounds %struct.edge_def, ptr %543, i64 0, i32 8
  %627 = load i32, ptr %626, align 4, !tbaa !697
  %628 = icmp sgt i32 %627, 10000
  br i1 %628, label %629, label %630

629:                                              ; preds = %618
  store i32 10000, ptr %626, align 4, !tbaa !697
  br label %630

630:                                              ; preds = %629, %618
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  br label %631

631:                                              ; preds = %630, %537, %534, %458, %452, %285, %281, %225, %216
  %632 = phi i8 [ %218, %216 ], [ %218, %285 ], [ %218, %281 ], [ %218, %452 ], [ 0, %225 ], [ %218, %630 ], [ %218, %537 ], [ %218, %534 ], [ %218, %458 ]
  %633 = load ptr, ptr %202, align 8, !tbaa !656
  store ptr %633, ptr %5, align 8, !tbaa !670
  %634 = load ptr, ptr %198, align 8, !tbaa !668
  %635 = icmp eq ptr %633, %634
  br i1 %635, label %636, label %642, !prof !705

636:                                              ; preds = %631
  %637 = load ptr, ptr %201, align 8, !tbaa !706
  %638 = icmp eq ptr %637, null
  br i1 %638, label %646, label %639, !prof !665

639:                                              ; preds = %636
  %640 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %637, i64 0, i32 1
  store ptr %633, ptr %640, align 8, !tbaa !656
  %641 = load ptr, ptr %202, align 8, !tbaa !656
  store ptr %637, ptr %641, align 8, !tbaa !706
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %201, i8 0, i64 16, i1 false)
  br label %646

642:                                              ; preds = %631
  call fastcc void @link_use_stmts_after(ptr noundef %633, ptr noundef nonnull %5)
  %643 = load ptr, ptr %5, align 8, !tbaa !670
  %644 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %643, i64 0, i32 2
  %645 = load ptr, ptr %644, align 8, !tbaa !195
  br label %646

646:                                              ; preds = %642, %639, %636
  %647 = phi ptr [ %645, %642 ], [ null, %639 ], [ null, %636 ]
  %648 = load ptr, ptr %5, align 8, !tbaa !670
  %649 = load ptr, ptr %198, align 8, !tbaa !668
  %650 = icmp eq ptr %648, %649
  br i1 %650, label %651, label %216, !prof !707, !llvm.loop !708

651:                                              ; preds = %646
  %652 = icmp eq i8 %632, 0
  br i1 %652, label %670, label %653, !prof !665

653:                                              ; preds = %208, %651
  %654 = load ptr, ptr %31, align 8, !tbaa !656
  %655 = icmp eq ptr %30, %654
  br i1 %655, label %663, label %656, !prof !664

656:                                              ; preds = %653
  %657 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !199
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %662, label %659

659:                                              ; preds = %656
  %660 = call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %30) #21
  %661 = icmp eq i8 %660, 0
  br i1 %661, label %662, label %663

662:                                              ; preds = %656, %659
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2690, ptr noundef nonnull @.str.10) #21
  br label %663

663:                                              ; preds = %653, %662, %659
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %0) #21
  %664 = load i32, ptr %0, align 8
  %665 = and i32 %664, 255
  %666 = icmp eq i32 %665, 16
  br i1 %666, label %667, label %668, !prof !660

667:                                              ; preds = %663
  call void @remove_phi_node(ptr noundef nonnull %3, i8 noundef zeroext 1) #21
  br label %669

668:                                              ; preds = %663
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #21
  call void @release_defs(ptr noundef nonnull %0) #21
  br label %669

669:                                              ; preds = %667, %668
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  br label %670

670:                                              ; preds = %669, %651
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #21
  br label %671

671:                                              ; preds = %135, %139, %143, %173, %670
  %672 = call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %29) #21
  br label %673

673:                                              ; preds = %671, %133, %49
  ret void
}

declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @release_defs(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @fold_stmt_inplace(ptr noundef) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !709 !PGOFuncName !710 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !284
  %7 = load ptr, ptr %6, align 8, !tbaa !184
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #21
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %77, !prof !679

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !195
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #21
  %17 = icmp eq i8 %16, 0
  %18 = xor i1 %9, %17
  br i1 %18, label %25, label %19, !prof !711

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !195
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25, !prof !712

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 4, i64 0
  br label %25

25:                                               ; preds = %19, %13, %23
  %26 = phi i32 [ %21, %23 ], [ 0, %13 ], [ %21, %19 ]
  %27 = phi ptr [ %4, %23 ], [ null, %13 ], [ %4, %19 ]
  %28 = phi i32 [ 1, %23 ], [ 0, %13 ], [ 0, %19 ]
  %29 = phi i1 [ true, %23 ], [ false, %13 ], [ false, %19 ]
  %30 = phi i8 [ 0, %23 ], [ 1, %13 ], [ 1, %19 ]
  %31 = phi ptr [ %24, %23 ], [ null, %13 ], [ null, %19 ]
  br i1 %29, label %32, label %189, !prof !713

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.gimple_statement_phi, ptr %27, i64 0, i32 1
  br label %34

34:                                               ; preds = %32, %72
  %35 = phi ptr [ %31, %32 ], [ %75, %72 ]
  %36 = phi ptr [ %0, %32 ], [ %62, %72 ]
  %37 = phi i8 [ %30, %32 ], [ %74, %72 ]
  %38 = phi i32 [ %28, %32 ], [ %73, %72 ]
  %39 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !284
  %41 = load ptr, ptr %40, align 8, !tbaa !184
  %42 = icmp ne ptr %41, %7
  %43 = icmp eq ptr %35, %0
  %44 = or i1 %42, %43
  br i1 %44, label %61, label %45, !prof !714

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !656
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %61, label %49, !prof !715

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !706
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !656
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !656
  %56 = load ptr, ptr %53, align 8, !tbaa !656
  store ptr %50, ptr %56, align 8, !tbaa !706
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %52, %49
  store ptr %36, ptr %35, align 8, !tbaa !706
  %58 = load ptr, ptr %46, align 8, !tbaa !656
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !656
  %60 = load ptr, ptr %46, align 8, !tbaa !656
  store ptr %35, ptr %60, align 8, !tbaa !706
  store ptr %35, ptr %46, align 8, !tbaa !656
  br label %61

61:                                               ; preds = %34, %45, %57
  %62 = phi ptr [ %36, %34 ], [ %35, %57 ], [ %35, %45 ]
  %63 = icmp slt i32 %38, %26
  br i1 %63, label %64, label %72, !prof !716

64:                                               ; preds = %61
  %65 = add nsw i32 %38, 1
  %66 = load i32, ptr %33, align 8, !tbaa !195
  %67 = icmp ult i32 %66, %38
  br i1 %67, label %68, label %69, !prof !717

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 3103, ptr noundef nonnull @.str.10) #21
  br label %69

69:                                               ; preds = %68, %64
  %70 = zext i32 %38 to i64
  %71 = getelementptr inbounds %struct.gimple_statement_phi, ptr %27, i64 0, i32 4, i64 %70
  br label %72

72:                                               ; preds = %61, %69
  %73 = phi i32 [ %65, %69 ], [ %38, %61 ]
  %74 = phi i8 [ %37, %69 ], [ 1, %61 ]
  %75 = phi ptr [ %71, %69 ], [ null, %61 ]
  %76 = icmp eq i8 %74, 0
  br i1 %76, label %34, label %189, !prof !718, !llvm.loop !719

77:                                               ; preds = %2
  br i1 %9, label %148, label %78, !prof !680

78:                                               ; preds = %77
  %79 = load i32, ptr %4, align 8
  %80 = and i32 %79, 255
  %81 = add nsw i32 %80, -10
  %82 = icmp ult i32 %81, -9
  br i1 %82, label %86, label %83, !prof !684

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !195
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi ptr [ %85, %83 ], [ null, %78 ]
  %88 = icmp eq ptr %87, null
  %89 = select i1 %9, i1 true, i1 %88, !prof !684
  br i1 %89, label %100, label %90, !prof !684

90:                                               ; preds = %86
  %91 = and i32 %79, 254
  %92 = add nsw i32 %91, -10
  %93 = icmp ult i32 %92, -4
  br i1 %93, label %100, label %94, !prof !720

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !195
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98, !prof !721

98:                                               ; preds = %94
  %99 = load ptr, ptr %87, align 8, !tbaa !415
  br label %100

100:                                              ; preds = %98, %94, %90, %86
  %101 = phi ptr [ %87, %86 ], [ %87, %90 ], [ %87, %94 ], [ %99, %98 ]
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103, !prof !684

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.use_optype_d, ptr %101, i64 0, i32 1
  %105 = load ptr, ptr %101, align 8, !tbaa !415
  br label %106

106:                                              ; preds = %100, %103
  %107 = phi ptr [ %105, %103 ], [ %101, %100 ]
  %108 = phi i8 [ 0, %103 ], [ 1, %100 ]
  %109 = phi ptr [ %104, %103 ], [ null, %100 ]
  br i1 %102, label %189, label %110, !prof !722

110:                                              ; preds = %106, %143
  %111 = phi ptr [ %146, %143 ], [ %109, %106 ]
  %112 = phi ptr [ %138, %143 ], [ %0, %106 ]
  %113 = phi i8 [ %145, %143 ], [ %108, %106 ]
  %114 = phi ptr [ %144, %143 ], [ %107, %106 ]
  %115 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !284
  %117 = load ptr, ptr %116, align 8, !tbaa !184
  %118 = icmp ne ptr %117, %7
  %119 = icmp eq ptr %111, %0
  %120 = or i1 %118, %119
  br i1 %120, label %137, label %121, !prof !723

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %112, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !656
  %124 = icmp eq ptr %123, %111
  br i1 %124, label %137, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr %111, align 8, !tbaa !706
  %127 = icmp eq ptr %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !656
  %131 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %126, i64 0, i32 1
  store ptr %130, ptr %131, align 8, !tbaa !656
  %132 = load ptr, ptr %129, align 8, !tbaa !656
  store ptr %126, ptr %132, align 8, !tbaa !706
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %111, i8 0, i64 16, i1 false)
  br label %133

133:                                              ; preds = %128, %125
  store ptr %112, ptr %111, align 8, !tbaa !706
  %134 = load ptr, ptr %122, align 8, !tbaa !656
  %135 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  store ptr %134, ptr %135, align 8, !tbaa !656
  %136 = load ptr, ptr %122, align 8, !tbaa !656
  store ptr %111, ptr %136, align 8, !tbaa !706
  store ptr %111, ptr %122, align 8, !tbaa !656
  br label %137

137:                                              ; preds = %133, %121, %110
  %138 = phi ptr [ %112, %110 ], [ %111, %133 ], [ %111, %121 ]
  %139 = icmp eq ptr %114, null
  br i1 %139, label %143, label %140, !prof !724

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.use_optype_d, ptr %114, i64 0, i32 1
  %142 = load ptr, ptr %114, align 8, !tbaa !415
  br label %143

143:                                              ; preds = %137, %140
  %144 = phi ptr [ %142, %140 ], [ %114, %137 ]
  %145 = phi i8 [ %113, %140 ], [ 1, %137 ]
  %146 = phi ptr [ %141, %140 ], [ null, %137 ]
  %147 = icmp eq i8 %145, 0
  br i1 %147, label %110, label %189, !prof !725, !llvm.loop !726

148:                                              ; preds = %77
  %149 = and i32 %10, 254
  %150 = add nsw i32 %149, -10
  %151 = icmp ult i32 %150, -4
  br i1 %151, label %163, label %152, !prof !727

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !195
  %155 = icmp eq ptr %154, null
  br i1 %155, label %163, label %156, !prof !727

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.use_optype_d, ptr %154, i64 0, i32 1, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !728
  %159 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %160 = icmp eq ptr %158, %159
  %161 = getelementptr inbounds %struct.use_optype_d, ptr %154, i64 0, i32 1
  %162 = select i1 %160, ptr %161, ptr null, !prof !681
  br label %163

163:                                              ; preds = %148, %152, %156
  %164 = phi ptr [ null, %148 ], [ null, %152 ], [ %162, %156 ]
  %165 = icmp eq ptr %164, null
  br i1 %165, label %189, label %166, !prof !727

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %164, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !284
  %169 = load ptr, ptr %168, align 8, !tbaa !184
  %170 = icmp ne ptr %169, %7
  %171 = icmp eq ptr %164, %0
  %172 = or i1 %171, %170
  br i1 %172, label %189, label %173, !prof !681

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !656
  %176 = icmp eq ptr %175, %164
  br i1 %176, label %189, label %177

177:                                              ; preds = %173
  %178 = load ptr, ptr %164, align 8, !tbaa !706
  %179 = icmp eq ptr %178, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %164, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !656
  %183 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %178, i64 0, i32 1
  store ptr %182, ptr %183, align 8, !tbaa !656
  %184 = load ptr, ptr %181, align 8, !tbaa !656
  store ptr %178, ptr %184, align 8, !tbaa !706
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %164, i8 0, i64 16, i1 false)
  br label %185

185:                                              ; preds = %180, %177
  store ptr %0, ptr %164, align 8, !tbaa !706
  %186 = load ptr, ptr %174, align 8, !tbaa !656
  %187 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %164, i64 0, i32 1
  store ptr %186, ptr %187, align 8, !tbaa !656
  %188 = load ptr, ptr %174, align 8, !tbaa !656
  store ptr %164, ptr %188, align 8, !tbaa !706
  store ptr %164, ptr %174, align 8, !tbaa !656
  br label %189

189:                                              ; preds = %143, %72, %106, %25, %185, %173, %166, %163
  %190 = phi ptr [ %0, %166 ], [ %0, %163 ], [ %164, %185 ], [ %164, %173 ], [ %0, %25 ], [ %0, %106 ], [ %62, %72 ], [ %138, %143 ]
  %191 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !706
  %193 = icmp eq ptr %192, null
  br i1 %193, label %199, label %194, !prof !705

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !656
  %197 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %192, i64 0, i32 1
  store ptr %196, ptr %197, align 8, !tbaa !656
  %198 = load ptr, ptr %195, align 8, !tbaa !656
  store ptr %192, ptr %198, align 8, !tbaa !706
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %191, i8 0, i64 16, i1 false)
  br label %199

199:                                              ; preds = %194, %189
  store ptr %190, ptr %191, align 8, !tbaa !706
  %200 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %190, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !656
  %202 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %201, ptr %202, align 8, !tbaa !656
  %203 = load ptr, ptr %200, align 8, !tbaa !656
  store ptr %191, ptr %203, align 8, !tbaa !706
  store ptr %191, ptr %200, align 8, !tbaa !656
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!182}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!35 = !{ptr @tree_ssa_dominator_optimize, ptr @htab_create, i64 76}
!36 = !{ptr @tree_ssa_dominator_optimize, ptr @vec_heap_p_reserve_exact, i64 152}
!37 = !{ptr @tree_ssa_dominator_optimize, ptr @bitmap_obstack_alloc_stat, i64 76}
!38 = !{ptr @tree_ssa_dominator_optimize, ptr @init_walk_dominator_tree, i64 76}
!39 = !{ptr @tree_ssa_dominator_optimize, ptr @calculate_dominance_info, i64 76}
!40 = !{ptr @tree_ssa_dominator_optimize, ptr @loop_optimizer_init, i64 76}
!41 = !{ptr @tree_ssa_dominator_optimize, ptr @threadedge_initialize_values, i64 76}
!42 = !{ptr @tree_ssa_dominator_optimize, ptr @mark_dfs_back_edges, i64 76}
!43 = !{ptr @tree_ssa_dominator_optimize, ptr @walk_dominator_tree, i64 76}
!44 = !{ptr @tree_ssa_dominator_optimize, ptr @update_ssa, i64 76}
!45 = !{ptr @tree_ssa_dominator_optimize, ptr @free, i64 1093290}
!46 = !{ptr @tree_ssa_dominator_optimize, ptr @thread_through_all_blocks, i64 76}
!47 = !{ptr @tree_ssa_dominator_optimize, ptr @free_dominance_info, i64 31}
!48 = !{ptr @tree_ssa_dominator_optimize, ptr @statistics_counter_event, i64 228}
!49 = !{ptr @tree_ssa_dominator_optimize, ptr @loop_optimizer_finalize, i64 76}
!50 = !{ptr @tree_ssa_dominator_optimize, ptr @htab_delete, i64 76}
!51 = !{ptr @tree_ssa_dominator_optimize, ptr @fini_walk_dominator_tree, i64 76}
!52 = !{ptr @tree_ssa_dominator_optimize, ptr @bitmap_obstack_free, i64 76}
!53 = !{ptr @tree_ssa_dominator_optimize, ptr @threadedge_finalize_values, i64 76}
!54 = !{ptr @eliminate_degenerate_phis, ptr @bitmap_obstack_alloc_stat, i64 228}
!55 = !{ptr @eliminate_degenerate_phis, ptr @calculate_dominance_info, i64 76}
!56 = !{ptr @eliminate_degenerate_phis, ptr @eliminate_degenerate_phis_1, i64 76}
!57 = !{ptr @eliminate_degenerate_phis, ptr @bitmap_copy, i64 31}
!58 = !{ptr @eliminate_degenerate_phis, ptr @eliminate_const_or_copy, i64 26745}
!59 = !{ptr @eliminate_degenerate_phis, ptr @bitmap_obstack_free, i64 152}
!60 = !{ptr @avail_expr_eq, ptr @operand_equal_p, i64 140837}
!61 = !{ptr @avail_expr_eq, ptr @types_compatible_p, i64 112302}
!62 = !{ptr @free_expr_hash_elt, ptr @free, i64 1366321}
!63 = !{ptr @dom_opt_enter_block, ptr @vec_heap_p_reserve, i64 170}
!64 = !{ptr @dom_opt_enter_block, ptr @get_immediate_dominator, i64 301379}
!65 = !{ptr @dom_opt_enter_block, ptr @dominated_by_p, i64 406696}
!66 = !{ptr @dom_opt_enter_block, ptr @is_gimple_min_invariant, i64 979601}
!67 = !{ptr @dom_opt_enter_block, ptr @set_ssa_name_value, i64 129539}
!68 = !{ptr @dom_opt_enter_block, ptr @xcalloc, i64 1146308}
!69 = !{ptr @dom_opt_enter_block, ptr @iterative_hash_expr, i64 310888}
!70 = !{ptr @dom_opt_enter_block, ptr @iterative_hash, i64 482783}
!71 = !{ptr @dom_opt_enter_block, ptr @commutative_tree_code, i64 474024}
!72 = !{ptr @dom_opt_enter_block, ptr @iterative_hash_exprs_commutative, i64 376217}
!73 = !{ptr @dom_opt_enter_block, ptr @htab_find_slot_with_hash, i64 579332}
!74 = !{ptr @dom_opt_enter_block, ptr @free, i64 92}
!75 = !{ptr @dom_opt_enter_block, ptr @gsi_start_phis, i64 890688}
!76 = !{ptr @dom_opt_enter_block, ptr @operand_equal_for_phi_arg_p, i64 111029}
!77 = !{ptr @dom_opt_enter_block, ptr @may_propagate_copy, i64 18530}
!78 = !{ptr @dom_opt_enter_block, ptr @tree_swap_operands_p, i64 282250}
!79 = !{ptr @dom_opt_enter_block, ptr @is_gimple_reg, i64 10014}
!80 = !{ptr @dom_opt_enter_block, ptr @get_virtual_var, i64 2052}
!81 = !{ptr @dom_opt_enter_block, ptr @simple_iv_increment_p, i64 3960}
!82 = !{ptr @dom_opt_enter_block, ptr @propagate_value, i64 13500}
!83 = !{ptr @dom_opt_enter_block, ptr @gimple_set_modified, i64 12268}
!84 = !{ptr @dom_opt_enter_block, ptr @fold_stmt, i64 7068}
!85 = !{ptr @dom_opt_enter_block, ptr @gimple_assign_single_p, i64 417111}
!86 = !{ptr @dom_opt_enter_block, ptr @gimple_rhs_has_side_effects, i64 387866}
!87 = !{ptr @dom_opt_enter_block, ptr @update_stmt_operands, i64 8207}
!88 = !{ptr @dom_opt_enter_block, ptr @gimple_get_lhs, i64 536657}
!89 = !{ptr @dom_opt_enter_block, ptr @lookup_avail_expr, i64 536737}
!90 = !{ptr @dom_opt_enter_block, ptr @useless_type_conversion_p, i64 1139}
!91 = !{ptr @dom_opt_enter_block, ptr @may_propagate_copy_into_stmt, i64 854}
!92 = !{ptr @dom_opt_enter_block, ptr @propagate_tree_value_into_stmt, i64 1139}
!93 = !{ptr @dom_opt_enter_block, ptr @gimple_build_assign_stat, i64 80}
!94 = !{ptr @dom_opt_enter_block, ptr @fold_binary_loc, i64 713}
!95 = !{ptr @dom_opt_enter_block, ptr @find_taken_edge, i64 279}
!96 = !{ptr @dom_opt_enter_block, ptr @maybe_clean_or_replace_eh_stmt, i64 7780}
!97 = !{ptr @dom_opt_enter_block, ptr @label_to_block_fn, i64 18498}
!98 = !{ptr @dom_opt_enter_block, ptr @fold_convert_loc, i64 2396}
!99 = !{ptr @dom_opt_enter_block, ptr @extract_true_false_edges_from_block, i64 282250}
!100 = !{ptr @dom_opt_enter_block, ptr @integer_zerop, i64 38258}
!101 = !{ptr @dom_opt_enter_block, ptr @build2_stat, i64 263121}
!102 = !{ptr @dom_opt_enter_block, ptr @invert_truthvalue_loc, i64 263121}
!103 = !{ptr @dom_opt_enter_block, ptr @record_conditions, i64 558}
!104 = !{ptr @dom_opt_enter_block, ptr @xmalloc, i64 525684}
!105 = !{ptr @dom_opt_leave_block, ptr @potentially_threadable_block, i64 583423}
!106 = !{ptr @dom_opt_leave_block, ptr @gimple_build_cond, i64 76}
!107 = !{ptr @dom_opt_leave_block, ptr @thread_across_edge, i64 241918}
!108 = !{ptr @dom_opt_leave_block, ptr @last_stmt, i64 296333}
!109 = !{ptr @dom_opt_leave_block, ptr @extract_true_false_edges_from_block, i64 282250}
!110 = !{ptr @dom_opt_leave_block, ptr @vec_heap_p_reserve, i64 97}
!111 = !{ptr @dom_opt_leave_block, ptr @record_const_or_copy, i64 85838}
!112 = !{ptr @dom_opt_leave_block, ptr @record_cond, i64 93844}
!113 = !{ptr @dom_opt_leave_block, ptr @remove_local_expressions_from_table, i64 35999}
!114 = !{ptr @dom_opt_leave_block, ptr @xcalloc, i64 442832}
!115 = !{ptr @dom_opt_leave_block, ptr @iterative_hash_expr, i64 237638}
!116 = !{ptr @dom_opt_leave_block, ptr @iterative_hash, i64 369033}
!117 = !{ptr @dom_opt_leave_block, ptr @commutative_tree_code, i64 362337}
!118 = !{ptr @dom_opt_leave_block, ptr @iterative_hash_exprs_commutative, i64 287574}
!119 = !{ptr @dom_opt_leave_block, ptr @htab_find_slot_with_hash, i64 1663363}
!120 = !{ptr @dom_opt_leave_block, ptr @free, i64 10}
!121 = !{ptr @dom_opt_leave_block, ptr @htab_clear_slot, i64 1220531}
!122 = !{ptr @dom_opt_leave_block, ptr @set_ssa_name_value, i64 104991}
!123 = !{ptr @record_cond, ptr @xcalloc, i64 93844}
!124 = !{ptr @record_cond, ptr @iterative_hash_expr, i64 50359}
!125 = !{ptr @record_cond, ptr @iterative_hash, i64 78205}
!126 = !{ptr @record_cond, ptr @commutative_tree_code, i64 76786}
!127 = !{ptr @record_cond, ptr @iterative_hash_exprs_commutative, i64 60942}
!128 = !{ptr @record_cond, ptr @htab_find_slot_with_hash, i64 93844}
!129 = !{ptr @record_cond, ptr @vec_heap_p_reserve, i64 15}
!130 = !{ptr @record_cond, ptr @free, i64 2}
!131 = !{ptr @lookup_avail_expr, ptr @gimple_get_lhs, i64 536737}
!132 = !{ptr @lookup_avail_expr, ptr @gimple_call_flags, i64 16191}
!133 = !{ptr @lookup_avail_expr, ptr @xcalloc, i64 16191}
!134 = !{ptr @lookup_avail_expr, ptr @iterative_hash_expr, i64 384676}
!135 = !{ptr @lookup_avail_expr, ptr @iterative_hash, i64 447287}
!136 = !{ptr @lookup_avail_expr, ptr @commutative_tree_code, i64 439172}
!137 = !{ptr @lookup_avail_expr, ptr @iterative_hash_exprs_commutative, i64 348556}
!138 = !{ptr @lookup_avail_expr, ptr @is_gimple_min_invariant, i64 181208}
!139 = !{ptr @lookup_avail_expr, ptr @htab_find_slot_with_hash, i64 535103}
!140 = !{ptr @lookup_avail_expr, ptr @xmalloc, i64 123732}
!141 = !{ptr @lookup_avail_expr, ptr @vec_heap_p_reserve, i64 8}
!142 = !{ptr @record_conditions, ptr @xmalloc, i64 558}
!143 = !{ptr @record_const_or_copy, ptr @set_ssa_name_value, i64 85838}
!144 = !{ptr @record_const_or_copy, ptr @vec_heap_p_reserve, i64 19}
!145 = !{ptr @remove_local_expressions_from_table, ptr @htab_find_slot_with_hash, i64 80906}
!146 = !{ptr @remove_local_expressions_from_table, ptr @htab_clear_slot, i64 80906}
!147 = !{ptr @simplify_stmt_for_jump_threading, ptr @gimple_get_lhs, i64 549200}
!148 = !{ptr @simplify_stmt_for_jump_threading, ptr @gimple_call_flags, i64 16566}
!149 = !{ptr @simplify_stmt_for_jump_threading, ptr @xcalloc, i64 16566}
!150 = !{ptr @simplify_stmt_for_jump_threading, ptr @iterative_hash_expr, i64 393608}
!151 = !{ptr @simplify_stmt_for_jump_threading, ptr @iterative_hash, i64 457673}
!152 = !{ptr @simplify_stmt_for_jump_threading, ptr @commutative_tree_code, i64 449370}
!153 = !{ptr @simplify_stmt_for_jump_threading, ptr @iterative_hash_exprs_commutative, i64 356650}
!154 = !{ptr @simplify_stmt_for_jump_threading, ptr @is_gimple_min_invariant, i64 185415}
!155 = !{ptr @simplify_stmt_for_jump_threading, ptr @htab_find_slot_with_hash, i64 547529}
!156 = !{ptr @simplify_stmt_for_jump_threading, ptr @xmalloc, i64 126605}
!157 = !{ptr @simplify_stmt_for_jump_threading, ptr @vec_heap_p_reserve, i64 9}
!158 = !{ptr @eliminate_degenerate_phis_1, ptr @gsi_start_phis, i64 336385}
!159 = !{ptr @eliminate_degenerate_phis_1, ptr @eliminate_const_or_copy, i64 145405}
!160 = !{ptr @eliminate_degenerate_phis_1, ptr @first_dom_son, i64 336385}
!161 = !{ptr @eliminate_degenerate_phis_1, ptr @eliminate_degenerate_phis_1, i64 336309}
!162 = !{ptr @eliminate_degenerate_phis_1, ptr @next_dom_son, i64 336309}
!163 = !{ptr @eliminate_const_or_copy, ptr @bitmap_clear_bit, i64 172150}
!164 = !{ptr @eliminate_const_or_copy, ptr @gsi_for_stmt, i64 46672}
!165 = !{ptr @eliminate_const_or_copy, ptr @remove_phi_node, i64 46636}
!166 = !{ptr @eliminate_const_or_copy, ptr @gsi_remove, i64 36}
!167 = !{ptr @eliminate_const_or_copy, ptr @release_defs, i64 36}
!168 = !{ptr @eliminate_const_or_copy, ptr @operand_equal_p, i64 344}
!169 = !{ptr @eliminate_const_or_copy, ptr @gimple_assign_single_p, i64 3052}
!170 = !{ptr @eliminate_const_or_copy, ptr @may_propagate_copy, i64 38302}
!171 = !{ptr @eliminate_const_or_copy, ptr @link_use_stmts_after, i64 90061}
!172 = !{ptr @eliminate_const_or_copy, ptr @propagate_value, i64 90116}
!173 = !{ptr @eliminate_const_or_copy, ptr @is_gimple_reg, i64 50445}
!174 = !{ptr @eliminate_const_or_copy, ptr @bitmap_set_bit, i64 39664}
!175 = !{ptr @eliminate_const_or_copy, ptr @fold_stmt_inplace, i64 1514}
!176 = !{ptr @eliminate_const_or_copy, ptr @gimple_set_modified, i64 1514}
!177 = !{ptr @eliminate_const_or_copy, ptr @update_stmt_operands, i64 1514}
!178 = !{ptr @eliminate_const_or_copy, ptr @maybe_clean_or_replace_eh_stmt, i64 1514}
!179 = !{ptr @eliminate_const_or_copy, ptr @is_gimple_min_invariant, i64 68}
!180 = !{ptr @eliminate_const_or_copy, ptr @fold_binary_loc, i64 634}
!181 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 129677}
!182 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!183 = !{!"function_entry_count", i64 0}
!184 = !{!185, !185, i64 0}
!185 = !{!"any pointer", !186, i64 0}
!186 = !{!"omnipotent char", !187, i64 0}
!187 = !{!"Simple C/C++ TBAA"}
!188 = !{!189, !185, i64 8}
!189 = !{!"_IO_FILE", !190, i64 0, !185, i64 8, !185, i64 16, !185, i64 24, !185, i64 32, !185, i64 40, !185, i64 48, !185, i64 56, !185, i64 64, !185, i64 72, !185, i64 80, !185, i64 88, !185, i64 96, !185, i64 104, !190, i64 112, !190, i64 116, !191, i64 120, !192, i64 128, !186, i64 130, !186, i64 131, !185, i64 136, !191, i64 144, !185, i64 152, !185, i64 160, !185, i64 168, !185, i64 176, !191, i64 184, !190, i64 192, !186, i64 196}
!190 = !{!"int", !186, i64 0}
!191 = !{!"long", !186, i64 0}
!192 = !{!"short", !186, i64 0}
!193 = !{!189, !185, i64 16}
!194 = !{!"branch_weights", i32 2000, i32 1}
!195 = !{!186, !186, i64 0}
!196 = !{!189, !185, i64 40}
!197 = !{!189, !185, i64 48}
!198 = !{!189, !190, i64 0}
!199 = !{!190, !190, i64 0}
!200 = distinct !{!200, !201, !202}
!201 = !{!"llvm.loop.mustprogress"}
!202 = !{!"llvm.loop.unroll.disable"}
!203 = !{!"function_entry_count", i64 152}
!204 = !{!"tree-ssa-dom.c;gate_dominator"}
!205 = !{!"function_entry_count", i64 76}
!206 = !{!"tree-ssa-dom.c;tree_ssa_dominator_optimize"}
!207 = !{!208, !185, i64 8}
!208 = !{!"dom_walk_data", !190, i64 0, !185, i64 8, !185, i64 16, !185, i64 24, !185, i64 32, !185, i64 40, !191, i64 48, !185, i64 56}
!209 = !{!208, !185, i64 16}
!210 = !{!208, !185, i64 24}
!211 = !{!208, !185, i64 32}
!212 = !{!208, !191, i64 48}
!213 = !{!214, !185, i64 8}
!214 = !{!"function", !185, i64 0, !185, i64 8, !185, i64 16, !185, i64 24, !185, i64 32, !185, i64 40, !185, i64 48, !185, i64 56, !185, i64 64, !185, i64 72, !185, i64 80, !185, i64 88, !185, i64 96, !190, i64 104, !190, i64 108, !190, i64 112, !190, i64 116, !190, i64 120, !190, i64 124, !185, i64 128, !190, i64 136, !190, i64 137, !190, i64 138, !190, i64 138, !190, i64 138, !190, i64 138, !190, i64 138, !190, i64 138, !190, i64 138, !190, i64 139, !190, i64 139, !190, i64 139, !190, i64 139, !190, i64 139, !190, i64 139, !190, i64 139}
!215 = !{!216, !185, i64 0}
!216 = !{!"control_flow_graph", !185, i64 0, !185, i64 8, !185, i64 16, !190, i64 24, !190, i64 28, !190, i64 32, !185, i64 40, !190, i64 48, !186, i64 52, !186, i64 60, !190, i64 68, !190, i64 72}
!217 = !{!218, !185, i64 56}
!218 = !{!"basic_block_def", !185, i64 0, !185, i64 8, !185, i64 16, !185, i64 24, !186, i64 32, !185, i64 48, !185, i64 56, !186, i64 64, !191, i64 72, !190, i64 80, !190, i64 84, !190, i64 88, !190, i64 92, !190, i64 96}
!219 = !{!216, !185, i64 8}
!220 = !{!"branch_weights", i32 1, i32 151}
!221 = !{!"branch_weights", i32 151, i32 602455}
!222 = distinct !{!222, !201, !202}
!223 = !{!218, !190, i64 96}
!224 = !{!225}
!225 = distinct !{!225, !226, !"gsi_start_bb: argument 0"}
!226 = distinct !{!226, !"gsi_start_bb"}
!227 = !{!"branch_weights", i32 301303, i32 0}
!228 = !{!"branch_weights", i32 0, i32 301303}
!229 = !{!230, !185, i64 0}
!230 = !{!"gimple_bb_info", !185, i64 0, !185, i64 8}
!231 = !{!232, !185, i64 0}
!232 = !{!"gimple_seq_d", !185, i64 0, !185, i64 8, !185, i64 16}
!233 = !{!"branch_weights", i32 1, i32 301302}
!234 = !{!235, !185, i64 0}
!235 = !{!"gimple_seq_node_d", !185, i64 0, !185, i64 8, !185, i64 16}
!236 = !{!"branch_weights", i32 680706, i32 0}
!237 = !{!235, !185, i64 16}
!238 = !{!"branch_weights", i32 301302, i32 379404}
!239 = distinct !{!239, !201, !202}
!240 = distinct !{!240, !201, !202}
!241 = !{!"branch_weights", i32 0, i32 890536}
!242 = !{!243, !190, i64 0}
!243 = !{!"VEC_edge_base", !190, i64 0, !190, i64 4, !186, i64 8}
!244 = !{!"branch_weights", i32 301303, i32 589233}
!245 = !{!246, !185, i64 24}
!246 = !{!"edge_def", !185, i64 0, !185, i64 8, !186, i64 16, !185, i64 24, !185, i64 32, !190, i64 40, !190, i64 44, !190, i64 48, !190, i64 52, !191, i64 56}
!247 = !{!"branch_weights", i32 22337, i32 566896}
!248 = !{!249, !185, i64 16}
!249 = !{!"edge_info", !185, i64 0, !185, i64 8, !185, i64 16, !190, i64 24}
!250 = !{!"branch_weights", i32 40654, i32 526242}
!251 = !{!"branch_weights", i32 0, i32 589233}
!252 = !{!"branch_weights", i32 589233, i32 0}
!253 = distinct !{!253, !201, !202}
!254 = !{!"branch_weights", i32 45, i32 31}
!255 = !{!256, !185, i64 0}
!256 = !{!"bitmap_head_def", !185, i64 0, !185, i64 8, !190, i64 16, !185, i64 24}
!257 = !{!"branch_weights", i32 76, i32 0}
!258 = !{!259, !190, i64 16}
!259 = !{!"bitmap_element_def", !185, i64 0, !185, i64 8, !190, i64 16, !186, i64 24}
!260 = !{!191, !191, i64 0}
!261 = distinct !{!261, !201, !202}
!262 = distinct !{!262, !201, !202}
!263 = !{!259, !185, i64 0}
!264 = distinct !{!264, !202}
!265 = !{!216, !185, i64 16}
!266 = !{!218, !185, i64 8}
!267 = !{!246, !190, i64 48}
!268 = !{!246, !185, i64 8}
!269 = !{!218, !190, i64 80}
!270 = distinct !{!270, !201, !202}
!271 = !{!272, !191, i64 16}
!272 = !{!"opt_stats_d", !191, i64 0, !191, i64 8, !191, i64 16, !191, i64 24, !191, i64 32}
!273 = !{!272, !191, i64 24}
!274 = !{!272, !191, i64 32}
!275 = !{!"branch_weights", i32 0, i32 76}
!276 = !{!272, !191, i64 0}
!277 = !{!272, !191, i64 8}
!278 = !{!"function_entry_count", i64 50457}
!279 = !{!"branch_weights", i32 50457, i32 0}
!280 = !{!"branch_weights", i32 0, i32 50457}
!281 = !{!218, !190, i64 84}
!282 = !{!"branch_weights", i32 1, i32 38277}
!283 = !{!"branch_weights", i32 0, i32 303373}
!284 = !{!285, !185, i64 24}
!285 = !{!"ssa_use_operand_d", !185, i64 0, !185, i64 8, !186, i64 16, !185, i64 24}
!286 = !{!"branch_weights", i32 163756, i32 139617}
!287 = !{!"branch_weights", i32 14139, i32 125478}
!288 = !{!"branch_weights", i32 125167, i32 311}
!289 = !{!"branch_weights", i32 125478, i32 177895}
!290 = !{!"branch_weights", i32 265096, i32 38277}
!291 = distinct !{!291, !201, !202}
!292 = !{!"branch_weights", i32 38278, i32 125478}
!293 = !{!"tree-ssa-dom.c;eliminate_degenerate_phis"}
!294 = !{!"branch_weights", i32 31, i32 0}
!295 = distinct !{!295, !201, !202}
!296 = !{!"branch_weights", i32 0, i32 31}
!297 = !{!"branch_weights", i32 4760, i32 22016}
!298 = !{!"branch_weights", i32 26744, i32 1}
!299 = !{!"branch_weights", i32 161271, i32 26744}
!300 = !{!"branch_weights", i32 1, i32 3134}
!301 = !{!"branch_weights", i32 1510, i32 4729}
!302 = !{!"branch_weights", i32 3134, i32 3105}
!303 = !{!"branch_weights", i32 31, i32 3104}
!304 = !{!"branch_weights", i32 31, i32 26745}
!305 = !{!214, !185, i64 24}
!306 = !{!307, !185, i64 16}
!307 = !{!"gimple_df", !185, i64 0, !185, i64 8, !185, i64 16, !185, i64 24, !308, i64 32, !308, i64 48, !185, i64 64, !185, i64 72, !185, i64 80, !185, i64 88, !190, i64 96, !309, i64 104}
!308 = !{!"pt_solution", !190, i64 0, !190, i64 0, !190, i64 0, !190, i64 0, !190, i64 0, !190, i64 0, !185, i64 8}
!309 = !{!"ssa_operands", !185, i64 0, !190, i64 8, !190, i64 12, !186, i64 16, !185, i64 24, !185, i64 32}
!310 = !{!"branch_weights", i32 0, i32 26745}
!311 = distinct !{!311, !201, !202}
!312 = !{!"function_entry_count", i64 502735}
!313 = !{!"tree-ssa-dom.c;real_avail_expr_hash"}
!314 = !{!315, !190, i64 64}
!315 = !{!"expr_hash_elt", !185, i64 0, !316, i64 8, !185, i64 56, !190, i64 64, !185, i64 72}
!316 = !{!"hashable_expr", !185, i64 0, !190, i64 8, !186, i64 16}
!317 = !{!"function_entry_count", i64 3396587}
!318 = !{!"tree-ssa-dom.c;avail_expr_eq"}
!319 = !{!315, !185, i64 56}
!320 = !{!315, !185, i64 72}
!321 = !{!"branch_weights", i32 1366321, i32 2030266}
!322 = !{!"branch_weights", i32 112302, i32 1917964}
!323 = !{!316, !185, i64 0}
!324 = !{!"branch_weights", i32 0, i32 112302}
!325 = !{!"branch_weights", i32 112302, i32 0}
!326 = !{!316, !190, i64 8}
!327 = !{!"branch_weights", i32 0, i32 83767, i32 0, i32 28535, i32 0}
!328 = !{!"branch_weights", i32 28535, i32 0}
!329 = !{!"branch_weights", i32 0, i32 28535}
!330 = distinct !{!330, !201, !202}
!331 = !{!"branch_weights", i32 20902, i32 91400}
!332 = !{!"branch_weights", i32 0, i32 91400}
!333 = !{!"branch_weights", i32 24, i32 112278}
!334 = !{!"branch_weights", i32 20787, i32 91491}
!335 = !{!"function_entry_count", i64 1366321}
!336 = !{!"tree-ssa-dom.c;free_expr_hash_elt"}
!337 = !{!315, !190, i64 16}
!338 = !{!"branch_weights", i32 0, i32 1366321}
!339 = !{!"function_entry_count", i64 301379}
!340 = !{!"tree-ssa-dom.c;dom_opt_enter_block"}
!341 = !{!"branch_weights", i32 301379, i32 0}
!342 = !{!"branch_weights", i32 0, i32 301379}
!343 = !{!344, !190, i64 4}
!344 = !{!"VEC_expr_hash_elt_t_base", !190, i64 0, !190, i64 4, !186, i64 8}
!345 = !{!344, !190, i64 0}
!346 = !{!"branch_weights", i32 32, i32 301347}
!347 = !{!348, !190, i64 4}
!348 = !{!"VEC_tree_base", !190, i64 0, !190, i64 4, !186, i64 8}
!349 = !{!348, !190, i64 0}
!350 = !{!"branch_weights", i32 17, i32 301362}
!351 = !{!"branch_weights", i32 0, i32 602682}
!352 = !{!"branch_weights", i32 76, i32 602606}
!353 = !{!"branch_weights", i32 195986, i32 406696}
!354 = !{!246, !185, i64 0}
!355 = !{!"branch_weights", i32 406696, i32 0}
!356 = !{!"branch_weights", i32 301303, i32 105393}
!357 = distinct !{!357, !201, !202}
!358 = !{!"branch_weights", i32 105469, i32 195910}
!359 = !{!"branch_weights", i32 195910, i32 0}
!360 = !{!"branch_weights", i32 3501, i32 192409}
!361 = !{!249, !185, i64 0}
!362 = !{!"branch_weights", i32 71883, i32 120526}
!363 = !{!249, !185, i64 8}
!364 = !{!"branch_weights", i32 120519, i32 7}
!365 = !{!"branch_weights", i32 0, i32 120519}
!366 = !{!"branch_weights", i32 120495, i32 24}
!367 = !{!"branch_weights", i32 0, i32 120526}
!368 = !{!369, !186, i64 49}
!369 = !{!"real_format", !185, i64 0, !185, i64 8, !190, i64 16, !190, i64 20, !190, i64 24, !190, i64 28, !190, i64 32, !190, i64 36, !190, i64 40, !186, i64 44, !186, i64 45, !186, i64 46, !186, i64 47, !186, i64 48, !186, i64 49, !186, i64 50, !186, i64 51}
!370 = !{!"branch_weights", i32 206357, i32 0}
!371 = !{!"branch_weights", i32 0, i32 206357}
!372 = !{!"branch_weights", i32 45, i32 206312}
!373 = !{!"branch_weights", i32 11728, i32 180681}
!374 = !{!249, !190, i64 24}
!375 = !{!"branch_weights", i32 1, i32 180680}
!376 = !{!377, !185, i64 48}
!377 = !{!"cond_equivalence", !316, i64 0, !185, i64 48}
!378 = !{i64 0, i64 8, !184, i64 8, i64 4, !199, i64 16, i64 8, !184, i64 16, i64 4, !199, i64 24, i64 8, !184, i64 16, i64 4, !199, i64 24, i64 8, !184, i64 32, i64 8, !184, i64 16, i64 8, !184, i64 24, i64 1, !195, i64 32, i64 8, !260, i64 40, i64 8, !184}
!379 = !{!315, !185, i64 0}
!380 = !{!"branch_weights", i32 0, i32 366965, i32 535, i32 1801688, i32 32757}
!381 = !{!"branch_weights", i32 0, i32 69, i32 466, i32 0}
!382 = !{!"branch_weights", i32 371748, i32 1429940}
!383 = !{!"branch_weights", i32 1, i32 32756}
!384 = !{!"branch_weights", i32 5123, i32 32756}
!385 = distinct !{!385, !201, !202}
!386 = !{!"branch_weights", i32 1115984, i32 24}
!387 = !{!"branch_weights", i32 1115984, i32 0}
!388 = !{!"branch_weights", i32 0, i32 1115984}
!389 = !{!"branch_weights", i32 183, i32 1115801}
!390 = !{!"branch_weights", i32 398652, i32 180680}
!391 = distinct !{!391, !201, !202}
!392 = !{i64 0, i64 8, !184, i64 8, i64 8, !184, i64 16, i64 8, !184}
!393 = !{!"branch_weights", i32 205016, i32 96363}
!394 = !{!"branch_weights", i32 1, i32 5029}
!395 = !{!"branch_weights", i32 0, i32 204829}
!396 = !{!"branch_weights", i32 96363, i32 108466}
!397 = !{!"branch_weights", i32 91333, i32 113496}
!398 = !{!"branch_weights", i32 199800, i32 5029}
!399 = distinct !{!399, !201, !202}
!400 = !{!"branch_weights", i32 0, i32 96363}
!401 = !{!"branch_weights", i32 5030, i32 91333}
!402 = !{!"branch_weights", i32 0, i32 5030}
!403 = !{!"branch_weights", i32 96363, i32 0}
!404 = distinct !{!404, !201, !202}
!405 = !{!406}
!406 = distinct !{!406, !407, !"gsi_start_bb: argument 0"}
!407 = distinct !{!407, !"gsi_start_bb"}
!408 = !{!"branch_weights", i32 76, i32 301303}
!409 = !{!"branch_weights", i32 1, i32 301378}
!410 = !{!"branch_weights", i32 282250, i32 398456}
!411 = !{!"branch_weights", i32 0, i32 282250}
!412 = !{!"branch_weights", i32 282250, i32 0}
!413 = !{!"branch_weights", i32 0, i32 680706}
!414 = !{!"branch_weights", i32 5888, i32 674818}
!415 = !{!416, !185, i64 0}
!416 = !{!"use_optype_d", !185, i64 0, !285, i64 8}
!417 = !{!"branch_weights", i32 1, i32 680705}
!418 = !{!"branch_weights", i32 834847, i32 0}
!419 = !{!"branch_weights", i32 0, i32 834847}
!420 = !{!"branch_weights", i32 832367, i32 2480}
!421 = !{!"branch_weights", i32 826832, i32 8015}
!422 = !{!"branch_weights", i32 1026, i32 6989}
!423 = !{!"branch_weights", i32 1026, i32 0}
!424 = !{!"branch_weights", i32 0, i32 8015}
!425 = !{!"branch_weights", i32 8015, i32 0, i32 0}
!426 = !{!"branch_weights", i32 3960, i32 4055}
!427 = !{!"branch_weights", i32 0, i32 3960}
!428 = !{!"branch_weights", i32 8015, i32 0}
!429 = !{!"branch_weights", i32 4055, i32 3960}
!430 = !{i8 0, i8 2}
!431 = !{!"branch_weights", i32 3960, i32 0}
!432 = !{!"branch_weights", i32 674818, i32 160029}
!433 = !{!"branch_weights", i32 154142, i32 680705}
!434 = distinct !{!434, !201, !202}
!435 = !{!"branch_weights", i32 673638, i32 7068}
!436 = !{!"branch_weights", i32 3954, i32 3114}
!437 = !{!"branch_weights", i32 3114, i32 0}
!438 = !{!"branch_weights", i32 3313, i32 3755}
!439 = !{!"branch_weights", i32 0, i32 3755}
!440 = !{!"branch_weights", i32 3313, i32 0, i32 0}
!441 = !{!"branch_weights", i32 254327, i32 426379}
!442 = !{!"branch_weights", i32 254327, i32 0}
!443 = !{!"branch_weights", i32 138087, i32 288292}
!444 = !{!"branch_weights", i32 0, i32 138087}
!445 = !{!"branch_weights", i32 4548, i32 133539}
!446 = !{!"branch_weights", i32 0, i32 133539}
!447 = !{!"branch_weights", i32 282250, i32 144129}
!448 = !{!"branch_weights", i32 144049, i32 536657}
!449 = !{!"branch_weights", i32 0, i32 536657}
!450 = !{!"branch_weights", i32 529823, i32 6834}
!451 = !{!"branch_weights", i32 282330, i32 254327}
!452 = !{!"branch_weights", i32 254247, i32 80}
!453 = !{!"branch_weights", i32 0, i32 254247}
!454 = !{!"branch_weights", i32 254247, i32 0}
!455 = !{!"branch_weights", i32 257411, i32 796}
!456 = !{!"branch_weights", i32 0, i32 257411}
!457 = !{!"branch_weights", i32 257411, i32 0}
!458 = !{!"branch_weights", i32 0, i32 257411, i32 0, i32 0}
!459 = !{!"branch_weights", i32 159505, i32 97906}
!460 = !{!"branch_weights", i32 0, i32 159505}
!461 = !{!"branch_weights", i32 6869, i32 250542}
!462 = !{!"branch_weights", i32 0, i32 250542, i32 0, i32 0}
!463 = !{!"branch_weights", i32 159505, i32 91037}
!464 = !{!"branch_weights", i32 12, i32 250530}
!465 = !{!"branch_weights", i32 0, i32 6881}
!466 = !{!"branch_weights", i32 6881, i32 0}
!467 = !{!"branch_weights", i32 269, i32 6612}
!468 = !{!"branch_weights", i32 1, i32 268}
!469 = !{!"branch_weights", i32 130, i32 268}
!470 = distinct !{!470, !201, !202}
!471 = !{!"branch_weights", i32 0, i32 398}
!472 = !{!"branch_weights", i32 0, i32 254327, i32 282250, i32 0, i32 80}
!473 = !{!"branch_weights", i32 0, i32 254327}
!474 = !{!"branch_weights", i32 0, i32 80}
!475 = !{!"branch_weights", i32 535518, i32 1139}
!476 = !{!"branch_weights", i32 854, i32 285}
!477 = !{!"branch_weights", i32 134, i32 151}
!478 = !{!"branch_weights", i32 0, i32 134}
!479 = !{!"branch_weights", i32 0, i32 854}
!480 = !{!"branch_weights", i32 1139, i32 0}
!481 = !{!"branch_weights", i32 134, i32 1005}
!482 = !{!"branch_weights", i32 0, i32 1005}
!483 = !{!"branch_weights", i32 95422, i32 158825}
!484 = !{!"branch_weights", i32 0, i32 158825}
!485 = !{!"branch_weights", i32 876, i32 157949}
!486 = !{!"branch_weights", i32 154835, i32 3114}
!487 = !{!"branch_weights", i32 3990, i32 0}
!488 = !{!"branch_weights", i32 98531, i32 155796}
!489 = !{!"branch_weights", i32 0, i32 155796}
!490 = !{!"branch_weights", i32 831, i32 154965}
!491 = !{!"branch_weights", i32 0, i32 154965}
!492 = !{!"branch_weights", i32 154823, i32 142}
!493 = !{!"branch_weights", i32 80, i32 893}
!494 = !{!"branch_weights", i32 80, i32 0}
!495 = !{!"branch_weights", i32 672926, i32 7780}
!496 = !{!"branch_weights", i32 6407, i32 1373}
!497 = !{!"branch_weights", i32 7067, i32 713, i32 0}
!498 = !{!"branch_weights", i32 0, i32 713}
!499 = !{!"branch_weights", i32 7501, i32 279}
!500 = !{!"branch_weights", i32 279, i32 0}
!501 = !{!"branch_weights", i32 0, i32 279}
!502 = !{!"branch_weights", i32 7780, i32 0}
!503 = !{!"branch_weights", i32 301378, i32 379328}
!504 = distinct !{!504, !201, !202}
!505 = !{!506}
!506 = distinct !{!506, !507, !"gsi_last_bb: argument 0"}
!507 = distinct !{!507, !"gsi_last_bb"}
!508 = !{!232, !185, i64 8}
!509 = !{!"branch_weights", i32 15441, i32 285938}
!510 = !{!"branch_weights", i32 80, i32 285858}
!511 = !{!216, !190, i64 32}
!512 = !{!"branch_weights", i32 159, i32 1}
!513 = !{!"branch_weights", i32 18498, i32 0}
!514 = !{!"branch_weights", i32 0, i32 18498}
!515 = !{!"branch_weights", i32 11058, i32 7440}
!516 = !{!"branch_weights", i32 80, i32 10978}
!517 = !{!"branch_weights", i32 3998, i32 6980}
!518 = !{!"branch_weights", i32 159, i32 36837}
!519 = distinct !{!519, !201, !202}
!520 = !{!"branch_weights", i32 0, i32 5966}
!521 = !{!"branch_weights", i32 80, i32 5886}
!522 = !{!"branch_weights", i32 0, i32 5886}
!523 = !{!"branch_weights", i32 3490, i32 2396}
!524 = !{!"branch_weights", i32 5886, i32 0}
!525 = distinct !{!525, !201, !202}
!526 = !{!"branch_weights", i32 282250, i32 3688}
!527 = !{!"branch_weights", i32 281808, i32 442}
!528 = !{!"branch_weights", i32 281529, i32 279}
!529 = !{!"branch_weights", i32 19129, i32 262400}
!530 = !{!"branch_weights", i32 0, i32 19129}
!531 = !{!"branch_weights", i32 262842, i32 279}
!532 = !{!"branch_weights", i32 262842, i32 0}
!533 = !{!"branch_weights", i32 0, i32 262842}
!534 = !{!"branch_weights", i32 526242, i32 0}
!535 = !{!"branch_weights", i32 262679, i32 166, i32 276, i32 166, i32 276, i32 262679, i32 0, i32 0, i32 0, i32 0, i32 0}
!536 = !{!"branch_weights", i32 442, i32 0, i32 0, i32 0}
!537 = !{!"branch_weights", i32 166, i32 276}
!538 = !{!"branch_weights", i32 442, i32 0}
!539 = !{!"branch_weights", i32 262679, i32 0, i32 0, i32 0}
!540 = !{!"branch_weights", i32 262679, i32 0}
!541 = !{!"branch_weights", i32 1052484, i32 0}
!542 = !{!"branch_weights", i32 213834, i32 49008}
!543 = !{!"branch_weights", i32 48566, i32 214276}
!544 = !{!"branch_weights", i32 0, i32 890688}
!545 = !{!"branch_weights", i32 301379, i32 589309}
!546 = !{!"branch_weights", i32 589309, i32 0}
!547 = !{!"branch_weights", i32 227031, i32 362278}
!548 = !{!246, !190, i64 44}
!549 = !{!"branch_weights", i32 0, i32 369641}
!550 = !{!"branch_weights", i32 243561, i32 126080}
!551 = !{!"branch_weights", i32 0, i32 243561}
!552 = !{!"branch_weights", i32 242454, i32 1107}
!553 = !{!"branch_weights", i32 238076, i32 5485}
!554 = !{!"branch_weights", i32 4695, i32 790}
!555 = !{!"branch_weights", i32 0, i32 790}
!556 = !{!"branch_weights", i32 0, i32 5485}
!557 = !{!"branch_weights", i32 362278, i32 7363}
!558 = distinct !{!558, !201, !202}
!559 = !{!"branch_weights", i32 0, i32 589309}
!560 = distinct !{!560, !201, !202}
!561 = !{!"tree-ssa-dom.c;dom_opt_leave_block"}
!562 = !{!"branch_weights", i32 282456, i32 18923}
!563 = !{!"branch_weights", i32 0, i32 18923}
!564 = !{!"branch_weights", i32 18923, i32 0}
!565 = !{!"branch_weights", i32 13877, i32 5046}
!566 = !{!"branch_weights", i32 0, i32 5046}
!567 = !{!"branch_weights", i32 5046, i32 0}
!568 = !{!"branch_weights", i32 76, i32 241842}
!569 = !{!"branch_weights", i32 11945, i32 284388}
!570 = !{!"branch_weights", i32 282250, i32 2138}
!571 = !{!"branch_weights", i32 246251, i32 35999}
!572 = !{!"branch_weights", i32 0, i32 35999}
!573 = !{!"branch_weights", i32 4, i32 35995}
!574 = !{!"branch_weights", i32 1, i32 35998}
!575 = !{!"branch_weights", i32 5136, i32 30863}
!576 = !{!"branch_weights", i32 30863, i32 0}
!577 = !{!"branch_weights", i32 9970, i32 26029}
!578 = !{!"branch_weights", i32 1, i32 26028}
!579 = !{!"branch_weights", i32 67816, i32 26028}
!580 = distinct !{!580, !201, !202}
!581 = !{!"branch_weights", i32 81377, i32 200873}
!582 = !{!"branch_weights", i32 0, i32 200873}
!583 = !{!"branch_weights", i32 19, i32 200854}
!584 = !{!"branch_weights", i32 145658, i32 55215}
!585 = !{!"branch_weights", i32 54975, i32 240}
!586 = !{!"branch_weights", i32 17459, i32 183414}
!587 = !{!"branch_weights", i32 1, i32 183413}
!588 = !{!"branch_weights", i32 259419, i32 183413}
!589 = distinct !{!589, !201, !202}
!590 = !{!"branch_weights", i32 0, i32 1703699}
!591 = !{!"branch_weights", i32 337378, i32 1366321}
!592 = !{!"branch_weights", i32 1366321, i32 0}
!593 = !{!"branch_weights", i32 0, i32 406370}
!594 = !{!"branch_weights", i32 31747, i32 374623}
!595 = !{!"branch_weights", i32 269632, i32 104991}
!596 = !{!"branch_weights", i32 104991, i32 0}
!597 = !{!"function_entry_count", i64 93844}
!598 = !{!"tree-ssa-dom.c;record_cond"}
!599 = distinct !{!599, !201, !202}
!600 = !{!"function_entry_count", i64 3960}
!601 = !{!"tree-ssa-dom.c;simple_iv_increment_p"}
!602 = !{!"function_entry_count", i64 536737}
!603 = !{!"tree-ssa-dom.c;lookup_avail_expr"}
!604 = !{!"branch_weights", i32 0, i32 545323, i32 507617, i32 32757, i32 240, i32 0}
!605 = !{!"branch_weights", i32 366725, i32 178598}
!606 = !{!"branch_weights", i32 0, i32 366725}
!607 = !{!"branch_weights", i32 0, i32 366725, i32 535, i32 178063}
!608 = !{!"branch_weights", i32 0, i32 535}
!609 = !{!"branch_weights", i32 0, i32 178063}
!610 = !{!"branch_weights", i32 178063, i32 0}
!611 = !{!"branch_weights", i32 0, i32 507617}
!612 = !{!"branch_weights", i32 0, i32 32757}
!613 = !{!"branch_weights", i32 0, i32 37879}
!614 = !{!"branch_weights", i32 32756, i32 5123}
!615 = distinct !{!615, !201, !202}
!616 = !{!"branch_weights", i32 0, i32 240}
!617 = !{!"branch_weights", i32 1116008, i32 1085937}
!618 = !{!"branch_weights", i32 507857, i32 578080}
!619 = !{!"branch_weights", i32 689452, i32 396485}
!620 = !{!"branch_weights", i32 1085937, i32 0}
!621 = !{!"branch_weights", i32 366965, i32 718972}
!622 = !{!"branch_weights", i32 342, i32 366623}
!623 = !{!"branch_weights", i32 363660, i32 2963}
!624 = !{!"branch_weights", i32 720017, i32 362615}
!625 = !{!"branch_weights", i32 250337, i32 112278}
!626 = !{i64 0, i64 8, !184, i64 8, i64 8, !184, i64 16, i64 4, !199, i64 24, i64 8, !184, i64 24, i64 4, !199, i64 32, i64 8, !184, i64 24, i64 4, !199, i64 32, i64 8, !184, i64 40, i64 8, !184, i64 24, i64 8, !184, i64 32, i64 1, !195, i64 40, i64 8, !260, i64 48, i64 8, !184, i64 56, i64 8, !184, i64 64, i64 4, !199, i64 72, i64 8, !184}
!627 = !{!"branch_weights", i32 250337, i32 0}
!628 = !{!"branch_weights", i32 0, i32 250337}
!629 = !{!"branch_weights", i32 17, i32 250320}
!630 = !{!"branch_weights", i32 91400, i32 20878}
!631 = !{!"branch_weights", i32 91400, i32 0}
!632 = !{!"branch_weights", i32 76383, i32 15017}
!633 = !{!"branch_weights", i32 112278, i32 0}
!634 = !{!"function_entry_count", i64 558}
!635 = !{!"tree-ssa-dom.c;record_conditions"}
!636 = !{!"function_entry_count", i64 85838}
!637 = !{!"tree-ssa-dom.c;record_const_or_copy"}
!638 = !{!"branch_weights", i32 0, i32 85838}
!639 = !{!"branch_weights", i32 85838, i32 0}
!640 = !{!"function_entry_count", i64 35999}
!641 = !{!"tree-ssa-dom.c;remove_local_expressions_from_table"}
!642 = !{!"function_entry_count", i64 549200}
!643 = !{!"tree-ssa-dom.c;simplify_stmt_for_jump_threading"}
!644 = !{!"function_entry_count", i64 336385}
!645 = !{!"tree-ssa-dom.c;eliminate_degenerate_phis_1"}
!646 = !{!"branch_weights", i32 190980, i32 145405}
!647 = !{!"branch_weights", i32 145405, i32 0}
!648 = distinct !{!648, !201, !202}
!649 = !{!"branch_weights", i32 76, i32 336309}
!650 = !{!"branch_weights", i32 336309, i32 0}
!651 = distinct !{!651, !201, !202}
!652 = !{!"function_entry_count", i64 172150}
!653 = !{!"tree-ssa-dom.c;eliminate_const_or_copy"}
!654 = !{!"branch_weights", i32 0, i32 17785320, i32 7056}
!655 = !{!"branch_weights", i32 0, i32 84}
!656 = !{!285, !185, i64 8}
!657 = !{!"branch_weights", i32 8370, i32 163780}
!658 = !{!"branch_weights", i32 163780, i32 0}
!659 = !{!"branch_weights", i32 163780, i32 8370}
!660 = !{!"branch_weights", i32 46636, i32 36}
!661 = !{!"branch_weights", i32 163756, i32 24}
!662 = !{!"branch_weights", i32 0, i32 24}
!663 = !{!"branch_weights", i32 125478, i32 38302}
!664 = !{!"branch_weights", i32 38302, i32 0}
!665 = !{!"branch_weights", i32 0, i32 38302}
!666 = !{!"branch_weights", i32 38115, i32 187}
!667 = !{!"branch_weights", i32 0, i32 38115}
!668 = !{!669, !185, i64 8}
!669 = !{!"immediate_use_iterator_d", !185, i64 0, !185, i64 8, !285, i64 16, !185, i64 48}
!670 = !{!669, !185, i64 0}
!671 = !{!"branch_weights", i32 1, i32 38301}
!672 = !{!"branch_weights", i32 0, i32 90061}
!673 = !{!"branch_weights", i32 90061, i32 0}
!674 = !{!669, !185, i64 48}
!675 = !{!"branch_weights", i32 1, i32 90060}
!676 = !{!"branch_weights", i32 90061, i32 55}
!677 = !{!"branch_weights", i32 90060, i32 56}
!678 = distinct !{!678, !201, !202}
!679 = !{!"branch_weights", i32 39616, i32 50445}
!680 = !{!"branch_weights", i32 48931, i32 1514}
!681 = !{!"branch_weights", i32 48931, i32 0}
!682 = !{!"branch_weights", i32 88547, i32 0}
!683 = !{!"branch_weights", i32 39616, i32 48931}
!684 = !{!"branch_weights", i32 0, i32 1514}
!685 = !{!"branch_weights", i32 1514, i32 0}
!686 = !{!"branch_weights", i32 1466, i32 48}
!687 = !{!"branch_weights", i32 0, i32 48}
!688 = !{!"branch_weights", i32 48, i32 0}
!689 = !{!"branch_weights", i32 12, i32 36}
!690 = !{!"branch_weights", i32 0, i32 36}
!691 = !{!"branch_weights", i32 832, i32 634, i32 0, i32 0}
!692 = !{!"branch_weights", i32 0, i32 634, i32 0}
!693 = !{!"branch_weights", i32 0, i32 634}
!694 = !{!"branch_weights", i32 602, i32 32}
!695 = !{!"branch_weights", i32 32, i32 0}
!696 = distinct !{!696, !201, !202}
!697 = !{!246, !190, i64 52}
!698 = !{!246, !191, i64 56}
!699 = distinct !{!699, !201, !202}
!700 = !{!701}
!701 = distinct !{!701, !702, !"gsi_last_bb: argument 0"}
!702 = distinct !{!702, !"gsi_last_bb"}
!703 = !{i64 0, i64 8, !184, i64 8, i64 8, !184}
!704 = !{i64 0, i64 8, !184}
!705 = !{!"branch_weights", i32 38302, i32 51759}
!706 = !{!285, !185, i64 0}
!707 = !{!"branch_weights", i32 38301, i32 51760}
!708 = distinct !{!708, !201, !202}
!709 = !{!"function_entry_count", i64 90061}
!710 = !{!"tree-ssa-dom.c;link_use_stmts_after"}
!711 = !{!"branch_weights", i32 0, i32 39616}
!712 = !{!"branch_weights", i32 39616, i32 0}
!713 = !{!"branch_weights", i32 39615, i32 1}
!714 = !{!"branch_weights", i32 101388, i32 55}
!715 = !{!"branch_weights", i32 55, i32 0}
!716 = !{!"branch_weights", i32 61827, i32 39616}
!717 = !{!"branch_weights", i32 0, i32 61827}
!718 = !{!"branch_weights", i32 61828, i32 39615}
!719 = distinct !{!719, !201, !202}
!720 = !{!"branch_weights", i32 634, i32 880}
!721 = !{!"branch_weights", i32 880, i32 0}
!722 = !{!"branch_weights", i32 1, i32 1513}
!723 = !{!"branch_weights", i32 1526, i32 0}
!724 = !{!"branch_weights", i32 1514, i32 12}
!725 = !{!"branch_weights", i32 13, i32 1513}
!726 = distinct !{!726, !201, !202}
!727 = !{!"branch_weights", i32 0, i32 48931}
!728 = !{!416, !185, i64 32}
