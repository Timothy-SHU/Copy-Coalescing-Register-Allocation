; ModuleID = 'cfganal.c'
source_filename = "cfganal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.edge_list = type { i32, i32, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [59 x i8] c"Compressed edge list, %d BBs + entry & exit, and %d edges\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" %-4d - edge(\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"entry,\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"exit)\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"*p* No index for edge from %d to %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"*p* Pred for index %d should be %d not %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"*p* Succ for index %d should be %d not %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"*** Edge (%d, %d) appears to not have an index\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"*** Edge (%d, %d) has index %d, but there is no edge\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s { \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%d->%d \00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"cfganal.c\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dfs_enumerate_from.visited = internal unnamed_addr global ptr null, align 8
@dfs_enumerate_from.v_size = internal unnamed_addr global i32 0, align 4
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !77 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !78
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !77 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !78
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !77 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !88

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !82
  %11 = load i8, ptr %3, align 1, !tbaa !89
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !77 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !88

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !82
  %11 = load i8, ptr %3, align 1, !tbaa !89
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !77 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !78
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !88

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !82
  %11 = load i8, ptr %3, align 1, !tbaa !89
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !77 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !78
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !77 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !88

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !90
  store i8 %12, ptr %4, align 1, !tbaa !89
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !77 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !88

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !90
  store i8 %12, ptr %4, align 1, !tbaa !89
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !77 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !78
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !88

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !90
  store i8 %12, ptr %4, align 1, !tbaa !89
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !77 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !77 {
  %2 = load i32, ptr %0, align 8, !tbaa !92
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !77 {
  %2 = load i32, ptr %0, align 8, !tbaa !92
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !77 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !93
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !77 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !93
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !77 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !77 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !77 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !77 {
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
  br i1 %23, label %7, label %24, !llvm.loop !94

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !77 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @forwarder_block_p(ptr noundef readonly %0) local_unnamed_addr #8 !prof !97 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !78
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %80, label %8, !prof !102

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 8, !tbaa !103
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %80, label %11, !prof !102

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !104
  %14 = icmp eq ptr %13, null
  br i1 %14, label %80, label %15, !prof !102

15:                                               ; preds = %11
  %16 = load i32, ptr %13, align 8, !tbaa !106
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %80, !prof !108

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !89
  %21 = load ptr, ptr %20, align 8, !tbaa !89
  %22 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !109
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %53, label %25, !prof !111

25:                                               ; preds = %18, %46
  %26 = phi ptr [ %48, %46 ], [ %21, %18 ]
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = add nsw i32 %28, -7
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %31, label %46, !prof !112

31:                                               ; preds = %25
  %32 = tail call i32 @active_insn_p(ptr noundef nonnull %26) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %80, !prof !113

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 25
  br i1 %39, label %40, label %46, !prof !114

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !89
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, -2147418113
  %45 = icmp eq i32 %44, -2147483611
  br i1 %45, label %80, label %46

46:                                               ; preds = %34, %40, %25
  %47 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !89
  %49 = load ptr, ptr %19, align 8, !tbaa !89
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !109
  %52 = icmp eq ptr %48, %51
  br i1 %52, label %53, label %25, !prof !115, !llvm.loop !116

53:                                               ; preds = %46, %18
  %54 = phi ptr [ %21, %18 ], [ %48, %46 ]
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = add nsw i32 %56, -7
  %58 = icmp ult i32 %57, 4
  br i1 %58, label %59, label %80, !prof !117

59:                                               ; preds = %53
  %60 = icmp eq i32 %56, 9
  br i1 %60, label %61, label %64, !prof !118

61:                                               ; preds = %59
  %62 = tail call i32 @simplejump_p(ptr noundef nonnull %54) #17
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %80, !prof !119

64:                                               ; preds = %61, %59
  %65 = tail call i32 @active_insn_p(ptr noundef nonnull %54) #17
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %80, !prof !120

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !89
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 25
  br i1 %72, label %73, label %79, !prof !121

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !89
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, -2147418113
  %78 = icmp eq i32 %77, -2147483611
  br i1 %78, label %80, label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %40, %31, %11, %79, %73, %64, %53, %61, %1, %8, %15
  %81 = phi i8 [ 0, %15 ], [ 0, %8 ], [ 0, %1 ], [ 1, %61 ], [ 1, %53 ], [ 1, %79 ], [ 0, %64 ], [ 0, %73 ], [ 0, %11 ], [ 0, %31 ], [ 0, %40 ]
  ret i8 %81
}

declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @can_fallthru(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !122 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = load ptr, ptr @cfun, align 8, !tbaa !78
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %73, label %13, !prof !123

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %73, !prof !125

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %19

19:                                               ; preds = %56, %17
  %20 = phi i32 [ 0, %17 ], [ %57, %56 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !78
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !126

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 8, !tbaa !106
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %24, %23 ], [ 0, %19 ]
  %27 = icmp eq i32 %26, %20
  br i1 %27, label %32, label %28, !prof !127

28:                                               ; preds = %25
  %29 = zext i32 %20 to i64
  %30 = getelementptr inbounds %struct.VEC_edge_base, ptr %21, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !78
  br label %32

32:                                               ; preds = %25, %28
  %33 = phi ptr [ %31, %28 ], [ null, %25 ]
  br i1 %27, label %58, label %34, !prof !127

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !128
  %37 = load ptr, ptr @cfun, align 8, !tbaa !78
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !98
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !100
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %43, label %48, !prof !130

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !131
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %43, %34
  %49 = icmp eq ptr %21, null
  br i1 %49, label %52, label %50, !prof !130

50:                                               ; preds = %48
  %51 = load i32, ptr %21, align 8, !tbaa !106
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %51, %50 ], [ 0, %48 ]
  %54 = icmp ult i32 %20, %53
  br i1 %54, label %56, label %55, !prof !132

55:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %56

56:                                               ; preds = %52, %55
  %57 = add i32 %20, 1
  br label %19, !llvm.loop !133

58:                                               ; preds = %32
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !89
  %61 = load ptr, ptr %60, align 8, !tbaa !134
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63, !prof !135

63:                                               ; preds = %58
  %64 = tail call i32 @active_insn_p(ptr noundef nonnull %61) #17
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68, !prof !136

66:                                               ; preds = %63
  %67 = tail call ptr @next_active_insn(ptr noundef nonnull %61) #17
  br label %68

68:                                               ; preds = %66, %63, %58
  %69 = phi ptr [ %61, %63 ], [ %67, %66 ], [ null, %58 ]
  %70 = tail call ptr @next_active_insn(ptr noundef %6) #17
  %71 = icmp eq ptr %70, %69
  %72 = zext i1 %71 to i8
  br label %73

73:                                               ; preds = %43, %13, %2, %68
  %74 = phi i8 [ %72, %68 ], [ 1, %2 ], [ 0, %13 ], [ 0, %43 ]
  ret i8 %74
}

declare i32 @active_insn_p(ptr noundef) local_unnamed_addr #3

declare ptr @next_active_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @could_fall_through(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #9 !prof !77 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !78
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %50, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %11

11:                                               ; preds = %48, %9
  %12 = phi i32 [ 0, %9 ], [ %49, %48 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !78
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %13, align 8, !tbaa !106
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %16, %15 ], [ 0, %11 ]
  %19 = icmp eq i32 %18, %12
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = zext i32 %12 to i64
  %22 = getelementptr inbounds %struct.VEC_edge_base, ptr %13, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !78
  br label %24

24:                                               ; preds = %17, %20
  %25 = phi ptr [ %23, %20 ], [ null, %17 ]
  br i1 %19, label %50, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !128
  %29 = load ptr, ptr @cfun, align 8, !tbaa !78
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !98
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  %34 = icmp eq ptr %28, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !131
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35, %26
  %41 = icmp eq ptr %13, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %13, align 8, !tbaa !106
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %43, %42 ], [ 0, %40 ]
  %46 = icmp ult i32 %12, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %48

48:                                               ; preds = %44, %47
  %49 = add i32 %12, 1
  br label %11, !llvm.loop !137

50:                                               ; preds = %24, %35, %2
  %51 = phi i8 [ 1, %2 ], [ 0, %35 ], [ 1, %24 ]
  ret i8 %51
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #10 !prof !138 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !78
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !139
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 4) #17
  %8 = load ptr, ptr @cfun, align 8, !tbaa !78
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !139
  %13 = sext i32 %12 to i64
  %14 = tail call ptr @xcalloc(i64 noundef %13, i64 noundef 4) #17
  %15 = load ptr, ptr @cfun, align 8, !tbaa !78
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !140
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  %23 = tail call ptr @xmalloc(i64 noundef %22) #17
  %24 = load ptr, ptr @cfun, align 8, !tbaa !78
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !98
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !139
  %29 = tail call ptr @sbitmap_alloc(i32 noundef %28) #17
  tail call void @sbitmap_zero(ptr noundef %29) #17
  %30 = load ptr, ptr @cfun, align 8, !tbaa !78
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  %33 = load ptr, ptr %32, align 8, !tbaa !103
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 1
  store i32 0, ptr %23, align 8, !tbaa.struct !141
  %35 = getelementptr inbounds i8, ptr %23, i64 8
  store ptr %34, ptr %35, align 8, !tbaa.struct !142
  br label %36

36:                                               ; preds = %0, %176
  %37 = phi i32 [ 1, %0 ], [ %180, %176 ]
  %38 = phi i32 [ 1, %0 ], [ %179, %176 ]
  %39 = phi i32 [ 1, %0 ], [ %178, %176 ]
  %40 = phi i8 [ 0, %0 ], [ %177, %176 ]
  %41 = sext i32 %37 to i64
  %42 = getelementptr %struct.edge_iterator, ptr %23, i64 %41
  %43 = getelementptr %struct.edge_iterator, ptr %42, i64 -1
  %44 = load i32, ptr %43, align 8, !tbaa.struct !141
  %45 = getelementptr %struct.edge_iterator, ptr %42, i64 -1, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa.struct !142
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49, !prof !143

48:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %49

49:                                               ; preds = %36, %48
  %50 = load ptr, ptr %46, align 8, !tbaa !78, !nonnull !144, !noundef !144
  %51 = zext i32 %44 to i64
  %52 = getelementptr inbounds %struct.VEC_edge_base, ptr %50, i64 0, i32 2, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !78
  %54 = load ptr, ptr %53, align 8, !tbaa !145
  %55 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !128
  %57 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !131
  %59 = and i32 %58, -33
  store i32 %59, ptr %57, align 8, !tbaa !131
  %60 = load ptr, ptr @cfun, align 8, !tbaa !78
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !98
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !100
  %65 = icmp eq ptr %56, %64
  br i1 %65, label %130, label %66, !prof !146

66:                                               ; preds = %49
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !147
  %69 = lshr i32 %68, 6
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds %struct.simple_bitmap_def, ptr %29, i64 0, i32 3, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !148
  %73 = and i32 %68, 63
  %74 = zext nneg i32 %73 to i64
  %75 = shl nuw i64 1, %74
  %76 = and i64 %75, %72
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %108, !prof !149

78:                                               ; preds = %66
  %79 = load ptr, ptr %29, align 8, !tbaa !150
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81, !prof !152

81:                                               ; preds = %78
  %82 = getelementptr inbounds i8, ptr %79, i64 %70
  %83 = load i8, ptr %82, align 1, !tbaa !89
  %84 = add i8 %83, 1
  store i8 %84, ptr %82, align 1, !tbaa !89
  br label %85

85:                                               ; preds = %78, %81
  %86 = load i64, ptr %71, align 8, !tbaa !148
  %87 = or i64 %86, %75
  store i64 %87, ptr %71, align 8, !tbaa !148
  %88 = add nsw i32 %38, 1
  %89 = load i32, ptr %67, align 8, !tbaa !147
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %7, i64 %90
  store i32 %38, ptr %91, align 4, !tbaa !93
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !104
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95, !prof !153

95:                                               ; preds = %85
  %96 = load i32, ptr %93, align 8, !tbaa !106
  br label %97

97:                                               ; preds = %85, %95
  %98 = phi i32 [ %96, %95 ], [ 0, %85 ]
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100, !prof !154

100:                                              ; preds = %97
  %101 = add nsw i32 %37, 1
  store i32 0, ptr %42, align 8, !tbaa.struct !141
  %102 = getelementptr inbounds i8, ptr %42, i64 8
  store ptr %92, ptr %102, align 8, !tbaa.struct !142
  br label %176

103:                                              ; preds = %97
  %104 = add nsw i32 %39, 1
  %105 = load i32, ptr %67, align 8, !tbaa !147
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, ptr %14, i64 %106
  store i32 %39, ptr %107, align 4, !tbaa !93
  br label %176

108:                                              ; preds = %66
  br i1 %65, label %130, label %109, !prof !155

109:                                              ; preds = %108
  %110 = load ptr, ptr %62, align 8, !tbaa !103
  %111 = icmp eq ptr %54, %110
  br i1 %111, label %130, label %112, !prof !156

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %114 = load i32, ptr %113, align 8, !tbaa !147
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, ptr %7, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !93
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 9
  %119 = load i32, ptr %118, align 8, !tbaa !147
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, ptr %7, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !93
  %123 = icmp slt i32 %117, %122
  br i1 %123, label %130, label %124, !prof !157

124:                                              ; preds = %112
  %125 = getelementptr inbounds i32, ptr %14, i64 %120
  %126 = load i32, ptr %125, align 4, !tbaa !93
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %130, !prof !158

128:                                              ; preds = %124
  %129 = or i32 %58, 32
  store i32 %129, ptr %57, align 8, !tbaa !131
  br label %130

130:                                              ; preds = %128, %124, %112, %109, %108, %49
  %131 = phi i8 [ 1, %128 ], [ %40, %124 ], [ %40, %112 ], [ %40, %109 ], [ %40, %108 ], [ %40, %49 ]
  %132 = load i32, ptr %50, align 8, !tbaa !106
  %133 = add i32 %44, 1
  %134 = icmp eq i32 %133, %132
  br i1 %134, label %135, label %144, !prof !159

135:                                              ; preds = %130
  %136 = load ptr, ptr %62, align 8, !tbaa !103
  %137 = icmp eq ptr %54, %136
  br i1 %137, label %144, label %138, !prof !160

138:                                              ; preds = %135
  %139 = add nsw i32 %39, 1
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %141 = load i32, ptr %140, align 8, !tbaa !147
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, ptr %14, i64 %142
  store i32 %39, ptr %143, align 4, !tbaa !93
  br label %144

144:                                              ; preds = %138, %135, %130
  %145 = phi i32 [ %139, %138 ], [ %39, %135 ], [ %39, %130 ]
  %146 = load i32, ptr %50, align 8, !tbaa !106
  %147 = icmp eq i32 %133, %146
  br i1 %147, label %174, label %148, !prof !159

148:                                              ; preds = %144
  %149 = load i32, ptr %43, align 8
  %150 = load ptr, ptr %45, align 8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %153, !prof !161

152:                                              ; preds = %148
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %153

153:                                              ; preds = %152, %148
  %154 = load ptr, ptr %150, align 8, !tbaa !78
  %155 = icmp eq ptr %154, null
  br i1 %155, label %162, label %156, !prof !161

156:                                              ; preds = %153
  %157 = load ptr, ptr %45, align 8
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %160, !prof !161

159:                                              ; preds = %156
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %160

160:                                              ; preds = %159, %156
  %161 = load ptr, ptr %157, align 8, !tbaa !78
  br label %162

162:                                              ; preds = %160, %153
  %163 = phi ptr [ %161, %160 ], [ null, %153 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165, !prof !161

165:                                              ; preds = %162
  %166 = load i32, ptr %163, align 8, !tbaa !106
  br label %167

167:                                              ; preds = %165, %162
  %168 = phi i32 [ %166, %165 ], [ 0, %162 ]
  %169 = icmp ult i32 %149, %168
  br i1 %169, label %171, label %170, !prof !162

170:                                              ; preds = %167
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %171

171:                                              ; preds = %167, %170
  %172 = load i32, ptr %43, align 8, !tbaa !163
  %173 = add i32 %172, 1
  store i32 %173, ptr %43, align 8, !tbaa !163
  br label %176

174:                                              ; preds = %144
  %175 = add nsw i32 %37, -1
  br label %176

176:                                              ; preds = %171, %174, %100, %103
  %177 = phi i8 [ %131, %174 ], [ %131, %171 ], [ %40, %100 ], [ %40, %103 ]
  %178 = phi i32 [ %145, %174 ], [ %145, %171 ], [ %39, %100 ], [ %104, %103 ]
  %179 = phi i32 [ %38, %174 ], [ %38, %171 ], [ %88, %100 ], [ %88, %103 ]
  %180 = phi i32 [ %175, %174 ], [ %37, %171 ], [ %101, %100 ], [ %37, %103 ]
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %36, !prof !165, !llvm.loop !166

182:                                              ; preds = %176
  tail call void @free(ptr noundef %7)
  tail call void @free(ptr noundef %14)
  tail call void @free(ptr noundef %23)
  %183 = load ptr, ptr %29, align 8, !tbaa !150
  tail call void @free(ptr noundef %183)
  tail call void @free(ptr noundef %29)
  ret i8 %177
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local void @set_edge_can_fallthru_flag() local_unnamed_addr #10 !prof !167 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !78
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %92, label %10, !prof !168

10:                                               ; preds = %0, %83
  %11 = phi ptr [ %85, %83 ], [ %6, %0 ]
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  br label %13

13:                                               ; preds = %42, %10
  %14 = phi i32 [ 0, %10 ], [ %43, %42 ]
  %15 = load ptr, ptr %12, align 8, !tbaa !78
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !169

17:                                               ; preds = %13
  %18 = load i32, ptr %15, align 8, !tbaa !106
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i32 [ %18, %17 ], [ 0, %13 ]
  %21 = icmp eq i32 %20, %14
  br i1 %21, label %26, label %22, !prof !170

22:                                               ; preds = %19
  %23 = zext i32 %14 to i64
  %24 = getelementptr inbounds %struct.VEC_edge_base, ptr %15, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !78
  br label %26

26:                                               ; preds = %19, %22
  %27 = phi ptr [ %25, %22 ], [ null, %19 ]
  br i1 %21, label %44, label %28, !prof !170

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !131
  %31 = and i32 %30, -65
  %32 = shl i32 %30, 6
  %33 = and i32 %32, 64
  %34 = or disjoint i32 %33, %31
  store i32 %34, ptr %29, align 8, !tbaa !131
  %35 = icmp eq ptr %15, null
  br i1 %35, label %38, label %36, !prof !171

36:                                               ; preds = %28
  %37 = load i32, ptr %15, align 8, !tbaa !106
  br label %38

38:                                               ; preds = %36, %28
  %39 = phi i32 [ %37, %36 ], [ 0, %28 ]
  %40 = icmp ult i32 %14, %39
  br i1 %40, label %42, label %41, !prof !172

41:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %42

42:                                               ; preds = %38, %41
  %43 = add i32 %14, 1
  br label %13, !llvm.loop !173

44:                                               ; preds = %26
  br i1 %16, label %47, label %45, !prof !174

45:                                               ; preds = %44
  %46 = load i32, ptr %15, align 8, !tbaa !106
  br label %47

47:                                               ; preds = %44, %45
  %48 = phi i32 [ %46, %45 ], [ 0, %44 ]
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %83, !prof !175

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !89
  %53 = getelementptr inbounds %struct.rtl_bb_info, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !109
  %55 = tail call i32 @any_condjump_p(ptr noundef %54) #17
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %83, label %57, !prof !176

57:                                               ; preds = %50
  %58 = load ptr, ptr %51, align 8, !tbaa !89
  %59 = getelementptr inbounds %struct.rtl_bb_info, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !109
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 1, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !89
  %63 = tail call i32 @invert_jump(ptr noundef %60, ptr noundef %62, i32 noundef 0) #17
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %83, label %65, !prof !176

65:                                               ; preds = %57
  %66 = load ptr, ptr %51, align 8, !tbaa !89
  %67 = getelementptr inbounds %struct.rtl_bb_info, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !109
  %69 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 1, i32 1, i32 0, i32 0, i64 2
  %70 = load ptr, ptr %69, align 8, !tbaa !89
  %71 = tail call i32 @invert_jump(ptr noundef %68, ptr noundef %70, i32 noundef 0) #17
  %72 = load ptr, ptr %12, align 8, !tbaa !104
  %73 = getelementptr inbounds %struct.VEC_edge_base, ptr %72, i64 0, i32 2, i64 0
  %74 = load ptr, ptr %73, align 8, !tbaa !78
  %75 = getelementptr inbounds %struct.edge_def, ptr %74, i64 0, i32 7
  %76 = load i32, ptr %75, align 8, !tbaa !131
  %77 = or i32 %76, 64
  store i32 %77, ptr %75, align 8, !tbaa !131
  %78 = getelementptr inbounds %struct.VEC_edge_base, ptr %72, i64 0, i32 2, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !78
  %80 = getelementptr inbounds %struct.edge_def, ptr %79, i64 0, i32 7
  %81 = load i32, ptr %80, align 8, !tbaa !131
  %82 = or i32 %81, 64
  store i32 %82, ptr %80, align 8, !tbaa !131
  br label %83

83:                                               ; preds = %57, %50, %47, %65
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !124
  %86 = load ptr, ptr @cfun, align 8, !tbaa !78
  %87 = getelementptr inbounds %struct.function, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !98
  %89 = getelementptr inbounds %struct.control_flow_graph, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !100
  %91 = icmp eq ptr %85, %90
  br i1 %91, label %92, label %10, !prof !177, !llvm.loop !178

92:                                               ; preds = %83, %0
  ret void
}

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

declare i32 @invert_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @find_unreachable_blocks() local_unnamed_addr #10 !prof !179 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !78
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !140
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call ptr @xmalloc(i64 noundef %7) #17
  %9 = load ptr, ptr @cfun, align 8, !tbaa !78
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !124
  %17 = icmp eq ptr %16, %14
  br i1 %17, label %26, label %18, !prof !180

18:                                               ; preds = %0, %18
  %19 = phi ptr [ %24, %18 ], [ %16, %0 ]
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !181
  %22 = and i32 %21, -3
  store i32 %22, ptr %20, align 8, !tbaa !181
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !124
  %25 = icmp eq ptr %24, %14
  br i1 %25, label %26, label %18, !prof !182, !llvm.loop !183

26:                                               ; preds = %18, %0
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 1
  br label %28

28:                                               ; preds = %62, %26
  %29 = phi i32 [ 0, %26 ], [ %63, %62 ]
  %30 = phi ptr [ %8, %26 ], [ %49, %62 ]
  %31 = load ptr, ptr %27, align 8, !tbaa !78
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !184

33:                                               ; preds = %28
  %34 = load i32, ptr %31, align 8, !tbaa !106
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi i32 [ %34, %33 ], [ 0, %28 ]
  %37 = icmp eq i32 %36, %29
  br i1 %37, label %42, label %38, !prof !185

38:                                               ; preds = %35
  %39 = zext i32 %29 to i64
  %40 = getelementptr inbounds %struct.VEC_edge_base, ptr %31, i64 0, i32 2, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !78
  br label %42

42:                                               ; preds = %35, %38
  %43 = phi ptr [ %41, %38 ], [ null, %35 ]
  br i1 %37, label %44, label %46, !prof !185

44:                                               ; preds = %42
  %45 = icmp eq ptr %30, %8
  br i1 %45, label %109, label %66, !prof !180

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !128
  %49 = getelementptr inbounds ptr, ptr %30, i64 1
  store ptr %48, ptr %30, align 8, !tbaa !78
  %50 = load ptr, ptr %47, align 8, !tbaa !128
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 13
  %52 = load i32, ptr %51, align 8, !tbaa !181
  %53 = or i32 %52, 2
  store i32 %53, ptr %51, align 8, !tbaa !181
  %54 = load ptr, ptr %27, align 8, !tbaa !78
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56, !prof !186

56:                                               ; preds = %46
  %57 = load i32, ptr %54, align 8, !tbaa !106
  br label %58

58:                                               ; preds = %56, %46
  %59 = phi i32 [ %57, %56 ], [ 0, %46 ]
  %60 = icmp ult i32 %29, %59
  br i1 %60, label %62, label %61, !prof !187

61:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %62

62:                                               ; preds = %58, %61
  %63 = add i32 %29, 1
  br label %28, !llvm.loop !188

64:                                               ; preds = %85
  %65 = icmp eq ptr %73, %8
  br i1 %65, label %109, label %66, !prof !189, !llvm.loop !190

66:                                               ; preds = %44, %64
  %67 = phi ptr [ %73, %64 ], [ %30, %44 ]
  %68 = getelementptr inbounds ptr, ptr %67, i64 -1
  %69 = load ptr, ptr %68, align 8, !tbaa !78
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 1
  br label %71

71:                                               ; preds = %107, %66
  %72 = phi i32 [ 0, %66 ], [ %108, %107 ]
  %73 = phi ptr [ %68, %66 ], [ %98, %107 ]
  %74 = load ptr, ptr %70, align 8, !tbaa !78
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76, !prof !191

76:                                               ; preds = %71
  %77 = load i32, ptr %74, align 8, !tbaa !106
  br label %78

78:                                               ; preds = %76, %71
  %79 = phi i32 [ %77, %76 ], [ 0, %71 ]
  %80 = icmp eq i32 %79, %72
  br i1 %80, label %85, label %81, !prof !192

81:                                               ; preds = %78
  %82 = zext i32 %72 to i64
  %83 = getelementptr inbounds %struct.VEC_edge_base, ptr %74, i64 0, i32 2, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !78
  br label %85

85:                                               ; preds = %78, %81
  %86 = phi ptr [ %84, %81 ], [ null, %78 ]
  br i1 %80, label %64, label %87, !prof !192

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !128
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 13
  %91 = load i32, ptr %90, align 8, !tbaa !181
  %92 = and i32 %91, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97, !prof !193

94:                                               ; preds = %87
  %95 = getelementptr inbounds ptr, ptr %73, i64 1
  store ptr %89, ptr %73, align 8, !tbaa !78
  %96 = or disjoint i32 %91, 2
  store i32 %96, ptr %90, align 8, !tbaa !181
  br label %97

97:                                               ; preds = %87, %94
  %98 = phi ptr [ %73, %87 ], [ %95, %94 ]
  %99 = load ptr, ptr %70, align 8, !tbaa !78
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101, !prof !194

101:                                              ; preds = %97
  %102 = load i32, ptr %99, align 8, !tbaa !106
  br label %103

103:                                              ; preds = %101, %97
  %104 = phi i32 [ %102, %101 ], [ 0, %97 ]
  %105 = icmp ult i32 %72, %104
  br i1 %105, label %107, label %106, !prof !195

106:                                              ; preds = %103
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %107

107:                                              ; preds = %103, %106
  %108 = add i32 %72, 1
  br label %71, !llvm.loop !196

109:                                              ; preds = %64, %44
  tail call void @free(ptr noundef %8)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @create_edge_list() local_unnamed_addr #10 !prof !197 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !78
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !140
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = load ptr, ptr %3, align 8, !tbaa !78
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %24, label %10, !prof !198

10:                                               ; preds = %0, %18
  %11 = phi ptr [ %22, %18 ], [ %8, %0 ]
  %12 = phi i32 [ %20, %18 ], [ 0, %0 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !104
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !199

16:                                               ; preds = %10
  %17 = load i32, ptr %14, align 8, !tbaa !106
  br label %18

18:                                               ; preds = %10, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %10 ]
  %20 = add i32 %19, %12
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  %23 = icmp eq ptr %22, %7
  br i1 %23, label %24, label %10, !prof !200, !llvm.loop !201

24:                                               ; preds = %18, %0
  %25 = phi i32 [ 0, %0 ], [ %20, %18 ]
  %26 = tail call ptr @xmalloc(i64 noundef 16) #17
  store i32 %5, ptr %26, align 8, !tbaa !202
  %27 = getelementptr inbounds %struct.edge_list, ptr %26, i64 0, i32 1
  store i32 %25, ptr %27, align 4, !tbaa !204
  %28 = sext i32 %25 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call ptr @xmalloc(i64 noundef %29) #17
  %31 = getelementptr inbounds %struct.edge_list, ptr %26, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !205
  %32 = load ptr, ptr @cfun, align 8, !tbaa !78
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  %35 = load ptr, ptr %34, align 8, !tbaa !78
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !100
  %38 = icmp eq ptr %35, %37
  br i1 %38, label %84, label %39, !prof !198

39:                                               ; preds = %24, %75
  %40 = phi ptr [ %77, %75 ], [ %35, %24 ]
  %41 = phi i64 [ %46, %75 ], [ 0, %24 ]
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 1
  %43 = shl i64 %41, 32
  %44 = ashr exact i64 %43, 32
  br label %45

45:                                               ; preds = %73, %39
  %46 = phi i64 [ %63, %73 ], [ %44, %39 ]
  %47 = phi i32 [ %74, %73 ], [ 0, %39 ]
  %48 = load ptr, ptr %42, align 8, !tbaa !78
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50, !prof !206

50:                                               ; preds = %45
  %51 = load i32, ptr %48, align 8, !tbaa !106
  br label %52

52:                                               ; preds = %50, %45
  %53 = phi i32 [ %51, %50 ], [ 0, %45 ]
  %54 = icmp eq i32 %53, %47
  br i1 %54, label %59, label %55, !prof !207

55:                                               ; preds = %52
  %56 = zext i32 %47 to i64
  %57 = getelementptr inbounds %struct.VEC_edge_base, ptr %48, i64 0, i32 2, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !78
  br label %59

59:                                               ; preds = %52, %55
  %60 = phi ptr [ %58, %55 ], [ null, %52 ]
  br i1 %54, label %75, label %61, !prof !207

61:                                               ; preds = %59
  %62 = load ptr, ptr %31, align 8, !tbaa !205
  %63 = add i64 %46, 1
  %64 = getelementptr inbounds ptr, ptr %62, i64 %46
  store ptr %60, ptr %64, align 8, !tbaa !78
  %65 = load ptr, ptr %42, align 8, !tbaa !78
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67, !prof !208

67:                                               ; preds = %61
  %68 = load i32, ptr %65, align 8, !tbaa !106
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi i32 [ %68, %67 ], [ 0, %61 ]
  %71 = icmp ult i32 %47, %70
  br i1 %71, label %73, label %72, !prof !209

72:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %73

73:                                               ; preds = %69, %72
  %74 = add i32 %47, 1
  br label %45, !llvm.loop !210

75:                                               ; preds = %59
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !78
  %78 = load ptr, ptr @cfun, align 8, !tbaa !78
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !98
  %81 = getelementptr inbounds %struct.control_flow_graph, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !100
  %83 = icmp eq ptr %77, %82
  br i1 %83, label %84, label %39, !prof !200, !llvm.loop !211

84:                                               ; preds = %75, %24
  ret ptr %26
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_edge_list(ptr noundef %0) local_unnamed_addr #12 !prof !212 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !213

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !205
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %0)
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @print_edge_list(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 !prof !77 {
  %3 = load i32, ptr %1, align 8, !tbaa !202
  %4 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !204
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %5)
  %7 = load i32, ptr %4, align 4, !tbaa !204
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %53

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %48
  %12 = phi i64 [ 0, %9 ], [ %49, %48 ]
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %13)
  %15 = load ptr, ptr %10, align 8, !tbaa !205
  %16 = getelementptr inbounds ptr, ptr %15, i64 %12
  %17 = load ptr, ptr %16, align 8, !tbaa !78
  %18 = load ptr, ptr %17, align 8, !tbaa !145
  %19 = load ptr, ptr @cfun, align 8, !tbaa !78
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !98
  %22 = load ptr, ptr %21, align 8, !tbaa !103
  %23 = icmp eq ptr %18, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  %25 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 6, i64 1, ptr %0)
  br label %30

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !147
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %28)
  br label %30

30:                                               ; preds = %26, %24
  %31 = load ptr, ptr %10, align 8, !tbaa !205
  %32 = getelementptr inbounds ptr, ptr %31, i64 %12
  %33 = load ptr, ptr %32, align 8, !tbaa !78
  %34 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !128
  %36 = load ptr, ptr @cfun, align 8, !tbaa !78
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !98
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !100
  %41 = icmp eq ptr %35, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 6, i64 1, ptr %0)
  br label %48

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !147
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %46)
  br label %48

48:                                               ; preds = %42, %44
  %49 = add nuw nsw i64 %12, 1
  %50 = load i32, ptr %4, align 4, !tbaa !204
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %11, label %53, !llvm.loop !214

53:                                               ; preds = %48, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @verify_edge_list(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !77 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !78
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 2
  br label %29

14:                                               ; preds = %113, %2
  %15 = phi ptr [ %5, %2 ], [ %118, %113 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !78
  %17 = load ptr, ptr @cfun, align 8, !tbaa !78
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = icmp eq ptr %16, %21
  br i1 %22, label %291, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 1
  %25 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 2
  %26 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 1
  %27 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 2
  %28 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 2
  br label %122

29:                                               ; preds = %10, %113
  %30 = phi ptr [ %6, %10 ], [ %115, %113 ]
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 1
  br label %32

32:                                               ; preds = %111, %29
  %33 = phi i32 [ 0, %29 ], [ %112, %111 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !78
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 8, !tbaa !106
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %37, %36 ], [ 0, %32 ]
  %40 = icmp eq i32 %39, %33
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = zext i32 %33 to i64
  %43 = getelementptr inbounds %struct.VEC_edge_base, ptr %34, i64 0, i32 2, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !78
  br label %45

45:                                               ; preds = %38, %41
  %46 = phi ptr [ %44, %41 ], [ null, %38 ]
  br i1 %40, label %113, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %46, align 8, !tbaa !145
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !147
  %51 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !128
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !147
  %55 = load i32, ptr %11, align 4, !tbaa !204
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %47
  %58 = load ptr, ptr %12, align 8, !tbaa !205
  %59 = zext nneg i32 %55 to i64
  br label %60

60:                                               ; preds = %57, %70
  %61 = phi i64 [ 0, %57 ], [ %71, %70 ]
  %62 = getelementptr inbounds ptr, ptr %58, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !78
  %64 = load ptr, ptr %63, align 8, !tbaa !145
  %65 = icmp eq ptr %64, %48
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !128
  %69 = icmp eq ptr %68, %52
  br i1 %69, label %73, label %70

70:                                               ; preds = %66, %60
  %71 = add nuw nsw i64 %61, 1
  %72 = icmp eq i64 %71, %59
  br i1 %72, label %75, label %60, !llvm.loop !215

73:                                               ; preds = %66
  %74 = trunc i64 %61 to i32
  br label %75

75:                                               ; preds = %73, %70, %47
  %76 = phi i32 [ -1, %47 ], [ %74, %73 ], [ -1, %70 ]
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %50, i32 noundef %54)
  br label %102

80:                                               ; preds = %75
  %81 = load ptr, ptr %13, align 8, !tbaa !205
  %82 = sext i32 %76 to i64
  %83 = getelementptr inbounds ptr, ptr %81, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !78
  %85 = load ptr, ptr %84, align 8, !tbaa !145
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !147
  %88 = icmp eq i32 %87, %50
  br i1 %88, label %91, label %89

89:                                               ; preds = %80
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %76, i32 noundef %50, i32 noundef %87)
  br label %91

91:                                               ; preds = %89, %80
  %92 = load ptr, ptr %13, align 8, !tbaa !205
  %93 = getelementptr inbounds ptr, ptr %92, i64 %82
  %94 = load ptr, ptr %93, align 8, !tbaa !78
  %95 = getelementptr inbounds %struct.edge_def, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !128
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !147
  %99 = icmp eq i32 %98, %54
  br i1 %99, label %102, label %100

100:                                              ; preds = %91
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %76, i32 noundef %54, i32 noundef %98)
  br label %102

102:                                              ; preds = %78, %100, %91
  %103 = load ptr, ptr %31, align 8, !tbaa !78
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %103, align 8, !tbaa !106
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi i32 [ %106, %105 ], [ 0, %102 ]
  %109 = icmp ult i32 %33, %108
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %111

111:                                              ; preds = %107, %110
  %112 = add i32 %33, 1
  br label %32, !llvm.loop !216

113:                                              ; preds = %45
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !78
  %116 = load ptr, ptr @cfun, align 8, !tbaa !78
  %117 = getelementptr inbounds %struct.function, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !98
  %119 = getelementptr inbounds %struct.control_flow_graph, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !100
  %121 = icmp eq ptr %115, %120
  br i1 %121, label %14, label %29, !llvm.loop !217

122:                                              ; preds = %23, %282
  %123 = phi ptr [ %19, %23 ], [ %287, %282 ]
  %124 = phi ptr [ %16, %23 ], [ %284, %282 ]
  %125 = load ptr, ptr %123, align 8, !tbaa !103
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 6
  %127 = load ptr, ptr %126, align 8, !tbaa !124
  %128 = icmp eq ptr %127, null
  br i1 %128, label %282, label %129

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 1
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 9
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 9
  br label %133

133:                                              ; preds = %129, %278
  %134 = phi ptr [ %127, %129 ], [ %280, %278 ]
  br label %135

135:                                              ; preds = %162, %133
  %136 = phi i32 [ 0, %133 ], [ %163, %162 ]
  %137 = load ptr, ptr %130, align 8, !tbaa !78
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = load i32, ptr %137, align 8, !tbaa !106
  br label %141

141:                                              ; preds = %139, %135
  %142 = phi i32 [ %140, %139 ], [ 0, %135 ]
  %143 = icmp eq i32 %142, %136
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = zext i32 %136 to i64
  %146 = getelementptr inbounds %struct.VEC_edge_base, ptr %137, i64 0, i32 2, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !78
  br label %148

148:                                              ; preds = %141, %144
  %149 = phi ptr [ %147, %144 ], [ null, %141 ]
  br i1 %143, label %164, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.edge_def, ptr %149, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !128
  %153 = icmp eq ptr %152, %134
  br i1 %153, label %164, label %154

154:                                              ; preds = %150
  %155 = icmp eq ptr %137, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %154
  %157 = load i32, ptr %137, align 8, !tbaa !106
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %157, %156 ], [ 0, %154 ]
  %160 = icmp ult i32 %136, %159
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %162

162:                                              ; preds = %158, %161
  %163 = add i32 %136, 1
  br label %135, !llvm.loop !218

164:                                              ; preds = %150, %148
  %165 = phi i32 [ 0, %148 ], [ 1, %150 ]
  br label %166

166:                                              ; preds = %192, %164
  %167 = phi i32 [ 0, %164 ], [ %193, %192 ]
  %168 = load ptr, ptr %134, align 8, !tbaa !78
  %169 = icmp eq ptr %168, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = load i32, ptr %168, align 8, !tbaa !106
  br label %172

172:                                              ; preds = %170, %166
  %173 = phi i32 [ %171, %170 ], [ 0, %166 ]
  %174 = icmp eq i32 %173, %167
  br i1 %174, label %179, label %175

175:                                              ; preds = %172
  %176 = zext i32 %167 to i64
  %177 = getelementptr inbounds %struct.VEC_edge_base, ptr %168, i64 0, i32 2, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !78
  br label %179

179:                                              ; preds = %172, %175
  %180 = phi ptr [ %178, %175 ], [ null, %172 ]
  br i1 %174, label %194, label %181

181:                                              ; preds = %179
  %182 = load ptr, ptr %180, align 8, !tbaa !145
  %183 = icmp eq ptr %182, %124
  br i1 %183, label %194, label %184

184:                                              ; preds = %181
  %185 = icmp eq ptr %168, null
  br i1 %185, label %188, label %186

186:                                              ; preds = %184
  %187 = load i32, ptr %168, align 8, !tbaa !106
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i32 [ %187, %186 ], [ 0, %184 ]
  %190 = icmp ult i32 %167, %189
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %192

192:                                              ; preds = %188, %191
  %193 = add i32 %167, 1
  br label %166, !llvm.loop !219

194:                                              ; preds = %181, %179
  %195 = phi i32 [ %165, %179 ], [ 1, %181 ]
  %196 = load i32, ptr %24, align 4, !tbaa !204
  %197 = icmp slt i32 %196, 1
  br i1 %197, label %217, label %198

198:                                              ; preds = %194
  %199 = load ptr, ptr %25, align 8, !tbaa !205
  %200 = zext nneg i32 %196 to i64
  %201 = zext nneg i32 %196 to i64
  br label %202

202:                                              ; preds = %198, %213
  %203 = phi i64 [ 0, %198 ], [ %214, %213 ]
  %204 = phi i1 [ %197, %198 ], [ %215, %213 ]
  %205 = getelementptr inbounds ptr, ptr %199, i64 %203
  %206 = load ptr, ptr %205, align 8, !tbaa !78
  %207 = load ptr, ptr %206, align 8, !tbaa !145
  %208 = icmp eq ptr %207, %124
  br i1 %208, label %209, label %213

209:                                              ; preds = %202
  %210 = getelementptr inbounds %struct.edge_def, ptr %206, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !128
  %212 = icmp eq ptr %211, %134
  br i1 %212, label %217, label %213

213:                                              ; preds = %209, %202
  %214 = add nuw nsw i64 %203, 1
  %215 = icmp uge i64 %214, %200
  %216 = icmp eq i64 %214, %201
  br i1 %216, label %217, label %202, !llvm.loop !215

217:                                              ; preds = %209, %213, %194
  %218 = phi i1 [ %197, %194 ], [ %204, %209 ], [ %215, %213 ]
  %219 = icmp ne i32 %195, 0
  %220 = and i1 %219, %218
  br i1 %220, label %221, label %226

221:                                              ; preds = %217
  %222 = load i32, ptr %131, align 8, !tbaa !147
  %223 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 9
  %224 = load i32, ptr %223, align 8, !tbaa !147
  %225 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %222, i32 noundef %224)
  br label %226

226:                                              ; preds = %221, %217
  %227 = load i32, ptr %26, align 4, !tbaa !204
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %248

229:                                              ; preds = %226
  %230 = load ptr, ptr %27, align 8, !tbaa !205
  %231 = zext nneg i32 %227 to i64
  %232 = zext nneg i32 %227 to i64
  br label %233

233:                                              ; preds = %229, %244
  %234 = phi i64 [ 0, %229 ], [ %245, %244 ]
  %235 = phi i1 [ %228, %229 ], [ %246, %244 ]
  %236 = getelementptr inbounds ptr, ptr %230, i64 %234
  %237 = load ptr, ptr %236, align 8, !tbaa !78
  %238 = load ptr, ptr %237, align 8, !tbaa !145
  %239 = icmp eq ptr %238, %124
  br i1 %239, label %240, label %244

240:                                              ; preds = %233
  %241 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !128
  %243 = icmp eq ptr %242, %134
  br i1 %243, label %248, label %244

244:                                              ; preds = %240, %233
  %245 = add nuw nsw i64 %234, 1
  %246 = icmp ult i64 %245, %231
  %247 = icmp eq i64 %245, %232
  br i1 %247, label %248, label %233, !llvm.loop !215

248:                                              ; preds = %240, %244, %226
  %249 = phi i1 [ %228, %226 ], [ %235, %240 ], [ %246, %244 ]
  %250 = icmp eq i32 %195, 0
  %251 = and i1 %250, %249
  br i1 %251, label %252, label %278

252:                                              ; preds = %248
  %253 = load i32, ptr %132, align 8, !tbaa !147
  %254 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 9
  %255 = load i32, ptr %254, align 8, !tbaa !147
  %256 = icmp sgt i32 %227, 0
  br i1 %256, label %257, label %275

257:                                              ; preds = %252
  %258 = load ptr, ptr %28, align 8, !tbaa !205
  %259 = zext nneg i32 %227 to i64
  br label %260

260:                                              ; preds = %257, %270
  %261 = phi i64 [ 0, %257 ], [ %271, %270 ]
  %262 = getelementptr inbounds ptr, ptr %258, i64 %261
  %263 = load ptr, ptr %262, align 8, !tbaa !78
  %264 = load ptr, ptr %263, align 8, !tbaa !145
  %265 = icmp eq ptr %264, %124
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.edge_def, ptr %263, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !128
  %269 = icmp eq ptr %268, %134
  br i1 %269, label %273, label %270

270:                                              ; preds = %266, %260
  %271 = add nuw nsw i64 %261, 1
  %272 = icmp eq i64 %271, %259
  br i1 %272, label %275, label %260, !llvm.loop !215

273:                                              ; preds = %266
  %274 = trunc i64 %261 to i32
  br label %275

275:                                              ; preds = %273, %270, %252
  %276 = phi i32 [ -1, %252 ], [ %274, %273 ], [ -1, %270 ]
  %277 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %253, i32 noundef %255, i32 noundef %276)
  br label %278

278:                                              ; preds = %275, %248
  %279 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 6
  %280 = load ptr, ptr %279, align 8, !tbaa !124
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %133, !llvm.loop !220

282:                                              ; preds = %278, %122
  %283 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 6
  %284 = load ptr, ptr %283, align 8, !tbaa !78
  %285 = load ptr, ptr @cfun, align 8, !tbaa !78
  %286 = getelementptr inbounds %struct.function, ptr %285, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !98
  %288 = getelementptr inbounds %struct.control_flow_graph, ptr %287, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !100
  %290 = icmp eq ptr %284, %289
  br i1 %290, label %291, label %122, !llvm.loop !221

291:                                              ; preds = %282, %14
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @find_edge_index(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #14 !prof !77 {
  %4 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !204
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !205
  %10 = zext nneg i32 %5 to i64
  br label %11

11:                                               ; preds = %7, %21
  %12 = phi i64 [ 0, %7 ], [ %22, %21 ]
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = load ptr, ptr %14, align 8, !tbaa !145
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !128
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %24, label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %26, label %11, !llvm.loop !215

24:                                               ; preds = %17
  %25 = trunc i64 %12 to i32
  br label %26

26:                                               ; preds = %24, %21, %3
  %27 = phi i32 [ -1, %3 ], [ %25, %24 ], [ -1, %21 ]
  ret i32 %27
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @find_edge(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !222 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !223

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8, !tbaa !106
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  %10 = load ptr, ptr %1, align 8, !tbaa !224
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !225

12:                                               ; preds = %8
  %13 = load i32, ptr %10, align 8, !tbaa !106
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  %16 = icmp ugt i32 %9, %15
  br i1 %16, label %46, label %17, !prof !226

17:                                               ; preds = %14, %44
  %18 = phi i32 [ %45, %44 ], [ 0, %14 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !78
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !227

21:                                               ; preds = %17
  %22 = load i32, ptr %19, align 8, !tbaa !106
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %22, %21 ], [ 0, %17 ]
  %25 = icmp eq i32 %24, %18
  br i1 %25, label %30, label %26, !prof !228

26:                                               ; preds = %23
  %27 = zext i32 %18 to i64
  %28 = getelementptr inbounds %struct.VEC_edge_base, ptr %19, i64 0, i32 2, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  br label %30

30:                                               ; preds = %23, %26
  %31 = phi ptr [ %29, %26 ], [ null, %23 ]
  br i1 %25, label %74, label %32, !prof !228

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !128
  %35 = icmp eq ptr %34, %1
  br i1 %35, label %74, label %36, !prof !229

36:                                               ; preds = %32
  %37 = icmp eq ptr %19, null
  br i1 %37, label %40, label %38, !prof !230

38:                                               ; preds = %36
  %39 = load i32, ptr %19, align 8, !tbaa !106
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %39, %38 ], [ 0, %36 ]
  %42 = icmp ult i32 %18, %41
  br i1 %42, label %44, label %43, !prof !231

43:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %44

44:                                               ; preds = %40, %43
  %45 = add i32 %18, 1
  br label %17, !llvm.loop !232

46:                                               ; preds = %14, %72
  %47 = phi i32 [ %73, %72 ], [ 0, %14 ]
  %48 = load ptr, ptr %1, align 8, !tbaa !78
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50, !prof !233

50:                                               ; preds = %46
  %51 = load i32, ptr %48, align 8, !tbaa !106
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %51, %50 ], [ 0, %46 ]
  %54 = icmp eq i32 %53, %47
  br i1 %54, label %59, label %55, !prof !234

55:                                               ; preds = %52
  %56 = zext i32 %47 to i64
  %57 = getelementptr inbounds %struct.VEC_edge_base, ptr %48, i64 0, i32 2, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !78
  br label %59

59:                                               ; preds = %52, %55
  %60 = phi ptr [ %58, %55 ], [ null, %52 ]
  br i1 %54, label %74, label %61, !prof !234

61:                                               ; preds = %59
  %62 = load ptr, ptr %60, align 8, !tbaa !145
  %63 = icmp eq ptr %62, %0
  br i1 %63, label %74, label %64, !prof !235

64:                                               ; preds = %61
  %65 = icmp eq ptr %48, null
  br i1 %65, label %68, label %66, !prof !236

66:                                               ; preds = %64
  %67 = load i32, ptr %48, align 8, !tbaa !106
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %67, %66 ], [ 0, %64 ]
  %70 = icmp ult i32 %47, %69
  br i1 %70, label %72, label %71, !prof !237

71:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %72

72:                                               ; preds = %68, %71
  %73 = add i32 %47, 1
  br label %46, !llvm.loop !238

74:                                               ; preds = %30, %32, %59, %61
  %75 = phi ptr [ %60, %61 ], [ null, %59 ], [ %31, %32 ], [ null, %30 ]
  ret ptr %75
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @flow_nodes_print(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #13 !prof !77 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %65, label %5

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef %0)
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !239
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load i64, ptr %9, align 8, !tbaa !148
  br label %13

13:                                               ; preds = %5, %11
  %14 = phi i64 [ %12, %11 ], [ 0, %5 ]
  br label %15

15:                                               ; preds = %13, %59
  %16 = phi i32 [ %62, %59 ], [ 0, %13 ]
  %17 = phi i32 [ %56, %59 ], [ 0, %13 ]
  %18 = phi i64 [ %61, %59 ], [ %14, %13 ]
  %19 = phi i32 [ %58, %59 ], [ 0, %13 ]
  %20 = icmp eq i64 %18, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = add i32 %17, 1
  %23 = tail call i32 @llvm.umax.i32(i32 %8, i32 %22)
  %24 = add i32 %17, 1
  %25 = icmp ult i32 %24, %8
  br i1 %25, label %38, label %53

26:                                               ; preds = %38
  %27 = shl i32 %39, 6
  br label %28

28:                                               ; preds = %26, %15
  %29 = phi i32 [ %16, %15 ], [ %27, %26 ]
  %30 = phi i32 [ %17, %15 ], [ %39, %26 ]
  %31 = phi i64 [ %18, %15 ], [ %42, %26 ]
  %32 = phi i1 [ %20, %15 ], [ %43, %26 ]
  %33 = and i64 %31, 1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %44, label %53

35:                                               ; preds = %38
  %36 = add i32 %39, 1
  %37 = icmp ult i32 %36, %8
  br i1 %37, label %38, label %51, !llvm.loop !240

38:                                               ; preds = %21, %35
  %39 = phi i32 [ %36, %35 ], [ %24, %21 ]
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, ptr %9, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !148
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %35, label %26, !llvm.loop !240

44:                                               ; preds = %28, %44
  %45 = phi i64 [ %48, %44 ], [ %31, %28 ]
  %46 = phi i32 [ %47, %44 ], [ %29, %28 ]
  %47 = add i32 %46, 1
  %48 = lshr exact i64 %45, 1
  %49 = and i64 %45, 2
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %44, label %53, !llvm.loop !241

51:                                               ; preds = %35
  %52 = shl i32 %39, 6
  br label %53

53:                                               ; preds = %44, %51, %21, %28
  %54 = phi i1 [ %32, %28 ], [ %20, %21 ], [ %43, %51 ], [ %32, %44 ]
  %55 = phi i32 [ %29, %28 ], [ %16, %21 ], [ %52, %51 ], [ %47, %44 ]
  %56 = phi i32 [ %30, %28 ], [ %23, %21 ], [ %23, %51 ], [ %30, %44 ]
  %57 = phi i64 [ %31, %28 ], [ %18, %21 ], [ %42, %51 ], [ %48, %44 ]
  %58 = phi i32 [ %29, %28 ], [ %19, %21 ], [ %19, %51 ], [ %47, %44 ]
  br i1 %54, label %63, label %59

59:                                               ; preds = %53
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %58)
  %61 = lshr i64 %57, 1
  %62 = add i32 %55, 1
  br label %15, !llvm.loop !242

63:                                               ; preds = %53
  %64 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr %2)
  br label %65

65:                                               ; preds = %3, %63
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @flow_edge_list_print(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #13 !prof !77 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %4
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef %0)
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = zext nneg i32 %2 to i64
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %23, %11 ]
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = load ptr, ptr %14, align 8, !tbaa !145
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !147
  %18 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !128
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !147
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %17, i32 noundef %21)
  %23 = add nuw nsw i64 %12, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %25, label %11, !llvm.loop !243

25:                                               ; preds = %11, %6
  %26 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr %3)
  br label %27

27:                                               ; preds = %4, %25
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @remove_fake_edges() local_unnamed_addr #9 !prof !77 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !78
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %0, %8
  %9 = phi ptr [ %11, %8 ], [ %6, %0 ]
  tail call fastcc void @remove_fake_predecessors(ptr noundef nonnull %9)
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !244

13:                                               ; preds = %8, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_fake_predecessors(ptr noundef readonly %0) unnamed_addr #10 !prof !77 !PGOFuncName !245 {
  %2 = icmp eq ptr %0, null
  br label %3

3:                                                ; preds = %36, %1
  %4 = phi i32 [ %37, %36 ], [ 0, %1 ]
  %5 = zext i32 %4 to i64
  br label %6

6:                                                ; preds = %3, %27
  br i1 %2, label %7, label %8, !prof !246

7:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %8

8:                                                ; preds = %7, %6
  %9 = load ptr, ptr %0, align 8, !tbaa !78
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !246

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 8, !tbaa !106
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %12, %11 ], [ 0, %8 ]
  %15 = icmp eq i32 %14, %4
  br i1 %15, label %19, label %16, !prof !247

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.VEC_edge_base, ptr %9, i64 0, i32 2, i64 %5
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  br label %19

19:                                               ; preds = %13, %16
  %20 = phi ptr [ %18, %16 ], [ null, %13 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22, !prof !247

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !131
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27, !prof !248

27:                                               ; preds = %22
  tail call void @remove_edge(ptr noundef nonnull %20) #17
  br label %6, !llvm.loop !249

28:                                               ; preds = %22
  %29 = icmp eq ptr %9, null
  br i1 %29, label %32, label %30, !prof !250

30:                                               ; preds = %28
  %31 = load i32, ptr %9, align 8, !tbaa !106
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %31, %30 ], [ 0, %28 ]
  %34 = icmp ult i32 %4, %33
  br i1 %34, label %36, label %35, !prof !251

35:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %36

36:                                               ; preds = %32, %35
  %37 = add i32 %4, 1
  br label %3, !llvm.loop !249

38:                                               ; preds = %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @remove_fake_exit_edges() local_unnamed_addr #10 !prof !212 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !78
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = icmp eq ptr %5, null
  br label %7

7:                                                ; preds = %39, %0
  %8 = phi i32 [ %40, %39 ], [ 0, %0 ]
  %9 = zext i32 %8 to i64
  br label %10

10:                                               ; preds = %7, %31
  br i1 %6, label %11, label %12, !prof !246

11:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %12

12:                                               ; preds = %11, %10
  %13 = load ptr, ptr %5, align 8, !tbaa !78
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !246

15:                                               ; preds = %12
  %16 = load i32, ptr %13, align 8, !tbaa !106
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %16, %15 ], [ 0, %12 ]
  %19 = icmp eq i32 %18, %8
  br i1 %19, label %23, label %20, !prof !247

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.VEC_edge_base, ptr %13, i64 0, i32 2, i64 %9
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %22, %20 ], [ null, %17 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %41, label %26, !prof !247

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !131
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31, !prof !248

31:                                               ; preds = %26
  tail call void @remove_edge(ptr noundef nonnull %24) #17
  br label %10, !llvm.loop !249

32:                                               ; preds = %26
  br i1 %14, label %35, label %33, !prof !250

33:                                               ; preds = %32
  %34 = load i32, ptr %13, align 8, !tbaa !106
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ %34, %33 ], [ 0, %32 ]
  %37 = icmp ult i32 %8, %36
  br i1 %37, label %39, label %38, !prof !251

38:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %39

39:                                               ; preds = %38, %35
  %40 = add i32 %8, 1
  br label %7, !llvm.loop !249

41:                                               ; preds = %23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_noreturn_fake_exit_edges() local_unnamed_addr #10 !prof !252 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !78
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %32, label %10, !prof !253

10:                                               ; preds = %0, %23
  %11 = phi ptr [ %30, %23 ], [ %8, %0 ]
  %12 = phi ptr [ %25, %23 ], [ %6, %0 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !104
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !254

16:                                               ; preds = %10
  %17 = load i32, ptr %14, align 8, !tbaa !106
  br label %18

18:                                               ; preds = %10, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %10 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23, !prof !255

21:                                               ; preds = %18
  %22 = tail call ptr @make_single_succ_edge(ptr noundef %12, ptr noundef %11, i32 noundef 16) #17
  br label %23

23:                                               ; preds = %18, %21
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !124
  %26 = load ptr, ptr @cfun, align 8, !tbaa !78
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !98
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !100
  %31 = icmp eq ptr %25, %30
  br i1 %31, label %32, label %10, !prof !256, !llvm.loop !257

32:                                               ; preds = %23, %0
  ret void
}

declare ptr @make_single_succ_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @connect_infinite_loops_to_exit() local_unnamed_addr #10 !prof !258 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !78
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !140
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr @xmalloc(i64 noundef %9) #17
  %11 = load ptr, ptr @cfun, align 8, !tbaa !78
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !139
  %16 = tail call ptr @sbitmap_alloc(i32 noundef %15) #17
  tail call void @sbitmap_zero(ptr noundef %16) #17
  %17 = load ptr, ptr @cfun, align 8, !tbaa !78
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  store ptr %21, ptr %10, align 8, !tbaa !78
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !147
  %24 = load ptr, ptr %16, align 8, !tbaa !150
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26, !prof !259

26:                                               ; preds = %0
  %27 = lshr i32 %23, 6
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !148
  %31 = and i32 %23, 63
  %32 = zext nneg i32 %31 to i64
  %33 = shl nuw i64 1, %32
  %34 = and i64 %30, %33
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = getelementptr inbounds i8, ptr %24, i64 %28
  br label %38

38:                                               ; preds = %169, %36
  %39 = phi ptr [ %37, %36 ], [ %170, %169 ]
  %40 = phi i32 [ %23, %36 ], [ %155, %169 ]
  %41 = phi ptr [ %5, %36 ], [ %143, %169 ]
  %42 = load i8, ptr %39, align 1, !tbaa !89
  %43 = add i8 %42, 1
  store i8 %43, ptr %39, align 1, !tbaa !89
  br label %44

44:                                               ; preds = %0, %26, %38
  %45 = phi i32 [ %40, %38 ], [ %23, %26 ], [ %23, %0 ]
  %46 = phi ptr [ %41, %38 ], [ %5, %26 ], [ %5, %0 ]
  br label %47

47:                                               ; preds = %158, %44
  %48 = phi i32 [ %45, %44 ], [ %155, %158 ]
  %49 = phi ptr [ %46, %44 ], [ %143, %158 ]
  %50 = and i32 %48, 63
  %51 = zext nneg i32 %50 to i64
  %52 = shl nuw i64 1, %51
  %53 = lshr i32 %48, 6
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !148
  %57 = or i64 %56, %52
  store i64 %57, ptr %55, align 8, !tbaa !148
  br label %62

58:                                               ; preds = %85
  %59 = icmp eq i32 %70, 0
  br i1 %59, label %60, label %62, !prof !260, !llvm.loop !261

60:                                               ; preds = %58
  %61 = icmp eq ptr %49, null
  br i1 %61, label %142, label %125, !prof !262

62:                                               ; preds = %47, %58
  %63 = phi i32 [ 1, %47 ], [ %70, %58 ]
  %64 = add i32 %63, -1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %10, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !78
  %68 = icmp eq ptr %67, null
  br label %69

69:                                               ; preds = %123, %62
  %70 = phi i32 [ %64, %62 ], [ %114, %123 ]
  %71 = phi i32 [ 0, %62 ], [ %124, %123 ]
  br i1 %68, label %72, label %73, !prof !263

72:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %73

73:                                               ; preds = %72, %69
  %74 = load ptr, ptr %67, align 8, !tbaa !78
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76, !prof !264

76:                                               ; preds = %73
  %77 = load i32, ptr %74, align 8, !tbaa !106
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i32 [ %77, %76 ], [ 0, %73 ]
  %80 = icmp eq i32 %79, %71
  br i1 %80, label %85, label %81, !prof !265

81:                                               ; preds = %78
  %82 = zext i32 %71 to i64
  %83 = getelementptr inbounds %struct.VEC_edge_base, ptr %74, i64 0, i32 2, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !78
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi ptr [ %84, %81 ], [ null, %78 ]
  br i1 %80, label %58, label %87, !prof !265

87:                                               ; preds = %85
  %88 = load ptr, ptr %86, align 8, !tbaa !145
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !147
  %91 = lshr i32 %90, 6
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %92
  %94 = load i64, ptr %93, align 8, !tbaa !148
  %95 = and i32 %90, 63
  %96 = zext nneg i32 %95 to i64
  %97 = shl nuw i64 1, %96
  %98 = and i64 %97, %94
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %113, !prof !266

100:                                              ; preds = %87
  %101 = add i32 %70, 1
  %102 = zext i32 %70 to i64
  %103 = getelementptr inbounds ptr, ptr %10, i64 %102
  store ptr %88, ptr %103, align 8, !tbaa !78
  %104 = load ptr, ptr %16, align 8, !tbaa !150
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106, !prof !267

106:                                              ; preds = %100
  %107 = getelementptr inbounds i8, ptr %104, i64 %92
  %108 = load i8, ptr %107, align 1, !tbaa !89
  %109 = add i8 %108, 1
  store i8 %109, ptr %107, align 1, !tbaa !89
  br label %110

110:                                              ; preds = %100, %106
  %111 = load i64, ptr %93, align 8, !tbaa !148
  %112 = or i64 %111, %97
  store i64 %112, ptr %93, align 8, !tbaa !148
  br label %113

113:                                              ; preds = %110, %87
  %114 = phi i32 [ %101, %110 ], [ %70, %87 ]
  %115 = load ptr, ptr %67, align 8, !tbaa !78
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117, !prof !268

117:                                              ; preds = %113
  %118 = load i32, ptr %115, align 8, !tbaa !106
  br label %119

119:                                              ; preds = %117, %113
  %120 = phi i32 [ %118, %117 ], [ 0, %113 ]
  %121 = icmp ult i32 %71, %120
  br i1 %121, label %123, label %122, !prof !269

122:                                              ; preds = %119
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %123

123:                                              ; preds = %122, %119
  %124 = add i32 %71, 1
  br label %69, !llvm.loop !270

125:                                              ; preds = %60, %138
  %126 = phi ptr [ %140, %138 ], [ %49, %60 ]
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 9
  %128 = load i32, ptr %127, align 8, !tbaa !147
  %129 = lshr i32 %128, 6
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %130
  %132 = load i64, ptr %131, align 8, !tbaa !148
  %133 = and i32 %128, 63
  %134 = zext nneg i32 %133 to i64
  %135 = shl nuw i64 1, %134
  %136 = and i64 %135, %132
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %142, label %138, !prof !271

138:                                              ; preds = %125
  %139 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 5
  %140 = load ptr, ptr %139, align 8, !tbaa !272
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %125, !prof !273, !llvm.loop !274

142:                                              ; preds = %125, %138, %60
  %143 = phi ptr [ null, %60 ], [ %126, %125 ], [ null, %138 ]
  %144 = icmp eq ptr %143, null
  br i1 %144, label %171, label %145, !prof !275

145:                                              ; preds = %142
  %146 = load ptr, ptr @cfun, align 8, !tbaa !78
  %147 = getelementptr inbounds %struct.function, ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !98
  %149 = getelementptr inbounds %struct.control_flow_graph, ptr %148, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !100
  %151 = tail call ptr @make_edge(ptr noundef nonnull %143, ptr noundef %150, i32 noundef 16) #17
  %152 = zext nneg i32 %70 to i64
  %153 = getelementptr inbounds ptr, ptr %10, i64 %152
  store ptr %143, ptr %153, align 8, !tbaa !78
  %154 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 9
  %155 = load i32, ptr %154, align 8, !tbaa !147
  %156 = load ptr, ptr %16, align 8, !tbaa !150
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %159, !prof !276

158:                                              ; preds = %145, %159
  br label %47, !llvm.loop !277

159:                                              ; preds = %145
  %160 = lshr i32 %155, 6
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %161
  %163 = load i64, ptr %162, align 8, !tbaa !148
  %164 = and i32 %155, 63
  %165 = zext nneg i32 %164 to i64
  %166 = shl nuw i64 1, %165
  %167 = and i64 %163, %166
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %158

169:                                              ; preds = %159
  %170 = getelementptr inbounds i8, ptr %156, i64 %161
  br label %38, !llvm.loop !277

171:                                              ; preds = %142
  tail call void @free(ptr noundef %10)
  %172 = load ptr, ptr %16, align 8, !tbaa !150
  tail call void @free(ptr noundef %172)
  tail call void @free(ptr noundef %16)
  ret void
}

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @post_order_compute(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #10 !prof !278 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %6, label %5, !prof !279

5:                                                ; preds = %3
  store i32 1, ptr %0, align 4, !tbaa !93
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i32 [ 1, %5 ], [ 0, %3 ]
  %8 = load ptr, ptr @cfun, align 8, !tbaa !78
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !140
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 4
  %16 = tail call ptr @xmalloc(i64 noundef %15) #17
  %17 = load ptr, ptr @cfun, align 8, !tbaa !78
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !139
  %22 = tail call ptr @sbitmap_alloc(i32 noundef %21) #17
  tail call void @sbitmap_zero(ptr noundef %22) #17
  %23 = load ptr, ptr @cfun, align 8, !tbaa !78
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !98
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 1
  store i32 0, ptr %16, align 8, !tbaa.struct !141
  %28 = getelementptr inbounds i8, ptr %16, i64 8
  store ptr %27, ptr %28, align 8, !tbaa.struct !142
  br label %29

29:                                               ; preds = %6, %137
  %30 = phi i32 [ 1, %6 ], [ %139, %137 ]
  %31 = phi i32 [ %7, %6 ], [ %138, %137 ]
  %32 = sext i32 %30 to i64
  %33 = getelementptr %struct.edge_iterator, ptr %16, i64 %32
  %34 = getelementptr %struct.edge_iterator, ptr %33, i64 -1
  %35 = load i32, ptr %34, align 8, !tbaa.struct !141
  %36 = getelementptr %struct.edge_iterator, ptr %33, i64 -1, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa.struct !142
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40, !prof !280

39:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %40

40:                                               ; preds = %29, %39
  %41 = load ptr, ptr %37, align 8, !tbaa !78, !nonnull !144, !noundef !144
  %42 = zext i32 %35 to i64
  %43 = getelementptr inbounds %struct.VEC_edge_base, ptr %41, i64 0, i32 2, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !78
  %45 = load ptr, ptr %44, align 8, !tbaa !145
  %46 = getelementptr inbounds %struct.edge_def, ptr %44, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !128
  %48 = load ptr, ptr @cfun, align 8, !tbaa !78
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !98
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !100
  %53 = icmp eq ptr %47, %52
  br i1 %53, label %92, label %54, !prof !281

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !147
  %57 = lshr i32 %56, 6
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds %struct.simple_bitmap_def, ptr %22, i64 0, i32 3, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !148
  %61 = and i32 %56, 63
  %62 = zext nneg i32 %61 to i64
  %63 = shl nuw i64 1, %62
  %64 = and i64 %63, %60
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %92, !prof !282

66:                                               ; preds = %54
  %67 = load ptr, ptr %22, align 8, !tbaa !150
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69, !prof !283

69:                                               ; preds = %66
  %70 = getelementptr inbounds i8, ptr %67, i64 %58
  %71 = load i8, ptr %70, align 1, !tbaa !89
  %72 = add i8 %71, 1
  store i8 %72, ptr %70, align 1, !tbaa !89
  br label %73

73:                                               ; preds = %66, %69
  %74 = load i64, ptr %59, align 8, !tbaa !148
  %75 = or i64 %74, %63
  store i64 %75, ptr %59, align 8, !tbaa !148
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !104
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79, !prof !284

79:                                               ; preds = %73
  %80 = load i32, ptr %77, align 8, !tbaa !106
  br label %81

81:                                               ; preds = %73, %79
  %82 = phi i32 [ %80, %79 ], [ 0, %73 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84, !prof !285

84:                                               ; preds = %81
  %85 = add nsw i32 %30, 1
  store i32 0, ptr %33, align 8, !tbaa.struct !141
  %86 = getelementptr inbounds i8, ptr %33, i64 8
  store ptr %76, ptr %86, align 8, !tbaa.struct !142
  br label %137

87:                                               ; preds = %81
  %88 = load i32, ptr %55, align 8, !tbaa !147
  %89 = add nsw i32 %31, 1
  %90 = sext i32 %31 to i64
  %91 = getelementptr inbounds i32, ptr %0, i64 %90
  store i32 %88, ptr %91, align 4, !tbaa !93
  br label %137

92:                                               ; preds = %54, %40
  %93 = load i32, ptr %41, align 8, !tbaa !106
  %94 = add i32 %35, 1
  %95 = icmp eq i32 %94, %93
  br i1 %95, label %96, label %105, !prof !286

96:                                               ; preds = %92
  %97 = load ptr, ptr %50, align 8, !tbaa !103
  %98 = icmp eq ptr %45, %97
  br i1 %98, label %105, label %99, !prof !287

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 9
  %101 = load i32, ptr %100, align 8, !tbaa !147
  %102 = add nsw i32 %31, 1
  %103 = sext i32 %31 to i64
  %104 = getelementptr inbounds i32, ptr %0, i64 %103
  store i32 %101, ptr %104, align 4, !tbaa !93
  br label %105

105:                                              ; preds = %99, %96, %92
  %106 = phi i32 [ %102, %99 ], [ %31, %96 ], [ %31, %92 ]
  %107 = load i32, ptr %41, align 8, !tbaa !106
  %108 = icmp eq i32 %94, %107
  br i1 %108, label %135, label %109, !prof !286

109:                                              ; preds = %105
  %110 = load i32, ptr %34, align 8
  %111 = load ptr, ptr %36, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %114, !prof !288

113:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %114

114:                                              ; preds = %113, %109
  %115 = load ptr, ptr %111, align 8, !tbaa !78
  %116 = icmp eq ptr %115, null
  br i1 %116, label %123, label %117, !prof !288

117:                                              ; preds = %114
  %118 = load ptr, ptr %36, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %121, !prof !288

120:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %121

121:                                              ; preds = %120, %117
  %122 = load ptr, ptr %118, align 8, !tbaa !78
  br label %123

123:                                              ; preds = %121, %114
  %124 = phi ptr [ %122, %121 ], [ null, %114 ]
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126, !prof !288

126:                                              ; preds = %123
  %127 = load i32, ptr %124, align 8, !tbaa !106
  br label %128

128:                                              ; preds = %126, %123
  %129 = phi i32 [ %127, %126 ], [ 0, %123 ]
  %130 = icmp ult i32 %110, %129
  br i1 %130, label %132, label %131, !prof !289

131:                                              ; preds = %128
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %132

132:                                              ; preds = %128, %131
  %133 = load i32, ptr %34, align 8, !tbaa !163
  %134 = add i32 %133, 1
  store i32 %134, ptr %34, align 8, !tbaa !163
  br label %137

135:                                              ; preds = %105
  %136 = add nsw i32 %30, -1
  br label %137

137:                                              ; preds = %132, %135, %84, %87
  %138 = phi i32 [ %106, %135 ], [ %106, %132 ], [ %31, %84 ], [ %89, %87 ]
  %139 = phi i32 [ %136, %135 ], [ %30, %132 ], [ %85, %84 ], [ %30, %87 ]
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %29, !prof !290, !llvm.loop !291

141:                                              ; preds = %137
  br i1 %4, label %146, label %142, !prof !279

142:                                              ; preds = %141
  %143 = add nsw i32 %138, 1
  %144 = sext i32 %138 to i64
  %145 = getelementptr inbounds i32, ptr %0, i64 %144
  store i32 0, ptr %145, align 4, !tbaa !93
  br label %148

146:                                              ; preds = %141
  %147 = add nsw i32 %138, 2
  br label %148

148:                                              ; preds = %146, %142
  %149 = phi i32 [ %143, %142 ], [ %147, %146 ]
  %150 = phi i32 [ %143, %142 ], [ %138, %146 ]
  %151 = icmp eq i8 %2, 0
  br i1 %151, label %193, label %152, !prof !279

152:                                              ; preds = %148
  %153 = load ptr, ptr @cfun, align 8, !tbaa !78
  %154 = getelementptr inbounds %struct.function, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !98
  %156 = getelementptr inbounds %struct.control_flow_graph, ptr %155, i64 0, i32 3
  %157 = load i32, ptr %156, align 8, !tbaa !140
  %158 = icmp eq i32 %149, %157
  br i1 %158, label %193, label %159, !prof !292

159:                                              ; preds = %152
  %160 = load ptr, ptr %155, align 8, !tbaa !103
  %161 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 6
  %162 = load ptr, ptr %161, align 8, !tbaa !124
  %163 = load ptr, ptr @cfun, align 8, !tbaa !78
  %164 = getelementptr inbounds %struct.function, ptr %163, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !98
  %166 = getelementptr inbounds %struct.control_flow_graph, ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !100
  %168 = icmp eq ptr %162, %167
  br i1 %168, label %192, label %169

169:                                              ; preds = %159, %185
  %170 = phi ptr [ %172, %185 ], [ %162, %159 ]
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %170, i64 0, i32 6
  %172 = load ptr, ptr %171, align 8, !tbaa !124
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %170, i64 0, i32 9
  %174 = load i32, ptr %173, align 8, !tbaa !147
  %175 = lshr i32 %174, 6
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds %struct.simple_bitmap_def, ptr %22, i64 0, i32 3, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !148
  %179 = and i32 %174, 63
  %180 = zext nneg i32 %179 to i64
  %181 = shl nuw i64 1, %180
  %182 = and i64 %181, %178
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %169
  tail call void @delete_basic_block(ptr noundef %170) #17
  br label %185

185:                                              ; preds = %169, %184
  %186 = load ptr, ptr @cfun, align 8, !tbaa !78
  %187 = getelementptr inbounds %struct.function, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !98
  %189 = getelementptr inbounds %struct.control_flow_graph, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !100
  %191 = icmp eq ptr %172, %190
  br i1 %191, label %192, label %169, !llvm.loop !293

192:                                              ; preds = %185, %159
  tail call void @tidy_fallthru_edges() #17
  br label %193

193:                                              ; preds = %192, %152, %148
  tail call void @free(ptr noundef %16)
  %194 = load ptr, ptr %22, align 8, !tbaa !150
  tail call void @free(ptr noundef %194)
  tail call void @free(ptr noundef %22)
  ret i32 %150
}

declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

declare void @tidy_fallthru_edges() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @inverted_post_order_compute(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 !prof !278 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !78
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !140
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 4
  %10 = tail call ptr @xmalloc(i64 noundef %9) #17
  %11 = load ptr, ptr @cfun, align 8, !tbaa !78
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !139
  %16 = tail call ptr @sbitmap_alloc(i32 noundef %15) #17
  tail call void @sbitmap_zero(ptr noundef %16) #17
  %17 = load ptr, ptr @cfun, align 8, !tbaa !78
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = load ptr, ptr %19, align 8, !tbaa !78
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24, !prof !294

22:                                               ; preds = %75, %1
  %23 = phi i32 [ 0, %1 ], [ %76, %75 ]
  br label %80

24:                                               ; preds = %1, %75
  %25 = phi ptr [ %78, %75 ], [ %20, %1 ]
  %26 = phi i32 [ %76, %75 ], [ 0, %1 ]
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !104
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !295

30:                                               ; preds = %24
  %31 = load i32, ptr %28, align 8, !tbaa !106
  br label %32

32:                                               ; preds = %24, %30
  %33 = phi i32 [ %31, %30 ], [ 0, %24 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %75, !prof !296

35:                                               ; preds = %32
  %36 = load ptr, ptr %25, align 8, !tbaa !224
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !297

38:                                               ; preds = %35
  %39 = load i32, ptr %36, align 8, !tbaa !106
  br label %40

40:                                               ; preds = %35, %38
  %41 = phi i32 [ %39, %38 ], [ 0, %35 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %75, label %43, !prof !297

43:                                               ; preds = %40
  %44 = add nsw i32 %26, 1
  %45 = sext i32 %26 to i64
  %46 = getelementptr inbounds %struct.edge_iterator, ptr %10, i64 %45
  store i32 0, ptr %46, align 8, !tbaa.struct !141
  %47 = getelementptr inbounds i8, ptr %46, i64 8
  store ptr %25, ptr %47, align 8, !tbaa.struct !142
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !147
  %50 = load ptr, ptr %16, align 8, !tbaa !150
  %51 = icmp eq ptr %50, null
  br i1 %51, label %66, label %52, !prof !298

52:                                               ; preds = %43
  %53 = lshr i32 %49, 6
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !148
  %57 = and i32 %49, 63
  %58 = zext nneg i32 %57 to i64
  %59 = shl nuw i64 1, %58
  %60 = and i64 %56, %59
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = getelementptr inbounds i8, ptr %50, i64 %54
  %64 = load i8, ptr %63, align 1, !tbaa !89
  %65 = add i8 %64, 1
  store i8 %65, ptr %63, align 1, !tbaa !89
  br label %66

66:                                               ; preds = %43, %52, %62
  %67 = and i32 %49, 63
  %68 = zext nneg i32 %67 to i64
  %69 = shl nuw i64 1, %68
  %70 = lshr i32 %49, 6
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !148
  %74 = or i64 %73, %69
  store i64 %74, ptr %72, align 8, !tbaa !148
  br label %75

75:                                               ; preds = %32, %66, %40
  %76 = phi i32 [ %44, %66 ], [ %26, %40 ], [ %26, %32 ]
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !78
  %79 = icmp eq ptr %78, null
  br i1 %79, label %22, label %24, !prof !299, !llvm.loop !300

80:                                               ; preds = %22, %358
  %81 = phi i32 [ %194, %358 ], [ 0, %22 ]
  %82 = phi i32 [ %359, %358 ], [ %23, %22 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %193, label %84, !prof !294

84:                                               ; preds = %80, %189
  %85 = phi i32 [ %191, %189 ], [ %82, %80 ]
  %86 = phi i32 [ %190, %189 ], [ %81, %80 ]
  %87 = sext i32 %85 to i64
  %88 = getelementptr %struct.edge_iterator, ptr %10, i64 %87
  %89 = getelementptr %struct.edge_iterator, ptr %88, i64 -1
  %90 = load i32, ptr %89, align 8, !tbaa.struct !141
  %91 = getelementptr %struct.edge_iterator, ptr %88, i64 -1, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa.struct !142
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %95, !prof !301

94:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %95

95:                                               ; preds = %84, %94
  %96 = load ptr, ptr %92, align 8, !tbaa !78, !nonnull !144, !noundef !144
  %97 = zext i32 %90 to i64
  %98 = getelementptr inbounds %struct.VEC_edge_base, ptr %96, i64 0, i32 2, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !78
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !128
  %102 = load ptr, ptr %99, align 8, !tbaa !145
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %102, i64 0, i32 9
  %104 = load i32, ptr %103, align 8, !tbaa !147
  %105 = lshr i32 %104, 6
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %106
  %108 = load i64, ptr %107, align 8, !tbaa !148
  %109 = and i32 %104, 63
  %110 = zext nneg i32 %109 to i64
  %111 = shl nuw i64 1, %110
  %112 = and i64 %111, %108
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %139, !prof !302

114:                                              ; preds = %95
  %115 = load ptr, ptr %16, align 8, !tbaa !150
  %116 = icmp eq ptr %115, null
  br i1 %116, label %121, label %117, !prof !303

117:                                              ; preds = %114
  %118 = getelementptr inbounds i8, ptr %115, i64 %106
  %119 = load i8, ptr %118, align 1, !tbaa !89
  %120 = add i8 %119, 1
  store i8 %120, ptr %118, align 1, !tbaa !89
  br label %121

121:                                              ; preds = %114, %117
  %122 = load i64, ptr %107, align 8, !tbaa !148
  %123 = or i64 %122, %111
  store i64 %123, ptr %107, align 8, !tbaa !148
  %124 = load ptr, ptr %102, align 8, !tbaa !224
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126, !prof !287

126:                                              ; preds = %121
  %127 = load i32, ptr %124, align 8, !tbaa !106
  br label %128

128:                                              ; preds = %121, %126
  %129 = phi i32 [ %127, %126 ], [ 0, %121 ]
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131, !prof !287

131:                                              ; preds = %128
  %132 = add nsw i32 %85, 1
  store i32 0, ptr %88, align 8, !tbaa.struct !141
  %133 = getelementptr inbounds i8, ptr %88, i64 8
  store ptr %102, ptr %133, align 8, !tbaa.struct !142
  br label %189

134:                                              ; preds = %128
  %135 = load i32, ptr %103, align 8, !tbaa !147
  %136 = add nsw i32 %86, 1
  %137 = sext i32 %86 to i64
  %138 = getelementptr inbounds i32, ptr %0, i64 %137
  store i32 %135, ptr %138, align 4, !tbaa !93
  br label %189

139:                                              ; preds = %95
  %140 = load ptr, ptr @cfun, align 8, !tbaa !78
  %141 = getelementptr inbounds %struct.function, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !98
  %143 = getelementptr inbounds %struct.control_flow_graph, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !100
  %145 = icmp eq ptr %101, %144
  br i1 %145, label %156, label %146, !prof !304

146:                                              ; preds = %139
  %147 = load i32, ptr %96, align 8, !tbaa !106
  %148 = add i32 %90, 1
  %149 = icmp eq i32 %148, %147
  br i1 %149, label %150, label %156, !prof !305

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %101, i64 0, i32 9
  %152 = load i32, ptr %151, align 8, !tbaa !147
  %153 = add nsw i32 %86, 1
  %154 = sext i32 %86 to i64
  %155 = getelementptr inbounds i32, ptr %0, i64 %154
  store i32 %152, ptr %155, align 4, !tbaa !93
  br label %156

156:                                              ; preds = %150, %146, %139
  %157 = phi i32 [ %153, %150 ], [ %86, %146 ], [ %86, %139 ]
  %158 = load i32, ptr %96, align 8, !tbaa !106
  %159 = add i32 %90, 1
  %160 = icmp eq i32 %159, %158
  br i1 %160, label %187, label %161, !prof !306

161:                                              ; preds = %156
  %162 = load i32, ptr %89, align 8
  %163 = load ptr, ptr %91, align 8
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %166, !prof !307

165:                                              ; preds = %161
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %166

166:                                              ; preds = %165, %161
  %167 = load ptr, ptr %163, align 8, !tbaa !78
  %168 = icmp eq ptr %167, null
  br i1 %168, label %175, label %169, !prof !307

169:                                              ; preds = %166
  %170 = load ptr, ptr %91, align 8
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %173, !prof !307

172:                                              ; preds = %169
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %173

173:                                              ; preds = %172, %169
  %174 = load ptr, ptr %170, align 8, !tbaa !78
  br label %175

175:                                              ; preds = %173, %166
  %176 = phi ptr [ %174, %173 ], [ null, %166 ]
  %177 = icmp eq ptr %176, null
  br i1 %177, label %180, label %178, !prof !307

178:                                              ; preds = %175
  %179 = load i32, ptr %176, align 8, !tbaa !106
  br label %180

180:                                              ; preds = %178, %175
  %181 = phi i32 [ %179, %178 ], [ 0, %175 ]
  %182 = icmp ult i32 %162, %181
  br i1 %182, label %184, label %183, !prof !308

183:                                              ; preds = %180
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %184

184:                                              ; preds = %180, %183
  %185 = load i32, ptr %89, align 8, !tbaa !163
  %186 = add i32 %185, 1
  store i32 %186, ptr %89, align 8, !tbaa !163
  br label %189

187:                                              ; preds = %156
  %188 = add nsw i32 %85, -1
  br label %189

189:                                              ; preds = %184, %187, %131, %134
  %190 = phi i32 [ %157, %187 ], [ %157, %184 ], [ %86, %131 ], [ %136, %134 ]
  %191 = phi i32 [ %188, %187 ], [ %85, %184 ], [ %132, %131 ], [ %85, %134 ]
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %84, !prof !309, !llvm.loop !310

193:                                              ; preds = %189, %80
  %194 = phi i32 [ %81, %80 ], [ %190, %189 ]
  %195 = load ptr, ptr @cfun, align 8, !tbaa !78
  %196 = getelementptr inbounds %struct.function, ptr %195, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !98
  %198 = load ptr, ptr %197, align 8, !tbaa !78
  %199 = getelementptr inbounds %struct.control_flow_graph, ptr %197, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !100
  %201 = icmp eq ptr %198, %200
  br i1 %201, label %315, label %202, !prof !294

202:                                              ; preds = %193, %304
  %203 = phi ptr [ %308, %304 ], [ %198, %193 ]
  %204 = phi i32 [ %306, %304 ], [ 0, %193 ]
  %205 = phi i8 [ %305, %304 ], [ 0, %193 ]
  %206 = getelementptr inbounds %struct.basic_block_def, ptr %203, i64 0, i32 9
  %207 = load i32, ptr %206, align 8, !tbaa !147
  %208 = lshr i32 %207, 6
  %209 = zext nneg i32 %208 to i64
  %210 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %209
  %211 = load i64, ptr %210, align 8, !tbaa !148
  %212 = and i32 %207, 63
  %213 = zext nneg i32 %212 to i64
  %214 = shl nuw i64 1, %213
  %215 = and i64 %214, %211
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %304, !prof !311

217:                                              ; preds = %202
  %218 = load ptr, ptr %203, align 8, !tbaa !224
  %219 = icmp eq ptr %218, null
  br i1 %219, label %222, label %220

220:                                              ; preds = %217
  %221 = load i32, ptr %218, align 8, !tbaa !106
  br label %222

222:                                              ; preds = %217, %220
  %223 = phi i32 [ %221, %220 ], [ 0, %217 ]
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %304, label %225

225:                                              ; preds = %222, %262
  %226 = phi i32 [ %263, %262 ], [ 0, %222 ]
  %227 = phi ptr [ %254, %262 ], [ null, %222 ]
  %228 = load ptr, ptr %203, align 8, !tbaa !78
  %229 = icmp eq ptr %228, null
  br i1 %229, label %232, label %230

230:                                              ; preds = %225
  %231 = load i32, ptr %228, align 8, !tbaa !106
  br label %232

232:                                              ; preds = %230, %225
  %233 = phi i32 [ %231, %230 ], [ 0, %225 ]
  %234 = icmp eq i32 %233, %226
  br i1 %234, label %239, label %235

235:                                              ; preds = %232
  %236 = zext i32 %226 to i64
  %237 = getelementptr inbounds %struct.VEC_edge_base, ptr %228, i64 0, i32 2, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !78
  br label %239

239:                                              ; preds = %232, %235
  %240 = phi ptr [ %238, %235 ], [ null, %232 ]
  br i1 %234, label %264, label %241

241:                                              ; preds = %239
  %242 = load ptr, ptr %240, align 8, !tbaa !145
  %243 = getelementptr inbounds %struct.basic_block_def, ptr %242, i64 0, i32 9
  %244 = load i32, ptr %243, align 8, !tbaa !147
  %245 = lshr i32 %244, 6
  %246 = zext nneg i32 %245 to i64
  %247 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %246
  %248 = load i64, ptr %247, align 8, !tbaa !148
  %249 = and i32 %244, 63
  %250 = zext nneg i32 %249 to i64
  %251 = shl nuw i64 1, %250
  %252 = and i64 %251, %248
  %253 = icmp eq i64 %252, 0
  %254 = select i1 %253, ptr %227, ptr %242
  %255 = icmp eq ptr %228, null
  br i1 %255, label %258, label %256

256:                                              ; preds = %241
  %257 = load i32, ptr %228, align 8, !tbaa !106
  br label %258

258:                                              ; preds = %256, %241
  %259 = phi i32 [ %257, %256 ], [ 0, %241 ]
  %260 = icmp ult i32 %226, %259
  br i1 %260, label %262, label %261

261:                                              ; preds = %258
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %262

262:                                              ; preds = %258, %261
  %263 = add i32 %226, 1
  br label %225, !llvm.loop !312

264:                                              ; preds = %239
  %265 = icmp eq ptr %227, null
  br i1 %265, label %302, label %266

266:                                              ; preds = %264
  %267 = tail call fastcc ptr @dfs_find_deadend(ptr noundef nonnull %203)
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %270

269:                                              ; preds = %266
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 907, ptr noundef nonnull @.str.16) #17
  br label %270

270:                                              ; preds = %266, %269
  %271 = getelementptr inbounds %struct.basic_block_def, ptr %267, i64 0, i32 9
  %272 = load i32, ptr %271, align 8, !tbaa !147
  %273 = load ptr, ptr %16, align 8, !tbaa !150
  %274 = icmp eq ptr %273, null
  br i1 %274, label %289, label %275

275:                                              ; preds = %270
  %276 = lshr i32 %272, 6
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %277
  %279 = load i64, ptr %278, align 8, !tbaa !148
  %280 = and i32 %272, 63
  %281 = zext nneg i32 %280 to i64
  %282 = shl nuw i64 1, %281
  %283 = and i64 %279, %282
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %275
  %286 = getelementptr inbounds i8, ptr %273, i64 %277
  %287 = load i8, ptr %286, align 1, !tbaa !89
  %288 = add i8 %287, 1
  store i8 %288, ptr %286, align 1, !tbaa !89
  br label %289

289:                                              ; preds = %270, %275, %285
  %290 = and i32 %272, 63
  %291 = zext nneg i32 %290 to i64
  %292 = shl nuw i64 1, %291
  %293 = lshr i32 %272, 6
  %294 = zext nneg i32 %293 to i64
  %295 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %294
  %296 = load i64, ptr %295, align 8, !tbaa !148
  %297 = or i64 %296, %292
  store i64 %297, ptr %295, align 8, !tbaa !148
  %298 = add nsw i32 %204, 1
  %299 = sext i32 %204 to i64
  %300 = getelementptr inbounds %struct.edge_iterator, ptr %10, i64 %299
  store i32 0, ptr %300, align 8, !tbaa.struct !141
  %301 = getelementptr inbounds i8, ptr %300, i64 8
  store ptr %267, ptr %301, align 8, !tbaa.struct !142
  br label %302

302:                                              ; preds = %264, %289
  %303 = phi i32 [ %298, %289 ], [ %204, %264 ]
  br i1 %265, label %304, label %315

304:                                              ; preds = %302, %202, %222
  %305 = phi i8 [ %205, %202 ], [ 1, %302 ], [ 1, %222 ]
  %306 = phi i32 [ %204, %202 ], [ %303, %302 ], [ %204, %222 ]
  %307 = getelementptr inbounds %struct.basic_block_def, ptr %203, i64 0, i32 6
  %308 = load ptr, ptr %307, align 8, !tbaa !78
  %309 = load ptr, ptr @cfun, align 8, !tbaa !78
  %310 = getelementptr inbounds %struct.function, ptr %309, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !98
  %312 = getelementptr inbounds %struct.control_flow_graph, ptr %311, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !100
  %314 = icmp eq ptr %308, %313
  br i1 %314, label %315, label %202, !prof !313, !llvm.loop !314

315:                                              ; preds = %304, %302, %193
  %316 = phi i8 [ 0, %193 ], [ %305, %304 ], [ 1, %302 ]
  %317 = phi i32 [ 0, %193 ], [ %306, %304 ], [ %303, %302 ]
  %318 = icmp ne i8 %316, 0
  %319 = icmp eq i32 %317, 0
  %320 = select i1 %318, i1 %319, i1 false, !prof !279
  br i1 %320, label %321, label %358, !prof !279

321:                                              ; preds = %315
  %322 = load ptr, ptr @cfun, align 8, !tbaa !78
  %323 = getelementptr inbounds %struct.function, ptr %322, i64 0, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !98
  %325 = load ptr, ptr %324, align 8, !tbaa !103
  %326 = tail call fastcc ptr @dfs_find_deadend(ptr noundef %325)
  %327 = icmp eq ptr %326, null
  br i1 %327, label %328, label %329

328:                                              ; preds = %321
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 920, ptr noundef nonnull @.str.16) #17
  br label %329

329:                                              ; preds = %321, %328
  %330 = getelementptr inbounds %struct.basic_block_def, ptr %326, i64 0, i32 9
  %331 = load i32, ptr %330, align 8, !tbaa !147
  %332 = load ptr, ptr %16, align 8, !tbaa !150
  %333 = icmp eq ptr %332, null
  br i1 %333, label %348, label %334

334:                                              ; preds = %329
  %335 = lshr i32 %331, 6
  %336 = zext nneg i32 %335 to i64
  %337 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %336
  %338 = load i64, ptr %337, align 8, !tbaa !148
  %339 = and i32 %331, 63
  %340 = zext nneg i32 %339 to i64
  %341 = shl nuw i64 1, %340
  %342 = and i64 %338, %341
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %334
  %345 = getelementptr inbounds i8, ptr %332, i64 %336
  %346 = load i8, ptr %345, align 1, !tbaa !89
  %347 = add i8 %346, 1
  store i8 %347, ptr %345, align 1, !tbaa !89
  br label %348

348:                                              ; preds = %329, %334, %344
  %349 = getelementptr inbounds i8, ptr %10, i64 8
  %350 = and i32 %331, 63
  %351 = zext nneg i32 %350 to i64
  %352 = shl nuw i64 1, %351
  %353 = lshr i32 %331, 6
  %354 = zext nneg i32 %353 to i64
  %355 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %354
  %356 = load i64, ptr %355, align 8, !tbaa !148
  %357 = or i64 %356, %352
  store i64 %357, ptr %355, align 8, !tbaa !148
  store i32 0, ptr %10, align 8, !tbaa.struct !141
  store ptr %326, ptr %349, align 8, !tbaa.struct !142
  br label %358

358:                                              ; preds = %348, %315
  %359 = phi i32 [ 1, %348 ], [ %317, %315 ]
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %80, !prof !292, !llvm.loop !315

361:                                              ; preds = %358
  %362 = add nsw i32 %194, 1
  %363 = sext i32 %194 to i64
  %364 = getelementptr inbounds i32, ptr %0, i64 %363
  store i32 1, ptr %364, align 4, !tbaa !93
  tail call void @free(ptr noundef %10)
  %365 = load ptr, ptr %16, align 8, !tbaa !150
  tail call void @free(ptr noundef %365)
  tail call void @free(ptr noundef %16)
  ret i32 %362
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @dfs_find_deadend(ptr noundef readonly %0) unnamed_addr #9 !prof !77 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !78
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !139
  %7 = tail call ptr @sbitmap_alloc(i32 noundef %6) #17
  tail call void @sbitmap_zero(ptr noundef %7) #17
  br label %8

8:                                                ; preds = %45, %1
  %9 = phi ptr [ %0, %1 ], [ %49, %45 ]
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !147
  %12 = load ptr, ptr %7, align 8, !tbaa !150
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %8
  %15 = lshr i32 %11, 6
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !148
  %19 = and i32 %11, 63
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw i64 1, %20
  %22 = and i64 %18, %21
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = getelementptr inbounds i8, ptr %12, i64 %16
  %26 = load i8, ptr %25, align 1, !tbaa !89
  %27 = add i8 %26, 1
  store i8 %27, ptr %25, align 1, !tbaa !89
  br label %28

28:                                               ; preds = %8, %14, %24
  %29 = and i32 %11, 63
  %30 = zext nneg i32 %29 to i64
  %31 = shl nuw i64 1, %30
  %32 = lshr i32 %11, 6
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !148
  %36 = or i64 %35, %31
  store i64 %36, ptr %34, align 8, !tbaa !148
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !104
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %28
  %41 = load i32, ptr %38, align 8, !tbaa !106
  br label %42

42:                                               ; preds = %28, %40
  %43 = phi i32 [ %41, %40 ], [ 0, %28 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.VEC_edge_base, ptr %38, i64 0, i32 2, i64 0
  %47 = load ptr, ptr %46, align 8, !tbaa !78
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !128
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !147
  %52 = lshr i32 %51, 6
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !148
  %56 = and i32 %51, 63
  %57 = zext nneg i32 %56 to i64
  %58 = shl nuw i64 1, %57
  %59 = and i64 %58, %55
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %8, label %61, !llvm.loop !316

61:                                               ; preds = %45, %42
  %62 = load ptr, ptr %7, align 8, !tbaa !150
  tail call void @free(ptr noundef %62)
  tail call void @free(ptr noundef %7)
  ret ptr %9
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @pre_and_rev_post_order_compute(ptr noundef writeonly %0, ptr noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #10 !prof !317 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !140
  %9 = add nsw i32 %8, -1
  %10 = add nsw i32 %8, 1
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 4
  %13 = tail call ptr @xmalloc(i64 noundef %12) #17
  %14 = icmp eq i8 %2, 0
  br i1 %14, label %24, label %15, !prof !318

15:                                               ; preds = %3
  %16 = icmp eq ptr %0, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  store i32 0, ptr %0, align 4, !tbaa !93
  br label %18

18:                                               ; preds = %17, %15
  %19 = icmp eq ptr %1, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = add nsw i32 %8, -2
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds i32, ptr %1, i64 %22
  store i32 0, ptr %23, align 4, !tbaa !93
  br label %26

24:                                               ; preds = %3
  %25 = add nsw i32 %8, -3
  br label %26

26:                                               ; preds = %18, %20, %24
  %27 = phi i32 [ %21, %20 ], [ %9, %18 ], [ %25, %24 ]
  %28 = phi i32 [ 1, %20 ], [ 1, %18 ], [ 0, %24 ]
  %29 = load ptr, ptr @cfun, align 8, !tbaa !78
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !98
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !139
  %34 = tail call ptr @sbitmap_alloc(i32 noundef %33) #17
  tail call void @sbitmap_zero(ptr noundef %34) #17
  %35 = load ptr, ptr @cfun, align 8, !tbaa !78
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !98
  %38 = load ptr, ptr %37, align 8, !tbaa !103
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 1
  store i32 0, ptr %13, align 8, !tbaa.struct !141
  %40 = getelementptr inbounds i8, ptr %13, i64 8
  store ptr %39, ptr %40, align 8, !tbaa.struct !142
  %41 = icmp eq ptr %0, null
  %42 = icmp eq ptr %1, null
  %43 = icmp ne ptr %1, null
  br label %44

44:                                               ; preds = %26, %161
  %45 = phi i32 [ 1, %26 ], [ %164, %161 ]
  %46 = phi i32 [ %28, %26 ], [ %163, %161 ]
  %47 = phi i32 [ %27, %26 ], [ %162, %161 ]
  %48 = sext i32 %45 to i64
  %49 = getelementptr %struct.edge_iterator, ptr %13, i64 %48
  %50 = getelementptr %struct.edge_iterator, ptr %49, i64 -1
  %51 = load i32, ptr %50, align 8, !tbaa.struct !141
  %52 = getelementptr %struct.edge_iterator, ptr %49, i64 -1, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa.struct !142
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56, !prof !319

55:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %56

56:                                               ; preds = %44, %55
  %57 = load ptr, ptr %53, align 8, !tbaa !78, !nonnull !144, !noundef !144
  %58 = zext i32 %51 to i64
  %59 = getelementptr inbounds %struct.VEC_edge_base, ptr %57, i64 0, i32 2, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !78
  %61 = load ptr, ptr %60, align 8, !tbaa !145
  %62 = getelementptr inbounds %struct.edge_def, ptr %60, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !128
  %64 = load ptr, ptr @cfun, align 8, !tbaa !78
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !98
  %67 = getelementptr inbounds %struct.control_flow_graph, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !100
  %69 = icmp eq ptr %63, %68
  br i1 %69, label %115, label %70, !prof !320

70:                                               ; preds = %56
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %72 = load i32, ptr %71, align 8, !tbaa !147
  %73 = lshr i32 %72, 6
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds %struct.simple_bitmap_def, ptr %34, i64 0, i32 3, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !148
  %77 = and i32 %72, 63
  %78 = zext nneg i32 %77 to i64
  %79 = shl nuw i64 1, %78
  %80 = and i64 %79, %76
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %115, !prof !321

82:                                               ; preds = %70
  %83 = load ptr, ptr %34, align 8, !tbaa !150
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85, !prof !322

85:                                               ; preds = %82
  %86 = getelementptr inbounds i8, ptr %83, i64 %74
  %87 = load i8, ptr %86, align 1, !tbaa !89
  %88 = add i8 %87, 1
  store i8 %88, ptr %86, align 1, !tbaa !89
  br label %89

89:                                               ; preds = %82, %85
  %90 = load i64, ptr %75, align 8, !tbaa !148
  %91 = or i64 %90, %79
  store i64 %91, ptr %75, align 8, !tbaa !148
  br i1 %41, label %96, label %92, !prof !322

92:                                               ; preds = %89
  %93 = load i32, ptr %71, align 8, !tbaa !147
  %94 = sext i32 %46 to i64
  %95 = getelementptr inbounds i32, ptr %0, i64 %94
  store i32 %93, ptr %95, align 4, !tbaa !93
  br label %96

96:                                               ; preds = %92, %89
  %97 = add nsw i32 %46, 1
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !104
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101, !prof !323

101:                                              ; preds = %96
  %102 = load i32, ptr %99, align 8, !tbaa !106
  br label %103

103:                                              ; preds = %96, %101
  %104 = phi i32 [ %102, %101 ], [ 0, %96 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106, !prof !324

106:                                              ; preds = %103
  %107 = add nsw i32 %45, 1
  store i32 0, ptr %49, align 8, !tbaa.struct !141
  %108 = getelementptr inbounds i8, ptr %49, i64 8
  store ptr %98, ptr %108, align 8, !tbaa.struct !142
  br label %161

109:                                              ; preds = %103
  br i1 %42, label %161, label %110, !prof !325

110:                                              ; preds = %109
  %111 = load i32, ptr %71, align 8, !tbaa !147
  %112 = add nsw i32 %47, -1
  %113 = sext i32 %47 to i64
  %114 = getelementptr inbounds i32, ptr %1, i64 %113
  store i32 %111, ptr %114, align 4, !tbaa !93
  br label %161

115:                                              ; preds = %70, %56
  %116 = load i32, ptr %57, align 8, !tbaa !106
  %117 = add i32 %51, 1
  %118 = icmp eq i32 %117, %116
  br i1 %118, label %119, label %129, !prof !326

119:                                              ; preds = %115
  %120 = load ptr, ptr %66, align 8, !tbaa !103
  %121 = icmp ne ptr %61, %120
  %122 = and i1 %43, %121
  br i1 %122, label %123, label %129, !prof !327

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 9
  %125 = load i32, ptr %124, align 8, !tbaa !147
  %126 = add nsw i32 %47, -1
  %127 = sext i32 %47 to i64
  %128 = getelementptr inbounds i32, ptr %1, i64 %127
  store i32 %125, ptr %128, align 4, !tbaa !93
  br label %129

129:                                              ; preds = %123, %119, %115
  %130 = phi i32 [ %126, %123 ], [ %47, %119 ], [ %47, %115 ]
  %131 = load i32, ptr %57, align 8, !tbaa !106
  %132 = icmp eq i32 %117, %131
  br i1 %132, label %159, label %133, !prof !326

133:                                              ; preds = %129
  %134 = load i32, ptr %50, align 8
  %135 = load ptr, ptr %52, align 8
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %138, !prof !328

137:                                              ; preds = %133
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %138

138:                                              ; preds = %137, %133
  %139 = load ptr, ptr %135, align 8, !tbaa !78
  %140 = icmp eq ptr %139, null
  br i1 %140, label %147, label %141, !prof !328

141:                                              ; preds = %138
  %142 = load ptr, ptr %52, align 8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %145, !prof !328

144:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %145

145:                                              ; preds = %144, %141
  %146 = load ptr, ptr %142, align 8, !tbaa !78
  br label %147

147:                                              ; preds = %145, %138
  %148 = phi ptr [ %146, %145 ], [ null, %138 ]
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150, !prof !328

150:                                              ; preds = %147
  %151 = load i32, ptr %148, align 8, !tbaa !106
  br label %152

152:                                              ; preds = %150, %147
  %153 = phi i32 [ %151, %150 ], [ 0, %147 ]
  %154 = icmp ult i32 %134, %153
  br i1 %154, label %156, label %155, !prof !329

155:                                              ; preds = %152
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %156

156:                                              ; preds = %152, %155
  %157 = load i32, ptr %50, align 8, !tbaa !163
  %158 = add i32 %157, 1
  store i32 %158, ptr %50, align 8, !tbaa !163
  br label %161

159:                                              ; preds = %129
  %160 = add nsw i32 %45, -1
  br label %161

161:                                              ; preds = %156, %159, %106, %110, %109
  %162 = phi i32 [ %130, %159 ], [ %130, %156 ], [ %47, %106 ], [ %112, %110 ], [ %47, %109 ]
  %163 = phi i32 [ %46, %159 ], [ %46, %156 ], [ %97, %106 ], [ %97, %110 ], [ %97, %109 ]
  %164 = phi i32 [ %160, %159 ], [ %45, %156 ], [ %107, %106 ], [ %45, %110 ], [ %45, %109 ]
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %44, !prof !330, !llvm.loop !331

166:                                              ; preds = %161
  tail call void @free(ptr noundef %13)
  %167 = load ptr, ptr %34, align 8, !tbaa !150
  tail call void @free(ptr noundef %167)
  tail call void @free(ptr noundef %34)
  br i1 %14, label %186, label %168, !prof !318

168:                                              ; preds = %166
  %169 = icmp eq ptr %0, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %168
  %171 = sext i32 %163 to i64
  %172 = getelementptr inbounds i32, ptr %0, i64 %171
  store i32 1, ptr %172, align 4, !tbaa !93
  br label %173

173:                                              ; preds = %170, %168
  %174 = add nsw i32 %163, 1
  %175 = icmp eq ptr %1, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = sext i32 %162 to i64
  %178 = getelementptr inbounds i32, ptr %1, i64 %177
  store i32 1, ptr %178, align 4, !tbaa !93
  br label %179

179:                                              ; preds = %176, %173
  %180 = load ptr, ptr @cfun, align 8, !tbaa !78
  %181 = getelementptr inbounds %struct.function, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !98
  %183 = getelementptr inbounds %struct.control_flow_graph, ptr %182, i64 0, i32 3
  %184 = load i32, ptr %183, align 8, !tbaa !140
  %185 = icmp eq i32 %174, %184
  br i1 %185, label %197, label %194

186:                                              ; preds = %166
  %187 = load ptr, ptr @cfun, align 8, !tbaa !78
  %188 = getelementptr inbounds %struct.function, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !98
  %190 = getelementptr inbounds %struct.control_flow_graph, ptr %189, i64 0, i32 3
  %191 = load i32, ptr %190, align 8, !tbaa !140
  %192 = add nsw i32 %191, -2
  %193 = icmp eq i32 %163, %192
  br i1 %193, label %197, label %194, !prof !318

194:                                              ; preds = %186, %179
  %195 = phi i32 [ 1040, %179 ], [ 1045, %186 ]
  %196 = phi i32 [ %174, %179 ], [ %163, %186 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef %195, ptr noundef nonnull @.str.16) #17
  br label %197

197:                                              ; preds = %194, %186, %179
  %198 = phi i32 [ %174, %179 ], [ %163, %186 ], [ %196, %194 ]
  ret i32 %198
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @dfs_enumerate_from(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #9 !prof !77 {
  %7 = load ptr, ptr @cfun, align 8, !tbaa !78
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !139
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 10)
  %13 = load ptr, ptr @dfs_enumerate_from.visited, align 8, !tbaa !78
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = tail call ptr @sbitmap_alloc(i32 noundef %12) #17
  store ptr %16, ptr @dfs_enumerate_from.visited, align 8, !tbaa !78
  tail call void @sbitmap_zero(ptr noundef %16) #17
  br label %24

17:                                               ; preds = %6
  %18 = load i32, ptr @dfs_enumerate_from.v_size, align 4, !tbaa !93
  %19 = icmp ult i32 %18, %12
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = shl i32 %18, 1
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 %12)
  %23 = tail call ptr @sbitmap_resize(ptr noundef nonnull %13, i32 noundef %22, i32 noundef 0) #17
  store ptr %23, ptr @dfs_enumerate_from.visited, align 8, !tbaa !78
  br label %24

24:                                               ; preds = %15, %20
  %25 = phi i32 [ %22, %20 ], [ %12, %15 ]
  store i32 %25, ptr @dfs_enumerate_from.v_size, align 4, !tbaa !93
  br label %26

26:                                               ; preds = %24, %17
  %27 = sext i32 %4 to i64
  %28 = tail call ptr @xcalloc(i64 noundef %27, i64 noundef 8) #17
  store ptr %0, ptr %28, align 8, !tbaa !78
  store ptr %0, ptr %3, align 8, !tbaa !78
  %29 = load ptr, ptr @dfs_enumerate_from.visited, align 8, !tbaa !78
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !147
  %32 = load ptr, ptr %29, align 8, !tbaa !150
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %26
  %35 = lshr i32 %31, 6
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds %struct.simple_bitmap_def, ptr %29, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !148
  %39 = and i32 %31, 63
  %40 = zext nneg i32 %39 to i64
  %41 = shl nuw i64 1, %40
  %42 = and i64 %38, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = getelementptr inbounds i8, ptr %32, i64 %36
  %46 = load i8, ptr %45, align 1, !tbaa !89
  %47 = add i8 %46, 1
  store i8 %47, ptr %45, align 1, !tbaa !89
  br label %48

48:                                               ; preds = %26, %34, %44
  %49 = and i32 %31, 63
  %50 = zext nneg i32 %49 to i64
  %51 = shl nuw i64 1, %50
  %52 = lshr i32 %31, 6
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds %struct.simple_bitmap_def, ptr %29, i64 0, i32 3, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !148
  %56 = or i64 %55, %51
  store i64 %56, ptr %54, align 8, !tbaa !148
  %57 = icmp eq i32 %1, 0
  br label %58

58:                                               ; preds = %48, %246
  %59 = phi i32 [ 1, %48 ], [ %248, %246 ]
  %60 = phi i32 [ 1, %48 ], [ %247, %246 ]
  %61 = add nsw i32 %59, -1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %28, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !78
  br i1 %57, label %156, label %65

65:                                               ; preds = %58
  %66 = icmp eq ptr %64, null
  br label %67

67:                                               ; preds = %65, %154
  %68 = phi i32 [ %155, %154 ], [ 0, %65 ]
  %69 = phi i32 [ %144, %154 ], [ %60, %65 ]
  %70 = phi i32 [ %145, %154 ], [ %61, %65 ]
  br i1 %66, label %71, label %72

71:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #17
  br label %72

72:                                               ; preds = %71, %67
  %73 = load ptr, ptr %64, align 8, !tbaa !78
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %73, align 8, !tbaa !106
  br label %77

77:                                               ; preds = %75, %72
  %78 = phi i32 [ %76, %75 ], [ 0, %72 ]
  %79 = icmp eq i32 %78, %68
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = zext i32 %68 to i64
  %82 = getelementptr inbounds %struct.VEC_edge_base, ptr %73, i64 0, i32 2, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !78
  br label %84

84:                                               ; preds = %77, %80
  %85 = phi ptr [ %83, %80 ], [ null, %77 ]
  br i1 %79, label %246, label %86

86:                                               ; preds = %84
  %87 = load ptr, ptr @dfs_enumerate_from.visited, align 8, !tbaa !78
  %88 = load ptr, ptr %85, align 8, !tbaa !145
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !147
  %91 = lshr i32 %90, 6
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds %struct.simple_bitmap_def, ptr %87, i64 0, i32 3, i64 %92
  %94 = load i64, ptr %93, align 8, !tbaa !148
  %95 = and i32 %90, 63
  %96 = zext nneg i32 %95 to i64
  %97 = shl nuw i64 1, %96
  %98 = and i64 %97, %94
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %143

100:                                              ; preds = %86
  %101 = tail call zeroext i8 %2(ptr noundef %88, ptr noundef %5) #17
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %143, label %103

103:                                              ; preds = %100
  %104 = icmp eq i32 %69, %4
  br i1 %104, label %105, label %106

105:                                              ; preds = %103
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1207, ptr noundef nonnull @.str.16) #17
  br label %106

106:                                              ; preds = %103, %105
  %107 = load ptr, ptr %85, align 8, !tbaa !145
  %108 = add nsw i32 %70, 1
  %109 = sext i32 %70 to i64
  %110 = getelementptr inbounds ptr, ptr %28, i64 %109
  store ptr %107, ptr %110, align 8, !tbaa !78
  %111 = add nsw i32 %69, 1
  %112 = sext i32 %69 to i64
  %113 = getelementptr inbounds ptr, ptr %3, i64 %112
  store ptr %107, ptr %113, align 8, !tbaa !78
  %114 = load ptr, ptr @dfs_enumerate_from.visited, align 8, !tbaa !78
  %115 = load ptr, ptr %85, align 8, !tbaa !145
  %116 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 9
  %117 = load i32, ptr %116, align 8, !tbaa !147
  %118 = load ptr, ptr %114, align 8, !tbaa !150
  %119 = icmp eq ptr %118, null
  br i1 %119, label %134, label %120

120:                                              ; preds = %106
  %121 = lshr i32 %117, 6
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds %struct.simple_bitmap_def, ptr %114, i64 0, i32 3, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !148
  %125 = and i32 %117, 63
  %126 = zext nneg i32 %125 to i64
  %127 = shl nuw i64 1, %126
  %128 = and i64 %124, %127
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %120
  %131 = getelementptr inbounds i8, ptr %118, i64 %122
  %132 = load i8, ptr %131, align 1, !tbaa !89
  %133 = add i8 %132, 1
  store i8 %133, ptr %131, align 1, !tbaa !89
  br label %134

134:                                              ; preds = %106, %120, %130
  %135 = and i32 %117, 63
  %136 = zext nneg i32 %135 to i64
  %137 = shl nuw i64 1, %136
  %138 = lshr i32 %117, 6
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds %struct.simple_bitmap_def, ptr %114, i64 0, i32 3, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !148
  %142 = or i64 %141, %137
  store i64 %142, ptr %140, align 8, !tbaa !148
  br label %143

143:                                              ; preds = %134, %100, %86
  %144 = phi i32 [ %69, %86 ], [ %111, %134 ], [ %69, %100 ]
  %145 = phi i32 [ %70, %86 ], [ %108, %134 ], [ %70, %100 ]
  %146 = load ptr, ptr %64, align 8, !tbaa !78
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %143
  %149 = load i32, ptr %146, align 8, !tbaa !106
  br label %150

150:                                              ; preds = %148, %143
  %151 = phi i32 [ %149, %148 ], [ 0, %143 ]
  %152 = icmp ult i32 %68, %151
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %154

154:                                              ; preds = %150, %153
  %155 = add i32 %68, 1
  br label %67, !llvm.loop !332

156:                                              ; preds = %58
  %157 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 1
  br label %158

158:                                              ; preds = %244, %156
  %159 = phi i32 [ 0, %156 ], [ %245, %244 ]
  %160 = phi i32 [ %60, %156 ], [ %234, %244 ]
  %161 = phi i32 [ %61, %156 ], [ %235, %244 ]
  %162 = load ptr, ptr %157, align 8, !tbaa !78
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %158
  %165 = load i32, ptr %162, align 8, !tbaa !106
  br label %166

166:                                              ; preds = %164, %158
  %167 = phi i32 [ %165, %164 ], [ 0, %158 ]
  %168 = icmp eq i32 %167, %159
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = zext i32 %159 to i64
  %171 = getelementptr inbounds %struct.VEC_edge_base, ptr %162, i64 0, i32 2, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !78
  br label %173

173:                                              ; preds = %166, %169
  %174 = phi ptr [ %172, %169 ], [ null, %166 ]
  br i1 %168, label %246, label %175

175:                                              ; preds = %173
  %176 = load ptr, ptr @dfs_enumerate_from.visited, align 8, !tbaa !78
  %177 = getelementptr inbounds %struct.edge_def, ptr %174, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !128
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 9
  %180 = load i32, ptr %179, align 8, !tbaa !147
  %181 = lshr i32 %180, 6
  %182 = zext nneg i32 %181 to i64
  %183 = getelementptr inbounds %struct.simple_bitmap_def, ptr %176, i64 0, i32 3, i64 %182
  %184 = load i64, ptr %183, align 8, !tbaa !148
  %185 = and i32 %180, 63
  %186 = zext nneg i32 %185 to i64
  %187 = shl nuw i64 1, %186
  %188 = and i64 %187, %184
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %233

190:                                              ; preds = %175
  %191 = tail call zeroext i8 %2(ptr noundef %178, ptr noundef %5) #17
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %233, label %193

193:                                              ; preds = %190
  %194 = icmp eq i32 %160, %4
  br i1 %194, label %195, label %196

195:                                              ; preds = %193
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1217, ptr noundef nonnull @.str.16) #17
  br label %196

196:                                              ; preds = %193, %195
  %197 = load ptr, ptr %177, align 8, !tbaa !128
  %198 = add nsw i32 %161, 1
  %199 = sext i32 %161 to i64
  %200 = getelementptr inbounds ptr, ptr %28, i64 %199
  store ptr %197, ptr %200, align 8, !tbaa !78
  %201 = add nsw i32 %160, 1
  %202 = sext i32 %160 to i64
  %203 = getelementptr inbounds ptr, ptr %3, i64 %202
  store ptr %197, ptr %203, align 8, !tbaa !78
  %204 = load ptr, ptr @dfs_enumerate_from.visited, align 8, !tbaa !78
  %205 = load ptr, ptr %177, align 8, !tbaa !128
  %206 = getelementptr inbounds %struct.basic_block_def, ptr %205, i64 0, i32 9
  %207 = load i32, ptr %206, align 8, !tbaa !147
  %208 = load ptr, ptr %204, align 8, !tbaa !150
  %209 = icmp eq ptr %208, null
  br i1 %209, label %224, label %210

210:                                              ; preds = %196
  %211 = lshr i32 %207, 6
  %212 = zext nneg i32 %211 to i64
  %213 = getelementptr inbounds %struct.simple_bitmap_def, ptr %204, i64 0, i32 3, i64 %212
  %214 = load i64, ptr %213, align 8, !tbaa !148
  %215 = and i32 %207, 63
  %216 = zext nneg i32 %215 to i64
  %217 = shl nuw i64 1, %216
  %218 = and i64 %214, %217
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %210
  %221 = getelementptr inbounds i8, ptr %208, i64 %212
  %222 = load i8, ptr %221, align 1, !tbaa !89
  %223 = add i8 %222, 1
  store i8 %223, ptr %221, align 1, !tbaa !89
  br label %224

224:                                              ; preds = %196, %210, %220
  %225 = and i32 %207, 63
  %226 = zext nneg i32 %225 to i64
  %227 = shl nuw i64 1, %226
  %228 = lshr i32 %207, 6
  %229 = zext nneg i32 %228 to i64
  %230 = getelementptr inbounds %struct.simple_bitmap_def, ptr %204, i64 0, i32 3, i64 %229
  %231 = load i64, ptr %230, align 8, !tbaa !148
  %232 = or i64 %231, %227
  store i64 %232, ptr %230, align 8, !tbaa !148
  br label %233

233:                                              ; preds = %224, %190, %175
  %234 = phi i32 [ %160, %175 ], [ %201, %224 ], [ %160, %190 ]
  %235 = phi i32 [ %161, %175 ], [ %198, %224 ], [ %161, %190 ]
  %236 = load ptr, ptr %157, align 8, !tbaa !78
  %237 = icmp eq ptr %236, null
  br i1 %237, label %240, label %238

238:                                              ; preds = %233
  %239 = load i32, ptr %236, align 8, !tbaa !106
  br label %240

240:                                              ; preds = %238, %233
  %241 = phi i32 [ %239, %238 ], [ 0, %233 ]
  %242 = icmp ult i32 %159, %241
  br i1 %242, label %244, label %243

243:                                              ; preds = %240
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %244

244:                                              ; preds = %240, %243
  %245 = add i32 %159, 1
  br label %158, !llvm.loop !333

246:                                              ; preds = %84, %173
  %247 = phi i32 [ %160, %173 ], [ %69, %84 ]
  %248 = phi i32 [ %161, %173 ], [ %70, %84 ]
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %58, !llvm.loop !334

250:                                              ; preds = %246
  tail call void @free(ptr noundef %28)
  %251 = icmp sgt i32 %247, 0
  br i1 %251, label %252, label %289

252:                                              ; preds = %250
  %253 = load ptr, ptr @dfs_enumerate_from.visited, align 8, !tbaa !78
  %254 = zext nneg i32 %247 to i64
  br label %255

255:                                              ; preds = %252, %277
  %256 = phi i64 [ 0, %252 ], [ %287, %277 ]
  %257 = getelementptr inbounds ptr, ptr %3, i64 %256
  %258 = load ptr, ptr %257, align 8, !tbaa !78
  %259 = getelementptr inbounds %struct.basic_block_def, ptr %258, i64 0, i32 9
  %260 = load i32, ptr %259, align 8, !tbaa !147
  %261 = load ptr, ptr %253, align 8, !tbaa !150
  %262 = icmp eq ptr %261, null
  br i1 %262, label %277, label %263

263:                                              ; preds = %255
  %264 = lshr i32 %260, 6
  %265 = zext nneg i32 %264 to i64
  %266 = getelementptr inbounds %struct.simple_bitmap_def, ptr %253, i64 0, i32 3, i64 %265
  %267 = load i64, ptr %266, align 8, !tbaa !148
  %268 = and i32 %260, 63
  %269 = zext nneg i32 %268 to i64
  %270 = shl nuw i64 1, %269
  %271 = and i64 %267, %270
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %263
  %274 = getelementptr inbounds i8, ptr %261, i64 %265
  %275 = load i8, ptr %274, align 1, !tbaa !89
  %276 = add i8 %275, -1
  store i8 %276, ptr %274, align 1, !tbaa !89
  br label %277

277:                                              ; preds = %255, %263, %273
  %278 = and i32 %260, 63
  %279 = zext nneg i32 %278 to i64
  %280 = shl nuw i64 1, %279
  %281 = xor i64 %280, -1
  %282 = lshr i32 %260, 6
  %283 = zext nneg i32 %282 to i64
  %284 = getelementptr inbounds %struct.simple_bitmap_def, ptr %253, i64 0, i32 3, i64 %283
  %285 = load i64, ptr %284, align 8, !tbaa !148
  %286 = and i64 %285, %281
  store i64 %286, ptr %284, align 8, !tbaa !148
  %287 = add nuw nsw i64 %256, 1
  %288 = icmp eq i64 %287, %254
  br i1 %288, label %289, label %255, !llvm.loop !335

289:                                              ; preds = %277, %250
  ret i32 %247
}

declare ptr @sbitmap_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @compute_dominance_frontiers(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !336 {
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !89
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !337

4:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 111) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @cfun, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %90, label %15, !prof !338

15:                                               ; preds = %5, %81
  %16 = phi ptr [ %83, %81 ], [ %11, %5 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !224
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !339

19:                                               ; preds = %15
  %20 = load i32, ptr %17, align 8, !tbaa !106
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %20, %19 ], [ 0, %15 ]
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %81, !prof !340

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  br label %26

26:                                               ; preds = %24, %79
  %27 = phi i32 [ %80, %79 ], [ 0, %24 ]
  %28 = load ptr, ptr %16, align 8, !tbaa !78
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !341

30:                                               ; preds = %26
  %31 = load i32, ptr %28, align 8, !tbaa !106
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %31, %30 ], [ 0, %26 ]
  %34 = icmp eq i32 %33, %27
  br i1 %34, label %39, label %35, !prof !342

35:                                               ; preds = %32
  %36 = zext i32 %27 to i64
  %37 = getelementptr inbounds %struct.VEC_edge_base, ptr %28, i64 0, i32 2, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !78
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi ptr [ %38, %35 ], [ null, %32 ]
  br i1 %34, label %81, label %41, !prof !342

41:                                               ; preds = %39
  %42 = load ptr, ptr %40, align 8, !tbaa !145
  %43 = load ptr, ptr @cfun, align 8, !tbaa !78
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !98
  %46 = load ptr, ptr %45, align 8, !tbaa !103
  %47 = icmp eq ptr %42, %46
  br i1 %47, label %70, label %48, !prof !343

48:                                               ; preds = %41
  %49 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %16) #17
  %50 = icmp eq ptr %42, %49
  br i1 %50, label %70, label %51, !prof !344

51:                                               ; preds = %48, %61
  %52 = phi ptr [ %68, %61 ], [ %42, %48 ]
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !147
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds ptr, ptr %0, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !78
  %58 = load i32, ptr %25, align 8, !tbaa !147
  %59 = tail call i32 @bitmap_bit_p(ptr noundef %57, i32 noundef %58) #17
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70, !prof !345

61:                                               ; preds = %51
  %62 = load i32, ptr %53, align 8, !tbaa !147
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %0, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !78
  %66 = load i32, ptr %25, align 8, !tbaa !147
  %67 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %65, i32 noundef %66) #17
  %68 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %52) #17
  %69 = icmp eq ptr %68, %49
  br i1 %69, label %70, label %51, !prof !346, !llvm.loop !347

70:                                               ; preds = %61, %51, %48, %41
  %71 = load ptr, ptr %16, align 8, !tbaa !78
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73, !prof !343

73:                                               ; preds = %70
  %74 = load i32, ptr %71, align 8, !tbaa !106
  br label %75

75:                                               ; preds = %73, %70
  %76 = phi i32 [ %74, %73 ], [ 0, %70 ]
  %77 = icmp ult i32 %27, %76
  br i1 %77, label %79, label %78, !prof !348

78:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #17
  br label %79

79:                                               ; preds = %78, %75
  %80 = add i32 %27, 1
  br label %26, !llvm.loop !349

81:                                               ; preds = %39, %21
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !124
  %84 = load ptr, ptr @cfun, align 8, !tbaa !78
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !98
  %87 = getelementptr inbounds %struct.control_flow_graph, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !100
  %89 = icmp eq ptr %83, %88
  br i1 %89, label %90, label %15, !prof !350, !llvm.loop !351

90:                                               ; preds = %81, %5
  %91 = load i8, ptr @timevar_enable, align 1, !tbaa !89
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %94, label %93, !prof !337

93:                                               ; preds = %90
  tail call void @timevar_pop_1(i32 noundef 111) #17
  br label %94

94:                                               ; preds = %90, %93
  ret void
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @compute_idf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 !prof !352 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !78
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !140
  %8 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %7, i64 noundef 8, i64 noundef 4) #17
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %10 = load ptr, ptr %0, align 8, !tbaa !353
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @bitmap_zero_bits, ptr %10, !prof !355
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !356
  %15 = shl i32 %14, 7
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !148
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = or disjoint i32 %15, %19
  br label %21

21:                                               ; preds = %82, %2
  %22 = phi i64 [ %17, %2 ], [ %87, %82 ]
  %23 = phi i32 [ 0, %2 ], [ %78, %82 ]
  %24 = phi ptr [ %12, %2 ], [ %79, %82 ]
  %25 = phi i32 [ %20, %2 ], [ %88, %82 ]
  %26 = icmp eq i64 %22, 0
  br i1 %26, label %41, label %27, !prof !358

27:                                               ; preds = %55, %21
  %28 = phi i64 [ %22, %21 ], [ %60, %55 ]
  %29 = phi i32 [ %23, %21 ], [ %56, %55 ]
  %30 = phi ptr [ %24, %21 ], [ %47, %55 ]
  %31 = phi i32 [ %25, %21 ], [ %57, %55 ]
  %32 = and i64 %28, 1
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %76, !prof !359

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %38, %34 ], [ %31, %27 ]
  %36 = phi i64 [ %37, %34 ], [ %28, %27 ]
  %37 = lshr exact i64 %36, 1
  %38 = add i32 %35, 1
  %39 = and i64 %36, 2
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %34, label %76, !prof !360, !llvm.loop !361

41:                                               ; preds = %21
  %42 = add i32 %25, 63
  %43 = and i32 %42, -64
  %44 = add i32 %23, 1
  br label %45

45:                                               ; preds = %72, %41
  %46 = phi i64 [ %22, %41 ], [ %67, %72 ]
  %47 = phi ptr [ %24, %41 ], [ %70, %72 ]
  %48 = phi i32 [ %43, %41 ], [ %75, %72 ]
  %49 = phi i32 [ %44, %41 ], [ 0, %72 ]
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %66, label %51, !prof !362

51:                                               ; preds = %45
  %52 = add i32 %48, 128
  %53 = shl i32 %49, 6
  %54 = sub i32 %52, %53
  br label %55

55:                                               ; preds = %51, %62
  %56 = phi i32 [ %64, %62 ], [ %49, %51 ]
  %57 = phi i32 [ %63, %62 ], [ %48, %51 ]
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 3, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !148
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %27, !prof !363

62:                                               ; preds = %55
  %63 = add i32 %57, 64
  %64 = add i32 %56, 1
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %55, !prof !364, !llvm.loop !365

66:                                               ; preds = %62, %45
  %67 = phi i64 [ %46, %45 ], [ %60, %62 ]
  %68 = phi i32 [ %48, %45 ], [ %54, %62 ]
  %69 = phi i32 [ %49, %45 ], [ 2, %62 ]
  %70 = load ptr, ptr %47, align 8, !tbaa !366
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72, !prof !367

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !356
  %75 = shl i32 %74, 7
  br label %45, !llvm.loop !368

76:                                               ; preds = %66, %34, %27
  %77 = phi i64 [ %28, %27 ], [ %37, %34 ], [ %67, %66 ]
  %78 = phi i32 [ %29, %27 ], [ %29, %34 ], [ %69, %66 ]
  %79 = phi ptr [ %30, %27 ], [ %30, %34 ], [ %70, %66 ]
  %80 = phi i32 [ %31, %27 ], [ %38, %34 ], [ %68, %66 ]
  %81 = phi i1 [ false, %27 ], [ false, %34 ], [ true, %66 ]
  br i1 %81, label %89, label %82, !prof !369

82:                                               ; preds = %76
  %83 = load i32, ptr %8, align 4, !tbaa !370
  %84 = add i32 %83, 1
  store i32 %84, ptr %8, align 4, !tbaa !370
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds %struct.VEC_int_base, ptr %8, i64 0, i32 2, i64 %85
  store i32 %80, ptr %86, align 4, !tbaa !93
  %87 = lshr i64 %77, 1
  %88 = add i32 %80, 1
  br label %21, !llvm.loop !372

89:                                               ; preds = %234, %76
  %90 = phi ptr [ %8, %76 ], [ %153, %234 ]
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92, !prof !373

92:                                               ; preds = %89
  %93 = load i32, ptr %90, align 4, !tbaa !370
  br label %94

94:                                               ; preds = %89, %92
  %95 = phi i32 [ %93, %92 ], [ 0, %89 ]
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %257, label %97, !prof !374

97:                                               ; preds = %94
  %98 = load i32, ptr %90, align 4, !tbaa !370
  %99 = add i32 %98, -1
  store i32 %99, ptr %90, align 4, !tbaa !370
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.VEC_int_base, ptr %90, i64 0, i32 2, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !93
  %103 = load ptr, ptr @cfun, align 8, !tbaa !78
  %104 = getelementptr inbounds %struct.function, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !98
  %106 = getelementptr inbounds %struct.control_flow_graph, ptr %105, i64 0, i32 5
  %107 = load i32, ptr %106, align 8, !tbaa !139
  %108 = icmp ult i32 %102, %107
  br i1 %108, label %110, label %109, !prof !375

109:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1340, ptr noundef nonnull @.str.16) #17
  br label %110

110:                                              ; preds = %97, %109
  %111 = zext i32 %102 to i64
  %112 = getelementptr inbounds ptr, ptr %1, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !78
  %114 = load ptr, ptr %113, align 8, !tbaa !353
  %115 = icmp eq ptr %114, null
  %116 = select i1 %115, ptr @bitmap_zero_bits, ptr %114, !prof !376
  %117 = getelementptr inbounds %struct.bitmap_element_def, ptr %116, i64 0, i32 2
  br label %118

118:                                              ; preds = %122, %110
  %119 = phi ptr [ %9, %110 ], [ %120, %122 ]
  %120 = load ptr, ptr %119, align 8, !tbaa !78
  %121 = icmp eq ptr %120, null
  br i1 %121, label %127, label %122, !prof !377

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.bitmap_element_def, ptr %120, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !356
  %125 = load i32, ptr %117, align 8, !tbaa !356
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %118, label %127, !prof !378, !llvm.loop !379

127:                                              ; preds = %122, %118
  %128 = getelementptr inbounds %struct.bitmap_element_def, ptr %116, i64 0, i32 2
  %129 = load i32, ptr %128, align 8, !tbaa !356
  %130 = getelementptr inbounds %struct.bitmap_element_def, ptr %116, i64 0, i32 3
  %131 = load i64, ptr %130, align 8, !tbaa !148
  br i1 %121, label %141, label %132, !prof !380

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.bitmap_element_def, ptr %120, i64 0, i32 2
  %134 = load i32, ptr %133, align 8, !tbaa !356
  %135 = icmp eq i32 %129, %134
  br i1 %135, label %136, label %141, !prof !381

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.bitmap_element_def, ptr %120, i64 0, i32 3, i64 0
  %138 = load i64, ptr %137, align 8, !tbaa !148
  %139 = xor i64 %138, -1
  %140 = and i64 %131, %139
  br label %141

141:                                              ; preds = %127, %132, %136
  %142 = phi i64 [ %131, %127 ], [ %140, %136 ], [ %131, %132 ]
  %143 = shl i32 %129, 7
  %144 = icmp eq i64 %142, 0
  %145 = zext i1 %144 to i32
  %146 = or disjoint i32 %143, %145
  br label %147

147:                                              ; preds = %248, %141
  %148 = phi i64 [ %142, %141 ], [ %255, %248 ]
  %149 = phi i32 [ 0, %141 ], [ %236, %248 ]
  %150 = phi ptr [ %120, %141 ], [ %237, %248 ]
  %151 = phi ptr [ %116, %141 ], [ %238, %248 ]
  %152 = phi i32 [ %146, %141 ], [ %256, %248 ]
  %153 = phi ptr [ %90, %141 ], [ %249, %248 ]
  %154 = icmp eq i64 %148, 0
  br i1 %154, label %170, label %155, !prof !382

155:                                              ; preds = %203, %147
  %156 = phi i64 [ %148, %147 ], [ %204, %203 ]
  %157 = phi i32 [ %149, %147 ], [ %189, %203 ]
  %158 = phi ptr [ %150, %147 ], [ %176, %203 ]
  %159 = phi ptr [ %151, %147 ], [ %177, %203 ]
  %160 = phi i32 [ %152, %147 ], [ %190, %203 ]
  %161 = and i64 %156, 1
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %234, !prof !383

163:                                              ; preds = %155, %163
  %164 = phi i32 [ %167, %163 ], [ %160, %155 ]
  %165 = phi i64 [ %166, %163 ], [ %156, %155 ]
  %166 = lshr exact i64 %165, 1
  %167 = add i32 %164, 1
  %168 = and i64 %165, 2
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %163, label %234, !prof !384, !llvm.loop !385

170:                                              ; preds = %147
  %171 = add i32 %152, 63
  %172 = and i32 %171, -64
  %173 = add i32 %149, 1
  br label %174

174:                                              ; preds = %229, %170
  %175 = phi i64 [ %148, %170 ], [ %211, %229 ]
  %176 = phi ptr [ %150, %170 ], [ %230, %229 ]
  %177 = phi ptr [ %151, %170 ], [ %214, %229 ]
  %178 = phi i32 [ %172, %170 ], [ %233, %229 ]
  %179 = phi i32 [ %173, %170 ], [ 0, %229 ]
  %180 = icmp eq i32 %179, 2
  br i1 %180, label %210, label %181, !prof !386

181:                                              ; preds = %174
  %182 = icmp eq ptr %176, null
  %183 = getelementptr inbounds %struct.bitmap_element_def, ptr %176, i64 0, i32 2
  %184 = getelementptr inbounds %struct.bitmap_element_def, ptr %177, i64 0, i32 2
  %185 = add i32 %178, 128
  %186 = shl i32 %179, 6
  %187 = sub i32 %185, %186
  br label %188

188:                                              ; preds = %181, %206
  %189 = phi i32 [ %179, %181 ], [ %208, %206 ]
  %190 = phi i32 [ %178, %181 ], [ %207, %206 ]
  %191 = zext i32 %189 to i64
  %192 = getelementptr inbounds %struct.bitmap_element_def, ptr %177, i64 0, i32 3, i64 %191
  %193 = load i64, ptr %192, align 8, !tbaa !148
  br i1 %182, label %203, label %194, !prof !387

194:                                              ; preds = %188
  %195 = load i32, ptr %183, align 8, !tbaa !356
  %196 = load i32, ptr %184, align 8, !tbaa !356
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %203, !prof !388

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.bitmap_element_def, ptr %176, i64 0, i32 3, i64 %191
  %200 = load i64, ptr %199, align 8, !tbaa !148
  %201 = xor i64 %200, -1
  %202 = and i64 %193, %201
  br label %203

203:                                              ; preds = %198, %194, %188
  %204 = phi i64 [ %193, %188 ], [ %202, %198 ], [ %193, %194 ]
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %155, !prof !389

206:                                              ; preds = %203
  %207 = add i32 %190, 64
  %208 = add i32 %189, 1
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %210, label %188, !prof !390, !llvm.loop !391

210:                                              ; preds = %206, %174
  %211 = phi i64 [ %175, %174 ], [ %204, %206 ]
  %212 = phi i32 [ %178, %174 ], [ %187, %206 ]
  %213 = phi i32 [ %179, %174 ], [ 2, %206 ]
  %214 = load ptr, ptr %177, align 8, !tbaa !366
  %215 = icmp eq ptr %214, null
  br i1 %215, label %234, label %216, !prof !392

216:                                              ; preds = %210
  %217 = icmp eq ptr %176, null
  br i1 %217, label %229, label %218, !prof !393

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct.bitmap_element_def, ptr %214, i64 0, i32 2
  %220 = load i32, ptr %219, align 8, !tbaa !356
  br label %221

221:                                              ; preds = %218, %226
  %222 = phi ptr [ %176, %218 ], [ %227, %226 ]
  %223 = getelementptr inbounds %struct.bitmap_element_def, ptr %222, i64 0, i32 2
  %224 = load i32, ptr %223, align 8, !tbaa !356
  %225 = icmp ult i32 %224, %220
  br i1 %225, label %226, label %229, !prof !394

226:                                              ; preds = %221
  %227 = load ptr, ptr %222, align 8, !tbaa !366
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %221, !prof !395, !llvm.loop !396

229:                                              ; preds = %226, %221, %216
  %230 = phi ptr [ %176, %216 ], [ %227, %226 ], [ %222, %221 ]
  %231 = getelementptr inbounds %struct.bitmap_element_def, ptr %214, i64 0, i32 2
  %232 = load i32, ptr %231, align 8, !tbaa !356
  %233 = shl i32 %232, 7
  br label %174, !llvm.loop !397

234:                                              ; preds = %210, %163, %155
  %235 = phi i64 [ %156, %155 ], [ %166, %163 ], [ %211, %210 ]
  %236 = phi i32 [ %157, %155 ], [ %157, %163 ], [ %213, %210 ]
  %237 = phi ptr [ %158, %155 ], [ %158, %163 ], [ %176, %210 ]
  %238 = phi ptr [ %159, %155 ], [ %159, %163 ], [ %214, %210 ]
  %239 = phi i32 [ %160, %155 ], [ %167, %163 ], [ %212, %210 ]
  %240 = phi i1 [ false, %155 ], [ false, %163 ], [ true, %210 ]
  br i1 %240, label %89, label %241, !prof !398, !llvm.loop !399

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.VEC_int_base, ptr %153, i64 0, i32 1
  %243 = load i32, ptr %242, align 4, !tbaa !400
  %244 = load i32, ptr %153, align 4, !tbaa !370
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %248, !prof !401

246:                                              ; preds = %241
  %247 = tail call ptr @vec_heap_o_reserve(ptr noundef nonnull %153, i32 noundef 1, i64 noundef 8, i64 noundef 4) #17
  br label %248

248:                                              ; preds = %241, %246
  %249 = phi ptr [ %247, %246 ], [ %153, %241 ]
  %250 = load i32, ptr %249, align 4, !tbaa !370
  %251 = add i32 %250, 1
  store i32 %251, ptr %249, align 4, !tbaa !370
  %252 = zext i32 %250 to i64
  %253 = getelementptr inbounds %struct.VEC_int_base, ptr %249, i64 0, i32 2, i64 %252
  store i32 %239, ptr %253, align 4, !tbaa !93
  %254 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %239) #17
  %255 = lshr i64 %235, 1
  %256 = add i32 %239, 1
  br label %147, !llvm.loop !402

257:                                              ; preds = %94
  br i1 %91, label %259, label %258, !prof !403

258:                                              ; preds = %257
  tail call void @free(ptr noundef %90)
  br label %259

259:                                              ; preds = %257, %258
  ret ptr %9
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!76}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!35 = !{ptr @forwarder_block_p, ptr @active_insn_p, i64 554344}
!36 = !{ptr @forwarder_block_p, ptr @simplejump_p, i64 50623}
!37 = !{ptr @can_fallthru, ptr @active_insn_p, i64 445124}
!38 = !{ptr @can_fallthru, ptr @next_active_insn, i64 890248}
!39 = !{ptr @mark_dfs_back_edges, ptr @xcalloc, i64 1018}
!40 = !{ptr @mark_dfs_back_edges, ptr @xmalloc, i64 509}
!41 = !{ptr @mark_dfs_back_edges, ptr @sbitmap_alloc, i64 509}
!42 = !{ptr @mark_dfs_back_edges, ptr @sbitmap_zero, i64 509}
!43 = !{ptr @mark_dfs_back_edges, ptr @free, i64 2545}
!44 = !{ptr @set_edge_can_fallthru_flag, ptr @any_condjump_p, i64 148119}
!45 = !{ptr @set_edge_can_fallthru_flag, ptr @invert_jump, i64 296238}
!46 = !{ptr @find_unreachable_blocks, ptr @xmalloc, i64 1122}
!47 = !{ptr @find_unreachable_blocks, ptr @free, i64 1122}
!48 = !{ptr @create_edge_list, ptr @xmalloc, i64 218}
!49 = !{ptr @free_edge_list, ptr @free, i64 218}
!50 = !{ptr @remove_fake_exit_edges, ptr @remove_edge, i64 410}
!51 = !{ptr @add_noreturn_fake_exit_edges, ptr @make_single_succ_edge, i64 243}
!52 = !{ptr @connect_infinite_loops_to_exit, ptr @xmalloc, i64 192}
!53 = !{ptr @connect_infinite_loops_to_exit, ptr @sbitmap_alloc, i64 192}
!54 = !{ptr @connect_infinite_loops_to_exit, ptr @sbitmap_zero, i64 192}
!55 = !{ptr @connect_infinite_loops_to_exit, ptr @make_edge, i64 189}
!56 = !{ptr @connect_infinite_loops_to_exit, ptr @free, i64 576}
!57 = !{ptr @post_order_compute, ptr @xmalloc, i64 1071}
!58 = !{ptr @post_order_compute, ptr @sbitmap_alloc, i64 1071}
!59 = !{ptr @post_order_compute, ptr @sbitmap_zero, i64 1071}
!60 = !{ptr @post_order_compute, ptr @free, i64 3213}
!61 = !{ptr @inverted_post_order_compute, ptr @xmalloc, i64 1071}
!62 = !{ptr @inverted_post_order_compute, ptr @sbitmap_alloc, i64 1071}
!63 = !{ptr @inverted_post_order_compute, ptr @sbitmap_zero, i64 1071}
!64 = !{ptr @inverted_post_order_compute, ptr @free, i64 3213}
!65 = !{ptr @pre_and_rev_post_order_compute, ptr @xmalloc, i64 306}
!66 = !{ptr @pre_and_rev_post_order_compute, ptr @sbitmap_alloc, i64 306}
!67 = !{ptr @pre_and_rev_post_order_compute, ptr @sbitmap_zero, i64 306}
!68 = !{ptr @pre_and_rev_post_order_compute, ptr @free, i64 918}
!69 = !{ptr @compute_dominance_frontiers, ptr @get_immediate_dominator, i64 5804911}
!70 = !{ptr @compute_dominance_frontiers, ptr @bitmap_bit_p, i64 4812619}
!71 = !{ptr @compute_dominance_frontiers, ptr @bitmap_set_bit, i64 3809483}
!72 = !{ptr @compute_idf, ptr @vec_heap_o_reserve_exact, i64 91941}
!73 = !{ptr @compute_idf, ptr @bitmap_obstack_alloc_stat, i64 91941}
!74 = !{ptr @compute_idf, ptr @bitmap_set_bit, i64 669925}
!75 = !{ptr @compute_idf, ptr @free, i64 91941}
!76 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!77 = !{!"function_entry_count", i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"any pointer", !80, i64 0}
!80 = !{!"omnipotent char", !81, i64 0}
!81 = !{!"Simple C/C++ TBAA"}
!82 = !{!83, !79, i64 8}
!83 = !{!"_IO_FILE", !84, i64 0, !79, i64 8, !79, i64 16, !79, i64 24, !79, i64 32, !79, i64 40, !79, i64 48, !79, i64 56, !79, i64 64, !79, i64 72, !79, i64 80, !79, i64 88, !79, i64 96, !79, i64 104, !84, i64 112, !84, i64 116, !85, i64 120, !86, i64 128, !80, i64 130, !80, i64 131, !79, i64 136, !85, i64 144, !79, i64 152, !79, i64 160, !79, i64 168, !79, i64 176, !85, i64 184, !84, i64 192, !80, i64 196}
!84 = !{!"int", !80, i64 0}
!85 = !{!"long", !80, i64 0}
!86 = !{!"short", !80, i64 0}
!87 = !{!83, !79, i64 16}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{!80, !80, i64 0}
!90 = !{!83, !79, i64 40}
!91 = !{!83, !79, i64 48}
!92 = !{!83, !84, i64 0}
!93 = !{!84, !84, i64 0}
!94 = distinct !{!94, !95, !96}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = !{!"function_entry_count", i64 3659370}
!98 = !{!99, !79, i64 8}
!99 = !{!"function", !79, i64 0, !79, i64 8, !79, i64 16, !79, i64 24, !79, i64 32, !79, i64 40, !79, i64 48, !79, i64 56, !79, i64 64, !79, i64 72, !79, i64 80, !79, i64 88, !79, i64 96, !84, i64 104, !84, i64 108, !84, i64 112, !84, i64 116, !84, i64 120, !84, i64 124, !79, i64 128, !84, i64 136, !84, i64 137, !84, i64 138, !84, i64 138, !84, i64 138, !84, i64 138, !84, i64 138, !84, i64 138, !84, i64 138, !84, i64 139, !84, i64 139, !84, i64 139, !84, i64 139, !84, i64 139, !84, i64 139, !84, i64 139}
!100 = !{!101, !79, i64 8}
!101 = !{!"control_flow_graph", !79, i64 0, !79, i64 8, !79, i64 16, !84, i64 24, !84, i64 28, !84, i64 32, !79, i64 40, !84, i64 48, !80, i64 52, !80, i64 60, !84, i64 68, !84, i64 72}
!102 = !{!"branch_weights", i32 0, i32 3659370}
!103 = !{!101, !79, i64 0}
!104 = !{!105, !79, i64 8}
!105 = !{!"basic_block_def", !79, i64 0, !79, i64 8, !79, i64 16, !79, i64 24, !80, i64 32, !79, i64 48, !79, i64 56, !80, i64 64, !85, i64 72, !84, i64 80, !84, i64 84, !84, i64 88, !84, i64 92, !84, i64 96}
!106 = !{!107, !84, i64 0}
!107 = !{!"VEC_edge_base", !84, i64 0, !84, i64 4, !80, i64 8}
!108 = !{!"branch_weights", i32 618531, i32 3040839}
!109 = !{!110, !79, i64 8}
!110 = !{!"rtl_bb_info", !79, i64 0, !79, i64 8, !79, i64 16, !79, i64 24, !84, i64 32}
!111 = !{!"branch_weights", i32 1, i32 482457}
!112 = !{!"branch_weights", i32 136154, i32 1117927}
!113 = !{!"branch_weights", i32 81, i32 136073}
!114 = !{!"branch_weights", i32 0, i32 81}
!115 = !{!"branch_weights", i32 482457, i32 771624}
!116 = distinct !{!116, !95, !96}
!117 = !{!"branch_weights", i32 468439, i32 14019}
!118 = !{!"branch_weights", i32 51978, i32 416461}
!119 = !{!"branch_weights", i32 0, i32 51978}
!120 = !{!"branch_weights", i32 20, i32 416441}
!121 = !{!"branch_weights", i32 0, i32 20}
!122 = !{!"function_entry_count", i64 491941}
!123 = !{!"branch_weights", i32 38, i32 491903}
!124 = !{!105, !79, i64 56}
!125 = !{!"branch_weights", i32 445124, i32 46779}
!126 = !{!"branch_weights", i32 0, i32 1334665}
!127 = !{!"branch_weights", i32 445124, i32 889541}
!128 = !{!129, !79, i64 8}
!129 = !{!"edge_def", !79, i64 0, !79, i64 8, !80, i64 16, !79, i64 24, !79, i64 32, !84, i64 40, !84, i64 44, !84, i64 48, !84, i64 52, !85, i64 56}
!130 = !{!"branch_weights", i32 0, i32 889541}
!131 = !{!129, !84, i64 48}
!132 = !{!"branch_weights", i32 889541, i32 0}
!133 = distinct !{!133, !95, !96}
!134 = !{!110, !79, i64 0}
!135 = !{!"branch_weights", i32 0, i32 445124}
!136 = !{!"branch_weights", i32 445124, i32 0}
!137 = distinct !{!137, !95, !96}
!138 = !{!"function_entry_count", i64 509}
!139 = !{!101, !84, i64 32}
!140 = !{!101, !84, i64 24}
!141 = !{i64 0, i64 4, !93, i64 8, i64 8, !78}
!142 = !{i64 0, i64 8, !78}
!143 = !{!"branch_weights", i32 0, i32 4546410}
!144 = !{}
!145 = !{!129, !79, i64 0}
!146 = !{!"branch_weights", i32 748, i32 4545662}
!147 = !{!105, !84, i64 80}
!148 = !{!85, !85, i64 0}
!149 = !{!"branch_weights", i32 1537279, i32 3008383}
!150 = !{!151, !79, i64 0}
!151 = !{!"simple_bitmap_def", !79, i64 0, !84, i64 8, !84, i64 12, !80, i64 16}
!152 = !{!"branch_weights", i32 1537279, i32 0}
!153 = !{!"branch_weights", i32 61, i32 1537218}
!154 = !{!"branch_weights", i32 646, i32 1536633}
!155 = !{!"branch_weights", i32 748, i32 3008383}
!156 = !{!"branch_weights", i32 509, i32 3007874}
!157 = !{!"branch_weights", i32 2128123, i32 879751}
!158 = !{!"branch_weights", i32 0, i32 879751}
!159 = !{!"branch_weights", i32 1537142, i32 1471989}
!160 = !{!"branch_weights", i32 509, i32 1536633}
!161 = !{!"branch_weights", i32 0, i32 1471989}
!162 = !{!"branch_weights", i32 1471989, i32 0}
!163 = !{!164, !84, i64 0}
!164 = !{!"", !84, i64 0, !79, i64 8}
!165 = !{!"branch_weights", i32 509, i32 4545901}
!166 = distinct !{!166, !95, !96}
!167 = !{!"function_entry_count", i64 38}
!168 = !{!"branch_weights", i32 1, i32 151}
!169 = !{!"branch_weights", i32 0, i32 457450}
!170 = !{!"branch_weights", i32 153339, i32 304111}
!171 = !{!"branch_weights", i32 0, i32 304111}
!172 = !{!"branch_weights", i32 304111, i32 0}
!173 = distinct !{!173, !95, !96}
!174 = !{!"branch_weights", i32 0, i32 153339}
!175 = !{!"branch_weights", i32 148119, i32 5220}
!176 = !{!"branch_weights", i32 0, i32 148119}
!177 = !{!"branch_weights", i32 151, i32 613205}
!178 = distinct !{!178, !95, !96}
!179 = !{!"function_entry_count", i64 1122}
!180 = !{!"branch_weights", i32 1, i32 1121}
!181 = !{!105, !84, i64 96}
!182 = !{!"branch_weights", i32 1121, i32 6153345}
!183 = distinct !{!183, !95, !96}
!184 = !{!"branch_weights", i32 0, i32 2244}
!185 = !{!"branch_weights", i32 1122, i32 1122}
!186 = !{!"branch_weights", i32 0, i32 1122}
!187 = !{!"branch_weights", i32 1122, i32 0}
!188 = distinct !{!188, !95, !96}
!189 = !{!"branch_weights", i32 1121, i32 6153355}
!190 = distinct !{!190, !95, !96}
!191 = !{!"branch_weights", i32 313, i32 17525625}
!192 = !{!"branch_weights", i32 6154476, i32 11371462}
!193 = !{!"branch_weights", i32 6153354, i32 5218108}
!194 = !{!"branch_weights", i32 0, i32 11371462}
!195 = !{!"branch_weights", i32 11371462, i32 0}
!196 = distinct !{!196, !95, !96}
!197 = !{!"function_entry_count", i64 109}
!198 = !{!"branch_weights", i32 1, i32 217}
!199 = !{!"branch_weights", i32 61, i32 312951}
!200 = !{!"branch_weights", i32 217, i32 625807}
!201 = distinct !{!201, !95, !96}
!202 = !{!203, !84, i64 0}
!203 = !{!"edge_list", !84, i64 0, !84, i64 4, !79, i64 8}
!204 = !{!203, !84, i64 4}
!205 = !{!203, !79, i64 8}
!206 = !{!"branch_weights", i32 61, i32 919338}
!207 = !{!"branch_weights", i32 313012, i32 606387}
!208 = !{!"branch_weights", i32 0, i32 606387}
!209 = !{!"branch_weights", i32 606387, i32 0}
!210 = distinct !{!210, !95, !96}
!211 = distinct !{!211, !95, !96}
!212 = !{!"function_entry_count", i64 261}
!213 = !{!"branch_weights", i32 152, i32 109}
!214 = distinct !{!214, !95, !96}
!215 = distinct !{!215, !95, !96}
!216 = distinct !{!216, !95, !96}
!217 = distinct !{!217, !95, !96}
!218 = distinct !{!218, !95, !96}
!219 = distinct !{!219, !95, !96}
!220 = distinct !{!220, !95, !96}
!221 = distinct !{!221, !95, !96}
!222 = !{!"function_entry_count", i64 3583923}
!223 = !{!"branch_weights", i32 471270, i32 3112653}
!224 = !{!105, !79, i64 0}
!225 = !{!"branch_weights", i32 867235, i32 2716688}
!226 = !{!"branch_weights", i32 1627531, i32 1956392}
!227 = !{!"branch_weights", i32 471270, i32 3427312}
!228 = !{!"branch_weights", i32 1397973, i32 2500609}
!229 = !{!"branch_weights", i32 558419, i32 1942190}
!230 = !{!"branch_weights", i32 0, i32 1942190}
!231 = !{!"branch_weights", i32 1942190, i32 0}
!232 = distinct !{!232, !95, !96}
!233 = !{!"branch_weights", i32 730959, i32 1061011}
!234 = !{!"branch_weights", i32 895983, i32 895987}
!235 = !{!"branch_weights", i32 731548, i32 164439}
!236 = !{!"branch_weights", i32 0, i32 164439}
!237 = !{!"branch_weights", i32 164439, i32 0}
!238 = distinct !{!238, !95, !96}
!239 = !{!151, !84, i64 12}
!240 = distinct !{!240, !95, !96}
!241 = distinct !{!241, !95, !96}
!242 = distinct !{!242, !95, !96}
!243 = distinct !{!243, !95, !96}
!244 = distinct !{!244, !95, !96}
!245 = !{!"cfganal.c;remove_fake_predecessors"}
!246 = !{!"branch_weights", i32 0, i32 953}
!247 = !{!"branch_weights", i32 261, i32 692}
!248 = !{!"branch_weights", i32 282, i32 410}
!249 = distinct !{!249, !95, !96}
!250 = !{!"branch_weights", i32 0, i32 282}
!251 = !{!"branch_weights", i32 282, i32 0}
!252 = !{!"function_entry_count", i64 147}
!253 = !{!"branch_weights", i32 1, i32 146}
!254 = !{!"branch_weights", i32 63, i32 454800}
!255 = !{!"branch_weights", i32 243, i32 454620}
!256 = !{!"branch_weights", i32 146, i32 454717}
!257 = distinct !{!257, !95, !96}
!258 = !{!"function_entry_count", i64 192}
!259 = !{!"branch_weights", i32 192, i32 0}
!260 = !{!"branch_weights", i32 381, i32 1123743}
!261 = distinct !{!261, !95, !96}
!262 = !{!"branch_weights", i32 1, i32 191}
!263 = !{!"branch_weights", i32 0, i32 2974312}
!264 = !{!"branch_weights", i32 192, i32 2974120}
!265 = !{!"branch_weights", i32 1124124, i32 1850188}
!266 = !{!"branch_weights", i32 1123743, i32 726445}
!267 = !{!"branch_weights", i32 1123743, i32 0}
!268 = !{!"branch_weights", i32 0, i32 1850188}
!269 = !{!"branch_weights", i32 1850188, i32 0}
!270 = distinct !{!270, !95, !96}
!271 = !{!"branch_weights", i32 189, i32 1124124}
!272 = !{!105, !79, i64 48}
!273 = !{!"branch_weights", i32 191, i32 1124122}
!274 = distinct !{!274, !95, !96}
!275 = !{!"branch_weights", i32 192, i32 189}
!276 = !{!"branch_weights", i32 189, i32 0}
!277 = distinct !{!277, !96}
!278 = !{!"function_entry_count", i64 1071}
!279 = !{!"branch_weights", i32 0, i32 1071}
!280 = !{!"branch_weights", i32 0, i32 14314509}
!281 = !{!"branch_weights", i32 1581, i32 14312928}
!282 = !{!"branch_weights", i32 4963153, i32 9349775}
!283 = !{!"branch_weights", i32 4963153, i32 0}
!284 = !{!"branch_weights", i32 0, i32 4963153}
!285 = !{!"branch_weights", i32 1626, i32 4961527}
!286 = !{!"branch_weights", i32 4962598, i32 4388758}
!287 = !{!"branch_weights", i32 1071, i32 4961527}
!288 = !{!"branch_weights", i32 0, i32 4388758}
!289 = !{!"branch_weights", i32 4388758, i32 0}
!290 = !{!"branch_weights", i32 1071, i32 14313438}
!291 = distinct !{!291, !95, !96}
!292 = !{!"branch_weights", i32 1071, i32 0}
!293 = distinct !{!293, !95, !96}
!294 = !{!"branch_weights", i32 1, i32 1070}
!295 = !{!"branch_weights", i32 1071, i32 4964224}
!296 = !{!"branch_weights", i32 2697, i32 4962598}
!297 = !{!"branch_weights", i32 0, i32 2697}
!298 = !{!"branch_weights", i32 2697, i32 0}
!299 = !{!"branch_weights", i32 1070, i32 4964225}
!300 = distinct !{!300, !95, !96}
!301 = !{!"branch_weights", i32 0, i32 14313954}
!302 = !{!"branch_weights", i32 4962598, i32 9351356}
!303 = !{!"branch_weights", i32 4962598, i32 0}
!304 = !{!"branch_weights", i32 1581, i32 9349775}
!305 = !{!"branch_weights", i32 4963153, i32 4386622}
!306 = !{!"branch_weights", i32 4964224, i32 4387132}
!307 = !{!"branch_weights", i32 0, i32 4387132}
!308 = !{!"branch_weights", i32 4387132, i32 0}
!309 = !{!"branch_weights", i32 1070, i32 14312884}
!310 = distinct !{!310, !95, !96}
!311 = !{!"branch_weights", i32 0, i32 4964224}
!312 = distinct !{!312, !95, !96}
!313 = !{!"branch_weights", i32 1070, i32 4963154}
!314 = distinct !{!314, !95, !96}
!315 = distinct !{!315, !95, !96}
!316 = distinct !{!316, !96}
!317 = !{!"function_entry_count", i64 306}
!318 = !{!"branch_weights", i32 306, i32 0}
!319 = !{!"branch_weights", i32 0, i32 4151416}
!320 = !{!"branch_weights", i32 344, i32 4151072}
!321 = !{!"branch_weights", i32 1489534, i32 2661538}
!322 = !{!"branch_weights", i32 1489534, i32 0}
!323 = !{!"branch_weights", i32 0, i32 1489534}
!324 = !{!"branch_weights", i32 506, i32 1489028}
!325 = !{!"branch_weights", i32 0, i32 506}
!326 = !{!"branch_weights", i32 1489334, i32 1172548}
!327 = !{!"branch_weights", i32 1489028, i32 306}
!328 = !{!"branch_weights", i32 0, i32 1172548}
!329 = !{!"branch_weights", i32 1172548, i32 0}
!330 = !{!"branch_weights", i32 306, i32 4151110}
!331 = distinct !{!331, !95, !96}
!332 = distinct !{!332, !95, !96}
!333 = distinct !{!333, !95, !96}
!334 = distinct !{!334, !95, !96}
!335 = distinct !{!335, !95, !96}
!336 = !{!"function_entry_count", i64 265}
!337 = !{!"branch_weights", i32 265, i32 0}
!338 = !{!"branch_weights", i32 1, i32 264}
!339 = !{!"branch_weights", i32 0, i32 1675466}
!340 = !{!"branch_weights", i32 543862, i32 1131604}
!341 = !{!"branch_weights", i32 0, i32 2539290}
!342 = !{!"branch_weights", i32 543862, i32 1995428}
!343 = !{!"branch_weights", i32 0, i32 1995428}
!344 = !{!"branch_weights", i32 1, i32 1108439}
!345 = !{!"branch_weights", i32 3368402, i32 886988}
!346 = !{!"branch_weights", i32 1108439, i32 3146951}
!347 = distinct !{!347, !95, !96}
!348 = !{!"branch_weights", i32 1995428, i32 0}
!349 = distinct !{!349, !95, !96}
!350 = !{!"branch_weights", i32 264, i32 1675202}
!351 = distinct !{!351, !95, !96}
!352 = !{!"function_entry_count", i64 91941}
!353 = !{!354, !79, i64 0}
!354 = !{!"bitmap_head_def", !79, i64 0, !79, i64 8, !84, i64 16, !79, i64 24}
!355 = !{!"branch_weights", i32 40, i32 91901}
!356 = !{!357, !84, i64 16}
!357 = !{!"bitmap_element_def", !79, i64 0, !79, i64 8, !84, i64 16, !80, i64 24}
!358 = !{!"branch_weights", i32 243274, i32 464863}
!359 = !{!"branch_weights", i32 616195, i32 1}
!360 = !{!"branch_weights", i32 5773172, i32 616195}
!361 = distinct !{!361, !95, !96}
!362 = !{!"branch_weights", i32 1, i32 187026}
!363 = !{!"branch_weights", i32 130780, i32 151333}
!364 = !{!"branch_weights", i32 187026, i32 95087}
!365 = distinct !{!365, !95, !96}
!366 = !{!357, !79, i64 0}
!367 = !{!"branch_weights", i32 91941, i32 95086}
!368 = distinct !{!368, !96}
!369 = !{!"branch_weights", i32 91941, i32 616196}
!370 = !{!371, !84, i64 0}
!371 = !{!"VEC_int_base", !84, i64 0, !84, i64 4, !80, i64 8}
!372 = distinct !{!372, !95, !96}
!373 = !{!"branch_weights", i32 0, i32 1378062}
!374 = !{!"branch_weights", i32 91941, i32 1286121}
!375 = !{!"branch_weights", i32 1286121, i32 0}
!376 = !{!"branch_weights", i32 92028, i32 1194093}
!377 = !{!"branch_weights", i32 130226, i32 31218904}
!378 = !{!"branch_weights", i32 30063009, i32 1155895}
!379 = distinct !{!379, !95, !96}
!380 = !{!"branch_weights", i32 130226, i32 1155895}
!381 = !{!"branch_weights", i32 1002910, i32 152985}
!382 = !{!"branch_weights", i32 1628192, i32 327854}
!383 = !{!"branch_weights", i32 669924, i32 1}
!384 = !{!"branch_weights", i32 19159125, i32 669924}
!385 = distinct !{!385, !95, !96}
!386 = !{!"branch_weights", i32 1, i32 1756860}
!387 = !{!"branch_weights", i32 208260, i32 2019341}
!388 = !{!"branch_weights", i32 1855674, i32 163667}
!389 = !{!"branch_weights", i32 1885530, i32 342071}
!390 = !{!"branch_weights", i32 1756860, i32 470741}
!391 = distinct !{!391, !95, !96}
!392 = !{!"branch_weights", i32 1286121, i32 470740}
!393 = !{!"branch_weights", i32 1, i32 39016}
!394 = !{!"branch_weights", i32 18531523, i32 431723}
!395 = !{!"branch_weights", i32 39016, i32 18924230}
!396 = distinct !{!396, !95, !96}
!397 = distinct !{!397, !96}
!398 = !{!"branch_weights", i32 1286121, i32 669925}
!399 = distinct !{!399, !95, !96}
!400 = !{!371, !84, i64 4}
!401 = !{!"branch_weights", i32 0, i32 669925}
!402 = distinct !{!402, !95, !96}
!403 = !{!"branch_weights", i32 0, i32 91941}
