; ModuleID = 'tree-chrec.c'
source_filename = "tree-chrec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.real_value = type { i32, [3 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [15 x i8] c"(chrec_apply \0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"  (varying_loop = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c")\0A  (chrec = \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c")\0A  (x = \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c")\0A  (res = \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"))\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"tree-chrec.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@chrec_known = external local_unnamed_addr global ptr, align 8
@chrec_not_analyzed_yet = external local_unnamed_addr global ptr, align 8
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@dconstm1 = external global %struct.real_value, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@dconst2 = external global %struct.real_value, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"./tree-chrec.h\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
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
  %5 = tail call ptr @__ctype_tolower_loc() #14
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
  %5 = tail call ptr @__ctype_toupper_loc() #14
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
define dso_local ptr @chrec_fold_plus(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %5 = icmp ne ptr %4, %1
  %6 = load ptr, ptr @chrec_known, align 8
  %7 = icmp ne ptr %6, %1
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = icmp ne ptr %4, %2
  %11 = icmp ne ptr %6, %2
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %27, label %13

13:                                               ; preds = %9, %3
  %14 = icmp eq ptr %4, %1
  %15 = icmp eq ptr %4, %2
  %16 = or i1 %14, %15
  br i1 %16, label %46, label %17

17:                                               ; preds = %13
  %18 = icmp eq ptr %6, %1
  %19 = icmp eq ptr %6, %2
  %20 = or i1 %18, %19
  br i1 %20, label %46, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @chrec_not_analyzed_yet, align 8
  %23 = icmp eq ptr %22, %1
  %24 = icmp eq ptr %22, %2
  %25 = or i1 %23, %24
  %26 = select i1 %25, ptr %22, ptr %4
  br label %46

27:                                               ; preds = %9
  %28 = tail call i32 @integer_zerop(ptr noundef %1) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @chrec_convert_1(ptr noundef %0, ptr noundef %2, ptr noundef null, i8 noundef zeroext 1)
  br label %46

32:                                               ; preds = %27
  %33 = tail call i32 @integer_zerop(ptr noundef %2) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call fastcc ptr @chrec_convert_1(ptr noundef %0, ptr noundef %1, ptr noundef null, i8 noundef zeroext 1)
  br label %46

37:                                               ; preds = %32
  %38 = load i64, ptr %0, align 8
  %39 = trunc i64 %38 to i32
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -10
  %42 = and i32 %41, -3
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 66, i32 63
  %45 = tail call fastcc ptr @chrec_fold_plus_1(i32 noundef %44, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %46

46:                                               ; preds = %21, %17, %13, %37, %35, %30
  %47 = phi ptr [ %31, %30 ], [ %36, %35 ], [ %45, %37 ], [ %26, %21 ], [ %4, %13 ], [ %6, %17 ]
  ret ptr %47
}

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @chrec_convert(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = tail call fastcc ptr @chrec_convert_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1)
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @chrec_fold_plus_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 !prof !34 {
  %5 = alloca i32, align 4
  %6 = icmp eq i32 %0, 66
  %7 = load ptr, ptr @sizetype_tab, align 16
  %8 = select i1 %6, ptr %7, ptr %1
  %9 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %10 = icmp ne ptr %9, %2
  %11 = load ptr, ptr @chrec_known, align 8
  %12 = icmp ne ptr %11, %2
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = icmp ne ptr %9, %3
  %16 = icmp ne ptr %11, %3
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %32, label %18

18:                                               ; preds = %14, %4
  %19 = icmp eq ptr %9, %2
  %20 = icmp eq ptr %9, %3
  %21 = or i1 %19, %20
  br i1 %21, label %146, label %22

22:                                               ; preds = %18
  %23 = icmp eq ptr %11, %2
  %24 = icmp eq ptr %11, %3
  %25 = or i1 %23, %24
  br i1 %25, label %146, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @chrec_not_analyzed_yet, align 8
  %28 = icmp eq ptr %27, %2
  %29 = icmp eq ptr %27, %3
  %30 = or i1 %28, %29
  %31 = select i1 %30, ptr %27, ptr %9
  br label %146

32:                                               ; preds = %14
  %33 = load i64, ptr %2, align 8
  %34 = trunc i64 %33 to i16
  switch i16 %34, label %75 [
    i16 146, label %35
    i16 116, label %70
    i16 113, label %70
  ]

35:                                               ; preds = %32
  %36 = load i64, ptr %3, align 8
  %37 = trunc i64 %36 to i16
  switch i16 %37, label %45 [
    i16 146, label %38
    i16 116, label %40
    i16 113, label %40
  ]

38:                                               ; preds = %35
  %39 = tail call fastcc ptr @chrec_fold_plus_poly_poly(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %146

40:                                               ; preds = %35, %35
  %41 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %3, ptr noundef null), !range !54
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  br label %146

45:                                               ; preds = %40, %35
  switch i32 %0, label %58 [
    i32 66, label %46
    i32 63, label %46
  ]

46:                                               ; preds = %45, %45
  %47 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = getelementptr inbounds %struct.tree_int_cst, ptr %48, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !46
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef %53, ptr noundef nonnull %3)
  %55 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %51, ptr noundef %54, ptr noundef %56)
  br label %146

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  %61 = getelementptr inbounds %struct.tree_int_cst, ptr %60, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !46
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  %66 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef %65, ptr noundef nonnull %3)
  %67 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !46
  %69 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %63, ptr noundef %66, ptr noundef %68)
  br label %146

70:                                               ; preds = %32, %32
  %71 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %2, ptr noundef null), !range !54
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  br label %146

75:                                               ; preds = %70, %32
  %76 = load i64, ptr %3, align 8
  %77 = trunc i64 %76 to i16
  switch i16 %77, label %118 [
    i16 146, label %78
    i16 116, label %113
    i16 113, label %113
  ]

78:                                               ; preds = %75
  switch i32 %0, label %91 [
    i32 66, label %79
    i32 63, label %79
  ]

79:                                               ; preds = %78, %78
  %80 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = getelementptr inbounds %struct.tree_int_cst, ptr %81, i64 0, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !46
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  %87 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %86)
  %88 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  %90 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %84, ptr noundef %87, ptr noundef %89)
  br label %146

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !46
  %94 = getelementptr inbounds %struct.tree_int_cst, ptr %93, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !46
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !46
  %99 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %98)
  %100 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !46
  %102 = load i64, ptr %1, align 8
  %103 = and i64 %102, 65535
  %104 = icmp eq i64 %103, 9
  br i1 %104, label %105, label %107

105:                                              ; preds = %91
  %106 = tail call ptr @build_real(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.real_value) align 8 @dconstm1) #14
  br label %109

107:                                              ; preds = %91
  %108 = tail call ptr @build_int_cst_type(ptr noundef nonnull %1, i64 noundef -1) #14
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi ptr [ %106, %105 ], [ %108, %107 ]
  %111 = tail call ptr @chrec_fold_multiply(ptr noundef nonnull %1, ptr noundef %101, ptr noundef %110)
  %112 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %96, ptr noundef %99, ptr noundef %111)
  br label %146

113:                                              ; preds = %75, %75
  %114 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %3, ptr noundef null), !range !54
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  br label %146

118:                                              ; preds = %113, %75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !tbaa !50
  %119 = call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %2, ptr noundef nonnull %5), !range !54
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %3, ptr noundef nonnull %5), !range !54
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %121, %118
  %125 = load i32, ptr %5, align 4, !tbaa !50
  %126 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %127 = getelementptr inbounds %struct.param_info, ptr %126, i64 63, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !55
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = call ptr @build2_stat(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #14
  br label %144

132:                                              ; preds = %121, %124
  %133 = load i32, ptr %5, align 4, !tbaa !50
  %134 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %135 = getelementptr inbounds %struct.param_info, ptr %134, i64 63, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !55
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1, ptr noundef nonnull %2) #14
  %140 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef nonnull %3) #14
  %141 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %1, ptr noundef %139, ptr noundef %140) #14
  br label %144

142:                                              ; preds = %132
  %143 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  br label %144

144:                                              ; preds = %142, %138, %130
  %145 = phi ptr [ %131, %130 ], [ %141, %138 ], [ %143, %142 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %146

146:                                              ; preds = %26, %22, %18, %144, %116, %109, %79, %73, %58, %46, %43, %38
  %147 = phi ptr [ %145, %144 ], [ %117, %116 ], [ %90, %79 ], [ %112, %109 ], [ %74, %73 ], [ %57, %46 ], [ %69, %58 ], [ %44, %43 ], [ %39, %38 ], [ %31, %26 ], [ %9, %18 ], [ %11, %22 ]
  ret ptr %147
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @chrec_fold_minus(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %5 = icmp ne ptr %4, %1
  %6 = load ptr, ptr @chrec_known, align 8
  %7 = icmp ne ptr %6, %1
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = icmp ne ptr %4, %2
  %11 = icmp ne ptr %6, %2
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %27, label %13

13:                                               ; preds = %9, %3
  %14 = icmp eq ptr %4, %1
  %15 = icmp eq ptr %4, %2
  %16 = or i1 %14, %15
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = icmp eq ptr %6, %1
  %19 = icmp eq ptr %6, %2
  %20 = or i1 %18, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @chrec_not_analyzed_yet, align 8
  %23 = icmp eq ptr %22, %1
  %24 = icmp eq ptr %22, %2
  %25 = or i1 %23, %24
  %26 = select i1 %25, ptr %22, ptr %4
  br label %32

27:                                               ; preds = %9
  %28 = tail call i32 @integer_zerop(ptr noundef %2) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @chrec_fold_plus_1(i32 noundef 64, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %32

32:                                               ; preds = %21, %17, %13, %27, %30
  %33 = phi ptr [ %31, %30 ], [ %1, %27 ], [ %26, %21 ], [ %4, %13 ], [ %6, %17 ]
  ret ptr %33
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %5 = icmp ne ptr %4, %1
  %6 = load ptr, ptr @chrec_known, align 8
  %7 = icmp ne ptr %6, %1
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = icmp ne ptr %4, %2
  %11 = icmp ne ptr %6, %2
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %27, label %13

13:                                               ; preds = %9, %3
  %14 = icmp eq ptr %4, %1
  %15 = icmp eq ptr %4, %2
  %16 = or i1 %14, %15
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = icmp eq ptr %6, %1
  %19 = icmp eq ptr %6, %2
  %20 = or i1 %18, %19
  br i1 %20, label %48, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @chrec_not_analyzed_yet, align 8
  %23 = icmp eq ptr %22, %1
  %24 = icmp eq ptr %22, %2
  %25 = or i1 %23, %24
  %26 = select i1 %25, ptr %22, ptr %4
  br label %48

27:                                               ; preds = %9
  %28 = load i64, ptr %1, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %68 [
    i16 146, label %30
    i16 116, label %63
    i16 113, label %63
  ]

30:                                               ; preds = %27
  %31 = load i64, ptr %2, align 8
  %32 = trunc i64 %31 to i16
  switch i16 %32, label %40 [
    i16 146, label %33
    i16 116, label %35
    i16 113, label %35
  ]

33:                                               ; preds = %30
  %34 = tail call fastcc ptr @chrec_fold_multiply_poly_poly(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %48

35:                                               ; preds = %30, %30
  %36 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %2, ptr noundef null), !range !54
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  br label %48

40:                                               ; preds = %35, %30
  %41 = tail call i32 @integer_onep(ptr noundef nonnull %2) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #14
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #14
  br label %48

48:                                               ; preds = %33, %38, %46, %66, %74, %95, %103, %105, %40, %68, %97, %13, %17, %21, %79, %50
  %49 = phi ptr [ %62, %50 ], [ %91, %79 ], [ %75, %74 ], [ %104, %103 ], [ %106, %105 ], [ %96, %95 ], [ %67, %66 ], [ %47, %46 ], [ %39, %38 ], [ %34, %33 ], [ %1, %40 ], [ %2, %68 ], [ %1, %97 ], [ %26, %21 ], [ %4, %13 ], [ %6, %17 ]
  ret ptr %49

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.tree_int_cst, ptr %52, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !46
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %57, ptr noundef nonnull %2)
  %59 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  %61 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %60, ptr noundef nonnull %2)
  %62 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %55, ptr noundef %58, ptr noundef %61)
  br label %48

63:                                               ; preds = %27, %27
  %64 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %1, ptr noundef null), !range !54
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  br label %48

68:                                               ; preds = %63, %27
  %69 = tail call i32 @integer_onep(ptr noundef nonnull %1) #14
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %48

71:                                               ; preds = %68
  %72 = tail call i32 @integer_zerop(ptr noundef nonnull %1) #14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #14
  br label %48

76:                                               ; preds = %71
  %77 = load i64, ptr %2, align 8
  %78 = trunc i64 %77 to i16
  switch i16 %78, label %97 [
    i16 146, label %79
    i16 116, label %92
    i16 113, label %92
  ]

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = getelementptr inbounds %struct.tree_int_cst, ptr %81, i64 0, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !46
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  %87 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %86, ptr noundef nonnull %1)
  %88 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  %90 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %89, ptr noundef nonnull %1)
  %91 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %84, ptr noundef %87, ptr noundef %90)
  br label %48

92:                                               ; preds = %76, %76
  %93 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %2, ptr noundef null), !range !54
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  br label %48

97:                                               ; preds = %92, %76
  %98 = tail call i32 @integer_onep(ptr noundef nonnull %2) #14
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %48

100:                                              ; preds = %97
  %101 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #14
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #14
  br label %48

105:                                              ; preds = %100
  %106 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #14
  br label %48
}

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @chrec_fold_multiply_poly_poly(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.tree_int_cst, ptr %5, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr @cfun, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.loops, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = and i64 %7, 4294967295
  %14 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %12, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.tree_int_cst, ptr %17, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !46
  %20 = and i64 %19, 4294967295
  %21 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %12, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = icmp eq ptr %1, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 192, ptr noundef nonnull @.str.7) #14
  br label %25

25:                                               ; preds = %3, %24
  %26 = icmp eq ptr %2, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 193, ptr noundef nonnull @.str.7) #14
  br label %28

28:                                               ; preds = %25, %27
  %29 = load i64, ptr %1, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 146
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 194, ptr noundef nonnull @.str.7) #14
  br label %33

33:                                               ; preds = %28, %32
  %34 = load i64, ptr %2, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 146
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 195, ptr noundef nonnull @.str.7) #14
  br label %38

38:                                               ; preds = %33, %37
  %39 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %40 = icmp ne ptr %39, %1
  %41 = load ptr, ptr @chrec_known, align 8
  %42 = icmp ne ptr %41, %1
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  br label %47

47:                                               ; preds = %38, %44
  %48 = phi ptr [ %46, %44 ], [ null, %38 ]
  %49 = icmp ne ptr %39, %2
  %50 = icmp ne ptr %41, %2
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  br label %55

55:                                               ; preds = %47, %52
  %56 = phi ptr [ %54, %52 ], [ null, %47 ]
  %57 = icmp eq ptr %48, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 196, ptr noundef nonnull @.str.7) #14
  br label %59

59:                                               ; preds = %55, %58
  %60 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %61 = icmp ne ptr %60, %1
  %62 = load ptr, ptr @chrec_known, align 8
  %63 = icmp ne ptr %62, %1
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !46
  br label %68

68:                                               ; preds = %59, %65
  %69 = phi ptr [ %67, %65 ], [ null, %59 ]
  %70 = icmp eq ptr %69, %0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 197, ptr noundef nonnull @.str.7) #14
  br label %72

72:                                               ; preds = %68, %71
  %73 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %15, ptr noundef %22) #14
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %16, align 8, !tbaa !46
  %77 = getelementptr inbounds %struct.tree_int_cst, ptr %76, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !46
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %81, ptr noundef nonnull %1)
  %83 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !46
  %85 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %79, ptr noundef %82, ptr noundef %84)
  br label %138

86:                                               ; preds = %72
  %87 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %22, ptr noundef %15) #14
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %4, align 8, !tbaa !46
  %91 = getelementptr inbounds %struct.tree_int_cst, ptr %90, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !46
  %93 = trunc i64 %92 to i32
  %94 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !46
  %96 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %95, ptr noundef nonnull %2)
  %97 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !46
  %99 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %93, ptr noundef %96, ptr noundef %98)
  br label %138

100:                                              ; preds = %86
  %101 = icmp eq ptr %15, %22
  br i1 %101, label %103, label %102

102:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 216, ptr noundef nonnull @.str.7) #14
  br label %103

103:                                              ; preds = %100, %102
  %104 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  %106 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  %108 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %105, ptr noundef %107)
  %109 = load ptr, ptr %104, align 8, !tbaa !46
  %110 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !46
  %112 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %109, ptr noundef %111)
  %113 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !46
  %115 = load ptr, ptr %106, align 8, !tbaa !46
  %116 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %114, ptr noundef %115)
  %117 = tail call ptr @chrec_fold_plus(ptr noundef %0, ptr noundef %112, ptr noundef %116)
  %118 = load ptr, ptr %113, align 8, !tbaa !46
  %119 = load ptr, ptr %110, align 8, !tbaa !46
  %120 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %118, ptr noundef %119)
  %121 = tail call ptr @chrec_fold_plus(ptr noundef %0, ptr noundef %117, ptr noundef %120)
  %122 = load i64, ptr %0, align 8
  %123 = and i64 %122, 65535
  %124 = icmp eq i64 %123, 9
  br i1 %124, label %125, label %127

125:                                              ; preds = %103
  %126 = tail call ptr @build_real(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst2) #14
  br label %129

127:                                              ; preds = %103
  %128 = tail call ptr @build_int_cst(ptr noundef nonnull %0, i64 noundef 2) #14
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi ptr [ %126, %125 ], [ %128, %127 ]
  %131 = tail call ptr @chrec_fold_multiply(ptr noundef nonnull %0, ptr noundef %130, ptr noundef %120)
  %132 = load ptr, ptr %4, align 8, !tbaa !46
  %133 = getelementptr inbounds %struct.tree_int_cst, ptr %132, i64 0, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !46
  %135 = trunc i64 %134 to i32
  %136 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %135, ptr noundef %121, ptr noundef %131)
  %137 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %135, ptr noundef %108, ptr noundef %136)
  br label %138

138:                                              ; preds = %129, %89, %75
  %139 = phi ptr [ %85, %75 ], [ %99, %89 ], [ %137, %129 ]
  ret ptr %139
}

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @tree_contains_chrecs(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 4, !tbaa !50
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %1, align 4, !tbaa !50
  br label %9

9:                                                ; preds = %6, %4
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 146
  br i1 %12, label %47, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %15 = icmp ne ptr %14, %0
  %16 = load ptr, ptr @chrec_known, align 8
  %17 = icmp ne ptr %16, %0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %47

19:                                               ; preds = %13
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = icmp eq i32 %21, 9
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.tree_int_cst, ptr %25, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !46
  %28 = trunc i64 %27 to i32
  br label %33

29:                                               ; preds = %19
  %30 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %11
  %31 = load i8, ptr %30, align 1, !tbaa !46
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %23, %29
  %34 = phi i32 [ %28, %23 ], [ %32, %29 ]
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = zext nneg i32 %34 to i64
  br label %41

38:                                               ; preds = %41
  %39 = add nuw nsw i64 %42, 1
  %40 = icmp eq i64 %39, %37
  br i1 %40, label %47, label %41, !llvm.loop !61

41:                                               ; preds = %36, %38
  %42 = phi i64 [ 0, %36 ], [ %39, %38 ]
  %43 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef %44, ptr noundef %1), !range !54
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %38, label %47

47:                                               ; preds = %41, %38, %33, %9, %13, %2
  %48 = phi i8 [ 0, %2 ], [ 1, %13 ], [ 1, %9 ], [ 0, %33 ], [ 0, %38 ], [ 1, %41 ]
  ret i8 %48
}

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @build_polynomial_chrec(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 !prof !34 {
  %4 = load ptr, ptr @chrec_dont_know, align 8
  %5 = icmp eq ptr %4, %1
  %6 = icmp eq ptr %4, %2
  %7 = or i1 %5, %6
  br i1 %7, label %63, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !35
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %1, i32 noundef %0) #14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #14
  %16 = tail call ptr @hide_evolution_in_other_loops_than_loop(ptr noundef %15, i32 noundef %0)
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 146
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %22 = icmp ne ptr %21, %16
  %23 = load ptr, ptr @chrec_known, align 8
  %24 = icmp ne ptr %23, %16
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %28, label %26

26:                                               ; preds = %8, %11, %14, %20
  %27 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  br label %63

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i16
  switch i16 %32, label %34 [
    i16 10, label %33
    i16 12, label %33
  ]

33:                                               ; preds = %28, %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 143, ptr noundef nonnull @.str.7) #14
  br label %34

34:                                               ; preds = %28, %33
  %35 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i16
  switch i16 %38, label %43 [
    i16 10, label %39
    i16 12, label %39
  ]

39:                                               ; preds = %34, %34
  %40 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %41 = load ptr, ptr %29, align 8, !tbaa !46
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %48, label %46

43:                                               ; preds = %34
  %44 = load ptr, ptr %29, align 8, !tbaa !46
  %45 = icmp eq ptr %36, %44
  br i1 %45, label %48, label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ 147, %39 ], [ 149, %43 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef %47, ptr noundef nonnull @.str.7) #14
  br label %48

48:                                               ; preds = %46, %43, %39
  %49 = icmp eq ptr %2, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %48
  %51 = load i64, ptr %2, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 23
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #14
  %56 = and i32 %55, 255
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48, %50, %54
  %59 = load ptr, ptr %35, align 8, !tbaa !46
  %60 = zext i32 %0 to i64
  %61 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %60) #14
  %62 = tail call ptr @build3_stat(i32 noundef 146, ptr noundef %59, ptr noundef %61, ptr noundef %1, ptr noundef %2) #14
  br label %63

63:                                               ; preds = %3, %54, %58, %26
  %64 = phi ptr [ %62, %58 ], [ %27, %26 ], [ %1, %54 ], [ %4, %3 ]
  ret ptr %64
}

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @chrec_apply(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %5 = icmp ne ptr %4, %1
  %6 = load ptr, ptr @chrec_known, align 8
  %7 = icmp ne ptr %6, %1
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %11, %9 ], [ null, %3 ]
  br i1 %8, label %14, label %21

14:                                               ; preds = %12
  %15 = icmp ne ptr %4, %2
  %16 = icmp ne ptr %6, %2
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %1, i32 noundef %0) #14
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18, %14, %12
  %22 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  br label %121

23:                                               ; preds = %18
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i64 @fwrite(ptr nonnull @.str, i64 14, i64 1, ptr nonnull %24)
  br label %32

32:                                               ; preds = %30, %26, %23
  %33 = load i64, ptr %2, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 23
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i64, ptr %13, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 9
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = tail call ptr @build_real_from_int_cst(ptr noundef nonnull %13, ptr noundef nonnull %2) #14
  br label %42

42:                                               ; preds = %40, %36, %32
  %43 = phi ptr [ %41, %40 ], [ %2, %36 ], [ %2, %32 ]
  %44 = icmp eq ptr %1, null
  br i1 %44, label %84, label %45

45:                                               ; preds = %42
  %46 = load i64, ptr %1, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 146
  br i1 %48, label %49, label %84

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %51 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = load ptr, ptr %50, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.tree_int_cst, ptr %53, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !46
  %56 = trunc i64 %55 to i32
  %57 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %52, i32 noundef %56), !range !54
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %84, label %59

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  %62 = load ptr, ptr %50, align 8, !tbaa !46
  %63 = getelementptr inbounds %struct.tree_int_cst, ptr %62, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !46
  %65 = trunc i64 %64 to i32
  %66 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %61, i32 noundef %65), !range !54
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %59
  %69 = load i64, ptr %13, align 8
  %70 = trunc i64 %69 to i16
  switch i16 %70, label %73 [
    i16 10, label %71
    i16 12, label %71
  ]

71:                                               ; preds = %68, %68
  %72 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  br label %73

73:                                               ; preds = %68, %71
  %74 = phi ptr [ %72, %71 ], [ %13, %68 ]
  %75 = tail call fastcc ptr @chrec_convert_1(ptr noundef %74, ptr noundef %43, ptr noundef null, i8 noundef zeroext 1)
  %76 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  %78 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  %80 = tail call ptr @chrec_fold_multiply(ptr noundef %77, ptr noundef %79, ptr noundef %75)
  %81 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  %83 = tail call ptr @chrec_fold_plus(ptr noundef nonnull %13, ptr noundef %82, ptr noundef %80)
  br label %99

84:                                               ; preds = %49, %59, %42, %45
  %85 = load i64, ptr %1, align 8
  %86 = and i64 %85, 65535
  %87 = icmp eq i64 %86, 146
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i64, ptr %43, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 23
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %43) #14
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = tail call fastcc ptr @chrec_evaluate(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %43, i32 noundef 0)
  br label %99

97:                                               ; preds = %92, %88
  %98 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  br label %99

99:                                               ; preds = %84, %97, %95, %73
  %100 = phi ptr [ %75, %73 ], [ %43, %95 ], [ %43, %97 ], [ %43, %84 ]
  %101 = phi ptr [ %83, %73 ], [ %96, %95 ], [ %98, %97 ], [ %1, %84 ]
  %102 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %103 = icmp eq ptr %102, null
  br i1 %103, label %121, label %104

104:                                              ; preds = %99
  %105 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %106 = and i32 %105, 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %104
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %102, ptr noundef nonnull @.str.1, i32 noundef %0)
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %111 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 13, i64 1, ptr %110)
  %112 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %112, ptr noundef %1, i32 noundef 0) #14
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %114 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 9, i64 1, ptr %113)
  %115 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %115, ptr noundef %100, i32 noundef 0) #14
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %117 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 11, i64 1, ptr %116)
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %118, ptr noundef %101, i32 noundef 0) #14
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %120 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 3, i64 1, ptr %119)
  br label %121

121:                                              ; preds = %99, %104, %108, %21
  %122 = phi ptr [ %22, %21 ], [ %101, %108 ], [ %101, %104 ], [ %101, %99 ]
  ret ptr %122
}

declare zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @build_real_from_int_cst(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @chrec_convert_rhs(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %8 [
    i16 10, label %6
    i16 12, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ %0, %3 ]
  %10 = tail call fastcc ptr @chrec_convert_1(ptr noundef %9, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1)
  ret ptr %10
}

declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @chrec_evaluate(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr @cfun, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.loops, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = zext i32 %0 to i64
  %13 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %11, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = load i64, ptr %1, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 146
  br i1 %17, label %18, label %40

18:                                               ; preds = %4, %34
  %19 = phi ptr [ %36, %34 ], [ %1, %4 ]
  %20 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.tree_int_cst, ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !46
  %24 = load ptr, ptr @cfun, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = getelementptr inbounds %struct.loops, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = and i64 %23, 4294967295
  %30 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %28, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  %32 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %14, ptr noundef %31) #14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 146
  br i1 %39, label %18, label %40, !llvm.loop !62

40:                                               ; preds = %18, %34, %4
  %41 = phi ptr [ %1, %4 ], [ %19, %18 ], [ %36, %34 ]
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 146
  br i1 %44, label %45, label %68

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.tree_exp, ptr %41, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = getelementptr inbounds %struct.tree_int_cst, ptr %47, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !46
  %50 = icmp eq i64 %49, %12
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.tree_exp, ptr %41, i64 1, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = add i32 %3, 1
  %55 = tail call fastcc ptr @chrec_evaluate(i32 noundef %0, ptr noundef %53, ptr noundef %2, i32 noundef %54)
  %56 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %75, label %58

58:                                               ; preds = %51
  %59 = tail call fastcc ptr @tree_fold_binomial(ptr noundef %6, ptr noundef %2, i32 noundef %3)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  br label %75

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.tree_exp, ptr %41, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  %66 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %6, ptr noundef %65, ptr noundef nonnull %59) #14
  %67 = tail call ptr @chrec_fold_plus(ptr noundef %6, ptr noundef %66, ptr noundef %55)
  br label %75

68:                                               ; preds = %45, %40
  %69 = tail call fastcc ptr @tree_fold_binomial(ptr noundef %6, ptr noundef %2, i32 noundef %3)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  br label %75

73:                                               ; preds = %68
  %74 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %6, ptr noundef nonnull %41, ptr noundef nonnull %69) #14
  br label %75

75:                                               ; preds = %51, %73, %71, %63, %61
  %76 = phi ptr [ %67, %63 ], [ %62, %61 ], [ %74, %73 ], [ %72, %71 ], [ %56, %51 ]
  ret ptr %76
}

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @chrec_replace_initial_condition(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %4 = icmp ne ptr %3, %0
  %5 = load ptr, ptr @chrec_known, align 8
  %6 = icmp ne ptr %5, %0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp ne ptr %3, %1
  %12 = icmp ne ptr %5, %1
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  br label %17

17:                                               ; preds = %8, %14
  %18 = phi ptr [ %16, %14 ], [ null, %8 ]
  %19 = icmp eq ptr %10, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 645, ptr noundef nonnull @.str.7) #14
  br label %21

21:                                               ; preds = %17, %20
  %22 = load i64, ptr %0, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 146
  br i1 %24, label %27, label %25

25:                                               ; preds = %2, %21, %27
  %26 = phi ptr [ %38, %27 ], [ %0, %2 ], [ %1, %21 ]
  ret ptr %26

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.tree_int_cst, ptr %29, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !46
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = tail call ptr @chrec_replace_initial_condition(ptr noundef %34, ptr noundef %1)
  %36 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %32, ptr noundef %35, ptr noundef %37)
  br label %25
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @initial_condition(ptr noundef readonly %0) local_unnamed_addr #11 !prof !34 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ %0, %1 ], [ %15, %13 ]
  %4 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %5 = icmp ne ptr %4, %3
  %6 = load ptr, ptr @chrec_known, align 8
  %7 = icmp ne ptr %6, %3
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 146
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  br label %2

16:                                               ; preds = %9, %2
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @hide_evolution_in_other_loops_than_loop(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  br label %3

3:                                                ; preds = %49, %2
  %4 = phi ptr [ %0, %2 ], [ %51, %49 ]
  %5 = load ptr, ptr @cfun, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.loops, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %9, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %14 = icmp ne ptr %13, %4
  %15 = load ptr, ptr @chrec_known, align 8
  %16 = icmp ne ptr %15, %4
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load i64, ptr %4, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 146
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.tree_int_cst, ptr %24, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !46
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %9, i64 0, i32 2, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = icmp eq ptr %29, %12
  br i1 %30, label %33, label %40

31:                                               ; preds = %43, %3, %18, %33
  %32 = phi ptr [ %39, %33 ], [ %44, %43 ], [ %4, %3 ], [ %4, %18 ]
  ret ptr %32

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = tail call ptr @hide_evolution_in_other_loops_than_loop(ptr noundef %35, i32 noundef %1)
  %37 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %1, ptr noundef %36, ptr noundef %38)
  br label %31

40:                                               ; preds = %22
  %41 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %29, ptr noundef %12) #14
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = tail call ptr @initial_condition(ptr noundef nonnull %4)
  br label %31

45:                                               ; preds = %40
  %46 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %12, ptr noundef %29) #14
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 703, ptr noundef nonnull @.str.7) #14
  br label %49

49:                                               ; preds = %45, %48
  %50 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  br label %3
}

declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @evolution_part_in_loop_num(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = tail call fastcc ptr @chrec_component_in_loop_num(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1)
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @chrec_component_in_loop_num(ptr noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !34 {
  br label %4

4:                                                ; preds = %60, %3
  %5 = phi ptr [ %0, %3 ], [ %62, %60 ]
  %6 = load ptr, ptr @cfun, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.loops, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %10, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %15 = icmp ne ptr %14, %5
  %16 = load ptr, ptr @chrec_known, align 8
  %17 = icmp ne ptr %16, %5
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %48

19:                                               ; preds = %4
  %20 = load i64, ptr %5, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 146
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.tree_int_cst, ptr %25, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !46
  %28 = and i64 %27, 4294967295
  %29 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %10, i64 0, i32 2, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = icmp eq ptr %30, %13
  br i1 %31, label %32, label %53

32:                                               ; preds = %23
  %33 = icmp eq i8 %2, 0
  %34 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %35 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %36 = select i1 %33, ptr %35, ptr %34
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = load ptr, ptr %35, align 8, !tbaa !46
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 146
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.tree_exp, ptr %38, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.tree_int_cst, ptr %44, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !46
  %47 = icmp eq i64 %46, %27
  br i1 %47, label %50, label %48

48:                                               ; preds = %4, %42, %32, %53, %63, %50
  %49 = phi ptr [ %52, %50 ], [ %5, %4 ], [ %37, %42 ], [ %37, %32 ], [ null, %53 ], [ %65, %63 ]
  ret ptr %49

50:                                               ; preds = %42
  %51 = tail call fastcc ptr @chrec_component_in_loop_num(ptr noundef nonnull %38, i32 noundef %1, i8 noundef zeroext %2)
  %52 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %1, ptr noundef %51, ptr noundef %37)
  br label %48

53:                                               ; preds = %23
  %54 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %30, ptr noundef %13) #14
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %48

56:                                               ; preds = %53
  %57 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %13, ptr noundef %30) #14
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 758, ptr noundef nonnull @.str.7) #14
  br label %60

60:                                               ; preds = %56, %59
  %61 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  br label %4

63:                                               ; preds = %19
  %64 = icmp eq i8 %2, 0
  %65 = select i1 %64, ptr %5, ptr null
  br label %48
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @initial_condition_in_loop_num(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = tail call fastcc ptr @chrec_component_in_loop_num(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0)
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @reset_evolution_in_loop(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.loops, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %8, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %13 = icmp ne ptr %12, %1
  %14 = load ptr, ptr @chrec_known, align 8
  %15 = icmp ne ptr %14, %1
  tail call void @llvm.assume(i1 %13)
  tail call void @llvm.assume(i1 %15)
  %16 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %31 [
    i16 10, label %20
    i16 12, label %20
  ]

20:                                               ; preds = %3, %3
  %21 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %22 = icmp ne ptr %12, %2
  %23 = icmp ne ptr %14, %2
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  br label %28

28:                                               ; preds = %20, %25
  %29 = phi ptr [ %27, %25 ], [ null, %20 ]
  %30 = icmp eq ptr %21, %29
  br i1 %30, label %43, label %41

31:                                               ; preds = %3
  %32 = icmp ne ptr %12, %2
  %33 = icmp ne ptr %14, %2
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  br label %38

38:                                               ; preds = %31, %35
  %39 = phi ptr [ %37, %35 ], [ null, %31 ]
  %40 = icmp eq ptr %17, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %38, %28
  %42 = phi i32 [ 807, %28 ], [ 809, %38 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef %42, ptr noundef nonnull @.str.7) #14
  br label %43

43:                                               ; preds = %41, %38, %28
  %44 = load i64, ptr %1, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 146
  br i1 %46, label %47, label %78

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = getelementptr inbounds %struct.tree_int_cst, ptr %49, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !46
  %52 = load ptr, ptr @cfun, align 8, !tbaa !35
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !57
  %55 = getelementptr inbounds %struct.loops, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !59
  %57 = and i64 %51, 4294967295
  %58 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %56, i64 0, i32 2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  %60 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %11, ptr noundef %59) #14
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %78, label %64

62:                                               ; preds = %95, %64
  %63 = phi ptr [ %77, %64 ], [ %97, %95 ]
  ret ptr %63

64:                                               ; preds = %47
  %65 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  %67 = tail call ptr @reset_evolution_in_loop(i32 noundef %0, ptr noundef %66, ptr noundef %2)
  %68 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !46
  %70 = tail call ptr @reset_evolution_in_loop(i32 noundef %0, ptr noundef %69, ptr noundef %2)
  %71 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = load ptr, ptr %48, align 8, !tbaa !46
  %74 = getelementptr inbounds %struct.tree_int_cst, ptr %73, i64 0, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !46
  %76 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %75) #14
  %77 = tail call ptr @build3_stat(i32 noundef 146, ptr noundef %72, ptr noundef %76, ptr noundef %67, ptr noundef %70) #14
  br label %62

78:                                               ; preds = %47, %43
  %79 = load i64, ptr %1, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 146
  br i1 %81, label %82, label %95

82:                                               ; preds = %78, %89
  %83 = phi ptr [ %91, %89 ], [ %1, %78 ]
  %84 = getelementptr inbounds %struct.tree_exp, ptr %83, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  %86 = getelementptr inbounds %struct.tree_int_cst, ptr %85, i64 0, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !46
  %88 = icmp eq i64 %87, %9
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.tree_exp, ptr %83, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !46
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 146
  br i1 %94, label %82, label %95, !llvm.loop !63

95:                                               ; preds = %82, %89, %78
  %96 = phi ptr [ %1, %78 ], [ %83, %82 ], [ %91, %89 ]
  %97 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %0, ptr noundef nonnull %96, ptr noundef %2)
  br label %62
}

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @chrec_merge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %4 = icmp eq ptr %3, %0
  %5 = icmp eq ptr %3, %1
  %6 = or i1 %4, %5
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @chrec_known, align 8, !tbaa !35
  %9 = icmp eq ptr %8, %0
  %10 = icmp eq ptr %8, %1
  %11 = or i1 %9, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !35
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = icmp eq ptr %13, %1
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  %18 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %0, ptr noundef %1)
  %19 = icmp eq i8 %18, 0
  %20 = load ptr, ptr @chrec_dont_know, align 8
  %21 = select i1 %19, ptr %20, ptr %0
  br label %22

22:                                               ; preds = %7, %2, %17, %15, %12
  %23 = phi ptr [ %1, %12 ], [ %0, %15 ], [ %21, %17 ], [ %3, %2 ], [ %8, %7 ]
  ret ptr %23
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @eq_evolutions_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %0, align 8
  %8 = load i64, ptr %1, align 8
  %9 = xor i64 %8, %7
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %6
  %13 = icmp eq ptr %0, %1
  br i1 %13, label %36, label %14

14:                                               ; preds = %12
  %15 = trunc i64 %7 to i16
  switch i16 %15, label %36 [
    i16 23, label %16
    i16 146, label %19
  ]

16:                                               ; preds = %14
  %17 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #14
  %18 = trunc i32 %17 to i8
  br label %36

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.tree_int_cst, ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.tree_int_cst, ptr %25, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !46
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %31, ptr noundef %33)
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %16, %6, %2, %12, %29, %19, %14, %38
  %37 = phi i8 [ %45, %38 ], [ %18, %16 ], [ 0, %6 ], [ 0, %2 ], [ 1, %12 ], [ 0, %29 ], [ 0, %19 ], [ 0, %14 ]
  ret i8 %37

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %40, ptr noundef %42)
  %44 = icmp ne i8 %43, 0
  %45 = zext i1 %44 to i8
  br label %36
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @is_multivariate_chrec(ptr noundef readonly %0) local_unnamed_addr #11 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 146
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load ptr, ptr %8, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.tree_int_cst, ptr %11, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !46
  %14 = trunc i64 %13 to i32
  %15 = tail call fastcc zeroext i8 @is_multivariate_chrec_rec(ptr noundef %10, i32 noundef %14), !range !54
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = tail call fastcc zeroext i8 @is_multivariate_chrec_rec(ptr noundef %19, i32 noundef %14), !range !54
  br label %21

21:                                               ; preds = %3, %7, %17, %1
  %22 = phi i8 [ 0, %1 ], [ 1, %7 ], [ %20, %17 ], [ 0, %3 ]
  ret i8 %22
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @is_multivariate_chrec_rec(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !34 {
  br label %3

3:                                                ; preds = %22, %2
  %4 = phi ptr [ %0, %2 ], [ %24, %22 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 146
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.tree_int_cst, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !46
  %15 = zext i32 %1 to i64
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = tail call fastcc zeroext i8 @is_multivariate_chrec_rec(ptr noundef %19, i32 noundef %1), !range !54
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  br label %3

25:                                               ; preds = %6, %17, %10, %3
  %26 = phi i8 [ 0, %3 ], [ 1, %10 ], [ 1, %17 ], [ 0, %6 ]
  ret i8 %26
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @chrec_contains_symbols(ptr noundef readonly %0) local_unnamed_addr #11 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %6 [
    i16 141, label %35
    i16 32, label %35
    i16 34, label %35
    i16 29, label %35
    i16 30, label %35
    i16 36, label %35
    i16 31, label %35
  ]

6:                                                ; preds = %3
  %7 = and i64 %4, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.tree_int_cst, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !46
  %16 = trunc i64 %15 to i32
  br label %21

17:                                               ; preds = %6
  %18 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %7
  %19 = load i8, ptr %18, align 1, !tbaa !46
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %11, %17
  %22 = phi i32 [ %16, %11 ], [ %20, %17 ]
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = zext nneg i32 %22 to i64
  br label %29

26:                                               ; preds = %29
  %27 = add nuw nsw i64 %30, 1
  %28 = icmp eq i64 %27, %25
  br i1 %28, label %35, label %29, !llvm.loop !64

29:                                               ; preds = %24, %26
  %30 = phi i64 [ 0, %24 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef %32), !range !54
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %26, label %35

35:                                               ; preds = %29, %26, %21, %3, %3, %3, %3, %3, %3, %3, %1
  %36 = phi i8 [ 0, %1 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 0, %21 ], [ 0, %26 ], [ 1, %29 ]
  ret i8 %36
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @chrec_contains_undetermined(ptr noundef readonly %0) local_unnamed_addr #11 !prof !34 {
  %2 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.tree_int_cst, ptr %14, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !46
  %17 = trunc i64 %16 to i32
  br label %22

18:                                               ; preds = %6
  %19 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %8
  %20 = load i8, ptr %19, align 1, !tbaa !46
  %21 = zext i8 %20 to i32
  br label %22

22:                                               ; preds = %12, %18
  %23 = phi i32 [ %17, %12 ], [ %21, %18 ]
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = zext nneg i32 %23 to i64
  br label %30

27:                                               ; preds = %30
  %28 = add nuw nsw i64 %31, 1
  %29 = icmp eq i64 %28, %26
  br i1 %29, label %36, label %30, !llvm.loop !65

30:                                               ; preds = %25, %27
  %31 = phi i64 [ 0, %25 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %33), !range !54
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %27, label %36

36:                                               ; preds = %30, %27, %22, %4, %1
  %37 = phi i8 [ 1, %1 ], [ 0, %4 ], [ 0, %22 ], [ 0, %27 ], [ 1, %30 ]
  ret i8 %37
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @evolution_function_is_invariant_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %0, i32 noundef %1), !range !54
  ret i8 %3
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !34 {
  br label %3

3:                                                ; preds = %69, %2
  %4 = phi ptr [ %0, %2 ], [ %71, %69 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %4, align 8
  %8 = trunc i64 %7 to i16
  %9 = add i16 %8, -25
  %10 = icmp ult i16 %9, -2
  br i1 %10, label %11, label %72

11:                                               ; preds = %3, %6
  %12 = load i64, ptr %4, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %72, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr @cfun, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.loops, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = zext i32 %1 to i64
  %24 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %22, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %25, ptr noundef nonnull %4) #14
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %17, %11
  %29 = load i64, ptr %4, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 146
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = getelementptr inbounds %struct.tree_int_cst, ptr %34, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !46
  %37 = zext i32 %1 to i64
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %72, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %41, i32 noundef %1), !range !54
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %72, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  br label %69

46:                                               ; preds = %28
  %47 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %30
  %48 = load i32, ptr %47, align 4, !tbaa !50
  %49 = icmp eq i32 %48, 9
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.tree_int_cst, ptr %52, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !46
  %55 = trunc i64 %54 to i32
  br label %60

56:                                               ; preds = %46
  %57 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %30
  %58 = load i8, ptr %57, align 1, !tbaa !46
  %59 = zext i8 %58 to i32
  br label %60

60:                                               ; preds = %50, %56
  %61 = phi i32 [ %55, %50 ], [ %59, %56 ]
  switch i32 %61, label %72 [
    i32 2, label %62
    i32 1, label %67
  ]

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  %65 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %64, i32 noundef %1), !range !54
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62, %60
  %68 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  br label %69

69:                                               ; preds = %67, %44
  %70 = phi ptr [ %45, %44 ], [ %68, %67 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  br label %3

72:                                               ; preds = %62, %60, %32, %39, %15, %17, %6
  %73 = phi i8 [ 1, %6 ], [ 1, %17 ], [ 1, %15 ], [ 0, %39 ], [ 0, %32 ], [ 0, %60 ], [ 0, %62 ]
  ret i8 %73
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %56, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 146
  br i1 %7, label %8, label %56

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %11, i32 noundef %1), !range !54
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %15, i32 noundef %1), !range !54
  %17 = icmp eq i8 %16, 0
  br i1 %13, label %37, label %18

18:                                               ; preds = %8
  br i1 %17, label %19, label %56

19:                                               ; preds = %18
  %20 = load ptr, ptr %14, align 8, !tbaa !46
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 146
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.tree_int_cst, ptr %26, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !46
  %29 = load ptr, ptr %9, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.tree_int_cst, ptr %29, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !46
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef nonnull %20, i32 noundef %1), !range !54
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %33, %24, %19
  br label %56

37:                                               ; preds = %8
  br i1 %17, label %55, label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %10, align 8, !tbaa !46
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 146
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = getelementptr inbounds %struct.tree_int_cst, ptr %45, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !46
  %48 = load ptr, ptr %9, align 8, !tbaa !46
  %49 = getelementptr inbounds %struct.tree_int_cst, ptr %48, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !46
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef nonnull %39, i32 noundef %1), !range !54
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %43, %38, %37
  br label %56

56:                                               ; preds = %4, %52, %33, %18, %2, %55, %36
  %57 = phi i8 [ 0, %36 ], [ 0, %55 ], [ 0, %2 ], [ 1, %18 ], [ 1, %33 ], [ 1, %52 ], [ 0, %4 ]
  ret i8 %57
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @evolution_function_is_univariate_p(ptr noundef readonly %0) local_unnamed_addr #11 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 146
  br i1 %6, label %7, label %44

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 146
  br i1 %13, label %14, label %26

14:                                               ; preds = %7
  %15 = load ptr, ptr %8, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %15, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.tree_int_cst, ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !46
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %14
  %24 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef nonnull %10), !range !54
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %7, %23
  %27 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 146
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load ptr, ptr %8, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct.tree_int_cst, ptr %33, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = getelementptr inbounds %struct.tree_int_cst, ptr %37, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !46
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef nonnull %28), !range !54
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %26, %3
  br label %45

45:                                               ; preds = %41, %32, %23, %14, %1, %44
  %46 = phi i8 [ 1, %44 ], [ 1, %1 ], [ 0, %14 ], [ 0, %23 ], [ 0, %32 ], [ 0, %41 ]
  ret i8 %46
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @nb_vars_in_chrec(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi i32 [ 0, %1 ], [ %17, %10 ]
  %4 = phi ptr [ %0, %1 ], [ %16, %10 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 146
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.tree_int_cst, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !46
  %15 = trunc i64 %14 to i32
  %16 = tail call fastcc ptr @chrec_component_in_loop_num(ptr noundef nonnull %4, i32 noundef %15, i8 noundef zeroext 0)
  %17 = add i32 %3, 1
  br label %2

18:                                               ; preds = %6, %2
  %19 = add i32 %3, 0
  ret i32 %19
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @convert_affine_scev(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #9 !prof !34 {
  %7 = load ptr, ptr %3, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = load i64, ptr %1, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %14 [
    i16 10, label %12
    i16 12, label %12
  ]

12:                                               ; preds = %6, %6
  %13 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi ptr [ %13, %12 ], [ %1, %6 ]
  %16 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1023
  %19 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1023
  %22 = icmp uge i32 %18, %21
  %23 = icmp eq i8 %5, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %14
  %25 = tail call zeroext i8 @nowrap_type_p(ptr noundef nonnull %1) #14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %24
  br i1 %22, label %37, label %28

28:                                               ; preds = %27
  %29 = load i64, ptr %1, align 8
  %30 = and i64 %29, 2097152
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, ptr %9, align 8
  %34 = and i64 %33, 2097152
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %32, %28
  br label %50

37:                                               ; preds = %27
  %38 = load i64, ptr %9, align 8
  %39 = load i64, ptr %1, align 8
  %40 = xor i64 %39, %38
  %41 = and i64 %40, 2097152
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, ptr %16, align 4
  %45 = load i32, ptr %19, align 4
  %46 = xor i32 %45, %44
  %47 = and i32 %46, 1023
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43, %37
  br label %50

50:                                               ; preds = %24, %14, %43, %32, %36, %49
  %51 = phi i1 [ true, %36 ], [ false, %49 ], [ false, %32 ], [ true, %43 ], [ true, %14 ], [ true, %24 ]
  %52 = phi i1 [ false, %36 ], [ true, %49 ], [ false, %32 ], [ false, %43 ], [ %22, %14 ], [ %22, %24 ]
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %2, align 8, !tbaa !35
  %55 = load ptr, ptr %3, align 8, !tbaa !35
  %56 = tail call zeroext i8 @scev_probably_wraps_p(ptr noundef %54, ptr noundef %55, ptr noundef %4, ptr noundef %0, i8 noundef zeroext %5) #14
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %53, %50
  %59 = load ptr, ptr %2, align 8, !tbaa !35
  %60 = tail call fastcc ptr @chrec_convert_1(ptr noundef nonnull %1, ptr noundef %59, ptr noundef %4, i8 noundef zeroext %5)
  %61 = load ptr, ptr %3, align 8, !tbaa !35
  %62 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 1023
  %65 = load i32, ptr %16, align 4
  %66 = and i32 %65, 1023
  %67 = icmp ugt i32 %64, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %58
  %69 = load i64, ptr %9, align 8
  %70 = and i64 %69, 2097152
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = tail call ptr @signed_type_for(ptr noundef nonnull %9) #14
  %74 = tail call fastcc ptr @chrec_convert_1(ptr noundef %73, ptr noundef %61, ptr noundef %4, i8 noundef zeroext %5)
  br label %75

75:                                               ; preds = %72, %68, %58
  %76 = phi ptr [ %74, %72 ], [ %61, %68 ], [ %61, %58 ]
  %77 = tail call fastcc ptr @chrec_convert_1(ptr noundef %15, ptr noundef %76, ptr noundef %4, i8 noundef zeroext %5)
  %78 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %79 = icmp ne ptr %78, %60
  %80 = load ptr, ptr @chrec_known, align 8
  %81 = icmp ne ptr %80, %60
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %92

83:                                               ; preds = %75
  %84 = icmp ne ptr %78, %77
  %85 = icmp ne ptr %80, %77
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  br i1 %51, label %91, label %88

88:                                               ; preds = %87
  %89 = tail call zeroext i8 @scev_probably_wraps_p(ptr noundef %60, ptr noundef %77, ptr noundef %4, ptr noundef %0, i8 noundef zeroext 0) #14
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88, %87
  store ptr %60, ptr %2, align 8, !tbaa !35
  store ptr %77, ptr %3, align 8, !tbaa !35
  br label %92

92:                                               ; preds = %88, %75, %83, %53, %91
  %93 = phi i8 [ 1, %91 ], [ 0, %53 ], [ 0, %83 ], [ 0, %75 ], [ 0, %88 ]
  ret i8 %93
}

declare zeroext i8 @nowrap_type_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @scev_probably_wraps_p(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @chrec_convert_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #9 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %7 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %8 = icmp ne ptr %7, %1
  %9 = load ptr, ptr @chrec_known, align 8
  %10 = icmp ne ptr %9, %1
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %133

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %133, label %16

16:                                               ; preds = %12
  %17 = icmp eq ptr %1, null
  br i1 %17, label %65, label %18

18:                                               ; preds = %16
  %19 = load i64, ptr %1, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 146
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %24 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = load ptr, ptr %23, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.tree_int_cst, ptr %26, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !46
  %29 = trunc i64 %28 to i32
  %30 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %25, i32 noundef %29), !range !54
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %65, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = load ptr, ptr %23, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.tree_int_cst, ptr %35, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !46
  %38 = trunc i64 %37 to i32
  %39 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %34, i32 noundef %38), !range !54
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %65, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.tree_int_cst, ptr %43, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !46
  %46 = load ptr, ptr @cfun, align 8, !tbaa !35
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !57
  %49 = getelementptr inbounds %struct.loops, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !59
  %51 = and i64 %45, 4294967295
  %52 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %50, i64 0, i32 2, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  store ptr %55, ptr %5, align 8, !tbaa !35
  %56 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  store ptr %57, ptr %6, align 8, !tbaa !35
  %58 = call zeroext i8 @convert_affine_scev(ptr noundef %53, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2, i8 noundef zeroext %3), !range !54
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %41
  %61 = load i32, ptr %53, align 8, !tbaa !66
  %62 = load ptr, ptr %5, align 8, !tbaa !35
  %63 = load ptr, ptr %6, align 8, !tbaa !35
  %64 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %61, ptr noundef %62, ptr noundef %63)
  br label %133

65:                                               ; preds = %22, %32, %16, %18, %41
  %66 = icmp eq i8 %3, 0
  br i1 %66, label %109, label %67

67:                                               ; preds = %65
  %68 = load i64, ptr %1, align 8
  %69 = trunc i64 %68 to i32
  %70 = and i32 %69, 65535
  %71 = add nsw i32 %70, -63
  %72 = icmp ult i32 %71, 2
  br i1 %72, label %73, label %109

73:                                               ; preds = %67
  %74 = load i64, ptr %0, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 8
  br i1 %76, label %77, label %109

77:                                               ; preds = %73
  %78 = load i64, ptr %14, align 8
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 8
  br i1 %80, label %81, label %109

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 1023
  %85 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 1023
  %88 = icmp ugt i32 %84, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %81
  %90 = and i64 %78, 2097152
  %91 = icmp eq i64 %90, 0
  %92 = load i32, ptr @flag_wrapv, align 4
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %91, i1 %93, i1 false
  %95 = load i32, ptr @flag_trapv, align 4
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %94, i1 %96, i1 false
  %98 = load i32, ptr @flag_strict_overflow, align 4
  %99 = icmp ne i32 %98, 0
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %109

101:                                              ; preds = %89
  %102 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  %104 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %103) #14
  %105 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !46
  %107 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %106) #14
  %108 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %70, ptr noundef nonnull %0, ptr noundef %104, ptr noundef %107) #14
  br label %111

109:                                              ; preds = %67, %89, %81, %77, %73, %65
  %110 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %1) #14
  br label %111

111:                                              ; preds = %109, %101
  %112 = phi ptr [ %108, %101 ], [ %110, %109 ]
  %113 = load i64, ptr %112, align 8
  %114 = and i64 %113, 65535
  %115 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !50
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = and i64 %113, -134217729
  store i64 %119, ptr %112, align 8
  br label %120

120:                                              ; preds = %118, %111
  %121 = load i64, ptr %112, align 8
  %122 = and i64 %121, 65535
  %123 = icmp eq i64 %122, 23
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load i64, ptr %0, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 8
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = tail call i32 @int_fits_type_p(ptr noundef nonnull %112, ptr noundef nonnull %0) #14
  %130 = icmp eq i32 %129, 0
  %131 = load ptr, ptr @chrec_dont_know, align 8
  %132 = select i1 %130, ptr %131, ptr %112
  br label %133

133:                                              ; preds = %128, %120, %124, %12, %4, %60
  %134 = phi ptr [ %64, %60 ], [ %1, %4 ], [ %1, %12 ], [ %112, %124 ], [ %112, %120 ], [ %132, %128 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %134
}

declare ptr @signed_type_for(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @chrec_convert_aggressive(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %4 = icmp ne ptr %3, %1
  %5 = load ptr, ptr @chrec_known, align 8
  %6 = icmp ne ptr %5, %1
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %51

8:                                                ; preds = %2
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 146
  br i1 %11, label %12, label %51

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1023
  %18 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1023
  %21 = icmp ugt i32 %17, %20
  br i1 %21, label %51, label %22

22:                                               ; preds = %12
  %23 = load i64, ptr %0, align 8
  %24 = trunc i64 %23 to i16
  switch i16 %24, label %27 [
    i16 10, label %25
    i16 12, label %25
  ]

25:                                               ; preds = %22, %22
  %26 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  br label %27

27:                                               ; preds = %22, %25
  %28 = phi ptr [ %26, %25 ], [ %0, %22 ]
  %29 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %30 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = tail call ptr @chrec_convert_aggressive(ptr noundef nonnull %0, ptr noundef %31)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = tail call fastcc ptr @chrec_convert_1(ptr noundef nonnull %0, ptr noundef %31, ptr noundef null, i8 noundef zeroext 1)
  br label %38

38:                                               ; preds = %36, %27
  %39 = phi ptr [ %34, %27 ], [ %37, %36 ]
  %40 = tail call ptr @chrec_convert_aggressive(ptr noundef %28, ptr noundef %33)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = tail call fastcc ptr @chrec_convert_1(ptr noundef %28, ptr noundef %33, ptr noundef null, i8 noundef zeroext 1)
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi ptr [ %40, %38 ], [ %43, %42 ]
  %46 = load ptr, ptr %29, align 8, !tbaa !46
  %47 = getelementptr inbounds %struct.tree_int_cst, ptr %46, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !46
  %49 = trunc i64 %48 to i32
  %50 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %49, ptr noundef %39, ptr noundef %45)
  br label %51

51:                                               ; preds = %12, %2, %8, %44
  %52 = phi ptr [ %50, %44 ], [ null, %8 ], [ null, %2 ], [ null, %12 ]
  ret ptr %52
}

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @scev_direction(ptr noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 146
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load ptr, ptr %8, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.tree_int_cst, ptr %11, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !46
  %14 = trunc i64 %13 to i32
  %15 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %10, i32 noundef %14), !range !54
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = load ptr, ptr %8, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.tree_int_cst, ptr %20, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !46
  %23 = trunc i64 %22 to i32
  %24 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %19, i32 noundef %23), !range !54
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 23
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %28) #14
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %7, %17, %1, %3, %32, %26
  %37 = phi i32 [ 2, %26 ], [ %35, %32 ], [ 2, %3 ], [ 2, %1 ], [ 2, %17 ], [ 2, %7 ]
  ret i32 %37
}

declare i32 @tree_int_cst_sign_bit(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @for_each_scev_op(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !46
  switch i8 %8, label %17 [
    i8 3, label %9
    i8 2, label %11
    i8 1, label %14
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  tail call void @for_each_scev_op(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2)
  br label %11

11:                                               ; preds = %3, %9
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  tail call void @for_each_scev_op(ptr noundef nonnull %13, ptr noundef %1, ptr noundef %2)
  br label %14

14:                                               ; preds = %3, %11
  %15 = load ptr, ptr %0, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  tail call void @for_each_scev_op(ptr noundef nonnull %16, ptr noundef %1, ptr noundef %2)
  br label %17

17:                                               ; preds = %3, %14
  %18 = tail call zeroext i8 %1(ptr noundef nonnull %0, ptr noundef %2) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @scev_is_linear_expression(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %52, %49, %41, %1
  %3 = phi ptr [ %0, %1 ], [ %43, %41 ], [ %51, %49 ], [ %54, %52 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %3, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %56 [
    i16 65, label %8
    i16 146, label %18
    i16 23, label %26
    i16 63, label %26
    i16 64, label %26
    i16 66, label %26
    i16 79, label %26
    i16 90, label %26
    i16 113, label %26
    i16 116, label %26
    i16 117, label %26
    i16 141, label %26
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef %10, ptr noundef null), !range !54
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %56, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef %15, ptr noundef null), !range !54
  %17 = xor i8 %16, 1
  br label %56

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.tree_int_cst, ptr %20, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !46
  %23 = trunc i64 %22 to i32
  %24 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef nonnull %3, i32 noundef %23), !range !54
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %18
  %27 = load i64, ptr %3, align 8
  %28 = and i64 %27, 65535
  %29 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !46
  switch i8 %30, label %55 [
    i8 3, label %31
    i8 2, label %44
    i8 1, label %52
    i8 0, label %56
  ]

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = tail call zeroext i8 @scev_is_linear_expression(ptr noundef %33), !range !54
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = tail call zeroext i8 @scev_is_linear_expression(ptr noundef %38), !range !54
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  br label %2

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = tail call zeroext i8 @scev_is_linear_expression(ptr noundef %46), !range !54
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  br label %2

52:                                               ; preds = %26
  %53 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  br label %2

55:                                               ; preds = %26
  br label %56

56:                                               ; preds = %5, %26, %44, %31, %36, %18, %8, %13, %2, %55
  %57 = phi i8 [ 0, %55 ], [ 0, %2 ], [ 1, %8 ], [ %17, %13 ], [ 0, %18 ], [ 0, %36 ], [ 0, %31 ], [ 0, %44 ], [ 1, %26 ], [ 0, %5 ]
  ret i8 %57
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @evolution_function_right_is_integer_cst(ptr noundef readonly %0) local_unnamed_addr #11 !prof !34 {
  br label %2

2:                                                ; preds = %14, %20, %1
  %3 = phi ptr [ %0, %1 ], [ %22, %20 ], [ %16, %14 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %3, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %23 [
    i16 23, label %24
    i16 146, label %8
    i16 116, label %20
    i16 113, label %20
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 23
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 146
  br i1 %19, label %2, label %24

20:                                               ; preds = %5, %5
  %21 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  br label %2

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %8, %14, %5, %2, %23
  %25 = phi i8 [ 0, %23 ], [ 0, %2 ], [ 1, %5 ], [ 0, %8 ], [ 1, %14 ]
  ret i8 %25
}

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @chrec_fold_plus_poly_poly(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 !prof !34 {
  %5 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.tree_int_cst, ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !46
  %9 = load ptr, ptr @cfun, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.loops, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = and i64 %8, 4294967295
  %15 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %13, i64 0, i32 2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.tree_int_cst, ptr %18, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !46
  %21 = and i64 %20, 4294967295
  %22 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %13, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = icmp eq i32 %0, 66
  %25 = load ptr, ptr @sizetype_tab, align 16
  %26 = select i1 %24, ptr %25, ptr %1
  %27 = icmp eq ptr %2, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 107, ptr noundef nonnull @.str.7) #14
  br label %29

29:                                               ; preds = %4, %28
  %30 = icmp eq ptr %3, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 108, ptr noundef nonnull @.str.7) #14
  br label %32

32:                                               ; preds = %29, %31
  %33 = load i64, ptr %2, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 146
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 109, ptr noundef nonnull @.str.7) #14
  br label %37

37:                                               ; preds = %32, %36
  %38 = load i64, ptr %3, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 146
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 110, ptr noundef nonnull @.str.7) #14
  br label %42

42:                                               ; preds = %37, %41
  %43 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %44 = icmp ne ptr %43, %2
  %45 = load ptr, ptr @chrec_known, align 8
  %46 = icmp ne ptr %45, %2
  tail call void @llvm.assume(i1 %44)
  tail call void @llvm.assume(i1 %46)
  %47 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = load i64, ptr %48, align 8
  %50 = trunc i64 %49 to i16
  switch i16 %50, label %62 [
    i16 10, label %51
    i16 12, label %51
  ]

51:                                               ; preds = %42, %42
  %52 = icmp ne ptr %43, %3
  %53 = icmp ne ptr %45, %3
  %54 = and i1 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  br label %58

58:                                               ; preds = %51, %55
  %59 = phi ptr [ %57, %55 ], [ null, %51 ]
  %60 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %74, label %72

62:                                               ; preds = %42
  %63 = icmp ne ptr %43, %3
  %64 = icmp ne ptr %45, %3
  %65 = and i1 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !46
  br label %69

69:                                               ; preds = %62, %66
  %70 = phi ptr [ %68, %66 ], [ null, %62 ]
  %71 = icmp eq ptr %48, %70
  br i1 %71, label %74, label %72

72:                                               ; preds = %69, %58
  %73 = phi i32 [ 112, %58 ], [ 114, %69 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef %73, ptr noundef nonnull @.str.7) #14
  br label %74

74:                                               ; preds = %72, %69, %58
  %75 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %76 = icmp ne ptr %75, %2
  %77 = load ptr, ptr @chrec_known, align 8
  %78 = icmp ne ptr %77, %2
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load ptr, ptr %47, align 8, !tbaa !46
  br label %82

82:                                               ; preds = %74, %80
  %83 = phi ptr [ %81, %80 ], [ null, %74 ]
  %84 = icmp eq ptr %83, %1
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 115, ptr noundef nonnull @.str.7) #14
  br label %86

86:                                               ; preds = %82, %85
  %87 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %16, ptr noundef %23) #14
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %122, label %89

89:                                               ; preds = %86
  switch i32 %0, label %101 [
    i32 66, label %90
    i32 63, label %90
  ]

90:                                               ; preds = %89, %89
  %91 = load ptr, ptr %17, align 8, !tbaa !46
  %92 = getelementptr inbounds %struct.tree_int_cst, ptr %91, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !46
  %94 = trunc i64 %93 to i32
  %95 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !46
  %97 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %96)
  %98 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  %100 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %94, ptr noundef %97, ptr noundef %99)
  br label %192

101:                                              ; preds = %89
  %102 = load ptr, ptr %17, align 8, !tbaa !46
  %103 = getelementptr inbounds %struct.tree_int_cst, ptr %102, i64 0, i32 1
  %104 = load i64, ptr %103, align 8, !tbaa !46
  %105 = trunc i64 %104 to i32
  %106 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  %108 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %107)
  %109 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  %111 = load i64, ptr %1, align 8
  %112 = and i64 %111, 65535
  %113 = icmp eq i64 %112, 9
  br i1 %113, label %114, label %116

114:                                              ; preds = %101
  %115 = tail call ptr @build_real(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.real_value) align 8 @dconstm1) #14
  br label %118

116:                                              ; preds = %101
  %117 = tail call ptr @build_int_cst_type(ptr noundef nonnull %1, i64 noundef -1) #14
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi ptr [ %115, %114 ], [ %117, %116 ]
  %120 = tail call ptr @chrec_fold_multiply(ptr noundef nonnull %1, ptr noundef %110, ptr noundef %119)
  %121 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %105, ptr noundef %108, ptr noundef %120)
  br label %192

122:                                              ; preds = %86
  %123 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %23, ptr noundef %16) #14
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %148, label %125

125:                                              ; preds = %122
  switch i32 %0, label %137 [
    i32 66, label %126
    i32 63, label %126
  ]

126:                                              ; preds = %125, %125
  %127 = load ptr, ptr %5, align 8, !tbaa !46
  %128 = getelementptr inbounds %struct.tree_int_cst, ptr %127, i64 0, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !46
  %130 = trunc i64 %129 to i32
  %131 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !46
  %133 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef %132, ptr noundef nonnull %3)
  %134 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !46
  %136 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %130, ptr noundef %133, ptr noundef %135)
  br label %192

137:                                              ; preds = %125
  %138 = load ptr, ptr %5, align 8, !tbaa !46
  %139 = getelementptr inbounds %struct.tree_int_cst, ptr %138, i64 0, i32 1
  %140 = load i64, ptr %139, align 8, !tbaa !46
  %141 = trunc i64 %140 to i32
  %142 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !46
  %144 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef %143, ptr noundef nonnull %3)
  %145 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !46
  %147 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %141, ptr noundef %144, ptr noundef %146)
  br label %192

148:                                              ; preds = %122
  %149 = icmp eq ptr %16, %23
  br i1 %149, label %151, label %150

150:                                              ; preds = %148
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 154, ptr noundef nonnull @.str.7) #14
  br label %151

151:                                              ; preds = %148, %150
  switch i32 %0, label %163 [
    i32 66, label %152
    i32 63, label %152
  ]

152:                                              ; preds = %151, %151
  %153 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !46
  %155 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !46
  %157 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef %154, ptr noundef %156)
  %158 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !46
  %160 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !46
  %162 = tail call ptr @chrec_fold_plus(ptr noundef %26, ptr noundef %159, ptr noundef %161)
  br label %174

163:                                              ; preds = %151
  %164 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %165 = load ptr, ptr %164, align 8, !tbaa !46
  %166 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !46
  %168 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef %165, ptr noundef %167)
  %169 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !46
  %171 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !46
  %173 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef %170, ptr noundef %172)
  br label %174

174:                                              ; preds = %163, %152
  %175 = phi ptr [ %162, %152 ], [ %173, %163 ]
  %176 = phi ptr [ %157, %152 ], [ %168, %163 ]
  %177 = icmp eq ptr %175, null
  br i1 %177, label %186, label %178

178:                                              ; preds = %174
  %179 = load i64, ptr %175, align 8
  %180 = and i64 %179, 65535
  %181 = icmp eq i64 %180, 23
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = tail call i32 @integer_zerop(ptr noundef nonnull %175) #14
  %184 = and i32 %183, 255
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %174, %178, %182
  %187 = load ptr, ptr %5, align 8, !tbaa !46
  %188 = getelementptr inbounds %struct.tree_int_cst, ptr %187, i64 0, i32 1
  %189 = load i64, ptr %188, align 8, !tbaa !46
  %190 = trunc i64 %189 to i32
  %191 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %190, ptr noundef %176, ptr noundef %175)
  br label %192

192:                                              ; preds = %182, %186, %137, %126, %118, %90
  %193 = phi ptr [ %100, %90 ], [ %121, %118 ], [ %136, %126 ], [ %147, %137 ], [ %191, %186 ], [ %176, %182 ]
  ret ptr %193
}

declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @tree_fold_binomial(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  switch i32 %2, label %16 [
    i32 0, label %12
    i32 1, label %14
  ]

12:                                               ; preds = %3
  %13 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 1) #14
  br label %66

14:                                               ; preds = %3
  %15 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %1) #14
  br label %66

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %18 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !46
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i64, ptr %17, align 8, !tbaa !46
  %23 = zext i32 %2 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %66, label %25

25:                                               ; preds = %21, %16
  %26 = load i64, ptr %17, align 8, !tbaa !46
  store i64 %26, ptr %4, align 8, !tbaa !70
  store i64 %19, ptr %8, align 8, !tbaa !70
  store i64 2, ptr %5, align 8, !tbaa !70
  store i64 0, ptr %9, align 8, !tbaa !70
  %27 = icmp eq i64 %26, 0
  %28 = add i64 %26, -1
  %29 = sext i1 %27 to i64
  %30 = add nsw i64 %19, %29
  %31 = call i32 @mul_double_with_sign(i64 noundef %26, i64 noundef %19, i64 noundef %28, i64 noundef %30, ptr noundef nonnull %4, ptr noundef nonnull %8, i8 noundef zeroext 0) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %25
  %34 = icmp ult i32 %2, 3
  br i1 %34, label %54, label %35

35:                                               ; preds = %33, %47
  %36 = phi i32 [ %52, %47 ], [ 3, %33 ]
  %37 = phi i64 [ %42, %47 ], [ %30, %33 ]
  %38 = phi i64 [ %40, %47 ], [ %28, %33 ]
  %39 = icmp eq i64 %38, 0
  %40 = add i64 %38, -1
  %41 = sext i1 %39 to i64
  %42 = add nsw i64 %37, %41
  %43 = load i64, ptr %4, align 8, !tbaa !70
  %44 = load i64, ptr %8, align 8, !tbaa !70
  %45 = call i32 @mul_double_with_sign(i64 noundef %43, i64 noundef %44, i64 noundef %40, i64 noundef %42, ptr noundef nonnull %4, ptr noundef nonnull %8, i8 noundef zeroext 0) #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %35
  %48 = load i64, ptr %5, align 8, !tbaa !70
  %49 = load i64, ptr %9, align 8, !tbaa !70
  %50 = zext i32 %36 to i64
  %51 = call i32 @mul_double_with_sign(i64 noundef %48, i64 noundef %49, i64 noundef %50, i64 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %9, i8 noundef zeroext 0) #14
  %52 = add i32 %36, 1
  %53 = icmp ugt i32 %52, %2
  br i1 %53, label %54, label %35, !llvm.loop !71

54:                                               ; preds = %47, %33
  %55 = load i64, ptr %4, align 8, !tbaa !70
  %56 = load i64, ptr %8, align 8, !tbaa !70
  %57 = load i64, ptr %5, align 8, !tbaa !70
  %58 = load i64, ptr %9, align 8, !tbaa !70
  %59 = call i32 @div_and_round_double(i32 noundef 76, i32 noundef 1, i64 noundef %55, i64 noundef %56, i64 noundef %57, i64 noundef %58, ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %11) #14
  %60 = load i64, ptr %6, align 8, !tbaa !70
  %61 = load i64, ptr %10, align 8, !tbaa !70
  %62 = call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %60, i64 noundef %61) #14
  %63 = call i32 @int_fits_type_p(ptr noundef %62, ptr noundef %0) #14
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, ptr null, ptr %62
  br label %66

66:                                               ; preds = %35, %25, %21, %54, %14, %12
  %67 = phi ptr [ %13, %12 ], [ %15, %14 ], [ %65, %54 ], [ null, %21 ], [ null, %25 ], [ null, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret ptr %67
}

declare i32 @mul_double_with_sign(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @div_and_round_double(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @int_fits_type_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @expr_invariant_in_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

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
attributes #10 = { cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

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
!54 = !{i8 0, i8 2}
!55 = !{!56, !41, i64 8}
!56 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!57 = !{!58, !36, i64 32}
!58 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!59 = !{!60, !36, i64 8}
!60 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!61 = distinct !{!61, !52, !53}
!62 = distinct !{!62, !52, !53}
!63 = distinct !{!63, !52, !53}
!64 = distinct !{!64, !52, !53}
!65 = distinct !{!65, !52, !53}
!66 = !{!67, !41, i64 0}
!67 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !68, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !69, i64 80, !69, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!68 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!69 = !{!"", !42, i64 0, !42, i64 8}
!70 = !{!42, !42, i64 0}
!71 = distinct !{!71, !52, !53}
