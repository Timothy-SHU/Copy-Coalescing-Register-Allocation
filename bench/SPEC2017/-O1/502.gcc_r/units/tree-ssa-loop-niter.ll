; ModuleID = 'tree-ssa-loop-niter.c'
source_filename = "tree-ssa-loop-niter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.__mpz_struct = type { i32, i32, ptr }
%struct.bounds = type { [1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct] }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.ilb_data = type { ptr, ptr, i8 }
%struct.nb_iter_bound = type { ptr, %struct.double_int, i8, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@optimize = external local_unnamed_addr global i32, align 4
@flag_unsafe_loop_optimizations = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [39 x i8] c"assuming that the loop is not infinite\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot optimize possibly infinite loops\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"assuming that the loop counter does not overflow\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"cannot optimize loop, the loop counter may overflow\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [66 x i8] c"Found loop %i to be finite: it is within pure or const function.\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Found loop %i to be finite: iterating \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" times\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [58 x i8] c"Proved that loop %d iterates %d times using brute force.\0A\00", align 1
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"tree-ssa-loop-niter.c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Analyzing # of iterations of loop %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"  exit condition \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"  bounds on difference of bases: \00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c" ... \00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"  result:\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"    under assumptions \00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"    zero if \00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"    # of iterations \00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c", bounded by \00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"  failed\0A\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [7 x i8] c", + , \00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"]%s\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"(no_overflow)\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.34 = private unnamed_addr constant [13 x i8] c"Statement %s\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"(exit)\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c" is %sexecuted at most \00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"probably \00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c" (bounded by \00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c") + 1 times in loop %d.\0A\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"Induction variable (\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c" * iteration does not wrap in statement \00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c" in loop %d.\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !38 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !39
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !39
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !39
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !39
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !39
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !38 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !54
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !54
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !38 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
  br i1 %23, label %7, label %24, !llvm.loop !55

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_simple_operations(ptr noundef %0) local_unnamed_addr #9 !prof !38 {
  br label %2

2:                                                ; preds = %152, %93, %1
  %3 = phi ptr [ %0, %1 ], [ %70, %93 ], [ %111, %152 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %156, label %5

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %3) #17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %156

8:                                                ; preds = %5
  %9 = load i64, ptr %3, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !54
  %13 = add i32 %12, -4
  %14 = icmp ult i32 %13, 7
  br i1 %14, label %15, label %55

15:                                               ; preds = %8
  %16 = icmp eq i32 %12, 9
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.tree_int_cst, ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !50
  %22 = trunc i64 %21 to i32
  br label %27

23:                                               ; preds = %15
  %24 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %10
  %25 = load i8, ptr %24, align 1, !tbaa !50
  %26 = zext i8 %25 to i32
  br label %27

27:                                               ; preds = %17, %23
  %28 = phi i32 [ %22, %17 ], [ %26, %23 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %27
  %31 = zext i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %46
  %33 = phi i64 [ 0, %30 ], [ %48, %46 ]
  %34 = phi ptr [ null, %30 ], [ %47, %46 ]
  %35 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  %37 = tail call ptr @expand_simple_operations(ptr noundef %36)
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = icmp eq ptr %34, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = tail call ptr @copy_node_stat(ptr noundef nonnull %3) #17
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi ptr [ %34, %39 ], [ %42, %41 ]
  %45 = getelementptr inbounds %struct.tree_exp, ptr %44, i64 0, i32 3, i64 %33
  store ptr %37, ptr %45, align 8, !tbaa !50
  br label %46

46:                                               ; preds = %32, %43
  %47 = phi ptr [ %34, %32 ], [ %44, %43 ]
  %48 = add nuw nsw i64 %33, 1
  %49 = icmp eq i64 %48, %31
  br i1 %49, label %50, label %32, !llvm.loop !58

50:                                               ; preds = %46, %27
  %51 = phi ptr [ null, %27 ], [ %47, %46 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %156, label %53

53:                                               ; preds = %50
  tail call void @fold_defer_overflow_warnings() #17
  %54 = tail call ptr @fold(ptr noundef nonnull %51) #17
  tail call void @fold_undefer_and_ignore_overflow_warnings() #17
  br label %156

55:                                               ; preds = %8
  %56 = icmp eq i64 %10, 141
  br i1 %56, label %57, label %156

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !50
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 255
  %62 = trunc i32 %60 to i8
  switch i8 %62, label %156 [
    i8 16, label %63
    i8 6, label %94
  ]

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.gimple_statement_phi, ptr %59, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !50
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %156

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.gimple_statement_phi, ptr %59, i64 0, i32 4, i64 0, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !59
  %70 = load ptr, ptr %69, align 8, !tbaa !39
  %71 = getelementptr inbounds %struct.gimple_statement_base, ptr %59, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !50
  %73 = load ptr, ptr %72, align 8, !tbaa !61
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load i32, ptr %73, align 8, !tbaa !63
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %79, label %78

78:                                               ; preds = %75, %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 655, ptr noundef nonnull @.str.10) #17
  br label %79

79:                                               ; preds = %75, %78
  %80 = load i64, ptr %70, align 8
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 141
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load ptr, ptr %72, align 8, !tbaa !61
  %85 = getelementptr inbounds %struct.VEC_edge_base, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !39
  %87 = load ptr, ptr %86, align 8, !tbaa !65
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !67
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !67
  %92 = icmp eq ptr %89, %91
  br i1 %92, label %93, label %156

93:                                               ; preds = %83, %79
  br label %2

94:                                               ; preds = %57
  %95 = add nsw i32 %61, -10
  %96 = icmp ult i32 %95, -9
  br i1 %96, label %110, label %97

97:                                               ; preds = %94
  %98 = zext nneg i32 %61 to i64
  %99 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !54
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %101
  %103 = load i64, ptr %102, align 8, !tbaa !68
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %106

106:                                              ; preds = %105, %97
  %107 = getelementptr inbounds i8, ptr %59, i64 %103
  %108 = getelementptr inbounds ptr, ptr %107, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !39
  br label %110

110:                                              ; preds = %94, %106
  %111 = phi ptr [ %109, %106 ], [ null, %94 ]
  %112 = load i32, ptr %59, align 8
  %113 = trunc i32 %112 to i8
  switch i8 %113, label %116 [
    i8 6, label %114
    i8 1, label %114
    i8 8, label %117
  ]

114:                                              ; preds = %110, %110
  %115 = lshr i32 %112, 16
  br label %117

116:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1446, ptr noundef nonnull @.str.10) #17
  br label %117

117:                                              ; preds = %116, %114, %110
  %118 = phi i32 [ %115, %114 ], [ 0, %116 ], [ 59, %110 ]
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !50
  %122 = icmp eq i8 %121, 3
  br i1 %122, label %123, label %143

123:                                              ; preds = %117
  %124 = load i32, ptr %59, align 8
  %125 = and i32 %124, 255
  %126 = add nsw i32 %125, -1
  %127 = icmp ult i32 %126, 9
  tail call void @llvm.assume(i1 %127)
  %128 = zext nneg i32 %125 to i64
  %129 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !54
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %131
  %133 = load i64, ptr %132, align 8, !tbaa !68
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %123
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %136

136:                                              ; preds = %135, %123
  %137 = getelementptr inbounds i8, ptr %59, i64 %133
  %138 = getelementptr inbounds ptr, ptr %137, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !39
  %140 = load i64, ptr %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = and i32 %141, 65535
  br label %143

143:                                              ; preds = %117, %136
  %144 = phi i32 [ %142, %136 ], [ %118, %117 ]
  %145 = zext nneg i32 %144 to i64
  %146 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !50
  %148 = icmp eq i8 %147, 3
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %111) #17
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = icmp eq i32 %144, 141
  br i1 %153, label %2, label %156

154:                                              ; preds = %143
  %155 = trunc i32 %144 to i16
  switch i16 %155, label %156 [
    i16 116, label %158
    i16 113, label %158
    i16 63, label %163
    i16 64, label %163
    i16 66, label %163
  ]

156:                                              ; preds = %53, %2, %5, %50, %55, %83, %63, %149, %152, %185, %57, %154, %189, %158
  %157 = phi ptr [ %162, %158 ], [ %193, %189 ], [ %54, %53 ], [ null, %2 ], [ %3, %5 ], [ %3, %50 ], [ %3, %55 ], [ %3, %63 ], [ %3, %83 ], [ %111, %149 ], [ %3, %152 ], [ %3, %185 ], [ %3, %57 ], [ %3, %154 ]
  ret ptr %157

158:                                              ; preds = %154, %154
  %159 = tail call ptr @expand_simple_operations(ptr noundef %111)
  %160 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !50
  %162 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %144, ptr noundef %161, ptr noundef %159) #17
  br label %156

163:                                              ; preds = %154, %154, %154
  %164 = getelementptr inbounds %struct.gimple_statement_base, ptr %59, i64 0, i32 3
  %165 = load i32, ptr %164, align 4, !tbaa !50
  %166 = icmp ugt i32 %165, 2
  br i1 %166, label %167, label %185

167:                                              ; preds = %163
  %168 = load i32, ptr %59, align 8
  %169 = and i32 %168, 255
  %170 = add nsw i32 %169, -10
  %171 = icmp ult i32 %170, -9
  br i1 %171, label %185, label %172

172:                                              ; preds = %167
  %173 = zext nneg i32 %169 to i64
  %174 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !54
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !68
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %181

181:                                              ; preds = %180, %172
  %182 = getelementptr inbounds i8, ptr %59, i64 %178
  %183 = getelementptr inbounds ptr, ptr %182, i64 2
  %184 = load ptr, ptr %183, align 8, !tbaa !39
  br label %185

185:                                              ; preds = %163, %167, %181
  %186 = phi ptr [ null, %163 ], [ %184, %181 ], [ null, %167 ]
  %187 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %186) #17
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %156, label %189

189:                                              ; preds = %185
  %190 = tail call ptr @expand_simple_operations(ptr noundef %111)
  %191 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !50
  %193 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %144, ptr noundef %192, ptr noundef %190, ptr noundef %186) #17
  br label %156
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

declare void @fold_defer_overflow_warnings() local_unnamed_addr #3

declare ptr @fold(ptr noundef) local_unnamed_addr #3

declare void @fold_undefer_and_ignore_overflow_warnings() local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @loop_only_exit_p(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #9 !prof !38 {
  %3 = tail call ptr @single_exit(ptr noundef %0) #17
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %5, label %52

5:                                                ; preds = %2
  %6 = tail call ptr @get_loop_body(ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !69
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %50, label %10

10:                                               ; preds = %5, %45
  %11 = phi i64 [ %46, %45 ], [ 0, %5 ]
  %12 = getelementptr inbounds ptr, ptr %6, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !73, !noalias !74
  %16 = and i32 %15, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !50, !noalias !74
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !77, !noalias !74
  br label %24

24:                                               ; preds = %22, %18, %10
  %25 = phi ptr [ %23, %22 ], [ null, %18 ], [ null, %10 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %25, align 8, !tbaa !79, !noalias !74
  br label %29

29:                                               ; preds = %24, %27
  %30 = phi ptr [ %28, %27 ], [ null, %24 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %29, %41
  %33 = phi ptr [ %43, %41 ], [ %30, %29 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !81
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %36, 8
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef nonnull %34) #17
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38, %32
  %42 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %33, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !83
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %32, !llvm.loop !84

45:                                               ; preds = %41, %29
  %46 = add nuw nsw i64 %11, 1
  %47 = load i32, ptr %7, align 4, !tbaa !69
  %48 = zext i32 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %10, label %50, !llvm.loop !85

50:                                               ; preds = %45, %38, %5
  %51 = phi i8 [ 1, %5 ], [ 0, %38 ], [ 1, %45 ]
  tail call void @free(ptr noundef %6)
  br label %52

52:                                               ; preds = %50, %2
  %53 = phi i8 [ 0, %2 ], [ %51, %50 ]
  ret i8 %53
}

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3) local_unnamed_addr #9 !prof !38 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  %8 = alloca [1 x %struct.__mpz_struct], align 16
  %9 = alloca [1 x %struct.__mpz_struct], align 16
  %10 = alloca [1 x %struct.__mpz_struct], align 16
  %11 = alloca [1 x %struct.__mpz_struct], align 16
  %12 = alloca [1 x %struct.__mpz_struct], align 16
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca [1 x %struct.__mpz_struct], align 16
  %16 = alloca [1 x %struct.__mpz_struct], align 16
  %17 = alloca [1 x %struct.__mpz_struct], align 16
  %18 = alloca [1 x %struct.__mpz_struct], align 16
  %19 = alloca [1 x %struct.__mpz_struct], align 16
  %20 = alloca [1 x %struct.__mpz_struct], align 16
  %21 = alloca %struct.bounds, align 8
  %22 = alloca %struct.affine_iv, align 8
  %23 = alloca %struct.affine_iv, align 8
  %24 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #17
  %25 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = load ptr, ptr %1, align 8, !tbaa !65
  %28 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %26, ptr noundef %27) #17
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %693, label %30

30:                                               ; preds = %4
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !39
  store ptr %31, ptr %2, align 8, !tbaa !87
  %32 = load ptr, ptr %1, align 8, !tbaa !65
  %33 = tail call ptr @last_stmt(ptr noundef %32) #17
  %34 = icmp eq ptr %33, null
  br i1 %34, label %693, label %35

35:                                               ; preds = %30
  %36 = load i32, ptr %33, align 8
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %693

39:                                               ; preds = %35
  %40 = lshr i32 %36, 16
  %41 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !90
  %43 = and i32 %42, 1024
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = tail call i32 @invert_tree_comparison(i32 noundef %40, i8 noundef zeroext 0) #17
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi i32 [ %46, %45 ], [ %40, %39 ]
  switch i32 %48, label %693 [
    i32 99, label %49
    i32 100, label %49
    i32 102, label %49
    i32 97, label %49
    i32 98, label %49
  ]

49:                                               ; preds = %47, %47, %47, %47, %47
  %50 = load i32, ptr %33, align 8
  %51 = and i32 %50, 255
  %52 = add nsw i32 %51, -10
  %53 = icmp ult i32 %52, -9
  br i1 %53, label %66, label %54

54:                                               ; preds = %49
  %55 = zext nneg i32 %51 to i64
  %56 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !54
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !68
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %63

63:                                               ; preds = %62, %54
  %64 = getelementptr inbounds i8, ptr %33, i64 %60
  %65 = load ptr, ptr %64, align 8, !tbaa !39
  br label %66

66:                                               ; preds = %49, %63
  %67 = phi ptr [ %65, %63 ], [ null, %49 ]
  %68 = load i32, ptr %33, align 8
  %69 = and i32 %68, 255
  %70 = add nsw i32 %69, -10
  %71 = icmp ult i32 %70, -9
  br i1 %71, label %85, label %72

72:                                               ; preds = %66
  %73 = zext nneg i32 %69 to i64
  %74 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !54
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %76
  %78 = load i64, ptr %77, align 8, !tbaa !68
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %81

81:                                               ; preds = %80, %72
  %82 = getelementptr inbounds i8, ptr %33, i64 %78
  %83 = getelementptr inbounds ptr, ptr %82, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !39
  br label %85

85:                                               ; preds = %66, %81
  %86 = phi ptr [ %84, %81 ], [ null, %66 ]
  %87 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !50
  %89 = load i64, ptr %88, align 8
  %90 = trunc i64 %89 to i16
  switch i16 %90, label %693 [
    i16 8, label %91
    i16 10, label %91
    i16 12, label %91
  ]

91:                                               ; preds = %85, %85, %85
  %92 = getelementptr inbounds %struct.gimple_statement_base, ptr %33, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !50
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !67
  br label %98

98:                                               ; preds = %91, %95
  %99 = phi ptr [ %97, %95 ], [ null, %91 ]
  %100 = call zeroext i8 @simple_iv(ptr noundef %0, ptr noundef %99, ptr noundef %67, ptr noundef nonnull %22, i8 noundef zeroext 0) #17
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %693, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %92, align 8, !tbaa !50
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %103, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !67
  br label %108

108:                                              ; preds = %102, %105
  %109 = phi ptr [ %107, %105 ], [ null, %102 ]
  %110 = call zeroext i8 @simple_iv(ptr noundef %0, ptr noundef %109, ptr noundef %86, ptr noundef nonnull %23, i8 noundef zeroext 0) #17
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %693, label %112

112:                                              ; preds = %108
  call void @fold_defer_overflow_warnings() #17
  %113 = load ptr, ptr %22, align 8, !tbaa !91
  %114 = call ptr @expand_simple_operations(ptr noundef %113)
  store ptr %114, ptr %22, align 8, !tbaa !91
  %115 = load ptr, ptr %23, align 8, !tbaa !91
  %116 = call ptr @expand_simple_operations(ptr noundef %115)
  store ptr %116, ptr %23, align 8, !tbaa !91
  %117 = call zeroext i8 @loop_only_exit_p(ptr noundef %0, ptr noundef nonnull %1), !range !92
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %21) #17
  %118 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !39
  store ptr %118, ptr %2, align 8, !tbaa !87
  %119 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !39
  %120 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 1
  store ptr %119, ptr %120, align 8, !tbaa !93
  %121 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 2
  %122 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 3
  %123 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 3, i32 1
  %124 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 5
  store ptr null, ptr %124, align 8, !tbaa !94
  %125 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 6
  store i32 0, ptr %125, align 8, !tbaa !95
  %126 = add i32 %48, -99
  %127 = icmp ult i32 %126, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %121, i8 0, i64 24, i1 false)
  br i1 %127, label %135, label %128

128:                                              ; preds = %112
  %129 = icmp eq i32 %48, 102
  br i1 %129, label %130, label %137

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.affine_iv, ptr %22, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !96
  %133 = call i32 @integer_zerop(ptr noundef %132) #17
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %130, %112
  %136 = call i32 @swap_tree_comparison(i32 noundef %48) #17
  br label %137

137:                                              ; preds = %135, %130, %128
  %138 = phi ptr [ %22, %135 ], [ %23, %130 ], [ %23, %128 ]
  %139 = phi i32 [ %136, %135 ], [ 102, %130 ], [ %48, %128 ]
  %140 = phi ptr [ %23, %135 ], [ %22, %130 ], [ %22, %128 ]
  %141 = load i64, ptr %88, align 8
  %142 = trunc i64 %141 to i16
  switch i16 %142, label %146 [
    i16 10, label %143
    i16 12, label %143
  ]

143:                                              ; preds = %137, %137
  %144 = getelementptr inbounds %struct.affine_iv, ptr %140, i64 0, i32 2
  store i8 1, ptr %144, align 8, !tbaa !97
  %145 = getelementptr inbounds %struct.affine_iv, ptr %138, i64 0, i32 2
  store i8 1, ptr %145, align 8, !tbaa !97
  br label %146

146:                                              ; preds = %143, %137
  %147 = icmp eq i8 %117, 0
  br i1 %147, label %167, label %148

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.affine_iv, ptr %140, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !96
  %151 = call i32 @integer_zerop(ptr noundef %150) #17
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.affine_iv, ptr %140, i64 0, i32 2
  %155 = load i8, ptr %154, align 8, !tbaa !97
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %153, %148
  %158 = getelementptr inbounds %struct.affine_iv, ptr %138, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !96
  %160 = call i32 @integer_zerop(ptr noundef %159) #17
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.affine_iv, ptr %138, i64 0, i32 2
  %164 = load i8, ptr %163, align 8, !tbaa !97
  %165 = icmp ne i8 %164, 0
  %166 = zext i1 %165 to i8
  br label %167

167:                                              ; preds = %162, %157, %153, %146
  %168 = phi i8 [ 0, %157 ], [ 0, %146 ], [ 1, %153 ], [ %166, %162 ]
  %169 = getelementptr inbounds %struct.affine_iv, ptr %140, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !96
  %171 = call i32 @integer_zerop(ptr noundef %170) #17
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %187

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.affine_iv, ptr %138, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !96
  %176 = call i32 @integer_zerop(ptr noundef %175) #17
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %173
  %179 = icmp eq i32 %139, 102
  br i1 %179, label %180, label %614

180:                                              ; preds = %178
  %181 = load ptr, ptr %169, align 8, !tbaa !96
  %182 = load ptr, ptr %174, align 8, !tbaa !96
  %183 = call ptr @fold_binary_to_constant(i32 noundef 64, ptr noundef nonnull %88, ptr noundef %181, ptr noundef %182) #17
  store ptr %183, ptr %169, align 8, !tbaa !96
  %184 = getelementptr inbounds %struct.affine_iv, ptr %140, i64 0, i32 2
  store i8 0, ptr %184, align 8, !tbaa !97
  %185 = call ptr @build_int_cst(ptr noundef nonnull %88, i64 noundef 0) #17
  store ptr %185, ptr %174, align 8, !tbaa !96
  %186 = getelementptr inbounds %struct.affine_iv, ptr %138, i64 0, i32 2
  store i8 1, ptr %186, align 8, !tbaa !97
  br label %187

187:                                              ; preds = %180, %173, %167
  %188 = load ptr, ptr %169, align 8, !tbaa !96
  %189 = call i32 @integer_zerop(ptr noundef %188) #17
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.affine_iv, ptr %138, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !96
  %194 = call i32 @integer_zerop(ptr noundef %193) #17
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %614

196:                                              ; preds = %191, %187
  %197 = icmp eq i32 %139, 102
  br i1 %197, label %213, label %198

198:                                              ; preds = %196
  %199 = load ptr, ptr %169, align 8, !tbaa !96
  %200 = icmp eq ptr %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %199) #17
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %614

204:                                              ; preds = %201, %198
  %205 = getelementptr inbounds %struct.affine_iv, ptr %138, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !96
  %207 = call i32 @integer_zerop(ptr noundef %206) #17
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = load ptr, ptr %205, align 8, !tbaa !96
  %211 = call i32 @tree_int_cst_sign_bit(ptr noundef %210) #17
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %614, label %213

213:                                              ; preds = %209, %204, %196
  %214 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %215 = load ptr, ptr %140, align 8, !tbaa !91
  %216 = load ptr, ptr %138, align 8, !tbaa !91
  %217 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %139, ptr noundef %214, ptr noundef %215, ptr noundef %216) #17
  %218 = call i32 @integer_zerop(ptr noundef %217) #17
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %213
  %221 = call ptr @unsigned_type_for(ptr noundef nonnull %88) #17
  %222 = call ptr @build_int_cst(ptr noundef %221, i64 noundef 0) #17
  store ptr %222, ptr %121, align 8, !tbaa !98
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %122, i8 0, i64 16, i1 false)
  br label %614

223:                                              ; preds = %213
  %224 = load ptr, ptr %138, align 8, !tbaa !91
  %225 = load ptr, ptr %140, align 8, !tbaa !91
  %226 = getelementptr inbounds %struct.tree_common, ptr %224, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #17
  %228 = call ptr @tree_strip_sign_nop_conversions(ptr noundef %224) #17
  %229 = call ptr @tree_strip_sign_nop_conversions(ptr noundef %225) #17
  call void @mpz_init(ptr noundef nonnull %21) #17
  %230 = getelementptr inbounds %struct.bounds, ptr %21, i64 0, i32 1
  call void @mpz_init(ptr noundef nonnull %230) #17
  call void @mpz_init(ptr noundef nonnull %15) #17
  call void @mpz_init(ptr noundef nonnull %16) #17
  call fastcc void @split_to_var_and_offset(ptr noundef %228, ptr noundef nonnull %13, ptr noundef nonnull %15)
  call fastcc void @split_to_var_and_offset(ptr noundef %229, ptr noundef nonnull %14, ptr noundef nonnull %16)
  %231 = load ptr, ptr %13, align 8, !tbaa !39
  %232 = call i32 @integer_zerop(ptr noundef %231) #17
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %257

234:                                              ; preds = %223
  %235 = load ptr, ptr %14, align 8, !tbaa !39
  %236 = call i32 @operand_equal_p(ptr noundef %231, ptr noundef %235, i32 noundef 0) #17
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %257, label %238

238:                                              ; preds = %234
  %239 = call i32 @mpz_cmp(ptr noundef nonnull %15, ptr noundef nonnull %16) #17
  %240 = call zeroext i8 @nowrap_type_p(ptr noundef %227), !range !92
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #17
  %241 = icmp eq i32 %239, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  call void @mpz_set_ui(ptr noundef nonnull %21, i64 noundef 0) #17
  call void @mpz_set_ui(ptr noundef nonnull %230, i64 noundef 0) #17
  br label %256

243:                                              ; preds = %238
  call void @mpz_init(ptr noundef nonnull %12) #17
  %244 = getelementptr inbounds %struct.tree_type, ptr %227, i64 0, i32 6
  %245 = load i32, ptr %244, align 4
  %246 = and i32 %245, 1023
  %247 = call { i64, i64 } @double_int_mask(i32 noundef %246) #17
  %248 = extractvalue { i64, i64 } %247, 0
  %249 = extractvalue { i64, i64 } %247, 1
  call void @mpz_set_double_int(ptr noundef nonnull %12, i64 %248, i64 %249, i8 noundef zeroext 1) #17
  call void @mpz_add_ui(ptr noundef nonnull %12, ptr noundef nonnull %12, i64 noundef 1) #17
  call void @mpz_sub(ptr noundef nonnull %230, ptr noundef nonnull %15, ptr noundef nonnull %16) #17
  call void @mpz_set(ptr noundef nonnull %21, ptr noundef nonnull %230) #17
  %250 = icmp eq i8 %240, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %243
  %252 = icmp sgt i32 %239, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %251
  call void @mpz_sub(ptr noundef nonnull %21, ptr noundef nonnull %21, ptr noundef nonnull %12) #17
  br label %255

254:                                              ; preds = %251
  call void @mpz_add(ptr noundef nonnull %230, ptr noundef nonnull %230, ptr noundef nonnull %12) #17
  br label %255

255:                                              ; preds = %254, %253, %243
  call void @mpz_clear(ptr noundef nonnull %12) #17
  br label %256

256:                                              ; preds = %255, %242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #17
  br label %259

257:                                              ; preds = %234, %223
  call void @mpz_init(ptr noundef nonnull %17) #17
  call void @mpz_init(ptr noundef nonnull %18) #17
  call void @mpz_init(ptr noundef nonnull %19) #17
  call void @mpz_init(ptr noundef nonnull %20) #17
  call fastcc void @determine_value_range(ptr noundef %227, ptr noundef %231, ptr noundef nonnull %15, ptr noundef nonnull %17, ptr noundef nonnull %18)
  %258 = load ptr, ptr %14, align 8, !tbaa !39
  call fastcc void @determine_value_range(ptr noundef %227, ptr noundef %258, ptr noundef nonnull %16, ptr noundef nonnull %19, ptr noundef nonnull %20)
  call void @mpz_sub(ptr noundef nonnull %21, ptr noundef nonnull %17, ptr noundef nonnull %20) #17
  call void @mpz_sub(ptr noundef nonnull %230, ptr noundef nonnull %18, ptr noundef nonnull %19) #17
  call void @mpz_clear(ptr noundef nonnull %17) #17
  call void @mpz_clear(ptr noundef nonnull %18) #17
  call void @mpz_clear(ptr noundef nonnull %19) #17
  call void @mpz_clear(ptr noundef nonnull %20) #17
  br label %259

259:                                              ; preds = %257, %256
  %260 = call i32 @integer_zerop(ptr noundef %231) #17
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %266, label %262

262:                                              ; preds = %259
  %263 = load ptr, ptr %14, align 8, !tbaa !39
  %264 = call i32 @integer_zerop(ptr noundef %263) #17
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %467

266:                                              ; preds = %262, %259
  %267 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !99
  %269 = load ptr, ptr @cfun, align 8, !tbaa !39
  %270 = getelementptr inbounds %struct.function, ptr %269, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !100
  %272 = load ptr, ptr %271, align 8, !tbaa !102
  %273 = icmp eq ptr %268, %272
  br i1 %273, label %467, label %274

274:                                              ; preds = %266, %457
  %275 = phi i32 [ %458, %457 ], [ 0, %266 ]
  %276 = phi ptr [ %459, %457 ], [ %268, %266 ]
  %277 = load ptr, ptr %276, align 8, !tbaa !61
  %278 = icmp eq ptr %277, null
  br i1 %278, label %283, label %279

279:                                              ; preds = %274
  %280 = load i32, ptr %277, align 8, !tbaa !63
  %281 = icmp eq i32 %280, 1
  %282 = zext i1 %281 to i8
  br label %283

283:                                              ; preds = %279, %274
  %284 = phi i8 [ %282, %279 ], [ 0, %274 ]
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %457, label %286

286:                                              ; preds = %283
  br i1 %278, label %290, label %287

287:                                              ; preds = %286
  %288 = load i32, ptr %277, align 8, !tbaa !63
  %289 = icmp eq i32 %288, 1
  br i1 %289, label %291, label %290

290:                                              ; preds = %287, %286
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 655, ptr noundef nonnull @.str.10) #17
  br label %291

291:                                              ; preds = %290, %287
  %292 = load ptr, ptr %276, align 8, !tbaa !61
  %293 = getelementptr inbounds %struct.VEC_edge_base, ptr %292, i64 0, i32 2
  %294 = load ptr, ptr %293, align 8, !tbaa !39
  %295 = getelementptr inbounds %struct.edge_def, ptr %294, i64 0, i32 7
  %296 = load i32, ptr %295, align 8, !tbaa !90
  %297 = and i32 %296, 3072
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %457, label %299

299:                                              ; preds = %291
  %300 = load ptr, ptr %294, align 8, !tbaa !65
  %301 = call ptr @last_stmt(ptr noundef %300) #17
  %302 = load i32, ptr %301, align 8
  %303 = and i32 %302, 255
  %304 = add nsw i32 %303, -10
  %305 = icmp ult i32 %304, -9
  br i1 %305, label %318, label %306

306:                                              ; preds = %299
  %307 = zext nneg i32 %303 to i64
  %308 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !54
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %310
  %312 = load i64, ptr %311, align 8, !tbaa !68
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %306
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %315

315:                                              ; preds = %314, %306
  %316 = getelementptr inbounds i8, ptr %301, i64 %312
  %317 = load ptr, ptr %316, align 8, !tbaa !39
  br label %318

318:                                              ; preds = %315, %299
  %319 = phi ptr [ %317, %315 ], [ null, %299 ]
  %320 = load i32, ptr %301, align 8
  %321 = lshr i32 %320, 16
  %322 = and i32 %320, 255
  %323 = add nsw i32 %322, -10
  %324 = icmp ult i32 %323, -9
  br i1 %324, label %338, label %325

325:                                              ; preds = %318
  %326 = zext nneg i32 %322 to i64
  %327 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %326
  %328 = load i32, ptr %327, align 4, !tbaa !54
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %329
  %331 = load i64, ptr %330, align 8, !tbaa !68
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %325
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %334

334:                                              ; preds = %333, %325
  %335 = getelementptr inbounds i8, ptr %301, i64 %331
  %336 = getelementptr inbounds ptr, ptr %335, i64 1
  %337 = load ptr, ptr %336, align 8, !tbaa !39
  br label %338

338:                                              ; preds = %334, %318
  %339 = phi ptr [ %337, %334 ], [ null, %318 ]
  %340 = load i32, ptr %295, align 8, !tbaa !90
  %341 = and i32 %340, 2048
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %345, label %343

343:                                              ; preds = %338
  %344 = call i32 @invert_tree_comparison(i32 noundef %321, i8 noundef zeroext 0) #17
  br label %345

345:                                              ; preds = %343, %338
  %346 = phi i32 [ %344, %343 ], [ %321, %338 ]
  %347 = load ptr, ptr %13, align 8, !tbaa !39
  %348 = load ptr, ptr %14, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #17
  %349 = call zeroext i8 @nowrap_type_p(ptr noundef %227), !range !92
  switch i32 %346, label %455 [
    i32 97, label %350
    i32 98, label %350
    i32 99, label %350
    i32 100, label %350
    i32 102, label %357
  ]

350:                                              ; preds = %345, %345, %345, %345
  %351 = call ptr @tree_strip_sign_nop_conversions(ptr noundef %319) #17
  %352 = call ptr @tree_strip_sign_nop_conversions(ptr noundef %339) #17
  %353 = getelementptr inbounds %struct.tree_common, ptr %351, i64 0, i32 2
  %354 = load ptr, ptr %353, align 8, !tbaa !50
  %355 = call zeroext i8 @useless_type_conversion_p(ptr noundef %354, ptr noundef %227) #17
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %455, label %393

357:                                              ; preds = %345
  %358 = load i64, ptr %339, align 8
  %359 = and i64 %358, 65535
  %360 = icmp eq i64 %359, 23
  br i1 %360, label %361, label %455

361:                                              ; preds = %357
  %362 = load i64, ptr %227, align 8
  %363 = trunc i64 %362 to i32
  %364 = and i32 %363, 65535
  %365 = add nsw i32 %364, -6
  %366 = icmp ult i32 %365, 3
  br i1 %366, label %367, label %455

367:                                              ; preds = %361
  %368 = getelementptr inbounds %struct.tree_type, ptr %227, i64 0, i32 6
  %369 = getelementptr inbounds %struct.tree_common, ptr %319, i64 0, i32 2
  %370 = load ptr, ptr %369, align 8, !tbaa !50
  %371 = getelementptr inbounds %struct.tree_type, ptr %370, i64 0, i32 6
  %372 = load i32, ptr %371, align 4
  %373 = load i32, ptr %368, align 4
  %374 = xor i32 %373, %372
  %375 = and i32 %374, 1023
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %455

377:                                              ; preds = %367
  %378 = getelementptr inbounds %struct.tree_type, ptr %227, i64 0, i32 13
  %379 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %227, ptr noundef %319) #17
  %380 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %227, ptr noundef nonnull %339) #17
  %381 = load ptr, ptr %378, align 8, !tbaa !50
  %382 = icmp eq ptr %381, null
  br i1 %382, label %386, label %383

383:                                              ; preds = %377
  %384 = call i32 @operand_equal_p(ptr noundef %380, ptr noundef nonnull %381, i32 noundef 0) #17
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %393

386:                                              ; preds = %383, %377
  %387 = getelementptr inbounds %struct.tree_type, ptr %227, i64 0, i32 14
  %388 = load ptr, ptr %387, align 8, !tbaa !50
  %389 = icmp eq ptr %388, null
  br i1 %389, label %455, label %390

390:                                              ; preds = %386
  %391 = call i32 @operand_equal_p(ptr noundef %380, ptr noundef nonnull %388, i32 noundef 0) #17
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %455, label %393

393:                                              ; preds = %390, %383, %350
  %394 = phi ptr [ %351, %350 ], [ %379, %383 ], [ %379, %390 ]
  %395 = phi i32 [ %346, %350 ], [ 99, %383 ], [ 97, %390 ]
  %396 = phi ptr [ %352, %350 ], [ %380, %383 ], [ %380, %390 ]
  call void @mpz_init(ptr noundef nonnull %7) #17
  call void @mpz_init(ptr noundef nonnull %8) #17
  %397 = call ptr @expand_simple_operations(ptr noundef %394)
  call fastcc void @split_to_var_and_offset(ptr noundef %397, ptr noundef nonnull %5, ptr noundef nonnull %7)
  %398 = call ptr @expand_simple_operations(ptr noundef %396)
  call fastcc void @split_to_var_and_offset(ptr noundef %398, ptr noundef nonnull %6, ptr noundef nonnull %8)
  %399 = load ptr, ptr %6, align 8, !tbaa !39
  %400 = call i32 @operand_equal_p(ptr noundef %347, ptr noundef %399, i32 noundef 0) #17
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %405, label %402

402:                                              ; preds = %393
  %403 = load ptr, ptr %5, align 8, !tbaa !39
  store ptr %399, ptr %5, align 8, !tbaa !39
  store ptr %403, ptr %6, align 8, !tbaa !39
  call void @mpz_swap(ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  %404 = call i32 @swap_tree_comparison(i32 noundef %395) #17
  br label %405

405:                                              ; preds = %402, %393
  %406 = phi i32 [ %404, %402 ], [ %395, %393 ]
  %407 = load ptr, ptr %5, align 8, !tbaa !39
  %408 = call i32 @operand_equal_p(ptr noundef %347, ptr noundef %407, i32 noundef 0) #17
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %454, label %410

410:                                              ; preds = %405
  %411 = load ptr, ptr %6, align 8, !tbaa !39
  %412 = call i32 @operand_equal_p(ptr noundef %348, ptr noundef %411, i32 noundef 0) #17
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %454, label %414

414:                                              ; preds = %410
  call void @mpz_init_set(ptr noundef nonnull %9, ptr noundef nonnull %15) #17
  call void @mpz_init_set(ptr noundef nonnull %10, ptr noundef nonnull %16) #17
  %415 = add i32 %406, -101
  %416 = icmp ult i32 %415, -2
  br i1 %416, label %419, label %417

417:                                              ; preds = %414
  call void @mpz_swap(ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  call void @mpz_swap(ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  %418 = call i32 @swap_tree_comparison(i32 noundef %406) #17
  br label %419

419:                                              ; preds = %417, %414
  %420 = phi i32 [ %418, %417 ], [ %406, %414 ]
  %421 = phi ptr [ %347, %417 ], [ %348, %414 ]
  %422 = phi ptr [ %348, %417 ], [ %347, %414 ]
  %423 = icmp eq i8 %349, 0
  br i1 %423, label %424, label %440

424:                                              ; preds = %419
  %425 = call i32 @integer_zerop(ptr noundef %422) #17
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %424
  %428 = call i32 @mpz_cmp(ptr noundef nonnull %9, ptr noundef nonnull %7) #17
  %429 = icmp sgt i32 %428, -1
  br label %430

430:                                              ; preds = %427, %424
  %431 = phi i1 [ true, %424 ], [ %429, %427 ]
  %432 = call i32 @integer_zerop(ptr noundef %421) #17
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %437

434:                                              ; preds = %430
  %435 = call i32 @mpz_cmp(ptr noundef nonnull %10, ptr noundef nonnull %8) #17
  %436 = icmp slt i32 %435, 1
  br label %437

437:                                              ; preds = %434, %430
  %438 = phi i1 [ true, %430 ], [ %436, %434 ]
  %439 = select i1 %431, i1 %438, i1 false
  br i1 %439, label %440, label %453

440:                                              ; preds = %437, %419
  call void @mpz_init(ptr noundef nonnull %11) #17
  call void @mpz_sub(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  call void @mpz_add(ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull %8) #17
  call void @mpz_sub(ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull %7) #17
  %441 = icmp eq i32 %420, 97
  br i1 %441, label %442, label %443

442:                                              ; preds = %440
  call void @mpz_sub_ui(ptr noundef nonnull %11, ptr noundef nonnull %11, i64 noundef 1) #17
  br label %443

443:                                              ; preds = %442, %440
  br i1 %416, label %447, label %444

444:                                              ; preds = %443
  call void @mpz_neg(ptr noundef nonnull %11, ptr noundef nonnull %11) #17
  %445 = call i32 @mpz_cmp(ptr noundef nonnull %21, ptr noundef nonnull %11) #17
  %446 = icmp slt i32 %445, 0
  br i1 %446, label %450, label %452

447:                                              ; preds = %443
  %448 = call i32 @mpz_cmp(ptr noundef nonnull %11, ptr noundef nonnull %230) #17
  %449 = icmp slt i32 %448, 0
  br i1 %449, label %450, label %452

450:                                              ; preds = %447, %444
  %451 = phi ptr [ %21, %444 ], [ %230, %447 ]
  call void @mpz_set(ptr noundef nonnull %451, ptr noundef nonnull %11) #17
  br label %452

452:                                              ; preds = %450, %447, %444
  call void @mpz_clear(ptr noundef nonnull %11) #17
  br label %453

453:                                              ; preds = %452, %437
  call void @mpz_clear(ptr noundef nonnull %9) #17
  call void @mpz_clear(ptr noundef nonnull %10) #17
  br label %454

454:                                              ; preds = %453, %410, %405
  call void @mpz_clear(ptr noundef nonnull %7) #17
  call void @mpz_clear(ptr noundef nonnull %8) #17
  br label %455

455:                                              ; preds = %390, %386, %345, %454, %367, %361, %357, %350
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  %456 = add nsw i32 %275, 1
  br label %457

457:                                              ; preds = %455, %291, %283
  %458 = phi i32 [ %456, %455 ], [ %275, %291 ], [ %275, %283 ]
  %459 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %276) #17
  %460 = load ptr, ptr @cfun, align 8, !tbaa !39
  %461 = getelementptr inbounds %struct.function, ptr %460, i64 0, i32 1
  %462 = load ptr, ptr %461, align 8, !tbaa !100
  %463 = load ptr, ptr %462, align 8, !tbaa !102
  %464 = icmp ne ptr %459, %463
  %465 = icmp slt i32 %458, 8
  %466 = select i1 %464, i1 %465, i1 false
  br i1 %466, label %274, label %467, !llvm.loop !104

467:                                              ; preds = %457, %266, %262
  call void @mpz_clear(ptr noundef nonnull %15) #17
  call void @mpz_clear(ptr noundef nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  %468 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %469 = icmp eq ptr %468, null
  br i1 %469, label %498, label %470

470:                                              ; preds = %467
  %471 = load i32, ptr @dump_flags, align 4, !tbaa !54
  %472 = and i32 %471, 8
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %498, label %474

474:                                              ; preds = %470
  %475 = load i32, ptr %0, align 8, !tbaa !105
  %476 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %468, ptr noundef nonnull @.str.13, i32 noundef %475)
  %477 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %478 = call i64 @fwrite(ptr nonnull @.str.14, i64 17, i64 1, ptr %477)
  %479 = load ptr, ptr @dump_file, align 8, !tbaa !39
  call fastcc void @dump_affine_iv(ptr noundef %479, ptr noundef nonnull %140)
  %480 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %481 = icmp eq i32 %139, 97
  %482 = select i1 %481, ptr @.str.17, ptr @.str.18
  %483 = select i1 %197, ptr @.str.16, ptr %482
  %484 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %480, ptr noundef nonnull @.str.15, ptr noundef nonnull %483)
  %485 = load ptr, ptr @dump_file, align 8, !tbaa !39
  call fastcc void @dump_affine_iv(ptr noundef %485, ptr noundef nonnull %138)
  %486 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %487 = call i32 @fputc(i32 10, ptr %486)
  %488 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %489 = call i64 @fwrite(ptr nonnull @.str.20, i64 33, i64 1, ptr %488)
  %490 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %491 = call i64 @mpz_out_str(ptr noundef %490, i32 noundef 10, ptr noundef nonnull %21) #17
  %492 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %493 = call i64 @fwrite(ptr nonnull @.str.21, i64 5, i64 1, ptr %492)
  %494 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %495 = call i64 @mpz_out_str(ptr noundef %494, i32 noundef 10, ptr noundef nonnull %230) #17
  %496 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %497 = call i32 @fputc(i32 10, ptr %496)
  br label %498

498:                                              ; preds = %474, %470, %467
  switch i32 %139, label %566 [
    i32 102, label %499
    i32 97, label %507
    i32 98, label %509
  ]

499:                                              ; preds = %498
  %500 = getelementptr inbounds %struct.affine_iv, ptr %138, i64 0, i32 1
  %501 = load ptr, ptr %500, align 8, !tbaa !96
  %502 = call i32 @integer_zerop(ptr noundef %501) #17
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %505

504:                                              ; preds = %499
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1314, ptr noundef nonnull @.str.10) #17
  br label %505

505:                                              ; preds = %504, %499
  %506 = load ptr, ptr %138, align 8, !tbaa !91
  call fastcc void @number_of_iterations_ne(ptr noundef nonnull %88, ptr noundef nonnull %140, ptr noundef %506, ptr noundef nonnull %2, i8 noundef zeroext %168, ptr noundef nonnull %21)
  br label %567

507:                                              ; preds = %498
  %508 = call fastcc zeroext i8 @number_of_iterations_lt(ptr noundef nonnull %88, ptr noundef nonnull %140, ptr noundef nonnull %138, ptr noundef nonnull %2, i8 noundef zeroext %168, ptr noundef nonnull %21), !range !92
  br label %567

509:                                              ; preds = %498
  %510 = load i64, ptr %88, align 8
  %511 = trunc i64 %510 to i16
  switch i16 %511, label %514 [
    i16 10, label %512
    i16 12, label %512
  ]

512:                                              ; preds = %509, %509
  %513 = load ptr, ptr @sizetype_tab, align 16, !tbaa !39
  br label %514

514:                                              ; preds = %512, %509
  %515 = phi ptr [ %513, %512 ], [ %88, %509 ]
  %516 = icmp eq i8 %168, 0
  br i1 %516, label %517, label %539

517:                                              ; preds = %514
  switch i16 %511, label %518 [
    i16 10, label %539
    i16 12, label %539
  ]

518:                                              ; preds = %517
  %519 = load ptr, ptr %169, align 8, !tbaa !96
  %520 = call i32 @integer_nonzerop(ptr noundef %519) #17
  %521 = icmp eq i32 %520, 0
  %522 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %523 = getelementptr inbounds %struct.tree_type, ptr %88, i64 0, i32 13
  %524 = getelementptr inbounds %struct.tree_type, ptr %88, i64 0, i32 14
  %525 = select i1 %521, ptr %523, ptr %524
  %526 = select i1 %521, ptr %140, ptr %138
  %527 = load ptr, ptr %526, align 8, !tbaa !91
  %528 = load ptr, ptr %525, align 8, !tbaa !50
  %529 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 102, ptr noundef %522, ptr noundef %527, ptr noundef %528) #17
  %530 = call i32 @integer_zerop(ptr noundef %529) #17
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %567

532:                                              ; preds = %518
  %533 = call i32 @integer_nonzerop(ptr noundef %529) #17
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %535, label %539

535:                                              ; preds = %532
  %536 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %537 = load ptr, ptr %2, align 8, !tbaa !87
  %538 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %536, ptr noundef %537, ptr noundef %529) #17
  store ptr %538, ptr %2, align 8, !tbaa !87
  br label %539

539:                                              ; preds = %517, %535, %532, %517, %514
  %540 = load ptr, ptr %169, align 8, !tbaa !96
  %541 = call i32 @integer_nonzerop(ptr noundef %540) #17
  %542 = icmp eq i32 %541, 0
  %543 = load i64, ptr %88, align 8
  %544 = trunc i64 %543 to i16
  br i1 %542, label %554, label %545

545:                                              ; preds = %539
  switch i16 %544, label %550 [
    i16 10, label %546
    i16 12, label %546
  ]

546:                                              ; preds = %545, %545
  %547 = load ptr, ptr %138, align 8, !tbaa !91
  %548 = call ptr @build_int_cst(ptr noundef %515, i64 noundef 1) #17
  %549 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %88, ptr noundef %547, ptr noundef %548) #17
  store ptr %549, ptr %138, align 8, !tbaa !91
  br label %564

550:                                              ; preds = %545
  %551 = load ptr, ptr %138, align 8, !tbaa !91
  %552 = call ptr @build_int_cst(ptr noundef %515, i64 noundef 1) #17
  %553 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %515, ptr noundef %551, ptr noundef %552) #17
  store ptr %553, ptr %138, align 8, !tbaa !91
  br label %564

554:                                              ; preds = %539
  switch i16 %544, label %560 [
    i16 10, label %555
    i16 12, label %555
  ]

555:                                              ; preds = %554, %554
  %556 = load ptr, ptr %140, align 8, !tbaa !91
  %557 = call ptr @build_int_cst(ptr noundef %515, i64 noundef 1) #17
  %558 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %515, ptr noundef %557) #17
  %559 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %88, ptr noundef %556, ptr noundef %558) #17
  store ptr %559, ptr %140, align 8, !tbaa !91
  br label %564

560:                                              ; preds = %554
  %561 = load ptr, ptr %140, align 8, !tbaa !91
  %562 = call ptr @build_int_cst(ptr noundef %515, i64 noundef 1) #17
  %563 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %515, ptr noundef %561, ptr noundef %562) #17
  store ptr %563, ptr %140, align 8, !tbaa !91
  br label %564

564:                                              ; preds = %560, %555, %550, %546
  call fastcc void @bounds_add(ptr noundef nonnull %21, i64 1, i64 0, ptr noundef %515)
  %565 = call fastcc zeroext i8 @number_of_iterations_lt(ptr noundef nonnull %88, ptr noundef nonnull %140, ptr noundef nonnull %138, ptr noundef nonnull %2, i8 noundef zeroext %168, ptr noundef nonnull %21), !range !92
  br label %567

566:                                              ; preds = %498
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1330, ptr noundef nonnull @.str.10) #17
  br label %567

567:                                              ; preds = %566, %564, %518, %507, %505
  %568 = phi i8 [ undef, %566 ], [ %508, %507 ], [ 1, %505 ], [ %565, %564 ], [ 0, %518 ]
  call void @mpz_clear(ptr noundef nonnull %230) #17
  call void @mpz_clear(ptr noundef nonnull %21) #17
  %569 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %570 = icmp eq ptr %569, null
  br i1 %570, label %614, label %571

571:                                              ; preds = %567
  %572 = load i32, ptr @dump_flags, align 4, !tbaa !54
  %573 = and i32 %572, 8
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %614, label %575

575:                                              ; preds = %571
  %576 = icmp eq i8 %568, 0
  br i1 %576, label %612, label %577

577:                                              ; preds = %575
  %578 = call i64 @fwrite(ptr nonnull @.str.22, i64 10, i64 1, ptr nonnull %569)
  %579 = load ptr, ptr %2, align 8, !tbaa !87
  %580 = call i32 @integer_nonzerop(ptr noundef %579) #17
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %582, label %589

582:                                              ; preds = %577
  %583 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %584 = call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %583)
  %585 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %586 = load ptr, ptr %2, align 8, !tbaa !87
  call void @print_generic_expr(ptr noundef %585, ptr noundef %586, i32 noundef 2) #17
  %587 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %588 = call i32 @fputc(i32 10, ptr %587)
  br label %589

589:                                              ; preds = %582, %577
  %590 = load ptr, ptr %120, align 8, !tbaa !93
  %591 = call i32 @integer_zerop(ptr noundef %590) #17
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %600

593:                                              ; preds = %589
  %594 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %595 = call i64 @fwrite(ptr nonnull @.str.24, i64 12, i64 1, ptr %594)
  %596 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %597 = load ptr, ptr %120, align 8, !tbaa !93
  call void @print_generic_expr(ptr noundef %596, ptr noundef %597, i32 noundef 2) #17
  %598 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %599 = call i32 @fputc(i32 10, ptr %598)
  br label %600

600:                                              ; preds = %593, %589
  %601 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %602 = call i64 @fwrite(ptr nonnull @.str.25, i64 20, i64 1, ptr %601)
  %603 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %604 = load ptr, ptr %121, align 8, !tbaa !98
  call void @print_generic_expr(ptr noundef %603, ptr noundef %604, i32 noundef 2) #17
  %605 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %606 = call i64 @fwrite(ptr nonnull @.str.26, i64 13, i64 1, ptr %605)
  %607 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %608 = load i64, ptr %122, align 8
  %609 = load i64, ptr %123, align 8
  call void @dump_double_int(ptr noundef %607, i64 %608, i64 %609, i8 noundef zeroext 1) #17
  %610 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %611 = call i32 @fputc(i32 10, ptr %610)
  br label %614

612:                                              ; preds = %575
  %613 = call i64 @fwrite(ptr nonnull @.str.27, i64 10, i64 1, ptr nonnull %569)
  br label %614

614:                                              ; preds = %209, %178, %191, %201, %220, %567, %571, %600, %612
  %615 = phi i8 [ 1, %220 ], [ 0, %178 ], [ 0, %191 ], [ 0, %201 ], [ 1, %600 ], [ %568, %612 ], [ %568, %571 ], [ %568, %567 ], [ 0, %209 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #17
  %616 = icmp eq i8 %615, 0
  br i1 %616, label %617, label %618

617:                                              ; preds = %614
  call void @fold_undefer_and_ignore_overflow_warnings() #17
  br label %693

618:                                              ; preds = %614
  %619 = load i32, ptr @optimize, align 4, !tbaa !54
  %620 = icmp sgt i32 %619, 2
  br i1 %620, label %621, label %628

621:                                              ; preds = %618
  %622 = load ptr, ptr %2, align 8, !tbaa !87
  %623 = call fastcc ptr @simplify_using_outer_evolutions(ptr noundef %0, ptr noundef %622)
  store ptr %623, ptr %2, align 8, !tbaa !87
  %624 = load ptr, ptr %120, align 8, !tbaa !93
  %625 = call fastcc ptr @simplify_using_outer_evolutions(ptr noundef %0, ptr noundef %624)
  store ptr %625, ptr %120, align 8, !tbaa !93
  %626 = load ptr, ptr %121, align 8, !tbaa !98
  %627 = call fastcc ptr @simplify_using_outer_evolutions(ptr noundef %0, ptr noundef %626)
  store ptr %627, ptr %121, align 8, !tbaa !98
  br label %628

628:                                              ; preds = %621, %618
  %629 = load ptr, ptr %2, align 8, !tbaa !87
  %630 = call fastcc ptr @simplify_using_initial_conditions(ptr noundef %0, ptr noundef %629)
  store ptr %630, ptr %2, align 8, !tbaa !87
  %631 = load ptr, ptr %120, align 8, !tbaa !93
  %632 = call fastcc ptr @simplify_using_initial_conditions(ptr noundef %0, ptr noundef %631)
  store ptr %632, ptr %120, align 8, !tbaa !93
  call void @fold_undefer_and_ignore_overflow_warnings() #17
  %633 = load ptr, ptr %2, align 8, !tbaa !87
  %634 = call i32 @integer_onep(ptr noundef %633) #17
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %636, label %693

636:                                              ; preds = %628
  %637 = load ptr, ptr %2, align 8, !tbaa !87
  %638 = call i32 @integer_zerop(ptr noundef %637) #17
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %693

640:                                              ; preds = %636
  %641 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !54
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %645, label %643

643:                                              ; preds = %640
  %644 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !39
  store ptr %644, ptr %2, align 8, !tbaa !87
  br label %645

645:                                              ; preds = %643, %640
  %646 = icmp eq i8 %3, 0
  br i1 %646, label %690, label %647

647:                                              ; preds = %645
  %648 = getelementptr inbounds %struct.gimple_statement_base, ptr %33, i64 0, i32 2
  %649 = load i32, ptr %648, align 8, !tbaa !50
  %650 = getelementptr inbounds %struct.affine_iv, ptr %23, i64 0, i32 1
  %651 = load ptr, ptr %650, align 8, !tbaa !96
  %652 = call i32 @integer_zerop(ptr noundef %651) #17
  %653 = icmp eq i32 %652, 0
  %654 = getelementptr inbounds %struct.affine_iv, ptr %22, i64 0, i32 1
  %655 = load ptr, ptr %654, align 8, !tbaa !96
  br i1 %653, label %656, label %667

656:                                              ; preds = %647
  %657 = call i32 @integer_zerop(ptr noundef %655) #17
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %678, label %659

659:                                              ; preds = %656
  %660 = load ptr, ptr %650, align 8, !tbaa !96
  %661 = call i32 @integer_onep(ptr noundef %660) #17
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %663, label %674

663:                                              ; preds = %659
  %664 = load ptr, ptr %650, align 8, !tbaa !96
  %665 = call i32 @integer_all_onesp(ptr noundef %664) #17
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %678, label %674

667:                                              ; preds = %647
  %668 = call i32 @integer_onep(ptr noundef %655) #17
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %674

670:                                              ; preds = %667
  %671 = load ptr, ptr %654, align 8, !tbaa !96
  %672 = call i32 @integer_all_onesp(ptr noundef %671) #17
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %678, label %674

674:                                              ; preds = %670, %667, %663, %659
  %675 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !54
  %676 = icmp eq i32 %675, 0
  %677 = select i1 %676, ptr @.str.1, ptr @.str
  br label %682

678:                                              ; preds = %663, %670, %656
  %679 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !54
  %680 = icmp eq i32 %679, 0
  %681 = select i1 %680, ptr @.str.3, ptr @.str.2
  br label %682

682:                                              ; preds = %678, %674
  %683 = phi ptr [ %677, %674 ], [ %681, %678 ]
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %24, i32 noundef %649) #17
  %684 = getelementptr inbounds %struct.expanded_location, ptr %24, i64 0, i32 1
  %685 = load i32, ptr %684, align 8, !tbaa !106
  %686 = icmp sgt i32 %685, 0
  %687 = load i32, ptr @input_location, align 4
  %688 = select i1 %686, i32 %649, i32 %687
  %689 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %688, i32 noundef 216, ptr noundef nonnull @.str.4, ptr noundef nonnull %683) #17
  br label %690

690:                                              ; preds = %682, %645
  %691 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !54
  %692 = trunc i32 %691 to i8
  br label %693

693:                                              ; preds = %85, %47, %636, %628, %108, %98, %30, %35, %4, %690, %617
  %694 = phi i8 [ %692, %690 ], [ 0, %617 ], [ 0, %4 ], [ 0, %35 ], [ 0, %30 ], [ 0, %98 ], [ 0, %108 ], [ 1, %628 ], [ 0, %636 ], [ 0, %47 ], [ 0, %85 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #17
  ret i8 %694
}

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare i32 @invert_tree_comparison(i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @simplify_using_outer_evolutions(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !38 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1) #17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %55

8:                                                ; preds = %2
  %9 = icmp eq i32 %5, 56
  %10 = trunc i64 %3 to i16
  switch i16 %10, label %41 [
    i16 94, label %11
    i16 93, label %11
    i16 56, label %11
  ]

11:                                               ; preds = %8, %8, %8
  %12 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = tail call fastcc ptr @simplify_using_outer_evolutions(ptr noundef %0, ptr noundef %13)
  %15 = load ptr, ptr %12, align 8, !tbaa !50
  %16 = icmp ne ptr %15, %14
  %17 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = tail call fastcc ptr @simplify_using_outer_evolutions(ptr noundef %0, ptr noundef %18)
  %20 = load ptr, ptr %17, align 8, !tbaa !50
  %21 = icmp ne ptr %20, %19
  %22 = select i1 %21, i1 true, i1 %16
  %23 = zext i1 %22 to i8
  br i1 %9, label %24, label %31

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !50
  %27 = tail call fastcc ptr @simplify_using_outer_evolutions(ptr noundef %0, ptr noundef %26)
  %28 = load ptr, ptr %25, align 8, !tbaa !50
  %29 = icmp eq ptr %28, %27
  %30 = select i1 %29, i8 %23, i8 1
  br label %31

31:                                               ; preds = %24, %11
  %32 = phi i8 [ %30, %24 ], [ %23, %11 ]
  %33 = phi ptr [ %27, %24 ], [ null, %11 ]
  %34 = icmp eq i8 %32, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  br i1 %9, label %37, label %39

37:                                               ; preds = %35
  %38 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 56, ptr noundef %36, ptr noundef %14, ptr noundef %19, ptr noundef %33) #17
  br label %55

39:                                               ; preds = %35
  %40 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %5, ptr noundef %36, ptr noundef %14, ptr noundef %19) #17
  br label %55

41:                                               ; preds = %8
  %42 = tail call ptr @loop_preheader_edge(ptr noundef %0) #17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load ptr, ptr @cfun, align 8, !tbaa !39
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !100
  br label %48

48:                                               ; preds = %41, %44
  %49 = phi ptr [ %47, %44 ], [ %42, %41 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !39
  %51 = tail call ptr @instantiate_scev(ptr noundef %50, ptr noundef %0, ptr noundef nonnull %1) #17
  %52 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %51) #17
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, ptr %1, ptr %51
  br label %55

55:                                               ; preds = %48, %31, %39, %37, %2
  %56 = phi ptr [ %1, %2 ], [ %38, %37 ], [ %40, %39 ], [ %1, %31 ], [ %54, %48 ]
  ret ptr %56
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @simplify_using_initial_conditions(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !38 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 23
  br i1 %5, label %104, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = load ptr, ptr @cfun, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = icmp eq ptr %8, %12
  br i1 %13, label %104, label %14

14:                                               ; preds = %6, %93
  %15 = phi i32 [ %95, %93 ], [ 0, %6 ]
  %16 = phi ptr [ %96, %93 ], [ %8, %6 ]
  %17 = phi ptr [ %94, %93 ], [ %1, %6 ]
  %18 = load ptr, ptr %16, align 8, !tbaa !61
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %18, align 8, !tbaa !63
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %14, %20
  %25 = phi i8 [ %23, %20 ], [ 0, %14 ]
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %93, label %27

27:                                               ; preds = %24
  br i1 %19, label %31, label %28

28:                                               ; preds = %27
  %29 = load i32, ptr %18, align 8, !tbaa !63
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 655, ptr noundef nonnull @.str.10) #17
  br label %32

32:                                               ; preds = %28, %31
  %33 = load ptr, ptr %16, align 8, !tbaa !61
  %34 = getelementptr inbounds %struct.VEC_edge_base, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !39
  %36 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !90
  %38 = and i32 %37, 3072
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %93, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr %35, align 8, !tbaa !65
  %42 = tail call ptr @last_stmt(ptr noundef %41) #17
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 16
  %45 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %46 = and i32 %43, 255
  %47 = add nsw i32 %46, -10
  %48 = icmp ult i32 %47, -9
  br i1 %48, label %61, label %49

49:                                               ; preds = %40
  %50 = zext nneg i32 %46 to i64
  %51 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !54
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !68
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %58

58:                                               ; preds = %57, %49
  %59 = getelementptr inbounds i8, ptr %42, i64 %55
  %60 = load ptr, ptr %59, align 8, !tbaa !39
  br label %61

61:                                               ; preds = %40, %58
  %62 = phi ptr [ %60, %58 ], [ null, %40 ]
  %63 = load i32, ptr %42, align 8
  %64 = and i32 %63, 255
  %65 = add nsw i32 %64, -10
  %66 = icmp ult i32 %65, -9
  br i1 %66, label %80, label %67

67:                                               ; preds = %61
  %68 = zext nneg i32 %64 to i64
  %69 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !54
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !68
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %76

76:                                               ; preds = %75, %67
  %77 = getelementptr inbounds i8, ptr %42, i64 %73
  %78 = getelementptr inbounds ptr, ptr %77, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !39
  br label %80

80:                                               ; preds = %61, %76
  %81 = phi ptr [ %79, %76 ], [ null, %61 ]
  %82 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %44, ptr noundef %45, ptr noundef %62, ptr noundef %81) #17
  %83 = load i32, ptr %36, align 8, !tbaa !90
  %84 = and i32 %83, 2048
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = tail call ptr @invert_truthvalue_loc(i32 noundef 0, ptr noundef %82) #17
  br label %88

88:                                               ; preds = %86, %80
  %89 = phi ptr [ %87, %86 ], [ %82, %80 ]
  %90 = tail call ptr @expand_simple_operations(ptr noundef %89)
  %91 = tail call fastcc ptr @tree_simplify_using_condition_1(ptr noundef %90, ptr noundef %17)
  %92 = add nsw i32 %15, 1
  br label %93

93:                                               ; preds = %32, %24, %88
  %94 = phi ptr [ %91, %88 ], [ %17, %32 ], [ %17, %24 ]
  %95 = phi i32 [ %92, %88 ], [ %15, %32 ], [ %15, %24 ]
  %96 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %16) #17
  %97 = load ptr, ptr @cfun, align 8, !tbaa !39
  %98 = getelementptr inbounds %struct.function, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !100
  %100 = load ptr, ptr %99, align 8, !tbaa !102
  %101 = icmp ne ptr %96, %100
  %102 = icmp slt i32 %95, 8
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %14, label %104, !llvm.loop !108

104:                                              ; preds = %93, %6, %2
  %105 = phi ptr [ %1, %2 ], [ %1, %6 ], [ %94, %93 ]
  ret ptr %105
}

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @find_loop_niter(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #9 !prof !38 {
  %3 = alloca %struct.tree_niter_desc, align 8
  %4 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #17
  store ptr null, ptr %1, align 8, !tbaa !39
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  br label %7

7:                                                ; preds = %53, %2
  %8 = phi ptr [ null, %2 ], [ %54, %53 ]
  %9 = phi i32 [ 0, %2 ], [ %55, %53 ]
  br i1 %5, label %17, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %4, align 8, !tbaa !63
  %12 = icmp ugt i32 %11, %9
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = zext i32 %9 to i64
  %15 = getelementptr inbounds %struct.VEC_edge_base, ptr %4, i64 0, i32 2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  br label %17

17:                                               ; preds = %7, %10, %13
  %18 = phi ptr [ %16, %13 ], [ null, %10 ], [ null, %7 ]
  %19 = phi i1 [ false, %13 ], [ true, %10 ], [ true, %7 ]
  br i1 %19, label %56, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !65
  %22 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %21) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %20
  %25 = call zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %3, i8 noundef zeroext 0)
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %53, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %6, align 8, !tbaa !93
  %29 = tail call i32 @integer_nonzerop(ptr noundef %28) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !39
  %33 = tail call ptr @build_int_cst(ptr noundef %32, i64 noundef 0) #17
  store ptr %18, ptr %1, align 8, !tbaa !39
  br label %56

34:                                               ; preds = %27
  %35 = tail call i32 @integer_zerop(ptr noundef %28) #17
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !98
  %40 = icmp eq ptr %8, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = load i64, ptr %39, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 23
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i64, ptr %8, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 23
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %39, ptr noundef nonnull %8) #17
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49, %45, %37
  store ptr %18, ptr %1, align 8, !tbaa !39
  br label %53

53:                                               ; preds = %52, %49, %41, %34, %24, %20
  %54 = phi ptr [ %8, %41 ], [ %8, %49 ], [ %8, %34 ], [ %8, %24 ], [ %8, %20 ], [ %39, %52 ]
  %55 = add i32 %9, 1
  br label %7, !llvm.loop !109

56:                                               ; preds = %17, %31
  %57 = phi ptr [ %33, %31 ], [ %8, %17 ]
  br i1 %5, label %59, label %58

58:                                               ; preds = %56
  tail call void @free(ptr noundef %4)
  br label %59

59:                                               ; preds = %56, %58
  %60 = icmp eq ptr %57, null
  %61 = load ptr, ptr @chrec_dont_know, align 8
  %62 = select i1 %60, ptr %61, ptr %57
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #17
  ret ptr %62
}

declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @just_once_each_iteration_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @finite_loop_p(ptr noundef %0) local_unnamed_addr #9 !prof !38 {
  %2 = alloca %struct.tree_niter_desc, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #17
  %3 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !54
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %72

5:                                                ; preds = %1
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !39
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 1048576
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 134217728
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %10, %5
  %16 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 268435456
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %22 = icmp eq ptr %21, null
  br i1 %22, label %72, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr @dump_flags, align 4, !tbaa !54
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %72, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %0, align 8, !tbaa !105
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %21, ptr noundef nonnull @.str.5, i32 noundef %28)
  br label %72

30:                                               ; preds = %15, %10
  %31 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #17
  %32 = icmp eq ptr %31, null
  br label %33

33:                                               ; preds = %67, %30
  %34 = phi i32 [ 0, %30 ], [ %68, %67 ]
  br i1 %32, label %42, label %35

35:                                               ; preds = %33
  %36 = load i32, ptr %31, align 8, !tbaa !63
  %37 = icmp ugt i32 %36, %34
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = zext i32 %34 to i64
  %40 = getelementptr inbounds %struct.VEC_edge_base, ptr %31, i64 0, i32 2, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !39
  br label %42

42:                                               ; preds = %33, %35, %38
  %43 = phi ptr [ %41, %38 ], [ null, %35 ], [ null, %33 ]
  %44 = phi i1 [ false, %38 ], [ true, %35 ], [ true, %33 ]
  br i1 %44, label %69, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %43, align 8, !tbaa !65
  %47 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %46) #17
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %45
  %50 = call zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef nonnull %43, ptr noundef nonnull %2, i8 noundef zeroext 0)
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr @dump_flags, align 4, !tbaa !54
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %0, align 8, !tbaa !105
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %53, ptr noundef nonnull @.str.6, i32 noundef %60)
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %63 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !98
  tail call void @print_generic_expr(ptr noundef %62, ptr noundef %64, i32 noundef 2) #17
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %66 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 7, i64 1, ptr %65)
  br label %69

67:                                               ; preds = %49, %45
  %68 = add i32 %34, 1
  br label %33, !llvm.loop !110

69:                                               ; preds = %42, %52, %55, %59
  %70 = phi i8 [ 1, %59 ], [ 1, %55 ], [ 1, %52 ], [ 0, %42 ]
  br i1 %32, label %72, label %71

71:                                               ; preds = %69
  tail call void @free(ptr noundef %31)
  br label %72

72:                                               ; preds = %71, %69, %20, %23, %27, %1
  %73 = phi i8 [ 1, %1 ], [ 1, %27 ], [ 1, %23 ], [ 1, %20 ], [ %70, %69 ], [ %70, %71 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #17
  ret i8 %73
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @loop_niter_by_eval(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !38 {
  %3 = alloca [2 x ptr], align 16
  %4 = alloca [2 x ptr], align 16
  %5 = alloca [2 x ptr], align 16
  %6 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %7 = load ptr, ptr %1, align 8, !tbaa !65
  %8 = tail call ptr @last_stmt(ptr noundef %7) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr %8, align 8
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %2
  %15 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !39
  br label %217

16:                                               ; preds = %10
  %17 = lshr i32 %11, 16
  %18 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !90
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = tail call i32 @invert_tree_comparison(i32 noundef %17, i8 noundef zeroext 0) #17
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi i32 [ %23, %22 ], [ %17, %16 ]
  %26 = add i32 %25, -97
  %27 = icmp ult i32 %26, 6
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load i32, ptr %8, align 8
  %30 = and i32 %29, 255
  %31 = add nsw i32 %30, -10
  %32 = icmp ult i32 %31, -9
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = zext nneg i32 %30 to i64
  %35 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !54
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !68
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %42

42:                                               ; preds = %41, %33
  %43 = getelementptr inbounds i8, ptr %8, i64 %39
  %44 = load ptr, ptr %43, align 8, !tbaa !39
  br label %45

45:                                               ; preds = %28, %42
  %46 = phi ptr [ %44, %42 ], [ null, %28 ]
  store ptr %46, ptr %3, align 16, !tbaa !39
  %47 = load i32, ptr %8, align 8
  %48 = and i32 %47, 255
  %49 = add nsw i32 %48, -10
  %50 = icmp ult i32 %49, -9
  br i1 %50, label %64, label %51

51:                                               ; preds = %45
  %52 = zext nneg i32 %48 to i64
  %53 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !54
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !68
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %60

60:                                               ; preds = %59, %51
  %61 = getelementptr inbounds i8, ptr %8, i64 %57
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !39
  br label %64

64:                                               ; preds = %45, %60
  %65 = phi ptr [ %63, %60 ], [ null, %45 ]
  %66 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  store ptr %65, ptr %66, align 8, !tbaa !39
  br label %69

67:                                               ; preds = %24
  %68 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !39
  br label %217

69:                                               ; preds = %64, %149
  %70 = phi i64 [ 0, %64 ], [ %150, %149 ]
  %71 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !39
  %73 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %72) #17
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %70
  store ptr %72, ptr %76, align 8, !tbaa !39
  %77 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %70
  store ptr null, ptr %77, align 8, !tbaa !39
  store ptr null, ptr %71, align 8, !tbaa !39
  br label %149

78:                                               ; preds = %69
  %79 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %72) #17
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %78
  %82 = tail call fastcc ptr @chain_of_csts_start(ptr noundef %0, ptr noundef %72)
  %83 = icmp eq ptr %82, null
  br i1 %83, label %118, label %84

84:                                               ; preds = %81
  %85 = tail call ptr @loop_preheader_edge(ptr noundef %0) #17
  %86 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 6
  %87 = load i32, ptr %86, align 4, !tbaa !111
  %88 = getelementptr inbounds %struct.gimple_statement_phi, ptr %82, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !50
  %90 = icmp ult i32 %89, %87
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3103, ptr noundef nonnull @.str.10) #17
  br label %92

92:                                               ; preds = %91, %84
  %93 = zext i32 %87 to i64
  %94 = getelementptr inbounds %struct.gimple_statement_phi, ptr %82, i64 0, i32 4, i64 %93, i32 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !59
  %96 = load ptr, ptr %95, align 8, !tbaa !39
  %97 = tail call ptr @loop_latch_edge(ptr noundef %0) #17
  %98 = getelementptr inbounds %struct.edge_def, ptr %97, i64 0, i32 6
  %99 = load i32, ptr %98, align 4, !tbaa !111
  %100 = load i32, ptr %88, align 8, !tbaa !50
  %101 = icmp ult i32 %100, %99
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3103, ptr noundef nonnull @.str.10) #17
  br label %103

103:                                              ; preds = %102, %92
  %104 = zext i32 %99 to i64
  %105 = getelementptr inbounds %struct.gimple_statement_phi, ptr %82, i64 0, i32 4, i64 %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !59
  %107 = load ptr, ptr %106, align 8, !tbaa !39
  %108 = load i64, ptr %107, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 141
  br i1 %110, label %111, label %118

111:                                              ; preds = %103
  %112 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %96) #17
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  %115 = tail call fastcc ptr @chain_of_csts_start(ptr noundef %0, ptr noundef nonnull %107)
  %116 = icmp eq ptr %115, %82
  %117 = select i1 %116, ptr %82, ptr null
  br label %118

118:                                              ; preds = %78, %81, %103, %111, %114
  %119 = phi ptr [ null, %78 ], [ null, %81 ], [ null, %103 ], [ null, %111 ], [ %117, %114 ]
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !39
  br label %217

123:                                              ; preds = %118
  %124 = tail call ptr @loop_preheader_edge(ptr noundef %0) #17
  %125 = getelementptr inbounds %struct.edge_def, ptr %124, i64 0, i32 6
  %126 = load i32, ptr %125, align 4, !tbaa !111
  %127 = getelementptr inbounds %struct.gimple_statement_phi, ptr %119, i64 0, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !50
  %129 = icmp ult i32 %128, %126
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3103, ptr noundef nonnull @.str.10) #17
  br label %131

131:                                              ; preds = %123, %130
  %132 = zext i32 %126 to i64
  %133 = getelementptr inbounds %struct.gimple_statement_phi, ptr %119, i64 0, i32 4, i64 %132, i32 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !59
  %135 = load ptr, ptr %134, align 8, !tbaa !39
  %136 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %70
  store ptr %135, ptr %136, align 8, !tbaa !39
  %137 = tail call ptr @loop_latch_edge(ptr noundef %0) #17
  %138 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 6
  %139 = load i32, ptr %138, align 4, !tbaa !111
  %140 = load i32, ptr %127, align 8, !tbaa !50
  %141 = icmp ult i32 %140, %139
  br i1 %141, label %142, label %143

142:                                              ; preds = %131
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3103, ptr noundef nonnull @.str.10) #17
  br label %143

143:                                              ; preds = %131, %142
  %144 = zext i32 %139 to i64
  %145 = getelementptr inbounds %struct.gimple_statement_phi, ptr %119, i64 0, i32 4, i64 %144, i32 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !59
  %147 = load ptr, ptr %146, align 8, !tbaa !39
  %148 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %70
  store ptr %147, ptr %148, align 8, !tbaa !39
  br label %149

149:                                              ; preds = %75, %143
  %150 = add nuw nsw i64 %70, 1
  %151 = icmp eq i64 %70, 0
  br i1 %151, label %69, label %152, !llvm.loop !112

152:                                              ; preds = %149
  tail call void @fold_defer_overflow_warnings() #17
  %153 = load ptr, ptr @compiler_params, align 8, !tbaa !39
  %154 = getelementptr inbounds %struct.param_info, ptr %153, i64 37, i32 1
  %155 = load i32, ptr %154, align 8, !tbaa !113
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %215, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 1
  br label %159

159:                                              ; preds = %157, %209
  %160 = phi i32 [ 0, %157 ], [ %210, %209 ]
  br label %161

161:                                              ; preds = %159, %161
  %162 = phi i64 [ 0, %159 ], [ %169, %161 ]
  %163 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !39
  %165 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %162
  %166 = load ptr, ptr %165, align 8, !tbaa !39
  %167 = tail call fastcc ptr @get_val_for(ptr noundef %164, ptr noundef %166)
  %168 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 %162
  store ptr %167, ptr %168, align 8, !tbaa !39
  %169 = add nuw nsw i64 %162, 1
  %170 = icmp eq i64 %162, 0
  br i1 %170, label %161, label %171, !llvm.loop !115

171:                                              ; preds = %161
  %172 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %173 = load ptr, ptr %6, align 16, !tbaa !39
  %174 = load ptr, ptr %158, align 8, !tbaa !39
  %175 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %25, ptr noundef %172, ptr noundef %173, ptr noundef %174) #17
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %178

177:                                              ; preds = %178, %171
  br label %198

178:                                              ; preds = %171
  %179 = tail call i32 @integer_zerop(ptr noundef nonnull %175) #17
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %177, label %181

181:                                              ; preds = %178
  tail call void @fold_undefer_and_ignore_overflow_warnings() #17
  %182 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %183 = icmp eq ptr %182, null
  br i1 %183, label %191, label %184

184:                                              ; preds = %181
  %185 = load i32, ptr @dump_flags, align 4, !tbaa !54
  %186 = and i32 %185, 8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %184
  %189 = load i32, ptr %0, align 8, !tbaa !105
  %190 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %182, ptr noundef nonnull @.str.8, i32 noundef %189, i32 noundef %160)
  br label %191

191:                                              ; preds = %188, %184, %181
  %192 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !39
  %193 = zext i32 %160 to i64
  %194 = tail call ptr @build_int_cst(ptr noundef %192, i64 noundef %193) #17
  br label %217

195:                                              ; preds = %198
  %196 = add nuw nsw i64 %199, 1
  %197 = icmp eq i64 %199, 0
  br i1 %197, label %198, label %209, !llvm.loop !116

198:                                              ; preds = %177, %195
  %199 = phi i64 [ %196, %195 ], [ 0, %177 ]
  %200 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !39
  %202 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %199
  %203 = load ptr, ptr %202, align 8, !tbaa !39
  %204 = tail call fastcc ptr @get_val_for(ptr noundef %201, ptr noundef %203)
  store ptr %204, ptr %202, align 8, !tbaa !39
  %205 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %204) #17
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %207, label %195

207:                                              ; preds = %198
  tail call void @fold_undefer_and_ignore_overflow_warnings() #17
  %208 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !39
  br label %217

209:                                              ; preds = %195
  %210 = add nuw i32 %160, 1
  %211 = load ptr, ptr @compiler_params, align 8, !tbaa !39
  %212 = getelementptr inbounds %struct.param_info, ptr %211, i64 37, i32 1
  %213 = load i32, ptr %212, align 8, !tbaa !113
  %214 = icmp ult i32 %210, %213
  br i1 %214, label %159, label %215, !llvm.loop !117

215:                                              ; preds = %209, %152
  tail call void @fold_undefer_and_ignore_overflow_warnings() #17
  %216 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !39
  br label %217

217:                                              ; preds = %215, %207, %191, %121, %67, %14
  %218 = phi ptr [ %15, %14 ], [ %68, %67 ], [ %122, %121 ], [ %194, %191 ], [ %208, %207 ], [ %216, %215 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret ptr %218
}

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_val_for(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !38 {
  br label %3

3:                                                ; preds = %37, %2
  %4 = phi ptr [ %0, %2 ], [ %38, %37 ]
  %5 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2107, ptr noundef nonnull @.str.10) #17
  br label %8

8:                                                ; preds = %3, %7
  %9 = icmp eq ptr %4, null
  br i1 %9, label %148, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = load i32, ptr %12, align 8
  %14 = trunc i32 %13 to i8
  switch i8 %14, label %15 [
    i8 16, label %148
    i8 6, label %16
  ]

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2116, ptr noundef nonnull @.str.10) #17
  br label %16

16:                                               ; preds = %10, %15
  %17 = tail call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %12) #17
  %18 = icmp eq i8 %17, 0
  %19 = load i32, ptr %12, align 8
  br i1 %18, label %39, label %20

20:                                               ; preds = %16
  %21 = and i32 %19, 255
  %22 = add nsw i32 %21, -10
  %23 = icmp ult i32 %22, -9
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = zext nneg i32 %21 to i64
  %26 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !54
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !68
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %33

33:                                               ; preds = %32, %24
  %34 = getelementptr inbounds i8, ptr %12, i64 %30
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  br label %37

37:                                               ; preds = %20, %33
  %38 = phi ptr [ %36, %33 ], [ null, %20 ]
  br label %3

39:                                               ; preds = %16
  %40 = trunc i32 %19 to i8
  switch i8 %40, label %43 [
    i8 6, label %41
    i8 1, label %41
    i8 8, label %44
  ]

41:                                               ; preds = %39, %39
  %42 = lshr i32 %19, 16
  br label %44

43:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1446, ptr noundef nonnull @.str.10) #17
  br label %44

44:                                               ; preds = %43, %41, %39
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ], [ 59, %39 ]
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !50
  %49 = icmp eq i8 %48, 3
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load i32, ptr %12, align 8
  %52 = and i32 %51, 255
  %53 = add nsw i32 %52, -1
  %54 = icmp ult i32 %53, 9
  tail call void @llvm.assume(i1 %54)
  %55 = zext nneg i32 %52 to i64
  %56 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !54
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !68
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %63

63:                                               ; preds = %62, %50
  %64 = getelementptr inbounds i8, ptr %12, i64 %60
  %65 = getelementptr inbounds ptr, ptr %64, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !39
  %67 = load i64, ptr %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = and i32 %68, 65535
  br label %70

70:                                               ; preds = %44, %63
  %71 = phi i32 [ %69, %63 ], [ %45, %44 ]
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !50
  %75 = icmp eq i8 %74, 2
  br i1 %75, label %76, label %154

76:                                               ; preds = %70
  %77 = load i32, ptr %12, align 8
  %78 = and i32 %77, 255
  %79 = add nsw i32 %78, -1
  %80 = icmp ult i32 %79, 9
  tail call void @llvm.assume(i1 %80)
  %81 = zext nneg i32 %78 to i64
  %82 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !54
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %84
  %86 = load i64, ptr %85, align 8, !tbaa !68
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %89

89:                                               ; preds = %88, %76
  %90 = getelementptr inbounds i8, ptr %12, i64 %86
  %91 = getelementptr inbounds ptr, ptr %90, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !39
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 141
  br i1 %95, label %96, label %154

96:                                               ; preds = %89
  %97 = load i32, ptr %12, align 8
  %98 = trunc i32 %97 to i8
  switch i8 %98, label %101 [
    i8 6, label %99
    i8 1, label %99
    i8 8, label %102
  ]

99:                                               ; preds = %96, %96
  %100 = lshr i32 %97, 16
  br label %102

101:                                              ; preds = %96
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1446, ptr noundef nonnull @.str.10) #17
  br label %102

102:                                              ; preds = %101, %99, %96
  %103 = phi i32 [ %100, %99 ], [ 0, %101 ], [ 59, %96 ]
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !50
  %107 = icmp eq i8 %106, 3
  br i1 %107, label %108, label %128

108:                                              ; preds = %102
  %109 = load i32, ptr %12, align 8
  %110 = and i32 %109, 255
  %111 = add nsw i32 %110, -1
  %112 = icmp ult i32 %111, 9
  tail call void @llvm.assume(i1 %112)
  %113 = zext nneg i32 %110 to i64
  %114 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !54
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !68
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %121

121:                                              ; preds = %120, %108
  %122 = getelementptr inbounds i8, ptr %12, i64 %118
  %123 = getelementptr inbounds ptr, ptr %122, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !39
  %125 = load i64, ptr %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = and i32 %126, 65535
  br label %128

128:                                              ; preds = %102, %121
  %129 = phi i32 [ %127, %121 ], [ %103, %102 ]
  %130 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %12)
  %131 = load i32, ptr %12, align 8
  %132 = and i32 %131, 255
  %133 = add nsw i32 %132, -10
  %134 = icmp ult i32 %133, -9
  br i1 %134, label %150, label %135

135:                                              ; preds = %128
  %136 = zext nneg i32 %132 to i64
  %137 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !54
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !68
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %144

144:                                              ; preds = %143, %135
  %145 = getelementptr inbounds i8, ptr %12, i64 %141
  %146 = getelementptr inbounds ptr, ptr %145, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !39
  br label %150

148:                                              ; preds = %281, %285, %8, %10, %150
  %149 = phi ptr [ %153, %150 ], [ %284, %281 ], [ null, %285 ], [ %1, %8 ], [ %1, %10 ]
  ret ptr %149

150:                                              ; preds = %128, %144
  %151 = phi ptr [ %147, %144 ], [ null, %128 ]
  %152 = tail call fastcc ptr @get_val_for(ptr noundef %151, ptr noundef %1)
  %153 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %129, ptr noundef %130, ptr noundef %152) #17
  br label %148

154:                                              ; preds = %89, %70
  %155 = load i32, ptr %12, align 8
  %156 = trunc i32 %155 to i8
  switch i8 %156, label %159 [
    i8 6, label %157
    i8 1, label %157
    i8 8, label %160
  ]

157:                                              ; preds = %154, %154
  %158 = lshr i32 %155, 16
  br label %160

159:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1446, ptr noundef nonnull @.str.10) #17
  br label %160

160:                                              ; preds = %159, %157, %154
  %161 = phi i32 [ %158, %157 ], [ 0, %159 ], [ 59, %154 ]
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !50
  %165 = icmp eq i8 %164, 3
  br i1 %165, label %166, label %186

166:                                              ; preds = %160
  %167 = load i32, ptr %12, align 8
  %168 = and i32 %167, 255
  %169 = add nsw i32 %168, -1
  %170 = icmp ult i32 %169, 9
  tail call void @llvm.assume(i1 %170)
  %171 = zext nneg i32 %168 to i64
  %172 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !54
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %174
  %176 = load i64, ptr %175, align 8, !tbaa !68
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %166
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %179

179:                                              ; preds = %178, %166
  %180 = getelementptr inbounds i8, ptr %12, i64 %176
  %181 = getelementptr inbounds ptr, ptr %180, i64 1
  %182 = load ptr, ptr %181, align 8, !tbaa !39
  %183 = load i64, ptr %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = and i32 %184, 65535
  br label %186

186:                                              ; preds = %160, %179
  %187 = phi i32 [ %185, %179 ], [ %161, %160 ]
  %188 = zext nneg i32 %187 to i64
  %189 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !50
  %191 = icmp eq i8 %190, 1
  br i1 %191, label %192, label %285

192:                                              ; preds = %186
  %193 = load i32, ptr %12, align 8
  %194 = and i32 %193, 255
  %195 = add nsw i32 %194, -10
  %196 = icmp ult i32 %195, -9
  br i1 %196, label %210, label %197

197:                                              ; preds = %192
  %198 = zext nneg i32 %194 to i64
  %199 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !54
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %201
  %203 = load i64, ptr %202, align 8, !tbaa !68
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %206

206:                                              ; preds = %205, %197
  %207 = getelementptr inbounds i8, ptr %12, i64 %203
  %208 = getelementptr inbounds ptr, ptr %207, i64 1
  %209 = load ptr, ptr %208, align 8, !tbaa !39
  br label %210

210:                                              ; preds = %192, %206
  %211 = phi ptr [ %209, %206 ], [ null, %192 ]
  %212 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 3
  %213 = load i32, ptr %212, align 4, !tbaa !50
  %214 = icmp ugt i32 %213, 2
  br i1 %214, label %215, label %233

215:                                              ; preds = %210
  %216 = load i32, ptr %12, align 8
  %217 = and i32 %216, 255
  %218 = add nsw i32 %217, -10
  %219 = icmp ult i32 %218, -9
  br i1 %219, label %233, label %220

220:                                              ; preds = %215
  %221 = zext nneg i32 %217 to i64
  %222 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !54
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %224
  %226 = load i64, ptr %225, align 8, !tbaa !68
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %220
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %229

229:                                              ; preds = %228, %220
  %230 = getelementptr inbounds i8, ptr %12, i64 %226
  %231 = getelementptr inbounds ptr, ptr %230, i64 2
  %232 = load ptr, ptr %231, align 8, !tbaa !39
  br label %233

233:                                              ; preds = %210, %215, %229
  %234 = phi ptr [ null, %210 ], [ %232, %229 ], [ null, %215 ]
  %235 = load i64, ptr %211, align 8
  %236 = and i64 %235, 65535
  %237 = icmp eq i64 %236, 141
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = tail call fastcc ptr @get_val_for(ptr noundef nonnull %211, ptr noundef %1)
  br label %247

240:                                              ; preds = %233
  %241 = load i64, ptr %234, align 8
  %242 = and i64 %241, 65535
  %243 = icmp eq i64 %242, 141
  br i1 %243, label %244, label %246

244:                                              ; preds = %240
  %245 = tail call fastcc ptr @get_val_for(ptr noundef nonnull %234, ptr noundef %1)
  br label %247

246:                                              ; preds = %240
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2139, ptr noundef nonnull @.str.10) #17
  br label %247

247:                                              ; preds = %244, %246, %238
  %248 = phi ptr [ %239, %238 ], [ %211, %244 ], [ %211, %246 ]
  %249 = phi ptr [ %234, %238 ], [ %245, %244 ], [ %234, %246 ]
  %250 = load i32, ptr %12, align 8
  %251 = trunc i32 %250 to i8
  switch i8 %251, label %254 [
    i8 6, label %252
    i8 1, label %252
    i8 8, label %255
  ]

252:                                              ; preds = %247, %247
  %253 = lshr i32 %250, 16
  br label %255

254:                                              ; preds = %247
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1446, ptr noundef nonnull @.str.10) #17
  br label %255

255:                                              ; preds = %254, %252, %247
  %256 = phi i32 [ %253, %252 ], [ 0, %254 ], [ 59, %247 ]
  %257 = zext nneg i32 %256 to i64
  %258 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !50
  %260 = icmp eq i8 %259, 3
  br i1 %260, label %261, label %281

261:                                              ; preds = %255
  %262 = load i32, ptr %12, align 8
  %263 = and i32 %262, 255
  %264 = add nsw i32 %263, -1
  %265 = icmp ult i32 %264, 9
  tail call void @llvm.assume(i1 %265)
  %266 = zext nneg i32 %263 to i64
  %267 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !54
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %269
  %271 = load i64, ptr %270, align 8, !tbaa !68
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %261
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %274

274:                                              ; preds = %273, %261
  %275 = getelementptr inbounds i8, ptr %12, i64 %271
  %276 = getelementptr inbounds ptr, ptr %275, i64 1
  %277 = load ptr, ptr %276, align 8, !tbaa !39
  %278 = load i64, ptr %277, align 8
  %279 = trunc i64 %278 to i32
  %280 = and i32 %279, 65535
  br label %281

281:                                              ; preds = %255, %274
  %282 = phi i32 [ %280, %274 ], [ %256, %255 ]
  %283 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %12)
  %284 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %282, ptr noundef %283, ptr noundef %248, ptr noundef %249) #17
  br label %148

285:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2144, ptr noundef nonnull @.str.10) #17
  br label %148
}

declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @find_loop_niter_by_eval(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #9 !prof !38 {
  %3 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #17
  store ptr null, ptr %1, align 8, !tbaa !39
  %4 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !54
  %5 = icmp ne i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 8, !tbaa !63
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !39
  br label %51

13:                                               ; preds = %8, %2
  %14 = icmp eq ptr %3, null
  br label %15

15:                                               ; preds = %42, %13
  %16 = phi i32 [ 0, %13 ], [ %44, %42 ]
  %17 = phi ptr [ null, %13 ], [ %43, %42 ]
  br i1 %14, label %25, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %3, align 8, !tbaa !63
  %20 = icmp ugt i32 %19, %16
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = zext i32 %16 to i64
  %23 = getelementptr inbounds %struct.VEC_edge_base, ptr %3, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  br label %25

25:                                               ; preds = %15, %18, %21
  %26 = phi ptr [ %24, %21 ], [ null, %18 ], [ null, %15 ]
  %27 = phi i1 [ false, %21 ], [ true, %18 ], [ true, %15 ]
  br i1 %27, label %45, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !65
  %30 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %29) #17
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @loop_niter_by_eval(ptr noundef %0, ptr noundef nonnull %26)
  %34 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %33) #17
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = icmp eq ptr %17, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %36
  %39 = tail call i32 @tree_int_cst_lt(ptr noundef %33, ptr noundef nonnull %17) #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %36
  store ptr %26, ptr %1, align 8, !tbaa !39
  br label %42

42:                                               ; preds = %38, %32, %28, %41
  %43 = phi ptr [ %17, %32 ], [ %33, %41 ], [ %17, %38 ], [ %17, %28 ]
  %44 = add i32 %16, 1
  br label %15, !llvm.loop !118

45:                                               ; preds = %25
  br i1 %14, label %47, label %46

46:                                               ; preds = %45
  tail call void @free(ptr noundef %3)
  br label %47

47:                                               ; preds = %45, %46
  %48 = icmp eq ptr %17, null
  %49 = load ptr, ptr @chrec_dont_know, align 8
  %50 = select i1 %48, ptr %49, ptr %17
  br label %51

51:                                               ; preds = %47, %11
  %52 = phi ptr [ %50, %47 ], [ %12, %11 ]
  ret ptr %52
}

declare zeroext i8 @chrec_contains_undetermined(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @array_at_struct_end_p(ptr noundef %0) local_unnamed_addr #9 !prof !38 {
  %2 = tail call ptr @get_base_address(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %2, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -47
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %38

10:                                               ; preds = %4, %24
  %11 = phi ptr [ %21, %24 ], [ %0, %4 ]
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %14 [
    i16 42, label %19
    i16 41, label %19
    i16 45, label %19
    i16 46, label %19
    i16 118, label %19
    i16 43, label %19
    i16 44, label %19
  ]

14:                                               ; preds = %10
  %15 = trunc i64 %12 to i32
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -47
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %38, label %37

19:                                               ; preds = %10, %10, %10, %10, %10, %10, %10
  %20 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = and i64 %12, 65535
  %23 = icmp eq i64 %22, 41
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %31, %25
  br label %10, !llvm.loop !119

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 17
  br i1 %30, label %24, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = icmp eq ptr %35, null
  br i1 %36, label %24, label %38

37:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2654, ptr noundef nonnull @.str.10) #17
  br label %38

38:                                               ; preds = %31, %14, %4, %37, %1
  %39 = phi i8 [ 0, %4 ], [ 0, %1 ], [ 1, %14 ], [ 1, %37 ], [ 0, %31 ]
  ret i8 %39
}

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @estimate_numbers_of_iterations_loop(ptr noundef %0) local_unnamed_addr #9 !prof !38 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ilb_data, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ilb_data, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.ilb_data, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.ilb_data, align 8
  %10 = alloca %struct.tree_niter_desc, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %10) #17
  %11 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 16
  %12 = load i32, ptr %11, align 4, !tbaa !120
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %338

14:                                               ; preds = %1
  store i32 1, ptr %11, align 4, !tbaa !120
  %15 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 14
  store i8 0, ptr %15, align 8, !tbaa !121
  %16 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 15
  store i8 0, ptr %16, align 1, !tbaa !122
  %17 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #17
  %18 = icmp eq ptr %17, null
  br label %19

19:                                               ; preds = %55, %14
  %20 = phi i32 [ 0, %14 ], [ %56, %55 ]
  br i1 %18, label %28, label %21

21:                                               ; preds = %19
  %22 = load i32, ptr %17, align 8, !tbaa !63
  %23 = icmp ugt i32 %22, %20
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = zext i32 %20 to i64
  %26 = getelementptr inbounds %struct.VEC_edge_base, ptr %17, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !39
  br label %28

28:                                               ; preds = %19, %21, %24
  %29 = phi ptr [ %27, %24 ], [ null, %21 ], [ null, %19 ]
  %30 = phi i1 [ false, %24 ], [ true, %21 ], [ true, %19 ]
  br i1 %30, label %57, label %31

31:                                               ; preds = %28
  %32 = call zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef %29, ptr noundef nonnull %10, i8 noundef zeroext 0)
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.tree_niter_desc, ptr %10, i64 0, i32 2
  %36 = getelementptr inbounds %struct.tree_niter_desc, ptr %10, i64 0, i32 1
  %37 = load ptr, ptr %35, align 8, !tbaa !98
  %38 = load ptr, ptr %36, align 8, !tbaa !93
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 23
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !50
  %45 = tail call ptr @build_int_cst(ptr noundef %44, i64 noundef 0) #17
  %46 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %44, ptr noundef nonnull %38, ptr noundef %45, ptr noundef %37) #17
  br label %47

47:                                               ; preds = %42, %34
  %48 = phi ptr [ %46, %42 ], [ %37, %34 ]
  %49 = getelementptr inbounds %struct.tree_niter_desc, ptr %10, i64 0, i32 3
  %50 = getelementptr inbounds %struct.tree_niter_desc, ptr %10, i64 0, i32 3, i32 1
  %51 = load ptr, ptr %29, align 8, !tbaa !65
  %52 = tail call ptr @last_stmt(ptr noundef %51) #17
  %53 = load i64, ptr %49, align 8
  %54 = load i64, ptr %50, align 8
  tail call fastcc void @record_estimate(ptr noundef %0, ptr noundef %48, i64 %53, i64 %54, ptr noundef %52, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  br label %55

55:                                               ; preds = %31, %47
  %56 = add i32 %20, 1
  br label %19, !llvm.loop !123

57:                                               ; preds = %28
  br i1 %18, label %59, label %58

58:                                               ; preds = %57
  tail call void @free(ptr noundef %17)
  br label %59

59:                                               ; preds = %57, %58
  %60 = tail call ptr @get_loop_body(ptr noundef %0) #17
  %61 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %62 = load i32, ptr %61, align 4, !tbaa !69
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %298, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %66 = getelementptr inbounds %struct.ilb_data, ptr %5, i64 0, i32 1
  %67 = getelementptr inbounds %struct.ilb_data, ptr %5, i64 0, i32 2
  %68 = getelementptr inbounds %struct.ilb_data, ptr %3, i64 0, i32 1
  %69 = getelementptr inbounds %struct.ilb_data, ptr %3, i64 0, i32 2
  %70 = getelementptr inbounds %struct.ilb_data, ptr %9, i64 0, i32 1
  %71 = getelementptr inbounds %struct.ilb_data, ptr %9, i64 0, i32 2
  %72 = getelementptr inbounds %struct.ilb_data, ptr %7, i64 0, i32 1
  %73 = getelementptr inbounds %struct.ilb_data, ptr %7, i64 0, i32 2
  br label %74

74:                                               ; preds = %64, %293
  %75 = phi i64 [ 0, %64 ], [ %294, %293 ]
  %76 = getelementptr inbounds ptr, ptr %60, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !39
  %78 = load ptr, ptr %65, align 8, !tbaa !86
  %79 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %78, ptr noundef %77) #17
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 13
  %81 = load i32, ptr %80, align 8, !tbaa !73, !noalias !124
  %82 = and i32 %81, 512
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !50, !noalias !124
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %86, align 8, !tbaa !77, !noalias !124
  br label %90

90:                                               ; preds = %88, %84, %74
  %91 = phi ptr [ %89, %88 ], [ null, %84 ], [ null, %74 ]
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %91, align 8, !tbaa !79, !noalias !124
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi ptr [ %94, %93 ], [ null, %90 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %293, label %98

98:                                               ; preds = %95
  %99 = icmp eq i8 %79, 0
  br label %100

100:                                              ; preds = %98, %289
  %101 = phi ptr [ %96, %98 ], [ %291, %289 ]
  %102 = load ptr, ptr %101, align 8, !tbaa !81
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, 255
  %105 = trunc i32 %103 to i8
  switch i8 %105, label %213 [
    i8 6, label %106
    i8 8, label %152
  ]

106:                                              ; preds = %100
  %107 = zext nneg i32 %104 to i64
  %108 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !54
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %110
  %112 = load i64, ptr %111, align 8, !tbaa !68
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %115

115:                                              ; preds = %114, %106
  %116 = getelementptr inbounds i8, ptr %102, i64 %112
  %117 = load ptr, ptr %116, align 8, !tbaa !39
  %118 = load i32, ptr %102, align 8
  %119 = and i32 %118, 255
  %120 = add nsw i32 %119, -10
  %121 = icmp ult i32 %120, -9
  br i1 %121, label %135, label %122

122:                                              ; preds = %115
  %123 = zext nneg i32 %119 to i64
  %124 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !54
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !68
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %131

131:                                              ; preds = %130, %122
  %132 = getelementptr inbounds i8, ptr %102, i64 %128
  %133 = getelementptr inbounds ptr, ptr %132, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !39
  br label %135

135:                                              ; preds = %131, %115
  %136 = phi ptr [ %134, %131 ], [ null, %115 ]
  %137 = load i64, ptr %117, align 8
  %138 = and i64 %137, 65535
  %139 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !54
  %141 = icmp eq i32 %140, 4
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store ptr %117, ptr %8, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #17
  store ptr %0, ptr %9, align 8, !tbaa !127
  store ptr %102, ptr %70, align 8, !tbaa !129
  store i8 %79, ptr %71, align 8, !tbaa !130
  %143 = call zeroext i8 @for_each_index(ptr noundef nonnull %8, ptr noundef nonnull @idx_infer_loop_bounds, ptr noundef nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  br label %144

144:                                              ; preds = %142, %135
  %145 = load i64, ptr %136, align 8
  %146 = and i64 %145, 65535
  %147 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !54
  %149 = icmp eq i32 %148, 4
  br i1 %149, label %150, label %213

150:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %136, ptr %6, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #17
  store ptr %0, ptr %7, align 8, !tbaa !127
  store ptr %102, ptr %72, align 8, !tbaa !129
  store i8 %79, ptr %73, align 8, !tbaa !130
  %151 = call zeroext i8 @for_each_index(ptr noundef nonnull %6, ptr noundef nonnull @idx_infer_loop_bounds, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  br label %213

152:                                              ; preds = %100
  %153 = getelementptr inbounds %struct.gimple_statement_base, ptr %102, i64 0, i32 3
  %154 = load i32, ptr %153, align 4, !tbaa !50
  %155 = add i32 %154, -3
  %156 = zext nneg i32 %104 to i64
  %157 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !54
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %159
  %161 = load i64, ptr %160, align 8, !tbaa !68
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %152
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %164

164:                                              ; preds = %163, %152
  %165 = getelementptr inbounds i8, ptr %102, i64 %161
  %166 = load ptr, ptr %165, align 8, !tbaa !39
  %167 = icmp eq ptr %166, null
  br i1 %167, label %176, label %168

168:                                              ; preds = %164
  %169 = load i64, ptr %166, align 8
  %170 = and i64 %169, 65535
  %171 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !54
  %173 = icmp eq i32 %172, 4
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr %166, ptr %4, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  store ptr %0, ptr %5, align 8, !tbaa !127
  store ptr %102, ptr %66, align 8, !tbaa !129
  store i8 %79, ptr %67, align 8, !tbaa !130
  %175 = call zeroext i8 @for_each_index(ptr noundef nonnull %4, ptr noundef nonnull @idx_infer_loop_bounds, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  br label %176

176:                                              ; preds = %174, %168, %164
  %177 = icmp eq i32 %155, 0
  br i1 %177, label %213, label %178

178:                                              ; preds = %176
  %179 = zext i32 %155 to i64
  br label %180

180:                                              ; preds = %178, %210
  %181 = phi i64 [ 0, %178 ], [ %211, %210 ]
  %182 = add nuw i64 %181, 3
  %183 = load i32, ptr %102, align 8
  %184 = and i32 %183, 255
  %185 = add nsw i32 %184, -10
  %186 = icmp ult i32 %185, -9
  br i1 %186, label %201, label %187

187:                                              ; preds = %180
  %188 = zext nneg i32 %184 to i64
  %189 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !54
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %191
  %193 = load i64, ptr %192, align 8, !tbaa !68
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %196

196:                                              ; preds = %195, %187
  %197 = getelementptr inbounds i8, ptr %102, i64 %193
  %198 = and i64 %182, 4294967295
  %199 = getelementptr inbounds ptr, ptr %197, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !39
  br label %201

201:                                              ; preds = %196, %180
  %202 = phi ptr [ %200, %196 ], [ null, %180 ]
  %203 = load i64, ptr %202, align 8
  %204 = and i64 %203, 65535
  %205 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !54
  %207 = icmp eq i32 %206, 4
  br i1 %207, label %208, label %210

208:                                              ; preds = %201
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %202, ptr %2, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  store ptr %0, ptr %3, align 8, !tbaa !127
  store ptr %102, ptr %68, align 8, !tbaa !129
  store i8 %79, ptr %69, align 8, !tbaa !130
  %209 = call zeroext i8 @for_each_index(ptr noundef nonnull %2, ptr noundef nonnull @idx_infer_loop_bounds, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  br label %210

210:                                              ; preds = %208, %201
  %211 = add nuw nsw i64 %181, 1
  %212 = icmp eq i64 %211, %179
  br i1 %212, label %213, label %180, !llvm.loop !131

213:                                              ; preds = %210, %176, %150, %144, %100
  br i1 %99, label %289, label %214

214:                                              ; preds = %213
  %215 = load i32, ptr %102, align 8
  %216 = and i32 %215, 255
  %217 = icmp eq i32 %216, 6
  br i1 %217, label %218, label %289

218:                                              ; preds = %214
  %219 = zext nneg i32 %216 to i64
  %220 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !54
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %222
  %224 = load i64, ptr %223, align 8, !tbaa !68
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %227

227:                                              ; preds = %226, %218
  %228 = getelementptr inbounds i8, ptr %102, i64 %224
  %229 = load ptr, ptr %228, align 8, !tbaa !39
  %230 = load i64, ptr %229, align 8
  %231 = and i64 %230, 65535
  %232 = icmp eq i64 %231, 141
  br i1 %232, label %233, label %289

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.tree_common, ptr %229, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !50
  %236 = load i64, ptr %235, align 8
  %237 = trunc i64 %236 to i32
  %238 = and i32 %237, 65535
  %239 = add nsw i32 %238, -6
  %240 = icmp ult i32 %239, 3
  br i1 %240, label %241, label %289

241:                                              ; preds = %233
  %242 = and i64 %236, 2097152
  %243 = icmp eq i64 %242, 0
  %244 = load i32, ptr @flag_wrapv, align 4
  %245 = icmp eq i32 %244, 0
  %246 = select i1 %243, i1 %245, i1 false
  %247 = load i32, ptr @flag_trapv, align 4
  %248 = icmp eq i32 %247, 0
  %249 = select i1 %246, i1 %248, i1 false
  %250 = load i32, ptr @flag_strict_overflow, align 4
  %251 = icmp ne i32 %250, 0
  %252 = select i1 %249, i1 %251, i1 false
  br i1 %252, label %253, label %289

253:                                              ; preds = %241
  %254 = call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef nonnull %229) #17
  %255 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %261

257:                                              ; preds = %253
  %258 = load ptr, ptr @cfun, align 8, !tbaa !39
  %259 = getelementptr inbounds %struct.function, ptr %258, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !100
  br label %261

261:                                              ; preds = %257, %253
  %262 = phi ptr [ %260, %257 ], [ %255, %253 ]
  %263 = load ptr, ptr %262, align 8, !tbaa !39
  %264 = call ptr @instantiate_scev(ptr noundef %263, ptr noundef %0, ptr noundef %254) #17
  %265 = call zeroext i8 @chrec_contains_undetermined(ptr noundef %264) #17
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %267, label %289

267:                                              ; preds = %261
  %268 = load i32, ptr %0, align 8, !tbaa !105
  %269 = call ptr @initial_condition_in_loop_num(ptr noundef %264, i32 noundef %268) #17
  %270 = load i32, ptr %0, align 8, !tbaa !105
  %271 = call ptr @evolution_part_in_loop_num(ptr noundef %264, i32 noundef %270) #17
  %272 = icmp ne ptr %269, null
  %273 = icmp ne ptr %271, null
  %274 = select i1 %272, i1 %273, i1 false
  br i1 %274, label %275, label %289

275:                                              ; preds = %267
  %276 = load i64, ptr %271, align 8
  %277 = and i64 %276, 65535
  %278 = icmp eq i64 %277, 23
  br i1 %278, label %279, label %289

279:                                              ; preds = %275
  %280 = call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %269, ptr noundef null) #17
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %279
  %283 = load i32, ptr %0, align 8, !tbaa !105
  %284 = call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef nonnull %269, i32 noundef %283) #17
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  %287 = call ptr @lower_bound_in_type(ptr noundef nonnull %235, ptr noundef nonnull %235) #17
  %288 = call ptr @upper_bound_in_type(ptr noundef nonnull %235, ptr noundef nonnull %235) #17
  call fastcc void @record_nonwrapping_iv(ptr noundef nonnull %0, ptr noundef nonnull %269, ptr noundef nonnull %271, ptr noundef nonnull %102, ptr noundef %287, ptr noundef %288, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br label %289

289:                                              ; preds = %286, %282, %279, %275, %267, %261, %241, %233, %227, %214, %213
  %290 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %101, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !83
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %100, !llvm.loop !132

293:                                              ; preds = %289, %95
  %294 = add nuw nsw i64 %75, 1
  %295 = load i32, ptr %61, align 4, !tbaa !69
  %296 = zext i32 %295 to i64
  %297 = icmp ult i64 %294, %296
  br i1 %297, label %74, label %298, !llvm.loop !133

298:                                              ; preds = %293, %59
  call void @free(ptr noundef %60)
  %299 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %300 = load ptr, ptr %299, align 8, !tbaa !99
  %301 = getelementptr inbounds %struct.basic_block_def, ptr %300, i64 0, i32 8
  %302 = load i64, ptr %301, align 8, !tbaa !134
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %320, label %304

304:                                              ; preds = %298
  %305 = call i64 @expected_loop_iterations_unbounded(ptr noundef %0) #17
  %306 = add nsw i64 %305, 1
  %307 = ashr i64 %306, 63
  %308 = load i8, ptr %16, align 1, !tbaa !122
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %317, label %310

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13
  %312 = load i64, ptr %311, align 8
  %313 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13, i32 1
  %314 = load i64, ptr %313, align 8
  %315 = call i32 @double_int_ucmp(i64 %306, i64 %307, i64 %312, i64 %314) #17
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %310, %304
  store i8 1, ptr %16, align 1, !tbaa !122
  %318 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13
  store i64 %306, ptr %318, align 8, !tbaa.struct !135
  %319 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13, i32 1
  store i64 %307, ptr %319, align 8, !tbaa.struct !136
  br label %320

320:                                              ; preds = %317, %310, %298
  %321 = load i8, ptr %15, align 8, !tbaa !121
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %338, label %323

323:                                              ; preds = %320
  %324 = load i8, ptr %16, align 1, !tbaa !122
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %338, label %326

326:                                              ; preds = %323
  %327 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12
  %328 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13
  %329 = load i64, ptr %327, align 8
  %330 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12, i32 1
  %331 = load i64, ptr %330, align 8
  %332 = load i64, ptr %328, align 8
  %333 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13, i32 1
  %334 = load i64, ptr %333, align 8
  %335 = call i32 @double_int_ucmp(i64 %329, i64 %331, i64 %332, i64 %334) #17
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %328, ptr noundef nonnull align 8 dereferenceable(16) %327, i64 16, i1 false), !tbaa.struct !135
  br label %338

338:                                              ; preds = %320, %323, %326, %337, %1
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %10) #17
  ret void
}

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @record_estimate(ptr noundef %0, ptr noundef %1, i64 %2, i64 %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #9 !prof !38 {
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !54
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = icmp eq i8 %5, 0
  %17 = select i1 %16, ptr @.str.32, ptr @.str.35
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.34, ptr noundef nonnull %17)
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !39
  tail call void @print_gimple_stmt(ptr noundef %19, ptr noundef %4, i32 noundef 0, i32 noundef 2) #17
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %21 = icmp eq i8 %7, 0
  %22 = select i1 %21, ptr @.str.37, ptr @.str.32
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.36, ptr noundef nonnull %22)
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !39
  tail call void @print_generic_expr(ptr noundef %24, ptr noundef %1, i32 noundef 2) #17
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %26 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 13, i64 1, ptr %25)
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !39
  tail call void @dump_double_int(ptr noundef %27, i64 %2, i64 %3, i8 noundef zeroext 1) #17
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %29 = load i32, ptr %0, align 8, !tbaa !105
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.39, i32 noundef %29)
  br label %31

31:                                               ; preds = %15, %11, %8
  %32 = load i64, ptr %1, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 23
  %35 = select i1 %34, i8 %6, i8 0
  %36 = or i8 %35, %7
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %31
  %39 = icmp eq i8 %7, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %38
  %41 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #17
  %42 = getelementptr inbounds %struct.nb_iter_bound, ptr %41, i64 0, i32 1
  store i64 %2, ptr %42, align 8, !tbaa.struct !135
  %43 = getelementptr inbounds %struct.nb_iter_bound, ptr %41, i64 0, i32 1, i32 1
  store i64 %3, ptr %43, align 8, !tbaa.struct !136
  store ptr %4, ptr %41, align 8, !tbaa !137
  %44 = getelementptr inbounds %struct.nb_iter_bound, ptr %41, i64 0, i32 2
  store i8 %5, ptr %44, align 8, !tbaa !139
  %45 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !140
  %47 = getelementptr inbounds %struct.nb_iter_bound, ptr %41, i64 0, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !141
  store ptr %41, ptr %45, align 8, !tbaa !140
  br label %48

48:                                               ; preds = %40, %38
  %49 = tail call ptr @single_exit(ptr noundef %0) #17
  %50 = icmp eq i8 %5, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = icmp eq ptr %49, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %51
  %54 = load ptr, ptr %49, align 8, !tbaa !65
  %55 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !50
  %57 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %54, ptr noundef %56) #17
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %51
  br label %60

60:                                               ; preds = %48, %53, %59
  %61 = phi i64 [ 2, %59 ], [ 1, %53 ], [ 1, %48 ]
  %62 = tail call { i64, i64 } @double_int_add(i64 %2, i64 %3, i64 %61, i64 0) #17
  %63 = extractvalue { i64, i64 } %62, 0
  %64 = extractvalue { i64, i64 } %62, 1
  %65 = tail call i32 @double_int_ucmp(i64 %63, i64 %64, i64 %61, i64 0) #17
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  tail call fastcc void @record_niter_bound(ptr noundef %0, i64 %63, i64 %64, i8 noundef zeroext %35, i8 noundef zeroext %7)
  br label %68

68:                                               ; preds = %60, %31, %67
  ret void
}

declare i64 @expected_loop_iterations_unbounded(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @record_niter_bound(ptr nocapture noundef %0, i64 %1, i64 %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #9 !prof !38 {
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 14
  %9 = load i8, ptr %8, align 8, !tbaa !121
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = tail call i32 @double_int_ucmp(i64 %1, i64 %2, i64 %13, i64 %15) #17
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11, %7
  store i8 1, ptr %8, align 8, !tbaa !121
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12
  store i64 %1, ptr %19, align 8, !tbaa.struct !135
  %20 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12, i32 1
  store i64 %2, ptr %20, align 8, !tbaa.struct !136
  br label %21

21:                                               ; preds = %18, %11, %5
  %22 = icmp eq i8 %3, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 15
  %25 = load i8, ptr %24, align 1, !tbaa !122
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = tail call i32 @double_int_ucmp(i64 %1, i64 %2, i64 %29, i64 %31) #17
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %23
  store i8 1, ptr %24, align 1, !tbaa !122
  %35 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13
  store i64 %1, ptr %35, align 8, !tbaa.struct !135
  %36 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13, i32 1
  store i64 %2, ptr %36, align 8, !tbaa.struct !136
  br label %37

37:                                               ; preds = %34, %27, %21
  ret void
}

declare i32 @double_int_ucmp(i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @estimate_numbers_of_iterations() local_unnamed_addr #9 !prof !38 {
  tail call void @fold_defer_overflow_warnings() #17
  %1 = load ptr, ptr @cfun, align 8, !tbaa !39
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = icmp eq ptr %3, null
  br i1 %4, label %80, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !143
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !145
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ 0, %5 ]
  %13 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %12, i64 noundef 8, i64 noundef 4) #17
  %14 = load ptr, ptr @cfun, align 8, !tbaa !39
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !142
  %17 = getelementptr inbounds %struct.loops, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !147
  br label %19

19:                                               ; preds = %32, %11
  %20 = phi ptr [ %18, %11 ], [ %33, %32 ]
  %21 = load i32, ptr %20, align 8, !tbaa !105
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, ptr %13, align 4, !tbaa !148
  %25 = add i32 %24, 1
  store i32 %25, ptr %13, align 4, !tbaa !148
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds %struct.VEC_int_base, ptr %13, i64 0, i32 2, i64 %26
  store i32 %21, ptr %27, align 4, !tbaa !54
  br label %28

28:                                               ; preds = %23, %19
  %29 = getelementptr inbounds %struct.loop, ptr %20, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !150
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %37, %28
  %33 = phi ptr [ %30, %28 ], [ %40, %37 ]
  br label %19, !llvm.loop !151

34:                                               ; preds = %56
  %35 = icmp eq ptr %13, null
  %36 = getelementptr inbounds %struct.loops, ptr %16, i64 0, i32 1
  br label %59

37:                                               ; preds = %28, %56
  %38 = phi ptr [ %57, %56 ], [ %20, %28 ]
  %39 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !152
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %32, !llvm.loop !151

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !153
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %44, align 8, !tbaa !145
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %47, %46 ], [ 0, %42 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = add i32 %49, -1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %44, i64 0, i32 2, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !39
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi ptr [ %55, %51 ], [ null, %48 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %34, label %37, !llvm.loop !154

59:                                               ; preds = %34, %71
  %60 = phi i32 [ %72, %71 ], [ 0, %34 ]
  br i1 %35, label %68, label %61

61:                                               ; preds = %59
  %62 = load i32, ptr %13, align 4, !tbaa !148
  %63 = icmp ugt i32 %62, %60
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = zext i32 %60 to i64
  %66 = getelementptr inbounds %struct.VEC_int_base, ptr %13, i64 0, i32 2, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !54
  br label %68

68:                                               ; preds = %64, %61, %59
  %69 = phi i32 [ %67, %64 ], [ 0, %61 ], [ 0, %59 ]
  %70 = phi i1 [ false, %64 ], [ true, %61 ], [ true, %59 ]
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = add i32 %60, 1
  %73 = load ptr, ptr %36, align 8, !tbaa !143
  %74 = zext i32 %69 to i64
  %75 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %73, i64 0, i32 2, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !39
  %77 = icmp eq ptr %76, null
  br i1 %77, label %59, label %80, !llvm.loop !155

78:                                               ; preds = %68
  br i1 %35, label %80, label %79

79:                                               ; preds = %78
  tail call void @free(ptr noundef %13)
  br label %80

80:                                               ; preds = %71, %78, %79, %0
  %81 = phi i32 [ 0, %0 ], [ %60, %79 ], [ %60, %78 ], [ %72, %71 ]
  %82 = phi ptr [ null, %0 ], [ null, %79 ], [ null, %78 ], [ %13, %71 ]
  %83 = phi ptr [ null, %0 ], [ null, %79 ], [ null, %78 ], [ %76, %71 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %120, label %85

85:                                               ; preds = %80, %115
  %86 = phi ptr [ %118, %115 ], [ %83, %80 ]
  %87 = phi ptr [ %117, %115 ], [ %82, %80 ]
  %88 = phi i32 [ %116, %115 ], [ %81, %80 ]
  tail call void @estimate_numbers_of_iterations_loop(ptr noundef nonnull %86)
  %89 = icmp eq ptr %87, null
  %90 = load ptr, ptr @cfun, align 8
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 4
  br label %92

92:                                               ; preds = %104, %85
  %93 = phi i32 [ %88, %85 ], [ %105, %104 ]
  br i1 %89, label %101, label %94

94:                                               ; preds = %92
  %95 = load i32, ptr %87, align 4, !tbaa !148
  %96 = icmp ugt i32 %95, %93
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = zext i32 %93 to i64
  %99 = getelementptr inbounds %struct.VEC_int_base, ptr %87, i64 0, i32 2, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !54
  br label %101

101:                                              ; preds = %97, %94, %92
  %102 = phi i32 [ %100, %97 ], [ 0, %94 ], [ 0, %92 ]
  %103 = phi i1 [ false, %97 ], [ true, %94 ], [ true, %92 ]
  br i1 %103, label %113, label %104

104:                                              ; preds = %101
  %105 = add i32 %93, 1
  %106 = load ptr, ptr %91, align 8, !tbaa !142
  %107 = getelementptr inbounds %struct.loops, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !143
  %109 = zext i32 %102 to i64
  %110 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %108, i64 0, i32 2, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !39
  %112 = icmp eq ptr %111, null
  br i1 %112, label %92, label %115, !llvm.loop !155

113:                                              ; preds = %101
  br i1 %89, label %115, label %114

114:                                              ; preds = %113
  tail call void @free(ptr noundef %87)
  br label %115

115:                                              ; preds = %104, %113, %114
  %116 = phi i32 [ %93, %114 ], [ %93, %113 ], [ %105, %104 ]
  %117 = phi ptr [ null, %114 ], [ null, %113 ], [ %87, %104 ]
  %118 = phi ptr [ null, %114 ], [ null, %113 ], [ %111, %104 ]
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %85, !llvm.loop !156

120:                                              ; preds = %115, %80
  tail call void @fold_undefer_and_ignore_overflow_warnings() #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @stmt_dominates_stmt_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !38 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = icmp eq ptr %4, null
  %8 = icmp eq ptr %0, %1
  %9 = or i1 %8, %7
  br i1 %9, label %51, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %4, %6
  br i1 %11, label %12, label %49

12:                                               ; preds = %10
  %13 = load i32, ptr %1, align 8
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %51, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %0, align 8
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %51, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !73, !noalias !157
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !50, !noalias !157
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !77, !noalias !157
  br label %31

31:                                               ; preds = %29, %25, %20
  %32 = phi ptr [ %30, %29 ], [ null, %25 ], [ null, %20 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !79, !noalias !157
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi ptr [ %35, %34 ], [ null, %31 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !81
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %51, label %40

40:                                               ; preds = %36, %44
  %41 = phi ptr [ %47, %44 ], [ %38, %36 ]
  %42 = phi ptr [ %46, %44 ], [ %37, %36 ]
  %43 = icmp eq ptr %41, %0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %42, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !83
  %47 = load ptr, ptr %46, align 8, !tbaa !81
  %48 = icmp eq ptr %47, %1
  br i1 %48, label %51, label %40, !llvm.loop !160

49:                                               ; preds = %10
  %50 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %6, ptr noundef nonnull %4) #17
  br label %51

51:                                               ; preds = %44, %40, %36, %12, %16, %2, %49
  %52 = phi i8 [ %50, %49 ], [ 1, %2 ], [ 0, %12 ], [ 1, %16 ], [ 0, %36 ], [ 1, %40 ], [ 0, %44 ]
  ret i8 %52
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @nowrap_type_p(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !38 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -6
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = and i64 %2, 2097152
  %9 = icmp eq i64 %8, 0
  %10 = load i32, ptr @flag_wrapv, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  %13 = load i32, ptr @flag_trapv, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  %16 = load i32, ptr @flag_strict_overflow, align 4
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %24, label %19

19:                                               ; preds = %1, %7
  %20 = add nsw i32 %4, -10
  %21 = and i32 %20, -3
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %19, %7
  %25 = phi i8 [ 1, %7 ], [ %23, %19 ]
  ret i8 %25
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @scev_probably_wraps_p(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #9 !prof !38 {
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %0) #17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %122

10:                                               ; preds = %5
  %11 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %1) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %122

13:                                               ; preds = %10
  %14 = tail call i32 @integer_zerop(ptr noundef %1) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %122

16:                                               ; preds = %13
  %17 = icmp eq i8 %4, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = tail call zeroext i8 @nowrap_type_p(ptr noundef %20), !range !92
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %122

23:                                               ; preds = %18, %16
  %24 = load i64, ptr %1, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 23
  br i1 %26, label %27, label %122

27:                                               ; preds = %23
  tail call void @fold_defer_overflow_warnings() #17
  %28 = tail call ptr @unsigned_type_for(ptr noundef %7) #17
  %29 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %28, ptr noundef %0) #17
  %30 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %1) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = tail call ptr @lower_bound_in_type(ptr noundef %7, ptr noundef %7) #17
  %34 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %28, ptr noundef %33) #17
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %28, ptr noundef %29, ptr noundef %34) #17
  %36 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %28, ptr noundef nonnull %1) #17
  %37 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %28, ptr noundef %36) #17
  br label %43

38:                                               ; preds = %27
  %39 = tail call ptr @upper_bound_in_type(ptr noundef %7, ptr noundef %7) #17
  %40 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %28, ptr noundef %39) #17
  %41 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %28, ptr noundef %40, ptr noundef %29) #17
  %42 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %28, ptr noundef nonnull %1) #17
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi ptr [ %37, %32 ], [ %42, %38 ]
  %45 = phi ptr [ %35, %32 ], [ %41, %38 ]
  %46 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 69, ptr noundef %28, ptr noundef %45, ptr noundef %44) #17
  tail call void @estimate_numbers_of_iterations_loop(ptr noundef %3)
  %47 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 17
  %48 = load ptr, ptr %47, align 8, !tbaa !39
  %49 = icmp eq ptr %48, null
  br i1 %49, label %120, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %52 = icmp eq ptr %2, null
  %53 = icmp eq ptr %2, null
  %54 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 4
  br label %59

55:                                               ; preds = %117
  %56 = getelementptr inbounds %struct.nb_iter_bound, ptr %60, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !39
  %58 = icmp eq ptr %57, null
  br i1 %58, label %120, label %59, !llvm.loop !161

59:                                               ; preds = %50, %55
  %60 = phi ptr [ %48, %50 ], [ %57, %55 ]
  %61 = getelementptr inbounds %struct.nb_iter_bound, ptr %60, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa.struct !135
  %63 = getelementptr inbounds %struct.nb_iter_bound, ptr %60, i64 0, i32 1, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa.struct !136
  %65 = load ptr, ptr %51, align 8, !tbaa !50
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 2097152
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3026, ptr noundef nonnull @.str.10) #17
  br label %70

70:                                               ; preds = %69, %59
  %71 = tail call zeroext i8 @double_int_fits_to_tree_p(ptr noundef nonnull %65, i64 %62, i64 %64) #17
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %117, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.nb_iter_bound, ptr %60, i64 0, i32 2
  %75 = load i8, ptr %74, align 8, !tbaa !139
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  br i1 %52, label %84, label %78

78:                                               ; preds = %77
  %79 = load ptr, ptr %60, align 8, !tbaa !137
  %80 = icmp eq ptr %79, %2
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = tail call zeroext i8 @stmt_dominates_stmt_p(ptr noundef %79, ptr noundef nonnull %2)
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %81, %78, %77
  br label %105

85:                                               ; preds = %73
  br i1 %53, label %95, label %86

86:                                               ; preds = %85
  %87 = load ptr, ptr %54, align 8, !tbaa !50
  %88 = load ptr, ptr %60, align 8, !tbaa !137
  %89 = getelementptr inbounds %struct.gimple_statement_base, ptr %88, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !50
  %91 = icmp eq ptr %87, %90
  br i1 %91, label %105, label %92

92:                                               ; preds = %86
  %93 = tail call zeroext i8 @stmt_dominates_stmt_p(ptr noundef %88, ptr noundef nonnull %2)
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92, %85
  %96 = tail call { i64, i64 } @double_int_add(i64 %62, i64 %64, i64 1, i64 0) #17
  %97 = extractvalue { i64, i64 } %96, 0
  %98 = extractvalue { i64, i64 } %96, 1
  %99 = icmp ne i64 %97, 0
  %100 = icmp ne i64 %98, 0
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = tail call zeroext i8 @double_int_fits_to_tree_p(ptr noundef nonnull %65, i64 %97, i64 %98) #17
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %102, %92, %86, %84, %81
  %106 = phi i32 [ 99, %84 ], [ 100, %81 ], [ 99, %102 ], [ 99, %92 ], [ 99, %86 ]
  %107 = phi i64 [ %62, %84 ], [ %62, %81 ], [ %97, %102 ], [ %62, %92 ], [ %62, %86 ]
  %108 = phi i64 [ %64, %84 ], [ %64, %81 ], [ %98, %102 ], [ %64, %92 ], [ %64, %86 ]
  %109 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %110 = tail call ptr @double_int_to_tree(ptr noundef nonnull %65, i64 %107, i64 %108) #17
  %111 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %106, ptr noundef %109, ptr noundef %46, ptr noundef %110) #17
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %105
  %114 = tail call i32 @integer_nonzerop(ptr noundef nonnull %111) #17
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i8
  br label %117

117:                                              ; preds = %102, %70, %95, %105, %113
  %118 = phi i8 [ 0, %70 ], [ 0, %95 ], [ 0, %105 ], [ %116, %113 ], [ 0, %102 ]
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %55, label %120

120:                                              ; preds = %55, %117, %43
  %121 = phi i8 [ 1, %43 ], [ 1, %55 ], [ 0, %117 ]
  tail call void @fold_undefer_and_ignore_overflow_warnings() #17
  br label %122

122:                                              ; preds = %120, %23, %18, %13, %5, %10
  %123 = phi i8 [ 1, %10 ], [ 1, %5 ], [ 0, %13 ], [ 0, %18 ], [ 1, %23 ], [ %121, %120 ]
  ret i8 %123
}

declare ptr @unsigned_type_for(ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_sign_bit(ptr noundef) local_unnamed_addr #3

declare ptr @lower_bound_in_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @upper_bound_in_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @free_numbers_of_iterations_estimates_loop(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !38 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 11
  store ptr null, ptr %2, align 8, !tbaa !162
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 16
  store i32 0, ptr %3, align 4, !tbaa !120
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.nb_iter_bound, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !141
  tail call void @ggc_free(ptr noundef nonnull %8) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !163

12:                                               ; preds = %7, %1
  store ptr null, ptr %4, align 8, !tbaa !140
  ret void
}

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @free_numbers_of_iterations_estimates() local_unnamed_addr #13 !prof !164 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !39
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = icmp eq ptr %3, null
  br i1 %4, label %80, label %5, !prof !165

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !143
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !165

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !145
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ 0, %5 ]
  %13 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %12, i64 noundef 8, i64 noundef 4) #17
  %14 = load ptr, ptr @cfun, align 8, !tbaa !39
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !142
  %17 = getelementptr inbounds %struct.loops, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !147
  br label %19

19:                                               ; preds = %32, %11
  %20 = phi ptr [ %18, %11 ], [ %33, %32 ]
  %21 = load i32, ptr %20, align 8, !tbaa !105
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %28, !prof !165

23:                                               ; preds = %19
  %24 = load i32, ptr %13, align 4, !tbaa !148
  %25 = add i32 %24, 1
  store i32 %25, ptr %13, align 4, !tbaa !148
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds %struct.VEC_int_base, ptr %13, i64 0, i32 2, i64 %26
  store i32 %21, ptr %27, align 4, !tbaa !54
  br label %28

28:                                               ; preds = %23, %19
  %29 = getelementptr inbounds %struct.loop, ptr %20, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !150
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32, !prof !166

32:                                               ; preds = %36, %28
  %33 = phi ptr [ %30, %28 ], [ %39, %36 ]
  br label %19, !llvm.loop !151

34:                                               ; preds = %55
  %35 = icmp eq ptr %13, null
  br label %58

36:                                               ; preds = %28, %55
  %37 = phi ptr [ %56, %55 ], [ %20, %28 ]
  %38 = getelementptr inbounds %struct.loop, ptr %37, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !152
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %32, !prof !166, !llvm.loop !151

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.loop, ptr %37, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !153
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !166

45:                                               ; preds = %41
  %46 = load i32, ptr %43, align 8, !tbaa !145
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %46, %45 ], [ 0, %41 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50, !prof !166

50:                                               ; preds = %47
  %51 = add i32 %48, -1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %43, i64 0, i32 2, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !39
  br label %55

55:                                               ; preds = %50, %47
  %56 = phi ptr [ %54, %50 ], [ null, %47 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %34, label %36, !prof !166, !llvm.loop !154

58:                                               ; preds = %34, %70
  %59 = phi i32 [ %72, %70 ], [ 0, %34 ]
  br i1 %35, label %67, label %60, !prof !165

60:                                               ; preds = %58
  %61 = load i32, ptr %13, align 4, !tbaa !148
  %62 = icmp ugt i32 %61, %59
  br i1 %62, label %63, label %67, !prof !165

63:                                               ; preds = %60
  %64 = zext i32 %59 to i64
  %65 = getelementptr inbounds %struct.VEC_int_base, ptr %13, i64 0, i32 2, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !54
  br label %67

67:                                               ; preds = %63, %60, %58
  %68 = phi i32 [ %66, %63 ], [ 0, %60 ], [ 0, %58 ]
  %69 = phi i1 [ false, %63 ], [ true, %60 ], [ true, %58 ]
  br i1 %69, label %78, label %70, !prof !166

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.loops, ptr %16, i64 0, i32 1
  %72 = add i32 %59, 1
  %73 = load ptr, ptr %71, align 8, !tbaa !143
  %74 = zext i32 %68 to i64
  %75 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %73, i64 0, i32 2, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !39
  %77 = icmp eq ptr %76, null
  br i1 %77, label %58, label %80, !llvm.loop !155

78:                                               ; preds = %67
  br i1 %35, label %80, label %79, !prof !165

79:                                               ; preds = %78
  tail call void @free(ptr noundef %13)
  br label %80

80:                                               ; preds = %70, %78, %79, %0
  %81 = phi i32 [ 0, %0 ], [ %59, %79 ], [ %59, %78 ], [ %72, %70 ]
  %82 = phi ptr [ null, %0 ], [ null, %79 ], [ null, %78 ], [ %13, %70 ]
  %83 = phi ptr [ null, %0 ], [ null, %79 ], [ null, %78 ], [ %76, %70 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %131, label %85, !prof !167

85:                                               ; preds = %80, %126
  %86 = phi ptr [ %129, %126 ], [ %83, %80 ]
  %87 = phi ptr [ %128, %126 ], [ %82, %80 ]
  %88 = phi i32 [ %127, %126 ], [ %81, %80 ]
  %89 = getelementptr inbounds %struct.loop, ptr %86, i64 0, i32 11
  store ptr null, ptr %89, align 8, !tbaa !162
  %90 = getelementptr inbounds %struct.loop, ptr %86, i64 0, i32 16
  store i32 0, ptr %90, align 4, !tbaa !120
  %91 = getelementptr inbounds %struct.loop, ptr %86, i64 0, i32 17
  %92 = load ptr, ptr %91, align 8, !tbaa !140
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %85, %94
  %95 = phi ptr [ %97, %94 ], [ %92, %85 ]
  %96 = getelementptr inbounds %struct.nb_iter_bound, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !141
  tail call void @ggc_free(ptr noundef nonnull %95) #17
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %94, !llvm.loop !163

99:                                               ; preds = %94, %85
  store ptr null, ptr %91, align 8, !tbaa !140
  %100 = icmp eq ptr %87, null
  %101 = load ptr, ptr @cfun, align 8
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 4
  br label %103

103:                                              ; preds = %115, %99
  %104 = phi i32 [ %88, %99 ], [ %116, %115 ]
  br i1 %100, label %112, label %105

105:                                              ; preds = %103
  %106 = load i32, ptr %87, align 4, !tbaa !148
  %107 = icmp ugt i32 %106, %104
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = zext i32 %104 to i64
  %110 = getelementptr inbounds %struct.VEC_int_base, ptr %87, i64 0, i32 2, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !54
  br label %112

112:                                              ; preds = %108, %105, %103
  %113 = phi i32 [ %111, %108 ], [ 0, %105 ], [ 0, %103 ]
  %114 = phi i1 [ false, %108 ], [ true, %105 ], [ true, %103 ]
  br i1 %114, label %124, label %115

115:                                              ; preds = %112
  %116 = add i32 %104, 1
  %117 = load ptr, ptr %102, align 8, !tbaa !142
  %118 = getelementptr inbounds %struct.loops, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !143
  %120 = zext i32 %113 to i64
  %121 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %119, i64 0, i32 2, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !39
  %123 = icmp eq ptr %122, null
  br i1 %123, label %103, label %126, !llvm.loop !155

124:                                              ; preds = %112
  br i1 %100, label %126, label %125

125:                                              ; preds = %124
  tail call void @free(ptr noundef %87)
  br label %126

126:                                              ; preds = %115, %124, %125
  %127 = phi i32 [ %104, %125 ], [ %104, %124 ], [ %116, %115 ]
  %128 = phi ptr [ null, %125 ], [ null, %124 ], [ %87, %115 ]
  %129 = phi ptr [ null, %125 ], [ null, %124 ], [ %122, %115 ]
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %85, !prof !167, !llvm.loop !168

131:                                              ; preds = %126, %80
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @substitute_in_loop_info(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !38 {
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !162
  %6 = tail call fastcc ptr @simplify_replace_tree(ptr noundef %5, ptr noundef %1, ptr noundef %2)
  store ptr %6, ptr %4, align 8, !tbaa !162
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @simplify_replace_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !38 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7, %5
  %11 = tail call ptr @unshare_expr(ptr noundef %2) #17
  br label %59

12:                                               ; preds = %7
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !54
  %17 = add i32 %16, -4
  %18 = icmp ult i32 %17, 7
  br i1 %18, label %19, label %59

19:                                               ; preds = %12
  %20 = icmp eq i32 %16, 9
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.tree_int_cst, ptr %23, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !50
  %26 = trunc i64 %25 to i32
  br label %31

27:                                               ; preds = %19
  %28 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %14
  %29 = load i8, ptr %28, align 1, !tbaa !50
  %30 = zext i8 %29 to i32
  br label %31

31:                                               ; preds = %21, %27
  %32 = phi i32 [ %26, %21 ], [ %30, %27 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %31
  %35 = zext i32 %32 to i64
  br label %36

36:                                               ; preds = %34, %50
  %37 = phi i64 [ 0, %34 ], [ %52, %50 ]
  %38 = phi ptr [ null, %34 ], [ %51, %50 ]
  %39 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = tail call fastcc ptr @simplify_replace_tree(ptr noundef %40, ptr noundef %1, ptr noundef %2)
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = icmp eq ptr %38, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #17
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi ptr [ %38, %43 ], [ %46, %45 ]
  %49 = getelementptr inbounds %struct.tree_exp, ptr %48, i64 0, i32 3, i64 %37
  store ptr %41, ptr %49, align 8, !tbaa !50
  br label %50

50:                                               ; preds = %36, %47
  %51 = phi ptr [ %38, %36 ], [ %48, %47 ]
  %52 = add nuw nsw i64 %37, 1
  %53 = icmp eq i64 %52, %35
  br i1 %53, label %54, label %36, !llvm.loop !169

54:                                               ; preds = %50, %31
  %55 = phi ptr [ null, %31 ], [ %51, %50 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = tail call ptr @fold(ptr noundef nonnull %55) #17
  br label %59

59:                                               ; preds = %57, %54, %12, %3, %10
  %60 = phi ptr [ %11, %10 ], [ null, %3 ], [ %0, %12 ], [ %58, %57 ], [ %0, %54 ]
  ret ptr %60
}

declare i32 @swap_tree_comparison(i32 noundef) local_unnamed_addr #3

declare ptr @fold_binary_to_constant(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_affine_iv(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !38 {
  %3 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = tail call i32 @integer_zerop(ptr noundef %4) #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @fputc(i32 91, ptr %0)
  br label %9

9:                                                ; preds = %7, %2
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %11 = load ptr, ptr %1, align 8, !tbaa !91
  tail call void @print_generic_expr(ptr noundef %10, ptr noundef %11, i32 noundef 2) #17
  %12 = load ptr, ptr %3, align 8, !tbaa !96
  %13 = tail call i32 @integer_zerop(ptr noundef %12) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 6, i64 1, ptr %0)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %18 = load ptr, ptr %3, align 8, !tbaa !96
  tail call void @print_generic_expr(ptr noundef %17, ptr noundef %18, i32 noundef 2) #17
  %19 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 2
  %20 = load i8, ptr %19, align 8, !tbaa !97
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, ptr @.str.32, ptr @.str.31
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull %22)
  br label %24

24:                                               ; preds = %15, %9
  ret void
}

declare i64 @mpz_out_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @number_of_iterations_ne(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #9 !prof !38 {
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  %8 = alloca [1 x %struct.__mpz_struct], align 16
  %9 = alloca [1 x %struct.__mpz_struct], align 16
  %10 = tail call ptr @unsigned_type_for(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #17
  %11 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !170
  %12 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 5
  store ptr %2, ptr %12, align 8, !tbaa !94
  %13 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 6
  store i32 102, ptr %13, align 8, !tbaa !95
  %14 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = tail call i32 @tree_int_cst_sign_bit(ptr noundef %15) #17
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %14, align 8, !tbaa !96
  br i1 %17, label %27, label %19

19:                                               ; preds = %6
  %20 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %0, ptr noundef %18) #17
  %21 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %10, ptr noundef %20) #17
  %22 = load ptr, ptr %1, align 8, !tbaa !91
  %23 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %10, ptr noundef %22) #17
  %24 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %10, ptr noundef %2) #17
  %25 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %10, ptr noundef %23, ptr noundef %24) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  %26 = getelementptr inbounds %struct.bounds, ptr %5, i64 0, i32 1
  call void @mpz_init_set(ptr noundef nonnull %8, ptr noundef nonnull %26) #17
  call void @mpz_neg(ptr noundef nonnull %26, ptr noundef %5) #17
  call void @mpz_neg(ptr noundef %5, ptr noundef nonnull %8) #17
  call void @mpz_clear(ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  br label %33

27:                                               ; preds = %6
  %28 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %10, ptr noundef %18) #17
  %29 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %10, ptr noundef %2) #17
  %30 = load ptr, ptr %1, align 8, !tbaa !91
  %31 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %10, ptr noundef %30) #17
  %32 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %10, ptr noundef %29, ptr noundef %31) #17
  br label %33

33:                                               ; preds = %27, %19
  %34 = phi ptr [ %25, %19 ], [ %32, %27 ]
  %35 = phi ptr [ %21, %19 ], [ %28, %27 ]
  call void @mpz_init(ptr noundef nonnull %9) #17
  %36 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 2
  %37 = load i8, ptr %36, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  %42 = call i32 @multiple_of_p(ptr noundef %41, ptr noundef %34, ptr noundef %35) #17
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load ptr, ptr %40, align 8, !tbaa !50
  %46 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1023
  %49 = call ptr @num_ending_zeros(ptr noundef %35) #17
  %50 = call i64 @tree_low_cst(ptr noundef %49, i32 noundef 1) #17
  %51 = trunc i64 %50 to i32
  %52 = sub i32 %48, %51
  %53 = call { i64, i64 } @double_int_mask(i32 noundef %52) #17
  %54 = extractvalue { i64, i64 } %53, 0
  %55 = extractvalue { i64, i64 } %53, 1
  call void @mpz_set_double_int(ptr noundef nonnull %9, i64 %54, i64 %55, i8 noundef zeroext 1) #17
  br label %81

56:                                               ; preds = %39
  %57 = call i32 @mpz_sgn(ptr noundef %5) #17
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56, %33
  %60 = getelementptr inbounds %struct.bounds, ptr %5, i64 0, i32 1
  call void @mpz_set(ptr noundef nonnull %9, ptr noundef nonnull %60) #17
  br label %77

61:                                               ; preds = %56
  %62 = load i64, ptr %34, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 23
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %34) #17
  %67 = extractvalue { i64, i64 } %66, 0
  %68 = extractvalue { i64, i64 } %66, 1
  call void @mpz_set_double_int(ptr noundef nonnull %9, i64 %67, i64 %68, i8 noundef zeroext 1) #17
  br label %77

69:                                               ; preds = %61
  %70 = load ptr, ptr %40, align 8, !tbaa !50
  %71 = getelementptr inbounds %struct.tree_type, ptr %70, i64 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 1023
  %74 = call { i64, i64 } @double_int_mask(i32 noundef %73) #17
  %75 = extractvalue { i64, i64 } %74, 0
  %76 = extractvalue { i64, i64 } %74, 1
  call void @mpz_set_double_int(ptr noundef nonnull %9, i64 %75, i64 %76, i8 noundef zeroext 1) #17
  br label %77

77:                                               ; preds = %69, %65, %59
  call void @mpz_init(ptr noundef nonnull %7) #17
  %78 = call { i64, i64 } @tree_to_double_int(ptr noundef %35) #17
  %79 = extractvalue { i64, i64 } %78, 0
  %80 = extractvalue { i64, i64 } %78, 1
  call void @mpz_set_double_int(ptr noundef nonnull %7, i64 %79, i64 %80, i8 noundef zeroext 1) #17
  call void @mpz_fdiv_q(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %7) #17
  call void @mpz_clear(ptr noundef nonnull %7) #17
  br label %81

81:                                               ; preds = %44, %77
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  %82 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3
  %83 = call { i64, i64 } @mpz_get_double_int(ptr noundef %10, ptr noundef nonnull %9, i8 noundef zeroext 0) #17
  %84 = extractvalue { i64, i64 } %83, 0
  %85 = extractvalue { i64, i64 } %83, 1
  store i64 %84, ptr %82, align 8, !tbaa.struct !135
  %86 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3, i32 1
  store i64 %85, ptr %86, align 8, !tbaa.struct !136
  call void @mpz_clear(ptr noundef nonnull %9) #17
  %87 = call i32 @integer_onep(ptr noundef %35) #17
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %164

89:                                               ; preds = %81
  %90 = call ptr @num_ending_zeros(ptr noundef %35) #17
  %91 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 1023
  %94 = call i64 @tree_low_cst(ptr noundef %90, i32 noundef 1) #17
  %95 = trunc i64 %94 to i32
  %96 = sub i32 %93, %95
  %97 = call ptr @build_low_bits_mask(ptr noundef %10, i32 noundef %96) #17
  %98 = call ptr @build_int_cst(ptr noundef %10, i64 noundef 1) #17
  %99 = call ptr @fold_binary_to_constant(i32 noundef 83, ptr noundef %10, ptr noundef %98, ptr noundef %90) #17
  %100 = call ptr @fold_binary_to_constant(i32 noundef 84, ptr noundef %10, ptr noundef %35, ptr noundef %90) #17
  %101 = icmp eq i8 %4, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %89
  %103 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 73, ptr noundef %10, ptr noundef %34, ptr noundef %99) #17
  %104 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %105 = call ptr @build_int_cst(ptr noundef %10, i64 noundef 0) #17
  %106 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 101, ptr noundef %104, ptr noundef %103, ptr noundef %105) #17
  %107 = call i32 @integer_nonzerop(ptr noundef %106) #17
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %111 = load ptr, ptr %3, align 8, !tbaa !87
  %112 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %110, ptr noundef %111, ptr noundef %106) #17
  store ptr %112, ptr %3, align 8, !tbaa !87
  br label %113

113:                                              ; preds = %102, %109, %89
  %114 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 76, ptr noundef %10, ptr noundef %34, ptr noundef %99) #17
  %115 = getelementptr inbounds %struct.tree_common, ptr %100, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !50
  %117 = call i32 @tree_floor_log2(ptr noundef %97) #17
  %118 = getelementptr inbounds %struct.tree_type, ptr %116, i64 0, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 1023
  %121 = icmp ult i32 %120, 65
  br i1 %121, label %122, label %146

122:                                              ; preds = %113
  %123 = call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %100) #17
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 509, ptr noundef nonnull @.str.10) #17
  br label %126

126:                                              ; preds = %125, %122
  %127 = call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %97) #17
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 510, ptr noundef nonnull @.str.10) #17
  br label %130

130:                                              ; preds = %129, %126
  %131 = call i64 @int_cst_value(ptr noundef %100) #17
  %132 = call i64 @int_cst_value(ptr noundef %97) #17
  %133 = icmp eq i32 %117, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %130, %134
  %135 = phi i64 [ %138, %134 ], [ 1, %130 ]
  %136 = phi i64 [ %139, %134 ], [ %131, %130 ]
  %137 = phi i32 [ %140, %134 ], [ %117, %130 ]
  %138 = mul i64 %135, %136
  %139 = mul i64 %136, %136
  %140 = add i32 %137, -1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %134, !llvm.loop !171

142:                                              ; preds = %134, %130
  %143 = phi i64 [ 1, %130 ], [ %138, %134 ]
  %144 = and i64 %143, %132
  %145 = call ptr @build_int_cst_type(ptr noundef %116, i64 noundef %144) #17
  br label %160

146:                                              ; preds = %113
  %147 = call ptr @build_int_cst(ptr noundef %116, i64 noundef 1) #17
  %148 = icmp eq i32 %117, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %146, %149
  %150 = phi ptr [ %154, %149 ], [ %100, %146 ]
  %151 = phi i32 [ %155, %149 ], [ %117, %146 ]
  %152 = phi ptr [ %153, %149 ], [ %147, %146 ]
  %153 = call ptr @int_const_binop(i32 noundef 65, ptr noundef %152, ptr noundef %150, i32 noundef 0) #17
  %154 = call ptr @int_const_binop(i32 noundef 65, ptr noundef %150, ptr noundef %150, i32 noundef 0) #17
  %155 = add i32 %151, -1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %149, !llvm.loop !172

157:                                              ; preds = %149, %146
  %158 = phi ptr [ %147, %146 ], [ %153, %149 ]
  %159 = call ptr @int_const_binop(i32 noundef 89, ptr noundef %158, ptr noundef %97, i32 noundef 0) #17
  br label %160

160:                                              ; preds = %142, %157
  %161 = phi ptr [ %145, %142 ], [ %159, %157 ]
  %162 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %10, ptr noundef %114, ptr noundef %161) #17
  %163 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %10, ptr noundef %162, ptr noundef %97) #17
  br label %164

164:                                              ; preds = %81, %160
  %165 = phi ptr [ %163, %160 ], [ %34, %81 ]
  %166 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 2
  store ptr %165, ptr %166, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @number_of_iterations_lt(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #9 !prof !38 {
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  %8 = alloca [1 x %struct.__mpz_struct], align 16
  %9 = alloca [1 x %struct.__mpz_struct], align 16
  %10 = alloca [1 x %struct.__mpz_struct], align 16
  %11 = alloca [1 x %struct.__mpz_struct], align 16
  %12 = alloca %struct.affine_iv, align 8
  %13 = tail call ptr @unsigned_type_for(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #17
  %14 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = tail call i32 @integer_nonzerop(ptr noundef %15) #17
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 4
  %19 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 6
  %20 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 5
  %21 = select i1 %17, ptr %2, ptr %1
  %22 = select i1 %17, i32 99, i32 97
  %23 = select i1 %17, ptr %1, ptr %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false)
  store i32 %22, ptr %19, align 8, !tbaa !95
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  store ptr %24, ptr %20, align 8, !tbaa !94
  %25 = load ptr, ptr %2, align 8, !tbaa !91
  %26 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %13, ptr noundef %25) #17
  %27 = load ptr, ptr %1, align 8, !tbaa !91
  %28 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %13, ptr noundef %27) #17
  %29 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %13, ptr noundef %26, ptr noundef %28) #17
  %30 = load ptr, ptr %14, align 8, !tbaa !96
  %31 = tail call i32 @integer_onep(ptr noundef %30) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !96
  %36 = tail call i32 @integer_zerop(ptr noundef %35) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33, %6
  %39 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !96
  %41 = tail call i32 @integer_all_onesp(ptr noundef %40) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %14, align 8, !tbaa !96
  %45 = tail call i32 @integer_zerop(ptr noundef %44) #17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %43, %33
  %48 = tail call i32 @mpz_sgn(ptr noundef %5) #17
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %52 = load ptr, ptr %2, align 8, !tbaa !91
  %53 = load ptr, ptr %1, align 8, !tbaa !91
  %54 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 97, ptr noundef %51, ptr noundef %52, ptr noundef %53) #17
  %55 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !93
  br label %56

56:                                               ; preds = %50, %47
  %57 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 2
  store ptr %29, ptr %57, align 8, !tbaa !98
  %58 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3
  %59 = getelementptr inbounds %struct.bounds, ptr %5, i64 0, i32 1
  %60 = tail call { i64, i64 } @mpz_get_double_int(ptr noundef %13, ptr noundef nonnull %59, i8 noundef zeroext 0) #17
  %61 = extractvalue { i64, i64 } %60, 0
  %62 = extractvalue { i64, i64 } %60, 1
  store i64 %61, ptr %58, align 8, !tbaa.struct !135
  %63 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3, i32 1
  store i64 %62, ptr %63, align 8, !tbaa.struct !136
  br label %425

64:                                               ; preds = %43, %38
  %65 = load ptr, ptr %14, align 8, !tbaa !96
  %66 = tail call i32 @integer_nonzerop(ptr noundef %65) #17
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %14, align 8, !tbaa !96
  br label %73

70:                                               ; preds = %64
  %71 = load ptr, ptr %39, align 8, !tbaa !96
  %72 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %0, ptr noundef %71) #17
  br label %73

73:                                               ; preds = %70, %68
  %74 = phi ptr [ %72, %70 ], [ %69, %68 ]
  %75 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %13, ptr noundef %74) #17
  %76 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !50
  %78 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 73, ptr noundef %77, ptr noundef %29, ptr noundef %75) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #17
  %79 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !39
  %80 = load i64, ptr %0, align 8
  %81 = trunc i64 %80 to i16
  switch i16 %81, label %84 [
    i16 10, label %82
    i16 12, label %82
  ]

82:                                               ; preds = %73, %73
  %83 = load ptr, ptr @sizetype_tab, align 16, !tbaa !39
  br label %84

84:                                               ; preds = %82, %73
  %85 = phi ptr [ %83, %82 ], [ %0, %73 ]
  %86 = load i64, ptr %78, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 23
  br i1 %88, label %89, label %216

89:                                               ; preds = %84
  %90 = tail call i32 @integer_nonzerop(ptr noundef nonnull %78) #17
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %77, ptr noundef %75, ptr noundef nonnull %78) #17
  br label %94

94:                                               ; preds = %92, %89
  %95 = phi ptr [ %93, %92 ], [ %78, %89 ]
  %96 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %85, ptr noundef %95) #17
  call void @mpz_init(ptr noundef nonnull %9) #17
  %97 = call { i64, i64 } @tree_to_double_int(ptr noundef %95) #17
  %98 = extractvalue { i64, i64 } %97, 0
  %99 = extractvalue { i64, i64 } %97, 1
  call void @mpz_set_double_int(ptr noundef nonnull %9, i64 %98, i64 %99, i8 noundef zeroext 1) #17
  call void @mpz_neg(ptr noundef nonnull %9, ptr noundef nonnull %9) #17
  %100 = call i32 @integer_zerop(ptr noundef %95) #17
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %94
  %103 = load i64, ptr %0, align 8
  %104 = trunc i64 %103 to i16
  switch i16 %104, label %105 [
    i16 10, label %123
    i16 12, label %123
  ]

105:                                              ; preds = %102
  %106 = icmp eq i8 %4, 0
  br i1 %106, label %123, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 2
  %109 = load i8, ptr %108, align 8, !tbaa !97
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %14, align 8, !tbaa !96
  %113 = call i32 @integer_nonzerop(ptr noundef %112) #17
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %111, %107
  %116 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 2
  %117 = load i8, ptr %116, align 8, !tbaa !97
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %39, align 8, !tbaa !96
  %121 = call i32 @integer_nonzerop(ptr noundef %120) #17
  %122 = icmp eq i32 %121, 0
  br label %123

123:                                              ; preds = %115, %102, %119, %111, %105, %102, %94
  %124 = phi i1 [ false, %102 ], [ false, %94 ], [ true, %105 ], [ false, %111 ], [ %122, %119 ], [ false, %102 ], [ true, %115 ]
  %125 = load ptr, ptr %14, align 8, !tbaa !96
  %126 = call i32 @integer_nonzerop(ptr noundef %125) #17
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %159, label %128

128:                                              ; preds = %123
  br i1 %124, label %129, label %138

129:                                              ; preds = %128
  %130 = getelementptr inbounds %struct.tree_type, ptr %85, i64 0, i32 14
  %131 = load ptr, ptr %130, align 8, !tbaa !50
  %132 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %85, ptr noundef %131, ptr noundef %96) #17
  %133 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %134 = load ptr, ptr %2, align 8, !tbaa !91
  %135 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %133, ptr noundef %134, ptr noundef %132) #17
  %136 = call i32 @integer_zerop(ptr noundef %135) #17
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %213

138:                                              ; preds = %129, %128
  %139 = phi ptr [ %79, %128 ], [ %135, %129 ]
  %140 = call i32 @mpz_cmp(ptr noundef nonnull %9, ptr noundef %5) #17
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !39
  br label %191

144:                                              ; preds = %138
  %145 = load i64, ptr %0, align 8
  %146 = trunc i64 %145 to i16
  switch i16 %146, label %153 [
    i16 10, label %147
    i16 12, label %147
  ]

147:                                              ; preds = %144, %144
  %148 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %149 = load ptr, ptr %1, align 8, !tbaa !91
  %150 = load ptr, ptr %2, align 8, !tbaa !91
  %151 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %0, ptr noundef %150, ptr noundef %96) #17
  %152 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %148, ptr noundef %149, ptr noundef %151) #17
  br label %191

153:                                              ; preds = %144
  %154 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %155 = load ptr, ptr %1, align 8, !tbaa !91
  %156 = load ptr, ptr %2, align 8, !tbaa !91
  %157 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %85, ptr noundef %156, ptr noundef %96) #17
  %158 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %154, ptr noundef %155, ptr noundef %157) #17
  br label %191

159:                                              ; preds = %123
  br i1 %124, label %160, label %169

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.tree_type, ptr %85, i64 0, i32 13
  %162 = load ptr, ptr %161, align 8, !tbaa !50
  %163 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %85, ptr noundef %162, ptr noundef %96) #17
  %164 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %165 = load ptr, ptr %1, align 8, !tbaa !91
  %166 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 100, ptr noundef %164, ptr noundef %165, ptr noundef %163) #17
  %167 = call i32 @integer_zerop(ptr noundef %166) #17
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %213

169:                                              ; preds = %160, %159
  %170 = phi ptr [ %79, %159 ], [ %166, %160 ]
  %171 = call i32 @mpz_cmp(ptr noundef nonnull %9, ptr noundef %5) #17
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !39
  br label %191

175:                                              ; preds = %169
  %176 = load i64, ptr %0, align 8
  %177 = trunc i64 %176 to i16
  switch i16 %177, label %185 [
    i16 10, label %178
    i16 12, label %178
  ]

178:                                              ; preds = %175, %175
  %179 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %180 = load ptr, ptr %1, align 8, !tbaa !91
  %181 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %85, ptr noundef %96) #17
  %182 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %0, ptr noundef %180, ptr noundef %181) #17
  %183 = load ptr, ptr %2, align 8, !tbaa !91
  %184 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %179, ptr noundef %182, ptr noundef %183) #17
  br label %191

185:                                              ; preds = %175
  %186 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %187 = load ptr, ptr %1, align 8, !tbaa !91
  %188 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %85, ptr noundef %187, ptr noundef %96) #17
  %189 = load ptr, ptr %2, align 8, !tbaa !91
  %190 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %186, ptr noundef %188, ptr noundef %189) #17
  br label %191

191:                                              ; preds = %185, %178, %173, %153, %147, %142
  %192 = phi ptr [ %143, %142 ], [ %152, %147 ], [ %158, %153 ], [ %174, %173 ], [ %184, %178 ], [ %190, %185 ]
  %193 = phi ptr [ %139, %142 ], [ %139, %147 ], [ %139, %153 ], [ %170, %173 ], [ %170, %178 ], [ %170, %185 ]
  %194 = call i32 @integer_nonzerop(ptr noundef %193) #17
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %198 = load ptr, ptr %3, align 8, !tbaa !87
  %199 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %197, ptr noundef %198, ptr noundef %193) #17
  store ptr %199, ptr %3, align 8, !tbaa !87
  br label %200

200:                                              ; preds = %196, %191
  %201 = call i32 @integer_zerop(ptr noundef %192) #17
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %205 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !93
  %207 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 94, ptr noundef %204, ptr noundef %206, ptr noundef %192) #17
  store ptr %207, ptr %205, align 8, !tbaa !93
  br label %208

208:                                              ; preds = %203, %200
  %209 = call { i64, i64 } @tree_to_double_int(ptr noundef %95) #17
  %210 = extractvalue { i64, i64 } %209, 0
  %211 = extractvalue { i64, i64 } %209, 1
  call fastcc void @bounds_add(ptr noundef %5, i64 %210, i64 %211, ptr noundef nonnull %0)
  %212 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %77, ptr noundef %29, ptr noundef %95) #17
  br label %213

213:                                              ; preds = %208, %160, %129
  %214 = phi ptr [ %212, %208 ], [ %29, %160 ], [ %29, %129 ]
  %215 = phi i8 [ 1, %208 ], [ 0, %160 ], [ 0, %129 ]
  call void @mpz_clear(ptr noundef nonnull %9) #17
  br label %216

216:                                              ; preds = %84, %213
  %217 = phi ptr [ %214, %213 ], [ %29, %84 ]
  %218 = phi i8 [ %215, %213 ], [ 0, %84 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #17
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #17
  %221 = call ptr @build_int_cst(ptr noundef %13, i64 noundef 0) #17
  store ptr %221, ptr %12, align 8, !tbaa !91
  %222 = getelementptr inbounds %struct.affine_iv, ptr %12, i64 0, i32 1
  store ptr %75, ptr %222, align 8, !tbaa !96
  %223 = getelementptr inbounds %struct.affine_iv, ptr %12, i64 0, i32 2
  store i8 1, ptr %223, align 8, !tbaa !97
  call fastcc void @number_of_iterations_ne(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %217, ptr noundef %3, i8 noundef zeroext 1, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #17
  br label %425

224:                                              ; preds = %216
  %225 = load ptr, ptr %76, align 8, !tbaa !50
  %226 = load ptr, ptr %14, align 8, !tbaa !96
  %227 = call i32 @integer_nonzerop(ptr noundef %226) #17
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %252, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 2
  %231 = load i8, ptr %230, align 8, !tbaa !97
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %298

233:                                              ; preds = %229
  %234 = load ptr, ptr %1, align 8, !tbaa !91
  %235 = load i64, ptr %234, align 8
  %236 = and i64 %235, 65535
  %237 = icmp eq i64 %236, 23
  br i1 %237, label %238, label %246

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %240 = load ptr, ptr %239, align 8, !tbaa !50
  %241 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %225, ptr noundef %240) #17
  %242 = load ptr, ptr %1, align 8, !tbaa !91
  %243 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %225, ptr noundef %242) #17
  %244 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %225, ptr noundef %241, ptr noundef %243) #17
  %245 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 73, ptr noundef %225, ptr noundef %244, ptr noundef %75) #17
  br label %249

246:                                              ; preds = %233
  %247 = call ptr @build_int_cst(ptr noundef %225, i64 noundef 1) #17
  %248 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %225, ptr noundef %75, ptr noundef %247) #17
  br label %249

249:                                              ; preds = %246, %238
  %250 = phi ptr [ %245, %238 ], [ %248, %246 ]
  %251 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  br label %274

252:                                              ; preds = %224
  %253 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 2
  %254 = load i8, ptr %253, align 8, !tbaa !97
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %298

256:                                              ; preds = %252
  %257 = load ptr, ptr %2, align 8, !tbaa !91
  %258 = load i64, ptr %257, align 8
  %259 = and i64 %258, 65535
  %260 = icmp eq i64 %259, 23
  br i1 %260, label %261, label %268

261:                                              ; preds = %256
  %262 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %225, ptr noundef nonnull %257) #17
  %263 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %264 = load ptr, ptr %263, align 8, !tbaa !50
  %265 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %225, ptr noundef %264) #17
  %266 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %225, ptr noundef %262, ptr noundef %265) #17
  %267 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 73, ptr noundef %225, ptr noundef %266, ptr noundef %75) #17
  br label %271

268:                                              ; preds = %256
  %269 = call ptr @build_int_cst(ptr noundef %225, i64 noundef 1) #17
  %270 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %225, ptr noundef %75, ptr noundef %269) #17
  br label %271

271:                                              ; preds = %268, %261
  %272 = phi ptr [ %267, %261 ], [ %270, %268 ]
  %273 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  br label %274

274:                                              ; preds = %271, %249
  %275 = phi ptr [ %273, %271 ], [ %251, %249 ]
  %276 = phi ptr [ %272, %271 ], [ %250, %249 ]
  %277 = phi i32 [ 63, %271 ], [ 64, %249 ]
  %278 = phi ptr [ %1, %271 ], [ %2, %249 ]
  %279 = phi i32 [ 100, %271 ], [ 98, %249 ]
  %280 = load ptr, ptr %275, align 8, !tbaa !50
  %281 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %276) #17
  %282 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %277, ptr noundef %0, ptr noundef %280, ptr noundef %281) #17
  %283 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %284 = load ptr, ptr %278, align 8, !tbaa !91
  %285 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %279, ptr noundef %283, ptr noundef %284, ptr noundef %282) #17
  %286 = call i32 @integer_zerop(ptr noundef %285) #17
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %425

288:                                              ; preds = %274
  %289 = call i32 @integer_nonzerop(ptr noundef %285) #17
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %288
  %292 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %293 = load ptr, ptr %3, align 8, !tbaa !87
  %294 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %292, ptr noundef %293, ptr noundef %285) #17
  store ptr %294, ptr %3, align 8, !tbaa !87
  br label %295

295:                                              ; preds = %291, %288
  %296 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 2
  store i8 1, ptr %296, align 8, !tbaa !97
  %297 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 2
  store i8 1, ptr %297, align 8, !tbaa !97
  br label %298

298:                                              ; preds = %252, %229, %295
  %299 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  %300 = load ptr, ptr %14, align 8, !tbaa !96
  %301 = call i32 @integer_nonzerop(ptr noundef %300) #17
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %298
  %304 = load ptr, ptr %14, align 8, !tbaa !96
  %305 = call { i64, i64 } @tree_to_double_int(ptr noundef %304) #17
  br label %318

306:                                              ; preds = %298
  %307 = load ptr, ptr %39, align 8, !tbaa !96
  %308 = call { i64, i64 } @tree_to_double_int(ptr noundef %307) #17
  %309 = extractvalue { i64, i64 } %308, 0
  %310 = extractvalue { i64, i64 } %308, 1
  %311 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %312 = load i32, ptr %311, align 4
  %313 = and i32 %312, 1023
  %314 = call { i64, i64 } @double_int_sext(i64 %309, i64 %310, i32 noundef %313) #17
  %315 = extractvalue { i64, i64 } %314, 0
  %316 = extractvalue { i64, i64 } %314, 1
  %317 = call { i64, i64 } @double_int_neg(i64 %315, i64 %316) #17
  br label %318

318:                                              ; preds = %306, %303
  %319 = phi { i64, i64 } [ %305, %303 ], [ %317, %306 ]
  %320 = extractvalue { i64, i64 } %319, 1
  %321 = extractvalue { i64, i64 } %319, 0
  call void @mpz_init(ptr noundef nonnull %7) #17
  call void @mpz_set_double_int(ptr noundef nonnull %7, i64 %321, i64 %320, i8 noundef zeroext 1) #17
  call void @mpz_neg(ptr noundef nonnull %7, ptr noundef nonnull %7) #17
  call void @mpz_add_ui(ptr noundef nonnull %7, ptr noundef nonnull %7, i64 noundef 1) #17
  %322 = call i32 @mpz_cmp(ptr noundef nonnull %7, ptr noundef %5) #17
  %323 = icmp slt i32 %322, 1
  call void @mpz_init(ptr noundef nonnull %8) #17
  %324 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %325 = load i32, ptr %324, align 4
  %326 = and i32 %325, 1023
  %327 = call { i64, i64 } @double_int_mask(i32 noundef %326) #17
  %328 = extractvalue { i64, i64 } %327, 0
  %329 = extractvalue { i64, i64 } %327, 1
  call void @mpz_set_double_int(ptr noundef nonnull %8, i64 %328, i64 %329, i8 noundef zeroext 1) #17
  call void @mpz_add(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %7) #17
  %330 = getelementptr inbounds %struct.bounds, ptr %5, i64 0, i32 1
  %331 = call i32 @mpz_cmp(ptr noundef nonnull %330, ptr noundef nonnull %8) #17
  %332 = icmp slt i32 %331, 1
  br i1 %332, label %340, label %333

333:                                              ; preds = %318
  %334 = load i64, ptr %0, align 8
  %335 = trunc i64 %334 to i32
  %336 = and i32 %335, 65535
  %337 = icmp eq i32 %336, 10
  %338 = icmp eq i32 %336, 12
  %339 = or i1 %337, %338
  br label %340

340:                                              ; preds = %333, %318
  %341 = phi i1 [ true, %318 ], [ %339, %333 ]
  call void @mpz_clear(ptr noundef nonnull %7) #17
  call void @mpz_clear(ptr noundef nonnull %8) #17
  %342 = and i1 %323, %341
  br i1 %342, label %411, label %343

343:                                              ; preds = %340
  %344 = load i64, ptr %0, align 8
  %345 = trunc i64 %344 to i16
  switch i16 %345, label %348 [
    i16 10, label %346
    i16 12, label %346
  ]

346:                                              ; preds = %343, %343
  %347 = load ptr, ptr @sizetype_tab, align 16, !tbaa !39
  br label %348

348:                                              ; preds = %346, %343
  %349 = phi ptr [ %347, %346 ], [ %0, %343 ]
  %350 = load ptr, ptr %14, align 8, !tbaa !96
  %351 = call i32 @integer_nonzerop(ptr noundef %350) #17
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %373, label %353

353:                                              ; preds = %348
  %354 = load ptr, ptr %14, align 8, !tbaa !96
  %355 = call ptr @build_int_cst(ptr noundef %349, i64 noundef 1) #17
  %356 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %349, ptr noundef %354, ptr noundef %355) #17
  %357 = load i64, ptr %0, align 8
  %358 = trunc i64 %357 to i16
  switch i16 %358, label %359 [
    i16 10, label %366
    i16 12, label %366
  ]

359:                                              ; preds = %353
  %360 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %361 = load ptr, ptr %360, align 8, !tbaa !50
  %362 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %349, ptr noundef %361, ptr noundef %356) #17
  %363 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %364 = load ptr, ptr %1, align 8, !tbaa !91
  %365 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 100, ptr noundef %363, ptr noundef %364, ptr noundef %362) #17
  br label %366

366:                                              ; preds = %353, %359, %353
  %367 = phi ptr [ %365, %359 ], [ %299, %353 ], [ %299, %353 ]
  %368 = load ptr, ptr %1, align 8, !tbaa !91
  %369 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %349, ptr noundef %368) #17
  %370 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %349, ptr noundef %369, ptr noundef %356) #17
  %371 = load ptr, ptr %2, align 8, !tbaa !91
  %372 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %349, ptr noundef %371) #17
  br label %393

373:                                              ; preds = %348
  %374 = load ptr, ptr %39, align 8, !tbaa !96
  %375 = call ptr @build_int_cst(ptr noundef %349, i64 noundef 1) #17
  %376 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %349, ptr noundef %374, ptr noundef %375) #17
  %377 = load i64, ptr %0, align 8
  %378 = trunc i64 %377 to i16
  switch i16 %378, label %379 [
    i16 10, label %386
    i16 12, label %386
  ]

379:                                              ; preds = %373
  %380 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %381 = load ptr, ptr %380, align 8, !tbaa !50
  %382 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %349, ptr noundef %381, ptr noundef %376) #17
  %383 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %384 = load ptr, ptr %2, align 8, !tbaa !91
  %385 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %383, ptr noundef %384, ptr noundef %382) #17
  br label %386

386:                                              ; preds = %373, %379, %373
  %387 = phi ptr [ %385, %379 ], [ %299, %373 ], [ %299, %373 ]
  %388 = load ptr, ptr %1, align 8, !tbaa !91
  %389 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %349, ptr noundef %388) #17
  %390 = load ptr, ptr %2, align 8, !tbaa !91
  %391 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %349, ptr noundef %390) #17
  %392 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %349, ptr noundef %391, ptr noundef %376) #17
  br label %393

393:                                              ; preds = %386, %366
  %394 = phi ptr [ %372, %366 ], [ %392, %386 ]
  %395 = phi ptr [ %370, %366 ], [ %389, %386 ]
  %396 = phi ptr [ %367, %366 ], [ %387, %386 ]
  %397 = call i32 @integer_nonzerop(ptr noundef %396) #17
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %393
  %400 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %401 = load ptr, ptr %3, align 8, !tbaa !87
  %402 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %400, ptr noundef %401, ptr noundef %396) #17
  store ptr %402, ptr %3, align 8, !tbaa !87
  br label %403

403:                                              ; preds = %399, %393
  br i1 %323, label %411, label %404

404:                                              ; preds = %403
  %405 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %406 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %405, ptr noundef %395, ptr noundef %394) #17
  %407 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %408 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  %409 = load ptr, ptr %408, align 8, !tbaa !93
  %410 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 94, ptr noundef %407, ptr noundef %409, ptr noundef %406) #17
  store ptr %410, ptr %408, align 8, !tbaa !93
  br label %411

411:                                              ; preds = %340, %403, %404
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  %412 = call ptr @build_int_cst(ptr noundef %13, i64 noundef 1) #17
  %413 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %13, ptr noundef %75, ptr noundef %412) #17
  %414 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %13, ptr noundef %217, ptr noundef %413) #17
  %415 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 69, ptr noundef %13, ptr noundef %414, ptr noundef %75) #17
  %416 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 2
  store ptr %415, ptr %416, align 8, !tbaa !98
  call void @mpz_init(ptr noundef nonnull %10) #17
  call void @mpz_init(ptr noundef nonnull %11) #17
  %417 = call { i64, i64 } @tree_to_double_int(ptr noundef %75) #17
  %418 = extractvalue { i64, i64 } %417, 0
  %419 = extractvalue { i64, i64 } %417, 1
  call void @mpz_set_double_int(ptr noundef nonnull %10, i64 %418, i64 %419, i8 noundef zeroext 1) #17
  call void @mpz_add(ptr noundef nonnull %11, ptr noundef nonnull %330, ptr noundef nonnull %10) #17
  call void @mpz_sub_ui(ptr noundef nonnull %11, ptr noundef nonnull %11, i64 noundef 1) #17
  call void @mpz_fdiv_q(ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull %10) #17
  %420 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3
  %421 = call { i64, i64 } @mpz_get_double_int(ptr noundef %13, ptr noundef nonnull %11, i8 noundef zeroext 0) #17
  %422 = extractvalue { i64, i64 } %421, 0
  %423 = extractvalue { i64, i64 } %421, 1
  store i64 %422, ptr %420, align 8, !tbaa.struct !135
  %424 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3, i32 1
  store i64 %423, ptr %424, align 8, !tbaa.struct !136
  call void @mpz_clear(ptr noundef nonnull %10) #17
  call void @mpz_clear(ptr noundef nonnull %11) #17
  br label %425

425:                                              ; preds = %274, %411, %220, %56
  %426 = phi i8 [ 1, %56 ], [ 1, %220 ], [ 1, %411 ], [ 0, %274 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #17
  ret i8 %426
}

declare void @mpz_clear(ptr noundef) local_unnamed_addr #3

declare void @dump_double_int(ptr noundef, i64, i64, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @tree_strip_sign_nop_conversions(ptr noundef) local_unnamed_addr #3

declare void @mpz_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @split_to_var_and_offset(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #9 !prof !38 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  store ptr %0, ptr %1, align 8, !tbaa !39
  tail call void @mpz_set_ui(ptr noundef %2, i64 noundef 0) #17
  %6 = load i64, ptr %0, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %44 [
    i16 64, label %8
    i16 63, label %9
    i16 66, label %9
    i16 23, label %35
  ]

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %3, %3, %8
  %10 = phi i1 [ true, %3 ], [ false, %8 ], [ true, %3 ]
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %16, label %44

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  store ptr %18, ptr %1, align 8, !tbaa !39
  %19 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %12) #17
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  br i1 %10, label %26, label %22

22:                                               ; preds = %16
  %23 = tail call { i64, i64 } @double_int_neg(i64 %20, i64 %21) #17
  %24 = extractvalue { i64, i64 } %23, 0
  %25 = extractvalue { i64, i64 } %23, 1
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i64 [ %24, %22 ], [ %20, %16 ]
  %28 = phi i64 [ %25, %22 ], [ %21, %16 ]
  %29 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1023
  %32 = tail call { i64, i64 } @double_int_sext(i64 %27, i64 %28, i32 noundef %31) #17
  %33 = extractvalue { i64, i64 } %32, 0
  %34 = extractvalue { i64, i64 } %32, 1
  tail call void @mpz_set_double_int(ptr noundef %2, i64 %33, i64 %34, i8 noundef zeroext 0) #17
  br label %44

35:                                               ; preds = %3
  %36 = tail call ptr @build_int_cst_type(ptr noundef %5, i64 noundef 0) #17
  store ptr %36, ptr %1, align 8, !tbaa !39
  %37 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %0) #17
  %38 = extractvalue { i64, i64 } %37, 0
  %39 = extractvalue { i64, i64 } %37, 1
  %40 = load i64, ptr %5, align 8
  %41 = lshr i64 %40, 21
  %42 = trunc i64 %41 to i8
  %43 = and i8 %42, 1
  tail call void @mpz_set_double_int(ptr noundef %2, i64 %38, i64 %39, i8 noundef zeroext %43) #17
  br label %44

44:                                               ; preds = %3, %9, %35, %26
  ret void
}

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @determine_value_range(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #9 !prof !38 {
  %6 = tail call i32 @integer_zerop(ptr noundef %1) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @mpz_set(ptr noundef %3, ptr noundef %2) #17
  tail call void @mpz_set(ptr noundef %4, ptr noundef %2) #17
  br label %17

9:                                                ; preds = %5
  tail call void @get_type_static_bounds(ptr noundef %0, ptr noundef %3, ptr noundef %4) #17
  %10 = tail call zeroext i8 @nowrap_type_p(ptr noundef %0), !range !92
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @mpz_sgn(ptr noundef %2) #17
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @mpz_add(ptr noundef %4, ptr noundef %4, ptr noundef %2) #17
  br label %17

16:                                               ; preds = %12
  tail call void @mpz_add(ptr noundef %3, ptr noundef %3, ptr noundef %2) #17
  br label %17

17:                                               ; preds = %9, %8, %16, %15
  ret void
}

declare void @mpz_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @mpz_set_ui(ptr noundef, i64 noundef) local_unnamed_addr #3

declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @double_int_neg(i64, i64) local_unnamed_addr #3

declare { i64, i64 } @double_int_sext(i64, i64, i32 noundef) local_unnamed_addr #3

declare void @mpz_set_double_int(ptr noundef, i64, i64, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @mpz_cmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @double_int_mask(i32 noundef) local_unnamed_addr #3

declare void @mpz_add_ui(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @mpz_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mpz_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @get_type_static_bounds(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mpz_sgn(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mpz_swap(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mpz_init_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mpz_sub_ui(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @mpz_neg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @mpz_get_double_int(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @num_ending_zeros(ptr noundef) local_unnamed_addr #3

declare ptr @build_low_bits_mask(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @multiple_of_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mpz_fdiv_q(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_floor_log2(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cst_and_fits_in_hwi(ptr noundef) local_unnamed_addr #3

declare i64 @int_cst_value(ptr noundef) local_unnamed_addr #3

declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @bounds_add(ptr noundef %0, i64 %1, i64 %2, ptr nocapture noundef readonly %3) unnamed_addr #9 !prof !38 {
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @mpz_init(ptr noundef nonnull %5) #17
  call void @mpz_set_double_int(ptr noundef nonnull %5, i64 %1, i64 %2, i8 noundef zeroext 0) #17
  call void @mpz_init(ptr noundef nonnull %6) #17
  %7 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1023
  %10 = call { i64, i64 } @double_int_mask(i32 noundef %9) #17
  %11 = extractvalue { i64, i64 } %10, 0
  %12 = extractvalue { i64, i64 } %10, 1
  call void @mpz_set_double_int(ptr noundef nonnull %6, i64 %11, i64 %12, i8 noundef zeroext 1) #17
  %13 = getelementptr inbounds %struct.bounds, ptr %0, i64 0, i32 1
  call void @mpz_add(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef nonnull %5) #17
  call void @mpz_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %5) #17
  %14 = call i32 @mpz_cmp(ptr noundef nonnull %13, ptr noundef nonnull %6) #17
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  call void @mpz_set(ptr noundef nonnull %13, ptr noundef nonnull %6) #17
  br label %17

17:                                               ; preds = %16, %4
  call void @mpz_neg(ptr noundef nonnull %6, ptr noundef nonnull %6) #17
  %18 = call i32 @mpz_cmp(ptr noundef %0, ptr noundef nonnull %6) #17
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @mpz_set(ptr noundef %0, ptr noundef nonnull %6) #17
  br label %21

21:                                               ; preds = %20, %17
  call void @mpz_clear(ptr noundef nonnull %5) #17
  call void @mpz_clear(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  ret void
}

declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @instantiate_scev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @invert_truthvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @tree_simplify_using_condition_1(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !38 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %115, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %5, 56
  %9 = trunc i64 %3 to i16
  switch i16 %9, label %40 [
    i16 94, label %10
    i16 93, label %10
    i16 56, label %10
  ]

10:                                               ; preds = %7, %7, %7
  %11 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = tail call fastcc ptr @tree_simplify_using_condition_1(ptr noundef %0, ptr noundef %12)
  %14 = load ptr, ptr %11, align 8, !tbaa !50
  %15 = icmp ne ptr %14, %13
  %16 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = tail call fastcc ptr @tree_simplify_using_condition_1(ptr noundef %0, ptr noundef %17)
  %19 = load ptr, ptr %16, align 8, !tbaa !50
  %20 = icmp ne ptr %19, %18
  %21 = select i1 %20, i1 true, i1 %15
  %22 = zext i1 %21 to i8
  br i1 %8, label %23, label %30

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = tail call fastcc ptr @tree_simplify_using_condition_1(ptr noundef %0, ptr noundef %25)
  %27 = load ptr, ptr %24, align 8, !tbaa !50
  %28 = icmp eq ptr %27, %26
  %29 = select i1 %28, i8 %22, i8 1
  br label %30

30:                                               ; preds = %23, %10
  %31 = phi i8 [ %29, %23 ], [ %22, %10 ]
  %32 = phi ptr [ %26, %23 ], [ null, %10 ]
  %33 = icmp eq i8 %31, 0
  br i1 %33, label %115, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  br i1 %8, label %36, label %38

36:                                               ; preds = %34
  %37 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 56, ptr noundef %35, ptr noundef %13, ptr noundef %18, ptr noundef %32) #17
  br label %115

38:                                               ; preds = %34
  %39 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %5, ptr noundef %35, ptr noundef %13, ptr noundef %18) #17
  br label %115

40:                                               ; preds = %7
  %41 = load i64, ptr %0, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 101
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !50
  %47 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !50
  %49 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %1, ptr noundef %46, ptr noundef %48)
  %50 = tail call i32 @integer_zerop(ptr noundef %49) #17
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %115

52:                                               ; preds = %44
  %53 = tail call i32 @integer_nonzerop(ptr noundef %49) #17
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %115

55:                                               ; preds = %52
  %56 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %1, ptr noundef %48, ptr noundef %46)
  %57 = tail call i32 @integer_zerop(ptr noundef %56) #17
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %115

59:                                               ; preds = %55
  %60 = tail call i32 @integer_nonzerop(ptr noundef %56) #17
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %59, %40
  %63 = load i64, ptr %1, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 101
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !50
  %69 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !50
  %71 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %0, ptr noundef %68, ptr noundef %70)
  %72 = tail call i32 @integer_zerop(ptr noundef %71) #17
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %115

74:                                               ; preds = %66
  %75 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %0, ptr noundef %70, ptr noundef %68)
  %76 = tail call i32 @integer_zerop(ptr noundef %75) #17
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %115

78:                                               ; preds = %74, %62
  %79 = load i64, ptr %1, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 102
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !50
  %85 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !50
  %87 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %0, ptr noundef %84, ptr noundef %86)
  %88 = tail call i32 @integer_zerop(ptr noundef %87) #17
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %82
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !39
  br label %115

92:                                               ; preds = %82
  %93 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %0, ptr noundef %86, ptr noundef %84)
  %94 = tail call i32 @integer_zerop(ptr noundef %93) #17
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !39
  br label %115

98:                                               ; preds = %92, %78
  %99 = tail call ptr @expand_simple_operations(ptr noundef nonnull %1)
  %100 = tail call ptr @invert_truthvalue_loc(i32 noundef 0, ptr noundef nonnull %0) #17
  %101 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %102 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef 94, ptr noundef %101, ptr noundef %100, ptr noundef %99) #17
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = tail call i32 @integer_nonzerop(ptr noundef nonnull %102) #17
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104, %98
  %108 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %109 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef 93, ptr noundef %108, ptr noundef nonnull %0, ptr noundef %99) #17
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = tail call i32 @integer_zerop(ptr noundef nonnull %109) #17
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111, %107
  br label %115

115:                                              ; preds = %111, %104, %74, %66, %55, %59, %44, %52, %30, %38, %36, %2, %114, %96, %90
  %116 = phi ptr [ %91, %90 ], [ %97, %96 ], [ %1, %114 ], [ %1, %2 ], [ %37, %36 ], [ %39, %38 ], [ %1, %30 ], [ %49, %52 ], [ %49, %44 ], [ %56, %59 ], [ %56, %55 ], [ %71, %66 ], [ %75, %74 ], [ %102, %104 ], [ %109, %111 ]
  ret ptr %116
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @chain_of_csts_start(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !38 {
  br label %3

3:                                                ; preds = %116, %2
  %4 = phi ptr [ %1, %2 ], [ %117, %116 ]
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %8, null
  br i1 %9, label %119, label %10

10:                                               ; preds = %3
  %11 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef nonnull %8) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %119, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %6, align 8
  %15 = trunc i32 %14 to i8
  switch i8 %15, label %119 [
    i8 16, label %16
    i8 6, label %21
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  %19 = icmp eq ptr %8, %18
  %20 = select i1 %19, ptr %6, ptr null
  br label %119

21:                                               ; preds = %13
  %22 = lshr i32 %14, 16
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !50
  %26 = icmp eq i8 %25, 3
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load i32, ptr %6, align 8
  %29 = and i32 %28, 255
  %30 = add nsw i32 %29, -1
  %31 = icmp ult i32 %30, 9
  tail call void @llvm.assume(i1 %31)
  %32 = zext nneg i32 %29 to i64
  %33 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !54
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !68
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %40

40:                                               ; preds = %39, %27
  %41 = getelementptr inbounds i8, ptr %6, i64 %37
  %42 = getelementptr inbounds ptr, ptr %41, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  %44 = load i64, ptr %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = and i32 %45, 65535
  br label %47

47:                                               ; preds = %21, %40
  %48 = phi i32 [ %46, %40 ], [ %22, %21 ]
  %49 = load i32, ptr %6, align 8
  %50 = and i32 %49, 254
  %51 = add nsw i32 %50, -10
  %52 = icmp ult i32 %51, -4
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %6, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !50
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %119

57:                                               ; preds = %47, %53
  %58 = zext nneg i32 %48 to i64
  %59 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !54
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %119, label %62

62:                                               ; preds = %57
  %63 = icmp eq i32 %48, 121
  br i1 %63, label %64, label %85

64:                                               ; preds = %62
  %65 = and i32 %49, 255
  %66 = add nsw i32 %65, -10
  %67 = icmp ult i32 %66, -9
  br i1 %67, label %81, label %68

68:                                               ; preds = %64
  %69 = zext nneg i32 %65 to i64
  %70 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !54
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !68
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %77

77:                                               ; preds = %76, %68
  %78 = getelementptr inbounds i8, ptr %6, i64 %74
  %79 = getelementptr inbounds ptr, ptr %78, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !39
  br label %81

81:                                               ; preds = %64, %77
  %82 = phi ptr [ %80, %77 ], [ null, %64 ]
  %83 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %82) #17
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %119, label %85

85:                                               ; preds = %81, %62
  %86 = load i32, ptr %6, align 8
  %87 = and i32 %86, 255
  %88 = add nsw i32 %87, -10
  %89 = icmp ult i32 %88, -9
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %6, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !50
  br label %93

93:                                               ; preds = %90, %85
  %94 = phi ptr [ %92, %90 ], [ null, %85 ]
  %95 = icmp eq ptr %94, null
  br i1 %95, label %106, label %96

96:                                               ; preds = %93
  %97 = and i32 %86, 254
  %98 = add nsw i32 %97, -10
  %99 = icmp ult i32 %98, -4
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %6, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !50
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %94, align 8, !tbaa !173
  br label %106

106:                                              ; preds = %104, %100, %96, %93
  %107 = phi ptr [ %94, %93 ], [ %94, %96 ], [ %94, %100 ], [ %105, %104 ]
  %108 = icmp eq ptr %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.use_optype_d, ptr %107, i64 0, i32 1, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !59
  %112 = load ptr, ptr %111, align 8, !tbaa !39
  %113 = load ptr, ptr %107, align 8, !tbaa !173
  %114 = icmp eq ptr %113, null
  %115 = select i1 %114, ptr %112, ptr null
  br label %116

116:                                              ; preds = %109, %106
  %117 = phi ptr [ %115, %109 ], [ null, %106 ]
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %3

119:                                              ; preds = %81, %13, %116, %53, %57, %16, %3, %10
  %120 = phi ptr [ null, %10 ], [ null, %3 ], [ %20, %16 ], [ null, %57 ], [ null, %53 ], [ null, %116 ], [ null, %13 ], [ null, %81 ]
  ret ptr %120
}

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #2 !prof !38 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %75 [
    i8 8, label %4
    i8 6, label %25
    i8 1, label %76
  ]

4:                                                ; preds = %1
  %5 = and i32 %2, 255
  %6 = add nsw i32 %5, -1
  %7 = icmp ult i32 %6, 9
  tail call void @llvm.assume(i1 %7)
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !54
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !68
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 %13
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !39
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  br label %76

25:                                               ; preds = %1
  %26 = lshr i32 %2, 16
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !50
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 255
  %34 = add nsw i32 %33, -1
  %35 = icmp ult i32 %34, 9
  tail call void @llvm.assume(i1 %35)
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !54
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !68
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %44

44:                                               ; preds = %43, %31
  %45 = getelementptr inbounds i8, ptr %0, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !39
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  br label %51

51:                                               ; preds = %25, %44
  %52 = phi i32 [ %50, %44 ], [ %26, %25 ]
  %53 = icmp eq i32 %52, 66
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, 255
  %57 = add nsw i32 %56, -1
  %58 = icmp ult i32 %57, 9
  tail call void @llvm.assume(i1 %58)
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !54
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !68
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %67

67:                                               ; preds = %66, %54
  %68 = getelementptr inbounds i8, ptr %0, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !39
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  br label %76

72:                                               ; preds = %51
  %73 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #17
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %1, %16, %72, %67, %75
  %77 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %75 ], [ %24, %16 ], [ %71, %67 ], [ %74, %72 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %1 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !50
  ret ptr %78
}

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #3

declare zeroext i8 @for_each_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @idx_infer_loop_bounds(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #9 !prof !38 {
  %4 = load ptr, ptr %2, align 8, !tbaa !127
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 45
  br i1 %7, label %8, label %86

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ilb_data, ptr %2, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !130
  %11 = tail call zeroext i8 @array_at_struct_end_p(ptr noundef nonnull %0), !range !92
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i8 %10, i8 0
  %14 = load ptr, ptr %1, align 8, !tbaa !39
  %15 = tail call ptr @analyze_scalar_evolution(ptr noundef %4, ptr noundef %14) #17
  %16 = tail call ptr @loop_preheader_edge(ptr noundef %4) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  %19 = load ptr, ptr @cfun, align 8, !tbaa !39
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  br label %22

22:                                               ; preds = %8, %18
  %23 = phi ptr [ %21, %18 ], [ %16, %8 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  %25 = tail call ptr @instantiate_scev(ptr noundef %24, ptr noundef %4, ptr noundef %15) #17
  %26 = tail call ptr @initial_condition(ptr noundef %25) #17
  %27 = load i32, ptr %4, align 8, !tbaa !105
  %28 = tail call ptr @evolution_part_in_loop_num(ptr noundef %25, i32 noundef %27) #17
  %29 = icmp ne ptr %26, null
  %30 = icmp ne ptr %28, null
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %86

32:                                               ; preds = %22
  %33 = load i64, ptr %28, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 23
  br i1 %35, label %36, label %86

36:                                               ; preds = %32
  %37 = tail call i32 @integer_zerop(ptr noundef nonnull %28) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %86

39:                                               ; preds = %36
  %40 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %26, ptr noundef null) #17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %39
  %43 = load i32, ptr %4, align 8, !tbaa !105
  %44 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef nonnull %26, i32 noundef %43) #17
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %42
  %47 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %0) #17
  %48 = tail call ptr @array_ref_up_bound(ptr noundef nonnull %0) #17
  %49 = load i64, ptr %47, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 23
  %52 = icmp ne ptr %48, null
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %86

54:                                               ; preds = %46
  %55 = load i64, ptr %48, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 23
  br i1 %57, label %58, label %86

58:                                               ; preds = %54
  %59 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %28) #17
  %60 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !50
  br i1 %12, label %65, label %62

62:                                               ; preds = %58
  %63 = tail call i32 @operand_equal_p(ptr noundef nonnull %47, ptr noundef nonnull %48, i32 noundef 0) #17
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %62, %58
  %66 = tail call i32 @int_fits_type_p(ptr noundef nonnull %48, ptr noundef %61) #17
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @int_fits_type_p(ptr noundef nonnull %47, ptr noundef %61) #17
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %68
  %72 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %61, ptr noundef nonnull %47) #17
  %73 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %61, ptr noundef nonnull %48) #17
  %74 = and i32 %59, 255
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, ptr %73, ptr %72
  %77 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef 63, ptr noundef %61, ptr noundef %76, ptr noundef nonnull %28) #17
  %78 = tail call i32 @tree_int_cst_compare(ptr noundef %72, ptr noundef %77) #17
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = tail call i32 @tree_int_cst_compare(ptr noundef %77, ptr noundef %73) #17
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %86, label %83

83:                                               ; preds = %80, %71
  %84 = getelementptr inbounds %struct.ilb_data, ptr %2, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !129
  tail call fastcc void @record_nonwrapping_iv(ptr noundef nonnull %4, ptr noundef nonnull %26, ptr noundef nonnull %28, ptr noundef %85, ptr noundef %72, ptr noundef %73, i8 noundef zeroext 1, i8 noundef zeroext %13)
  br label %86

86:                                               ; preds = %65, %80, %68, %62, %46, %54, %22, %32, %36, %39, %42, %3, %83
  ret i8 1
}

declare ptr @analyze_scalar_evolution(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @initial_condition(ptr noundef) local_unnamed_addr #3

declare ptr @evolution_part_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @tree_contains_chrecs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #3

declare ptr @array_ref_up_bound(ptr noundef) local_unnamed_addr #3

declare i32 @int_fits_type_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @record_nonwrapping_iv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #9 !prof !38 {
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 23
  br i1 %16, label %17, label %82

17:                                               ; preds = %8
  %18 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %82

20:                                               ; preds = %17
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr @dump_flags, align 4, !tbaa !54
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 20, i64 1, ptr nonnull %21)
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %30 = load ptr, ptr %12, align 8, !tbaa !50
  tail call void @print_generic_expr(ptr noundef %29, ptr noundef %30, i32 noundef 2) #17
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %32 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 2, i64 1, ptr %31)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !39
  tail call void @print_generic_expr(ptr noundef %33, ptr noundef %1, i32 noundef 2) #17
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %35 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 3, i64 1, ptr %34)
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !39
  tail call void @print_generic_expr(ptr noundef %36, ptr noundef nonnull %2, i32 noundef 2) #17
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %38 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 40, i64 1, ptr %37)
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !39
  tail call void @print_gimple_stmt(ptr noundef %39, ptr noundef %3, i32 noundef 0, i32 noundef 2) #17
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %41 = load i32, ptr %0, align 8, !tbaa !105
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.44, i32 noundef %41)
  br label %43

43:                                               ; preds = %27, %23, %20
  %44 = tail call ptr @unsigned_type_for(ptr noundef %13) #17
  %45 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %44, ptr noundef %1) #17
  %46 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %44, ptr noundef nonnull %2) #17
  %47 = tail call i32 @tree_int_cst_sign_bit(ptr noundef %46) #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %43
  %50 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %44, ptr noundef %4) #17
  %51 = load i64, ptr %45, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 23
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %44, ptr noundef %5) #17
  br label %56

56:                                               ; preds = %54, %49
  %57 = phi ptr [ %55, %54 ], [ %45, %49 ]
  %58 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %44, ptr noundef %57, ptr noundef %50) #17
  %59 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %44, ptr noundef %46) #17
  br label %70

60:                                               ; preds = %43
  %61 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %44, ptr noundef %5) #17
  %62 = load i64, ptr %45, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 23
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %44, ptr noundef %4) #17
  br label %67

67:                                               ; preds = %65, %60
  %68 = phi ptr [ %66, %65 ], [ %45, %60 ]
  %69 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %44, ptr noundef %61, ptr noundef %68) #17
  br label %70

70:                                               ; preds = %67, %56
  %71 = phi ptr [ %58, %56 ], [ %69, %67 ]
  %72 = phi ptr [ %59, %56 ], [ %46, %67 ]
  %73 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 69, ptr noundef %44, ptr noundef %71, ptr noundef %72) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  call void @extract_ops_from_tree(ptr noundef %73, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !50
  %76 = load ptr, ptr %10, align 8, !tbaa !39
  %77 = load i32, ptr %9, align 4, !tbaa !54
  %78 = load ptr, ptr %11, align 8, !tbaa !39
  %79 = call fastcc { i64, i64 } @derive_constant_upper_bound_ops(ptr noundef %75, ptr noundef %76, i32 noundef %77, ptr noundef %78)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  %80 = extractvalue { i64, i64 } %79, 0
  %81 = extractvalue { i64, i64 } %79, 1
  call fastcc void @record_estimate(ptr noundef %0, ptr noundef %73, i64 %80, i64 %81, ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %6, i8 noundef zeroext %7)
  br label %82

82:                                               ; preds = %8, %17, %70
  ret void
}

declare void @extract_ops_from_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc { i64, i64 } @derive_constant_upper_bound_ops(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #9 !prof !38 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = load i64, ptr %0, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -6
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  br label %24

22:                                               ; preds = %4
  %23 = tail call ptr @upper_bound_in_type(ptr noundef nonnull %0, ptr noundef nonnull %0) #17
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi ptr [ %21, %19 ], [ %23, %22 ]
  %26 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %25) #17
  %27 = extractvalue { i64, i64 } %26, 0
  %28 = extractvalue { i64, i64 } %26, 1
  switch i32 %2, label %177 [
    i32 23, label %29
    i32 116, label %31
    i32 113, label %31
    i32 63, label %55
    i32 66, label %55
    i32 64, label %55
    i32 69, label %127
    i32 76, label %127
    i32 89, label %147
    i32 141, label %156
  ]

29:                                               ; preds = %24
  %30 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %1) #17
  br label %177

31:                                               ; preds = %24, %24
  %32 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 2097152
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i64, ptr %0, align 8
  %39 = and i64 %38, 2097152
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = tail call zeroext i8 @tree_expr_nonnegative_p(ptr noundef %1) #17
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %177, label %44

44:                                               ; preds = %41, %37, %31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  call void @extract_ops_from_tree(ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  %45 = load ptr, ptr %32, align 8, !tbaa !50
  %46 = load ptr, ptr %12, align 8, !tbaa !39
  %47 = load i32, ptr %11, align 4, !tbaa !54
  %48 = load ptr, ptr %13, align 8, !tbaa !39
  %49 = call fastcc { i64, i64 } @derive_constant_upper_bound_ops(ptr noundef %45, ptr noundef %46, i32 noundef %47, ptr noundef %48)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  %50 = extractvalue { i64, i64 } %49, 0
  %51 = extractvalue { i64, i64 } %49, 1
  %52 = call i32 @double_int_ucmp(i64 %27, i64 %28, i64 %50, i64 %51) #17
  %53 = icmp slt i32 %52, 0
  %54 = select i1 %53, { i64, i64 } %26, { i64, i64 } %49
  br label %177

55:                                               ; preds = %24, %24, %24
  %56 = load i64, ptr %3, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 23
  br i1 %58, label %59, label %177

59:                                               ; preds = %55
  %60 = tail call zeroext i8 @tree_expr_nonnegative_p(ptr noundef %1) #17
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %177, label %62

62:                                               ; preds = %59
  %63 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %3) #17
  %64 = extractvalue { i64, i64 } %63, 0
  %65 = extractvalue { i64, i64 } %63, 1
  %66 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 1023
  %69 = tail call { i64, i64 } @double_int_sext(i64 %64, i64 %65, i32 noundef %68) #17
  %70 = extractvalue { i64, i64 } %69, 0
  %71 = extractvalue { i64, i64 } %69, 1
  %72 = icmp eq i32 %2, 64
  br i1 %72, label %77, label %73

73:                                               ; preds = %62
  %74 = tail call { i64, i64 } @double_int_neg(i64 %70, i64 %71) #17
  %75 = extractvalue { i64, i64 } %74, 0
  %76 = extractvalue { i64, i64 } %74, 1
  br label %77

77:                                               ; preds = %73, %62
  %78 = phi i64 [ %75, %73 ], [ %70, %62 ]
  %79 = phi i64 [ %76, %73 ], [ %71, %62 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  call void @extract_ops_from_tree(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  %80 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !50
  %82 = load ptr, ptr %9, align 8, !tbaa !39
  %83 = load i32, ptr %8, align 4, !tbaa !54
  %84 = load ptr, ptr %10, align 8, !tbaa !39
  %85 = call fastcc { i64, i64 } @derive_constant_upper_bound_ops(ptr noundef %81, ptr noundef %82, i32 noundef %83, ptr noundef %84)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  %86 = extractvalue { i64, i64 } %85, 0
  %87 = extractvalue { i64, i64 } %85, 1
  %88 = call zeroext i8 @double_int_negative_p(i64 %78, i64 %79) #17
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %107, label %90

90:                                               ; preds = %77
  %91 = call { i64, i64 } @double_int_neg(i64 %78, i64 %79) #17
  %92 = extractvalue { i64, i64 } %91, 0
  %93 = extractvalue { i64, i64 } %91, 1
  %94 = call zeroext i8 @double_int_negative_p(i64 %92, i64 %93) #17
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %177

96:                                               ; preds = %90
  %97 = call { i64, i64 } @double_int_neg(i64 %92, i64 %93) #17
  %98 = extractvalue { i64, i64 } %97, 0
  %99 = extractvalue { i64, i64 } %97, 1
  %100 = call { i64, i64 } @double_int_add(i64 %27, i64 %28, i64 %98, i64 %99) #17
  %101 = extractvalue { i64, i64 } %100, 0
  %102 = extractvalue { i64, i64 } %100, 1
  %103 = call i32 @double_int_ucmp(i64 %86, i64 %87, i64 %101, i64 %102) #17
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %177, label %105

105:                                              ; preds = %96
  %106 = call { i64, i64 } @double_int_add(i64 %86, i64 %87, i64 %92, i64 %93) #17
  br label %177

107:                                              ; preds = %77
  %108 = call i32 @double_int_ucmp(i64 %86, i64 %87, i64 %78, i64 %79) #17
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %177, label %110

110:                                              ; preds = %107
  %111 = load i64, ptr %0, align 8
  %112 = and i64 %111, 2097152
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %116 = call ptr @double_int_to_tree(ptr noundef nonnull %0, i64 %78, i64 %79) #17
  %117 = call ptr @fold_binary_loc(i32 noundef 0, i32 noundef 100, ptr noundef %115, ptr noundef %1, ptr noundef %116) #17
  %118 = icmp eq ptr %117, null
  br i1 %118, label %177, label %119

119:                                              ; preds = %114
  %120 = call i32 @integer_nonzerop(ptr noundef nonnull %117) #17
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %177

122:                                              ; preds = %119, %110
  %123 = call { i64, i64 } @double_int_neg(i64 %78, i64 %79) #17
  %124 = extractvalue { i64, i64 } %123, 0
  %125 = extractvalue { i64, i64 } %123, 1
  %126 = call { i64, i64 } @double_int_add(i64 %86, i64 %87, i64 %124, i64 %125) #17
  br label %177

127:                                              ; preds = %24, %24
  %128 = load i64, ptr %3, align 8
  %129 = and i64 %128, 65535
  %130 = icmp eq i64 %129, 23
  br i1 %130, label %131, label %177

131:                                              ; preds = %127
  %132 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %3) #17
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %177

134:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @extract_ops_from_tree(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %135 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !50
  %137 = load ptr, ptr %6, align 8, !tbaa !39
  %138 = load i32, ptr %5, align 4, !tbaa !54
  %139 = load ptr, ptr %7, align 8, !tbaa !39
  %140 = call fastcc { i64, i64 } @derive_constant_upper_bound_ops(ptr noundef %136, ptr noundef %137, i32 noundef %138, ptr noundef %139)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  %141 = extractvalue { i64, i64 } %140, 0
  %142 = extractvalue { i64, i64 } %140, 1
  %143 = call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %3) #17
  %144 = extractvalue { i64, i64 } %143, 0
  %145 = extractvalue { i64, i64 } %143, 1
  %146 = call { i64, i64 } @double_int_udiv(i64 %141, i64 %142, i64 %144, i64 %145, i32 noundef 69) #17
  br label %177

147:                                              ; preds = %24
  %148 = load i64, ptr %3, align 8
  %149 = and i64 %148, 65535
  %150 = icmp eq i64 %149, 23
  br i1 %150, label %151, label %177

151:                                              ; preds = %147
  %152 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %3) #17
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %177

154:                                              ; preds = %151
  %155 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %3) #17
  br label %177

156:                                              ; preds = %24
  %157 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !50
  %159 = load i32, ptr %158, align 8
  %160 = and i32 %159, 255
  %161 = icmp eq i32 %160, 6
  br i1 %161, label %162, label %177

162:                                              ; preds = %156
  %163 = zext nneg i32 %160 to i64
  %164 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !54
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %166
  %168 = load i64, ptr %167, align 8, !tbaa !68
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %171

171:                                              ; preds = %170, %162
  %172 = getelementptr inbounds i8, ptr %158, i64 %168
  %173 = load ptr, ptr %172, align 8, !tbaa !39
  %174 = icmp eq ptr %173, %1
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = tail call fastcc { i64, i64 } @derive_constant_upper_bound_assign(ptr noundef nonnull %158)
  br label %177

177:                                              ; preds = %127, %41, %24, %156, %171, %147, %151, %131, %119, %114, %107, %96, %90, %55, %59, %44, %175, %154, %134, %122, %105, %29
  %178 = phi { i64, i64 } [ %176, %175 ], [ %155, %154 ], [ %146, %134 ], [ %106, %105 ], [ %126, %122 ], [ %30, %29 ], [ %54, %44 ], [ %26, %59 ], [ %26, %55 ], [ %26, %90 ], [ %26, %96 ], [ %26, %107 ], [ %26, %114 ], [ %26, %119 ], [ %26, %131 ], [ %26, %151 ], [ %26, %147 ], [ %26, %171 ], [ %26, %156 ], [ %26, %24 ], [ %26, %41 ], [ %26, %127 ]
  ret { i64, i64 } %178
}

declare zeroext i8 @tree_expr_nonnegative_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @double_int_negative_p(i64, i64) local_unnamed_addr #3

declare ptr @double_int_to_tree(ptr noundef, i64, i64) local_unnamed_addr #3

declare { i64, i64 } @double_int_udiv(i64, i64, i64, i64, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc { i64, i64 } @derive_constant_upper_bound_assign(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !38 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %6 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %7
  ]

4:                                                ; preds = %1, %1
  %5 = lshr i32 %2, 16
  br label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1446, ptr noundef nonnull @.str.10) #17
  br label %7

7:                                                ; preds = %6, %4, %1
  %8 = phi i32 [ %5, %4 ], [ 0, %6 ], [ 59, %1 ]
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !50
  %12 = icmp eq i8 %11, 3
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = load i32, ptr %0, align 8
  %15 = and i32 %14, 255
  %16 = add nsw i32 %15, -1
  %17 = icmp ult i32 %16, 9
  tail call void @llvm.assume(i1 %17)
  %18 = zext nneg i32 %15 to i64
  %19 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !54
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !68
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %26

26:                                               ; preds = %25, %13
  %27 = getelementptr inbounds i8, ptr %0, i64 %23
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !39
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 65535
  br label %33

33:                                               ; preds = %7, %26
  %34 = phi i32 [ %32, %26 ], [ %8, %7 ]
  %35 = load i32, ptr %0, align 8
  %36 = and i32 %35, 255
  %37 = add nsw i32 %36, -10
  %38 = icmp ult i32 %37, -9
  br i1 %38, label %52, label %39

39:                                               ; preds = %33
  %40 = zext nneg i32 %36 to i64
  %41 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !54
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !68
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %48

48:                                               ; preds = %47, %39
  %49 = getelementptr inbounds i8, ptr %0, i64 %45
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !39
  br label %52

52:                                               ; preds = %33, %48
  %53 = phi ptr [ %51, %48 ], [ null, %33 ]
  %54 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !50
  %56 = icmp ugt i32 %55, 2
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load i32, ptr %0, align 8
  %59 = and i32 %58, 255
  %60 = add nsw i32 %59, -10
  %61 = icmp ult i32 %60, -9
  br i1 %61, label %75, label %62

62:                                               ; preds = %57
  %63 = zext nneg i32 %59 to i64
  %64 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !54
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !68
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %71

71:                                               ; preds = %70, %62
  %72 = getelementptr inbounds i8, ptr %0, i64 %68
  %73 = getelementptr inbounds ptr, ptr %72, i64 2
  %74 = load ptr, ptr %73, align 8, !tbaa !39
  br label %75

75:                                               ; preds = %52, %57, %71
  %76 = phi ptr [ null, %52 ], [ %74, %71 ], [ null, %57 ]
  %77 = load i32, ptr %0, align 8
  %78 = and i32 %77, 255
  %79 = add nsw i32 %78, -1
  %80 = icmp ult i32 %79, 9
  tail call void @llvm.assume(i1 %80)
  %81 = zext nneg i32 %78 to i64
  %82 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !54
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %84
  %86 = load i64, ptr %85, align 8, !tbaa !68
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %89

89:                                               ; preds = %88, %75
  %90 = getelementptr inbounds i8, ptr %0, i64 %86
  %91 = load ptr, ptr %90, align 8, !tbaa !39
  %92 = getelementptr inbounds %struct.tree_common, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !50
  %94 = tail call fastcc { i64, i64 } @derive_constant_upper_bound_ops(ptr noundef %93, ptr noundef %53, i32 noundef %34, ptr noundef %76)
  ret { i64, i64 } %94
}

declare ptr @initial_condition_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @double_int_fits_to_tree_p(ptr noundef, i64, i64) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @free_numbers_of_iterations_estimates, ptr @vec_heap_o_reserve_exact, i64 43}
!36 = !{ptr @free_numbers_of_iterations_estimates, ptr @free, i64 43}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!44, !40, i64 8}
!44 = !{!"_IO_FILE", !45, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !45, i64 112, !45, i64 116, !46, i64 120, !47, i64 128, !41, i64 130, !41, i64 131, !40, i64 136, !46, i64 144, !40, i64 152, !40, i64 160, !40, i64 168, !40, i64 176, !46, i64 184, !45, i64 192, !41, i64 196}
!45 = !{!"int", !41, i64 0}
!46 = !{!"long", !41, i64 0}
!47 = !{!"short", !41, i64 0}
!48 = !{!44, !40, i64 16}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{!41, !41, i64 0}
!51 = !{!44, !40, i64 40}
!52 = !{!44, !40, i64 48}
!53 = !{!44, !45, i64 0}
!54 = !{!45, !45, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !56, !57}
!59 = !{!60, !40, i64 24}
!60 = !{!"ssa_use_operand_d", !40, i64 0, !40, i64 8, !41, i64 16, !40, i64 24}
!61 = !{!62, !40, i64 0}
!62 = !{!"basic_block_def", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32, !40, i64 48, !40, i64 56, !41, i64 64, !46, i64 72, !45, i64 80, !45, i64 84, !45, i64 88, !45, i64 92, !45, i64 96}
!63 = !{!64, !45, i64 0}
!64 = !{!"VEC_edge_base", !45, i64 0, !45, i64 4, !41, i64 8}
!65 = !{!66, !40, i64 0}
!66 = !{!"edge_def", !40, i64 0, !40, i64 8, !41, i64 16, !40, i64 24, !40, i64 32, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !46, i64 56}
!67 = !{!62, !40, i64 24}
!68 = !{!46, !46, i64 0}
!69 = !{!70, !45, i64 36}
!70 = !{!"loop", !45, i64 0, !45, i64 4, !40, i64 8, !40, i64 16, !71, i64 24, !45, i64 32, !45, i64 36, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !72, i64 80, !72, i64 96, !41, i64 112, !41, i64 113, !45, i64 116, !40, i64 120, !40, i64 128, !41, i64 136, !40, i64 144}
!71 = !{!"lpt_decision", !45, i64 0, !45, i64 4}
!72 = !{!"", !46, i64 0, !46, i64 8}
!73 = !{!62, !45, i64 96}
!74 = !{!75}
!75 = distinct !{!75, !76, !"gsi_start_bb: argument 0"}
!76 = distinct !{!76, !"gsi_start_bb"}
!77 = !{!78, !40, i64 0}
!78 = !{!"gimple_bb_info", !40, i64 0, !40, i64 8}
!79 = !{!80, !40, i64 0}
!80 = !{!"gimple_seq_d", !40, i64 0, !40, i64 8, !40, i64 16}
!81 = !{!82, !40, i64 0}
!82 = !{!"gimple_seq_node_d", !40, i64 0, !40, i64 8, !40, i64 16}
!83 = !{!82, !40, i64 16}
!84 = distinct !{!84, !56, !57}
!85 = distinct !{!85, !56, !57}
!86 = !{!70, !40, i64 16}
!87 = !{!88, !40, i64 0}
!88 = !{!"tree_niter_desc", !40, i64 0, !40, i64 8, !40, i64 16, !72, i64 24, !89, i64 40, !40, i64 64, !45, i64 72}
!89 = !{!"", !40, i64 0, !40, i64 8, !41, i64 16}
!90 = !{!66, !45, i64 48}
!91 = !{!89, !40, i64 0}
!92 = !{i8 0, i8 2}
!93 = !{!88, !40, i64 8}
!94 = !{!88, !40, i64 64}
!95 = !{!88, !45, i64 72}
!96 = !{!89, !40, i64 8}
!97 = !{!89, !41, i64 16}
!98 = !{!88, !40, i64 16}
!99 = !{!70, !40, i64 8}
!100 = !{!101, !40, i64 8}
!101 = !{!"function", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !40, i64 128, !45, i64 136, !45, i64 137, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139}
!102 = !{!103, !40, i64 0}
!103 = !{!"control_flow_graph", !40, i64 0, !40, i64 8, !40, i64 16, !45, i64 24, !45, i64 28, !45, i64 32, !40, i64 40, !45, i64 48, !41, i64 52, !41, i64 60, !45, i64 68, !45, i64 72}
!104 = distinct !{!104, !56, !57}
!105 = !{!70, !45, i64 0}
!106 = !{!107, !45, i64 8}
!107 = !{!"", !40, i64 0, !45, i64 8, !45, i64 12, !41, i64 16}
!108 = distinct !{!108, !56, !57}
!109 = distinct !{!109, !56, !57}
!110 = distinct !{!110, !56, !57}
!111 = !{!66, !45, i64 44}
!112 = distinct !{!112, !56, !57}
!113 = !{!114, !45, i64 8}
!114 = !{!"param_info", !40, i64 0, !45, i64 8, !41, i64 12, !45, i64 16, !45, i64 20, !40, i64 24}
!115 = distinct !{!115, !56, !57}
!116 = distinct !{!116, !56, !57}
!117 = distinct !{!117, !56, !57}
!118 = distinct !{!118, !56, !57}
!119 = distinct !{!119, !56, !57}
!120 = !{!70, !45, i64 116}
!121 = !{!70, !41, i64 112}
!122 = !{!70, !41, i64 113}
!123 = distinct !{!123, !56, !57}
!124 = !{!125}
!125 = distinct !{!125, !126, !"gsi_start_bb: argument 0"}
!126 = distinct !{!126, !"gsi_start_bb"}
!127 = !{!128, !40, i64 0}
!128 = !{!"ilb_data", !40, i64 0, !40, i64 8, !41, i64 16}
!129 = !{!128, !40, i64 8}
!130 = !{!128, !41, i64 16}
!131 = distinct !{!131, !56, !57}
!132 = distinct !{!132, !56, !57}
!133 = distinct !{!133, !56, !57}
!134 = !{!62, !46, i64 72}
!135 = !{i64 0, i64 8, !68, i64 8, i64 8, !68}
!136 = !{i64 0, i64 8, !68}
!137 = !{!138, !40, i64 0}
!138 = !{!"nb_iter_bound", !40, i64 0, !72, i64 8, !41, i64 24, !40, i64 32}
!139 = !{!138, !41, i64 24}
!140 = !{!70, !40, i64 120}
!141 = !{!138, !40, i64 32}
!142 = !{!101, !40, i64 32}
!143 = !{!144, !40, i64 8}
!144 = !{!"loops", !45, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!145 = !{!146, !45, i64 0}
!146 = !{!"VEC_loop_p_base", !45, i64 0, !45, i64 4, !41, i64 8}
!147 = !{!144, !40, i64 24}
!148 = !{!149, !45, i64 0}
!149 = !{!"VEC_int_base", !45, i64 0, !45, i64 4, !41, i64 8}
!150 = !{!70, !40, i64 48}
!151 = distinct !{!151, !57}
!152 = !{!70, !40, i64 56}
!153 = !{!70, !40, i64 40}
!154 = distinct !{!154, !56, !57}
!155 = distinct !{!155, !56, !57}
!156 = distinct !{!156, !56, !57}
!157 = !{!158}
!158 = distinct !{!158, !159, !"gsi_start_bb: argument 0"}
!159 = distinct !{!159, !"gsi_start_bb"}
!160 = distinct !{!160, !56, !57}
!161 = distinct !{!161, !56, !57}
!162 = !{!70, !40, i64 72}
!163 = distinct !{!163, !56, !57}
!164 = !{!"function_entry_count", i64 43}
!165 = !{!"branch_weights", i32 0, i32 43}
!166 = !{!"branch_weights", i32 43, i32 0}
!167 = !{!"branch_weights", i32 1, i32 0}
!168 = distinct !{!168, !56, !57}
!169 = distinct !{!169, !56, !57}
!170 = !{i64 0, i64 8, !39, i64 8, i64 8, !39, i64 16, i64 1, !50}
!171 = distinct !{!171, !56, !57}
!172 = distinct !{!172, !56, !57}
!173 = !{!174, !40, i64 0}
!174 = !{!"use_optype_d", !40, i64 0, !60, i64 8}
