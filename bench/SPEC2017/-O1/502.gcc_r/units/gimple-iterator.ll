; ModuleID = 'gimple-iterator.c'
source_filename = "gimple-iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"gimple-iterator.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !84 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !85
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !84 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !85
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !84 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !95

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !89
  %11 = load i8, ptr %3, align 1, !tbaa !96
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !84 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !95

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !89
  %11 = load i8, ptr %3, align 1, !tbaa !96
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !84 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !85
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !95

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !89
  %11 = load i8, ptr %3, align 1, !tbaa !96
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !84 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !85
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !84 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !95

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !97
  store i8 %12, ptr %4, align 1, !tbaa !96
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !84 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !95

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !97
  store i8 %12, ptr %4, align 1, !tbaa !96
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !84 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !85
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !95

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !97
  store i8 %12, ptr %4, align 1, !tbaa !96
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !84 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !84 {
  %2 = load i32, ptr %0, align 8, !tbaa !99
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !84 {
  %2 = load i32, ptr %0, align 8, !tbaa !99
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !84 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !100
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !84 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !100
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !84 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !84 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !84 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !84 {
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
  br i1 %23, label %7, label %24, !llvm.loop !101

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !84 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @gsi_insert_seq_before_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !104 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %64, label %5, !prof !105

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %10, !prof !105

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 152, ptr noundef nonnull @.str.1) #14
  br label %10

10:                                               ; preds = %9, %5
  %11 = load ptr, ptr %1, align 8, !tbaa !108
  %12 = getelementptr inbounds %struct.gimple_seq_d, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  tail call void @gimple_seq_free(ptr noundef nonnull %1) #14
  %14 = icmp ne ptr %11, null
  %15 = icmp ne ptr %13, null
  %16 = select i1 %14, i1 %15, i1 false, !prof !111
  br i1 %16, label %20, label %17, !prof !111

17:                                               ; preds = %10
  %18 = icmp eq ptr %11, %13
  br i1 %18, label %64, label %19

19:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @.str.1) #14
  br label %64

20:                                               ; preds = %10
  %21 = load ptr, ptr %0, align 8, !tbaa !112
  %22 = getelementptr inbounds i8, ptr %0, i64 16
  %23 = load ptr, ptr %22, align 1
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25, !prof !113

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %29, %25 ], [ %11, %20 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !114
  tail call void @gimple_set_bb(ptr noundef %27, ptr noundef nonnull %23) #14
  %28 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !116
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %25, !prof !117, !llvm.loop !118

31:                                               ; preds = %25, %20
  %32 = icmp eq ptr %21, null
  br i1 %32, label %45, label %33, !prof !119

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %21, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !120
  %36 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %11, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !120
  %37 = icmp eq ptr %35, null
  br i1 %37, label %40, label %38, !prof !121

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %35, i64 0, i32 2
  br label %42

40:                                               ; preds = %33
  %41 = load ptr, ptr %6, align 8, !tbaa !106
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi ptr [ %41, %40 ], [ %39, %38 ]
  store ptr %11, ptr %43, align 8, !tbaa !85
  %44 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %13, i64 0, i32 2
  store ptr %21, ptr %44, align 8, !tbaa !116
  br label %60

45:                                               ; preds = %31
  %46 = load ptr, ptr %6, align 8, !tbaa !106
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48, !prof !122

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.gimple_seq_d, ptr %46, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !110
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi ptr [ %50, %48 ], [ null, %45 ]
  %53 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %11, i64 0, i32 1
  store ptr %52, ptr %53, align 8, !tbaa !120
  %54 = icmp eq ptr %52, null
  br i1 %54, label %57, label %55, !prof !123

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %52, i64 0, i32 2
  br label %57

57:                                               ; preds = %51, %55
  %58 = phi ptr [ %56, %55 ], [ %46, %51 ]
  store ptr %11, ptr %58, align 8, !tbaa !85
  %59 = getelementptr inbounds %struct.gimple_seq_d, ptr %46, i64 0, i32 1
  br label %60

60:                                               ; preds = %57, %42
  %61 = phi ptr [ %59, %57 ], [ %34, %42 ]
  store ptr %13, ptr %61, align 8, !tbaa !85
  switch i32 %2, label %63 [
    i32 0, label %62
    i32 2, label %62
    i32 1, label %64
  ], !prof !124

62:                                               ; preds = %60, %60
  store ptr %11, ptr %0, align 8, !tbaa !112
  br label %64

63:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #14
  br label %64

64:                                               ; preds = %63, %62, %60, %19, %17, %3
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_seq_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @gsi_insert_seq_nodes_before(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #9 !prof !84 !PGOFuncName !125 {
  %5 = load ptr, ptr %0, align 8, !tbaa !112
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  %7 = load ptr, ptr %6, align 1
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %8, %9
  br i1 %10, label %17, label %11, !prof !113

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %15, %11 ], [ %1, %4 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  tail call void @gimple_set_bb(ptr noundef %13, ptr noundef nonnull %7) #14
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !116
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %11, !prof !117, !llvm.loop !118

17:                                               ; preds = %11, %4
  %18 = icmp eq ptr %5, null
  br i1 %18, label %32, label %19, !prof !119

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !120
  %22 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !120
  %23 = icmp eq ptr %21, null
  br i1 %23, label %26, label %24, !prof !121

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %21, i64 0, i32 2
  br label %29

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !106
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi ptr [ %28, %26 ], [ %25, %24 ]
  store ptr %1, ptr %30, align 8, !tbaa !85
  %31 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  store ptr %5, ptr %31, align 8, !tbaa !116
  br label %48

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !106
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36, !prof !122

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.gimple_seq_d, ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !110
  br label %39

39:                                               ; preds = %32, %36
  %40 = phi ptr [ %38, %36 ], [ null, %32 ]
  %41 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1, i64 0, i32 1
  store ptr %40, ptr %41, align 8, !tbaa !120
  %42 = icmp eq ptr %40, null
  br i1 %42, label %45, label %43, !prof !123

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %40, i64 0, i32 2
  br label %45

45:                                               ; preds = %39, %43
  %46 = phi ptr [ %44, %43 ], [ %34, %39 ]
  store ptr %1, ptr %46, align 8, !tbaa !85
  %47 = getelementptr inbounds %struct.gimple_seq_d, ptr %34, i64 0, i32 1
  br label %48

48:                                               ; preds = %45, %29
  %49 = phi ptr [ %47, %45 ], [ %20, %29 ]
  store ptr %2, ptr %49, align 8, !tbaa !85
  switch i32 %3, label %51 [
    i32 0, label %50
    i32 2, label %50
    i32 1, label %52
  ], !prof !124

50:                                               ; preds = %48, %48
  store ptr %1, ptr %0, align 8, !tbaa !112
  br label %52

51:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #14
  br label %52

52:                                               ; preds = %51, %48, %50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_insert_seq_before(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !126 {
  %4 = tail call zeroext i8 @ssa_operands_active() #14
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %28, label %6, !prof !127

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, null
  br i1 %7, label %10, label %8, !prof !128

8:                                                ; preds = %6
  %9 = load ptr, ptr %1, align 8, !tbaa !108, !noalias !129
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ null, %6 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13, !prof !132

13:                                               ; preds = %10, %24
  %14 = phi ptr [ %26, %24 ], [ %11, %10 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 255
  %18 = add nsw i32 %17, -10
  %19 = icmp ult i32 %18, -9
  %20 = and i32 %16, 8192
  %21 = icmp eq i32 %20, 0
  %22 = or i1 %21, %19
  br i1 %22, label %24, label %23, !prof !133

23:                                               ; preds = %13
  tail call void @update_stmt_operands(ptr noundef nonnull %15) #14
  br label %24

24:                                               ; preds = %23, %13
  %25 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %14, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !116
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !prof !134, !llvm.loop !135

28:                                               ; preds = %24, %3, %10
  tail call void @gsi_insert_seq_before_without_update(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_modified_stmts(ptr noundef readonly %0) unnamed_addr #10 !prof !84 !PGOFuncName !136 {
  %2 = tail call zeroext i8 @ssa_operands_active() #14
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %26, label %4, !prof !127

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %8, label %6, !prof !128

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !108, !noalias !137
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %7, %6 ], [ null, %4 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11, !prof !132

11:                                               ; preds = %8, %22
  %12 = phi ptr [ %24, %22 ], [ %9, %8 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 255
  %16 = add nsw i32 %15, -10
  %17 = icmp ult i32 %16, -9
  %18 = and i32 %14, 8192
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %19, %17
  br i1 %20, label %22, label %21, !prof !133

21:                                               ; preds = %11
  tail call void @update_stmt_operands(ptr noundef nonnull %13) #14
  br label %22

22:                                               ; preds = %11, %21
  %23 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %12, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !116
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %11, !prof !134, !llvm.loop !135

26:                                               ; preds = %22, %8, %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gsi_insert_seq_after_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !140 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %63, label %5, !prof !141

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %10, !prof !141

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 263, ptr noundef nonnull @.str.1) #14
  br label %10

10:                                               ; preds = %9, %5
  %11 = load ptr, ptr %1, align 8, !tbaa !108
  %12 = getelementptr inbounds %struct.gimple_seq_d, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  tail call void @gimple_seq_free(ptr noundef nonnull %1) #14
  %14 = icmp ne ptr %11, null
  %15 = icmp ne ptr %13, null
  %16 = select i1 %14, i1 %15, i1 false, !prof !142
  br i1 %16, label %20, label %17, !prof !142

17:                                               ; preds = %10
  %18 = icmp eq ptr %11, %13
  br i1 %18, label %63, label %19, !prof !143

19:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 275, ptr noundef nonnull @.str.1) #14
  br label %63

20:                                               ; preds = %10
  %21 = load ptr, ptr %0, align 8, !tbaa !112
  %22 = getelementptr inbounds i8, ptr %0, i64 16
  %23 = load ptr, ptr %22, align 1
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25, !prof !144

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %29, %25 ], [ %11, %20 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !114
  tail call void @gimple_set_bb(ptr noundef %27, ptr noundef nonnull %23) #14
  %28 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !116
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %25, !prof !145, !llvm.loop !118

31:                                               ; preds = %25, %20
  %32 = icmp eq ptr %21, null
  br i1 %32, label %46, label %33, !prof !146

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %21, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !116
  %36 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %13, i64 0, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !116
  %37 = icmp eq ptr %35, null
  br i1 %37, label %40, label %38, !prof !147

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %35, i64 0, i32 1
  br label %43

40:                                               ; preds = %33
  %41 = load ptr, ptr %6, align 8, !tbaa !106
  %42 = getelementptr inbounds %struct.gimple_seq_d, ptr %41, i64 0, i32 1
  br label %43

43:                                               ; preds = %40, %38
  %44 = phi ptr [ %42, %40 ], [ %39, %38 ]
  store ptr %13, ptr %44, align 8, !tbaa !85
  %45 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %11, i64 0, i32 1
  store ptr %21, ptr %45, align 8, !tbaa !120
  store ptr %11, ptr %34, align 8, !tbaa !116
  br label %57

46:                                               ; preds = %31
  %47 = load ptr, ptr %6, align 8, !tbaa !106
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49, !prof !148

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.gimple_seq_d, ptr %47, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !110
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53, !prof !149

53:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 222, ptr noundef nonnull @.str.1) #14
  br label %54

54:                                               ; preds = %53, %49, %46
  %55 = load ptr, ptr %6, align 8, !tbaa !106
  store ptr %11, ptr %55, align 8, !tbaa !108
  %56 = getelementptr inbounds %struct.gimple_seq_d, ptr %55, i64 0, i32 1
  store ptr %13, ptr %56, align 8, !tbaa !110
  br label %57

57:                                               ; preds = %54, %43
  switch i32 %2, label %62 [
    i32 0, label %58
    i32 2, label %59
    i32 1, label %60
  ], !prof !150

58:                                               ; preds = %57
  store ptr %11, ptr %0, align 8, !tbaa !112
  br label %63

59:                                               ; preds = %57
  store ptr %13, ptr %0, align 8, !tbaa !112
  br label %63

60:                                               ; preds = %57
  br i1 %32, label %61, label %63, !prof !151

61:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 237, ptr noundef nonnull @.str.1) #14
  br label %63

62:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 240, ptr noundef nonnull @.str.1) #14
  br label %63

63:                                               ; preds = %62, %61, %60, %59, %58, %19, %17, %3
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gsi_insert_seq_after(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !152 {
  %4 = tail call zeroext i8 @ssa_operands_active() #14
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %28, label %6, !prof !127

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, null
  br i1 %7, label %10, label %8, !prof !128

8:                                                ; preds = %6
  %9 = load ptr, ptr %1, align 8, !tbaa !108, !noalias !153
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ null, %6 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13, !prof !132

13:                                               ; preds = %10, %24
  %14 = phi ptr [ %26, %24 ], [ %11, %10 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 255
  %18 = add nsw i32 %17, -10
  %19 = icmp ult i32 %18, -9
  %20 = and i32 %16, 8192
  %21 = icmp eq i32 %20, 0
  %22 = or i1 %21, %19
  br i1 %22, label %24, label %23, !prof !133

23:                                               ; preds = %13
  tail call void @update_stmt_operands(ptr noundef nonnull %15) #14
  br label %24

24:                                               ; preds = %23, %13
  %25 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %14, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !116
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !prof !134, !llvm.loop !135

28:                                               ; preds = %24, %3, %10
  %29 = icmp eq ptr %1, null
  br i1 %29, label %88, label %30, !prof !141

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = icmp eq ptr %32, %1
  br i1 %33, label %34, label %35, !prof !141

34:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 263, ptr noundef nonnull @.str.1) #14
  br label %35

35:                                               ; preds = %34, %30
  %36 = load ptr, ptr %1, align 8, !tbaa !108
  %37 = getelementptr inbounds %struct.gimple_seq_d, ptr %1, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  tail call void @gimple_seq_free(ptr noundef nonnull %1) #14
  %39 = icmp ne ptr %36, null
  %40 = icmp ne ptr %38, null
  %41 = select i1 %39, i1 %40, i1 false, !prof !142
  br i1 %41, label %45, label %42, !prof !142

42:                                               ; preds = %35
  %43 = icmp eq ptr %36, %38
  br i1 %43, label %88, label %44, !prof !143

44:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 275, ptr noundef nonnull @.str.1) #14
  br label %88

45:                                               ; preds = %35
  %46 = load ptr, ptr %0, align 8, !tbaa !112
  %47 = getelementptr inbounds i8, ptr %0, i64 16
  %48 = load ptr, ptr %47, align 1
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50, !prof !144

50:                                               ; preds = %45, %50
  %51 = phi ptr [ %54, %50 ], [ %36, %45 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !114
  tail call void @gimple_set_bb(ptr noundef %52, ptr noundef nonnull %48) #14
  %53 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %51, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !116
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %50, !prof !145, !llvm.loop !118

56:                                               ; preds = %50, %45
  %57 = icmp eq ptr %46, null
  br i1 %57, label %71, label %58, !prof !146

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %46, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !116
  %61 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %38, i64 0, i32 2
  store ptr %60, ptr %61, align 8, !tbaa !116
  %62 = icmp eq ptr %60, null
  br i1 %62, label %65, label %63, !prof !147

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %60, i64 0, i32 1
  br label %68

65:                                               ; preds = %58
  %66 = load ptr, ptr %31, align 8, !tbaa !106
  %67 = getelementptr inbounds %struct.gimple_seq_d, ptr %66, i64 0, i32 1
  br label %68

68:                                               ; preds = %65, %63
  %69 = phi ptr [ %67, %65 ], [ %64, %63 ]
  store ptr %38, ptr %69, align 8, !tbaa !85
  %70 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %36, i64 0, i32 1
  store ptr %46, ptr %70, align 8, !tbaa !120
  store ptr %36, ptr %59, align 8, !tbaa !116
  br label %82

71:                                               ; preds = %56
  %72 = load ptr, ptr %31, align 8, !tbaa !106
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74, !prof !148

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.gimple_seq_d, ptr %72, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !110
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78, !prof !149

78:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 222, ptr noundef nonnull @.str.1) #14
  br label %79

79:                                               ; preds = %78, %74, %71
  %80 = load ptr, ptr %31, align 8, !tbaa !106
  store ptr %36, ptr %80, align 8, !tbaa !108
  %81 = getelementptr inbounds %struct.gimple_seq_d, ptr %80, i64 0, i32 1
  store ptr %38, ptr %81, align 8, !tbaa !110
  br label %82

82:                                               ; preds = %79, %68
  switch i32 %2, label %87 [
    i32 0, label %83
    i32 2, label %84
    i32 1, label %85
  ], !prof !150

83:                                               ; preds = %82
  store ptr %36, ptr %0, align 8, !tbaa !112
  br label %88

84:                                               ; preds = %82
  store ptr %38, ptr %0, align 8, !tbaa !112
  br label %88

85:                                               ; preds = %82
  br i1 %57, label %86, label %88, !prof !151

86:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 237, ptr noundef nonnull @.str.1) #14
  br label %88

87:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 240, ptr noundef nonnull @.str.1) #14
  br label %88

88:                                               ; preds = %28, %42, %44, %83, %84, %85, %86, %87
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gsi_split_seq_after(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) local_unnamed_addr #11 !prof !84 {
  %2 = load ptr, ptr %0, align 8, !tbaa !112
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 308, ptr noundef nonnull @.str.1) #14
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !116
  %12 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = tail call ptr @gimple_seq_alloc() #14
  store ptr %11, ptr %14, align 8, !tbaa !108
  %15 = icmp eq ptr %13, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.gimple_seq_d, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !110
  br label %19

19:                                               ; preds = %9, %16
  %20 = phi ptr [ %18, %16 ], [ null, %9 ]
  %21 = getelementptr inbounds %struct.gimple_seq_d, ptr %14, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !110
  %22 = getelementptr inbounds %struct.gimple_seq_d, ptr %13, i64 0, i32 1
  store ptr %2, ptr %22, align 8, !tbaa !110
  store ptr null, ptr %10, align 8, !tbaa !116
  %23 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %11, i64 0, i32 1
  store ptr null, ptr %23, align 8, !tbaa !120
  ret ptr %14
}

declare ptr @gimple_seq_alloc() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @gsi_split_seq_before(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !156 {
  %2 = load ptr, ptr %0, align 8, !tbaa !112
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !157

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 336, ptr noundef nonnull @.str.1) #14
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  %8 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = tail call ptr @gimple_seq_alloc() #14
  store ptr %10, ptr %8, align 8, !tbaa !106
  store ptr %2, ptr %10, align 8, !tbaa !108
  %11 = icmp eq ptr %9, null
  br i1 %11, label %15, label %12, !prof !157

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.gimple_seq_d, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  br label %15

15:                                               ; preds = %5, %12
  %16 = phi ptr [ %14, %12 ], [ null, %5 ]
  %17 = getelementptr inbounds %struct.gimple_seq_d, ptr %10, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !110
  %18 = getelementptr inbounds %struct.gimple_seq_d, ptr %9, i64 0, i32 1
  store ptr %7, ptr %18, align 8, !tbaa !110
  store ptr null, ptr %6, align 8, !tbaa !120
  %19 = icmp eq ptr %7, null
  %20 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %7, i64 0, i32 2
  %21 = select i1 %19, ptr %9, ptr %20, !prof !157
  store ptr null, ptr %21, align 8, !tbaa !85
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_replace(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !158 {
  %4 = load ptr, ptr %0, align 1
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %95, label %7, !prof !159

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %29 [
    i8 6, label %24
    i8 8, label %10
  ], !prof !160

10:                                               ; preds = %7
  %11 = and i32 %8, 255
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !100
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !161
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20, !prof !162

19:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #14
  br label %20

20:                                               ; preds = %19, %10
  %21 = getelementptr inbounds i8, ptr %5, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !85
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24, !prof !159

24:                                               ; preds = %7, %20
  %25 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %5) #14
  %26 = tail call ptr @gimple_get_lhs(ptr noundef %1) #14
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %29, label %28, !prof !163

28:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 373, ptr noundef nonnull @.str.1) #14
  br label %29

29:                                               ; preds = %7, %20, %24, %28
  %30 = getelementptr inbounds %struct.gimple_statement_base, ptr %5, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !96
  %32 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 2
  store i32 %31, ptr %32, align 8, !tbaa !96
  %33 = getelementptr inbounds i8, ptr %0, i64 16
  %34 = load ptr, ptr %33, align 1
  tail call void @gimple_set_bb(ptr noundef %1, ptr noundef %34) #14
  %35 = icmp eq i8 %2, 0
  br i1 %35, label %38, label %36, !prof !164

36:                                               ; preds = %29
  %37 = tail call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef nonnull %5, ptr noundef %1) #14
  br label %38

38:                                               ; preds = %36, %29
  %39 = load ptr, ptr @cfun, align 8, !tbaa !85
  tail call void @gimple_duplicate_stmt_histograms(ptr noundef %39, ptr noundef %1, ptr noundef %39, ptr noundef nonnull %5) #14
  %40 = load ptr, ptr @cfun, align 8, !tbaa !85
  tail call void @gimple_remove_stmt_histograms(ptr noundef %40, ptr noundef nonnull %5) #14
  %41 = tail call zeroext i8 @ssa_operands_active() #14
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %82, label %43, !prof !159

43:                                               ; preds = %38
  %44 = load i32, ptr %5, align 8
  %45 = and i32 %44, 255
  %46 = add nsw i32 %45, -10
  %47 = icmp ult i32 %46, -9
  br i1 %47, label %51, label %48, !prof !159

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %5, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !96
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi ptr [ %50, %48 ], [ null, %43 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54, !prof !159

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.use_optype_d, ptr %52, i64 0, i32 1
  %56 = load ptr, ptr %52, align 8, !tbaa !165
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi ptr [ %56, %54 ], [ %52, %51 ]
  %59 = phi i8 [ 0, %54 ], [ 1, %51 ]
  %60 = phi ptr [ %55, %54 ], [ null, %51 ]
  br i1 %53, label %82, label %61, !prof !168

61:                                               ; preds = %57, %77
  %62 = phi ptr [ %80, %77 ], [ %60, %57 ]
  %63 = phi i8 [ %79, %77 ], [ %59, %57 ]
  %64 = phi ptr [ %78, %77 ], [ %58, %57 ]
  %65 = load ptr, ptr %62, align 8, !tbaa !169
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67, !prof !170

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %62, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !171
  %70 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %65, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !171
  %71 = load ptr, ptr %68, align 8, !tbaa !171
  store ptr %65, ptr %71, align 8, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, i8 0, i64 16, i1 false)
  br label %72

72:                                               ; preds = %67, %61
  %73 = icmp eq ptr %64, null
  br i1 %73, label %77, label %74, !prof !172

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.use_optype_d, ptr %64, i64 0, i32 1
  %76 = load ptr, ptr %64, align 8, !tbaa !165
  br label %77

77:                                               ; preds = %72, %74
  %78 = phi ptr [ %76, %74 ], [ %64, %72 ]
  %79 = phi i8 [ %63, %74 ], [ 1, %72 ]
  %80 = phi ptr [ %75, %74 ], [ null, %72 ]
  %81 = icmp eq i8 %79, 0
  br i1 %81, label %61, label %82, !prof !173, !llvm.loop !174

82:                                               ; preds = %77, %57, %38
  %83 = load ptr, ptr %0, align 8, !tbaa !112
  store ptr %1, ptr %83, align 8, !tbaa !85
  tail call void @gimple_set_modified(ptr noundef %1, i8 noundef zeroext 1) #14
  %84 = tail call zeroext i8 @ssa_operands_active() #14
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %95, label %86, !prof !159

86:                                               ; preds = %82
  %87 = load i32, ptr %1, align 8
  %88 = and i32 %87, 255
  %89 = add nsw i32 %88, -10
  %90 = icmp ult i32 %89, -9
  %91 = and i32 %87, 8192
  %92 = icmp eq i32 %91, 0
  %93 = or i1 %92, %90
  br i1 %93, label %95, label %94, !prof !159

94:                                               ; preds = %86
  tail call void @update_stmt_operands(ptr noundef nonnull %1) #14
  br label %95

95:                                               ; preds = %94, %86, %82, %3
  ret void
}

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare void @gimple_set_bb(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_duplicate_stmt_histograms(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_remove_stmt_histograms(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gsi_insert_before_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !84 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #14
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !114
  tail call fastcc void @gsi_insert_seq_nodes_before(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef %2)
  ret void
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @gsi_insert_before(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !175 {
  %4 = tail call zeroext i8 @ssa_operands_active() #14
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6, !prof !176

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 255
  %9 = add nsw i32 %8, -10
  %10 = icmp ult i32 %9, -9
  %11 = and i32 %7, 8192
  %12 = icmp eq i32 %11, 0
  %13 = or i1 %12, %10
  br i1 %13, label %15, label %14, !prof !177

14:                                               ; preds = %6
  tail call void @update_stmt_operands(ptr noundef nonnull %1) #14
  br label %15

15:                                               ; preds = %3, %6, %14
  %16 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #14
  %17 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %16, i64 0, i32 2
  %18 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %16, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  store ptr %1, ptr %16, align 8, !tbaa !114
  %19 = load ptr, ptr %0, align 8, !tbaa !112
  %20 = getelementptr inbounds i8, ptr %0, i64 16
  %21 = load ptr, ptr %20, align 1
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23, !prof !113

23:                                               ; preds = %15, %23
  %24 = phi ptr [ %27, %23 ], [ %16, %15 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !114
  tail call void @gimple_set_bb(ptr noundef %25, ptr noundef nonnull %21) #14
  %26 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %24, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !116
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %23, !prof !117, !llvm.loop !118

29:                                               ; preds = %23, %15
  %30 = icmp eq ptr %19, null
  br i1 %30, label %42, label %31, !prof !119

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %19, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !120
  store ptr %33, ptr %18, align 8, !tbaa !120
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !121

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %33, i64 0, i32 2
  br label %40

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !106
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi ptr [ %39, %37 ], [ %36, %35 ]
  store ptr %16, ptr %41, align 8, !tbaa !85
  store ptr %19, ptr %17, align 8, !tbaa !116
  br label %57

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !106
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46, !prof !122

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.gimple_seq_d, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !110
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi ptr [ %48, %46 ], [ null, %42 ]
  store ptr %50, ptr %18, align 8, !tbaa !120
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !123

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %50, i64 0, i32 2
  br label %54

54:                                               ; preds = %49, %52
  %55 = phi ptr [ %53, %52 ], [ %44, %49 ]
  store ptr %16, ptr %55, align 8, !tbaa !85
  %56 = getelementptr inbounds %struct.gimple_seq_d, ptr %44, i64 0, i32 1
  br label %57

57:                                               ; preds = %54, %40
  %58 = phi ptr [ %56, %54 ], [ %32, %40 ]
  store ptr %16, ptr %58, align 8, !tbaa !85
  switch i32 %2, label %60 [
    i32 0, label %59
    i32 2, label %59
    i32 1, label %61
  ], !prof !124

59:                                               ; preds = %57, %57
  store ptr %16, ptr %0, align 8, !tbaa !112
  br label %61

60:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #14
  br label %61

61:                                               ; preds = %57, %59, %60
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gsi_insert_after_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !178 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #14
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !114
  %7 = load ptr, ptr %0, align 8, !tbaa !112
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  %9 = load ptr, ptr %8, align 1
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !144

11:                                               ; preds = %3, %11
  %12 = phi ptr [ %15, %11 ], [ %4, %3 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  tail call void @gimple_set_bb(ptr noundef %13, ptr noundef nonnull %9) #14
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !116
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %11, !prof !145, !llvm.loop !118

17:                                               ; preds = %11, %3
  %18 = icmp eq ptr %7, null
  br i1 %18, label %31, label %19, !prof !146

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %7, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !116
  store ptr %21, ptr %5, align 8, !tbaa !116
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !147

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %21, i64 0, i32 1
  br label %29

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !106
  %28 = getelementptr inbounds %struct.gimple_seq_d, ptr %27, i64 0, i32 1
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi ptr [ %28, %25 ], [ %24, %23 ]
  store ptr %4, ptr %30, align 8, !tbaa !85
  store ptr %7, ptr %6, align 8, !tbaa !120
  br label %43

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !106
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35, !prof !148

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gimple_seq_d, ptr %33, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !110
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !149

39:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 222, ptr noundef nonnull @.str.1) #14
  br label %40

40:                                               ; preds = %39, %35, %31
  %41 = load ptr, ptr %32, align 8, !tbaa !106
  store ptr %4, ptr %41, align 8, !tbaa !108
  %42 = getelementptr inbounds %struct.gimple_seq_d, ptr %41, i64 0, i32 1
  br label %43

43:                                               ; preds = %40, %29
  %44 = phi ptr [ %42, %40 ], [ %20, %29 ]
  store ptr %4, ptr %44, align 8, !tbaa !85
  switch i32 %2, label %49 [
    i32 0, label %45
    i32 2, label %46
    i32 1, label %47
  ], !prof !150

45:                                               ; preds = %43
  store ptr %4, ptr %0, align 8, !tbaa !112
  br label %50

46:                                               ; preds = %43
  store ptr %4, ptr %0, align 8, !tbaa !112
  br label %50

47:                                               ; preds = %43
  br i1 %18, label %48, label %50, !prof !151

48:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 237, ptr noundef nonnull @.str.1) #14
  br label %50

49:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 240, ptr noundef nonnull @.str.1) #14
  br label %50

50:                                               ; preds = %45, %46, %47, %48, %49
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gsi_insert_after(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !179 {
  %4 = tail call zeroext i8 @ssa_operands_active() #14
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6, !prof !180

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 255
  %9 = add nsw i32 %8, -10
  %10 = icmp ult i32 %9, -9
  %11 = and i32 %7, 8192
  %12 = icmp eq i32 %11, 0
  %13 = or i1 %12, %10
  br i1 %13, label %15, label %14, !prof !181

14:                                               ; preds = %6
  tail call void @update_stmt_operands(ptr noundef nonnull %1) #14
  br label %15

15:                                               ; preds = %3, %6, %14
  %16 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #14
  %17 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %16, i64 0, i32 2
  %18 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %16, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  store ptr %1, ptr %16, align 8, !tbaa !114
  %19 = load ptr, ptr %0, align 8, !tbaa !112
  %20 = getelementptr inbounds i8, ptr %0, i64 16
  %21 = load ptr, ptr %20, align 1
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23, !prof !144

23:                                               ; preds = %15, %23
  %24 = phi ptr [ %27, %23 ], [ %16, %15 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !114
  tail call void @gimple_set_bb(ptr noundef %25, ptr noundef nonnull %21) #14
  %26 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %24, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !116
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %23, !prof !145, !llvm.loop !118

29:                                               ; preds = %23, %15
  %30 = icmp eq ptr %19, null
  br i1 %30, label %43, label %31, !prof !146

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %19, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !116
  store ptr %33, ptr %17, align 8, !tbaa !116
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !147

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %33, i64 0, i32 1
  br label %41

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !106
  %40 = getelementptr inbounds %struct.gimple_seq_d, ptr %39, i64 0, i32 1
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi ptr [ %40, %37 ], [ %36, %35 ]
  store ptr %16, ptr %42, align 8, !tbaa !85
  store ptr %19, ptr %18, align 8, !tbaa !120
  br label %55

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !106
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47, !prof !148

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.gimple_seq_d, ptr %45, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !110
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51, !prof !149

51:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 222, ptr noundef nonnull @.str.1) #14
  br label %52

52:                                               ; preds = %51, %47, %43
  %53 = load ptr, ptr %44, align 8, !tbaa !106
  store ptr %16, ptr %53, align 8, !tbaa !108
  %54 = getelementptr inbounds %struct.gimple_seq_d, ptr %53, i64 0, i32 1
  br label %55

55:                                               ; preds = %52, %41
  %56 = phi ptr [ %54, %52 ], [ %32, %41 ]
  store ptr %16, ptr %56, align 8, !tbaa !85
  switch i32 %2, label %61 [
    i32 0, label %57
    i32 2, label %58
    i32 1, label %59
  ], !prof !150

57:                                               ; preds = %55
  store ptr %16, ptr %0, align 8, !tbaa !112
  br label %62

58:                                               ; preds = %55
  store ptr %16, ptr %0, align 8, !tbaa !112
  br label %62

59:                                               ; preds = %55
  br i1 %30, label %60, label %62, !prof !151

60:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 237, ptr noundef nonnull @.str.1) #14
  br label %62

61:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 240, ptr noundef nonnull @.str.1) #14
  br label %62

62:                                               ; preds = %57, %58, %59, %60, %61
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gsi_remove(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #10 !prof !182 {
  %3 = load ptr, ptr %0, align 1
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !114
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %10, label %9, !prof !183

9:                                                ; preds = %2
  tail call void @insert_debug_temps_for_defs(ptr noundef nonnull %0) #14
  br label %10

10:                                               ; preds = %9, %2
  tail call void @gimple_set_bb(ptr noundef nonnull %5, ptr noundef null) #14
  %11 = tail call zeroext i8 @ssa_operands_active() #14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %52, label %13, !prof !184

13:                                               ; preds = %10
  %14 = load i32, ptr %5, align 8
  %15 = and i32 %14, 255
  %16 = add nsw i32 %15, -10
  %17 = icmp ult i32 %16, -9
  br i1 %17, label %21, label %18, !prof !185

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %5, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !96
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi ptr [ %20, %18 ], [ null, %13 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !186

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.use_optype_d, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %22, align 8, !tbaa !165
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %26, %24 ], [ %22, %21 ]
  %29 = phi i8 [ 0, %24 ], [ 1, %21 ]
  %30 = phi ptr [ %25, %24 ], [ null, %21 ]
  br i1 %23, label %52, label %31, !prof !187

31:                                               ; preds = %27, %47
  %32 = phi ptr [ %50, %47 ], [ %30, %27 ]
  %33 = phi i8 [ %49, %47 ], [ %29, %27 ]
  %34 = phi ptr [ %48, %47 ], [ %28, %27 ]
  %35 = load ptr, ptr %32, align 8, !tbaa !169
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37, !prof !188

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %32, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !171
  %40 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !171
  %41 = load ptr, ptr %38, align 8, !tbaa !171
  store ptr %35, ptr %41, align 8, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  br label %42

42:                                               ; preds = %37, %31
  %43 = icmp eq ptr %34, null
  br i1 %43, label %47, label %44, !prof !189

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.use_optype_d, ptr %34, i64 0, i32 1
  %46 = load ptr, ptr %34, align 8, !tbaa !165
  br label %47

47:                                               ; preds = %42, %44
  %48 = phi ptr [ %46, %44 ], [ %34, %42 ]
  %49 = phi i8 [ %33, %44 ], [ 1, %42 ]
  %50 = phi ptr [ %45, %44 ], [ null, %42 ]
  %51 = icmp eq i8 %49, 0
  br i1 %51, label %31, label %52, !prof !190, !llvm.loop !174

52:                                               ; preds = %47, %27, %10
  tail call void @gimple_set_modified(ptr noundef nonnull %5, i8 noundef zeroext 1) #14
  %53 = icmp eq i8 %1, 0
  br i1 %53, label %57, label %54, !prof !191

54:                                               ; preds = %52
  %55 = tail call zeroext i8 @remove_stmt_from_eh_lp(ptr noundef nonnull %5) #14
  %56 = load ptr, ptr @cfun, align 8, !tbaa !85
  tail call void @gimple_remove_stmt_histograms(ptr noundef %56, ptr noundef nonnull %5) #14
  br label %57

57:                                               ; preds = %54, %52
  %58 = load ptr, ptr %0, align 8, !tbaa !112
  %59 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !116
  %61 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %58, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !120
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64, !prof !192

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %62, i64 0, i32 2
  br label %68

66:                                               ; preds = %57
  %67 = load ptr, ptr %4, align 8, !tbaa !106
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi ptr [ %67, %66 ], [ %65, %64 ]
  store ptr %60, ptr %69, align 8, !tbaa !85
  %70 = icmp eq ptr %60, null
  br i1 %70, label %73, label %71, !prof !193

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %60, i64 0, i32 1
  br label %76

73:                                               ; preds = %68
  %74 = load ptr, ptr %4, align 8, !tbaa !106
  %75 = getelementptr inbounds %struct.gimple_seq_d, ptr %74, i64 0, i32 1
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi ptr [ %75, %73 ], [ %72, %71 ]
  store ptr %62, ptr %77, align 8, !tbaa !85
  store ptr %60, ptr %0, align 8, !tbaa !112
  ret void
}

declare void @insert_debug_temps_for_defs(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @remove_stmt_from_eh_lp(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gsi_for_stmt(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef readonly %1) local_unnamed_addr #10 !prof !194 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 16
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 13
  %9 = load i32, ptr %8, align 8, !tbaa !195, !noalias !197
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %7, label %12, label %35, !prof !198

12:                                               ; preds = %2
  br i1 %11, label %14, label %13, !prof !199

13:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.1) #14, !noalias !200
  br label %14

14:                                               ; preds = %13, %12
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !96, !noalias !200
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18, !prof !203

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gimple_bb_info, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !204, !noalias !200
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi ptr [ %20, %18 ], [ null, %14 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !206

24:                                               ; preds = %21
  %25 = load ptr, ptr %22, align 8, !tbaa !108, !noalias !207
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi ptr [ %25, %24 ], [ null, %21 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %29, !prof !210

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 8, !tbaa !114, !noalias !207
  %31 = icmp eq ptr %30, null
  br i1 %31, label %47, label %32, !prof !211

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.gimple_statement_base, ptr %30, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !96, !noalias !207
  br label %47

35:                                               ; preds = %2
  br i1 %11, label %36, label %42, !prof !212

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !96, !noalias !213
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !216

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 8, !tbaa !217, !noalias !213
  br label %42

42:                                               ; preds = %40, %36, %35
  %43 = phi ptr [ %41, %40 ], [ null, %36 ], [ null, %35 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !216

45:                                               ; preds = %42
  %46 = load ptr, ptr %43, align 8, !tbaa !108, !noalias !213
  br label %47

47:                                               ; preds = %45, %42, %32, %29, %26
  %48 = phi ptr [ %27, %26 ], [ %27, %29 ], [ %27, %32 ], [ %46, %45 ], [ null, %42 ]
  %49 = phi ptr [ %22, %26 ], [ %22, %29 ], [ %22, %32 ], [ %43, %45 ], [ %43, %42 ]
  %50 = phi ptr [ null, %26 ], [ null, %29 ], [ %34, %32 ], [ %4, %45 ], [ %4, %42 ]
  store ptr %48, ptr %0, align 8
  %51 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %49, ptr %51, align 8
  %52 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %50, ptr %52, align 8
  %53 = icmp eq ptr %48, null
  br i1 %53, label %62, label %54, !prof !218

54:                                               ; preds = %47, %58
  %55 = phi ptr [ %60, %58 ], [ %48, %47 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !114
  %57 = icmp eq ptr %56, %1
  br i1 %57, label %64, label %58, !prof !219

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %55, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !116
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %54, !prof !220, !llvm.loop !221

62:                                               ; preds = %58, %47
  %63 = phi ptr [ %48, %47 ], [ %60, %58 ]
  store ptr %63, ptr %0, align 8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 527, ptr noundef nonnull @.str.1) #14
  br label %65

64:                                               ; preds = %54
  store ptr %55, ptr %0, align 8
  br label %65

65:                                               ; preds = %64, %62
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gsi_start_phis(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !222 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !195
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !199

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.1) #14
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12, !prof !203

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gimple_bb_info, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !204
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !206

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !108, !noalias !223
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi ptr [ %19, %18 ], [ null, %15 ]
  store ptr %21, ptr %0, align 8, !tbaa !112, !alias.scope !223
  %22 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %16, ptr %22, align 8, !tbaa !106, !alias.scope !223
  %23 = icmp eq ptr %21, null
  br i1 %23, label %30, label %24, !prof !210

24:                                               ; preds = %20
  %25 = load ptr, ptr %21, align 8, !tbaa !114, !noalias !223
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27, !prof !211

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.gimple_statement_base, ptr %25, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !96, !noalias !223
  br label %30

30:                                               ; preds = %20, %24, %27
  %31 = phi ptr [ %29, %27 ], [ null, %24 ], [ null, %20 ]
  %32 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !226, !alias.scope !223
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gsi_move_after(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #11 !prof !84 {
  %3 = load ptr, ptr %0, align 1
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  tail call void @gsi_remove(ptr noundef nonnull %0, i8 noundef zeroext 0)
  tail call void @gsi_insert_after(ptr noundef %1, ptr noundef %4, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_move_before(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 !prof !227 {
  %3 = load ptr, ptr %0, align 1
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  tail call void @gsi_remove(ptr noundef nonnull %0, i8 noundef zeroext 0)
  tail call void @gsi_insert_before(ptr noundef %1, ptr noundef %4, i32 noundef 1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gsi_move_to_bb_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !84 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !195, !noalias !228
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !96, !noalias !228
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !217, !noalias !228
  br label %14

14:                                               ; preds = %12, %8, %2
  %15 = phi ptr [ %13, %12 ], [ null, %8 ], [ null, %2 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gimple_seq_d, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !110, !noalias !228
  br label %20

20:                                               ; preds = %14, %17
  %21 = phi ptr [ %19, %17 ], [ null, %14 ]
  store ptr %21, ptr %3, align 8, !tbaa !112, !alias.scope !228
  %22 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %3, i64 0, i32 1
  store ptr %15, ptr %22, align 8, !tbaa !106, !alias.scope !228
  %23 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %3, i64 0, i32 2
  store ptr %1, ptr %23, align 8, !tbaa !226, !alias.scope !228
  %24 = icmp eq ptr %21, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %21, align 8, !tbaa !114
  %27 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef %26) #14
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 1
  %31 = load ptr, ptr %30, align 8, !tbaa !114
  tail call void @gsi_remove(ptr noundef nonnull %0, i8 noundef zeroext 0)
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %31, i32 noundef 1)
  br label %35

32:                                               ; preds = %25, %20
  %33 = load ptr, ptr %0, align 1
  %34 = load ptr, ptr %33, align 8, !tbaa !114
  tail call void @gsi_remove(ptr noundef nonnull %0, i8 noundef zeroext 0)
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %34, i32 noundef 0)
  br label %35

35:                                               ; preds = %32, %29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

declare zeroext i8 @is_ctrl_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @gsi_insert_on_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !231 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %1) #14
  ret void
}

declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @gsi_insert_seq_on_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !232 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  tail call void @gimple_seq_add_seq(ptr noundef nonnull %3, ptr noundef %1) #14
  ret void
}

declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gsi_insert_on_edge_immediate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !84 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 700, ptr noundef nonnull @.str.1) #14
  br label %9

9:                                                ; preds = %2, %8
  %10 = call fastcc zeroext i8 @gimple_find_edge_insert_loc(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !233
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0)
  br label %14

13:                                               ; preds = %9
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0)
  br label %14

14:                                               ; preds = %13, %12
  %15 = load ptr, ptr %4, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @gimple_find_edge_insert_loc(ptr noundef %0, ptr nocapture noundef %1, ptr noundef writeonly %2) unnamed_addr #9 !prof !234 !PGOFuncName !235 {
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !236
  br label %6

6:                                                ; preds = %162, %3
  %7 = phi ptr [ %0, %3 ], [ %165, %162 ]
  %8 = phi ptr [ %5, %3 ], [ %153, %162 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !238
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !239

11:                                               ; preds = %6
  %12 = load i32, ptr %9, align 8, !tbaa !240
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %6, %11
  %16 = phi i8 [ %14, %11 ], [ 0, %6 ]
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %99, label %18, !prof !242

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !195
  %21 = and i32 %20, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23, !prof !243

23:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.1) #14
  br label %24

24:                                               ; preds = %23, %18
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !96
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28, !prof !244

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gimple_bb_info, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !204
  br label %31

31:                                               ; preds = %24, %28
  %32 = phi ptr [ %30, %28 ], [ null, %24 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34, !prof !243

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !108
  %36 = icmp eq ptr %35, null
  %37 = zext i1 %36 to i8
  br label %38

38:                                               ; preds = %31, %34
  %39 = phi i8 [ 1, %31 ], [ %37, %34 ]
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %99, label %41, !prof !244

41:                                               ; preds = %38
  %42 = load ptr, ptr @cfun, align 8, !tbaa !85
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !245
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !247
  %47 = icmp eq ptr %8, %46
  br i1 %47, label %99, label %48, !prof !244

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 13
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %51 = load i32, ptr %49, align 8, !tbaa !195, !noalias !249
  %52 = and i32 %51, 512
  %53 = icmp ne i32 %52, 0
  %54 = or i1 %27, %53
  br i1 %54, label %57, label %55, !prof !252

55:                                               ; preds = %48
  %56 = load ptr, ptr %26, align 8, !tbaa !217, !noalias !249
  br label %57

57:                                               ; preds = %48, %55
  %58 = phi ptr [ %56, %55 ], [ null, %48 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60, !prof !244

60:                                               ; preds = %57
  %61 = load ptr, ptr %58, align 8, !tbaa !108, !noalias !249
  br label %62

62:                                               ; preds = %57, %60
  %63 = phi ptr [ %61, %60 ], [ null, %57 ]
  store ptr %63, ptr %1, align 8, !tbaa.struct !253
  %64 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr %58, ptr %64, align 8, !tbaa.struct !254
  %65 = getelementptr inbounds i8, ptr %1, i64 16
  store ptr %8, ptr %65, align 8, !tbaa.struct !255
  %66 = icmp eq ptr %63, null
  br i1 %66, label %166, label %67, !prof !256

67:                                               ; preds = %62
  %68 = load ptr, ptr %1, align 1
  br label %69

69:                                               ; preds = %67, %75
  %70 = phi ptr [ %68, %67 ], [ %77, %75 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !114
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 255
  %74 = icmp eq i32 %73, 4
  br i1 %74, label %75, label %79, !prof !257

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %70, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !116
  store ptr %77, ptr %1, align 8, !tbaa !112
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %69, !llvm.loop !258

79:                                               ; preds = %75, %69
  %80 = load ptr, ptr %1, align 1
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %166, !prof !257

82:                                               ; preds = %79
  %83 = load i32, ptr %49, align 8, !tbaa !195, !noalias !259
  %84 = and i32 %83, 512
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load ptr, ptr %50, align 8, !tbaa !96, !noalias !259
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %87, align 8, !tbaa !217, !noalias !259
  br label %91

91:                                               ; preds = %89, %86, %82
  %92 = phi ptr [ %90, %89 ], [ null, %86 ], [ null, %82 ]
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.gimple_seq_d, ptr %92, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !110, !noalias !259
  br label %97

97:                                               ; preds = %91, %94
  %98 = phi ptr [ %96, %94 ], [ null, %91 ]
  store ptr %98, ptr %1, align 8, !tbaa.struct !253
  store ptr %92, ptr %64, align 8, !tbaa.struct !254
  store ptr %8, ptr %65, align 8, !tbaa.struct !255
  br label %166

99:                                               ; preds = %41, %38, %15
  %100 = load ptr, ptr %7, align 8, !tbaa !262
  %101 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 7
  %102 = load i32, ptr %101, align 8, !tbaa !263
  %103 = and i32 %102, 2
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %151, !prof !264

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !265
  %108 = icmp eq ptr %107, null
  br i1 %108, label %113, label %109, !prof !266

109:                                              ; preds = %105
  %110 = load i32, ptr %107, align 8, !tbaa !240
  %111 = icmp eq i32 %110, 1
  %112 = zext i1 %111 to i8
  br label %113

113:                                              ; preds = %105, %109
  %114 = phi i8 [ %112, %109 ], [ 0, %105 ]
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %151, label %116, !prof !267

116:                                              ; preds = %113
  %117 = load ptr, ptr @cfun, align 8, !tbaa !85
  %118 = getelementptr inbounds %struct.function, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !245
  %120 = load ptr, ptr %119, align 8, !tbaa !268
  %121 = icmp eq ptr %100, %120
  br i1 %121, label %151, label %122, !prof !269

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 13
  %124 = load i32, ptr %123, align 8, !tbaa !195, !noalias !270
  %125 = and i32 %124, 512
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %133, !prof !273

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 7
  %129 = load ptr, ptr %128, align 8, !tbaa !96, !noalias !270
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131, !prof !269

131:                                              ; preds = %127
  %132 = load ptr, ptr %129, align 8, !tbaa !217, !noalias !270
  br label %133

133:                                              ; preds = %131, %127, %122
  %134 = phi ptr [ %132, %131 ], [ null, %127 ], [ null, %122 ]
  %135 = icmp eq ptr %134, null
  br i1 %135, label %139, label %136, !prof !269

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.gimple_seq_d, ptr %134, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !110, !noalias !270
  br label %139

139:                                              ; preds = %133, %136
  %140 = phi ptr [ %138, %136 ], [ null, %133 ]
  %141 = getelementptr inbounds i8, ptr %1, i64 8
  %142 = getelementptr inbounds i8, ptr %1, i64 16
  store ptr %140, ptr %1, align 8, !tbaa.struct !253
  store ptr %134, ptr %141, align 8, !tbaa.struct !254
  store ptr %100, ptr %142, align 8, !tbaa.struct !255
  %143 = icmp eq ptr %140, null
  br i1 %143, label %166, label %144, !prof !273

144:                                              ; preds = %139
  %145 = load ptr, ptr %140, align 8, !tbaa !114
  %146 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %145) #14
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %166, label %148

148:                                              ; preds = %144
  %149 = load i32, ptr %145, align 8
  %150 = trunc i32 %149 to i8
  switch i8 %150, label %151 [
    i8 9, label %166
    i8 14, label %166
  ]

151:                                              ; preds = %148, %116, %113, %99
  %152 = icmp eq ptr %2, null
  %153 = tail call ptr @split_edge(ptr noundef nonnull %7) #14
  br i1 %152, label %155, label %154, !prof !274

154:                                              ; preds = %151
  store ptr %153, ptr %2, align 8, !tbaa !85
  br label %155

155:                                              ; preds = %154, %151
  %156 = load ptr, ptr %153, align 8, !tbaa !238
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %158, !prof !275

158:                                              ; preds = %155
  %159 = load i32, ptr %156, align 8, !tbaa !240
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %162, label %161, !prof !274

161:                                              ; preds = %155, %158
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.1) #14
  br label %162

162:                                              ; preds = %158, %161
  %163 = load ptr, ptr %153, align 8, !tbaa !238
  %164 = getelementptr inbounds %struct.VEC_edge_base, ptr %163, i64 0, i32 2, i64 0
  %165 = load ptr, ptr %164, align 8, !tbaa !85
  br label %6

166:                                              ; preds = %148, %148, %144, %139, %79, %62, %97
  %167 = phi i8 [ 1, %97 ], [ 1, %62 ], [ 0, %79 ], [ 1, %139 ], [ 1, %144 ], [ 0, %148 ], [ 0, %148 ]
  ret i8 %167
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !84 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 719, ptr noundef nonnull @.str.1) #14
  br label %9

9:                                                ; preds = %2, %8
  %10 = call fastcc zeroext i8 @gimple_find_edge_insert_loc(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !233
  %11 = icmp eq i8 %10, 0
  call fastcc void @update_modified_stmts(ptr noundef %1)
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call void @gsi_insert_seq_after_without_update(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0)
  br label %14

13:                                               ; preds = %9
  call void @gsi_insert_seq_before_without_update(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0)
  br label %14

14:                                               ; preds = %13, %12
  %15 = load ptr, ptr %4, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_commit_edge_inserts() local_unnamed_addr #9 !prof !276 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !85
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !245
  %5 = load ptr, ptr %4, align 8, !tbaa !268
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !265
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !277

9:                                                ; preds = %0
  %10 = load i32, ptr %7, align 8, !tbaa !240
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %13, label %12, !prof !278

12:                                               ; preds = %0, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.1) #14
  br label %13

13:                                               ; preds = %9, %12
  %14 = load ptr, ptr %6, align 8, !tbaa !265
  %15 = getelementptr inbounds %struct.VEC_edge_base, ptr %14, i64 0, i32 2, i64 0
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  tail call void @gsi_commit_one_edge_insert(ptr noundef %16, ptr noundef null)
  %17 = load ptr, ptr @cfun, align 8, !tbaa !85
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !245
  %20 = load ptr, ptr %19, align 8, !tbaa !268
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !279
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !247
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %114, label %35, !prof !280

26:                                               ; preds = %51
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !279
  %29 = load ptr, ptr @cfun, align 8, !tbaa !85
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !245
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !247
  %34 = icmp eq ptr %28, %33
  br i1 %34, label %114, label %35, !prof !281, !llvm.loop !282

35:                                               ; preds = %13, %26
  %36 = phi ptr [ %28, %26 ], [ %22, %13 ]
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 1
  br label %38

38:                                               ; preds = %112, %35
  %39 = phi i32 [ 0, %35 ], [ %113, %112 ]
  %40 = load ptr, ptr %37, align 8, !tbaa !85
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42, !prof !283

42:                                               ; preds = %38
  %43 = load i32, ptr %40, align 8, !tbaa !240
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi i32 [ %43, %42 ], [ 0, %38 ]
  %46 = icmp eq i32 %45, %39
  br i1 %46, label %51, label %47, !prof !284

47:                                               ; preds = %44
  %48 = zext i32 %39 to i64
  %49 = getelementptr inbounds %struct.VEC_edge_base, ptr %40, i64 0, i32 2, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !85
  br label %51

51:                                               ; preds = %44, %47
  %52 = phi ptr [ %50, %47 ], [ null, %44 ]
  br i1 %46, label %26, label %53, !prof !284

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !96
  %56 = icmp eq ptr %55, null
  br i1 %56, label %103, label %57, !prof !285

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #14
  store ptr null, ptr %54, align 8, !tbaa !96
  %58 = call fastcc zeroext i8 @gimple_find_edge_insert_loc(ptr noundef %52, ptr noundef nonnull %1, ptr noundef null), !range !233
  %59 = icmp eq i8 %58, 0
  %60 = tail call zeroext i8 @ssa_operands_active() #14
  %61 = icmp eq i8 %60, 0
  br i1 %59, label %82, label %62, !prof !286

62:                                               ; preds = %57
  br i1 %61, label %81, label %63, !prof !127

63:                                               ; preds = %62
  %64 = load ptr, ptr %55, align 8, !tbaa !108, !noalias !287
  %65 = icmp eq ptr %64, null
  br i1 %65, label %81, label %66, !prof !132

66:                                               ; preds = %63, %77
  %67 = phi ptr [ %79, %77 ], [ %64, %63 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !114
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 255
  %71 = add nsw i32 %70, -10
  %72 = icmp ult i32 %71, -9
  %73 = and i32 %69, 8192
  %74 = icmp eq i32 %73, 0
  %75 = or i1 %74, %72
  br i1 %75, label %77, label %76, !prof !133

76:                                               ; preds = %66
  tail call void @update_stmt_operands(ptr noundef nonnull %68) #14
  br label %77

77:                                               ; preds = %76, %66
  %78 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %67, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !116
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %66, !prof !134, !llvm.loop !135

81:                                               ; preds = %77, %63, %62
  call void @gsi_insert_seq_after_without_update(ptr noundef nonnull %1, ptr noundef nonnull %55, i32 noundef 0)
  br label %102

82:                                               ; preds = %57
  br i1 %61, label %101, label %83, !prof !127

83:                                               ; preds = %82
  %84 = load ptr, ptr %55, align 8, !tbaa !108, !noalias !290
  %85 = icmp eq ptr %84, null
  br i1 %85, label %101, label %86, !prof !132

86:                                               ; preds = %83, %97
  %87 = phi ptr [ %99, %97 ], [ %84, %83 ]
  %88 = load ptr, ptr %87, align 8, !tbaa !114
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 255
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -9
  %93 = and i32 %89, 8192
  %94 = icmp eq i32 %93, 0
  %95 = or i1 %94, %92
  br i1 %95, label %97, label %96, !prof !133

96:                                               ; preds = %86
  tail call void @update_stmt_operands(ptr noundef nonnull %88) #14
  br label %97

97:                                               ; preds = %96, %86
  %98 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %87, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !116
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %86, !prof !134, !llvm.loop !135

101:                                              ; preds = %97, %83, %82
  call void @gsi_insert_seq_before_without_update(ptr noundef nonnull %1, ptr noundef nonnull %55, i32 noundef 0)
  br label %102

102:                                              ; preds = %101, %81
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #14
  br label %103

103:                                              ; preds = %53, %102
  %104 = load ptr, ptr %37, align 8, !tbaa !85
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106, !prof !293

106:                                              ; preds = %103
  %107 = load i32, ptr %104, align 8, !tbaa !240
  br label %108

108:                                              ; preds = %106, %103
  %109 = phi i32 [ %107, %106 ], [ 0, %103 ]
  %110 = icmp ult i32 %39, %109
  br i1 %110, label %112, label %111, !prof !294

111:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.1) #14
  br label %112

112:                                              ; preds = %108, %111
  %113 = add i32 %39, 1
  br label %38, !llvm.loop !295

114:                                              ; preds = %26, %13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gsi_commit_one_edge_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !296 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !297

5:                                                ; preds = %2
  store ptr null, ptr %1, align 8, !tbaa !85
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = icmp eq ptr %8, null
  br i1 %9, label %56, label %10, !prof !285

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  store ptr null, ptr %7, align 8, !tbaa !96
  %11 = call fastcc zeroext i8 @gimple_find_edge_insert_loc(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1), !range !233
  %12 = icmp eq i8 %11, 0
  %13 = tail call zeroext i8 @ssa_operands_active() #14
  %14 = icmp eq i8 %13, 0
  br i1 %12, label %35, label %15, !prof !286

15:                                               ; preds = %10
  br i1 %14, label %34, label %16, !prof !127

16:                                               ; preds = %15
  %17 = load ptr, ptr %8, align 8, !tbaa !108, !noalias !298
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19, !prof !132

19:                                               ; preds = %16, %30
  %20 = phi ptr [ %32, %30 ], [ %17, %16 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !114
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 255
  %24 = add nsw i32 %23, -10
  %25 = icmp ult i32 %24, -9
  %26 = and i32 %22, 8192
  %27 = icmp eq i32 %26, 0
  %28 = or i1 %27, %25
  br i1 %28, label %30, label %29, !prof !133

29:                                               ; preds = %19
  tail call void @update_stmt_operands(ptr noundef nonnull %21) #14
  br label %30

30:                                               ; preds = %29, %19
  %31 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %20, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !116
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %19, !prof !134, !llvm.loop !135

34:                                               ; preds = %30, %15, %16
  call void @gsi_insert_seq_after_without_update(ptr noundef nonnull %3, ptr noundef nonnull %8, i32 noundef 0)
  br label %55

35:                                               ; preds = %10
  br i1 %14, label %54, label %36, !prof !127

36:                                               ; preds = %35
  %37 = load ptr, ptr %8, align 8, !tbaa !108, !noalias !301
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39, !prof !132

39:                                               ; preds = %36, %50
  %40 = phi ptr [ %52, %50 ], [ %37, %36 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !114
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 255
  %44 = add nsw i32 %43, -10
  %45 = icmp ult i32 %44, -9
  %46 = and i32 %42, 8192
  %47 = icmp eq i32 %46, 0
  %48 = or i1 %47, %45
  br i1 %48, label %50, label %49, !prof !133

49:                                               ; preds = %39
  tail call void @update_stmt_operands(ptr noundef nonnull %41) #14
  br label %50

50:                                               ; preds = %49, %39
  %51 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %40, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !116
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %39, !prof !134, !llvm.loop !135

54:                                               ; preds = %50, %35, %36
  call void @gsi_insert_seq_before_without_update(ptr noundef nonnull %3, ptr noundef nonnull %8, i32 noundef 0)
  br label %55

55:                                               ; preds = %54, %34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %56

56:                                               ; preds = %55, %6
  ret void
}

declare zeroext i8 @ssa_operands_active() local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

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
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!83}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!35 = !{ptr @gsi_insert_seq_before_without_update, ptr @gimple_seq_free, i64 21166}
!36 = !{ptr @gsi_insert_seq_before_without_update, ptr @gimple_set_bb, i64 7505}
!37 = !{ptr @gsi_insert_seq_before, ptr @ssa_operands_active, i64 695}
!38 = !{ptr @gsi_insert_seq_before, ptr @gsi_insert_seq_before_without_update, i64 695}
!39 = !{ptr @gsi_insert_seq_after_without_update, ptr @gimple_seq_free, i64 11211}
!40 = !{ptr @gsi_insert_seq_after_without_update, ptr @gimple_set_bb, i64 1155}
!41 = !{ptr @gsi_insert_seq_after, ptr @ssa_operands_active, i64 183208}
!42 = !{ptr @gsi_insert_seq_after, ptr @gimple_seq_free, i64 183208}
!43 = !{ptr @gsi_insert_seq_after, ptr @gimple_set_bb, i64 18867}
!44 = !{ptr @gsi_split_seq_before, ptr @gimple_seq_alloc, i64 187878}
!45 = !{ptr @gsi_replace, ptr @gimple_get_lhs, i64 660}
!46 = !{ptr @gsi_replace, ptr @gimple_set_bb, i64 330}
!47 = !{ptr @gsi_replace, ptr @maybe_clean_or_replace_eh_stmt, i64 282}
!48 = !{ptr @gsi_replace, ptr @gimple_duplicate_stmt_histograms, i64 330}
!49 = !{ptr @gsi_replace, ptr @gimple_remove_stmt_histograms, i64 330}
!50 = !{ptr @gsi_replace, ptr @ssa_operands_active, i64 660}
!51 = !{ptr @gsi_replace, ptr @gimple_set_modified, i64 330}
!52 = !{ptr @gsi_replace, ptr @update_stmt_operands, i64 330}
!53 = !{ptr @gsi_insert_before, ptr @ssa_operands_active, i64 44604}
!54 = !{ptr @gsi_insert_before, ptr @update_stmt_operands, i64 1096}
!55 = !{ptr @gsi_insert_before, ptr @ggc_alloc_stat, i64 44604}
!56 = !{ptr @gsi_insert_before, ptr @gimple_set_bb, i64 15816}
!57 = !{ptr @gsi_insert_after_without_update, ptr @ggc_alloc_stat, i64 656652}
!58 = !{ptr @gsi_insert_after_without_update, ptr @gimple_set_bb, i64 67736}
!59 = !{ptr @gsi_insert_after, ptr @ssa_operands_active, i64 217813}
!60 = !{ptr @gsi_insert_after, ptr @update_stmt_operands, i64 123658}
!61 = !{ptr @gsi_insert_after, ptr @ggc_alloc_stat, i64 217813}
!62 = !{ptr @gsi_insert_after, ptr @gimple_set_bb, i64 22468}
!63 = !{ptr @gsi_remove, ptr @insert_debug_temps_for_defs, i64 486863}
!64 = !{ptr @gsi_remove, ptr @gimple_set_bb, i64 578569}
!65 = !{ptr @gsi_remove, ptr @ssa_operands_active, i64 578569}
!66 = !{ptr @gsi_remove, ptr @gimple_set_modified, i64 578569}
!67 = !{ptr @gsi_remove, ptr @remove_stmt_from_eh_lp, i64 443031}
!68 = !{ptr @gsi_remove, ptr @gimple_remove_stmt_histograms, i64 443031}
!69 = !{ptr @gsi_move_before, ptr @gsi_remove, i64 236}
!70 = !{ptr @gsi_move_before, ptr @gsi_insert_before, i64 236}
!71 = !{ptr @gsi_insert_on_edge, ptr @gimple_seq_add_stmt, i64 35333}
!72 = !{ptr @gsi_insert_seq_on_edge, ptr @gimple_seq_add_seq, i64 66}
!73 = !{ptr @gimple_find_edge_insert_loc, ptr @split_edge, i64 11117}
!74 = !{ptr @gsi_commit_edge_inserts, ptr @gsi_commit_one_edge_insert, i64 143}
!75 = !{ptr @gsi_commit_edge_inserts, ptr @gimple_find_edge_insert_loc, i64 31641}
!76 = !{ptr @gsi_commit_edge_inserts, ptr @ssa_operands_active, i64 31641}
!77 = !{ptr @gsi_commit_edge_inserts, ptr @gsi_insert_seq_after_without_update, i64 11172}
!78 = !{ptr @gsi_commit_edge_inserts, ptr @gsi_insert_seq_before_without_update, i64 20469}
!79 = !{ptr @gsi_commit_one_edge_insert, ptr @gimple_find_edge_insert_loc, i64 3}
!80 = !{ptr @gsi_commit_one_edge_insert, ptr @ssa_operands_active, i64 3}
!81 = !{ptr @gsi_commit_one_edge_insert, ptr @gsi_insert_seq_after_without_update, i64 1}
!82 = !{ptr @gsi_commit_one_edge_insert, ptr @gsi_insert_seq_before_without_update, i64 2}
!83 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!84 = !{!"function_entry_count", i64 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"any pointer", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C/C++ TBAA"}
!89 = !{!90, !86, i64 8}
!90 = !{!"_IO_FILE", !91, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !86, i64 96, !86, i64 104, !91, i64 112, !91, i64 116, !92, i64 120, !93, i64 128, !87, i64 130, !87, i64 131, !86, i64 136, !92, i64 144, !86, i64 152, !86, i64 160, !86, i64 168, !86, i64 176, !92, i64 184, !91, i64 192, !87, i64 196}
!91 = !{!"int", !87, i64 0}
!92 = !{!"long", !87, i64 0}
!93 = !{!"short", !87, i64 0}
!94 = !{!90, !86, i64 16}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{!87, !87, i64 0}
!97 = !{!90, !86, i64 40}
!98 = !{!90, !86, i64 48}
!99 = !{!90, !91, i64 0}
!100 = !{!91, !91, i64 0}
!101 = distinct !{!101, !102, !103}
!102 = !{!"llvm.loop.mustprogress"}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !{!"function_entry_count", i64 21166}
!105 = !{!"branch_weights", i32 0, i32 21166}
!106 = !{!107, !86, i64 8}
!107 = !{!"", !86, i64 0, !86, i64 8, !86, i64 16}
!108 = !{!109, !86, i64 0}
!109 = !{!"gimple_seq_d", !86, i64 0, !86, i64 8, !86, i64 16}
!110 = !{!109, !86, i64 8}
!111 = !{!"branch_weights", i32 21166, i32 0}
!112 = !{!107, !86, i64 0}
!113 = !{!"branch_weights", i32 967745878, i32 493795062}
!114 = !{!115, !86, i64 0}
!115 = !{!"gimple_seq_node_d", !86, i64 0, !86, i64 8, !86, i64 16}
!116 = !{!115, !86, i64 16}
!117 = !{!"branch_weights", i32 22221, i32 1100}
!118 = distinct !{!118, !102, !103}
!119 = !{!"branch_weights", i32 42, i32 65728}
!120 = !{!115, !86, i64 8}
!121 = !{!"branch_weights", i32 20717, i32 45011}
!122 = !{!"branch_weights", i32 0, i32 42}
!123 = !{!"branch_weights", i32 42, i32 0}
!124 = !{!"branch_weights", i32 0, i32 20590, i32 0, i32 45180}
!125 = !{!"gimple-iterator.c;gsi_insert_seq_nodes_before"}
!126 = !{!"function_entry_count", i64 695}
!127 = !{!"branch_weights", i32 181822, i32 33725}
!128 = !{!"branch_weights", i32 0, i32 33725}
!129 = !{!130}
!130 = distinct !{!130, !131, !"gsi_start: argument 0"}
!131 = distinct !{!131, !"gsi_start"}
!132 = !{!"branch_weights", i32 1, i32 33724}
!133 = !{!"branch_weights", i32 37863, i32 0}
!134 = !{!"branch_weights", i32 33724, i32 4139}
!135 = distinct !{!135, !102, !103}
!136 = !{!"gimple-iterator.c;update_modified_stmts"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"gsi_start: argument 0"}
!139 = distinct !{!139, !"gsi_start"}
!140 = !{!"function_entry_count", i64 11211}
!141 = !{!"branch_weights", i32 0, i32 194419}
!142 = !{!"branch_weights", i32 194098, i32 321}
!143 = !{!"branch_weights", i32 321, i32 0}
!144 = !{!"branch_weights", i32 -1083316719, i32 356882346}
!145 = !{!"branch_weights", i32 106865, i32 3361}
!146 = !{!"branch_weights", i32 352871, i32 715692}
!147 = !{!"branch_weights", i32 715442, i32 250}
!148 = !{!"branch_weights", i32 0, i32 352871}
!149 = !{!"branch_weights", i32 352871, i32 0}
!150 = !{!"branch_weights", i32 0, i32 1068233, i32 80, i32 250}
!151 = !{!"branch_weights", i32 0, i32 250}
!152 = !{!"function_entry_count", i64 183208}
!153 = !{!154}
!154 = distinct !{!154, !155, !"gsi_start: argument 0"}
!155 = distinct !{!155, !"gsi_start"}
!156 = !{!"function_entry_count", i64 187878}
!157 = !{!"branch_weights", i32 0, i32 187878}
!158 = !{!"function_entry_count", i64 330}
!159 = !{!"branch_weights", i32 0, i32 330}
!160 = !{!"branch_weights", i32 0, i32 282, i32 48}
!161 = !{!92, !92, i64 0}
!162 = !{!"branch_weights", i32 0, i32 48}
!163 = !{!"branch_weights", i32 330, i32 0}
!164 = !{!"branch_weights", i32 48, i32 282}
!165 = !{!166, !86, i64 0}
!166 = !{!"use_optype_d", !86, i64 0, !167, i64 8}
!167 = !{!"ssa_use_operand_d", !86, i64 0, !86, i64 8, !87, i64 16, !86, i64 24}
!168 = !{!"branch_weights", i32 1, i32 329}
!169 = !{!167, !86, i64 0}
!170 = !{!"branch_weights", i32 2, i32 370}
!171 = !{!167, !86, i64 8}
!172 = !{!"branch_weights", i32 330, i32 42}
!173 = !{!"branch_weights", i32 43, i32 329}
!174 = distinct !{!174, !102, !103}
!175 = !{!"function_entry_count", i64 44604}
!176 = !{!"branch_weights", i32 43508, i32 1096}
!177 = !{!"branch_weights", i32 0, i32 1096}
!178 = !{!"function_entry_count", i64 656652}
!179 = !{!"function_entry_count", i64 217813}
!180 = !{!"branch_weights", i32 160, i32 217653}
!181 = !{!"branch_weights", i32 93995, i32 123658}
!182 = !{!"function_entry_count", i64 578569}
!183 = !{!"branch_weights", i32 91706, i32 486863}
!184 = !{!"branch_weights", i32 295767, i32 282802}
!185 = !{!"branch_weights", i32 91706, i32 191096}
!186 = !{!"branch_weights", i32 138911, i32 143891}
!187 = !{!"branch_weights", i32 98894, i32 183908}
!188 = !{!"branch_weights", i32 2, i32 183906}
!189 = !{!"branch_weights", i32 143891, i32 40017}
!190 = !{!"branch_weights", i32 0, i32 183908}
!191 = !{!"branch_weights", i32 135538, i32 443031}
!192 = !{!"branch_weights", i32 408375, i32 170194}
!193 = !{!"branch_weights", i32 277903, i32 300666}
!194 = !{!"function_entry_count", i64 399217}
!195 = !{!196, !91, i64 96}
!196 = !{!"basic_block_def", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !87, i64 32, !86, i64 48, !86, i64 56, !87, i64 64, !92, i64 72, !91, i64 80, !91, i64 84, !91, i64 88, !91, i64 92, !91, i64 96}
!197 = !{}
!198 = !{!"branch_weights", i32 46638, i32 352579}
!199 = !{!"branch_weights", i32 22894129, i32 0}
!200 = !{!201}
!201 = distinct !{!201, !202, !"gsi_start_phis: argument 0"}
!202 = distinct !{!202, !"gsi_start_phis"}
!203 = !{!"branch_weights", i32 1364, i32 22892765}
!204 = !{!205, !86, i64 8}
!205 = !{!"gimple_bb_info", !86, i64 0, !86, i64 8}
!206 = !{!"branch_weights", i32 14378198, i32 8515931}
!207 = !{!208, !201}
!208 = distinct !{!208, !209, !"gsi_start: argument 0"}
!209 = distinct !{!209, !"gsi_start"}
!210 = !{!"branch_weights", i32 15321025, i32 7573104}
!211 = !{!"branch_weights", i32 0, i32 7573104}
!212 = !{!"branch_weights", i32 352579, i32 0}
!213 = !{!214}
!214 = distinct !{!214, !215, !"gsi_start_bb: argument 0"}
!215 = distinct !{!215, !"gsi_start_bb"}
!216 = !{!"branch_weights", i32 0, i32 352579}
!217 = !{!205, !86, i64 0}
!218 = !{!"branch_weights", i32 0, i32 1}
!219 = !{!"branch_weights", i32 399217, i32 410275}
!220 = !{!"branch_weights", i32 0, i32 809492}
!221 = distinct !{!221, !102, !103}
!222 = !{!"function_entry_count", i64 22847491}
!223 = !{!224}
!224 = distinct !{!224, !225, !"gsi_start: argument 0"}
!225 = distinct !{!225, !"gsi_start"}
!226 = !{!107, !86, i64 16}
!227 = !{!"function_entry_count", i64 236}
!228 = !{!229}
!229 = distinct !{!229, !230, !"gsi_last_bb: argument 0"}
!230 = distinct !{!230, !"gsi_last_bb"}
!231 = !{!"function_entry_count", i64 35333}
!232 = !{!"function_entry_count", i64 66}
!233 = !{i8 0, i8 2}
!234 = !{!"function_entry_count", i64 31644}
!235 = !{!"gimple-iterator.c;gimple_find_edge_insert_loc"}
!236 = !{!237, !86, i64 8}
!237 = !{!"edge_def", !86, i64 0, !86, i64 8, !87, i64 16, !86, i64 24, !86, i64 32, !91, i64 40, !91, i64 44, !91, i64 48, !91, i64 52, !92, i64 56}
!238 = !{!196, !86, i64 0}
!239 = !{!"branch_weights", i32 0, i32 42761}
!240 = !{!241, !91, i64 0}
!241 = !{!"VEC_edge_base", !91, i64 0, !91, i64 4, !87, i64 8}
!242 = !{!"branch_weights", i32 11173, i32 31588}
!243 = !{!"branch_weights", i32 31588, i32 0}
!244 = !{!"branch_weights", i32 0, i32 31588}
!245 = !{!246, !86, i64 8}
!246 = !{!"function", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !86, i64 96, !91, i64 104, !91, i64 108, !91, i64 112, !91, i64 116, !91, i64 120, !91, i64 124, !86, i64 128, !91, i64 136, !91, i64 137, !91, i64 138, !91, i64 138, !91, i64 138, !91, i64 138, !91, i64 138, !91, i64 138, !91, i64 138, !91, i64 139, !91, i64 139, !91, i64 139, !91, i64 139, !91, i64 139, !91, i64 139, !91, i64 139}
!247 = !{!248, !86, i64 8}
!248 = !{!"control_flow_graph", !86, i64 0, !86, i64 8, !86, i64 16, !91, i64 24, !91, i64 28, !91, i64 32, !86, i64 40, !91, i64 48, !87, i64 52, !87, i64 60, !91, i64 68, !91, i64 72}
!249 = !{!250}
!250 = distinct !{!250, !251, !"gsi_start_bb: argument 0"}
!251 = distinct !{!251, !"gsi_start_bb"}
!252 = !{!"branch_weights", i32 0, i32 997801744}
!253 = !{i64 0, i64 8, !85, i64 8, i64 8, !85, i64 16, i64 8, !85}
!254 = !{i64 0, i64 8, !85, i64 8, i64 8, !85}
!255 = !{i64 0, i64 8, !85}
!256 = !{!"branch_weights", i32 11117, i32 20471}
!257 = !{!"branch_weights", i32 0, i32 20471}
!258 = distinct !{!258, !102, !103}
!259 = !{!260}
!260 = distinct !{!260, !261, !"gsi_last_bb: argument 0"}
!261 = distinct !{!261, !"gsi_last_bb"}
!262 = !{!237, !86, i64 0}
!263 = !{!237, !91, i64 48}
!264 = !{!"branch_weights", i32 11173, i32 0}
!265 = !{!196, !86, i64 8}
!266 = !{!"branch_weights", i32 0, i32 11173}
!267 = !{!"branch_weights", i32 11117, i32 56}
!268 = !{!248, !86, i64 0}
!269 = !{!"branch_weights", i32 0, i32 56}
!270 = !{!271}
!271 = distinct !{!271, !272, !"gsi_last_bb: argument 0"}
!272 = distinct !{!272, !"gsi_last_bb"}
!273 = !{!"branch_weights", i32 56, i32 0}
!274 = !{!"branch_weights", i32 11117, i32 0}
!275 = !{!"branch_weights", i32 0, i32 11117}
!276 = !{!"function_entry_count", i64 143}
!277 = !{!"branch_weights", i32 0, i32 143}
!278 = !{!"branch_weights", i32 143, i32 0}
!279 = !{!196, !86, i64 56}
!280 = !{!"branch_weights", i32 1, i32 142}
!281 = !{!"branch_weights", i32 142, i32 801436}
!282 = distinct !{!282, !102, !103}
!283 = !{!"branch_weights", i32 0, i32 2183044}
!284 = !{!"branch_weights", i32 801578, i32 1381466}
!285 = !{!"branch_weights", i32 1349965, i32 31644}
!286 = !{!"branch_weights", i32 20471, i32 11173}
!287 = !{!288}
!288 = distinct !{!288, !289, !"gsi_start: argument 0"}
!289 = distinct !{!289, !"gsi_start"}
!290 = !{!291}
!291 = distinct !{!291, !292, !"gsi_start: argument 0"}
!292 = distinct !{!292, !"gsi_start"}
!293 = !{!"branch_weights", i32 0, i32 1381466}
!294 = !{!"branch_weights", i32 1381466, i32 0}
!295 = distinct !{!295, !102, !103}
!296 = !{!"function_entry_count", i64 144}
!297 = !{!"branch_weights", i32 1381609, i32 0}
!298 = !{!299}
!299 = distinct !{!299, !300, !"gsi_start: argument 0"}
!300 = distinct !{!300, !"gsi_start"}
!301 = !{!302}
!302 = distinct !{!302, !303, !"gsi_start: argument 0"}
!303 = distinct !{!303, !"gsi_start"}
