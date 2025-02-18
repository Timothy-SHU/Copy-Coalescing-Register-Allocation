; ModuleID = 'tree-vect-patterns.c'
source_filename = "tree-vect-patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.real_value = type { i32, [3 x i64] }
%struct.insn_data = type { ptr, %union.anon.0, ptr, ptr, i8, i8, i8, i8 }
%union.anon.0 = type { ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct._loop_vec_info = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_vec_void_p_base = type { i32, i32, [1 x ptr] }
%struct._stmt_vec_info = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, i8, %struct.anon, i32, ptr }
%struct.anon = type { i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%union.tree_type_symtab = type { ptr }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_real_cst = type { %struct.tree_common, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@vect_dump = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"=== vect_pattern_recog ===\00", align 1
@vect_vect_recog_func_ptrs = internal unnamed_addr constant [4 x ptr] [ptr @vect_recog_widen_mult_pattern, ptr @vect_recog_widen_sum_pattern, ptr @vect_recog_dot_prod_pattern, ptr @vect_recog_pow_pattern], align 16
@.str.1 = private unnamed_addr constant [42 x i8] c"vect_recog_widen_mult_pattern: detected: \00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@stmt_vec_info_vec = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"./tree-vectorizer.h\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"patt\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"vect_recog_widen_sum_pattern: detected: \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"tree-vect-patterns.c\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"vect_recog_dot_prod_pattern: detected: \00", align 1
@dconst2 = external global %struct.real_value, align 8
@dconsthalf = external global %struct.real_value, align 8
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"pattern recognized: \00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #12
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #12
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #12
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @vect_pattern_recog(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !57
  %10 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %14 = tail call i64 @fwrite(ptr nonnull @.str, i64 26, i64 1, ptr %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = icmp eq i32 %9, 0
  br i1 %16, label %346, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds i8, ptr %4, i64 8
  %19 = getelementptr inbounds i8, ptr %4, i64 16
  %20 = zext i32 %9 to i64
  br label %21

21:                                               ; preds = %17, %343
  %22 = phi i64 [ 0, %17 ], [ %344, %343 ]
  %23 = getelementptr inbounds ptr, ptr %7, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !61, !noalias !63
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !46, !noalias !63
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !66, !noalias !63
  br label %35

35:                                               ; preds = %33, %29, %21
  %36 = phi ptr [ %34, %33 ], [ null, %29 ], [ null, %21 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %36, align 8, !tbaa !68, !noalias !63
  br label %40

40:                                               ; preds = %35, %38
  %41 = phi ptr [ %39, %38 ], [ null, %35 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %343, label %43

43:                                               ; preds = %40, %339
  %44 = phi ptr [ %341, %339 ], [ %41, %40 ]
  br label %45

45:                                               ; preds = %43, %336
  %46 = phi i64 [ 0, %43 ], [ %337, %336 ]
  %47 = getelementptr inbounds [4 x ptr], ptr @vect_vect_recog_func_ptrs, i64 0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4)
  store ptr %44, ptr %4, align 8
  store ptr %36, ptr %18, align 8
  store ptr %24, ptr %19, align 8
  %49 = load ptr, ptr %44, align 8, !tbaa !70
  %50 = getelementptr inbounds %struct.gimple_statement_base, ptr %49, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !46
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %45
  %54 = load ptr, ptr @stmt_vec_info_vec, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %54, align 8, !tbaa !72
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i32 [ %57, %56 ], [ 0, %53 ]
  %60 = icmp ugt i32 %51, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 629, ptr noundef nonnull @.str.3) #12
  br label %62

62:                                               ; preds = %61, %58
  %63 = load ptr, ptr @stmt_vec_info_vec, align 8
  %64 = add i32 %51, -1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %63, i64 0, i32 2, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !35
  br label %68

68:                                               ; preds = %62, %45
  %69 = phi ptr [ %67, %62 ], [ null, %45 ]
  %70 = getelementptr inbounds %struct._stmt_vec_info, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %72 = call ptr %48(ptr noundef %49, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %73 = icmp eq ptr %72, null
  br i1 %73, label %336, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr %2, align 8, !tbaa !35
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 14
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 @vector_type_mode(ptr noundef nonnull %75) #12
  br label %86

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = lshr i32 %83, 16
  %85 = and i32 %84, 255
  br label %86

86:                                               ; preds = %81, %79
  %87 = phi i32 [ %80, %79 ], [ %85, %81 ]
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !46
  %91 = icmp eq i8 %90, 12
  br i1 %91, label %182, label %92

92:                                               ; preds = %86
  %93 = load ptr, ptr %2, align 8, !tbaa !35
  %94 = load i64, ptr %93, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 14
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 @vector_type_mode(ptr noundef nonnull %93) #12
  br label %104

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.tree_type, ptr %93, i64 0, i32 6
  %101 = load i32, ptr %100, align 4
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 255
  br label %104

104:                                              ; preds = %99, %97
  %105 = phi i32 [ %98, %97 ], [ %103, %99 ]
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !46
  %109 = icmp eq i8 %108, 17
  br i1 %109, label %182, label %110

110:                                              ; preds = %104
  %111 = load ptr, ptr %2, align 8, !tbaa !35
  %112 = load i64, ptr %111, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 14
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 @vector_type_mode(ptr noundef nonnull %111) #12
  br label %122

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = lshr i32 %119, 16
  %121 = and i32 %120, 255
  br label %122

122:                                              ; preds = %117, %115
  %123 = phi i32 [ %116, %115 ], [ %121, %117 ]
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !46
  %127 = icmp eq i8 %126, 13
  br i1 %127, label %182, label %128

128:                                              ; preds = %122
  %129 = load ptr, ptr %2, align 8, !tbaa !35
  %130 = load i64, ptr %129, align 8
  %131 = and i64 %130, 65535
  %132 = icmp eq i64 %131, 14
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = call i32 @vector_type_mode(ptr noundef nonnull %129) #12
  br label %140

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.tree_type, ptr %129, i64 0, i32 6
  %137 = load i32, ptr %136, align 4
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  br label %140

140:                                              ; preds = %135, %133
  %141 = phi i32 [ %134, %133 ], [ %139, %135 ]
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !46
  %145 = icmp eq i8 %144, 14
  br i1 %145, label %182, label %146

146:                                              ; preds = %140
  %147 = load ptr, ptr %2, align 8, !tbaa !35
  %148 = load i64, ptr %147, align 8
  %149 = and i64 %148, 65535
  %150 = icmp eq i64 %149, 14
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = call i32 @vector_type_mode(ptr noundef nonnull %147) #12
  br label %158

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.tree_type, ptr %147, i64 0, i32 6
  %155 = load i32, ptr %154, align 4
  %156 = lshr i32 %155, 16
  %157 = and i32 %156, 255
  br label %158

158:                                              ; preds = %153, %151
  %159 = phi i32 [ %152, %151 ], [ %157, %153 ]
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !46
  %163 = icmp eq i8 %162, 15
  br i1 %163, label %182, label %164

164:                                              ; preds = %158
  %165 = load ptr, ptr %2, align 8, !tbaa !35
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 65535
  %168 = icmp eq i64 %167, 14
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = call i32 @vector_type_mode(ptr noundef nonnull %165) #12
  br label %176

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.tree_type, ptr %165, i64 0, i32 6
  %173 = load i32, ptr %172, align 4
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  br label %176

176:                                              ; preds = %171, %169
  %177 = phi i32 [ %170, %169 ], [ %175, %171 ]
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !46
  %181 = icmp eq i8 %180, 16
  br i1 %181, label %182, label %184

182:                                              ; preds = %176, %158, %140, %122, %104, %86
  %183 = load ptr, ptr %2, align 8, !tbaa !35
  br label %268

184:                                              ; preds = %176
  %185 = load ptr, ptr %2, align 8, !tbaa !35
  %186 = call ptr @get_vectype_for_scalar_type(ptr noundef %185) #12
  %187 = icmp eq ptr %186, null
  br i1 %187, label %336, label %188

188:                                              ; preds = %184
  %189 = load i32, ptr %72, align 8
  %190 = and i32 %189, 255
  %191 = trunc i32 %189 to i8
  switch i8 %191, label %216 [
    i8 6, label %192
    i8 8, label %217
  ]

192:                                              ; preds = %188
  %193 = lshr i32 %189, 16
  %194 = zext nneg i32 %193 to i64
  %195 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !46
  %197 = icmp eq i8 %196, 3
  br i1 %197, label %198, label %217

198:                                              ; preds = %192
  %199 = add nsw i32 %190, -1
  %200 = icmp ult i32 %199, 9
  call void @llvm.assume(i1 %200)
  %201 = zext nneg i32 %190 to i64
  %202 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !50
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %204
  %206 = load i64, ptr %205, align 8, !tbaa !77
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %198
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %209

209:                                              ; preds = %208, %198
  %210 = getelementptr inbounds i8, ptr %72, i64 %206
  %211 = getelementptr inbounds ptr, ptr %210, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !35
  %213 = load i64, ptr %212, align 8
  %214 = trunc i64 %213 to i32
  %215 = and i32 %214, 65535
  br label %217

216:                                              ; preds = %188
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 697, ptr noundef nonnull @.str.3) #12
  br label %217

217:                                              ; preds = %188, %216, %209, %192
  %218 = phi i32 [ 59, %216 ], [ %215, %209 ], [ %193, %192 ], [ 59, %188 ]
  %219 = call ptr @optab_for_tree_code(i32 noundef %218, ptr noundef nonnull %186, i32 noundef 0) #12
  %220 = load i64, ptr %186, align 8
  %221 = and i64 %220, 65535
  %222 = icmp eq i64 %221, 14
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = call i32 @vector_type_mode(ptr noundef nonnull %186) #12
  br label %230

225:                                              ; preds = %217
  %226 = getelementptr inbounds %struct.tree_type, ptr %186, i64 0, i32 6
  %227 = load i32, ptr %226, align 4
  %228 = lshr i32 %227, 16
  %229 = and i32 %228, 255
  br label %230

230:                                              ; preds = %225, %223
  %231 = phi i32 [ %224, %223 ], [ %229, %225 ]
  %232 = icmp eq ptr %219, null
  br i1 %232, label %336, label %233

233:                                              ; preds = %230
  %234 = sext i32 %231 to i64
  %235 = getelementptr inbounds %struct.optab_d, ptr %219, i64 0, i32 4, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !78
  %237 = icmp eq i32 %236, 2956
  br i1 %237, label %336, label %238

238:                                              ; preds = %233
  %239 = load ptr, ptr %3, align 8, !tbaa !35
  %240 = icmp eq ptr %239, null
  br i1 %240, label %268, label %241

241:                                              ; preds = %238
  %242 = call ptr @get_vectype_for_scalar_type(ptr noundef nonnull %239) #12
  %243 = icmp eq ptr %242, null
  br i1 %243, label %336, label %244

244:                                              ; preds = %241
  %245 = zext i32 %236 to i64
  %246 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %245, i32 3
  %247 = load ptr, ptr %246, align 8, !tbaa !80
  %248 = getelementptr inbounds %struct.insn_operand_data, ptr %247, i64 0, i32 2
  %249 = load i16, ptr %248, align 8
  %250 = zext i16 %249 to i32
  %251 = load ptr, ptr %3, align 8, !tbaa !35
  %252 = call ptr @get_vectype_for_scalar_type(ptr noundef %251) #12
  %253 = load i64, ptr %252, align 8
  %254 = and i64 %253, 65535
  %255 = icmp eq i64 %254, 14
  %256 = load ptr, ptr %3, align 8, !tbaa !35
  %257 = call ptr @get_vectype_for_scalar_type(ptr noundef %256) #12
  br i1 %255, label %258, label %260

258:                                              ; preds = %244
  %259 = call i32 @vector_type_mode(ptr noundef %257) #12
  br label %265

260:                                              ; preds = %244
  %261 = getelementptr inbounds %struct.tree_type, ptr %257, i64 0, i32 6
  %262 = load i32, ptr %261, align 4
  %263 = lshr i32 %262, 16
  %264 = and i32 %263, 255
  br label %265

265:                                              ; preds = %260, %258
  %266 = phi i32 [ %259, %258 ], [ %264, %260 ]
  %267 = icmp eq i32 %266, %250
  br i1 %267, label %268, label %336

268:                                              ; preds = %265, %238, %182
  %269 = phi ptr [ %183, %182 ], [ %186, %265 ], [ %186, %238 ]
  %270 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #12
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %276, label %272

272:                                              ; preds = %268
  %273 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %274 = call i64 @fwrite(ptr nonnull @.str.9, i64 20, i64 1, ptr %273)
  %275 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %275, ptr noundef nonnull %72, i32 noundef 0, i32 noundef 2) #12
  br label %276

276:                                              ; preds = %272, %268
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef nonnull %72, i32 noundef 1) #12
  %277 = call ptr @new_stmt_vec_info(ptr noundef nonnull %72, ptr noundef %71, ptr noundef null) #12
  %278 = getelementptr inbounds %struct.gimple_statement_base, ptr %72, i64 0, i32 1
  %279 = load i32, ptr %278, align 4, !tbaa !46
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %305

281:                                              ; preds = %276
  %282 = icmp eq ptr %277, null
  br i1 %282, label %283, label %284

283:                                              ; preds = %281
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 639, ptr noundef nonnull @.str.3) #12
  br label %284

284:                                              ; preds = %283, %281
  %285 = load ptr, ptr @stmt_vec_info_vec, align 8
  %286 = icmp eq ptr %285, null
  br i1 %286, label %290, label %287

287:                                              ; preds = %284
  %288 = load i32, ptr %285, align 8, !tbaa !72
  %289 = add i32 %288, 1
  br label %290

290:                                              ; preds = %287, %284
  %291 = phi i32 [ %289, %287 ], [ 1, %284 ]
  store i32 %291, ptr %278, align 4, !tbaa !46
  %292 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %293 = icmp eq ptr %292, null
  br i1 %293, label %299, label %294

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %292, i64 0, i32 1
  %296 = load i32, ptr %295, align 4, !tbaa !82
  %297 = load i32, ptr %292, align 8, !tbaa !72
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %294, %290
  %300 = call ptr @vec_heap_p_reserve(ptr noundef %292, i32 noundef 1) #12
  store ptr %300, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  br label %301

301:                                              ; preds = %299, %294
  %302 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !35
  %303 = load i32, ptr %302, align 8, !tbaa !72
  %304 = add i32 %303, 1
  store i32 %304, ptr %302, align 8, !tbaa !72
  br label %308

305:                                              ; preds = %276
  %306 = load ptr, ptr @stmt_vec_info_vec, align 8
  %307 = add i32 %279, -1
  br label %308

308:                                              ; preds = %305, %301
  %309 = phi i32 [ %307, %305 ], [ %303, %301 ]
  %310 = phi ptr [ %306, %305 ], [ %302, %301 ]
  %311 = zext i32 %309 to i64
  %312 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %310, i64 0, i32 2, i64 %311
  store ptr %277, ptr %312, align 8, !tbaa !35
  %313 = load i32, ptr %278, align 4, !tbaa !46
  %314 = icmp ne i32 %313, 0
  call void @llvm.assume(i1 %314)
  %315 = load ptr, ptr @stmt_vec_info_vec, align 8
  %316 = icmp eq ptr %315, null
  br i1 %316, label %319, label %317

317:                                              ; preds = %308
  %318 = load i32, ptr %315, align 8, !tbaa !72
  br label %319

319:                                              ; preds = %317, %308
  %320 = phi i32 [ %318, %317 ], [ 0, %308 ]
  %321 = icmp ugt i32 %313, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 629, ptr noundef nonnull @.str.3) #12
  br label %323

323:                                              ; preds = %322, %319
  %324 = load ptr, ptr @stmt_vec_info_vec, align 8
  %325 = add i32 %313, -1
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %324, i64 0, i32 2, i64 %326
  %328 = load ptr, ptr %327, align 8, !tbaa !35
  %329 = getelementptr inbounds %struct._stmt_vec_info, ptr %328, i64 0, i32 14
  store ptr %49, ptr %329, align 8, !tbaa !83
  %330 = getelementptr inbounds %struct._stmt_vec_info, ptr %69, i64 0, i32 16
  %331 = load i32, ptr %330, align 8, !tbaa !84
  %332 = getelementptr inbounds %struct._stmt_vec_info, ptr %328, i64 0, i32 16
  store i32 %331, ptr %332, align 8, !tbaa !84
  %333 = getelementptr inbounds %struct._stmt_vec_info, ptr %328, i64 0, i32 5
  store ptr %269, ptr %333, align 8, !tbaa !85
  %334 = getelementptr inbounds %struct._stmt_vec_info, ptr %69, i64 0, i32 13
  store i8 1, ptr %334, align 8, !tbaa !86
  %335 = getelementptr inbounds %struct._stmt_vec_info, ptr %69, i64 0, i32 14
  store ptr %72, ptr %335, align 8, !tbaa !83
  br label %336

336:                                              ; preds = %265, %68, %184, %230, %233, %241, %323
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4)
  %337 = add nuw nsw i64 %46, 1
  %338 = icmp eq i64 %337, 4
  br i1 %338, label %339, label %45, !llvm.loop !87

339:                                              ; preds = %336
  %340 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %44, i64 0, i32 2
  %341 = load ptr, ptr %340, align 8, !tbaa !88
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %43, !llvm.loop !89

343:                                              ; preds = %339, %40
  %344 = add nuw nsw i64 %22, 1
  %345 = icmp eq i64 %344, %20
  br i1 %345, label %346, label %21, !llvm.loop !90

346:                                              ; preds = %343, %15
  ret void
}

declare zeroext i8 @vect_print_dump_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal ptr @vect_recog_widen_mult_pattern(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #9 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 6
  br i1 %14, label %15, label %174

15:                                               ; preds = %3
  %16 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  %17 = load i32, ptr %0, align 8
  %18 = trunc i32 %17 to i8
  switch i8 %18, label %21 [
    i8 6, label %19
    i8 1, label %19
    i8 8, label %22
  ]

19:                                               ; preds = %15, %15
  %20 = lshr i32 %17, 16
  br label %22

21:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #12
  br label %22

22:                                               ; preds = %21, %19, %15
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ], [ 59, %15 ]
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !46
  %27 = icmp eq i8 %26, 3
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load i32, ptr %0, align 8
  %30 = and i32 %29, 255
  %31 = add nsw i32 %30, -1
  %32 = icmp ult i32 %31, 9
  tail call void @llvm.assume(i1 %32)
  %33 = zext nneg i32 %30 to i64
  %34 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !77
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %41

41:                                               ; preds = %40, %28
  %42 = getelementptr inbounds i8, ptr %0, i64 %38
  %43 = getelementptr inbounds ptr, ptr %42, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = and i32 %46, 65535
  br label %48

48:                                               ; preds = %22, %41
  %49 = phi i32 [ %47, %41 ], [ %23, %22 ]
  %50 = icmp eq i32 %49, 65
  br i1 %50, label %51, label %174

51:                                               ; preds = %48
  %52 = load i32, ptr %0, align 8
  %53 = and i32 %52, 255
  %54 = add nsw i32 %53, -10
  %55 = icmp ult i32 %54, -9
  br i1 %55, label %69, label %56

56:                                               ; preds = %51
  %57 = zext nneg i32 %53 to i64
  %58 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !50
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !77
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %65

65:                                               ; preds = %64, %56
  %66 = getelementptr inbounds i8, ptr %0, i64 %62
  %67 = getelementptr inbounds ptr, ptr %66, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  br label %69

69:                                               ; preds = %51, %65
  %70 = phi ptr [ %68, %65 ], [ null, %51 ]
  %71 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !46
  %73 = icmp ugt i32 %72, 2
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load i32, ptr %0, align 8
  %76 = and i32 %75, 255
  %77 = add nsw i32 %76, -10
  %78 = icmp ult i32 %77, -9
  br i1 %78, label %92, label %79

79:                                               ; preds = %74
  %80 = zext nneg i32 %76 to i64
  %81 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !50
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !77
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %88

88:                                               ; preds = %87, %79
  %89 = getelementptr inbounds i8, ptr %0, i64 %85
  %90 = getelementptr inbounds ptr, ptr %89, i64 2
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  br label %92

92:                                               ; preds = %69, %74, %88
  %93 = phi ptr [ null, %69 ], [ %91, %88 ], [ null, %74 ]
  %94 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !46
  %96 = tail call zeroext i8 @types_compatible_p(ptr noundef %95, ptr noundef %16) #12
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %174, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.tree_common, ptr %93, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  %101 = tail call zeroext i8 @types_compatible_p(ptr noundef %100, ptr noundef %16) #12
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %174, label %103

103:                                              ; preds = %98
  %104 = call fastcc zeroext i8 @widened_name_p(ptr noundef %70, ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %4), !range !91
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %174, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %4, align 8, !tbaa !35
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 255
  %110 = add nsw i32 %109, -10
  %111 = icmp ult i32 %110, -9
  br i1 %111, label %125, label %112

112:                                              ; preds = %106
  %113 = zext nneg i32 %109 to i64
  %114 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !50
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !77
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %121

121:                                              ; preds = %120, %112
  %122 = getelementptr inbounds i8, ptr %107, i64 %118
  %123 = getelementptr inbounds ptr, ptr %122, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !35
  br label %125

125:                                              ; preds = %106, %121
  %126 = phi ptr [ %124, %121 ], [ null, %106 ]
  %127 = call fastcc zeroext i8 @widened_name_p(ptr noundef %93, ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %5), !range !91
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %174, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr %5, align 8, !tbaa !35
  %131 = load i32, ptr %130, align 8
  %132 = and i32 %131, 255
  %133 = add nsw i32 %132, -10
  %134 = icmp ult i32 %133, -9
  br i1 %134, label %148, label %135

135:                                              ; preds = %129
  %136 = zext nneg i32 %132 to i64
  %137 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !50
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !77
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %144

144:                                              ; preds = %143, %135
  %145 = getelementptr inbounds i8, ptr %130, i64 %141
  %146 = getelementptr inbounds ptr, ptr %145, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !35
  br label %148

148:                                              ; preds = %129, %144
  %149 = phi ptr [ %147, %144 ], [ null, %129 ]
  %150 = load ptr, ptr %6, align 8, !tbaa !35
  %151 = load ptr, ptr %7, align 8, !tbaa !35
  %152 = call zeroext i8 @types_compatible_p(ptr noundef %150, ptr noundef %151) #12
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %174, label %154

154:                                              ; preds = %148
  %155 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #12
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %159 = call i64 @fwrite(ptr nonnull @.str.1, i64 41, i64 1, ptr %158)
  br label %160

160:                                              ; preds = %157, %154
  %161 = call ptr @get_vectype_for_scalar_type(ptr noundef %150) #12
  %162 = icmp eq ptr %161, null
  br i1 %162, label %174, label %163

163:                                              ; preds = %160
  %164 = call zeroext i8 @supportable_widening_operation(i32 noundef 169, ptr noundef nonnull %0, ptr noundef nonnull %161, ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #12
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %163
  store ptr %161, ptr %1, align 8, !tbaa !35
  store ptr null, ptr %2, align 8, !tbaa !35
  %167 = call fastcc ptr @vect_recog_temp_ssa_var(ptr noundef %16, ptr noundef null)
  %168 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 169, ptr noundef %167, ptr noundef %126, ptr noundef %149) #12
  %169 = getelementptr inbounds %struct.tree_ssa_name, ptr %167, i64 0, i32 2
  store ptr %168, ptr %169, align 8, !tbaa !46
  %170 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #12
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %166
  %173 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %173, ptr noundef %168, i32 noundef 0, i32 noundef 2) #12
  br label %174

174:                                              ; preds = %166, %172, %160, %163, %148, %125, %103, %92, %98, %48, %3
  %175 = phi ptr [ null, %3 ], [ null, %48 ], [ null, %98 ], [ null, %92 ], [ null, %103 ], [ null, %125 ], [ null, %148 ], [ null, %163 ], [ null, %160 ], [ %168, %172 ], [ %168, %166 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret ptr %175
}

; Function Attrs: cold nounwind uwtable
define internal ptr @vect_recog_widen_sum_pattern(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #9 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !46
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr @stmt_vec_info_vec, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 8, !tbaa !72
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %13, %12 ], [ 0, %9 ]
  %16 = icmp ugt i32 %7, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 629, ptr noundef nonnull @.str.3) #12
  br label %18

18:                                               ; preds = %17, %14
  %19 = load ptr, ptr @stmt_vec_info_vec, align 8
  %20 = add i32 %7, -1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %19, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  br label %24

24:                                               ; preds = %3, %18
  %25 = phi ptr [ %23, %18 ], [ null, %3 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %26 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  %29 = load i32, ptr %0, align 8
  %30 = and i32 %29, 255
  %31 = icmp eq i32 %30, 6
  br i1 %31, label %32, label %172

32:                                               ; preds = %24
  %33 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  %34 = load i32, ptr %0, align 8
  %35 = trunc i32 %34 to i8
  switch i8 %35, label %38 [
    i8 6, label %36
    i8 1, label %36
    i8 8, label %39
  ]

36:                                               ; preds = %32, %32
  %37 = lshr i32 %34, 16
  br label %39

38:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #12
  br label %39

39:                                               ; preds = %38, %36, %32
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ], [ 59, %32 ]
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !46
  %44 = icmp eq i8 %43, 3
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load i32, ptr %0, align 8
  %47 = and i32 %46, 255
  %48 = add nsw i32 %47, -1
  %49 = icmp ult i32 %48, 9
  tail call void @llvm.assume(i1 %49)
  %50 = zext nneg i32 %47 to i64
  %51 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !77
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %58

58:                                               ; preds = %57, %45
  %59 = getelementptr inbounds i8, ptr %0, i64 %55
  %60 = getelementptr inbounds ptr, ptr %59, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !35
  %62 = load i64, ptr %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = and i32 %63, 65535
  br label %65

65:                                               ; preds = %39, %58
  %66 = phi i32 [ %64, %58 ], [ %40, %39 ]
  %67 = icmp eq i32 %66, 63
  br i1 %67, label %68, label %172

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 16
  %70 = load i32, ptr %69, align 8, !tbaa !84
  %71 = icmp eq i32 %70, 5
  br i1 %71, label %72, label %172

72:                                               ; preds = %68
  %73 = load i32, ptr %0, align 8
  %74 = and i32 %73, 255
  %75 = add nsw i32 %74, -10
  %76 = icmp ult i32 %75, -9
  br i1 %76, label %90, label %77

77:                                               ; preds = %72
  %78 = zext nneg i32 %74 to i64
  %79 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !50
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !77
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %86

86:                                               ; preds = %85, %77
  %87 = getelementptr inbounds i8, ptr %0, i64 %83
  %88 = getelementptr inbounds ptr, ptr %87, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !35
  br label %90

90:                                               ; preds = %72, %86
  %91 = phi ptr [ %89, %86 ], [ null, %72 ]
  %92 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !46
  %94 = icmp ugt i32 %93, 2
  br i1 %94, label %95, label %113

95:                                               ; preds = %90
  %96 = load i32, ptr %0, align 8
  %97 = and i32 %96, 255
  %98 = add nsw i32 %97, -10
  %99 = icmp ult i32 %98, -9
  br i1 %99, label %113, label %100

100:                                              ; preds = %95
  %101 = zext nneg i32 %97 to i64
  %102 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !50
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !77
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %109

109:                                              ; preds = %108, %100
  %110 = getelementptr inbounds i8, ptr %0, i64 %106
  %111 = getelementptr inbounds ptr, ptr %110, i64 2
  %112 = load ptr, ptr %111, align 8, !tbaa !35
  br label %113

113:                                              ; preds = %90, %95, %109
  %114 = phi ptr [ null, %90 ], [ %112, %109 ], [ null, %95 ]
  %115 = getelementptr inbounds %struct.tree_common, ptr %91, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !46
  %117 = tail call zeroext i8 @types_compatible_p(ptr noundef %116, ptr noundef %33) #12
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %172, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !46
  %122 = tail call zeroext i8 @types_compatible_p(ptr noundef %121, ptr noundef %33) #12
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %172, label %124

124:                                              ; preds = %119
  %125 = call fastcc zeroext i8 @widened_name_p(ptr noundef %91, ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %4), !range !91
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %172, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %4, align 8, !tbaa !35
  %129 = load i32, ptr %128, align 8
  %130 = and i32 %129, 255
  %131 = add nsw i32 %130, -10
  %132 = icmp ult i32 %131, -9
  br i1 %132, label %146, label %133

133:                                              ; preds = %127
  %134 = zext nneg i32 %130 to i64
  %135 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !50
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !77
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %142

142:                                              ; preds = %141, %133
  %143 = getelementptr inbounds i8, ptr %128, i64 %139
  %144 = getelementptr inbounds ptr, ptr %143, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !35
  br label %146

146:                                              ; preds = %127, %142
  %147 = phi ptr [ %145, %142 ], [ null, %127 ]
  %148 = load ptr, ptr %5, align 8, !tbaa !35
  store ptr %148, ptr %1, align 8, !tbaa !35
  store ptr %33, ptr %2, align 8, !tbaa !35
  %149 = call ptr @create_tmp_var(ptr noundef %33, ptr noundef nonnull @.str.5) #12
  %150 = call zeroext i8 @add_referenced_var(ptr noundef %149) #12
  %151 = load ptr, ptr @cfun, align 8, !tbaa !35
  %152 = call ptr @make_ssa_name_fn(ptr noundef %151, ptr noundef %149, ptr noundef null) #12
  %153 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 168, ptr noundef %152, ptr noundef %147, ptr noundef %114) #12
  %154 = getelementptr inbounds %struct.tree_ssa_name, ptr %152, i64 0, i32 2
  store ptr %153, ptr %154, align 8, !tbaa !46
  %155 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #12
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %146
  %158 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %159 = call i64 @fwrite(ptr nonnull @.str.6, i64 40, i64 1, ptr %158)
  %160 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %160, ptr noundef %153, i32 noundef 0, i32 noundef 2) #12
  br label %161

161:                                              ; preds = %157, %146
  %162 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 8
  %163 = load ptr, ptr %162, align 8, !tbaa !92
  %164 = icmp eq ptr %163, null
  br i1 %164, label %172, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %167 = load ptr, ptr %166, align 8, !tbaa !46
  %168 = getelementptr inbounds %struct.basic_block_def, ptr %167, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !93
  %170 = icmp eq ptr %163, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 631, ptr noundef nonnull @.str.3) #12
  br label %172

172:                                              ; preds = %161, %171, %165, %124, %113, %119, %68, %65, %24
  %173 = phi ptr [ null, %24 ], [ null, %65 ], [ null, %68 ], [ null, %119 ], [ null, %113 ], [ null, %124 ], [ %153, %165 ], [ %153, %171 ], [ %153, %161 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret ptr %173
}

; Function Attrs: cold nounwind uwtable
define internal ptr @vect_recog_dot_prod_pattern(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #9 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !46
  %11 = icmp ne i32 %10, 0
  tail call void @llvm.assume(i1 %11)
  %12 = load ptr, ptr @stmt_vec_info_vec, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, ptr %12, align 8, !tbaa !72
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i32 [ %15, %14 ], [ 0, %3 ]
  %18 = icmp ugt i32 %10, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 629, ptr noundef nonnull @.str.3) #12
  br label %20

20:                                               ; preds = %19, %16
  %21 = load ptr, ptr @stmt_vec_info_vec, align 8
  %22 = add i32 %10, -1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %21, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %26 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  %29 = load i32, ptr %0, align 8
  %30 = and i32 %29, 255
  %31 = icmp eq i32 %30, 6
  br i1 %31, label %32, label %561

32:                                               ; preds = %20
  %33 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %0)
  %34 = load i32, ptr %0, align 8
  %35 = trunc i32 %34 to i8
  switch i8 %35, label %38 [
    i8 6, label %36
    i8 1, label %36
    i8 8, label %39
  ]

36:                                               ; preds = %32, %32
  %37 = lshr i32 %34, 16
  br label %39

38:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #12
  br label %39

39:                                               ; preds = %38, %36, %32
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ], [ 59, %32 ]
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !46
  %44 = icmp eq i8 %43, 3
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load i32, ptr %0, align 8
  %47 = and i32 %46, 255
  %48 = add nsw i32 %47, -1
  %49 = icmp ult i32 %48, 9
  tail call void @llvm.assume(i1 %49)
  %50 = zext nneg i32 %47 to i64
  %51 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !77
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %58

58:                                               ; preds = %57, %45
  %59 = getelementptr inbounds i8, ptr %0, i64 %55
  %60 = getelementptr inbounds ptr, ptr %59, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !35
  %62 = load i64, ptr %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = and i32 %63, 65535
  br label %65

65:                                               ; preds = %39, %58
  %66 = phi i32 [ %64, %58 ], [ %40, %39 ]
  %67 = icmp eq i32 %66, 63
  br i1 %67, label %68, label %561

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 13
  %70 = load i8, ptr %69, align 8, !tbaa !86
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %155, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 14
  %74 = load ptr, ptr %73, align 8, !tbaa !83
  %75 = tail call fastcc ptr @gimple_expr_type(ptr noundef %74)
  %76 = load i32, ptr %74, align 8
  %77 = trunc i32 %76 to i8
  switch i8 %77, label %80 [
    i8 6, label %78
    i8 1, label %78
    i8 8, label %81
  ]

78:                                               ; preds = %72, %72
  %79 = lshr i32 %76, 16
  br label %81

80:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #12
  br label %81

81:                                               ; preds = %80, %78, %72
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ], [ 59, %72 ]
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !46
  %86 = icmp eq i8 %85, 3
  br i1 %86, label %87, label %107

87:                                               ; preds = %81
  %88 = load i32, ptr %74, align 8
  %89 = and i32 %88, 255
  %90 = add nsw i32 %89, -1
  %91 = icmp ult i32 %90, 9
  tail call void @llvm.assume(i1 %91)
  %92 = zext nneg i32 %89 to i64
  %93 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !50
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !77
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %100

100:                                              ; preds = %99, %87
  %101 = getelementptr inbounds i8, ptr %74, i64 %97
  %102 = getelementptr inbounds ptr, ptr %101, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !35
  %104 = load i64, ptr %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = and i32 %105, 65535
  br label %107

107:                                              ; preds = %81, %100
  %108 = phi i32 [ %106, %100 ], [ %82, %81 ]
  %109 = icmp eq i32 %108, 168
  br i1 %109, label %110, label %561

110:                                              ; preds = %107
  %111 = load i32, ptr %74, align 8
  %112 = and i32 %111, 255
  %113 = add nsw i32 %112, -10
  %114 = icmp ult i32 %113, -9
  br i1 %114, label %128, label %115

115:                                              ; preds = %110
  %116 = zext nneg i32 %112 to i64
  %117 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !50
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !77
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %124

124:                                              ; preds = %123, %115
  %125 = getelementptr inbounds i8, ptr %74, i64 %121
  %126 = getelementptr inbounds ptr, ptr %125, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !35
  br label %128

128:                                              ; preds = %110, %124
  %129 = phi ptr [ %127, %124 ], [ null, %110 ]
  %130 = getelementptr inbounds %struct.gimple_statement_base, ptr %74, i64 0, i32 3
  %131 = load i32, ptr %130, align 4, !tbaa !46
  %132 = icmp ugt i32 %131, 2
  br i1 %132, label %133, label %151

133:                                              ; preds = %128
  %134 = load i32, ptr %74, align 8
  %135 = and i32 %134, 255
  %136 = add nsw i32 %135, -10
  %137 = icmp ult i32 %136, -9
  br i1 %137, label %151, label %138

138:                                              ; preds = %133
  %139 = zext nneg i32 %135 to i64
  %140 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !50
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %142
  %144 = load i64, ptr %143, align 8, !tbaa !77
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %147

147:                                              ; preds = %146, %138
  %148 = getelementptr inbounds i8, ptr %74, i64 %144
  %149 = getelementptr inbounds ptr, ptr %148, i64 2
  %150 = load ptr, ptr %149, align 8, !tbaa !35
  br label %151

151:                                              ; preds = %128, %133, %147
  %152 = phi ptr [ null, %128 ], [ %150, %147 ], [ null, %133 ]
  %153 = getelementptr inbounds %struct.tree_common, ptr %129, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !46
  store ptr %154, ptr %4, align 8, !tbaa !35
  br label %238

155:                                              ; preds = %68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %156 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 16
  %157 = load i32, ptr %156, align 8, !tbaa !84
  %158 = icmp eq i32 %157, 5
  br i1 %158, label %159, label %234

159:                                              ; preds = %155
  %160 = load i32, ptr %0, align 8
  %161 = and i32 %160, 255
  %162 = add nsw i32 %161, -10
  %163 = icmp ult i32 %162, -9
  br i1 %163, label %177, label %164

164:                                              ; preds = %159
  %165 = zext nneg i32 %161 to i64
  %166 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !50
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %168
  %170 = load i64, ptr %169, align 8, !tbaa !77
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %173

173:                                              ; preds = %172, %164
  %174 = getelementptr inbounds i8, ptr %0, i64 %170
  %175 = getelementptr inbounds ptr, ptr %174, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !35
  br label %177

177:                                              ; preds = %159, %173
  %178 = phi ptr [ %176, %173 ], [ null, %159 ]
  %179 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %180 = load i32, ptr %179, align 4, !tbaa !46
  %181 = icmp ugt i32 %180, 2
  br i1 %181, label %182, label %200

182:                                              ; preds = %177
  %183 = load i32, ptr %0, align 8
  %184 = and i32 %183, 255
  %185 = add nsw i32 %184, -10
  %186 = icmp ult i32 %185, -9
  br i1 %186, label %200, label %187

187:                                              ; preds = %182
  %188 = zext nneg i32 %184 to i64
  %189 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !50
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %191
  %193 = load i64, ptr %192, align 8, !tbaa !77
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %196

196:                                              ; preds = %195, %187
  %197 = getelementptr inbounds i8, ptr %0, i64 %193
  %198 = getelementptr inbounds ptr, ptr %197, i64 2
  %199 = load ptr, ptr %198, align 8, !tbaa !35
  br label %200

200:                                              ; preds = %177, %182, %196
  %201 = phi ptr [ null, %177 ], [ %199, %196 ], [ null, %182 ]
  %202 = getelementptr inbounds %struct.tree_common, ptr %178, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !46
  %204 = tail call zeroext i8 @types_compatible_p(ptr noundef %203, ptr noundef %33) #12
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %234, label %206

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.tree_common, ptr %201, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !46
  %209 = tail call zeroext i8 @types_compatible_p(ptr noundef %208, ptr noundef %33) #12
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %234, label %211

211:                                              ; preds = %206
  %212 = call fastcc zeroext i8 @widened_name_p(ptr noundef %178, ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5), !range !91
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %233, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr %5, align 8, !tbaa !35
  %216 = load i32, ptr %215, align 8
  %217 = and i32 %216, 255
  %218 = add nsw i32 %217, -10
  %219 = icmp ult i32 %218, -9
  br i1 %219, label %234, label %220

220:                                              ; preds = %214
  %221 = zext nneg i32 %217 to i64
  %222 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !50
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %224
  %226 = load i64, ptr %225, align 8, !tbaa !77
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %220
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %229

229:                                              ; preds = %228, %220
  %230 = getelementptr inbounds i8, ptr %215, i64 %226
  %231 = getelementptr inbounds ptr, ptr %230, i64 1
  %232 = load ptr, ptr %231, align 8, !tbaa !35
  br label %234

233:                                              ; preds = %211
  store ptr %33, ptr %4, align 8, !tbaa !35
  br label %234

234:                                              ; preds = %229, %214, %233, %200, %206, %155
  %235 = phi ptr [ undef, %155 ], [ %201, %206 ], [ %201, %200 ], [ %201, %233 ], [ %201, %214 ], [ %201, %229 ]
  %236 = phi ptr [ undef, %155 ], [ %178, %206 ], [ %178, %200 ], [ %178, %233 ], [ null, %214 ], [ %232, %229 ]
  %237 = phi i1 [ false, %155 ], [ false, %206 ], [ false, %200 ], [ true, %233 ], [ true, %214 ], [ true, %229 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br i1 %237, label %238, label %561

238:                                              ; preds = %234, %151
  %239 = phi ptr [ %75, %151 ], [ %33, %234 ]
  %240 = phi ptr [ %152, %151 ], [ %235, %234 ]
  %241 = phi ptr [ %129, %151 ], [ %236, %234 ]
  %242 = load ptr, ptr %4, align 8, !tbaa !35
  %243 = getelementptr inbounds %struct.tree_ssa_name, ptr %241, i64 0, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !46
  %245 = load i32, ptr %244, align 8
  %246 = and i32 %245, 255
  %247 = icmp eq i32 %246, 6
  br i1 %247, label %248, label %561

248:                                              ; preds = %238
  %249 = getelementptr inbounds %struct.gimple_statement_base, ptr %244, i64 0, i32 1
  %250 = load i32, ptr %249, align 4, !tbaa !46
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %267, label %252

252:                                              ; preds = %248
  %253 = load ptr, ptr @stmt_vec_info_vec, align 8
  %254 = icmp eq ptr %253, null
  br i1 %254, label %257, label %255

255:                                              ; preds = %252
  %256 = load i32, ptr %253, align 8, !tbaa !72
  br label %257

257:                                              ; preds = %255, %252
  %258 = phi i32 [ %256, %255 ], [ 0, %252 ]
  %259 = icmp ugt i32 %250, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %257
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 629, ptr noundef nonnull @.str.3) #12
  br label %261

261:                                              ; preds = %260, %257
  %262 = load ptr, ptr @stmt_vec_info_vec, align 8
  %263 = add i32 %250, -1
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %262, i64 0, i32 2, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !35
  br label %267

267:                                              ; preds = %248, %261
  %268 = phi ptr [ %266, %261 ], [ null, %248 ]
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 262, ptr noundef nonnull @.str.3) #12
  br label %271

271:                                              ; preds = %267, %270
  %272 = getelementptr inbounds %struct._stmt_vec_info, ptr %268, i64 0, i32 16
  %273 = load i32, ptr %272, align 8, !tbaa !84
  %274 = icmp eq i32 %273, 3
  br i1 %274, label %275, label %561

275:                                              ; preds = %271
  %276 = load i32, ptr %244, align 8
  %277 = trunc i32 %276 to i8
  switch i8 %277, label %280 [
    i8 6, label %278
    i8 1, label %278
    i8 8, label %281
  ]

278:                                              ; preds = %275, %275
  %279 = lshr i32 %276, 16
  br label %281

280:                                              ; preds = %275
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #12
  br label %281

281:                                              ; preds = %280, %278, %275
  %282 = phi i32 [ %279, %278 ], [ 0, %280 ], [ 59, %275 ]
  %283 = zext nneg i32 %282 to i64
  %284 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !46
  %286 = icmp eq i8 %285, 3
  br i1 %286, label %287, label %307

287:                                              ; preds = %281
  %288 = load i32, ptr %244, align 8
  %289 = and i32 %288, 255
  %290 = add nsw i32 %289, -1
  %291 = icmp ult i32 %290, 9
  call void @llvm.assume(i1 %291)
  %292 = zext nneg i32 %289 to i64
  %293 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %292
  %294 = load i32, ptr %293, align 4, !tbaa !50
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %295
  %297 = load i64, ptr %296, align 8, !tbaa !77
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %287
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %300

300:                                              ; preds = %299, %287
  %301 = getelementptr inbounds i8, ptr %244, i64 %297
  %302 = getelementptr inbounds ptr, ptr %301, i64 1
  %303 = load ptr, ptr %302, align 8, !tbaa !35
  %304 = load i64, ptr %303, align 8
  %305 = trunc i64 %304 to i32
  %306 = and i32 %305, 65535
  br label %307

307:                                              ; preds = %281, %300
  %308 = phi i32 [ %306, %300 ], [ %282, %281 ]
  %309 = icmp eq i32 %308, 65
  br i1 %309, label %310, label %561

310:                                              ; preds = %307
  %311 = getelementptr inbounds %struct._stmt_vec_info, ptr %268, i64 0, i32 13
  %312 = load i8, ptr %311, align 8, !tbaa !86
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %420, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct._stmt_vec_info, ptr %268, i64 0, i32 14
  %316 = load ptr, ptr %315, align 8, !tbaa !83
  %317 = load i32, ptr %316, align 8
  %318 = trunc i32 %317 to i8
  switch i8 %318, label %321 [
    i8 6, label %319
    i8 1, label %319
    i8 8, label %322
  ]

319:                                              ; preds = %314, %314
  %320 = lshr i32 %317, 16
  br label %322

321:                                              ; preds = %314
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #12
  br label %322

322:                                              ; preds = %321, %319, %314
  %323 = phi i32 [ %320, %319 ], [ 0, %321 ], [ 59, %314 ]
  %324 = zext nneg i32 %323 to i64
  %325 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %324
  %326 = load i8, ptr %325, align 1, !tbaa !46
  %327 = icmp eq i8 %326, 3
  br i1 %327, label %328, label %348

328:                                              ; preds = %322
  %329 = load i32, ptr %316, align 8
  %330 = and i32 %329, 255
  %331 = add nsw i32 %330, -1
  %332 = icmp ult i32 %331, 9
  call void @llvm.assume(i1 %332)
  %333 = zext nneg i32 %330 to i64
  %334 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %333
  %335 = load i32, ptr %334, align 4, !tbaa !50
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %336
  %338 = load i64, ptr %337, align 8, !tbaa !77
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %328
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %341

341:                                              ; preds = %340, %328
  %342 = getelementptr inbounds i8, ptr %316, i64 %338
  %343 = getelementptr inbounds ptr, ptr %342, i64 1
  %344 = load ptr, ptr %343, align 8, !tbaa !35
  %345 = load i64, ptr %344, align 8
  %346 = trunc i64 %345 to i32
  %347 = and i32 %346, 65535
  br label %348

348:                                              ; preds = %322, %341
  %349 = phi i32 [ %347, %341 ], [ %323, %322 ]
  %350 = icmp eq i32 %349, 169
  br i1 %350, label %351, label %561

351:                                              ; preds = %348
  %352 = getelementptr inbounds %struct.gimple_statement_base, ptr %316, i64 0, i32 1
  %353 = load i32, ptr %352, align 4, !tbaa !46
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %370, label %355

355:                                              ; preds = %351
  %356 = load ptr, ptr @stmt_vec_info_vec, align 8
  %357 = icmp eq ptr %356, null
  br i1 %357, label %360, label %358

358:                                              ; preds = %355
  %359 = load i32, ptr %356, align 8, !tbaa !72
  br label %360

360:                                              ; preds = %358, %355
  %361 = phi i32 [ %359, %358 ], [ 0, %355 ]
  %362 = icmp ugt i32 %353, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %360
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 629, ptr noundef nonnull @.str.3) #12
  br label %364

364:                                              ; preds = %363, %360
  %365 = load ptr, ptr @stmt_vec_info_vec, align 8
  %366 = add i32 %353, -1
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %365, i64 0, i32 2, i64 %367
  %369 = load ptr, ptr %368, align 8, !tbaa !35
  br label %370

370:                                              ; preds = %351, %364
  %371 = phi ptr [ %369, %364 ], [ null, %351 ]
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %374

373:                                              ; preds = %370
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 275, ptr noundef nonnull @.str.3) #12
  br label %374

374:                                              ; preds = %370, %373
  %375 = getelementptr inbounds %struct._stmt_vec_info, ptr %371, i64 0, i32 16
  %376 = load i32, ptr %375, align 8, !tbaa !84
  %377 = icmp eq i32 %376, 3
  br i1 %377, label %379, label %378

378:                                              ; preds = %374
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 276, ptr noundef nonnull @.str.3) #12
  br label %379

379:                                              ; preds = %374, %378
  %380 = load i32, ptr %316, align 8
  %381 = and i32 %380, 255
  %382 = add nsw i32 %381, -10
  %383 = icmp ult i32 %382, -9
  br i1 %383, label %397, label %384

384:                                              ; preds = %379
  %385 = zext nneg i32 %381 to i64
  %386 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %385
  %387 = load i32, ptr %386, align 4, !tbaa !50
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %388
  %390 = load i64, ptr %389, align 8, !tbaa !77
  %391 = icmp eq i64 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %384
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %393

393:                                              ; preds = %392, %384
  %394 = getelementptr inbounds i8, ptr %316, i64 %390
  %395 = getelementptr inbounds ptr, ptr %394, i64 1
  %396 = load ptr, ptr %395, align 8, !tbaa !35
  br label %397

397:                                              ; preds = %379, %393
  %398 = phi ptr [ %396, %393 ], [ null, %379 ]
  %399 = getelementptr inbounds %struct.gimple_statement_base, ptr %316, i64 0, i32 3
  %400 = load i32, ptr %399, align 4, !tbaa !46
  %401 = icmp ugt i32 %400, 2
  br i1 %401, label %402, label %536

402:                                              ; preds = %397
  %403 = load i32, ptr %316, align 8
  %404 = and i32 %403, 255
  %405 = add nsw i32 %404, -10
  %406 = icmp ult i32 %405, -9
  br i1 %406, label %536, label %407

407:                                              ; preds = %402
  %408 = zext nneg i32 %404 to i64
  %409 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %408
  %410 = load i32, ptr %409, align 4, !tbaa !50
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %411
  %413 = load i64, ptr %412, align 8, !tbaa !77
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %407
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %416

416:                                              ; preds = %415, %407
  %417 = getelementptr inbounds i8, ptr %316, i64 %413
  %418 = getelementptr inbounds ptr, ptr %417, i64 2
  %419 = load ptr, ptr %418, align 8, !tbaa !35
  br label %536

420:                                              ; preds = %310
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  %421 = load i32, ptr %244, align 8
  %422 = and i32 %421, 255
  %423 = add nsw i32 %422, -10
  %424 = icmp ult i32 %423, -9
  br i1 %424, label %438, label %425

425:                                              ; preds = %420
  %426 = zext nneg i32 %422 to i64
  %427 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !50
  %429 = zext i32 %428 to i64
  %430 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %429
  %431 = load i64, ptr %430, align 8, !tbaa !77
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %425
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %434

434:                                              ; preds = %433, %425
  %435 = getelementptr inbounds i8, ptr %244, i64 %431
  %436 = getelementptr inbounds ptr, ptr %435, i64 1
  %437 = load ptr, ptr %436, align 8, !tbaa !35
  br label %438

438:                                              ; preds = %420, %434
  %439 = phi ptr [ %437, %434 ], [ null, %420 ]
  %440 = getelementptr inbounds %struct.gimple_statement_base, ptr %244, i64 0, i32 3
  %441 = load i32, ptr %440, align 4, !tbaa !46
  %442 = icmp ugt i32 %441, 2
  br i1 %442, label %443, label %461

443:                                              ; preds = %438
  %444 = load i32, ptr %244, align 8
  %445 = and i32 %444, 255
  %446 = add nsw i32 %445, -10
  %447 = icmp ult i32 %446, -9
  br i1 %447, label %461, label %448

448:                                              ; preds = %443
  %449 = zext nneg i32 %445 to i64
  %450 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %449
  %451 = load i32, ptr %450, align 4, !tbaa !50
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %452
  %454 = load i64, ptr %453, align 8, !tbaa !77
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %448
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %457

457:                                              ; preds = %456, %448
  %458 = getelementptr inbounds i8, ptr %244, i64 %454
  %459 = getelementptr inbounds ptr, ptr %458, i64 2
  %460 = load ptr, ptr %459, align 8, !tbaa !35
  br label %461

461:                                              ; preds = %438, %443, %457
  %462 = phi ptr [ null, %438 ], [ %460, %457 ], [ null, %443 ]
  %463 = getelementptr inbounds %struct.tree_common, ptr %439, i64 0, i32 2
  %464 = load ptr, ptr %463, align 8, !tbaa !46
  %465 = call zeroext i8 @types_compatible_p(ptr noundef %464, ptr noundef %242) #12
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %532, label %467

467:                                              ; preds = %461
  %468 = getelementptr inbounds %struct.tree_common, ptr %462, i64 0, i32 2
  %469 = load ptr, ptr %468, align 8, !tbaa !46
  %470 = call zeroext i8 @types_compatible_p(ptr noundef %469, ptr noundef %242) #12
  %471 = icmp eq i8 %470, 0
  br i1 %471, label %532, label %472

472:                                              ; preds = %467
  %473 = call fastcc zeroext i8 @widened_name_p(ptr noundef %439, ptr noundef nonnull %244, ptr noundef nonnull %6, ptr noundef nonnull %8), !range !91
  %474 = icmp eq i8 %473, 0
  br i1 %474, label %532, label %475

475:                                              ; preds = %472
  %476 = load ptr, ptr %8, align 8, !tbaa !35
  %477 = load i32, ptr %476, align 8
  %478 = and i32 %477, 255
  %479 = add nsw i32 %478, -10
  %480 = icmp ult i32 %479, -9
  br i1 %480, label %494, label %481

481:                                              ; preds = %475
  %482 = zext nneg i32 %478 to i64
  %483 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %482
  %484 = load i32, ptr %483, align 4, !tbaa !50
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %485
  %487 = load i64, ptr %486, align 8, !tbaa !77
  %488 = icmp eq i64 %487, 0
  br i1 %488, label %489, label %490

489:                                              ; preds = %481
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %490

490:                                              ; preds = %489, %481
  %491 = getelementptr inbounds i8, ptr %476, i64 %487
  %492 = getelementptr inbounds ptr, ptr %491, i64 1
  %493 = load ptr, ptr %492, align 8, !tbaa !35
  br label %494

494:                                              ; preds = %475, %490
  %495 = phi ptr [ %493, %490 ], [ null, %475 ]
  %496 = call fastcc zeroext i8 @widened_name_p(ptr noundef %462, ptr noundef nonnull %244, ptr noundef nonnull %7, ptr noundef nonnull %8), !range !91
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %532, label %498

498:                                              ; preds = %494
  %499 = load ptr, ptr %8, align 8, !tbaa !35
  %500 = load i32, ptr %499, align 8
  %501 = and i32 %500, 255
  %502 = add nsw i32 %501, -10
  %503 = icmp ult i32 %502, -9
  br i1 %503, label %517, label %504

504:                                              ; preds = %498
  %505 = zext nneg i32 %501 to i64
  %506 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %505
  %507 = load i32, ptr %506, align 4, !tbaa !50
  %508 = zext i32 %507 to i64
  %509 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %508
  %510 = load i64, ptr %509, align 8, !tbaa !77
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %512, label %513

512:                                              ; preds = %504
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %513

513:                                              ; preds = %512, %504
  %514 = getelementptr inbounds i8, ptr %499, i64 %510
  %515 = getelementptr inbounds ptr, ptr %514, i64 1
  %516 = load ptr, ptr %515, align 8, !tbaa !35
  br label %517

517:                                              ; preds = %498, %513
  %518 = phi ptr [ %516, %513 ], [ null, %498 ]
  %519 = load ptr, ptr %6, align 8, !tbaa !35
  %520 = load ptr, ptr %7, align 8, !tbaa !35
  %521 = call zeroext i8 @types_compatible_p(ptr noundef %519, ptr noundef %520) #12
  %522 = icmp eq i8 %521, 0
  br i1 %522, label %532, label %523

523:                                              ; preds = %517
  %524 = getelementptr inbounds %struct.tree_type, ptr %242, i64 0, i32 6
  %525 = load i32, ptr %524, align 4
  %526 = and i32 %525, 1023
  %527 = getelementptr inbounds %struct.tree_type, ptr %519, i64 0, i32 6
  %528 = load i32, ptr %527, align 4
  %529 = shl i32 %528, 1
  %530 = and i32 %529, 2046
  %531 = icmp eq i32 %526, %530
  br label %532

532:                                              ; preds = %523, %517, %494, %472, %461, %467
  %533 = phi ptr [ undef, %467 ], [ undef, %461 ], [ undef, %472 ], [ undef, %494 ], [ %518, %517 ], [ %518, %523 ]
  %534 = phi ptr [ undef, %467 ], [ undef, %461 ], [ undef, %472 ], [ %495, %494 ], [ %495, %517 ], [ %495, %523 ]
  %535 = phi i1 [ false, %467 ], [ false, %461 ], [ false, %472 ], [ false, %494 ], [ false, %517 ], [ %531, %523 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  br i1 %535, label %536, label %561

536:                                              ; preds = %416, %402, %397, %532
  %537 = phi ptr [ %533, %532 ], [ null, %397 ], [ %419, %416 ], [ null, %402 ]
  %538 = phi ptr [ %534, %532 ], [ %398, %397 ], [ %398, %416 ], [ %398, %402 ]
  %539 = getelementptr inbounds %struct.tree_common, ptr %538, i64 0, i32 2
  %540 = load ptr, ptr %539, align 8, !tbaa !46
  store ptr %540, ptr %4, align 8, !tbaa !35
  store ptr %540, ptr %1, align 8, !tbaa !35
  store ptr %239, ptr %2, align 8, !tbaa !35
  %541 = call fastcc ptr @vect_recog_temp_ssa_var(ptr noundef %239, ptr noundef null)
  %542 = call ptr @build3_stat(i32 noundef 167, ptr noundef %239, ptr noundef %538, ptr noundef %537, ptr noundef %240) #12
  %543 = call ptr @gimple_build_assign_stat(ptr noundef %541, ptr noundef %542) #12
  %544 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #12
  %545 = icmp eq i8 %544, 0
  br i1 %545, label %550, label %546

546:                                              ; preds = %536
  %547 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  %548 = call i64 @fwrite(ptr nonnull @.str.8, i64 39, i64 1, ptr %547)
  %549 = load ptr, ptr @vect_dump, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %549, ptr noundef %543, i32 noundef 0, i32 noundef 2) #12
  br label %550

550:                                              ; preds = %546, %536
  %551 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 8
  %552 = load ptr, ptr %551, align 8, !tbaa !92
  %553 = icmp eq ptr %552, null
  br i1 %553, label %561, label %554

554:                                              ; preds = %550
  %555 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %556 = load ptr, ptr %555, align 8, !tbaa !46
  %557 = getelementptr inbounds %struct.basic_block_def, ptr %556, i64 0, i32 3
  %558 = load ptr, ptr %557, align 8, !tbaa !93
  %559 = icmp eq ptr %552, %558
  br i1 %559, label %560, label %561

560:                                              ; preds = %554
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 320, ptr noundef nonnull @.str.3) #12
  br label %561

561:                                              ; preds = %550, %234, %560, %554, %348, %307, %271, %238, %107, %65, %20, %532
  %562 = phi ptr [ null, %532 ], [ null, %20 ], [ null, %65 ], [ null, %107 ], [ null, %238 ], [ null, %271 ], [ null, %307 ], [ null, %348 ], [ %543, %554 ], [ %543, %560 ], [ null, %234 ], [ %543, %550 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret ptr %562
}

; Function Attrs: cold nounwind uwtable
define internal ptr @vect_recog_pow_pattern(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #9 !prof !34 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %7, label %168

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !77
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %16

16:                                               ; preds = %15, %7
  %17 = getelementptr inbounds i8, ptr %0, i64 %13
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %168, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %0, align 8
  %22 = and i32 %21, 255
  %23 = add nsw i32 %22, -1
  %24 = icmp ult i32 %23, 9
  tail call void @llvm.assume(i1 %24)
  %25 = zext nneg i32 %22 to i64
  %26 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !50
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !77
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %33

33:                                               ; preds = %32, %20
  %34 = getelementptr inbounds i8, ptr %0, i64 %30
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 121
  tail call void @llvm.assume(i1 %39)
  %40 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = getelementptr inbounds %struct.tree_function_decl, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 2047
  switch i32 %44, label %168 [
    i32 186, label %45
    i32 185, label %45
    i32 184, label %45
    i32 180, label %45
  ]

45:                                               ; preds = %33, %33, %33, %33
  %46 = load i32, ptr %0, align 8
  %47 = and i32 %46, 255
  %48 = add nsw i32 %47, -10
  %49 = icmp ult i32 %48, -9
  br i1 %49, label %63, label %50

50:                                               ; preds = %45
  %51 = zext nneg i32 %47 to i64
  %52 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !50
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !77
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %59

59:                                               ; preds = %58, %50
  %60 = getelementptr inbounds i8, ptr %0, i64 %56
  %61 = getelementptr ptr, ptr %60, i64 3
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  br label %63

63:                                               ; preds = %45, %59
  %64 = phi ptr [ %62, %59 ], [ null, %45 ]
  %65 = load i32, ptr %0, align 8
  %66 = and i32 %65, 255
  %67 = add nsw i32 %66, -1
  %68 = icmp ult i32 %67, 9
  tail call void @llvm.assume(i1 %68)
  %69 = zext nneg i32 %66 to i64
  %70 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !50
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !77
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %77

77:                                               ; preds = %76, %63
  %78 = getelementptr inbounds i8, ptr %0, i64 %74
  %79 = getelementptr ptr, ptr %78, i64 4
  %80 = load ptr, ptr %79, align 8, !tbaa !35
  %81 = load i64, ptr %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = and i32 %82, 65535
  %84 = add nsw i32 %83, -23
  %85 = icmp ult i32 %84, 2
  br i1 %85, label %86, label %168

86:                                               ; preds = %77
  store ptr null, ptr %2, align 8, !tbaa !35
  %87 = tail call i32 @host_integerp(ptr noundef nonnull %80, i32 noundef 0) #12
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = tail call i64 @tree_low_cst(ptr noundef nonnull %80, i32 noundef 0) #12
  %91 = icmp eq i64 %90, 2
  br i1 %91, label %101, label %92

92:                                               ; preds = %89, %86
  %93 = load i64, ptr %80, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 24
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.tree_real_cst, ptr %80, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !46
  %99 = tail call zeroext i8 @real_compare(i32 noundef 101, ptr noundef %98, ptr noundef nonnull @dconst2) #12
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %96, %89
  %102 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  store ptr %103, ptr %1, align 8, !tbaa !35
  %104 = load ptr, ptr %102, align 8, !tbaa !46
  %105 = tail call ptr @create_tmp_var(ptr noundef %104, ptr noundef nonnull @.str.5) #12
  %106 = tail call zeroext i8 @add_referenced_var(ptr noundef %105) #12
  %107 = load ptr, ptr @cfun, align 8, !tbaa !35
  %108 = tail call ptr @make_ssa_name_fn(ptr noundef %107, ptr noundef %105, ptr noundef null) #12
  %109 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 65, ptr noundef %108, ptr noundef %64, ptr noundef %64) #12
  %110 = getelementptr inbounds %struct.tree_ssa_name, ptr %108, i64 0, i32 2
  store ptr %109, ptr %110, align 8, !tbaa !46
  br label %168

111:                                              ; preds = %96, %92
  %112 = load i64, ptr %80, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 24
  br i1 %114, label %115, label %167

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.tree_real_cst, ptr %80, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !46
  %118 = tail call zeroext i8 @real_compare(i32 noundef 101, ptr noundef %117, ptr noundef nonnull @dconsthalf) #12
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %167, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !46
  %123 = tail call ptr @mathfn_built_in(ptr noundef %122, i32 noundef 228) #12
  %124 = load ptr, ptr %121, align 8, !tbaa !46
  %125 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %124) #12
  store ptr %125, ptr %1, align 8, !tbaa !35
  %126 = icmp eq ptr %125, null
  br i1 %126, label %164, label %127

127:                                              ; preds = %120
  %128 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %123, i32 noundef 1, ptr noundef %64) #12
  %129 = load ptr, ptr %1, align 8, !tbaa !35
  %130 = tail call ptr @vectorizable_function(ptr noundef %128, ptr noundef %129, ptr noundef %129) #12
  %131 = icmp eq ptr %130, null
  br i1 %131, label %164, label %132

132:                                              ; preds = %127
  %133 = load ptr, ptr %121, align 8, !tbaa !46
  %134 = tail call fastcc ptr @vect_recog_temp_ssa_var(ptr noundef %133, ptr noundef %128)
  %135 = load i32, ptr %128, align 8
  %136 = and i32 %135, 255
  %137 = add nsw i32 %136, -10
  %138 = icmp ult i32 %137, -9
  br i1 %138, label %143, label %139

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.gimple_statement_base, ptr %128, i64 0, i32 3
  %141 = load i32, ptr %140, align 4, !tbaa !46
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139, %132
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.3) #12
  br label %144

144:                                              ; preds = %143, %139
  %145 = load i32, ptr %128, align 8
  %146 = and i32 %145, 255
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !50
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !77
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %155

155:                                              ; preds = %154, %144
  %156 = getelementptr inbounds i8, ptr %128, i64 %152
  store ptr %134, ptr %156, align 8, !tbaa !35
  %157 = icmp eq ptr %134, null
  br i1 %157, label %164, label %158

158:                                              ; preds = %155
  %159 = load i64, ptr %134, align 8
  %160 = and i64 %159, 65535
  %161 = icmp eq i64 %160, 141
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.tree_ssa_name, ptr %134, i64 0, i32 2
  store ptr %128, ptr %163, align 8, !tbaa !46
  br label %164

164:                                              ; preds = %162, %158, %155, %127, %120
  %165 = phi i1 [ true, %120 ], [ true, %127 ], [ false, %155 ], [ false, %158 ], [ false, %162 ]
  %166 = phi ptr [ undef, %120 ], [ %128, %127 ], [ %128, %155 ], [ %128, %158 ], [ %128, %162 ]
  br i1 %165, label %167, label %168

167:                                              ; preds = %164, %115, %111
  br label %168

168:                                              ; preds = %33, %77, %3, %16, %164, %167, %101
  %169 = phi ptr [ %109, %101 ], [ null, %167 ], [ %166, %164 ], [ null, %16 ], [ null, %3 ], [ null, %77 ], [ null, %33 ]
  ret ptr %169
}

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #2 !prof !34 {
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
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !77
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 %13
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  br label %76

25:                                               ; preds = %1
  %26 = lshr i32 %2, 16
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !46
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
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !77
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %44

44:                                               ; preds = %43, %31
  %45 = getelementptr inbounds i8, ptr %0, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !35
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
  %61 = load i32, ptr %60, align 4, !tbaa !50
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !77
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %67

67:                                               ; preds = %66, %54
  %68 = getelementptr inbounds i8, ptr %0, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  br label %76

72:                                               ; preds = %51
  %73 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #12
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %1, %16, %72, %67, %75
  %77 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %75 ], [ %24, %16 ], [ %71, %67 ], [ %74, %72 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %1 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  ret ptr %78
}

declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @widened_name_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) unnamed_addr #9 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %9 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  %11 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !46
  %13 = icmp ne i32 %12, 0
  tail call void @llvm.assume(i1 %13)
  %14 = load ptr, ptr @stmt_vec_info_vec, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, ptr %14, align 8, !tbaa !72
  br label %18

18:                                               ; preds = %16, %4
  %19 = phi i32 [ %17, %16 ], [ 0, %4 ]
  %20 = icmp ugt i32 %12, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 629, ptr noundef nonnull @.str.3) #12
  br label %22

22:                                               ; preds = %21, %18
  %23 = load ptr, ptr @stmt_vec_info_vec, align 8
  %24 = add i32 %12, -1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %23, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct._stmt_vec_info, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !74
  %30 = call zeroext i8 @vect_is_simple_use(ptr noundef %0, ptr noundef %29, ptr noundef null, ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %7) #12
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %119, label %32

32:                                               ; preds = %22
  %33 = load i32, ptr %7, align 4
  %34 = add i32 %33, -4
  %35 = icmp ult i32 %34, -3
  br i1 %35, label %119, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %3, align 8, !tbaa !35
  %38 = icmp eq ptr %37, null
  br i1 %38, label %119, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %37, align 8
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 6
  br i1 %42, label %43, label %119

43:                                               ; preds = %39
  %44 = lshr i32 %40, 16
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !46
  %48 = icmp eq i8 %47, 3
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = zext nneg i32 %41 to i64
  %51 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !77
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %58

58:                                               ; preds = %57, %49
  %59 = getelementptr inbounds i8, ptr %37, i64 %55
  %60 = getelementptr inbounds ptr, ptr %59, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !35
  %62 = load i64, ptr %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = and i32 %63, 65535
  br label %65

65:                                               ; preds = %43, %58
  %66 = phi i32 [ %64, %58 ], [ %44, %43 ]
  %67 = icmp eq i32 %66, 116
  br i1 %67, label %68, label %119

68:                                               ; preds = %65
  %69 = load ptr, ptr %3, align 8, !tbaa !35
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 255
  %72 = add nsw i32 %71, -10
  %73 = icmp ult i32 %72, -9
  br i1 %73, label %87, label %74

74:                                               ; preds = %68
  %75 = zext nneg i32 %71 to i64
  %76 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !50
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !77
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %83

83:                                               ; preds = %82, %74
  %84 = getelementptr inbounds i8, ptr %69, i64 %80
  %85 = getelementptr inbounds ptr, ptr %84, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !35
  br label %87

87:                                               ; preds = %68, %83
  %88 = phi ptr [ %86, %83 ], [ null, %68 ]
  %89 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !46
  store ptr %90, ptr %2, align 8, !tbaa !35
  %91 = load i64, ptr %10, align 8
  %92 = trunc i64 %91 to i32
  %93 = and i32 %92, 65535
  %94 = add nsw i32 %93, -6
  %95 = icmp ult i32 %94, 3
  br i1 %95, label %96, label %119

96:                                               ; preds = %87
  %97 = load i64, ptr %90, align 8
  %98 = trunc i64 %97 to i32
  %99 = and i32 %98, 65535
  %100 = add nsw i32 %99, -6
  %101 = icmp ult i32 %100, 3
  br i1 %101, label %102, label %119

102:                                              ; preds = %96
  %103 = xor i64 %97, %91
  %104 = and i64 %103, 2097152
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 6
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 1023
  %110 = getelementptr inbounds %struct.tree_type, ptr %90, i64 0, i32 6
  %111 = load i32, ptr %110, align 4
  %112 = shl i32 %111, 1
  %113 = and i32 %112, 2046
  %114 = icmp ult i32 %109, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %106
  %116 = call zeroext i8 @vect_is_simple_use(ptr noundef %88, ptr noundef %29, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7) #12
  %117 = icmp ne i8 %116, 0
  %118 = zext i1 %117 to i8
  br label %119

119:                                              ; preds = %96, %87, %115, %102, %106, %65, %39, %36, %32, %22
  %120 = phi i8 [ 0, %22 ], [ 0, %32 ], [ 0, %36 ], [ 0, %39 ], [ 0, %65 ], [ 0, %96 ], [ 0, %87 ], [ 0, %106 ], [ 0, %102 ], [ %118, %115 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i8 %120
}

declare ptr @get_vectype_for_scalar_type(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @supportable_widening_operation(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @vect_recog_temp_ssa_var(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef nonnull @.str.5) #12
  %4 = tail call zeroext i8 @add_referenced_var(ptr noundef %3) #12
  %5 = load ptr, ptr @cfun, align 8, !tbaa !35
  %6 = tail call ptr @make_ssa_name_fn(ptr noundef %5, ptr noundef %3, ptr noundef %1) #12
  ret ptr %6
}

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_is_simple_use(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @mathfn_built_in(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare ptr @vectorizable_function(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @optab_for_tree_code(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @new_stmt_vec_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

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
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !36, i64 0}
!55 = !{!"_loop_vec_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !37, i64 36, !41, i64 40, !36, i64 48, !41, i64 56, !41, i64 60, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !36, i64 104, !36, i64 112, !41, i64 120}
!56 = !{!55, !36, i64 8}
!57 = !{!58, !41, i64 36}
!58 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !59, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !60, i64 80, !60, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!59 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!60 = !{!"", !42, i64 0, !42, i64 8}
!61 = !{!62, !41, i64 96}
!62 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!63 = !{!64}
!64 = distinct !{!64, !65, !"gsi_start_bb: argument 0"}
!65 = distinct !{!65, !"gsi_start_bb"}
!66 = !{!67, !36, i64 0}
!67 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!68 = !{!69, !36, i64 0}
!69 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!70 = !{!71, !36, i64 0}
!71 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!72 = !{!73, !41, i64 0}
!73 = !{!"VEC_vec_void_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!74 = !{!75, !36, i64 16}
!75 = !{!"_stmt_vec_info", !41, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !37, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !36, i64 104, !36, i64 112, !41, i64 120, !36, i64 128, !36, i64 136, !41, i64 144, !41, i64 148, !41, i64 152, !36, i64 160, !37, i64 168, !76, i64 172, !41, i64 180, !36, i64 184}
!76 = !{!"", !41, i64 0, !41, i64 4}
!77 = !{!42, !42, i64 0}
!78 = !{!79, !41, i64 0}
!79 = !{!"optab_handlers", !41, i64 0}
!80 = !{!81, !36, i64 24}
!81 = !{!"insn_data", !36, i64 0, !37, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 33, !37, i64 34, !37, i64 35}
!82 = !{!73, !41, i64 4}
!83 = !{!75, !36, i64 104}
!84 = !{!75, !41, i64 120}
!85 = !{!75, !36, i64 32}
!86 = !{!75, !37, i64 96}
!87 = distinct !{!87, !52, !53}
!88 = !{!71, !36, i64 16}
!89 = distinct !{!89, !52, !53}
!90 = distinct !{!90, !52, !53}
!91 = !{i8 0, i8 2}
!92 = !{!58, !36, i64 48}
!93 = !{!62, !36, i64 24}
