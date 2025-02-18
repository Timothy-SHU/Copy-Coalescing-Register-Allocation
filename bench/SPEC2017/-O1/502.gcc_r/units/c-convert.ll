; ModuleID = 'c-convert.c'
source_filename = "c-convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str = private unnamed_addr constant [41 x i8] c"void value not ignored as it ought to be\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"conversion to non-scalar type requested\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #9
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #9
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #9
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #9
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #9
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #9
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #9
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
  %5 = tail call ptr @__ctype_tolower_loc() #9
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
  %5 = tail call ptr @__ctype_toupper_loc() #9
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #9
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

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @convert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !60 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !56
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %14, !prof !61

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !52
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %16 = load ptr, ptr @global_trees, align 16, !tbaa !41
  %17 = icmp eq ptr %16, %0
  %18 = icmp eq ptr %16, %1
  %19 = or i1 %17, %18
  br i1 %19, label %100, label %20, !prof !62

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = icmp eq ptr %22, %16
  br i1 %23, label %100, label %24, !prof !62

24:                                               ; preds = %20
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 89), align 8, !tbaa !63
  %26 = tail call ptr %25(ptr noundef %22, ptr noundef nonnull %0) #9, !prof !75
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !76

28:                                               ; preds = %24
  tail call void (ptr, ...) @error(ptr noundef nonnull %26) #9
  %29 = load ptr, ptr @global_trees, align 16, !tbaa !41
  br label %100

30:                                               ; preds = %24
  %31 = load ptr, ptr %21, align 8, !tbaa !52
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %100, label %33, !prof !77

33:                                               ; preds = %30
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 95), align 8, !tbaa !78
  %35 = tail call ptr %34(ptr noundef nonnull %0, ptr noundef nonnull %1) #9, !prof !79
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %100, !prof !80

37:                                               ; preds = %33, %46
  %38 = phi ptr [ %44, %46 ], [ %1, %33 ]
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i16
  switch i16 %40, label %52 [
    i16 116, label %41
    i16 113, label %41
    i16 117, label %41
  ], !prof !81

41:                                               ; preds = %37, %37, %37
  %42 = load ptr, ptr @global_trees, align 16
  %43 = getelementptr inbounds %struct.tree_exp, ptr %38, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  %45 = icmp eq ptr %44, %42
  br i1 %45, label %52, label %46, !prof !82

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !52
  %49 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %37, label %52, !prof !82, !llvm.loop !83

52:                                               ; preds = %46, %37, %41
  %53 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %54 = load ptr, ptr %53, align 8, !tbaa !52
  %55 = load ptr, ptr %21, align 8, !tbaa !52
  %56 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 16
  %57 = load ptr, ptr %56, align 8, !tbaa !52
  %58 = icmp eq ptr %54, %57
  br i1 %58, label %59, label %61, !prof !84

59:                                               ; preds = %52
  %60 = tail call ptr @fold_convert_loc(i32 noundef %15, ptr noundef nonnull %0, ptr noundef nonnull %1) #9
  br label %100

61:                                               ; preds = %52
  %62 = load i64, ptr %55, align 8
  %63 = trunc i64 %62 to i16
  switch i16 %63, label %68 [
    i16 0, label %64
    i16 19, label %66
  ], !prof !85

64:                                               ; preds = %61
  %65 = load ptr, ptr @global_trees, align 16, !tbaa !41
  br label %100

66:                                               ; preds = %61
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str) #9
  %67 = load ptr, ptr @global_trees, align 16, !tbaa !41
  br label %100

68:                                               ; preds = %61
  switch i16 %4, label %98 [
    i16 19, label %69
    i16 8, label %71
    i16 6, label %71
    i16 7, label %73
    i16 10, label %77
    i16 12, label %77
    i16 9, label %79
    i16 11, label %81
    i16 13, label %83
    i16 14, label %85
    i16 16, label %87
    i16 17, label %87
  ], !prof !86

69:                                               ; preds = %68
  %70 = tail call ptr @fold_convert_loc(i32 noundef %15, ptr noundef nonnull %0, ptr noundef nonnull %38) #9
  br label %100

71:                                               ; preds = %68, %68
  %72 = tail call ptr @convert_to_integer(ptr noundef nonnull %0, ptr noundef nonnull %38) #9
  br label %91

73:                                               ; preds = %68
  %74 = load i32, ptr @input_location, align 4, !tbaa !56
  %75 = tail call ptr @c_objc_common_truthvalue_conversion(i32 noundef %74, ptr noundef nonnull %1) #9
  %76 = tail call ptr @fold_convert_loc(i32 noundef %15, ptr noundef nonnull %0, ptr noundef %75) #9
  br label %100

77:                                               ; preds = %68, %68
  %78 = tail call ptr @convert_to_pointer(ptr noundef nonnull %0, ptr noundef nonnull %38) #9
  br label %91

79:                                               ; preds = %68
  %80 = tail call ptr @convert_to_real(ptr noundef nonnull %0, ptr noundef nonnull %38) #9
  br label %91

81:                                               ; preds = %68
  %82 = tail call ptr @convert_to_fixed(ptr noundef nonnull %0, ptr noundef nonnull %38) #9
  br label %91

83:                                               ; preds = %68
  %84 = tail call ptr @convert_to_complex(ptr noundef nonnull %0, ptr noundef nonnull %38) #9
  br label %91

85:                                               ; preds = %68
  %86 = tail call ptr @convert_to_vector(ptr noundef nonnull %0, ptr noundef nonnull %38) #9
  br label %91

87:                                               ; preds = %68, %68
  %88 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 24), align 8, !tbaa !87
  %89 = tail call i32 %88(ptr noundef nonnull %0, ptr noundef nonnull %55) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %100

91:                                               ; preds = %85, %83, %81, %79, %77, %71
  %92 = phi ptr [ %86, %85 ], [ %84, %83 ], [ %82, %81 ], [ %80, %79 ], [ %78, %77 ], [ %72, %71 ]
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 189
  br i1 %95, label %100, label %96, !prof !95

96:                                               ; preds = %91
  %97 = tail call ptr @fold(ptr noundef nonnull %92) #9
  br label %100

98:                                               ; preds = %87, %68
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.1) #9
  %99 = load ptr, ptr @global_trees, align 16, !tbaa !41
  br label %100

100:                                              ; preds = %14, %20, %91, %96, %87, %33, %30, %98, %73, %69, %66, %64, %59, %28
  %101 = phi ptr [ %29, %28 ], [ %60, %59 ], [ %65, %64 ], [ %67, %66 ], [ %99, %98 ], [ %76, %73 ], [ %70, %69 ], [ %1, %30 ], [ %35, %33 ], [ %38, %87 ], [ %97, %96 ], [ %92, %91 ], [ %16, %20 ], [ %16, %14 ]
  ret ptr %101
}

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @convert_to_integer(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @c_objc_common_truthvalue_conversion(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @convert_to_pointer(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @convert_to_real(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @convert_to_fixed(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @convert_to_complex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @convert_to_vector(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

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
!35 = !{ptr @convert, ptr @fold_convert_loc, i64 216}
!36 = !{ptr @convert, ptr @convert_to_integer, i64 265762}
!37 = !{ptr @convert, ptr @convert_to_pointer, i64 1595}
!38 = !{ptr @convert, ptr @fold, i64 267357}
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
!60 = !{!"function_entry_count", i64 543936}
!61 = !{!"branch_weights", i32 214932, i32 329004}
!62 = !{!"branch_weights", i32 0, i32 543936}
!63 = !{!64, !42, i64 1664}
!64 = !{!"gcc_target", !65, i64 0, !67, i64 368, !68, i64 664, !47, i64 744, !42, i64 752, !42, i64 760, !42, i64 768, !42, i64 776, !42, i64 784, !42, i64 792, !42, i64 800, !42, i64 808, !42, i64 816, !42, i64 824, !42, i64 832, !42, i64 840, !42, i64 848, !42, i64 856, !42, i64 864, !42, i64 872, !42, i64 880, !42, i64 888, !42, i64 896, !42, i64 904, !42, i64 912, !42, i64 920, !42, i64 928, !42, i64 936, !42, i64 944, !42, i64 952, !42, i64 960, !42, i64 968, !42, i64 976, !42, i64 984, !42, i64 992, !42, i64 1000, !42, i64 1008, !42, i64 1016, !42, i64 1024, !42, i64 1032, !42, i64 1040, !42, i64 1048, !42, i64 1056, !48, i64 1064, !48, i64 1072, !42, i64 1080, !42, i64 1088, !42, i64 1096, !42, i64 1104, !42, i64 1112, !42, i64 1120, !42, i64 1128, !42, i64 1136, !42, i64 1144, !42, i64 1152, !42, i64 1160, !42, i64 1168, !69, i64 1176, !42, i64 1232, !42, i64 1240, !42, i64 1248, !42, i64 1256, !42, i64 1264, !42, i64 1272, !42, i64 1280, !42, i64 1288, !42, i64 1296, !42, i64 1304, !42, i64 1312, !42, i64 1320, !42, i64 1328, !42, i64 1336, !42, i64 1344, !42, i64 1352, !42, i64 1360, !42, i64 1368, !42, i64 1376, !42, i64 1384, !42, i64 1392, !42, i64 1400, !42, i64 1408, !42, i64 1416, !42, i64 1424, !42, i64 1432, !42, i64 1440, !42, i64 1448, !42, i64 1456, !48, i64 1464, !70, i64 1472, !42, i64 1664, !42, i64 1672, !42, i64 1680, !42, i64 1688, !42, i64 1696, !42, i64 1704, !42, i64 1712, !42, i64 1720, !42, i64 1728, !42, i64 1736, !42, i64 1744, !42, i64 1752, !42, i64 1760, !42, i64 1768, !42, i64 1776, !71, i64 1784, !72, i64 1792, !73, i64 1896, !74, i64 1968, !42, i64 2016, !43, i64 2024, !43, i64 2025, !43, i64 2026, !43, i64 2027, !43, i64 2028, !43, i64 2029, !43, i64 2030, !43, i64 2031, !43, i64 2032, !43, i64 2033, !43, i64 2034, !43, i64 2035}
!65 = !{!"asm_out", !42, i64 0, !42, i64 8, !42, i64 16, !66, i64 24, !66, i64 56, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !42, i64 304, !42, i64 312, !42, i64 320, !42, i64 328, !42, i64 336, !42, i64 344, !42, i64 352, !42, i64 360}
!66 = !{!"asm_int_op", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!67 = !{!"sched", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288}
!68 = !{!"vectorize", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72}
!69 = !{!"addr_space", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48}
!70 = !{!"calls", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184}
!71 = !{!"c", !42, i64 0}
!72 = !{!"cxx", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96}
!73 = !{!"emutls", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !43, i64 64, !43, i64 65}
!74 = !{!"target_option_hooks", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40}
!75 = !{!"VP", i32 0, i64 543936, i64 -7019169645189594304, i64 543936}
!76 = !{!"branch_weights", i32 543936, i32 0}
!77 = !{!"branch_weights", i32 276363, i32 267573}
!78 = !{!64, !42, i64 1712}
!79 = !{!"VP", i32 0, i64 267573, i64 8553906769633796390, i64 267573}
!80 = !{!"branch_weights", i32 267573, i32 0}
!81 = !{!"branch_weights", i32 267372, i32 198, i32 3, i32 0}
!82 = !{!"branch_weights", i32 0, i32 201}
!83 = distinct !{!83, !58, !59}
!84 = !{!"branch_weights", i32 216, i32 267357}
!85 = !{!"branch_weights", i32 267357, i32 0, i32 0}
!86 = !{!"branch_weights", i32 0, i32 0, i32 252023, i32 13739, i32 0, i32 1595, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!87 = !{!88, !42, i64 192}
!88 = !{!"lang_hooks", !42, i64 0, !48, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !89, i64 240, !90, i64 248, !91, i64 256, !92, i64 272, !93, i64 432, !94, i64 560, !42, i64 584, !42, i64 592, !42, i64 600, !42, i64 608, !42, i64 616, !42, i64 624, !42, i64 632, !42, i64 640, !42, i64 648, !42, i64 656, !42, i64 664, !43, i64 672}
!89 = !{!"lang_hooks_for_tree_inlining", !42, i64 0}
!90 = !{!"lang_hooks_for_callgraph", !42, i64 0}
!91 = !{!"lang_hooks_for_tree_dump", !42, i64 0, !42, i64 8}
!92 = !{!"lang_hooks_for_decls", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152}
!93 = !{!"lang_hooks_for_types", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !43, i64 120}
!94 = !{!"lang_hooks_for_lto", !42, i64 0, !42, i64 8, !42, i64 16}
!95 = !{!"branch_weights", i32 0, i32 267357}
