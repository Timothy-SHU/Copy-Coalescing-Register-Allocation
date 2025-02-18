; ModuleID = 'tree-ssa-loop-ch.c'
source_filename = "tree-ssa-loop-ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@pass_ch = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_ch, ptr @copy_loop_headers, ptr null, ptr null, i32 0, i32 102, i32 40, i32 0, i32 0, i32 0, i32 37 } }, align 8
@flag_tree_ch = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"tree-ssa-loop-ch.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Duplicating header of the loop %d up to edge %d->%d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Duplication failed.\0A\00", align 1
@warn_strict_overflow = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@eni_size_weights = external global %struct.eni_weights_d, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #13
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #13
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #13
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
  %5 = tail call ptr @__ctype_tolower_loc() #13
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
  %5 = tail call ptr @__ctype_toupper_loc() #13
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
  br i1 %23, label %7, label %24, !llvm.loop !55

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_ch() #8 !prof !58 !PGOFuncName !59 {
  %1 = load i32, ptr @flag_tree_ch, align 4, !tbaa !54
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @copy_loop_headers() #9 !prof !58 !PGOFuncName !60 {
  tail call void @loop_optimizer_init(i32 noundef 3) #13
  %1 = load ptr, ptr @cfun, align 8, !tbaa !39
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %418, label %5, !prof !63

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %418, label %9, !prof !63

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !66
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %418, label %12, !prof !68

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !70
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 3
  %19 = tail call ptr @xmalloc(i64 noundef %18) #13
  %20 = load ptr, ptr @cfun, align 8, !tbaa !39
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !70
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 3
  %27 = tail call ptr @xmalloc(i64 noundef %26) #13
  %28 = load ptr, ptr @cfun, align 8, !tbaa !39
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !69
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !70
  %33 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !61
  %35 = icmp eq ptr %34, null
  br i1 %35, label %111, label %36

36:                                               ; preds = %12
  %37 = getelementptr inbounds %struct.loops, ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !64
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %38, align 8, !tbaa !66
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i32 [ %41, %40 ], [ 0, %36 ]
  %44 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %43, i64 noundef 8, i64 noundef 4) #13
  %45 = load ptr, ptr @cfun, align 8, !tbaa !39
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !61
  %48 = getelementptr inbounds %struct.loops, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !72
  br label %50

50:                                               ; preds = %63, %42
  %51 = phi ptr [ %49, %42 ], [ %64, %63 ]
  %52 = load i32, ptr %51, align 8, !tbaa !73
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, ptr %44, align 4, !tbaa !77
  %56 = add i32 %55, 1
  store i32 %56, ptr %44, align 4, !tbaa !77
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds %struct.VEC_int_base, ptr %44, i64 0, i32 2, i64 %57
  store i32 %52, ptr %58, align 4, !tbaa !54
  br label %59

59:                                               ; preds = %54, %50
  %60 = getelementptr inbounds %struct.loop, ptr %51, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !79
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %68, %59
  %64 = phi ptr [ %61, %59 ], [ %71, %68 ]
  br label %50, !llvm.loop !80

65:                                               ; preds = %87
  %66 = icmp eq ptr %44, null
  %67 = getelementptr inbounds %struct.loops, ptr %47, i64 0, i32 1
  br label %90

68:                                               ; preds = %59, %87
  %69 = phi ptr [ %88, %87 ], [ %51, %59 ]
  %70 = getelementptr inbounds %struct.loop, ptr %69, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !81
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %63, !llvm.loop !80

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.loop, ptr %69, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !82
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load i32, ptr %75, align 8, !tbaa !66
  br label %79

79:                                               ; preds = %77, %73
  %80 = phi i32 [ %78, %77 ], [ 0, %73 ]
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = add i32 %80, -1
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %75, i64 0, i32 2, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !39
  br label %87

87:                                               ; preds = %82, %79
  %88 = phi ptr [ %86, %82 ], [ null, %79 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %65, label %68, !llvm.loop !83

90:                                               ; preds = %65, %102
  %91 = phi i32 [ %103, %102 ], [ 0, %65 ]
  br i1 %66, label %99, label %92

92:                                               ; preds = %90
  %93 = load i32, ptr %44, align 4, !tbaa !77
  %94 = icmp ugt i32 %93, %91
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = zext i32 %91 to i64
  %97 = getelementptr inbounds %struct.VEC_int_base, ptr %44, i64 0, i32 2, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !54
  br label %99

99:                                               ; preds = %95, %92, %90
  %100 = phi i32 [ %98, %95 ], [ 0, %92 ], [ 0, %90 ]
  %101 = phi i1 [ false, %95 ], [ true, %92 ], [ true, %90 ]
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = add i32 %91, 1
  %104 = load ptr, ptr %67, align 8, !tbaa !64
  %105 = zext i32 %100 to i64
  %106 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %104, i64 0, i32 2, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !39
  %108 = icmp eq ptr %107, null
  br i1 %108, label %90, label %111, !llvm.loop !84

109:                                              ; preds = %99
  br i1 %66, label %111, label %110

110:                                              ; preds = %109
  tail call void @free(ptr noundef %44)
  br label %111

111:                                              ; preds = %102, %109, %110, %12
  %112 = phi ptr [ null, %12 ], [ null, %110 ], [ null, %109 ], [ %107, %102 ]
  %113 = phi ptr [ null, %12 ], [ null, %110 ], [ null, %109 ], [ %44, %102 ]
  %114 = phi i32 [ 0, %12 ], [ %91, %110 ], [ %91, %109 ], [ %103, %102 ]
  %115 = icmp eq ptr %112, null
  br i1 %115, label %417, label %116

116:                                              ; preds = %111, %412
  %117 = phi i32 [ %415, %412 ], [ %114, %111 ]
  %118 = phi ptr [ %414, %412 ], [ %113, %111 ]
  %119 = phi ptr [ %413, %412 ], [ %112, %111 ]
  %120 = getelementptr inbounds %struct.loop, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !85
  %122 = getelementptr inbounds %struct.loop, ptr %119, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !86
  %124 = tail call ptr @last_stmt(ptr noundef %123) #13
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %116
  %127 = load i32, ptr %124, align 8
  %128 = and i32 %127, 255
  %129 = icmp eq i32 %128, 4
  br i1 %129, label %130, label %138

130:                                              ; preds = %126, %116
  %131 = load ptr, ptr %120, align 8, !tbaa !85
  %132 = tail call ptr @last_and_only_stmt(ptr noundef %131) #13
  %133 = icmp eq ptr %132, null
  br i1 %133, label %385, label %134

134:                                              ; preds = %130
  %135 = load i32, ptr %132, align 8
  %136 = and i32 %135, 255
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %385

138:                                              ; preds = %126, %134
  br label %139

139:                                              ; preds = %138, %249
  %140 = phi i32 [ %228, %249 ], [ 20, %138 ]
  %141 = phi i32 [ %244, %249 ], [ 0, %138 ]
  %142 = phi ptr [ %243, %249 ], [ null, %138 ]
  %143 = phi ptr [ %251, %249 ], [ %121, %138 ]
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !87
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %227

147:                                              ; preds = %139
  %148 = tail call zeroext i8 @optimize_loop_for_size_p(ptr noundef nonnull %119) #13
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %227

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !89
  %153 = icmp eq ptr %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = load i32, ptr %152, align 8, !tbaa !90
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150, %154
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 68, ptr noundef nonnull @.str.2) #13
  br label %158

158:                                              ; preds = %157, %154
  %159 = load ptr, ptr %151, align 8, !tbaa !89
  %160 = icmp eq ptr %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i32, ptr %159, align 8, !tbaa !90
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %227, label %164

164:                                              ; preds = %158, %161
  %165 = getelementptr inbounds %struct.VEC_edge_base, ptr %159, i64 0, i32 2, i64 0
  %166 = load ptr, ptr %165, align 8, !tbaa !39
  %167 = getelementptr inbounds %struct.edge_def, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !92
  %169 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %119, ptr noundef %168) #13
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %179, label %171

171:                                              ; preds = %164
  %172 = load ptr, ptr %151, align 8, !tbaa !89
  %173 = getelementptr inbounds %struct.VEC_edge_base, ptr %172, i64 0, i32 2, i64 1
  %174 = load ptr, ptr %173, align 8, !tbaa !39
  %175 = getelementptr inbounds %struct.edge_def, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !92
  %177 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %119, ptr noundef %176) #13
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %227

179:                                              ; preds = %171, %164
  %180 = load ptr, ptr %120, align 8, !tbaa !85
  %181 = icmp eq ptr %180, %143
  br i1 %181, label %188, label %182

182:                                              ; preds = %179
  %183 = load ptr, ptr %143, align 8, !tbaa !94
  %184 = icmp eq ptr %183, null
  br i1 %184, label %227, label %185

185:                                              ; preds = %182
  %186 = load i32, ptr %183, align 8, !tbaa !90
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %227

188:                                              ; preds = %185, %179
  %189 = tail call ptr @last_stmt(ptr noundef %143) #13
  %190 = load i32, ptr %189, align 8
  %191 = and i32 %190, 255
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %227

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 13
  %195 = load i32, ptr %194, align 8, !tbaa !95, !noalias !96
  %196 = and i32 %195, 512
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 7
  %200 = load ptr, ptr %199, align 8, !tbaa !50, !noalias !96
  %201 = icmp eq ptr %200, null
  br i1 %201, label %204, label %202

202:                                              ; preds = %198
  %203 = load ptr, ptr %200, align 8, !tbaa !99, !noalias !96
  br label %204

204:                                              ; preds = %202, %198, %193
  %205 = phi ptr [ %203, %202 ], [ null, %198 ], [ null, %193 ]
  %206 = icmp eq ptr %205, null
  br i1 %206, label %209, label %207

207:                                              ; preds = %204
  %208 = load ptr, ptr %205, align 8, !tbaa !101, !noalias !96
  br label %209

209:                                              ; preds = %207, %204
  %210 = phi ptr [ %208, %207 ], [ null, %204 ]
  %211 = icmp eq ptr %210, null
  br i1 %211, label %227, label %212

212:                                              ; preds = %209, %222
  %213 = phi ptr [ %225, %222 ], [ %210, %209 ]
  %214 = phi i32 [ %223, %222 ], [ %140, %209 ]
  %215 = load ptr, ptr %213, align 8, !tbaa !103
  %216 = load i32, ptr %215, align 8
  %217 = trunc i32 %216 to i8
  switch i8 %217, label %218 [
    i8 4, label %222
    i8 2, label %222
    i8 8, label %227
  ]

218:                                              ; preds = %212
  %219 = tail call i32 @estimate_num_insns(ptr noundef nonnull %215, ptr noundef nonnull @eni_size_weights) #13
  %220 = sub nsw i32 %214, %219
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %212, %212, %218
  %223 = phi i32 [ %220, %218 ], [ %214, %212 ], [ %214, %212 ]
  %224 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %213, i64 0, i32 2
  %225 = load ptr, ptr %224, align 8, !tbaa !105
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %212, !llvm.loop !106

227:                                              ; preds = %222, %212, %218, %209, %188, %185, %182, %139, %147, %161, %171
  %228 = phi i32 [ %140, %171 ], [ %140, %161 ], [ %140, %147 ], [ %140, %139 ], [ %140, %182 ], [ %140, %185 ], [ %140, %188 ], [ %140, %209 ], [ %220, %218 ], [ %214, %212 ], [ %223, %222 ]
  %229 = phi i1 [ true, %171 ], [ true, %161 ], [ true, %147 ], [ true, %139 ], [ true, %182 ], [ true, %185 ], [ true, %188 ], [ false, %209 ], [ true, %218 ], [ true, %212 ], [ false, %222 ]
  br i1 %229, label %252, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !89
  %233 = getelementptr inbounds %struct.VEC_edge_base, ptr %232, i64 0, i32 2, i64 0
  %234 = load ptr, ptr %233, align 8, !tbaa !39
  %235 = getelementptr inbounds %struct.edge_def, ptr %234, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !92
  %237 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %119, ptr noundef %236) #13
  %238 = icmp eq i8 %237, 0
  %239 = load ptr, ptr %231, align 8, !tbaa !89
  %240 = getelementptr inbounds %struct.VEC_edge_base, ptr %239, i64 0, i32 2, i64 0
  %241 = getelementptr inbounds %struct.VEC_edge_base, ptr %239, i64 0, i32 2, i64 1
  %242 = select i1 %238, ptr %241, ptr %240
  %243 = load ptr, ptr %242, align 8, !tbaa !39
  %244 = add i32 %141, 1
  %245 = zext i32 %141 to i64
  %246 = getelementptr inbounds ptr, ptr %19, i64 %245
  store ptr %143, ptr %246, align 8, !tbaa !39
  %247 = icmp ugt i32 %32, %244
  br i1 %247, label %249, label %248

248:                                              ; preds = %230
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 190, ptr noundef nonnull @.str.2) #13
  br label %249

249:                                              ; preds = %230, %248
  %250 = getelementptr inbounds %struct.edge_def, ptr %243, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !92
  br label %139, !llvm.loop !107

252:                                              ; preds = %227
  %253 = icmp eq ptr %142, null
  br i1 %253, label %385, label %254

254:                                              ; preds = %252
  %255 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %256 = icmp eq ptr %255, null
  br i1 %256, label %271, label %257

257:                                              ; preds = %254
  %258 = load i32, ptr @dump_flags, align 4, !tbaa !54
  %259 = and i32 %258, 8
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %271, label %261

261:                                              ; preds = %257
  %262 = load i32, ptr %119, align 8, !tbaa !73
  %263 = load ptr, ptr %142, align 8, !tbaa !108
  %264 = getelementptr inbounds %struct.basic_block_def, ptr %263, i64 0, i32 9
  %265 = load i32, ptr %264, align 8, !tbaa !109
  %266 = getelementptr inbounds %struct.edge_def, ptr %142, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !92
  %268 = getelementptr inbounds %struct.basic_block_def, ptr %267, i64 0, i32 9
  %269 = load i32, ptr %268, align 8, !tbaa !109
  %270 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %255, ptr noundef nonnull @.str.3, i32 noundef %262, i32 noundef %265, i32 noundef %269)
  br label %271

271:                                              ; preds = %261, %257, %254
  %272 = getelementptr inbounds %struct.edge_def, ptr %142, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !92
  %274 = load ptr, ptr %273, align 8, !tbaa !94
  %275 = icmp eq ptr %274, null
  br i1 %275, label %280, label %276

276:                                              ; preds = %271
  %277 = load i32, ptr %274, align 8, !tbaa !90
  %278 = icmp eq i32 %277, 1
  %279 = zext i1 %278 to i8
  br label %280

280:                                              ; preds = %271, %276
  %281 = phi i8 [ %279, %276 ], [ 0, %271 ]
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %283, label %295

283:                                              ; preds = %280
  %284 = tail call ptr @split_edge(ptr noundef nonnull %142) #13
  %285 = load ptr, ptr %284, align 8, !tbaa !94
  %286 = icmp eq ptr %285, null
  br i1 %286, label %290, label %287

287:                                              ; preds = %283
  %288 = load i32, ptr %285, align 8, !tbaa !90
  %289 = icmp eq i32 %288, 1
  br i1 %289, label %291, label %290

290:                                              ; preds = %283, %287
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 655, ptr noundef nonnull @.str.2) #13
  br label %291

291:                                              ; preds = %287, %290
  %292 = load ptr, ptr %284, align 8, !tbaa !94
  %293 = getelementptr inbounds %struct.VEC_edge_base, ptr %292, i64 0, i32 2, i64 0
  %294 = load ptr, ptr %293, align 8, !tbaa !39
  br label %295

295:                                              ; preds = %291, %280
  %296 = phi ptr [ %142, %280 ], [ %294, %291 ]
  %297 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %119) #13
  %298 = tail call zeroext i8 @gimple_duplicate_sese_region(ptr noundef %297, ptr noundef %296, ptr noundef %19, i32 noundef %141, ptr noundef %27) #13
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %295
  %301 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %302 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 20, i64 1, ptr %301)
  br label %385

303:                                              ; preds = %295
  %304 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !54
  %305 = icmp sgt i32 %304, 0
  %306 = icmp ne i32 %141, 0
  %307 = and i1 %305, %306
  br i1 %307, label %308, label %380

308:                                              ; preds = %303
  %309 = zext i32 %141 to i64
  br label %310

310:                                              ; preds = %308, %377
  %311 = phi i64 [ 0, %308 ], [ %378, %377 ]
  %312 = getelementptr inbounds ptr, ptr %27, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !39
  %314 = getelementptr inbounds %struct.basic_block_def, ptr %313, i64 0, i32 13
  %315 = load i32, ptr %314, align 8, !tbaa !95, !noalias !110
  %316 = and i32 %315, 512
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %310
  %319 = getelementptr inbounds %struct.basic_block_def, ptr %313, i64 0, i32 7
  %320 = load ptr, ptr %319, align 8, !tbaa !50, !noalias !110
  %321 = icmp eq ptr %320, null
  br i1 %321, label %324, label %322

322:                                              ; preds = %318
  %323 = load ptr, ptr %320, align 8, !tbaa !99, !noalias !110
  br label %324

324:                                              ; preds = %322, %318, %310
  %325 = phi ptr [ %323, %322 ], [ null, %318 ], [ null, %310 ]
  %326 = icmp eq ptr %325, null
  br i1 %326, label %329, label %327

327:                                              ; preds = %324
  %328 = load ptr, ptr %325, align 8, !tbaa !101, !noalias !110
  br label %329

329:                                              ; preds = %324, %327
  %330 = phi ptr [ %328, %327 ], [ null, %324 ]
  %331 = icmp eq ptr %330, null
  br i1 %331, label %377, label %332

332:                                              ; preds = %329, %373
  %333 = phi ptr [ %375, %373 ], [ %330, %329 ]
  %334 = load ptr, ptr %333, align 8, !tbaa !103
  %335 = load i32, ptr %334, align 8
  %336 = and i32 %335, 255
  %337 = trunc i32 %335 to i8
  switch i8 %337, label %373 [
    i8 1, label %370
    i8 6, label %338
  ]

338:                                              ; preds = %332
  %339 = lshr i32 %335, 16
  %340 = zext nneg i32 %339 to i64
  %341 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %340
  %342 = load i8, ptr %341, align 1, !tbaa !50
  %343 = icmp eq i8 %342, 3
  br i1 %343, label %344, label %362

344:                                              ; preds = %338
  %345 = add nsw i32 %336, -1
  %346 = icmp ult i32 %345, 9
  tail call void @llvm.assume(i1 %346)
  %347 = zext nneg i32 %336 to i64
  %348 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %347
  %349 = load i32, ptr %348, align 4, !tbaa !54
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %350
  %352 = load i64, ptr %351, align 8, !tbaa !113
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %344
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %355

355:                                              ; preds = %354, %344
  %356 = getelementptr inbounds i8, ptr %334, i64 %352
  %357 = getelementptr inbounds ptr, ptr %356, i64 1
  %358 = load ptr, ptr %357, align 8, !tbaa !39
  %359 = load i64, ptr %358, align 8
  %360 = trunc i64 %359 to i32
  %361 = and i32 %360, 65535
  br label %362

362:                                              ; preds = %338, %355
  %363 = phi i32 [ %361, %355 ], [ %339, %338 ]
  %364 = zext nneg i32 %363 to i64
  %365 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %364
  %366 = load i32, ptr %365, align 4, !tbaa !54
  %367 = icmp eq i32 %366, 5
  br i1 %367, label %368, label %373

368:                                              ; preds = %362
  %369 = load i32, ptr %334, align 8
  br label %370

370:                                              ; preds = %332, %368
  %371 = phi i32 [ %369, %368 ], [ %335, %332 ]
  %372 = or i32 %371, 256
  store i32 %372, ptr %334, align 8
  br label %373

373:                                              ; preds = %370, %332, %362
  %374 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %333, i64 0, i32 2
  %375 = load ptr, ptr %374, align 8, !tbaa !105
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %332, !llvm.loop !114

377:                                              ; preds = %373, %329
  %378 = add nuw nsw i64 %311, 1
  %379 = icmp eq i64 %378, %309
  br i1 %379, label %380, label %310, !llvm.loop !115

380:                                              ; preds = %377, %303
  %381 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %119) #13
  %382 = tail call ptr @split_edge(ptr noundef %381) #13
  %383 = tail call ptr @loop_latch_edge(ptr noundef nonnull %119) #13
  %384 = tail call ptr @split_edge(ptr noundef %383) #13
  br label %385

385:                                              ; preds = %130, %134, %252, %380, %300
  %386 = icmp eq ptr %118, null
  %387 = load ptr, ptr @cfun, align 8
  %388 = getelementptr inbounds %struct.function, ptr %387, i64 0, i32 4
  br label %389

389:                                              ; preds = %401, %385
  %390 = phi i32 [ %117, %385 ], [ %402, %401 ]
  br i1 %386, label %398, label %391

391:                                              ; preds = %389
  %392 = load i32, ptr %118, align 4, !tbaa !77
  %393 = icmp ugt i32 %392, %390
  br i1 %393, label %394, label %398

394:                                              ; preds = %391
  %395 = zext i32 %390 to i64
  %396 = getelementptr inbounds %struct.VEC_int_base, ptr %118, i64 0, i32 2, i64 %395
  %397 = load i32, ptr %396, align 4, !tbaa !54
  br label %398

398:                                              ; preds = %394, %391, %389
  %399 = phi i32 [ %397, %394 ], [ 0, %391 ], [ 0, %389 ]
  %400 = phi i1 [ false, %394 ], [ true, %391 ], [ true, %389 ]
  br i1 %400, label %410, label %401

401:                                              ; preds = %398
  %402 = add i32 %390, 1
  %403 = load ptr, ptr %388, align 8, !tbaa !61
  %404 = getelementptr inbounds %struct.loops, ptr %403, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !64
  %406 = zext i32 %399 to i64
  %407 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %405, i64 0, i32 2, i64 %406
  %408 = load ptr, ptr %407, align 8, !tbaa !39
  %409 = icmp eq ptr %408, null
  br i1 %409, label %389, label %412, !llvm.loop !84

410:                                              ; preds = %398
  br i1 %386, label %412, label %411

411:                                              ; preds = %410
  tail call void @free(ptr noundef %118)
  br label %412

412:                                              ; preds = %401, %410, %411
  %413 = phi ptr [ null, %411 ], [ null, %410 ], [ %408, %401 ]
  %414 = phi ptr [ null, %411 ], [ null, %410 ], [ %118, %401 ]
  %415 = phi i32 [ %390, %411 ], [ %390, %410 ], [ %402, %401 ]
  %416 = icmp eq ptr %413, null
  br i1 %416, label %417, label %116, !llvm.loop !116

417:                                              ; preds = %412, %111
  tail call void @free(ptr noundef %19)
  tail call void @free(ptr noundef %27)
  br label %418

418:                                              ; preds = %9, %5, %0, %417
  tail call void @loop_optimizer_finalize() #13
  ret i32 0
}

declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

declare void @loop_optimizer_finalize() local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_duplicate_sese_region(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare ptr @last_and_only_stmt(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_loop_for_size_p(ptr noundef) local_unnamed_addr #3

declare i32 @estimate_num_insns(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }

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
!35 = !{ptr @copy_loop_headers, ptr @loop_optimizer_init, i64 38}
!36 = !{ptr @copy_loop_headers, ptr @loop_optimizer_finalize, i64 38}
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
!58 = !{!"function_entry_count", i64 38}
!59 = !{!"tree-ssa-loop-ch.c;gate_ch"}
!60 = !{!"tree-ssa-loop-ch.c;copy_loop_headers"}
!61 = !{!62, !40, i64 32}
!62 = !{!"function", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !40, i64 128, !45, i64 136, !45, i64 137, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139}
!63 = !{!"branch_weights", i32 0, i32 38}
!64 = !{!65, !40, i64 8}
!65 = !{!"loops", !45, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!66 = !{!67, !45, i64 0}
!67 = !{!"VEC_loop_p_base", !45, i64 0, !45, i64 4, !41, i64 8}
!68 = !{!"branch_weights", i32 38, i32 0}
!69 = !{!62, !40, i64 8}
!70 = !{!71, !45, i64 24}
!71 = !{!"control_flow_graph", !40, i64 0, !40, i64 8, !40, i64 16, !45, i64 24, !45, i64 28, !45, i64 32, !40, i64 40, !45, i64 48, !41, i64 52, !41, i64 60, !45, i64 68, !45, i64 72}
!72 = !{!65, !40, i64 24}
!73 = !{!74, !45, i64 0}
!74 = !{!"loop", !45, i64 0, !45, i64 4, !40, i64 8, !40, i64 16, !75, i64 24, !45, i64 32, !45, i64 36, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !76, i64 80, !76, i64 96, !41, i64 112, !41, i64 113, !45, i64 116, !40, i64 120, !40, i64 128, !41, i64 136, !40, i64 144}
!75 = !{!"lpt_decision", !45, i64 0, !45, i64 4}
!76 = !{!"", !46, i64 0, !46, i64 8}
!77 = !{!78, !45, i64 0}
!78 = !{!"VEC_int_base", !45, i64 0, !45, i64 4, !41, i64 8}
!79 = !{!74, !40, i64 48}
!80 = distinct !{!80, !57}
!81 = !{!74, !40, i64 56}
!82 = !{!74, !40, i64 40}
!83 = distinct !{!83, !56, !57}
!84 = distinct !{!84, !56, !57}
!85 = !{!74, !40, i64 8}
!86 = !{!74, !40, i64 16}
!87 = !{!88, !40, i64 16}
!88 = !{!"basic_block_def", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32, !40, i64 48, !40, i64 56, !41, i64 64, !46, i64 72, !45, i64 80, !45, i64 84, !45, i64 88, !45, i64 92, !45, i64 96}
!89 = !{!88, !40, i64 8}
!90 = !{!91, !45, i64 0}
!91 = !{!"VEC_edge_base", !45, i64 0, !45, i64 4, !41, i64 8}
!92 = !{!93, !40, i64 8}
!93 = !{!"edge_def", !40, i64 0, !40, i64 8, !41, i64 16, !40, i64 24, !40, i64 32, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !46, i64 56}
!94 = !{!88, !40, i64 0}
!95 = !{!88, !45, i64 96}
!96 = !{!97}
!97 = distinct !{!97, !98, !"gsi_start_bb: argument 0"}
!98 = distinct !{!98, !"gsi_start_bb"}
!99 = !{!100, !40, i64 0}
!100 = !{!"gimple_bb_info", !40, i64 0, !40, i64 8}
!101 = !{!102, !40, i64 0}
!102 = !{!"gimple_seq_d", !40, i64 0, !40, i64 8, !40, i64 16}
!103 = !{!104, !40, i64 0}
!104 = !{!"gimple_seq_node_d", !40, i64 0, !40, i64 8, !40, i64 16}
!105 = !{!104, !40, i64 16}
!106 = distinct !{!106, !56, !57}
!107 = distinct !{!107, !56, !57}
!108 = !{!93, !40, i64 0}
!109 = !{!88, !45, i64 80}
!110 = !{!111}
!111 = distinct !{!111, !112, !"gsi_start_bb: argument 0"}
!112 = distinct !{!112, !"gsi_start_bb"}
!113 = !{!46, !46, i64 0}
!114 = distinct !{!114, !56, !57}
!115 = distinct !{!115, !56, !57}
!116 = distinct !{!116, !56, !57}
