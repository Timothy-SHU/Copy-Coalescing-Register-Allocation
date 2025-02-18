; ModuleID = 'c-omp.c'
source_filename = "c-omp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%union.omp_clause_subcode = type { i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@.str = private unnamed_addr constant [51 x i8] c"invalid expression type for %<#pragma omp atomic%>\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@input_location = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"c-omp.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"invalid type for iteration variable %qE\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%qE is not initialized\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"missing controlling predicate\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"invalid controlling predicate\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"missing increment expression\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.8 = private unnamed_addr constant [29 x i8] c"invalid increment expression\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #10
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #10
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #10
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #10
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #10
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #10
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #10
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
  %5 = tail call ptr @__ctype_tolower_loc() #10
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
  %5 = tail call ptr @__ctype_toupper_loc() #10
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #10
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

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local ptr @c_finish_omp_master(i32 noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !34 {
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %4 = tail call ptr @build1_stat(i32 noundef 159, ptr noundef %3, ptr noundef %1) #10
  %5 = tail call ptr @add_stmt(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 1
  store i32 %0, ptr %6, align 8, !tbaa !46
  ret ptr %5
}

declare ptr @add_stmt(ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @c_finish_omp_critical(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 !prof !34 {
  %4 = tail call ptr @make_node_stat(i32 noundef 161) #10
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %6 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  store ptr %1, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  store ptr %2, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  store i32 %0, ptr %9, align 8, !tbaa !46
  %10 = tail call ptr @add_stmt(ptr noundef %4) #10
  ret ptr %10
}

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @c_finish_omp_ordered(i32 noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !34 {
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %4 = tail call ptr @build1_stat(i32 noundef 160, ptr noundef %3, ptr noundef %1) #10
  %5 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  store i32 %0, ptr %5, align 8, !tbaa !46
  %6 = tail call ptr @add_stmt(ptr noundef %4) #10
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local void @c_finish_omp_barrier(i32 noundef %0) local_unnamed_addr #8 !prof !34 {
  %2 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 656), align 16, !tbaa !35
  %3 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef %2, i32 noundef 0) #10
  %4 = tail call ptr @add_stmt(ptr noundef %3) #10
  ret void
}

declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @c_finish_omp_taskwait(i32 noundef %0) local_unnamed_addr #8 !prof !34 {
  %2 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 657), align 8, !tbaa !35
  %3 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef %2, i32 noundef 0) #10
  %4 = tail call ptr @add_stmt(ptr noundef %3) #10
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @c_finish_omp_atomic(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 !prof !34 {
  %5 = load ptr, ptr @global_trees, align 16, !tbaa !35
  %6 = icmp eq ptr %5, %2
  %7 = icmp eq ptr %5, %3
  %8 = or i1 %6, %7
  br i1 %8, label %56, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %14 [
    i16 6, label %16
    i16 7, label %16
    i16 8, label %16
    i16 10, label %16
    i16 12, label %16
    i16 9, label %16
  ]

14:                                               ; preds = %9
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str) #10
  %15 = load ptr, ptr @global_trees, align 16, !tbaa !35
  br label %56

16:                                               ; preds = %9, %9, %9, %9, %9, %9
  %17 = tail call ptr @build_unary_op(i32 noundef %0, i32 noundef 121, ptr noundef %2, i32 noundef 0) #10
  %18 = load ptr, ptr @global_trees, align 16, !tbaa !35
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %56, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @save_expr(ptr noundef %17) #10
  %22 = load i64, ptr %21, align 8
  %23 = trunc i64 %22 to i16
  switch i16 %23, label %30 [
    i16 120, label %38
    i16 121, label %24
  ]

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 32
  br i1 %29, label %38, label %30

30:                                               ; preds = %24, %20
  %31 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = tail call ptr @create_tmp_var_raw(ptr noundef %32, ptr noundef null) #10
  %34 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.tree_decl_minimal, ptr %33, i64 0, i32 4
  store ptr %34, ptr %35, align 8, !tbaa !46
  %36 = load ptr, ptr %31, align 8, !tbaa !46
  %37 = tail call ptr @build4_stat(i32 noundef 55, ptr noundef %36, ptr noundef %33, ptr noundef nonnull %21, ptr noundef null, ptr noundef null) #10
  br label %38

38:                                               ; preds = %20, %30, %24
  %39 = phi ptr [ %37, %30 ], [ %21, %24 ], [ %21, %20 ]
  %40 = tail call ptr @build_indirect_ref(i32 noundef %0, ptr noundef %39, i32 noundef 0) #10
  %41 = load i32, ptr @input_location, align 4, !tbaa !50
  %42 = tail call ptr @build_modify_expr(i32 noundef %41, ptr noundef %40, ptr noundef null, i32 noundef %1, i32 noundef %41, ptr noundef %3, ptr noundef null) #10
  %43 = load ptr, ptr @global_trees, align 16, !tbaa !35
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %56, label %45

45:                                               ; preds = %38
  %46 = load i64, ptr %42, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 53
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 157, ptr noundef nonnull @.str.2) #10
  br label %50

50:                                               ; preds = %45, %49
  %51 = getelementptr inbounds %struct.tree_exp, ptr %42, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %54 = tail call ptr @build2_stat(i32 noundef 162, ptr noundef %53, ptr noundef %39, ptr noundef %52) #10
  %55 = getelementptr inbounds %struct.tree_exp, ptr %54, i64 0, i32 1
  store i32 %0, ptr %55, align 8, !tbaa !46
  br label %56

56:                                               ; preds = %4, %38, %16, %50, %14
  %57 = phi ptr [ %54, %50 ], [ %15, %14 ], [ %18, %16 ], [ %43, %38 ], [ %5, %4 ]
  ret ptr %57
}

declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @build_unary_op(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @save_expr(ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_indirect_ref(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_modify_expr(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @c_finish_omp_flush(i32 noundef %0) local_unnamed_addr #8 !prof !34 {
  %2 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 651), align 8, !tbaa !35
  %3 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef %2, i32 noundef 0) #10
  %4 = tail call ptr @add_stmt(ptr noundef %3) #10
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @c_finish_omp_for(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #8 !prof !34 {
  %8 = getelementptr inbounds %struct.tree_vec, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.tree_vec, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 242, ptr noundef nonnull @.str.2) #10
  br label %14

14:                                               ; preds = %7, %13
  %15 = load i32, ptr %8, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.tree_vec, ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !46
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 243, ptr noundef nonnull @.str.2) #10
  br label %20

20:                                               ; preds = %14, %19
  %21 = load i32, ptr %8, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.tree_vec, ptr %4, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 244, ptr noundef nonnull @.str.2) #10
  br label %26

26:                                               ; preds = %20, %25
  %27 = load i32, ptr %8, align 8, !tbaa !46
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %293

29:                                               ; preds = %26, %284
  %30 = phi i64 [ %287, %284 ], [ 0, %26 ]
  %31 = phi i8 [ %286, %284 ], [ 0, %26 ]
  %32 = getelementptr inbounds %struct.tree_vec, ptr %1, i64 0, i32 2, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct.tree_vec, ptr %2, i64 0, i32 2, i64 %30
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.tree_vec, ptr %3, i64 0, i32 2, i64 %30
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = getelementptr inbounds %struct.tree_vec, ptr %4, i64 0, i32 2, i64 %30
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = load i64, ptr %35, align 8
  %41 = and i64 %40, 65535
  %42 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !50
  %44 = add i32 %43, -11
  %45 = icmp ult i32 %44, -7
  br i1 %45, label %49, label %46

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !46
  br label %49

49:                                               ; preds = %29, %46
  %50 = phi i32 [ %48, %46 ], [ 0, %29 ]
  %51 = icmp eq i32 %50, 0
  %52 = or i1 %45, %51
  %53 = select i1 %51, i32 %0, i32 0
  br i1 %52, label %57, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !46
  br label %57

57:                                               ; preds = %49, %54
  %58 = phi i32 [ %53, %49 ], [ %56, %54 ]
  %59 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i16
  switch i16 %62, label %63 [
    i16 6, label %64
    i16 7, label %64
    i16 8, label %64
    i16 10, label %64
  ]

63:                                               ; preds = %57
  tail call void (i32, ptr, ...) @error_at(i32 noundef %58, ptr noundef nonnull @.str.3, ptr noundef %33) #10
  br label %64

64:                                               ; preds = %57, %57, %57, %57, %63
  %65 = phi i8 [ 1, %63 ], [ %31, %57 ], [ %31, %57 ], [ %31, %57 ], [ %31, %57 ]
  %66 = icmp eq ptr %35, %33
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.tree_decl_minimal, ptr %33, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !46
  %70 = getelementptr inbounds %struct.tree_decl_common, ptr %33, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  tail call void (i32, ptr, ...) @error_at(i32 noundef %69, ptr noundef nonnull @.str.4, ptr noundef %33) #10
  %74 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi ptr [ %74, %73 ], [ %71, %67 ]
  %77 = phi i8 [ 1, %73 ], [ %65, %67 ]
  %78 = tail call ptr @build_modify_expr(i32 noundef %69, ptr noundef %33, ptr noundef null, i32 noundef 116, i32 noundef %69, ptr noundef %76, ptr noundef null) #10
  br label %79

79:                                               ; preds = %75, %64
  %80 = phi ptr [ %78, %75 ], [ %35, %64 ]
  %81 = phi i8 [ %77, %75 ], [ %65, %64 ]
  %82 = phi i32 [ %69, %75 ], [ %58, %64 ]
  %83 = load i64, ptr %80, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 53
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 285, ptr noundef nonnull @.str.2) #10
  br label %87

87:                                               ; preds = %79, %86
  %88 = getelementptr inbounds %struct.tree_exp, ptr %80, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  %90 = icmp eq ptr %89, %33
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 286, ptr noundef nonnull @.str.2) #10
  br label %92

92:                                               ; preds = %87, %91
  %93 = icmp eq ptr %37, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %92
  tail call void (i32, ptr, ...) @error_at(i32 noundef %82, ptr noundef nonnull @.str.5) #10
  br label %193

95:                                               ; preds = %92
  %96 = load i64, ptr %37, align 8
  %97 = and i64 %96, 65535
  %98 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !50
  %100 = add i32 %99, -11
  %101 = icmp ult i32 %100, -7
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !46
  br label %105

105:                                              ; preds = %95, %102
  %106 = phi i32 [ %104, %102 ], [ 0, %95 ]
  %107 = icmp eq i32 %106, 0
  %108 = or i1 %101, %107
  %109 = select i1 %107, i32 %82, i32 0
  br i1 %108, label %113, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !46
  br label %113

113:                                              ; preds = %105, %110
  %114 = phi i32 [ %109, %105 ], [ %112, %110 ]
  %115 = trunc i64 %96 to i16
  switch i16 %115, label %189 [
    i16 97, label %116
    i16 98, label %116
    i16 99, label %116
    i16 100, label %116
    i16 102, label %116
  ]

116:                                              ; preds = %113, %113, %113, %113, %113
  %117 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !46
  %119 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !46
  %121 = load i64, ptr %118, align 8
  %122 = and i64 %121, 65535
  %123 = icmp eq i64 %122, 116
  br i1 %123, label %124, label %131

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.tree_exp, ptr %118, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !46
  %127 = icmp eq ptr %33, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  store ptr %126, ptr %117, align 8, !tbaa !46
  %129 = load ptr, ptr %59, align 8, !tbaa !46
  %130 = tail call ptr @fold_build1_stat_loc(i32 noundef %114, i32 noundef 116, ptr noundef %129, ptr noundef %120) #10
  store ptr %130, ptr %119, align 8, !tbaa !46
  br label %142

131:                                              ; preds = %124, %116
  %132 = load i64, ptr %120, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 116
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.tree_exp, ptr %120, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  %138 = icmp eq ptr %33, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  store ptr %137, ptr %119, align 8, !tbaa !46
  %140 = load ptr, ptr %59, align 8, !tbaa !46
  %141 = tail call ptr @fold_build1_stat_loc(i32 noundef %114, i32 noundef 116, ptr noundef %140, ptr noundef nonnull %118) #10
  store ptr %141, ptr %117, align 8, !tbaa !46
  br label %142

142:                                              ; preds = %131, %135, %139, %128
  %143 = load ptr, ptr %117, align 8, !tbaa !46
  %144 = icmp eq ptr %33, %143
  br i1 %144, label %159, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %119, align 8, !tbaa !46
  %147 = icmp eq ptr %33, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %145
  %149 = load i64, ptr %37, align 8
  %150 = trunc i64 %149 to i32
  %151 = and i32 %150, 65535
  %152 = tail call i32 @swap_tree_comparison(i32 noundef %151) #10
  %153 = load i64, ptr %37, align 8
  %154 = and i32 %152, 65535
  %155 = zext nneg i32 %154 to i64
  %156 = and i64 %153, -65536
  %157 = or disjoint i64 %156, %155
  store i64 %157, ptr %37, align 8
  %158 = load ptr, ptr %117, align 8, !tbaa !46
  store ptr %158, ptr %119, align 8, !tbaa !46
  store ptr %33, ptr %117, align 8, !tbaa !46
  br label %159

159:                                              ; preds = %142, %145, %148
  %160 = phi i8 [ 1, %148 ], [ 0, %145 ], [ 1, %142 ]
  %161 = load i64, ptr %37, align 8
  %162 = and i64 %161, 65535
  %163 = icmp eq i64 %162, 102
  br i1 %163, label %164, label %189

164:                                              ; preds = %159
  %165 = load ptr, ptr %59, align 8, !tbaa !46
  %166 = load i64, ptr %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = and i32 %167, 65535
  %169 = add nsw i32 %168, -6
  %170 = icmp ult i32 %169, 3
  br i1 %170, label %171, label %189

171:                                              ; preds = %164
  %172 = load ptr, ptr %119, align 8, !tbaa !46
  %173 = getelementptr inbounds %struct.tree_type, ptr %165, i64 0, i32 13
  %174 = load ptr, ptr %173, align 8, !tbaa !46
  %175 = tail call i32 @operand_equal_p(ptr noundef %172, ptr noundef %174, i32 noundef 0) #10
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %171
  %178 = load ptr, ptr %119, align 8, !tbaa !46
  %179 = load ptr, ptr %59, align 8, !tbaa !46
  %180 = getelementptr inbounds %struct.tree_type, ptr %179, i64 0, i32 14
  %181 = load ptr, ptr %180, align 8, !tbaa !46
  %182 = tail call i32 @operand_equal_p(ptr noundef %178, ptr noundef %181, i32 noundef 0) #10
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %177, %171
  %185 = phi i64 [ 99, %171 ], [ 97, %177 ]
  %186 = load i64, ptr %37, align 8
  %187 = and i64 %186, -65536
  %188 = or disjoint i64 %187, %185
  store i64 %188, ptr %37, align 8
  br label %189

189:                                              ; preds = %184, %113, %164, %159, %177
  %190 = phi i8 [ %160, %159 ], [ 0, %164 ], [ 0, %177 ], [ 0, %113 ], [ %160, %184 ]
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  tail call void (i32, ptr, ...) @error_at(i32 noundef %114, ptr noundef nonnull @.str.6) #10
  br label %193

193:                                              ; preds = %189, %192, %94
  %194 = phi i8 [ 1, %94 ], [ %81, %189 ], [ 1, %192 ]
  %195 = phi i32 [ %82, %94 ], [ %114, %189 ], [ %114, %192 ]
  %196 = icmp eq ptr %39, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  tail call void (i32, ptr, ...) @error_at(i32 noundef %195, ptr noundef nonnull @.str.7) #10
  br label %284

198:                                              ; preds = %193
  %199 = load i64, ptr %39, align 8
  %200 = and i64 %199, 65535
  %201 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !50
  %203 = add i32 %202, -11
  %204 = icmp ult i32 %203, -7
  br i1 %204, label %208, label %205

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 1
  %207 = load i32, ptr %206, align 8, !tbaa !46
  br label %208

208:                                              ; preds = %198, %205
  %209 = phi i32 [ %207, %205 ], [ 0, %198 ]
  %210 = icmp eq i32 %209, 0
  %211 = or i1 %204, %210
  %212 = select i1 %210, i32 %195, i32 0
  br i1 %211, label %216, label %213

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 1
  %215 = load i32, ptr %214, align 8, !tbaa !46
  br label %216

216:                                              ; preds = %208, %213
  %217 = phi i32 [ %212, %208 ], [ %215, %213 ]
  %218 = trunc i64 %199 to i16
  switch i16 %218, label %280 [
    i16 128, label %219
    i16 126, label %219
    i16 127, label %219
    i16 125, label %219
    i16 53, label %243
  ]

219:                                              ; preds = %216, %216, %216, %216
  %220 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %221 = load ptr, ptr %220, align 8, !tbaa !46
  %222 = icmp eq ptr %221, %33
  br i1 %222, label %223, label %280

223:                                              ; preds = %219
  %224 = load ptr, ptr %59, align 8, !tbaa !46
  %225 = load i64, ptr %224, align 8
  %226 = trunc i64 %225 to i16
  switch i16 %226, label %280 [
    i16 10, label %227
    i16 12, label %227
  ]

227:                                              ; preds = %223, %223
  %228 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 1
  %229 = load ptr, ptr %228, align 8, !tbaa !46
  %230 = icmp eq ptr %229, null
  br i1 %230, label %280, label %231

231:                                              ; preds = %227
  %232 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %233 = tail call ptr @fold_convert_loc(i32 noundef %217, ptr noundef %232, ptr noundef nonnull %229) #10
  %234 = load i64, ptr %39, align 8
  %235 = trunc i64 %234 to i16
  switch i16 %235, label %239 [
    i16 127, label %236
    i16 125, label %236
  ]

236:                                              ; preds = %231, %231
  %237 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %238 = tail call ptr @fold_build1_stat_loc(i32 noundef %217, i32 noundef 79, ptr noundef %237, ptr noundef %233) #10
  br label %239

239:                                              ; preds = %231, %236
  %240 = phi ptr [ %238, %236 ], [ %233, %231 ]
  %241 = load ptr, ptr %59, align 8, !tbaa !46
  %242 = tail call ptr @build2_stat(i32 noundef 66, ptr noundef %241, ptr noundef %33, ptr noundef %240) #10
  br label %276

243:                                              ; preds = %216
  %244 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8, !tbaa !46
  %246 = icmp eq ptr %245, %33
  br i1 %246, label %247, label %280

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 1
  %249 = load ptr, ptr %248, align 8, !tbaa !46
  %250 = icmp eq ptr %249, %33
  br i1 %250, label %280, label %251

251:                                              ; preds = %247
  %252 = load i64, ptr %249, align 8
  %253 = and i64 %252, 65535
  %254 = icmp eq i64 %253, 63
  br i1 %254, label %255, label %263

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.tree_exp, ptr %249, i64 0, i32 3
  %257 = load ptr, ptr %256, align 8, !tbaa !46
  %258 = icmp eq ptr %257, %33
  br i1 %258, label %280, label %259

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.tree_exp, ptr %249, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !46
  %262 = icmp eq ptr %261, %33
  br i1 %262, label %280, label %263

263:                                              ; preds = %259, %251
  %264 = trunc i64 %252 to i16
  switch i16 %264, label %269 [
    i16 64, label %265
    i16 66, label %265
  ]

265:                                              ; preds = %263, %263
  %266 = getelementptr inbounds %struct.tree_exp, ptr %249, i64 0, i32 3
  %267 = load ptr, ptr %266, align 8, !tbaa !46
  %268 = icmp eq ptr %267, %33
  br i1 %268, label %280, label %269

269:                                              ; preds = %263, %265
  %270 = tail call fastcc ptr @check_omp_for_incr_expr(i32 noundef %217, ptr noundef nonnull %249, ptr noundef %33)
  %271 = load ptr, ptr @global_trees, align 16, !tbaa !35
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %280, label %273

273:                                              ; preds = %269
  %274 = load ptr, ptr %59, align 8, !tbaa !46
  %275 = tail call ptr @build2_stat(i32 noundef 63, ptr noundef %274, ptr noundef %33, ptr noundef %270) #10
  br label %276

276:                                              ; preds = %239, %273
  %277 = phi ptr [ %275, %273 ], [ %242, %239 ]
  %278 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %279 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %278, ptr noundef %33, ptr noundef %277) #10
  br label %280

280:                                              ; preds = %276, %265, %259, %227, %216, %269, %255, %223, %247, %243, %219
  %281 = phi ptr [ %39, %243 ], [ %39, %247 ], [ %39, %219 ], [ %39, %223 ], [ %39, %255 ], [ %39, %269 ], [ %39, %216 ], [ %39, %227 ], [ %39, %259 ], [ %39, %265 ], [ %279, %276 ]
  %282 = phi i1 [ true, %243 ], [ true, %247 ], [ true, %219 ], [ false, %223 ], [ false, %255 ], [ true, %269 ], [ true, %216 ], [ false, %227 ], [ false, %259 ], [ false, %265 ], [ false, %276 ]
  br i1 %282, label %283, label %284

283:                                              ; preds = %280
  tail call void (i32, ptr, ...) @error_at(i32 noundef %217, ptr noundef nonnull @.str.8) #10
  br label %284

284:                                              ; preds = %280, %283, %197
  %285 = phi ptr [ null, %197 ], [ %281, %283 ], [ %281, %280 ]
  %286 = phi i8 [ 1, %197 ], [ 1, %283 ], [ %194, %280 ]
  store ptr %80, ptr %34, align 8, !tbaa !46
  store ptr %285, ptr %38, align 8, !tbaa !46
  %287 = add nuw nsw i64 %30, 1
  %288 = load i32, ptr %8, align 8, !tbaa !46
  %289 = sext i32 %288 to i64
  %290 = icmp slt i64 %287, %289
  br i1 %290, label %29, label %291, !llvm.loop !54

291:                                              ; preds = %284
  %292 = icmp eq i8 %286, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %26, %291
  %294 = tail call ptr @make_node_stat(i32 noundef 155) #10
  %295 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %296 = getelementptr inbounds %struct.tree_common, ptr %294, i64 0, i32 2
  store ptr %295, ptr %296, align 8, !tbaa !46
  %297 = getelementptr inbounds %struct.tree_exp, ptr %294, i64 0, i32 3
  %298 = getelementptr inbounds %struct.tree_exp, ptr %294, i64 1, i32 0, i32 1
  store ptr %2, ptr %298, align 8, !tbaa !46
  %299 = getelementptr inbounds %struct.tree_exp, ptr %294, i64 1, i32 0, i32 2
  store ptr %3, ptr %299, align 8, !tbaa !46
  %300 = getelementptr inbounds %struct.tree_exp, ptr %294, i64 1, i32 1
  store ptr %4, ptr %300, align 8, !tbaa !46
  store ptr %5, ptr %297, align 8, !tbaa !46
  %301 = getelementptr inbounds %struct.tree_exp, ptr %294, i64 1, i32 2
  store ptr %6, ptr %301, align 8, !tbaa !46
  %302 = getelementptr inbounds %struct.tree_exp, ptr %294, i64 0, i32 1
  store i32 %0, ptr %302, align 8, !tbaa !46
  %303 = tail call ptr @add_stmt(ptr noundef %294) #10
  br label %304

304:                                              ; preds = %291, %293
  %305 = phi ptr [ %303, %293 ], [ null, %291 ]
  ret ptr %305
}

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @swap_tree_comparison(i32 noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @check_omp_for_incr_expr(i32 noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #8 !prof !34 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -6
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1023
  %15 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1023
  %20 = icmp ult i32 %14, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3, %11
  %22 = load ptr, ptr @global_trees, align 16, !tbaa !35
  br label %73

23:                                               ; preds = %11
  %24 = icmp eq ptr %1, %2
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = tail call ptr @build_int_cst(ptr noundef nonnull %5, i64 noundef 0) #10
  br label %73

27:                                               ; preds = %23
  %28 = load i64, ptr %1, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %71 [
    i16 116, label %30
    i16 113, label %30
    i16 64, label %39
    i16 63, label %50
  ]

30:                                               ; preds = %27, %27
  %31 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = tail call fastcc ptr @check_omp_for_incr_expr(i32 noundef %0, ptr noundef %32, ptr noundef %2)
  %34 = load ptr, ptr @global_trees, align 16, !tbaa !35
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %71, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %4, align 8, !tbaa !46
  %38 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %37, ptr noundef %33) #10
  br label %73

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = tail call fastcc ptr @check_omp_for_incr_expr(i32 noundef %0, ptr noundef %41, ptr noundef %2)
  %43 = load ptr, ptr @global_trees, align 16, !tbaa !35
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %71, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %4, align 8, !tbaa !46
  %47 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 64, ptr noundef %46, ptr noundef %42, ptr noundef %48) #10
  br label %73

50:                                               ; preds = %27
  %51 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = tail call fastcc ptr @check_omp_for_incr_expr(i32 noundef %0, ptr noundef %52, ptr noundef %2)
  %54 = load ptr, ptr @global_trees, align 16, !tbaa !35
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load ptr, ptr %4, align 8, !tbaa !46
  %58 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 63, ptr noundef %57, ptr noundef %53, ptr noundef %59) #10
  br label %73

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = tail call fastcc ptr @check_omp_for_incr_expr(i32 noundef %0, ptr noundef %63, ptr noundef %2)
  %65 = load ptr, ptr @global_trees, align 16, !tbaa !35
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = load ptr, ptr %4, align 8, !tbaa !46
  %69 = load ptr, ptr %51, align 8, !tbaa !46
  %70 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 63, ptr noundef %68, ptr noundef %69, ptr noundef %64) #10
  br label %73

71:                                               ; preds = %30, %27, %61, %39
  %72 = load ptr, ptr @global_trees, align 16, !tbaa !35
  br label %73

73:                                               ; preds = %71, %67, %56, %45, %36, %25, %21
  %74 = phi ptr [ %22, %21 ], [ %26, %25 ], [ %72, %71 ], [ %60, %56 ], [ %70, %67 ], [ %49, %45 ], [ %38, %36 ]
  ret ptr %74
}

; Function Attrs: cold nounwind uwtable
define dso_local void @c_split_parallel_clauses(i32 noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #8 !prof !34 {
  store ptr null, ptr %2, align 8, !tbaa !35
  %5 = tail call ptr @build_omp_clause(i32 noundef %0, i32 noundef 11) #10
  store ptr %5, ptr %3, align 8, !tbaa !35
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %4, %18
  %8 = phi ptr [ %10, %18 ], [ %1, %4 ]
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !46
  switch i32 %12, label %17 [
    i32 1, label %13
    i32 2, label %13
    i32 3, label %13
    i32 4, label %13
    i32 5, label %13
    i32 6, label %13
    i32 8, label %13
    i32 9, label %13
    i32 13, label %13
    i32 10, label %15
    i32 12, label %15
    i32 14, label %15
  ]

13:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7
  %14 = load ptr, ptr %2, align 8, !tbaa !35
  store ptr %14, ptr %9, align 8, !tbaa !46
  store ptr %8, ptr %2, align 8, !tbaa !35
  br label %18

15:                                               ; preds = %7, %7, %7
  %16 = load ptr, ptr %3, align 8, !tbaa !35
  store ptr %16, ptr %9, align 8, !tbaa !46
  store ptr %8, ptr %3, align 8, !tbaa !35
  br label %18

17:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 514, ptr noundef nonnull @.str.2) #10
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = icmp eq ptr %10, null
  br i1 %19, label %20, label %7, !llvm.loop !55

20:                                               ; preds = %18, %4
  ret void
}

declare ptr @build_omp_clause(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @c_omp_predetermined_sharing(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = lshr i32 %3, 20
  %5 = and i32 %4, 1
  ret i32 %5
}

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }

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
!54 = distinct !{!54, !52, !53}
!55 = distinct !{!55, !52, !53}
