; ModuleID = 'tree-ssa-reassoc.c'
source_filename = "tree-ssa-reassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.VEC_operand_entry_t_base = type { i32, i32, [1 x ptr] }
%struct.operand_entry = type { i32, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_oecount_base = type { i32, i32, [1 x %struct.oecount_s] }
%struct.oecount_s = type { i32, i32, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [26 x i8] c"Op %d -> rank: %d, tree: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"reassoc\00", align 1
@pass_reassoc = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr @gate_tree_ssa_reassoc, ptr @execute_reassoc, ptr null, ptr null, i32 0, i32 68, i32 40, i32 0, i32 0, i32 0, i32 7 } }, align 8
@flag_tree_reassoc = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@reassociate_stats = internal unnamed_addr global %struct.anon zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"operand entry pool\00", align 1
@operand_entry_pool = internal unnamed_addr global ptr null, align 8
@bb_rank = internal unnamed_addr global ptr null, align 8
@operand_rank = internal unnamed_addr global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@broken_up_subtracts = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"tree-ssa-reassoc.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_associative_math = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Breaking up subtract \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Transforming \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" into \00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"swapping operands of \00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" is now \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Rank for \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" is %ld\0A\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Linearized: \00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Merging constants\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Found & 0, removing all other ops\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Found & -1, removing\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Found | -1, removing all other ops\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Found | 0, removing\0A\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [35 x i8] c"Found * 0, removing all other ops\0A\00", align 1
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"Found * 1, removing\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Found [|^+] 0, removing\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Equivalence: \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" & ~\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c" | ~\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c" -> 0\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c" -> -1\0A\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.27 = private unnamed_addr constant [13 x i8] c" [&|minmax] \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c" ^ \00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c" -> nothing\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c" + -\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"searching for un-distribute opportunities \00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1
@cvec = internal unnamed_addr global ptr null, align 8
@.str.34 = private unnamed_addr constant [13 x i8] c"Candidates:\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"  %u %s: \00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"Building (\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c") %s \00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"Linearized\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"Constants eliminated\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"Ops eliminated\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"Statements rewritten\00", align 1
@switch.table.sort_by_operand_rank = private unnamed_addr constant [4 x i32] [i32 8, i32 8, i32 8, i32 4], align 4
@switch.table.sort_by_operand_rank.48 = private unnamed_addr constant [4 x i32] [i32 -8, i32 -8, i32 -8, i32 -4], align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !91 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !92
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !91 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !92
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !91 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !102

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !96
  %11 = load i8, ptr %3, align 1, !tbaa !103
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !91 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !102

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !96
  %11 = load i8, ptr %3, align 1, !tbaa !103
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !91 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !92
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !102

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #22
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !96
  %11 = load i8, ptr %3, align 1, !tbaa !103
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !91 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !92
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !91 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !102

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !104
  store i8 %12, ptr %4, align 1, !tbaa !103
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !91 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !102

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !104
  store i8 %12, ptr %4, align 1, !tbaa !103
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !91 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !102

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !104
  store i8 %12, ptr %4, align 1, !tbaa !103
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !91 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #22
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !91 {
  %2 = load i32, ptr %0, align 8, !tbaa !106
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !91 {
  %2 = load i32, ptr %0, align 8, !tbaa !106
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !91 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !107
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !91 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !107
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !91 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !91 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !91 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !91 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #22
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
  br i1 %23, label %7, label %24, !llvm.loop !108

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !91 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_ops_vector(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !91 {
  %3 = icmp eq ptr %1, null
  br label %4

4:                                                ; preds = %16, %2
  %5 = phi i32 [ 0, %2 ], [ %21, %16 ]
  br i1 %3, label %13, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 8, !tbaa !111
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %1, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  br label %13

13:                                               ; preds = %4, %6, %9
  %14 = phi ptr [ %12, %9 ], [ null, %6 ], [ null, %4 ]
  %15 = phi i1 [ false, %9 ], [ true, %6 ], [ true, %4 ]
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %14, align 8, !tbaa !113
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %17)
  %19 = getelementptr inbounds %struct.operand_entry, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !115
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %20, i32 noundef 0) #22
  %21 = add i32 %5, 1
  br label %4, !llvm.loop !116

22:                                               ; preds = %13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_ops_vector(ptr noundef %0) local_unnamed_addr #9 !prof !91 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !92
  tail call void @dump_ops_vector(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_reassoc() #10 !prof !117 !PGOFuncName !118 {
  %1 = load i32, ptr @flag_tree_reassoc, align 4, !tbaa !107
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @execute_reassoc() #11 !prof !117 !PGOFuncName !119 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !122
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  %10 = tail call ptr @xmalloc(i64 noundef %9) #22
  tail call void @loop_optimizer_init(i32 noundef 16) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @reassociate_stats, i8 0, i64 16, i1 false)
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.2, i64 noundef 16, i64 noundef 30) #22
  store ptr %11, ptr @operand_entry_pool, align 8, !tbaa !92
  %12 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef null, ptr noundef %10, i8 noundef zeroext 0) #22
  %13 = load ptr, ptr @cfun, align 8, !tbaa !92
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !120
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !122
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = tail call ptr @xcalloc(i64 noundef %19, i64 noundef 8) #22
  store ptr %20, ptr @bb_rank, align 8, !tbaa !92
  %21 = tail call ptr @pointer_map_create() #22
  store ptr %21, ptr @operand_rank, align 8, !tbaa !92
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !92
  %23 = getelementptr inbounds %struct.tree_decl_non_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !103
  %25 = icmp eq ptr %24, null
  br i1 %25, label %51, label %26, !prof !124

26:                                               ; preds = %0, %46
  %27 = phi ptr [ %49, %46 ], [ %24, %0 ]
  %28 = phi i64 [ %47, %46 ], [ 2, %0 ]
  %29 = load ptr, ptr @cfun, align 8, !tbaa !92
  %30 = tail call ptr @gimple_default_def(ptr noundef %29, ptr noundef nonnull %27) #22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32, !prof !125

32:                                               ; preds = %26
  %33 = load ptr, ptr @cfun, align 8, !tbaa !92
  %34 = tail call ptr @gimple_default_def(ptr noundef %33, ptr noundef nonnull %27) #22
  %35 = add nsw i64 %28, 1
  %36 = icmp sgt i64 %28, -1
  br i1 %36, label %38, label %37, !prof !126

37:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 205, ptr noundef nonnull @.str.4) #22
  br label %38

38:                                               ; preds = %37, %32
  %39 = load ptr, ptr @operand_rank, align 8, !tbaa !92
  %40 = tail call ptr @pointer_map_insert(ptr noundef %39, ptr noundef %34) #22
  %41 = load ptr, ptr %40, align 8, !tbaa !92
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43, !prof !126

43:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 207, ptr noundef nonnull @.str.4) #22
  br label %44

44:                                               ; preds = %43, %38
  %45 = inttoptr i64 %35 to ptr
  store ptr %45, ptr %40, align 8, !tbaa !92
  br label %46

46:                                               ; preds = %44, %26
  %47 = phi i64 [ %35, %44 ], [ %28, %26 ]
  %48 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !103
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %26, !prof !127, !llvm.loop !128

51:                                               ; preds = %46, %0
  %52 = phi i64 [ 2, %0 ], [ %47, %46 ]
  %53 = load ptr, ptr @cfun, align 8, !tbaa !92
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !129
  %56 = icmp eq ptr %55, null
  br i1 %56, label %72, label %57, !prof !126

57:                                               ; preds = %51
  %58 = tail call ptr @gimple_default_def(ptr noundef %53, ptr noundef nonnull %55) #22
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %57
  %61 = add nsw i64 %52, 1
  %62 = icmp sgt i64 %52, -1
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 205, ptr noundef nonnull @.str.4) #22
  br label %64

64:                                               ; preds = %63, %60
  %65 = load ptr, ptr @operand_rank, align 8, !tbaa !92
  %66 = tail call ptr @pointer_map_insert(ptr noundef %65, ptr noundef nonnull %58) #22
  %67 = load ptr, ptr %66, align 8, !tbaa !92
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 207, ptr noundef nonnull @.str.4) #22
  br label %70

70:                                               ; preds = %69, %64
  %71 = inttoptr i64 %61 to ptr
  store ptr %71, ptr %66, align 8, !tbaa !92
  br label %72

72:                                               ; preds = %70, %57, %51
  %73 = phi i64 [ %52, %51 ], [ %61, %70 ], [ %52, %57 ]
  %74 = load ptr, ptr @cfun, align 8, !tbaa !92
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !120
  %77 = getelementptr inbounds %struct.control_flow_graph, ptr %76, i64 0, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !130
  %79 = icmp sgt i32 %78, 2
  br i1 %79, label %80, label %95, !prof !127

80:                                               ; preds = %72
  %81 = add nsw i32 %78, -2
  %82 = load ptr, ptr @bb_rank, align 8, !tbaa !92
  %83 = zext i32 %81 to i64
  br label %84

84:                                               ; preds = %80, %84
  %85 = phi i64 [ 0, %80 ], [ %93, %84 ]
  %86 = phi i64 [ %73, %80 ], [ %87, %84 ]
  %87 = add nsw i64 %86, 1
  %88 = shl i64 %87, 16
  %89 = getelementptr inbounds i32, ptr %10, i64 %85
  %90 = load i32, ptr %89, align 4, !tbaa !107
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, ptr %82, i64 %91
  store i64 %88, ptr %92, align 8, !tbaa !131
  %93 = add nuw nsw i64 %85, 1
  %94 = icmp eq i64 %93, %83
  br i1 %94, label %95, label %84, !prof !132, !llvm.loop !133

95:                                               ; preds = %84, %72
  tail call void @free(ptr noundef %10)
  tail call void @calculate_dominance_info(i32 noundef 2) #22
  store ptr null, ptr @broken_up_subtracts, align 8, !tbaa !92
  %96 = load ptr, ptr @cfun, align 8, !tbaa !92
  %97 = getelementptr inbounds %struct.function, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !120
  %99 = load ptr, ptr %98, align 8, !tbaa !134
  tail call fastcc void @break_up_subtract_bb(ptr noundef %99)
  %100 = load ptr, ptr @cfun, align 8, !tbaa !92
  %101 = getelementptr inbounds %struct.function, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !120
  %103 = getelementptr inbounds %struct.control_flow_graph, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !135
  tail call fastcc void @reassociate_bb(ptr noundef %104)
  br label %105

105:                                              ; preds = %261, %95
  %106 = phi i32 [ 0, %95 ], [ %262, %261 ]
  %107 = load ptr, ptr @broken_up_subtracts, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %116, label %109, !prof !126

109:                                              ; preds = %105
  %110 = load i32, ptr %107, align 8, !tbaa !136
  %111 = icmp ugt i32 %110, %106
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = zext i32 %106 to i64
  %114 = getelementptr inbounds %struct.VEC_tree_base, ptr %107, i64 0, i32 2, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !92
  br label %116

116:                                              ; preds = %112, %109, %105
  %117 = phi ptr [ %115, %112 ], [ null, %109 ], [ null, %105 ]
  %118 = phi i1 [ false, %112 ], [ true, %109 ], [ true, %105 ]
  br i1 %118, label %263, label %119, !prof !126

119:                                              ; preds = %116
  %120 = call fastcc ptr @get_single_immediate_use(ptr noundef %117)
  %121 = icmp eq ptr %120, null
  br i1 %121, label %261, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr %120, align 8
  %124 = and i32 %123, 255
  %125 = icmp eq i32 %124, 6
  br i1 %125, label %126, label %261

126:                                              ; preds = %122
  %127 = lshr i32 %123, 16
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !103
  %131 = icmp eq i8 %130, 3
  br i1 %131, label %132, label %148

132:                                              ; preds = %126
  %133 = zext nneg i32 %124 to i64
  %134 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !107
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %136
  %138 = load i64, ptr %137, align 8, !tbaa !131
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %141

141:                                              ; preds = %140, %132
  %142 = getelementptr inbounds i8, ptr %120, i64 %138
  %143 = getelementptr inbounds ptr, ptr %142, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !92
  %145 = load i64, ptr %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = and i32 %146, 65535
  br label %148

148:                                              ; preds = %141, %126
  %149 = phi i32 [ %147, %141 ], [ %127, %126 ]
  %150 = icmp eq i32 %149, 63
  br i1 %150, label %151, label %261

151:                                              ; preds = %148
  %152 = load i32, ptr %120, align 8
  %153 = and i32 %152, 255
  %154 = add nsw i32 %153, -10
  %155 = icmp ult i32 %154, -9
  br i1 %155, label %169, label %156

156:                                              ; preds = %151
  %157 = zext nneg i32 %153 to i64
  %158 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !107
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %160
  %162 = load i64, ptr %161, align 8, !tbaa !131
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %165

165:                                              ; preds = %164, %156
  %166 = getelementptr inbounds i8, ptr %120, i64 %162
  %167 = getelementptr inbounds ptr, ptr %166, i64 1
  %168 = load ptr, ptr %167, align 8, !tbaa !92
  br label %169

169:                                              ; preds = %165, %151
  %170 = phi ptr [ %168, %165 ], [ null, %151 ]
  %171 = icmp eq ptr %170, %117
  br i1 %171, label %172, label %209

172:                                              ; preds = %169
  %173 = load i32, ptr %120, align 8
  %174 = and i32 %173, 255
  %175 = add nsw i32 %174, -10
  %176 = icmp ult i32 %175, -9
  br i1 %176, label %189, label %177

177:                                              ; preds = %172
  %178 = zext nneg i32 %174 to i64
  %179 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !107
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %181
  %183 = load i64, ptr %182, align 8, !tbaa !131
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %186

186:                                              ; preds = %185, %177
  %187 = getelementptr inbounds i8, ptr %120, i64 %183
  %188 = getelementptr inbounds ptr, ptr %187, i64 1
  br label %189

189:                                              ; preds = %186, %172
  %190 = phi ptr [ %188, %186 ], [ null, %172 ]
  %191 = load i32, ptr %120, align 8
  %192 = and i32 %191, 255
  %193 = add nsw i32 %192, -10
  %194 = icmp ult i32 %193, -9
  br i1 %194, label %207, label %195

195:                                              ; preds = %189
  %196 = zext nneg i32 %192 to i64
  %197 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !107
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %199
  %201 = load i64, ptr %200, align 8, !tbaa !131
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %195
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %204

204:                                              ; preds = %203, %195
  %205 = getelementptr inbounds i8, ptr %120, i64 %201
  %206 = getelementptr inbounds ptr, ptr %205, i64 2
  br label %207

207:                                              ; preds = %204, %189
  %208 = phi ptr [ %206, %204 ], [ null, %189 ]
  call void @swap_tree_operands(ptr noundef nonnull %120, ptr noundef %190, ptr noundef %208) #22
  br label %209

209:                                              ; preds = %207, %169
  %210 = getelementptr inbounds %struct.gimple_statement_base, ptr %120, i64 0, i32 3
  %211 = load i32, ptr %210, align 4, !tbaa !103
  %212 = icmp ugt i32 %211, 2
  br i1 %212, label %213, label %231

213:                                              ; preds = %209
  %214 = load i32, ptr %120, align 8
  %215 = and i32 %214, 255
  %216 = add nsw i32 %215, -10
  %217 = icmp ult i32 %216, -9
  br i1 %217, label %231, label %218

218:                                              ; preds = %213
  %219 = zext nneg i32 %215 to i64
  %220 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !107
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %222
  %224 = load i64, ptr %223, align 8, !tbaa !131
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %227

227:                                              ; preds = %226, %218
  %228 = getelementptr inbounds i8, ptr %120, i64 %224
  %229 = getelementptr inbounds ptr, ptr %228, i64 2
  %230 = load ptr, ptr %229, align 8, !tbaa !92
  br label %231

231:                                              ; preds = %227, %213, %209
  %232 = phi ptr [ null, %209 ], [ %230, %227 ], [ null, %213 ]
  %233 = icmp eq ptr %232, %117
  br i1 %233, label %234, label %261

234:                                              ; preds = %231
  %235 = load i32, ptr %120, align 8
  %236 = and i32 %235, 255
  %237 = add nsw i32 %236, -10
  %238 = icmp ult i32 %237, -9
  br i1 %238, label %252, label %239

239:                                              ; preds = %234
  %240 = zext nneg i32 %236 to i64
  %241 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !107
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %243
  %245 = load i64, ptr %244, align 8, !tbaa !131
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %239
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %248

248:                                              ; preds = %247, %239
  %249 = getelementptr inbounds i8, ptr %120, i64 %245
  %250 = getelementptr inbounds ptr, ptr %249, i64 1
  %251 = load ptr, ptr %250, align 8, !tbaa !92
  br label %252

252:                                              ; preds = %248, %234
  %253 = phi ptr [ %251, %248 ], [ null, %234 ]
  %254 = call fastcc ptr @get_unary_op(ptr noundef %117, i32 noundef 79)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef nonnull %120) #22
  call void @gimple_assign_set_rhs_with_ops(ptr noundef nonnull %1, i32 noundef 64, ptr noundef %253, ptr noundef %254) #22
  %255 = load i32, ptr %120, align 8
  %256 = and i32 %255, 255
  %257 = add nsw i32 %256, -10
  %258 = icmp ult i32 %257, -9
  br i1 %258, label %260, label %259

259:                                              ; preds = %252
  call void @gimple_set_modified(ptr noundef nonnull %120, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %120) #22
  br label %260

260:                                              ; preds = %259, %252
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  br label %261

261:                                              ; preds = %260, %231, %148, %122, %119
  %262 = add i32 %106, 1
  br label %105, !llvm.loop !138

263:                                              ; preds = %116
  %264 = load ptr, ptr @cfun, align 8, !tbaa !92
  %265 = load i32, ptr @reassociate_stats, align 4, !tbaa !139
  call void @statistics_counter_event(ptr noundef %264, ptr noundef nonnull @.str.44, i32 noundef %265) #22
  %266 = load ptr, ptr @cfun, align 8, !tbaa !92
  %267 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 1), align 4, !tbaa !141
  call void @statistics_counter_event(ptr noundef %266, ptr noundef nonnull @.str.45, i32 noundef %267) #22
  %268 = load ptr, ptr @cfun, align 8, !tbaa !92
  %269 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  call void @statistics_counter_event(ptr noundef %268, ptr noundef nonnull @.str.46, i32 noundef %269) #22
  %270 = load ptr, ptr @cfun, align 8, !tbaa !92
  %271 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 3), align 4, !tbaa !143
  call void @statistics_counter_event(ptr noundef %270, ptr noundef nonnull @.str.47, i32 noundef %271) #22
  %272 = load ptr, ptr @operand_rank, align 8, !tbaa !92
  call void @pointer_map_destroy(ptr noundef %272) #22
  %273 = load ptr, ptr @operand_entry_pool, align 8, !tbaa !92
  call void @free_alloc_pool(ptr noundef %273) #22
  %274 = load ptr, ptr @bb_rank, align 8, !tbaa !92
  call void @free(ptr noundef %274)
  %275 = load ptr, ptr @broken_up_subtracts, align 8, !tbaa !92
  %276 = icmp eq ptr %275, null
  br i1 %276, label %278, label %277, !prof !126

277:                                              ; preds = %263
  call void @free(ptr noundef %275)
  br label %278

278:                                              ; preds = %263, %277
  store ptr null, ptr @broken_up_subtracts, align 8, !tbaa !92
  call void @free_dominance_info(i32 noundef 2) #22
  call void @loop_optimizer_finalize() #22
  ret i32 0
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @pre_and_rev_post_order_compute(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @pointer_map_create() local_unnamed_addr #3

declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @break_up_subtract_bb(ptr noundef %0) unnamed_addr #14 !prof !144 !PGOFuncName !145 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !146, !noalias !148
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13, !prof !151

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !103, !noalias !148
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !152

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !153, !noalias !148
  br label %13

13:                                               ; preds = %11, %7, %1
  %14 = phi ptr [ %12, %11 ], [ null, %7 ], [ null, %1 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !152

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !155, !noalias !148
  br label %18

18:                                               ; preds = %13, %16
  %19 = phi ptr [ %17, %16 ], [ null, %13 ]
  store ptr %19, ptr %2, align 8, !tbaa.struct !157
  %20 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %14, ptr %20, align 8, !tbaa.struct !158
  %21 = getelementptr inbounds i8, ptr %2, i64 16
  store ptr %0, ptr %21, align 8, !tbaa.struct !159
  %22 = icmp eq ptr %19, null
  br i1 %22, label %389, label %23, !prof !160

23:                                               ; preds = %18, %384
  %24 = phi ptr [ %387, %384 ], [ %19, %18 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !161
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, -513
  store i32 %27, ptr %25, align 8
  %28 = and i32 %26, 255
  %29 = icmp eq i32 %28, 6
  br i1 %29, label %30, label %384, !prof !163

30:                                               ; preds = %23
  %31 = lshr i32 %26, 16
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !103
  %35 = icmp eq i8 %34, 3
  br i1 %35, label %36, label %50, !prof !164

36:                                               ; preds = %30
  %37 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @gss_for_code_, i64 0, i64 6), align 4, !tbaa !107
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !131
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43, !prof !165

42:                                               ; preds = %36
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %43

43:                                               ; preds = %42, %36
  %44 = getelementptr inbounds i8, ptr %25, i64 %40
  %45 = getelementptr inbounds ptr, ptr %44, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !92
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 65535
  br label %50

50:                                               ; preds = %30, %43
  %51 = phi i32 [ %49, %43 ], [ %31, %30 ]
  %52 = icmp eq i32 %51, 64
  br i1 %52, label %53, label %384, !prof !166

53:                                               ; preds = %50
  %54 = load i32, ptr %25, align 8
  %55 = and i32 %54, 255
  %56 = add nsw i32 %55, -10
  %57 = icmp ult i32 %56, -9
  br i1 %57, label %70, label %58, !prof !167

58:                                               ; preds = %53
  %59 = zext nneg i32 %55 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !107
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !131
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67, !prof !167

66:                                               ; preds = %58
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %67

67:                                               ; preds = %66, %58
  %68 = getelementptr inbounds i8, ptr %25, i64 %64
  %69 = load ptr, ptr %68, align 8, !tbaa !92
  br label %70

70:                                               ; preds = %53, %67
  %71 = phi ptr [ %69, %67 ], [ null, %53 ]
  %72 = load i32, ptr %25, align 8
  %73 = and i32 %72, 255
  %74 = add nsw i32 %73, -10
  %75 = icmp ult i32 %74, -9
  br i1 %75, label %89, label %76, !prof !167

76:                                               ; preds = %70
  %77 = zext nneg i32 %73 to i64
  %78 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !107
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !131
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85, !prof !167

84:                                               ; preds = %76
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %85

85:                                               ; preds = %84, %76
  %86 = getelementptr inbounds i8, ptr %25, i64 %82
  %87 = getelementptr inbounds ptr, ptr %86, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !92
  br label %89

89:                                               ; preds = %70, %85
  %90 = phi ptr [ %88, %85 ], [ null, %70 ]
  %91 = getelementptr inbounds %struct.gimple_statement_base, ptr %25, i64 0, i32 3
  %92 = load i32, ptr %91, align 4, !tbaa !103
  %93 = icmp ugt i32 %92, 2
  br i1 %93, label %94, label %112, !prof !168

94:                                               ; preds = %89
  %95 = load i32, ptr %25, align 8
  %96 = and i32 %95, 255
  %97 = add nsw i32 %96, -10
  %98 = icmp ult i32 %97, -9
  br i1 %98, label %112, label %99, !prof !167

99:                                               ; preds = %94
  %100 = zext nneg i32 %96 to i64
  %101 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !107
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %103
  %105 = load i64, ptr %104, align 8, !tbaa !131
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108, !prof !167

107:                                              ; preds = %99
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %108

108:                                              ; preds = %107, %99
  %109 = getelementptr inbounds i8, ptr %25, i64 %105
  %110 = getelementptr inbounds ptr, ptr %109, i64 2
  %111 = load ptr, ptr %110, align 8, !tbaa !92
  br label %112

112:                                              ; preds = %89, %94, %108
  %113 = phi ptr [ null, %89 ], [ %111, %108 ], [ null, %94 ]
  %114 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !103
  %116 = load i64, ptr %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = and i32 %117, 65535
  %119 = add nsw i32 %118, -6
  %120 = icmp ult i32 %119, 3
  br i1 %120, label %121, label %137, !prof !168

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !103
  %124 = load i64, ptr %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = and i32 %125, 65535
  %127 = add nsw i32 %126, -6
  %128 = icmp ult i32 %127, 3
  br i1 %128, label %129, label %137, !prof !168

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.tree_common, ptr %113, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !103
  %132 = load i64, ptr %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = and i32 %133, 65535
  %135 = add nsw i32 %134, -6
  %136 = icmp ult i32 %135, 3
  br i1 %136, label %170, label %137, !prof !168

137:                                              ; preds = %129, %121, %112
  %138 = and i64 %116, 65535
  %139 = icmp eq i64 %138, 9
  br i1 %139, label %140, label %155

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !103
  %143 = load i64, ptr %142, align 8
  %144 = and i64 %143, 65535
  %145 = icmp eq i64 %144, 9
  br i1 %145, label %146, label %155

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.tree_common, ptr %113, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !103
  %149 = load i64, ptr %148, align 8
  %150 = and i64 %149, 65535
  %151 = icmp eq i64 %150, 9
  %152 = load i32, ptr @flag_associative_math, align 4
  %153 = icmp ne i32 %152, 0
  %154 = select i1 %151, i1 %153, i1 false
  br i1 %154, label %170, label %155

155:                                              ; preds = %146, %140, %137
  %156 = and i64 %116, 2147549183
  %157 = icmp eq i64 %156, 11
  br i1 %157, label %158, label %384

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !103
  %161 = load i64, ptr %160, align 8
  %162 = and i64 %161, 2147549183
  %163 = icmp eq i64 %162, 11
  br i1 %163, label %164, label %384

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.tree_common, ptr %113, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !103
  %167 = load i64, ptr %166, align 8
  %168 = and i64 %167, 2147549183
  %169 = icmp eq i64 %168, 11
  br i1 %169, label %170, label %384

170:                                              ; preds = %129, %164, %146
  %171 = load i32, ptr %25, align 8
  %172 = and i32 %171, 255
  %173 = add nsw i32 %172, -10
  %174 = icmp ult i32 %173, -9
  br i1 %174, label %187, label %175, !prof !167

175:                                              ; preds = %170
  %176 = zext nneg i32 %172 to i64
  %177 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !107
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %179
  %181 = load i64, ptr %180, align 8, !tbaa !131
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %184, !prof !167

183:                                              ; preds = %175
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %184

184:                                              ; preds = %183, %175
  %185 = getelementptr inbounds i8, ptr %25, i64 %181
  %186 = load ptr, ptr %185, align 8, !tbaa !92
  br label %187

187:                                              ; preds = %184, %170
  %188 = phi ptr [ %186, %184 ], [ null, %170 ]
  %189 = load i32, ptr %25, align 8
  %190 = and i32 %189, 255
  %191 = add nsw i32 %190, -10
  %192 = icmp ult i32 %191, -9
  br i1 %192, label %206, label %193, !prof !167

193:                                              ; preds = %187
  %194 = zext nneg i32 %190 to i64
  %195 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !107
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %197
  %199 = load i64, ptr %198, align 8, !tbaa !131
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %202, !prof !167

201:                                              ; preds = %193
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %202

202:                                              ; preds = %201, %193
  %203 = getelementptr inbounds i8, ptr %25, i64 %199
  %204 = getelementptr inbounds ptr, ptr %203, i64 1
  %205 = load ptr, ptr %204, align 8, !tbaa !92
  br label %206

206:                                              ; preds = %202, %187
  %207 = phi ptr [ %205, %202 ], [ null, %187 ]
  %208 = load i32, ptr %91, align 4, !tbaa !103
  %209 = icmp ugt i32 %208, 2
  br i1 %209, label %210, label %228, !prof !168

210:                                              ; preds = %206
  %211 = load i32, ptr %25, align 8
  %212 = and i32 %211, 255
  %213 = add nsw i32 %212, -10
  %214 = icmp ult i32 %213, -9
  br i1 %214, label %228, label %215, !prof !167

215:                                              ; preds = %210
  %216 = zext nneg i32 %212 to i64
  %217 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !107
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %219
  %221 = load i64, ptr %220, align 8, !tbaa !131
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %224, !prof !167

223:                                              ; preds = %215
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %224

224:                                              ; preds = %223, %215
  %225 = getelementptr inbounds i8, ptr %25, i64 %221
  %226 = getelementptr inbounds ptr, ptr %225, i64 2
  %227 = load ptr, ptr %226, align 8, !tbaa !92
  br label %228

228:                                              ; preds = %224, %210, %206
  %229 = phi ptr [ null, %206 ], [ %227, %224 ], [ null, %210 ]
  %230 = getelementptr inbounds %struct.gimple_statement_base, ptr %25, i64 0, i32 4
  %231 = load ptr, ptr %230, align 8, !tbaa !103
  %232 = icmp eq ptr %231, null
  br i1 %232, label %236, label %233, !prof !167

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.basic_block_def, ptr %231, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !169
  br label %236

236:                                              ; preds = %233, %228
  %237 = phi ptr [ %235, %233 ], [ null, %228 ]
  %238 = load i64, ptr %207, align 8
  %239 = and i64 %238, 65535
  %240 = icmp eq i64 %239, 141
  br i1 %240, label %241, label %246, !prof !168

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.tree_ssa_name, ptr %207, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !103
  %244 = call fastcc zeroext i8 @is_reassociable_op(ptr noundef %243, i32 noundef 63, ptr noundef %237), !range !170
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %326, !prof !168

246:                                              ; preds = %241, %236
  %247 = load i64, ptr %229, align 8
  %248 = and i64 %247, 65535
  %249 = icmp eq i64 %248, 141
  br i1 %249, label %250, label %255, !prof !168

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.tree_ssa_name, ptr %229, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !103
  %253 = call fastcc zeroext i8 @is_reassociable_op(ptr noundef %252, i32 noundef 63, ptr noundef %237), !range !170
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %255, label %326, !prof !168

255:                                              ; preds = %250, %246
  %256 = load i64, ptr %188, align 8
  %257 = and i64 %256, 65535
  %258 = icmp eq i64 %257, 141
  br i1 %258, label %259, label %384, !prof !168

259:                                              ; preds = %255
  %260 = call fastcc ptr @get_single_immediate_use(ptr noundef nonnull %188)
  %261 = icmp eq ptr %260, null
  br i1 %261, label %384, label %262, !prof !168

262:                                              ; preds = %259
  %263 = load i32, ptr %260, align 8
  %264 = and i32 %263, 255
  %265 = icmp eq i32 %264, 6
  br i1 %265, label %266, label %384

266:                                              ; preds = %262
  %267 = lshr i32 %263, 16
  %268 = zext nneg i32 %267 to i64
  %269 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !103
  %271 = icmp eq i8 %270, 3
  br i1 %271, label %272, label %288

272:                                              ; preds = %266
  %273 = zext nneg i32 %264 to i64
  %274 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !107
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %276
  %278 = load i64, ptr %277, align 8, !tbaa !131
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %272
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %281

281:                                              ; preds = %280, %272
  %282 = getelementptr inbounds i8, ptr %260, i64 %278
  %283 = getelementptr inbounds ptr, ptr %282, i64 1
  %284 = load ptr, ptr %283, align 8, !tbaa !92
  %285 = load i64, ptr %284, align 8
  %286 = trunc i64 %285 to i32
  %287 = and i32 %286, 65535
  br label %288

288:                                              ; preds = %281, %266
  %289 = phi i32 [ %287, %281 ], [ %267, %266 ]
  %290 = icmp eq i32 %289, 63
  br i1 %290, label %326, label %291

291:                                              ; preds = %288
  %292 = load i32, ptr %260, align 8
  %293 = trunc i32 %292 to i8
  switch i8 %293, label %296 [
    i8 6, label %294
    i8 1, label %294
    i8 8, label %297
  ]

294:                                              ; preds = %291, %291
  %295 = lshr i32 %292, 16
  br label %297

296:                                              ; preds = %291
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.4) #22
  br label %297

297:                                              ; preds = %296, %294, %291
  %298 = phi i32 [ %295, %294 ], [ 0, %296 ], [ 59, %291 ]
  %299 = zext nneg i32 %298 to i64
  %300 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !103
  %302 = icmp eq i8 %301, 3
  br i1 %302, label %303, label %323

303:                                              ; preds = %297
  %304 = load i32, ptr %260, align 8
  %305 = and i32 %304, 255
  %306 = add nsw i32 %305, -1
  %307 = icmp ult i32 %306, 9
  call void @llvm.assume(i1 %307)
  %308 = zext nneg i32 %305 to i64
  %309 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %308
  %310 = load i32, ptr %309, align 4, !tbaa !107
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %311
  %313 = load i64, ptr %312, align 8, !tbaa !131
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %303
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %316

316:                                              ; preds = %315, %303
  %317 = getelementptr inbounds i8, ptr %260, i64 %313
  %318 = getelementptr inbounds ptr, ptr %317, i64 1
  %319 = load ptr, ptr %318, align 8, !tbaa !92
  %320 = load i64, ptr %319, align 8
  %321 = trunc i64 %320 to i32
  %322 = and i32 %321, 65535
  br label %323

323:                                              ; preds = %316, %297
  %324 = phi i32 [ %322, %316 ], [ %298, %297 ]
  %325 = icmp eq i32 %324, 65
  br i1 %325, label %326, label %384

326:                                              ; preds = %323, %288, %250, %241
  %327 = load i32, ptr %25, align 8
  %328 = and i32 %327, 255
  %329 = add nsw i32 %328, -10
  %330 = icmp ult i32 %329, -9
  br i1 %330, label %344, label %331

331:                                              ; preds = %326
  %332 = zext nneg i32 %328 to i64
  %333 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !107
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %335
  %337 = load i64, ptr %336, align 8, !tbaa !131
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %331
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %340

340:                                              ; preds = %339, %331
  %341 = getelementptr inbounds i8, ptr %25, i64 %337
  %342 = getelementptr inbounds ptr, ptr %341, i64 1
  %343 = load ptr, ptr %342, align 8, !tbaa !92
  br label %344

344:                                              ; preds = %340, %326
  %345 = phi ptr [ %343, %340 ], [ null, %326 ]
  %346 = load i32, ptr %91, align 4, !tbaa !103
  %347 = icmp ugt i32 %346, 2
  br i1 %347, label %348, label %366

348:                                              ; preds = %344
  %349 = load i32, ptr %25, align 8
  %350 = and i32 %349, 255
  %351 = add nsw i32 %350, -10
  %352 = icmp ult i32 %351, -9
  br i1 %352, label %366, label %353

353:                                              ; preds = %348
  %354 = zext nneg i32 %350 to i64
  %355 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %354
  %356 = load i32, ptr %355, align 4, !tbaa !107
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %357
  %359 = load i64, ptr %358, align 8, !tbaa !131
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %353
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %362

362:                                              ; preds = %361, %353
  %363 = getelementptr inbounds i8, ptr %25, i64 %359
  %364 = getelementptr inbounds ptr, ptr %363, i64 2
  %365 = load ptr, ptr %364, align 8, !tbaa !92
  br label %366

366:                                              ; preds = %362, %348, %344
  %367 = phi ptr [ null, %344 ], [ %365, %362 ], [ null, %348 ]
  %368 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %369 = icmp eq ptr %368, null
  br i1 %369, label %377, label %370

370:                                              ; preds = %366
  %371 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %372 = and i32 %371, 8
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %377, label %374

374:                                              ; preds = %370
  %375 = call i64 @fwrite(ptr nonnull @.str.6, i64 21, i64 1, ptr nonnull %368)
  %376 = load ptr, ptr @dump_file, align 8, !tbaa !92
  call void @print_gimple_stmt(ptr noundef %376, ptr noundef nonnull %25, i32 noundef 0, i32 noundef 0) #22
  br label %377

377:                                              ; preds = %374, %370, %366
  %378 = call fastcc ptr @negate_value(ptr noundef %367, ptr noundef nonnull %2)
  call void @gimple_assign_set_rhs_with_ops(ptr noundef nonnull %2, i32 noundef 63, ptr noundef %345, ptr noundef %378) #22
  %379 = load i32, ptr %25, align 8
  %380 = and i32 %379, 255
  %381 = add nsw i32 %380, -10
  %382 = icmp ult i32 %381, -9
  br i1 %382, label %384, label %383

383:                                              ; preds = %377
  call void @gimple_set_modified(ptr noundef nonnull %25, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %25) #22
  br label %384

384:                                              ; preds = %255, %259, %262, %323, %164, %383, %377, %158, %155, %23, %50
  %385 = load ptr, ptr %2, align 8, !tbaa !171
  %386 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %385, i64 0, i32 2
  %387 = load ptr, ptr %386, align 8, !tbaa !173
  store ptr %387, ptr %2, align 8, !tbaa !171
  %388 = icmp eq ptr %387, null
  br i1 %388, label %389, label %23, !prof !174, !llvm.loop !175

389:                                              ; preds = %384, %18
  %390 = call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #22
  %391 = icmp eq ptr %390, null
  br i1 %391, label %396, label %392, !prof !152

392:                                              ; preds = %389, %392
  %393 = phi ptr [ %394, %392 ], [ %390, %389 ]
  call fastcc void @break_up_subtract_bb(ptr noundef nonnull %393)
  %394 = call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %393) #22
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %392, !prof !176, !llvm.loop !177

396:                                              ; preds = %392, %389
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @reassociate_bb(ptr noundef %0) unnamed_addr #14 !prof !144 !PGOFuncName !178 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !146, !noalias !179
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14, !prof !151

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !103, !noalias !179
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !152

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !153, !noalias !179
  br label %14

14:                                               ; preds = %12, %8, %1
  %15 = phi ptr [ %13, %12 ], [ null, %8 ], [ null, %1 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17, !prof !152

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gimple_seq_d, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !182, !noalias !179
  br label %20

20:                                               ; preds = %14, %17
  %21 = phi ptr [ %19, %17 ], [ null, %14 ]
  store ptr %21, ptr %2, align 8, !tbaa.struct !157
  %22 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %15, ptr %22, align 8, !tbaa.struct !158
  %23 = getelementptr inbounds i8, ptr %2, i64 16
  store ptr %0, ptr %23, align 8, !tbaa.struct !159
  %24 = icmp eq ptr %21, null
  br i1 %24, label %1057, label %25, !prof !160

25:                                               ; preds = %20, %1052
  %26 = phi ptr [ %1055, %1052 ], [ %21, %20 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !161
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 6
  br i1 %30, label %31, label %1048, !prof !163

31:                                               ; preds = %25
  %32 = lshr i32 %28, 16
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !103
  %36 = icmp eq i8 %35, 3
  br i1 %36, label %37, label %53, !prof !164

37:                                               ; preds = %31
  %38 = zext nneg i32 %29 to i64
  %39 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !107
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !131
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46, !prof !165

45:                                               ; preds = %37
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %46

46:                                               ; preds = %45, %37
  %47 = getelementptr inbounds i8, ptr %27, i64 %43
  %48 = getelementptr inbounds ptr, ptr %47, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !92
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = and i32 %51, 65535
  br label %53

53:                                               ; preds = %31, %46
  %54 = phi i32 [ %52, %46 ], [ %32, %31 ]
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !103
  %58 = icmp eq i8 %57, 1
  br i1 %58, label %59, label %1045, !prof !183

59:                                               ; preds = %53
  %60 = load i32, ptr %27, align 8
  %61 = and i32 %60, 512
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %100, label %63, !prof !184

63:                                               ; preds = %59
  %64 = call ptr @gimple_get_lhs(ptr noundef nonnull %27) #22
  %65 = getelementptr inbounds %struct.tree_ssa_name, ptr %64, i64 0, i32 5
  %66 = getelementptr inbounds %struct.tree_ssa_name, ptr %64, i64 0, i32 5, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !185
  %68 = icmp eq ptr %65, %67
  br i1 %68, label %74, label %69, !prof !187

69:                                               ; preds = %63
  %70 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !107
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72, !prof !188

72:                                               ; preds = %69
  %73 = call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %65) #22
  br label %74

74:                                               ; preds = %63, %69, %72
  %75 = phi i8 [ %73, %72 ], [ 1, %63 ], [ 0, %69 ]
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %99, label %77, !prof !188

77:                                               ; preds = %74
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #22
  call void @release_defs(ptr noundef nonnull %27) #22
  %78 = load ptr, ptr %2, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %99

80:                                               ; preds = %77
  %81 = load i32, ptr %4, align 8, !tbaa !146, !noalias !189
  %82 = and i32 %81, 512
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !103, !noalias !189
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %86, align 8, !tbaa !153, !noalias !189
  br label %90

90:                                               ; preds = %88, %84, %80
  %91 = phi ptr [ %89, %88 ], [ null, %84 ], [ null, %80 ]
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.gimple_seq_d, ptr %91, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !182, !noalias !189
  br label %96

96:                                               ; preds = %90, %93
  %97 = phi ptr [ %95, %93 ], [ null, %90 ]
  store ptr %97, ptr %2, align 8, !tbaa.struct !157
  store ptr %91, ptr %22, align 8, !tbaa.struct !158
  store ptr %0, ptr %23, align 8, !tbaa.struct !159
  %98 = icmp eq ptr %97, null
  br i1 %98, label %1045, label %99

99:                                               ; preds = %77, %96, %74
  br label %1045

100:                                              ; preds = %59
  %101 = and i32 %60, 255
  %102 = add nsw i32 %101, -10
  %103 = icmp ult i32 %102, -9
  br i1 %103, label %116, label %104, !prof !192

104:                                              ; preds = %100
  %105 = zext nneg i32 %101 to i64
  %106 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !107
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !131
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113, !prof !192

112:                                              ; preds = %104
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %113

113:                                              ; preds = %112, %104
  %114 = getelementptr inbounds i8, ptr %27, i64 %110
  %115 = load ptr, ptr %114, align 8, !tbaa !92
  br label %116

116:                                              ; preds = %100, %113
  %117 = phi ptr [ %115, %113 ], [ null, %100 ]
  %118 = load i32, ptr %27, align 8
  %119 = and i32 %118, 255
  %120 = add nsw i32 %119, -10
  %121 = icmp ult i32 %120, -9
  br i1 %121, label %135, label %122, !prof !192

122:                                              ; preds = %116
  %123 = zext nneg i32 %119 to i64
  %124 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !107
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !131
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131, !prof !192

130:                                              ; preds = %122
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %131

131:                                              ; preds = %130, %122
  %132 = getelementptr inbounds i8, ptr %27, i64 %128
  %133 = getelementptr inbounds ptr, ptr %132, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !92
  br label %135

135:                                              ; preds = %116, %131
  %136 = phi ptr [ %134, %131 ], [ null, %116 ]
  %137 = getelementptr inbounds %struct.gimple_statement_base, ptr %27, i64 0, i32 3
  %138 = load i32, ptr %137, align 4, !tbaa !103
  %139 = icmp ugt i32 %138, 2
  br i1 %139, label %140, label %158, !prof !193

140:                                              ; preds = %135
  %141 = load i32, ptr %27, align 8
  %142 = and i32 %141, 255
  %143 = add nsw i32 %142, -10
  %144 = icmp ult i32 %143, -9
  br i1 %144, label %158, label %145, !prof !192

145:                                              ; preds = %140
  %146 = zext nneg i32 %142 to i64
  %147 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !107
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %149
  %151 = load i64, ptr %150, align 8, !tbaa !131
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154, !prof !192

153:                                              ; preds = %145
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %154

154:                                              ; preds = %153, %145
  %155 = getelementptr inbounds i8, ptr %27, i64 %151
  %156 = getelementptr inbounds ptr, ptr %155, i64 2
  %157 = load ptr, ptr %156, align 8, !tbaa !92
  br label %158

158:                                              ; preds = %135, %140, %154
  %159 = phi ptr [ null, %135 ], [ %157, %154 ], [ null, %140 ]
  %160 = getelementptr inbounds %struct.tree_common, ptr %117, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !103
  %162 = load i64, ptr %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = and i32 %163, 65535
  %165 = add nsw i32 %164, -6
  %166 = icmp ult i32 %165, 3
  br i1 %166, label %167, label %183, !prof !194

167:                                              ; preds = %158
  %168 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !103
  %170 = load i64, ptr %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = and i32 %171, 65535
  %173 = add nsw i32 %172, -6
  %174 = icmp ult i32 %173, 3
  br i1 %174, label %175, label %183, !prof !195

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.tree_common, ptr %159, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !103
  %178 = load i64, ptr %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = and i32 %179, 65535
  %181 = add nsw i32 %180, -6
  %182 = icmp ult i32 %181, 3
  br i1 %182, label %216, label %183, !prof !195

183:                                              ; preds = %175, %167, %158
  %184 = and i64 %162, 65535
  %185 = icmp eq i64 %184, 9
  br i1 %185, label %186, label %201, !prof !196

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !103
  %189 = load i64, ptr %188, align 8
  %190 = and i64 %189, 65535
  %191 = icmp eq i64 %190, 9
  br i1 %191, label %192, label %201

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.tree_common, ptr %159, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !103
  %195 = load i64, ptr %194, align 8
  %196 = and i64 %195, 65535
  %197 = icmp eq i64 %196, 9
  %198 = load i32, ptr @flag_associative_math, align 4
  %199 = icmp ne i32 %198, 0
  %200 = select i1 %197, i1 %199, i1 false
  br i1 %200, label %216, label %201

201:                                              ; preds = %192, %186, %183
  %202 = and i64 %162, 2147549183
  %203 = icmp eq i64 %202, 11
  br i1 %203, label %204, label %1045, !prof !196

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !103
  %207 = load i64, ptr %206, align 8
  %208 = and i64 %207, 2147549183
  %209 = icmp eq i64 %208, 11
  br i1 %209, label %210, label %1045

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.tree_common, ptr %159, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !103
  %213 = load i64, ptr %212, align 8
  %214 = and i64 %213, 2147549183
  %215 = icmp eq i64 %214, 11
  br i1 %215, label %216, label %1045

216:                                              ; preds = %175, %210, %192
  %217 = call zeroext i8 @associative_tree_code(i32 noundef %54) #22
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %1044, label %219, !prof !197

219:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !92
  %220 = load i64, ptr %117, align 8
  %221 = and i64 %220, 65535
  %222 = icmp eq i64 %221, 141
  br i1 %222, label %223, label %236, !prof !198

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.tree_ssa_name, ptr %117, i64 0, i32 5
  %225 = getelementptr inbounds %struct.tree_ssa_name, ptr %117, i64 0, i32 5, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !185
  %227 = icmp eq ptr %224, %226
  br i1 %227, label %233, label %228, !prof !199

228:                                              ; preds = %223
  %229 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !107
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231, !prof !200

231:                                              ; preds = %228
  %232 = call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %224) #22
  br label %233

233:                                              ; preds = %223, %228, %231
  %234 = phi i8 [ %232, %231 ], [ 1, %223 ], [ 0, %228 ]
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %1041, !prof !201

236:                                              ; preds = %233, %219
  %237 = load i32, ptr %27, align 8
  %238 = or i32 %237, 512
  store i32 %238, ptr %27, align 8
  call fastcc void @linearize_expr_tree(ptr noundef nonnull %3, ptr noundef nonnull %27, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %239 = load ptr, ptr %3, align 8
  %240 = icmp eq ptr %239, null
  %241 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %239, i64 0, i32 2
  %242 = select i1 %240, ptr null, ptr %241, !prof !202
  br i1 %240, label %245, label %243, !prof !202

243:                                              ; preds = %236
  %244 = load i32, ptr %239, align 8, !tbaa !111
  br label %245

245:                                              ; preds = %236, %243
  %246 = phi i32 [ %244, %243 ], [ 0, %236 ]
  %247 = zext i32 %246 to i64
  call void @spec_qsort(ptr noundef %242, i64 noundef %247, i64 noundef 8, ptr noundef nonnull @sort_by_operand_rank) #22
  call fastcc void @optimize_ops_list(i32 noundef %54, ptr noundef nonnull %3)
  %248 = getelementptr inbounds %struct.gimple_statement_base, ptr %27, i64 0, i32 4
  %249 = load ptr, ptr %248, align 8, !tbaa !103
  %250 = icmp eq ptr %249, null
  br i1 %250, label %254, label %251, !prof !202

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.basic_block_def, ptr %249, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !169
  br label %254

254:                                              ; preds = %245, %251
  %255 = phi ptr [ %253, %251 ], [ null, %245 ]
  %256 = load ptr, ptr %3, align 8, !tbaa !92
  %257 = icmp eq ptr %256, null
  br i1 %257, label %260, label %258, !prof !202

258:                                              ; preds = %254
  %259 = load i32, ptr %256, align 8, !tbaa !111
  br label %260

260:                                              ; preds = %258, %254
  %261 = phi i32 [ %259, %258 ], [ 0, %254 ]
  %262 = icmp ult i32 %261, 2
  %263 = icmp ne i32 %54, 63
  %264 = or i1 %263, %262
  br i1 %264, label %961, label %265, !prof !203

265:                                              ; preds = %260
  %266 = call ptr @sbitmap_alloc(i32 noundef %261) #22
  call void @sbitmap_zero(ptr noundef %266) #22
  br label %267

267:                                              ; preds = %349, %265
  %268 = phi i32 [ 0, %265 ], [ %351, %349 ]
  %269 = phi i32 [ 0, %265 ], [ %350, %349 ]
  %270 = load ptr, ptr %3, align 8, !tbaa !92
  %271 = icmp eq ptr %270, null
  br i1 %271, label %279, label %272, !prof !204

272:                                              ; preds = %267
  %273 = load i32, ptr %270, align 8, !tbaa !111
  %274 = icmp ugt i32 %273, %268
  br i1 %274, label %275, label %279, !prof !205

275:                                              ; preds = %272
  %276 = zext i32 %268 to i64
  %277 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %270, i64 0, i32 2, i64 %276
  %278 = load ptr, ptr %277, align 8, !tbaa !92
  br label %279

279:                                              ; preds = %275, %272, %267
  %280 = phi ptr [ %278, %275 ], [ null, %272 ], [ null, %267 ]
  %281 = phi i1 [ false, %275 ], [ true, %272 ], [ true, %267 ]
  br i1 %281, label %352, label %282, !prof !206

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.operand_entry, ptr %280, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !115
  %285 = load i64, ptr %284, align 8
  %286 = and i64 %285, 65535
  %287 = icmp eq i64 %286, 141
  br i1 %287, label %288, label %349, !prof !207

288:                                              ; preds = %282
  %289 = getelementptr inbounds %struct.tree_ssa_name, ptr %284, i64 0, i32 2
  %290 = load ptr, ptr %289, align 8, !tbaa !103
  %291 = load i32, ptr %290, align 8
  %292 = and i32 %291, 255
  %293 = icmp eq i32 %292, 6
  br i1 %293, label %294, label %349, !prof !208

294:                                              ; preds = %288
  %295 = lshr i32 %291, 16
  %296 = zext nneg i32 %295 to i64
  %297 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !103
  %299 = icmp eq i8 %298, 3
  br i1 %299, label %300, label %316, !prof !209

300:                                              ; preds = %294
  %301 = zext nneg i32 %292 to i64
  %302 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %301
  %303 = load i32, ptr %302, align 4, !tbaa !107
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %304
  %306 = load i64, ptr %305, align 8, !tbaa !131
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %309, !prof !210

308:                                              ; preds = %300
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %309

309:                                              ; preds = %308, %300
  %310 = getelementptr inbounds i8, ptr %290, i64 %306
  %311 = getelementptr inbounds ptr, ptr %310, i64 1
  %312 = load ptr, ptr %311, align 8, !tbaa !92
  %313 = load i64, ptr %312, align 8
  %314 = trunc i64 %313 to i32
  %315 = and i32 %314, 65535
  br label %316

316:                                              ; preds = %309, %294
  %317 = phi i32 [ %315, %309 ], [ %295, %294 ]
  %318 = trunc i32 %317 to i16
  switch i16 %318, label %349 [
    i16 75, label %319
    i16 65, label %319
  ], !prof !211

319:                                              ; preds = %316, %316
  %320 = call fastcc zeroext i8 @is_reassociable_op(ptr noundef nonnull %290, i32 noundef %317, ptr noundef %255), !range !170
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %349, label %322

322:                                              ; preds = %319
  %323 = load ptr, ptr %266, align 8, !tbaa !212
  %324 = icmp eq ptr %323, null
  br i1 %324, label %339, label %325

325:                                              ; preds = %322
  %326 = lshr i32 %268, 6
  %327 = zext nneg i32 %326 to i64
  %328 = getelementptr inbounds %struct.simple_bitmap_def, ptr %266, i64 0, i32 3, i64 %327
  %329 = load i64, ptr %328, align 8, !tbaa !131
  %330 = and i32 %268, 63
  %331 = zext nneg i32 %330 to i64
  %332 = shl nuw i64 1, %331
  %333 = and i64 %329, %332
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %325
  %336 = getelementptr inbounds i8, ptr %323, i64 %327
  %337 = load i8, ptr %336, align 1, !tbaa !103
  %338 = add i8 %337, 1
  store i8 %338, ptr %336, align 1, !tbaa !103
  br label %339

339:                                              ; preds = %335, %325, %322
  %340 = and i32 %268, 63
  %341 = zext nneg i32 %340 to i64
  %342 = shl nuw i64 1, %341
  %343 = lshr i32 %268, 6
  %344 = zext nneg i32 %343 to i64
  %345 = getelementptr inbounds %struct.simple_bitmap_def, ptr %266, i64 0, i32 3, i64 %344
  %346 = load i64, ptr %345, align 8, !tbaa !131
  %347 = or i64 %346, %342
  store i64 %347, ptr %345, align 8, !tbaa !131
  %348 = add i32 %269, 1
  br label %349

349:                                              ; preds = %319, %339, %316, %288, %282
  %350 = phi i32 [ %348, %339 ], [ %269, %282 ], [ %269, %288 ], [ %269, %316 ], [ %269, %319 ]
  %351 = add i32 %268, 1
  br label %267, !llvm.loop !214

352:                                              ; preds = %279
  %353 = icmp ult i32 %269, 2
  br i1 %353, label %957, label %354, !prof !215

354:                                              ; preds = %352
  %355 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %356 = icmp eq ptr %355, null
  br i1 %356, label %373, label %357

357:                                              ; preds = %354
  %358 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %359 = and i32 %358, 8
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %373, label %361

361:                                              ; preds = %357
  %362 = call i64 @fwrite(ptr nonnull @.str.32, i64 42, i64 1, ptr nonnull %355)
  %363 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %364 = load ptr, ptr %3, align 8, !tbaa !92
  %365 = call i32 @sbitmap_first_set_bit(ptr noundef %266) #22
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %364, i64 0, i32 2, i64 %366
  %368 = load ptr, ptr %367, align 8, !tbaa !92
  %369 = getelementptr inbounds %struct.operand_entry, ptr %368, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !115
  call void @print_generic_expr(ptr noundef %363, ptr noundef %370, i32 noundef 0) #22
  %371 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %372 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %371, ptr noundef nonnull @.str.33, i32 noundef %269)
  br label %373

373:                                              ; preds = %361, %357, %354
  store ptr null, ptr @cvec, align 8, !tbaa !92
  %374 = call ptr @htab_create(i64 noundef 15, ptr noundef nonnull @oecount_hash, ptr noundef nonnull @oecount_eq, ptr noundef null) #22
  %375 = load ptr, ptr %3, align 8, !tbaa !92
  %376 = icmp eq ptr %375, null
  br i1 %376, label %379, label %377

377:                                              ; preds = %373
  %378 = load i32, ptr %375, align 8, !tbaa !111
  br label %379

379:                                              ; preds = %377, %373
  %380 = phi i32 [ %378, %377 ], [ 0, %373 ]
  %381 = zext i32 %380 to i64
  %382 = call ptr @xcalloc(i64 noundef %381, i64 noundef 8) #22
  %383 = getelementptr inbounds %struct.simple_bitmap_def, ptr %266, i64 0, i32 2
  %384 = load i32, ptr %383, align 4, !tbaa !216
  %385 = getelementptr inbounds %struct.simple_bitmap_def, ptr %266, i64 0, i32 3
  %386 = icmp eq i32 %384, 0
  br i1 %386, label %389, label %387

387:                                              ; preds = %379
  %388 = load i64, ptr %385, align 8, !tbaa !131
  br label %389

389:                                              ; preds = %387, %379
  %390 = phi i64 [ 0, %379 ], [ %388, %387 ]
  br label %391

391:                                              ; preds = %389, %532
  %392 = phi i32 [ %431, %532 ], [ 0, %389 ]
  %393 = phi i32 [ %534, %532 ], [ 0, %389 ]
  %394 = phi i64 [ %533, %532 ], [ %390, %389 ]
  %395 = phi i32 [ %434, %532 ], [ %268, %389 ]
  %396 = icmp eq i64 %394, 0
  br i1 %396, label %397, label %404

397:                                              ; preds = %391
  %398 = add i32 %392, 1
  %399 = call i32 @llvm.umax.i32(i32 %384, i32 %398)
  %400 = add i32 %392, 1
  %401 = icmp ult i32 %400, %384
  br i1 %401, label %414, label %429

402:                                              ; preds = %414
  %403 = shl i32 %415, 6
  br label %404

404:                                              ; preds = %402, %391
  %405 = phi i32 [ %392, %391 ], [ %415, %402 ]
  %406 = phi i32 [ %393, %391 ], [ %403, %402 ]
  %407 = phi i64 [ %394, %391 ], [ %418, %402 ]
  %408 = phi i1 [ %396, %391 ], [ %419, %402 ]
  %409 = and i64 %407, 1
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %420, label %429

411:                                              ; preds = %414
  %412 = add i32 %415, 1
  %413 = icmp ult i32 %412, %384
  br i1 %413, label %414, label %427, !llvm.loop !217

414:                                              ; preds = %397, %411
  %415 = phi i32 [ %412, %411 ], [ %400, %397 ]
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds i64, ptr %385, i64 %416
  %418 = load i64, ptr %417, align 8, !tbaa !131
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %411, label %402, !llvm.loop !217

420:                                              ; preds = %404, %420
  %421 = phi i64 [ %424, %420 ], [ %407, %404 ]
  %422 = phi i32 [ %423, %420 ], [ %406, %404 ]
  %423 = add i32 %422, 1
  %424 = lshr exact i64 %421, 1
  %425 = and i64 %421, 2
  %426 = icmp eq i64 %425, 0
  br i1 %426, label %420, label %429, !llvm.loop !218

427:                                              ; preds = %411
  %428 = shl i32 %415, 6
  br label %429

429:                                              ; preds = %420, %427, %397, %404
  %430 = phi i1 [ %408, %404 ], [ %396, %397 ], [ %419, %427 ], [ %408, %420 ]
  %431 = phi i32 [ %405, %404 ], [ %399, %397 ], [ %399, %427 ], [ %405, %420 ]
  %432 = phi i32 [ %406, %404 ], [ %393, %397 ], [ %428, %427 ], [ %423, %420 ]
  %433 = phi i64 [ %407, %404 ], [ %394, %397 ], [ %418, %427 ], [ %424, %420 ]
  %434 = phi i32 [ %406, %404 ], [ %395, %397 ], [ %395, %427 ], [ %423, %420 ]
  br i1 %430, label %535, label %435

435:                                              ; preds = %429
  %436 = load ptr, ptr %3, align 8, !tbaa !92
  %437 = zext i32 %434 to i64
  %438 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %436, i64 0, i32 2, i64 %437
  %439 = load ptr, ptr %438, align 8, !tbaa !92
  %440 = getelementptr inbounds %struct.operand_entry, ptr %439, i64 0, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !115
  %442 = getelementptr inbounds %struct.tree_ssa_name, ptr %441, i64 0, i32 2
  %443 = load ptr, ptr %442, align 8, !tbaa !103
  %444 = load i32, ptr %443, align 8
  %445 = trunc i32 %444 to i8
  switch i8 %445, label %448 [
    i8 6, label %446
    i8 1, label %446
    i8 8, label %449
  ]

446:                                              ; preds = %435, %435
  %447 = lshr i32 %444, 16
  br label %449

448:                                              ; preds = %435
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.4) #22
  br label %449

449:                                              ; preds = %448, %446, %435
  %450 = phi i32 [ %447, %446 ], [ 0, %448 ], [ 59, %435 ]
  %451 = zext nneg i32 %450 to i64
  %452 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %451
  %453 = load i8, ptr %452, align 1, !tbaa !103
  %454 = icmp eq i8 %453, 3
  br i1 %454, label %455, label %475

455:                                              ; preds = %449
  %456 = load i32, ptr %443, align 8
  %457 = and i32 %456, 255
  %458 = add nsw i32 %457, -1
  %459 = icmp ult i32 %458, 9
  call void @llvm.assume(i1 %459)
  %460 = zext nneg i32 %457 to i64
  %461 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %460
  %462 = load i32, ptr %461, align 4, !tbaa !107
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %463
  %465 = load i64, ptr %464, align 8, !tbaa !131
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %467, label %468

467:                                              ; preds = %455
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %468

468:                                              ; preds = %467, %455
  %469 = getelementptr inbounds i8, ptr %443, i64 %465
  %470 = getelementptr inbounds ptr, ptr %469, i64 1
  %471 = load ptr, ptr %470, align 8, !tbaa !92
  %472 = load i64, ptr %471, align 8
  %473 = trunc i64 %472 to i32
  %474 = and i32 %473, 65535
  br label %475

475:                                              ; preds = %468, %449
  %476 = phi i32 [ %474, %468 ], [ %450, %449 ]
  %477 = getelementptr inbounds ptr, ptr %382, i64 %437
  %478 = call zeroext i8 @associative_tree_code(i32 noundef %476) #22
  call fastcc void @linearize_expr_tree(ptr noundef %477, ptr noundef nonnull %443, i8 noundef zeroext %478, i8 noundef zeroext 0)
  br label %479

479:                                              ; preds = %530, %475
  %480 = phi i32 [ 0, %475 ], [ %531, %530 ]
  %481 = load ptr, ptr %477, align 8, !tbaa !92
  %482 = icmp eq ptr %481, null
  br i1 %482, label %490, label %483

483:                                              ; preds = %479
  %484 = load i32, ptr %481, align 8, !tbaa !111
  %485 = icmp ugt i32 %484, %480
  br i1 %485, label %486, label %490

486:                                              ; preds = %483
  %487 = zext i32 %480 to i64
  %488 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %481, i64 0, i32 2, i64 %487
  %489 = load ptr, ptr %488, align 8, !tbaa !92
  br label %490

490:                                              ; preds = %486, %483, %479
  %491 = phi ptr [ %489, %486 ], [ null, %483 ], [ null, %479 ]
  %492 = phi i1 [ false, %486 ], [ true, %483 ], [ true, %479 ]
  br i1 %492, label %532, label %493

493:                                              ; preds = %490
  %494 = getelementptr inbounds %struct.operand_entry, ptr %491, i64 0, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !115
  %496 = load ptr, ptr @cvec, align 8, !tbaa !92
  %497 = icmp eq ptr %496, null
  br i1 %497, label %503, label %498

498:                                              ; preds = %493
  %499 = getelementptr inbounds %struct.VEC_oecount_base, ptr %496, i64 0, i32 1
  %500 = load i32, ptr %499, align 4, !tbaa !219
  %501 = load i32, ptr %496, align 8, !tbaa !221
  %502 = icmp eq i32 %500, %501
  br i1 %502, label %503, label %505

503:                                              ; preds = %498, %493
  %504 = call ptr @vec_heap_o_reserve(ptr noundef %496, i32 noundef 1, i64 noundef 8, i64 noundef 16) #22
  store ptr %504, ptr @cvec, align 8, !tbaa !92
  br label %505

505:                                              ; preds = %503, %498
  %506 = load ptr, ptr @cvec, align 8
  %507 = load i32, ptr %506, align 8, !tbaa !221
  %508 = add i32 %507, 1
  store i32 %508, ptr %506, align 8, !tbaa !221
  %509 = zext i32 %507 to i64
  %510 = getelementptr inbounds %struct.VEC_oecount_base, ptr %506, i64 0, i32 2, i64 %509
  store i32 1, ptr %510, align 8, !tbaa.struct !222
  %511 = getelementptr inbounds i8, ptr %510, i64 4
  store i32 %476, ptr %511, align 4, !tbaa.struct !223
  %512 = getelementptr inbounds i8, ptr %510, i64 8
  store ptr %495, ptr %512, align 8, !tbaa.struct !159
  %513 = add i32 %507, 42
  %514 = zext i32 %513 to i64
  %515 = inttoptr i64 %514 to ptr
  %516 = call ptr @htab_find_slot(ptr noundef %374, ptr noundef %515, i32 noundef 1) #22
  %517 = load ptr, ptr %516, align 8, !tbaa !92
  %518 = icmp eq ptr %517, null
  br i1 %518, label %519, label %520

519:                                              ; preds = %505
  store ptr %515, ptr %516, align 8, !tbaa !92
  br label %530

520:                                              ; preds = %505
  %521 = load ptr, ptr @cvec, align 8
  %522 = load i32, ptr %521, align 8, !tbaa !221
  %523 = add i32 %522, -1
  store i32 %523, ptr %521, align 8, !tbaa !221
  %524 = ptrtoint ptr %517 to i64
  %525 = add i64 %524, 4294967254
  %526 = and i64 %525, 4294967295
  %527 = getelementptr inbounds %struct.VEC_oecount_base, ptr %521, i64 0, i32 2, i64 %526
  %528 = load i32, ptr %527, align 8, !tbaa !224
  %529 = add nsw i32 %528, 1
  store i32 %529, ptr %527, align 8, !tbaa !224
  br label %530

530:                                              ; preds = %520, %519
  %531 = add i32 %480, 1
  br label %479, !llvm.loop !226

532:                                              ; preds = %490
  %533 = lshr i64 %433, 1
  %534 = add i32 %432, 1
  br label %391, !llvm.loop !227

535:                                              ; preds = %429
  call void @htab_delete(ptr noundef %374) #22
  %536 = load ptr, ptr @cvec, align 8
  %537 = icmp eq ptr %536, null
  %538 = getelementptr inbounds %struct.VEC_oecount_base, ptr %536, i64 0, i32 2
  %539 = select i1 %537, ptr null, ptr %538
  br i1 %537, label %542, label %540

540:                                              ; preds = %535
  %541 = load i32, ptr %536, align 8, !tbaa !221
  br label %542

542:                                              ; preds = %540, %535
  %543 = phi i32 [ %541, %540 ], [ 0, %535 ]
  %544 = zext i32 %543 to i64
  call void @spec_qsort(ptr noundef %539, i64 noundef %544, i64 noundef 16, ptr noundef nonnull @oecount_cmp) #22
  %545 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %546 = icmp eq ptr %545, null
  br i1 %546, label %582, label %547

547:                                              ; preds = %542
  %548 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %549 = and i32 %548, 8
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %582, label %551

551:                                              ; preds = %547
  %552 = call i64 @fwrite(ptr nonnull @.str.34, i64 12, i64 1, ptr nonnull %545)
  br label %553

553:                                              ; preds = %566, %551
  %554 = phi i32 [ 0, %551 ], [ %581, %566 ]
  %555 = load ptr, ptr @cvec, align 8
  %556 = icmp eq ptr %555, null
  br i1 %556, label %563, label %557

557:                                              ; preds = %553
  %558 = load i32, ptr %555, align 8, !tbaa !221
  %559 = icmp ugt i32 %558, %554
  br i1 %559, label %560, label %563

560:                                              ; preds = %557
  %561 = zext i32 %554 to i64
  %562 = getelementptr inbounds %struct.VEC_oecount_base, ptr %555, i64 0, i32 2, i64 %561
  br label %563

563:                                              ; preds = %560, %557, %553
  %564 = phi ptr [ %562, %560 ], [ null, %557 ], [ null, %553 ]
  %565 = phi i1 [ false, %560 ], [ true, %557 ], [ true, %553 ]
  br i1 %565, label %582, label %566

566:                                              ; preds = %563
  %567 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %568 = load i32, ptr %564, align 8, !tbaa !224
  %569 = getelementptr inbounds %struct.oecount_s, ptr %564, i64 0, i32 1
  %570 = load i32, ptr %569, align 4, !tbaa !228
  %571 = icmp eq i32 %570, 65
  %572 = icmp eq i32 %570, 75
  %573 = select i1 %572, ptr @.str.37, ptr @.str.4
  %574 = select i1 %571, ptr @.str.36, ptr %573
  %575 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %567, ptr noundef nonnull @.str.35, i32 noundef %568, ptr noundef nonnull %574)
  %576 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %577 = getelementptr inbounds %struct.oecount_s, ptr %564, i64 0, i32 2
  %578 = load ptr, ptr %577, align 8, !tbaa !229
  call void @print_generic_expr(ptr noundef %576, ptr noundef %578, i32 noundef 0) #22
  %579 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %580 = call i32 @fputc(i32 10, ptr %579)
  %581 = add i32 %554, 1
  br label %553, !llvm.loop !230

582:                                              ; preds = %563, %547, %542
  %583 = call ptr @sbitmap_alloc(i32 noundef %261) #22
  br label %584

584:                                              ; preds = %929, %582
  %585 = phi i32 [ %434, %582 ], [ %930, %929 ]
  %586 = phi i8 [ 0, %582 ], [ %931, %929 ]
  %587 = load ptr, ptr @cvec, align 8
  %588 = icmp eq ptr %587, null
  br i1 %588, label %591, label %589

589:                                              ; preds = %584
  %590 = load i32, ptr %587, align 8, !tbaa !221
  br label %591

591:                                              ; preds = %589, %584
  %592 = phi i32 [ %590, %589 ], [ 0, %584 ]
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %932, label %594

594:                                              ; preds = %591
  %595 = load i32, ptr %587, align 8, !tbaa !221
  %596 = add i32 %595, -1
  %597 = zext i32 %596 to i64
  %598 = getelementptr inbounds %struct.VEC_oecount_base, ptr %587, i64 0, i32 2, i64 %597
  %599 = load i32, ptr %598, align 8, !tbaa !224
  %600 = icmp sgt i32 %599, 1
  br i1 %600, label %601, label %929

601:                                              ; preds = %594
  call void @sbitmap_zero(ptr noundef %583) #22
  %602 = load i32, ptr %383, align 4, !tbaa !216
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %606, label %604

604:                                              ; preds = %601
  %605 = load i64, ptr %385, align 8, !tbaa !131
  br label %606

606:                                              ; preds = %604, %601
  %607 = phi i64 [ %605, %604 ], [ 0, %601 ]
  %608 = getelementptr inbounds %struct.VEC_oecount_base, ptr %587, i64 0, i32 2, i64 %597, i32 1
  %609 = getelementptr inbounds %struct.VEC_oecount_base, ptr %587, i64 0, i32 2, i64 %597, i32 2
  br label %610

610:                                              ; preds = %752, %606
  %611 = phi i32 [ 0, %606 ], [ %651, %752 ]
  %612 = phi i32 [ 0, %606 ], [ %755, %752 ]
  %613 = phi i64 [ %607, %606 ], [ %754, %752 ]
  %614 = phi i32 [ %585, %606 ], [ %654, %752 ]
  %615 = phi i32 [ 0, %606 ], [ %753, %752 ]
  %616 = icmp eq i64 %613, 0
  br i1 %616, label %617, label %624

617:                                              ; preds = %610
  %618 = add i32 %611, 1
  %619 = call i32 @llvm.umax.i32(i32 %602, i32 %618)
  %620 = add i32 %611, 1
  %621 = icmp ult i32 %620, %602
  br i1 %621, label %634, label %649

622:                                              ; preds = %634
  %623 = shl i32 %635, 6
  br label %624

624:                                              ; preds = %622, %610
  %625 = phi i32 [ %611, %610 ], [ %635, %622 ]
  %626 = phi i32 [ %612, %610 ], [ %623, %622 ]
  %627 = phi i64 [ %613, %610 ], [ %638, %622 ]
  %628 = phi i1 [ %616, %610 ], [ %639, %622 ]
  %629 = and i64 %627, 1
  %630 = icmp eq i64 %629, 0
  br i1 %630, label %640, label %649

631:                                              ; preds = %634
  %632 = add i32 %635, 1
  %633 = icmp ult i32 %632, %602
  br i1 %633, label %634, label %647, !llvm.loop !217

634:                                              ; preds = %617, %631
  %635 = phi i32 [ %632, %631 ], [ %620, %617 ]
  %636 = zext i32 %635 to i64
  %637 = getelementptr inbounds i64, ptr %385, i64 %636
  %638 = load i64, ptr %637, align 8, !tbaa !131
  %639 = icmp eq i64 %638, 0
  br i1 %639, label %631, label %622, !llvm.loop !217

640:                                              ; preds = %624, %640
  %641 = phi i64 [ %644, %640 ], [ %627, %624 ]
  %642 = phi i32 [ %643, %640 ], [ %626, %624 ]
  %643 = add i32 %642, 1
  %644 = lshr exact i64 %641, 1
  %645 = and i64 %641, 2
  %646 = icmp eq i64 %645, 0
  br i1 %646, label %640, label %649, !llvm.loop !218

647:                                              ; preds = %631
  %648 = shl i32 %635, 6
  br label %649

649:                                              ; preds = %640, %647, %617, %624
  %650 = phi i1 [ %628, %624 ], [ %616, %617 ], [ %639, %647 ], [ %628, %640 ]
  %651 = phi i32 [ %625, %624 ], [ %619, %617 ], [ %619, %647 ], [ %625, %640 ]
  %652 = phi i32 [ %626, %624 ], [ %612, %617 ], [ %648, %647 ], [ %643, %640 ]
  %653 = phi i64 [ %627, %624 ], [ %613, %617 ], [ %638, %647 ], [ %644, %640 ]
  %654 = phi i32 [ %626, %624 ], [ %614, %617 ], [ %614, %647 ], [ %643, %640 ]
  br i1 %650, label %756, label %655

655:                                              ; preds = %649
  %656 = load ptr, ptr %3, align 8, !tbaa !92
  %657 = zext i32 %654 to i64
  %658 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %656, i64 0, i32 2, i64 %657
  %659 = load ptr, ptr %658, align 8, !tbaa !92
  %660 = getelementptr inbounds %struct.operand_entry, ptr %659, i64 0, i32 1
  %661 = load ptr, ptr %660, align 8, !tbaa !115
  %662 = load i64, ptr %661, align 8
  %663 = and i64 %662, 65535
  %664 = icmp eq i64 %663, 141
  br i1 %664, label %665, label %752

665:                                              ; preds = %655
  %666 = getelementptr inbounds %struct.tree_ssa_name, ptr %661, i64 0, i32 2
  %667 = load ptr, ptr %666, align 8, !tbaa !103
  %668 = load i32, ptr %667, align 8
  %669 = trunc i32 %668 to i8
  switch i8 %669, label %672 [
    i8 6, label %670
    i8 1, label %670
    i8 8, label %673
  ]

670:                                              ; preds = %665, %665
  %671 = lshr i32 %668, 16
  br label %673

672:                                              ; preds = %665
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.4) #22
  br label %673

673:                                              ; preds = %672, %670, %665
  %674 = phi i32 [ %671, %670 ], [ 0, %672 ], [ 59, %665 ]
  %675 = zext nneg i32 %674 to i64
  %676 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %675
  %677 = load i8, ptr %676, align 1, !tbaa !103
  %678 = icmp eq i8 %677, 3
  br i1 %678, label %679, label %699

679:                                              ; preds = %673
  %680 = load i32, ptr %667, align 8
  %681 = and i32 %680, 255
  %682 = add nsw i32 %681, -1
  %683 = icmp ult i32 %682, 9
  call void @llvm.assume(i1 %683)
  %684 = zext nneg i32 %681 to i64
  %685 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %684
  %686 = load i32, ptr %685, align 4, !tbaa !107
  %687 = zext i32 %686 to i64
  %688 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %687
  %689 = load i64, ptr %688, align 8, !tbaa !131
  %690 = icmp eq i64 %689, 0
  br i1 %690, label %691, label %692

691:                                              ; preds = %679
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %692

692:                                              ; preds = %691, %679
  %693 = getelementptr inbounds i8, ptr %667, i64 %689
  %694 = getelementptr inbounds ptr, ptr %693, i64 1
  %695 = load ptr, ptr %694, align 8, !tbaa !92
  %696 = load i64, ptr %695, align 8
  %697 = trunc i64 %696 to i32
  %698 = and i32 %697, 65535
  br label %699

699:                                              ; preds = %692, %673
  %700 = phi i32 [ %698, %692 ], [ %674, %673 ]
  %701 = load i32, ptr %608, align 4, !tbaa !228
  %702 = icmp eq i32 %700, %701
  br i1 %702, label %703, label %752

703:                                              ; preds = %699
  %704 = getelementptr inbounds ptr, ptr %382, i64 %657
  %705 = load ptr, ptr %704, align 8, !tbaa !92
  %706 = icmp eq ptr %705, null
  br label %707

707:                                              ; preds = %719, %703
  %708 = phi i32 [ %724, %719 ], [ 0, %703 ]
  br i1 %706, label %716, label %709

709:                                              ; preds = %707
  %710 = load i32, ptr %705, align 8, !tbaa !111
  %711 = icmp ugt i32 %710, %708
  br i1 %711, label %712, label %716

712:                                              ; preds = %709
  %713 = zext i32 %708 to i64
  %714 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %705, i64 0, i32 2, i64 %713
  %715 = load ptr, ptr %714, align 8, !tbaa !92
  br label %716

716:                                              ; preds = %712, %709, %707
  %717 = phi ptr [ %715, %712 ], [ null, %709 ], [ null, %707 ]
  %718 = phi i1 [ false, %712 ], [ true, %709 ], [ true, %707 ]
  br i1 %718, label %752, label %719

719:                                              ; preds = %716
  %720 = getelementptr inbounds %struct.operand_entry, ptr %717, i64 0, i32 1
  %721 = load ptr, ptr %720, align 8, !tbaa !115
  %722 = load ptr, ptr %609, align 8, !tbaa !229
  %723 = icmp eq ptr %721, %722
  %724 = add i32 %708, 1
  br i1 %723, label %725, label %707, !llvm.loop !231

725:                                              ; preds = %719
  %726 = load ptr, ptr %583, align 8, !tbaa !212
  %727 = icmp eq ptr %726, null
  br i1 %727, label %742, label %728

728:                                              ; preds = %725
  %729 = lshr i32 %654, 6
  %730 = zext nneg i32 %729 to i64
  %731 = getelementptr inbounds %struct.simple_bitmap_def, ptr %583, i64 0, i32 3, i64 %730
  %732 = load i64, ptr %731, align 8, !tbaa !131
  %733 = and i32 %654, 63
  %734 = zext nneg i32 %733 to i64
  %735 = shl nuw i64 1, %734
  %736 = and i64 %732, %735
  %737 = icmp eq i64 %736, 0
  br i1 %737, label %738, label %742

738:                                              ; preds = %728
  %739 = getelementptr inbounds i8, ptr %726, i64 %730
  %740 = load i8, ptr %739, align 1, !tbaa !103
  %741 = add i8 %740, 1
  store i8 %741, ptr %739, align 1, !tbaa !103
  br label %742

742:                                              ; preds = %738, %728, %725
  %743 = and i32 %654, 63
  %744 = zext nneg i32 %743 to i64
  %745 = shl nuw i64 1, %744
  %746 = lshr i32 %654, 6
  %747 = zext nneg i32 %746 to i64
  %748 = getelementptr inbounds %struct.simple_bitmap_def, ptr %583, i64 0, i32 3, i64 %747
  %749 = load i64, ptr %748, align 8, !tbaa !131
  %750 = or i64 %749, %745
  store i64 %750, ptr %748, align 8, !tbaa !131
  %751 = add i32 %615, 1
  br label %752

752:                                              ; preds = %716, %742, %699, %655
  %753 = phi i32 [ %615, %655 ], [ %615, %699 ], [ %751, %742 ], [ %615, %716 ]
  %754 = lshr i64 %653, 1
  %755 = add i32 %652, 1
  br label %610, !llvm.loop !232

756:                                              ; preds = %649
  %757 = icmp ugt i32 %615, 1
  br i1 %757, label %758, label %923

758:                                              ; preds = %756
  %759 = getelementptr inbounds %struct.simple_bitmap_def, ptr %583, i64 0, i32 3
  %760 = call i32 @sbitmap_first_set_bit(ptr noundef %583) #22
  %761 = load ptr, ptr %3, align 8, !tbaa !92
  %762 = zext i32 %760 to i64
  %763 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %761, i64 0, i32 2, i64 %762
  %764 = load ptr, ptr %763, align 8, !tbaa !92
  %765 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %766 = icmp eq ptr %765, null
  br i1 %766, label %776, label %767

767:                                              ; preds = %758
  %768 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %769 = and i32 %768, 8
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %776, label %771

771:                                              ; preds = %767
  %772 = call i64 @fwrite(ptr nonnull @.str.39, i64 10, i64 1, ptr nonnull %765)
  %773 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %774 = getelementptr inbounds %struct.operand_entry, ptr %764, i64 0, i32 1
  %775 = load ptr, ptr %774, align 8, !tbaa !115
  call void @print_generic_expr(ptr noundef %773, ptr noundef %775, i32 noundef 0) #22
  br label %776

776:                                              ; preds = %771, %767, %758
  %777 = getelementptr inbounds %struct.simple_bitmap_def, ptr %583, i64 0, i32 2
  %778 = getelementptr inbounds %struct.operand_entry, ptr %764, i64 0, i32 1
  %779 = load ptr, ptr %778, align 8, !tbaa !115
  %780 = getelementptr inbounds %struct.tree_common, ptr %779, i64 0, i32 2
  %781 = load ptr, ptr %780, align 8, !tbaa !103
  %782 = call ptr @create_tmp_var(ptr noundef %781, ptr noundef null) #22
  %783 = call zeroext i8 @add_referenced_var(ptr noundef %782) #22
  %784 = getelementptr inbounds %struct.VEC_oecount_base, ptr %587, i64 0, i32 2, i64 %597, i32 1
  %785 = load i32, ptr %784, align 4, !tbaa !228
  %786 = getelementptr inbounds %struct.VEC_oecount_base, ptr %587, i64 0, i32 2, i64 %597, i32 2
  %787 = load ptr, ptr %786, align 8, !tbaa !229
  call fastcc void @zero_one_operation(ptr noundef nonnull %778, i32 noundef %785, ptr noundef %787)
  %788 = add nsw i32 %760, 1
  %789 = lshr i32 %788, 6
  %790 = load i32, ptr %777, align 4, !tbaa !216
  %791 = icmp ult i32 %789, %790
  br i1 %791, label %792, label %799

792:                                              ; preds = %776
  %793 = zext nneg i32 %789 to i64
  %794 = getelementptr inbounds i64, ptr %759, i64 %793
  %795 = load i64, ptr %794, align 8, !tbaa !131
  %796 = and i32 %788, 63
  %797 = zext nneg i32 %796 to i64
  %798 = lshr i64 %795, %797
  br label %799

799:                                              ; preds = %792, %776
  %800 = phi i64 [ 0, %776 ], [ %798, %792 ]
  br label %801

801:                                              ; preds = %799, %861
  %802 = phi i32 [ %841, %861 ], [ %789, %799 ]
  %803 = phi i32 [ %875, %861 ], [ %788, %799 ]
  %804 = phi i64 [ %874, %861 ], [ %800, %799 ]
  %805 = phi i32 [ %844, %861 ], [ %654, %799 ]
  %806 = icmp eq i64 %804, 0
  br i1 %806, label %807, label %814

807:                                              ; preds = %801
  %808 = add i32 %802, 1
  %809 = call i32 @llvm.umax.i32(i32 %790, i32 %808)
  %810 = add i32 %802, 1
  %811 = icmp ult i32 %810, %790
  br i1 %811, label %824, label %839

812:                                              ; preds = %824
  %813 = shl i32 %825, 6
  br label %814

814:                                              ; preds = %812, %801
  %815 = phi i32 [ %802, %801 ], [ %825, %812 ]
  %816 = phi i32 [ %803, %801 ], [ %813, %812 ]
  %817 = phi i64 [ %804, %801 ], [ %828, %812 ]
  %818 = phi i1 [ %806, %801 ], [ %829, %812 ]
  %819 = and i64 %817, 1
  %820 = icmp eq i64 %819, 0
  br i1 %820, label %830, label %839

821:                                              ; preds = %824
  %822 = add i32 %825, 1
  %823 = icmp ult i32 %822, %790
  br i1 %823, label %824, label %837, !llvm.loop !217

824:                                              ; preds = %807, %821
  %825 = phi i32 [ %822, %821 ], [ %810, %807 ]
  %826 = zext i32 %825 to i64
  %827 = getelementptr inbounds i64, ptr %759, i64 %826
  %828 = load i64, ptr %827, align 8, !tbaa !131
  %829 = icmp eq i64 %828, 0
  br i1 %829, label %821, label %812, !llvm.loop !217

830:                                              ; preds = %814, %830
  %831 = phi i64 [ %834, %830 ], [ %817, %814 ]
  %832 = phi i32 [ %833, %830 ], [ %816, %814 ]
  %833 = add i32 %832, 1
  %834 = lshr exact i64 %831, 1
  %835 = and i64 %831, 2
  %836 = icmp eq i64 %835, 0
  br i1 %836, label %830, label %839, !llvm.loop !218

837:                                              ; preds = %821
  %838 = shl i32 %825, 6
  br label %839

839:                                              ; preds = %830, %837, %807, %814
  %840 = phi i1 [ %818, %814 ], [ %806, %807 ], [ %829, %837 ], [ %818, %830 ]
  %841 = phi i32 [ %815, %814 ], [ %809, %807 ], [ %809, %837 ], [ %815, %830 ]
  %842 = phi i32 [ %816, %814 ], [ %803, %807 ], [ %838, %837 ], [ %833, %830 ]
  %843 = phi i64 [ %817, %814 ], [ %804, %807 ], [ %828, %837 ], [ %834, %830 ]
  %844 = phi i32 [ %816, %814 ], [ %805, %807 ], [ %805, %837 ], [ %833, %830 ]
  br i1 %840, label %876, label %845

845:                                              ; preds = %839
  %846 = load ptr, ptr %3, align 8, !tbaa !92
  %847 = zext i32 %844 to i64
  %848 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %846, i64 0, i32 2, i64 %847
  %849 = load ptr, ptr %848, align 8, !tbaa !92
  %850 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %851 = icmp eq ptr %850, null
  br i1 %851, label %861, label %852

852:                                              ; preds = %845
  %853 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %854 = and i32 %853, 8
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %861, label %856

856:                                              ; preds = %852
  %857 = call i64 @fwrite(ptr nonnull @.str.40, i64 3, i64 1, ptr nonnull %850)
  %858 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %859 = getelementptr inbounds %struct.operand_entry, ptr %849, i64 0, i32 1
  %860 = load ptr, ptr %859, align 8, !tbaa !115
  call void @print_generic_expr(ptr noundef %858, ptr noundef %860, i32 noundef 0) #22
  br label %861

861:                                              ; preds = %856, %852, %845
  %862 = getelementptr inbounds %struct.operand_entry, ptr %849, i64 0, i32 1
  %863 = load i32, ptr %784, align 4, !tbaa !228
  %864 = load ptr, ptr %786, align 8, !tbaa !229
  call fastcc void @zero_one_operation(ptr noundef nonnull %862, i32 noundef %863, ptr noundef %864)
  %865 = load ptr, ptr %778, align 8, !tbaa !115
  %866 = load ptr, ptr %862, align 8, !tbaa !115
  %867 = call fastcc ptr @build_and_add_sum(ptr noundef %782, ptr noundef %865, ptr noundef %866, i32 noundef 63)
  %868 = load ptr, ptr %862, align 8, !tbaa !115
  %869 = getelementptr inbounds %struct.tree_common, ptr %868, i64 0, i32 2
  %870 = load ptr, ptr %869, align 8, !tbaa !103
  %871 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !92
  %872 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %870, ptr noundef %871) #22
  store ptr %872, ptr %862, align 8, !tbaa !115
  store i32 0, ptr %849, align 8, !tbaa !113
  %873 = call ptr @gimple_get_lhs(ptr noundef %867) #22
  store ptr %873, ptr %778, align 8, !tbaa !115
  %874 = lshr i64 %843, 1
  %875 = add i32 %842, 1
  br label %801, !llvm.loop !233

876:                                              ; preds = %839
  %877 = load ptr, ptr %778, align 8, !tbaa !115
  %878 = load ptr, ptr %786, align 8, !tbaa !229
  %879 = load i32, ptr %784, align 4, !tbaa !228
  %880 = call fastcc ptr @build_and_add_sum(ptr noundef %782, ptr noundef %877, ptr noundef %878, i32 noundef %879)
  %881 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %882 = icmp eq ptr %881, null
  br i1 %882, label %896, label %883

883:                                              ; preds = %876
  %884 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %885 = and i32 %884, 8
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %896, label %887

887:                                              ; preds = %883
  %888 = load i32, ptr %784, align 4, !tbaa !228
  %889 = icmp eq i32 %888, 65
  %890 = select i1 %889, ptr @.str.36, ptr @.str.37
  %891 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %881, ptr noundef nonnull @.str.41, ptr noundef nonnull %890)
  %892 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %893 = load ptr, ptr %786, align 8, !tbaa !229
  call void @print_generic_expr(ptr noundef %892, ptr noundef %893, i32 noundef 0) #22
  %894 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %895 = call i32 @fputc(i32 10, ptr %894)
  br label %896

896:                                              ; preds = %887, %883, %876
  %897 = load i32, ptr %880, align 8
  %898 = and i32 %897, 255
  %899 = add nsw i32 %898, -10
  %900 = icmp ult i32 %899, -9
  br i1 %900, label %913, label %901

901:                                              ; preds = %896
  %902 = zext nneg i32 %898 to i64
  %903 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %902
  %904 = load i32, ptr %903, align 4, !tbaa !107
  %905 = zext i32 %904 to i64
  %906 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %905
  %907 = load i64, ptr %906, align 8, !tbaa !131
  %908 = icmp eq i64 %907, 0
  br i1 %908, label %909, label %910

909:                                              ; preds = %901
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %910

910:                                              ; preds = %909, %901
  %911 = getelementptr inbounds i8, ptr %880, i64 %907
  %912 = load ptr, ptr %911, align 8, !tbaa !92
  br label %913

913:                                              ; preds = %910, %896
  %914 = phi ptr [ %912, %910 ], [ null, %896 ]
  store ptr %914, ptr %778, align 8, !tbaa !115
  %915 = call fastcc i64 @get_rank(ptr noundef %914)
  %916 = trunc i64 %915 to i32
  store i32 %916, ptr %764, align 8, !tbaa !113
  %917 = sext i32 %760 to i64
  %918 = getelementptr inbounds ptr, ptr %382, i64 %917
  %919 = load ptr, ptr %918, align 8, !tbaa !92
  %920 = icmp eq ptr %919, null
  br i1 %920, label %922, label %921

921:                                              ; preds = %913
  call void @free(ptr noundef %919)
  br label %922

922:                                              ; preds = %921, %913
  store ptr null, ptr %918, align 8, !tbaa !92
  br label %923

923:                                              ; preds = %922, %756
  %924 = phi i32 [ %844, %922 ], [ %654, %756 ]
  %925 = phi i8 [ 1, %922 ], [ %586, %756 ]
  %926 = load ptr, ptr @cvec, align 8
  %927 = load i32, ptr %926, align 8, !tbaa !221
  %928 = add i32 %927, -1
  store i32 %928, ptr %926, align 8, !tbaa !221
  br label %929

929:                                              ; preds = %923, %594
  %930 = phi i32 [ %585, %594 ], [ %924, %923 ]
  %931 = phi i8 [ %586, %594 ], [ %925, %923 ]
  br i1 %600, label %584, label %932

932:                                              ; preds = %929, %591
  %933 = phi i8 [ %586, %591 ], [ %931, %929 ]
  br label %934

934:                                              ; preds = %949, %932
  %935 = phi i64 [ %950, %949 ], [ 0, %932 ]
  %936 = load ptr, ptr %3, align 8, !tbaa !92
  %937 = icmp eq ptr %936, null
  br i1 %937, label %940, label %938

938:                                              ; preds = %934
  %939 = load i32, ptr %936, align 8, !tbaa !111
  br label %940

940:                                              ; preds = %938, %934
  %941 = phi i32 [ %939, %938 ], [ 0, %934 ]
  %942 = zext i32 %941 to i64
  %943 = icmp ult i64 %935, %942
  br i1 %943, label %944, label %951

944:                                              ; preds = %940
  %945 = getelementptr inbounds ptr, ptr %382, i64 %935
  %946 = load ptr, ptr %945, align 8, !tbaa !92
  %947 = icmp eq ptr %946, null
  br i1 %947, label %949, label %948

948:                                              ; preds = %944
  call void @free(ptr noundef %946)
  br label %949

949:                                              ; preds = %948, %944
  store ptr null, ptr %945, align 8, !tbaa !92
  %950 = add nuw nsw i64 %935, 1
  br label %934, !llvm.loop !234

951:                                              ; preds = %940
  call void @free(ptr noundef %382)
  %952 = load ptr, ptr @cvec, align 8, !tbaa !92
  %953 = icmp eq ptr %952, null
  br i1 %953, label %955, label %954

954:                                              ; preds = %951
  call void @free(ptr noundef %952)
  br label %955

955:                                              ; preds = %954, %951
  store ptr null, ptr @cvec, align 8, !tbaa !92
  %956 = load ptr, ptr %266, align 8, !tbaa !212
  call void @free(ptr noundef %956)
  call void @free(ptr noundef %266)
  br label %957

957:                                              ; preds = %352, %955
  %958 = phi ptr [ %583, %955 ], [ %266, %352 ]
  %959 = phi i8 [ %933, %955 ], [ 0, %352 ]
  %960 = load ptr, ptr %958, align 8, !tbaa !212
  call void @free(ptr noundef %960)
  call void @free(ptr noundef %958)
  br label %961

961:                                              ; preds = %957, %260
  %962 = phi i8 [ 0, %260 ], [ %959, %957 ]
  %963 = icmp eq i8 %962, 0
  br i1 %963, label %974, label %964, !prof !200

964:                                              ; preds = %961
  %965 = load ptr, ptr %3, align 8
  %966 = icmp eq ptr %965, null
  %967 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %965, i64 0, i32 2
  %968 = select i1 %966, ptr null, ptr %967
  br i1 %966, label %971, label %969

969:                                              ; preds = %964
  %970 = load i32, ptr %965, align 8, !tbaa !111
  br label %971

971:                                              ; preds = %964, %969
  %972 = phi i32 [ %970, %969 ], [ 0, %964 ]
  %973 = zext i32 %972 to i64
  call void @spec_qsort(ptr noundef %968, i64 noundef %973, i64 noundef 8, ptr noundef nonnull @sort_by_operand_rank) #22
  call fastcc void @optimize_ops_list(i32 noundef %54, ptr noundef nonnull %3)
  br label %974

974:                                              ; preds = %971, %961
  %975 = load ptr, ptr %3, align 8
  %976 = icmp eq ptr %975, null
  br i1 %976, label %979, label %977, !prof !202

977:                                              ; preds = %974
  %978 = load i32, ptr %975, align 8, !tbaa !111
  br label %979

979:                                              ; preds = %974, %977
  %980 = phi i32 [ %978, %977 ], [ 0, %974 ]
  %981 = icmp eq i32 %980, 1
  br i1 %981, label %982, label %1035, !prof !202

982:                                              ; preds = %979
  %983 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %984 = icmp eq ptr %983, null
  br i1 %984, label %992, label %985

985:                                              ; preds = %982
  %986 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %987 = and i32 %986, 8
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %992, label %989

989:                                              ; preds = %985
  %990 = call i64 @fwrite(ptr nonnull @.str.7, i64 13, i64 1, ptr nonnull %983)
  %991 = load ptr, ptr @dump_file, align 8, !tbaa !92
  call void @print_gimple_stmt(ptr noundef %991, ptr noundef nonnull %27, i32 noundef 0, i32 noundef 0) #22
  br label %992

992:                                              ; preds = %989, %985, %982
  %993 = load i32, ptr %27, align 8
  %994 = and i32 %993, 255
  %995 = add nsw i32 %994, -10
  %996 = icmp ult i32 %995, -9
  br i1 %996, label %1010, label %997

997:                                              ; preds = %992
  %998 = zext nneg i32 %994 to i64
  %999 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %998
  %1000 = load i32, ptr %999, align 4, !tbaa !107
  %1001 = zext i32 %1000 to i64
  %1002 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1001
  %1003 = load i64, ptr %1002, align 8, !tbaa !131
  %1004 = icmp eq i64 %1003, 0
  br i1 %1004, label %1005, label %1006

1005:                                             ; preds = %997
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %1006

1006:                                             ; preds = %1005, %997
  %1007 = getelementptr inbounds i8, ptr %27, i64 %1003
  %1008 = getelementptr inbounds ptr, ptr %1007, i64 1
  %1009 = load ptr, ptr %1008, align 8, !tbaa !92
  br label %1010

1010:                                             ; preds = %992, %1006
  %1011 = phi ptr [ %1009, %1006 ], [ null, %992 ]
  %1012 = load ptr, ptr %3, align 8
  %1013 = load i32, ptr %1012, align 8, !tbaa !111
  %1014 = add i32 %1013, -1
  %1015 = zext i32 %1014 to i64
  %1016 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %1012, i64 0, i32 2, i64 %1015
  %1017 = load ptr, ptr %1016, align 8, !tbaa !92
  %1018 = getelementptr inbounds %struct.operand_entry, ptr %1017, i64 0, i32 1
  %1019 = load ptr, ptr %1018, align 8, !tbaa !115
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %2, ptr noundef %1019) #22
  %1020 = load i32, ptr %27, align 8
  %1021 = and i32 %1020, 255
  %1022 = add nsw i32 %1021, -10
  %1023 = icmp ult i32 %1022, -9
  br i1 %1023, label %1025, label %1024

1024:                                             ; preds = %1010
  call void @gimple_set_modified(ptr noundef nonnull %27, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %27) #22
  br label %1025

1025:                                             ; preds = %1010, %1024
  call fastcc void @remove_visited_stmt_chain(ptr noundef %1011)
  %1026 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1027 = icmp eq ptr %1026, null
  br i1 %1027, label %1036, label %1028

1028:                                             ; preds = %1025
  %1029 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %1030 = and i32 %1029, 8
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1036, label %1032

1032:                                             ; preds = %1028
  %1033 = call i64 @fwrite(ptr nonnull @.str.8, i64 6, i64 1, ptr nonnull %1026)
  %1034 = load ptr, ptr @dump_file, align 8, !tbaa !92
  call void @print_gimple_stmt(ptr noundef %1034, ptr noundef nonnull %27, i32 noundef 0, i32 noundef 0) #22
  br label %1036

1035:                                             ; preds = %979
  call fastcc void @rewrite_expr_tree(ptr noundef nonnull %27, i32 noundef 0, ptr noundef %975, i8 noundef zeroext 0)
  br label %1036

1036:                                             ; preds = %1025, %1028, %1032, %1035
  %1037 = load ptr, ptr %3, align 8, !tbaa !92
  %1038 = icmp eq ptr %1037, null
  br i1 %1038, label %1040, label %1039, !prof !202

1039:                                             ; preds = %1036
  call void @free(ptr noundef %1037)
  br label %1040

1040:                                             ; preds = %1036, %1039
  store ptr null, ptr %3, align 8, !tbaa !92
  br label %1041

1041:                                             ; preds = %233, %1040
  %1042 = phi i1 [ true, %1040 ], [ false, %233 ]
  %1043 = phi i32 [ 0, %1040 ], [ 4, %233 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br i1 %1042, label %1044, label %1045, !prof !201

1044:                                             ; preds = %1041, %216
  br label %1045

1045:                                             ; preds = %1041, %210, %201, %204, %96, %53, %1044, %99
  %1046 = phi i32 [ 4, %99 ], [ 0, %1044 ], [ 4, %53 ], [ 2, %96 ], [ 4, %204 ], [ 4, %201 ], [ 4, %210 ], [ %1043, %1041 ]
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1048, label %1049, !prof !235

1048:                                             ; preds = %1045, %25
  br label %1049

1049:                                             ; preds = %1045, %1048
  %1050 = phi i32 [ 0, %1048 ], [ %1046, %1045 ]
  %1051 = icmp eq i32 %1050, 2
  br i1 %1051, label %1057, label %1052, !prof !236

1052:                                             ; preds = %1049
  %1053 = load ptr, ptr %2, align 8, !tbaa !171
  %1054 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1053, i64 0, i32 1
  %1055 = load ptr, ptr %1054, align 8, !tbaa !237
  store ptr %1055, ptr %2, align 8, !tbaa !171
  %1056 = icmp eq ptr %1055, null
  br i1 %1056, label %1057, label %25, !prof !174, !llvm.loop !238

1057:                                             ; preds = %1052, %1049, %20
  %1058 = call ptr @first_dom_son(i32 noundef 2, ptr noundef %0) #22
  %1059 = icmp eq ptr %1058, null
  br i1 %1059, label %1064, label %1060, !prof !152

1060:                                             ; preds = %1057, %1060
  %1061 = phi ptr [ %1062, %1060 ], [ %1058, %1057 ]
  call fastcc void @reassociate_bb(ptr noundef nonnull %1061)
  %1062 = call ptr @next_dom_son(i32 noundef 2, ptr noundef nonnull %1061) #22
  %1063 = icmp eq ptr %1062, null
  br i1 %1063, label %1064, label %1060, !prof !176, !llvm.loop !239

1064:                                             ; preds = %1060, %1057
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @is_reassociable_op(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #11 !prof !240 !PGOFuncName !241 {
  %4 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = icmp eq ptr %5, null
  br i1 %6, label %79, label %7, !prof !242

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %2, ptr noundef nonnull %5) #22
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %79, label %10, !prof !242

10:                                               ; preds = %7
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %78, !prof !243

14:                                               ; preds = %10
  %15 = lshr i32 %11, 16
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !103
  %19 = icmp eq i8 %18, 3
  br i1 %19, label %20, label %36, !prof !244

20:                                               ; preds = %14
  %21 = zext nneg i32 %12 to i64
  %22 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !107
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !131
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29, !prof !245

28:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %29

29:                                               ; preds = %28, %20
  %30 = getelementptr inbounds i8, ptr %0, i64 %26
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !92
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 65535
  br label %36

36:                                               ; preds = %14, %29
  %37 = phi i32 [ %35, %29 ], [ %15, %14 ]
  %38 = icmp eq i32 %37, %1
  br i1 %38, label %39, label %78, !prof !246

39:                                               ; preds = %36
  %40 = load i32, ptr %0, align 8
  %41 = and i32 %40, 255
  %42 = add nsw i32 %41, -1
  %43 = icmp ult i32 %42, 9
  tail call void @llvm.assume(i1 %43)
  %44 = zext nneg i32 %41 to i64
  %45 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !107
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !131
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52, !prof !187

51:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %52

52:                                               ; preds = %51, %39
  %53 = getelementptr inbounds i8, ptr %0, i64 %49
  %54 = load ptr, ptr %53, align 8, !tbaa !92
  %55 = getelementptr inbounds %struct.tree_ssa_name, ptr %54, i64 0, i32 5
  %56 = getelementptr inbounds %struct.tree_ssa_name, ptr %54, i64 0, i32 5, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !185
  %58 = icmp eq ptr %55, %57
  br i1 %58, label %75, label %59, !prof !187

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %57, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !185
  %62 = icmp eq ptr %55, %61
  br i1 %62, label %63, label %70, !prof !188

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %57, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !103
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 255
  %68 = icmp ne i32 %67, 2
  %69 = zext i1 %68 to i8
  br label %75

70:                                               ; preds = %59
  %71 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !107
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %55, ptr noundef null, ptr noundef null) #22
  br label %75

75:                                               ; preds = %52, %63, %70, %73
  %76 = phi i8 [ %69, %63 ], [ %74, %73 ], [ 0, %52 ], [ 0, %70 ]
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %79, !prof !187

78:                                               ; preds = %75, %36, %10
  br label %79

79:                                               ; preds = %75, %7, %3, %78
  %80 = phi i8 [ 0, %78 ], [ 0, %3 ], [ 0, %7 ], [ 1, %75 ]
  ret i8 %80
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_single_immediate_use(ptr noundef %0) unnamed_addr #9 !prof !247 !PGOFuncName !248 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %36, !prof !168

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !185
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %12, label %13, !prof !167

12:                                               ; preds = %24, %17, %7
  store ptr null, ptr %2, align 8, !tbaa !92
  store ptr null, ptr %3, align 8, !tbaa !92
  br label %36

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !185
  %16 = icmp eq ptr %8, %15
  br i1 %16, label %17, label %24, !prof !168

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %10, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !103
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %12, label %23, !prof !167

23:                                               ; preds = %17
  store ptr %10, ptr %2, align 8, !tbaa !92
  store ptr %19, ptr %3, align 8, !tbaa !92
  br label %30

24:                                               ; preds = %13
  %25 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !107
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %12, label %27

27:                                               ; preds = %24
  %28 = call zeroext i8 @single_imm_use_1(ptr noundef nonnull %8, ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %36, label %30, !prof !167

30:                                               ; preds = %23, %27
  %31 = load ptr, ptr %3, align 8
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 6
  %35 = select i1 %34, ptr %31, ptr null, !prof !167
  br label %36

36:                                               ; preds = %12, %30, %1, %27
  %37 = phi ptr [ null, %27 ], [ null, %1 ], [ %35, %30 ], [ null, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret ptr %37
}

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @negate_value(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !91 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !103
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  br i1 %7, label %13, label %219

13:                                               ; preds = %11
  %14 = load i32, ptr %12, align 8
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %219

17:                                               ; preds = %13
  %18 = zext nneg i32 %15 to i64
  %19 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !107
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !131
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %26

26:                                               ; preds = %25, %17
  %27 = getelementptr inbounds i8, ptr %12, i64 %23
  %28 = load ptr, ptr %27, align 8, !tbaa !92
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  br i1 %31, label %32, label %219

32:                                               ; preds = %26
  %33 = load i32, ptr %12, align 8
  %34 = and i32 %33, 255
  %35 = add nsw i32 %34, -1
  %36 = icmp ult i32 %35, 9
  tail call void @llvm.assume(i1 %36)
  %37 = zext nneg i32 %34 to i64
  %38 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !107
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !131
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %45

45:                                               ; preds = %44, %32
  %46 = getelementptr inbounds i8, ptr %12, i64 %42
  %47 = load ptr, ptr %46, align 8, !tbaa !92
  %48 = getelementptr inbounds %struct.tree_ssa_name, ptr %47, i64 0, i32 5
  %49 = getelementptr inbounds %struct.tree_ssa_name, ptr %47, i64 0, i32 5, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !185
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %68, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !185
  %55 = icmp eq ptr %48, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !103
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 255
  %61 = icmp ne i32 %60, 2
  %62 = zext i1 %61 to i8
  br label %68

63:                                               ; preds = %52
  %64 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !107
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %48, ptr noundef null, ptr noundef null) #22
  br label %68

68:                                               ; preds = %45, %56, %63, %66
  %69 = phi i8 [ %62, %56 ], [ %67, %66 ], [ 0, %45 ], [ 0, %63 ]
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %219, label %71

71:                                               ; preds = %68
  %72 = load i32, ptr %12, align 8
  %73 = trunc i32 %72 to i8
  switch i8 %73, label %76 [
    i8 6, label %74
    i8 1, label %74
    i8 8, label %77
  ]

74:                                               ; preds = %71, %71
  %75 = lshr i32 %72, 16
  br label %77

76:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.4) #22
  br label %77

77:                                               ; preds = %76, %74, %71
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ], [ 59, %71 ]
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !103
  %82 = icmp eq i8 %81, 3
  br i1 %82, label %83, label %103

83:                                               ; preds = %77
  %84 = load i32, ptr %12, align 8
  %85 = and i32 %84, 255
  %86 = add nsw i32 %85, -1
  %87 = icmp ult i32 %86, 9
  tail call void @llvm.assume(i1 %87)
  %88 = zext nneg i32 %85 to i64
  %89 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !107
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !131
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %96

96:                                               ; preds = %95, %83
  %97 = getelementptr inbounds i8, ptr %12, i64 %93
  %98 = getelementptr inbounds ptr, ptr %97, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !92
  %100 = load i64, ptr %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = and i32 %101, 65535
  br label %103

103:                                              ; preds = %77, %96
  %104 = phi i32 [ %102, %96 ], [ %78, %77 ]
  %105 = icmp eq i32 %104, 63
  br i1 %105, label %106, label %219

106:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %107 = load i32, ptr %12, align 8
  %108 = and i32 %107, 255
  %109 = add nsw i32 %108, -10
  %110 = icmp ult i32 %109, -9
  br i1 %110, label %124, label %111

111:                                              ; preds = %106
  %112 = zext nneg i32 %108 to i64
  %113 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !107
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !131
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %120

120:                                              ; preds = %119, %111
  %121 = getelementptr inbounds i8, ptr %12, i64 %117
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !92
  br label %124

124:                                              ; preds = %106, %120
  %125 = phi ptr [ %123, %120 ], [ null, %106 ]
  %126 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 3
  %127 = load i32, ptr %126, align 4, !tbaa !103
  %128 = icmp ugt i32 %127, 2
  br i1 %128, label %129, label %147

129:                                              ; preds = %124
  %130 = load i32, ptr %12, align 8
  %131 = and i32 %130, 255
  %132 = add nsw i32 %131, -10
  %133 = icmp ult i32 %132, -9
  br i1 %133, label %147, label %134

134:                                              ; preds = %129
  %135 = zext nneg i32 %131 to i64
  %136 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !107
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %138
  %140 = load i64, ptr %139, align 8, !tbaa !131
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %143

143:                                              ; preds = %142, %134
  %144 = getelementptr inbounds i8, ptr %12, i64 %140
  %145 = getelementptr inbounds ptr, ptr %144, i64 2
  %146 = load ptr, ptr %145, align 8, !tbaa !92
  br label %147

147:                                              ; preds = %124, %129, %143
  %148 = phi ptr [ null, %124 ], [ %146, %143 ], [ null, %129 ]
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %12) #22
  %149 = call fastcc ptr @negate_value(ptr noundef %125, ptr noundef nonnull %3)
  %150 = load i32, ptr %12, align 8
  %151 = and i32 %150, 255
  %152 = add nsw i32 %151, -10
  %153 = icmp ult i32 %152, -9
  br i1 %153, label %157, label %154

154:                                              ; preds = %147
  %155 = load i32, ptr %126, align 4, !tbaa !103
  %156 = icmp ugt i32 %155, 1
  br i1 %156, label %158, label %157

157:                                              ; preds = %154, %147
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1665, ptr noundef nonnull @.str.4) #22
  br label %158

158:                                              ; preds = %157, %154
  %159 = load i32, ptr %12, align 8
  %160 = and i32 %159, 255
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !107
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %164
  %166 = load i64, ptr %165, align 8, !tbaa !131
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %169

169:                                              ; preds = %158, %168
  %170 = getelementptr inbounds i8, ptr %12, i64 %166
  %171 = getelementptr inbounds ptr, ptr %170, i64 1
  store ptr %149, ptr %171, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %12) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !157
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  %172 = call fastcc ptr @negate_value(ptr noundef %148, ptr noundef nonnull %3)
  %173 = load i32, ptr %12, align 8
  %174 = and i32 %173, 255
  %175 = add nsw i32 %174, -10
  %176 = icmp ult i32 %175, -9
  br i1 %176, label %180, label %177

177:                                              ; preds = %169
  %178 = load i32, ptr %126, align 4, !tbaa !103
  %179 = icmp ugt i32 %178, 2
  br i1 %179, label %181, label %180

180:                                              ; preds = %177, %169
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1665, ptr noundef nonnull @.str.4) #22
  br label %181

181:                                              ; preds = %180, %177
  %182 = load i32, ptr %12, align 8
  %183 = and i32 %182, 255
  %184 = zext nneg i32 %183 to i64
  %185 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !107
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %187
  %189 = load i64, ptr %188, align 8, !tbaa !131
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %192

192:                                              ; preds = %181, %191
  %193 = getelementptr inbounds i8, ptr %12, i64 %189
  %194 = getelementptr inbounds ptr, ptr %193, i64 2
  store ptr %172, ptr %194, align 8, !tbaa !92
  %195 = load i32, ptr %12, align 8
  %196 = and i32 %195, 255
  %197 = add nsw i32 %196, -10
  %198 = icmp ult i32 %197, -9
  br i1 %198, label %200, label %199

199:                                              ; preds = %192
  call void @gimple_set_modified(ptr noundef nonnull %12, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %12) #22
  br label %200

200:                                              ; preds = %192, %199
  %201 = load i32, ptr %12, align 8
  %202 = and i32 %201, 255
  %203 = add nsw i32 %202, -10
  %204 = icmp ult i32 %203, -9
  br i1 %204, label %217, label %205

205:                                              ; preds = %200
  %206 = zext nneg i32 %202 to i64
  %207 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !107
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %209
  %211 = load i64, ptr %210, align 8, !tbaa !131
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %214

214:                                              ; preds = %213, %205
  %215 = getelementptr inbounds i8, ptr %12, i64 %211
  %216 = load ptr, ptr %215, align 8, !tbaa !92
  br label %217

217:                                              ; preds = %200, %214
  %218 = phi ptr [ %216, %214 ], [ null, %200 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  br label %239

219:                                              ; preds = %103, %68, %26, %13, %11
  %220 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !103
  %222 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %221, ptr noundef nonnull %0) #22
  %223 = tail call ptr @force_gimple_operand_gsi(ptr noundef %1, ptr noundef %222, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #22
  %224 = load ptr, ptr @broken_up_subtracts, align 8, !tbaa !92
  %225 = icmp eq ptr %224, null
  br i1 %225, label %231, label %226

226:                                              ; preds = %219
  %227 = getelementptr inbounds %struct.VEC_tree_base, ptr %224, i64 0, i32 1
  %228 = load i32, ptr %227, align 4, !tbaa !249
  %229 = load i32, ptr %224, align 8, !tbaa !136
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %219, %226
  %232 = tail call ptr @vec_heap_p_reserve(ptr noundef %224, i32 noundef 1) #22
  store ptr %232, ptr @broken_up_subtracts, align 8, !tbaa !92
  br label %233

233:                                              ; preds = %226, %231
  %234 = load ptr, ptr @broken_up_subtracts, align 8, !tbaa !92
  %235 = load i32, ptr %234, align 8, !tbaa !136
  %236 = add i32 %235, 1
  store i32 %236, ptr %234, align 8, !tbaa !136
  %237 = zext i32 %235 to i64
  %238 = getelementptr inbounds %struct.VEC_tree_base, ptr %234, i64 0, i32 2, i64 %237
  store ptr %223, ptr %238, align 8, !tbaa !92
  br label %239

239:                                              ; preds = %233, %217
  %240 = phi ptr [ %218, %217 ], [ %223, %233 ]
  ret ptr %240
}

declare void @gimple_assign_set_rhs_with_ops(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @release_defs(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @associative_tree_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @linearize_expr_tree(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #11 !prof !250 !PGOFuncName !251 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -10
  %8 = icmp ult i32 %7, -9
  br i1 %8, label %22, label %9, !prof !252

9:                                                ; preds = %4
  %10 = zext nneg i32 %6 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !107
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !131
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18, !prof !252

17:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr inbounds i8, ptr %1, i64 %15
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !92
  br label %22

22:                                               ; preds = %4, %18
  %23 = phi ptr [ %21, %18 ], [ null, %4 ]
  %24 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !103
  %26 = icmp ugt i32 %25, 2
  br i1 %26, label %27, label %45, !prof !253

27:                                               ; preds = %22
  %28 = load i32, ptr %1, align 8
  %29 = and i32 %28, 255
  %30 = add nsw i32 %29, -10
  %31 = icmp ult i32 %30, -9
  br i1 %31, label %45, label %32, !prof !252

32:                                               ; preds = %27
  %33 = zext nneg i32 %29 to i64
  %34 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !107
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !131
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41, !prof !252

40:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %41

41:                                               ; preds = %40, %32
  %42 = getelementptr inbounds i8, ptr %1, i64 %38
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !92
  br label %45

45:                                               ; preds = %22, %27, %41
  %46 = phi ptr [ null, %22 ], [ %44, %41 ], [ null, %27 ]
  %47 = load i32, ptr %1, align 8
  %48 = trunc i32 %47 to i8
  switch i8 %48, label %51 [
    i8 6, label %49
    i8 1, label %49
    i8 8, label %52
  ], !prof !254

49:                                               ; preds = %45, %45
  %50 = lshr i32 %47, 16
  br label %52

51:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.4) #22
  br label %52

52:                                               ; preds = %51, %49, %45
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ], [ 59, %45 ]
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !103
  %57 = icmp eq i8 %56, 3
  br i1 %57, label %58, label %78, !prof !252

58:                                               ; preds = %52
  %59 = load i32, ptr %1, align 8
  %60 = and i32 %59, 255
  %61 = add nsw i32 %60, -1
  %62 = icmp ult i32 %61, 9
  tail call void @llvm.assume(i1 %62)
  %63 = zext nneg i32 %60 to i64
  %64 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !107
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !131
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %71

71:                                               ; preds = %70, %58
  %72 = getelementptr inbounds i8, ptr %1, i64 %68
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !92
  %75 = load i64, ptr %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = and i32 %76, 65535
  br label %78

78:                                               ; preds = %52, %71
  %79 = phi i32 [ %77, %71 ], [ %53, %52 ]
  %80 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !103
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83, !prof !252

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !169
  br label %86

86:                                               ; preds = %78, %83
  %87 = phi ptr [ %85, %83 ], [ null, %78 ]
  %88 = icmp eq i8 %3, 0
  br i1 %88, label %92, label %89, !prof !252

89:                                               ; preds = %86
  %90 = load i32, ptr %1, align 8
  %91 = or i32 %90, 512
  store i32 %91, ptr %1, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i64, ptr %23, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 141
  br i1 %95, label %96, label %101, !prof !253

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.tree_ssa_name, ptr %23, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !103
  %99 = tail call fastcc zeroext i8 @is_reassociable_op(ptr noundef %98, i32 noundef %79, ptr noundef %87), !range !170
  %100 = icmp eq i8 %99, 0
  br label %101

101:                                              ; preds = %96, %92
  %102 = phi i1 [ %100, %96 ], [ true, %92 ]
  %103 = load i64, ptr %46, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 141
  br i1 %105, label %106, label %111, !prof !255

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !103
  %109 = tail call fastcc zeroext i8 @is_reassociable_op(ptr noundef %108, i32 noundef %79, ptr noundef %87), !range !170
  %110 = icmp eq i8 %109, 0
  br label %111

111:                                              ; preds = %106, %101
  %112 = phi i1 [ %110, %106 ], [ true, %101 ]
  br i1 %102, label %113, label %224, !prof !256

113:                                              ; preds = %111
  %114 = icmp eq i8 %2, 0
  br i1 %114, label %115, label %116, !prof !202

115:                                              ; preds = %113
  tail call fastcc void @add_to_ops_vec(ptr noundef %0, ptr noundef nonnull %46)
  br label %220

116:                                              ; preds = %113
  br i1 %112, label %117, label %158, !prof !200

117:                                              ; preds = %116
  %118 = load ptr, ptr @operand_entry_pool, align 8, !tbaa !92
  %119 = tail call ptr @pool_alloc(ptr noundef %118) #22
  %120 = getelementptr inbounds %struct.operand_entry, ptr %119, i64 0, i32 1
  store ptr %46, ptr %120, align 8, !tbaa !115
  %121 = tail call fastcc i64 @get_rank(ptr noundef nonnull %46)
  %122 = trunc i64 %121 to i32
  store i32 %122, ptr %119, align 8, !tbaa !113
  %123 = load ptr, ptr %0, align 8, !tbaa !92
  %124 = icmp eq ptr %123, null
  br i1 %124, label %130, label %125, !prof !257

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %123, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !258
  %128 = load i32, ptr %123, align 8, !tbaa !111
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132, !prof !259

130:                                              ; preds = %125, %117
  %131 = tail call ptr @vec_heap_p_reserve(ptr noundef %123, i32 noundef 1) #22
  store ptr %131, ptr %0, align 8, !tbaa !92
  br label %132

132:                                              ; preds = %125, %130
  %133 = load ptr, ptr %0, align 8, !tbaa !92
  %134 = load i32, ptr %133, align 8, !tbaa !111
  %135 = add i32 %134, 1
  store i32 %135, ptr %133, align 8, !tbaa !111
  %136 = zext i32 %134 to i64
  %137 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %133, i64 0, i32 2, i64 %136
  store ptr %119, ptr %137, align 8, !tbaa !92
  %138 = load ptr, ptr @operand_entry_pool, align 8, !tbaa !92
  %139 = tail call ptr @pool_alloc(ptr noundef %138) #22
  %140 = getelementptr inbounds %struct.operand_entry, ptr %139, i64 0, i32 1
  store ptr %23, ptr %140, align 8, !tbaa !115
  %141 = tail call fastcc i64 @get_rank(ptr noundef nonnull %23)
  %142 = trunc i64 %141 to i32
  store i32 %142, ptr %139, align 8, !tbaa !113
  %143 = load ptr, ptr %0, align 8, !tbaa !92
  %144 = icmp eq ptr %143, null
  br i1 %144, label %150, label %145, !prof !257

145:                                              ; preds = %132
  %146 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %143, i64 0, i32 1
  %147 = load i32, ptr %146, align 4, !tbaa !258
  %148 = load i32, ptr %143, align 8, !tbaa !111
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %152, !prof !259

150:                                              ; preds = %145, %132
  %151 = tail call ptr @vec_heap_p_reserve(ptr noundef %143, i32 noundef 1) #22
  store ptr %151, ptr %0, align 8, !tbaa !92
  br label %152

152:                                              ; preds = %145, %150
  %153 = load ptr, ptr %0, align 8, !tbaa !92
  %154 = load i32, ptr %153, align 8, !tbaa !111
  %155 = add i32 %154, 1
  store i32 %155, ptr %153, align 8, !tbaa !111
  %156 = zext i32 %154 to i64
  %157 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %153, i64 0, i32 2, i64 %156
  store ptr %139, ptr %157, align 8, !tbaa !92
  br label %220

158:                                              ; preds = %116
  %159 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %160 = icmp eq ptr %159, null
  br i1 %160, label %168, label %161

161:                                              ; preds = %158
  %162 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %163 = and i32 %162, 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 21, i64 1, ptr nonnull %159)
  %167 = load ptr, ptr @dump_file, align 8, !tbaa !92
  tail call void @print_gimple_stmt(ptr noundef %167, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0) #22
  br label %168

168:                                              ; preds = %165, %161, %158
  %169 = load i32, ptr %1, align 8
  %170 = and i32 %169, 255
  %171 = add nsw i32 %170, -10
  %172 = icmp ult i32 %171, -9
  br i1 %172, label %185, label %173

173:                                              ; preds = %168
  %174 = zext nneg i32 %170 to i64
  %175 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !107
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %177
  %179 = load i64, ptr %178, align 8, !tbaa !131
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %182

182:                                              ; preds = %181, %173
  %183 = getelementptr inbounds i8, ptr %1, i64 %179
  %184 = getelementptr inbounds ptr, ptr %183, i64 1
  br label %185

185:                                              ; preds = %168, %182
  %186 = phi ptr [ %184, %182 ], [ null, %168 ]
  %187 = load i32, ptr %1, align 8
  %188 = and i32 %187, 255
  %189 = add nsw i32 %188, -10
  %190 = icmp ult i32 %189, -9
  br i1 %190, label %203, label %191

191:                                              ; preds = %185
  %192 = zext nneg i32 %188 to i64
  %193 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !107
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %195
  %197 = load i64, ptr %196, align 8, !tbaa !131
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %200

200:                                              ; preds = %199, %191
  %201 = getelementptr inbounds i8, ptr %1, i64 %197
  %202 = getelementptr inbounds ptr, ptr %201, i64 2
  br label %203

203:                                              ; preds = %185, %200
  %204 = phi ptr [ %202, %200 ], [ null, %185 ]
  tail call void @swap_tree_operands(ptr noundef nonnull %1, ptr noundef %186, ptr noundef %204) #22
  %205 = load i32, ptr %1, align 8
  %206 = and i32 %205, 255
  %207 = add nsw i32 %206, -10
  %208 = icmp ult i32 %207, -9
  br i1 %208, label %210, label %209

209:                                              ; preds = %203
  tail call void @gimple_set_modified(ptr noundef nonnull %1, i8 noundef zeroext 1) #22
  tail call void @update_stmt_operands(ptr noundef nonnull %1) #22
  br label %210

210:                                              ; preds = %203, %209
  %211 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %212 = icmp eq ptr %211, null
  br i1 %212, label %220, label %213

213:                                              ; preds = %210
  %214 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %215 = and i32 %214, 8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %213
  %218 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 8, i64 1, ptr nonnull %211)
  %219 = load ptr, ptr @dump_file, align 8, !tbaa !92
  tail call void @print_gimple_stmt(ptr noundef %219, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0) #22
  br label %220

220:                                              ; preds = %210, %213, %217, %152, %115
  %221 = phi ptr [ %46, %152 ], [ %46, %115 ], [ %23, %217 ], [ %23, %213 ], [ %23, %210 ]
  %222 = phi ptr [ %23, %152 ], [ %23, %115 ], [ %46, %217 ], [ %46, %213 ], [ %46, %210 ]
  %223 = phi i1 [ false, %152 ], [ false, %115 ], [ true, %217 ], [ true, %213 ], [ true, %210 ]
  br i1 %223, label %265, label %300, !prof !202

224:                                              ; preds = %111
  br i1 %112, label %265, label %225, !prof !188

225:                                              ; preds = %224
  tail call fastcc void @linearize_expr(ptr noundef nonnull %1)
  %226 = load i32, ptr %1, align 8
  %227 = and i32 %226, 255
  %228 = add nsw i32 %227, -10
  %229 = icmp ult i32 %228, -9
  br i1 %229, label %243, label %230

230:                                              ; preds = %225
  %231 = zext nneg i32 %227 to i64
  %232 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !107
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %234
  %236 = load i64, ptr %235, align 8, !tbaa !131
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %230
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %239

239:                                              ; preds = %238, %230
  %240 = getelementptr inbounds i8, ptr %1, i64 %236
  %241 = getelementptr inbounds ptr, ptr %240, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !92
  br label %243

243:                                              ; preds = %225, %239
  %244 = phi ptr [ %242, %239 ], [ null, %225 ]
  %245 = load i32, ptr %24, align 4, !tbaa !103
  %246 = icmp ugt i32 %245, 2
  br i1 %246, label %247, label %265

247:                                              ; preds = %243
  %248 = load i32, ptr %1, align 8
  %249 = and i32 %248, 255
  %250 = add nsw i32 %249, -10
  %251 = icmp ult i32 %250, -9
  br i1 %251, label %265, label %252

252:                                              ; preds = %247
  %253 = zext nneg i32 %249 to i64
  %254 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !107
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %256
  %258 = load i64, ptr %257, align 8, !tbaa !131
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %252
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %261

261:                                              ; preds = %260, %252
  %262 = getelementptr inbounds i8, ptr %1, i64 %258
  %263 = getelementptr inbounds ptr, ptr %262, i64 2
  %264 = load ptr, ptr %263, align 8, !tbaa !92
  br label %265

265:                                              ; preds = %261, %247, %243, %224, %220
  %266 = phi ptr [ %46, %224 ], [ %221, %220 ], [ null, %243 ], [ %264, %261 ], [ null, %247 ]
  %267 = phi ptr [ %23, %224 ], [ %222, %220 ], [ %244, %243 ], [ %244, %261 ], [ %244, %247 ]
  %268 = load i64, ptr %266, align 8
  %269 = and i64 %268, 65535
  %270 = icmp eq i64 %269, 141
  br i1 %270, label %271, label %277, !prof !260

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.tree_ssa_name, ptr %266, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !103
  %274 = tail call fastcc zeroext i8 @is_reassociable_op(ptr noundef %273, i32 noundef %79, ptr noundef %87), !range !170
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %277, label %276, !prof !261

276:                                              ; preds = %271
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1693, ptr noundef nonnull @.str.4) #22
  br label %277

277:                                              ; preds = %265, %271, %276
  %278 = getelementptr inbounds %struct.tree_ssa_name, ptr %267, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !103
  tail call fastcc void @linearize_expr_tree(ptr noundef %0, ptr noundef %279, i8 noundef zeroext %2, i8 noundef zeroext %3)
  %280 = load ptr, ptr @operand_entry_pool, align 8, !tbaa !92
  %281 = tail call ptr @pool_alloc(ptr noundef %280) #22
  %282 = getelementptr inbounds %struct.operand_entry, ptr %281, i64 0, i32 1
  store ptr %266, ptr %282, align 8, !tbaa !115
  %283 = tail call fastcc i64 @get_rank(ptr noundef nonnull %266)
  %284 = trunc i64 %283 to i32
  store i32 %284, ptr %281, align 8, !tbaa !113
  %285 = load ptr, ptr %0, align 8, !tbaa !92
  %286 = icmp eq ptr %285, null
  br i1 %286, label %292, label %287, !prof !257

287:                                              ; preds = %277
  %288 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %285, i64 0, i32 1
  %289 = load i32, ptr %288, align 4, !tbaa !258
  %290 = load i32, ptr %285, align 8, !tbaa !111
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %294, !prof !259

292:                                              ; preds = %287, %277
  %293 = tail call ptr @vec_heap_p_reserve(ptr noundef %285, i32 noundef 1) #22
  store ptr %293, ptr %0, align 8, !tbaa !92
  br label %294

294:                                              ; preds = %287, %292
  %295 = load ptr, ptr %0, align 8, !tbaa !92
  %296 = load i32, ptr %295, align 8, !tbaa !111
  %297 = add i32 %296, 1
  store i32 %297, ptr %295, align 8, !tbaa !111
  %298 = zext i32 %296 to i64
  %299 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %295, i64 0, i32 2, i64 %298
  store ptr %281, ptr %299, align 8, !tbaa !92
  br label %300

300:                                              ; preds = %220, %294
  ret void
}

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @sort_by_operand_rank(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #16 !prof !262 !PGOFuncName !263 {
  %3 = load ptr, ptr %0, align 8, !tbaa !92
  %4 = load ptr, ptr %1, align 8, !tbaa !92
  %5 = load i32, ptr %4, align 8, !tbaa !113
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %40, !prof !264

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !113
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %40, !prof !265

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.operand_entry, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  %17 = add i16 %16, -6
  %18 = icmp ult i16 %17, 4
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = zext nneg i16 %17 to i64
  %21 = getelementptr inbounds [4 x i32], ptr @switch.table.sort_by_operand_rank, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %10, %19
  %24 = phi i32 [ %22, %19 ], [ 2, %10 ]
  %25 = getelementptr inbounds %struct.operand_entry, ptr %3, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !115
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !103
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i16
  %31 = add i16 %30, -6
  %32 = icmp ult i16 %31, 4
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = zext nneg i16 %31 to i64
  %35 = getelementptr inbounds [4 x i32], ptr @switch.table.sort_by_operand_rank.48, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %23, %33
  %38 = phi i32 [ %36, %33 ], [ -2, %23 ]
  %39 = add nsw i32 %38, %24
  br label %63

40:                                               ; preds = %7, %2
  %41 = load i32, ptr %3, align 8, !tbaa !113
  %42 = icmp eq i32 %5, %41
  br i1 %42, label %43, label %61, !prof !266

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.operand_entry, ptr %3, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !115
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 141
  br i1 %48, label %49, label %61, !prof !267

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.operand_entry, ptr %4, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !115
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 141
  br i1 %54, label %55, label %61, !prof !267

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.tree_ssa_name, ptr %51, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !103
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !103
  %60 = sub i32 %57, %59
  br label %63

61:                                               ; preds = %49, %43, %40
  %62 = sub i32 %5, %41
  br label %63

63:                                               ; preds = %61, %55, %37
  %64 = phi i32 [ %39, %37 ], [ %60, %55 ], [ %62, %61 ]
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal fastcc void @optimize_ops_list(i32 noundef %0, ptr noundef %1) unnamed_addr #11 !prof !268 !PGOFuncName !269 {
  br label %3

3:                                                ; preds = %1549, %2
  %4 = load ptr, ptr %1, align 8, !tbaa !92
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !202

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 8, !tbaa !111
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %3 ]
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %1550, label %11, !prof !202

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 8, !tbaa !111
  %13 = add i32 %12, -1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %4, i64 0, i32 2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = load i32, ptr %16, align 8, !tbaa !113
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %71, !prof !270

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.operand_entry, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %21) #22
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %71, label %24, !prof !271

24:                                               ; preds = %19
  %25 = load ptr, ptr %1, align 8, !tbaa !92
  %26 = add i32 %9, -2
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %25, i64 0, i32 2, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = load i32, ptr %29, align 8, !tbaa !113
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %71, !prof !271

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.operand_entry, ptr %29, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !115
  %35 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %34) #22
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %71, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %33, align 8, !tbaa !115
  %39 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !103
  %41 = load ptr, ptr %20, align 8, !tbaa !115
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !103
  %44 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %40, ptr noundef %43) #22
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %37
  %47 = load ptr, ptr %33, align 8, !tbaa !115
  %48 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !103
  %50 = load ptr, ptr %20, align 8, !tbaa !115
  %51 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %0, ptr noundef %49, ptr noundef %47, ptr noundef %50) #22
  %52 = icmp eq ptr %51, null
  br i1 %52, label %71, label %53

53:                                               ; preds = %46
  %54 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %51) #22
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %61 = and i32 %60, 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 18, i64 1, ptr nonnull %57)
  br label %65

65:                                               ; preds = %63, %59, %56
  %66 = load ptr, ptr %1, align 8, !tbaa !92
  %67 = load i32, ptr %66, align 8, !tbaa !111
  %68 = add i32 %67, -2
  store i32 %68, ptr %66, align 8, !tbaa !111
  tail call fastcc void @add_to_ops_vec(ptr noundef nonnull %1, ptr noundef nonnull %51)
  %69 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 1), align 4, !tbaa !141
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 1), align 4, !tbaa !141
  br label %1549

71:                                               ; preds = %53, %46, %37, %32, %24, %19, %11
  %72 = load ptr, ptr %1, align 8, !tbaa !92
  %73 = load i32, ptr %72, align 8, !tbaa !111
  %74 = add i32 %73, -1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %72, i64 0, i32 2, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !92
  %78 = getelementptr inbounds %struct.operand_entry, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !115
  %80 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !103
  %82 = load i32, ptr %77, align 8, !tbaa !113
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %1153, !prof !270

84:                                               ; preds = %71
  %85 = load i64, ptr %81, align 8
  %86 = trunc i64 %85 to i16
  switch i16 %86, label %1153 [
    i16 6, label %93
    i16 7, label %93
    i16 8, label %93
    i16 9, label %93
    i16 13, label %87
    i16 14, label %87
  ], !prof !272

87:                                               ; preds = %84, %84
  %88 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !103
  %90 = load i64, ptr %89, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 9
  br i1 %92, label %93, label %1153

93:                                               ; preds = %87, %84, %84, %84, %84
  switch i32 %0, label %1153 [
    i32 89, label %94
    i32 87, label %154
    i32 65, label %214
    i32 88, label %1108
    i32 63, label %1108
    i32 64, label %1108
  ], !prof !273

94:                                               ; preds = %93
  %95 = tail call i32 @integer_zerop(ptr noundef %79) #22
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %129, label %97, !prof !274

97:                                               ; preds = %94
  %98 = load ptr, ptr %1, align 8, !tbaa !92
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %98, align 8, !tbaa !111
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %1153, label %103

103:                                              ; preds = %97, %100
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %105 = icmp eq ptr %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %108 = and i32 %107, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 34, i64 1, ptr nonnull %104)
  br label %112

112:                                              ; preds = %110, %106, %103
  %113 = load ptr, ptr %1, align 8, !tbaa !92
  %114 = icmp eq ptr %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %112
  %116 = load i32, ptr %113, align 8, !tbaa !111
  %117 = add i32 %116, -1
  %118 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %119 = add i32 %117, %118
  store i32 %119, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  tail call void @free(ptr noundef %113)
  br label %123

120:                                              ; preds = %112
  %121 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %122 = add i32 %121, -1
  store i32 %122, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  br label %123

123:                                              ; preds = %120, %115
  store ptr null, ptr %1, align 8, !tbaa !92
  %124 = tail call ptr @vec_heap_p_reserve(ptr noundef null, i32 noundef 1) #22
  store ptr %124, ptr %1, align 8, !tbaa !92
  %125 = load i32, ptr %124, align 8, !tbaa !111
  %126 = add i32 %125, 1
  store i32 %126, ptr %124, align 8, !tbaa !111
  %127 = zext i32 %125 to i64
  %128 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %124, i64 0, i32 2, i64 %127
  store ptr %77, ptr %128, align 8, !tbaa !92
  br label %1153

129:                                              ; preds = %94
  %130 = load ptr, ptr %78, align 8, !tbaa !115
  %131 = tail call i32 @integer_all_onesp(ptr noundef %130) #22
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %1153, label %133, !prof !274

133:                                              ; preds = %129
  %134 = load ptr, ptr %1, align 8, !tbaa !92
  %135 = icmp eq ptr %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load i32, ptr %134, align 8, !tbaa !111
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %1153, label %139

139:                                              ; preds = %133, %136
  %140 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %141 = icmp eq ptr %140, null
  br i1 %141, label %148, label %142

142:                                              ; preds = %139
  %143 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %144 = and i32 %143, 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 21, i64 1, ptr nonnull %140)
  br label %148

148:                                              ; preds = %146, %142, %139
  %149 = load ptr, ptr %1, align 8, !tbaa !92
  %150 = load i32, ptr %149, align 8, !tbaa !111
  %151 = add i32 %150, -1
  store i32 %151, ptr %149, align 8, !tbaa !111
  %152 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  br label %1153

154:                                              ; preds = %93
  %155 = tail call i32 @integer_all_onesp(ptr noundef %79) #22
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %189, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr %1, align 8, !tbaa !92
  %159 = icmp eq ptr %158, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, ptr %158, align 8, !tbaa !111
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %1153, label %163

163:                                              ; preds = %157, %160
  %164 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %165 = icmp eq ptr %164, null
  br i1 %165, label %172, label %166

166:                                              ; preds = %163
  %167 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %168 = and i32 %167, 8
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 35, i64 1, ptr nonnull %164)
  br label %172

172:                                              ; preds = %170, %166, %163
  %173 = load ptr, ptr %1, align 8, !tbaa !92
  %174 = icmp eq ptr %173, null
  br i1 %174, label %180, label %175

175:                                              ; preds = %172
  %176 = load i32, ptr %173, align 8, !tbaa !111
  %177 = add i32 %176, -1
  %178 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %179 = add i32 %177, %178
  store i32 %179, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  tail call void @free(ptr noundef %173)
  br label %183

180:                                              ; preds = %172
  %181 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %182 = add i32 %181, -1
  store i32 %182, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  br label %183

183:                                              ; preds = %180, %175
  store ptr null, ptr %1, align 8, !tbaa !92
  %184 = tail call ptr @vec_heap_p_reserve(ptr noundef null, i32 noundef 1) #22
  store ptr %184, ptr %1, align 8, !tbaa !92
  %185 = load i32, ptr %184, align 8, !tbaa !111
  %186 = add i32 %185, 1
  store i32 %186, ptr %184, align 8, !tbaa !111
  %187 = zext i32 %185 to i64
  %188 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %184, i64 0, i32 2, i64 %187
  store ptr %77, ptr %188, align 8, !tbaa !92
  br label %1153

189:                                              ; preds = %154
  %190 = load ptr, ptr %78, align 8, !tbaa !115
  %191 = tail call i32 @integer_zerop(ptr noundef %190) #22
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %1153, label %193

193:                                              ; preds = %189
  %194 = load ptr, ptr %1, align 8, !tbaa !92
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i32, ptr %194, align 8, !tbaa !111
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %1153, label %199

199:                                              ; preds = %193, %196
  %200 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %201 = icmp eq ptr %200, null
  br i1 %201, label %208, label %202

202:                                              ; preds = %199
  %203 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %204 = and i32 %203, 8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 20, i64 1, ptr nonnull %200)
  br label %208

208:                                              ; preds = %206, %202, %199
  %209 = load ptr, ptr %1, align 8, !tbaa !92
  %210 = load i32, ptr %209, align 8, !tbaa !111
  %211 = add i32 %210, -1
  store i32 %211, ptr %209, align 8, !tbaa !111
  %212 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %213 = add nsw i32 %212, 1
  store i32 %213, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  br label %1153

214:                                              ; preds = %93
  %215 = tail call i32 @integer_zerop(ptr noundef %79) #22
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %767, !prof !275

217:                                              ; preds = %214
  %218 = load i64, ptr %81, align 8
  %219 = trunc i64 %218 to i16
  switch i16 %219, label %799 [
    i16 9, label %226
    i16 13, label %220
    i16 14, label %220
  ], !prof !276

220:                                              ; preds = %217, %217
  %221 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !103
  %223 = load i64, ptr %222, align 8
  %224 = and i64 %223, 65535
  %225 = icmp eq i64 %224, 9
  br i1 %225, label %226, label %799

226:                                              ; preds = %220, %217
  %227 = and i64 %218, 65535
  %228 = icmp eq i64 %227, 14
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %236

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %233 = load i32, ptr %232, align 4
  %234 = lshr i32 %233, 16
  %235 = and i32 %234, 255
  br label %236

236:                                              ; preds = %231, %229
  %237 = phi i32 [ %230, %229 ], [ %235, %231 ]
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !103
  %241 = icmp eq i8 %240, 8
  br i1 %241, label %293, label %242

242:                                              ; preds = %236
  %243 = load i64, ptr %81, align 8
  %244 = and i64 %243, 65535
  %245 = icmp eq i64 %244, 14
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %253

248:                                              ; preds = %242
  %249 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %250 = load i32, ptr %249, align 4
  %251 = lshr i32 %250, 16
  %252 = and i32 %251, 255
  br label %253

253:                                              ; preds = %248, %246
  %254 = phi i32 [ %247, %246 ], [ %252, %248 ]
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !103
  %258 = icmp eq i8 %257, 9
  br i1 %258, label %293, label %259

259:                                              ; preds = %253
  %260 = load i64, ptr %81, align 8
  %261 = and i64 %260, 65535
  %262 = icmp eq i64 %261, 14
  br i1 %262, label %263, label %265

263:                                              ; preds = %259
  %264 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %270

265:                                              ; preds = %259
  %266 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %267 = load i32, ptr %266, align 4
  %268 = lshr i32 %267, 16
  %269 = and i32 %268, 255
  br label %270

270:                                              ; preds = %265, %263
  %271 = phi i32 [ %264, %263 ], [ %269, %265 ]
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !103
  %275 = icmp eq i8 %274, 11
  br i1 %275, label %293, label %276

276:                                              ; preds = %270
  %277 = load i64, ptr %81, align 8
  %278 = and i64 %277, 65535
  %279 = icmp eq i64 %278, 14
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %287

282:                                              ; preds = %276
  %283 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %284 = load i32, ptr %283, align 4
  %285 = lshr i32 %284, 16
  %286 = and i32 %285, 255
  br label %287

287:                                              ; preds = %282, %280
  %288 = phi i32 [ %281, %280 ], [ %286, %282 ]
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !103
  %292 = icmp eq i8 %291, 17
  br i1 %292, label %293, label %494

293:                                              ; preds = %287, %270, %253, %236
  %294 = load i64, ptr %81, align 8
  %295 = and i64 %294, 65535
  %296 = icmp eq i64 %295, 14
  br i1 %296, label %297, label %299

297:                                              ; preds = %293
  %298 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %304

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %301 = load i32, ptr %300, align 4
  %302 = lshr i32 %301, 16
  %303 = and i32 %302, 255
  br label %304

304:                                              ; preds = %299, %297
  %305 = phi i32 [ %298, %297 ], [ %303, %299 ]
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %306
  %308 = load i8, ptr %307, align 1, !tbaa !103
  %309 = icmp eq i8 %308, 8
  br i1 %309, label %327, label %310

310:                                              ; preds = %304
  %311 = load i64, ptr %81, align 8
  %312 = and i64 %311, 65535
  %313 = icmp eq i64 %312, 14
  br i1 %313, label %314, label %316

314:                                              ; preds = %310
  %315 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %321

316:                                              ; preds = %310
  %317 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %318 = load i32, ptr %317, align 4
  %319 = lshr i32 %318, 16
  %320 = and i32 %319, 255
  br label %321

321:                                              ; preds = %316, %314
  %322 = phi i32 [ %315, %314 ], [ %320, %316 ]
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %323
  %325 = load i8, ptr %324, align 1, !tbaa !103
  %326 = icmp eq i8 %325, 9
  br i1 %326, label %327, label %338

327:                                              ; preds = %321, %304
  %328 = load i64, ptr %81, align 8
  %329 = and i64 %328, 65535
  %330 = icmp eq i64 %329, 14
  br i1 %330, label %331, label %333

331:                                              ; preds = %327
  %332 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %355

333:                                              ; preds = %327
  %334 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %335 = load i32, ptr %334, align 4
  %336 = lshr i32 %335, 16
  %337 = and i32 %336, 255
  br label %355

338:                                              ; preds = %321
  %339 = load i64, ptr %81, align 8
  %340 = and i64 %339, 65535
  %341 = icmp eq i64 %340, 14
  br i1 %341, label %342, label %344

342:                                              ; preds = %338
  %343 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %349

344:                                              ; preds = %338
  %345 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %346 = load i32, ptr %345, align 4
  %347 = lshr i32 %346, 16
  %348 = and i32 %347, 255
  br label %349

349:                                              ; preds = %344, %342
  %350 = phi i32 [ %343, %342 ], [ %348, %344 ]
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %351
  %353 = load i8, ptr %352, align 1, !tbaa !103
  %354 = zext i8 %353 to i32
  br label %355

355:                                              ; preds = %349, %333, %331
  %356 = phi i32 [ %354, %349 ], [ %332, %331 ], [ %337, %333 ]
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %357
  %359 = load i8, ptr %358, align 1, !tbaa !103
  %360 = icmp eq i8 %359, 9
  %361 = load i64, ptr %81, align 8
  %362 = and i64 %361, 65535
  %363 = icmp eq i64 %362, 14
  br i1 %360, label %364, label %423

364:                                              ; preds = %355
  br i1 %363, label %365, label %367

365:                                              ; preds = %364
  %366 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %372

367:                                              ; preds = %364
  %368 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %369 = load i32, ptr %368, align 4
  %370 = lshr i32 %369, 16
  %371 = and i32 %370, 255
  br label %372

372:                                              ; preds = %367, %365
  %373 = phi i32 [ %366, %365 ], [ %371, %367 ]
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %374
  %376 = load i8, ptr %375, align 1, !tbaa !103
  %377 = icmp eq i8 %376, 8
  br i1 %377, label %395, label %378

378:                                              ; preds = %372
  %379 = load i64, ptr %81, align 8
  %380 = and i64 %379, 65535
  %381 = icmp eq i64 %380, 14
  br i1 %381, label %382, label %384

382:                                              ; preds = %378
  %383 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %389

384:                                              ; preds = %378
  %385 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %386 = load i32, ptr %385, align 4
  %387 = lshr i32 %386, 16
  %388 = and i32 %387, 255
  br label %389

389:                                              ; preds = %384, %382
  %390 = phi i32 [ %383, %382 ], [ %388, %384 ]
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %391
  %393 = load i8, ptr %392, align 1, !tbaa !103
  %394 = icmp eq i8 %393, 9
  br i1 %394, label %395, label %406

395:                                              ; preds = %389, %372
  %396 = load i64, ptr %81, align 8
  %397 = and i64 %396, 65535
  %398 = icmp eq i64 %397, 14
  br i1 %398, label %399, label %401

399:                                              ; preds = %395
  %400 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %482

401:                                              ; preds = %395
  %402 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %403 = load i32, ptr %402, align 4
  %404 = lshr i32 %403, 16
  %405 = and i32 %404, 255
  br label %482

406:                                              ; preds = %389
  %407 = load i64, ptr %81, align 8
  %408 = and i64 %407, 65535
  %409 = icmp eq i64 %408, 14
  br i1 %409, label %410, label %412

410:                                              ; preds = %406
  %411 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %417

412:                                              ; preds = %406
  %413 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %414 = load i32, ptr %413, align 4
  %415 = lshr i32 %414, 16
  %416 = and i32 %415, 255
  br label %417

417:                                              ; preds = %412, %410
  %418 = phi i32 [ %411, %410 ], [ %416, %412 ]
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !103
  %422 = zext i8 %421 to i32
  br label %482

423:                                              ; preds = %355
  br i1 %363, label %424, label %426

424:                                              ; preds = %423
  %425 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %431

426:                                              ; preds = %423
  %427 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %428 = load i32, ptr %427, align 4
  %429 = lshr i32 %428, 16
  %430 = and i32 %429, 255
  br label %431

431:                                              ; preds = %426, %424
  %432 = phi i32 [ %425, %424 ], [ %430, %426 ]
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %433
  %435 = load i8, ptr %434, align 1, !tbaa !103
  %436 = icmp eq i8 %435, 8
  br i1 %436, label %454, label %437

437:                                              ; preds = %431
  %438 = load i64, ptr %81, align 8
  %439 = and i64 %438, 65535
  %440 = icmp eq i64 %439, 14
  br i1 %440, label %441, label %443

441:                                              ; preds = %437
  %442 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %448

443:                                              ; preds = %437
  %444 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %445 = load i32, ptr %444, align 4
  %446 = lshr i32 %445, 16
  %447 = and i32 %446, 255
  br label %448

448:                                              ; preds = %443, %441
  %449 = phi i32 [ %442, %441 ], [ %447, %443 ]
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %450
  %452 = load i8, ptr %451, align 1, !tbaa !103
  %453 = icmp eq i8 %452, 9
  br i1 %453, label %454, label %465

454:                                              ; preds = %448, %431
  %455 = load i64, ptr %81, align 8
  %456 = and i64 %455, 65535
  %457 = icmp eq i64 %456, 14
  br i1 %457, label %458, label %460

458:                                              ; preds = %454
  %459 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %482

460:                                              ; preds = %454
  %461 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %462 = load i32, ptr %461, align 4
  %463 = lshr i32 %462, 16
  %464 = and i32 %463, 255
  br label %482

465:                                              ; preds = %448
  %466 = load i64, ptr %81, align 8
  %467 = and i64 %466, 65535
  %468 = icmp eq i64 %467, 14
  br i1 %468, label %469, label %471

469:                                              ; preds = %465
  %470 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %476

471:                                              ; preds = %465
  %472 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %473 = load i32, ptr %472, align 4
  %474 = lshr i32 %473, 16
  %475 = and i32 %474, 255
  br label %476

476:                                              ; preds = %471, %469
  %477 = phi i32 [ %470, %469 ], [ %475, %471 ]
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %478
  %480 = load i8, ptr %479, align 1, !tbaa !103
  %481 = zext i8 %480 to i32
  br label %482

482:                                              ; preds = %476, %460, %458, %417, %401, %399
  %483 = phi i32 [ %422, %417 ], [ %400, %399 ], [ %405, %401 ], [ %481, %476 ], [ %459, %458 ], [ %464, %460 ]
  %484 = add i32 %483, -38
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %485
  %487 = load ptr, ptr %486, align 8, !tbaa !92
  %488 = getelementptr inbounds %struct.real_format, ptr %487, i64 0, i32 11
  %489 = load i8, ptr %488, align 2, !tbaa !277
  %490 = icmp eq i8 %489, 0
  %491 = load i32, ptr @flag_finite_math_only, align 4
  %492 = icmp ne i32 %491, 0
  %493 = select i1 %490, i1 true, i1 %492
  br i1 %493, label %494, label %799

494:                                              ; preds = %482, %287
  %495 = load i64, ptr %81, align 8
  %496 = and i64 %495, 65535
  %497 = icmp eq i64 %496, 14
  br i1 %497, label %498, label %500

498:                                              ; preds = %494
  %499 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %505

500:                                              ; preds = %494
  %501 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %502 = load i32, ptr %501, align 4
  %503 = lshr i32 %502, 16
  %504 = and i32 %503, 255
  br label %505

505:                                              ; preds = %500, %498
  %506 = phi i32 [ %499, %498 ], [ %504, %500 ]
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %507
  %509 = load i8, ptr %508, align 1, !tbaa !103
  %510 = icmp eq i8 %509, 8
  br i1 %510, label %562, label %511

511:                                              ; preds = %505
  %512 = load i64, ptr %81, align 8
  %513 = and i64 %512, 65535
  %514 = icmp eq i64 %513, 14
  br i1 %514, label %515, label %517

515:                                              ; preds = %511
  %516 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %522

517:                                              ; preds = %511
  %518 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %519 = load i32, ptr %518, align 4
  %520 = lshr i32 %519, 16
  %521 = and i32 %520, 255
  br label %522

522:                                              ; preds = %517, %515
  %523 = phi i32 [ %516, %515 ], [ %521, %517 ]
  %524 = zext i32 %523 to i64
  %525 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %524
  %526 = load i8, ptr %525, align 1, !tbaa !103
  %527 = icmp eq i8 %526, 9
  br i1 %527, label %562, label %528

528:                                              ; preds = %522
  %529 = load i64, ptr %81, align 8
  %530 = and i64 %529, 65535
  %531 = icmp eq i64 %530, 14
  br i1 %531, label %532, label %534

532:                                              ; preds = %528
  %533 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %539

534:                                              ; preds = %528
  %535 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %536 = load i32, ptr %535, align 4
  %537 = lshr i32 %536, 16
  %538 = and i32 %537, 255
  br label %539

539:                                              ; preds = %534, %532
  %540 = phi i32 [ %533, %532 ], [ %538, %534 ]
  %541 = zext i32 %540 to i64
  %542 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %541
  %543 = load i8, ptr %542, align 1, !tbaa !103
  %544 = icmp eq i8 %543, 11
  br i1 %544, label %562, label %545

545:                                              ; preds = %539
  %546 = load i64, ptr %81, align 8
  %547 = and i64 %546, 65535
  %548 = icmp eq i64 %547, 14
  br i1 %548, label %549, label %551

549:                                              ; preds = %545
  %550 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %556

551:                                              ; preds = %545
  %552 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %553 = load i32, ptr %552, align 4
  %554 = lshr i32 %553, 16
  %555 = and i32 %554, 255
  br label %556

556:                                              ; preds = %551, %549
  %557 = phi i32 [ %550, %549 ], [ %555, %551 ]
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %558
  %560 = load i8, ptr %559, align 1, !tbaa !103
  %561 = icmp eq i8 %560, 17
  br i1 %561, label %562, label %763

562:                                              ; preds = %556, %539, %522, %505
  %563 = load i64, ptr %81, align 8
  %564 = and i64 %563, 65535
  %565 = icmp eq i64 %564, 14
  br i1 %565, label %566, label %568

566:                                              ; preds = %562
  %567 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %573

568:                                              ; preds = %562
  %569 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %570 = load i32, ptr %569, align 4
  %571 = lshr i32 %570, 16
  %572 = and i32 %571, 255
  br label %573

573:                                              ; preds = %568, %566
  %574 = phi i32 [ %567, %566 ], [ %572, %568 ]
  %575 = zext i32 %574 to i64
  %576 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %575
  %577 = load i8, ptr %576, align 1, !tbaa !103
  %578 = icmp eq i8 %577, 8
  br i1 %578, label %596, label %579

579:                                              ; preds = %573
  %580 = load i64, ptr %81, align 8
  %581 = and i64 %580, 65535
  %582 = icmp eq i64 %581, 14
  br i1 %582, label %583, label %585

583:                                              ; preds = %579
  %584 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %590

585:                                              ; preds = %579
  %586 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %587 = load i32, ptr %586, align 4
  %588 = lshr i32 %587, 16
  %589 = and i32 %588, 255
  br label %590

590:                                              ; preds = %585, %583
  %591 = phi i32 [ %584, %583 ], [ %589, %585 ]
  %592 = zext i32 %591 to i64
  %593 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %592
  %594 = load i8, ptr %593, align 1, !tbaa !103
  %595 = icmp eq i8 %594, 9
  br i1 %595, label %596, label %607

596:                                              ; preds = %590, %573
  %597 = load i64, ptr %81, align 8
  %598 = and i64 %597, 65535
  %599 = icmp eq i64 %598, 14
  br i1 %599, label %600, label %602

600:                                              ; preds = %596
  %601 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %624

602:                                              ; preds = %596
  %603 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %604 = load i32, ptr %603, align 4
  %605 = lshr i32 %604, 16
  %606 = and i32 %605, 255
  br label %624

607:                                              ; preds = %590
  %608 = load i64, ptr %81, align 8
  %609 = and i64 %608, 65535
  %610 = icmp eq i64 %609, 14
  br i1 %610, label %611, label %613

611:                                              ; preds = %607
  %612 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %618

613:                                              ; preds = %607
  %614 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %615 = load i32, ptr %614, align 4
  %616 = lshr i32 %615, 16
  %617 = and i32 %616, 255
  br label %618

618:                                              ; preds = %613, %611
  %619 = phi i32 [ %612, %611 ], [ %617, %613 ]
  %620 = zext i32 %619 to i64
  %621 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %620
  %622 = load i8, ptr %621, align 1, !tbaa !103
  %623 = zext i8 %622 to i32
  br label %624

624:                                              ; preds = %618, %602, %600
  %625 = phi i32 [ %623, %618 ], [ %601, %600 ], [ %606, %602 ]
  %626 = zext i32 %625 to i64
  %627 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %626
  %628 = load i8, ptr %627, align 1, !tbaa !103
  %629 = icmp eq i8 %628, 9
  %630 = load i64, ptr %81, align 8
  %631 = and i64 %630, 65535
  %632 = icmp eq i64 %631, 14
  br i1 %629, label %633, label %692

633:                                              ; preds = %624
  br i1 %632, label %634, label %636

634:                                              ; preds = %633
  %635 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %641

636:                                              ; preds = %633
  %637 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %638 = load i32, ptr %637, align 4
  %639 = lshr i32 %638, 16
  %640 = and i32 %639, 255
  br label %641

641:                                              ; preds = %636, %634
  %642 = phi i32 [ %635, %634 ], [ %640, %636 ]
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %643
  %645 = load i8, ptr %644, align 1, !tbaa !103
  %646 = icmp eq i8 %645, 8
  br i1 %646, label %664, label %647

647:                                              ; preds = %641
  %648 = load i64, ptr %81, align 8
  %649 = and i64 %648, 65535
  %650 = icmp eq i64 %649, 14
  br i1 %650, label %651, label %653

651:                                              ; preds = %647
  %652 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %658

653:                                              ; preds = %647
  %654 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %655 = load i32, ptr %654, align 4
  %656 = lshr i32 %655, 16
  %657 = and i32 %656, 255
  br label %658

658:                                              ; preds = %653, %651
  %659 = phi i32 [ %652, %651 ], [ %657, %653 ]
  %660 = zext i32 %659 to i64
  %661 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %660
  %662 = load i8, ptr %661, align 1, !tbaa !103
  %663 = icmp eq i8 %662, 9
  br i1 %663, label %664, label %675

664:                                              ; preds = %658, %641
  %665 = load i64, ptr %81, align 8
  %666 = and i64 %665, 65535
  %667 = icmp eq i64 %666, 14
  br i1 %667, label %668, label %670

668:                                              ; preds = %664
  %669 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %751

670:                                              ; preds = %664
  %671 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %672 = load i32, ptr %671, align 4
  %673 = lshr i32 %672, 16
  %674 = and i32 %673, 255
  br label %751

675:                                              ; preds = %658
  %676 = load i64, ptr %81, align 8
  %677 = and i64 %676, 65535
  %678 = icmp eq i64 %677, 14
  br i1 %678, label %679, label %681

679:                                              ; preds = %675
  %680 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %686

681:                                              ; preds = %675
  %682 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %683 = load i32, ptr %682, align 4
  %684 = lshr i32 %683, 16
  %685 = and i32 %684, 255
  br label %686

686:                                              ; preds = %681, %679
  %687 = phi i32 [ %680, %679 ], [ %685, %681 ]
  %688 = zext i32 %687 to i64
  %689 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %688
  %690 = load i8, ptr %689, align 1, !tbaa !103
  %691 = zext i8 %690 to i32
  br label %751

692:                                              ; preds = %624
  br i1 %632, label %693, label %695

693:                                              ; preds = %692
  %694 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %700

695:                                              ; preds = %692
  %696 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %697 = load i32, ptr %696, align 4
  %698 = lshr i32 %697, 16
  %699 = and i32 %698, 255
  br label %700

700:                                              ; preds = %695, %693
  %701 = phi i32 [ %694, %693 ], [ %699, %695 ]
  %702 = zext i32 %701 to i64
  %703 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %702
  %704 = load i8, ptr %703, align 1, !tbaa !103
  %705 = icmp eq i8 %704, 8
  br i1 %705, label %723, label %706

706:                                              ; preds = %700
  %707 = load i64, ptr %81, align 8
  %708 = and i64 %707, 65535
  %709 = icmp eq i64 %708, 14
  br i1 %709, label %710, label %712

710:                                              ; preds = %706
  %711 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %717

712:                                              ; preds = %706
  %713 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %714 = load i32, ptr %713, align 4
  %715 = lshr i32 %714, 16
  %716 = and i32 %715, 255
  br label %717

717:                                              ; preds = %712, %710
  %718 = phi i32 [ %711, %710 ], [ %716, %712 ]
  %719 = zext i32 %718 to i64
  %720 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %719
  %721 = load i8, ptr %720, align 1, !tbaa !103
  %722 = icmp eq i8 %721, 9
  br i1 %722, label %723, label %734

723:                                              ; preds = %717, %700
  %724 = load i64, ptr %81, align 8
  %725 = and i64 %724, 65535
  %726 = icmp eq i64 %725, 14
  br i1 %726, label %727, label %729

727:                                              ; preds = %723
  %728 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %751

729:                                              ; preds = %723
  %730 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %731 = load i32, ptr %730, align 4
  %732 = lshr i32 %731, 16
  %733 = and i32 %732, 255
  br label %751

734:                                              ; preds = %717
  %735 = load i64, ptr %81, align 8
  %736 = and i64 %735, 65535
  %737 = icmp eq i64 %736, 14
  br i1 %737, label %738, label %740

738:                                              ; preds = %734
  %739 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %745

740:                                              ; preds = %734
  %741 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %742 = load i32, ptr %741, align 4
  %743 = lshr i32 %742, 16
  %744 = and i32 %743, 255
  br label %745

745:                                              ; preds = %740, %738
  %746 = phi i32 [ %739, %738 ], [ %744, %740 ]
  %747 = zext i32 %746 to i64
  %748 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %747
  %749 = load i8, ptr %748, align 1, !tbaa !103
  %750 = zext i8 %749 to i32
  br label %751

751:                                              ; preds = %745, %729, %727, %686, %670, %668
  %752 = phi i32 [ %691, %686 ], [ %669, %668 ], [ %674, %670 ], [ %750, %745 ], [ %728, %727 ], [ %733, %729 ]
  %753 = add i32 %752, -38
  %754 = zext i32 %753 to i64
  %755 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %754
  %756 = load ptr, ptr %755, align 8, !tbaa !92
  %757 = getelementptr inbounds %struct.real_format, ptr %756, i64 0, i32 14
  %758 = load i8, ptr %757, align 1, !tbaa !279
  %759 = icmp ne i8 %758, 0
  %760 = load i32, ptr @flag_signed_zeros, align 4
  %761 = icmp ne i32 %760, 0
  %762 = select i1 %759, i1 %761, i1 false
  br i1 %762, label %799, label %763

763:                                              ; preds = %751, %556
  %764 = load ptr, ptr %78, align 8, !tbaa !115
  %765 = tail call i32 @real_zerop(ptr noundef %764) #22
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %799, label %767

767:                                              ; preds = %763, %214
  %768 = load ptr, ptr %1, align 8, !tbaa !92
  %769 = icmp eq ptr %768, null
  br i1 %769, label %773, label %770

770:                                              ; preds = %767
  %771 = load i32, ptr %768, align 8, !tbaa !111
  %772 = icmp eq i32 %771, 1
  br i1 %772, label %1153, label %773

773:                                              ; preds = %767, %770
  %774 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %775 = icmp eq ptr %774, null
  br i1 %775, label %782, label %776

776:                                              ; preds = %773
  %777 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %778 = and i32 %777, 8
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %782, label %780

780:                                              ; preds = %776
  %781 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 34, i64 1, ptr nonnull %774)
  br label %782

782:                                              ; preds = %780, %776, %773
  %783 = load ptr, ptr %1, align 8, !tbaa !92
  %784 = icmp eq ptr %783, null
  br i1 %784, label %790, label %785

785:                                              ; preds = %782
  %786 = load i32, ptr %783, align 8, !tbaa !111
  %787 = add i32 %786, -1
  %788 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %789 = add i32 %787, %788
  store i32 %789, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  tail call void @free(ptr noundef %783)
  br label %793

790:                                              ; preds = %782
  %791 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %792 = add i32 %791, -1
  store i32 %792, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  br label %793

793:                                              ; preds = %790, %785
  store ptr null, ptr %1, align 8, !tbaa !92
  %794 = tail call ptr @vec_heap_p_reserve(ptr noundef null, i32 noundef 1) #22
  store ptr %794, ptr %1, align 8, !tbaa !92
  %795 = load i32, ptr %794, align 8, !tbaa !111
  %796 = add i32 %795, 1
  store i32 %796, ptr %794, align 8, !tbaa !111
  %797 = zext i32 %795 to i64
  %798 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %794, i64 0, i32 2, i64 %797
  store ptr %77, ptr %798, align 8, !tbaa !92
  br label %1153

799:                                              ; preds = %763, %220, %751, %482, %217
  %800 = load ptr, ptr %78, align 8, !tbaa !115
  %801 = tail call i32 @integer_onep(ptr noundef %800) #22
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %1087, !prof !275

803:                                              ; preds = %799
  %804 = load i64, ptr %81, align 8
  %805 = trunc i64 %804 to i16
  switch i16 %805, label %1153 [
    i16 9, label %812
    i16 13, label %806
    i16 14, label %806
  ], !prof !276

806:                                              ; preds = %803, %803
  %807 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %808 = load ptr, ptr %807, align 8, !tbaa !103
  %809 = load i64, ptr %808, align 8
  %810 = and i64 %809, 65535
  %811 = icmp eq i64 %810, 9
  br i1 %811, label %812, label %1153

812:                                              ; preds = %806, %803
  %813 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !107
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %1083, label %815

815:                                              ; preds = %812
  %816 = and i64 %804, 65535
  %817 = icmp eq i64 %816, 14
  br i1 %817, label %818, label %820

818:                                              ; preds = %815
  %819 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %825

820:                                              ; preds = %815
  %821 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %822 = load i32, ptr %821, align 4
  %823 = lshr i32 %822, 16
  %824 = and i32 %823, 255
  br label %825

825:                                              ; preds = %820, %818
  %826 = phi i32 [ %819, %818 ], [ %824, %820 ]
  %827 = zext i32 %826 to i64
  %828 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %827
  %829 = load i8, ptr %828, align 1, !tbaa !103
  %830 = icmp eq i8 %829, 8
  br i1 %830, label %882, label %831

831:                                              ; preds = %825
  %832 = load i64, ptr %81, align 8
  %833 = and i64 %832, 65535
  %834 = icmp eq i64 %833, 14
  br i1 %834, label %835, label %837

835:                                              ; preds = %831
  %836 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %842

837:                                              ; preds = %831
  %838 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %839 = load i32, ptr %838, align 4
  %840 = lshr i32 %839, 16
  %841 = and i32 %840, 255
  br label %842

842:                                              ; preds = %837, %835
  %843 = phi i32 [ %836, %835 ], [ %841, %837 ]
  %844 = zext i32 %843 to i64
  %845 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %844
  %846 = load i8, ptr %845, align 1, !tbaa !103
  %847 = icmp eq i8 %846, 9
  br i1 %847, label %882, label %848

848:                                              ; preds = %842
  %849 = load i64, ptr %81, align 8
  %850 = and i64 %849, 65535
  %851 = icmp eq i64 %850, 14
  br i1 %851, label %852, label %854

852:                                              ; preds = %848
  %853 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %859

854:                                              ; preds = %848
  %855 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %856 = load i32, ptr %855, align 4
  %857 = lshr i32 %856, 16
  %858 = and i32 %857, 255
  br label %859

859:                                              ; preds = %854, %852
  %860 = phi i32 [ %853, %852 ], [ %858, %854 ]
  %861 = zext i32 %860 to i64
  %862 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %861
  %863 = load i8, ptr %862, align 1, !tbaa !103
  %864 = icmp eq i8 %863, 11
  br i1 %864, label %882, label %865

865:                                              ; preds = %859
  %866 = load i64, ptr %81, align 8
  %867 = and i64 %866, 65535
  %868 = icmp eq i64 %867, 14
  br i1 %868, label %869, label %871

869:                                              ; preds = %865
  %870 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %876

871:                                              ; preds = %865
  %872 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %873 = load i32, ptr %872, align 4
  %874 = lshr i32 %873, 16
  %875 = and i32 %874, 255
  br label %876

876:                                              ; preds = %871, %869
  %877 = phi i32 [ %870, %869 ], [ %875, %871 ]
  %878 = zext i32 %877 to i64
  %879 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %878
  %880 = load i8, ptr %879, align 1, !tbaa !103
  %881 = icmp eq i8 %880, 17
  br i1 %881, label %882, label %1083

882:                                              ; preds = %876, %859, %842, %825
  %883 = load i64, ptr %81, align 8
  %884 = and i64 %883, 65535
  %885 = icmp eq i64 %884, 14
  br i1 %885, label %886, label %888

886:                                              ; preds = %882
  %887 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %893

888:                                              ; preds = %882
  %889 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %890 = load i32, ptr %889, align 4
  %891 = lshr i32 %890, 16
  %892 = and i32 %891, 255
  br label %893

893:                                              ; preds = %888, %886
  %894 = phi i32 [ %887, %886 ], [ %892, %888 ]
  %895 = zext i32 %894 to i64
  %896 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %895
  %897 = load i8, ptr %896, align 1, !tbaa !103
  %898 = icmp eq i8 %897, 8
  br i1 %898, label %916, label %899

899:                                              ; preds = %893
  %900 = load i64, ptr %81, align 8
  %901 = and i64 %900, 65535
  %902 = icmp eq i64 %901, 14
  br i1 %902, label %903, label %905

903:                                              ; preds = %899
  %904 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %910

905:                                              ; preds = %899
  %906 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %907 = load i32, ptr %906, align 4
  %908 = lshr i32 %907, 16
  %909 = and i32 %908, 255
  br label %910

910:                                              ; preds = %905, %903
  %911 = phi i32 [ %904, %903 ], [ %909, %905 ]
  %912 = zext i32 %911 to i64
  %913 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %912
  %914 = load i8, ptr %913, align 1, !tbaa !103
  %915 = icmp eq i8 %914, 9
  br i1 %915, label %916, label %927

916:                                              ; preds = %910, %893
  %917 = load i64, ptr %81, align 8
  %918 = and i64 %917, 65535
  %919 = icmp eq i64 %918, 14
  br i1 %919, label %920, label %922

920:                                              ; preds = %916
  %921 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %944

922:                                              ; preds = %916
  %923 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %924 = load i32, ptr %923, align 4
  %925 = lshr i32 %924, 16
  %926 = and i32 %925, 255
  br label %944

927:                                              ; preds = %910
  %928 = load i64, ptr %81, align 8
  %929 = and i64 %928, 65535
  %930 = icmp eq i64 %929, 14
  br i1 %930, label %931, label %933

931:                                              ; preds = %927
  %932 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %938

933:                                              ; preds = %927
  %934 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %935 = load i32, ptr %934, align 4
  %936 = lshr i32 %935, 16
  %937 = and i32 %936, 255
  br label %938

938:                                              ; preds = %933, %931
  %939 = phi i32 [ %932, %931 ], [ %937, %933 ]
  %940 = zext i32 %939 to i64
  %941 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %940
  %942 = load i8, ptr %941, align 1, !tbaa !103
  %943 = zext i8 %942 to i32
  br label %944

944:                                              ; preds = %938, %922, %920
  %945 = phi i32 [ %943, %938 ], [ %921, %920 ], [ %926, %922 ]
  %946 = zext i32 %945 to i64
  %947 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %946
  %948 = load i8, ptr %947, align 1, !tbaa !103
  %949 = icmp eq i8 %948, 9
  %950 = load i64, ptr %81, align 8
  %951 = and i64 %950, 65535
  %952 = icmp eq i64 %951, 14
  br i1 %949, label %953, label %1012

953:                                              ; preds = %944
  br i1 %952, label %954, label %956

954:                                              ; preds = %953
  %955 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %961

956:                                              ; preds = %953
  %957 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %958 = load i32, ptr %957, align 4
  %959 = lshr i32 %958, 16
  %960 = and i32 %959, 255
  br label %961

961:                                              ; preds = %956, %954
  %962 = phi i32 [ %955, %954 ], [ %960, %956 ]
  %963 = zext i32 %962 to i64
  %964 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %963
  %965 = load i8, ptr %964, align 1, !tbaa !103
  %966 = icmp eq i8 %965, 8
  br i1 %966, label %984, label %967

967:                                              ; preds = %961
  %968 = load i64, ptr %81, align 8
  %969 = and i64 %968, 65535
  %970 = icmp eq i64 %969, 14
  br i1 %970, label %971, label %973

971:                                              ; preds = %967
  %972 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %978

973:                                              ; preds = %967
  %974 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %975 = load i32, ptr %974, align 4
  %976 = lshr i32 %975, 16
  %977 = and i32 %976, 255
  br label %978

978:                                              ; preds = %973, %971
  %979 = phi i32 [ %972, %971 ], [ %977, %973 ]
  %980 = zext i32 %979 to i64
  %981 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %980
  %982 = load i8, ptr %981, align 1, !tbaa !103
  %983 = icmp eq i8 %982, 9
  br i1 %983, label %984, label %995

984:                                              ; preds = %978, %961
  %985 = load i64, ptr %81, align 8
  %986 = and i64 %985, 65535
  %987 = icmp eq i64 %986, 14
  br i1 %987, label %988, label %990

988:                                              ; preds = %984
  %989 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %1071

990:                                              ; preds = %984
  %991 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %992 = load i32, ptr %991, align 4
  %993 = lshr i32 %992, 16
  %994 = and i32 %993, 255
  br label %1071

995:                                              ; preds = %978
  %996 = load i64, ptr %81, align 8
  %997 = and i64 %996, 65535
  %998 = icmp eq i64 %997, 14
  br i1 %998, label %999, label %1001

999:                                              ; preds = %995
  %1000 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %1006

1001:                                             ; preds = %995
  %1002 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %1003 = load i32, ptr %1002, align 4
  %1004 = lshr i32 %1003, 16
  %1005 = and i32 %1004, 255
  br label %1006

1006:                                             ; preds = %1001, %999
  %1007 = phi i32 [ %1000, %999 ], [ %1005, %1001 ]
  %1008 = zext i32 %1007 to i64
  %1009 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1008
  %1010 = load i8, ptr %1009, align 1, !tbaa !103
  %1011 = zext i8 %1010 to i32
  br label %1071

1012:                                             ; preds = %944
  br i1 %952, label %1013, label %1015

1013:                                             ; preds = %1012
  %1014 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %1020

1015:                                             ; preds = %1012
  %1016 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %1017 = load i32, ptr %1016, align 4
  %1018 = lshr i32 %1017, 16
  %1019 = and i32 %1018, 255
  br label %1020

1020:                                             ; preds = %1015, %1013
  %1021 = phi i32 [ %1014, %1013 ], [ %1019, %1015 ]
  %1022 = zext i32 %1021 to i64
  %1023 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1022
  %1024 = load i8, ptr %1023, align 1, !tbaa !103
  %1025 = icmp eq i8 %1024, 8
  br i1 %1025, label %1043, label %1026

1026:                                             ; preds = %1020
  %1027 = load i64, ptr %81, align 8
  %1028 = and i64 %1027, 65535
  %1029 = icmp eq i64 %1028, 14
  br i1 %1029, label %1030, label %1032

1030:                                             ; preds = %1026
  %1031 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %1037

1032:                                             ; preds = %1026
  %1033 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %1034 = load i32, ptr %1033, align 4
  %1035 = lshr i32 %1034, 16
  %1036 = and i32 %1035, 255
  br label %1037

1037:                                             ; preds = %1032, %1030
  %1038 = phi i32 [ %1031, %1030 ], [ %1036, %1032 ]
  %1039 = zext i32 %1038 to i64
  %1040 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1039
  %1041 = load i8, ptr %1040, align 1, !tbaa !103
  %1042 = icmp eq i8 %1041, 9
  br i1 %1042, label %1043, label %1054

1043:                                             ; preds = %1037, %1020
  %1044 = load i64, ptr %81, align 8
  %1045 = and i64 %1044, 65535
  %1046 = icmp eq i64 %1045, 14
  br i1 %1046, label %1047, label %1049

1047:                                             ; preds = %1043
  %1048 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %1071

1049:                                             ; preds = %1043
  %1050 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %1051 = load i32, ptr %1050, align 4
  %1052 = lshr i32 %1051, 16
  %1053 = and i32 %1052, 255
  br label %1071

1054:                                             ; preds = %1037
  %1055 = load i64, ptr %81, align 8
  %1056 = and i64 %1055, 65535
  %1057 = icmp eq i64 %1056, 14
  br i1 %1057, label %1058, label %1060

1058:                                             ; preds = %1054
  %1059 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %1065

1060:                                             ; preds = %1054
  %1061 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %1062 = load i32, ptr %1061, align 4
  %1063 = lshr i32 %1062, 16
  %1064 = and i32 %1063, 255
  br label %1065

1065:                                             ; preds = %1060, %1058
  %1066 = phi i32 [ %1059, %1058 ], [ %1064, %1060 ]
  %1067 = zext i32 %1066 to i64
  %1068 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1067
  %1069 = load i8, ptr %1068, align 1, !tbaa !103
  %1070 = zext i8 %1069 to i32
  br label %1071

1071:                                             ; preds = %1065, %1049, %1047, %1006, %990, %988
  %1072 = phi i32 [ %1011, %1006 ], [ %989, %988 ], [ %994, %990 ], [ %1070, %1065 ], [ %1048, %1047 ], [ %1053, %1049 ]
  %1073 = add i32 %1072, -38
  %1074 = zext i32 %1073 to i64
  %1075 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1074
  %1076 = load ptr, ptr %1075, align 8, !tbaa !92
  %1077 = getelementptr inbounds %struct.real_format, ptr %1076, i64 0, i32 11
  %1078 = load i8, ptr %1077, align 2, !tbaa !277
  %1079 = icmp eq i8 %1078, 0
  %1080 = load i32, ptr @flag_finite_math_only, align 4
  %1081 = icmp ne i32 %1080, 0
  %1082 = select i1 %1079, i1 true, i1 %1081
  br i1 %1082, label %1083, label %1153

1083:                                             ; preds = %812, %1071, %876
  %1084 = load ptr, ptr %78, align 8, !tbaa !115
  %1085 = tail call i32 @real_onep(ptr noundef %1084) #22
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1153, label %1087

1087:                                             ; preds = %1083, %799
  %1088 = load ptr, ptr %1, align 8, !tbaa !92
  %1089 = icmp eq ptr %1088, null
  br i1 %1089, label %1093, label %1090

1090:                                             ; preds = %1087
  %1091 = load i32, ptr %1088, align 8, !tbaa !111
  %1092 = icmp eq i32 %1091, 1
  br i1 %1092, label %1153, label %1093

1093:                                             ; preds = %1087, %1090
  %1094 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1095 = icmp eq ptr %1094, null
  br i1 %1095, label %1102, label %1096

1096:                                             ; preds = %1093
  %1097 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %1098 = and i32 %1097, 8
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1102, label %1100

1100:                                             ; preds = %1096
  %1101 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 20, i64 1, ptr nonnull %1094)
  br label %1102

1102:                                             ; preds = %1100, %1096, %1093
  %1103 = load ptr, ptr %1, align 8, !tbaa !92
  %1104 = load i32, ptr %1103, align 8, !tbaa !111
  %1105 = add i32 %1104, -1
  store i32 %1105, ptr %1103, align 8, !tbaa !111
  %1106 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %1107 = add nsw i32 %1106, 1
  store i32 %1107, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  br label %1153

1108:                                             ; preds = %93, %93, %93
  %1109 = tail call i32 @integer_zerop(ptr noundef %79) #22
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1111, label %1132, !prof !280

1111:                                             ; preds = %1108
  %1112 = load i64, ptr %81, align 8
  %1113 = trunc i64 %1112 to i16
  switch i16 %1113, label %1153 [
    i16 9, label %1123
    i16 13, label %1114
    i16 14, label %1114
  ], !prof !281

1114:                                             ; preds = %1111, %1111
  %1115 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %1116 = load ptr, ptr %1115, align 8, !tbaa !103
  %1117 = load i64, ptr %1116, align 8
  %1118 = and i64 %1117, 65535
  %1119 = icmp eq i64 %1118, 9
  %1120 = add i32 %0, -63
  %1121 = icmp ult i32 %1120, 2
  %1122 = and i1 %1121, %1119
  br i1 %1122, label %1126, label %1153

1123:                                             ; preds = %1111
  %1124 = add i32 %0, -63
  %1125 = icmp ult i32 %1124, 2
  br i1 %1125, label %1126, label %1153

1126:                                             ; preds = %1123, %1114
  %1127 = icmp eq i32 %0, 64
  %1128 = load ptr, ptr %78, align 8, !tbaa !115
  %1129 = zext i1 %1127 to i32
  %1130 = tail call zeroext i8 @fold_real_zero_addition_p(ptr noundef nonnull %81, ptr noundef %1128, i32 noundef %1129) #22
  %1131 = icmp eq i8 %1130, 0
  br i1 %1131, label %1153, label %1132

1132:                                             ; preds = %1126, %1108
  %1133 = load ptr, ptr %1, align 8, !tbaa !92
  %1134 = icmp eq ptr %1133, null
  br i1 %1134, label %1138, label %1135

1135:                                             ; preds = %1132
  %1136 = load i32, ptr %1133, align 8, !tbaa !111
  %1137 = icmp eq i32 %1136, 1
  br i1 %1137, label %1153, label %1138

1138:                                             ; preds = %1135, %1132
  %1139 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1140 = icmp eq ptr %1139, null
  br i1 %1140, label %1147, label %1141

1141:                                             ; preds = %1138
  %1142 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %1143 = and i32 %1142, 8
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1147, label %1145

1145:                                             ; preds = %1141
  %1146 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 24, i64 1, ptr nonnull %1139)
  br label %1147

1147:                                             ; preds = %1145, %1141, %1138
  %1148 = load ptr, ptr %1, align 8, !tbaa !92
  %1149 = load i32, ptr %1148, align 8, !tbaa !111
  %1150 = add i32 %1149, -1
  store i32 %1150, ptr %1148, align 8, !tbaa !111
  %1151 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %1152 = add nsw i32 %1151, 1
  store i32 %1152, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  br label %1153

1153:                                             ; preds = %1126, %1123, %1114, %1083, %1071, %806, %93, %84, %71, %87, %100, %123, %129, %136, %148, %160, %183, %189, %196, %208, %770, %793, %803, %1090, %1102, %1111, %1135, %1147
  %1154 = icmp eq i32 %0, 63
  br label %1155

1155:                                             ; preds = %1546, %1153
  %1156 = phi ptr [ null, %1153 ], [ %1542, %1546 ]
  %1157 = phi i8 [ 0, %1153 ], [ %1543, %1546 ]
  %1158 = phi i32 [ 0, %1153 ], [ %1545, %1546 ]
  %1159 = load ptr, ptr %1, align 8, !tbaa !92
  %1160 = icmp eq ptr %1159, null
  br i1 %1160, label %1168, label %1161, !prof !282

1161:                                             ; preds = %1155
  %1162 = load i32, ptr %1159, align 8, !tbaa !111
  %1163 = icmp ugt i32 %1162, %1158
  br i1 %1163, label %1164, label %1168, !prof !283

1164:                                             ; preds = %1161
  %1165 = zext i32 %1158 to i64
  %1166 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %1159, i64 0, i32 2, i64 %1165
  %1167 = load ptr, ptr %1166, align 8, !tbaa !92
  br label %1168

1168:                                             ; preds = %1155, %1161, %1164
  %1169 = phi ptr [ %1167, %1164 ], [ null, %1161 ], [ null, %1155 ]
  %1170 = phi i1 [ false, %1164 ], [ true, %1161 ], [ true, %1155 ]
  br i1 %1170, label %1547, label %1171, !prof !284

1171:                                             ; preds = %1168
  switch i32 %0, label %1315 [
    i32 89, label %1172
    i32 87, label %1172
  ], !prof !285

1172:                                             ; preds = %1171, %1171
  %1173 = getelementptr inbounds %struct.operand_entry, ptr %1169, i64 0, i32 1
  %1174 = load ptr, ptr %1173, align 8, !tbaa !115
  %1175 = load i64, ptr %1174, align 8
  %1176 = and i64 %1175, 65535
  %1177 = icmp eq i64 %1176, 141
  br i1 %1177, label %1178, label %1315, !prof !286

1178:                                             ; preds = %1172
  %1179 = getelementptr inbounds %struct.tree_ssa_name, ptr %1174, i64 0, i32 2
  %1180 = load ptr, ptr %1179, align 8, !tbaa !103
  %1181 = load i32, ptr %1180, align 8
  %1182 = and i32 %1181, 255
  %1183 = icmp eq i32 %1182, 6
  br i1 %1183, label %1184, label %1227, !prof !287

1184:                                             ; preds = %1178
  %1185 = lshr i32 %1181, 16
  %1186 = zext nneg i32 %1185 to i64
  %1187 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1186
  %1188 = load i8, ptr %1187, align 1, !tbaa !103
  %1189 = icmp eq i8 %1188, 3
  br i1 %1189, label %1190, label %1206, !prof !288

1190:                                             ; preds = %1184
  %1191 = zext nneg i32 %1182 to i64
  %1192 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1191
  %1193 = load i32, ptr %1192, align 4, !tbaa !107
  %1194 = zext i32 %1193 to i64
  %1195 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1194
  %1196 = load i64, ptr %1195, align 8, !tbaa !131
  %1197 = icmp eq i64 %1196, 0
  br i1 %1197, label %1198, label %1199, !prof !245

1198:                                             ; preds = %1190
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %1199

1199:                                             ; preds = %1198, %1190
  %1200 = getelementptr inbounds i8, ptr %1180, i64 %1196
  %1201 = getelementptr inbounds ptr, ptr %1200, i64 1
  %1202 = load ptr, ptr %1201, align 8, !tbaa !92
  %1203 = load i64, ptr %1202, align 8
  %1204 = trunc i64 %1203 to i32
  %1205 = and i32 %1204, 65535
  br label %1206

1206:                                             ; preds = %1199, %1184
  %1207 = phi i32 [ %1205, %1199 ], [ %1185, %1184 ]
  %1208 = icmp eq i32 %1207, 90
  br i1 %1208, label %1209, label %1227, !prof !289

1209:                                             ; preds = %1206
  %1210 = load i32, ptr %1180, align 8
  %1211 = and i32 %1210, 255
  %1212 = add nsw i32 %1211, -10
  %1213 = icmp ult i32 %1212, -9
  br i1 %1213, label %1227, label %1214

1214:                                             ; preds = %1209
  %1215 = zext nneg i32 %1211 to i64
  %1216 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1215
  %1217 = load i32, ptr %1216, align 4, !tbaa !107
  %1218 = zext i32 %1217 to i64
  %1219 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1218
  %1220 = load i64, ptr %1219, align 8, !tbaa !131
  %1221 = icmp eq i64 %1220, 0
  br i1 %1221, label %1222, label %1223

1222:                                             ; preds = %1214
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %1223

1223:                                             ; preds = %1222, %1214
  %1224 = getelementptr inbounds i8, ptr %1180, i64 %1220
  %1225 = getelementptr inbounds ptr, ptr %1224, i64 1
  %1226 = load ptr, ptr %1225, align 8, !tbaa !92
  br label %1227

1227:                                             ; preds = %1178, %1206, %1209, %1223
  %1228 = phi ptr [ null, %1178 ], [ null, %1206 ], [ %1226, %1223 ], [ null, %1209 ]
  %1229 = icmp eq ptr %1228, null
  br i1 %1229, label %1315, label %1230, !prof !290

1230:                                             ; preds = %1227
  %1231 = load ptr, ptr %1, align 8, !tbaa !92
  %1232 = icmp eq ptr %1231, null
  br label %1233

1233:                                             ; preds = %1230, %1251
  %1234 = phi i32 [ %1235, %1251 ], [ %1158, %1230 ]
  %1235 = add i32 %1234, 1
  br i1 %1232, label %1243, label %1236

1236:                                             ; preds = %1233
  %1237 = load i32, ptr %1231, align 8, !tbaa !111
  %1238 = icmp ugt i32 %1237, %1235
  br i1 %1238, label %1239, label %1243

1239:                                             ; preds = %1236
  %1240 = zext i32 %1235 to i64
  %1241 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %1231, i64 0, i32 2, i64 %1240
  %1242 = load ptr, ptr %1241, align 8, !tbaa !92
  br label %1243

1243:                                             ; preds = %1239, %1236, %1233
  %1244 = phi ptr [ %1242, %1239 ], [ null, %1236 ], [ null, %1233 ]
  %1245 = phi i1 [ false, %1239 ], [ true, %1236 ], [ true, %1233 ]
  br i1 %1245, label %1315, label %1246

1246:                                             ; preds = %1243
  %1247 = load i32, ptr %1244, align 8, !tbaa !113
  %1248 = load i32, ptr %1169, align 8, !tbaa !113
  %1249 = add i32 %1248, -1
  %1250 = icmp ult i32 %1247, %1249
  br i1 %1250, label %1315, label %1251

1251:                                             ; preds = %1246
  %1252 = getelementptr inbounds %struct.operand_entry, ptr %1244, i64 0, i32 1
  %1253 = load ptr, ptr %1252, align 8, !tbaa !115
  %1254 = icmp eq ptr %1253, %1228
  br i1 %1254, label %1255, label %1233, !llvm.loop !291

1255:                                             ; preds = %1251
  %1256 = getelementptr inbounds %struct.operand_entry, ptr %1244, i64 0, i32 1
  %1257 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1258 = icmp eq ptr %1257, null
  br i1 %1258, label %1281, label %1259

1259:                                             ; preds = %1255
  %1260 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %1261 = and i32 %1260, 8
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1281, label %1263

1263:                                             ; preds = %1259
  %1264 = icmp eq i32 %0, 89
  %1265 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr nonnull %1257)
  %1266 = load ptr, ptr @dump_file, align 8, !tbaa !92
  tail call void @print_generic_expr(ptr noundef %1266, ptr noundef nonnull %1228, i32 noundef 0) #22
  switch i32 %0, label %1271 [
    i32 89, label %1267
    i32 87, label %1267
  ]

1267:                                             ; preds = %1263, %1263
  %1268 = select i1 %1264, ptr @.str.23, ptr @.str.24
  %1269 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1270 = tail call i64 @fwrite(ptr nonnull %1268, i64 4, i64 1, ptr %1269)
  br label %1271

1271:                                             ; preds = %1263, %1267
  %1272 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1273 = load ptr, ptr %1256, align 8, !tbaa !115
  tail call void @print_generic_expr(ptr noundef %1272, ptr noundef %1273, i32 noundef 0) #22
  br i1 %1264, label %1274, label %1277

1274:                                             ; preds = %1271
  %1275 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1276 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 6, i64 1, ptr %1275)
  br label %1281

1277:                                             ; preds = %1271
  switch i32 %0, label %1298 [
    i32 87, label %1278
    i32 89, label %1282
  ]

1278:                                             ; preds = %1277
  %1279 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1280 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 7, i64 1, ptr %1279)
  br label %1281

1281:                                             ; preds = %1278, %1274, %1259, %1255
  switch i32 %0, label %1298 [
    i32 89, label %1282
    i32 87, label %1288
  ]

1282:                                             ; preds = %1277, %1281
  %1283 = load ptr, ptr %1256, align 8, !tbaa !115
  %1284 = getelementptr inbounds %struct.tree_common, ptr %1283, i64 0, i32 2
  %1285 = load ptr, ptr %1284, align 8, !tbaa !103
  %1286 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !92
  %1287 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1285, ptr noundef %1286) #22
  br label %1296

1288:                                             ; preds = %1281
  %1289 = load ptr, ptr %1256, align 8, !tbaa !115
  %1290 = getelementptr inbounds %struct.tree_common, ptr %1289, i64 0, i32 2
  %1291 = load ptr, ptr %1290, align 8, !tbaa !103
  %1292 = getelementptr inbounds %struct.tree_type, ptr %1291, i64 0, i32 6
  %1293 = load i32, ptr %1292, align 4
  %1294 = and i32 %1293, 1023
  %1295 = tail call ptr @build_low_bits_mask(ptr noundef %1291, i32 noundef %1294) #22
  br label %1296

1296:                                             ; preds = %1282, %1288
  %1297 = phi ptr [ %1295, %1288 ], [ %1287, %1282 ]
  store ptr %1297, ptr %1256, align 8, !tbaa !115
  br label %1298

1298:                                             ; preds = %1296, %1281, %1277
  %1299 = load ptr, ptr %1, align 8, !tbaa !92
  %1300 = icmp eq ptr %1299, null
  br i1 %1300, label %1306, label %1301

1301:                                             ; preds = %1298
  %1302 = load i32, ptr %1299, align 8, !tbaa !111
  %1303 = add i32 %1302, -1
  %1304 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %1305 = add i32 %1303, %1304
  store i32 %1305, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  tail call void @free(ptr noundef %1299)
  br label %1309

1306:                                             ; preds = %1298
  %1307 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %1308 = add i32 %1307, -1
  store i32 %1308, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  br label %1309

1309:                                             ; preds = %1306, %1301
  store ptr null, ptr %1, align 8, !tbaa !92
  %1310 = tail call ptr @vec_heap_p_reserve(ptr noundef null, i32 noundef 1) #22
  store ptr %1310, ptr %1, align 8, !tbaa !92
  %1311 = load i32, ptr %1310, align 8, !tbaa !111
  %1312 = add i32 %1311, 1
  store i32 %1312, ptr %1310, align 8, !tbaa !111
  %1313 = zext i32 %1311 to i64
  %1314 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %1310, i64 0, i32 2, i64 %1313
  store ptr %1244, ptr %1314, align 8, !tbaa !92
  br label %1541

1315:                                             ; preds = %1246, %1243, %1227, %1171, %1172
  %1316 = icmp eq ptr %1156, null
  br i1 %1316, label %1404, label %1317, !prof !257

1317:                                             ; preds = %1315
  %1318 = getelementptr inbounds %struct.operand_entry, ptr %1156, i64 0, i32 1
  %1319 = load ptr, ptr %1318, align 8, !tbaa !115
  %1320 = getelementptr inbounds %struct.operand_entry, ptr %1169, i64 0, i32 1
  %1321 = load ptr, ptr %1320, align 8, !tbaa !115
  %1322 = icmp eq ptr %1319, %1321
  br i1 %1322, label %1323, label %1404, !prof !252

1323:                                             ; preds = %1317
  switch i32 %0, label %1404 [
    i32 81, label %1324
    i32 80, label %1324
    i32 87, label %1324
    i32 89, label %1324
    i32 88, label %1355
  ]

1324:                                             ; preds = %1323, %1323, %1323, %1323
  %1325 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1326 = icmp eq ptr %1325, null
  br i1 %1326, label %1343, label %1327

1327:                                             ; preds = %1324
  %1328 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %1329 = and i32 %1328, 8
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1343, label %1331

1331:                                             ; preds = %1327
  %1332 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr nonnull %1325)
  %1333 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1334 = load ptr, ptr %1320, align 8, !tbaa !115
  tail call void @print_generic_expr(ptr noundef %1333, ptr noundef %1334, i32 noundef 0) #22
  %1335 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1336 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 12, i64 1, ptr %1335)
  %1337 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1338 = load ptr, ptr %1318, align 8, !tbaa !115
  tail call void @print_generic_expr(ptr noundef %1337, ptr noundef %1338, i32 noundef 0) #22
  %1339 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1340 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 4, i64 1, ptr %1339)
  %1341 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1342 = load ptr, ptr %1318, align 8, !tbaa !115
  tail call void @print_generic_stmt(ptr noundef %1341, ptr noundef %1342, i32 noundef 0) #22
  br label %1343

1343:                                             ; preds = %1331, %1327, %1324
  %1344 = load ptr, ptr %1, align 8, !tbaa !92
  %1345 = load i32, ptr %1344, align 8, !tbaa !111
  %1346 = zext i32 %1158 to i64
  %1347 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %1344, i64 0, i32 2, i64 %1346
  %1348 = getelementptr inbounds ptr, ptr %1347, i64 1
  %1349 = add i32 %1345, -1
  store i32 %1349, ptr %1344, align 8, !tbaa !111
  %1350 = sub i32 %1349, %1158
  %1351 = zext i32 %1350 to i64
  %1352 = shl nuw nsw i64 %1351, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %1347, ptr nonnull align 8 %1348, i64 %1352, i1 false)
  %1353 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %1354 = add nsw i32 %1353, 1
  store i32 %1354, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  br label %1404

1355:                                             ; preds = %1323
  %1356 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1357 = icmp eq ptr %1356, null
  br i1 %1357, label %1372, label %1358

1358:                                             ; preds = %1355
  %1359 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %1360 = and i32 %1359, 8
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1372, label %1362

1362:                                             ; preds = %1358
  %1363 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr nonnull %1356)
  %1364 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1365 = load ptr, ptr %1320, align 8, !tbaa !115
  tail call void @print_generic_expr(ptr noundef %1364, ptr noundef %1365, i32 noundef 0) #22
  %1366 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1367 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 3, i64 1, ptr %1366)
  %1368 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1369 = load ptr, ptr %1318, align 8, !tbaa !115
  tail call void @print_generic_expr(ptr noundef %1368, ptr noundef %1369, i32 noundef 0) #22
  %1370 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1371 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 12, i64 1, ptr %1370)
  br label %1372

1372:                                             ; preds = %1362, %1358, %1355
  %1373 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %1374 = add nsw i32 %1373, 2
  store i32 %1374, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %1375 = load ptr, ptr %1, align 8, !tbaa !92
  %1376 = icmp eq ptr %1375, null
  br i1 %1376, label %1386, label %1377

1377:                                             ; preds = %1372
  %1378 = load i32, ptr %1375, align 8, !tbaa !111
  %1379 = icmp eq i32 %1378, 2
  br i1 %1379, label %1380, label %1386

1380:                                             ; preds = %1377
  tail call void @free(ptr noundef %1375)
  store ptr null, ptr %1, align 8, !tbaa !92
  %1381 = load ptr, ptr %1318, align 8, !tbaa !115
  %1382 = getelementptr inbounds %struct.tree_common, ptr %1381, i64 0, i32 2
  %1383 = load ptr, ptr %1382, align 8, !tbaa !103
  %1384 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !92
  %1385 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1383, ptr noundef %1384) #22
  tail call fastcc void @add_to_ops_vec(ptr noundef nonnull %1, ptr noundef %1385)
  br label %1404

1386:                                             ; preds = %1372, %1377
  %1387 = add i32 %1158, -1
  %1388 = load i32, ptr %1375, align 8, !tbaa !111
  %1389 = zext i32 %1387 to i64
  %1390 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %1375, i64 0, i32 2, i64 %1389
  %1391 = getelementptr inbounds ptr, ptr %1390, i64 1
  %1392 = add i32 %1388, -1
  store i32 %1392, ptr %1375, align 8, !tbaa !111
  %1393 = sub i32 %1388, %1158
  %1394 = zext i32 %1393 to i64
  %1395 = shl nuw nsw i64 %1394, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %1390, ptr nonnull align 8 %1391, i64 %1395, i1 false)
  %1396 = load ptr, ptr %1, align 8, !tbaa !92
  %1397 = load i32, ptr %1396, align 8, !tbaa !111
  %1398 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %1396, i64 0, i32 2, i64 %1389
  %1399 = getelementptr inbounds ptr, ptr %1398, i64 1
  %1400 = add i32 %1397, -1
  store i32 %1400, ptr %1396, align 8, !tbaa !111
  %1401 = sub i32 %1397, %1158
  %1402 = zext i32 %1401 to i64
  %1403 = shl nuw nsw i64 %1402, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %1398, ptr nonnull align 8 %1399, i64 %1403, i1 false)
  br label %1404

1404:                                             ; preds = %1315, %1317, %1323, %1343, %1380, %1386
  %1405 = phi i1 [ true, %1315 ], [ true, %1323 ], [ false, %1380 ], [ true, %1386 ], [ true, %1343 ], [ true, %1317 ]
  %1406 = phi i1 [ true, %1315 ], [ true, %1323 ], [ false, %1380 ], [ false, %1386 ], [ false, %1343 ], [ true, %1317 ]
  br i1 %1406, label %1407, label %1535, !prof !292

1407:                                             ; preds = %1404
  %1408 = and i1 %1154, %1405
  br i1 %1408, label %1409, label %1539, !prof !293

1409:                                             ; preds = %1407
  %1410 = getelementptr inbounds %struct.operand_entry, ptr %1169, i64 0, i32 1
  %1411 = load ptr, ptr %1410, align 8, !tbaa !115
  %1412 = load i64, ptr %1411, align 8
  %1413 = and i64 %1412, 65535
  %1414 = icmp eq i64 %1413, 141
  br i1 %1414, label %1415, label %1539, !prof !207

1415:                                             ; preds = %1409
  %1416 = getelementptr inbounds %struct.tree_ssa_name, ptr %1411, i64 0, i32 2
  %1417 = load ptr, ptr %1416, align 8, !tbaa !103
  %1418 = load i32, ptr %1417, align 8
  %1419 = and i32 %1418, 255
  %1420 = icmp eq i32 %1419, 6
  br i1 %1420, label %1421, label %1464, !prof !287

1421:                                             ; preds = %1415
  %1422 = lshr i32 %1418, 16
  %1423 = zext nneg i32 %1422 to i64
  %1424 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1423
  %1425 = load i8, ptr %1424, align 1, !tbaa !103
  %1426 = icmp eq i8 %1425, 3
  br i1 %1426, label %1427, label %1443, !prof !288

1427:                                             ; preds = %1421
  %1428 = zext nneg i32 %1419 to i64
  %1429 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1428
  %1430 = load i32, ptr %1429, align 4, !tbaa !107
  %1431 = zext i32 %1430 to i64
  %1432 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1431
  %1433 = load i64, ptr %1432, align 8, !tbaa !131
  %1434 = icmp eq i64 %1433, 0
  br i1 %1434, label %1435, label %1436, !prof !245

1435:                                             ; preds = %1427
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %1436

1436:                                             ; preds = %1435, %1427
  %1437 = getelementptr inbounds i8, ptr %1417, i64 %1433
  %1438 = getelementptr inbounds ptr, ptr %1437, i64 1
  %1439 = load ptr, ptr %1438, align 8, !tbaa !92
  %1440 = load i64, ptr %1439, align 8
  %1441 = trunc i64 %1440 to i32
  %1442 = and i32 %1441, 65535
  br label %1443

1443:                                             ; preds = %1436, %1421
  %1444 = phi i32 [ %1442, %1436 ], [ %1422, %1421 ]
  %1445 = icmp eq i32 %1444, 79
  br i1 %1445, label %1446, label %1464, !prof !289

1446:                                             ; preds = %1443
  %1447 = load i32, ptr %1417, align 8
  %1448 = and i32 %1447, 255
  %1449 = add nsw i32 %1448, -10
  %1450 = icmp ult i32 %1449, -9
  br i1 %1450, label %1464, label %1451

1451:                                             ; preds = %1446
  %1452 = zext nneg i32 %1448 to i64
  %1453 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1452
  %1454 = load i32, ptr %1453, align 4, !tbaa !107
  %1455 = zext i32 %1454 to i64
  %1456 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1455
  %1457 = load i64, ptr %1456, align 8, !tbaa !131
  %1458 = icmp eq i64 %1457, 0
  br i1 %1458, label %1459, label %1460

1459:                                             ; preds = %1451
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %1460

1460:                                             ; preds = %1459, %1451
  %1461 = getelementptr inbounds i8, ptr %1417, i64 %1457
  %1462 = getelementptr inbounds ptr, ptr %1461, i64 1
  %1463 = load ptr, ptr %1462, align 8, !tbaa !92
  br label %1464

1464:                                             ; preds = %1415, %1443, %1446, %1460
  %1465 = phi ptr [ null, %1415 ], [ null, %1443 ], [ %1463, %1460 ], [ null, %1446 ]
  %1466 = icmp eq ptr %1465, null
  br i1 %1466, label %1539, label %1467, !prof !294

1467:                                             ; preds = %1464
  %1468 = load ptr, ptr %1, align 8, !tbaa !92
  %1469 = icmp eq ptr %1468, null
  br label %1470

1470:                                             ; preds = %1467, %1488
  %1471 = phi i32 [ %1472, %1488 ], [ %1158, %1467 ]
  %1472 = add i32 %1471, 1
  br i1 %1469, label %1480, label %1473

1473:                                             ; preds = %1470
  %1474 = load i32, ptr %1468, align 8, !tbaa !111
  %1475 = icmp ugt i32 %1474, %1472
  br i1 %1475, label %1476, label %1480

1476:                                             ; preds = %1473
  %1477 = zext i32 %1472 to i64
  %1478 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %1468, i64 0, i32 2, i64 %1477
  %1479 = load ptr, ptr %1478, align 8, !tbaa !92
  br label %1480

1480:                                             ; preds = %1476, %1473, %1470
  %1481 = phi ptr [ %1479, %1476 ], [ null, %1473 ], [ null, %1470 ]
  %1482 = phi i1 [ false, %1476 ], [ true, %1473 ], [ true, %1470 ]
  br i1 %1482, label %1539, label %1483

1483:                                             ; preds = %1480
  %1484 = load i32, ptr %1481, align 8, !tbaa !113
  %1485 = load i32, ptr %1169, align 8, !tbaa !113
  %1486 = add i32 %1485, -1
  %1487 = icmp ult i32 %1484, %1486
  br i1 %1487, label %1539, label %1488

1488:                                             ; preds = %1483
  %1489 = getelementptr inbounds %struct.operand_entry, ptr %1481, i64 0, i32 1
  %1490 = load ptr, ptr %1489, align 8, !tbaa !115
  %1491 = icmp eq ptr %1490, %1465
  br i1 %1491, label %1492, label %1470, !llvm.loop !295

1492:                                             ; preds = %1488
  %1493 = getelementptr inbounds %struct.operand_entry, ptr %1481, i64 0, i32 1
  %1494 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1495 = icmp eq ptr %1494, null
  br i1 %1495, label %1509, label %1496

1496:                                             ; preds = %1492
  %1497 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %1498 = and i32 %1497, 8
  %1499 = icmp eq i32 %1498, 0
  br i1 %1499, label %1509, label %1500

1500:                                             ; preds = %1496
  %1501 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr nonnull %1494)
  %1502 = load ptr, ptr @dump_file, align 8, !tbaa !92
  tail call void @print_generic_expr(ptr noundef %1502, ptr noundef nonnull %1465, i32 noundef 0) #22
  %1503 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1504 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 4, i64 1, ptr %1503)
  %1505 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1506 = load ptr, ptr %1493, align 8, !tbaa !115
  tail call void @print_generic_expr(ptr noundef %1505, ptr noundef %1506, i32 noundef 0) #22
  %1507 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %1508 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 6, i64 1, ptr %1507)
  br label %1509

1509:                                             ; preds = %1500, %1496, %1492
  %1510 = load ptr, ptr %1, align 8, !tbaa !92
  %1511 = load i32, ptr %1510, align 8, !tbaa !111
  %1512 = zext i32 %1472 to i64
  %1513 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %1510, i64 0, i32 2, i64 %1512
  %1514 = getelementptr inbounds ptr, ptr %1513, i64 1
  %1515 = add i32 %1511, -1
  store i32 %1515, ptr %1510, align 8, !tbaa !111
  %1516 = sub i32 %1515, %1472
  %1517 = zext i32 %1516 to i64
  %1518 = shl nuw nsw i64 %1517, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %1513, ptr nonnull align 8 %1514, i64 %1518, i1 false)
  %1519 = load ptr, ptr %1493, align 8, !tbaa !115
  %1520 = getelementptr inbounds %struct.tree_common, ptr %1519, i64 0, i32 2
  %1521 = load ptr, ptr %1520, align 8, !tbaa !103
  %1522 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !92
  %1523 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1521, ptr noundef %1522) #22
  tail call fastcc void @add_to_ops_vec(ptr noundef nonnull %1, ptr noundef %1523)
  %1524 = load ptr, ptr %1, align 8, !tbaa !92
  %1525 = load i32, ptr %1524, align 8, !tbaa !111
  %1526 = zext i32 %1158 to i64
  %1527 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %1524, i64 0, i32 2, i64 %1526
  %1528 = getelementptr inbounds ptr, ptr %1527, i64 1
  %1529 = add i32 %1525, -1
  store i32 %1529, ptr %1524, align 8, !tbaa !111
  %1530 = sub i32 %1529, %1158
  %1531 = zext i32 %1530 to i64
  %1532 = shl nuw nsw i64 %1531, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %1527, ptr nonnull align 8 %1528, i64 %1532, i1 false)
  %1533 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  %1534 = add nsw i32 %1533, 1
  store i32 %1534, ptr getelementptr inbounds (%struct.anon, ptr @reassociate_stats, i64 0, i32 2), align 4, !tbaa !142
  br label %1535

1535:                                             ; preds = %1509, %1404
  %1536 = select i1 %1405, ptr null, ptr %1156
  %1537 = select i1 %1405, i8 1, i8 %1157
  %1538 = select i1 %1405, i32 3, i32 1
  br label %1541, !llvm.loop !296

1539:                                             ; preds = %1483, %1480, %1464, %1409, %1407
  %1540 = add i32 %1158, 1
  br label %1541

1541:                                             ; preds = %1309, %1535, %1539
  %1542 = phi ptr [ %1169, %1539 ], [ %1536, %1535 ], [ %1156, %1309 ]
  %1543 = phi i8 [ %1157, %1539 ], [ %1537, %1535 ], [ %1157, %1309 ]
  %1544 = phi i32 [ 0, %1539 ], [ %1538, %1535 ], [ 1, %1309 ]
  %1545 = phi i32 [ %1540, %1539 ], [ %1158, %1535 ], [ %1158, %1309 ]
  switch i32 %1544, label %1550 [
    i32 0, label %1546
    i32 3, label %1546
  ], !prof !297

1546:                                             ; preds = %1541, %1541
  br label %1155, !llvm.loop !296

1547:                                             ; preds = %1168
  %1548 = icmp eq i8 %1157, 0
  br i1 %1548, label %1550, label %1549, !prof !200

1549:                                             ; preds = %1547, %65
  br label %3

1550:                                             ; preds = %1541, %1547, %8
  ret void
}

declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @remove_visited_stmt_chain(ptr noundef %0) unnamed_addr #9 !prof !91 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %41

7:                                                ; preds = %1, %34
  %8 = phi ptr [ %37, %34 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 5
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 5, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !185
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !107
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %9) #22
  br label %18

18:                                               ; preds = %7, %13, %16
  %19 = phi i8 [ %17, %16 ], [ 1, %7 ], [ 0, %13 ]
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 767
  %26 = icmp eq i32 %25, 518
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @gss_for_code_, i64 0, i64 6), align 4, !tbaa !107
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !131
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %34

34:                                               ; preds = %33, %27
  %35 = getelementptr inbounds i8, ptr %23, i64 %31
  %36 = getelementptr inbounds ptr, ptr %35, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %23) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !157
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #22
  call void @release_defs(ptr noundef nonnull %23) #22
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 141
  br i1 %40, label %7, label %41, !llvm.loop !298

41:                                               ; preds = %18, %34, %21, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rewrite_expr_tree(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #11 !prof !250 !PGOFuncName !299 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 255
  %10 = add nsw i32 %9, -10
  %11 = icmp ult i32 %10, -9
  br i1 %11, label %25, label %12, !prof !252

12:                                               ; preds = %4
  %13 = zext nneg i32 %9 to i64
  %14 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !107
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !131
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21, !prof !252

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %21

21:                                               ; preds = %20, %12
  %22 = getelementptr inbounds i8, ptr %0, i64 %18
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !92
  br label %25

25:                                               ; preds = %4, %21
  %26 = phi ptr [ %24, %21 ], [ null, %4 ]
  %27 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !103
  %29 = icmp ugt i32 %28, 2
  br i1 %29, label %30, label %48, !prof !253

30:                                               ; preds = %25
  %31 = load i32, ptr %0, align 8
  %32 = and i32 %31, 255
  %33 = add nsw i32 %32, -10
  %34 = icmp ult i32 %33, -9
  br i1 %34, label %48, label %35, !prof !252

35:                                               ; preds = %30
  %36 = zext nneg i32 %32 to i64
  %37 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !107
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !131
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44, !prof !252

43:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %44

44:                                               ; preds = %43, %35
  %45 = getelementptr inbounds i8, ptr %0, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !92
  br label %48

48:                                               ; preds = %25, %30, %44
  %49 = phi ptr [ null, %25 ], [ %47, %44 ], [ null, %30 ]
  %50 = add i32 %1, 3
  %51 = icmp eq ptr %2, null
  br i1 %51, label %54, label %52, !prof !252

52:                                               ; preds = %48
  %53 = load i32, ptr %2, align 8, !tbaa !111
  br label %54

54:                                               ; preds = %48, %52
  %55 = phi i32 [ %53, %52 ], [ 0, %48 ]
  %56 = icmp eq i32 %50, %55
  br i1 %56, label %57, label %127, !prof !300

57:                                               ; preds = %54
  %58 = zext i32 %1 to i64
  %59 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %2, i64 0, i32 2, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !92
  %61 = add i32 %1, 1
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %2, i64 0, i32 2, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !92
  %65 = add i32 %1, 2
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %2, i64 0, i32 2, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !92
  %69 = load i32, ptr %60, align 8, !tbaa !113
  %70 = load i32, ptr %64, align 8, !tbaa !113
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75, !prof !301

72:                                               ; preds = %57
  %73 = load i32, ptr %68, align 8, !tbaa !113
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %90, !prof !302

75:                                               ; preds = %72, %57
  %76 = getelementptr inbounds %struct.operand_entry, ptr %68, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !115
  %78 = tail call fastcc zeroext i8 @is_phi_for_stmt(ptr noundef nonnull %0, ptr noundef %77), !range !170
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %97, label %80, !prof !303

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.operand_entry, ptr %60, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !115
  %83 = tail call fastcc zeroext i8 @is_phi_for_stmt(ptr noundef nonnull %0, ptr noundef %82), !range !170
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.operand_entry, ptr %64, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !115
  %88 = tail call fastcc zeroext i8 @is_phi_for_stmt(ptr noundef nonnull %0, ptr noundef %87), !range !170
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85, %72
  %91 = load i32, ptr %68, align 8, !tbaa.struct !304
  %92 = getelementptr inbounds i8, ptr %68, i64 8
  %93 = load ptr, ptr %92, align 8, !tbaa.struct !159
  %94 = getelementptr inbounds %struct.operand_entry, ptr %60, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !115
  store ptr %95, ptr %92, align 8, !tbaa !115
  %96 = load i32, ptr %60, align 8, !tbaa !113
  store i32 %96, ptr %68, align 8, !tbaa !113
  store ptr %93, ptr %94, align 8, !tbaa !115
  br label %125

97:                                               ; preds = %85, %80, %75
  %98 = load i32, ptr %60, align 8, !tbaa !113
  %99 = load i32, ptr %68, align 8, !tbaa !113
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %104, !prof !303

101:                                              ; preds = %97
  %102 = load i32, ptr %64, align 8, !tbaa !113
  %103 = icmp eq i32 %102, %99
  br i1 %103, label %104, label %118, !prof !303

104:                                              ; preds = %101, %97
  %105 = getelementptr inbounds %struct.operand_entry, ptr %64, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !115
  %107 = tail call fastcc zeroext i8 @is_phi_for_stmt(ptr noundef nonnull %0, ptr noundef %106), !range !170
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %127, label %109, !prof !303

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.operand_entry, ptr %60, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !115
  %112 = tail call fastcc zeroext i8 @is_phi_for_stmt(ptr noundef nonnull %0, ptr noundef %111), !range !170
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %109
  %115 = load ptr, ptr %76, align 8, !tbaa !115
  %116 = tail call fastcc zeroext i8 @is_phi_for_stmt(ptr noundef nonnull %0, ptr noundef %115), !range !170
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %114, %101
  %119 = load i32, ptr %64, align 8, !tbaa.struct !304
  %120 = getelementptr inbounds i8, ptr %64, i64 8
  %121 = load ptr, ptr %120, align 8, !tbaa.struct !159
  %122 = getelementptr inbounds %struct.operand_entry, ptr %60, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !115
  store ptr %123, ptr %120, align 8, !tbaa !115
  %124 = load i32, ptr %60, align 8, !tbaa !113
  store i32 %124, ptr %64, align 8, !tbaa !113
  store ptr %121, ptr %122, align 8, !tbaa !115
  br label %125

125:                                              ; preds = %118, %90
  %126 = phi i32 [ %91, %90 ], [ %119, %118 ]
  store i32 %126, ptr %60, align 8, !tbaa !113
  br label %127

127:                                              ; preds = %125, %114, %109, %104, %54
  %128 = add i32 %1, 2
  br i1 %51, label %131, label %129, !prof !252

129:                                              ; preds = %127
  %130 = load i32, ptr %2, align 8, !tbaa !111
  br label %131

131:                                              ; preds = %127, %129
  %132 = phi i32 [ %130, %129 ], [ 0, %127 ]
  %133 = icmp eq i32 %128, %132
  br i1 %133, label %134, label %229, !prof !256

134:                                              ; preds = %131
  %135 = zext i32 %1 to i64
  %136 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %2, i64 0, i32 2, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !92
  %138 = add i32 %1, 1
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %2, i64 0, i32 2, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !92
  %142 = getelementptr inbounds %struct.operand_entry, ptr %137, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !115
  %144 = icmp eq ptr %26, %143
  br i1 %144, label %145, label %149, !prof !305

145:                                              ; preds = %134
  %146 = getelementptr inbounds %struct.operand_entry, ptr %141, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !115
  %148 = icmp eq ptr %49, %147
  br i1 %148, label %334, label %149, !prof !306

149:                                              ; preds = %145, %134
  %150 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %151 = icmp eq ptr %150, null
  br i1 %151, label %159, label %152, !prof !307

152:                                              ; preds = %149
  %153 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %154 = and i32 %153, 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 13, i64 1, ptr nonnull %150)
  %158 = load ptr, ptr @dump_file, align 8, !tbaa !92
  tail call void @print_gimple_stmt(ptr noundef %158, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #22
  br label %159

159:                                              ; preds = %156, %152, %149
  %160 = load ptr, ptr %142, align 8, !tbaa !115
  %161 = load i32, ptr %0, align 8
  %162 = and i32 %161, 255
  %163 = add nsw i32 %162, -10
  %164 = icmp ult i32 %163, -9
  br i1 %164, label %168, label %165, !prof !308

165:                                              ; preds = %159
  %166 = load i32, ptr %27, align 4, !tbaa !103
  %167 = icmp ugt i32 %166, 1
  br i1 %167, label %169, label %168, !prof !307

168:                                              ; preds = %165, %159
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1665, ptr noundef nonnull @.str.4) #22
  br label %169

169:                                              ; preds = %168, %165
  %170 = load i32, ptr %0, align 8
  %171 = and i32 %170, 255
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !107
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !131
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %180, !prof !308

179:                                              ; preds = %169
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %180

180:                                              ; preds = %169, %179
  %181 = getelementptr inbounds i8, ptr %0, i64 %177
  %182 = getelementptr inbounds ptr, ptr %181, i64 1
  store ptr %160, ptr %182, align 8, !tbaa !92
  %183 = getelementptr inbounds %struct.operand_entry, ptr %141, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !115
  %185 = load i32, ptr %0, align 8
  %186 = and i32 %185, 255
  %187 = add nsw i32 %186, -10
  %188 = icmp ult i32 %187, -9
  br i1 %188, label %192, label %189, !prof !308

189:                                              ; preds = %180
  %190 = load i32, ptr %27, align 4, !tbaa !103
  %191 = icmp ugt i32 %190, 2
  br i1 %191, label %193, label %192, !prof !307

192:                                              ; preds = %189, %180
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1665, ptr noundef nonnull @.str.4) #22
  br label %193

193:                                              ; preds = %192, %189
  %194 = load i32, ptr %0, align 8
  %195 = and i32 %194, 255
  %196 = zext nneg i32 %195 to i64
  %197 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !107
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %199
  %201 = load i64, ptr %200, align 8, !tbaa !131
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %204, !prof !308

203:                                              ; preds = %193
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %204

204:                                              ; preds = %193, %203
  %205 = getelementptr inbounds i8, ptr %0, i64 %201
  %206 = getelementptr inbounds ptr, ptr %205, i64 2
  store ptr %184, ptr %206, align 8, !tbaa !92
  %207 = load i32, ptr %0, align 8
  %208 = and i32 %207, 255
  %209 = add nsw i32 %208, -10
  %210 = icmp ult i32 %209, -9
  br i1 %210, label %212, label %211, !prof !308

211:                                              ; preds = %204
  tail call void @gimple_set_modified(ptr noundef nonnull %0, i8 noundef zeroext 1) #22
  tail call void @update_stmt_operands(ptr noundef nonnull %0) #22
  br label %212

212:                                              ; preds = %204, %211
  %213 = load ptr, ptr %142, align 8, !tbaa !115
  %214 = icmp eq ptr %26, %213
  br i1 %214, label %219, label %215, !prof !309

215:                                              ; preds = %212
  %216 = load ptr, ptr %183, align 8, !tbaa !115
  %217 = icmp eq ptr %26, %216
  br i1 %217, label %219, label %218, !prof !310

218:                                              ; preds = %215
  tail call fastcc void @remove_visited_stmt_chain(ptr noundef %26)
  br label %219

219:                                              ; preds = %218, %215, %212
  %220 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %221 = icmp eq ptr %220, null
  br i1 %221, label %334, label %222, !prof !307

222:                                              ; preds = %219
  %223 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %224 = and i32 %223, 8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %334, label %226

226:                                              ; preds = %222
  %227 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 6, i64 1, ptr nonnull %220)
  %228 = load ptr, ptr @dump_file, align 8, !tbaa !92
  tail call void @print_gimple_stmt(ptr noundef %228, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #22
  br label %334

229:                                              ; preds = %131
  br i1 %51, label %232, label %230, !prof !187

230:                                              ; preds = %229
  %231 = load i32, ptr %2, align 8, !tbaa !111
  br label %232

232:                                              ; preds = %229, %230
  %233 = phi i32 [ %231, %230 ], [ 0, %229 ]
  %234 = icmp ult i32 %128, %233
  br i1 %234, label %236, label %235, !prof !188

235:                                              ; preds = %232
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1395, ptr noundef nonnull @.str.4) #22
  br label %236

236:                                              ; preds = %232, %235
  %237 = zext i32 %1 to i64
  %238 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %2, i64 0, i32 2, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !92
  %240 = getelementptr inbounds %struct.operand_entry, ptr %239, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !115
  %242 = icmp eq ptr %241, %49
  br i1 %242, label %329, label %243, !prof !311

243:                                              ; preds = %236
  %244 = icmp eq i8 %3, 0
  br i1 %244, label %245, label %280, !prof !312

245:                                              ; preds = %243
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %0) #22
  br i1 %51, label %248, label %246, !prof !313

246:                                              ; preds = %245
  %247 = load i32, ptr %2, align 8, !tbaa !111
  br label %248

248:                                              ; preds = %245, %246
  %249 = phi i32 [ %247, %246 ], [ 0, %245 ]
  %250 = sub i32 %249, %1
  %251 = add i32 %250, -2
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %279, label %253, !prof !314

253:                                              ; preds = %248, %269
  %254 = phi i32 [ %256, %269 ], [ %251, %248 ]
  %255 = phi ptr [ %274, %269 ], [ %0, %248 ]
  %256 = add i32 %254, -1
  %257 = load i32, ptr %255, align 8
  %258 = and i32 %257, 255
  %259 = add nsw i32 %258, -1
  %260 = icmp ult i32 %259, 9
  call void @llvm.assume(i1 %260)
  %261 = zext nneg i32 %258 to i64
  %262 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !107
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %264
  %266 = load i64, ptr %265, align 8, !tbaa !131
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %269, !prof !315

268:                                              ; preds = %253
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %269

269:                                              ; preds = %268, %253
  %270 = getelementptr inbounds i8, ptr %255, i64 %266
  %271 = getelementptr inbounds ptr, ptr %270, i64 1
  %272 = load ptr, ptr %271, align 8, !tbaa !92
  %273 = getelementptr inbounds %struct.tree_ssa_name, ptr %272, i64 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %274) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !157
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  call void @gsi_move_before(ptr noundef nonnull %6, ptr noundef nonnull %5) #22
  %275 = load ptr, ptr %5, align 8, !tbaa !171
  %276 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %275, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !237
  store ptr %277, ptr %5, align 8, !tbaa !171
  %278 = icmp eq i32 %256, 0
  br i1 %278, label %279, label %253, !prof !316, !llvm.loop !317

279:                                              ; preds = %269, %248
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  br label %280

280:                                              ; preds = %279, %243
  %281 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %282 = icmp eq ptr %281, null
  br i1 %282, label %290, label %283, !prof !318

283:                                              ; preds = %280
  %284 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %285 = and i32 %284, 8
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %283
  %288 = call i64 @fwrite(ptr nonnull @.str.7, i64 13, i64 1, ptr nonnull %281)
  %289 = load ptr, ptr @dump_file, align 8, !tbaa !92
  call void @print_gimple_stmt(ptr noundef %289, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #22
  br label %290

290:                                              ; preds = %287, %283, %280
  %291 = load ptr, ptr %240, align 8, !tbaa !115
  %292 = load i32, ptr %0, align 8
  %293 = and i32 %292, 255
  %294 = add nsw i32 %293, -10
  %295 = icmp ult i32 %294, -9
  br i1 %295, label %299, label %296, !prof !315

296:                                              ; preds = %290
  %297 = load i32, ptr %27, align 4, !tbaa !103
  %298 = icmp ugt i32 %297, 2
  br i1 %298, label %300, label %299, !prof !318

299:                                              ; preds = %296, %290
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1665, ptr noundef nonnull @.str.4) #22
  br label %300

300:                                              ; preds = %299, %296
  %301 = load i32, ptr %0, align 8
  %302 = and i32 %301, 255
  %303 = zext nneg i32 %302 to i64
  %304 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %303
  %305 = load i32, ptr %304, align 4, !tbaa !107
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %306
  %308 = load i64, ptr %307, align 8, !tbaa !131
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %310, label %311, !prof !315

310:                                              ; preds = %300
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %311

311:                                              ; preds = %300, %310
  %312 = getelementptr inbounds i8, ptr %0, i64 %308
  %313 = getelementptr inbounds ptr, ptr %312, i64 2
  store ptr %291, ptr %313, align 8, !tbaa !92
  %314 = load i32, ptr %0, align 8
  %315 = and i32 %314, 255
  %316 = add nsw i32 %315, -10
  %317 = icmp ult i32 %316, -9
  br i1 %317, label %319, label %318, !prof !315

318:                                              ; preds = %311
  call void @gimple_set_modified(ptr noundef nonnull %0, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %0) #22
  br label %319

319:                                              ; preds = %311, %318
  %320 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %321 = icmp eq ptr %320, null
  br i1 %321, label %329, label %322, !prof !318

322:                                              ; preds = %319
  %323 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %324 = and i32 %323, 8
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %329, label %326

326:                                              ; preds = %322
  %327 = call i64 @fwrite(ptr nonnull @.str.8, i64 6, i64 1, ptr nonnull %320)
  %328 = load ptr, ptr @dump_file, align 8, !tbaa !92
  call void @print_gimple_stmt(ptr noundef %328, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #22
  br label %329

329:                                              ; preds = %319, %322, %326, %236
  %330 = phi i8 [ 1, %326 ], [ 1, %322 ], [ 1, %319 ], [ %3, %236 ]
  %331 = getelementptr inbounds %struct.tree_ssa_name, ptr %26, i64 0, i32 2
  %332 = load ptr, ptr %331, align 8, !tbaa !103
  %333 = add i32 %1, 1
  call fastcc void @rewrite_expr_tree(ptr noundef %332, i32 noundef %333, ptr noundef %2, i8 noundef zeroext %330)
  br label %334

334:                                              ; preds = %145, %226, %222, %219, %329
  ret void
}

declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_to_ops_vec(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #14 !prof !91 !PGOFuncName !319 {
  %3 = load ptr, ptr @operand_entry_pool, align 8, !tbaa !92
  %4 = tail call ptr @pool_alloc(ptr noundef %3) #22
  %5 = getelementptr inbounds %struct.operand_entry, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !115
  %6 = tail call fastcc i64 @get_rank(ptr noundef %1)
  %7 = trunc i64 %6 to i32
  store i32 %7, ptr %4, align 8, !tbaa !113
  %8 = load ptr, ptr %0, align 8, !tbaa !92
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !257

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %8, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !258
  %13 = load i32, ptr %8, align 8, !tbaa !111
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17, !prof !259

15:                                               ; preds = %2, %10
  %16 = tail call ptr @vec_heap_p_reserve(ptr noundef %8, i32 noundef 1) #22
  store ptr %16, ptr %0, align 8, !tbaa !92
  br label %17

17:                                               ; preds = %10, %15
  %18 = load ptr, ptr %0, align 8, !tbaa !92
  %19 = load i32, ptr %18, align 8, !tbaa !111
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !111
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds %struct.VEC_operand_entry_t_base, ptr %18, i64 0, i32 2, i64 %21
  store ptr %4, ptr %22, align 8, !tbaa !92
  ret void
}

declare void @swap_tree_operands(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @linearize_expr(ptr noundef %0) unnamed_addr #9 !prof !91 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 255
  %8 = add nsw i32 %7, -1
  %9 = icmp ult i32 %8, 9
  tail call void @llvm.assume(i1 %9)
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !107
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !131
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %18

18:                                               ; preds = %17, %1
  %19 = getelementptr inbounds i8, ptr %0, i64 %15
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !92
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !103
  %26 = icmp ugt i32 %25, 2
  tail call void @llvm.assume(i1 %26)
  %27 = load i32, ptr %0, align 8
  %28 = and i32 %27, 255
  %29 = add nsw i32 %28, -1
  %30 = icmp ult i32 %29, 9
  tail call void @llvm.assume(i1 %30)
  %31 = zext nneg i32 %28 to i64
  %32 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !107
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !131
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %39

39:                                               ; preds = %38, %18
  %40 = getelementptr inbounds i8, ptr %0, i64 %36
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !92
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !103
  %45 = load i32, ptr %0, align 8
  %46 = trunc i32 %45 to i8
  switch i8 %46, label %49 [
    i8 6, label %47
    i8 1, label %47
    i8 8, label %50
  ]

47:                                               ; preds = %39, %39
  %48 = lshr i32 %45, 16
  br label %50

49:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.4) #22
  br label %50

50:                                               ; preds = %49, %47, %39
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ], [ 59, %39 ]
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !103
  %55 = icmp eq i8 %54, 3
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load i32, ptr %0, align 8
  %58 = and i32 %57, 255
  %59 = add nsw i32 %58, -1
  %60 = icmp ult i32 %59, 9
  tail call void @llvm.assume(i1 %60)
  %61 = zext nneg i32 %58 to i64
  %62 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !107
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !131
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %69

69:                                               ; preds = %68, %56
  %70 = getelementptr inbounds i8, ptr %0, i64 %66
  %71 = getelementptr inbounds ptr, ptr %70, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !92
  %73 = load i64, ptr %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = and i32 %74, 65535
  br label %76

76:                                               ; preds = %50, %69
  %77 = phi i32 [ %75, %69 ], [ %51, %50 ]
  %78 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !103
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !169
  br label %84

84:                                               ; preds = %76, %81
  %85 = phi ptr [ %83, %81 ], [ null, %76 ]
  %86 = tail call fastcc zeroext i8 @is_reassociable_op(ptr noundef %23, i32 noundef %77, ptr noundef %85), !range !170
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = tail call fastcc zeroext i8 @is_reassociable_op(ptr noundef %44, i32 noundef %77, ptr noundef %85), !range !170
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88, %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1456, ptr noundef nonnull @.str.4) #22
  br label %92

92:                                               ; preds = %88, %91
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %0) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !157
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %44) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !157
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  call void @gsi_move_before(ptr noundef nonnull %3, ptr noundef nonnull %2) #22
  %93 = load i32, ptr %44, align 8
  %94 = and i32 %93, 255
  %95 = add nsw i32 %94, -10
  %96 = icmp ult i32 %95, -9
  br i1 %96, label %110, label %97

97:                                               ; preds = %92
  %98 = zext nneg i32 %94 to i64
  %99 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !107
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %101
  %103 = load i64, ptr %102, align 8, !tbaa !131
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %106

106:                                              ; preds = %105, %97
  %107 = getelementptr inbounds i8, ptr %44, i64 %103
  %108 = getelementptr inbounds ptr, ptr %107, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !92
  br label %110

110:                                              ; preds = %92, %106
  %111 = phi ptr [ %109, %106 ], [ null, %92 ]
  %112 = load i32, ptr %0, align 8
  %113 = and i32 %112, 255
  %114 = add nsw i32 %113, -10
  %115 = icmp ult i32 %114, -9
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = load i32, ptr %24, align 4, !tbaa !103
  %118 = icmp ugt i32 %117, 2
  br i1 %118, label %120, label %119

119:                                              ; preds = %116, %110
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1665, ptr noundef nonnull @.str.4) #22
  br label %120

120:                                              ; preds = %119, %116
  %121 = load i32, ptr %0, align 8
  %122 = and i32 %121, 255
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !107
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !131
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %131

131:                                              ; preds = %120, %130
  %132 = getelementptr inbounds i8, ptr %0, i64 %128
  %133 = getelementptr inbounds ptr, ptr %132, i64 2
  store ptr %111, ptr %133, align 8, !tbaa !92
  %134 = load i32, ptr %23, align 8
  %135 = and i32 %134, 255
  %136 = add nsw i32 %135, -10
  %137 = icmp ult i32 %136, -9
  br i1 %137, label %150, label %138

138:                                              ; preds = %131
  %139 = zext nneg i32 %135 to i64
  %140 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !107
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %142
  %144 = load i64, ptr %143, align 8, !tbaa !131
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %147

147:                                              ; preds = %146, %138
  %148 = getelementptr inbounds i8, ptr %23, i64 %144
  %149 = load ptr, ptr %148, align 8, !tbaa !92
  br label %150

150:                                              ; preds = %131, %147
  %151 = phi ptr [ %149, %147 ], [ null, %131 ]
  %152 = load i32, ptr %44, align 8
  %153 = and i32 %152, 255
  %154 = add nsw i32 %153, -10
  %155 = icmp ult i32 %154, -9
  br i1 %155, label %160, label %156

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.gimple_statement_base, ptr %44, i64 0, i32 3
  %158 = load i32, ptr %157, align 4, !tbaa !103
  %159 = icmp ugt i32 %158, 1
  br i1 %159, label %161, label %160

160:                                              ; preds = %156, %150
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1665, ptr noundef nonnull @.str.4) #22
  br label %161

161:                                              ; preds = %160, %156
  %162 = load i32, ptr %44, align 8
  %163 = and i32 %162, 255
  %164 = zext nneg i32 %163 to i64
  %165 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !107
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %167
  %169 = load i64, ptr %168, align 8, !tbaa !131
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %161
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %172

172:                                              ; preds = %161, %171
  %173 = getelementptr inbounds i8, ptr %44, i64 %169
  %174 = getelementptr inbounds ptr, ptr %173, i64 1
  store ptr %151, ptr %174, align 8, !tbaa !92
  %175 = load i32, ptr %44, align 8
  %176 = and i32 %175, 255
  %177 = add nsw i32 %176, -10
  %178 = icmp ult i32 %177, -9
  br i1 %178, label %191, label %179

179:                                              ; preds = %172
  %180 = zext nneg i32 %176 to i64
  %181 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !107
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %183
  %185 = load i64, ptr %184, align 8, !tbaa !131
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %188

188:                                              ; preds = %187, %179
  %189 = getelementptr inbounds i8, ptr %44, i64 %185
  %190 = load ptr, ptr %189, align 8, !tbaa !92
  br label %191

191:                                              ; preds = %172, %188
  %192 = phi ptr [ %190, %188 ], [ null, %172 ]
  %193 = load i32, ptr %0, align 8
  %194 = and i32 %193, 255
  %195 = add nsw i32 %194, -10
  %196 = icmp ult i32 %195, -9
  br i1 %196, label %200, label %197

197:                                              ; preds = %191
  %198 = load i32, ptr %24, align 4, !tbaa !103
  %199 = icmp ugt i32 %198, 1
  br i1 %199, label %201, label %200

200:                                              ; preds = %197, %191
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1665, ptr noundef nonnull @.str.4) #22
  br label %201

201:                                              ; preds = %200, %197
  %202 = load i32, ptr %0, align 8
  %203 = and i32 %202, 255
  %204 = zext nneg i32 %203 to i64
  %205 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !107
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %207
  %209 = load i64, ptr %208, align 8, !tbaa !131
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %201
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %212

212:                                              ; preds = %201, %211
  %213 = getelementptr inbounds i8, ptr %0, i64 %209
  %214 = getelementptr inbounds ptr, ptr %213, i64 1
  store ptr %192, ptr %214, align 8, !tbaa !92
  %215 = load i32, ptr %24, align 4, !tbaa !103
  %216 = icmp ugt i32 %215, 2
  call void @llvm.assume(i1 %216)
  %217 = load i32, ptr %0, align 8
  %218 = and i32 %217, 255
  %219 = add nsw i32 %218, -1
  %220 = icmp ult i32 %219, 9
  call void @llvm.assume(i1 %220)
  %221 = zext nneg i32 %218 to i64
  %222 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !107
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %224
  %226 = load i64, ptr %225, align 8, !tbaa !131
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %212
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %229

229:                                              ; preds = %228, %212
  %230 = getelementptr inbounds i8, ptr %0, i64 %226
  %231 = getelementptr inbounds ptr, ptr %230, i64 2
  %232 = load ptr, ptr %231, align 8, !tbaa !92
  %233 = load i64, ptr %232, align 8
  %234 = and i64 %233, 65535
  %235 = icmp eq i64 %234, 141
  br i1 %235, label %236, label %257

236:                                              ; preds = %229
  %237 = load i32, ptr %24, align 4, !tbaa !103
  %238 = icmp ugt i32 %237, 2
  call void @llvm.assume(i1 %238)
  %239 = load i32, ptr %0, align 8
  %240 = and i32 %239, 255
  %241 = add nsw i32 %240, -1
  %242 = icmp ult i32 %241, 9
  call void @llvm.assume(i1 %242)
  %243 = zext nneg i32 %240 to i64
  %244 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %243
  %245 = load i32, ptr %244, align 4, !tbaa !107
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %246
  %248 = load i64, ptr %247, align 8, !tbaa !131
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %236
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %251

251:                                              ; preds = %250, %236
  %252 = getelementptr inbounds i8, ptr %0, i64 %248
  %253 = getelementptr inbounds ptr, ptr %252, i64 2
  %254 = load ptr, ptr %253, align 8, !tbaa !92
  %255 = getelementptr inbounds %struct.tree_ssa_name, ptr %254, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !103
  br label %257

257:                                              ; preds = %251, %229
  %258 = phi ptr [ %256, %251 ], [ null, %229 ]
  %259 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %260 = icmp eq ptr %259, null
  br i1 %260, label %268, label %261

261:                                              ; preds = %257
  %262 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %263 = and i32 %262, 8
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %261
  %266 = call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr nonnull %259)
  %267 = load ptr, ptr @dump_file, align 8, !tbaa !92
  call void @print_gimple_stmt(ptr noundef %267, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #22
  br label %268

268:                                              ; preds = %265, %261, %257
  %269 = load i32, ptr @reassociate_stats, align 4, !tbaa !139
  %270 = add nsw i32 %269, 1
  store i32 %270, ptr @reassociate_stats, align 4, !tbaa !139
  %271 = load i32, ptr %44, align 8
  %272 = and i32 %271, 255
  %273 = add nsw i32 %272, -10
  %274 = icmp ult i32 %273, -9
  br i1 %274, label %276, label %275

275:                                              ; preds = %268
  call void @gimple_set_modified(ptr noundef nonnull %44, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %44) #22
  br label %276

276:                                              ; preds = %268, %275
  %277 = load i32, ptr %23, align 8
  %278 = and i32 %277, 255
  %279 = add nsw i32 %278, -10
  %280 = icmp ult i32 %279, -9
  br i1 %280, label %282, label %281

281:                                              ; preds = %276
  call void @gimple_set_modified(ptr noundef nonnull %23, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %23) #22
  br label %282

282:                                              ; preds = %276, %281
  %283 = load i32, ptr %0, align 8
  %284 = and i32 %283, 255
  %285 = add nsw i32 %284, -10
  %286 = icmp ult i32 %285, -9
  br i1 %286, label %288, label %287

287:                                              ; preds = %282
  call void @gimple_set_modified(ptr noundef nonnull %0, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %0) #22
  br label %288

288:                                              ; preds = %282, %287
  %289 = load i32, ptr %0, align 8
  %290 = or i32 %289, 512
  store i32 %290, ptr %0, align 8
  %291 = load i32, ptr %23, align 8
  %292 = or i32 %291, 512
  store i32 %292, ptr %23, align 8
  %293 = load i32, ptr %44, align 8
  %294 = or i32 %293, 512
  store i32 %294, ptr %44, align 8
  %295 = icmp eq ptr %258, null
  br i1 %295, label %300, label %296

296:                                              ; preds = %288
  %297 = call fastcc zeroext i8 @is_reassociable_op(ptr noundef nonnull %258, i32 noundef %77, ptr noundef %85), !range !170
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %296
  call fastcc void @linearize_expr(ptr noundef nonnull %0)
  br label %300

300:                                              ; preds = %299, %296, %288
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret void
}

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @get_rank(ptr noundef %0) unnamed_addr #14 !prof !320 !PGOFuncName !321 {
  %2 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %0) #22
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %237, !prof !322

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %237, !prof !323

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !103
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp ne i64 %12, 34
  %14 = and i64 %5, 4294967296
  %15 = icmp eq i64 %14, 0
  %16 = or i1 %15, %13
  br i1 %16, label %24, label %17, !prof !324

17:                                               ; preds = %8
  %18 = load ptr, ptr @operand_rank, align 8, !tbaa !92
  %19 = tail call ptr @pointer_map_contains(ptr noundef %18, ptr noundef nonnull %0) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %237, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !92
  %23 = ptrtoint ptr %22 to i64
  br label %237

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  %27 = getelementptr inbounds %struct.gimple_statement_base, ptr %26, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !103
  %29 = icmp eq ptr %28, null
  br i1 %29, label %237, label %30, !prof !325

30:                                               ; preds = %24
  %31 = load i32, ptr %26, align 8
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, 6
  br i1 %33, label %34, label %38, !prof !326

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %26, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !103
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38, !prof !327

38:                                               ; preds = %34, %30
  %39 = load ptr, ptr @bb_rank, align 8, !tbaa !92
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !328
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, ptr %39, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !131
  br label %237

45:                                               ; preds = %34
  %46 = load ptr, ptr @operand_rank, align 8, !tbaa !92
  %47 = tail call ptr @pointer_map_contains(ptr noundef %46, ptr noundef nonnull %0) #22
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49, !prof !329

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 8, !tbaa !92
  %51 = ptrtoint ptr %50 to i64
  br label %52

52:                                               ; preds = %45, %49
  %53 = phi i64 [ %51, %49 ], [ -1, %45 ]
  %54 = icmp eq i64 %53, -1
  br i1 %54, label %55, label %237, !prof !329

55:                                               ; preds = %52
  %56 = load ptr, ptr @bb_rank, align 8, !tbaa !92
  %57 = load ptr, ptr %27, align 8, !tbaa !103
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !328
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, ptr %56, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !131
  %63 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %26) #22
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %130, label %65, !prof !330

65:                                               ; preds = %55
  %66 = load i32, ptr %26, align 8
  %67 = and i32 %66, 255
  %68 = add nsw i32 %67, -10
  %69 = icmp ult i32 %68, -9
  br i1 %69, label %83, label %70, !prof !331

70:                                               ; preds = %65
  %71 = zext nneg i32 %67 to i64
  %72 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !107
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !131
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79, !prof !331

78:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %79

79:                                               ; preds = %78, %70
  %80 = getelementptr inbounds i8, ptr %26, i64 %76
  %81 = getelementptr inbounds ptr, ptr %80, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !92
  br label %83

83:                                               ; preds = %65, %79
  %84 = phi ptr [ %82, %79 ], [ null, %65 ]
  %85 = load i64, ptr %84, align 8
  %86 = and i64 %85, 65535
  %87 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !107
  %89 = icmp eq i32 %88, 9
  br i1 %89, label %90, label %96, !prof !331

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.tree_exp, ptr %84, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !103
  %93 = getelementptr inbounds %struct.tree_int_cst, ptr %92, i64 0, i32 1
  %94 = load i64, ptr %93, align 8, !tbaa !103
  %95 = trunc i64 %94 to i32
  br label %100

96:                                               ; preds = %83
  %97 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %86
  %98 = load i8, ptr %97, align 1, !tbaa !103
  %99 = zext i8 %98 to i32
  br label %100

100:                                              ; preds = %90, %96
  %101 = phi i32 [ %95, %90 ], [ %99, %96 ]
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103, !prof !332

103:                                              ; preds = %100
  %104 = icmp sgt i32 %101, 0
  br i1 %104, label %105, label %211, !prof !333

105:                                              ; preds = %103
  %106 = zext nneg i32 %101 to i64
  br label %112

107:                                              ; preds = %100
  %108 = tail call fastcc i64 @get_rank(ptr noundef nonnull %84)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %211, label %110, !prof !334

110:                                              ; preds = %107
  %111 = tail call fastcc i64 @get_rank(ptr noundef nonnull %84)
  br label %211

112:                                              ; preds = %105, %126
  %113 = phi i64 [ 0, %105 ], [ %128, %126 ]
  %114 = phi i64 [ 0, %105 ], [ %127, %126 ]
  %115 = getelementptr inbounds %struct.tree_exp, ptr %84, i64 0, i32 3, i64 %113
  %116 = load ptr, ptr %115, align 8, !tbaa !103
  %117 = icmp eq ptr %116, null
  %118 = icmp eq i64 %114, %62
  %119 = select i1 %117, i1 true, i1 %118, !prof !335
  br i1 %119, label %211, label %120, !prof !335

120:                                              ; preds = %112
  %121 = tail call fastcc i64 @get_rank(ptr noundef nonnull %116)
  %122 = icmp sgt i64 %114, %121
  br i1 %122, label %126, label %123, !prof !167

123:                                              ; preds = %120
  %124 = load ptr, ptr %115, align 8, !tbaa !103
  %125 = tail call fastcc i64 @get_rank(ptr noundef %124)
  br label %126

126:                                              ; preds = %120, %123
  %127 = phi i64 [ %125, %123 ], [ %114, %120 ]
  %128 = add nuw nsw i64 %113, 1
  %129 = icmp eq i64 %128, %106
  br i1 %129, label %211, label %112, !prof !336, !llvm.loop !337

130:                                              ; preds = %55
  %131 = getelementptr inbounds %struct.gimple_statement_base, ptr %26, i64 0, i32 3
  %132 = load i32, ptr %131, align 4, !tbaa !103
  %133 = icmp sgt i32 %132, 1
  %134 = icmp ne i64 %62, 0
  %135 = select i1 %133, i1 %134, i1 false, !prof !338
  br i1 %135, label %136, label %211, !prof !339

136:                                              ; preds = %130
  %137 = sext i32 %132 to i64
  br label %138

138:                                              ; preds = %136, %205
  %139 = phi i64 [ 1, %136 ], [ %207, %205 ]
  %140 = phi i64 [ 0, %136 ], [ %206, %205 ]
  %141 = load i32, ptr %26, align 8
  %142 = and i32 %141, 255
  %143 = add nsw i32 %142, -10
  %144 = icmp ult i32 %143, -9
  br i1 %144, label %158, label %145, !prof !340

145:                                              ; preds = %138
  %146 = zext nneg i32 %142 to i64
  %147 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !107
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %149
  %151 = load i64, ptr %150, align 8, !tbaa !131
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154, !prof !340

153:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %154

154:                                              ; preds = %153, %145
  %155 = getelementptr inbounds i8, ptr %26, i64 %151
  %156 = getelementptr inbounds ptr, ptr %155, i64 %139
  %157 = load ptr, ptr %156, align 8, !tbaa !92
  br label %158

158:                                              ; preds = %138, %154
  %159 = phi ptr [ %157, %154 ], [ null, %138 ]
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %162, !prof !340

161:                                              ; preds = %158
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 276, ptr noundef nonnull @.str.4) #22
  br label %162

162:                                              ; preds = %158, %161
  %163 = load i32, ptr %26, align 8
  %164 = and i32 %163, 255
  %165 = add nsw i32 %164, -10
  %166 = icmp ult i32 %165, -9
  br i1 %166, label %180, label %167, !prof !340

167:                                              ; preds = %162
  %168 = zext nneg i32 %164 to i64
  %169 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !107
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %171
  %173 = load i64, ptr %172, align 8, !tbaa !131
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %176, !prof !340

175:                                              ; preds = %167
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %176

176:                                              ; preds = %175, %167
  %177 = getelementptr inbounds i8, ptr %26, i64 %173
  %178 = getelementptr inbounds ptr, ptr %177, i64 %139
  %179 = load ptr, ptr %178, align 8, !tbaa !92
  br label %180

180:                                              ; preds = %162, %176
  %181 = phi ptr [ %179, %176 ], [ null, %162 ]
  %182 = tail call fastcc i64 @get_rank(ptr noundef %181)
  %183 = icmp sgt i64 %140, %182
  br i1 %183, label %205, label %184, !prof !341

184:                                              ; preds = %180
  %185 = load i32, ptr %26, align 8
  %186 = and i32 %185, 255
  %187 = add nsw i32 %186, -10
  %188 = icmp ult i32 %187, -9
  br i1 %188, label %202, label %189, !prof !342

189:                                              ; preds = %184
  %190 = zext nneg i32 %186 to i64
  %191 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !107
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %193
  %195 = load i64, ptr %194, align 8, !tbaa !131
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %198, !prof !342

197:                                              ; preds = %189
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %198

198:                                              ; preds = %197, %189
  %199 = getelementptr inbounds i8, ptr %26, i64 %195
  %200 = getelementptr inbounds ptr, ptr %199, i64 %139
  %201 = load ptr, ptr %200, align 8, !tbaa !92
  br label %202

202:                                              ; preds = %184, %198
  %203 = phi ptr [ %201, %198 ], [ null, %184 ]
  %204 = tail call fastcc i64 @get_rank(ptr noundef %203)
  br label %205

205:                                              ; preds = %180, %202
  %206 = phi i64 [ %204, %202 ], [ %140, %180 ]
  %207 = add nuw nsw i64 %139, 1
  %208 = icmp slt i64 %207, %137
  %209 = icmp ne i64 %206, %62
  %210 = select i1 %208, i1 %209, i1 false, !prof !338
  br i1 %210, label %138, label %211, !prof !343, !llvm.loop !344

211:                                              ; preds = %126, %112, %205, %103, %130, %107, %110
  %212 = phi i64 [ %111, %110 ], [ 0, %107 ], [ 0, %130 ], [ 0, %103 ], [ %206, %205 ], [ %114, %112 ], [ %127, %126 ]
  %213 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %214 = icmp eq ptr %213, null
  br i1 %214, label %225, label %215, !prof !345

215:                                              ; preds = %211
  %216 = load i32, ptr @dump_flags, align 4, !tbaa !107
  %217 = and i32 %216, 8
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %215
  %220 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr nonnull %213)
  %221 = load ptr, ptr @dump_file, align 8, !tbaa !92
  tail call void @print_generic_expr(ptr noundef %221, ptr noundef nonnull %0, i32 noundef 0) #22
  %222 = load ptr, ptr @dump_file, align 8, !tbaa !92
  %223 = add nsw i64 %212, 1
  %224 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %222, ptr noundef nonnull @.str.12, i64 noundef %223)
  br label %225

225:                                              ; preds = %219, %215, %211
  %226 = add nsw i64 %212, 1
  %227 = icmp sgt i64 %212, -1
  br i1 %227, label %229, label %228, !prof !345

228:                                              ; preds = %225
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 205, ptr noundef nonnull @.str.4) #22
  br label %229

229:                                              ; preds = %228, %225
  %230 = load ptr, ptr @operand_rank, align 8, !tbaa !92
  %231 = tail call ptr @pointer_map_insert(ptr noundef %230, ptr noundef nonnull %0) #22
  %232 = load ptr, ptr %231, align 8, !tbaa !92
  %233 = icmp eq ptr %232, null
  br i1 %233, label %235, label %234, !prof !345

234:                                              ; preds = %229
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 207, ptr noundef nonnull @.str.4) #22
  br label %235

235:                                              ; preds = %229, %234
  %236 = inttoptr i64 %226 to ptr
  store ptr %236, ptr %231, align 8, !tbaa !92
  br label %237

237:                                              ; preds = %21, %17, %4, %38, %235, %24, %52, %1
  %238 = phi i64 [ 0, %1 ], [ %44, %38 ], [ %226, %235 ], [ 0, %24 ], [ %53, %52 ], [ 0, %4 ], [ %23, %21 ], [ -1, %17 ]
  ret i64 %238
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_move_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare i32 @real_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

declare i32 @real_onep(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @fold_real_zero_addition_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_unary_op(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !91 !PGOFuncName !346 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %51, !prof !287

8:                                                ; preds = %2
  %9 = lshr i32 %5, 16
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !103
  %13 = icmp eq i8 %12, 3
  br i1 %13, label %14, label %30, !prof !288

14:                                               ; preds = %8
  %15 = zext nneg i32 %6 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !107
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !131
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23, !prof !245

22:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %23

23:                                               ; preds = %22, %14
  %24 = getelementptr inbounds i8, ptr %4, i64 %20
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !92
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 65535
  br label %30

30:                                               ; preds = %8, %23
  %31 = phi i32 [ %29, %23 ], [ %9, %8 ]
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %33, label %51, !prof !289

33:                                               ; preds = %30
  %34 = load i32, ptr %4, align 8
  %35 = and i32 %34, 255
  %36 = add nsw i32 %35, -10
  %37 = icmp ult i32 %36, -9
  br i1 %37, label %51, label %38

38:                                               ; preds = %33
  %39 = zext nneg i32 %35 to i64
  %40 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !107
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !131
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %47

47:                                               ; preds = %46, %38
  %48 = getelementptr inbounds i8, ptr %4, i64 %44
  %49 = getelementptr inbounds ptr, ptr %48, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !92
  br label %51

51:                                               ; preds = %47, %33, %30, %2
  %52 = phi ptr [ null, %2 ], [ null, %30 ], [ %50, %47 ], [ null, %33 ]
  ret ptr %52
}

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_low_bits_mask(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @print_generic_stmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare i32 @sbitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @oecount_hash(ptr noundef %0) #9 !prof !91 {
  %2 = load ptr, ptr @cvec, align 8
  %3 = ptrtoint ptr %0 to i64
  %4 = add i64 %3, 4294967254
  %5 = and i64 %4, 4294967295
  %6 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.VEC_oecount_base, ptr %2, i64 0, i32 2, i64 %5, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !229
  %9 = tail call i32 %6(ptr noundef %8) #22
  %10 = getelementptr inbounds %struct.VEC_oecount_base, ptr %2, i64 0, i32 2, i64 %5, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !228
  %12 = xor i32 %11, %9
  ret i32 %12
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @oecount_eq(ptr noundef %0, ptr noundef %1) #17 !prof !91 {
  %3 = load ptr, ptr @cvec, align 8
  %4 = ptrtoint ptr %0 to i64
  %5 = add i64 %4, 4294967254
  %6 = and i64 %5, 4294967295
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 4294967254
  %9 = and i64 %8, 4294967295
  %10 = getelementptr inbounds %struct.VEC_oecount_base, ptr %3, i64 0, i32 2, i64 %6, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !228
  %12 = getelementptr inbounds %struct.VEC_oecount_base, ptr %3, i64 0, i32 2, i64 %9, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !228
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.VEC_oecount_base, ptr %3, i64 0, i32 2, i64 %6, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !229
  %18 = getelementptr inbounds %struct.VEC_oecount_base, ptr %3, i64 0, i32 2, i64 %9, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !229
  %20 = icmp eq ptr %17, %19
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %15, %2
  %23 = phi i32 [ 0, %2 ], [ %21, %15 ]
  ret i32 %23
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @oecount_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 !prof !91 {
  %3 = load i32, ptr %0, align 8, !tbaa !224
  %4 = load i32, ptr %1, align 8, !tbaa !224
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @zero_one_operation(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readnone %2) unnamed_addr #9 !prof !91 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !103
  br label %11

11:                                               ; preds = %262, %3
  %12 = phi ptr [ %10, %3 ], [ %263, %262 ]
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 255
  %15 = add nsw i32 %14, -10
  %16 = icmp ult i32 %15, -9
  br i1 %16, label %30, label %17

17:                                               ; preds = %11
  %18 = zext nneg i32 %14 to i64
  %19 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !107
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !131
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %26

26:                                               ; preds = %25, %17
  %27 = getelementptr inbounds i8, ptr %12, i64 %23
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  br label %30

30:                                               ; preds = %11, %26
  %31 = phi ptr [ %29, %26 ], [ null, %11 ]
  %32 = load i32, ptr %12, align 8
  %33 = trunc i32 %32 to i8
  switch i8 %33, label %36 [
    i8 6, label %34
    i8 1, label %34
    i8 8, label %37
  ]

34:                                               ; preds = %30, %30
  %35 = lshr i32 %32, 16
  br label %37

36:                                               ; preds = %30
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.4) #22
  br label %37

37:                                               ; preds = %36, %34, %30
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ], [ 59, %30 ]
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !103
  %42 = icmp eq i8 %41, 3
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = load i32, ptr %12, align 8
  %45 = and i32 %44, 255
  %46 = add nsw i32 %45, -1
  %47 = icmp ult i32 %46, 9
  call void @llvm.assume(i1 %47)
  %48 = zext nneg i32 %45 to i64
  %49 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !107
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !131
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %56

56:                                               ; preds = %55, %43
  %57 = getelementptr inbounds i8, ptr %12, i64 %53
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !92
  %60 = load i64, ptr %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = and i32 %61, 65535
  br label %63

63:                                               ; preds = %37, %56
  %64 = phi i32 [ %62, %56 ], [ %38, %37 ]
  %65 = icmp eq i32 %64, %1
  br i1 %65, label %66, label %252

66:                                               ; preds = %63
  %67 = icmp eq ptr %31, %2
  br i1 %67, label %94, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !103
  %71 = icmp ugt i32 %70, 2
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load i32, ptr %12, align 8
  %74 = and i32 %73, 255
  %75 = add nsw i32 %74, -10
  %76 = icmp ult i32 %75, -9
  br i1 %76, label %90, label %77

77:                                               ; preds = %72
  %78 = zext nneg i32 %74 to i64
  %79 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !107
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !131
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %86

86:                                               ; preds = %85, %77
  %87 = getelementptr inbounds i8, ptr %12, i64 %83
  %88 = getelementptr inbounds ptr, ptr %87, i64 2
  %89 = load ptr, ptr %88, align 8, !tbaa !92
  br label %90

90:                                               ; preds = %68, %72, %86
  %91 = phi ptr [ null, %68 ], [ %89, %86 ], [ null, %72 ]
  %92 = icmp eq ptr %91, %2
  br i1 %92, label %93, label %252

93:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  br label %116

94:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  %95 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 3
  %96 = load i32, ptr %95, align 4, !tbaa !103
  %97 = icmp ugt i32 %96, 2
  br i1 %97, label %98, label %116

98:                                               ; preds = %94
  %99 = load i32, ptr %12, align 8
  %100 = and i32 %99, 255
  %101 = add nsw i32 %100, -10
  %102 = icmp ult i32 %101, -9
  br i1 %102, label %116, label %103

103:                                              ; preds = %98
  %104 = zext nneg i32 %100 to i64
  %105 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !107
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %107
  %109 = load i64, ptr %108, align 8, !tbaa !131
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %112

112:                                              ; preds = %111, %103
  %113 = getelementptr inbounds i8, ptr %12, i64 %109
  %114 = getelementptr inbounds ptr, ptr %113, i64 2
  %115 = load ptr, ptr %114, align 8, !tbaa !92
  br label %116

116:                                              ; preds = %112, %98, %94, %93
  %117 = phi ptr [ %31, %93 ], [ null, %94 ], [ %115, %112 ], [ null, %98 ]
  %118 = load i32, ptr %12, align 8
  %119 = and i32 %118, 255
  %120 = add nsw i32 %119, -1
  %121 = icmp ult i32 %120, 9
  call void @llvm.assume(i1 %121)
  %122 = zext nneg i32 %119 to i64
  %123 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !107
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %125
  %127 = load i64, ptr %126, align 8, !tbaa !131
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %116
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %130

130:                                              ; preds = %129, %116
  %131 = getelementptr inbounds i8, ptr %12, i64 %127
  %132 = load ptr, ptr %131, align 8, !tbaa !92
  %133 = getelementptr inbounds %struct.tree_ssa_name, ptr %132, i64 0, i32 5
  %134 = getelementptr inbounds %struct.tree_ssa_name, ptr %132, i64 0, i32 5, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !185
  %136 = icmp eq ptr %133, %135
  br i1 %136, label %153, label %137

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %135, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !185
  %140 = icmp eq ptr %133, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %135, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !103
  %144 = load i32, ptr %143, align 8
  %145 = and i32 %144, 255
  %146 = icmp ne i32 %145, 2
  %147 = zext i1 %146 to i8
  br label %153

148:                                              ; preds = %137
  %149 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !107
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = call zeroext i8 @single_imm_use_1(ptr noundef nonnull %133, ptr noundef null, ptr noundef null) #22
  br label %153

153:                                              ; preds = %130, %141, %148, %151
  %154 = phi i8 [ %147, %141 ], [ %152, %151 ], [ 0, %130 ], [ 0, %148 ]
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 802, ptr noundef nonnull @.str.4) #22
  br label %157

157:                                              ; preds = %153, %156
  %158 = load i32, ptr %12, align 8
  %159 = and i32 %158, 255
  %160 = add nsw i32 %159, -1
  %161 = icmp ult i32 %160, 9
  call void @llvm.assume(i1 %161)
  %162 = zext nneg i32 %159 to i64
  %163 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !107
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %165
  %167 = load i64, ptr %166, align 8, !tbaa !131
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %170

170:                                              ; preds = %169, %157
  %171 = getelementptr inbounds i8, ptr %12, i64 %167
  %172 = load ptr, ptr %171, align 8, !tbaa !92
  %173 = getelementptr inbounds %struct.tree_ssa_name, ptr %172, i64 0, i32 5
  %174 = getelementptr inbounds %struct.tree_ssa_name, ptr %172, i64 0, i32 5, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !185
  %176 = icmp eq ptr %173, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %189, %182, %170
  store ptr null, ptr %5, align 8, !tbaa !92
  store ptr null, ptr %4, align 8, !tbaa !92
  br label %194

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %175, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !185
  %181 = icmp eq ptr %173, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %175, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !103
  %185 = load i32, ptr %184, align 8
  %186 = and i32 %185, 255
  %187 = icmp eq i32 %186, 2
  br i1 %187, label %177, label %188

188:                                              ; preds = %182
  store ptr %175, ptr %5, align 8, !tbaa !92
  store ptr %184, ptr %4, align 8, !tbaa !92
  br label %194

189:                                              ; preds = %178
  %190 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !107
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %177, label %192

192:                                              ; preds = %189
  %193 = call zeroext i8 @single_imm_use_1(ptr noundef nonnull %173, ptr noundef nonnull %5, ptr noundef nonnull %4) #22
  br label %194

194:                                              ; preds = %177, %188, %192
  %195 = load i32, ptr %12, align 8
  %196 = and i32 %195, 255
  %197 = add nsw i32 %196, -10
  %198 = icmp ult i32 %197, -9
  br i1 %198, label %211, label %199

199:                                              ; preds = %194
  %200 = zext nneg i32 %196 to i64
  %201 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !107
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %203
  %205 = load i64, ptr %204, align 8, !tbaa !131
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %199
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %208

208:                                              ; preds = %207, %199
  %209 = getelementptr inbounds i8, ptr %12, i64 %205
  %210 = load ptr, ptr %209, align 8, !tbaa !92
  br label %211

211:                                              ; preds = %194, %208
  %212 = phi ptr [ %210, %208 ], [ null, %194 ]
  %213 = load ptr, ptr %0, align 8, !tbaa !92
  %214 = icmp eq ptr %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  store ptr %117, ptr %0, align 8, !tbaa !92
  br label %216

216:                                              ; preds = %215, %211
  %217 = load ptr, ptr %5, align 8, !tbaa !92
  %218 = load ptr, ptr %217, align 8, !tbaa !347
  %219 = icmp eq ptr %218, null
  br i1 %219, label %225, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %217, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !185
  %223 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %218, i64 0, i32 1
  store ptr %222, ptr %223, align 8, !tbaa !185
  %224 = load ptr, ptr %221, align 8, !tbaa !185
  store ptr %218, ptr %224, align 8, !tbaa !347
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %217, i8 0, i64 16, i1 false)
  br label %225

225:                                              ; preds = %220, %216
  %226 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %217, i64 0, i32 3
  %227 = load ptr, ptr %226, align 8, !tbaa !348
  store ptr %117, ptr %227, align 8, !tbaa !92
  %228 = icmp eq ptr %117, null
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = load i64, ptr %117, align 8
  %231 = and i64 %230, 65535
  %232 = icmp eq i64 %231, 141
  br i1 %232, label %234, label %233

233:                                              ; preds = %229, %225
  store ptr null, ptr %217, align 8, !tbaa !347
  br label %240

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.tree_ssa_name, ptr %117, i64 0, i32 5
  store ptr %235, ptr %217, align 8, !tbaa !347
  %236 = getelementptr inbounds %struct.tree_ssa_name, ptr %117, i64 0, i32 5, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !185
  %238 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %217, i64 0, i32 1
  store ptr %237, ptr %238, align 8, !tbaa !185
  %239 = load ptr, ptr %236, align 8, !tbaa !185
  store ptr %217, ptr %239, align 8, !tbaa !347
  store ptr %217, ptr %236, align 8, !tbaa !185
  br label %240

240:                                              ; preds = %233, %234
  %241 = load i64, ptr %117, align 8
  %242 = and i64 %241, 65535
  %243 = icmp eq i64 %242, 141
  br i1 %243, label %251, label %244

244:                                              ; preds = %240
  %245 = load ptr, ptr %4, align 8, !tbaa !92
  %246 = load i32, ptr %245, align 8
  %247 = and i32 %246, 255
  %248 = add nsw i32 %247, -10
  %249 = icmp ult i32 %248, -9
  br i1 %249, label %251, label %250

250:                                              ; preds = %244
  call void @gimple_set_modified(ptr noundef nonnull %245, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %245) #22
  br label %251

251:                                              ; preds = %250, %244, %240
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %12) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !157
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #22
  call void @release_defs(ptr noundef nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %262

252:                                              ; preds = %90, %63
  %253 = icmp eq ptr %31, %2
  br i1 %253, label %258, label %254

254:                                              ; preds = %252
  %255 = load i64, ptr %31, align 8
  %256 = and i64 %255, 65535
  %257 = icmp eq i64 %256, 141
  br i1 %257, label %259, label %258

258:                                              ; preds = %254, %252
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 817, ptr noundef nonnull @.str.4) #22
  br label %259

259:                                              ; preds = %254, %258
  %260 = getelementptr inbounds %struct.tree_ssa_name, ptr %31, i64 0, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !103
  br label %262

262:                                              ; preds = %259, %251
  %263 = phi ptr [ %12, %251 ], [ %261, %259 ]
  %264 = phi i1 [ false, %251 ], [ true, %259 ]
  br i1 %264, label %11, label %265, !llvm.loop !349

265:                                              ; preds = %262
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @build_and_add_sum(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #9 !prof !91 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %6 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %3, ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  %7 = load ptr, ptr @cfun, align 8, !tbaa !92
  %8 = tail call ptr @make_ssa_name_fn(ptr noundef %7, ptr noundef %0, ptr noundef %6) #22
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 255
  %11 = add nsw i32 %10, -10
  %12 = icmp ult i32 %11, -9
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.gimple_statement_base, ptr %6, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !103
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1665, ptr noundef nonnull @.str.4) #22
  br label %18

18:                                               ; preds = %17, %13
  %19 = load i32, ptr %6, align 8
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !107
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !131
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %29

29:                                               ; preds = %28, %18
  %30 = getelementptr inbounds i8, ptr %6, i64 %26
  store ptr %8, ptr %30, align 8, !tbaa !92
  %31 = icmp eq ptr %8, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i64, ptr %8, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 141
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 2
  store ptr %6, ptr %37, align 8, !tbaa !103
  br label %38

38:                                               ; preds = %29, %32, %36
  %39 = load i64, ptr %1, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 141
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !103
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi ptr [ %44, %42 ], [ null, %38 ]
  %47 = load i64, ptr %2, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 141
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !103
  br label %53

53:                                               ; preds = %50, %45
  %54 = phi ptr [ %52, %50 ], [ null, %45 ]
  %55 = icmp eq ptr %46, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %46, align 8
  %58 = and i32 %57, 255
  %59 = icmp eq i32 %58, 18
  br i1 %59, label %60, label %116

60:                                               ; preds = %56, %53
  %61 = icmp eq ptr %54, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %60
  %63 = load i32, ptr %54, align 8
  %64 = and i32 %63, 255
  %65 = icmp eq i32 %64, 18
  br i1 %65, label %66, label %116

66:                                               ; preds = %62, %60
  %67 = load ptr, ptr @cfun, align 8, !tbaa !92
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !120
  %70 = load ptr, ptr %69, align 8, !tbaa !134
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !350
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = load i32, ptr %72, align 8, !tbaa !351
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %78, label %77

77:                                               ; preds = %74, %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 645, ptr noundef nonnull @.str.4) #22
  br label %78

78:                                               ; preds = %74, %77
  %79 = load ptr, ptr %71, align 8, !tbaa !350
  %80 = getelementptr inbounds %struct.VEC_edge_base, ptr %79, i64 0, i32 2, i64 0
  %81 = load ptr, ptr %80, align 8, !tbaa !92
  %82 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !353
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 13
  %85 = load i32, ptr %84, align 8, !tbaa !146, !noalias !355
  %86 = and i32 %85, 512
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 7
  %90 = load ptr, ptr %89, align 8, !tbaa !103, !noalias !355
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %90, align 8, !tbaa !153, !noalias !355
  br label %94

94:                                               ; preds = %92, %88, %78
  %95 = phi ptr [ %93, %92 ], [ null, %88 ], [ null, %78 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %95, align 8, !tbaa !155, !noalias !355
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi ptr [ %98, %97 ], [ null, %94 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %99, %108
  %103 = phi ptr [ %110, %108 ], [ %100, %99 ]
  %104 = load ptr, ptr %103, align 8, !tbaa !161, !noalias !360
  %105 = load i32, ptr %104, align 8, !noalias !360
  %106 = and i32 %105, 255
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %103, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !173, !noalias !360
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %102, !llvm.loop !361

112:                                              ; preds = %102, %108, %99
  %113 = phi ptr [ %100, %99 ], [ %103, %102 ], [ %110, %108 ]
  store ptr %113, ptr %5, align 8, !tbaa.struct !157
  %114 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %95, ptr %114, align 8, !tbaa.struct !158
  %115 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr %83, ptr %115, align 8, !tbaa.struct !159
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #22
  br label %290

116:                                              ; preds = %62, %56
  br i1 %55, label %130, label %117

117:                                              ; preds = %116
  %118 = load i32, ptr %46, align 8
  %119 = and i32 %118, 255
  %120 = icmp eq i32 %119, 18
  br i1 %120, label %130, label %121

121:                                              ; preds = %117
  %122 = icmp eq ptr %54, null
  br i1 %122, label %210, label %123

123:                                              ; preds = %121
  %124 = load i32, ptr %54, align 8
  %125 = and i32 %124, 255
  %126 = icmp eq i32 %125, 18
  br i1 %126, label %210, label %127

127:                                              ; preds = %123
  %128 = tail call zeroext i8 @stmt_dominates_stmt_p(ptr noundef nonnull %46, ptr noundef nonnull %54) #22
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %210, label %130

130:                                              ; preds = %127, %117, %116
  %131 = load i32, ptr %54, align 8
  %132 = and i32 %131, 255
  %133 = icmp eq i32 %132, 16
  br i1 %133, label %134, label %169

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.gimple_statement_base, ptr %54, i64 0, i32 4
  %136 = load ptr, ptr %135, align 8, !tbaa !103
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %136, i64 0, i32 13
  %138 = load i32, ptr %137, align 8, !tbaa !146, !noalias !362
  %139 = and i32 %138, 512
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.basic_block_def, ptr %136, i64 0, i32 7
  %143 = load ptr, ptr %142, align 8, !tbaa !103, !noalias !362
  %144 = icmp eq ptr %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr %143, align 8, !tbaa !153, !noalias !362
  br label %147

147:                                              ; preds = %145, %141, %134
  %148 = phi ptr [ %146, %145 ], [ null, %141 ], [ null, %134 ]
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr %148, align 8, !tbaa !155, !noalias !362
  br label %152

152:                                              ; preds = %150, %147
  %153 = phi ptr [ %151, %150 ], [ null, %147 ]
  %154 = icmp eq ptr %153, null
  br i1 %154, label %165, label %155

155:                                              ; preds = %152, %161
  %156 = phi ptr [ %163, %161 ], [ %153, %152 ]
  %157 = load ptr, ptr %156, align 8, !tbaa !161, !noalias !367
  %158 = load i32, ptr %157, align 8, !noalias !367
  %159 = and i32 %158, 255
  %160 = icmp eq i32 %159, 4
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %156, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !173, !noalias !367
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %155, !llvm.loop !361

165:                                              ; preds = %155, %161, %152
  %166 = phi ptr [ %153, %152 ], [ %156, %155 ], [ %163, %161 ]
  store ptr %166, ptr %5, align 8, !tbaa.struct !157
  %167 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %148, ptr %167, align 8, !tbaa.struct !158
  %168 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr %136, ptr %168, align 8, !tbaa.struct !159
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #22
  br label %290

169:                                              ; preds = %130
  %170 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %54) #22
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %54) #22
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #22
  br label %290

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.gimple_statement_base, ptr %54, i64 0, i32 4
  %175 = load ptr, ptr %174, align 8, !tbaa !103
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %175, i64 0, i32 1
  br label %177

177:                                              ; preds = %208, %173
  %178 = phi i32 [ 0, %173 ], [ %209, %208 ]
  %179 = load ptr, ptr %176, align 8, !tbaa !92
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %177
  %182 = load i32, ptr %179, align 8, !tbaa !351
  br label %183

183:                                              ; preds = %181, %177
  %184 = phi i32 [ %182, %181 ], [ 0, %177 ]
  %185 = icmp eq i32 %184, %178
  br i1 %185, label %190, label %186

186:                                              ; preds = %183
  %187 = zext i32 %178 to i64
  %188 = getelementptr inbounds %struct.VEC_edge_base, ptr %179, i64 0, i32 2, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !92
  br label %190

190:                                              ; preds = %183, %186
  %191 = phi ptr [ %189, %186 ], [ null, %183 ]
  br i1 %185, label %290, label %192

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.edge_def, ptr %191, i64 0, i32 7
  %194 = load i32, ptr %193, align 8, !tbaa !368
  %195 = and i32 %194, 1
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %192
  %198 = tail call ptr @gsi_insert_on_edge_immediate(ptr noundef %191, ptr noundef nonnull %6) #22
  br label %199

199:                                              ; preds = %197, %192
  %200 = load ptr, ptr %176, align 8, !tbaa !92
  %201 = icmp eq ptr %200, null
  br i1 %201, label %204, label %202

202:                                              ; preds = %199
  %203 = load i32, ptr %200, align 8, !tbaa !351
  br label %204

204:                                              ; preds = %202, %199
  %205 = phi i32 [ %203, %202 ], [ 0, %199 ]
  %206 = icmp ult i32 %178, %205
  br i1 %206, label %208, label %207

207:                                              ; preds = %204
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 738, ptr noundef nonnull @.str.4) #22
  br label %208

208:                                              ; preds = %204, %207
  %209 = add i32 %178, 1
  br label %177, !llvm.loop !369

210:                                              ; preds = %127, %123, %121
  %211 = load i32, ptr %46, align 8
  %212 = and i32 %211, 255
  %213 = icmp eq i32 %212, 16
  br i1 %213, label %214, label %249

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.gimple_statement_base, ptr %46, i64 0, i32 4
  %216 = load ptr, ptr %215, align 8, !tbaa !103
  %217 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 13
  %218 = load i32, ptr %217, align 8, !tbaa !146, !noalias !370
  %219 = and i32 %218, 512
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %214
  %222 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 7
  %223 = load ptr, ptr %222, align 8, !tbaa !103, !noalias !370
  %224 = icmp eq ptr %223, null
  br i1 %224, label %227, label %225

225:                                              ; preds = %221
  %226 = load ptr, ptr %223, align 8, !tbaa !153, !noalias !370
  br label %227

227:                                              ; preds = %225, %221, %214
  %228 = phi ptr [ %226, %225 ], [ null, %221 ], [ null, %214 ]
  %229 = icmp eq ptr %228, null
  br i1 %229, label %232, label %230

230:                                              ; preds = %227
  %231 = load ptr, ptr %228, align 8, !tbaa !155, !noalias !370
  br label %232

232:                                              ; preds = %230, %227
  %233 = phi ptr [ %231, %230 ], [ null, %227 ]
  %234 = icmp eq ptr %233, null
  br i1 %234, label %245, label %235

235:                                              ; preds = %232, %241
  %236 = phi ptr [ %243, %241 ], [ %233, %232 ]
  %237 = load ptr, ptr %236, align 8, !tbaa !161, !noalias !375
  %238 = load i32, ptr %237, align 8, !noalias !375
  %239 = and i32 %238, 255
  %240 = icmp eq i32 %239, 4
  br i1 %240, label %241, label %245

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %236, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !173, !noalias !375
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %235, !llvm.loop !361

245:                                              ; preds = %235, %241, %232
  %246 = phi ptr [ %233, %232 ], [ %236, %235 ], [ %243, %241 ]
  store ptr %246, ptr %5, align 8, !tbaa.struct !157
  %247 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %228, ptr %247, align 8, !tbaa.struct !158
  %248 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr %216, ptr %248, align 8, !tbaa.struct !159
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #22
  br label %290

249:                                              ; preds = %210
  %250 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %46) #22
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %46) #22
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #22
  br label %290

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.gimple_statement_base, ptr %46, i64 0, i32 4
  %255 = load ptr, ptr %254, align 8, !tbaa !103
  %256 = getelementptr inbounds %struct.basic_block_def, ptr %255, i64 0, i32 1
  br label %257

257:                                              ; preds = %288, %253
  %258 = phi i32 [ 0, %253 ], [ %289, %288 ]
  %259 = load ptr, ptr %256, align 8, !tbaa !92
  %260 = icmp eq ptr %259, null
  br i1 %260, label %263, label %261

261:                                              ; preds = %257
  %262 = load i32, ptr %259, align 8, !tbaa !351
  br label %263

263:                                              ; preds = %261, %257
  %264 = phi i32 [ %262, %261 ], [ 0, %257 ]
  %265 = icmp eq i32 %264, %258
  br i1 %265, label %270, label %266

266:                                              ; preds = %263
  %267 = zext i32 %258 to i64
  %268 = getelementptr inbounds %struct.VEC_edge_base, ptr %259, i64 0, i32 2, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !92
  br label %270

270:                                              ; preds = %263, %266
  %271 = phi ptr [ %269, %266 ], [ null, %263 ]
  br i1 %265, label %290, label %272

272:                                              ; preds = %270
  %273 = getelementptr inbounds %struct.edge_def, ptr %271, i64 0, i32 7
  %274 = load i32, ptr %273, align 8, !tbaa !368
  %275 = and i32 %274, 1
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %272
  %278 = tail call ptr @gsi_insert_on_edge_immediate(ptr noundef %271, ptr noundef nonnull %6) #22
  br label %279

279:                                              ; preds = %277, %272
  %280 = load ptr, ptr %256, align 8, !tbaa !92
  %281 = icmp eq ptr %280, null
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = load i32, ptr %280, align 8, !tbaa !351
  br label %284

284:                                              ; preds = %282, %279
  %285 = phi i32 [ %283, %282 ], [ 0, %279 ]
  %286 = icmp ult i32 %258, %285
  br i1 %286, label %288, label %287

287:                                              ; preds = %284
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 738, ptr noundef nonnull @.str.4) #22
  br label %288

288:                                              ; preds = %284, %287
  %289 = add i32 %258, 1
  br label %257, !llvm.loop !376

290:                                              ; preds = %270, %190, %172, %165, %252, %245, %112
  %291 = load i32, ptr %6, align 8
  %292 = and i32 %291, 255
  %293 = add nsw i32 %292, -10
  %294 = icmp ult i32 %293, -9
  br i1 %294, label %296, label %295

295:                                              ; preds = %290
  call void @gimple_set_modified(ptr noundef nonnull %6, i8 noundef zeroext 1) #22
  call void @update_stmt_operands(ptr noundef nonnull %6) #22
  br label %296

296:                                              ; preds = %290, %295
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  ret ptr %6
}

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_dominates_stmt_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @is_phi_for_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !prof !377 !PGOFuncName !378 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %73, !prof !379

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 255
  %9 = add nsw i32 %8, -10
  %10 = icmp ult i32 %9, -9
  br i1 %10, label %23, label %11, !prof !380

11:                                               ; preds = %6
  %12 = zext nneg i32 %8 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !107
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !131
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20, !prof !380

19:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #22
  br label %20

20:                                               ; preds = %19, %11
  %21 = getelementptr inbounds i8, ptr %0, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  br label %23

23:                                               ; preds = %6, %20
  %24 = phi ptr [ %22, %20 ], [ null, %6 ]
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 16
  br i1 %29, label %30, label %73, !prof !380

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.gimple_statement_phi, ptr %26, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !103
  %33 = tail call zeroext i8 @is_gimple_reg(ptr noundef %32) #22
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.gimple_statement_phi, ptr %26, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !103
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.gimple_statement_phi, ptr %26, i64 0, i32 4, i64 0
  br label %41

41:                                               ; preds = %35, %30, %39
  %42 = phi i32 [ 1, %39 ], [ 0, %30 ], [ 0, %35 ]
  %43 = phi i32 [ %37, %39 ], [ 0, %30 ], [ %37, %35 ]
  %44 = phi ptr [ %26, %39 ], [ null, %30 ], [ %26, %35 ]
  %45 = phi i1 [ true, %39 ], [ false, %30 ], [ false, %35 ]
  %46 = phi i8 [ 0, %39 ], [ 1, %30 ], [ 1, %35 ]
  %47 = phi ptr [ %40, %39 ], [ null, %30 ], [ null, %35 ]
  br i1 %45, label %48, label %73

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.gimple_statement_phi, ptr %44, i64 0, i32 1
  br label %50

50:                                               ; preds = %48, %68
  %51 = phi ptr [ %47, %48 ], [ %71, %68 ]
  %52 = phi i8 [ %46, %48 ], [ %70, %68 ]
  %53 = phi i32 [ %42, %48 ], [ %69, %68 ]
  %54 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %51, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !348
  %56 = load ptr, ptr %55, align 8, !tbaa !92
  %57 = icmp eq ptr %24, %56
  br i1 %57, label %73, label %58

58:                                               ; preds = %50
  %59 = icmp slt i32 %53, %43
  br i1 %59, label %60, label %68

60:                                               ; preds = %58
  %61 = add nsw i32 %53, 1
  %62 = load i32, ptr %49, align 8, !tbaa !103
  %63 = icmp ult i32 %62, %53
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.4) #22
  br label %65

65:                                               ; preds = %64, %60
  %66 = zext i32 %53 to i64
  %67 = getelementptr inbounds %struct.gimple_statement_phi, ptr %44, i64 0, i32 4, i64 %66
  br label %68

68:                                               ; preds = %58, %65
  %69 = phi i32 [ %61, %65 ], [ %53, %58 ]
  %70 = phi i8 [ %52, %65 ], [ 1, %58 ]
  %71 = phi ptr [ %67, %65 ], [ null, %58 ]
  %72 = icmp eq i8 %70, 0
  br i1 %72, label %50, label %73, !llvm.loop !381

73:                                               ; preds = %50, %68, %41, %23, %2
  %74 = phi i8 [ 0, %2 ], [ 0, %23 ], [ 0, %41 ], [ 0, %68 ], [ 1, %50 ]
  ret i8 %74
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @loop_optimizer_finalize() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!90}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!35 = !{ptr @execute_reassoc, ptr @xmalloc, i64 76}
!36 = !{ptr @execute_reassoc, ptr @loop_optimizer_init, i64 76}
!37 = !{ptr @execute_reassoc, ptr @create_alloc_pool, i64 76}
!38 = !{ptr @execute_reassoc, ptr @pre_and_rev_post_order_compute, i64 76}
!39 = !{ptr @execute_reassoc, ptr @xcalloc, i64 76}
!40 = !{ptr @execute_reassoc, ptr @pointer_map_create, i64 76}
!41 = !{ptr @execute_reassoc, ptr @gimple_default_def, i64 152}
!42 = !{ptr @execute_reassoc, ptr @pointer_map_insert, i64 76}
!43 = !{ptr @execute_reassoc, ptr @free, i64 152}
!44 = !{ptr @execute_reassoc, ptr @calculate_dominance_info, i64 76}
!45 = !{ptr @execute_reassoc, ptr @break_up_subtract_bb, i64 76}
!46 = !{ptr @execute_reassoc, ptr @reassociate_bb, i64 76}
!47 = !{ptr @execute_reassoc, ptr @statistics_counter_event, i64 304}
!48 = !{ptr @execute_reassoc, ptr @pointer_map_destroy, i64 76}
!49 = !{ptr @execute_reassoc, ptr @free_alloc_pool, i64 76}
!50 = !{ptr @execute_reassoc, ptr @free_dominance_info, i64 76}
!51 = !{ptr @execute_reassoc, ptr @loop_optimizer_finalize, i64 76}
!52 = !{ptr @break_up_subtract_bb, ptr @is_reassociable_op, i64 24}
!53 = !{ptr @break_up_subtract_bb, ptr @get_single_immediate_use, i64 12}
!54 = !{ptr @break_up_subtract_bb, ptr @first_dom_son, i64 327712}
!55 = !{ptr @break_up_subtract_bb, ptr @break_up_subtract_bb, i64 327636}
!56 = !{ptr @break_up_subtract_bb, ptr @next_dom_son, i64 327636}
!57 = !{ptr @reassociate_bb, ptr @gimple_get_lhs, i64 1168}
!58 = !{ptr @reassociate_bb, ptr @associative_tree_code, i64 104091}
!59 = !{ptr @reassociate_bb, ptr @linearize_expr_tree, i64 41643}
!60 = !{ptr @reassociate_bb, ptr @spec_qsort, i64 41643}
!61 = !{ptr @reassociate_bb, ptr @optimize_ops_list, i64 41643}
!62 = !{ptr @reassociate_bb, ptr @sbitmap_alloc, i64 6106}
!63 = !{ptr @reassociate_bb, ptr @sbitmap_zero, i64 6106}
!64 = !{ptr @reassociate_bb, ptr @free, i64 53855}
!65 = !{ptr @reassociate_bb, ptr @rewrite_expr_tree, i64 41643}
!66 = !{ptr @reassociate_bb, ptr @first_dom_son, i64 327712}
!67 = !{ptr @reassociate_bb, ptr @reassociate_bb, i64 327636}
!68 = !{ptr @reassociate_bb, ptr @next_dom_son, i64 327636}
!69 = !{ptr @is_reassociable_op, ptr @flow_bb_inside_loop_p, i64 64211}
!70 = !{ptr @linearize_expr_tree, ptr @is_reassociable_op, i64 64187}
!71 = !{ptr @linearize_expr_tree, ptr @pool_alloc, i64 84454}
!72 = !{ptr @linearize_expr_tree, ptr @get_rank, i64 84454}
!73 = !{ptr @linearize_expr_tree, ptr @vec_heap_p_reserve, i64 41899}
!74 = !{ptr @linearize_expr_tree, ptr @linearize_expr_tree, i64 1168}
!75 = !{ptr @optimize_ops_list, ptr @is_gimple_min_invariant, i64 22431}
!76 = !{ptr @optimize_ops_list, ptr @integer_zerop, i64 22431}
!77 = !{ptr @optimize_ops_list, ptr @integer_all_onesp, i64 16411}
!78 = !{ptr @optimize_ops_list, ptr @integer_onep, i64 6}
!79 = !{ptr @rewrite_expr_tree, ptr @is_phi_for_stmt, i64 184}
!80 = !{ptr @rewrite_expr_tree, ptr @gimple_set_modified, i64 9863}
!81 = !{ptr @rewrite_expr_tree, ptr @update_stmt_operands, i64 9863}
!82 = !{ptr @rewrite_expr_tree, ptr @gsi_for_stmt, i64 344}
!83 = !{ptr @rewrite_expr_tree, ptr @gsi_move_before, i64 236}
!84 = !{ptr @rewrite_expr_tree, ptr @rewrite_expr_tree, i64 1168}
!85 = !{ptr @get_rank, ptr @is_gimple_min_invariant, i64 325270}
!86 = !{ptr @get_rank, ptr @pointer_map_contains, i64 159821}
!87 = !{ptr @get_rank, ptr @gimple_assign_single_p, i64 88075}
!88 = !{ptr @get_rank, ptr @get_rank, i64 240816}
!89 = !{ptr @get_rank, ptr @pointer_map_insert, i64 88075}
!90 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!91 = !{!"function_entry_count", i64 0}
!92 = !{!93, !93, i64 0}
!93 = !{!"any pointer", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !{!97, !93, i64 8}
!97 = !{!"_IO_FILE", !98, i64 0, !93, i64 8, !93, i64 16, !93, i64 24, !93, i64 32, !93, i64 40, !93, i64 48, !93, i64 56, !93, i64 64, !93, i64 72, !93, i64 80, !93, i64 88, !93, i64 96, !93, i64 104, !98, i64 112, !98, i64 116, !99, i64 120, !100, i64 128, !94, i64 130, !94, i64 131, !93, i64 136, !99, i64 144, !93, i64 152, !93, i64 160, !93, i64 168, !93, i64 176, !99, i64 184, !98, i64 192, !94, i64 196}
!98 = !{!"int", !94, i64 0}
!99 = !{!"long", !94, i64 0}
!100 = !{!"short", !94, i64 0}
!101 = !{!97, !93, i64 16}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{!94, !94, i64 0}
!104 = !{!97, !93, i64 40}
!105 = !{!97, !93, i64 48}
!106 = !{!97, !98, i64 0}
!107 = !{!98, !98, i64 0}
!108 = distinct !{!108, !109, !110}
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = !{!112, !98, i64 0}
!112 = !{!"VEC_operand_entry_t_base", !98, i64 0, !98, i64 4, !94, i64 8}
!113 = !{!114, !98, i64 0}
!114 = !{!"operand_entry", !98, i64 0, !93, i64 8}
!115 = !{!114, !93, i64 8}
!116 = distinct !{!116, !109, !110}
!117 = !{!"function_entry_count", i64 76}
!118 = !{!"tree-ssa-reassoc.c;gate_tree_ssa_reassoc"}
!119 = !{!"tree-ssa-reassoc.c;execute_reassoc"}
!120 = !{!121, !93, i64 8}
!121 = !{!"function", !93, i64 0, !93, i64 8, !93, i64 16, !93, i64 24, !93, i64 32, !93, i64 40, !93, i64 48, !93, i64 56, !93, i64 64, !93, i64 72, !93, i64 80, !93, i64 88, !93, i64 96, !98, i64 104, !98, i64 108, !98, i64 112, !98, i64 116, !98, i64 120, !98, i64 124, !93, i64 128, !98, i64 136, !98, i64 137, !98, i64 138, !98, i64 138, !98, i64 138, !98, i64 138, !98, i64 138, !98, i64 138, !98, i64 138, !98, i64 139, !98, i64 139, !98, i64 139, !98, i64 139, !98, i64 139, !98, i64 139, !98, i64 139}
!122 = !{!123, !98, i64 32}
!123 = !{!"control_flow_graph", !93, i64 0, !93, i64 8, !93, i64 16, !98, i64 24, !98, i64 28, !98, i64 32, !93, i64 40, !98, i64 48, !94, i64 52, !94, i64 60, !98, i64 68, !98, i64 72}
!124 = !{!"branch_weights", i32 1, i32 151}
!125 = !{!"branch_weights", i32 0, i32 76}
!126 = !{!"branch_weights", i32 76, i32 0}
!127 = !{!"branch_weights", i32 151, i32 1}
!128 = distinct !{!128, !109, !110}
!129 = !{!121, !93, i64 56}
!130 = !{!123, !98, i64 24}
!131 = !{!99, !99, i64 0}
!132 = !{!"branch_weights", i32 151, i32 655121}
!133 = distinct !{!133, !109, !110}
!134 = !{!123, !93, i64 0}
!135 = !{!123, !93, i64 8}
!136 = !{!137, !98, i64 0}
!137 = !{!"VEC_tree_base", !98, i64 0, !98, i64 4, !94, i64 8}
!138 = distinct !{!138, !109, !110}
!139 = !{!140, !98, i64 0}
!140 = !{!"", !98, i64 0, !98, i64 4, !98, i64 8, !98, i64 12}
!141 = !{!140, !98, i64 4}
!142 = !{!140, !98, i64 8}
!143 = !{!140, !98, i64 12}
!144 = !{!"function_entry_count", i64 327712}
!145 = !{!"tree-ssa-reassoc.c;break_up_subtract_bb"}
!146 = !{!147, !98, i64 96}
!147 = !{!"basic_block_def", !93, i64 0, !93, i64 8, !93, i64 16, !93, i64 24, !94, i64 32, !93, i64 48, !93, i64 56, !94, i64 64, !99, i64 72, !98, i64 80, !98, i64 84, !98, i64 88, !98, i64 92, !98, i64 96}
!148 = !{!149}
!149 = distinct !{!149, !150, !"gsi_start_bb: argument 0"}
!150 = distinct !{!150, !"gsi_start_bb"}
!151 = !{!"branch_weights", i32 327712, i32 0}
!152 = !{!"branch_weights", i32 76, i32 327636}
!153 = !{!154, !93, i64 0}
!154 = !{!"gimple_bb_info", !93, i64 0, !93, i64 8}
!155 = !{!156, !93, i64 0}
!156 = !{!"gimple_seq_d", !93, i64 0, !93, i64 8, !93, i64 16}
!157 = !{i64 0, i64 8, !92, i64 8, i64 8, !92, i64 16, i64 8, !92}
!158 = !{i64 0, i64 8, !92, i64 8, i64 8, !92}
!159 = !{i64 0, i64 8, !92}
!160 = !{!"branch_weights", i32 1, i32 327711}
!161 = !{!162, !93, i64 0}
!162 = !{!"gimple_seq_node_d", !93, i64 0, !93, i64 8, !93, i64 16}
!163 = !{!"branch_weights", i32 288469, i32 426678}
!164 = !{!"branch_weights", i32 182686, i32 105783}
!165 = !{!"branch_weights", i32 0, i32 182686}
!166 = !{!"branch_weights", i32 12, i32 288457}
!167 = !{!"branch_weights", i32 0, i32 12}
!168 = !{!"branch_weights", i32 12, i32 0}
!169 = !{!147, !93, i64 24}
!170 = !{i8 0, i8 2}
!171 = !{!172, !93, i64 0}
!172 = !{!"", !93, i64 0, !93, i64 8, !93, i64 16}
!173 = !{!162, !93, i64 16}
!174 = !{!"branch_weights", i32 327711, i32 387436}
!175 = distinct !{!175, !109, !110}
!176 = !{!"branch_weights", i32 327636, i32 0}
!177 = distinct !{!177, !109, !110}
!178 = !{!"tree-ssa-reassoc.c;reassociate_bb"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"gsi_last_bb: argument 0"}
!181 = distinct !{!181, !"gsi_last_bb"}
!182 = !{!156, !93, i64 8}
!183 = !{!"branch_weights", i32 105265, i32 183204}
!184 = !{!"branch_weights", i32 104097, i32 1168}
!185 = !{!186, !93, i64 8}
!186 = !{!"ssa_use_operand_d", !93, i64 0, !93, i64 8, !94, i64 16, !93, i64 24}
!187 = !{!"branch_weights", i32 0, i32 1168}
!188 = !{!"branch_weights", i32 1168, i32 0}
!189 = !{!190}
!190 = distinct !{!190, !191, !"gsi_last_bb: argument 0"}
!191 = distinct !{!191, !"gsi_last_bb"}
!192 = !{!"branch_weights", i32 0, i32 104097}
!193 = !{!"branch_weights", i32 104097, i32 0}
!194 = !{!"branch_weights", i32 104091, i32 6}
!195 = !{!"branch_weights", i32 104091, i32 0}
!196 = !{!"branch_weights", i32 0, i32 6}
!197 = !{!"branch_weights", i32 59042, i32 45049}
!198 = !{!"branch_weights", i32 45049, i32 0}
!199 = !{!"branch_weights", i32 3406, i32 41643}
!200 = !{!"branch_weights", i32 41643, i32 0}
!201 = !{!"branch_weights", i32 41643, i32 3406}
!202 = !{!"branch_weights", i32 0, i32 41643}
!203 = !{!"branch_weights", i32 35537, i32 6106}
!204 = !{!"branch_weights", i32 0, i32 19486}
!205 = !{!"branch_weights", i32 13380, i32 6106}
!206 = !{!"branch_weights", i32 6106, i32 13380}
!207 = !{!"branch_weights", i32 7366, i32 6014}
!208 = !{!"branch_weights", i32 5254, i32 2112}
!209 = !{!"branch_weights", i32 5254, i32 0}
!210 = !{!"branch_weights", i32 0, i32 5254}
!211 = !{!"branch_weights", i32 5254, i32 0, i32 0}
!212 = !{!213, !93, i64 0}
!213 = !{!"simple_bitmap_def", !93, i64 0, !98, i64 8, !98, i64 12, !94, i64 16}
!214 = distinct !{!214, !109, !110}
!215 = !{!"branch_weights", i32 6106, i32 0}
!216 = !{!213, !98, i64 12}
!217 = distinct !{!217, !109, !110}
!218 = distinct !{!218, !109, !110}
!219 = !{!220, !98, i64 4}
!220 = !{!"VEC_oecount_base", !98, i64 0, !98, i64 4, !94, i64 8}
!221 = !{!220, !98, i64 0}
!222 = !{i64 0, i64 4, !107, i64 4, i64 4, !107, i64 8, i64 8, !92}
!223 = !{i64 0, i64 4, !107, i64 4, i64 8, !92}
!224 = !{!225, !98, i64 0}
!225 = !{!"oecount_s", !98, i64 0, !98, i64 4, !93, i64 8}
!226 = distinct !{!226, !109, !110}
!227 = distinct !{!227, !109, !110}
!228 = !{!225, !98, i64 4}
!229 = !{!225, !93, i64 8}
!230 = distinct !{!230, !109, !110}
!231 = distinct !{!231, !109, !110}
!232 = distinct !{!232, !109, !110}
!233 = distinct !{!233, !109, !110}
!234 = distinct !{!234, !109, !110}
!235 = !{!"branch_weights", i32 100685, i32 187784}
!236 = !{!"branch_weights", i32 0, i32 715147}
!237 = !{!162, !93, i64 8}
!238 = distinct !{!238, !109, !110}
!239 = distinct !{!239, !109, !110}
!240 = !{!"function_entry_count", i64 64211}
!241 = !{!"tree-ssa-reassoc.c;is_reassociable_op"}
!242 = !{!"branch_weights", i32 0, i32 64211}
!243 = !{!"branch_weights", i32 61079, i32 3132}
!244 = !{!"branch_weights", i32 7518, i32 53561}
!245 = !{!"branch_weights", i32 0, i32 7518}
!246 = !{!"branch_weights", i32 1168, i32 59911}
!247 = !{!"function_entry_count", i64 12}
!248 = !{!"tree-ssa-reassoc.c;get_single_immediate_use"}
!249 = !{!137, !98, i64 4}
!250 = !{!"function_entry_count", i64 42811}
!251 = !{!"tree-ssa-reassoc.c;linearize_expr_tree"}
!252 = !{!"branch_weights", i32 0, i32 42811}
!253 = !{!"branch_weights", i32 42811, i32 0}
!254 = !{!"branch_weights", i32 0, i32 42811, i32 0, i32 0}
!255 = !{!"branch_weights", i32 20380, i32 22431}
!256 = !{!"branch_weights", i32 41643, i32 1168}
!257 = !{!"branch_weights", i32 41643, i32 42811}
!258 = !{!112, !98, i64 4}
!259 = !{!"branch_weights", i32 256, i32 42555}
!260 = !{!"branch_weights", i32 996, i32 172}
!261 = !{!"branch_weights", i32 996, i32 0}
!262 = !{!"function_entry_count", i64 44795}
!263 = !{!"tree-ssa-reassoc.c;sort_by_operand_rank"}
!264 = !{!"branch_weights", i32 172, i32 44623}
!265 = !{!"branch_weights", i32 0, i32 172}
!266 = !{!"branch_weights", i32 17044, i32 27751}
!267 = !{!"branch_weights", i32 17044, i32 0}
!268 = !{!"function_entry_count", i64 41643}
!269 = !{!"tree-ssa-reassoc.c;optimize_ops_list"}
!270 = !{!"branch_weights", i32 22431, i32 19212}
!271 = !{!"branch_weights", i32 0, i32 22431}
!272 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 22431, i32 0, i32 0, i32 0}
!273 = !{!"branch_weights", i32 0, i32 16411, i32 0, i32 6, i32 0, i32 6014, i32 0}
!274 = !{!"branch_weights", i32 16411, i32 0}
!275 = !{!"branch_weights", i32 6, i32 0}
!276 = !{!"branch_weights", i32 6, i32 0, i32 0, i32 0}
!277 = !{!278, !94, i64 46}
!278 = !{!"real_format", !93, i64 0, !93, i64 8, !98, i64 16, !98, i64 20, !98, i64 24, !98, i64 28, !98, i64 32, !98, i64 36, !98, i64 40, !94, i64 44, !94, i64 45, !94, i64 46, !94, i64 47, !94, i64 48, !94, i64 49, !94, i64 50, !94, i64 51}
!279 = !{!278, !94, i64 49}
!280 = !{!"branch_weights", i32 6014, i32 0}
!281 = !{!"branch_weights", i32 6014, i32 0, i32 0, i32 0}
!282 = !{!"branch_weights", i32 0, i32 126097}
!283 = !{!"branch_weights", i32 84454, i32 41643}
!284 = !{!"branch_weights", i32 41643, i32 84454}
!285 = !{!"branch_weights", i32 13392, i32 32822, i32 38240}
!286 = !{!"branch_weights", i32 54651, i32 16411}
!287 = !{!"branch_weights", i32 59905, i32 2112}
!288 = !{!"branch_weights", i32 7518, i32 52387}
!289 = !{!"branch_weights", i32 0, i32 59905}
!290 = !{!"branch_weights", i32 54651, i32 0}
!291 = distinct !{!291, !109, !110}
!292 = !{!"branch_weights", i32 84454, i32 0}
!293 = !{!"branch_weights", i32 564997260, i32 -1293725498}
!294 = !{!"branch_weights", i32 7366, i32 0}
!295 = distinct !{!295, !109, !110}
!296 = distinct !{!296, !109, !110}
!297 = !{!"branch_weights", i32 0, i32 84454, i32 0}
!298 = distinct !{!298, !110}
!299 = !{!"tree-ssa-reassoc.c;rewrite_expr_tree"}
!300 = !{!"branch_weights", i32 308, i32 42503}
!301 = !{!"branch_weights", i32 308, i32 0}
!302 = !{!"branch_weights", i32 92, i32 216}
!303 = !{!"branch_weights", i32 92, i32 0}
!304 = !{i64 0, i64 4, !107, i64 8, i64 8, !92}
!305 = !{!"branch_weights", i32 32060, i32 9583}
!306 = !{!"branch_weights", i32 32016, i32 44}
!307 = !{!"branch_weights", i32 9627, i32 0}
!308 = !{!"branch_weights", i32 0, i32 9627}
!309 = !{!"branch_weights", i32 44, i32 9583}
!310 = !{!"branch_weights", i32 9583, i32 0}
!311 = !{!"branch_weights", i32 932, i32 236}
!312 = !{!"branch_weights", i32 108, i32 128}
!313 = !{!"branch_weights", i32 0, i32 108}
!314 = !{!"branch_weights", i32 1, i32 215}
!315 = !{!"branch_weights", i32 0, i32 236}
!316 = !{!"branch_weights", i32 215, i32 257}
!317 = distinct !{!317, !109, !110}
!318 = !{!"branch_weights", i32 236, i32 0}
!319 = !{!"tree-ssa-reassoc.c;add_to_ops_vec"}
!320 = !{!"function_entry_count", i64 325270}
!321 = !{!"tree-ssa-reassoc.c;get_rank"}
!322 = !{!"branch_weights", i32 238197, i32 87073}
!323 = !{!"branch_weights", i32 176757, i32 61440}
!324 = !{!"branch_weights", i32 176757, i32 0}
!325 = !{!"branch_weights", i32 0, i32 176757}
!326 = !{!"branch_weights", i32 159821, i32 16936}
!327 = !{!"branch_weights", i32 159821, i32 0}
!328 = !{!147, !98, i64 80}
!329 = !{!"branch_weights", i32 88075, i32 71746}
!330 = !{!"branch_weights", i32 57361, i32 30714}
!331 = !{!"branch_weights", i32 0, i32 30714}
!332 = !{!"branch_weights", i32 30708, i32 6}
!333 = !{!"branch_weights", i32 1, i32 0}
!334 = !{!"branch_weights", i32 0, i32 30708}
!335 = !{!"branch_weights", i32 6, i32 12}
!336 = !{!"branch_weights", i32 0, i32 18}
!337 = distinct !{!337, !109, !110}
!338 = !{!"branch_weights", i32 114700, i32 50521}
!339 = !{!"branch_weights", i32 57360, i32 1}
!340 = !{!"branch_weights", i32 0, i32 107860}
!341 = !{!"branch_weights", i32 36344, i32 71516}
!342 = !{!"branch_weights", i32 0, i32 71516}
!343 = !{!"branch_weights", i32 50500, i32 57360}
!344 = distinct !{!344, !109, !110}
!345 = !{!"branch_weights", i32 88075, i32 0}
!346 = !{!"tree-ssa-reassoc.c;get_unary_op"}
!347 = !{!186, !93, i64 0}
!348 = !{!186, !93, i64 24}
!349 = distinct !{!349, !110}
!350 = !{!147, !93, i64 8}
!351 = !{!352, !98, i64 0}
!352 = !{!"VEC_edge_base", !98, i64 0, !98, i64 4, !94, i64 8}
!353 = !{!354, !93, i64 8}
!354 = !{!"edge_def", !93, i64 0, !93, i64 8, !94, i64 16, !93, i64 24, !93, i64 32, !98, i64 40, !98, i64 44, !98, i64 48, !98, i64 52, !99, i64 56}
!355 = !{!356, !358}
!356 = distinct !{!356, !357, !"gsi_start_bb: argument 0"}
!357 = distinct !{!357, !"gsi_start_bb"}
!358 = distinct !{!358, !359, !"gsi_after_labels: argument 0"}
!359 = distinct !{!359, !"gsi_after_labels"}
!360 = !{!358}
!361 = distinct !{!361, !109, !110}
!362 = !{!363, !365}
!363 = distinct !{!363, !364, !"gsi_start_bb: argument 0"}
!364 = distinct !{!364, !"gsi_start_bb"}
!365 = distinct !{!365, !366, !"gsi_after_labels: argument 0"}
!366 = distinct !{!366, !"gsi_after_labels"}
!367 = !{!365}
!368 = !{!354, !98, i64 48}
!369 = distinct !{!369, !109, !110}
!370 = !{!371, !373}
!371 = distinct !{!371, !372, !"gsi_start_bb: argument 0"}
!372 = distinct !{!372, !"gsi_start_bb"}
!373 = distinct !{!373, !374, !"gsi_after_labels: argument 0"}
!374 = distinct !{!374, !"gsi_after_labels"}
!375 = !{!373}
!376 = distinct !{!376, !109, !110}
!377 = !{!"function_entry_count", i64 184}
!378 = !{!"tree-ssa-reassoc.c;is_phi_for_stmt"}
!379 = !{!"branch_weights", i32 184, i32 0}
!380 = !{!"branch_weights", i32 0, i32 184}
!381 = distinct !{!381, !109, !110}
