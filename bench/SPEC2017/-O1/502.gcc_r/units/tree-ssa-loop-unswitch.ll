; ModuleID = 'tree-ssa-loop-unswitch.c'
source_filename = "tree-ssa-loop-unswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [43 x i8] c";; Not unswitching anymore, hit max level\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c";; Not unswitching, not innermost loop\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c";; Not unswitching cold loops\0A\00", align 1
@eni_size_weights = external global %struct.eni_weights_d, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c";; Not unswitching, loop too big\0A\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c";; Unswitching loop\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"tree-ssa-loop-unswitch.c\00", align 1

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
define dso_local i32 @tree_ssa_unswitch_loops() local_unnamed_addr #9 !prof !34 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %70, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !58
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ 0, %5 ]
  %13 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %12, i64 noundef 8, i64 noundef 4) #12
  %14 = load ptr, ptr @cfun, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.loops, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  br label %20

20:                                               ; preds = %48, %11
  %21 = phi i32 [ 0, %11 ], [ %49, %48 ]
  br i1 %19, label %29, label %22

22:                                               ; preds = %20
  %23 = load i32, ptr %18, align 8, !tbaa !58
  %24 = icmp ugt i32 %23, %21
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %18, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  br label %29

29:                                               ; preds = %25, %22, %20
  %30 = phi ptr [ %28, %25 ], [ null, %22 ], [ null, %20 ]
  %31 = phi i1 [ false, %25 ], [ true, %22 ], [ true, %20 ]
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = icmp eq ptr %13, null
  br label %50

34:                                               ; preds = %29
  %35 = icmp eq ptr %30, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !60
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, ptr %30, align 8, !tbaa !64
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, ptr %13, align 4, !tbaa !65
  %45 = add i32 %44, 1
  store i32 %45, ptr %13, align 4, !tbaa !65
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds %struct.VEC_int_base, ptr %13, i64 0, i32 2, i64 %46
  store i32 %41, ptr %47, align 4, !tbaa !50
  br label %48

48:                                               ; preds = %43, %40, %36, %34
  %49 = add i32 %21, 1
  br label %20, !llvm.loop !67

50:                                               ; preds = %32, %62
  %51 = phi i32 [ %63, %62 ], [ 0, %32 ]
  br i1 %33, label %59, label %52

52:                                               ; preds = %50
  %53 = load i32, ptr %13, align 4, !tbaa !65
  %54 = icmp ugt i32 %53, %51
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = zext i32 %51 to i64
  %57 = getelementptr inbounds %struct.VEC_int_base, ptr %13, i64 0, i32 2, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !50
  br label %59

59:                                               ; preds = %55, %52, %50
  %60 = phi i32 [ %58, %55 ], [ 0, %52 ], [ 0, %50 ]
  %61 = phi i1 [ false, %55 ], [ true, %52 ], [ true, %50 ]
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = add i32 %51, 1
  %64 = zext i32 %60 to i64
  %65 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %18, i64 0, i32 2, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  %67 = icmp eq ptr %66, null
  br i1 %67, label %50, label %70, !llvm.loop !68

68:                                               ; preds = %59
  br i1 %33, label %70, label %69

69:                                               ; preds = %68
  tail call void @free(ptr noundef %13)
  br label %70

70:                                               ; preds = %62, %68, %69, %0
  %71 = phi i32 [ 0, %0 ], [ %51, %69 ], [ %51, %68 ], [ %63, %62 ]
  %72 = phi ptr [ null, %0 ], [ null, %69 ], [ null, %68 ], [ %13, %62 ]
  %73 = phi ptr [ null, %0 ], [ null, %69 ], [ null, %68 ], [ %66, %62 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %116, label %75

75:                                               ; preds = %70, %108
  %76 = phi i8 [ %81, %108 ], [ 0, %70 ]
  %77 = phi ptr [ %111, %108 ], [ %73, %70 ]
  %78 = phi ptr [ %110, %108 ], [ %72, %70 ]
  %79 = phi i32 [ %109, %108 ], [ %71, %70 ]
  %80 = tail call fastcc zeroext i8 @tree_unswitch_single_loop(ptr noundef nonnull %77, i32 noundef 0), !range !69
  %81 = or i8 %80, %76
  %82 = icmp eq ptr %78, null
  %83 = load ptr, ptr @cfun, align 8
  %84 = getelementptr inbounds %struct.function, ptr %83, i64 0, i32 4
  br label %85

85:                                               ; preds = %97, %75
  %86 = phi i32 [ %79, %75 ], [ %98, %97 ]
  br i1 %82, label %94, label %87

87:                                               ; preds = %85
  %88 = load i32, ptr %78, align 4, !tbaa !65
  %89 = icmp ugt i32 %88, %86
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = zext i32 %86 to i64
  %92 = getelementptr inbounds %struct.VEC_int_base, ptr %78, i64 0, i32 2, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !50
  br label %94

94:                                               ; preds = %90, %87, %85
  %95 = phi i32 [ %93, %90 ], [ 0, %87 ], [ 0, %85 ]
  %96 = phi i1 [ false, %90 ], [ true, %87 ], [ true, %85 ]
  br i1 %96, label %106, label %97

97:                                               ; preds = %94
  %98 = add i32 %86, 1
  %99 = load ptr, ptr %84, align 8, !tbaa !54
  %100 = getelementptr inbounds %struct.loops, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !56
  %102 = zext i32 %95 to i64
  %103 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %101, i64 0, i32 2, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !35
  %105 = icmp eq ptr %104, null
  br i1 %105, label %85, label %108, !llvm.loop !68

106:                                              ; preds = %94
  br i1 %82, label %108, label %107

107:                                              ; preds = %106
  tail call void @free(ptr noundef %78)
  br label %108

108:                                              ; preds = %97, %106, %107
  %109 = phi i32 [ %86, %107 ], [ %86, %106 ], [ %98, %97 ]
  %110 = phi ptr [ null, %107 ], [ null, %106 ], [ %78, %97 ]
  %111 = phi ptr [ null, %107 ], [ null, %106 ], [ %104, %97 ]
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %75, !llvm.loop !70

113:                                              ; preds = %108
  %114 = icmp eq i8 %81, 0
  %115 = select i1 %114, i32 0, i32 32
  br label %116

116:                                              ; preds = %113, %70
  %117 = phi i32 [ 0, %70 ], [ %115, %113 ]
  ret i32 %117
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @tree_unswitch_single_loop(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 36, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !71
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %307, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %307, label %14

14:                                               ; preds = %10
  %15 = tail call i64 @fwrite(ptr nonnull @.str, i64 42, i64 1, ptr nonnull %8)
  br label %307

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %307, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %307, label %27

27:                                               ; preds = %23
  %28 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 39, i64 1, ptr nonnull %21)
  br label %307

29:                                               ; preds = %16
  %30 = tail call zeroext i8 @optimize_loop_for_size_p(ptr noundef %0) #12
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %34 = icmp eq ptr %33, null
  br i1 %34, label %307, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %307, label %39

39:                                               ; preds = %35
  %40 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 30, i64 1, ptr nonnull %33)
  br label %307

41:                                               ; preds = %29
  %42 = tail call i32 @tree_num_loop_insns(ptr noundef %0, ptr noundef nonnull @eni_size_weights) #12
  %43 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.param_info, ptr %43, i64 35, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !71
  %46 = icmp ugt i32 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %49 = icmp eq ptr %48, null
  br i1 %49, label %307, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %307, label %54

54:                                               ; preds = %50
  %55 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 33, i64 1, ptr nonnull %48)
  br label %307

56:                                               ; preds = %41
  %57 = tail call ptr @get_loop_body(ptr noundef %0) #12
  %58 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %59 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  br label %60

60:                                               ; preds = %290, %56
  %61 = phi i32 [ 0, %56 ], [ %291, %290 ]
  %62 = phi ptr [ null, %56 ], [ %272, %290 ]
  %63 = phi i8 [ 0, %56 ], [ 1, %290 ]
  %64 = load i32, ptr %58, align 4, !tbaa !73
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %174

66:                                               ; preds = %60
  %67 = zext i32 %61 to i64
  br label %68

68:                                               ; preds = %66, %165
  %69 = phi i64 [ %67, %66 ], [ %166, %165 ]
  %70 = getelementptr inbounds ptr, ptr %57, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !35
  %72 = tail call ptr @last_stmt(ptr noundef %71) #12
  %73 = icmp eq ptr %72, null
  br i1 %73, label %162, label %74

74:                                               ; preds = %68
  %75 = load i32, ptr %72, align 8
  %76 = and i32 %75, 255
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %162

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %72, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.use_optype_d, ptr %80, i64 0, i32 1, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !74
  %85 = load ptr, ptr %84, align 8, !tbaa !35
  %86 = load ptr, ptr %80, align 8, !tbaa !76
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi ptr [ %86, %82 ], [ %80, %78 ]
  %89 = phi i8 [ 0, %82 ], [ 1, %78 ]
  %90 = phi ptr [ %85, %82 ], [ null, %78 ]
  br i1 %81, label %115, label %91

91:                                               ; preds = %87, %110
  %92 = phi ptr [ %113, %110 ], [ %90, %87 ]
  %93 = phi i8 [ %112, %110 ], [ %89, %87 ]
  %94 = phi ptr [ %111, %110 ], [ %88, %87 ]
  %95 = getelementptr inbounds %struct.tree_ssa_name, ptr %92, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !46
  %97 = getelementptr inbounds %struct.gimple_statement_base, ptr %96, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !46
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %91
  %101 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef nonnull %98) #12
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %162

103:                                              ; preds = %100, %91
  %104 = icmp eq ptr %94, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.use_optype_d, ptr %94, i64 0, i32 1, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !74
  %108 = load ptr, ptr %107, align 8, !tbaa !35
  %109 = load ptr, ptr %94, align 8, !tbaa !76
  br label %110

110:                                              ; preds = %103, %105
  %111 = phi ptr [ %109, %105 ], [ %94, %103 ]
  %112 = phi i8 [ %93, %105 ], [ 1, %103 ]
  %113 = phi ptr [ %108, %105 ], [ null, %103 ]
  %114 = icmp eq i8 %112, 0
  br i1 %114, label %91, label %115, !llvm.loop !78

115:                                              ; preds = %110, %87
  %116 = load i32, ptr %72, align 8
  %117 = lshr i32 %116, 16
  %118 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %119 = and i32 %116, 255
  %120 = add nsw i32 %119, -10
  %121 = icmp ult i32 %120, -9
  br i1 %121, label %134, label %122

122:                                              ; preds = %115
  %123 = zext nneg i32 %119 to i64
  %124 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !50
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !79
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #12
  br label %131

131:                                              ; preds = %130, %122
  %132 = getelementptr inbounds i8, ptr %72, i64 %128
  %133 = load ptr, ptr %132, align 8, !tbaa !35
  br label %134

134:                                              ; preds = %131, %115
  %135 = phi ptr [ %133, %131 ], [ null, %115 ]
  %136 = load i32, ptr %72, align 8
  %137 = and i32 %136, 255
  %138 = add nsw i32 %137, -10
  %139 = icmp ult i32 %138, -9
  br i1 %139, label %153, label %140

140:                                              ; preds = %134
  %141 = zext nneg i32 %137 to i64
  %142 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !50
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %144
  %146 = load i64, ptr %145, align 8, !tbaa !79
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #12
  br label %149

149:                                              ; preds = %148, %140
  %150 = getelementptr inbounds i8, ptr %72, i64 %146
  %151 = getelementptr inbounds ptr, ptr %150, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !35
  br label %153

153:                                              ; preds = %149, %134
  %154 = phi ptr [ %152, %149 ], [ null, %134 ]
  %155 = tail call ptr @build2_stat(i32 noundef %117, ptr noundef %118, ptr noundef %135, ptr noundef %154) #12
  %156 = tail call i32 @integer_zerop(ptr noundef %155) #12
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = tail call i32 @integer_nonzerop(ptr noundef %155) #12
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, ptr %155, ptr null
  br label %162

162:                                              ; preds = %100, %68, %74, %153, %158
  %163 = phi ptr [ null, %74 ], [ null, %68 ], [ null, %153 ], [ %161, %158 ], [ null, %100 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = add nuw nsw i64 %69, 1
  %167 = load i32, ptr %58, align 4, !tbaa !73
  %168 = zext i32 %167 to i64
  %169 = icmp ult i64 %166, %168
  br i1 %169, label %68, label %170, !llvm.loop !80

170:                                              ; preds = %162, %165
  %171 = phi i64 [ %166, %165 ], [ %69, %162 ]
  %172 = phi ptr [ null, %165 ], [ %163, %162 ]
  %173 = trunc i64 %171 to i32
  br label %174

174:                                              ; preds = %170, %60
  %175 = phi i32 [ %61, %60 ], [ %173, %170 ]
  %176 = phi ptr [ %62, %60 ], [ %172, %170 ]
  %177 = load i32, ptr %59, align 4, !tbaa !73
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  tail call void @free(ptr noundef %57)
  br label %307

180:                                              ; preds = %174
  %181 = tail call ptr @loop_preheader_edge(ptr noundef %0) #12
  %182 = getelementptr inbounds %struct.tree_exp, ptr %176, i64 0, i32 3
  %183 = getelementptr inbounds %struct.tree_exp, ptr %176, i64 1
  br label %184

184:                                              ; preds = %261, %180
  %185 = phi ptr [ %181, %180 ], [ %264, %261 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !81
  %187 = tail call ptr @last_stmt(ptr noundef %186) #12
  %188 = icmp eq ptr %187, null
  br i1 %188, label %245, label %189

189:                                              ; preds = %184
  %190 = load i32, ptr %187, align 8
  %191 = and i32 %190, 255
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %245

193:                                              ; preds = %189
  %194 = lshr i32 %190, 16
  %195 = load i64, ptr %176, align 8
  %196 = trunc i64 %195 to i32
  %197 = and i32 %196, 65535
  %198 = icmp eq i32 %194, %197
  br i1 %198, label %199, label %245

199:                                              ; preds = %193
  %200 = zext nneg i32 %191 to i64
  %201 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !50
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %203
  %205 = load i64, ptr %204, align 8, !tbaa !79
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %199
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #12
  br label %208

208:                                              ; preds = %207, %199
  %209 = getelementptr inbounds i8, ptr %187, i64 %205
  %210 = load ptr, ptr %209, align 8, !tbaa !35
  %211 = load ptr, ptr %182, align 8, !tbaa !46
  %212 = tail call i32 @operand_equal_p(ptr noundef %210, ptr noundef %211, i32 noundef 0) #12
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %245, label %214

214:                                              ; preds = %208
  %215 = load i32, ptr %187, align 8
  %216 = and i32 %215, 255
  %217 = add nsw i32 %216, -10
  %218 = icmp ult i32 %217, -9
  br i1 %218, label %232, label %219

219:                                              ; preds = %214
  %220 = zext nneg i32 %216 to i64
  %221 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !50
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %223
  %225 = load i64, ptr %224, align 8, !tbaa !79
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %219
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #12
  br label %228

228:                                              ; preds = %227, %219
  %229 = getelementptr inbounds i8, ptr %187, i64 %225
  %230 = getelementptr inbounds ptr, ptr %229, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !35
  br label %232

232:                                              ; preds = %228, %214
  %233 = phi ptr [ %231, %228 ], [ null, %214 ]
  %234 = load ptr, ptr %183, align 8, !tbaa !46
  %235 = tail call i32 @operand_equal_p(ptr noundef %233, ptr noundef %234, i32 noundef 0) #12
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %245, label %237

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.edge_def, ptr %185, i64 0, i32 7
  %239 = load i32, ptr %238, align 8, !tbaa !83
  %240 = and i32 %239, 1024
  %241 = icmp eq i32 %240, 0
  %242 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %243 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %244 = select i1 %241, ptr %243, ptr %242
  br label %271

245:                                              ; preds = %232, %208, %193, %189, %184
  %246 = load ptr, ptr %185, align 8, !tbaa !81
  %247 = load ptr, ptr %246, align 8, !tbaa !84
  %248 = icmp eq ptr %247, null
  br i1 %248, label %253, label %249

249:                                              ; preds = %245
  %250 = load i32, ptr %247, align 8, !tbaa !86
  %251 = icmp eq i32 %250, 1
  %252 = zext i1 %251 to i8
  br label %253

253:                                              ; preds = %249, %245
  %254 = phi i8 [ %252, %249 ], [ 0, %245 ]
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %271, label %256

256:                                              ; preds = %253
  br i1 %248, label %260, label %257

257:                                              ; preds = %256
  %258 = load i32, ptr %247, align 8, !tbaa !86
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %261, label %260

260:                                              ; preds = %257, %256
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @.str.6) #12
  br label %261

261:                                              ; preds = %260, %257
  %262 = load ptr, ptr %246, align 8, !tbaa !84
  %263 = getelementptr inbounds %struct.VEC_edge_base, ptr %262, i64 0, i32 2
  %264 = load ptr, ptr %263, align 8, !tbaa !35
  %265 = load ptr, ptr %264, align 8, !tbaa !81
  %266 = load ptr, ptr @cfun, align 8, !tbaa !35
  %267 = getelementptr inbounds %struct.function, ptr %266, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !88
  %269 = load ptr, ptr %268, align 8, !tbaa !89
  %270 = icmp eq ptr %265, %269
  br i1 %270, label %271, label %184, !llvm.loop !91

271:                                              ; preds = %261, %253, %237
  %272 = phi ptr [ %244, %237 ], [ %176, %253 ], [ %176, %261 ]
  %273 = zext i32 %175 to i64
  %274 = getelementptr inbounds ptr, ptr %57, i64 %273
  %275 = load ptr, ptr %274, align 8, !tbaa !35
  %276 = tail call ptr @last_stmt(ptr noundef %275) #12
  %277 = tail call i32 @integer_nonzerop(ptr noundef %272) #12
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %271
  %280 = tail call i32 @integer_zerop(ptr noundef %272) #12
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %292, label %282

282:                                              ; preds = %279, %271
  %283 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), %271 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), %279 ]
  %284 = load ptr, ptr %283, align 8, !tbaa !35
  tail call void @gimple_cond_set_condition_from_tree(ptr noundef %276, ptr noundef %284) #12
  %285 = load i32, ptr %276, align 8
  %286 = and i32 %285, 255
  %287 = add nsw i32 %286, -10
  %288 = icmp ult i32 %287, -9
  br i1 %288, label %290, label %289

289:                                              ; preds = %282
  tail call void @gimple_set_modified(ptr noundef nonnull %276, i8 noundef zeroext 1) #12
  tail call void @update_stmt_operands(ptr noundef nonnull %276) #12
  br label %290

290:                                              ; preds = %282, %289
  %291 = add i32 %175, 1
  br label %60, !llvm.loop !92

292:                                              ; preds = %279
  %293 = getelementptr inbounds ptr, ptr %57, i64 %273
  %294 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %295 = icmp eq ptr %294, null
  br i1 %295, label %302, label %296

296:                                              ; preds = %292
  %297 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %298 = and i32 %297, 8
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %296
  %301 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 20, i64 1, ptr nonnull %294)
  br label %302

302:                                              ; preds = %300, %296, %292
  tail call void @initialize_original_copy_tables() #12
  %303 = load ptr, ptr %293, align 8, !tbaa !35
  %304 = tail call fastcc ptr @tree_unswitch_loop(ptr noundef %0, ptr noundef %303, ptr noundef %272)
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %309

306:                                              ; preds = %302
  tail call void @free_original_copy_tables() #12
  tail call void @free(ptr noundef %57)
  br label %307

307:                                              ; preds = %179, %306, %14, %10, %7, %27, %23, %20, %39, %35, %32, %54, %50, %47, %309
  %308 = phi i8 [ 1, %309 ], [ %63, %179 ], [ %63, %306 ], [ 0, %14 ], [ 0, %10 ], [ 0, %7 ], [ 0, %27 ], [ 0, %23 ], [ 0, %20 ], [ 0, %39 ], [ 0, %35 ], [ 0, %32 ], [ 0, %54 ], [ 0, %50 ], [ 0, %47 ]
  ret i8 %308

309:                                              ; preds = %302
  tail call void @update_ssa(i32 noundef 2048) #12
  tail call void @free_original_copy_tables() #12
  %310 = add nsw i32 %1, 1
  %311 = tail call fastcc zeroext i8 @tree_unswitch_single_loop(ptr noundef nonnull %304, i32 noundef %310), !range !69
  %312 = tail call fastcc zeroext i8 @tree_unswitch_single_loop(ptr noundef %0, i32 noundef %310), !range !69
  tail call void @free(ptr noundef %57)
  br label %307
}

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare zeroext i8 @optimize_loop_for_size_p(ptr noundef) local_unnamed_addr #3

declare i32 @tree_num_loop_insns(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #3

declare void @gimple_cond_set_condition_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare void @initialize_original_copy_tables() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @tree_unswitch_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %6 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %1) #12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 291, ptr noundef nonnull @.str.6) #12
  br label %9

9:                                                ; preds = %3, %8
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8, !tbaa !86
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %17, label %16

16:                                               ; preds = %9, %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 292, ptr noundef nonnull @.str.6) #12
  br label %17

17:                                               ; preds = %13, %16
  %18 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 293, ptr noundef nonnull @.str.6) #12
  br label %22

22:                                               ; preds = %17, %21
  call void @extract_true_false_edges_from_block(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %23 = load ptr, ptr %4, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !94
  %26 = call ptr @unshare_expr(ptr noundef %2) #12
  %27 = sub i32 10000, %25
  %28 = call ptr @loop_version(ptr noundef %0, ptr noundef %26, ptr noundef null, i32 noundef %25, i32 noundef %25, i32 noundef %27, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret ptr %28
}

declare void @free_original_copy_tables() local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @loop_version(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

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
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
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
!54 = !{!55, !36, i64 32}
!55 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!56 = !{!57, !36, i64 8}
!57 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!58 = !{!59, !41, i64 0}
!59 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!60 = !{!61, !36, i64 48}
!61 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !62, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !63, i64 80, !63, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!62 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!63 = !{!"", !42, i64 0, !42, i64 8}
!64 = !{!61, !41, i64 0}
!65 = !{!66, !41, i64 0}
!66 = !{!"VEC_int_base", !41, i64 0, !41, i64 4, !37, i64 8}
!67 = distinct !{!67, !52, !53}
!68 = distinct !{!68, !52, !53}
!69 = !{i8 0, i8 2}
!70 = distinct !{!70, !52, !53}
!71 = !{!72, !41, i64 8}
!72 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!73 = !{!61, !41, i64 36}
!74 = !{!75, !36, i64 24}
!75 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!76 = !{!77, !36, i64 0}
!77 = !{!"use_optype_d", !36, i64 0, !75, i64 8}
!78 = distinct !{!78, !52, !53}
!79 = !{!42, !42, i64 0}
!80 = distinct !{!80, !52, !53}
!81 = !{!82, !36, i64 0}
!82 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!83 = !{!82, !41, i64 48}
!84 = !{!85, !36, i64 0}
!85 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!86 = !{!87, !41, i64 0}
!87 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!88 = !{!55, !36, i64 8}
!89 = !{!90, !36, i64 0}
!90 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!91 = distinct !{!91, !53}
!92 = distinct !{!92, !53}
!93 = !{!85, !36, i64 8}
!94 = !{!82, !41, i64 52}
