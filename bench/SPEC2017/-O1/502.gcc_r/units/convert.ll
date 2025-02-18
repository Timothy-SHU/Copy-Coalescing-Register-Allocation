; ModuleID = 'convert.c'
source_filename = "convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.double_int = type { i64, i64 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.real_value = type { i32, [3 x i64] }
%struct.tree_real_cst = type { %struct.tree_common, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str = private unnamed_addr constant [33 x i8] c"cannot convert to a pointer type\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@optimize = external local_unnamed_addr global i32, align 4
@flag_errno_math = external local_unnamed_addr global i32, align 4
@flag_rounding_math = external local_unnamed_addr global i32, align 4
@flag_unsafe_math_optimizations = external local_unnamed_addr global i32, align 4
@flag_float_store = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"pointer value used where a floating point value was expected\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"aggregate value used where a float was expected\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"conversion to incomplete type\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@linux_uclibc = external local_unnamed_addr global i32, align 4
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@flag_wrapv = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"can't convert between vector values of different size\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"aggregate value used where an integer was expected\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"pointer value used where a complex was expected\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"aggregate value used where a complex was expected\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"can't convert value to a vector\00", align 1
@fconst0 = external global [18 x %struct.fixed_value], align 16
@fconst1 = external global [8 x %struct.fixed_value], align 16
@.str.9 = private unnamed_addr constant [54 x i8] c"aggregate value used where a fixed-point was expected\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !49 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !50
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !49 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !50
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !49 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !60

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !54
  %11 = load i8, ptr %3, align 1, !tbaa !61
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !49 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !60

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !54
  %11 = load i8, ptr %3, align 1, !tbaa !61
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !49 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !60

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #13
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !54
  %11 = load i8, ptr %3, align 1, !tbaa !61
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !49 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !50
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !49 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !60

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !62
  store i8 %12, ptr %4, align 1, !tbaa !61
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !49 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !60

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !62
  store i8 %12, ptr %4, align 1, !tbaa !61
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !49 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !50
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !60

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !62
  store i8 %12, ptr %4, align 1, !tbaa !61
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !49 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #13
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !49 {
  %2 = load i32, ptr %0, align 8, !tbaa !64
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !49 {
  %2 = load i32, ptr %0, align 8, !tbaa !64
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !49 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !65
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !49 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !65
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !49 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !49 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !49 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !49 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #13
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
  br i1 %23, label %7, label %24, !llvm.loop !66

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !49 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @convert_to_pointer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !69 {
  br label %3

3:                                                ; preds = %61, %2
  %4 = phi ptr [ %1, %2 ], [ %62, %61 ]
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !65
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %14, !prof !70

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !61
  br label %14

14:                                               ; preds = %3, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %3 ]
  %16 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %63, label %19, !prof !71

19:                                               ; preds = %14
  %20 = tail call i32 @integer_zerop(ptr noundef nonnull %4) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22, !prof !72

22:                                               ; preds = %19
  %23 = load i64, ptr %4, align 8
  %24 = trunc i64 %23 to i32
  %25 = lshr i32 %24, 27
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = tail call ptr @force_fit_type_double(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 0, i8 noundef zeroext %27) #13
  br label %63

29:                                               ; preds = %19
  %30 = load ptr, ptr %16, align 8, !tbaa !61
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i16
  switch i16 %32, label %61 [
    i16 10, label %33
    i16 12, label %33
    i16 8, label %46
    i16 6, label %46
    i16 7, label %46
  ], !prof !73

33:                                               ; preds = %29, %29
  %34 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !61
  %39 = load i64, ptr %38, align 8
  %40 = xor i64 %39, %36
  %41 = icmp ult i64 %40, 72057594037927936
  br i1 %41, label %42, label %44, !prof !74

42:                                               ; preds = %33
  %43 = tail call ptr @fold_build1_stat_loc(i32 noundef %15, i32 noundef 116, ptr noundef %0, ptr noundef nonnull %4) #13
  br label %63

44:                                               ; preds = %33
  %45 = tail call ptr @fold_build1_stat_loc(i32 noundef %15, i32 noundef 114, ptr noundef %0, ptr noundef nonnull %4) #13
  br label %63

46:                                               ; preds = %29, %29, %29
  %47 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 1023
  %50 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 1023
  %53 = icmp eq i32 %52, %49
  br i1 %53, label %58, label %54, !prof !75

54:                                               ; preds = %46
  %55 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !76
  %56 = tail call ptr %55(i32 noundef %49, i32 noundef 0) #13
  %57 = tail call ptr @fold_build1_stat_loc(i32 noundef %15, i32 noundef 116, ptr noundef %56, ptr noundef nonnull %4) #13
  br label %58

58:                                               ; preds = %54, %46
  %59 = phi ptr [ %57, %54 ], [ %4, %46 ]
  %60 = tail call ptr @fold_build1_stat_loc(i32 noundef %15, i32 noundef 113, ptr noundef %0, ptr noundef %59) #13
  br label %63

61:                                               ; preds = %29
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str) #13
  %62 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !50
  br label %3

63:                                               ; preds = %42, %44, %14, %58, %22
  %64 = phi ptr [ %28, %22 ], [ %60, %58 ], [ %4, %14 ], [ %43, %42 ], [ %45, %44 ]
  ret ptr %64
}

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @force_fit_type_double(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @strip_float_extensions(ptr noundef readonly %0) local_unnamed_addr #10 !prof !84 {
  %2 = alloca %struct.real_value, align 8
  %3 = alloca %struct.real_value, align 8
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 24
  br i1 %6, label %7, label %92, !prof !85

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 9
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !61
  %21 = icmp eq i8 %20, 9
  br i1 %21, label %92, label %22

22:                                               ; preds = %13, %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #13
  %23 = getelementptr inbounds %struct.tree_real_cst, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 32, i1 false), !tbaa.struct !86
  %25 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1023
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !50
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1023
  %32 = icmp ugt i32 %27, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %22
  %34 = load i64, ptr %28, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 14
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = tail call i32 @vector_type_mode(ptr noundef nonnull %28) #13
  br label %42

39:                                               ; preds = %33
  %40 = lshr i32 %30, 16
  %41 = and i32 %40, 255
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ]
  %44 = call zeroext i8 @exact_real_truncate(i32 noundef %43, ptr noundef nonnull %2) #13
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !50
  br label %73

48:                                               ; preds = %42, %22
  %49 = load ptr, ptr %8, align 8, !tbaa !61
  %50 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 1023
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !50
  %54 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 1023
  %57 = icmp ugt i32 %52, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %48
  %59 = load i64, ptr %53, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 14
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @vector_type_mode(ptr noundef nonnull %53) #13
  br label %67

64:                                               ; preds = %58
  %65 = lshr i32 %55, 16
  %66 = and i32 %65, 255
  br label %67

67:                                               ; preds = %64, %62
  %68 = phi i32 [ %63, %62 ], [ %66, %64 ]
  %69 = call zeroext i8 @exact_real_truncate(i32 noundef %68, ptr noundef nonnull %2) #13
  %70 = icmp eq i8 %69, 0
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16
  %72 = select i1 %70, ptr null, ptr %71
  br label %73

73:                                               ; preds = %67, %48, %46
  %74 = phi ptr [ %47, %46 ], [ null, %48 ], [ %72, %67 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %90, label %76

76:                                               ; preds = %73
  %77 = load i64, ptr %74, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 14
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 @vector_type_mode(ptr noundef nonnull %74) #13
  br label %87

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.tree_type, ptr %74, i64 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 255
  br label %87

87:                                               ; preds = %82, %80
  %88 = phi i32 [ %81, %80 ], [ %86, %82 ]
  call void @real_value_truncate(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %3, i32 noundef %88, ptr noundef nonnull byval(%struct.real_value) align 8 %2) #13
  %89 = call ptr @build_real(ptr noundef nonnull %74, ptr noundef nonnull byval(%struct.real_value) align 8 %3) #13
  br label %90

90:                                               ; preds = %73, %87
  %91 = phi ptr [ %89, %87 ], [ undef, %73 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  br i1 %75, label %92, label %151

92:                                               ; preds = %90, %13, %1
  %93 = load i64, ptr %0, align 8
  %94 = trunc i64 %93 to i16
  switch i16 %94, label %151 [
    i16 116, label %95
    i16 113, label %95
  ], !prof !87

95:                                               ; preds = %92, %92
  %96 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !61
  %98 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !61
  %100 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !61
  %102 = load i64, ptr %99, align 8
  %103 = trunc i64 %102 to i16
  switch i16 %103, label %151 [
    i16 9, label %110
    i16 13, label %104
    i16 14, label %104
  ], !prof !88

104:                                              ; preds = %95, %95
  %105 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !61
  %107 = load i64, ptr %106, align 8
  %108 = and i64 %107, 65535
  %109 = icmp eq i64 %108, 9
  br i1 %109, label %110, label %151

110:                                              ; preds = %104, %95
  %111 = load i64, ptr %101, align 8
  %112 = and i64 %111, 65535
  %113 = icmp eq i64 %112, 9
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.tree_type, ptr %101, i64 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = lshr i32 %116, 16
  %118 = and i32 %117, 255
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !61
  %122 = icmp eq i8 %121, 9
  %123 = zext i1 %122 to i32
  br label %124

124:                                              ; preds = %114, %110
  %125 = phi i32 [ 0, %110 ], [ %123, %114 ]
  %126 = and i64 %102, 65535
  %127 = icmp eq i64 %126, 9
  br i1 %127, label %128, label %138

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.tree_type, ptr %99, i64 0, i32 6
  %130 = load i32, ptr %129, align 4
  %131 = lshr i32 %130, 16
  %132 = and i32 %131, 255
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !61
  %136 = icmp eq i8 %135, 9
  %137 = zext i1 %136 to i32
  br label %138

138:                                              ; preds = %128, %124
  %139 = phi i32 [ 0, %124 ], [ %137, %128 ]
  %140 = icmp eq i32 %125, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.tree_type, ptr %99, i64 0, i32 6
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, 1023
  %145 = getelementptr inbounds %struct.tree_type, ptr %101, i64 0, i32 6
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, 1023
  %148 = icmp ugt i32 %144, %147
  br i1 %148, label %151, label %149

149:                                              ; preds = %141
  %150 = call ptr @strip_float_extensions(ptr noundef %97)
  br label %151

151:                                              ; preds = %138, %104, %95, %141, %92, %90, %149
  %152 = phi ptr [ %150, %149 ], [ %91, %90 ], [ %0, %92 ], [ %0, %141 ], [ %0, %95 ], [ %0, %104 ], [ %0, %138 ]
  ret ptr %152
}

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare zeroext i8 @exact_real_truncate(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

declare void @real_value_truncate(ptr dead_on_unwind writable sret(%struct.real_value) align 8, i32 noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @convert_to_real(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !49 {
  br label %3

3:                                                ; preds = %655, %653, %2
  %4 = phi ptr [ %1, %2 ], [ %654, %653 ], [ %656, %655 ]
  %5 = tail call i32 @builtin_mathfn_code(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = load i32, ptr @optimize, align 4, !tbaa !65
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %161, label %10

10:                                               ; preds = %3
  %11 = load i64, ptr %0, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 14
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 @vector_type_mode(ptr noundef %0) #13
  br label %21

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi i32 [ %15, %14 ], [ %20, %16 ]
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !50
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 14
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = tail call i32 @vector_type_mode(ptr noundef nonnull %23) #13
  br label %34

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  %36 = icmp eq i32 %22, %35
  br i1 %36, label %64, label %37

37:                                               ; preds = %34
  %38 = load i64, ptr %0, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 14
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = tail call i32 @vector_type_mode(ptr noundef %0) #13
  br label %48

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  br label %48

48:                                               ; preds = %43, %41
  %49 = phi i32 [ %42, %41 ], [ %47, %43 ]
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !50
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 14
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = tail call i32 @vector_type_mode(ptr noundef nonnull %50) #13
  br label %61

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  br label %61

61:                                               ; preds = %56, %54
  %62 = phi i32 [ %55, %54 ], [ %60, %56 ]
  %63 = icmp eq i32 %49, %62
  br i1 %63, label %64, label %161

64:                                               ; preds = %61, %34
  switch i32 %5, label %161 [
    i32 32, label %65
    i32 34, label %65
    i32 45, label %65
    i32 53, label %65
    i32 46, label %65
    i32 48, label %65
    i32 49, label %65
    i32 51, label %65
    i32 54, label %65
    i32 56, label %65
    i32 81, label %65
    i32 83, label %65
    i32 102, label %65
    i32 104, label %65
    i32 105, label %65
    i32 107, label %65
    i32 120, label %65
    i32 122, label %65
    i32 181, label %65
    i32 183, label %65
    i32 224, label %65
    i32 226, label %65
    i32 237, label %65
    i32 239, label %65
    i32 243, label %65
    i32 245, label %65
    i32 246, label %65
    i32 248, label %65
    i32 0, label %68
    i32 5, label %68
    i32 2, label %68
    i32 4, label %68
    i32 6, label %68
    i32 11, label %68
    i32 8, label %68
    i32 10, label %68
    i32 12, label %68
    i32 20, label %68
    i32 17, label %68
    i32 19, label %68
    i32 21, label %68
    i32 23, label %68
    i32 30, label %68
    i32 35, label %68
    i32 39, label %68
    i32 44, label %68
    i32 40, label %68
    i32 42, label %68
    i32 57, label %68
    i32 59, label %68
    i32 138, label %68
    i32 152, label %68
    i32 139, label %68
    i32 141, label %68
    i32 145, label %68
    i32 147, label %68
    i32 142, label %68
    i32 144, label %68
    i32 148, label %68
    i32 150, label %68
    i32 219, label %68
    i32 227, label %68
    i32 228, label %68
    i32 230, label %68
    i32 231, label %68
    i32 236, label %68
    i32 233, label %68
    i32 235, label %68
  ]

65:                                               ; preds = %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64
  %66 = load i32, ptr @flag_errno_math, align 4, !tbaa !65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %161

68:                                               ; preds = %65, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64
  %69 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !61
  %71 = tail call ptr @strip_float_extensions(ptr noundef %70)
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !61
  %74 = getelementptr inbounds %struct.tree_type, ptr %73, i64 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 1023
  %77 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 1023
  %80 = icmp ugt i32 %76, %79
  %81 = select i1 %80, ptr %73, ptr %0
  %82 = load i64, ptr %73, align 8
  %83 = trunc i64 %82 to i16
  switch i16 %83, label %157 [
    i16 9, label %90
    i16 13, label %84
    i16 14, label %84
  ]

84:                                               ; preds = %68, %68
  %85 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !61
  %87 = load i64, ptr %86, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 9
  br i1 %89, label %90, label %157

90:                                               ; preds = %84, %68
  %91 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 1023
  %94 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 1023
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %157

98:                                               ; preds = %90
  %99 = load i64, ptr %81, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 14
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #13
  br label %107

104:                                              ; preds = %98
  %105 = lshr i32 %92, 16
  %106 = and i32 %105, 255
  br label %107

107:                                              ; preds = %104, %102
  %108 = phi i32 [ %103, %102 ], [ %106, %104 ]
  %109 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !50
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 14
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = tail call i32 @vector_type_mode(ptr noundef nonnull %109) #13
  br label %120

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.tree_type, ptr %109, i64 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = lshr i32 %117, 16
  %119 = and i32 %118, 255
  br label %120

120:                                              ; preds = %115, %113
  %121 = phi i32 [ %114, %113 ], [ %119, %115 ]
  %122 = icmp eq i32 %108, %121
  br i1 %122, label %149, label %123

123:                                              ; preds = %120
  %124 = load i64, ptr %81, align 8
  %125 = and i64 %124, 65535
  %126 = icmp eq i64 %125, 14
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #13
  br label %133

129:                                              ; preds = %123
  %130 = load i32, ptr %91, align 4
  %131 = lshr i32 %130, 16
  %132 = and i32 %131, 255
  br label %133

133:                                              ; preds = %129, %127
  %134 = phi i32 [ %128, %127 ], [ %132, %129 ]
  %135 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !50
  %136 = load i64, ptr %135, align 8
  %137 = and i64 %136, 65535
  %138 = icmp eq i64 %137, 14
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = tail call i32 @vector_type_mode(ptr noundef nonnull %135) #13
  br label %146

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.tree_type, ptr %135, i64 0, i32 6
  %143 = load i32, ptr %142, align 4
  %144 = lshr i32 %143, 16
  %145 = and i32 %144, 255
  br label %146

146:                                              ; preds = %141, %139
  %147 = phi i32 [ %140, %139 ], [ %145, %141 ]
  %148 = icmp eq i32 %134, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %146, %120
  %150 = tail call ptr @mathfn_built_in(ptr noundef nonnull %81, i32 noundef %5) #13
  %151 = icmp eq ptr %150, null
  br i1 %151, label %157, label %152

152:                                              ; preds = %149
  %153 = tail call ptr @convert_to_real(ptr noundef nonnull %81, ptr noundef %71)
  %154 = tail call ptr @fold(ptr noundef %153) #13
  %155 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef nonnull %150, i32 noundef 1, ptr noundef %154) #13
  %156 = icmp ne ptr %81, %0
  br label %157

157:                                              ; preds = %146, %90, %84, %68, %149, %152
  %158 = phi i1 [ true, %149 ], [ %156, %152 ], [ true, %68 ], [ true, %84 ], [ true, %90 ], [ true, %146 ]
  %159 = phi ptr [ %4, %149 ], [ %155, %152 ], [ %4, %68 ], [ %4, %84 ], [ %4, %90 ], [ %4, %146 ]
  %160 = phi ptr [ undef, %149 ], [ %155, %152 ], [ undef, %68 ], [ undef, %84 ], [ undef, %90 ], [ undef, %146 ]
  br i1 %158, label %161, label %300

161:                                              ; preds = %65, %64, %157, %61, %3
  %162 = phi ptr [ %159, %157 ], [ %4, %61 ], [ %4, %3 ], [ %4, %64 ], [ %4, %65 ]
  %163 = phi ptr [ %160, %157 ], [ undef, %61 ], [ undef, %3 ], [ undef, %64 ], [ undef, %65 ]
  %164 = load i32, ptr @optimize, align 4, !tbaa !65
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %272, label %166

166:                                              ; preds = %161
  switch i32 %5, label %272 [
    i32 242, label %167
    i32 200, label %167
    i32 197, label %167
    i32 173, label %167
    i32 65, label %167
    i32 26, label %167
    i32 240, label %222
    i32 198, label %222
    i32 195, label %222
    i32 171, label %222
    i32 63, label %222
    i32 24, label %222
  ]

167:                                              ; preds = %166, %166, %166, %166, %166, %166
  %168 = load i64, ptr %0, align 8
  %169 = and i64 %168, 65535
  %170 = icmp eq i64 %169, 14
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = tail call i32 @vector_type_mode(ptr noundef %0) #13
  br label %178

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = lshr i32 %175, 16
  %177 = and i32 %176, 255
  br label %178

178:                                              ; preds = %173, %171
  %179 = phi i32 [ %172, %171 ], [ %177, %173 ]
  %180 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !50
  %181 = load i64, ptr %180, align 8
  %182 = and i64 %181, 65535
  %183 = icmp eq i64 %182, 14
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = tail call i32 @vector_type_mode(ptr noundef nonnull %180) #13
  br label %191

186:                                              ; preds = %178
  %187 = getelementptr inbounds %struct.tree_type, ptr %180, i64 0, i32 6
  %188 = load i32, ptr %187, align 4
  %189 = lshr i32 %188, 16
  %190 = and i32 %189, 255
  br label %191

191:                                              ; preds = %186, %184
  %192 = phi i32 [ %185, %184 ], [ %190, %186 ]
  %193 = icmp eq i32 %179, %192
  br i1 %193, label %249, label %194

194:                                              ; preds = %191
  %195 = load i64, ptr %0, align 8
  %196 = and i64 %195, 65535
  %197 = icmp eq i64 %196, 14
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = tail call i32 @vector_type_mode(ptr noundef %0) #13
  br label %205

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %202 = load i32, ptr %201, align 4
  %203 = lshr i32 %202, 16
  %204 = and i32 %203, 255
  br label %205

205:                                              ; preds = %200, %198
  %206 = phi i32 [ %199, %198 ], [ %204, %200 ]
  %207 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !50
  %208 = load i64, ptr %207, align 8
  %209 = and i64 %208, 65535
  %210 = icmp eq i64 %209, 14
  br i1 %210, label %211, label %213

211:                                              ; preds = %205
  %212 = tail call i32 @vector_type_mode(ptr noundef nonnull %207) #13
  br label %218

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct.tree_type, ptr %207, i64 0, i32 6
  %215 = load i32, ptr %214, align 4
  %216 = lshr i32 %215, 16
  %217 = and i32 %216, 255
  br label %218

218:                                              ; preds = %213, %211
  %219 = phi i32 [ %212, %211 ], [ %217, %213 ]
  %220 = icmp eq i32 %206, %219
  br i1 %220, label %249, label %221

221:                                              ; preds = %218
  switch i32 %5, label %272 [
    i32 240, label %222
    i32 198, label %222
    i32 195, label %222
    i32 171, label %222
    i32 63, label %222
    i32 24, label %222
  ]

222:                                              ; preds = %221, %221, %221, %221, %221, %166, %166, %166, %166, %166, %166, %221
  %223 = load i64, ptr %0, align 8
  %224 = and i64 %223, 65535
  %225 = icmp eq i64 %224, 14
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = tail call i32 @vector_type_mode(ptr noundef %0) #13
  br label %233

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %230 = load i32, ptr %229, align 4
  %231 = lshr i32 %230, 16
  %232 = and i32 %231, 255
  br label %233

233:                                              ; preds = %228, %226
  %234 = phi i32 [ %227, %226 ], [ %232, %228 ]
  %235 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !50
  %236 = load i64, ptr %235, align 8
  %237 = and i64 %236, 65535
  %238 = icmp eq i64 %237, 14
  br i1 %238, label %239, label %241

239:                                              ; preds = %233
  %240 = tail call i32 @vector_type_mode(ptr noundef nonnull %235) #13
  br label %246

241:                                              ; preds = %233
  %242 = getelementptr inbounds %struct.tree_type, ptr %235, i64 0, i32 6
  %243 = load i32, ptr %242, align 4
  %244 = lshr i32 %243, 16
  %245 = and i32 %244, 255
  br label %246

246:                                              ; preds = %241, %239
  %247 = phi i32 [ %240, %239 ], [ %245, %241 ]
  %248 = icmp eq i32 %234, %247
  br i1 %248, label %249, label %272

249:                                              ; preds = %246, %218, %191
  %250 = tail call ptr @mathfn_built_in(ptr noundef %0, i32 noundef %5) #13
  %251 = icmp eq ptr %250, null
  br i1 %251, label %269, label %252

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.tree_exp, ptr %162, i64 1, i32 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !61
  %255 = tail call ptr @strip_float_extensions(ptr noundef %254)
  %256 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %257 = load i32, ptr %256, align 4
  %258 = and i32 %257, 1023
  %259 = getelementptr inbounds %struct.tree_common, ptr %255, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !61
  %261 = getelementptr inbounds %struct.tree_type, ptr %260, i64 0, i32 6
  %262 = load i32, ptr %261, align 4
  %263 = and i32 %262, 1023
  %264 = icmp ult i32 %258, %263
  br i1 %264, label %269, label %265

265:                                              ; preds = %252
  %266 = tail call ptr @convert_to_real(ptr noundef %0, ptr noundef %255)
  %267 = tail call ptr @fold(ptr noundef %266) #13
  %268 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef nonnull %250, i32 noundef 1, ptr noundef %267) #13
  br label %269

269:                                              ; preds = %249, %265, %252
  %270 = phi i1 [ %264, %252 ], [ false, %265 ], [ true, %249 ]
  %271 = phi ptr [ %163, %252 ], [ %268, %265 ], [ %163, %249 ]
  br i1 %270, label %272, label %300

272:                                              ; preds = %221, %166, %269, %246, %161
  %273 = phi ptr [ %271, %269 ], [ %163, %246 ], [ %163, %161 ], [ %163, %166 ], [ %163, %221 ]
  %274 = icmp eq ptr %7, %0
  br i1 %274, label %605, label %275

275:                                              ; preds = %272
  %276 = load i64, ptr %0, align 8
  %277 = trunc i64 %276 to i16
  switch i16 %277, label %605 [
    i16 9, label %284
    i16 13, label %278
    i16 14, label %278
  ]

278:                                              ; preds = %275, %275
  %279 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !61
  %281 = load i64, ptr %280, align 8
  %282 = and i64 %281, 65535
  %283 = icmp eq i64 %282, 9
  br i1 %283, label %284, label %605

284:                                              ; preds = %278, %275
  %285 = load i64, ptr %162, align 8
  %286 = trunc i64 %285 to i16
  switch i16 %286, label %605 [
    i16 82, label %287
    i16 79, label %287
    i16 63, label %310
    i16 64, label %310
    i16 65, label %310
    i16 75, label %310
  ]

287:                                              ; preds = %284, %284
  %288 = load i32, ptr @flag_rounding_math, align 4, !tbaa !65
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %605

290:                                              ; preds = %287
  %291 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %292 = load i32, ptr %291, align 4
  %293 = and i32 %292, 1023
  %294 = getelementptr inbounds %struct.tree_common, ptr %162, i64 0, i32 2
  %295 = load ptr, ptr %294, align 8, !tbaa !61
  %296 = getelementptr inbounds %struct.tree_type, ptr %295, i64 0, i32 6
  %297 = load i32, ptr %296, align 4
  %298 = and i32 %297, 1023
  %299 = icmp ult i32 %293, %298
  br i1 %299, label %302, label %605

300:                                              ; preds = %641, %644, %646, %648, %157, %269, %601, %302
  %301 = phi ptr [ %309, %302 ], [ %652, %648 ], [ %647, %646 ], [ %645, %644 ], [ %643, %641 ], [ %160, %157 ], [ %271, %269 ], [ %604, %601 ]
  ret ptr %301

302:                                              ; preds = %290
  %303 = trunc i64 %285 to i32
  %304 = and i32 %303, 65535
  %305 = getelementptr inbounds %struct.tree_exp, ptr %162, i64 0, i32 3
  %306 = load ptr, ptr %305, align 8, !tbaa !61
  %307 = tail call ptr @convert_to_real(ptr noundef nonnull %0, ptr noundef %306)
  %308 = tail call ptr @fold(ptr noundef %307) #13
  %309 = tail call ptr @build1_stat(i32 noundef %304, ptr noundef nonnull %0, ptr noundef %308) #13
  br label %300

310:                                              ; preds = %284, %284, %284, %284
  %311 = getelementptr inbounds %struct.tree_exp, ptr %162, i64 0, i32 3
  %312 = load ptr, ptr %311, align 8, !tbaa !61
  %313 = tail call ptr @strip_float_extensions(ptr noundef %312)
  %314 = getelementptr inbounds %struct.tree_exp, ptr %162, i64 1
  %315 = load ptr, ptr %314, align 8, !tbaa !61
  %316 = tail call ptr @strip_float_extensions(ptr noundef %315)
  %317 = getelementptr inbounds %struct.tree_common, ptr %313, i64 0, i32 2
  %318 = load ptr, ptr %317, align 8, !tbaa !61
  %319 = load i64, ptr %318, align 8
  %320 = trunc i64 %319 to i16
  switch i16 %320, label %601 [
    i16 9, label %327
    i16 13, label %321
    i16 14, label %321
  ]

321:                                              ; preds = %310, %310
  %322 = getelementptr inbounds %struct.tree_common, ptr %318, i64 0, i32 2
  %323 = load ptr, ptr %322, align 8, !tbaa !61
  %324 = load i64, ptr %323, align 8
  %325 = and i64 %324, 65535
  %326 = icmp eq i64 %325, 9
  br i1 %326, label %327, label %601

327:                                              ; preds = %321, %310
  %328 = getelementptr inbounds %struct.tree_common, ptr %316, i64 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !61
  %330 = load i64, ptr %329, align 8
  %331 = trunc i64 %330 to i16
  switch i16 %331, label %601 [
    i16 9, label %338
    i16 13, label %332
    i16 14, label %332
  ]

332:                                              ; preds = %327, %327
  %333 = getelementptr inbounds %struct.tree_common, ptr %329, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !61
  %335 = load i64, ptr %334, align 8
  %336 = and i64 %335, 65535
  %337 = icmp eq i64 %336, 9
  br i1 %337, label %338, label %601

338:                                              ; preds = %332, %327
  %339 = load i64, ptr %7, align 8
  %340 = and i64 %339, 65535
  %341 = icmp eq i64 %340, 9
  br i1 %341, label %342, label %351

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %344 = load i32, ptr %343, align 4
  %345 = lshr i32 %344, 16
  %346 = and i32 %345, 255
  %347 = zext nneg i32 %346 to i64
  %348 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %347
  %349 = load i8, ptr %348, align 1, !tbaa !61
  %350 = icmp eq i8 %349, 9
  br label %351

351:                                              ; preds = %342, %338
  %352 = phi i1 [ false, %338 ], [ %350, %342 ]
  %353 = load i64, ptr %0, align 8
  %354 = and i64 %353, 65535
  %355 = icmp eq i64 %354, 9
  br i1 %355, label %356, label %365

356:                                              ; preds = %351
  %357 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %358 = load i32, ptr %357, align 4
  %359 = lshr i32 %358, 16
  %360 = and i32 %359, 255
  %361 = zext nneg i32 %360 to i64
  %362 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %361
  %363 = load i8, ptr %362, align 1, !tbaa !61
  %364 = icmp eq i8 %363, 9
  br label %365

365:                                              ; preds = %356, %351
  %366 = phi i1 [ false, %351 ], [ %364, %356 ]
  %367 = xor i1 %352, %366
  br i1 %367, label %601, label %368

368:                                              ; preds = %365
  %369 = and i64 %319, 65535
  %370 = icmp eq i64 %369, 14
  br i1 %370, label %371, label %373

371:                                              ; preds = %368
  %372 = tail call i32 @vector_type_mode(ptr noundef nonnull %318) #13
  br label %378

373:                                              ; preds = %368
  %374 = getelementptr inbounds %struct.tree_type, ptr %318, i64 0, i32 6
  %375 = load i32, ptr %374, align 4
  %376 = lshr i32 %375, 16
  %377 = and i32 %376, 255
  br label %378

378:                                              ; preds = %373, %371
  %379 = phi i32 [ %372, %371 ], [ %377, %373 ]
  %380 = icmp eq i32 %379, 42
  br i1 %380, label %410, label %381

381:                                              ; preds = %378
  %382 = load ptr, ptr %328, align 8, !tbaa !61
  %383 = load i64, ptr %382, align 8
  %384 = and i64 %383, 65535
  %385 = icmp eq i64 %384, 14
  br i1 %385, label %386, label %388

386:                                              ; preds = %381
  %387 = tail call i32 @vector_type_mode(ptr noundef nonnull %382) #13
  br label %393

388:                                              ; preds = %381
  %389 = getelementptr inbounds %struct.tree_type, ptr %382, i64 0, i32 6
  %390 = load i32, ptr %389, align 4
  %391 = lshr i32 %390, 16
  %392 = and i32 %391, 255
  br label %393

393:                                              ; preds = %388, %386
  %394 = phi i32 [ %387, %386 ], [ %392, %388 ]
  %395 = icmp eq i32 %394, 42
  br i1 %395, label %410, label %396

396:                                              ; preds = %393
  %397 = load i64, ptr %0, align 8
  %398 = and i64 %397, 65535
  %399 = icmp eq i64 %398, 14
  br i1 %399, label %400, label %402

400:                                              ; preds = %396
  %401 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #13
  br label %407

402:                                              ; preds = %396
  %403 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %404 = load i32, ptr %403, align 4
  %405 = lshr i32 %404, 16
  %406 = and i32 %405, 255
  br label %407

407:                                              ; preds = %402, %400
  %408 = phi i32 [ %401, %400 ], [ %406, %402 ]
  %409 = icmp eq i32 %408, 42
  br i1 %409, label %410, label %412

410:                                              ; preds = %407, %393, %378
  %411 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8, !tbaa !50
  br label %412

412:                                              ; preds = %410, %407
  %413 = phi ptr [ %411, %410 ], [ %0, %407 ]
  %414 = load ptr, ptr %317, align 8, !tbaa !61
  %415 = load i64, ptr %414, align 8
  %416 = and i64 %415, 65535
  %417 = icmp eq i64 %416, 14
  br i1 %417, label %418, label %420

418:                                              ; preds = %412
  %419 = tail call i32 @vector_type_mode(ptr noundef nonnull %414) #13
  br label %425

420:                                              ; preds = %412
  %421 = getelementptr inbounds %struct.tree_type, ptr %414, i64 0, i32 6
  %422 = load i32, ptr %421, align 4
  %423 = lshr i32 %422, 16
  %424 = and i32 %423, 255
  br label %425

425:                                              ; preds = %420, %418
  %426 = phi i32 [ %419, %418 ], [ %424, %420 ]
  %427 = icmp eq i32 %426, 43
  br i1 %427, label %457, label %428

428:                                              ; preds = %425
  %429 = load ptr, ptr %328, align 8, !tbaa !61
  %430 = load i64, ptr %429, align 8
  %431 = and i64 %430, 65535
  %432 = icmp eq i64 %431, 14
  br i1 %432, label %433, label %435

433:                                              ; preds = %428
  %434 = tail call i32 @vector_type_mode(ptr noundef nonnull %429) #13
  br label %440

435:                                              ; preds = %428
  %436 = getelementptr inbounds %struct.tree_type, ptr %429, i64 0, i32 6
  %437 = load i32, ptr %436, align 4
  %438 = lshr i32 %437, 16
  %439 = and i32 %438, 255
  br label %440

440:                                              ; preds = %435, %433
  %441 = phi i32 [ %434, %433 ], [ %439, %435 ]
  %442 = icmp eq i32 %441, 43
  br i1 %442, label %457, label %443

443:                                              ; preds = %440
  %444 = load i64, ptr %0, align 8
  %445 = and i64 %444, 65535
  %446 = icmp eq i64 %445, 14
  br i1 %446, label %447, label %449

447:                                              ; preds = %443
  %448 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #13
  br label %454

449:                                              ; preds = %443
  %450 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %451 = load i32, ptr %450, align 4
  %452 = lshr i32 %451, 16
  %453 = and i32 %452, 255
  br label %454

454:                                              ; preds = %449, %447
  %455 = phi i32 [ %448, %447 ], [ %453, %449 ]
  %456 = icmp eq i32 %455, 43
  br i1 %456, label %457, label %459

457:                                              ; preds = %454, %440, %425
  %458 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16, !tbaa !50
  br label %459

459:                                              ; preds = %457, %454
  %460 = phi ptr [ %458, %457 ], [ %413, %454 ]
  %461 = load ptr, ptr %317, align 8, !tbaa !61
  %462 = load i64, ptr %461, align 8
  %463 = and i64 %462, 65535
  %464 = icmp eq i64 %463, 14
  br i1 %464, label %465, label %467

465:                                              ; preds = %459
  %466 = tail call i32 @vector_type_mode(ptr noundef nonnull %461) #13
  br label %472

467:                                              ; preds = %459
  %468 = getelementptr inbounds %struct.tree_type, ptr %461, i64 0, i32 6
  %469 = load i32, ptr %468, align 4
  %470 = lshr i32 %469, 16
  %471 = and i32 %470, 255
  br label %472

472:                                              ; preds = %467, %465
  %473 = phi i32 [ %466, %465 ], [ %471, %467 ]
  %474 = icmp eq i32 %473, 44
  br i1 %474, label %504, label %475

475:                                              ; preds = %472
  %476 = load ptr, ptr %328, align 8, !tbaa !61
  %477 = load i64, ptr %476, align 8
  %478 = and i64 %477, 65535
  %479 = icmp eq i64 %478, 14
  br i1 %479, label %480, label %482

480:                                              ; preds = %475
  %481 = tail call i32 @vector_type_mode(ptr noundef nonnull %476) #13
  br label %487

482:                                              ; preds = %475
  %483 = getelementptr inbounds %struct.tree_type, ptr %476, i64 0, i32 6
  %484 = load i32, ptr %483, align 4
  %485 = lshr i32 %484, 16
  %486 = and i32 %485, 255
  br label %487

487:                                              ; preds = %482, %480
  %488 = phi i32 [ %481, %480 ], [ %486, %482 ]
  %489 = icmp eq i32 %488, 44
  br i1 %489, label %504, label %490

490:                                              ; preds = %487
  %491 = load i64, ptr %0, align 8
  %492 = and i64 %491, 65535
  %493 = icmp eq i64 %492, 14
  br i1 %493, label %494, label %496

494:                                              ; preds = %490
  %495 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #13
  br label %501

496:                                              ; preds = %490
  %497 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %498 = load i32, ptr %497, align 4
  %499 = lshr i32 %498, 16
  %500 = and i32 %499, 255
  br label %501

501:                                              ; preds = %496, %494
  %502 = phi i32 [ %495, %494 ], [ %500, %496 ]
  %503 = icmp eq i32 %502, 44
  br i1 %503, label %504, label %506

504:                                              ; preds = %501, %487, %472
  %505 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8, !tbaa !50
  br label %506

506:                                              ; preds = %504, %501
  %507 = phi ptr [ %505, %504 ], [ %460, %501 ]
  %508 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8, !tbaa !50
  %509 = icmp eq ptr %507, %508
  %510 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16
  %511 = icmp eq ptr %507, %510
  %512 = select i1 %509, i1 true, i1 %511
  %513 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8
  %514 = icmp eq ptr %507, %513
  %515 = select i1 %512, i1 true, i1 %514
  br i1 %515, label %516, label %528

516:                                              ; preds = %506
  %517 = load i64, ptr %162, align 8
  %518 = trunc i64 %517 to i32
  %519 = and i32 %518, 65535
  %520 = tail call ptr @convert_to_real(ptr noundef %507, ptr noundef %313)
  %521 = tail call ptr @fold(ptr noundef %520) #13
  %522 = tail call ptr @convert_to_real(ptr noundef %507, ptr noundef %316)
  %523 = tail call ptr @fold(ptr noundef %522) #13
  %524 = tail call ptr @build2_stat(i32 noundef %519, ptr noundef %507, ptr noundef %521, ptr noundef %523) #13
  %525 = icmp eq ptr %507, %0
  %526 = select i1 %525, i32 1, i32 3
  %527 = select i1 %525, ptr %524, ptr %273
  br label %601

528:                                              ; preds = %506
  %529 = load ptr, ptr %317, align 8, !tbaa !61
  %530 = getelementptr inbounds %struct.tree_type, ptr %529, i64 0, i32 6
  %531 = load i32, ptr %530, align 4
  %532 = and i32 %531, 1023
  %533 = getelementptr inbounds %struct.tree_type, ptr %507, i64 0, i32 6
  %534 = load i32, ptr %533, align 4
  %535 = and i32 %534, 1023
  %536 = icmp ugt i32 %532, %535
  %537 = select i1 %536, ptr %529, ptr %507
  %538 = load ptr, ptr %328, align 8, !tbaa !61
  %539 = getelementptr inbounds %struct.tree_type, ptr %538, i64 0, i32 6
  %540 = load i32, ptr %539, align 4
  %541 = and i32 %540, 1023
  %542 = getelementptr inbounds %struct.tree_type, ptr %537, i64 0, i32 6
  %543 = load i32, ptr %542, align 4
  %544 = and i32 %543, 1023
  %545 = icmp ugt i32 %541, %544
  %546 = select i1 %545, ptr %538, ptr %537
  %547 = getelementptr inbounds %struct.tree_type, ptr %546, i64 0, i32 6
  %548 = load i32, ptr %547, align 4
  %549 = and i32 %548, 1023
  %550 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %551 = load i32, ptr %550, align 4
  %552 = and i32 %551, 1023
  %553 = icmp ult i32 %549, %552
  br i1 %553, label %554, label %601

554:                                              ; preds = %528
  %555 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !65
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %589

557:                                              ; preds = %554
  %558 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %559 = load i32, ptr %558, align 4
  %560 = and i32 %559, 1023
  %561 = icmp eq i32 %549, %560
  br i1 %561, label %562, label %601

562:                                              ; preds = %557
  %563 = load i64, ptr %7, align 8
  %564 = and i64 %563, 65535
  %565 = icmp eq i64 %564, 14
  br i1 %565, label %566, label %568

566:                                              ; preds = %562
  %567 = tail call i32 @vector_type_mode(ptr noundef nonnull %7) #13
  br label %571

568:                                              ; preds = %562
  %569 = lshr i32 %551, 16
  %570 = and i32 %569, 255
  br label %571

571:                                              ; preds = %568, %566
  %572 = phi i32 [ %567, %566 ], [ %570, %568 ]
  %573 = load i64, ptr %0, align 8
  %574 = and i64 %573, 65535
  %575 = icmp eq i64 %574, 14
  br i1 %575, label %576, label %578

576:                                              ; preds = %571
  %577 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #13
  br label %582

578:                                              ; preds = %571
  %579 = load i32, ptr %558, align 4
  %580 = lshr i32 %579, 16
  %581 = and i32 %580, 255
  br label %582

582:                                              ; preds = %578, %576
  %583 = phi i32 [ %577, %576 ], [ %581, %578 ]
  %584 = tail call zeroext i8 @real_can_shorten_arithmetic(i32 noundef %572, i32 noundef %583) #13
  %585 = icmp eq i8 %584, 0
  br i1 %585, label %601, label %586

586:                                              ; preds = %582
  %587 = tail call ptr @excess_precision_type(ptr noundef %546) #13
  %588 = icmp eq ptr %587, null
  br i1 %588, label %589, label %601

589:                                              ; preds = %586, %554
  %590 = load i64, ptr %162, align 8
  %591 = trunc i64 %590 to i32
  %592 = and i32 %591, 65535
  %593 = tail call ptr @convert_to_real(ptr noundef %546, ptr noundef %313)
  %594 = tail call ptr @fold(ptr noundef %593) #13
  %595 = tail call ptr @convert_to_real(ptr noundef %546, ptr noundef %316)
  %596 = tail call ptr @fold(ptr noundef %595) #13
  %597 = tail call ptr @build2_stat(i32 noundef %592, ptr noundef %546, ptr noundef %594, ptr noundef %596) #13
  %598 = icmp eq ptr %546, %0
  %599 = zext i1 %598 to i32
  %600 = select i1 %598, ptr %597, ptr %273
  br label %601

601:                                              ; preds = %589, %516, %586, %582, %557, %528, %365, %332, %327, %321, %310
  %602 = phi i32 [ 0, %310 ], [ 0, %321 ], [ 0, %327 ], [ 0, %332 ], [ 0, %365 ], [ %526, %516 ], [ 0, %586 ], [ 0, %582 ], [ 0, %557 ], [ 0, %528 ], [ %599, %589 ]
  %603 = phi ptr [ %162, %310 ], [ %162, %321 ], [ %162, %327 ], [ %162, %332 ], [ %162, %365 ], [ %524, %516 ], [ %162, %586 ], [ %162, %582 ], [ %162, %557 ], [ %162, %528 ], [ %597, %589 ]
  %604 = phi ptr [ %273, %310 ], [ %273, %321 ], [ %273, %327 ], [ %273, %332 ], [ %273, %365 ], [ %527, %516 ], [ %273, %586 ], [ %273, %582 ], [ %273, %557 ], [ %273, %528 ], [ %600, %589 ]
  switch i32 %602, label %300 [
    i32 0, label %605
    i32 3, label %605
  ]

605:                                              ; preds = %601, %287, %284, %278, %275, %601, %290, %272
  %606 = phi ptr [ %603, %601 ], [ %162, %290 ], [ %162, %272 ], [ %162, %275 ], [ %162, %278 ], [ %162, %284 ], [ %162, %287 ], [ %603, %601 ]
  %607 = getelementptr inbounds %struct.tree_common, ptr %606, i64 0, i32 2
  %608 = load ptr, ptr %607, align 8, !tbaa !61
  %609 = load i64, ptr %608, align 8
  %610 = trunc i64 %609 to i16
  switch i16 %610, label %655 [
    i16 9, label %611
    i16 8, label %644
    i16 6, label %644
    i16 7, label %644
    i16 11, label %646
    i16 13, label %648
    i16 10, label %653
    i16 12, label %653
  ]

611:                                              ; preds = %605
  %612 = load i32, ptr @flag_float_store, align 4, !tbaa !65
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %641

614:                                              ; preds = %611
  %615 = load i64, ptr %0, align 8
  %616 = and i64 %615, 65535
  %617 = icmp eq i64 %616, 9
  br i1 %617, label %618, label %627

618:                                              ; preds = %614
  %619 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %620 = load i32, ptr %619, align 4
  %621 = lshr i32 %620, 16
  %622 = and i32 %621, 255
  %623 = zext nneg i32 %622 to i64
  %624 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %623
  %625 = load i8, ptr %624, align 1, !tbaa !61
  %626 = icmp eq i8 %625, 9
  br i1 %626, label %641, label %627

627:                                              ; preds = %618, %614
  %628 = load i64, ptr %7, align 8
  %629 = and i64 %628, 65535
  %630 = icmp eq i64 %629, 9
  br i1 %630, label %631, label %641

631:                                              ; preds = %627
  %632 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %633 = load i32, ptr %632, align 4
  %634 = lshr i32 %633, 16
  %635 = and i32 %634, 255
  %636 = zext nneg i32 %635 to i64
  %637 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %636
  %638 = load i8, ptr %637, align 1, !tbaa !61
  %639 = icmp eq i8 %638, 9
  %640 = select i1 %639, i32 113, i32 116
  br label %641

641:                                              ; preds = %627, %631, %618, %611
  %642 = phi i32 [ 113, %618 ], [ 113, %611 ], [ 116, %627 ], [ %640, %631 ]
  %643 = tail call ptr @build1_stat(i32 noundef %642, ptr noundef %0, ptr noundef %606) #13
  br label %300

644:                                              ; preds = %605, %605, %605
  %645 = tail call ptr @build1_stat(i32 noundef 78, ptr noundef %0, ptr noundef %606) #13
  br label %300

646:                                              ; preds = %605
  %647 = tail call ptr @build1_stat(i32 noundef 115, ptr noundef %0, ptr noundef %606) #13
  br label %300

648:                                              ; preds = %605
  %649 = getelementptr inbounds %struct.tree_common, ptr %608, i64 0, i32 2
  %650 = load ptr, ptr %649, align 8, !tbaa !61
  %651 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 43, ptr noundef %650, ptr noundef %606) #13
  %652 = tail call ptr @convert(ptr noundef %0, ptr noundef %651) #13
  br label %300

653:                                              ; preds = %605, %605
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.1) #13
  %654 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !50
  br label %3

655:                                              ; preds = %605
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2) #13
  %656 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !50
  br label %3
}

declare i32 @builtin_mathfn_code(ptr noundef) local_unnamed_addr #3

declare ptr @mathfn_built_in(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fold(ptr noundef) local_unnamed_addr #3

declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_can_shorten_arithmetic(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @excess_precision_type(ptr noundef) local_unnamed_addr #3

declare ptr @convert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @convert_to_integer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !89 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1023
  %11 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1023
  %14 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !90

17:                                               ; preds = %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3) #13
  %18 = load ptr, ptr @global_trees, align 16, !tbaa !50
  br label %591

19:                                               ; preds = %2
  %20 = load i32, ptr @optimize, align 4, !tbaa !65
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %156, label %22, !prof !90

22:                                               ; preds = %19
  %23 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !65
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33, !prof !91

25:                                               ; preds = %22
  %26 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !50
  %27 = icmp eq ptr %26, null
  br i1 %27, label %156, label %28, !prof !90

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tree_type, ptr %26, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1023
  %32 = icmp ult i32 %13, %31
  br i1 %32, label %156, label %33, !prof !92

33:                                               ; preds = %28, %22
  %34 = tail call ptr @strip_float_extensions(ptr noundef %1)
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !61
  %37 = tail call i32 @builtin_mathfn_code(ptr noundef %34) #13
  switch i32 %37, label %143 [
    i32 24, label %38
    i32 25, label %38
    i32 26, label %38
    i32 63, label %64
    i32 64, label %64
    i32 65, label %64
    i32 198, label %90
    i32 199, label %90
    i32 200, label %90
    i32 171, label %112
    i32 172, label %112
    i32 173, label %112
    i32 195, label %115
    i32 196, label %115
    i32 197, label %115
    i32 240, label %137
    i32 241, label %137
    i32 242, label %137
  ], !prof !93

38:                                               ; preds = %33, %33, %33
  %39 = load i32, ptr @linux_uclibc, align 4, !tbaa !65
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %143

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !50
  %44 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1023
  %47 = icmp ult i32 %13, %46
  br i1 %47, label %140, label %48

48:                                               ; preds = %42
  %49 = icmp eq i32 %13, %46
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = load i64, ptr %0, align 8
  %52 = and i64 %51, 2097152
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %140, label %54

54:                                               ; preds = %50, %48
  %55 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !50
  %56 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 1023
  %59 = icmp eq i32 %13, %58
  br i1 %59, label %60, label %143

60:                                               ; preds = %54
  %61 = load i64, ptr %0, align 8
  %62 = and i64 %61, 2097152
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %140, label %143

64:                                               ; preds = %33, %33, %33
  %65 = load i32, ptr @linux_uclibc, align 4, !tbaa !65
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %143

68:                                               ; preds = %64
  %69 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !50
  %70 = getelementptr inbounds %struct.tree_type, ptr %69, i64 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 1023
  %73 = icmp ult i32 %13, %72
  br i1 %73, label %140, label %74

74:                                               ; preds = %68
  %75 = icmp eq i32 %13, %72
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  %77 = load i64, ptr %0, align 8
  %78 = and i64 %77, 2097152
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %140, label %80

80:                                               ; preds = %76, %74
  %81 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !50
  %82 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 1023
  %85 = icmp eq i32 %13, %84
  br i1 %85, label %86, label %143

86:                                               ; preds = %80
  %87 = load i64, ptr %0, align 8
  %88 = and i64 %87, 2097152
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %140, label %143

90:                                               ; preds = %33, %33, %33
  %91 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !50
  %92 = getelementptr inbounds %struct.tree_type, ptr %91, i64 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 1023
  %95 = icmp ult i32 %13, %94
  br i1 %95, label %140, label %96

96:                                               ; preds = %90
  %97 = icmp eq i32 %13, %94
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = load i64, ptr %0, align 8
  %100 = and i64 %99, 2097152
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %140, label %102

102:                                              ; preds = %98, %96
  %103 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !50
  %104 = getelementptr inbounds %struct.tree_type, ptr %103, i64 0, i32 6
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, 1023
  %107 = icmp eq i32 %13, %106
  br i1 %107, label %108, label %143

108:                                              ; preds = %102
  %109 = load i64, ptr %0, align 8
  %110 = and i64 %109, 2097152
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %140, label %143

112:                                              ; preds = %33, %33, %33
  %113 = load i32, ptr @flag_trapping_math, align 4, !tbaa !65
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %112, %33, %33, %33
  %116 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !50
  %117 = getelementptr inbounds %struct.tree_type, ptr %116, i64 0, i32 6
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 1023
  %120 = icmp ult i32 %13, %119
  br i1 %120, label %140, label %121

121:                                              ; preds = %115
  %122 = icmp eq i32 %13, %119
  br i1 %122, label %123, label %127

123:                                              ; preds = %121
  %124 = load i64, ptr %0, align 8
  %125 = and i64 %124, 2097152
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %123, %121
  %128 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !50
  %129 = getelementptr inbounds %struct.tree_type, ptr %128, i64 0, i32 6
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, 1023
  %132 = icmp eq i32 %13, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %127
  %134 = load i64, ptr %0, align 8
  %135 = and i64 %134, 2097152
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %140, label %143

137:                                              ; preds = %33, %33, %33
  %138 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 1, i32 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !61
  br label %150

140:                                              ; preds = %133, %115, %123, %108, %90, %98, %86, %68, %76, %60, %42, %50
  %141 = phi i32 [ 111, %50 ], [ 111, %42 ], [ 126, %60 ], [ 117, %76 ], [ 117, %68 ], [ 129, %86 ], [ 156, %98 ], [ 156, %90 ], [ 135, %108 ], [ 153, %123 ], [ 153, %115 ], [ 132, %133 ]
  %142 = tail call ptr @mathfn_built_in(ptr noundef %36, i32 noundef %141) #13
  br label %143

143:                                              ; preds = %140, %112, %64, %38, %33, %133, %127, %108, %102, %86, %80, %60, %54
  %144 = phi ptr [ null, %133 ], [ null, %127 ], [ null, %108 ], [ null, %102 ], [ null, %86 ], [ null, %80 ], [ null, %60 ], [ null, %54 ], [ null, %33 ], [ null, %38 ], [ null, %64 ], [ null, %112 ], [ %142, %140 ]
  %145 = icmp eq ptr %144, null
  br i1 %145, label %153, label %146, !prof !94

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 1, i32 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !61
  %149 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef nonnull %144, i32 noundef 1, ptr noundef %148) #13
  br label %150

150:                                              ; preds = %137, %146
  %151 = phi ptr [ %149, %146 ], [ %139, %137 ]
  %152 = tail call ptr @convert_to_integer(ptr noundef %0, ptr noundef %151)
  br label %153

153:                                              ; preds = %150, %143
  %154 = phi i1 [ true, %143 ], [ false, %150 ]
  %155 = phi ptr [ undef, %143 ], [ %152, %150 ]
  br i1 %154, label %156, label %591, !prof !94

156:                                              ; preds = %153, %28, %25, %19
  %157 = phi ptr [ %155, %153 ], [ undef, %28 ], [ undef, %25 ], [ undef, %19 ]
  %158 = load i32, ptr @optimize, align 4, !tbaa !65
  %159 = icmp ne i32 %158, 0
  %160 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %161 = icmp ne i32 %160, 0
  %162 = select i1 %159, i1 %161, i1 false, !prof !91
  %163 = load i32, ptr @flag_trapping_math, align 4
  %164 = icmp eq i32 %163, 0
  %165 = select i1 %162, i1 %164, i1 false, !prof !90
  %166 = load i32, ptr @flag_errno_math, align 4
  %167 = icmp eq i32 %166, 0
  %168 = select i1 %165, i1 %167, i1 false, !prof !90
  %169 = load i32, ptr @flag_finite_math_only, align 4
  %170 = icmp ne i32 %169, 0
  %171 = select i1 %168, i1 %170, i1 false, !prof !90
  %172 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8
  %173 = icmp ne ptr %172, null
  %174 = select i1 %171, i1 %173, i1 false, !prof !90
  br i1 %174, label %175, label %205, !prof !90

175:                                              ; preds = %156
  %176 = getelementptr inbounds %struct.tree_type, ptr %172, i64 0, i32 6
  %177 = load i32, ptr %176, align 4
  %178 = and i32 %177, 1023
  %179 = icmp ugt i32 %13, %178
  br i1 %179, label %186, label %180

180:                                              ; preds = %175
  %181 = icmp eq i32 %13, %178
  br i1 %181, label %182, label %205

182:                                              ; preds = %180
  %183 = load i64, ptr %0, align 8
  %184 = and i64 %183, 2097152
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %205

186:                                              ; preds = %182, %175
  %187 = tail call ptr @strip_float_extensions(ptr noundef %1)
  %188 = getelementptr inbounds %struct.tree_common, ptr %187, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !61
  %190 = tail call i32 @builtin_mathfn_code(ptr noundef %187) #13
  %191 = add i32 %190, -148
  %192 = icmp ult i32 %191, 3
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = tail call ptr @mathfn_built_in(ptr noundef %189, i32 noundef 93) #13
  br label %195

195:                                              ; preds = %186, %193
  %196 = phi ptr [ null, %186 ], [ %194, %193 ]
  %197 = icmp eq ptr %196, null
  br i1 %197, label %203, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.tree_exp, ptr %187, i64 1, i32 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !61
  %201 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef nonnull %196, i32 noundef 1, ptr noundef %200) #13
  %202 = tail call ptr @convert_to_integer(ptr noundef %0, ptr noundef %201)
  br label %203

203:                                              ; preds = %195, %198
  %204 = phi ptr [ %202, %198 ], [ %157, %195 ]
  br i1 %197, label %205, label %591

205:                                              ; preds = %203, %182, %180, %156
  %206 = phi ptr [ %157, %180 ], [ %157, %156 ], [ %157, %182 ], [ %204, %203 ]
  %207 = load i64, ptr %7, align 8
  %208 = trunc i64 %207 to i16
  switch i16 %208, label %588 [
    i16 10, label %209
    i16 12, label %209
    i16 8, label %221
    i16 6, label %221
    i16 7, label %221
    i16 5, label %221
    i16 9, label %567
    i16 11, label %569
    i16 13, label %571
    i16 14, label %577
  ], !prof !95

209:                                              ; preds = %205, %205
  %210 = tail call i32 @integer_zerop(ptr noundef %1) #13
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #13
  br label %591

214:                                              ; preds = %209
  %215 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !76
  %216 = load i32, ptr %8, align 4
  %217 = and i32 %216, 1023
  %218 = tail call ptr %215(i32 noundef %217, i32 noundef 0) #13
  %219 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 113, ptr noundef %218, ptr noundef %1) #13
  %220 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %219) #13
  br label %591

221:                                              ; preds = %205, %205, %205, %205
  %222 = and i64 %3, 65535
  %223 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !65
  %225 = icmp eq i32 %224, 5
  br i1 %225, label %226, label %229, !prof !96

226:                                              ; preds = %221
  %227 = tail call ptr @copy_node_stat(ptr noundef %1) #13
  %228 = getelementptr inbounds %struct.tree_common, ptr %227, i64 0, i32 2
  store ptr %0, ptr %228, align 8, !tbaa !61
  br label %591

229:                                              ; preds = %221
  %230 = icmp ult i32 %13, %10
  %231 = load i64, ptr %0, align 8
  br i1 %230, label %266, label %232, !prof !97

232:                                              ; preds = %229
  %233 = load ptr, ptr %6, align 8, !tbaa !61
  %234 = load i64, ptr %233, align 8
  %235 = xor i64 %234, %231
  %236 = and i64 %235, 2097152
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %257, label %238, !prof !98

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.tree_type, ptr %233, i64 0, i32 6
  %240 = load i32, ptr %239, align 4
  %241 = and i32 %240, 1023
  %242 = and i64 %234, 65535
  %243 = icmp eq i64 %242, 14
  br i1 %243, label %244, label %246, !prof !99

244:                                              ; preds = %238
  %245 = tail call i32 @vector_type_mode(ptr noundef nonnull %233) #13
  br label %249

246:                                              ; preds = %238
  %247 = lshr i32 %240, 16
  %248 = and i32 %247, 255
  br label %249

249:                                              ; preds = %246, %244
  %250 = phi i32 [ %245, %244 ], [ %248, %246 ]
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %251
  %253 = load i8, ptr %252, align 1, !tbaa !61
  %254 = zext i8 %253 to i32
  %255 = shl nuw nsw i32 %254, 3
  %256 = icmp eq i32 %241, %255
  br i1 %256, label %257, label %258, !prof !100

257:                                              ; preds = %249, %232
  br label %258

258:                                              ; preds = %249, %257
  %259 = phi i32 [ 116, %257 ], [ 113, %249 ]
  %260 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef %259, ptr noundef nonnull %0, ptr noundef %1) #13
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %591, !prof !101

262:                                              ; preds = %258
  %263 = tail call ptr @build1_stat(i32 noundef %259, ptr noundef nonnull %0, ptr noundef %1) #13
  %264 = load i64, ptr %263, align 8
  %265 = or i64 %264, 8388608
  store i64 %265, ptr %263, align 8
  br label %591

266:                                              ; preds = %229
  %267 = trunc i64 %231 to i16
  switch i16 %267, label %270 [
    i16 6, label %282
    i16 14, label %268
  ], !prof !102

268:                                              ; preds = %266
  %269 = tail call i32 @vector_type_mode(ptr noundef %0) #13
  br label %274

270:                                              ; preds = %266
  %271 = load i32, ptr %11, align 4
  %272 = lshr i32 %271, 16
  %273 = and i32 %272, 255
  br label %274

274:                                              ; preds = %270, %268
  %275 = phi i32 [ %269, %268 ], [ %273, %270 ]
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !61
  %279 = zext i8 %278 to i32
  %280 = shl nuw nsw i32 %279, 3
  %281 = icmp eq i32 %13, %280
  br i1 %281, label %302, label %282, !prof !103

282:                                              ; preds = %266, %274
  %283 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !104
  %284 = load i64, ptr %0, align 8
  %285 = and i64 %284, 65535
  %286 = icmp eq i64 %285, 14
  br i1 %286, label %287, label %289

287:                                              ; preds = %282
  %288 = tail call i32 @vector_type_mode(ptr noundef %0) #13
  br label %293

289:                                              ; preds = %282
  %290 = load i32, ptr %11, align 4
  %291 = lshr i32 %290, 16
  %292 = and i32 %291, 255
  br label %293

293:                                              ; preds = %289, %287
  %294 = phi i32 [ %288, %287 ], [ %292, %289 ]
  %295 = load i64, ptr %0, align 8
  %296 = trunc i64 %295 to i32
  %297 = lshr i32 %296, 21
  %298 = and i32 %297, 1
  %299 = tail call ptr %283(i32 noundef %294, i32 noundef %298) #13
  %300 = tail call ptr @convert(ptr noundef %299, ptr noundef %1) #13
  %301 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %0, ptr noundef %300) #13
  br label %591

302:                                              ; preds = %274
  %303 = trunc i64 %3 to i16
  switch i16 %303, label %565 [
    i16 84, label %304
    i16 83, label %313
    i16 67, label %342
    i16 81, label %388
    i16 80, label %388
    i16 65, label %388
    i16 63, label %414
    i16 64, label %414
    i16 89, label %414
    i16 87, label %414
    i16 88, label %414
    i16 79, label %491
    i16 90, label %491
    i16 116, label %507
    i16 56, label %539
  ], !prof !105

304:                                              ; preds = %302
  %305 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %306 = load ptr, ptr %305, align 8, !tbaa !61
  %307 = load i64, ptr %306, align 8
  %308 = and i64 %307, 65535
  %309 = icmp eq i64 %308, 23
  br i1 %309, label %310, label %565, !prof !106

310:                                              ; preds = %304
  %311 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %306) #13
  %312 = icmp slt i32 %311, 1
  br i1 %312, label %414, label %565, !prof !107

313:                                              ; preds = %302
  %314 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %315 = load ptr, ptr %314, align 8, !tbaa !61
  %316 = load i64, ptr %315, align 8
  %317 = and i64 %316, 65535
  %318 = icmp eq i64 %317, 23
  br i1 %318, label %319, label %565

319:                                              ; preds = %313
  %320 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %315) #13
  %321 = icmp sgt i32 %320, -1
  br i1 %321, label %322, label %565

322:                                              ; preds = %319
  %323 = load i64, ptr %0, align 8
  %324 = and i64 %323, 2097152
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %565, label %326

326:                                              ; preds = %322
  %327 = load ptr, ptr %14, align 8, !tbaa !61
  %328 = load i64, ptr %327, align 8
  %329 = and i64 %328, 65535
  %330 = icmp eq i64 %329, 23
  br i1 %330, label %331, label %565

331:                                              ; preds = %326
  %332 = load ptr, ptr %314, align 8, !tbaa !61
  %333 = tail call i32 @tree_int_cst_lt(ptr noundef %332, ptr noundef nonnull %327) #13
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %414

335:                                              ; preds = %331
  %336 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #13
  %337 = load i64, ptr %1, align 8
  %338 = and i64 %337, 65536
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %591, label %340

340:                                              ; preds = %335
  %341 = tail call ptr @build2_stat(i32 noundef 52, ptr noundef %0, ptr noundef nonnull %1, ptr noundef %336) #13
  br label %591

342:                                              ; preds = %302
  %343 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %344 = load ptr, ptr %343, align 8, !tbaa !61
  %345 = tail call ptr @get_unwidened(ptr noundef %344, ptr noundef %0) #13
  %346 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %347 = load ptr, ptr %346, align 8, !tbaa !61
  %348 = tail call ptr @get_unwidened(ptr noundef %347, ptr noundef %0) #13
  %349 = getelementptr inbounds %struct.tree_common, ptr %345, i64 0, i32 2
  %350 = load ptr, ptr %349, align 8, !tbaa !61
  %351 = getelementptr inbounds %struct.tree_type, ptr %350, i64 0, i32 6
  %352 = load i32, ptr %351, align 4
  %353 = and i32 %352, 1023
  %354 = icmp ult i32 %13, %353
  br i1 %354, label %565, label %355, !prof !108

355:                                              ; preds = %342
  %356 = getelementptr inbounds %struct.tree_common, ptr %348, i64 0, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !61
  %358 = getelementptr inbounds %struct.tree_type, ptr %357, i64 0, i32 6
  %359 = load i32, ptr %358, align 4
  %360 = and i32 %359, 1023
  %361 = icmp ult i32 %13, %360
  br i1 %361, label %565, label %362

362:                                              ; preds = %355
  %363 = load i64, ptr %350, align 8
  %364 = trunc i64 %363 to i32
  %365 = lshr i32 %364, 21
  %366 = and i32 %365, 1
  %367 = load i64, ptr %357, align 8
  %368 = trunc i64 %367 to i32
  %369 = lshr i32 %368, 21
  %370 = and i32 %369, 1
  %371 = icmp eq i32 %366, %370
  br i1 %371, label %372, label %565

372:                                              ; preds = %362
  %373 = load ptr, ptr %6, align 8, !tbaa !61
  %374 = load i64, ptr %373, align 8
  %375 = trunc i64 %374 to i32
  %376 = lshr i32 %375, 21
  %377 = and i32 %376, 1
  %378 = icmp eq i32 %377, %366
  br i1 %378, label %379, label %565

379:                                              ; preds = %372
  %380 = icmp eq i32 %366, 0
  br i1 %380, label %381, label %414

381:                                              ; preds = %379
  %382 = load i64, ptr %348, align 8
  %383 = and i64 %382, 65535
  %384 = icmp eq i64 %383, 23
  br i1 %384, label %385, label %565

385:                                              ; preds = %381
  %386 = tail call i32 @integer_all_onesp(ptr noundef nonnull %348) #13
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %414, label %565

388:                                              ; preds = %302, %302, %302
  %389 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %390 = load ptr, ptr %389, align 8, !tbaa !61
  %391 = tail call ptr @get_unwidened(ptr noundef %390, ptr noundef %0) #13
  %392 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %393 = load ptr, ptr %392, align 8, !tbaa !61
  %394 = tail call ptr @get_unwidened(ptr noundef %393, ptr noundef %0) #13
  %395 = getelementptr inbounds %struct.tree_common, ptr %391, i64 0, i32 2
  %396 = load ptr, ptr %395, align 8, !tbaa !61
  %397 = getelementptr inbounds %struct.tree_type, ptr %396, i64 0, i32 6
  %398 = load i32, ptr %397, align 4
  %399 = and i32 %398, 1023
  %400 = icmp ult i32 %13, %399
  br i1 %400, label %565, label %401

401:                                              ; preds = %388
  %402 = getelementptr inbounds %struct.tree_common, ptr %394, i64 0, i32 2
  %403 = load ptr, ptr %402, align 8, !tbaa !61
  %404 = getelementptr inbounds %struct.tree_type, ptr %403, i64 0, i32 6
  %405 = load i32, ptr %404, align 4
  %406 = and i32 %405, 1023
  %407 = icmp ult i32 %13, %406
  br i1 %407, label %565, label %408

408:                                              ; preds = %401
  %409 = load i64, ptr %396, align 8
  %410 = load i64, ptr %403, align 8
  %411 = xor i64 %410, %409
  %412 = and i64 %411, 2097152
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %414, label %565

414:                                              ; preds = %408, %379, %385, %310, %302, %302, %302, %302, %302, %331
  %415 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %416 = load ptr, ptr %415, align 8, !tbaa !61
  %417 = tail call ptr @get_unwidened(ptr noundef %416, ptr noundef %0) #13
  %418 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %419 = load ptr, ptr %418, align 8, !tbaa !61
  %420 = tail call ptr @get_unwidened(ptr noundef %419, ptr noundef %0) #13
  %421 = load i64, ptr %0, align 8
  %422 = and i64 %421, 65535
  %423 = icmp eq i64 %422, 6
  br i1 %423, label %424, label %432, !prof !109

424:                                              ; preds = %414
  %425 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !76
  %426 = load i32, ptr %11, align 4
  %427 = and i32 %426, 1023
  %428 = trunc i64 %421 to i32
  %429 = lshr i32 %428, 21
  %430 = and i32 %429, 1
  %431 = tail call ptr %425(i32 noundef %427, i32 noundef %430) #13
  br label %432

432:                                              ; preds = %424, %414
  %433 = phi ptr [ %431, %424 ], [ %0, %414 ]
  %434 = getelementptr inbounds %struct.tree_type, ptr %433, i64 0, i32 6
  %435 = load i32, ptr %434, align 4
  %436 = and i32 %435, 1023
  %437 = icmp eq i32 %436, %10
  br i1 %437, label %489, label %438, !prof !109

438:                                              ; preds = %432
  %439 = load ptr, ptr %6, align 8, !tbaa !61
  %440 = load i64, ptr %439, align 8
  %441 = and i64 %440, 2097152
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %443, label %479, !prof !109

443:                                              ; preds = %438
  %444 = getelementptr inbounds %struct.tree_common, ptr %417, i64 0, i32 2
  %445 = load ptr, ptr %444, align 8, !tbaa !61
  %446 = load i64, ptr %445, align 8
  %447 = and i64 %446, 2097152
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %459, label %449

449:                                              ; preds = %443
  %450 = getelementptr inbounds %struct.tree_common, ptr %420, i64 0, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !61
  %452 = load i64, ptr %451, align 8
  %453 = freeze i64 %452
  %454 = and i64 %453, 2097152
  %455 = icmp ne i64 %454, 0
  %456 = add nsw i32 %5, -83
  %457 = icmp ult i32 %456, 4
  %458 = select i1 %455, i1 true, i1 %457
  br i1 %458, label %479, label %461

459:                                              ; preds = %443
  %460 = icmp eq i32 %5, 83
  br i1 %460, label %479, label %461

461:                                              ; preds = %459, %449
  %462 = icmp ne i64 %447, 0
  %463 = load i32, ptr @flag_wrapv, align 4
  %464 = icmp ne i32 %463, 0
  %465 = select i1 %462, i1 true, i1 %464
  br i1 %465, label %466, label %476

466:                                              ; preds = %461
  %467 = getelementptr inbounds %struct.tree_common, ptr %420, i64 0, i32 2
  %468 = load ptr, ptr %467, align 8, !tbaa !61
  %469 = load i64, ptr %468, align 8
  %470 = and i64 %469, 2097152
  %471 = icmp ne i64 %470, 0
  %472 = select i1 %471, i1 true, i1 %464
  %473 = add nsw i32 %5, -65
  %474 = icmp ult i32 %473, -2
  %475 = select i1 %472, i1 true, i1 %474
  br i1 %475, label %481, label %479

476:                                              ; preds = %461
  %477 = add nsw i32 %5, -63
  %478 = icmp ult i32 %477, 2
  br i1 %478, label %479, label %481

479:                                              ; preds = %466, %449, %476, %459, %438
  %480 = tail call ptr @unsigned_type_for(ptr noundef %433) #13
  br label %483

481:                                              ; preds = %476, %466
  %482 = tail call ptr @signed_type_for(ptr noundef %433) #13
  br label %483

483:                                              ; preds = %481, %479
  %484 = phi ptr [ %480, %479 ], [ %482, %481 ]
  %485 = tail call ptr @convert(ptr noundef %484, ptr noundef %417) #13
  %486 = tail call ptr @convert(ptr noundef %484, ptr noundef %420) #13
  %487 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %5, ptr noundef %484, ptr noundef %485, ptr noundef %486) #13
  %488 = tail call ptr @convert(ptr noundef nonnull %0, ptr noundef %487) #13
  br label %489

489:                                              ; preds = %432, %483
  %490 = phi ptr [ %488, %483 ], [ %206, %432 ]
  br i1 %437, label %565, label %591, !prof !109

491:                                              ; preds = %302, %302
  %492 = load ptr, ptr %6, align 8, !tbaa !61
  %493 = load i64, ptr %492, align 8
  %494 = and i64 %493, 2097152
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %498, label %496

496:                                              ; preds = %491
  %497 = tail call ptr @unsigned_type_for(ptr noundef %0) #13
  br label %500

498:                                              ; preds = %491
  %499 = tail call ptr @signed_type_for(ptr noundef %0) #13
  br label %500

500:                                              ; preds = %498, %496
  %501 = phi ptr [ %497, %496 ], [ %499, %498 ]
  %502 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %503 = load ptr, ptr %502, align 8, !tbaa !61
  %504 = tail call ptr @convert(ptr noundef %501, ptr noundef %503) #13
  %505 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %5, ptr noundef %501, ptr noundef %504) #13
  %506 = tail call ptr @convert(ptr noundef %0, ptr noundef %505) #13
  br label %591

507:                                              ; preds = %302
  %508 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %509 = load ptr, ptr %508, align 8, !tbaa !61
  %510 = getelementptr inbounds %struct.tree_common, ptr %509, i64 0, i32 2
  %511 = load ptr, ptr %510, align 8, !tbaa !61
  %512 = load i64, ptr %511, align 8
  %513 = and i64 %512, 65535
  %514 = icmp eq i64 %513, 14
  br i1 %514, label %515, label %535

515:                                              ; preds = %507
  %516 = tail call i32 @vector_type_mode(ptr noundef nonnull %511) #13
  %517 = zext i32 %516 to i64
  %518 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %517
  %519 = load i8, ptr %518, align 1, !tbaa !61
  %520 = load i64, ptr %0, align 8
  %521 = and i64 %520, 65535
  %522 = icmp eq i64 %521, 14
  br i1 %522, label %523, label %525

523:                                              ; preds = %515
  %524 = tail call i32 @vector_type_mode(ptr noundef %0) #13
  br label %529

525:                                              ; preds = %515
  %526 = load i32, ptr %11, align 4
  %527 = lshr i32 %526, 16
  %528 = and i32 %527, 255
  br label %529

529:                                              ; preds = %525, %523
  %530 = phi i32 [ %524, %523 ], [ %528, %525 ]
  %531 = zext i32 %530 to i64
  %532 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %531
  %533 = load i8, ptr %532, align 1, !tbaa !61
  %534 = icmp eq i8 %519, %533
  br i1 %534, label %535, label %565

535:                                              ; preds = %529, %507
  %536 = load ptr, ptr %508, align 8, !tbaa !61
  %537 = tail call ptr @get_unwidened(ptr noundef %536, ptr noundef %0) #13
  %538 = tail call ptr @convert(ptr noundef %0, ptr noundef %537) #13
  br label %591

539:                                              ; preds = %302
  %540 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %541 = load ptr, ptr %540, align 8, !tbaa !61
  %542 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %543 = load ptr, ptr %542, align 8, !tbaa !61
  %544 = getelementptr inbounds %struct.tree_common, ptr %543, i64 0, i32 2
  %545 = load ptr, ptr %544, align 8, !tbaa !61
  %546 = load i64, ptr %545, align 8
  %547 = and i64 %546, 65535
  %548 = icmp eq i64 %547, 19
  br i1 %548, label %551, label %549

549:                                              ; preds = %539
  %550 = tail call ptr @convert(ptr noundef %0, ptr noundef %543) #13
  br label %551

551:                                              ; preds = %539, %549
  %552 = phi ptr [ %550, %549 ], [ %543, %539 ]
  %553 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %554 = load ptr, ptr %553, align 8, !tbaa !61
  %555 = getelementptr inbounds %struct.tree_common, ptr %554, i64 0, i32 2
  %556 = load ptr, ptr %555, align 8, !tbaa !61
  %557 = load i64, ptr %556, align 8
  %558 = and i64 %557, 65535
  %559 = icmp eq i64 %558, 19
  br i1 %559, label %562, label %560

560:                                              ; preds = %551
  %561 = tail call ptr @convert(ptr noundef %0, ptr noundef %554) #13
  br label %562

562:                                              ; preds = %551, %560
  %563 = phi ptr [ %561, %560 ], [ %554, %551 ]
  %564 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 56, ptr noundef %0, ptr noundef %541, ptr noundef %552, ptr noundef %563) #13
  br label %591

565:                                              ; preds = %388, %401, %408, %342, %355, %362, %372, %381, %385, %302, %529, %489, %313, %319, %322, %326, %304, %310
  %566 = tail call ptr @build1_stat(i32 noundef 113, ptr noundef %0, ptr noundef %1) #13
  br label %591

567:                                              ; preds = %205
  %568 = tail call ptr @build1_stat(i32 noundef 77, ptr noundef %0, ptr noundef %1) #13
  br label %591

569:                                              ; preds = %205
  %570 = tail call ptr @build1_stat(i32 noundef 115, ptr noundef %0, ptr noundef %1) #13
  br label %591

571:                                              ; preds = %205
  %572 = load ptr, ptr %6, align 8, !tbaa !61
  %573 = getelementptr inbounds %struct.tree_common, ptr %572, i64 0, i32 2
  %574 = load ptr, ptr %573, align 8, !tbaa !61
  %575 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 43, ptr noundef %574, ptr noundef %1) #13
  %576 = tail call ptr @convert(ptr noundef %0, ptr noundef %575) #13
  br label %591

577:                                              ; preds = %205
  %578 = load ptr, ptr %14, align 8, !tbaa !61
  %579 = load ptr, ptr %6, align 8, !tbaa !61
  %580 = getelementptr inbounds %struct.tree_type, ptr %579, i64 0, i32 2
  %581 = load ptr, ptr %580, align 8, !tbaa !61
  %582 = tail call i32 @tree_int_cst_equal(ptr noundef %578, ptr noundef %581) #13
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %586

584:                                              ; preds = %577
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4) #13
  %585 = load ptr, ptr @global_trees, align 16, !tbaa !50
  br label %591

586:                                              ; preds = %577
  %587 = tail call ptr @build1_stat(i32 noundef 118, ptr noundef %0, ptr noundef %1) #13
  br label %591

588:                                              ; preds = %205
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5) #13
  %589 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !50
  %590 = tail call ptr @convert(ptr noundef %0, ptr noundef %589) #13
  br label %591

591:                                              ; preds = %340, %335, %262, %258, %153, %203, %489, %588, %586, %584, %571, %569, %567, %565, %562, %535, %500, %293, %226, %214, %212, %17
  %592 = phi ptr [ %590, %588 ], [ %587, %586 ], [ %585, %584 ], [ %576, %571 ], [ %570, %569 ], [ %568, %567 ], [ %227, %226 ], [ %301, %293 ], [ %566, %565 ], [ %564, %562 ], [ %538, %535 ], [ %506, %500 ], [ %490, %489 ], [ %213, %212 ], [ %220, %214 ], [ %204, %203 ], [ %155, %153 ], [ %18, %17 ], [ %263, %262 ], [ %260, %258 ], [ %341, %340 ], [ %336, %335 ]
  ret ptr %592
}

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

declare ptr @fold_unary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_unwidened(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #3

declare ptr @unsigned_type_for(ptr noundef) local_unnamed_addr #3

declare ptr @signed_type_for(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @convert_to_complex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !49 {
  br label %3

3:                                                ; preds = %52, %50, %2
  %4 = phi ptr [ %1, %2 ], [ %51, %50 ], [ %53, %52 ]
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %52 [
    i16 9, label %11
    i16 11, label %11
    i16 8, label %11
    i16 6, label %11
    i16 7, label %11
    i16 13, label %16
    i16 10, label %50
    i16 12, label %50
  ]

11:                                               ; preds = %3, %3, %3, %3, %3
  %12 = tail call ptr @convert(ptr noundef %6, ptr noundef %4) #13
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !50
  %14 = tail call ptr @convert(ptr noundef %6, ptr noundef %13) #13
  %15 = tail call ptr @build2_stat(i32 noundef 123, ptr noundef %0, ptr noundef %12, ptr noundef %14) #13
  br label %54

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 16
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %54, label %24

24:                                               ; preds = %16
  %25 = load i64, ptr %4, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 123
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !61
  %31 = tail call ptr @convert(ptr noundef %6, ptr noundef %30) #13
  %32 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !61
  %34 = tail call ptr @convert(ptr noundef %6, ptr noundef %33) #13
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 123, ptr noundef %0, ptr noundef %31, ptr noundef %34) #13
  br label %54

36:                                               ; preds = %24
  %37 = tail call ptr @save_expr(ptr noundef nonnull %4) #13
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  %40 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !61
  %42 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 43, ptr noundef %41, ptr noundef %37) #13
  %43 = tail call ptr @convert(ptr noundef %6, ptr noundef %42) #13
  %44 = load ptr, ptr %38, align 8, !tbaa !61
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !61
  %47 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 44, ptr noundef %46, ptr noundef %37) #13
  %48 = tail call ptr @convert(ptr noundef %6, ptr noundef %47) #13
  %49 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 123, ptr noundef %0, ptr noundef %43, ptr noundef %48) #13
  br label %54

50:                                               ; preds = %3, %3
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.6) #13
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !50
  br label %3

52:                                               ; preds = %3
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7) #13
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !50
  br label %3

54:                                               ; preds = %28, %36, %16, %11
  %55 = phi ptr [ %15, %11 ], [ %35, %28 ], [ %49, %36 ], [ %4, %16 ]
  ret ptr %55
}

declare ptr @save_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @convert_to_vector(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !49 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %18 [
    i16 8, label %7
    i16 14, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = tail call i32 @tree_int_cst_equal(ptr noundef %9, ptr noundef %11) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4) #13
  %15 = load ptr, ptr @global_trees, align 16, !tbaa !50
  br label %20

16:                                               ; preds = %7
  %17 = tail call ptr @build1_stat(i32 noundef 118, ptr noundef %0, ptr noundef %1) #13
  br label %20

18:                                               ; preds = %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8) #13
  %19 = load ptr, ptr @global_trees, align 16, !tbaa !50
  br label %20

20:                                               ; preds = %18, %16, %14
  %21 = phi ptr [ %19, %18 ], [ %17, %16 ], [ %15, %14 ]
  ret ptr %21
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @convert_to_fixed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !49 {
  %3 = tail call i32 @integer_zerop(ptr noundef %1) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #13
  br label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ %10, %9 ], [ %15, %11 ]
  %18 = add i32 %17, -20
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %19
  %21 = tail call ptr @build_fixed(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.fixed_value) align 8 %20) #13
  br label %90

22:                                               ; preds = %2
  %23 = tail call i32 @integer_onep(ptr noundef %1) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %76, label %25

25:                                               ; preds = %22
  %26 = load i64, ptr %0, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 14
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #13
  br label %36

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  br label %36

36:                                               ; preds = %31, %29
  %37 = phi i32 [ %30, %29 ], [ %35, %31 ]
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !61
  %41 = icmp eq i8 %40, 6
  br i1 %41, label %59, label %42

42:                                               ; preds = %36
  %43 = load i64, ptr %0, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 14
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #13
  br label %53

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  br label %53

53:                                               ; preds = %48, %46
  %54 = phi i32 [ %47, %46 ], [ %52, %48 ]
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !61
  %58 = icmp eq i8 %57, 7
  br i1 %58, label %59, label %76

59:                                               ; preds = %53, %36
  %60 = load i64, ptr %0, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 14
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #13
  br label %70

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  br label %70

70:                                               ; preds = %65, %63
  %71 = phi i32 [ %64, %63 ], [ %69, %65 ]
  %72 = add i32 %71, -30
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [8 x %struct.fixed_value], ptr @fconst1, i64 0, i64 %73
  %75 = tail call ptr @build_fixed(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.fixed_value) align 8 %74) #13
  br label %90

76:                                               ; preds = %22, %53
  %77 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !61
  %79 = load i64, ptr %78, align 8
  %80 = trunc i64 %79 to i16
  switch i16 %80, label %88 [
    i16 11, label %81
    i16 8, label %81
    i16 6, label %81
    i16 7, label %81
    i16 9, label %81
    i16 13, label %83
  ]

81:                                               ; preds = %76, %76, %76, %76, %76
  %82 = tail call ptr @build1_stat(i32 noundef 115, ptr noundef %0, ptr noundef %1) #13
  br label %90

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !61
  %86 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 43, ptr noundef %85, ptr noundef %1) #13
  %87 = tail call ptr @convert(ptr noundef %0, ptr noundef %86) #13
  br label %90

88:                                               ; preds = %76
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9) #13
  %89 = load ptr, ptr @global_trees, align 16, !tbaa !50
  br label %90

90:                                               ; preds = %88, %83, %81, %70, %16
  %91 = phi ptr [ %21, %16 ], [ %75, %70 ], [ %89, %88 ], [ %87, %83 ], [ %82, %81 ]
  ret ptr %91
}

declare ptr @build_fixed(ptr noundef, ptr noundef byval(%struct.fixed_value) align 8) local_unnamed_addr #3

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!48}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !{ptr @convert_to_pointer, ptr @integer_zerop, i64 1595}
!36 = !{ptr @convert_to_pointer, ptr @force_fit_type_double, i64 800}
!37 = !{ptr @convert_to_pointer, ptr @fold_build1_stat_loc, i64 795}
!38 = !{ptr @convert_to_integer, ptr @strip_float_extensions, i64 261361}
!39 = !{ptr @convert_to_integer, ptr @builtin_mathfn_code, i64 261361}
!40 = !{ptr @convert_to_integer, ptr @copy_node_stat, i64 25}
!41 = !{ptr @convert_to_integer, ptr @fold_unary_loc, i64 261344}
!42 = !{ptr @convert_to_integer, ptr @build1_stat, i64 123126}
!43 = !{ptr @convert_to_integer, ptr @tree_int_cst_sgn, i64 3}
!44 = !{ptr @convert_to_integer, ptr @get_unwidened, i64 18}
!45 = !{ptr @convert_to_integer, ptr @unsigned_type_for, i64 8}
!46 = !{ptr @convert_to_integer, ptr @convert, i64 24}
!47 = !{ptr @convert_to_integer, ptr @fold_build2_stat_loc, i64 8}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !{!55, !51, i64 8}
!55 = !{!"_IO_FILE", !56, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !51, i64 96, !51, i64 104, !56, i64 112, !56, i64 116, !57, i64 120, !58, i64 128, !52, i64 130, !52, i64 131, !51, i64 136, !57, i64 144, !51, i64 152, !51, i64 160, !51, i64 168, !51, i64 176, !57, i64 184, !56, i64 192, !52, i64 196}
!56 = !{!"int", !52, i64 0}
!57 = !{!"long", !52, i64 0}
!58 = !{!"short", !52, i64 0}
!59 = !{!55, !51, i64 16}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{!52, !52, i64 0}
!62 = !{!55, !51, i64 40}
!63 = !{!55, !51, i64 48}
!64 = !{!55, !56, i64 0}
!65 = !{!56, !56, i64 0}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!"function_entry_count", i64 1595}
!70 = !{!"branch_weights", i32 642, i32 953}
!71 = !{!"branch_weights", i32 0, i32 1595}
!72 = !{!"branch_weights", i32 795, i32 800}
!73 = !{!"branch_weights", i32 0, i32 781, i32 0, i32 14, i32 0, i32 0}
!74 = !{!"branch_weights", i32 781, i32 0}
!75 = !{!"branch_weights", i32 14, i32 0}
!76 = !{!77, !51, i64 456}
!77 = !{!"lang_hooks", !51, i64 0, !57, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !51, i64 96, !51, i64 104, !51, i64 112, !51, i64 120, !51, i64 128, !51, i64 136, !51, i64 144, !51, i64 152, !51, i64 160, !51, i64 168, !51, i64 176, !51, i64 184, !51, i64 192, !51, i64 200, !51, i64 208, !51, i64 216, !51, i64 224, !51, i64 232, !78, i64 240, !79, i64 248, !80, i64 256, !81, i64 272, !82, i64 432, !83, i64 560, !51, i64 584, !51, i64 592, !51, i64 600, !51, i64 608, !51, i64 616, !51, i64 624, !51, i64 632, !51, i64 640, !51, i64 648, !51, i64 656, !51, i64 664, !52, i64 672}
!78 = !{!"lang_hooks_for_tree_inlining", !51, i64 0}
!79 = !{!"lang_hooks_for_callgraph", !51, i64 0}
!80 = !{!"lang_hooks_for_tree_dump", !51, i64 0, !51, i64 8}
!81 = !{!"lang_hooks_for_decls", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !51, i64 96, !51, i64 104, !51, i64 112, !51, i64 120, !51, i64 128, !51, i64 136, !51, i64 144, !51, i64 152}
!82 = !{!"lang_hooks_for_types", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !51, i64 96, !51, i64 104, !51, i64 112, !52, i64 120}
!83 = !{!"lang_hooks_for_lto", !51, i64 0, !51, i64 8, !51, i64 16}
!84 = !{!"function_entry_count", i64 261361}
!85 = !{!"branch_weights", i32 0, i32 261361}
!86 = !{i64 0, i64 4, !65, i64 0, i64 4, !65, i64 0, i64 4, !65, i64 0, i64 4, !65, i64 0, i64 4, !65, i64 0, i64 4, !65, i64 8, i64 24, !61}
!87 = !{!"branch_weights", i32 261263, i32 95, i32 3}
!88 = !{!"branch_weights", i32 98, i32 0, i32 0, i32 0}
!89 = !{!"function_entry_count", i64 265762}
!90 = !{!"branch_weights", i32 0, i32 265762}
!91 = !{!"branch_weights", i32 265762, i32 0}
!92 = !{!"branch_weights", i32 4401, i32 261361}
!93 = !{!"branch_weights", i32 261361, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!94 = !{!"branch_weights", i32 261361, i32 0}
!95 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 151801, i32 113961, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!96 = !{!"branch_weights", i32 25, i32 265737}
!97 = !{!"branch_weights", i32 4393, i32 261344}
!98 = !{!"branch_weights", i32 118279, i32 143065}
!99 = !{!"branch_weights", i32 0, i32 143065}
!100 = !{!"branch_weights", i32 143065, i32 0}
!101 = !{!"branch_weights", i32 118741, i32 142603}
!102 = !{!"branch_weights", i32 4393, i32 0, i32 0}
!103 = !{!"branch_weights", i32 4393, i32 0}
!104 = !{!77, !51, i64 448}
!105 = !{!"branch_weights", i32 4379, i32 5, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0}
!106 = !{!"branch_weights", i32 3, i32 2}
!107 = !{!"branch_weights", i32 0, i32 3}
!108 = !{!"branch_weights", i32 1, i32 0}
!109 = !{!"branch_weights", i32 0, i32 8}
