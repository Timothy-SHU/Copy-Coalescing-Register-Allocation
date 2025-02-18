; ModuleID = 'tree-predcom.c'
source_filename = "tree-predcom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.dref_d = type { ptr, ptr, ptr, i32, %struct.double_int, i32, i8 }
%struct.double_int = type { i64, i64 }
%struct.chain = type { i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_dref_base = type { i32, i32, [1 x ptr] }
%struct.VEC_chain_p_base = type { i32, i32, [1 x ptr] }
%struct.component = type { ptr, i32, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.epcc_data = type { ptr, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x ptr] }
%struct.data_dependence_relation = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.affine_tree_combination = type { ptr, %struct.double_int, i32, [8 x %struct.aff_comb_elt], ptr }
%struct.aff_comb_elt = type { ptr, %struct.double_int }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" (id %u%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c", write\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"      offset \00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"      distance %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"    looparound ref\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"    combination ref\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"      in statement \00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Load motion\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Loads-only\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Store-loads\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Combination\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"tree-predcom.c\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"%s chain %p%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c" (combined)\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"  max distance %u%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c", may reuse first\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"  equal to %p %s %p in type \00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"  vars\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"  inits\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"  references:\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"Component%s:\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c" (invariant)\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [20 x i8] c"Processing loop %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Initial state:\0A\0A\00", align 1
@looparound_phis = internal unnamed_addr global ptr null, align 8
@.str.30 = private unnamed_addr constant [49 x i8] c"Predictive commoning failed: no suitable chains\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Before commoning:\0A\0A\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Unrolling %u times.\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"Executing predictive commoning without unrolling.\0A\00", align 1
@name_expansions = internal global ptr null, align 8
@chrec_known = external local_unnamed_addr global ptr, align 8
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@target_avail_regs = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.34 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@flag_unsafe_math_optimizations = external local_unnamed_addr global i32, align 4
@.str.35 = private unnamed_addr constant [12 x i8] c"predreastmp\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@reltable.dump_chain = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.10 to i64), i64 ptrtoint (ptr @reltable.dump_chain to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable.dump_chain to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.12 to i64), i64 ptrtoint (ptr @reltable.dump_chain to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable.dump_chain to i64)) to i32)], align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !40 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !41
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !40 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !41
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !40 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !41
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !40 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !41
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !40 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !40 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !41
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !40 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !40 {
  %2 = load i32, ptr %0, align 8, !tbaa !55
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !40 {
  %2 = load i32, ptr %0, align 8, !tbaa !55
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !40 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !56
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !40 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !56
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !40 {
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
  br i1 %23, label %7, label %24, !llvm.loop !57

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_dref(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !40 {
  %3 = load ptr, ptr %1, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 4, i64 1, ptr %0)
  %7 = load ptr, ptr %1, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.data_reference, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %9, i32 noundef 2) #19
  %10 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !68
  %12 = load ptr, ptr %1, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.data_reference, ptr %12, i64 0, i32 3
  %14 = load i8, ptr %13, align 8, !tbaa !69
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, ptr @.str.3, ptr @.str.2
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %11, ptr noundef nonnull %16)
  %18 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 13, i64 1, ptr %0)
  %19 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 4
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 4, i32 1
  %22 = load i64, ptr %21, align 8
  tail call void @dump_double_int(ptr noundef %0, i64 %20, i64 %22, i8 noundef zeroext 0) #19
  br label %36

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 16
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 19, i64 1, ptr %0)
  br label %33

31:                                               ; preds = %23
  %32 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 20, i64 1, ptr %0)
  br label %33

33:                                               ; preds = %31, %29
  %34 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 19, i64 1, ptr %0)
  %35 = load ptr, ptr %24, align 8, !tbaa !70
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %35, i32 noundef 0, i32 noundef 2) #19
  br label %36

36:                                               ; preds = %33, %5
  %37 = tail call i32 @fputc(i32 10, ptr %0)
  %38 = getelementptr inbounds %struct.dref_d, ptr %1, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !71
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %39)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dump_double_int(ptr noundef, i64, i64, i8 noundef zeroext) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_chain(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !40 {
  %3 = load i32, ptr %1, align 8, !tbaa !72
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 401, ptr noundef nonnull @.str.15) #19
  unreachable

6:                                                ; preds = %2
  %7 = zext nneg i32 %3 to i64
  %8 = shl i64 %7, 2
  %9 = call ptr @llvm.load.relative.i64(ptr @reltable.dump_chain, i64 %8)
  %10 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 9
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 4
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, ptr @.str.2, ptr @.str.17
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %9, ptr noundef nonnull %1, ptr noundef nonnull %14)
  %16 = load i32, ptr %1, align 8, !tbaa !72
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !74
  %21 = load i8, ptr %10, align 8
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, ptr @.str.19, ptr @.str.2
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %20, ptr noundef nonnull %24)
  br label %26

26:                                               ; preds = %18, %6
  %27 = load i32, ptr %1, align 8, !tbaa !72
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !75
  %32 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !76
  %34 = tail call ptr @op_symbol_code(i32 noundef %33) #19
  %35 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !77
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %31, ptr noundef %34, ptr noundef %36)
  %38 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !78
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %39, i32 noundef 2) #19
  %40 = tail call i32 @fputc(i32 10, ptr %0)
  br label %41

41:                                               ; preds = %29, %26
  %42 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !79
  %44 = icmp eq ptr %43, null
  br i1 %44, label %66, label %45

45:                                               ; preds = %41
  %46 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 6, i64 1, ptr %0)
  br label %47

47:                                               ; preds = %61, %45
  %48 = phi i32 [ 0, %45 ], [ %63, %61 ]
  %49 = load ptr, ptr %42, align 8, !tbaa !79
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %49, align 8, !tbaa !80
  %53 = icmp ugt i32 %52, %48
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = zext i32 %48 to i64
  %56 = getelementptr inbounds %struct.VEC_tree_base, ptr %49, i64 0, i32 2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !41
  br label %58

58:                                               ; preds = %47, %51, %54
  %59 = phi ptr [ %57, %54 ], [ null, %51 ], [ null, %47 ]
  %60 = phi i1 [ false, %54 ], [ true, %51 ], [ true, %47 ]
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @fputc(i32 32, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %59, i32 noundef 2) #19
  %63 = add i32 %48, 1
  br label %47, !llvm.loop !82

64:                                               ; preds = %58
  %65 = tail call i32 @fputc(i32 10, ptr %0)
  br label %66

66:                                               ; preds = %64, %41
  %67 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 8
  %68 = load ptr, ptr %67, align 8, !tbaa !83
  %69 = icmp eq ptr %68, null
  br i1 %69, label %91, label %70

70:                                               ; preds = %66
  %71 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 7, i64 1, ptr %0)
  br label %72

72:                                               ; preds = %86, %70
  %73 = phi i32 [ 0, %70 ], [ %88, %86 ]
  %74 = load ptr, ptr %67, align 8, !tbaa !83
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %74, align 8, !tbaa !80
  %78 = icmp ugt i32 %77, %73
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = zext i32 %73 to i64
  %81 = getelementptr inbounds %struct.VEC_tree_base, ptr %74, i64 0, i32 2, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !41
  br label %83

83:                                               ; preds = %72, %76, %79
  %84 = phi ptr [ %82, %79 ], [ null, %76 ], [ null, %72 ]
  %85 = phi i1 [ false, %79 ], [ true, %76 ], [ true, %72 ]
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = tail call i32 @fputc(i32 32, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %84, i32 noundef 2) #19
  %88 = add i32 %73, 1
  br label %72, !llvm.loop !84

89:                                               ; preds = %83
  %90 = tail call i32 @fputc(i32 10, ptr %0)
  br label %91

91:                                               ; preds = %89, %66
  %92 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 14, i64 1, ptr %0)
  %93 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 5
  br label %94

94:                                               ; preds = %108, %91
  %95 = phi i32 [ 0, %91 ], [ %109, %108 ]
  %96 = load ptr, ptr %93, align 8, !tbaa !85
  %97 = icmp eq ptr %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %96, align 8, !tbaa !86
  %100 = icmp ugt i32 %99, %95
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = zext i32 %95 to i64
  %103 = getelementptr inbounds %struct.VEC_dref_base, ptr %96, i64 0, i32 2, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !41
  br label %105

105:                                              ; preds = %94, %98, %101
  %106 = phi ptr [ %104, %101 ], [ null, %98 ], [ null, %94 ]
  %107 = phi i1 [ false, %101 ], [ true, %98 ], [ true, %94 ]
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  tail call void @dump_dref(ptr noundef %0, ptr noundef %106)
  %109 = add i32 %95, 1
  br label %94, !llvm.loop !88

110:                                              ; preds = %105
  %111 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @op_symbol_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_chains(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !40 {
  %3 = icmp eq ptr %1, null
  br label %4

4:                                                ; preds = %16, %2
  %5 = phi i32 [ 0, %2 ], [ %17, %16 ]
  br i1 %3, label %13, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 8, !tbaa !89
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %1, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  br label %13

13:                                               ; preds = %4, %6, %9
  %14 = phi ptr [ %12, %9 ], [ null, %6 ], [ null, %4 ]
  %15 = phi i1 [ false, %9 ], [ true, %6 ], [ true, %4 ]
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @dump_chain(ptr noundef %0, ptr noundef %14)
  %17 = add i32 %5, 1
  br label %4, !llvm.loop !91

18:                                               ; preds = %13
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_component(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !40 {
  %3 = getelementptr inbounds %struct.component, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !92
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, ptr @.str.26, ptr @.str.2
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %6)
  br label %8

8:                                                ; preds = %22, %2
  %9 = phi i32 [ 0, %2 ], [ %23, %22 ]
  %10 = load ptr, ptr %1, align 8, !tbaa !94
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %10, align 8, !tbaa !86
  %14 = icmp ugt i32 %13, %9
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = zext i32 %9 to i64
  %17 = getelementptr inbounds %struct.VEC_dref_base, ptr %10, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  br label %19

19:                                               ; preds = %8, %12, %15
  %20 = phi ptr [ %18, %15 ], [ null, %12 ], [ null, %8 ]
  %21 = phi i1 [ false, %15 ], [ true, %12 ], [ true, %8 ]
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  tail call void @dump_dref(ptr noundef %0, ptr noundef %20)
  %23 = add i32 %9, 1
  br label %8, !llvm.loop !95

24:                                               ; preds = %19
  %25 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_components(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !40 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  tail call void @dump_component(ptr noundef %0, ptr noundef nonnull %5)
  %6 = getelementptr inbounds %struct.component, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !97

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mark_virtual_ops_for_renaming(ptr noundef %0) local_unnamed_addr #9 !prof !40 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #19
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %5
  %11 = load i64, ptr %7, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 1
  br label %41

16:                                               ; preds = %1
  %17 = add nsw i32 %3, -10
  %18 = icmp ult i32 %17, -9
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @gimple_set_modified(ptr noundef nonnull %0, i8 noundef zeroext 1) #19
  tail call void @update_stmt_operands(ptr noundef nonnull %0) #19
  br label %20

20:                                               ; preds = %16, %19
  %21 = load i32, ptr %0, align 8
  %22 = and i32 %21, 254
  %23 = add nsw i32 %22, -10
  %24 = icmp ult i32 %23, -4
  br i1 %24, label %46, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @cfun, align 8, !tbaa !41
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 51, ptr noundef nonnull @.str.15) #19
  br label %37

37:                                               ; preds = %32, %36
  %38 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !98
  %40 = getelementptr inbounds %struct.gimple_df, ptr %39, i64 0, i32 3
  br label %41

41:                                               ; preds = %37, %14
  %42 = phi ptr [ %15, %14 ], [ %40, %37 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  br label %44

44:                                               ; preds = %41, %10
  %45 = phi ptr [ %7, %10 ], [ %43, %41 ]
  tail call void @mark_sym_for_renaming(ptr noundef %45) #19
  br label %46

46:                                               ; preds = %44, %20, %25, %5
  ret void
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @tree_predictive_commoning() local_unnamed_addr #10 !prof !100 {
  %1 = alloca %struct.immediate_use_iterator_d, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.double_int, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca %struct.tree_niter_desc, align 8
  %22 = alloca %struct.epcc_data, align 8
  tail call void @initialize_original_copy_tables() #19
  %23 = load ptr, ptr @cfun, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  %26 = icmp eq ptr %25, null
  br i1 %26, label %92, label %27, !prof !102

27:                                               ; preds = %0
  %28 = getelementptr inbounds %struct.loops, ptr %25, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !103
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31, !prof !102

31:                                               ; preds = %27
  %32 = load i32, ptr %29, align 8, !tbaa !105
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ %32, %31 ], [ 0, %27 ]
  %35 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %34, i64 noundef 8, i64 noundef 4) #19
  %36 = load ptr, ptr @cfun, align 8, !tbaa !41
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !101
  %39 = getelementptr inbounds %struct.loops, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !103
  %41 = icmp eq ptr %40, null
  br label %42

42:                                               ; preds = %70, %33
  %43 = phi i32 [ 0, %33 ], [ %71, %70 ]
  br i1 %41, label %51, label %44, !prof !107

44:                                               ; preds = %42
  %45 = load i32, ptr %40, align 8, !tbaa !105
  %46 = icmp ugt i32 %45, %43
  br i1 %46, label %47, label %51, !prof !108

47:                                               ; preds = %44
  %48 = zext i32 %43 to i64
  %49 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %40, i64 0, i32 2, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !41
  br label %51

51:                                               ; preds = %47, %44, %42
  %52 = phi ptr [ %50, %47 ], [ null, %44 ], [ null, %42 ]
  %53 = phi i1 [ false, %47 ], [ true, %44 ], [ true, %42 ]
  br i1 %53, label %54, label %56, !prof !108

54:                                               ; preds = %51
  %55 = icmp eq ptr %35, null
  br label %72

56:                                               ; preds = %51
  %57 = icmp eq ptr %52, null
  br i1 %57, label %70, label %58, !prof !102

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.loop, ptr %52, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !109
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %70, !prof !112

62:                                               ; preds = %58
  %63 = load i32, ptr %52, align 8, !tbaa !113
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %70, !prof !102

65:                                               ; preds = %62
  %66 = load i32, ptr %35, align 4, !tbaa !114
  %67 = add i32 %66, 1
  store i32 %67, ptr %35, align 4, !tbaa !114
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds %struct.VEC_int_base, ptr %35, i64 0, i32 2, i64 %68
  store i32 %63, ptr %69, align 4, !tbaa !56
  br label %70

70:                                               ; preds = %65, %62, %58, %56
  %71 = add i32 %43, 1
  br label %42, !llvm.loop !116

72:                                               ; preds = %54, %84
  %73 = phi i32 [ %85, %84 ], [ 0, %54 ]
  br i1 %55, label %81, label %74, !prof !102

74:                                               ; preds = %72
  %75 = load i32, ptr %35, align 4, !tbaa !114
  %76 = icmp ugt i32 %75, %73
  br i1 %76, label %77, label %81, !prof !102

77:                                               ; preds = %74
  %78 = zext i32 %73 to i64
  %79 = getelementptr inbounds %struct.VEC_int_base, ptr %35, i64 0, i32 2, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !56
  br label %81

81:                                               ; preds = %77, %74, %72
  %82 = phi i32 [ %80, %77 ], [ 0, %74 ], [ 0, %72 ]
  %83 = phi i1 [ false, %77 ], [ true, %74 ], [ true, %72 ]
  br i1 %83, label %90, label %84, !prof !112

84:                                               ; preds = %81
  %85 = add i32 %73, 1
  %86 = zext i32 %82 to i64
  %87 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %40, i64 0, i32 2, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !41
  %89 = icmp eq ptr %88, null
  br i1 %89, label %72, label %92, !llvm.loop !117

90:                                               ; preds = %81
  br i1 %55, label %92, label %91, !prof !102

91:                                               ; preds = %90
  tail call void @free(ptr noundef %35)
  br label %92

92:                                               ; preds = %84, %90, %91, %0
  %93 = phi ptr [ null, %0 ], [ null, %91 ], [ null, %90 ], [ %88, %84 ]
  %94 = phi i32 [ 0, %0 ], [ %73, %91 ], [ %73, %90 ], [ %85, %84 ]
  %95 = phi ptr [ null, %0 ], [ null, %91 ], [ null, %90 ], [ %35, %84 ]
  %96 = icmp eq ptr %93, null
  br i1 %96, label %2060, label %97, !prof !118

97:                                               ; preds = %92, %2052
  %98 = phi i8 [ %2025, %2052 ], [ 0, %92 ]
  %99 = phi ptr [ %2055, %2052 ], [ %95, %92 ]
  %100 = phi i32 [ %2054, %2052 ], [ %94, %92 ]
  %101 = phi ptr [ %2053, %2052 ], [ %93, %92 ]
  %102 = call zeroext i8 @optimize_loop_for_speed_p(ptr noundef nonnull %101) #19
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %2024, label %104

104:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %21) #19
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %106 = icmp eq ptr %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr @dump_flags, align 4, !tbaa !56
  %109 = and i32 %108, 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load i32, ptr %101, align 8, !tbaa !113
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %105, ptr noundef nonnull @.str.28, i32 noundef %112)
  br label %114

114:                                              ; preds = %111, %107, %104
  %115 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #19
  store ptr %115, ptr %19, align 8, !tbaa !41
  %116 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #19
  store ptr %116, ptr %20, align 8, !tbaa !41
  %117 = call zeroext i8 @compute_data_dependences_for_loop(ptr noundef nonnull %101, i8 noundef zeroext 1, ptr noundef nonnull %19, ptr noundef nonnull %20) #19
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %119 = icmp eq ptr %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load i32, ptr @dump_flags, align 4, !tbaa !56
  %122 = and i32 %121, 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %20, align 8, !tbaa !41
  call void @dump_data_dependence_relations(ptr noundef nonnull %118, ptr noundef %125) #19
  br label %126

126:                                              ; preds = %124, %120, %114
  %127 = load ptr, ptr %19, align 8, !tbaa !41
  %128 = load ptr, ptr %20, align 8, !tbaa !41
  %129 = icmp eq ptr %127, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load i32, ptr %127, align 8, !tbaa !119
  br label %132

132:                                              ; preds = %130, %126
  %133 = phi i32 [ %131, %130 ], [ 0, %126 ]
  %134 = add i32 %133, 1
  %135 = zext i32 %134 to i64
  %136 = shl nuw nsw i64 %135, 2
  %137 = call ptr @xmalloc(i64 noundef %136) #19
  %138 = call ptr @xmalloc(i64 noundef %136) #19
  %139 = call ptr @get_loop_exit_edges(ptr noundef nonnull %101) #19
  %140 = getelementptr inbounds %struct.loop, ptr %101, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !121
  %142 = icmp eq ptr %139, null
  br label %143

143:                                              ; preds = %156, %132
  %144 = phi i32 [ 0, %132 ], [ %159, %156 ]
  %145 = phi ptr [ %141, %132 ], [ %158, %156 ]
  br i1 %142, label %153, label %146

146:                                              ; preds = %143
  %147 = load i32, ptr %139, align 8, !tbaa !122
  %148 = icmp ugt i32 %147, %144
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = zext i32 %144 to i64
  %151 = getelementptr inbounds %struct.VEC_edge_base, ptr %139, i64 0, i32 2, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !41
  br label %153

153:                                              ; preds = %149, %146, %143
  %154 = phi ptr [ %152, %149 ], [ null, %146 ], [ null, %143 ]
  %155 = phi i1 [ false, %149 ], [ true, %146 ], [ true, %143 ]
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = load ptr, ptr %154, align 8, !tbaa !124
  %158 = call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %145, ptr noundef %157) #19
  %159 = add i32 %144, 1
  br label %143, !llvm.loop !126

160:                                              ; preds = %153
  br i1 %142, label %162, label %161

161:                                              ; preds = %160
  call void @free(ptr noundef %139)
  br label %162

162:                                              ; preds = %161, %160
  br label %163

163:                                              ; preds = %162, %179
  %164 = phi i32 [ %185, %179 ], [ 0, %162 ]
  br i1 %129, label %172, label %165

165:                                              ; preds = %163
  %166 = load i32, ptr %127, align 8, !tbaa !119
  %167 = icmp ugt i32 %166, %164
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = zext i32 %164 to i64
  %170 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %127, i64 0, i32 2, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !41
  br label %172

172:                                              ; preds = %168, %165, %163
  %173 = phi ptr [ %171, %168 ], [ null, %165 ], [ null, %163 ]
  %174 = phi i1 [ false, %168 ], [ true, %165 ], [ true, %163 ]
  br i1 %174, label %186, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.data_reference, ptr %173, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !63
  %178 = icmp eq ptr %177, null
  br i1 %178, label %411, label %179

179:                                              ; preds = %175
  %180 = zext i32 %164 to i64
  %181 = inttoptr i64 %180 to ptr
  %182 = getelementptr inbounds %struct.data_reference, ptr %173, i64 0, i32 2
  store ptr %181, ptr %182, align 8, !tbaa !127
  %183 = getelementptr inbounds i32, ptr %137, i64 %180
  store i32 %164, ptr %183, align 4, !tbaa !56
  %184 = getelementptr inbounds i32, ptr %138, i64 %180
  store i32 1, ptr %184, align 4, !tbaa !56
  %185 = add i32 %164, 1
  br label %163, !llvm.loop !128

186:                                              ; preds = %172
  %187 = zext i32 %133 to i64
  %188 = getelementptr inbounds i32, ptr %137, i64 %187
  store i32 %133, ptr %188, align 4, !tbaa !56
  %189 = getelementptr inbounds i32, ptr %138, i64 %187
  store i32 1, ptr %189, align 4, !tbaa !56
  br label %190

190:                                              ; preds = %212, %186
  %191 = phi i32 [ 0, %186 ], [ %213, %212 ]
  br i1 %129, label %199, label %192

192:                                              ; preds = %190
  %193 = load i32, ptr %127, align 8, !tbaa !119
  %194 = icmp ugt i32 %193, %191
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = zext i32 %191 to i64
  %197 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %127, i64 0, i32 2, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !41
  br label %199

199:                                              ; preds = %195, %192, %190
  %200 = phi ptr [ %198, %195 ], [ null, %192 ], [ null, %190 ]
  %201 = phi i1 [ false, %195 ], [ true, %192 ], [ true, %190 ]
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = icmp eq ptr %128, null
  br label %214

204:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #19
  %205 = call fastcc zeroext i8 @suitable_reference_p(ptr noundef %200, ptr noundef nonnull %17), !range !129
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.data_reference, ptr %200, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !127
  %210 = ptrtoint ptr %209 to i64
  %211 = trunc i64 %210 to i32
  call fastcc void @merge_comps(ptr noundef %137, ptr noundef %138, i32 noundef %133, i32 noundef %211)
  br label %212

212:                                              ; preds = %207, %204
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #19
  %213 = add i32 %191, 1
  br label %190, !llvm.loop !130

214:                                              ; preds = %202, %304
  %215 = phi i32 [ %305, %304 ], [ 0, %202 ]
  br i1 %203, label %223, label %216

216:                                              ; preds = %214
  %217 = load i32, ptr %128, align 8, !tbaa !131
  %218 = icmp ugt i32 %217, %215
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = zext i32 %215 to i64
  %221 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %128, i64 0, i32 2, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !41
  br label %223

223:                                              ; preds = %219, %216, %214
  %224 = phi ptr [ %222, %219 ], [ null, %216 ], [ null, %214 ]
  %225 = phi i1 [ false, %219 ], [ true, %216 ], [ true, %214 ]
  br i1 %225, label %306, label %226

226:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #19
  %227 = getelementptr inbounds %struct.data_dependence_relation, ptr %224, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !133
  %229 = load ptr, ptr @chrec_known, align 8, !tbaa !41
  %230 = icmp eq ptr %228, %229
  br i1 %230, label %304, label %231

231:                                              ; preds = %226
  %232 = load ptr, ptr %224, align 8, !tbaa !135
  %233 = getelementptr inbounds %struct.data_dependence_relation, ptr %224, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !136
  %235 = getelementptr inbounds %struct.data_reference, ptr %232, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !127
  %237 = ptrtoint ptr %236 to i64
  %238 = trunc i64 %237 to i32
  br label %239

239:                                              ; preds = %239, %231
  %240 = phi i32 [ %238, %231 ], [ %243, %239 ]
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i32, ptr %137, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !56
  %244 = icmp eq i32 %240, %243
  br i1 %244, label %245, label %239, !llvm.loop !137

245:                                              ; preds = %239
  %246 = icmp eq i32 %240, %238
  br i1 %246, label %253, label %247

247:                                              ; preds = %245, %247
  %248 = phi i32 [ %251, %247 ], [ %238, %245 ]
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i32, ptr %137, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !56
  store i32 %240, ptr %250, align 4, !tbaa !56
  %252 = icmp eq i32 %251, %240
  br i1 %252, label %253, label %247, !llvm.loop !138

253:                                              ; preds = %247, %245
  %254 = getelementptr inbounds %struct.data_reference, ptr %234, i64 0, i32 2
  %255 = load ptr, ptr %254, align 8, !tbaa !127
  %256 = ptrtoint ptr %255 to i64
  %257 = trunc i64 %256 to i32
  br label %258

258:                                              ; preds = %258, %253
  %259 = phi i32 [ %257, %253 ], [ %262, %258 ]
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, ptr %137, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !56
  %263 = icmp eq i32 %259, %262
  br i1 %263, label %264, label %258, !llvm.loop !137

264:                                              ; preds = %258
  %265 = icmp eq i32 %259, %257
  br i1 %265, label %272, label %266

266:                                              ; preds = %264, %266
  %267 = phi i32 [ %270, %266 ], [ %257, %264 ]
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i32, ptr %137, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !56
  store i32 %259, ptr %269, align 4, !tbaa !56
  %271 = icmp eq i32 %270, %259
  br i1 %271, label %272, label %266, !llvm.loop !138

272:                                              ; preds = %266, %264
  %273 = icmp eq i32 %240, %259
  br i1 %273, label %304, label %274

274:                                              ; preds = %272, %274
  %275 = phi i32 [ %278, %274 ], [ %133, %272 ]
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds i32, ptr %137, i64 %276
  %278 = load i32, ptr %277, align 4, !tbaa !56
  %279 = icmp eq i32 %275, %278
  br i1 %279, label %280, label %274, !llvm.loop !137

280:                                              ; preds = %274
  %281 = icmp eq i32 %133, %275
  br i1 %281, label %288, label %282

282:                                              ; preds = %280, %282
  %283 = phi i32 [ %286, %282 ], [ %133, %280 ]
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i32, ptr %137, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !56
  store i32 %275, ptr %285, align 4, !tbaa !56
  %287 = icmp eq i32 %286, %275
  br i1 %287, label %288, label %282, !llvm.loop !138

288:                                              ; preds = %282, %280
  %289 = getelementptr inbounds %struct.data_reference, ptr %232, i64 0, i32 3
  %290 = load i8, ptr %289, align 8, !tbaa !69
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %303, label %292

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.data_reference, ptr %234, i64 0, i32 3
  %294 = load i8, ptr %293, align 8, !tbaa !69
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %303, label %296

296:                                              ; preds = %292
  %297 = icmp eq i32 %240, %275
  %298 = icmp eq i32 %259, %275
  %299 = or i1 %297, %298
  br i1 %299, label %304, label %300

300:                                              ; preds = %296
  %301 = call fastcc zeroext i8 @determine_offset(ptr noundef %232, ptr noundef %234, ptr noundef nonnull %18)
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %300, %292, %288
  call fastcc void @merge_comps(ptr noundef %137, ptr noundef %138, i32 noundef %240, i32 noundef %259)
  br label %304

304:                                              ; preds = %303, %300, %296, %272, %226
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #19
  %305 = add i32 %215, 1
  br label %214, !llvm.loop !139

306:                                              ; preds = %223
  %307 = call ptr @xcalloc(i64 noundef %187, i64 noundef 8) #19
  br label %308

308:                                              ; preds = %308, %306
  %309 = phi i32 [ %133, %306 ], [ %312, %308 ]
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i32, ptr %137, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !56
  %313 = icmp eq i32 %309, %312
  br i1 %313, label %314, label %308, !llvm.loop !137

314:                                              ; preds = %308
  %315 = icmp eq i32 %133, %309
  br i1 %315, label %322, label %316

316:                                              ; preds = %314, %316
  %317 = phi i32 [ %320, %316 ], [ %133, %314 ]
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds i32, ptr %137, i64 %318
  %320 = load i32, ptr %319, align 4, !tbaa !56
  store i32 %309, ptr %319, align 4, !tbaa !56
  %321 = icmp eq i32 %320, %309
  br i1 %321, label %322, label %316, !llvm.loop !138

322:                                              ; preds = %316, %314
  br label %323

323:                                              ; preds = %322, %395
  %324 = phi i32 [ %396, %395 ], [ 0, %322 ]
  br i1 %129, label %332, label %325

325:                                              ; preds = %323
  %326 = load i32, ptr %127, align 8, !tbaa !119
  %327 = icmp ugt i32 %326, %324
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = zext i32 %324 to i64
  %330 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %127, i64 0, i32 2, i64 %329
  %331 = load ptr, ptr %330, align 8, !tbaa !41
  br label %332

332:                                              ; preds = %328, %325, %323
  %333 = phi ptr [ %331, %328 ], [ null, %325 ], [ null, %323 ]
  %334 = phi i1 [ false, %328 ], [ true, %325 ], [ true, %323 ]
  br i1 %334, label %335, label %339

335:                                              ; preds = %332
  %336 = icmp eq i32 %133, 0
  br i1 %336, label %409, label %337

337:                                              ; preds = %335
  %338 = zext i32 %133 to i64
  br label %397

339:                                              ; preds = %332
  %340 = getelementptr inbounds %struct.data_reference, ptr %333, i64 0, i32 2
  %341 = load ptr, ptr %340, align 8, !tbaa !127
  %342 = ptrtoint ptr %341 to i64
  %343 = trunc i64 %342 to i32
  br label %344

344:                                              ; preds = %344, %339
  %345 = phi i32 [ %343, %339 ], [ %348, %344 ]
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds i32, ptr %137, i64 %346
  %348 = load i32, ptr %347, align 4, !tbaa !56
  %349 = icmp eq i32 %345, %348
  br i1 %349, label %350, label %344, !llvm.loop !137

350:                                              ; preds = %344
  %351 = icmp eq i32 %345, %343
  br i1 %351, label %358, label %352

352:                                              ; preds = %350, %352
  %353 = phi i32 [ %356, %352 ], [ %343, %350 ]
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds i32, ptr %137, i64 %354
  %356 = load i32, ptr %355, align 4, !tbaa !56
  store i32 %345, ptr %355, align 4, !tbaa !56
  %357 = icmp eq i32 %356, %345
  br i1 %357, label %358, label %352, !llvm.loop !138

358:                                              ; preds = %352, %350
  %359 = icmp eq i32 %345, %309
  br i1 %359, label %395, label %360

360:                                              ; preds = %358
  %361 = getelementptr inbounds ptr, ptr %307, i64 %346
  %362 = load ptr, ptr %361, align 8, !tbaa !41
  %363 = icmp eq ptr %362, null
  br i1 %363, label %364, label %369

364:                                              ; preds = %360
  %365 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #19
  %366 = getelementptr inbounds i32, ptr %138, i64 %346
  %367 = load i32, ptr %366, align 4, !tbaa !56
  %368 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %367) #19
  store ptr %368, ptr %365, align 8, !tbaa !94
  store ptr %365, ptr %361, align 8, !tbaa !41
  br label %369

369:                                              ; preds = %364, %360
  %370 = phi ptr [ %362, %360 ], [ %365, %364 ]
  %371 = call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #19
  store ptr %333, ptr %371, align 8, !tbaa !60
  %372 = load ptr, ptr %333, align 8, !tbaa !140
  %373 = getelementptr inbounds %struct.dref_d, ptr %371, i64 0, i32 1
  store ptr %372, ptr %373, align 8, !tbaa !70
  %374 = getelementptr inbounds %struct.dref_d, ptr %371, i64 0, i32 4
  %375 = getelementptr inbounds %struct.dref_d, ptr %371, i64 0, i32 3
  store i32 0, ptr %375, align 8, !tbaa !71
  %376 = getelementptr inbounds %struct.gimple_statement_base, ptr %372, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %374, i8 0, i64 16, i1 false)
  %377 = load ptr, ptr %376, align 8, !tbaa !52
  %378 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %145, ptr noundef %377) #19
  %379 = getelementptr inbounds %struct.dref_d, ptr %371, i64 0, i32 6
  %380 = load i8, ptr %379, align 4
  %381 = and i8 %378, 1
  %382 = and i8 %380, -2
  %383 = or disjoint i8 %382, %381
  store i8 %383, ptr %379, align 4
  %384 = load ptr, ptr %370, align 8, !tbaa !94
  %385 = icmp eq ptr %384, null
  br i1 %385, label %388, label %386

386:                                              ; preds = %369
  %387 = load i32, ptr %384, align 8, !tbaa !86
  br label %388

388:                                              ; preds = %386, %369
  %389 = phi i32 [ %387, %386 ], [ 0, %369 ]
  %390 = getelementptr inbounds %struct.dref_d, ptr %371, i64 0, i32 5
  store i32 %389, ptr %390, align 8, !tbaa !68
  %391 = load i32, ptr %384, align 8, !tbaa !86
  %392 = add i32 %391, 1
  store i32 %392, ptr %384, align 8, !tbaa !86
  %393 = zext i32 %391 to i64
  %394 = getelementptr inbounds %struct.VEC_dref_base, ptr %384, i64 0, i32 2, i64 %393
  store ptr %371, ptr %394, align 8, !tbaa !41
  br label %395

395:                                              ; preds = %388, %358
  %396 = add i32 %324, 1
  br label %323, !llvm.loop !141

397:                                              ; preds = %337, %405
  %398 = phi i64 [ 0, %337 ], [ %407, %405 ]
  %399 = phi ptr [ null, %337 ], [ %406, %405 ]
  %400 = getelementptr inbounds ptr, ptr %307, i64 %398
  %401 = load ptr, ptr %400, align 8, !tbaa !41
  %402 = icmp eq ptr %401, null
  br i1 %402, label %405, label %403

403:                                              ; preds = %397
  %404 = getelementptr inbounds %struct.component, ptr %401, i64 0, i32 2
  store ptr %399, ptr %404, align 8, !tbaa !96
  br label %405

405:                                              ; preds = %403, %397
  %406 = phi ptr [ %401, %403 ], [ %399, %397 ]
  %407 = add nuw nsw i64 %398, 1
  %408 = icmp eq i64 %407, %338
  br i1 %408, label %409, label %397, !llvm.loop !142

409:                                              ; preds = %405, %335
  %410 = phi ptr [ null, %335 ], [ %406, %405 ]
  call void @free(ptr noundef %307)
  br label %411

411:                                              ; preds = %175, %409
  %412 = phi ptr [ %410, %409 ], [ null, %175 ]
  call void @free(ptr noundef %137)
  call void @free(ptr noundef %138)
  %413 = load ptr, ptr %20, align 8, !tbaa !41
  call void @free_dependence_relations(ptr noundef %413) #19
  %414 = icmp eq ptr %412, null
  br i1 %414, label %415, label %417

415:                                              ; preds = %411
  %416 = load ptr, ptr %19, align 8, !tbaa !41
  call void @free_data_refs(ptr noundef %416) #19
  br label %2021

417:                                              ; preds = %411
  %418 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %419 = icmp eq ptr %418, null
  br i1 %419, label %432, label %420

420:                                              ; preds = %417
  %421 = load i32, ptr @dump_flags, align 4, !tbaa !56
  %422 = and i32 %421, 8
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %432, label %424

424:                                              ; preds = %420
  %425 = call i64 @fwrite(ptr nonnull @.str.29, i64 16, i64 1, ptr nonnull %418)
  %426 = load ptr, ptr @dump_file, align 8, !tbaa !41
  br label %427

427:                                              ; preds = %424, %427
  %428 = phi ptr [ %412, %424 ], [ %430, %427 ]
  call void @dump_component(ptr noundef %426, ptr noundef nonnull %428)
  %429 = getelementptr inbounds %struct.component, ptr %428, i64 0, i32 2
  %430 = load ptr, ptr %429, align 8, !tbaa !96
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %427, !llvm.loop !97

432:                                              ; preds = %427, %420, %417
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16)
  store ptr %412, ptr %16, align 8, !tbaa !41
  %433 = getelementptr inbounds %struct.loop, ptr %101, i64 0, i32 2
  br label %434

434:                                              ; preds = %432, %532
  %435 = phi ptr [ %412, %432 ], [ %534, %532 ]
  %436 = phi ptr [ %16, %432 ], [ %533, %532 ]
  %437 = load ptr, ptr %433, align 8, !tbaa !143
  br label %438

438:                                              ; preds = %465, %434
  %439 = phi ptr [ %437, %434 ], [ %458, %465 ]
  %440 = phi i8 [ 0, %434 ], [ %470, %465 ]
  %441 = phi i32 [ 0, %434 ], [ %471, %465 ]
  %442 = load ptr, ptr %435, align 8, !tbaa !94
  %443 = icmp eq ptr %442, null
  br i1 %443, label %451, label %444

444:                                              ; preds = %438
  %445 = load i32, ptr %442, align 8, !tbaa !86
  %446 = icmp ugt i32 %445, %441
  br i1 %446, label %447, label %451

447:                                              ; preds = %444
  %448 = zext i32 %441 to i64
  %449 = getelementptr inbounds %struct.VEC_dref_base, ptr %442, i64 0, i32 2, i64 %448
  %450 = load ptr, ptr %449, align 8, !tbaa !41
  br label %451

451:                                              ; preds = %447, %444, %438
  %452 = phi ptr [ %450, %447 ], [ null, %444 ], [ null, %438 ]
  %453 = phi i1 [ false, %447 ], [ true, %444 ], [ true, %438 ]
  br i1 %453, label %472, label %454

454:                                              ; preds = %451
  %455 = getelementptr inbounds %struct.dref_d, ptr %452, i64 0, i32 1
  %456 = load ptr, ptr %455, align 8, !tbaa !70
  %457 = getelementptr inbounds %struct.gimple_statement_base, ptr %456, i64 0, i32 4
  %458 = load ptr, ptr %457, align 8, !tbaa !52
  %459 = call zeroext i8 @just_once_each_iteration_p(ptr noundef nonnull %101, ptr noundef %458) #19
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %510, label %461

461:                                              ; preds = %454
  %462 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %458, ptr noundef %439) #19
  %463 = icmp eq i8 %462, 0
  br i1 %463, label %464, label %465

464:                                              ; preds = %461
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 828, ptr noundef nonnull @.str.15) #19
  br label %465

465:                                              ; preds = %464, %461
  %466 = load ptr, ptr %452, align 8, !tbaa !60
  %467 = getelementptr inbounds %struct.data_reference, ptr %466, i64 0, i32 3
  %468 = load i8, ptr %467, align 8, !tbaa !69
  %469 = icmp eq i8 %468, 0
  %470 = select i1 %469, i8 1, i8 %440
  %471 = add i32 %441, 1
  br label %438, !llvm.loop !144

472:                                              ; preds = %451
  %473 = getelementptr inbounds %struct.VEC_dref_base, ptr %442, i64 0, i32 2
  %474 = load ptr, ptr %473, align 8, !tbaa !41
  %475 = load ptr, ptr %474, align 8, !tbaa !60
  %476 = getelementptr inbounds %struct.component, ptr %435, i64 0, i32 1
  %477 = call fastcc zeroext i8 @suitable_reference_p(ptr noundef %475, ptr noundef nonnull %476), !range !129
  %478 = icmp eq i8 %477, 0
  br i1 %478, label %479, label %480

479:                                              ; preds = %472
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 837, ptr noundef nonnull @.str.15) #19
  br label %480

480:                                              ; preds = %479, %472
  %481 = getelementptr inbounds %struct.dref_d, ptr %474, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %481, i8 0, i64 16, i1 false)
  br label %482

482:                                              ; preds = %496, %480
  %483 = phi i32 [ 1, %480 ], [ %502, %496 ]
  %484 = load ptr, ptr %435, align 8, !tbaa !94
  %485 = icmp eq ptr %484, null
  br i1 %485, label %493, label %486

486:                                              ; preds = %482
  %487 = load i32, ptr %484, align 8, !tbaa !86
  %488 = icmp ugt i32 %487, %483
  br i1 %488, label %489, label %493

489:                                              ; preds = %486
  %490 = zext i32 %483 to i64
  %491 = getelementptr inbounds %struct.VEC_dref_base, ptr %484, i64 0, i32 2, i64 %490
  %492 = load ptr, ptr %491, align 8, !tbaa !41
  br label %493

493:                                              ; preds = %489, %486, %482
  %494 = phi ptr [ %492, %489 ], [ null, %486 ], [ null, %482 ]
  %495 = phi i1 [ false, %489 ], [ true, %486 ], [ true, %482 ]
  br i1 %495, label %503, label %496

496:                                              ; preds = %493
  %497 = load ptr, ptr %474, align 8, !tbaa !60
  %498 = load ptr, ptr %494, align 8, !tbaa !60
  %499 = getelementptr inbounds %struct.dref_d, ptr %494, i64 0, i32 4
  %500 = call fastcc zeroext i8 @determine_offset(ptr noundef %497, ptr noundef %498, ptr noundef nonnull %499)
  %501 = icmp eq i8 %500, 0
  %502 = add i32 %483, 1
  br i1 %501, label %510, label %482, !llvm.loop !145

503:                                              ; preds = %493
  %504 = icmp eq i8 %440, 0
  br i1 %504, label %508, label %505

505:                                              ; preds = %503
  %506 = load i32, ptr %476, align 8, !tbaa !92
  %507 = icmp eq i32 %506, 2
  br i1 %507, label %510, label %508

508:                                              ; preds = %505, %503
  %509 = getelementptr inbounds %struct.component, ptr %435, i64 0, i32 2
  br label %532

510:                                              ; preds = %454, %496, %505
  %511 = getelementptr inbounds %struct.component, ptr %435, i64 0, i32 2
  %512 = load ptr, ptr %511, align 8, !tbaa !96
  store ptr %512, ptr %436, align 8, !tbaa !41
  br label %513

513:                                              ; preds = %527, %510
  %514 = phi i32 [ 0, %510 ], [ %528, %527 ]
  %515 = load ptr, ptr %435, align 8, !tbaa !41
  %516 = icmp eq ptr %515, null
  br i1 %516, label %524, label %517

517:                                              ; preds = %513
  %518 = load i32, ptr %515, align 8, !tbaa !86
  %519 = icmp ugt i32 %518, %514
  br i1 %519, label %520, label %524

520:                                              ; preds = %517
  %521 = zext i32 %514 to i64
  %522 = getelementptr inbounds %struct.VEC_dref_base, ptr %515, i64 0, i32 2, i64 %521
  %523 = load ptr, ptr %522, align 8, !tbaa !41
  br label %524

524:                                              ; preds = %520, %517, %513
  %525 = phi ptr [ %523, %520 ], [ null, %517 ], [ null, %513 ]
  %526 = phi i1 [ false, %520 ], [ true, %517 ], [ true, %513 ]
  br i1 %526, label %529, label %527

527:                                              ; preds = %524
  call void @free(ptr noundef %525)
  %528 = add i32 %514, 1
  br label %513, !llvm.loop !146

529:                                              ; preds = %524
  br i1 %516, label %531, label %530

530:                                              ; preds = %529
  call void @free(ptr noundef %515)
  br label %531

531:                                              ; preds = %530, %529
  store ptr null, ptr %435, align 8, !tbaa !41
  call void @free(ptr noundef %435)
  br label %532

532:                                              ; preds = %531, %508
  %533 = phi ptr [ %509, %508 ], [ %436, %531 ]
  %534 = load ptr, ptr %533, align 8, !tbaa !41
  %535 = icmp eq ptr %534, null
  br i1 %535, label %536, label %434, !llvm.loop !147

536:                                              ; preds = %532
  %537 = load ptr, ptr %16, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16)
  %538 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %539 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %539, ptr @looparound_phis, align 8, !tbaa !41
  %540 = icmp eq ptr %537, null
  br i1 %540, label %541, label %544

541:                                              ; preds = %836, %536
  %542 = phi ptr [ null, %536 ], [ %837, %836 ]
  %543 = icmp eq ptr %537, null
  br i1 %543, label %850, label %841

544:                                              ; preds = %536, %836
  %545 = phi ptr [ %839, %836 ], [ %537, %536 ]
  %546 = phi ptr [ %837, %836 ], [ null, %536 ]
  %547 = getelementptr inbounds %struct.component, ptr %545, i64 0, i32 1
  %548 = load i32, ptr %547, align 8, !tbaa !92
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %608

550:                                              ; preds = %544
  %551 = call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #19
  store i32 0, ptr %551, align 8, !tbaa !72
  %552 = getelementptr inbounds %struct.chain, ptr %551, i64 0, i32 9
  %553 = load i8, ptr %552, align 8
  %554 = or i8 %553, 2
  store i8 %554, ptr %552, align 8
  %555 = getelementptr inbounds %struct.chain, ptr %551, i64 0, i32 5
  br label %556

556:                                              ; preds = %580, %550
  %557 = phi i32 [ 0, %550 ], [ %592, %580 ]
  %558 = load ptr, ptr %545, align 8, !tbaa !94
  %559 = icmp eq ptr %558, null
  br i1 %559, label %567, label %560

560:                                              ; preds = %556
  %561 = load i32, ptr %558, align 8, !tbaa !86
  %562 = icmp ugt i32 %561, %557
  br i1 %562, label %563, label %567

563:                                              ; preds = %560
  %564 = zext i32 %557 to i64
  %565 = getelementptr inbounds %struct.VEC_dref_base, ptr %558, i64 0, i32 2, i64 %564
  %566 = load ptr, ptr %565, align 8, !tbaa !41
  br label %567

567:                                              ; preds = %563, %560, %556
  %568 = phi ptr [ %566, %563 ], [ null, %560 ], [ null, %556 ]
  %569 = phi i1 [ false, %563 ], [ true, %560 ], [ true, %556 ]
  br i1 %569, label %593, label %570

570:                                              ; preds = %567
  %571 = load ptr, ptr %555, align 8, !tbaa !41
  %572 = icmp eq ptr %571, null
  br i1 %572, label %578, label %573

573:                                              ; preds = %570
  %574 = getelementptr inbounds %struct.VEC_dref_base, ptr %571, i64 0, i32 1
  %575 = load i32, ptr %574, align 4, !tbaa !148
  %576 = load i32, ptr %571, align 8, !tbaa !86
  %577 = icmp eq i32 %575, %576
  br i1 %577, label %578, label %580

578:                                              ; preds = %573, %570
  %579 = call ptr @vec_heap_p_reserve(ptr noundef %571, i32 noundef 1) #19
  store ptr %579, ptr %555, align 8, !tbaa !41
  br label %580

580:                                              ; preds = %578, %573
  %581 = load ptr, ptr %555, align 8, !tbaa !41
  %582 = load i32, ptr %581, align 8, !tbaa !86
  %583 = add i32 %582, 1
  store i32 %583, ptr %581, align 8, !tbaa !86
  %584 = zext i32 %582 to i64
  %585 = getelementptr inbounds %struct.VEC_dref_base, ptr %581, i64 0, i32 2, i64 %584
  store ptr %568, ptr %585, align 8, !tbaa !41
  %586 = getelementptr inbounds %struct.dref_d, ptr %568, i64 0, i32 6
  %587 = load i8, ptr %586, align 4
  %588 = load i8, ptr %552, align 8
  %589 = shl i8 %587, 1
  %590 = or i8 %589, -3
  %591 = and i8 %590, %588
  store i8 %591, ptr %552, align 8
  %592 = add i32 %557, 1
  br label %556, !llvm.loop !149

593:                                              ; preds = %567
  %594 = icmp eq ptr %546, null
  br i1 %594, label %600, label %595

595:                                              ; preds = %593
  %596 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %546, i64 0, i32 1
  %597 = load i32, ptr %596, align 4, !tbaa !150
  %598 = load i32, ptr %546, align 8, !tbaa !89
  %599 = icmp eq i32 %597, %598
  br i1 %599, label %600, label %602

600:                                              ; preds = %595, %593
  %601 = call ptr @vec_heap_p_reserve(ptr noundef %546, i32 noundef 1) #19
  br label %602

602:                                              ; preds = %600, %595
  %603 = phi ptr [ %601, %600 ], [ %546, %595 ]
  %604 = load i32, ptr %603, align 8, !tbaa !89
  %605 = add i32 %604, 1
  store i32 %605, ptr %603, align 8, !tbaa !89
  %606 = zext i32 %604 to i64
  %607 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %603, i64 0, i32 2, i64 %606
  store ptr %551, ptr %607, align 8, !tbaa !41
  br label %836

608:                                              ; preds = %544
  %609 = load ptr, ptr %545, align 8, !tbaa !94
  %610 = icmp eq ptr %609, null
  %611 = getelementptr inbounds %struct.VEC_dref_base, ptr %609, i64 0, i32 2
  %612 = select i1 %610, ptr null, ptr %611
  br i1 %610, label %615, label %613

613:                                              ; preds = %608
  %614 = load i32, ptr %609, align 8, !tbaa !86
  br label %615

615:                                              ; preds = %613, %608
  %616 = phi i32 [ %614, %613 ], [ 0, %608 ]
  %617 = zext i32 %616 to i64
  call void @spec_qsort(ptr noundef %612, i64 noundef %617, i64 noundef 8, ptr noundef nonnull @order_drefs) #19
  br label %618

618:                                              ; preds = %806, %615
  %619 = phi ptr [ %546, %615 ], [ %807, %806 ]
  %620 = phi i64 [ 0, %615 ], [ %808, %806 ]
  %621 = phi i64 [ 0, %615 ], [ %809, %806 ]
  %622 = phi ptr [ null, %615 ], [ %810, %806 ]
  %623 = phi i32 [ 0, %615 ], [ %811, %806 ]
  %624 = load ptr, ptr %545, align 8, !tbaa !94
  %625 = icmp eq ptr %624, null
  br i1 %625, label %633, label %626

626:                                              ; preds = %618
  %627 = load i32, ptr %624, align 8, !tbaa !86
  %628 = icmp ugt i32 %627, %623
  br i1 %628, label %629, label %633

629:                                              ; preds = %626
  %630 = zext i32 %623 to i64
  %631 = getelementptr inbounds %struct.VEC_dref_base, ptr %624, i64 0, i32 2, i64 %630
  %632 = load ptr, ptr %631, align 8, !tbaa !41
  br label %633

633:                                              ; preds = %629, %626, %618
  %634 = phi ptr [ %632, %629 ], [ null, %626 ], [ null, %618 ]
  %635 = phi i1 [ false, %629 ], [ true, %626 ], [ true, %618 ]
  %636 = icmp eq ptr %622, null
  br i1 %635, label %812, label %637

637:                                              ; preds = %633
  br i1 %636, label %667, label %638

638:                                              ; preds = %637
  %639 = load ptr, ptr %634, align 8, !tbaa !60
  %640 = getelementptr inbounds %struct.data_reference, ptr %639, i64 0, i32 3
  %641 = load i8, ptr %640, align 8, !tbaa !69
  %642 = icmp eq i8 %641, 0
  br i1 %642, label %659, label %643

643:                                              ; preds = %638
  %644 = load i32, ptr @target_avail_regs, align 4, !tbaa !56
  %645 = icmp ult i32 %644, 16
  %646 = select i1 %645, i64 4, i64 8
  %647 = getelementptr inbounds %struct.dref_d, ptr %634, i64 0, i32 4
  %648 = call { i64, i64 } @double_int_neg(i64 %620, i64 %621) #19
  %649 = extractvalue { i64, i64 } %648, 0
  %650 = extractvalue { i64, i64 } %648, 1
  %651 = load i64, ptr %647, align 8
  %652 = getelementptr inbounds %struct.dref_d, ptr %634, i64 0, i32 4, i32 1
  %653 = load i64, ptr %652, align 8
  %654 = call { i64, i64 } @double_int_add(i64 %651, i64 %653, i64 %649, i64 %650) #19
  %655 = extractvalue { i64, i64 } %654, 0
  %656 = extractvalue { i64, i64 } %654, 1
  %657 = call i32 @double_int_ucmp(i64 %646, i64 0, i64 %655, i64 %656) #19
  %658 = icmp slt i32 %657, 1
  br i1 %658, label %659, label %723

659:                                              ; preds = %643, %638
  %660 = getelementptr inbounds %struct.chain, ptr %622, i64 0, i32 5
  %661 = load ptr, ptr %660, align 8, !tbaa !85
  %662 = icmp eq ptr %661, null
  br i1 %662, label %667, label %663

663:                                              ; preds = %659
  %664 = load i32, ptr %661, align 8, !tbaa !86
  %665 = icmp ugt i32 %664, 1
  %666 = zext i1 %665 to i8
  br label %667

667:                                              ; preds = %663, %659, %637
  %668 = phi i8 [ %666, %663 ], [ 0, %659 ], [ 0, %637 ]
  %669 = icmp eq i8 %668, 0
  br i1 %669, label %685, label %670

670:                                              ; preds = %667
  call fastcc void @add_looparound_copies(ptr noundef nonnull %101, ptr noundef %622)
  %671 = icmp eq ptr %619, null
  br i1 %671, label %677, label %672

672:                                              ; preds = %670
  %673 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %619, i64 0, i32 1
  %674 = load i32, ptr %673, align 4, !tbaa !150
  %675 = load i32, ptr %619, align 8, !tbaa !89
  %676 = icmp eq i32 %674, %675
  br i1 %676, label %677, label %679

677:                                              ; preds = %672, %670
  %678 = call ptr @vec_heap_p_reserve(ptr noundef %619, i32 noundef 1) #19
  br label %679

679:                                              ; preds = %677, %672
  %680 = phi ptr [ %678, %677 ], [ %619, %672 ]
  %681 = load i32, ptr %680, align 8, !tbaa !89
  %682 = add i32 %681, 1
  store i32 %682, ptr %680, align 8, !tbaa !89
  %683 = zext i32 %681 to i64
  %684 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %680, i64 0, i32 2, i64 %683
  store ptr %622, ptr %684, align 8, !tbaa !41
  br label %686

685:                                              ; preds = %667
  call fastcc void @release_chain(ptr noundef %622)
  br label %686

686:                                              ; preds = %685, %679
  %687 = phi ptr [ %619, %685 ], [ %680, %679 ]
  %688 = call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #19
  %689 = load ptr, ptr %634, align 8, !tbaa !60
  %690 = getelementptr inbounds %struct.data_reference, ptr %689, i64 0, i32 3
  %691 = load i8, ptr %690, align 8, !tbaa !69
  %692 = icmp eq i8 %691, 0
  %693 = select i1 %692, i32 2, i32 1
  store i32 %693, ptr %688, align 8, !tbaa !72
  %694 = getelementptr inbounds %struct.chain, ptr %688, i64 0, i32 5
  %695 = load ptr, ptr %694, align 8, !tbaa !41
  %696 = icmp eq ptr %695, null
  br i1 %696, label %702, label %697

697:                                              ; preds = %686
  %698 = getelementptr inbounds %struct.VEC_dref_base, ptr %695, i64 0, i32 1
  %699 = load i32, ptr %698, align 4, !tbaa !148
  %700 = load i32, ptr %695, align 8, !tbaa !86
  %701 = icmp eq i32 %699, %700
  br i1 %701, label %702, label %704

702:                                              ; preds = %697, %686
  %703 = call ptr @vec_heap_p_reserve(ptr noundef %695, i32 noundef 1) #19
  store ptr %703, ptr %694, align 8, !tbaa !41
  br label %704

704:                                              ; preds = %702, %697
  %705 = load ptr, ptr %694, align 8, !tbaa !41
  %706 = load i32, ptr %705, align 8, !tbaa !86
  %707 = add i32 %706, 1
  store i32 %707, ptr %705, align 8, !tbaa !86
  %708 = zext i32 %706 to i64
  %709 = getelementptr inbounds %struct.VEC_dref_base, ptr %705, i64 0, i32 2, i64 %708
  store ptr %634, ptr %709, align 8, !tbaa !41
  %710 = getelementptr inbounds %struct.dref_d, ptr %634, i64 0, i32 6
  %711 = load i8, ptr %710, align 4
  %712 = getelementptr inbounds %struct.chain, ptr %688, i64 0, i32 9
  %713 = load i8, ptr %712, align 8
  %714 = shl i8 %711, 1
  %715 = and i8 %714, 2
  %716 = and i8 %713, -3
  %717 = or disjoint i8 %716, %715
  store i8 %717, ptr %712, align 8
  %718 = getelementptr inbounds %struct.dref_d, ptr %634, i64 0, i32 3
  store i32 0, ptr %718, align 8, !tbaa !71
  %719 = getelementptr inbounds %struct.dref_d, ptr %634, i64 0, i32 4
  %720 = load i64, ptr %719, align 8, !tbaa.struct !151
  %721 = getelementptr inbounds %struct.dref_d, ptr %634, i64 0, i32 4, i32 1
  %722 = load i64, ptr %721, align 8, !tbaa.struct !153
  br label %806

723:                                              ; preds = %643
  %724 = getelementptr inbounds %struct.chain, ptr %622, i64 0, i32 5
  %725 = load ptr, ptr %724, align 8, !tbaa !85
  %726 = getelementptr inbounds %struct.VEC_dref_base, ptr %725, i64 0, i32 2
  %727 = load ptr, ptr %726, align 8, !tbaa !41
  %728 = getelementptr inbounds %struct.dref_d, ptr %727, i64 0, i32 4
  %729 = load i64, ptr %728, align 8
  %730 = getelementptr inbounds %struct.dref_d, ptr %727, i64 0, i32 4, i32 1
  %731 = load i64, ptr %730, align 8
  %732 = load i64, ptr %647, align 8
  %733 = load i64, ptr %652, align 8
  %734 = call i32 @double_int_scmp(i64 %729, i64 %731, i64 %732, i64 %733) #19
  %735 = icmp slt i32 %734, 1
  br i1 %735, label %737, label %736

736:                                              ; preds = %723
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 926, ptr noundef nonnull @.str.15) #19
  br label %737

737:                                              ; preds = %736, %723
  %738 = load i64, ptr %728, align 8
  %739 = load i64, ptr %730, align 8
  %740 = call { i64, i64 } @double_int_neg(i64 %738, i64 %739) #19
  %741 = extractvalue { i64, i64 } %740, 0
  %742 = extractvalue { i64, i64 } %740, 1
  %743 = load i64, ptr %647, align 8
  %744 = load i64, ptr %652, align 8
  %745 = call { i64, i64 } @double_int_add(i64 %743, i64 %744, i64 %741, i64 %742) #19
  %746 = extractvalue { i64, i64 } %745, 0
  %747 = extractvalue { i64, i64 } %745, 1
  %748 = load i32, ptr @target_avail_regs, align 4, !tbaa !56
  %749 = icmp ult i32 %748, 16
  %750 = select i1 %749, i64 4, i64 8
  %751 = call i32 @double_int_ucmp(i64 %750, i64 0, i64 %746, i64 %747) #19
  %752 = icmp slt i32 %751, 1
  br i1 %752, label %753, label %754

753:                                              ; preds = %737
  call void @free(ptr noundef %634)
  br label %806

754:                                              ; preds = %737
  %755 = call zeroext i8 @double_int_fits_in_uhwi_p(i64 %746, i64 %747) #19
  %756 = icmp eq i8 %755, 0
  br i1 %756, label %757, label %758

757:                                              ; preds = %754
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 933, ptr noundef nonnull @.str.15) #19
  br label %758

758:                                              ; preds = %757, %754
  %759 = load ptr, ptr %724, align 8, !tbaa !41
  %760 = icmp eq ptr %759, null
  br i1 %760, label %766, label %761

761:                                              ; preds = %758
  %762 = getelementptr inbounds %struct.VEC_dref_base, ptr %759, i64 0, i32 1
  %763 = load i32, ptr %762, align 4, !tbaa !148
  %764 = load i32, ptr %759, align 8, !tbaa !86
  %765 = icmp eq i32 %763, %764
  br i1 %765, label %766, label %768

766:                                              ; preds = %761, %758
  %767 = call ptr @vec_heap_p_reserve(ptr noundef %759, i32 noundef 1) #19
  store ptr %767, ptr %724, align 8, !tbaa !41
  br label %768

768:                                              ; preds = %766, %761
  %769 = load ptr, ptr %724, align 8, !tbaa !41
  %770 = load i32, ptr %769, align 8, !tbaa !86
  %771 = add i32 %770, 1
  store i32 %771, ptr %769, align 8, !tbaa !86
  %772 = zext i32 %770 to i64
  %773 = getelementptr inbounds %struct.VEC_dref_base, ptr %769, i64 0, i32 2, i64 %772
  store ptr %634, ptr %773, align 8, !tbaa !41
  %774 = call i64 @double_int_to_uhwi(i64 %746, i64 %747) #19
  %775 = trunc i64 %774 to i32
  %776 = getelementptr inbounds %struct.dref_d, ptr %634, i64 0, i32 3
  store i32 %775, ptr %776, align 8, !tbaa !71
  %777 = getelementptr inbounds %struct.chain, ptr %622, i64 0, i32 6
  %778 = load i32, ptr %777, align 8, !tbaa !74
  %779 = icmp ugt i32 %778, %775
  br i1 %779, label %784, label %780

780:                                              ; preds = %768
  store i32 %775, ptr %777, align 8, !tbaa !74
  %781 = getelementptr inbounds %struct.chain, ptr %622, i64 0, i32 9
  %782 = load i8, ptr %781, align 8
  %783 = and i8 %782, -2
  store i8 %783, ptr %781, align 8
  br label %784

784:                                              ; preds = %780, %768
  %785 = load i32, ptr %776, align 8, !tbaa !71
  %786 = load i32, ptr %777, align 8, !tbaa !74
  %787 = icmp eq i32 %785, %786
  br i1 %787, label %788, label %798

788:                                              ; preds = %784
  %789 = getelementptr inbounds %struct.dref_d, ptr %634, i64 0, i32 5
  %790 = load i32, ptr %789, align 8, !tbaa !68
  %791 = getelementptr inbounds %struct.dref_d, ptr %727, i64 0, i32 5
  %792 = load i32, ptr %791, align 8, !tbaa !68
  %793 = icmp ugt i32 %790, %792
  br i1 %793, label %794, label %798

794:                                              ; preds = %788
  %795 = getelementptr inbounds %struct.chain, ptr %622, i64 0, i32 9
  %796 = load i8, ptr %795, align 8
  %797 = or i8 %796, 1
  store i8 %797, ptr %795, align 8
  br label %798

798:                                              ; preds = %794, %788, %784
  %799 = getelementptr inbounds %struct.dref_d, ptr %634, i64 0, i32 6
  %800 = load i8, ptr %799, align 4
  %801 = getelementptr inbounds %struct.chain, ptr %622, i64 0, i32 9
  %802 = load i8, ptr %801, align 8
  %803 = shl i8 %800, 1
  %804 = or i8 %803, -3
  %805 = and i8 %804, %802
  store i8 %805, ptr %801, align 8
  br label %806

806:                                              ; preds = %798, %753, %704
  %807 = phi ptr [ %687, %704 ], [ %619, %753 ], [ %619, %798 ]
  %808 = phi i64 [ %720, %704 ], [ %620, %753 ], [ %620, %798 ]
  %809 = phi i64 [ %722, %704 ], [ %621, %753 ], [ %621, %798 ]
  %810 = phi ptr [ %688, %704 ], [ %622, %753 ], [ %622, %798 ]
  %811 = add i32 %623, 1
  br label %618, !llvm.loop !154

812:                                              ; preds = %633
  br i1 %636, label %835, label %813

813:                                              ; preds = %812
  %814 = getelementptr inbounds %struct.chain, ptr %622, i64 0, i32 5
  %815 = load ptr, ptr %814, align 8, !tbaa !85
  %816 = icmp eq ptr %815, null
  br i1 %816, label %835, label %817

817:                                              ; preds = %813
  %818 = load i32, ptr %815, align 8, !tbaa !86
  %819 = icmp ult i32 %818, 2
  br i1 %819, label %835, label %820

820:                                              ; preds = %817
  call fastcc void @add_looparound_copies(ptr noundef nonnull %101, ptr noundef nonnull %622)
  %821 = icmp eq ptr %619, null
  br i1 %821, label %827, label %822

822:                                              ; preds = %820
  %823 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %619, i64 0, i32 1
  %824 = load i32, ptr %823, align 4, !tbaa !150
  %825 = load i32, ptr %619, align 8, !tbaa !89
  %826 = icmp eq i32 %824, %825
  br i1 %826, label %827, label %829

827:                                              ; preds = %822, %820
  %828 = call ptr @vec_heap_p_reserve(ptr noundef %619, i32 noundef 1) #19
  br label %829

829:                                              ; preds = %827, %822
  %830 = phi ptr [ %828, %827 ], [ %619, %822 ]
  %831 = load i32, ptr %830, align 8, !tbaa !89
  %832 = add i32 %831, 1
  store i32 %832, ptr %830, align 8, !tbaa !89
  %833 = zext i32 %831 to i64
  %834 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %830, i64 0, i32 2, i64 %833
  store ptr %622, ptr %834, align 8, !tbaa !41
  br label %836

835:                                              ; preds = %817, %813, %812
  call fastcc void @release_chain(ptr noundef %622)
  br label %836

836:                                              ; preds = %835, %829, %602
  %837 = phi ptr [ %603, %602 ], [ %619, %835 ], [ %830, %829 ]
  %838 = getelementptr inbounds %struct.component, ptr %545, i64 0, i32 2
  %839 = load ptr, ptr %838, align 8, !tbaa !96
  %840 = icmp eq ptr %839, null
  br i1 %840, label %541, label %544, !llvm.loop !155

841:                                              ; preds = %541, %848
  %842 = phi ptr [ %844, %848 ], [ %537, %541 ]
  %843 = getelementptr inbounds %struct.component, ptr %842, i64 0, i32 2
  %844 = load ptr, ptr %843, align 8, !tbaa !96
  %845 = load ptr, ptr %842, align 8, !tbaa !41
  %846 = icmp eq ptr %845, null
  br i1 %846, label %848, label %847

847:                                              ; preds = %841
  call void @free(ptr noundef %845)
  br label %848

848:                                              ; preds = %847, %841
  store ptr null, ptr %842, align 8, !tbaa !41
  call void @free(ptr noundef %842)
  %849 = icmp eq ptr %844, null
  br i1 %849, label %850, label %841, !llvm.loop !156

850:                                              ; preds = %848, %541
  %851 = icmp eq ptr %542, null
  br i1 %851, label %855, label %852

852:                                              ; preds = %850
  %853 = load i32, ptr %542, align 8, !tbaa !89
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %989, label %864

855:                                              ; preds = %850
  %856 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %857 = icmp eq ptr %856, null
  br i1 %857, label %1998, label %858

858:                                              ; preds = %855
  %859 = load i32, ptr @dump_flags, align 4, !tbaa !56
  %860 = and i32 %859, 8
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %1998, label %862

862:                                              ; preds = %858
  %863 = call i64 @fwrite(ptr nonnull @.str.30, i64 48, i64 1, ptr nonnull %856)
  br label %1998

864:                                              ; preds = %852, %985
  %865 = phi i32 [ %986, %985 ], [ 0, %852 ]
  %866 = zext i32 %865 to i64
  %867 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %542, i64 0, i32 2, i64 %866
  %868 = load ptr, ptr %867, align 8, !tbaa !41
  %869 = load i32, ptr %868, align 8, !tbaa !72
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %874, label %871

871:                                              ; preds = %864
  %872 = getelementptr inbounds %struct.chain, ptr %868, i64 0, i32 6
  %873 = load i32, ptr %872, align 8, !tbaa !74
  br label %874

874:                                              ; preds = %871, %864
  %875 = phi i32 [ %873, %871 ], [ 1, %864 ]
  %876 = getelementptr inbounds %struct.chain, ptr %868, i64 0, i32 5
  %877 = load ptr, ptr %876, align 8, !tbaa !85
  %878 = getelementptr inbounds %struct.VEC_dref_base, ptr %877, i64 0, i32 2
  %879 = load ptr, ptr %878, align 8, !tbaa !41
  %880 = load ptr, ptr %879, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #19
  %881 = call ptr @loop_preheader_edge(ptr noundef nonnull %101) #19
  %882 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %875) #19
  %883 = getelementptr inbounds %struct.chain, ptr %868, i64 0, i32 8
  store ptr %882, ptr %883, align 8, !tbaa !83
  %884 = icmp eq i32 %875, 0
  br i1 %884, label %885, label %887

885:                                              ; preds = %887, %874
  %886 = getelementptr inbounds %struct.edge_def, ptr %881, i64 0, i32 6
  br label %896

887:                                              ; preds = %874, %887
  %888 = phi i32 [ %894, %887 ], [ 0, %874 ]
  %889 = load ptr, ptr %883, align 8, !tbaa !83
  %890 = load i32, ptr %889, align 8, !tbaa !80
  %891 = add i32 %890, 1
  store i32 %891, ptr %889, align 8, !tbaa !80
  %892 = zext i32 %890 to i64
  %893 = getelementptr inbounds %struct.VEC_tree_base, ptr %889, i64 0, i32 2, i64 %892
  store ptr null, ptr %893, align 8, !tbaa !41
  %894 = add nuw i32 %888, 1
  %895 = icmp eq i32 %894, %875
  br i1 %895, label %885, label %887, !llvm.loop !157

896:                                              ; preds = %885, %944
  %897 = phi i32 [ %945, %944 ], [ 0, %885 ]
  %898 = load ptr, ptr %876, align 8, !tbaa !85
  %899 = icmp eq ptr %898, null
  br i1 %899, label %907, label %900

900:                                              ; preds = %896
  %901 = load i32, ptr %898, align 8, !tbaa !86
  %902 = icmp ugt i32 %901, %897
  br i1 %902, label %903, label %907

903:                                              ; preds = %900
  %904 = zext i32 %897 to i64
  %905 = getelementptr inbounds %struct.VEC_dref_base, ptr %898, i64 0, i32 2, i64 %904
  %906 = load ptr, ptr %905, align 8, !tbaa !41
  br label %907

907:                                              ; preds = %903, %900, %896
  %908 = phi ptr [ %906, %903 ], [ null, %900 ], [ null, %896 ]
  %909 = phi i1 [ false, %903 ], [ true, %900 ], [ true, %896 ]
  br i1 %909, label %910, label %916

910:                                              ; preds = %907
  %911 = icmp eq i32 %875, 0
  br i1 %911, label %983, label %912

912:                                              ; preds = %910
  %913 = getelementptr inbounds %struct.data_reference, ptr %880, i64 0, i32 1
  %914 = getelementptr inbounds %struct.chain, ptr %868, i64 0, i32 9
  %915 = zext i32 %875 to i64
  br label %946

916:                                              ; preds = %907
  %917 = getelementptr inbounds %struct.dref_d, ptr %908, i64 0, i32 1
  %918 = load ptr, ptr %917, align 8, !tbaa !70
  %919 = load i32, ptr %918, align 8
  %920 = and i32 %919, 255
  %921 = icmp eq i32 %920, 16
  br i1 %921, label %922, label %944

922:                                              ; preds = %916
  %923 = getelementptr inbounds %struct.dref_d, ptr %908, i64 0, i32 3
  %924 = load i32, ptr %923, align 8, !tbaa !71
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %926, label %927

926:                                              ; preds = %922
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 2406, ptr noundef nonnull @.str.15) #19
  br label %927

927:                                              ; preds = %926, %922
  %928 = load ptr, ptr %883, align 8, !tbaa !83
  %929 = load i32, ptr %923, align 8, !tbaa !71
  %930 = sub i32 %875, %929
  %931 = load ptr, ptr %917, align 8, !tbaa !70
  %932 = load i32, ptr %886, align 4, !tbaa !158
  %933 = getelementptr inbounds %struct.gimple_statement_phi, ptr %931, i64 0, i32 1
  %934 = load i32, ptr %933, align 8, !tbaa !52
  %935 = icmp ult i32 %934, %932
  br i1 %935, label %936, label %937

936:                                              ; preds = %927
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 3103, ptr noundef nonnull @.str.15) #19
  br label %937

937:                                              ; preds = %936, %927
  %938 = zext i32 %932 to i64
  %939 = getelementptr inbounds %struct.gimple_statement_phi, ptr %931, i64 0, i32 4, i64 %938, i32 0, i32 3
  %940 = load ptr, ptr %939, align 8, !tbaa !159
  %941 = load ptr, ptr %940, align 8, !tbaa !41
  %942 = zext i32 %930 to i64
  %943 = getelementptr inbounds %struct.VEC_tree_base, ptr %928, i64 0, i32 2, i64 %942
  store ptr %941, ptr %943, align 8, !tbaa !41
  br label %944

944:                                              ; preds = %937, %916
  %945 = add i32 %897, 1
  br label %896, !llvm.loop !161

946:                                              ; preds = %912, %974
  %947 = phi i64 [ 0, %912 ], [ %975, %974 ]
  %948 = load ptr, ptr %883, align 8, !tbaa !83
  %949 = getelementptr inbounds %struct.VEC_tree_base, ptr %948, i64 0, i32 2, i64 %947
  %950 = load ptr, ptr %949, align 8, !tbaa !41
  %951 = icmp eq ptr %950, null
  br i1 %951, label %952, label %974

952:                                              ; preds = %946
  %953 = load ptr, ptr %913, align 8, !tbaa !63
  %954 = trunc i64 %947 to i32
  %955 = sub i32 %954, %875
  %956 = call fastcc ptr @ref_at_iteration(ptr noundef nonnull %101, ptr noundef %953, i32 noundef %955)
  %957 = icmp eq ptr %956, null
  br i1 %957, label %977, label %958

958:                                              ; preds = %952
  %959 = load i8, ptr %914, align 8
  %960 = and i8 %959, 2
  %961 = icmp eq i8 %960, 0
  br i1 %961, label %962, label %965

962:                                              ; preds = %958
  %963 = call zeroext i8 @tree_could_trap_p(ptr noundef nonnull %956) #19
  %964 = icmp eq i8 %963, 0
  br i1 %964, label %965, label %977

965:                                              ; preds = %962, %958
  %966 = call ptr @force_gimple_operand(ptr noundef nonnull %956, ptr noundef nonnull %15, i8 noundef zeroext 0, ptr noundef null) #19
  %967 = load ptr, ptr %15, align 8, !tbaa !41
  %968 = icmp eq ptr %967, null
  br i1 %968, label %971, label %969

969:                                              ; preds = %965
  %970 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %881, ptr noundef nonnull %967) #19
  br label %971

971:                                              ; preds = %969, %965
  %972 = load ptr, ptr %883, align 8, !tbaa !83
  %973 = getelementptr inbounds %struct.VEC_tree_base, ptr %972, i64 0, i32 2, i64 %947
  store ptr %966, ptr %973, align 8, !tbaa !41
  br label %974

974:                                              ; preds = %971, %946
  %975 = add nuw nsw i64 %947, 1
  %976 = icmp eq i64 %975, %915
  br i1 %976, label %983, label %946, !llvm.loop !162

977:                                              ; preds = %962, %952
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  call fastcc void @release_chain(ptr noundef nonnull %868)
  %978 = load i32, ptr %542, align 8, !tbaa !89
  %979 = add i32 %978, -1
  store i32 %979, ptr %542, align 8, !tbaa !89
  %980 = zext i32 %979 to i64
  %981 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %542, i64 0, i32 2, i64 %980
  %982 = load ptr, ptr %981, align 8, !tbaa !41
  store ptr %982, ptr %867, align 8, !tbaa !41
  br label %985

983:                                              ; preds = %974, %910
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  %984 = add i32 %865, 1
  br label %985

985:                                              ; preds = %977, %983
  %986 = phi i32 [ %984, %983 ], [ %865, %977 ]
  %987 = load i32, ptr %542, align 8, !tbaa !89
  %988 = icmp ult i32 %986, %987
  br i1 %988, label %864, label %989, !llvm.loop !163

989:                                              ; preds = %985, %852
  br label %990

990:                                              ; preds = %989, %1030
  %991 = phi i64 [ %1032, %1030 ], [ 0, %989 ]
  %992 = phi ptr [ %1031, %1030 ], [ null, %989 ]
  %993 = load i32, ptr %542, align 8, !tbaa !89
  %994 = zext i32 %993 to i64
  %995 = icmp ult i64 %991, %994
  br i1 %995, label %996, label %999

996:                                              ; preds = %990
  %997 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %542, i64 0, i32 2, i64 %991
  %998 = load ptr, ptr %997, align 8, !tbaa !41
  br label %999

999:                                              ; preds = %996, %990
  %1000 = phi ptr [ %998, %996 ], [ null, %990 ]
  br i1 %995, label %1001, label %1709

1001:                                             ; preds = %999
  %1002 = getelementptr inbounds %struct.chain, ptr %1000, i64 0, i32 9
  %1003 = load i8, ptr %1002, align 8
  %1004 = and i8 %1003, 4
  %1005 = icmp eq i8 %1004, 0
  br i1 %1005, label %1006, label %1012

1006:                                             ; preds = %1001
  %1007 = load i32, ptr %1000, align 8, !tbaa !72
  %1008 = icmp eq i32 %1007, 1
  br i1 %1008, label %1012, label %1009

1009:                                             ; preds = %1006
  %1010 = icmp eq i32 %1007, 3
  %1011 = zext i1 %1010 to i8
  br label %1012

1012:                                             ; preds = %1009, %1006, %1001
  %1013 = phi i8 [ 0, %1001 ], [ 1, %1006 ], [ %1011, %1009 ]
  %1014 = icmp eq i8 %1013, 0
  br i1 %1014, label %1030, label %1015

1015:                                             ; preds = %1012
  %1016 = icmp eq ptr %992, null
  br i1 %1016, label %1022, label %1017

1017:                                             ; preds = %1015
  %1018 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %992, i64 0, i32 1
  %1019 = load i32, ptr %1018, align 4, !tbaa !150
  %1020 = load i32, ptr %992, align 8, !tbaa !89
  %1021 = icmp eq i32 %1019, %1020
  br i1 %1021, label %1022, label %1024

1022:                                             ; preds = %1017, %1015
  %1023 = call ptr @vec_heap_p_reserve(ptr noundef %992, i32 noundef 1) #19
  br label %1024

1024:                                             ; preds = %1022, %1017
  %1025 = phi ptr [ %1023, %1022 ], [ %992, %1017 ]
  %1026 = load i32, ptr %1025, align 8, !tbaa !89
  %1027 = add i32 %1026, 1
  store i32 %1027, ptr %1025, align 8, !tbaa !89
  %1028 = zext i32 %1026 to i64
  %1029 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %1025, i64 0, i32 2, i64 %1028
  store ptr %1000, ptr %1029, align 8, !tbaa !41
  br label %1030

1030:                                             ; preds = %1024, %1012
  %1031 = phi ptr [ %992, %1012 ], [ %1025, %1024 ]
  %1032 = add nuw i64 %991, 1
  br label %990, !llvm.loop !164

1033:                                             ; preds = %1715, %1055
  br i1 %1712, label %1036, label %1034

1034:                                             ; preds = %1033
  %1035 = load i32, ptr %1711, align 8, !tbaa !89
  br label %1036

1036:                                             ; preds = %1034, %1033
  %1037 = phi i32 [ %1035, %1034 ], [ 0, %1033 ]
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1716, label %1039

1039:                                             ; preds = %1036
  %1040 = load i32, ptr %1711, align 8, !tbaa !89
  %1041 = add i32 %1040, -1
  store i32 %1041, ptr %1711, align 8, !tbaa !89
  %1042 = zext i32 %1041 to i64
  %1043 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %1711, i64 0, i32 2, i64 %1042
  %1044 = load ptr, ptr %1043, align 8, !tbaa !41
  %1045 = getelementptr inbounds %struct.chain, ptr %1044, i64 0, i32 9
  %1046 = load i8, ptr %1045, align 8
  %1047 = and i8 %1046, 4
  %1048 = icmp eq i8 %1047, 0
  br i1 %1048, label %1049, label %1055

1049:                                             ; preds = %1039
  %1050 = load i32, ptr %1044, align 8, !tbaa !72
  %1051 = icmp eq i32 %1050, 1
  br i1 %1051, label %1055, label %1052

1052:                                             ; preds = %1049
  %1053 = icmp eq i32 %1050, 3
  %1054 = zext i1 %1053 to i8
  br label %1055

1055:                                             ; preds = %1052, %1049, %1039
  %1056 = phi i8 [ 0, %1039 ], [ 1, %1049 ], [ %1054, %1052 ]
  %1057 = icmp eq i8 %1056, 0
  br i1 %1057, label %1033, label %1058, !llvm.loop !165

1058:                                             ; preds = %1055
  %1059 = getelementptr inbounds %struct.chain, ptr %1044, i64 0, i32 6
  %1060 = getelementptr inbounds %struct.chain, ptr %1044, i64 0, i32 5
  br label %1061

1061:                                             ; preds = %1058, %1713
  %1062 = phi i32 [ %1714, %1713 ], [ 0, %1058 ]
  %1063 = load i32, ptr %1710, align 8, !tbaa !89
  %1064 = icmp ugt i32 %1063, %1062
  br i1 %1064, label %1065, label %1069

1065:                                             ; preds = %1061
  %1066 = zext i32 %1062 to i64
  %1067 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %1710, i64 0, i32 2, i64 %1066
  %1068 = load ptr, ptr %1067, align 8, !tbaa !41
  br label %1069

1069:                                             ; preds = %1065, %1061
  %1070 = phi ptr [ %1068, %1065 ], [ null, %1061 ]
  %1071 = phi i1 [ false, %1065 ], [ true, %1061 ]
  br i1 %1071, label %1715, label %1072, !llvm.loop !165

1072:                                             ; preds = %1069
  %1073 = getelementptr inbounds %struct.chain, ptr %1070, i64 0, i32 9
  %1074 = load i8, ptr %1073, align 8
  %1075 = and i8 %1074, 4
  %1076 = icmp eq i8 %1075, 0
  br i1 %1076, label %1077, label %1083

1077:                                             ; preds = %1072
  %1078 = load i32, ptr %1070, align 8, !tbaa !72
  %1079 = icmp eq i32 %1078, 1
  br i1 %1079, label %1083, label %1080

1080:                                             ; preds = %1077
  %1081 = icmp eq i32 %1078, 3
  %1082 = zext i1 %1081 to i8
  br label %1083

1083:                                             ; preds = %1080, %1077, %1072
  %1084 = phi i8 [ 0, %1072 ], [ 1, %1077 ], [ %1082, %1080 ]
  %1085 = icmp eq i8 %1084, 0
  br i1 %1085, label %1713, label %1086

1086:                                             ; preds = %1083
  %1087 = icmp eq ptr %1044, %1070
  br i1 %1087, label %1681, label %1088

1088:                                             ; preds = %1086
  %1089 = load i32, ptr %1059, align 8, !tbaa !74
  %1090 = getelementptr inbounds %struct.chain, ptr %1070, i64 0, i32 6
  %1091 = load i32, ptr %1090, align 8, !tbaa !74
  %1092 = icmp eq i32 %1089, %1091
  br i1 %1092, label %1093, label %1681

1093:                                             ; preds = %1088
  %1094 = load ptr, ptr %1060, align 8, !tbaa !85
  %1095 = icmp eq ptr %1094, null
  br i1 %1095, label %1098, label %1096

1096:                                             ; preds = %1093
  %1097 = load i32, ptr %1094, align 8, !tbaa !86
  br label %1098

1098:                                             ; preds = %1096, %1093
  %1099 = phi i32 [ %1097, %1096 ], [ 0, %1093 ]
  %1100 = getelementptr inbounds %struct.chain, ptr %1070, i64 0, i32 5
  %1101 = load ptr, ptr %1100, align 8, !tbaa !85
  %1102 = icmp eq ptr %1101, null
  br i1 %1102, label %1105, label %1103

1103:                                             ; preds = %1098
  %1104 = load i32, ptr %1101, align 8, !tbaa !86
  br label %1105

1105:                                             ; preds = %1103, %1098
  %1106 = phi i32 [ %1104, %1103 ], [ 0, %1098 ]
  %1107 = icmp eq i32 %1099, %1106
  br i1 %1107, label %1108, label %1681

1108:                                             ; preds = %1105, %1257
  %1109 = phi i32 [ %1258, %1257 ], [ 0, %1105 ]
  %1110 = phi i8 [ %1259, %1257 ], [ 0, %1105 ]
  %1111 = phi ptr [ %1260, %1257 ], [ null, %1105 ]
  %1112 = phi i32 [ %1263, %1257 ], [ 0, %1105 ]
  %1113 = load ptr, ptr %1060, align 8, !tbaa !85
  %1114 = icmp eq ptr %1113, null
  br i1 %1114, label %1122, label %1115

1115:                                             ; preds = %1108
  %1116 = load i32, ptr %1113, align 8, !tbaa !86
  %1117 = icmp ugt i32 %1116, %1112
  br i1 %1117, label %1118, label %1122

1118:                                             ; preds = %1115
  %1119 = zext i32 %1112 to i64
  %1120 = getelementptr inbounds %struct.VEC_dref_base, ptr %1113, i64 0, i32 2, i64 %1119
  %1121 = load ptr, ptr %1120, align 8, !tbaa !41
  br label %1122

1122:                                             ; preds = %1118, %1115, %1108
  %1123 = phi ptr [ %1121, %1118 ], [ null, %1115 ], [ null, %1108 ]
  %1124 = phi i1 [ false, %1118 ], [ true, %1115 ], [ true, %1108 ]
  br i1 %1124, label %1264, label %1125

1125:                                             ; preds = %1122
  %1126 = load ptr, ptr %1100, align 8, !tbaa !85
  %1127 = icmp eq ptr %1126, null
  br i1 %1127, label %1135, label %1128

1128:                                             ; preds = %1125
  %1129 = load i32, ptr %1126, align 8, !tbaa !86
  %1130 = icmp ugt i32 %1129, %1112
  br i1 %1130, label %1131, label %1135

1131:                                             ; preds = %1128
  %1132 = zext i32 %1112 to i64
  %1133 = getelementptr inbounds %struct.VEC_dref_base, ptr %1126, i64 0, i32 2, i64 %1132
  %1134 = load ptr, ptr %1133, align 8, !tbaa !41
  br label %1135

1135:                                             ; preds = %1131, %1128, %1125
  %1136 = phi ptr [ %1134, %1131 ], [ null, %1128 ], [ null, %1125 ]
  %1137 = phi i1 [ false, %1131 ], [ true, %1128 ], [ true, %1125 ]
  br i1 %1137, label %1264, label %1138

1138:                                             ; preds = %1135
  %1139 = getelementptr inbounds %struct.dref_d, ptr %1123, i64 0, i32 3
  %1140 = load i32, ptr %1139, align 8, !tbaa !71
  %1141 = getelementptr inbounds %struct.dref_d, ptr %1136, i64 0, i32 3
  %1142 = load i32, ptr %1141, align 8, !tbaa !71
  %1143 = icmp eq i32 %1140, %1142
  br i1 %1143, label %1144, label %1681

1144:                                             ; preds = %1138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #19
  %1145 = call fastcc ptr @name_for_ref(ptr noundef %1123)
  store ptr %1145, ptr %13, align 8, !tbaa !41
  %1146 = call fastcc ptr @name_for_ref(ptr noundef %1136)
  store ptr %1146, ptr %14, align 8, !tbaa !41
  %1147 = icmp ne ptr %1145, null
  %1148 = icmp ne ptr %1146, null
  %1149 = select i1 %1147, i1 %1148, i1 false
  br i1 %1149, label %1151, label %1150

1150:                                             ; preds = %1144
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 2109, ptr noundef nonnull @.str.15) #19
  br label %1151

1151:                                             ; preds = %1150, %1144
  %1152 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %13)
  %1153 = icmp eq ptr %1152, null
  br i1 %1153, label %1168, label %1154

1154:                                             ; preds = %1151
  %1155 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %14)
  %1156 = icmp eq ptr %1155, null
  br i1 %1156, label %1168, label %1157

1157:                                             ; preds = %1154
  %1158 = icmp eq ptr %1152, %1155
  br i1 %1158, label %1168, label %1159

1159:                                             ; preds = %1157
  %1160 = call fastcc ptr @find_associative_operation_root(ptr noundef nonnull %1152, ptr noundef null)
  %1161 = icmp eq ptr %1160, null
  br i1 %1161, label %1168, label %1162

1162:                                             ; preds = %1159
  %1163 = call fastcc ptr @find_associative_operation_root(ptr noundef nonnull %1155, ptr noundef null)
  %1164 = icmp eq ptr %1163, null
  br i1 %1164, label %1168, label %1165

1165:                                             ; preds = %1162
  %1166 = icmp eq ptr %1160, %1163
  %1167 = select i1 %1166, ptr %1160, ptr null
  br label %1168

1168:                                             ; preds = %1165, %1162, %1159, %1157, %1154, %1151
  %1169 = phi ptr [ %1167, %1165 ], [ null, %1151 ], [ null, %1154 ], [ %1152, %1157 ], [ null, %1159 ], [ null, %1162 ]
  %1170 = icmp eq ptr %1169, null
  br i1 %1170, label %1257, label %1171

1171:                                             ; preds = %1168
  %1172 = load i32, ptr %1169, align 8
  %1173 = trunc i32 %1172 to i8
  switch i8 %1173, label %1176 [
    i8 6, label %1174
    i8 1, label %1174
    i8 8, label %1177
  ]

1174:                                             ; preds = %1171, %1171
  %1175 = lshr i32 %1172, 16
  br label %1177

1176:                                             ; preds = %1171
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1446, ptr noundef nonnull @.str.15) #19
  br label %1177

1177:                                             ; preds = %1176, %1174, %1171
  %1178 = phi i32 [ %1175, %1174 ], [ 0, %1176 ], [ 59, %1171 ]
  %1179 = zext nneg i32 %1178 to i64
  %1180 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1179
  %1181 = load i8, ptr %1180, align 1, !tbaa !52
  %1182 = icmp eq i8 %1181, 3
  br i1 %1182, label %1183, label %1203

1183:                                             ; preds = %1177
  %1184 = load i32, ptr %1169, align 8
  %1185 = and i32 %1184, 255
  %1186 = add nsw i32 %1185, -1
  %1187 = icmp ult i32 %1186, 9
  call void @llvm.assume(i1 %1187)
  %1188 = zext nneg i32 %1185 to i64
  %1189 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1188
  %1190 = load i32, ptr %1189, align 4, !tbaa !56
  %1191 = zext i32 %1190 to i64
  %1192 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1191
  %1193 = load i64, ptr %1192, align 8, !tbaa !152
  %1194 = icmp eq i64 %1193, 0
  br i1 %1194, label %1195, label %1196

1195:                                             ; preds = %1183
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %1196

1196:                                             ; preds = %1195, %1183
  %1197 = getelementptr inbounds i8, ptr %1169, i64 %1193
  %1198 = getelementptr inbounds ptr, ptr %1197, i64 1
  %1199 = load ptr, ptr %1198, align 8, !tbaa !41
  %1200 = load i64, ptr %1199, align 8
  %1201 = trunc i64 %1200 to i32
  %1202 = and i32 %1201, 65535
  br label %1203

1203:                                             ; preds = %1196, %1177
  %1204 = phi i32 [ %1202, %1196 ], [ %1178, %1177 ]
  %1205 = call zeroext i8 @commutative_tree_code(i32 noundef %1204) #19
  %1206 = icmp eq i8 %1205, 0
  br i1 %1206, label %1207, label %1230

1207:                                             ; preds = %1203
  %1208 = load i32, ptr %1169, align 8
  %1209 = and i32 %1208, 255
  %1210 = add nsw i32 %1209, -10
  %1211 = icmp ult i32 %1210, -9
  br i1 %1211, label %1225, label %1212

1212:                                             ; preds = %1207
  %1213 = zext nneg i32 %1209 to i64
  %1214 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1213
  %1215 = load i32, ptr %1214, align 4, !tbaa !56
  %1216 = zext i32 %1215 to i64
  %1217 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1216
  %1218 = load i64, ptr %1217, align 8, !tbaa !152
  %1219 = icmp eq i64 %1218, 0
  br i1 %1219, label %1220, label %1221

1220:                                             ; preds = %1212
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %1221

1221:                                             ; preds = %1220, %1212
  %1222 = getelementptr inbounds i8, ptr %1169, i64 %1218
  %1223 = getelementptr inbounds ptr, ptr %1222, i64 1
  %1224 = load ptr, ptr %1223, align 8, !tbaa !41
  br label %1225

1225:                                             ; preds = %1221, %1207
  %1226 = phi ptr [ %1224, %1221 ], [ null, %1207 ]
  %1227 = load ptr, ptr %13, align 8, !tbaa !41
  %1228 = icmp ne ptr %1226, %1227
  %1229 = zext i1 %1228 to i8
  br label %1230

1230:                                             ; preds = %1225, %1203
  %1231 = phi i8 [ 0, %1203 ], [ %1229, %1225 ]
  %1232 = load i32, ptr %1169, align 8
  %1233 = and i32 %1232, 255
  %1234 = add nsw i32 %1233, -1
  %1235 = icmp ult i32 %1234, 9
  call void @llvm.assume(i1 %1235)
  %1236 = zext nneg i32 %1233 to i64
  %1237 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1236
  %1238 = load i32, ptr %1237, align 4, !tbaa !56
  %1239 = zext i32 %1238 to i64
  %1240 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1239
  %1241 = load i64, ptr %1240, align 8, !tbaa !152
  %1242 = icmp eq i64 %1241, 0
  br i1 %1242, label %1243, label %1244

1243:                                             ; preds = %1230
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %1244

1244:                                             ; preds = %1243, %1230
  %1245 = getelementptr inbounds i8, ptr %1169, i64 %1241
  %1246 = load ptr, ptr %1245, align 8, !tbaa !41
  %1247 = getelementptr inbounds %struct.tree_common, ptr %1246, i64 0, i32 2
  %1248 = load ptr, ptr %1247, align 8, !tbaa !52
  %1249 = icmp eq i32 %1109, 0
  br i1 %1249, label %1257, label %1250

1250:                                             ; preds = %1244
  %1251 = icmp eq i32 %1109, %1204
  %1252 = icmp eq i8 %1110, %1231
  %1253 = select i1 %1251, i1 %1252, i1 false
  br i1 %1253, label %1254, label %1257

1254:                                             ; preds = %1250
  %1255 = icmp eq ptr %1111, %1248
  %1256 = zext i1 %1255 to i8
  br label %1257

1257:                                             ; preds = %1254, %1250, %1244, %1168
  %1258 = phi i32 [ %1109, %1168 ], [ %1109, %1254 ], [ %1109, %1250 ], [ %1204, %1244 ]
  %1259 = phi i8 [ %1110, %1168 ], [ %1110, %1254 ], [ %1110, %1250 ], [ %1231, %1244 ]
  %1260 = phi ptr [ %1111, %1168 ], [ %1111, %1254 ], [ %1111, %1250 ], [ %1248, %1244 ]
  %1261 = phi i8 [ 0, %1168 ], [ %1256, %1254 ], [ 0, %1250 ], [ 1, %1244 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  %1262 = icmp eq i8 %1261, 0
  %1263 = add i32 %1112, 1
  br i1 %1262, label %1681, label %1108, !llvm.loop !166

1264:                                             ; preds = %1135, %1122
  %1265 = icmp eq i8 %1110, 0
  %1266 = select i1 %1265, ptr %1070, ptr %1044
  %1267 = select i1 %1265, ptr %1044, ptr %1070
  %1268 = call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #19
  store i32 3, ptr %1268, align 8, !tbaa !72
  %1269 = getelementptr inbounds %struct.chain, ptr %1268, i64 0, i32 1
  store i32 %1109, ptr %1269, align 4, !tbaa !76
  %1270 = getelementptr inbounds %struct.chain, ptr %1268, i64 0, i32 3
  store ptr %1267, ptr %1270, align 8, !tbaa !75
  %1271 = getelementptr inbounds %struct.chain, ptr %1268, i64 0, i32 4
  store ptr %1266, ptr %1271, align 8, !tbaa !77
  %1272 = getelementptr inbounds %struct.chain, ptr %1268, i64 0, i32 2
  store ptr %1111, ptr %1272, align 8, !tbaa !78
  %1273 = getelementptr inbounds %struct.chain, ptr %1267, i64 0, i32 6
  %1274 = load i32, ptr %1273, align 8, !tbaa !74
  %1275 = getelementptr inbounds %struct.chain, ptr %1268, i64 0, i32 6
  store i32 %1274, ptr %1275, align 8, !tbaa !74
  %1276 = getelementptr inbounds %struct.chain, ptr %1267, i64 0, i32 5
  %1277 = getelementptr inbounds %struct.chain, ptr %1266, i64 0, i32 5
  %1278 = getelementptr inbounds %struct.chain, ptr %1268, i64 0, i32 5
  br label %1279

1279:                                             ; preds = %1628, %1264
  %1280 = phi i32 [ 0, %1264 ], [ %1634, %1628 ]
  %1281 = load ptr, ptr %1276, align 8, !tbaa !85
  %1282 = icmp eq ptr %1281, null
  br i1 %1282, label %1290, label %1283

1283:                                             ; preds = %1279
  %1284 = load i32, ptr %1281, align 8, !tbaa !86
  %1285 = icmp ugt i32 %1284, %1280
  br i1 %1285, label %1286, label %1290

1286:                                             ; preds = %1283
  %1287 = zext i32 %1280 to i64
  %1288 = getelementptr inbounds %struct.VEC_dref_base, ptr %1281, i64 0, i32 2, i64 %1287
  %1289 = load ptr, ptr %1288, align 8, !tbaa !41
  br label %1290

1290:                                             ; preds = %1286, %1283, %1279
  %1291 = phi ptr [ %1289, %1286 ], [ null, %1283 ], [ null, %1279 ]
  %1292 = phi i1 [ false, %1286 ], [ true, %1283 ], [ true, %1279 ]
  br i1 %1292, label %1635, label %1293

1293:                                             ; preds = %1290
  %1294 = load ptr, ptr %1277, align 8, !tbaa !85
  %1295 = icmp eq ptr %1294, null
  br i1 %1295, label %1303, label %1296

1296:                                             ; preds = %1293
  %1297 = load i32, ptr %1294, align 8, !tbaa !86
  %1298 = icmp ugt i32 %1297, %1280
  br i1 %1298, label %1299, label %1303

1299:                                             ; preds = %1296
  %1300 = zext i32 %1280 to i64
  %1301 = getelementptr inbounds %struct.VEC_dref_base, ptr %1294, i64 0, i32 2, i64 %1300
  %1302 = load ptr, ptr %1301, align 8, !tbaa !41
  br label %1303

1303:                                             ; preds = %1299, %1296, %1293
  %1304 = phi ptr [ %1302, %1299 ], [ null, %1296 ], [ null, %1293 ]
  %1305 = phi i1 [ false, %1299 ], [ true, %1296 ], [ true, %1293 ]
  br i1 %1305, label %1635, label %1306

1306:                                             ; preds = %1303
  %1307 = call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  %1308 = call fastcc ptr @name_for_ref(ptr noundef %1291)
  store ptr %1308, ptr %11, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  %1309 = call fastcc ptr @name_for_ref(ptr noundef %1304)
  store ptr %1309, ptr %12, align 8, !tbaa !41
  %1310 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %11)
  %1311 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %12)
  %1312 = icmp eq ptr %1310, %1311
  br i1 %1312, label %1613, label %1313

1313:                                             ; preds = %1306
  %1314 = load ptr, ptr %11, align 8, !tbaa !41
  %1315 = load ptr, ptr %12, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr %1314, ptr %3, align 8, !tbaa !41
  store ptr %1315, ptr %4, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  %1316 = getelementptr inbounds %struct.tree_common, ptr %1314, i64 0, i32 2
  %1317 = load ptr, ptr %1316, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #19
  %1318 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %3)
  %1319 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %4)
  %1320 = call fastcc ptr @find_associative_operation_root(ptr noundef %1318, ptr noundef nonnull %7)
  %1321 = call fastcc ptr @find_associative_operation_root(ptr noundef %1319, ptr noundef nonnull %8)
  %1322 = load i32, ptr %1318, align 8
  %1323 = trunc i32 %1322 to i8
  switch i8 %1323, label %1326 [
    i8 6, label %1324
    i8 1, label %1324
    i8 8, label %1327
  ]

1324:                                             ; preds = %1313, %1313
  %1325 = lshr i32 %1322, 16
  br label %1327

1326:                                             ; preds = %1313
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1446, ptr noundef nonnull @.str.15) #19
  br label %1327

1327:                                             ; preds = %1326, %1324, %1313
  %1328 = phi i32 [ %1325, %1324 ], [ 0, %1326 ], [ 59, %1313 ]
  %1329 = zext nneg i32 %1328 to i64
  %1330 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1329
  %1331 = load i8, ptr %1330, align 1, !tbaa !52
  %1332 = icmp eq i8 %1331, 3
  br i1 %1332, label %1333, label %1353

1333:                                             ; preds = %1327
  %1334 = load i32, ptr %1318, align 8
  %1335 = and i32 %1334, 255
  %1336 = add nsw i32 %1335, -1
  %1337 = icmp ult i32 %1336, 9
  call void @llvm.assume(i1 %1337)
  %1338 = zext nneg i32 %1335 to i64
  %1339 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1338
  %1340 = load i32, ptr %1339, align 4, !tbaa !56
  %1341 = zext i32 %1340 to i64
  %1342 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1341
  %1343 = load i64, ptr %1342, align 8, !tbaa !152
  %1344 = icmp eq i64 %1343, 0
  br i1 %1344, label %1345, label %1346

1345:                                             ; preds = %1333
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %1346

1346:                                             ; preds = %1345, %1333
  %1347 = getelementptr inbounds i8, ptr %1318, i64 %1343
  %1348 = getelementptr inbounds ptr, ptr %1347, i64 1
  %1349 = load ptr, ptr %1348, align 8, !tbaa !41
  %1350 = load i64, ptr %1349, align 8
  %1351 = trunc i64 %1350 to i32
  %1352 = and i32 %1351, 65535
  br label %1353

1353:                                             ; preds = %1346, %1327
  %1354 = phi i32 [ %1352, %1346 ], [ %1328, %1327 ]
  %1355 = icmp ne ptr %1320, null
  %1356 = icmp ne ptr %1321, null
  %1357 = and i1 %1355, %1356
  %1358 = icmp eq ptr %1320, %1321
  %1359 = and i1 %1358, %1357
  br i1 %1359, label %1360, label %1395

1360:                                             ; preds = %1353
  %1361 = load i32, ptr %1319, align 8
  %1362 = trunc i32 %1361 to i8
  switch i8 %1362, label %1365 [
    i8 6, label %1363
    i8 1, label %1363
    i8 8, label %1366
  ]

1363:                                             ; preds = %1360, %1360
  %1364 = lshr i32 %1361, 16
  br label %1366

1365:                                             ; preds = %1360
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1446, ptr noundef nonnull @.str.15) #19
  br label %1366

1366:                                             ; preds = %1365, %1363, %1360
  %1367 = phi i32 [ %1364, %1363 ], [ 0, %1365 ], [ 59, %1360 ]
  %1368 = zext nneg i32 %1367 to i64
  %1369 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1368
  %1370 = load i8, ptr %1369, align 1, !tbaa !52
  %1371 = icmp eq i8 %1370, 3
  br i1 %1371, label %1372, label %1392

1372:                                             ; preds = %1366
  %1373 = load i32, ptr %1319, align 8
  %1374 = and i32 %1373, 255
  %1375 = add nsw i32 %1374, -1
  %1376 = icmp ult i32 %1375, 9
  call void @llvm.assume(i1 %1376)
  %1377 = zext nneg i32 %1374 to i64
  %1378 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1377
  %1379 = load i32, ptr %1378, align 4, !tbaa !56
  %1380 = zext i32 %1379 to i64
  %1381 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1380
  %1382 = load i64, ptr %1381, align 8, !tbaa !152
  %1383 = icmp eq i64 %1382, 0
  br i1 %1383, label %1384, label %1385

1384:                                             ; preds = %1372
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %1385

1385:                                             ; preds = %1384, %1372
  %1386 = getelementptr inbounds i8, ptr %1319, i64 %1382
  %1387 = getelementptr inbounds ptr, ptr %1386, i64 1
  %1388 = load ptr, ptr %1387, align 8, !tbaa !41
  %1389 = load i64, ptr %1388, align 8
  %1390 = trunc i64 %1389 to i32
  %1391 = and i32 %1390, 65535
  br label %1392

1392:                                             ; preds = %1385, %1366
  %1393 = phi i32 [ %1391, %1385 ], [ %1367, %1366 ]
  %1394 = icmp eq i32 %1354, %1393
  br i1 %1394, label %1396, label %1395

1395:                                             ; preds = %1392, %1353
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 2180, ptr noundef nonnull @.str.15) #19
  br label %1396

1396:                                             ; preds = %1395, %1392
  %1397 = load ptr, ptr %3, align 8, !tbaa !41
  store ptr %1397, ptr %5, align 8, !tbaa !41
  %1398 = load ptr, ptr %4, align 8, !tbaa !41
  store ptr %1398, ptr %6, align 8, !tbaa !41
  %1399 = load i32, ptr %7, align 4, !tbaa !56
  %1400 = load i32, ptr %8, align 4, !tbaa !56
  %1401 = icmp ugt i32 %1399, %1400
  br i1 %1401, label %1407, label %1402

1402:                                             ; preds = %1425, %1396
  %1403 = phi ptr [ %1318, %1396 ], [ %1408, %1425 ]
  %1404 = load i32, ptr %8, align 4, !tbaa !56
  %1405 = load i32, ptr %7, align 4, !tbaa !56
  %1406 = icmp ugt i32 %1404, %1405
  br i1 %1406, label %1434, label %1431

1407:                                             ; preds = %1396, %1425
  %1408 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %5)
  %1409 = load i32, ptr %1408, align 8
  %1410 = and i32 %1409, 255
  %1411 = add nsw i32 %1410, -10
  %1412 = icmp ult i32 %1411, -9
  br i1 %1412, label %1425, label %1413

1413:                                             ; preds = %1407
  %1414 = zext nneg i32 %1410 to i64
  %1415 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1414
  %1416 = load i32, ptr %1415, align 4, !tbaa !56
  %1417 = zext i32 %1416 to i64
  %1418 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1417
  %1419 = load i64, ptr %1418, align 8, !tbaa !152
  %1420 = icmp eq i64 %1419, 0
  br i1 %1420, label %1421, label %1422

1421:                                             ; preds = %1413
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %1422

1422:                                             ; preds = %1421, %1413
  %1423 = getelementptr inbounds i8, ptr %1408, i64 %1419
  %1424 = load ptr, ptr %1423, align 8, !tbaa !41
  br label %1425

1425:                                             ; preds = %1422, %1407
  %1426 = phi ptr [ %1424, %1422 ], [ null, %1407 ]
  store ptr %1426, ptr %5, align 8, !tbaa !41
  %1427 = load i32, ptr %7, align 4, !tbaa !56
  %1428 = add i32 %1427, -1
  store i32 %1428, ptr %7, align 4, !tbaa !56
  %1429 = load i32, ptr %8, align 4, !tbaa !56
  %1430 = icmp ugt i32 %1428, %1429
  br i1 %1430, label %1407, label %1402, !llvm.loop !167

1431:                                             ; preds = %1452, %1402
  %1432 = phi ptr [ %1319, %1402 ], [ %1435, %1452 ]
  %1433 = icmp eq ptr %1403, %1432
  br i1 %1433, label %1498, label %1458

1434:                                             ; preds = %1402, %1452
  %1435 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %6)
  %1436 = load i32, ptr %1435, align 8
  %1437 = and i32 %1436, 255
  %1438 = add nsw i32 %1437, -10
  %1439 = icmp ult i32 %1438, -9
  br i1 %1439, label %1452, label %1440

1440:                                             ; preds = %1434
  %1441 = zext nneg i32 %1437 to i64
  %1442 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1441
  %1443 = load i32, ptr %1442, align 4, !tbaa !56
  %1444 = zext i32 %1443 to i64
  %1445 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1444
  %1446 = load i64, ptr %1445, align 8, !tbaa !152
  %1447 = icmp eq i64 %1446, 0
  br i1 %1447, label %1448, label %1449

1448:                                             ; preds = %1440
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %1449

1449:                                             ; preds = %1448, %1440
  %1450 = getelementptr inbounds i8, ptr %1435, i64 %1446
  %1451 = load ptr, ptr %1450, align 8, !tbaa !41
  br label %1452

1452:                                             ; preds = %1449, %1434
  %1453 = phi ptr [ %1451, %1449 ], [ null, %1434 ]
  store ptr %1453, ptr %6, align 8, !tbaa !41
  %1454 = load i32, ptr %8, align 4, !tbaa !56
  %1455 = add i32 %1454, -1
  store i32 %1455, ptr %8, align 4, !tbaa !56
  %1456 = load i32, ptr %7, align 4, !tbaa !56
  %1457 = icmp ugt i32 %1455, %1456
  br i1 %1457, label %1434, label %1431, !llvm.loop !168

1458:                                             ; preds = %1431, %1495
  %1459 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %5)
  %1460 = load i32, ptr %1459, align 8
  %1461 = and i32 %1460, 255
  %1462 = add nsw i32 %1461, -10
  %1463 = icmp ult i32 %1462, -9
  br i1 %1463, label %1476, label %1464

1464:                                             ; preds = %1458
  %1465 = zext nneg i32 %1461 to i64
  %1466 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1465
  %1467 = load i32, ptr %1466, align 4, !tbaa !56
  %1468 = zext i32 %1467 to i64
  %1469 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1468
  %1470 = load i64, ptr %1469, align 8, !tbaa !152
  %1471 = icmp eq i64 %1470, 0
  br i1 %1471, label %1472, label %1473

1472:                                             ; preds = %1464
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %1473

1473:                                             ; preds = %1472, %1464
  %1474 = getelementptr inbounds i8, ptr %1459, i64 %1470
  %1475 = load ptr, ptr %1474, align 8, !tbaa !41
  br label %1476

1476:                                             ; preds = %1473, %1458
  %1477 = phi ptr [ %1475, %1473 ], [ null, %1458 ]
  store ptr %1477, ptr %5, align 8, !tbaa !41
  %1478 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %6)
  %1479 = load i32, ptr %1478, align 8
  %1480 = and i32 %1479, 255
  %1481 = add nsw i32 %1480, -10
  %1482 = icmp ult i32 %1481, -9
  br i1 %1482, label %1495, label %1483

1483:                                             ; preds = %1476
  %1484 = zext nneg i32 %1480 to i64
  %1485 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1484
  %1486 = load i32, ptr %1485, align 4, !tbaa !56
  %1487 = zext i32 %1486 to i64
  %1488 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1487
  %1489 = load i64, ptr %1488, align 8, !tbaa !152
  %1490 = icmp eq i64 %1489, 0
  br i1 %1490, label %1491, label %1492

1491:                                             ; preds = %1483
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %1492

1492:                                             ; preds = %1491, %1483
  %1493 = getelementptr inbounds i8, ptr %1478, i64 %1489
  %1494 = load ptr, ptr %1493, align 8, !tbaa !41
  br label %1495

1495:                                             ; preds = %1492, %1476
  %1496 = phi ptr [ %1494, %1492 ], [ null, %1476 ]
  store ptr %1496, ptr %6, align 8, !tbaa !41
  %1497 = icmp eq ptr %1459, %1478
  br i1 %1497, label %1498, label %1458, !llvm.loop !169

1498:                                             ; preds = %1495, %1431
  %1499 = phi ptr [ %1403, %1431 ], [ %1459, %1495 ]
  call fastcc void @remove_name_from_operation(ptr noundef nonnull %1318, ptr noundef %1397)
  call fastcc void @remove_name_from_operation(ptr noundef %1319, ptr noundef %1398)
  %1500 = call ptr @create_tmp_var(ptr noundef %1317, ptr noundef nonnull @.str.35) #19
  %1501 = load i64, ptr %1317, align 8
  %1502 = trunc i64 %1501 to i32
  %1503 = and i32 %1502, 65535
  %1504 = add nsw i32 %1503, -13
  %1505 = icmp ult i32 %1504, 2
  br i1 %1505, label %1506, label %1510

1506:                                             ; preds = %1498
  %1507 = getelementptr inbounds %struct.tree_decl_common, ptr %1500, i64 0, i32 2
  %1508 = load i64, ptr %1507, align 8
  %1509 = or i64 %1508, 134217728
  store i64 %1509, ptr %1507, align 8
  br label %1510

1510:                                             ; preds = %1506, %1498
  %1511 = call zeroext i8 @add_referenced_var(ptr noundef %1500) #19
  %1512 = load ptr, ptr @cfun, align 8, !tbaa !41
  %1513 = call ptr @make_ssa_name_fn(ptr noundef %1512, ptr noundef %1500, ptr noundef null) #19
  %1514 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %1354, ptr noundef %1513, ptr noundef %1397, ptr noundef %1398) #19
  %1515 = call ptr @create_tmp_var(ptr noundef nonnull %1317, ptr noundef nonnull @.str.35) #19
  %1516 = load i64, ptr %1317, align 8
  %1517 = trunc i64 %1516 to i32
  %1518 = and i32 %1517, 65535
  %1519 = add nsw i32 %1518, -13
  %1520 = icmp ult i32 %1519, 2
  br i1 %1520, label %1521, label %1525

1521:                                             ; preds = %1510
  %1522 = getelementptr inbounds %struct.tree_decl_common, ptr %1515, i64 0, i32 2
  %1523 = load i64, ptr %1522, align 8
  %1524 = or i64 %1523, 134217728
  store i64 %1524, ptr %1522, align 8
  br label %1525

1525:                                             ; preds = %1521, %1510
  %1526 = call zeroext i8 @add_referenced_var(ptr noundef %1515) #19
  %1527 = load ptr, ptr @cfun, align 8, !tbaa !41
  %1528 = call ptr @make_ssa_name_fn(ptr noundef %1527, ptr noundef %1515, ptr noundef null) #19
  %1529 = load i32, ptr %1499, align 8
  %1530 = trunc i32 %1529 to i8
  switch i8 %1530, label %1533 [
    i8 6, label %1531
    i8 1, label %1531
    i8 8, label %1534
  ]

1531:                                             ; preds = %1525, %1525
  %1532 = lshr i32 %1529, 16
  br label %1534

1533:                                             ; preds = %1525
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1446, ptr noundef nonnull @.str.15) #19
  br label %1534

1534:                                             ; preds = %1533, %1531, %1525
  %1535 = phi i32 [ %1532, %1531 ], [ 0, %1533 ], [ 59, %1525 ]
  %1536 = zext nneg i32 %1535 to i64
  %1537 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1536
  %1538 = load i8, ptr %1537, align 1, !tbaa !52
  %1539 = icmp eq i8 %1538, 3
  br i1 %1539, label %1540, label %1560

1540:                                             ; preds = %1534
  %1541 = load i32, ptr %1499, align 8
  %1542 = and i32 %1541, 255
  %1543 = add nsw i32 %1542, -1
  %1544 = icmp ult i32 %1543, 9
  call void @llvm.assume(i1 %1544)
  %1545 = zext nneg i32 %1542 to i64
  %1546 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1545
  %1547 = load i32, ptr %1546, align 4, !tbaa !56
  %1548 = zext i32 %1547 to i64
  %1549 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1548
  %1550 = load i64, ptr %1549, align 8, !tbaa !152
  %1551 = icmp eq i64 %1550, 0
  br i1 %1551, label %1552, label %1553

1552:                                             ; preds = %1540
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %1553

1553:                                             ; preds = %1552, %1540
  %1554 = getelementptr inbounds i8, ptr %1499, i64 %1550
  %1555 = getelementptr inbounds ptr, ptr %1554, i64 1
  %1556 = load ptr, ptr %1555, align 8, !tbaa !41
  %1557 = load i64, ptr %1556, align 8
  %1558 = trunc i64 %1557 to i32
  %1559 = and i32 %1558, 65535
  br label %1560

1560:                                             ; preds = %1553, %1534
  %1561 = phi i32 [ %1559, %1553 ], [ %1535, %1534 ]
  %1562 = load i32, ptr %1499, align 8
  %1563 = and i32 %1562, 255
  %1564 = add nsw i32 %1563, -10
  %1565 = icmp ult i32 %1564, -9
  br i1 %1565, label %1579, label %1566

1566:                                             ; preds = %1560
  %1567 = zext nneg i32 %1563 to i64
  %1568 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1567
  %1569 = load i32, ptr %1568, align 4, !tbaa !56
  %1570 = zext i32 %1569 to i64
  %1571 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1570
  %1572 = load i64, ptr %1571, align 8, !tbaa !152
  %1573 = icmp eq i64 %1572, 0
  br i1 %1573, label %1574, label %1575

1574:                                             ; preds = %1566
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %1575

1575:                                             ; preds = %1574, %1566
  %1576 = getelementptr inbounds i8, ptr %1499, i64 %1572
  %1577 = getelementptr inbounds ptr, ptr %1576, i64 1
  %1578 = load ptr, ptr %1577, align 8, !tbaa !41
  br label %1579

1579:                                             ; preds = %1575, %1560
  %1580 = phi ptr [ %1578, %1575 ], [ null, %1560 ]
  %1581 = getelementptr inbounds %struct.gimple_statement_base, ptr %1499, i64 0, i32 3
  %1582 = load i32, ptr %1581, align 4, !tbaa !52
  %1583 = icmp ugt i32 %1582, 2
  br i1 %1583, label %1584, label %1602

1584:                                             ; preds = %1579
  %1585 = load i32, ptr %1499, align 8
  %1586 = and i32 %1585, 255
  %1587 = add nsw i32 %1586, -10
  %1588 = icmp ult i32 %1587, -9
  br i1 %1588, label %1602, label %1589

1589:                                             ; preds = %1584
  %1590 = zext nneg i32 %1586 to i64
  %1591 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1590
  %1592 = load i32, ptr %1591, align 4, !tbaa !56
  %1593 = zext i32 %1592 to i64
  %1594 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1593
  %1595 = load i64, ptr %1594, align 8, !tbaa !152
  %1596 = icmp eq i64 %1595, 0
  br i1 %1596, label %1597, label %1598

1597:                                             ; preds = %1589
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %1598

1598:                                             ; preds = %1597, %1589
  %1599 = getelementptr inbounds i8, ptr %1499, i64 %1595
  %1600 = getelementptr inbounds ptr, ptr %1599, i64 2
  %1601 = load ptr, ptr %1600, align 8, !tbaa !41
  br label %1602

1602:                                             ; preds = %1598, %1584, %1579
  %1603 = phi ptr [ null, %1579 ], [ %1601, %1598 ], [ null, %1584 ]
  %1604 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %1561, ptr noundef %1528, ptr noundef %1580, ptr noundef %1603) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef nonnull %1499) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !170
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #19
  call void @gimple_assign_set_rhs_with_ops(ptr noundef nonnull %9, i32 noundef %1354, ptr noundef %1513, ptr noundef %1528) #19
  %1605 = load ptr, ptr %9, align 8
  %1606 = load ptr, ptr %1605, align 8, !tbaa !171
  %1607 = load i32, ptr %1606, align 8
  %1608 = and i32 %1607, 255
  %1609 = add nsw i32 %1608, -10
  %1610 = icmp ult i32 %1609, -9
  br i1 %1610, label %1612, label %1611

1611:                                             ; preds = %1602
  call void @gimple_set_modified(ptr noundef nonnull %1606, i8 noundef zeroext 1) #19
  call void @update_stmt_operands(ptr noundef nonnull %1606) #19
  br label %1612

1612:                                             ; preds = %1611, %1602
  call void @gsi_insert_before(ptr noundef nonnull %9, ptr noundef %1514, i32 noundef 1) #19
  call void @gsi_insert_before(ptr noundef nonnull %9, ptr noundef %1604, i32 noundef 1) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  br label %1613

1613:                                             ; preds = %1612, %1306
  %1614 = phi ptr [ %1514, %1612 ], [ %1310, %1306 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  %1615 = getelementptr inbounds %struct.dref_d, ptr %1307, i64 0, i32 1
  store ptr %1614, ptr %1615, align 8, !tbaa !70
  %1616 = getelementptr inbounds %struct.dref_d, ptr %1291, i64 0, i32 3
  %1617 = load i32, ptr %1616, align 8, !tbaa !71
  %1618 = getelementptr inbounds %struct.dref_d, ptr %1307, i64 0, i32 3
  store i32 %1617, ptr %1618, align 8, !tbaa !71
  %1619 = load ptr, ptr %1278, align 8, !tbaa !41
  %1620 = icmp eq ptr %1619, null
  br i1 %1620, label %1626, label %1621

1621:                                             ; preds = %1613
  %1622 = getelementptr inbounds %struct.VEC_dref_base, ptr %1619, i64 0, i32 1
  %1623 = load i32, ptr %1622, align 4, !tbaa !148
  %1624 = load i32, ptr %1619, align 8, !tbaa !86
  %1625 = icmp eq i32 %1623, %1624
  br i1 %1625, label %1626, label %1628

1626:                                             ; preds = %1621, %1613
  %1627 = call ptr @vec_heap_p_reserve(ptr noundef %1619, i32 noundef 1) #19
  store ptr %1627, ptr %1278, align 8, !tbaa !41
  br label %1628

1628:                                             ; preds = %1626, %1621
  %1629 = load ptr, ptr %1278, align 8, !tbaa !41
  %1630 = load i32, ptr %1629, align 8, !tbaa !86
  %1631 = add i32 %1630, 1
  store i32 %1631, ptr %1629, align 8, !tbaa !86
  %1632 = zext i32 %1630 to i64
  %1633 = getelementptr inbounds %struct.VEC_dref_base, ptr %1629, i64 0, i32 2, i64 %1632
  store ptr %1307, ptr %1633, align 8, !tbaa !41
  %1634 = add i32 %1280, 1
  br label %1279, !llvm.loop !173

1635:                                             ; preds = %1303, %1290
  %1636 = getelementptr inbounds %struct.chain, ptr %1268, i64 0, i32 9
  %1637 = load i8, ptr %1636, align 8
  %1638 = and i8 %1637, -2
  store i8 %1638, ptr %1636, align 8
  %1639 = getelementptr inbounds %struct.chain, ptr %1268, i64 0, i32 5
  %1640 = load ptr, ptr %1639, align 8, !tbaa !85
  %1641 = getelementptr inbounds %struct.VEC_dref_base, ptr %1640, i64 0, i32 2
  %1642 = load ptr, ptr %1641, align 8, !tbaa !41
  %1643 = getelementptr inbounds %struct.dref_d, ptr %1642, i64 0, i32 1
  %1644 = load ptr, ptr %1643, align 8, !tbaa !70
  br label %1645

1645:                                             ; preds = %1672, %1635
  %1646 = phi i32 [ 1, %1635 ], [ %1673, %1672 ]
  %1647 = load ptr, ptr %1639, align 8, !tbaa !85
  %1648 = icmp eq ptr %1647, null
  br i1 %1648, label %1656, label %1649

1649:                                             ; preds = %1645
  %1650 = load i32, ptr %1647, align 8, !tbaa !86
  %1651 = icmp ugt i32 %1650, %1646
  br i1 %1651, label %1652, label %1656

1652:                                             ; preds = %1649
  %1653 = zext i32 %1646 to i64
  %1654 = getelementptr inbounds %struct.VEC_dref_base, ptr %1647, i64 0, i32 2, i64 %1653
  %1655 = load ptr, ptr %1654, align 8, !tbaa !41
  br label %1656

1656:                                             ; preds = %1652, %1649, %1645
  %1657 = phi ptr [ %1655, %1652 ], [ null, %1649 ], [ null, %1645 ]
  %1658 = phi i1 [ false, %1652 ], [ true, %1649 ], [ true, %1645 ]
  br i1 %1658, label %1674, label %1659

1659:                                             ; preds = %1656
  %1660 = getelementptr inbounds %struct.dref_d, ptr %1657, i64 0, i32 3
  %1661 = load i32, ptr %1660, align 8, !tbaa !71
  %1662 = load i32, ptr %1275, align 8, !tbaa !74
  %1663 = icmp eq i32 %1661, %1662
  br i1 %1663, label %1664, label %1672

1664:                                             ; preds = %1659
  %1665 = getelementptr inbounds %struct.dref_d, ptr %1657, i64 0, i32 1
  %1666 = load ptr, ptr %1665, align 8, !tbaa !70
  %1667 = call zeroext i8 @stmt_dominates_stmt_p(ptr noundef %1666, ptr noundef %1644) #19
  %1668 = icmp eq i8 %1667, 0
  br i1 %1668, label %1669, label %1672

1669:                                             ; preds = %1664
  %1670 = load i8, ptr %1636, align 8
  %1671 = or i8 %1670, 1
  store i8 %1671, ptr %1636, align 8
  br label %1674

1672:                                             ; preds = %1664, %1659
  %1673 = add i32 %1646, 1
  br label %1645, !llvm.loop !174

1674:                                             ; preds = %1656, %1669
  %1675 = getelementptr inbounds %struct.chain, ptr %1267, i64 0, i32 9
  %1676 = load i8, ptr %1675, align 8
  %1677 = or i8 %1676, 4
  store i8 %1677, ptr %1675, align 8
  %1678 = getelementptr inbounds %struct.chain, ptr %1266, i64 0, i32 9
  %1679 = load i8, ptr %1678, align 8
  %1680 = or i8 %1679, 4
  store i8 %1680, ptr %1678, align 8
  br label %1681

1681:                                             ; preds = %1257, %1138, %1674, %1105, %1088, %1086
  %1682 = phi ptr [ %1268, %1674 ], [ null, %1086 ], [ null, %1088 ], [ null, %1105 ], [ null, %1138 ], [ null, %1257 ]
  %1683 = icmp eq ptr %1682, null
  br i1 %1683, label %1713, label %1684

1684:                                             ; preds = %1681
  %1685 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %1711, i64 0, i32 1
  %1686 = load i32, ptr %1685, align 4, !tbaa !150
  %1687 = load i32, ptr %1711, align 8, !tbaa !89
  %1688 = icmp eq i32 %1686, %1687
  br i1 %1688, label %1689, label %1691

1689:                                             ; preds = %1684
  %1690 = call ptr @vec_heap_p_reserve(ptr noundef nonnull %1711, i32 noundef 1) #19
  br label %1691

1691:                                             ; preds = %1689, %1684
  %1692 = phi ptr [ %1690, %1689 ], [ %1711, %1684 ]
  %1693 = load i32, ptr %1692, align 8, !tbaa !89
  %1694 = add i32 %1693, 1
  store i32 %1694, ptr %1692, align 8, !tbaa !89
  %1695 = zext i32 %1693 to i64
  %1696 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %1692, i64 0, i32 2, i64 %1695
  store ptr %1682, ptr %1696, align 8, !tbaa !41
  %1697 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %1710, i64 0, i32 1
  %1698 = load i32, ptr %1697, align 4, !tbaa !150
  %1699 = load i32, ptr %1710, align 8, !tbaa !89
  %1700 = icmp eq i32 %1698, %1699
  br i1 %1700, label %1701, label %1703

1701:                                             ; preds = %1691
  %1702 = call ptr @vec_heap_p_reserve(ptr noundef nonnull %1710, i32 noundef 1) #19
  br label %1703

1703:                                             ; preds = %1701, %1691
  %1704 = phi ptr [ %1702, %1701 ], [ %1710, %1691 ]
  %1705 = load i32, ptr %1704, align 8, !tbaa !89
  %1706 = add i32 %1705, 1
  store i32 %1706, ptr %1704, align 8, !tbaa !89
  %1707 = zext i32 %1705 to i64
  %1708 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %1704, i64 0, i32 2, i64 %1707
  store ptr %1682, ptr %1708, align 8, !tbaa !41
  br label %1709, !llvm.loop !165

1709:                                             ; preds = %999, %1703
  %1710 = phi ptr [ %1704, %1703 ], [ %542, %999 ]
  %1711 = phi ptr [ %1692, %1703 ], [ %992, %999 ]
  %1712 = icmp eq ptr %1711, null
  br label %1715

1713:                                             ; preds = %1681, %1083
  %1714 = add i32 %1062, 1
  br label %1061, !llvm.loop !175

1715:                                             ; preds = %1069, %1709
  br label %1033

1716:                                             ; preds = %1036
  %1717 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %1718 = icmp eq ptr %1717, null
  br i1 %1718, label %1739, label %1719

1719:                                             ; preds = %1716
  %1720 = load i32, ptr @dump_flags, align 4, !tbaa !56
  %1721 = and i32 %1720, 8
  %1722 = icmp eq i32 %1721, 0
  br i1 %1722, label %1739, label %1723

1723:                                             ; preds = %1719
  %1724 = call i64 @fwrite(ptr nonnull @.str.31, i64 19, i64 1, ptr nonnull %1717)
  %1725 = load ptr, ptr @dump_file, align 8, !tbaa !41
  br label %1726

1726:                                             ; preds = %1737, %1723
  %1727 = phi i32 [ 0, %1723 ], [ %1738, %1737 ]
  %1728 = load i32, ptr %1710, align 8, !tbaa !89
  %1729 = icmp ugt i32 %1728, %1727
  br i1 %1729, label %1730, label %1734

1730:                                             ; preds = %1726
  %1731 = zext i32 %1727 to i64
  %1732 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %1710, i64 0, i32 2, i64 %1731
  %1733 = load ptr, ptr %1732, align 8, !tbaa !41
  br label %1734

1734:                                             ; preds = %1730, %1726
  %1735 = phi ptr [ %1733, %1730 ], [ null, %1726 ]
  %1736 = phi i1 [ false, %1730 ], [ true, %1726 ]
  br i1 %1736, label %1739, label %1737

1737:                                             ; preds = %1734
  call void @dump_chain(ptr noundef %1725, ptr noundef %1735)
  %1738 = add i32 %1727, 1
  br label %1726, !llvm.loop !91

1739:                                             ; preds = %1734, %1719, %1716
  %1740 = load ptr, ptr @compiler_params, align 8, !tbaa !41
  %1741 = getelementptr inbounds %struct.param_info, ptr %1740, i64 28, i32 1
  %1742 = load i32, ptr %1741, align 8, !tbaa !176
  br label %1743

1743:                                             ; preds = %1784, %1739
  %1744 = phi i32 [ 0, %1739 ], [ %1786, %1784 ]
  %1745 = phi i32 [ 1, %1739 ], [ %1785, %1784 ]
  %1746 = load i32, ptr %1710, align 8, !tbaa !89
  %1747 = icmp ugt i32 %1746, %1744
  br i1 %1747, label %1748, label %1752

1748:                                             ; preds = %1743
  %1749 = zext i32 %1744 to i64
  %1750 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %1710, i64 0, i32 2, i64 %1749
  %1751 = load ptr, ptr %1750, align 8, !tbaa !41
  br label %1752

1752:                                             ; preds = %1748, %1743
  %1753 = phi ptr [ %1751, %1748 ], [ null, %1743 ]
  %1754 = phi i1 [ false, %1748 ], [ true, %1743 ]
  br i1 %1754, label %1787, label %1755

1755:                                             ; preds = %1752
  %1756 = load i32, ptr %1753, align 8, !tbaa !72
  %1757 = icmp eq i32 %1756, 0
  br i1 %1757, label %1784, label %1758

1758:                                             ; preds = %1755
  %1759 = getelementptr inbounds %struct.chain, ptr %1753, i64 0, i32 9
  %1760 = load i8, ptr %1759, align 8
  %1761 = and i8 %1760, 4
  %1762 = icmp eq i8 %1761, 0
  br i1 %1762, label %1763, label %1784

1763:                                             ; preds = %1758
  %1764 = getelementptr inbounds %struct.chain, ptr %1753, i64 0, i32 6
  %1765 = load i32, ptr %1764, align 8, !tbaa !74
  %1766 = and i8 %1760, 1
  %1767 = zext nneg i8 %1766 to i32
  %1768 = add i32 %1765, %1767
  %1769 = mul i32 %1768, %1745
  %1770 = call i32 @llvm.abs.i32(i32 %1768, i1 true)
  %1771 = icmp eq i32 %1745, 0
  br i1 %1771, label %1779, label %1772

1772:                                             ; preds = %1763
  %1773 = call i32 @llvm.abs.i32(i32 %1745, i1 true)
  br label %1774

1774:                                             ; preds = %1772, %1774
  %1775 = phi i32 [ %1777, %1774 ], [ %1773, %1772 ]
  %1776 = phi i32 [ %1775, %1774 ], [ %1770, %1772 ]
  %1777 = urem i32 %1776, %1775
  %1778 = icmp eq i32 %1777, 0
  br i1 %1778, label %1779, label %1774, !llvm.loop !178

1779:                                             ; preds = %1774, %1763
  %1780 = phi i32 [ %1770, %1763 ], [ %1775, %1774 ]
  %1781 = udiv i32 %1769, %1780
  %1782 = icmp ugt i32 %1781, %1742
  %1783 = select i1 %1782, i32 %1745, i32 %1781
  br label %1784

1784:                                             ; preds = %1779, %1758, %1755
  %1785 = phi i32 [ %1745, %1755 ], [ %1745, %1758 ], [ %1783, %1779 ]
  %1786 = add i32 %1744, 1
  br label %1743, !llvm.loop !179

1787:                                             ; preds = %1752
  call void @scev_reset() #19
  %1788 = icmp ugt i32 %1745, 1
  br i1 %1788, label %1789, label %1792

1789:                                             ; preds = %1787
  %1790 = call zeroext i8 @can_unroll_loop_p(ptr noundef nonnull %101, i32 noundef %1745, ptr noundef nonnull %21) #19
  %1791 = icmp eq i8 %1790, 0
  br label %1792

1792:                                             ; preds = %1789, %1787
  %1793 = phi i1 [ true, %1787 ], [ %1791, %1789 ]
  %1794 = call ptr @single_dom_exit(ptr noundef nonnull %101) #19
  br i1 %1793, label %1988, label %1795

1795:                                             ; preds = %1792
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #19
  %1796 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %1797 = icmp eq ptr %1796, null
  br i1 %1797, label %1804, label %1798

1798:                                             ; preds = %1795
  %1799 = load i32, ptr @dump_flags, align 4, !tbaa !56
  %1800 = and i32 %1799, 8
  %1801 = icmp eq i32 %1800, 0
  br i1 %1801, label %1804, label %1802

1802:                                             ; preds = %1798
  %1803 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1796, ptr noundef nonnull @.str.32, i32 noundef %1745)
  br label %1804

1804:                                             ; preds = %1802, %1798, %1795
  %1805 = getelementptr inbounds %struct.epcc_data, ptr %22, i64 0, i32 1
  store ptr %1710, ptr %22, align 8, !tbaa !180
  store ptr %538, ptr %1805, align 8, !tbaa !182
  call void @update_ssa(i32 noundef 16384) #19
  br label %1806

1806:                                             ; preds = %1845, %1804
  %1807 = phi i32 [ 0, %1804 ], [ %1846, %1845 ]
  %1808 = load i32, ptr %1710, align 8, !tbaa !89
  %1809 = icmp ugt i32 %1808, %1807
  br i1 %1809, label %1810, label %1814

1810:                                             ; preds = %1806
  %1811 = zext i32 %1807 to i64
  %1812 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %1710, i64 0, i32 2, i64 %1811
  %1813 = load ptr, ptr %1812, align 8, !tbaa !41
  br label %1814

1814:                                             ; preds = %1810, %1806
  %1815 = phi ptr [ %1813, %1810 ], [ null, %1806 ]
  %1816 = phi i1 [ false, %1810 ], [ true, %1806 ]
  br i1 %1816, label %1847, label %1817

1817:                                             ; preds = %1814
  %1818 = getelementptr inbounds %struct.chain, ptr %1815, i64 0, i32 5
  %1819 = load ptr, ptr %1818, align 8, !tbaa !85
  %1820 = icmp eq ptr %1819, null
  br label %1821

1821:                                             ; preds = %1817, %1843
  %1822 = phi i32 [ %1844, %1843 ], [ 0, %1817 ]
  br i1 %1820, label %1830, label %1823

1823:                                             ; preds = %1821
  %1824 = load i32, ptr %1819, align 8, !tbaa !86
  %1825 = icmp ugt i32 %1824, %1822
  br i1 %1825, label %1826, label %1830

1826:                                             ; preds = %1823
  %1827 = zext i32 %1822 to i64
  %1828 = getelementptr inbounds %struct.VEC_dref_base, ptr %1819, i64 0, i32 2, i64 %1827
  %1829 = load ptr, ptr %1828, align 8, !tbaa !41
  br label %1830

1830:                                             ; preds = %1826, %1823, %1821
  %1831 = phi ptr [ %1829, %1826 ], [ null, %1823 ], [ null, %1821 ]
  %1832 = phi i1 [ false, %1826 ], [ true, %1823 ], [ true, %1821 ]
  br i1 %1832, label %1845, label %1833

1833:                                             ; preds = %1830
  %1834 = getelementptr inbounds %struct.dref_d, ptr %1831, i64 0, i32 1
  %1835 = load ptr, ptr %1834, align 8, !tbaa !70
  %1836 = load i32, ptr %1835, align 8
  %1837 = and i32 %1836, 255
  %1838 = icmp eq i32 %1837, 16
  br i1 %1838, label %1839, label %1843

1839:                                             ; preds = %1833
  %1840 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1835, i64 0, i32 3
  %1841 = load ptr, ptr %1840, align 8, !tbaa !41
  %1842 = getelementptr inbounds %struct.dref_d, ptr %1831, i64 0, i32 2
  store ptr %1841, ptr %1842, align 8, !tbaa !183
  store ptr null, ptr %1834, align 8, !tbaa !70
  br label %1843

1843:                                             ; preds = %1839, %1833
  %1844 = add i32 %1822, 1
  br label %1821, !llvm.loop !184

1845:                                             ; preds = %1830
  %1846 = add i32 %1807, 1
  br label %1806, !llvm.loop !185

1847:                                             ; preds = %1814
  call void @tree_transform_and_unroll_loop(ptr noundef nonnull %101, i32 noundef %1745, ptr noundef %1794, ptr noundef nonnull %21, ptr noundef nonnull @execute_pred_commoning_cbck, ptr noundef nonnull %22) #19
  %1848 = call ptr @loop_latch_edge(ptr noundef nonnull %101) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %1849 = getelementptr inbounds %struct.loop, ptr %101, i64 0, i32 2
  %1850 = load ptr, ptr %1849, align 8, !tbaa !143
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %1850) #19
  %1851 = load ptr, ptr %2, align 8, !tbaa.struct !170
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  %1852 = icmp eq ptr %1851, null
  br i1 %1852, label %1987, label %1853

1853:                                             ; preds = %1847
  %1854 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 1
  %1855 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %1856 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %1857 = getelementptr inbounds %struct.edge_def, ptr %1848, i64 0, i32 6
  br label %1858

1858:                                             ; preds = %1853, %1983
  %1859 = phi ptr [ %1851, %1853 ], [ %1985, %1983 ]
  %1860 = load ptr, ptr %1859, align 8, !tbaa !171
  %1861 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1860, i64 0, i32 3
  %1862 = load ptr, ptr %1861, align 8, !tbaa !41
  %1863 = getelementptr inbounds %struct.tree_ssa_name, ptr %1862, i64 0, i32 1
  %1864 = load ptr, ptr %1863, align 8, !tbaa !52
  %1865 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1864, i64 0, i32 2
  %1866 = load i32, ptr %1865, align 4, !tbaa !52
  %1867 = call i32 @bitmap_bit_p(ptr noundef %538, i32 noundef %1866) #19
  %1868 = icmp eq i32 %1867, 0
  br i1 %1868, label %1983, label %1869

1869:                                             ; preds = %1858
  %1870 = load i32, ptr %1857, align 4, !tbaa !158
  %1871 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1860, i64 0, i32 1
  %1872 = load i32, ptr %1871, align 8, !tbaa !52
  %1873 = icmp ult i32 %1872, %1870
  br i1 %1873, label %1874, label %1875

1874:                                             ; preds = %1869
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 3103, ptr noundef nonnull @.str.15) #19
  br label %1875

1875:                                             ; preds = %1874, %1869
  %1876 = zext i32 %1870 to i64
  %1877 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1860, i64 0, i32 4, i64 %1876, i32 0, i32 3
  %1878 = load ptr, ptr %1877, align 8, !tbaa !159
  %1879 = load ptr, ptr %1878, align 8, !tbaa !41
  %1880 = load i64, ptr %1879, align 8
  %1881 = and i64 %1880, 65535
  %1882 = icmp eq i64 %1881, 141
  br i1 %1882, label %1884, label %1883

1883:                                             ; preds = %1875
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1943, ptr noundef nonnull @.str.15) #19
  br label %1884

1884:                                             ; preds = %1883, %1875
  %1885 = getelementptr inbounds %struct.tree_ssa_name, ptr %1879, i64 0, i32 2
  %1886 = load ptr, ptr %1885, align 8, !tbaa !52
  %1887 = load i32, ptr %1886, align 8
  %1888 = and i32 %1887, 255
  %1889 = icmp eq i32 %1888, 16
  br i1 %1889, label %1890, label %1922

1890:                                             ; preds = %1884
  %1891 = getelementptr inbounds %struct.gimple_statement_base, ptr %1886, i64 0, i32 4
  %1892 = load ptr, ptr %1891, align 8, !tbaa !52
  %1893 = load ptr, ptr %1849, align 8, !tbaa !143
  %1894 = icmp eq ptr %1892, %1893
  br i1 %1894, label %1922, label %1900

1895:                                             ; preds = %1913
  %1896 = getelementptr inbounds %struct.gimple_statement_base, ptr %1918, i64 0, i32 4
  %1897 = load ptr, ptr %1896, align 8, !tbaa !52
  %1898 = load ptr, ptr %1849, align 8, !tbaa !143
  %1899 = icmp eq ptr %1897, %1898
  br i1 %1899, label %1922, label %1900, !llvm.loop !186

1900:                                             ; preds = %1890, %1895
  %1901 = phi ptr [ %1897, %1895 ], [ %1892, %1890 ]
  %1902 = phi ptr [ %1918, %1895 ], [ %1886, %1890 ]
  %1903 = load ptr, ptr %1901, align 8, !tbaa !187
  %1904 = icmp eq ptr %1903, null
  br i1 %1904, label %1909, label %1905

1905:                                             ; preds = %1900
  %1906 = load i32, ptr %1903, align 8, !tbaa !122
  %1907 = icmp eq i32 %1906, 1
  %1908 = zext i1 %1907 to i8
  br label %1909

1909:                                             ; preds = %1905, %1900
  %1910 = phi i8 [ %1908, %1905 ], [ 0, %1900 ]
  %1911 = icmp eq i8 %1910, 0
  br i1 %1911, label %1912, label %1913

1912:                                             ; preds = %1909
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1955, ptr noundef nonnull @.str.15) #19
  br label %1913

1913:                                             ; preds = %1912, %1909
  %1914 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1902, i64 0, i32 4, i64 0, i32 0, i32 3
  %1915 = load ptr, ptr %1914, align 8, !tbaa !159
  %1916 = load ptr, ptr %1915, align 8, !tbaa !41
  %1917 = getelementptr inbounds %struct.tree_ssa_name, ptr %1916, i64 0, i32 2
  %1918 = load ptr, ptr %1917, align 8, !tbaa !52
  %1919 = load i32, ptr %1918, align 8
  %1920 = and i32 %1919, 255
  %1921 = icmp eq i32 %1920, 16
  br i1 %1921, label %1895, label %1922, !llvm.loop !186

1922:                                             ; preds = %1895, %1913, %1890, %1884
  %1923 = phi ptr [ %1879, %1884 ], [ %1879, %1890 ], [ %1916, %1913 ], [ %1916, %1895 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #19
  br label %1924

1924:                                             ; preds = %1979, %1922
  %1925 = phi ptr [ %1981, %1979 ], [ %1923, %1922 ]
  %1926 = getelementptr inbounds %struct.tree_ssa_name, ptr %1925, i64 0, i32 1
  store ptr %1864, ptr %1926, align 8, !tbaa !52
  %1927 = getelementptr inbounds %struct.tree_ssa_name, ptr %1925, i64 0, i32 5
  store ptr %1927, ptr %1854, align 8, !tbaa !189
  %1928 = getelementptr inbounds %struct.tree_ssa_name, ptr %1925, i64 0, i32 5, i32 1
  %1929 = load ptr, ptr %1928, align 8, !tbaa !191
  store ptr %1929, ptr %1, align 8, !tbaa !192
  %1930 = icmp eq ptr %1929, %1927
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1855, i8 0, i64 40, i1 false)
  br i1 %1930, label %1935, label %1931

1931:                                             ; preds = %1924
  call fastcc void @link_use_stmts_after(ptr noundef %1929, ptr noundef nonnull %1)
  %1932 = load ptr, ptr %1, align 8, !tbaa !192
  %1933 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1932, i64 0, i32 2
  %1934 = load ptr, ptr %1933, align 8, !tbaa !52
  br label %1935

1935:                                             ; preds = %1931, %1924
  %1936 = phi ptr [ %1934, %1931 ], [ null, %1924 ]
  %1937 = load ptr, ptr %1, align 8, !tbaa !192
  %1938 = load ptr, ptr %1854, align 8, !tbaa !189
  %1939 = icmp eq ptr %1937, %1938
  br i1 %1939, label %1976, label %1940

1940:                                             ; preds = %1935, %1971
  %1941 = phi ptr [ %1972, %1971 ], [ %1936, %1935 ]
  %1942 = load i32, ptr %1941, align 8
  %1943 = and i32 %1942, 255
  %1944 = icmp eq i32 %1943, 16
  br i1 %1944, label %1945, label %1957

1945:                                             ; preds = %1940
  %1946 = getelementptr inbounds %struct.gimple_statement_base, ptr %1941, i64 0, i32 4
  %1947 = load ptr, ptr %1946, align 8, !tbaa !52
  %1948 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %101, ptr noundef %1947) #19
  %1949 = icmp eq i8 %1948, 0
  br i1 %1949, label %1957, label %1950

1950:                                             ; preds = %1945
  %1951 = load ptr, ptr %1855, align 8, !tbaa !193
  %1952 = icmp eq ptr %1951, null
  br i1 %1952, label %1976, label %1953

1953:                                             ; preds = %1950
  %1954 = load ptr, ptr %1856, align 8, !tbaa !191
  %1955 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1951, i64 0, i32 1
  store ptr %1954, ptr %1955, align 8, !tbaa !191
  %1956 = load ptr, ptr %1856, align 8, !tbaa !191
  store ptr %1951, ptr %1956, align 8, !tbaa !193
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1855, i8 0, i64 16, i1 false)
  br label %1976

1957:                                             ; preds = %1945, %1940
  %1958 = load ptr, ptr %1856, align 8, !tbaa !191
  store ptr %1958, ptr %1, align 8, !tbaa !192
  %1959 = load ptr, ptr %1854, align 8, !tbaa !189
  %1960 = icmp eq ptr %1958, %1959
  br i1 %1960, label %1961, label %1967

1961:                                             ; preds = %1957
  %1962 = load ptr, ptr %1855, align 8, !tbaa !193
  %1963 = icmp eq ptr %1962, null
  br i1 %1963, label %1971, label %1964

1964:                                             ; preds = %1961
  %1965 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1962, i64 0, i32 1
  store ptr %1958, ptr %1965, align 8, !tbaa !191
  %1966 = load ptr, ptr %1856, align 8, !tbaa !191
  store ptr %1962, ptr %1966, align 8, !tbaa !193
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1855, i8 0, i64 16, i1 false)
  br label %1971

1967:                                             ; preds = %1957
  call fastcc void @link_use_stmts_after(ptr noundef %1958, ptr noundef nonnull %1)
  %1968 = load ptr, ptr %1, align 8, !tbaa !192
  %1969 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1968, i64 0, i32 2
  %1970 = load ptr, ptr %1969, align 8, !tbaa !52
  br label %1971

1971:                                             ; preds = %1967, %1964, %1961
  %1972 = phi ptr [ %1970, %1967 ], [ null, %1964 ], [ null, %1961 ]
  %1973 = load ptr, ptr %1, align 8, !tbaa !192
  %1974 = load ptr, ptr %1854, align 8, !tbaa !189
  %1975 = icmp eq ptr %1973, %1974
  br i1 %1975, label %1976, label %1940, !llvm.loop !194

1976:                                             ; preds = %1971, %1935, %1953, %1950
  %1977 = phi ptr [ %1941, %1950 ], [ %1941, %1953 ], [ null, %1935 ], [ null, %1971 ]
  %1978 = icmp eq ptr %1977, null
  br i1 %1978, label %1982, label %1979

1979:                                             ; preds = %1976
  %1980 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1977, i64 0, i32 3
  %1981 = load ptr, ptr %1980, align 8, !tbaa !41
  br label %1924, !llvm.loop !195

1982:                                             ; preds = %1976
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #19
  br label %1983

1983:                                             ; preds = %1982, %1858
  %1984 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1859, i64 0, i32 2
  %1985 = load ptr, ptr %1984, align 8, !tbaa !196
  %1986 = icmp eq ptr %1985, null
  br i1 %1986, label %1987, label %1858, !llvm.loop !197

1987:                                             ; preds = %1983, %1847
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #19
  br label %1998

1988:                                             ; preds = %1792
  %1989 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %1990 = icmp eq ptr %1989, null
  br i1 %1990, label %1997, label %1991

1991:                                             ; preds = %1988
  %1992 = load i32, ptr @dump_flags, align 4, !tbaa !56
  %1993 = and i32 %1992, 8
  %1994 = icmp eq i32 %1993, 0
  br i1 %1994, label %1997, label %1995

1995:                                             ; preds = %1991
  %1996 = call i64 @fwrite(ptr nonnull @.str.33, i64 50, i64 1, ptr nonnull %1989)
  br label %1997

1997:                                             ; preds = %1995, %1991, %1988
  call fastcc void @execute_pred_commoning(ptr noundef nonnull %101, ptr noundef nonnull %1710, ptr noundef %538)
  br label %1998

1998:                                             ; preds = %1997, %1987, %862, %858, %855
  %1999 = phi ptr [ %542, %855 ], [ %542, %858 ], [ %542, %862 ], [ %1710, %1997 ], [ %1710, %1987 ]
  %2000 = phi i8 [ 0, %855 ], [ 0, %858 ], [ 0, %862 ], [ 0, %1997 ], [ 1, %1987 ]
  %2001 = icmp eq ptr %1999, null
  br label %2002

2002:                                             ; preds = %2014, %1998
  %2003 = phi i32 [ 0, %1998 ], [ %2015, %2014 ]
  br i1 %2001, label %2011, label %2004

2004:                                             ; preds = %2002
  %2005 = load i32, ptr %1999, align 8, !tbaa !89
  %2006 = icmp ugt i32 %2005, %2003
  br i1 %2006, label %2007, label %2011

2007:                                             ; preds = %2004
  %2008 = zext i32 %2003 to i64
  %2009 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %1999, i64 0, i32 2, i64 %2008
  %2010 = load ptr, ptr %2009, align 8, !tbaa !41
  br label %2011

2011:                                             ; preds = %2007, %2004, %2002
  %2012 = phi ptr [ %2010, %2007 ], [ null, %2004 ], [ null, %2002 ]
  %2013 = phi i1 [ false, %2007 ], [ true, %2004 ], [ true, %2002 ]
  br i1 %2013, label %2016, label %2014

2014:                                             ; preds = %2011
  call fastcc void @release_chain(ptr noundef %2012)
  %2015 = add i32 %2003, 1
  br label %2002, !llvm.loop !198

2016:                                             ; preds = %2011
  br i1 %2001, label %2018, label %2017

2017:                                             ; preds = %2016
  call void @free(ptr noundef %1999)
  br label %2018

2018:                                             ; preds = %2017, %2016
  %2019 = load ptr, ptr %19, align 8, !tbaa !41
  call void @free_data_refs(ptr noundef %2019) #19
  call void @bitmap_obstack_free(ptr noundef %538) #19
  %2020 = load ptr, ptr @looparound_phis, align 8, !tbaa !41
  call void @bitmap_obstack_free(ptr noundef %2020) #19
  store ptr null, ptr @looparound_phis, align 8, !tbaa !41
  call void @free_affine_expand_cache(ptr noundef nonnull @name_expansions) #19
  br label %2021

2021:                                             ; preds = %415, %2018
  %2022 = phi i8 [ %2000, %2018 ], [ 0, %415 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #19
  %2023 = or i8 %2022, %98
  br label %2024

2024:                                             ; preds = %97, %2021
  %2025 = phi i8 [ %2023, %2021 ], [ %98, %97 ]
  %2026 = icmp eq ptr %99, null
  %2027 = load ptr, ptr @cfun, align 8
  %2028 = getelementptr inbounds %struct.function, ptr %2027, i64 0, i32 4
  br label %2029

2029:                                             ; preds = %2041, %2024
  %2030 = phi i32 [ %100, %2024 ], [ %2042, %2041 ]
  br i1 %2026, label %2038, label %2031

2031:                                             ; preds = %2029
  %2032 = load i32, ptr %99, align 4, !tbaa !114
  %2033 = icmp ugt i32 %2032, %2030
  br i1 %2033, label %2034, label %2038

2034:                                             ; preds = %2031
  %2035 = zext i32 %2030 to i64
  %2036 = getelementptr inbounds %struct.VEC_int_base, ptr %99, i64 0, i32 2, i64 %2035
  %2037 = load i32, ptr %2036, align 4, !tbaa !56
  br label %2038

2038:                                             ; preds = %2034, %2031, %2029
  %2039 = phi i32 [ %2037, %2034 ], [ 0, %2031 ], [ 0, %2029 ]
  %2040 = phi i1 [ false, %2034 ], [ true, %2031 ], [ true, %2029 ]
  br i1 %2040, label %2050, label %2041

2041:                                             ; preds = %2038
  %2042 = add i32 %2030, 1
  %2043 = load ptr, ptr %2028, align 8, !tbaa !101
  %2044 = getelementptr inbounds %struct.loops, ptr %2043, i64 0, i32 1
  %2045 = load ptr, ptr %2044, align 8, !tbaa !103
  %2046 = zext i32 %2039 to i64
  %2047 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %2045, i64 0, i32 2, i64 %2046
  %2048 = load ptr, ptr %2047, align 8, !tbaa !41
  %2049 = icmp eq ptr %2048, null
  br i1 %2049, label %2029, label %2052, !llvm.loop !117

2050:                                             ; preds = %2038
  br i1 %2026, label %2052, label %2051

2051:                                             ; preds = %2050
  call void @free(ptr noundef %99)
  br label %2052

2052:                                             ; preds = %2041, %2050, %2051
  %2053 = phi ptr [ null, %2051 ], [ null, %2050 ], [ %2048, %2041 ]
  %2054 = phi i32 [ %2030, %2051 ], [ %2030, %2050 ], [ %2042, %2041 ]
  %2055 = phi ptr [ null, %2051 ], [ null, %2050 ], [ %99, %2041 ]
  %2056 = icmp eq ptr %2053, null
  br i1 %2056, label %2057, label %97, !prof !118, !llvm.loop !199

2057:                                             ; preds = %2052
  %2058 = icmp eq i8 %2025, 0
  br i1 %2058, label %2060, label %2059, !prof !112

2059:                                             ; preds = %2057
  call void @scev_reset() #19
  br label %2060

2060:                                             ; preds = %92, %2059, %2057
  %2061 = phi i32 [ 32, %2059 ], [ 0, %2057 ], [ 0, %92 ]
  call void @free_original_copy_tables() #19
  ret i32 %2061
}

declare void @initialize_original_copy_tables() local_unnamed_addr #3

declare zeroext i8 @optimize_loop_for_speed_p(ptr noundef) local_unnamed_addr #3

declare void @scev_reset() local_unnamed_addr #3

declare void @free_original_copy_tables() local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @compute_data_dependences_for_loop(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dump_data_dependence_relations(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_dependence_relations(ptr noundef) local_unnamed_addr #3

declare void @free_data_refs(ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_unroll_loop_p(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @single_dom_exit(ptr noundef) local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare void @tree_transform_and_unroll_loop(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @execute_pred_commoning_cbck(ptr noundef %0, ptr nocapture noundef readonly %1) #9 !prof !40 {
  %3 = load ptr, ptr %1, align 8, !tbaa !180
  %4 = icmp eq ptr %3, null
  br label %5

5:                                                ; preds = %49, %2
  %6 = phi i32 [ 0, %2 ], [ %50, %49 ]
  br i1 %4, label %14, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %3, align 8, !tbaa !89
  %9 = icmp ugt i32 %8, %6
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = zext i32 %6 to i64
  %12 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %3, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  br label %14

14:                                               ; preds = %10, %7, %5
  %15 = phi ptr [ %13, %10 ], [ null, %7 ], [ null, %5 ]
  %16 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %5 ]
  br i1 %16, label %51, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.chain, ptr %15, i64 0, i32 5
  br label %19

19:                                               ; preds = %17, %47
  %20 = phi i32 [ %48, %47 ], [ 0, %17 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !85
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 8, !tbaa !86
  %25 = icmp ugt i32 %24, %20
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = zext i32 %20 to i64
  %28 = getelementptr inbounds %struct.VEC_dref_base, ptr %21, i64 0, i32 2, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  br label %30

30:                                               ; preds = %26, %23, %19
  %31 = phi ptr [ %29, %26 ], [ null, %23 ], [ null, %19 ]
  %32 = phi i1 [ false, %26 ], [ true, %23 ], [ true, %19 ]
  br i1 %32, label %49, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.dref_d, ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !70
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dref_d, ptr %31, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !183
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  store ptr %41, ptr %34, align 8, !tbaa !70
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, 16
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1863, ptr noundef nonnull @.str.15) #19
  br label %46

46:                                               ; preds = %45, %37
  store ptr null, ptr %38, align 8, !tbaa !183
  br label %47

47:                                               ; preds = %46, %33
  %48 = add i32 %20, 1
  br label %19, !llvm.loop !200

49:                                               ; preds = %30
  %50 = add i32 %6, 1
  br label %5, !llvm.loop !201

51:                                               ; preds = %14
  %52 = load ptr, ptr %1, align 8, !tbaa !180
  %53 = getelementptr inbounds %struct.epcc_data, ptr %1, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !182
  tail call fastcc void @execute_pred_commoning(ptr noundef %0, ptr noundef %52, ptr noundef %54)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @execute_pred_commoning(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #9 !prof !40 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca ptr, align 8
  %10 = icmp eq ptr %1, null
  br label %11

11:                                               ; preds = %438, %3
  %12 = phi i32 [ 0, %3 ], [ %439, %438 ]
  br i1 %10, label %20, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr %1, align 8, !tbaa !89
  %15 = icmp ugt i32 %14, %12
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = zext i32 %12 to i64
  %18 = getelementptr inbounds %struct.VEC_chain_p_base, ptr %1, i64 0, i32 2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  br label %20

20:                                               ; preds = %11, %13, %16
  %21 = phi ptr [ %19, %16 ], [ null, %13 ], [ null, %11 ]
  %22 = phi i1 [ false, %16 ], [ true, %13 ], [ true, %11 ]
  br i1 %22, label %440, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %21, align 8, !tbaa !72
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.chain, ptr %21, i64 0, i32 9
  %27 = load i8, ptr %26, align 8
  %28 = and i8 %27, 4
  %29 = icmp eq i8 %28, 0
  br i1 %25, label %30, label %173

30:                                               ; preds = %23
  br i1 %29, label %32, label %31

31:                                               ; preds = %30
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1619, ptr noundef nonnull @.str.15) #19
  br label %32

32:                                               ; preds = %31, %30
  %33 = getelementptr inbounds %struct.chain, ptr %21, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !85
  %35 = icmp eq ptr %34, null
  br label %36

36:                                               ; preds = %49, %32
  %37 = phi i32 [ 0, %32 ], [ %56, %49 ]
  %38 = phi i32 [ 0, %32 ], [ %55, %49 ]
  br i1 %35, label %46, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %34, align 8, !tbaa !86
  %41 = icmp ugt i32 %40, %37
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = zext i32 %37 to i64
  %44 = getelementptr inbounds %struct.VEC_dref_base, ptr %34, i64 0, i32 2, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !41
  br label %46

46:                                               ; preds = %42, %39, %36
  %47 = phi ptr [ %45, %42 ], [ null, %39 ], [ null, %36 ]
  %48 = phi i1 [ false, %42 ], [ true, %39 ], [ true, %36 ]
  br i1 %48, label %57, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !60
  %51 = getelementptr inbounds %struct.data_reference, ptr %50, i64 0, i32 3
  %52 = load i8, ptr %51, align 8, !tbaa !69
  %53 = icmp eq i8 %52, 0
  %54 = zext i1 %53 to i32
  %55 = add i32 %38, %54
  %56 = add i32 %37, 1
  br label %36, !llvm.loop !202

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.chain, ptr %21, i64 0, i32 5
  br i1 %35, label %61, label %59

59:                                               ; preds = %57
  %60 = load i32, ptr %34, align 8, !tbaa !86
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %60, %59 ], [ 0, %57 ]
  %63 = icmp eq i32 %38, %62
  br i1 %63, label %438, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.VEC_dref_base, ptr %34, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !41
  %67 = icmp ne i32 %38, 0
  %68 = zext i1 %67 to i8
  %69 = getelementptr inbounds %struct.chain, ptr %21, i64 0, i32 8
  %70 = load ptr, ptr %69, align 8, !tbaa !83
  %71 = load ptr, ptr %66, align 8, !tbaa !60
  %72 = getelementptr inbounds %struct.data_reference, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %74 = call ptr @loop_preheader_edge(ptr noundef %0) #19
  %75 = call ptr @loop_latch_edge(ptr noundef %0) #19
  %76 = getelementptr inbounds %struct.VEC_tree_base, ptr %70, i64 0, i32 2, i64 0
  %77 = load ptr, ptr %76, align 8, !tbaa !41
  %78 = select i1 %67, i32 2, i32 1
  %79 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %78) #19
  %80 = call fastcc ptr @predcom_tmp_var(ptr noundef %73, i32 noundef 0, ptr noundef %2)
  %81 = load i32, ptr %79, align 8, !tbaa !80
  %82 = add i32 %81, 1
  store i32 %82, ptr %79, align 8, !tbaa !80
  %83 = zext i32 %81 to i64
  %84 = getelementptr inbounds %struct.VEC_tree_base, ptr %79, i64 0, i32 2, i64 %83
  store ptr %80, ptr %84, align 8, !tbaa !41
  br i1 %67, label %85, label %91

85:                                               ; preds = %64
  %86 = getelementptr inbounds %struct.VEC_tree_base, ptr %79, i64 0, i32 2, i64 0
  %87 = load ptr, ptr %86, align 8, !tbaa !41
  %88 = add i32 %81, 2
  store i32 %88, ptr %79, align 8, !tbaa !80
  %89 = zext i32 %82 to i64
  %90 = getelementptr inbounds %struct.VEC_tree_base, ptr %79, i64 0, i32 2, i64 %89
  store ptr %87, ptr %90, align 8, !tbaa !41
  br label %91

91:                                               ; preds = %85, %64
  br label %92

92:                                               ; preds = %91, %102
  %93 = phi i64 [ %106, %102 ], [ 0, %91 ]
  %94 = load i32, ptr %79, align 8, !tbaa !80
  %95 = zext i32 %94 to i64
  %96 = icmp ult i64 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.VEC_tree_base, ptr %79, i64 0, i32 2, i64 %93
  %99 = load ptr, ptr %98, align 8, !tbaa !41
  br label %100

100:                                              ; preds = %97, %92
  %101 = phi ptr [ %99, %97 ], [ null, %92 ]
  br i1 %96, label %102, label %107

102:                                              ; preds = %100
  %103 = load ptr, ptr @cfun, align 8, !tbaa !41
  %104 = call ptr @make_ssa_name_fn(ptr noundef %103, ptr noundef %101, ptr noundef null) #19
  %105 = getelementptr inbounds %struct.VEC_tree_base, ptr %79, i64 0, i32 2, i64 %93
  store ptr %104, ptr %105, align 8, !tbaa !41
  %106 = add nuw nsw i64 %93, 1
  br label %92, !llvm.loop !203

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.VEC_tree_base, ptr %79, i64 0, i32 2, i64 0
  %109 = load ptr, ptr %108, align 8, !tbaa !41
  %110 = call ptr @force_gimple_operand(ptr noundef %77, ptr noundef nonnull %9, i8 noundef zeroext %68, ptr noundef null) #19
  %111 = load ptr, ptr %9, align 8, !tbaa !41
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %107
  %114 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %74, ptr noundef nonnull %111) #19
  br label %115

115:                                              ; preds = %113, %107
  br i1 %67, label %116, label %123

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %118 = getelementptr inbounds %struct.VEC_tree_base, ptr %79, i64 0, i32 2, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !41
  %120 = load ptr, ptr %117, align 8, !tbaa !143
  %121 = call ptr @create_phi_node(ptr noundef %109, ptr noundef %120) #19
  %122 = getelementptr inbounds %struct.tree_ssa_name, ptr %109, i64 0, i32 2
  store ptr %121, ptr %122, align 8, !tbaa !52
  call void @add_phi_arg(ptr noundef %121, ptr noundef %110, ptr noundef %74, i32 noundef 0) #19
  call void @add_phi_arg(ptr noundef %121, ptr noundef %119, ptr noundef %75, i32 noundef 0) #19
  br label %126

123:                                              ; preds = %115
  %124 = call ptr @gimple_build_assign_stat(ptr noundef %109, ptr noundef %110) #19
  call void @mark_virtual_ops_for_renaming(ptr noundef %124)
  %125 = call ptr @gsi_insert_on_edge_immediate(ptr noundef %74, ptr noundef %124) #19
  br label %126

126:                                              ; preds = %123, %116
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  br label %127

127:                                              ; preds = %162, %126
  %128 = phi i32 [ 0, %126 ], [ %171, %162 ]
  %129 = phi i32 [ 0, %126 ], [ %163, %162 ]
  %130 = phi i32 [ %38, %126 ], [ %164, %162 ]
  %131 = load ptr, ptr %58, align 8, !tbaa !85
  %132 = icmp eq ptr %131, null
  br i1 %132, label %140, label %133

133:                                              ; preds = %127
  %134 = load i32, ptr %131, align 8, !tbaa !86
  %135 = icmp ugt i32 %134, %128
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = zext i32 %128 to i64
  %138 = getelementptr inbounds %struct.VEC_dref_base, ptr %131, i64 0, i32 2, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !41
  br label %140

140:                                              ; preds = %136, %133, %127
  %141 = phi ptr [ %139, %136 ], [ null, %133 ], [ null, %127 ]
  %142 = phi i1 [ false, %136 ], [ true, %133 ], [ true, %127 ]
  br i1 %142, label %172, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr %141, align 8, !tbaa !60
  %145 = getelementptr inbounds %struct.data_reference, ptr %144, i64 0, i32 3
  %146 = load i8, ptr %145, align 8, !tbaa !69
  %147 = getelementptr inbounds %struct.dref_d, ptr %141, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !70
  call void @mark_virtual_ops_for_renaming(ptr noundef %148)
  %149 = load ptr, ptr %141, align 8, !tbaa !60
  %150 = getelementptr inbounds %struct.data_reference, ptr %149, i64 0, i32 3
  %151 = load i8, ptr %150, align 8, !tbaa !69
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %143
  %154 = add i32 %130, -1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %153
  %157 = load ptr, ptr %108, align 8, !tbaa !41
  %158 = getelementptr inbounds %struct.tree_ssa_name, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !52
  %160 = load ptr, ptr @cfun, align 8, !tbaa !41
  %161 = call ptr @make_ssa_name_fn(ptr noundef %160, ptr noundef %159, ptr noundef null) #19
  store ptr %161, ptr %108, align 8, !tbaa !41
  br label %162

162:                                              ; preds = %156, %153, %143
  %163 = phi i32 [ %129, %143 ], [ %129, %156 ], [ 1, %153 ]
  %164 = phi i32 [ %130, %143 ], [ %154, %156 ], [ 0, %153 ]
  %165 = load ptr, ptr %147, align 8, !tbaa !70
  %166 = zext nneg i32 %163 to i64
  %167 = getelementptr inbounds %struct.VEC_tree_base, ptr %79, i64 0, i32 2, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !41
  %169 = icmp eq i8 %146, 0
  %170 = zext i1 %169 to i8
  call fastcc void @replace_ref_with(ptr noundef %165, ptr noundef %168, i8 noundef zeroext %170, i8 noundef zeroext %170)
  %171 = add i32 %128, 1
  br label %127, !llvm.loop !204

172:                                              ; preds = %140
  call void @free(ptr noundef %79)
  br label %438

173:                                              ; preds = %23
  %174 = getelementptr inbounds %struct.chain, ptr %21, i64 0, i32 5
  br i1 %29, label %280, label %175

175:                                              ; preds = %173, %278
  %176 = phi i32 [ %279, %278 ], [ 1, %173 ]
  %177 = load ptr, ptr %174, align 8, !tbaa !85
  %178 = icmp eq ptr %177, null
  br i1 %178, label %186, label %179

179:                                              ; preds = %175
  %180 = load i32, ptr %177, align 8, !tbaa !86
  %181 = icmp ugt i32 %180, %176
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = zext i32 %176 to i64
  %184 = getelementptr inbounds %struct.VEC_dref_base, ptr %177, i64 0, i32 2, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !41
  br label %186

186:                                              ; preds = %182, %179, %175
  %187 = phi ptr [ %185, %182 ], [ null, %179 ], [ null, %175 ]
  %188 = phi i1 [ false, %182 ], [ true, %179 ], [ true, %175 ]
  br i1 %188, label %438, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.dref_d, ptr %187, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %192 = load i32, ptr %191, align 8
  %193 = and i32 %192, 255
  %194 = icmp eq i32 %193, 16
  br i1 %194, label %195, label %224

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.gimple_statement_phi, ptr %191, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !41
  %198 = call fastcc ptr @single_nonlooparound_use(ptr noundef %197)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %191) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !170
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  call void @remove_phi_node(ptr noundef nonnull %5, i8 noundef zeroext 1) #19
  %199 = icmp eq ptr %198, null
  br i1 %199, label %278, label %200

200:                                              ; preds = %195
  %201 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef nonnull %198) #19
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %278, label %203

203:                                              ; preds = %200
  %204 = load i32, ptr %198, align 8
  %205 = and i32 %204, 255
  %206 = add nsw i32 %205, -10
  %207 = icmp ult i32 %206, -9
  br i1 %207, label %221, label %208

208:                                              ; preds = %203
  %209 = zext nneg i32 %205 to i64
  %210 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !56
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %212
  %214 = load i64, ptr %213, align 8, !tbaa !152
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %217

217:                                              ; preds = %216, %208
  %218 = getelementptr inbounds i8, ptr %198, i64 %214
  %219 = getelementptr inbounds ptr, ptr %218, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !41
  br label %221

221:                                              ; preds = %217, %203
  %222 = phi ptr [ %220, %217 ], [ null, %203 ]
  %223 = icmp eq ptr %222, %197
  br i1 %223, label %224, label %278

224:                                              ; preds = %221, %189
  %225 = phi ptr [ %198, %221 ], [ %191, %189 ]
  br label %226

226:                                              ; preds = %224, %275
  %227 = phi ptr [ %276, %275 ], [ %225, %224 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %227) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !170
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  %228 = load i32, ptr %227, align 8
  %229 = and i32 %228, 255
  %230 = add nsw i32 %229, -1
  %231 = icmp ult i32 %230, 9
  call void @llvm.assume(i1 %231)
  %232 = zext nneg i32 %229 to i64
  %233 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !56
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %235
  %237 = load i64, ptr %236, align 8, !tbaa !152
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %226
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %240

240:                                              ; preds = %239, %226
  %241 = getelementptr inbounds i8, ptr %227, i64 %237
  %242 = load ptr, ptr %241, align 8, !tbaa !41
  %243 = load i64, ptr %242, align 8
  %244 = and i64 %243, 65535
  %245 = icmp eq i64 %244, 141
  br i1 %245, label %247, label %246

246:                                              ; preds = %240
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1723, ptr noundef nonnull @.str.15) #19
  br label %247

247:                                              ; preds = %246, %240
  %248 = call fastcc ptr @single_nonlooparound_use(ptr noundef nonnull %242)
  call void @mark_virtual_ops_for_renaming(ptr noundef nonnull %227)
  call void @gsi_remove(ptr noundef nonnull %7, i8 noundef zeroext 1) #19
  call void @release_defs(ptr noundef nonnull %227) #19
  %249 = icmp eq ptr %248, null
  br i1 %249, label %275, label %250

250:                                              ; preds = %247
  %251 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef nonnull %248) #19
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %275, label %253

253:                                              ; preds = %250
  %254 = load i32, ptr %248, align 8
  %255 = and i32 %254, 255
  %256 = add nsw i32 %255, -10
  %257 = icmp ult i32 %256, -9
  br i1 %257, label %271, label %258

258:                                              ; preds = %253
  %259 = zext nneg i32 %255 to i64
  %260 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %259
  %261 = load i32, ptr %260, align 4, !tbaa !56
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %262
  %264 = load i64, ptr %263, align 8, !tbaa !152
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %258
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %267

267:                                              ; preds = %266, %258
  %268 = getelementptr inbounds i8, ptr %248, i64 %264
  %269 = getelementptr inbounds ptr, ptr %268, i64 1
  %270 = load ptr, ptr %269, align 8, !tbaa !41
  br label %271

271:                                              ; preds = %267, %253
  %272 = phi ptr [ %270, %267 ], [ null, %253 ]
  %273 = icmp eq ptr %272, %242
  %274 = select i1 %273, ptr %248, ptr %227
  br label %275

275:                                              ; preds = %247, %271, %250
  %276 = phi ptr [ %227, %250 ], [ %274, %271 ], [ %227, %247 ]
  %277 = phi i1 [ false, %250 ], [ %273, %271 ], [ false, %247 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  br i1 %277, label %226, label %278, !llvm.loop !205

278:                                              ; preds = %275, %221, %200, %195
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  %279 = add i32 %176, 1
  br label %175, !llvm.loop !206

280:                                              ; preds = %173
  %281 = load ptr, ptr %174, align 8, !tbaa !85
  %282 = getelementptr inbounds %struct.VEC_dref_base, ptr %281, i64 0, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !41
  %284 = getelementptr inbounds %struct.dref_d, ptr %283, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !70
  call void @mark_virtual_ops_for_renaming(ptr noundef %285)
  %286 = load ptr, ptr %174, align 8, !tbaa !85
  %287 = getelementptr inbounds %struct.VEC_dref_base, ptr %286, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !41
  %289 = load i32, ptr %21, align 8, !tbaa !72
  %290 = getelementptr inbounds %struct.chain, ptr %21, i64 0, i32 6
  %291 = load i32, ptr %290, align 8, !tbaa !74
  %292 = load i8, ptr %26, align 8
  %293 = and i8 %292, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %294 = call ptr @loop_preheader_edge(ptr noundef %0) #19
  %295 = call ptr @loop_latch_edge(ptr noundef %0) #19
  %296 = icmp eq i32 %291, 0
  %297 = icmp eq i8 %293, 0
  %298 = select i1 %296, i1 %297, i1 false
  br i1 %298, label %299, label %300

299:                                              ; preds = %280
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1499, ptr noundef nonnull @.str.15) #19
  br label %300

300:                                              ; preds = %299, %280
  %301 = add i32 %291, 1
  %302 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %301) #19
  %303 = getelementptr inbounds %struct.chain, ptr %21, i64 0, i32 7
  store ptr %302, ptr %303, align 8, !tbaa !79
  %304 = load i32, ptr %21, align 8, !tbaa !72
  %305 = icmp eq i32 %304, 3
  br i1 %305, label %306, label %324

306:                                              ; preds = %300
  %307 = getelementptr inbounds %struct.dref_d, ptr %288, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !70
  %309 = load i32, ptr %308, align 8
  %310 = and i32 %309, 255
  %311 = add nsw i32 %310, -10
  %312 = icmp ult i32 %311, -9
  br i1 %312, label %330, label %313

313:                                              ; preds = %306
  %314 = zext nneg i32 %310 to i64
  %315 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !56
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %317
  %319 = load i64, ptr %318, align 8, !tbaa !152
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %313
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %322

322:                                              ; preds = %321, %313
  %323 = getelementptr inbounds i8, ptr %308, i64 %319
  br label %327

324:                                              ; preds = %300
  %325 = load ptr, ptr %288, align 8, !tbaa !60
  %326 = getelementptr inbounds %struct.data_reference, ptr %325, i64 0, i32 1
  br label %327

327:                                              ; preds = %322, %324
  %328 = phi ptr [ %326, %324 ], [ %323, %322 ]
  %329 = load ptr, ptr %328, align 8, !tbaa !41
  br label %330

330:                                              ; preds = %327, %306
  %331 = phi ptr [ null, %306 ], [ %329, %327 ]
  %332 = zext nneg i8 %293 to i32
  %333 = add i32 %291, %332
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %345, label %335

335:                                              ; preds = %330, %335
  %336 = phi i32 [ %343, %335 ], [ 0, %330 ]
  %337 = call fastcc ptr @predcom_tmp_var(ptr noundef %331, i32 noundef %336, ptr noundef %2)
  %338 = load ptr, ptr %303, align 8, !tbaa !79
  %339 = load i32, ptr %338, align 8, !tbaa !80
  %340 = add i32 %339, 1
  store i32 %340, ptr %338, align 8, !tbaa !80
  %341 = zext i32 %339 to i64
  %342 = getelementptr inbounds %struct.VEC_tree_base, ptr %338, i64 0, i32 2, i64 %341
  store ptr %337, ptr %342, align 8, !tbaa !41
  %343 = add nuw i32 %336, 1
  %344 = icmp eq i32 %343, %333
  br i1 %344, label %345, label %335, !llvm.loop !207

345:                                              ; preds = %335, %330
  br i1 %297, label %346, label %354

346:                                              ; preds = %345
  %347 = load ptr, ptr %303, align 8, !tbaa !79
  %348 = getelementptr inbounds %struct.VEC_tree_base, ptr %347, i64 0, i32 2, i64 0
  %349 = load ptr, ptr %348, align 8, !tbaa !41
  %350 = load i32, ptr %347, align 8, !tbaa !80
  %351 = add i32 %350, 1
  store i32 %351, ptr %347, align 8, !tbaa !80
  %352 = zext i32 %350 to i64
  %353 = getelementptr inbounds %struct.VEC_tree_base, ptr %347, i64 0, i32 2, i64 %352
  store ptr %349, ptr %353, align 8, !tbaa !41
  br label %354

354:                                              ; preds = %346, %345
  br label %355

355:                                              ; preds = %354, %374
  %356 = phi i32 [ %379, %374 ], [ 0, %354 ]
  %357 = load ptr, ptr %303, align 8, !tbaa !79
  %358 = icmp eq ptr %357, null
  br i1 %358, label %366, label %359

359:                                              ; preds = %355
  %360 = load i32, ptr %357, align 8, !tbaa !80
  %361 = icmp ugt i32 %360, %356
  br i1 %361, label %362, label %366

362:                                              ; preds = %359
  %363 = zext i32 %356 to i64
  %364 = getelementptr inbounds %struct.VEC_tree_base, ptr %357, i64 0, i32 2, i64 %363
  %365 = load ptr, ptr %364, align 8, !tbaa !41
  br label %366

366:                                              ; preds = %362, %359, %355
  %367 = phi ptr [ %365, %362 ], [ null, %359 ], [ null, %355 ]
  %368 = phi i1 [ false, %362 ], [ true, %359 ], [ true, %355 ]
  br i1 %368, label %369, label %374

369:                                              ; preds = %366
  %370 = icmp eq i32 %291, 0
  br i1 %370, label %400, label %371

371:                                              ; preds = %369
  %372 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %373 = zext i32 %291 to i64
  br label %380

374:                                              ; preds = %366
  %375 = load ptr, ptr @cfun, align 8, !tbaa !41
  %376 = call ptr @make_ssa_name_fn(ptr noundef %375, ptr noundef %367, ptr noundef null) #19
  %377 = zext i32 %356 to i64
  %378 = getelementptr inbounds %struct.VEC_tree_base, ptr %357, i64 0, i32 2, i64 %377
  store ptr %376, ptr %378, align 8, !tbaa !41
  %379 = add i32 %356, 1
  br label %355, !llvm.loop !208

380:                                              ; preds = %371, %395
  %381 = phi i64 [ 0, %371 ], [ %385, %395 ]
  %382 = load ptr, ptr %303, align 8, !tbaa !79
  %383 = getelementptr inbounds %struct.VEC_tree_base, ptr %382, i64 0, i32 2, i64 %381
  %384 = load ptr, ptr %383, align 8, !tbaa !41
  %385 = add nuw nsw i64 %381, 1
  %386 = getelementptr inbounds %struct.VEC_tree_base, ptr %382, i64 0, i32 2, i64 %385
  %387 = load ptr, ptr %386, align 8, !tbaa !41
  %388 = trunc i64 %381 to i32
  %389 = call fastcc ptr @get_init_expr(ptr noundef nonnull %21, i32 noundef %388)
  %390 = call ptr @force_gimple_operand(ptr noundef %389, ptr noundef nonnull %4, i8 noundef zeroext 1, ptr noundef null) #19
  %391 = load ptr, ptr %4, align 8, !tbaa !41
  %392 = icmp eq ptr %391, null
  br i1 %392, label %395, label %393

393:                                              ; preds = %380
  %394 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %294, ptr noundef nonnull %391) #19
  br label %395

395:                                              ; preds = %393, %380
  %396 = load ptr, ptr %372, align 8, !tbaa !143
  %397 = call ptr @create_phi_node(ptr noundef %384, ptr noundef %396) #19
  %398 = getelementptr inbounds %struct.tree_ssa_name, ptr %384, i64 0, i32 2
  store ptr %397, ptr %398, align 8, !tbaa !52
  call void @add_phi_arg(ptr noundef %397, ptr noundef %390, ptr noundef %294, i32 noundef 0) #19
  call void @add_phi_arg(ptr noundef %397, ptr noundef %387, ptr noundef %295, i32 noundef 0) #19
  %399 = icmp eq i64 %385, %373
  br i1 %399, label %400, label %380, !llvm.loop !209

400:                                              ; preds = %395, %369
  %401 = and i32 %289, -2
  %402 = icmp eq i32 %401, 2
  %403 = zext i1 %402 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  %404 = getelementptr inbounds %struct.dref_d, ptr %288, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !70
  %406 = load ptr, ptr %303, align 8, !tbaa !79
  %407 = load i32, ptr %290, align 8, !tbaa !74
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds %struct.VEC_tree_base, ptr %406, i64 0, i32 2, i64 %408
  %410 = load ptr, ptr %409, align 8, !tbaa !41
  call fastcc void @replace_ref_with(ptr noundef %405, ptr noundef %410, i8 noundef zeroext 1, i8 noundef zeroext %403)
  br label %411

411:                                              ; preds = %425, %400
  %412 = phi i32 [ 1, %400 ], [ %437, %425 ]
  %413 = load ptr, ptr %174, align 8, !tbaa !85
  %414 = icmp eq ptr %413, null
  br i1 %414, label %422, label %415

415:                                              ; preds = %411
  %416 = load i32, ptr %413, align 8, !tbaa !86
  %417 = icmp ugt i32 %416, %412
  br i1 %417, label %418, label %422

418:                                              ; preds = %415
  %419 = zext i32 %412 to i64
  %420 = getelementptr inbounds %struct.VEC_dref_base, ptr %413, i64 0, i32 2, i64 %419
  %421 = load ptr, ptr %420, align 8, !tbaa !41
  br label %422

422:                                              ; preds = %418, %415, %411
  %423 = phi ptr [ %421, %418 ], [ null, %415 ], [ null, %411 ]
  %424 = phi i1 [ false, %418 ], [ true, %415 ], [ true, %411 ]
  br i1 %424, label %438, label %425

425:                                              ; preds = %422
  %426 = getelementptr inbounds %struct.dref_d, ptr %423, i64 0, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !70
  call void @mark_virtual_ops_for_renaming(ptr noundef %427)
  %428 = load ptr, ptr %303, align 8, !tbaa !79
  %429 = load i32, ptr %290, align 8, !tbaa !74
  %430 = getelementptr inbounds %struct.dref_d, ptr %423, i64 0, i32 3
  %431 = load i32, ptr %430, align 8, !tbaa !71
  %432 = sub i32 %429, %431
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds %struct.VEC_tree_base, ptr %428, i64 0, i32 2, i64 %433
  %435 = load ptr, ptr %434, align 8, !tbaa !41
  %436 = load ptr, ptr %426, align 8, !tbaa !70
  call fastcc void @replace_ref_with(ptr noundef %436, ptr noundef %435, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %437 = add i32 %412, 1
  br label %411, !llvm.loop !210

438:                                              ; preds = %186, %422, %172, %61
  %439 = add i32 %12, 1
  br label %11, !llvm.loop !211

440:                                              ; preds = %20
  call void @update_ssa(i32 noundef 16384) #19
  ret void
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @free_affine_expand_cache(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @suitable_reference_p(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !prof !40 {
  %3 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !212
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %10) #19
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = tail call zeroext i8 @tree_could_throw_p(ptr noundef %4) #19
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = tail call i32 @integer_zerop(ptr noundef nonnull %6) #19
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = tail call i32 @integer_nonzerop(ptr noundef nonnull %6) #19
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 2, i32 1
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ 0, %16 ], [ %22, %19 ]
  store i32 %24, ptr %1, align 4, !tbaa !56
  br label %25

25:                                               ; preds = %23, %2, %8, %13
  %26 = phi i8 [ 0, %13 ], [ 0, %8 ], [ 0, %2 ], [ 1, %23 ]
  ret i8 %26
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @merge_comps(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #11 !prof !40 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi i32 [ %2, %4 ], [ %9, %5 ]
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !56
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %11, label %5, !llvm.loop !137

11:                                               ; preds = %5
  %12 = getelementptr inbounds i32, ptr %0, i64 %7
  %13 = icmp eq i32 %6, %2
  br i1 %13, label %20, label %14

14:                                               ; preds = %11, %14
  %15 = phi i32 [ %18, %14 ], [ %2, %11 ]
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !56
  store i32 %6, ptr %17, align 4, !tbaa !56
  %19 = icmp eq i32 %18, %6
  br i1 %19, label %20, label %14, !llvm.loop !138

20:                                               ; preds = %14, %11
  br label %21

21:                                               ; preds = %20, %21
  %22 = phi i32 [ %25, %21 ], [ %3, %20 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !56
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %21, !llvm.loop !137

27:                                               ; preds = %21
  %28 = getelementptr inbounds i32, ptr %0, i64 %23
  %29 = icmp eq i32 %22, %3
  br i1 %29, label %36, label %30

30:                                               ; preds = %27, %30
  %31 = phi i32 [ %34, %30 ], [ %3, %27 ]
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !56
  store i32 %22, ptr %33, align 4, !tbaa !56
  %35 = icmp eq i32 %34, %22
  br i1 %35, label %36, label %30, !llvm.loop !138

36:                                               ; preds = %30, %27
  %37 = icmp eq i32 %6, %22
  br i1 %37, label %47, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds i32, ptr %1, i64 %7
  %40 = load i32, ptr %39, align 4, !tbaa !56
  %41 = getelementptr inbounds i32, ptr %1, i64 %23
  %42 = load i32, ptr %41, align 4, !tbaa !56
  %43 = icmp ult i32 %40, %42
  %44 = add i32 %42, %40
  br i1 %43, label %45, label %46

45:                                               ; preds = %38
  store i32 %44, ptr %41, align 4, !tbaa !56
  store i32 %22, ptr %12, align 4, !tbaa !56
  br label %47

46:                                               ; preds = %38
  store i32 %44, ptr %39, align 4, !tbaa !56
  store i32 %6, ptr %28, align 4, !tbaa !56
  br label %47

47:                                               ; preds = %45, %46, %36
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @determine_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #9 !prof !40 {
  %4 = alloca %struct.affine_tree_combination, align 8
  %5 = alloca %struct.affine_tree_combination, align 8
  %6 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %6) #19
  %7 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %14, ptr noundef %10) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %54, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !212
  %20 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !212
  %22 = tail call i32 @operand_equal_p(ptr noundef %19, ptr noundef %21, i32 noundef 0) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4
  %26 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !213
  %28 = load ptr, ptr %25, align 8, !tbaa !213
  %29 = tail call i32 @operand_equal_p(ptr noundef %27, ptr noundef %28, i32 noundef 0) #19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %18, align 8, !tbaa !212
  %33 = tail call i32 @integer_zerop(ptr noundef %32) #19
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %37 = load ptr, ptr %36, align 8, !tbaa !214
  %38 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !214
  %40 = tail call i32 @operand_equal_p(ptr noundef %37, ptr noundef %39, i32 noundef 0) #19
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !215
  %45 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !215
  %47 = tail call i32 @operand_equal_p(ptr noundef %44, ptr noundef %46, i32 noundef 0) #19
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i8
  br label %54

50:                                               ; preds = %31
  call fastcc void @aff_combination_dr_offset(ptr noundef %0, ptr noundef nonnull %4)
  call fastcc void @aff_combination_dr_offset(ptr noundef %1, ptr noundef nonnull %5)
  call void @aff_combination_scale(ptr noundef nonnull %5, i64 -1, i64 -1) #19
  call void @aff_combination_add(ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %51 = load ptr, ptr %18, align 8, !tbaa !212
  %52 = load ptr, ptr @sizetype_tab, align 16, !tbaa !41
  call void @tree_to_aff_combination_expand(ptr noundef %51, ptr noundef %52, ptr noundef nonnull %6, ptr noundef nonnull @name_expansions) #19
  %53 = call zeroext i8 @aff_combination_constant_multiple_p(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef %2) #19
  br label %54

54:                                               ; preds = %35, %42, %17, %24, %3, %50
  %55 = phi i8 [ %53, %50 ], [ 0, %3 ], [ 0, %24 ], [ 0, %17 ], [ 0, %35 ], [ %49, %42 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %4) #19
  ret i8 %55
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #3

declare ptr @nearest_common_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @tree_could_throw_p(ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @aff_combination_dr_offset(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !40 {
  %3 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !214
  %6 = load ptr, ptr @sizetype_tab, align 16, !tbaa !41
  tail call void @tree_to_aff_combination_expand(ptr noundef %5, ptr noundef %6, ptr noundef %1, ptr noundef nonnull @name_expansions) #19
  %7 = load ptr, ptr @sizetype_tab, align 16, !tbaa !41
  %8 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !215
  %10 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %9) #19
  %11 = extractvalue { i64, i64 } %10, 0
  %12 = extractvalue { i64, i64 } %10, 1
  call void @aff_combination_const(ptr noundef nonnull %3, ptr noundef %7, i64 %11, i64 %12) #19
  call void @aff_combination_add(ptr noundef %1, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %3) #19
  ret void
}

declare void @aff_combination_scale(ptr noundef, i64, i64) local_unnamed_addr #3

declare void @aff_combination_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @tree_to_aff_combination_expand(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @aff_combination_constant_multiple_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @aff_combination_const(ptr noundef, ptr noundef, i64, i64) local_unnamed_addr #3

declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @just_once_each_iteration_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @order_drefs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !40 {
  %3 = load ptr, ptr %0, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.dref_d, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %1, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.dref_d, ptr %5, i64 0, i32 4
  %7 = load i64, ptr %4, align 8
  %8 = getelementptr inbounds %struct.dref_d, ptr %3, i64 0, i32 4, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = load i64, ptr %6, align 8
  %11 = getelementptr inbounds %struct.dref_d, ptr %5, i64 0, i32 4, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = tail call i32 @double_int_scmp(i64 %7, i64 %9, i64 %10, i64 %12) #19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct.dref_d, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !68
  %19 = load ptr, ptr %1, align 8, !tbaa !41
  %20 = getelementptr inbounds %struct.dref_d, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !68
  %22 = sub i32 %18, %21
  br label %23

23:                                               ; preds = %2, %15
  %24 = phi i32 [ %22, %15 ], [ %13, %2 ]
  ret i32 %24
}

declare i32 @double_int_ucmp(i64, i64, i64, i64) local_unnamed_addr #3

declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #3

declare { i64, i64 } @double_int_neg(i64, i64) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_looparound_copies(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !40 {
  %3 = alloca %struct.affine_tree_combination, align 8
  %4 = alloca %struct.affine_tree_combination, align 8
  %5 = alloca %struct.affine_tree_combination, align 8
  %6 = alloca %struct.double_int, align 8
  %7 = alloca %struct.data_reference, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = getelementptr inbounds %struct.VEC_dref_base, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.data_reference, ptr %7, i64 0, i32 1
  %15 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 6
  %16 = getelementptr inbounds %struct.chain, ptr %1, i64 0, i32 9
  br label %17

17:                                               ; preds = %273, %2
  %18 = phi i32 [ 0, %2 ], [ %274, %273 ]
  %19 = load ptr, ptr %9, align 8, !tbaa !85
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %19, align 8, !tbaa !86
  %23 = icmp ugt i32 %22, %18
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = zext i32 %18 to i64
  %26 = getelementptr inbounds %struct.VEC_dref_base, ptr %19, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !41
  br label %28

28:                                               ; preds = %17, %21, %24
  %29 = phi ptr [ %27, %24 ], [ null, %21 ], [ null, %17 ]
  %30 = phi i1 [ false, %24 ], [ true, %21 ], [ true, %17 ]
  br i1 %30, label %275, label %31

31:                                               ; preds = %28
  %32 = call ptr @loop_latch_edge(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %7) #19
  %33 = getelementptr inbounds %struct.dref_d, ptr %29, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !70
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %36, 6
  br i1 %37, label %38, label %59

38:                                               ; preds = %31
  %39 = load ptr, ptr %29, align 8, !tbaa !60
  %40 = getelementptr inbounds %struct.data_reference, ptr %39, i64 0, i32 3
  %41 = load i8, ptr %40, align 8, !tbaa !69
  %42 = icmp eq i8 %41, 0
  %43 = zext nneg i32 %36 to i64
  %44 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !56
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !152
  %49 = icmp eq i64 %48, 0
  br i1 %42, label %54, label %50

50:                                               ; preds = %38
  br i1 %49, label %51, label %52

51:                                               ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %52

52:                                               ; preds = %51, %50
  %53 = getelementptr inbounds i8, ptr %34, i64 %48
  br label %61

54:                                               ; preds = %38
  br i1 %49, label %55, label %56

55:                                               ; preds = %54
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %56

56:                                               ; preds = %55, %54
  %57 = getelementptr inbounds i8, ptr %34, i64 %48
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  br label %61

59:                                               ; preds = %31
  %60 = getelementptr inbounds %struct.gimple_statement_phi, ptr %34, i64 0, i32 3
  br label %61

61:                                               ; preds = %59, %56, %52
  %62 = phi ptr [ %60, %59 ], [ %53, %52 ], [ %58, %56 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !41
  %64 = icmp eq ptr %63, null
  br i1 %64, label %210, label %65

65:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  %66 = load ptr, ptr %13, align 8, !tbaa !143
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %66) #19
  %67 = load ptr, ptr %8, align 8, !tbaa.struct !170
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  %68 = icmp eq ptr %67, null
  br i1 %68, label %90, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.edge_def, ptr %32, i64 0, i32 6
  br label %71

71:                                               ; preds = %69, %86
  %72 = phi i1 [ %68, %69 ], [ %89, %86 ]
  %73 = phi ptr [ %67, %69 ], [ %88, %86 ]
  %74 = load ptr, ptr %73, align 8, !tbaa !171
  %75 = load i32, ptr %70, align 4, !tbaa !158
  %76 = getelementptr inbounds %struct.gimple_statement_phi, ptr %74, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !52
  %78 = icmp ult i32 %77, %75
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 3103, ptr noundef nonnull @.str.15) #19
  br label %80

80:                                               ; preds = %79, %71
  %81 = zext i32 %75 to i64
  %82 = getelementptr inbounds %struct.gimple_statement_phi, ptr %74, i64 0, i32 4, i64 %81, i32 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !159
  %84 = load ptr, ptr %83, align 8, !tbaa !41
  %85 = icmp eq ptr %84, %63
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %73, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !196
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %71, !llvm.loop !216

90:                                               ; preds = %86, %80, %65
  %91 = phi i1 [ %68, %65 ], [ %89, %86 ], [ %72, %80 ]
  %92 = phi ptr [ null, %65 ], [ %74, %80 ], [ %74, %86 ]
  br i1 %91, label %210, label %93

93:                                               ; preds = %90
  %94 = call ptr @loop_preheader_edge(ptr noundef %0) #19
  %95 = getelementptr inbounds %struct.edge_def, ptr %94, i64 0, i32 6
  %96 = load i32, ptr %95, align 4, !tbaa !158
  %97 = getelementptr inbounds %struct.gimple_statement_phi, ptr %92, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !52
  %99 = icmp ult i32 %98, %96
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 3103, ptr noundef nonnull @.str.15) #19
  br label %101

101:                                              ; preds = %100, %93
  %102 = zext i32 %96 to i64
  %103 = getelementptr inbounds %struct.gimple_statement_phi, ptr %92, i64 0, i32 4, i64 %102, i32 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !159
  %105 = load ptr, ptr %104, align 8, !tbaa !41
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 141
  br i1 %108, label %109, label %210

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.tree_ssa_name, ptr %105, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !52
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 255
  %114 = icmp eq i32 %113, 6
  br i1 %114, label %115, label %210

115:                                              ; preds = %109
  %116 = zext nneg i32 %113 to i64
  %117 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !56
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !152
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %124

124:                                              ; preds = %123, %115
  %125 = getelementptr inbounds i8, ptr %111, i64 %121
  %126 = load ptr, ptr %125, align 8, !tbaa !41
  %127 = icmp eq ptr %126, %105
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1104, ptr noundef nonnull @.str.15) #19
  br label %129

129:                                              ; preds = %128, %124
  %130 = load i32, ptr %111, align 8
  %131 = and i32 %130, 255
  %132 = add nsw i32 %131, -10
  %133 = icmp ult i32 %132, -9
  br i1 %133, label %147, label %134

134:                                              ; preds = %129
  %135 = zext nneg i32 %131 to i64
  %136 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !56
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %138
  %140 = load i64, ptr %139, align 8, !tbaa !152
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %143

143:                                              ; preds = %142, %134
  %144 = getelementptr inbounds i8, ptr %111, i64 %140
  %145 = getelementptr inbounds ptr, ptr %144, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !41
  br label %147

147:                                              ; preds = %143, %129
  %148 = phi ptr [ %146, %143 ], [ null, %129 ]
  %149 = load i64, ptr %148, align 8
  %150 = and i64 %149, 65535
  %151 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !56
  %153 = add i32 %152, -3
  %154 = icmp ult i32 %153, 2
  br i1 %154, label %155, label %210

155:                                              ; preds = %147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %7, i8 0, i64 112, i1 false)
  store ptr %148, ptr %14, align 8, !tbaa !63
  store ptr %92, ptr %7, align 8, !tbaa !140
  %156 = call zeroext i8 @dr_analyze_innermost(ptr noundef nonnull %7) #19
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %210, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.data_reference, ptr %7, i64 0, i32 4
  %160 = getelementptr inbounds %struct.dref_d, ptr %29, i64 0, i32 3
  %161 = load i32, ptr %160, align 8, !tbaa !71
  %162 = add i32 %161, 1
  %163 = load ptr, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %164 = load ptr, ptr %159, align 8, !tbaa !213
  %165 = getelementptr inbounds %struct.data_reference, ptr %163, i64 0, i32 4
  %166 = load ptr, ptr %165, align 8, !tbaa !213
  %167 = call i32 @operand_equal_p(ptr noundef %164, ptr noundef %166, i32 noundef 0) #19
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %207, label %169

169:                                              ; preds = %158
  %170 = getelementptr inbounds %struct.data_reference, ptr %7, i64 0, i32 4, i32 3
  %171 = load ptr, ptr %170, align 8, !tbaa !212
  %172 = call i32 @integer_zerop(ptr noundef %171) #19
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1036, ptr noundef nonnull @.str.15) #19
  br label %175

175:                                              ; preds = %174, %169
  %176 = getelementptr inbounds %struct.data_reference, ptr %163, i64 0, i32 4, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !212
  %178 = call i32 @integer_zerop(ptr noundef %177) #19
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %194, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.data_reference, ptr %7, i64 0, i32 4, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !214
  %183 = getelementptr inbounds %struct.data_reference, ptr %163, i64 0, i32 4, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !214
  %185 = call i32 @operand_equal_p(ptr noundef %182, ptr noundef %184, i32 noundef 0) #19
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %207, label %187

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.data_reference, ptr %7, i64 0, i32 4, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !215
  %190 = getelementptr inbounds %struct.data_reference, ptr %163, i64 0, i32 4, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !215
  %192 = call i32 @operand_equal_p(ptr noundef %189, ptr noundef %191, i32 noundef 0) #19
  %193 = icmp ne i32 %192, 0
  br label %207

194:                                              ; preds = %175
  call fastcc void @aff_combination_dr_offset(ptr noundef %163, ptr noundef nonnull %3)
  call fastcc void @aff_combination_dr_offset(ptr noundef nonnull %7, ptr noundef nonnull %4)
  call void @aff_combination_scale(ptr noundef nonnull %4, i64 -1, i64 -1) #19
  call void @aff_combination_add(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %195 = load ptr, ptr %176, align 8, !tbaa !212
  %196 = load ptr, ptr @sizetype_tab, align 16, !tbaa !41
  call void @tree_to_aff_combination_expand(ptr noundef %195, ptr noundef %196, ptr noundef nonnull %5, ptr noundef nonnull @name_expansions) #19
  %197 = call zeroext i8 @aff_combination_constant_multiple_p(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds { i64, i64 }, ptr %6, i64 0, i32 1
  %201 = zext i32 %162 to i64
  %202 = load i64, ptr %6, align 8
  %203 = load i64, ptr %200, align 8
  %204 = icmp eq i64 %202, %201
  %205 = icmp eq i64 %203, 0
  %206 = select i1 %204, i1 %205, i1 false
  br label %207

207:                                              ; preds = %158, %180, %187, %194, %199
  %208 = phi i1 [ false, %158 ], [ false, %180 ], [ %193, %187 ], [ false, %194 ], [ %206, %199 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %3) #19
  %209 = select i1 %208, ptr %92, ptr null
  br label %210

210:                                              ; preds = %61, %90, %101, %109, %147, %155, %207
  %211 = phi ptr [ null, %61 ], [ null, %90 ], [ null, %101 ], [ null, %109 ], [ null, %147 ], [ null, %155 ], [ %209, %207 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #19
  %212 = icmp eq ptr %211, null
  br i1 %212, label %273, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr @looparound_phis, align 8, !tbaa !41
  %215 = getelementptr inbounds %struct.gimple_statement_phi, ptr %211, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !41
  %217 = getelementptr inbounds %struct.tree_ssa_name, ptr %216, i64 0, i32 3
  %218 = load i32, ptr %217, align 8, !tbaa !52
  %219 = call zeroext i8 @bitmap_set_bit(ptr noundef %214, i32 noundef %218) #19
  %220 = call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #19
  %221 = getelementptr inbounds %struct.dref_d, ptr %220, i64 0, i32 1
  store ptr %211, ptr %221, align 8, !tbaa !70
  %222 = getelementptr inbounds %struct.dref_d, ptr %29, i64 0, i32 3
  %223 = load i32, ptr %222, align 8, !tbaa !71
  %224 = add i32 %223, 1
  %225 = getelementptr inbounds %struct.dref_d, ptr %220, i64 0, i32 3
  store i32 %224, ptr %225, align 8, !tbaa !71
  %226 = getelementptr inbounds %struct.dref_d, ptr %220, i64 0, i32 6
  %227 = load i8, ptr %226, align 4
  %228 = or i8 %227, 1
  store i8 %228, ptr %226, align 4
  %229 = load ptr, ptr %9, align 8, !tbaa !41
  %230 = icmp eq ptr %229, null
  br label %231

231:                                              ; preds = %247, %213
  %232 = phi i32 [ 0, %213 ], [ %248, %247 ]
  br i1 %230, label %240, label %233

233:                                              ; preds = %231
  %234 = load i32, ptr %229, align 8, !tbaa !86
  %235 = icmp ugt i32 %234, %232
  br i1 %235, label %236, label %240

236:                                              ; preds = %233
  %237 = zext i32 %232 to i64
  %238 = getelementptr inbounds %struct.VEC_dref_base, ptr %229, i64 0, i32 2, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !41
  br label %240

240:                                              ; preds = %236, %233, %231
  %241 = phi ptr [ %239, %236 ], [ null, %233 ], [ null, %231 ]
  %242 = phi i1 [ false, %236 ], [ true, %233 ], [ true, %231 ]
  br i1 %242, label %249, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.dref_d, ptr %241, i64 0, i32 3
  %245 = load i32, ptr %244, align 8, !tbaa !71
  %246 = icmp ult i32 %245, %224
  br i1 %246, label %247, label %249

247:                                              ; preds = %243
  %248 = add i32 %232, 1
  br label %231, !llvm.loop !217

249:                                              ; preds = %243, %240
  br i1 %230, label %255, label %250

250:                                              ; preds = %249
  %251 = getelementptr inbounds %struct.VEC_dref_base, ptr %229, i64 0, i32 1
  %252 = load i32, ptr %251, align 4, !tbaa !148
  %253 = load i32, ptr %229, align 8, !tbaa !86
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %250, %249
  %256 = call ptr @vec_heap_p_reserve(ptr noundef %229, i32 noundef 1) #19
  store ptr %256, ptr %9, align 8, !tbaa !41
  br label %257

257:                                              ; preds = %255, %250
  %258 = load ptr, ptr %9, align 8, !tbaa !41
  %259 = load i32, ptr %258, align 8, !tbaa !86
  %260 = zext i32 %232 to i64
  %261 = getelementptr inbounds %struct.VEC_dref_base, ptr %258, i64 0, i32 2, i64 %260
  %262 = getelementptr inbounds ptr, ptr %261, i64 1
  %263 = add i32 %259, 1
  store i32 %263, ptr %258, align 8, !tbaa !86
  %264 = sub i32 %259, %232
  %265 = zext i32 %264 to i64
  %266 = shl nuw nsw i64 %265, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %262, ptr nonnull align 8 %261, i64 %266, i1 false)
  store ptr %220, ptr %261, align 8, !tbaa !41
  %267 = load i32, ptr %225, align 8, !tbaa !71
  %268 = load i32, ptr %15, align 8, !tbaa !74
  %269 = icmp ugt i32 %267, %268
  br i1 %269, label %270, label %273

270:                                              ; preds = %257
  store i32 %267, ptr %15, align 8, !tbaa !74
  %271 = load i8, ptr %16, align 8
  %272 = and i8 %271, -2
  store i8 %272, ptr %16, align 8
  br label %273

273:                                              ; preds = %270, %257, %210
  %274 = add i32 %18, 1
  br label %17, !llvm.loop !218

275:                                              ; preds = %28
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @release_chain(ptr noundef %0) unnamed_addr #9 !prof !40 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 5
  br label %5

5:                                                ; preds = %3, %19
  %6 = phi i32 [ %20, %19 ], [ 0, %3 ]
  %7 = load ptr, ptr %4, align 8, !tbaa !41
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !86
  %11 = icmp ugt i32 %10, %6
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds %struct.VEC_dref_base, ptr %7, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  br label %16

16:                                               ; preds = %5, %9, %12
  %17 = phi ptr [ %15, %12 ], [ null, %9 ], [ null, %5 ]
  %18 = phi i1 [ false, %12 ], [ true, %9 ], [ true, %5 ]
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  tail call void @free(ptr noundef %17)
  %20 = add i32 %6, 1
  br label %5, !llvm.loop !219

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 5
  br i1 %8, label %24, label %23

23:                                               ; preds = %21
  tail call void @free(ptr noundef %7)
  br label %24

24:                                               ; preds = %21, %23
  store ptr null, ptr %22, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @free(ptr noundef %26)
  br label %29

29:                                               ; preds = %24, %28
  store ptr null, ptr %25, align 8, !tbaa !41
  %30 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !41
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @free(ptr noundef %31)
  br label %34

34:                                               ; preds = %29, %33
  store ptr null, ptr %30, align 8, !tbaa !41
  tail call void @free(ptr noundef %0)
  br label %35

35:                                               ; preds = %1, %34
  ret void
}

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @double_int_scmp(i64, i64, i64, i64) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

declare zeroext i8 @dr_analyze_innermost(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

declare zeroext i8 @double_int_fits_in_uhwi_p(i64, i64) local_unnamed_addr #3

declare i64 @double_int_to_uhwi(i64, i64) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @ref_at_iteration(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !40 {
  %4 = alloca %struct.affine_iv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %5 = load i64, ptr %1, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %7 [
    i16 42, label %12
    i16 41, label %12
    i16 45, label %12
    i16 46, label %12
    i16 118, label %12
    i16 43, label %12
    i16 44, label %12
  ]

7:                                                ; preds = %3
  %8 = trunc i64 %5 to i32
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -47
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %19, label %17

12:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  %13 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = tail call fastcc ptr @ref_at_iteration(ptr noundef %0, ptr noundef %14, i32 noundef %2)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %105, label %19

17:                                               ; preds = %7
  %18 = tail call ptr @unshare_expr(ptr noundef nonnull %1) #19
  br label %105

19:                                               ; preds = %7, %12
  %20 = phi ptr [ %15, %12 ], [ null, %7 ]
  %21 = load i64, ptr %1, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %105 [
    i16 47, label %23
    i16 48, label %23
    i16 49, label %23
    i16 41, label %27
    i16 45, label %43
  ]

23:                                               ; preds = %19, %19, %19
  %24 = tail call ptr @copy_node_stat(ptr noundef nonnull %1) #19
  %25 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %26 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 0, i32 3
  br label %67

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef nonnull %29) #19
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %105, label %34

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  %37 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  %39 = tail call ptr @unshare_expr(ptr noundef %38) #19
  %40 = load ptr, ptr %28, align 8, !tbaa !52
  %41 = tail call ptr @unshare_expr(ptr noundef %40) #19
  %42 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %36, ptr noundef %20, ptr noundef %39, ptr noundef %41) #19
  br label %105

43:                                               ; preds = %19
  %44 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !52
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef nonnull %45) #19
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %105, label %50

50:                                               ; preds = %47, %43
  %51 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef nonnull %52) #19
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %105, label %57

57:                                               ; preds = %54, %50
  %58 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !52
  %60 = load ptr, ptr %44, align 8, !tbaa !52
  %61 = tail call ptr @unshare_expr(ptr noundef %60) #19
  %62 = load ptr, ptr %51, align 8, !tbaa !52
  %63 = tail call ptr @unshare_expr(ptr noundef %62) #19
  %64 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %59, ptr noundef %20, ptr noundef null, ptr noundef %61, ptr noundef %63) #19
  %65 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %66 = getelementptr inbounds %struct.tree_exp, ptr %64, i64 1
  br label %67

67:                                               ; preds = %57, %23
  %68 = phi ptr [ %26, %23 ], [ %66, %57 ]
  %69 = phi ptr [ %25, %23 ], [ %65, %57 ]
  %70 = phi ptr [ %24, %23 ], [ %64, %57 ]
  %71 = load ptr, ptr %69, align 8, !tbaa !52
  %72 = call zeroext i8 @simple_iv(ptr noundef %0, ptr noundef %0, ptr noundef %71, ptr noundef nonnull %4, i8 noundef zeroext 1) #19
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %105, label %74

74:                                               ; preds = %67
  %75 = load ptr, ptr %4, align 8, !tbaa !220
  %76 = call ptr @expand_simple_operations(ptr noundef %75) #19
  store ptr %76, ptr %4, align 8, !tbaa !220
  %77 = getelementptr inbounds %struct.affine_iv, ptr %4, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !222
  %79 = call i32 @integer_zerop(ptr noundef %78) #19
  %80 = icmp eq i32 %79, 0
  %81 = load ptr, ptr %4, align 8, !tbaa !220
  br i1 %80, label %82, label %102

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !52
  %85 = load i64, ptr %84, align 8
  %86 = trunc i64 %85 to i16
  switch i16 %86, label %95 [
    i16 10, label %87
    i16 12, label %87
  ]

87:                                               ; preds = %82, %82
  %88 = load ptr, ptr @sizetype_tab, align 16, !tbaa !41
  %89 = load ptr, ptr %77, align 8, !tbaa !222
  %90 = sext i32 %2 to i64
  %91 = call ptr @size_int_kind(i64 noundef %90, i32 noundef 0) #19
  %92 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %88, ptr noundef %89, ptr noundef %91) #19
  %93 = load ptr, ptr %4, align 8, !tbaa !220
  %94 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %84, ptr noundef %93, ptr noundef %92) #19
  br label %102

95:                                               ; preds = %82
  %96 = load ptr, ptr %77, align 8, !tbaa !222
  %97 = sext i32 %2 to i64
  %98 = call ptr @build_int_cst_type(ptr noundef nonnull %84, i64 noundef %97) #19
  %99 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %84, ptr noundef %96, ptr noundef %98) #19
  %100 = load ptr, ptr %4, align 8, !tbaa !220
  %101 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %84, ptr noundef %100, ptr noundef %99) #19
  br label %102

102:                                              ; preds = %87, %95, %74
  %103 = phi ptr [ %81, %74 ], [ %94, %87 ], [ %101, %95 ]
  %104 = call ptr @unshare_expr(ptr noundef %103) #19
  store ptr %104, ptr %68, align 8, !tbaa !41
  br label %105

105:                                              ; preds = %54, %19, %67, %47, %31, %12, %102, %34, %17
  %106 = phi ptr [ %70, %102 ], [ %42, %34 ], [ %18, %17 ], [ null, %12 ], [ null, %31 ], [ null, %47 ], [ null, %67 ], [ null, %19 ], [ null, %54 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret ptr %106
}

declare zeroext i8 @tree_could_trap_p(ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @expr_invariant_in_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @expand_simple_operations(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_dominates_stmt_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @name_for_ref(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !40 {
  %2 = getelementptr inbounds %struct.dref_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !60
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.data_reference, ptr %8, i64 0, i32 3
  %12 = load i8, ptr %11, align 8, !tbaa !69
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %7, %10
  %15 = zext nneg i32 %5 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !56
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !152
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %23

23:                                               ; preds = %22, %14
  %24 = getelementptr inbounds i8, ptr %3, i64 %20
  br label %39

25:                                               ; preds = %10
  %26 = zext nneg i32 %5 to i64
  %27 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !56
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !152
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %34

34:                                               ; preds = %33, %25
  %35 = getelementptr inbounds i8, ptr %3, i64 %31
  %36 = getelementptr inbounds ptr, ptr %35, i64 1
  br label %39

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.gimple_statement_phi, ptr %3, i64 0, i32 3
  br label %39

39:                                               ; preds = %34, %23, %37
  %40 = phi ptr [ %38, %37 ], [ %24, %23 ], [ %36, %34 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !41
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 141
  %45 = select i1 %44, ptr %41, ptr null
  ret ptr %45
}

declare zeroext i8 @commutative_tree_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_use_stmt(ptr nocapture noundef %0) unnamed_addr #9 !prof !40 {
  %2 = load ptr, ptr %0, align 8, !tbaa !41
  %3 = tail call fastcc ptr @single_nonlooparound_use(ptr noundef %2)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %91, label %5

5:                                                ; preds = %1, %50
  %6 = phi ptr [ %51, %50 ], [ %3, %1 ]
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 6
  br i1 %9, label %10, label %91

10:                                               ; preds = %5
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !56
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !152
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %19

19:                                               ; preds = %18, %10
  %20 = getelementptr inbounds i8, ptr %6, i64 %16
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 141
  br i1 %24, label %25, label %91

25:                                               ; preds = %19
  %26 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef nonnull %6) #19
  %27 = icmp eq i8 %26, 0
  %28 = load i32, ptr %6, align 8
  br i1 %27, label %53, label %29

29:                                               ; preds = %25
  %30 = and i32 %28, 255
  %31 = add nsw i32 %30, -10
  %32 = icmp ult i32 %31, -9
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = zext nneg i32 %30 to i64
  %35 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !56
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !152
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %42

42:                                               ; preds = %41, %33
  %43 = getelementptr inbounds i8, ptr %6, i64 %39
  %44 = getelementptr inbounds ptr, ptr %43, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !41
  br label %46

46:                                               ; preds = %29, %42
  %47 = phi ptr [ %45, %42 ], [ null, %29 ]
  %48 = load ptr, ptr %0, align 8, !tbaa !41
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %50, label %91

50:                                               ; preds = %46
  store ptr %21, ptr %0, align 8, !tbaa !41
  %51 = tail call fastcc ptr @single_nonlooparound_use(ptr noundef nonnull %21)
  %52 = icmp eq ptr %51, null
  br i1 %52, label %91, label %5, !llvm.loop !223

53:                                               ; preds = %25
  %54 = trunc i32 %28 to i8
  switch i8 %54, label %57 [
    i8 6, label %55
    i8 1, label %55
    i8 8, label %58
  ]

55:                                               ; preds = %53, %53
  %56 = lshr i32 %28, 16
  br label %58

57:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1446, ptr noundef nonnull @.str.15) #19
  br label %58

58:                                               ; preds = %57, %55, %53
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ], [ 59, %53 ]
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !52
  %63 = icmp eq i8 %62, 3
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load i32, ptr %6, align 8
  %66 = and i32 %65, 255
  %67 = add nsw i32 %66, -1
  %68 = icmp ult i32 %67, 9
  tail call void @llvm.assume(i1 %68)
  %69 = zext nneg i32 %66 to i64
  %70 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !56
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !152
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %77

77:                                               ; preds = %76, %64
  %78 = getelementptr inbounds i8, ptr %6, i64 %74
  %79 = getelementptr inbounds ptr, ptr %78, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !41
  %81 = load i64, ptr %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = and i32 %82, 65535
  br label %84

84:                                               ; preds = %58, %77
  %85 = phi i32 [ %83, %77 ], [ %59, %58 ]
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !52
  %89 = icmp eq i8 %88, 1
  %90 = select i1 %89, ptr %6, ptr null
  br label %91

91:                                               ; preds = %50, %5, %19, %46, %1, %84
  %92 = phi ptr [ %90, %84 ], [ null, %1 ], [ null, %46 ], [ null, %19 ], [ null, %5 ], [ null, %50 ]
  ret ptr %92
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @find_associative_operation_root(ptr noundef readonly %0, ptr noundef writeonly %1) unnamed_addr #9 !prof !40 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %8 [
    i8 6, label %6
    i8 1, label %6
    i8 8, label %9
  ]

6:                                                ; preds = %2, %2
  %7 = lshr i32 %4, 16
  br label %9

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1446, ptr noundef nonnull @.str.15) #19
  br label %9

9:                                                ; preds = %8, %6, %2
  %10 = phi i32 [ %7, %6 ], [ 0, %8 ], [ 59, %2 ]
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !52
  %14 = icmp eq i8 %13, 3
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, 255
  %18 = add nsw i32 %17, -1
  %19 = icmp ult i32 %18, 9
  tail call void @llvm.assume(i1 %19)
  %20 = zext nneg i32 %17 to i64
  %21 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !56
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !152
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %28

28:                                               ; preds = %27, %15
  %29 = getelementptr inbounds i8, ptr %0, i64 %25
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !41
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 65535
  br label %35

35:                                               ; preds = %9, %28
  %36 = phi i32 [ %34, %28 ], [ %10, %9 ]
  %37 = load i32, ptr %0, align 8
  %38 = and i32 %37, 255
  %39 = add nsw i32 %38, -1
  %40 = icmp ult i32 %39, 9
  tail call void @llvm.assume(i1 %40)
  %41 = zext nneg i32 %38 to i64
  %42 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !56
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !152
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %49

49:                                               ; preds = %48, %35
  %50 = getelementptr inbounds i8, ptr %0, i64 %46
  %51 = load ptr, ptr %50, align 8, !tbaa !41
  %52 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i16
  switch i16 %55, label %68 [
    i16 9, label %65
    i16 13, label %56
    i16 14, label %56
  ]

56:                                               ; preds = %49, %49
  %57 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !52
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 65535
  %61 = icmp ne i64 %60, 9
  %62 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %63 = icmp ne i32 %62, 0
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %68, label %142

65:                                               ; preds = %49
  %66 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !56
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %142, label %68

68:                                               ; preds = %56, %65, %49
  %69 = tail call zeroext i8 @commutative_tree_code(i32 noundef %36) #19
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %142, label %71

71:                                               ; preds = %68
  %72 = tail call zeroext i8 @associative_tree_code(i32 noundef %36) #19
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %142, label %74

74:                                               ; preds = %71, %137
  %75 = phi ptr [ %100, %137 ], [ %0, %71 ]
  %76 = phi i32 [ %138, %137 ], [ 0, %71 ]
  %77 = load i32, ptr %75, align 8
  %78 = and i32 %77, 255
  %79 = add nsw i32 %78, -10
  %80 = icmp ult i32 %79, -9
  br i1 %80, label %93, label %81

81:                                               ; preds = %74
  %82 = zext nneg i32 %78 to i64
  %83 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !56
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !152
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %90

90:                                               ; preds = %89, %81
  %91 = getelementptr inbounds i8, ptr %75, i64 %87
  %92 = load ptr, ptr %91, align 8, !tbaa !41
  br label %93

93:                                               ; preds = %74, %90
  %94 = phi ptr [ %92, %90 ], [ null, %74 ]
  store ptr %94, ptr %3, align 8, !tbaa !41
  %95 = load i64, ptr %94, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 141
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 2045, ptr noundef nonnull @.str.15) #19
  br label %99

99:                                               ; preds = %93, %98
  %100 = call fastcc ptr @find_use_stmt(ptr noundef nonnull %3)
  %101 = icmp eq ptr %100, null
  br i1 %101, label %139, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr %100, align 8
  %104 = trunc i32 %103 to i8
  switch i8 %104, label %107 [
    i8 6, label %105
    i8 1, label %105
    i8 8, label %108
  ]

105:                                              ; preds = %102, %102
  %106 = lshr i32 %103, 16
  br label %108

107:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1446, ptr noundef nonnull @.str.15) #19
  br label %108

108:                                              ; preds = %107, %105, %102
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ], [ 59, %102 ]
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !52
  %113 = icmp eq i8 %112, 3
  br i1 %113, label %114, label %134

114:                                              ; preds = %108
  %115 = load i32, ptr %100, align 8
  %116 = and i32 %115, 255
  %117 = add nsw i32 %116, -1
  %118 = icmp ult i32 %117, 9
  tail call void @llvm.assume(i1 %118)
  %119 = zext nneg i32 %116 to i64
  %120 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !56
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !152
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %127

127:                                              ; preds = %126, %114
  %128 = getelementptr inbounds i8, ptr %100, i64 %124
  %129 = getelementptr inbounds ptr, ptr %128, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !41
  %131 = load i64, ptr %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = and i32 %132, 65535
  br label %134

134:                                              ; preds = %108, %127
  %135 = phi i32 [ %133, %127 ], [ %109, %108 ]
  %136 = icmp eq i32 %135, %36
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = add i32 %76, 1
  br label %74, !llvm.loop !224

139:                                              ; preds = %99, %134
  %140 = icmp eq ptr %1, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %139
  store i32 %76, ptr %1, align 4, !tbaa !56
  br label %142

142:                                              ; preds = %56, %65, %68, %139, %141, %71
  %143 = phi ptr [ null, %71 ], [ %75, %141 ], [ %75, %139 ], [ null, %68 ], [ null, %65 ], [ null, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret ptr %143
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @single_nonlooparound_use(ptr noundef readonly %0) unnamed_addr #9 !prof !40 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !191
  %5 = icmp eq ptr %4, %2
  br i1 %5, label %32, label %6

6:                                                ; preds = %1, %25
  %7 = phi ptr [ %26, %25 ], [ null, %1 ]
  %8 = phi ptr [ %30, %25 ], [ %4, %1 ]
  %9 = phi ptr [ %28, %25 ], [ %4, %1 ]
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %8, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %15, label %23

15:                                               ; preds = %6
  %16 = load ptr, ptr @looparound_phis, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct.gimple_statement_phi, ptr %11, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !52
  %21 = tail call i32 @bitmap_bit_p(ptr noundef %16, i32 noundef %20) #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %25

23:                                               ; preds = %6
  %24 = icmp eq ptr %7, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %23, %15
  %26 = phi ptr [ %7, %15 ], [ %11, %23 ]
  %27 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %9, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !191
  %29 = icmp eq ptr %28, %2
  %30 = select i1 %29, ptr null, ptr %28
  %31 = icmp eq ptr %28, %2
  br i1 %31, label %32, label %6, !llvm.loop !225

32:                                               ; preds = %15, %25, %23, %1
  %33 = phi ptr [ null, %1 ], [ null, %15 ], [ %26, %25 ], [ null, %23 ]
  ret ptr %33
}

declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @associative_tree_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @remove_name_from_operation(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #9 !prof !40 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 2143, ptr noundef nonnull @.str.15) #19
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 255
  %11 = add nsw i32 %10, -10
  %12 = icmp ult i32 %11, -9
  br i1 %12, label %26, label %13

13:                                               ; preds = %8
  %14 = zext nneg i32 %10 to i64
  %15 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !56
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !152
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %22

22:                                               ; preds = %21, %13
  %23 = getelementptr inbounds i8, ptr %0, i64 %19
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  br label %26

26:                                               ; preds = %8, %22
  %27 = phi ptr [ %25, %22 ], [ null, %8 ]
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !52
  %32 = icmp ugt i32 %31, 2
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = load i32, ptr %0, align 8
  %35 = and i32 %34, 255
  %36 = add nsw i32 %35, -10
  %37 = icmp ult i32 %36, -9
  br i1 %37, label %68, label %38

38:                                               ; preds = %33
  %39 = zext nneg i32 %35 to i64
  %40 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !56
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !152
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %59, label %62

46:                                               ; preds = %26
  %47 = load i32, ptr %0, align 8
  %48 = and i32 %47, 255
  %49 = add nsw i32 %48, -10
  %50 = icmp ult i32 %49, -9
  br i1 %50, label %68, label %51

51:                                               ; preds = %46
  %52 = zext nneg i32 %48 to i64
  %53 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !56
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !152
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51, %38
  %60 = phi i64 [ %44, %38 ], [ %57, %51 ]
  %61 = phi i64 [ 2, %38 ], [ 1, %51 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %62

62:                                               ; preds = %59, %51, %38
  %63 = phi i64 [ %44, %38 ], [ %57, %51 ], [ %60, %59 ]
  %64 = phi i64 [ 2, %38 ], [ 1, %51 ], [ %61, %59 ]
  %65 = getelementptr inbounds i8, ptr %0, i64 %63
  %66 = getelementptr inbounds ptr, ptr %65, i64 %64
  %67 = load ptr, ptr %66, align 8, !tbaa !41
  br label %68

68:                                               ; preds = %62, %46, %33, %29
  %69 = phi ptr [ null, %29 ], [ null, %33 ], [ null, %46 ], [ %67, %62 ]
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %0) #19
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %3, ptr noundef %69) #19
  %70 = load ptr, ptr %3, align 8
  %71 = load ptr, ptr %70, align 8, !tbaa !171
  %72 = icmp eq ptr %71, %0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 2154, ptr noundef nonnull @.str.15) #19
  br label %74

74:                                               ; preds = %68, %73
  %75 = load i32, ptr %0, align 8
  %76 = and i32 %75, 255
  %77 = add nsw i32 %76, -10
  %78 = icmp ult i32 %77, -9
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  call void @gimple_set_modified(ptr noundef nonnull %0, i8 noundef zeroext 1) #19
  call void @update_stmt_operands(ptr noundef nonnull %0) #19
  br label %80

80:                                               ; preds = %74, %79
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @gimple_assign_set_rhs_with_ops(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !40 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #19
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %77

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #19
  %17 = icmp eq i8 %16, 0
  %18 = xor i1 %9, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !52
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 4, i64 0
  br label %25

25:                                               ; preds = %19, %13, %23
  %26 = phi i32 [ %21, %23 ], [ 0, %13 ], [ %21, %19 ]
  %27 = phi i32 [ 1, %23 ], [ 0, %13 ], [ 0, %19 ]
  %28 = phi ptr [ %4, %23 ], [ null, %13 ], [ %4, %19 ]
  %29 = phi i1 [ true, %23 ], [ false, %13 ], [ false, %19 ]
  %30 = phi i8 [ 0, %23 ], [ 1, %13 ], [ 1, %19 ]
  %31 = phi ptr [ %24, %23 ], [ null, %13 ], [ null, %19 ]
  br i1 %29, label %32, label %188

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 1
  br label %34

34:                                               ; preds = %32, %72
  %35 = phi ptr [ %31, %32 ], [ %75, %72 ]
  %36 = phi ptr [ %0, %32 ], [ %62, %72 ]
  %37 = phi i8 [ %30, %32 ], [ %74, %72 ]
  %38 = phi i32 [ %27, %32 ], [ %73, %72 ]
  %39 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !159
  %41 = load ptr, ptr %40, align 8, !tbaa !41
  %42 = icmp ne ptr %41, %7
  %43 = icmp eq ptr %35, %0
  %44 = or i1 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !191
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !193
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !191
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !191
  %56 = load ptr, ptr %53, align 8, !tbaa !191
  store ptr %50, ptr %56, align 8, !tbaa !193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %52, %49
  store ptr %36, ptr %35, align 8, !tbaa !193
  %58 = load ptr, ptr %46, align 8, !tbaa !191
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !191
  %60 = load ptr, ptr %46, align 8, !tbaa !191
  store ptr %35, ptr %60, align 8, !tbaa !193
  store ptr %35, ptr %46, align 8, !tbaa !191
  br label %61

61:                                               ; preds = %34, %45, %57
  %62 = phi ptr [ %36, %34 ], [ %35, %57 ], [ %35, %45 ]
  %63 = icmp slt i32 %38, %26
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = add nsw i32 %38, 1
  %66 = load i32, ptr %33, align 8, !tbaa !52
  %67 = icmp ult i32 %66, %38
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 3103, ptr noundef nonnull @.str.15) #19
  br label %69

69:                                               ; preds = %68, %64
  %70 = zext i32 %38 to i64
  %71 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 4, i64 %70
  br label %72

72:                                               ; preds = %61, %69
  %73 = phi i32 [ %65, %69 ], [ %38, %61 ]
  %74 = phi i8 [ %37, %69 ], [ 1, %61 ]
  %75 = phi ptr [ %71, %69 ], [ null, %61 ]
  %76 = icmp eq i8 %74, 0
  br i1 %76, label %34, label %188, !llvm.loop !226

77:                                               ; preds = %2
  br i1 %9, label %147, label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %4, align 8
  %80 = and i32 %79, 255
  %81 = add nsw i32 %80, -10
  %82 = icmp ult i32 %81, -9
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !52
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi ptr [ %85, %83 ], [ null, %78 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = and i32 %79, 254
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -4
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !52
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %87, align 8, !tbaa !227
  br label %99

99:                                               ; preds = %97, %93, %89, %86
  %100 = phi ptr [ %87, %86 ], [ %87, %89 ], [ %87, %93 ], [ %98, %97 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.use_optype_d, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %100, align 8, !tbaa !227
  br label %105

105:                                              ; preds = %99, %102
  %106 = phi ptr [ %104, %102 ], [ %100, %99 ]
  %107 = phi i8 [ 0, %102 ], [ 1, %99 ]
  %108 = phi ptr [ %103, %102 ], [ null, %99 ]
  br i1 %101, label %188, label %109

109:                                              ; preds = %105, %142
  %110 = phi ptr [ %145, %142 ], [ %108, %105 ]
  %111 = phi ptr [ %137, %142 ], [ %0, %105 ]
  %112 = phi i8 [ %144, %142 ], [ %107, %105 ]
  %113 = phi ptr [ %143, %142 ], [ %106, %105 ]
  %114 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !159
  %116 = load ptr, ptr %115, align 8, !tbaa !41
  %117 = icmp ne ptr %116, %7
  %118 = icmp eq ptr %110, %0
  %119 = or i1 %117, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !191
  %123 = icmp eq ptr %122, %110
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %110, align 8, !tbaa !193
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !191
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !191
  %131 = load ptr, ptr %128, align 8, !tbaa !191
  store ptr %125, ptr %131, align 8, !tbaa !193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  br label %132

132:                                              ; preds = %127, %124
  store ptr %111, ptr %110, align 8, !tbaa !193
  %133 = load ptr, ptr %121, align 8, !tbaa !191
  %134 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !191
  %135 = load ptr, ptr %121, align 8, !tbaa !191
  store ptr %110, ptr %135, align 8, !tbaa !193
  store ptr %110, ptr %121, align 8, !tbaa !191
  br label %136

136:                                              ; preds = %132, %120, %109
  %137 = phi ptr [ %111, %109 ], [ %110, %132 ], [ %110, %120 ]
  %138 = icmp eq ptr %113, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.use_optype_d, ptr %113, i64 0, i32 1
  %141 = load ptr, ptr %113, align 8, !tbaa !227
  br label %142

142:                                              ; preds = %136, %139
  %143 = phi ptr [ %141, %139 ], [ %113, %136 ]
  %144 = phi i8 [ %112, %139 ], [ 1, %136 ]
  %145 = phi ptr [ %140, %139 ], [ null, %136 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %109, label %188, !llvm.loop !229

147:                                              ; preds = %77
  %148 = and i32 %10, 254
  %149 = add nsw i32 %148, -10
  %150 = icmp ult i32 %149, -4
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !52
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !230
  %158 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %159 = icmp eq ptr %157, %158
  %160 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1
  %161 = select i1 %159, ptr %160, ptr null
  br label %162

162:                                              ; preds = %147, %151, %155
  %163 = phi ptr [ null, %147 ], [ null, %151 ], [ %161, %155 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %188, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !159
  %168 = load ptr, ptr %167, align 8, !tbaa !41
  %169 = icmp ne ptr %168, %7
  %170 = icmp eq ptr %163, %0
  %171 = or i1 %170, %169
  br i1 %171, label %188, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !191
  %175 = icmp eq ptr %174, %163
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %163, align 8, !tbaa !193
  %178 = icmp eq ptr %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !191
  %182 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %177, i64 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !191
  %183 = load ptr, ptr %180, align 8, !tbaa !191
  store ptr %177, ptr %183, align 8, !tbaa !193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br label %184

184:                                              ; preds = %179, %176
  store ptr %0, ptr %163, align 8, !tbaa !193
  %185 = load ptr, ptr %173, align 8, !tbaa !191
  %186 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !191
  %187 = load ptr, ptr %173, align 8, !tbaa !191
  store ptr %163, ptr %187, align 8, !tbaa !193
  store ptr %163, ptr %173, align 8, !tbaa !191
  br label %188

188:                                              ; preds = %142, %72, %105, %25, %184, %172, %165, %162
  %189 = phi ptr [ %0, %165 ], [ %0, %162 ], [ %163, %184 ], [ %163, %172 ], [ %0, %25 ], [ %0, %105 ], [ %62, %72 ], [ %137, %142 ]
  %190 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !193
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !191
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !191
  %197 = load ptr, ptr %194, align 8, !tbaa !191
  store ptr %191, ptr %197, align 8, !tbaa !193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %190, i8 0, i64 16, i1 false)
  br label %198

198:                                              ; preds = %193, %188
  store ptr %189, ptr %190, align 8, !tbaa !193
  %199 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !191
  %201 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !191
  %202 = load ptr, ptr %199, align 8, !tbaa !191
  store ptr %190, ptr %202, align 8, !tbaa !193
  store ptr %190, ptr %199, align 8, !tbaa !191
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @replace_ref_with(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #9 !prof !40 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  %7 = load i32, ptr %0, align 8
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %51 [
    i8 16, label %9
    i8 6, label %52
  ]

9:                                                ; preds = %4
  %10 = or i8 %3, %2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1260, ptr noundef nonnull @.str.15) #19
  br label %13

13:                                               ; preds = %9, %12
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !231, !noalias !232
  %20 = and i32 %19, 512
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !52, !noalias !232
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !237, !noalias !232
  br label %28

28:                                               ; preds = %26, %22, %13
  %29 = phi ptr [ %27, %26 ], [ null, %22 ], [ null, %13 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %29, align 8, !tbaa !239, !noalias !232
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi ptr [ %32, %31 ], [ null, %28 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %33, %42
  %37 = phi ptr [ %44, %42 ], [ %34, %33 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !171, !noalias !241
  %39 = load i32, ptr %38, align 8, !noalias !241
  %40 = and i32 %39, 255
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %37, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !196, !noalias !241
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %36, !llvm.loop !242

46:                                               ; preds = %36, %42, %33
  %47 = phi ptr [ %34, %33 ], [ %37, %36 ], [ %44, %42 ]
  store ptr %47, ptr %5, align 8, !tbaa.struct !170
  %48 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %29, ptr %48, align 8, !tbaa.struct !243
  %49 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr %17, ptr %49, align 8, !tbaa.struct !244
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %0) #19
  call void @remove_phi_node(ptr noundef nonnull %6, i8 noundef zeroext 0) #19
  %50 = call ptr @gimple_build_assign_stat(ptr noundef %15, ptr noundef %1) #19
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %50, i32 noundef 0) #19
  br label %127

51:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1275, ptr noundef nonnull @.str.15) #19
  br label %52

52:                                               ; preds = %4, %51
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %0) #19
  %53 = icmp eq i8 %2, 0
  %54 = icmp eq i8 %3, 0
  br i1 %53, label %55, label %65

55:                                               ; preds = %52
  br i1 %54, label %57, label %56

56:                                               ; preds = %55
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1282, ptr noundef nonnull @.str.15) #19
  br label %57

57:                                               ; preds = %55, %56
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %5, ptr noundef %1) #19
  %58 = load ptr, ptr %5, align 8
  %59 = load ptr, ptr %58, align 8, !tbaa !171
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 255
  %62 = add nsw i32 %61, -10
  %63 = icmp ult i32 %62, -9
  br i1 %63, label %127, label %64

64:                                               ; preds = %57
  call void @gimple_set_modified(ptr noundef nonnull %59, i8 noundef zeroext 1) #19
  call void @update_stmt_operands(ptr noundef nonnull %59) #19
  br label %127

65:                                               ; preds = %52
  %66 = load i32, ptr %0, align 8
  %67 = and i32 %66, 255
  br i1 %54, label %106, label %68

68:                                               ; preds = %65
  %69 = add nsw i32 %67, -1
  %70 = icmp ult i32 %69, 9
  call void @llvm.assume(i1 %70)
  %71 = zext nneg i32 %67 to i64
  %72 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !56
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !152
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %79

79:                                               ; preds = %78, %68
  %80 = getelementptr inbounds i8, ptr %0, i64 %76
  %81 = load ptr, ptr %80, align 8, !tbaa !41
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, 65535
  %84 = icmp eq i64 %83, 141
  br i1 %84, label %123, label %85

85:                                               ; preds = %79
  %86 = call zeroext i8 @gimple_assign_copy_p(ptr noundef nonnull %0) #19
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1313, ptr noundef nonnull @.str.15) #19
  br label %89

89:                                               ; preds = %85, %88
  %90 = load i32, ptr %0, align 8
  %91 = and i32 %90, 255
  %92 = add nsw i32 %91, -10
  %93 = icmp ult i32 %92, -9
  br i1 %93, label %123, label %94

94:                                               ; preds = %89
  %95 = zext nneg i32 %91 to i64
  %96 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !56
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !152
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %103

103:                                              ; preds = %102, %94
  %104 = getelementptr inbounds i8, ptr %0, i64 %100
  %105 = getelementptr inbounds ptr, ptr %104, i64 1
  br label %120

106:                                              ; preds = %65
  %107 = add nsw i32 %67, -10
  %108 = icmp ult i32 %107, -9
  br i1 %108, label %123, label %109

109:                                              ; preds = %106
  %110 = zext nneg i32 %67 to i64
  %111 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !56
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %113
  %115 = load i64, ptr %114, align 8, !tbaa !152
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 1622, ptr noundef nonnull @.str.15) #19
  br label %118

118:                                              ; preds = %117, %109
  %119 = getelementptr inbounds i8, ptr %0, i64 %115
  br label %120

120:                                              ; preds = %103, %118
  %121 = phi ptr [ %119, %118 ], [ %105, %103 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !41
  br label %123

123:                                              ; preds = %120, %106, %89, %79
  %124 = phi ptr [ %81, %79 ], [ null, %89 ], [ null, %106 ], [ %122, %120 ]
  %125 = call ptr @unshare_expr(ptr noundef %124) #19
  %126 = call ptr @gimple_build_assign_stat(ptr noundef %1, ptr noundef %125) #19
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %126, i32 noundef 0) #19
  br label %127

127:                                              ; preds = %64, %57, %123, %46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @predcom_tmp_var(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 !prof !40 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = tail call ptr @get_lsm_tmp_name(ptr noundef %0, i32 noundef %1) #19
  %7 = tail call ptr @create_tmp_var(ptr noundef %5, ptr noundef %6) #19
  %8 = load i64, ptr %5, align 8
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -13
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = or i64 %15, 134217728
  store i64 %16, ptr %14, align 8
  br label %17

17:                                               ; preds = %3, %13
  %18 = tail call zeroext i8 @add_referenced_var(ptr noundef %7) #19
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !52
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %20) #19
  ret ptr %7
}

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_lsm_tmp_name(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @release_defs(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_init_expr(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !40 {
  %3 = load i32, ptr %0, align 8, !tbaa !72
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %7, label %19

5:                                                ; preds = %19, %7
  %6 = phi ptr [ %18, %7 ], [ %24, %19 ]
  ret ptr %6

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = tail call fastcc ptr @get_init_expr(ptr noundef %9, i32 noundef %1)
  %11 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = tail call fastcc ptr @get_init_expr(ptr noundef %12, i32 noundef %1)
  %14 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !76
  %16 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !78
  %18 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %15, ptr noundef %17, ptr noundef %10, ptr noundef %13) #19
  br label %5

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.chain, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !83
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds %struct.VEC_tree_base, ptr %21, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  br label %5
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #18

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
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @tree_predictive_commoning, ptr @initialize_original_copy_tables, i64 38}
!36 = !{ptr @tree_predictive_commoning, ptr @vec_heap_o_reserve_exact, i64 38}
!37 = !{ptr @tree_predictive_commoning, ptr @free, i64 38}
!38 = !{ptr @tree_predictive_commoning, ptr @free_original_copy_tables, i64 38}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!46, !42, i64 8}
!46 = !{!"_IO_FILE", !47, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !47, i64 112, !47, i64 116, !48, i64 120, !49, i64 128, !43, i64 130, !43, i64 131, !42, i64 136, !48, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !48, i64 184, !47, i64 192, !43, i64 196}
!47 = !{!"int", !43, i64 0}
!48 = !{!"long", !43, i64 0}
!49 = !{!"short", !43, i64 0}
!50 = !{!46, !42, i64 16}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!43, !43, i64 0}
!53 = !{!46, !42, i64 40}
!54 = !{!46, !42, i64 48}
!55 = !{!46, !47, i64 0}
!56 = !{!47, !47, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!61, !42, i64 0}
!61 = !{!"dref_d", !42, i64 0, !42, i64 8, !42, i64 16, !47, i64 24, !62, i64 32, !47, i64 48, !47, i64 52}
!62 = !{!"", !48, i64 0, !48, i64 8}
!63 = !{!64, !42, i64 8}
!64 = !{!"data_reference", !42, i64 0, !42, i64 8, !42, i64 16, !43, i64 24, !65, i64 32, !66, i64 72, !67, i64 88, !42, i64 104}
!65 = !{!"innermost_loop_behavior", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32}
!66 = !{!"indices", !42, i64 0, !42, i64 8}
!67 = !{!"dr_alias", !42, i64 0, !42, i64 8}
!68 = !{!61, !47, i64 48}
!69 = !{!64, !43, i64 24}
!70 = !{!61, !42, i64 8}
!71 = !{!61, !47, i64 24}
!72 = !{!73, !47, i64 0}
!73 = !{!"chain", !47, i64 0, !47, i64 4, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !47, i64 40, !42, i64 48, !42, i64 56, !47, i64 64, !47, i64 64, !47, i64 64}
!74 = !{!73, !47, i64 40}
!75 = !{!73, !42, i64 16}
!76 = !{!73, !47, i64 4}
!77 = !{!73, !42, i64 24}
!78 = !{!73, !42, i64 8}
!79 = !{!73, !42, i64 48}
!80 = !{!81, !47, i64 0}
!81 = !{!"VEC_tree_base", !47, i64 0, !47, i64 4, !43, i64 8}
!82 = distinct !{!82, !58, !59}
!83 = !{!73, !42, i64 56}
!84 = distinct !{!84, !58, !59}
!85 = !{!73, !42, i64 32}
!86 = !{!87, !47, i64 0}
!87 = !{!"VEC_dref_base", !47, i64 0, !47, i64 4, !43, i64 8}
!88 = distinct !{!88, !58, !59}
!89 = !{!90, !47, i64 0}
!90 = !{!"VEC_chain_p_base", !47, i64 0, !47, i64 4, !43, i64 8}
!91 = distinct !{!91, !58, !59}
!92 = !{!93, !47, i64 8}
!93 = !{!"component", !42, i64 0, !47, i64 8, !42, i64 16}
!94 = !{!93, !42, i64 0}
!95 = distinct !{!95, !58, !59}
!96 = !{!93, !42, i64 16}
!97 = distinct !{!97, !58, !59}
!98 = !{!99, !42, i64 24}
!99 = !{!"function", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !47, i64 104, !47, i64 108, !47, i64 112, !47, i64 116, !47, i64 120, !47, i64 124, !42, i64 128, !47, i64 136, !47, i64 137, !47, i64 138, !47, i64 138, !47, i64 138, !47, i64 138, !47, i64 138, !47, i64 138, !47, i64 138, !47, i64 139, !47, i64 139, !47, i64 139, !47, i64 139, !47, i64 139, !47, i64 139, !47, i64 139}
!100 = !{!"function_entry_count", i64 38}
!101 = !{!99, !42, i64 32}
!102 = !{!"branch_weights", i32 0, i32 38}
!103 = !{!104, !42, i64 8}
!104 = !{!"loops", !47, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!105 = !{!106, !47, i64 0}
!106 = !{!"VEC_loop_p_base", !47, i64 0, !47, i64 4, !43, i64 8}
!107 = !{!"branch_weights", i32 0, i32 76}
!108 = !{!"branch_weights", i32 38, i32 38}
!109 = !{!110, !42, i64 48}
!110 = !{!"loop", !47, i64 0, !47, i64 4, !42, i64 8, !42, i64 16, !111, i64 24, !47, i64 32, !47, i64 36, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !62, i64 80, !62, i64 96, !43, i64 112, !43, i64 113, !47, i64 116, !42, i64 120, !42, i64 128, !43, i64 136, !42, i64 144}
!111 = !{!"lpt_decision", !47, i64 0, !47, i64 4}
!112 = !{!"branch_weights", i32 38, i32 0}
!113 = !{!110, !47, i64 0}
!114 = !{!115, !47, i64 0}
!115 = !{!"VEC_int_base", !47, i64 0, !47, i64 4, !43, i64 8}
!116 = distinct !{!116, !58, !59}
!117 = distinct !{!117, !58, !59}
!118 = !{!"branch_weights", i32 1, i32 0}
!119 = !{!120, !47, i64 0}
!120 = !{!"VEC_data_reference_p_base", !47, i64 0, !47, i64 4, !43, i64 8}
!121 = !{!110, !42, i64 16}
!122 = !{!123, !47, i64 0}
!123 = !{!"VEC_edge_base", !47, i64 0, !47, i64 4, !43, i64 8}
!124 = !{!125, !42, i64 0}
!125 = !{!"edge_def", !42, i64 0, !42, i64 8, !43, i64 16, !42, i64 24, !42, i64 32, !47, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !48, i64 56}
!126 = distinct !{!126, !58, !59}
!127 = !{!64, !42, i64 16}
!128 = distinct !{!128, !58, !59}
!129 = !{i8 0, i8 2}
!130 = distinct !{!130, !58, !59}
!131 = !{!132, !47, i64 0}
!132 = !{!"VEC_ddr_p_base", !47, i64 0, !47, i64 4, !43, i64 8}
!133 = !{!134, !42, i64 16}
!134 = !{!"data_dependence_relation", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !47, i64 56, !43, i64 60, !43, i64 61, !43, i64 62}
!135 = !{!134, !42, i64 0}
!136 = !{!134, !42, i64 8}
!137 = distinct !{!137, !58, !59}
!138 = distinct !{!138, !58, !59}
!139 = distinct !{!139, !58, !59}
!140 = !{!64, !42, i64 0}
!141 = distinct !{!141, !58, !59}
!142 = distinct !{!142, !58, !59}
!143 = !{!110, !42, i64 8}
!144 = distinct !{!144, !58, !59}
!145 = distinct !{!145, !58, !59}
!146 = distinct !{!146, !58, !59}
!147 = distinct !{!147, !58, !59}
!148 = !{!87, !47, i64 4}
!149 = distinct !{!149, !58, !59}
!150 = !{!90, !47, i64 4}
!151 = !{i64 0, i64 8, !152, i64 8, i64 8, !152}
!152 = !{!48, !48, i64 0}
!153 = !{i64 0, i64 8, !152}
!154 = distinct !{!154, !58, !59}
!155 = distinct !{!155, !58, !59}
!156 = distinct !{!156, !58, !59}
!157 = distinct !{!157, !58, !59}
!158 = !{!125, !47, i64 44}
!159 = !{!160, !42, i64 24}
!160 = !{!"ssa_use_operand_d", !42, i64 0, !42, i64 8, !43, i64 16, !42, i64 24}
!161 = distinct !{!161, !58, !59}
!162 = distinct !{!162, !58, !59}
!163 = distinct !{!163, !58, !59}
!164 = distinct !{!164, !58, !59}
!165 = distinct !{!165, !58, !59}
!166 = distinct !{!166, !58, !59}
!167 = distinct !{!167, !58, !59}
!168 = distinct !{!168, !58, !59}
!169 = distinct !{!169, !58, !59}
!170 = !{i64 0, i64 8, !41, i64 8, i64 8, !41, i64 16, i64 8, !41}
!171 = !{!172, !42, i64 0}
!172 = !{!"gimple_seq_node_d", !42, i64 0, !42, i64 8, !42, i64 16}
!173 = distinct !{!173, !58, !59}
!174 = distinct !{!174, !58, !59}
!175 = distinct !{!175, !58, !59}
!176 = !{!177, !47, i64 8}
!177 = !{!"param_info", !42, i64 0, !47, i64 8, !43, i64 12, !47, i64 16, !47, i64 20, !42, i64 24}
!178 = distinct !{!178, !58, !59}
!179 = distinct !{!179, !58, !59}
!180 = !{!181, !42, i64 0}
!181 = !{!"epcc_data", !42, i64 0, !42, i64 8}
!182 = !{!181, !42, i64 8}
!183 = !{!61, !42, i64 16}
!184 = distinct !{!184, !58, !59}
!185 = distinct !{!185, !58, !59}
!186 = distinct !{!186, !58, !59}
!187 = !{!188, !42, i64 0}
!188 = !{!"basic_block_def", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !43, i64 32, !42, i64 48, !42, i64 56, !43, i64 64, !48, i64 72, !47, i64 80, !47, i64 84, !47, i64 88, !47, i64 92, !47, i64 96}
!189 = !{!190, !42, i64 8}
!190 = !{!"immediate_use_iterator_d", !42, i64 0, !42, i64 8, !160, i64 16, !42, i64 48}
!191 = !{!160, !42, i64 8}
!192 = !{!190, !42, i64 0}
!193 = !{!160, !42, i64 0}
!194 = distinct !{!194, !58, !59}
!195 = distinct !{!195, !59}
!196 = !{!172, !42, i64 16}
!197 = distinct !{!197, !58, !59}
!198 = distinct !{!198, !58, !59}
!199 = distinct !{!199, !58, !59}
!200 = distinct !{!200, !58, !59}
!201 = distinct !{!201, !58, !59}
!202 = distinct !{!202, !58, !59}
!203 = distinct !{!203, !58, !59}
!204 = distinct !{!204, !58, !59}
!205 = distinct !{!205, !59}
!206 = distinct !{!206, !58, !59}
!207 = distinct !{!207, !58, !59}
!208 = distinct !{!208, !58, !59}
!209 = distinct !{!209, !58, !59}
!210 = distinct !{!210, !58, !59}
!211 = distinct !{!211, !58, !59}
!212 = !{!64, !42, i64 56}
!213 = !{!64, !42, i64 32}
!214 = !{!64, !42, i64 40}
!215 = !{!64, !42, i64 48}
!216 = distinct !{!216, !58, !59}
!217 = distinct !{!217, !58, !59}
!218 = distinct !{!218, !58, !59}
!219 = distinct !{!219, !58, !59}
!220 = !{!221, !42, i64 0}
!221 = !{!"", !42, i64 0, !42, i64 8, !43, i64 16}
!222 = !{!221, !42, i64 8}
!223 = distinct !{!223, !59}
!224 = distinct !{!224, !59}
!225 = distinct !{!225, !58, !59}
!226 = distinct !{!226, !58, !59}
!227 = !{!228, !42, i64 0}
!228 = !{!"use_optype_d", !42, i64 0, !160, i64 8}
!229 = distinct !{!229, !58, !59}
!230 = !{!228, !42, i64 32}
!231 = !{!188, !47, i64 96}
!232 = !{!233, !235}
!233 = distinct !{!233, !234, !"gsi_start_bb: argument 0"}
!234 = distinct !{!234, !"gsi_start_bb"}
!235 = distinct !{!235, !236, !"gsi_after_labels: argument 0"}
!236 = distinct !{!236, !"gsi_after_labels"}
!237 = !{!238, !42, i64 0}
!238 = !{!"gimple_bb_info", !42, i64 0, !42, i64 8}
!239 = !{!240, !42, i64 0}
!240 = !{!"gimple_seq_d", !42, i64 0, !42, i64 8, !42, i64 16}
!241 = !{!235}
!242 = distinct !{!242, !58, !59}
!243 = !{i64 0, i64 8, !41, i64 8, i64 8, !41}
!244 = !{i64 0, i64 8, !41}
