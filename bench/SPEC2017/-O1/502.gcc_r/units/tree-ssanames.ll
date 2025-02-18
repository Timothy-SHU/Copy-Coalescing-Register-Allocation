; ModuleID = 'tree-ssanames.c'
source_filename = "tree-ssanames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [16 x i8] c"tree-ssanames.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"release_ssa\00", align 1
@pass_release_ssa_names = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr null, ptr @release_dead_ssa_names, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 1 } }, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Released %i names, %.2f%%\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !54 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !55
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !54 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !55
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !54 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !65

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !59
  %11 = load i8, ptr %3, align 1, !tbaa !66
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !54 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !65

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !59
  %11 = load i8, ptr %3, align 1, !tbaa !66
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !54 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !55
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !65

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !59
  %11 = load i8, ptr %3, align 1, !tbaa !66
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !54 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !55
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !54 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !65

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !67
  store i8 %12, ptr %4, align 1, !tbaa !66
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !54 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !65

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !67
  store i8 %12, ptr %4, align 1, !tbaa !66
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !54 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !65

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !67
  store i8 %12, ptr %4, align 1, !tbaa !66
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !54 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !54 {
  %2 = load i32, ptr %0, align 8, !tbaa !69
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !54 {
  %2 = load i32, ptr %0, align 8, !tbaa !69
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !54 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !70
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !54 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !70
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !54 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !54 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !54 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !54 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #14
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
  br i1 %23, label %7, label %24, !llvm.loop !71

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !54 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @init_ssanames(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 !prof !74 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 50)
  %4 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %3) #14
  %5 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !77
  %8 = load i32, ptr %4, align 8, !tbaa !81
  %9 = add i32 %8, 1
  store i32 %9, ptr %4, align 8, !tbaa !81
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds %struct.VEC_tree_base, ptr %4, i64 0, i32 2, i64 %10
  store ptr null, ptr %11, align 8, !tbaa !55
  %12 = load ptr, ptr %5, align 8, !tbaa !75
  %13 = getelementptr inbounds %struct.gimple_df, ptr %12, i64 0, i32 7
  store ptr null, ptr %13, align 8, !tbaa !83
  %14 = tail call ptr @bitmap_gc_alloc_stat() #14
  %15 = load ptr, ptr %5, align 8, !tbaa !75
  %16 = getelementptr inbounds %struct.gimple_df, ptr %15, i64 0, i32 9
  store ptr %14, ptr %16, align 8, !tbaa !84
  ret void
}

declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @fini_ssanames() local_unnamed_addr #8 !prof !74 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !55
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.gimple_df, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !85

7:                                                ; preds = %0
  tail call void @ggc_free(ptr noundef nonnull %5) #14
  br label %8

8:                                                ; preds = %0, %7
  store ptr null, ptr %4, align 8, !tbaa !55
  %9 = load ptr, ptr @cfun, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 7
  store ptr null, ptr %12, align 8, !tbaa !83
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @make_ssa_name_fn(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !86 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !70
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %10, label %9, !prof !87

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 126, ptr noundef nonnull @.str.1) #14
  br label %10

10:                                               ; preds = %3, %9
  %11 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = getelementptr inbounds %struct.gimple_df, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %36, label %16, !prof !88

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  store ptr %18, ptr %13, align 8, !tbaa !83
  %19 = load ptr, ptr @cfun, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = getelementptr inbounds %struct.gimple_df, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !77
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !66
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.VEC_tree_base, ptr %23, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !89

30:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 139, ptr noundef nonnull @.str.1) #14
  br label %31

31:                                               ; preds = %16, %30
  %32 = load ptr, ptr %11, align 8, !tbaa !75
  %33 = getelementptr inbounds %struct.gimple_df, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = load i32, ptr %24, align 8, !tbaa !66
  br label %62

36:                                               ; preds = %10
  %37 = tail call ptr @make_node_stat(i32 noundef 141) #14
  %38 = load ptr, ptr %11, align 8, !tbaa !75
  %39 = getelementptr inbounds %struct.gimple_df, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !77
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42, !prof !90

42:                                               ; preds = %36
  %43 = load i32, ptr %40, align 8, !tbaa !81
  br label %44

44:                                               ; preds = %36, %42
  %45 = phi i32 [ %43, %42 ], [ 0, %36 ]
  %46 = getelementptr inbounds %struct.tree_ssa_name, ptr %37, i64 0, i32 3
  store i32 %45, ptr %46, align 8, !tbaa !66
  %47 = load ptr, ptr %11, align 8, !tbaa !75
  %48 = getelementptr inbounds %struct.gimple_df, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51, !prof !90

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.VEC_tree_base, ptr %49, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !91
  %54 = load i32, ptr %49, align 8, !tbaa !81
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58, !prof !92

56:                                               ; preds = %44, %51
  %57 = tail call ptr @vec_gc_p_reserve(ptr noundef %49, i32 noundef 1) #14
  store ptr %57, ptr %48, align 8, !tbaa !55
  br label %58

58:                                               ; preds = %51, %56
  %59 = load ptr, ptr %48, align 8, !tbaa !55
  %60 = load i32, ptr %59, align 8, !tbaa !81
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 8, !tbaa !81
  br label %62

62:                                               ; preds = %58, %31
  %63 = phi i32 [ %60, %58 ], [ %35, %31 ]
  %64 = phi ptr [ %59, %58 ], [ %34, %31 ]
  %65 = phi ptr [ %37, %58 ], [ %14, %31 ]
  %66 = zext i32 %63 to i64
  %67 = getelementptr inbounds %struct.VEC_tree_base, ptr %64, i64 0, i32 2, i64 %66
  store ptr %65, ptr %67, align 8, !tbaa !55
  %68 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !66
  %70 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !66
  %71 = getelementptr inbounds %struct.tree_ssa_name, ptr %65, i64 0, i32 1
  store ptr %1, ptr %71, align 8, !tbaa !66
  %72 = getelementptr inbounds %struct.tree_ssa_name, ptr %65, i64 0, i32 2
  store ptr %2, ptr %72, align 8, !tbaa !66
  %73 = getelementptr inbounds %struct.tree_ssa_name, ptr %65, i64 0, i32 4
  store ptr null, ptr %73, align 8, !tbaa !66
  %74 = load i64, ptr %65, align 8
  %75 = and i64 %74, -4328521729
  store i64 %75, ptr %65, align 8
  %76 = getelementptr inbounds %struct.tree_ssa_name, ptr %65, i64 0, i32 5
  %77 = getelementptr inbounds %struct.tree_ssa_name, ptr %65, i64 0, i32 5, i32 3
  store ptr null, ptr %77, align 8, !tbaa !93
  store ptr %76, ptr %76, align 8, !tbaa !95
  %78 = getelementptr inbounds %struct.tree_ssa_name, ptr %65, i64 0, i32 5, i32 1
  store ptr %76, ptr %78, align 8, !tbaa !96
  %79 = getelementptr inbounds %struct.tree_ssa_name, ptr %65, i64 0, i32 5, i32 2
  store ptr %65, ptr %79, align 8, !tbaa !66
  ret ptr %65
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @release_ssa_name(ptr noundef %0) local_unnamed_addr #9 !prof !97 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %64, label %3, !prof !98

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 4294967296
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %64, !prof !99

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %0) #14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10, !prof !100

10:                                               ; preds = %7
  tail call void @release_ssa_name_after_update_ssa(ptr noundef nonnull %0) #14
  br label %64

11:                                               ; preds = %7
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %64, !prof !101

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !66
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %21 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !70
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23, !prof !101

23:                                               ; preds = %15
  tail call void @insert_debug_temp_for_var_def(ptr noundef null, ptr noundef nonnull %0) #14
  br label %24

24:                                               ; preds = %23, %15
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !96
  %27 = icmp eq ptr %26, %20
  br i1 %27, label %40, label %28, !prof !102

28:                                               ; preds = %24, %37
  %29 = phi ptr [ %38, %37 ], [ %26, %24 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !95
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32, !prof !103

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %29, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !96
  %35 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %30, i64 0, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !96
  %36 = load ptr, ptr %33, align 8, !tbaa !96
  store ptr %30, ptr %36, align 8, !tbaa !95
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  br label %37

37:                                               ; preds = %28, %32
  %38 = load ptr, ptr %25, align 8, !tbaa !96
  %39 = icmp eq ptr %38, %20
  br i1 %39, label %40, label %28, !prof !104, !llvm.loop !105

40:                                               ; preds = %37, %24
  %41 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %42 = load ptr, ptr @cfun, align 8, !tbaa !55
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !75
  %45 = getelementptr inbounds %struct.gimple_df, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !77
  %47 = load i32, ptr %18, align 8, !tbaa !66
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.VEC_tree_base, ptr %46, i64 0, i32 2, i64 %48
  store ptr null, ptr %49, align 8, !tbaa !55
  %50 = tail call i64 @tree_size(ptr noundef nonnull %0) #14
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %0, i8 0, i64 %50, i1 false), !prof !106
  store ptr %20, ptr %20, align 8, !tbaa !95
  store ptr %20, ptr %41, align 8, !tbaa !96
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 2
  store ptr %0, ptr %51, align 8, !tbaa !66
  %52 = load i64, ptr %0, align 8
  %53 = and i64 %52, -65536
  %54 = or disjoint i64 %53, 141
  store i64 %54, ptr %0, align 8
  store i32 %19, ptr %18, align 8, !tbaa !66
  store ptr %17, ptr %16, align 8, !tbaa !66
  %55 = or i64 %53, 33554573
  store i64 %55, ptr %0, align 8
  %56 = load ptr, ptr @cfun, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !75
  %59 = getelementptr inbounds %struct.gimple_df, ptr %58, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !83
  %61 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !66
  %62 = load ptr, ptr %57, align 8, !tbaa !75
  %63 = getelementptr inbounds %struct.gimple_df, ptr %62, i64 0, i32 7
  store ptr %0, ptr %63, align 8, !tbaa !83
  br label %64

64:                                               ; preds = %3, %1, %10, %40, %11
  ret void
}

declare zeroext i8 @name_registered_for_update_p(ptr noundef) local_unnamed_addr #3

declare void @release_ssa_name_after_update_ssa(ptr noundef) local_unnamed_addr #3

declare void @insert_debug_temp_for_var_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @tree_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @duplicate_ssa_name(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !107 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = load ptr, ptr @cfun, align 8, !tbaa !55
  %6 = load i64, ptr %4, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !70
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %12, label %11, !prof !87

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 126, ptr noundef nonnull @.str.1) #14
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.gimple_df, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !83
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18, !prof !88

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  store ptr %20, ptr %15, align 8, !tbaa !83
  %21 = load ptr, ptr @cfun, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct.gimple_df, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !77
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !66
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.VEC_tree_base, ptr %25, i64 0, i32 2, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !89

32:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 139, ptr noundef nonnull @.str.1) #14
  br label %33

33:                                               ; preds = %32, %18
  %34 = load ptr, ptr %13, align 8, !tbaa !75
  %35 = getelementptr inbounds %struct.gimple_df, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !77
  %37 = load i32, ptr %26, align 8, !tbaa !66
  br label %64

38:                                               ; preds = %12
  %39 = tail call ptr @make_node_stat(i32 noundef 141) #14
  %40 = load ptr, ptr %13, align 8, !tbaa !75
  %41 = getelementptr inbounds %struct.gimple_df, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !77
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44, !prof !90

44:                                               ; preds = %38
  %45 = load i32, ptr %42, align 8, !tbaa !81
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi i32 [ %45, %44 ], [ 0, %38 ]
  %48 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 3
  store i32 %47, ptr %48, align 8, !tbaa !66
  %49 = load ptr, ptr %13, align 8, !tbaa !75
  %50 = getelementptr inbounds %struct.gimple_df, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !55
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53, !prof !90

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.VEC_tree_base, ptr %51, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !91
  %56 = load i32, ptr %51, align 8, !tbaa !81
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60, !prof !92

58:                                               ; preds = %53, %46
  %59 = tail call ptr @vec_gc_p_reserve(ptr noundef %51, i32 noundef 1) #14
  store ptr %59, ptr %50, align 8, !tbaa !55
  br label %60

60:                                               ; preds = %58, %53
  %61 = load ptr, ptr %50, align 8, !tbaa !55
  %62 = load i32, ptr %61, align 8, !tbaa !81
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 8, !tbaa !81
  br label %64

64:                                               ; preds = %33, %60
  %65 = phi i32 [ %37, %33 ], [ %62, %60 ]
  %66 = phi ptr [ %36, %33 ], [ %61, %60 ]
  %67 = phi ptr [ %16, %33 ], [ %39, %60 ]
  %68 = zext i32 %65 to i64
  %69 = getelementptr inbounds %struct.VEC_tree_base, ptr %66, i64 0, i32 2, i64 %68
  store ptr %67, ptr %69, align 8, !tbaa !55
  %70 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !66
  %72 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  store ptr %71, ptr %72, align 8, !tbaa !66
  %73 = getelementptr inbounds %struct.tree_ssa_name, ptr %67, i64 0, i32 1
  store ptr %4, ptr %73, align 8, !tbaa !66
  %74 = getelementptr inbounds %struct.tree_ssa_name, ptr %67, i64 0, i32 2
  store ptr %1, ptr %74, align 8, !tbaa !66
  %75 = getelementptr inbounds %struct.tree_ssa_name, ptr %67, i64 0, i32 4
  store ptr null, ptr %75, align 8, !tbaa !66
  %76 = load i64, ptr %67, align 8
  %77 = and i64 %76, -4328521729
  store i64 %77, ptr %67, align 8
  %78 = getelementptr inbounds %struct.tree_ssa_name, ptr %67, i64 0, i32 5
  %79 = getelementptr inbounds %struct.tree_ssa_name, ptr %67, i64 0, i32 5, i32 3
  store ptr null, ptr %79, align 8, !tbaa !93
  store ptr %78, ptr %78, align 8, !tbaa !95
  %80 = getelementptr inbounds %struct.tree_ssa_name, ptr %67, i64 0, i32 5, i32 1
  store ptr %78, ptr %80, align 8, !tbaa !96
  %81 = getelementptr inbounds %struct.tree_ssa_name, ptr %67, i64 0, i32 5, i32 2
  store ptr %67, ptr %81, align 8, !tbaa !66
  %82 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !66
  %84 = icmp eq ptr %83, null
  br i1 %84, label %95, label %85, !prof !108

85:                                               ; preds = %64
  %86 = load i64, ptr %71, align 8
  %87 = trunc i64 %86 to i16
  switch i16 %87, label %88 [
    i16 10, label %89
    i16 12, label %89
  ], !prof !109

88:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 268, ptr noundef nonnull @.str.1) #14
  br label %89

89:                                               ; preds = %88, %85, %85
  %90 = load ptr, ptr %75, align 8, !tbaa !66
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92, !prof !110

92:                                               ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 269, ptr noundef nonnull @.str.1) #14
  br label %93

93:                                               ; preds = %89, %92
  %94 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %94, ptr noundef nonnull align 8 dereferenceable(16) %83, i64 16, i1 false), !tbaa.struct !111
  store ptr %94, ptr %75, align 8, !tbaa !66
  br label %95

95:                                               ; preds = %93, %64
  ret ptr %67
}

; Function Attrs: nounwind uwtable
define dso_local void @duplicate_ssa_name_ptr_info(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !54 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %7 [
    i16 10, label %8
    i16 12, label %8
  ], !prof !109

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 268, ptr noundef nonnull @.str.1) #14
  br label %8

8:                                                ; preds = %2, %2, %7
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !110

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 269, ptr noundef nonnull @.str.1) #14
  br label %13

13:                                               ; preds = %8, %12
  %14 = icmp eq ptr %1, null
  br i1 %14, label %17, label %15, !prof !112

15:                                               ; preds = %13
  %16 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !111
  store ptr %16, ptr %9, align 8, !tbaa !66
  br label %17

17:                                               ; preds = %13, %15
  ret void
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @release_defs(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !113 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !55
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !114

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8, !prof !114

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 10
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14, !prof !114

13:                                               ; preds = %4, %1, %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 291, ptr noundef nonnull @.str.1) #14
  br label %14

14:                                               ; preds = %8, %13
  %15 = load i32, ptr %0, align 8
  %16 = and i32 %15, 255
  %17 = add nsw i32 %16, -10
  %18 = icmp ult i32 %17, -9
  br i1 %18, label %22, label %19, !prof !114

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  br label %22

22:                                               ; preds = %14, %19
  %23 = phi ptr [ %21, %19 ], [ null, %14 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25, !prof !115

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.def_optype_d, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !116
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = load ptr, ptr %23, align 8, !tbaa !118
  br label %30

30:                                               ; preds = %22, %25
  %31 = phi ptr [ %29, %25 ], [ %23, %22 ]
  %32 = phi i8 [ 0, %25 ], [ 1, %22 ]
  %33 = phi ptr [ %28, %25 ], [ null, %22 ]
  br i1 %24, label %109, label %34, !prof !119

34:                                               ; preds = %30, %104
  %35 = phi ptr [ %107, %104 ], [ %33, %30 ]
  %36 = phi i8 [ %106, %104 ], [ %32, %30 ]
  %37 = phi ptr [ %105, %104 ], [ %31, %30 ]
  %38 = load i64, ptr %35, align 8
  %39 = and i64 %38, 4295032831
  %40 = icmp eq i64 %39, 141
  br i1 %40, label %41, label %97, !prof !120

41:                                               ; preds = %34
  %42 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %35) #14
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44, !prof !100

44:                                               ; preds = %41
  tail call void @release_ssa_name_after_update_ssa(ptr noundef nonnull %35) #14
  br label %97

45:                                               ; preds = %41
  %46 = load i64, ptr %35, align 8
  %47 = and i64 %46, 33554432
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %97, !prof !101

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !66
  %52 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !66
  %54 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 5
  %55 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !70
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57, !prof !101

57:                                               ; preds = %49
  tail call void @insert_debug_temp_for_var_def(ptr noundef null, ptr noundef nonnull %35) #14
  br label %58

58:                                               ; preds = %57, %49
  %59 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 5, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !96
  %61 = icmp eq ptr %60, %54
  br i1 %61, label %74, label %62, !prof !102

62:                                               ; preds = %58, %71
  %63 = phi ptr [ %72, %71 ], [ %60, %58 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !95
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66, !prof !103

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %63, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !96
  %69 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %64, i64 0, i32 1
  store ptr %68, ptr %69, align 8, !tbaa !96
  %70 = load ptr, ptr %67, align 8, !tbaa !96
  store ptr %64, ptr %70, align 8, !tbaa !95
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  br label %71

71:                                               ; preds = %66, %62
  %72 = load ptr, ptr %59, align 8, !tbaa !96
  %73 = icmp eq ptr %72, %54
  br i1 %73, label %74, label %62, !prof !104, !llvm.loop !105

74:                                               ; preds = %71, %58
  %75 = load ptr, ptr @cfun, align 8, !tbaa !55
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !75
  %78 = getelementptr inbounds %struct.gimple_df, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !77
  %80 = load i32, ptr %52, align 8, !tbaa !66
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.VEC_tree_base, ptr %79, i64 0, i32 2, i64 %81
  store ptr null, ptr %82, align 8, !tbaa !55
  %83 = tail call i64 @tree_size(ptr noundef nonnull %35) #14
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %35, i8 0, i64 %83, i1 false), !prof !121
  store ptr %54, ptr %54, align 8, !tbaa !95
  store ptr %54, ptr %59, align 8, !tbaa !96
  %84 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 5, i32 2
  store ptr %35, ptr %84, align 8, !tbaa !66
  %85 = load i64, ptr %35, align 8
  %86 = and i64 %85, -65536
  %87 = or disjoint i64 %86, 141
  store i64 %87, ptr %35, align 8
  store i32 %53, ptr %52, align 8, !tbaa !66
  store ptr %51, ptr %50, align 8, !tbaa !66
  %88 = or i64 %86, 33554573
  store i64 %88, ptr %35, align 8
  %89 = load ptr, ptr @cfun, align 8, !tbaa !55
  %90 = getelementptr inbounds %struct.function, ptr %89, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !75
  %92 = getelementptr inbounds %struct.gimple_df, ptr %91, i64 0, i32 7
  %93 = load ptr, ptr %92, align 8, !tbaa !83
  %94 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 1
  store ptr %93, ptr %94, align 8, !tbaa !66
  %95 = load ptr, ptr %90, align 8, !tbaa !75
  %96 = getelementptr inbounds %struct.gimple_df, ptr %95, i64 0, i32 7
  store ptr %35, ptr %96, align 8, !tbaa !83
  br label %97

97:                                               ; preds = %34, %44, %45, %74
  %98 = icmp eq ptr %37, null
  br i1 %98, label %104, label %99, !prof !122

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.def_optype_d, ptr %37, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !116
  %102 = load ptr, ptr %101, align 8, !tbaa !55
  %103 = load ptr, ptr %37, align 8, !tbaa !118
  br label %104

104:                                              ; preds = %97, %99
  %105 = phi ptr [ %103, %99 ], [ %37, %97 ]
  %106 = phi i8 [ %36, %99 ], [ 1, %97 ]
  %107 = phi ptr [ %102, %99 ], [ null, %97 ]
  %108 = icmp eq i8 %106, 0
  br i1 %108, label %34, label %109, !prof !123, !llvm.loop !124

109:                                              ; preds = %104, %30
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @replace_ssa_name_symbol(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #12 !prof !125 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @release_dead_ssa_names() #8 !prof !126 !PGOFuncName !127 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !55
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !128

5:                                                ; preds = %0
  %6 = load ptr, ptr %3, align 8, !tbaa !129
  br label %7

7:                                                ; preds = %5, %0
  %8 = phi ptr [ %6, %5 ], [ null, %0 ]
  %9 = getelementptr inbounds %struct.htab, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  %11 = tail call i64 @htab_size(ptr noundef %8) #14
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  br label %13

13:                                               ; preds = %17, %7
  %14 = phi ptr [ %10, %7 ], [ %18, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = icmp ult ptr %15, inttoptr (i64 2 to ptr)
  br i1 %16, label %17, label %20, !prof !132

17:                                               ; preds = %13
  %18 = getelementptr inbounds ptr, ptr %14, i64 1
  %19 = icmp ult ptr %18, %12
  br i1 %19, label %13, label %20, !prof !133, !llvm.loop !134

20:                                               ; preds = %17, %13
  %21 = phi ptr [ %14, %13 ], [ %18, %17 ]
  %22 = icmp ult ptr %21, %12
  br i1 %22, label %23, label %25, !prof !135

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !55
  br label %25

25:                                               ; preds = %20, %23
  %26 = phi ptr [ %24, %23 ], [ null, %20 ]
  %27 = icmp ult ptr %21, %12
  br i1 %27, label %28, label %43, !prof !136

28:                                               ; preds = %25, %40
  %29 = phi ptr [ %41, %40 ], [ %26, %25 ]
  %30 = phi ptr [ %34, %40 ], [ %21, %25 ]
  tail call void @set_current_def(ptr noundef %29, ptr noundef null) #14
  br label %31

31:                                               ; preds = %36, %28
  %32 = phi ptr [ %30, %28 ], [ %34, %36 ]
  %33 = phi ptr [ undef, %28 ], [ %39, %36 ]
  %34 = getelementptr inbounds ptr, ptr %32, i64 1
  %35 = icmp ult ptr %34, %12
  br i1 %35, label %36, label %40, !prof !137

36:                                               ; preds = %31
  %37 = load ptr, ptr %34, align 8, !tbaa !55
  %38 = icmp ult ptr %37, inttoptr (i64 2 to ptr)
  %39 = select i1 %38, ptr %33, ptr %37, !prof !138
  br i1 %38, label %31, label %40, !prof !138

40:                                               ; preds = %36, %31
  %41 = phi ptr [ null, %31 ], [ %39, %36 ]
  %42 = icmp ult ptr %34, %12
  br i1 %42, label %28, label %43, !prof !139, !llvm.loop !140

43:                                               ; preds = %40, %25
  %44 = load ptr, ptr @cfun, align 8, !tbaa !55
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !75
  %47 = getelementptr inbounds %struct.gimple_df, ptr %46, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !83
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50, !prof !141

50:                                               ; preds = %43, %50
  %51 = phi i32 [ %55, %50 ], [ 0, %43 ]
  %52 = phi ptr [ %54, %50 ], [ %48, %43 ]
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !66
  store ptr null, ptr %53, align 8, !tbaa !66
  %55 = add nuw nsw i32 %51, 1
  %56 = icmp eq ptr %54, null
  br i1 %56, label %57, label %50, !prof !142, !llvm.loop !143

57:                                               ; preds = %50, %43
  %58 = phi i32 [ 0, %43 ], [ %55, %50 ]
  %59 = load ptr, ptr %45, align 8, !tbaa !75
  %60 = getelementptr inbounds %struct.gimple_df, ptr %59, i64 0, i32 7
  store ptr null, ptr %60, align 8, !tbaa !83
  %61 = load ptr, ptr @current_function_decl, align 8, !tbaa !55
  %62 = tail call ptr @cgraph_node(ptr noundef %61) #14
  tail call void @cgraph_node_remove_callees(ptr noundef %62) #14
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !55
  %64 = icmp eq ptr %63, null
  br i1 %64, label %81, label %65, !prof !135

65:                                               ; preds = %57
  %66 = sitofp i32 %58 to double
  %67 = fmul double %66, 1.000000e+02
  %68 = load ptr, ptr @cfun, align 8, !tbaa !55
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !75
  %71 = getelementptr inbounds %struct.gimple_df, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !77
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %65
  %75 = load i32, ptr %72, align 8, !tbaa !81
  %76 = uitofp i32 %75 to double
  br label %77

77:                                               ; preds = %65, %74
  %78 = phi double [ %76, %74 ], [ 0.000000e+00, %65 ]
  %79 = fdiv double %67, %78
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %63, ptr noundef nonnull @.str.4, i32 noundef %58, double noundef %79)
  br label %81

81:                                               ; preds = %77, %57
  ret i32 0
}

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_current_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cgraph_node_remove_callees(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!53}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!35 = !{ptr @init_ssanames, ptr @vec_gc_p_reserve_exact, i64 41}
!36 = !{ptr @init_ssanames, ptr @bitmap_gc_alloc_stat, i64 41}
!37 = !{ptr @fini_ssanames, ptr @ggc_free, i64 41}
!38 = !{ptr @make_ssa_name_fn, ptr @make_node_stat, i64 308372}
!39 = !{ptr @make_ssa_name_fn, ptr @vec_gc_p_reserve, i64 184}
!40 = !{ptr @release_ssa_name, ptr @name_registered_for_update_p, i64 91852}
!41 = !{ptr @release_ssa_name, ptr @release_ssa_name_after_update_ssa, i64 27}
!42 = !{ptr @release_ssa_name, ptr @tree_size, i64 91825}
!43 = !{ptr @duplicate_ssa_name, ptr @make_node_stat, i64 118090}
!44 = !{ptr @duplicate_ssa_name, ptr @vec_gc_p_reserve, i64 70}
!45 = !{ptr @duplicate_ssa_name, ptr @ggc_alloc_stat, i64 268}
!46 = !{ptr @release_defs, ptr @name_registered_for_update_p, i64 152262}
!47 = !{ptr @release_defs, ptr @release_ssa_name_after_update_ssa, i64 45}
!48 = !{ptr @release_defs, ptr @tree_size, i64 152217}
!49 = !{ptr @release_dead_ssa_names, ptr @htab_size, i64 40}
!50 = !{ptr @release_dead_ssa_names, ptr @set_current_def, i64 110786}
!51 = !{ptr @release_dead_ssa_names, ptr @cgraph_node, i64 40}
!52 = !{ptr @release_dead_ssa_names, ptr @cgraph_node_remove_callees, i64 40}
!53 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!54 = !{!"function_entry_count", i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!60, !56, i64 8}
!60 = !{!"_IO_FILE", !61, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !56, i64 96, !56, i64 104, !61, i64 112, !61, i64 116, !62, i64 120, !63, i64 128, !57, i64 130, !57, i64 131, !56, i64 136, !62, i64 144, !56, i64 152, !56, i64 160, !56, i64 168, !56, i64 176, !62, i64 184, !61, i64 192, !57, i64 196}
!61 = !{!"int", !57, i64 0}
!62 = !{!"long", !57, i64 0}
!63 = !{!"short", !57, i64 0}
!64 = !{!60, !56, i64 16}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{!57, !57, i64 0}
!67 = !{!60, !56, i64 40}
!68 = !{!60, !56, i64 48}
!69 = !{!60, !61, i64 0}
!70 = !{!61, !61, i64 0}
!71 = distinct !{!71, !72, !73}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!"function_entry_count", i64 41}
!75 = !{!76, !56, i64 24}
!76 = !{!"function", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !56, i64 96, !61, i64 104, !61, i64 108, !61, i64 112, !61, i64 116, !61, i64 120, !61, i64 124, !56, i64 128, !61, i64 136, !61, i64 137, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139}
!77 = !{!78, !56, i64 16}
!78 = !{!"gimple_df", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !79, i64 32, !79, i64 48, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !61, i64 96, !80, i64 104}
!79 = !{!"pt_solution", !61, i64 0, !61, i64 0, !61, i64 0, !61, i64 0, !61, i64 0, !61, i64 0, !56, i64 8}
!80 = !{!"ssa_operands", !56, i64 0, !61, i64 8, !61, i64 12, !57, i64 16, !56, i64 24, !56, i64 32}
!81 = !{!82, !61, i64 0}
!82 = !{!"VEC_tree_base", !61, i64 0, !61, i64 4, !57, i64 8}
!83 = !{!78, !56, i64 72}
!84 = !{!78, !56, i64 88}
!85 = !{!"branch_weights", i32 0, i32 41}
!86 = !{!"function_entry_count", i64 367403}
!87 = !{!"branch_weights", i32 508098, i32 0}
!88 = !{!"branch_weights", i32 426462, i32 81636}
!89 = !{!"branch_weights", i32 81636, i32 0}
!90 = !{!"branch_weights", i32 0, i32 426462}
!91 = !{!82, !61, i64 4}
!92 = !{!"branch_weights", i32 254, i32 426208}
!93 = !{!94, !56, i64 24}
!94 = !{!"ssa_use_operand_d", !56, i64 0, !56, i64 8, !57, i64 16, !56, i64 24}
!95 = !{!94, !56, i64 0}
!96 = !{!94, !56, i64 8}
!97 = !{!"function_entry_count", i64 91852}
!98 = !{!"branch_weights", i32 0, i32 244114}
!99 = !{!"branch_weights", i32 244114, i32 0}
!100 = !{!"branch_weights", i32 244042, i32 72}
!101 = !{!"branch_weights", i32 244042, i32 0}
!102 = !{!"branch_weights", i32 114826, i32 129216}
!103 = !{!"branch_weights", i32 0, i32 129216}
!104 = !{!"branch_weights", i32 129216, i32 0}
!105 = distinct !{!105, !72, !73}
!106 = !{!"VP", i32 1, i64 91824, i64 65, i64 91824}
!107 = !{!"function_entry_count", i64 140695}
!108 = !{!"branch_weights", i32 140427, i32 268}
!109 = !{!"branch_weights", i32 0, i32 268, i32 0}
!110 = !{!"branch_weights", i32 268, i32 0}
!111 = !{i64 0, i64 4, !70, i64 0, i64 4, !70, i64 0, i64 4, !70, i64 0, i64 4, !70, i64 0, i64 4, !70, i64 0, i64 4, !70, i64 8, i64 8, !55}
!112 = !{!"branch_weights", i32 0, i32 268}
!113 = !{!"function_entry_count", i64 152374}
!114 = !{!"branch_weights", i32 0, i32 152374}
!115 = !{!"branch_weights", i32 285, i32 152089}
!116 = !{!117, !56, i64 8}
!117 = !{!"def_optype_d", !56, i64 0, !56, i64 8}
!118 = !{!117, !56, i64 0}
!119 = !{!"branch_weights", i32 112, i32 152262}
!120 = !{!"branch_weights", i32 -2131666055, i32 0}
!121 = !{!"VP", i32 1, i64 152217, i64 65, i64 152217}
!122 = !{!"branch_weights", i32 152089, i32 173}
!123 = !{!"branch_weights", i32 0, i32 152262}
!124 = distinct !{!124, !72, !73}
!125 = !{!"function_entry_count", i64 1294673}
!126 = !{!"function_entry_count", i64 40}
!127 = !{!"tree-ssanames.c;release_dead_ssa_names"}
!128 = !{!"branch_weights", i32 0, i32 40}
!129 = !{!78, !56, i64 0}
!130 = !{!131, !56, i64 24}
!131 = !{!"htab", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !61, i64 56, !61, i64 60, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !56, i64 96, !61, i64 104}
!132 = !{!"branch_weights", i32 55, i32 40}
!133 = !{!"branch_weights", i32 55, i32 0}
!134 = distinct !{!134, !72, !73}
!135 = !{!"branch_weights", i32 40, i32 0}
!136 = !{!"branch_weights", i32 159, i32 1}
!137 = !{!"branch_weights", i32 235955, i32 40}
!138 = !{!"branch_weights", i32 125209, i32 110746}
!139 = !{!"branch_weights", i32 442985, i32 159}
!140 = distinct !{!140, !72, !73}
!141 = !{!"branch_weights", i32 1, i32 159}
!142 = !{!"branch_weights", i32 159, i32 194221}
!143 = distinct !{!143, !72, !73}
