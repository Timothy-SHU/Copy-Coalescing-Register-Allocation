; ModuleID = 'dominance.c'
source_filename = "dominance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.dom_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.et_node = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.graph = type { i32, ptr, ptr }
%struct.vertex = type { ptr, ptr, i32, i32, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.edge_iterator = type { i32, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [12 x i8] c"dominance.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"dominator of %d status unknown\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"dominator of %d should be %d, not %d\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%i %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !97 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !98
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !97 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !98
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !97 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !108

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !102
  %11 = load i8, ptr %3, align 1, !tbaa !109
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !97 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !108

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !102
  %11 = load i8, ptr %3, align 1, !tbaa !109
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !97 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !98
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !108

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !102
  %11 = load i8, ptr %3, align 1, !tbaa !109
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !97 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !98
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !97 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !108

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !110
  store i8 %12, ptr %4, align 1, !tbaa !109
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !97 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !108

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !110
  store i8 %12, ptr %4, align 1, !tbaa !109
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !97 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !98
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !108

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !110
  store i8 %12, ptr %4, align 1, !tbaa !109
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !97 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !97 {
  %2 = load i32, ptr %0, align 8, !tbaa !112
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !97 {
  %2 = load i32, ptr %0, align 8, !tbaa !112
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !97 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !113
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !97 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !113
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !97 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !97 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !97 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !97 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #16
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
  br i1 %23, label %7, label %24, !llvm.loop !114

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !97 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @calculate_dominance_info(i32 noundef %0) local_unnamed_addr #9 !prof !117 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dom_info, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #16
  %4 = add i32 %0, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %7, label %6, !prof !118

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %1, %6
  %8 = icmp eq i32 %0, 2
  %9 = zext i1 %8 to i8
  %10 = load ptr, ptr @cfun, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 8, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !113
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %145, label %17, !prof !121

17:                                               ; preds = %7
  %18 = load i8, ptr @timevar_enable, align 1, !tbaa !109
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20, !prof !122

20:                                               ; preds = %17
  tail call void @timevar_push_1(i32 noundef 112) #16
  br label %21

21:                                               ; preds = %20, %17
  br i1 %5, label %23, label %22, !prof !122

22:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %23

23:                                               ; preds = %21, %22
  %24 = load ptr, ptr @cfun, align 8, !tbaa !98
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !119
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 8, i64 %13
  %28 = load i32, ptr %27, align 4, !tbaa !113
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %104, !prof !123

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 9, i64 %13
  %32 = load i32, ptr %31, align 4, !tbaa !113
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !124

34:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 646, ptr noundef nonnull @.str.1) #16
  br label %35

35:                                               ; preds = %30, %34
  %36 = load ptr, ptr @cfun, align 8, !tbaa !98
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !119
  %39 = load ptr, ptr %38, align 8, !tbaa !98
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41, !prof !125

41:                                               ; preds = %35, %41
  %42 = phi ptr [ %46, %41 ], [ %39, %35 ]
  %43 = tail call ptr @et_new_tree(ptr noundef nonnull %42) #16
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 4, i64 %13
  store ptr %43, ptr %44, align 8, !tbaa !98
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !98
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %41, !prof !126, !llvm.loop !127

48:                                               ; preds = %41, %35
  %49 = load ptr, ptr @cfun, align 8, !tbaa !98
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !119
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !128
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 9, i64 %13
  store i32 %53, ptr %54, align 4, !tbaa !113
  call fastcc void @init_dom_info(ptr noundef nonnull %3, i32 noundef %0)
  call fastcc void @calc_dfs_tree(ptr noundef nonnull %3, i8 noundef zeroext %9)
  call fastcc void @calc_idoms(ptr noundef nonnull %3, i8 noundef zeroext %9)
  %55 = load ptr, ptr @cfun, align 8, !tbaa !98
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !119
  %58 = load ptr, ptr %57, align 8, !tbaa !130
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !131
  %61 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !133
  %63 = icmp eq ptr %60, %62
  br i1 %63, label %99, label %64, !prof !125

64:                                               ; preds = %48
  %65 = getelementptr inbounds %struct.dom_info, ptr %3, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !134
  %67 = getelementptr inbounds %struct.dom_info, ptr %3, i64 0, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !136
  %69 = getelementptr inbounds %struct.dom_info, ptr %3, i64 0, i32 10
  %70 = load ptr, ptr %69, align 8, !tbaa !137
  br label %71

71:                                               ; preds = %64, %90
  %72 = phi ptr [ %60, %64 ], [ %92, %90 ]
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !138
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %68, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !113
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, ptr %66, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !113
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %70, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !98
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85, !prof !139

85:                                               ; preds = %71
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 4, i64 %13
  %87 = load ptr, ptr %86, align 8, !tbaa !98
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 4, i64 %13
  %89 = load ptr, ptr %88, align 8, !tbaa !98
  tail call void @et_set_father(ptr noundef %87, ptr noundef %89) #16
  br label %90

90:                                               ; preds = %85, %71
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !131
  %93 = load ptr, ptr @cfun, align 8, !tbaa !98
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !119
  %96 = getelementptr inbounds %struct.control_flow_graph, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !133
  %98 = icmp eq ptr %92, %97
  br i1 %98, label %99, label %71, !prof !140, !llvm.loop !141

99:                                               ; preds = %90, %48
  call fastcc void @free_dom_info(ptr noundef nonnull %3)
  %100 = load ptr, ptr @cfun, align 8, !tbaa !98
  %101 = getelementptr inbounds %struct.function, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !119
  %103 = getelementptr inbounds %struct.control_flow_graph, ptr %102, i64 0, i32 8, i64 %13
  store i32 1, ptr %103, align 4, !tbaa !113
  br label %104

104:                                              ; preds = %99, %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !113
  br i1 %5, label %106, label %105, !prof !122

105:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %106

106:                                              ; preds = %105, %104
  %107 = load ptr, ptr @cfun, align 8, !tbaa !98
  %108 = getelementptr inbounds %struct.function, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !119
  %110 = getelementptr inbounds %struct.control_flow_graph, ptr %109, i64 0, i32 8, i64 %13
  %111 = load i32, ptr %110, align 4, !tbaa !113
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114, !prof !142

113:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 615, ptr noundef nonnull @.str.1) #16
  br label %114

114:                                              ; preds = %113, %106
  %115 = load ptr, ptr @cfun, align 8, !tbaa !98
  %116 = getelementptr inbounds %struct.function, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !119
  %118 = getelementptr inbounds %struct.control_flow_graph, ptr %117, i64 0, i32 8, i64 %13
  %119 = load i32, ptr %118, align 4, !tbaa !113
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %141, label %121, !prof !142

121:                                              ; preds = %114
  %122 = load ptr, ptr %117, align 8, !tbaa !98
  %123 = icmp eq ptr %122, null
  br i1 %123, label %136, label %124, !prof !143

124:                                              ; preds = %121, %132
  %125 = phi ptr [ %134, %132 ], [ %122, %121 ]
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 4, i64 %13
  %127 = load ptr, ptr %126, align 8, !tbaa !98
  %128 = getelementptr inbounds %struct.et_node, ptr %127, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !144
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %132, !prof !146

131:                                              ; preds = %124
  call fastcc void @assign_dfs_numbers(ptr noundef %127, ptr noundef nonnull %2)
  br label %132

132:                                              ; preds = %131, %124
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 6
  %134 = load ptr, ptr %133, align 8, !tbaa !98
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %124, !prof !147, !llvm.loop !148

136:                                              ; preds = %132, %121
  %137 = load ptr, ptr @cfun, align 8, !tbaa !98
  %138 = getelementptr inbounds %struct.function, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !119
  %140 = getelementptr inbounds %struct.control_flow_graph, ptr %139, i64 0, i32 8, i64 %13
  store i32 2, ptr %140, align 4, !tbaa !113
  br label %141

141:                                              ; preds = %114, %136
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %142 = load i8, ptr @timevar_enable, align 1, !tbaa !109
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %145, label %144, !prof !122

144:                                              ; preds = %141
  call void @timevar_pop_1(i32 noundef 112) #16
  br label %145

145:                                              ; preds = %141, %144, %7
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #16
  ret void
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @dom_info_available_p(i32 noundef %0) local_unnamed_addr #10 !prof !149 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %5, label %4, !prof !150

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @cfun, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !113
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i8
  ret i8 %13
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @et_new_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @init_dom_info(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #9 !prof !151 !PGOFuncName !152 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !98
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !128
  %8 = zext i32 %7 to i64
  %9 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #16
  store ptr %9, ptr %0, align 8, !tbaa !153
  %10 = shl nuw nsw i64 %8, 2
  %11 = tail call ptr @xmalloc(i64 noundef %10) #16
  %12 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !154
  %13 = icmp eq i32 %7, 0
  br i1 %13, label %22, label %14, !prof !125

14:                                               ; preds = %2
  %15 = zext i32 %7 to i64
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i64 [ 0, %14 ], [ %20, %16 ]
  %18 = getelementptr inbounds i32, ptr %11, i64 %17
  %19 = trunc i64 %17 to i32
  store i32 %19, ptr %18, align 4, !tbaa !113
  %20 = add nuw nsw i64 %17, 1
  %21 = icmp eq i64 %20, %15
  br i1 %21, label %22, label %16, !prof !126, !llvm.loop !155

22:                                               ; preds = %16, %2
  %23 = tail call ptr @xmalloc(i64 noundef %10) #16
  %24 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !156
  %25 = icmp eq i32 %7, 0
  br i1 %25, label %34, label %26, !prof !125

26:                                               ; preds = %22
  %27 = zext i32 %7 to i64
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 0, %26 ], [ %32, %28 ]
  %30 = getelementptr inbounds i32, ptr %23, i64 %29
  %31 = trunc i64 %29 to i32
  store i32 %31, ptr %30, align 4, !tbaa !113
  %32 = add nuw nsw i64 %29, 1
  %33 = icmp eq i64 %32, %27
  br i1 %33, label %34, label %28, !prof !126, !llvm.loop !157

34:                                               ; preds = %28, %22
  %35 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #16
  %36 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  store ptr %35, ptr %36, align 8, !tbaa !134
  %37 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #16
  %38 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 3
  store ptr %37, ptr %38, align 8, !tbaa !158
  %39 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #16
  %40 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 4
  store ptr %39, ptr %40, align 8, !tbaa !159
  %41 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #16
  %42 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  store ptr %41, ptr %42, align 8, !tbaa !160
  %43 = tail call ptr @xmalloc(i64 noundef %10) #16
  %44 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 7
  store ptr %43, ptr %44, align 8, !tbaa !161
  %45 = icmp eq i32 %7, 0
  br i1 %45, label %53, label %46, !prof !125

46:                                               ; preds = %34
  %47 = zext i32 %7 to i64
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i64 [ 0, %46 ], [ %51, %48 ]
  %50 = getelementptr inbounds i32, ptr %43, i64 %49
  store i32 1, ptr %50, align 4, !tbaa !113
  %51 = add nuw nsw i64 %49, 1
  %52 = icmp eq i64 %51, %47
  br i1 %52, label %53, label %48, !prof !126, !llvm.loop !162

53:                                               ; preds = %48, %34
  %54 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #16
  %55 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 8
  store ptr %54, ptr %55, align 8, !tbaa !163
  %56 = load ptr, ptr @cfun, align 8, !tbaa !98
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !119
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !164
  %61 = add i32 %60, 1
  %62 = zext i32 %61 to i64
  %63 = tail call ptr @xcalloc(i64 noundef %62, i64 noundef 4) #16
  %64 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  store ptr %63, ptr %64, align 8, !tbaa !136
  %65 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 8) #16
  %66 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  store ptr %65, ptr %66, align 8, !tbaa !137
  %67 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 11
  store i32 1, ptr %67, align 8, !tbaa !165
  %68 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 12
  store i32 0, ptr %68, align 4, !tbaa !166
  switch i32 %1, label %74 [
    i32 1, label %69
    i32 2, label %71
  ], !prof !167

69:                                               ; preds = %53
  %70 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  store ptr null, ptr %70, align 8, !tbaa !168
  br label %75

71:                                               ; preds = %53
  %72 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %73 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  store ptr %72, ptr %73, align 8, !tbaa !168
  br label %75

74:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 178, ptr noundef nonnull @.str.1) #16
  br label %75

75:                                               ; preds = %74, %71, %69
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @calc_dfs_tree(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !151 !PGOFuncName !169 {
  %3 = icmp eq i8 %1, 0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = select i1 %3, ptr %6, ptr %7, !prof !170
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !165
  %12 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  %14 = load ptr, ptr @cfun, align 8, !tbaa !98
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !119
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !164
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %13, i64 %19
  store i32 %11, ptr %20, align 4, !tbaa !113
  %21 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !137
  %23 = load i32, ptr %10, align 8, !tbaa !165
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  store ptr %9, ptr %25, align 8, !tbaa !98
  %26 = add i32 %23, 1
  store i32 %26, ptr %10, align 8, !tbaa !165
  tail call fastcc void @calc_dfs_tree_nonrec(ptr noundef %0, ptr noundef %9, i8 noundef zeroext %1)
  br i1 %3, label %154, label %27, !prof !170

27:                                               ; preds = %2
  %28 = load ptr, ptr @cfun, align 8, !tbaa !98
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !119
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !133
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !171
  %35 = load ptr, ptr @cfun, align 8, !tbaa !98
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !119
  %38 = load ptr, ptr %37, align 8, !tbaa !130
  %39 = icmp eq ptr %34, %38
  br i1 %39, label %98, label %40, !prof !172

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  br label %42

42:                                               ; preds = %40, %87
  %43 = phi ptr [ %34, %40 ], [ %90, %87 ]
  %44 = phi i8 [ 0, %40 ], [ %88, %87 ]
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !173
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48, !prof !174

48:                                               ; preds = %42
  %49 = load i32, ptr %46, align 8, !tbaa !175
  br label %50

50:                                               ; preds = %42, %48
  %51 = phi i32 [ %49, %48 ], [ 0, %42 ]
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !138
  br i1 %52, label %62, label %55, !prof !177

55:                                               ; preds = %50
  %56 = load ptr, ptr %12, align 8, !tbaa !136
  %57 = sext i32 %54 to i64
  %58 = getelementptr inbounds i32, ptr %56, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !113
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i8 1, i8 %44, !prof !178
  br label %87

62:                                               ; preds = %50
  %63 = load ptr, ptr %41, align 8, !tbaa !168
  %64 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %63, i32 noundef %54) #16
  %65 = load i32, ptr %10, align 8, !tbaa !165
  %66 = load ptr, ptr %12, align 8, !tbaa !136
  %67 = load i32, ptr %53, align 8, !tbaa !138
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %66, i64 %68
  store i32 %65, ptr %69, align 4, !tbaa !113
  %70 = load ptr, ptr %21, align 8, !tbaa !137
  %71 = load i32, ptr %10, align 8, !tbaa !165
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %70, i64 %72
  store ptr %43, ptr %73, align 8, !tbaa !98
  %74 = load ptr, ptr %12, align 8, !tbaa !136
  %75 = load ptr, ptr @cfun, align 8, !tbaa !98
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !119
  %78 = getelementptr inbounds %struct.control_flow_graph, ptr %77, i64 0, i32 5
  %79 = load i32, ptr %78, align 8, !tbaa !164
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %74, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !113
  %83 = load ptr, ptr %0, align 8, !tbaa !153
  %84 = getelementptr inbounds i32, ptr %83, i64 %72
  store i32 %82, ptr %84, align 4, !tbaa !113
  %85 = load i32, ptr %10, align 8, !tbaa !165
  %86 = add i32 %85, 1
  store i32 %86, ptr %10, align 8, !tbaa !165
  tail call fastcc void @calc_dfs_tree_nonrec(ptr noundef nonnull %0, ptr noundef %43, i8 noundef zeroext 1)
  br label %87

87:                                               ; preds = %55, %62
  %88 = phi i8 [ %44, %62 ], [ %61, %55 ]
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !171
  %91 = load ptr, ptr @cfun, align 8, !tbaa !98
  %92 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !119
  %94 = load ptr, ptr %93, align 8, !tbaa !130
  %95 = icmp eq ptr %90, %94
  br i1 %95, label %96, label %42, !prof !179, !llvm.loop !180

96:                                               ; preds = %87
  %97 = icmp eq i8 %88, 0
  br label %98

98:                                               ; preds = %96, %27
  %99 = phi i1 [ true, %27 ], [ %97, %96 ]
  %100 = phi ptr [ %37, %27 ], [ %93, %96 ]
  br i1 %99, label %154, label %101, !prof !181

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !133
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %103, i64 0, i32 5
  %105 = load ptr, ptr %104, align 8, !tbaa !171
  %106 = load ptr, ptr @cfun, align 8, !tbaa !98
  %107 = getelementptr inbounds %struct.function, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !119
  %109 = load ptr, ptr %108, align 8, !tbaa !130
  %110 = icmp eq ptr %105, %109
  br i1 %110, label %154, label %111, !prof !182

111:                                              ; preds = %101, %146
  %112 = phi ptr [ %148, %146 ], [ %105, %101 ]
  %113 = load ptr, ptr %12, align 8, !tbaa !136
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !138
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, ptr %113, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !113
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %146, !prof !183

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  %122 = load ptr, ptr %121, align 8, !tbaa !168
  %123 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %122, i32 noundef %115) #16
  %124 = load i32, ptr %10, align 8, !tbaa !165
  %125 = load ptr, ptr %12, align 8, !tbaa !136
  %126 = load i32, ptr %114, align 8, !tbaa !138
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, ptr %125, i64 %127
  store i32 %124, ptr %128, align 4, !tbaa !113
  %129 = load ptr, ptr %21, align 8, !tbaa !137
  %130 = load i32, ptr %10, align 8, !tbaa !165
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds ptr, ptr %129, i64 %131
  store ptr %112, ptr %132, align 8, !tbaa !98
  %133 = load ptr, ptr %12, align 8, !tbaa !136
  %134 = load ptr, ptr @cfun, align 8, !tbaa !98
  %135 = getelementptr inbounds %struct.function, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !119
  %137 = getelementptr inbounds %struct.control_flow_graph, ptr %136, i64 0, i32 5
  %138 = load i32, ptr %137, align 8, !tbaa !164
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, ptr %133, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !113
  %142 = load ptr, ptr %0, align 8, !tbaa !153
  %143 = getelementptr inbounds i32, ptr %142, i64 %131
  store i32 %141, ptr %143, align 4, !tbaa !113
  %144 = load i32, ptr %10, align 8, !tbaa !165
  %145 = add i32 %144, 1
  store i32 %145, ptr %10, align 8, !tbaa !165
  tail call fastcc void @calc_dfs_tree_nonrec(ptr noundef nonnull %0, ptr noundef %112, i8 noundef zeroext 1)
  br label %146

146:                                              ; preds = %111, %120
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 5
  %148 = load ptr, ptr %147, align 8, !tbaa !171
  %149 = load ptr, ptr @cfun, align 8, !tbaa !98
  %150 = getelementptr inbounds %struct.function, ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !119
  %152 = load ptr, ptr %151, align 8, !tbaa !130
  %153 = icmp eq ptr %148, %152
  br i1 %153, label %154, label %111, !prof !184, !llvm.loop !185

154:                                              ; preds = %146, %101, %98, %2
  %155 = load i32, ptr %10, align 8, !tbaa !165
  %156 = add i32 %155, -1
  %157 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 12
  store i32 %156, ptr %157, align 4, !tbaa !166
  %158 = load ptr, ptr @cfun, align 8, !tbaa !98
  %159 = getelementptr inbounds %struct.function, ptr %158, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !119
  %161 = getelementptr inbounds %struct.control_flow_graph, ptr %160, i64 0, i32 3
  %162 = load i32, ptr %161, align 8, !tbaa !128
  %163 = icmp eq i32 %155, %162
  br i1 %163, label %165, label %164, !prof !124

164:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 394, ptr noundef nonnull @.str.1) #16
  br label %165

165:                                              ; preds = %154, %164
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @calc_idoms(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !151 !PGOFuncName !186 {
  %3 = icmp eq i8 %1, 0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = select i1 %3, ptr %6, ptr %7, !prof !170
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 12
  %11 = load i32, ptr %10, align 4, !tbaa !166
  %12 = icmp ugt i32 %11, 1
  br i1 %12, label %13, label %320, !prof !187

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  %15 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  %16 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %21 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %22 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 8
  %23 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 7
  %24 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %25 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %26 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %27 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 7
  %28 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 3
  %30 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 4
  %31 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %32 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  %33 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  %34 = zext i32 %11 to i64
  %35 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  br label %36

36:                                               ; preds = %13, %314
  %37 = phi i64 [ %34, %13 ], [ %317, %314 ]
  %38 = load ptr, ptr %14, align 8, !tbaa !137
  %39 = getelementptr inbounds ptr, ptr %38, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !98
  %41 = load ptr, ptr %0, align 8, !tbaa !153
  %42 = getelementptr inbounds i32, ptr %41, i64 %37
  %43 = load i32, ptr %42, align 4, !tbaa !113
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 1
  %45 = insertvalue { i32, ptr } { i32 0, ptr poison }, ptr %44, 1
  %46 = insertvalue { i32, ptr } { i32 0, ptr poison }, ptr %40, 1
  %47 = select i1 %3, { i32, ptr } %46, { i32, ptr } %45, !prof !188
  %48 = extractvalue { i32, ptr } %47, 1
  %49 = trunc i64 %37 to i32
  br i1 %3, label %57, label %50, !prof !188

50:                                               ; preds = %36
  %51 = load ptr, ptr %15, align 8, !tbaa !168
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !138
  %54 = tail call i32 @bitmap_bit_p(ptr noundef %51, i32 noundef %53) #16
  %55 = icmp eq i32 %54, 0
  %56 = trunc i64 %37 to i32
  br i1 %55, label %57, label %87, !prof !189

57:                                               ; preds = %36, %50, %149
  %58 = phi i32 [ %98, %149 ], [ 0, %50 ], [ 0, %36 ]
  %59 = phi i32 [ %151, %149 ], [ %49, %50 ], [ %49, %36 ]
  %60 = icmp eq ptr %48, null
  br i1 %60, label %61, label %62, !prof !190, !irr_loop !191

61:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.1) #16
  br label %62

62:                                               ; preds = %61, %57
  %63 = load ptr, ptr %48, align 8, !tbaa !98
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65, !prof !192

65:                                               ; preds = %62
  %66 = load i32, ptr %63, align 8, !tbaa !175
  br label %67

67:                                               ; preds = %62, %65
  %68 = phi i32 [ %66, %65 ], [ 0, %62 ]
  %69 = icmp eq i32 %68, %58
  br i1 %69, label %152, label %70, !prof !193

70:                                               ; preds = %67
  %71 = zext i32 %58 to i64
  %72 = getelementptr inbounds %struct.VEC_edge_base, ptr %63, i64 0, i32 2, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !98
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 1
  %75 = select i1 %3, ptr %73, ptr %74, !prof !194
  %76 = load ptr, ptr %75, align 8, !tbaa !98
  %77 = icmp eq ptr %63, null
  br i1 %77, label %80, label %78, !prof !195

78:                                               ; preds = %70
  %79 = load i32, ptr %63, align 8, !tbaa !175
  br label %80

80:                                               ; preds = %78, %70
  %81 = phi i32 [ %79, %78 ], [ 0, %70 ]
  %82 = icmp ult i32 %58, %81
  br i1 %82, label %84, label %83, !prof !196

83:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %84

84:                                               ; preds = %80, %83
  %85 = add i32 %58, 1
  %86 = icmp eq ptr %76, %9
  br i1 %86, label %87, label %94, !prof !197

87:                                               ; preds = %50, %84
  %88 = phi i32 [ %85, %84 ], [ 0, %50 ]
  %89 = phi i32 [ %59, %84 ], [ %56, %50 ]
  %90 = load ptr, ptr @cfun, align 8, !tbaa !98
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !119
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %92, i64 0, i32 5
  br label %96, !irr_loop !198

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  br label %96

96:                                               ; preds = %94, %87
  %97 = phi ptr [ %95, %94 ], [ %93, %87 ]
  %98 = phi i32 [ %85, %94 ], [ %88, %87 ]
  %99 = phi i32 [ %59, %94 ], [ %89, %87 ]
  %100 = load ptr, ptr %35, align 8, !tbaa !136
  %101 = load i32, ptr %97, align 8, !tbaa !113
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, ptr %100, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !113
  %105 = zext i32 %104 to i64
  %106 = icmp ult i64 %37, %105
  br i1 %106, label %107, label %149, !prof !199

107:                                              ; preds = %96
  %108 = load ptr, ptr %16, align 8, !tbaa !156
  %109 = load ptr, ptr %17, align 8, !tbaa !160
  %110 = zext i32 %104 to i64
  %111 = getelementptr inbounds i32, ptr %109, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !113
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118, !prof !200

114:                                              ; preds = %107
  %115 = load ptr, ptr %19, align 8, !tbaa !154
  %116 = getelementptr inbounds i32, ptr %115, i64 %110
  %117 = load i32, ptr %116, align 4, !tbaa !113
  br label %144

118:                                              ; preds = %107
  %119 = zext i32 %112 to i64
  %120 = getelementptr inbounds i32, ptr %109, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !113
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123, !prof !201

123:                                              ; preds = %118
  tail call fastcc void @compress(ptr noundef nonnull %0, i32 noundef %104)
  %124 = load ptr, ptr %17, align 8, !tbaa !160
  %125 = getelementptr inbounds i32, ptr %124, i64 %110
  %126 = load i32, ptr %125, align 4, !tbaa !113
  br label %127

127:                                              ; preds = %123, %118
  %128 = phi i32 [ %126, %123 ], [ %112, %118 ]
  %129 = load ptr, ptr %16, align 8, !tbaa !156
  %130 = load ptr, ptr %18, align 8, !tbaa !154
  %131 = zext i32 %128 to i64
  %132 = getelementptr inbounds i32, ptr %130, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !113
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, ptr %129, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !113
  %137 = getelementptr inbounds i32, ptr %130, i64 %110
  %138 = load i32, ptr %137, align 4, !tbaa !113
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, ptr %129, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !113
  %142 = icmp ult i32 %136, %141
  %143 = select i1 %142, i32 %133, i32 %138, !prof !202
  br label %144

144:                                              ; preds = %114, %127
  %145 = phi i32 [ %117, %114 ], [ %143, %127 ]
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, ptr %108, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !113
  br label %149

149:                                              ; preds = %144, %96
  %150 = phi i32 [ %148, %144 ], [ %104, %96 ]
  %151 = tail call i32 @llvm.umin.i32(i32 %150, i32 %99)
  br label %57, !llvm.loop !203

152:                                              ; preds = %67
  %153 = load ptr, ptr %20, align 8, !tbaa !156
  %154 = getelementptr inbounds i32, ptr %153, i64 %37
  store i32 %59, ptr %154, align 4, !tbaa !113
  %155 = load ptr, ptr %21, align 8, !tbaa !154
  %156 = getelementptr inbounds i32, ptr %155, i64 %37
  %157 = load ptr, ptr %22, align 8, !tbaa !163
  %158 = load i32, ptr %156, align 4, !tbaa !113
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, ptr %153, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !113
  %162 = getelementptr inbounds i32, ptr %157, i64 %37
  %163 = load i32, ptr %162, align 4, !tbaa !113
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, ptr %155, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !113
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, ptr %153, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !113
  %170 = icmp ult i32 %161, %169
  %171 = trunc i64 %37 to i32
  br i1 %170, label %172, label %219, !prof !204

172:                                              ; preds = %152
  %173 = load ptr, ptr %23, align 8, !tbaa !161
  %174 = trunc i64 %37 to i32
  br label %175

175:                                              ; preds = %172, %203
  %176 = phi i64 [ %164, %172 ], [ %212, %203 ]
  %177 = phi ptr [ %162, %172 ], [ %210, %203 ]
  %178 = phi i64 [ %37, %172 ], [ %209, %203 ]
  %179 = phi i32 [ %174, %172 ], [ %204, %203 ]
  %180 = getelementptr inbounds i32, ptr %173, i64 %178
  %181 = load i32, ptr %180, align 4, !tbaa !113
  %182 = getelementptr inbounds i32, ptr %157, i64 %176
  %183 = load i32, ptr %182, align 4, !tbaa !113
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, ptr %173, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !113
  %187 = add i32 %186, %181
  %188 = getelementptr inbounds i32, ptr %173, i64 %176
  %189 = load i32, ptr %188, align 4, !tbaa !113
  %190 = shl i32 %189, 1
  %191 = icmp ult i32 %187, %190
  br i1 %191, label %199, label %192, !prof !205

192:                                              ; preds = %175
  %193 = load ptr, ptr %24, align 8, !tbaa !160
  %194 = getelementptr inbounds i32, ptr %193, i64 %176
  store i32 %179, ptr %194, align 4, !tbaa !113
  %195 = load i32, ptr %177, align 4, !tbaa !113
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i32, ptr %157, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !113
  store i32 %198, ptr %177, align 4, !tbaa !113
  br label %203

199:                                              ; preds = %175
  store i32 %181, ptr %188, align 4, !tbaa !113
  %200 = load i32, ptr %177, align 4, !tbaa !113
  %201 = load ptr, ptr %25, align 8, !tbaa !160
  %202 = getelementptr inbounds i32, ptr %201, i64 %178
  store i32 %200, ptr %202, align 4, !tbaa !113
  br label %203

203:                                              ; preds = %199, %192
  %204 = phi i32 [ %179, %192 ], [ %200, %199 ]
  %205 = load i32, ptr %156, align 4, !tbaa !113
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i32, ptr %153, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !113
  %209 = zext i32 %204 to i64
  %210 = getelementptr inbounds i32, ptr %157, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !113
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i32, ptr %155, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !113
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i32, ptr %153, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !113
  %218 = icmp ult i32 %208, %217
  br i1 %218, label %175, label %219, !prof !206, !llvm.loop !207

219:                                              ; preds = %203, %152
  %220 = phi i32 [ %171, %152 ], [ %204, %203 ]
  %221 = phi i32 [ %158, %152 ], [ %205, %203 ]
  %222 = phi i64 [ %37, %152 ], [ %209, %203 ]
  %223 = getelementptr inbounds i32, ptr %155, i64 %222
  store i32 %221, ptr %223, align 4, !tbaa !113
  %224 = load ptr, ptr %27, align 8, !tbaa !161
  %225 = getelementptr inbounds i32, ptr %224, i64 %37
  %226 = load i32, ptr %225, align 4, !tbaa !113
  %227 = zext i32 %43 to i64
  %228 = getelementptr inbounds i32, ptr %224, i64 %227
  %229 = load i32, ptr %228, align 4, !tbaa !113
  %230 = add i32 %229, %226
  store i32 %230, ptr %228, align 4, !tbaa !113
  %231 = load i32, ptr %225, align 4, !tbaa !113
  %232 = shl i32 %231, 1
  %233 = icmp ult i32 %230, %232
  br i1 %233, label %234, label %237, !prof !208

234:                                              ; preds = %219
  %235 = getelementptr inbounds i32, ptr %157, i64 %227
  %236 = load i32, ptr %235, align 4, !tbaa !113
  store i32 %220, ptr %235, align 4, !tbaa !113
  br label %237

237:                                              ; preds = %234, %219
  %238 = phi i32 [ %236, %234 ], [ %220, %219 ]
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %249, label %240, !prof !209

240:                                              ; preds = %237
  %241 = load ptr, ptr %28, align 8, !tbaa !160
  br label %242

242:                                              ; preds = %240, %242
  %243 = phi i32 [ %238, %240 ], [ %247, %242 ]
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds i32, ptr %241, i64 %244
  store i32 %43, ptr %245, align 4, !tbaa !113
  %246 = getelementptr inbounds i32, ptr %157, i64 %244
  %247 = load i32, ptr %246, align 4, !tbaa !113
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %242, !prof !210, !llvm.loop !211

249:                                              ; preds = %242, %237
  %250 = load ptr, ptr %29, align 8, !tbaa !158
  %251 = zext i32 %59 to i64
  %252 = getelementptr inbounds i32, ptr %250, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !113
  %254 = load ptr, ptr %30, align 8, !tbaa !159
  %255 = getelementptr inbounds i32, ptr %254, i64 %37
  store i32 %253, ptr %255, align 4, !tbaa !113
  %256 = trunc i64 %37 to i32
  store i32 %256, ptr %252, align 4, !tbaa !113
  %257 = getelementptr inbounds i32, ptr %250, i64 %227
  %258 = load i32, ptr %257, align 4, !tbaa !113
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %314, label %260, !prof !212

260:                                              ; preds = %249, %297
  %261 = phi i32 [ %312, %297 ], [ %258, %249 ]
  %262 = load ptr, ptr %31, align 8, !tbaa !160
  %263 = zext i32 %261 to i64
  %264 = getelementptr inbounds i32, ptr %262, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !113
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %271, !prof !213

267:                                              ; preds = %260
  %268 = load ptr, ptr %26, align 8, !tbaa !154
  %269 = getelementptr inbounds i32, ptr %268, i64 %263
  %270 = load i32, ptr %269, align 4, !tbaa !113
  br label %297

271:                                              ; preds = %260
  %272 = zext i32 %265 to i64
  %273 = getelementptr inbounds i32, ptr %262, i64 %272
  %274 = load i32, ptr %273, align 4, !tbaa !113
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %280, label %276, !prof !214

276:                                              ; preds = %271
  tail call fastcc void @compress(ptr noundef nonnull %0, i32 noundef %261)
  %277 = load ptr, ptr %31, align 8, !tbaa !160
  %278 = getelementptr inbounds i32, ptr %277, i64 %263
  %279 = load i32, ptr %278, align 4, !tbaa !113
  br label %280

280:                                              ; preds = %276, %271
  %281 = phi i32 [ %279, %276 ], [ %265, %271 ]
  %282 = load ptr, ptr %20, align 8, !tbaa !156
  %283 = load ptr, ptr %26, align 8, !tbaa !154
  %284 = zext i32 %281 to i64
  %285 = getelementptr inbounds i32, ptr %283, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !113
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds i32, ptr %282, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !113
  %290 = getelementptr inbounds i32, ptr %283, i64 %263
  %291 = load i32, ptr %290, align 4, !tbaa !113
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds i32, ptr %282, i64 %292
  %294 = load i32, ptr %293, align 4, !tbaa !113
  %295 = icmp ult i32 %289, %294
  %296 = select i1 %295, i32 %286, i32 %291, !prof !215
  br label %297

297:                                              ; preds = %267, %280
  %298 = phi i32 [ %270, %267 ], [ %296, %280 ]
  %299 = load ptr, ptr %20, align 8, !tbaa !156
  %300 = zext i32 %298 to i64
  %301 = getelementptr inbounds i32, ptr %299, i64 %300
  %302 = load i32, ptr %301, align 4, !tbaa !113
  %303 = getelementptr inbounds i32, ptr %299, i64 %263
  %304 = load i32, ptr %303, align 4, !tbaa !113
  %305 = icmp ult i32 %302, %304
  %306 = select i1 %305, ptr %33, ptr %32, !prof !216
  %307 = select i1 %305, i32 %298, i32 %43, !prof !216
  %308 = load ptr, ptr %306, align 8, !tbaa !134
  %309 = getelementptr inbounds i32, ptr %308, i64 %263
  store i32 %307, ptr %309, align 4, !tbaa !113
  %310 = load ptr, ptr %30, align 8, !tbaa !159
  %311 = getelementptr inbounds i32, ptr %310, i64 %263
  %312 = load i32, ptr %311, align 4, !tbaa !113
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %260, !prof !217, !llvm.loop !218

314:                                              ; preds = %297, %249
  %315 = load ptr, ptr %29, align 8, !tbaa !158
  %316 = getelementptr inbounds i32, ptr %315, i64 %227
  store i32 0, ptr %316, align 4, !tbaa !113
  %317 = add nsw i64 %37, -1
  %318 = and i64 %317, 4294967294
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %36, !prof !140, !llvm.loop !219

320:                                              ; preds = %314, %2
  %321 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  %322 = load ptr, ptr %321, align 8, !tbaa !134
  %323 = getelementptr inbounds i32, ptr %322, i64 1
  store i32 0, ptr %323, align 4, !tbaa !113
  %324 = load i32, ptr %10, align 4, !tbaa !166
  %325 = icmp ult i32 %324, 2
  br i1 %325, label %345, label %326, !prof !125

326:                                              ; preds = %320
  %327 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %328 = load ptr, ptr %327, align 8, !tbaa !156
  br label %329

329:                                              ; preds = %326, %341
  %330 = phi i32 [ 2, %326 ], [ %342, %341 ]
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds i32, ptr %322, i64 %331
  %333 = load i32, ptr %332, align 4, !tbaa !113
  %334 = getelementptr inbounds i32, ptr %328, i64 %331
  %335 = load i32, ptr %334, align 4, !tbaa !113
  %336 = icmp eq i32 %333, %335
  br i1 %336, label %341, label %337, !prof !220

337:                                              ; preds = %329
  %338 = zext i32 %333 to i64
  %339 = getelementptr inbounds i32, ptr %322, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !113
  store i32 %340, ptr %332, align 4, !tbaa !113
  br label %341

341:                                              ; preds = %329, %337
  %342 = add i32 %330, 1
  %343 = load i32, ptr %10, align 4, !tbaa !166
  %344 = icmp ugt i32 %342, %343
  br i1 %344, label %345, label %329, !prof !140, !llvm.loop !221

345:                                              ; preds = %341, %320
  ret void
}

declare void @et_set_father(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @free_dom_info(ptr nocapture noundef %0) unnamed_addr #9 !prof !151 !PGOFuncName !222 {
  %2 = load ptr, ptr %0, align 8, !tbaa !153
  tail call void @free(ptr noundef %2)
  %3 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !154
  tail call void @free(ptr noundef %4)
  %5 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  tail call void @free(ptr noundef %6)
  %7 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  tail call void @free(ptr noundef %8)
  %9 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !158
  tail call void @free(ptr noundef %10)
  %11 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  tail call void @free(ptr noundef %12)
  %13 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !160
  tail call void @free(ptr noundef %14)
  %15 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !161
  tail call void @free(ptr noundef %16)
  %17 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !163
  tail call void @free(ptr noundef %18)
  %19 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !136
  tail call void @free(ptr noundef %20)
  %21 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !137
  tail call void @free(ptr noundef %22)
  %23 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !168
  tail call void @bitmap_obstack_free(ptr noundef %24) #16
  store ptr null, ptr %23, align 8, !tbaa !168
  ret void
}

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @free_dominance_info(i32 noundef %0) local_unnamed_addr #9 !prof !223 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %5, label %4, !prof !224

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @cfun, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !113
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13, !prof !225

13:                                               ; preds = %5
  %14 = load ptr, ptr %8, align 8, !tbaa !98
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16, !prof !125

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %21, %16 ], [ %14, %13 ]
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 4, i64 %9
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  tail call void @et_free_tree_force(ptr noundef %19) #16
  store ptr null, ptr %18, align 8, !tbaa !98
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !98
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %16, !prof !226, !llvm.loop !227

23:                                               ; preds = %16, %13
  tail call void @et_free_pools() #16
  %24 = load ptr, ptr @cfun, align 8, !tbaa !98
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !119
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 9, i64 %9
  store i32 0, ptr %27, align 4, !tbaa !113
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 8, i64 %9
  store i32 0, ptr %28, align 4, !tbaa !113
  br label %29

29:                                               ; preds = %5, %23
  ret void
}

declare void @et_free_tree_force(ptr noundef) local_unnamed_addr #3

declare void @et_free_pools() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @get_immediate_dominator(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !228 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %6, label %5, !prof !229

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %6

6:                                                ; preds = %2, %5
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = load ptr, ptr @cfun, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 8, i64 %7
  %14 = load i32, ptr %13, align 4, !tbaa !113
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !230

16:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 704, ptr noundef nonnull @.str.1) #16
  br label %17

17:                                               ; preds = %6, %16
  %18 = getelementptr inbounds %struct.et_node, ptr %9, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !144
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !231

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !232
  br label %23

23:                                               ; preds = %17, %21
  %24 = phi ptr [ %22, %21 ], [ null, %17 ]
  ret ptr %24
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @set_immediate_dominator(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #10 !prof !233 {
  %4 = add i32 %0, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %7, label %6, !prof !234

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %3, %6
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = load ptr, ptr @cfun, align 8, !tbaa !98
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !119
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 8, i64 %8
  %15 = load i32, ptr %14, align 4, !tbaa !113
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !235

17:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 721, ptr noundef nonnull @.str.1) #16
  br label %18

18:                                               ; preds = %7, %17
  %19 = getelementptr inbounds %struct.et_node, ptr %10, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !144
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22, !prof !236

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !232
  %24 = icmp eq ptr %23, %2
  br i1 %24, label %39, label %25, !prof !237

25:                                               ; preds = %22
  tail call void @et_split(ptr noundef %10) #16
  br label %26

26:                                               ; preds = %25, %18
  %27 = icmp eq ptr %2, null
  br i1 %27, label %31, label %28, !prof !238

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %8
  %30 = load ptr, ptr %29, align 8, !tbaa !98
  tail call void @et_set_father(ptr noundef %10, ptr noundef %30) #16
  br label %31

31:                                               ; preds = %28, %26
  %32 = load ptr, ptr @cfun, align 8, !tbaa !98
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !119
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 8, i64 %8
  %36 = load i32, ptr %35, align 4, !tbaa !113
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %39, !prof !239

38:                                               ; preds = %31
  store i32 1, ptr %35, align 4, !tbaa !113
  br label %39

39:                                               ; preds = %31, %38, %22
  ret void
}

declare void @et_split(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @get_dominated_by(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !97 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %6

6:                                                ; preds = %2, %5
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.et_node, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !240
  %12 = load ptr, ptr @cfun, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !119
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 8, i64 %7
  %16 = load i32, ptr %15, align 4, !tbaa !113
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 746, ptr noundef nonnull @.str.1) #16
  br label %19

19:                                               ; preds = %6, %18
  %20 = icmp eq ptr %11, null
  br i1 %20, label %50, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %11, align 8, !tbaa !232
  %23 = tail call ptr @vec_heap_p_reserve(ptr noundef null, i32 noundef 1) #16
  %24 = load i32, ptr %23, align 8, !tbaa !241
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !241
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %23, i64 0, i32 2, i64 %26
  store ptr %22, ptr %27, align 8, !tbaa !98
  %28 = getelementptr inbounds %struct.et_node, ptr %11, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !243
  %30 = icmp eq ptr %29, %11
  br i1 %30, label %50, label %31

31:                                               ; preds = %21, %41
  %32 = phi ptr [ %48, %41 ], [ %29, %21 ]
  %33 = phi ptr [ %42, %41 ], [ %23, %21 ]
  %34 = load ptr, ptr %32, align 8, !tbaa !232
  %35 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %33, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !244
  %37 = load i32, ptr %33, align 8, !tbaa !241
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = tail call ptr @vec_heap_p_reserve(ptr noundef nonnull %33, i32 noundef 1) #16
  br label %41

41:                                               ; preds = %31, %39
  %42 = phi ptr [ %40, %39 ], [ %33, %31 ]
  %43 = load i32, ptr %42, align 8, !tbaa !241
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !241
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %42, i64 0, i32 2, i64 %45
  store ptr %34, ptr %46, align 8, !tbaa !98
  %47 = getelementptr inbounds %struct.et_node, ptr %32, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !243
  %49 = icmp eq ptr %48, %11
  br i1 %49, label %50, label %31, !llvm.loop !245

50:                                               ; preds = %41, %21, %19
  %51 = phi ptr [ null, %19 ], [ %23, %21 ], [ %42, %41 ]
  ret ptr %51
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_dominated_by_region(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #11 !prof !97 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  br label %12

7:                                                ; preds = %12
  %8 = add i32 %0, -1
  %9 = icmp ult i32 %8, 2
  %10 = zext i32 %8 to i64
  %11 = zext i32 %2 to i64
  br label %26

12:                                               ; preds = %5, %12
  %13 = phi i64 [ 0, %5 ], [ %19, %12 ]
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !246
  %18 = or i32 %17, 128
  store i32 %18, ptr %16, align 8, !tbaa !246
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, %6
  br i1 %20, label %7, label %12, !llvm.loop !247

21:                                               ; preds = %83, %3
  %22 = phi ptr [ null, %3 ], [ %84, %83 ]
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %96, label %24

24:                                               ; preds = %21
  %25 = zext i32 %2 to i64
  br label %87

26:                                               ; preds = %7, %83
  %27 = phi i64 [ 0, %7 ], [ %85, %83 ]
  %28 = phi ptr [ null, %7 ], [ %84, %83 ]
  %29 = getelementptr inbounds ptr, ptr %1, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !98
  br i1 %9, label %32, label %31

31:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 4, i64 %10
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  %35 = getelementptr inbounds %struct.et_node, ptr %34, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !240
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %36, align 8, !tbaa !232
  br label %40

40:                                               ; preds = %32, %38
  %41 = phi ptr [ %39, %38 ], [ null, %32 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %83, label %43

43:                                               ; preds = %40, %80
  %44 = phi ptr [ %81, %80 ], [ %41, %40 ]
  %45 = phi ptr [ %66, %80 ], [ %28, %40 ]
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !246
  %48 = and i32 %47, 128
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = icmp eq ptr %45, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %45, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !244
  %55 = load i32, ptr %45, align 8, !tbaa !241
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50, %52
  %58 = tail call ptr @vec_heap_p_reserve(ptr noundef %45, i32 noundef 1) #16
  br label %59

59:                                               ; preds = %52, %57
  %60 = phi ptr [ %58, %57 ], [ %45, %52 ]
  %61 = load i32, ptr %60, align 8, !tbaa !241
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !241
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %60, i64 0, i32 2, i64 %63
  store ptr %44, ptr %64, align 8, !tbaa !98
  br label %65

65:                                               ; preds = %43, %59
  %66 = phi ptr [ %60, %59 ], [ %45, %43 ]
  br i1 %9, label %68, label %67

67:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %68

68:                                               ; preds = %67, %65
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 4, i64 %10
  %70 = load ptr, ptr %69, align 8, !tbaa !98
  %71 = getelementptr inbounds %struct.et_node, ptr %70, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !243
  %73 = getelementptr inbounds %struct.et_node, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !144
  %75 = getelementptr inbounds %struct.et_node, ptr %74, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !240
  %77 = icmp eq ptr %76, %72
  br i1 %77, label %80, label %78

78:                                               ; preds = %68
  %79 = load ptr, ptr %72, align 8, !tbaa !232
  br label %80

80:                                               ; preds = %68, %78
  %81 = phi ptr [ %79, %78 ], [ null, %68 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %43, !llvm.loop !248

83:                                               ; preds = %80, %40
  %84 = phi ptr [ %28, %40 ], [ %66, %80 ]
  %85 = add nuw nsw i64 %27, 1
  %86 = icmp eq i64 %85, %11
  br i1 %86, label %21, label %26, !llvm.loop !249

87:                                               ; preds = %24, %87
  %88 = phi i64 [ 0, %24 ], [ %94, %87 ]
  %89 = getelementptr inbounds ptr, ptr %1, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !98
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 13
  %92 = load i32, ptr %91, align 8, !tbaa !246
  %93 = and i32 %92, -129
  store i32 %93, ptr %91, align 8, !tbaa !246
  %94 = add nuw nsw i64 %88, 1
  %95 = icmp eq i64 %94, %25
  br i1 %95, label %96, label %87, !llvm.loop !250

96:                                               ; preds = %87, %21
  ret ptr %22
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @first_dom_son(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !251 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %6, label %5, !prof !252

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %6

6:                                                ; preds = %2, %5
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.et_node, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !240
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !253

13:                                               ; preds = %6
  %14 = load ptr, ptr %11, align 8, !tbaa !232
  br label %15

15:                                               ; preds = %6, %13
  %16 = phi ptr [ %14, %13 ], [ null, %6 ]
  ret ptr %16
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @next_dom_son(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !254 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %6, label %5, !prof !255

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %6

6:                                                ; preds = %2, %5
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.et_node, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !243
  %12 = getelementptr inbounds %struct.et_node, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !144
  %14 = getelementptr inbounds %struct.et_node, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !240
  %16 = icmp eq ptr %15, %11
  br i1 %16, label %19, label %17, !prof !256

17:                                               ; preds = %6
  %18 = load ptr, ptr %11, align 8, !tbaa !232
  br label %19

19:                                               ; preds = %6, %17
  %20 = phi ptr [ %18, %17 ], [ null, %6 ]
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_all_dominated_blocks(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !257 {
  %3 = tail call ptr @vec_heap_p_reserve(ptr noundef null, i32 noundef 1) #16
  %4 = load i32, ptr %3, align 8, !tbaa !241
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !241
  %6 = zext i32 %4 to i64
  %7 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %3, i64 0, i32 2, i64 %6
  store ptr %1, ptr %7, align 8, !tbaa !98
  %8 = add i32 %0, -1
  %9 = icmp ult i32 %8, 2
  %10 = zext i32 %8 to i64
  br label %11

11:                                               ; preds = %67, %2
  %12 = phi i64 [ %14, %67 ], [ 0, %2 ]
  %13 = phi ptr [ %63, %67 ], [ %3, %2 ]
  %14 = add nuw nsw i64 %12, 1
  %15 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %13, i64 0, i32 2, i64 %12
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  br i1 %9, label %18, label %17, !prof !258

17:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %18

18:                                               ; preds = %17, %11
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 4, i64 %10
  %20 = load ptr, ptr %19, align 8, !tbaa !98
  %21 = getelementptr inbounds %struct.et_node, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !240
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !259

24:                                               ; preds = %18
  %25 = load ptr, ptr %22, align 8, !tbaa !232
  br label %26

26:                                               ; preds = %18, %24
  %27 = phi ptr [ %25, %24 ], [ null, %18 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %62, label %29, !prof !260

29:                                               ; preds = %26, %59
  %30 = phi ptr [ %60, %59 ], [ %27, %26 ]
  %31 = phi ptr [ %41, %59 ], [ %13, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33, !prof !261

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %31, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !244
  %36 = load i32, ptr %31, align 8, !tbaa !241
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40, !prof !262

38:                                               ; preds = %29, %33
  %39 = tail call ptr @vec_heap_p_reserve(ptr noundef %31, i32 noundef 1) #16
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %31, %33 ]
  %42 = load i32, ptr %41, align 8, !tbaa !241
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 8, !tbaa !241
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %41, i64 0, i32 2, i64 %44
  store ptr %30, ptr %45, align 8, !tbaa !98
  br i1 %9, label %47, label %46, !prof !263

46:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %47

47:                                               ; preds = %46, %40
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 4, i64 %10
  %49 = load ptr, ptr %48, align 8, !tbaa !98
  %50 = getelementptr inbounds %struct.et_node, ptr %49, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !243
  %52 = getelementptr inbounds %struct.et_node, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !144
  %54 = getelementptr inbounds %struct.et_node, ptr %53, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !240
  %56 = icmp eq ptr %55, %51
  br i1 %56, label %59, label %57, !prof !264

57:                                               ; preds = %47
  %58 = load ptr, ptr %51, align 8, !tbaa !232
  br label %59

59:                                               ; preds = %47, %57
  %60 = phi ptr [ %58, %57 ], [ null, %47 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %29, !prof !263, !llvm.loop !265

62:                                               ; preds = %59, %26
  %63 = phi ptr [ %13, %26 ], [ %41, %59 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65, !prof !266

65:                                               ; preds = %62
  %66 = load i32, ptr %63, align 8, !tbaa !241
  br label %67

67:                                               ; preds = %62, %65
  %68 = phi i32 [ %66, %65 ], [ 0, %62 ]
  %69 = zext i32 %68 to i64
  %70 = icmp ult i64 %14, %69
  br i1 %70, label %11, label %71, !prof !267, !llvm.loop !268

71:                                               ; preds = %67
  ret ptr %63
}

; Function Attrs: nounwind uwtable
define dso_local void @redirect_immediate_dominators(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 !prof !269 {
  %4 = add i32 %0, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %7, label %6, !prof !270

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %3, %6
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = load ptr, ptr @cfun, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !119
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 8, i64 %8
  %17 = load i32, ptr %16, align 4, !tbaa !113
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !271

19:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 822, ptr noundef nonnull @.str.1) #16
  br label %20

20:                                               ; preds = %7, %19
  %21 = getelementptr inbounds %struct.et_node, ptr %10, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !240
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24, !prof !272

24:                                               ; preds = %20
  %25 = load ptr, ptr %21, align 8, !tbaa !240
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27, !prof !273

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %29, %27 ], [ %25, %24 ]
  tail call void @et_split(ptr noundef nonnull %28) #16
  tail call void @et_set_father(ptr noundef nonnull %28, ptr noundef %12) #16
  %29 = load ptr, ptr %21, align 8, !tbaa !240
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %27, !prof !274, !llvm.loop !275

31:                                               ; preds = %27, %24
  %32 = load ptr, ptr @cfun, align 8, !tbaa !98
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !119
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 8, i64 %8
  %36 = load i32, ptr %35, align 4, !tbaa !113
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %39, !prof !276

38:                                               ; preds = %31
  store i32 1, ptr %35, align 4, !tbaa !113
  br label %39

39:                                               ; preds = %31, %38, %20
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @nearest_common_dominator(i32 noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #10 !prof !277 {
  %4 = add i32 %0, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %7, label %6, !prof !278

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %3, %6
  %8 = load ptr, ptr @cfun, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  %11 = zext i32 %4 to i64
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 8, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !113
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16, !prof !279

15:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 845, ptr noundef nonnull @.str.1) #16
  br label %16

16:                                               ; preds = %7, %15
  %17 = icmp eq ptr %1, null
  br i1 %17, label %27, label %18, !prof !280

18:                                               ; preds = %16
  %19 = icmp eq ptr %2, null
  br i1 %19, label %27, label %20, !prof !281

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %11
  %22 = load ptr, ptr %21, align 8, !tbaa !98
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %11
  %24 = load ptr, ptr %23, align 8, !tbaa !98
  %25 = tail call ptr @et_nca(ptr noundef %22, ptr noundef %24) #16
  %26 = load ptr, ptr %25, align 8, !tbaa !232
  br label %27

27:                                               ; preds = %18, %16, %20
  %28 = phi ptr [ %26, %20 ], [ %2, %16 ], [ %1, %18 ]
  ret ptr %28
}

declare ptr @et_nca(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @nearest_common_dominator_for_set(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !282 {
  %3 = tail call i32 @bitmap_first_set_bit(ptr noundef %1) #16
  %4 = load ptr, ptr @cfun, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !283
  %9 = zext i32 %3 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %8, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  %12 = load ptr, ptr %1, align 8, !tbaa !284
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @bitmap_zero_bits, ptr %12, !prof !286
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !287
  %17 = shl i32 %16, 7
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !289
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = or disjoint i32 %17, %21
  %23 = add i32 %0, -1
  %24 = icmp ult i32 %23, 2
  %25 = zext i32 %23 to i64
  br label %26

26:                                               ; preds = %119, %2
  %27 = phi i64 [ %19, %2 ], [ %121, %119 ]
  %28 = phi i32 [ 0, %2 ], [ %84, %119 ]
  %29 = phi i32 [ %22, %2 ], [ %122, %119 ]
  %30 = phi ptr [ %14, %2 ], [ %86, %119 ]
  %31 = phi ptr [ %11, %2 ], [ %120, %119 ]
  %32 = icmp eq i64 %27, 0
  br i1 %32, label %47, label %33, !prof !290

33:                                               ; preds = %61, %26
  %34 = phi i64 [ %27, %26 ], [ %66, %61 ]
  %35 = phi i32 [ %28, %26 ], [ %62, %61 ]
  %36 = phi i32 [ %29, %26 ], [ %63, %61 ]
  %37 = phi ptr [ %30, %26 ], [ %54, %61 ]
  %38 = and i64 %34, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %82, !prof !291

40:                                               ; preds = %33, %40
  %41 = phi i32 [ %44, %40 ], [ %36, %33 ]
  %42 = phi i64 [ %43, %40 ], [ %34, %33 ]
  %43 = lshr exact i64 %42, 1
  %44 = add i32 %41, 1
  %45 = and i64 %42, 2
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %40, label %82, !prof !292, !llvm.loop !293

47:                                               ; preds = %26
  %48 = add i32 %29, 63
  %49 = and i32 %48, -64
  %50 = add i32 %28, 1
  br label %51

51:                                               ; preds = %78, %47
  %52 = phi i64 [ %27, %47 ], [ %73, %78 ]
  %53 = phi i32 [ %49, %47 ], [ %81, %78 ]
  %54 = phi ptr [ %30, %47 ], [ %76, %78 ]
  %55 = phi i32 [ %50, %47 ], [ 0, %78 ]
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %72, label %57, !prof !294

57:                                               ; preds = %51
  %58 = add i32 %53, 128
  %59 = shl i32 %55, 6
  %60 = sub i32 %58, %59
  br label %61

61:                                               ; preds = %57, %68
  %62 = phi i32 [ %70, %68 ], [ %55, %57 ]
  %63 = phi i32 [ %69, %68 ], [ %53, %57 ]
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %54, i64 0, i32 3, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !289
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %33, !prof !295

68:                                               ; preds = %61
  %69 = add i32 %63, 64
  %70 = add i32 %62, 1
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %61, !prof !296, !llvm.loop !297

72:                                               ; preds = %68, %51
  %73 = phi i64 [ %52, %51 ], [ %66, %68 ]
  %74 = phi i32 [ %53, %51 ], [ %60, %68 ]
  %75 = phi i32 [ %55, %51 ], [ 2, %68 ]
  %76 = load ptr, ptr %54, align 8, !tbaa !298
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78, !prof !299

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.bitmap_element_def, ptr %76, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !287
  %81 = shl i32 %80, 7
  br label %51, !llvm.loop !300

82:                                               ; preds = %72, %40, %33
  %83 = phi i64 [ %34, %33 ], [ %43, %40 ], [ %73, %72 ]
  %84 = phi i32 [ %35, %33 ], [ %35, %40 ], [ %75, %72 ]
  %85 = phi i32 [ %36, %33 ], [ %44, %40 ], [ %74, %72 ]
  %86 = phi ptr [ %37, %33 ], [ %37, %40 ], [ %76, %72 ]
  %87 = phi i1 [ false, %33 ], [ false, %40 ], [ true, %72 ]
  br i1 %87, label %123, label %88, !prof !301

88:                                               ; preds = %82
  %89 = load ptr, ptr @cfun, align 8, !tbaa !98
  %90 = getelementptr inbounds %struct.function, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !119
  %92 = getelementptr inbounds %struct.control_flow_graph, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !283
  %94 = zext i32 %85 to i64
  %95 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %93, i64 0, i32 2, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !98
  %97 = icmp eq ptr %31, %96
  br i1 %97, label %119, label %98, !prof !302

98:                                               ; preds = %88
  br i1 %24, label %100, label %99, !prof !278

99:                                               ; preds = %98
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %100

100:                                              ; preds = %99, %98
  %101 = load ptr, ptr @cfun, align 8, !tbaa !98
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !119
  %104 = getelementptr inbounds %struct.control_flow_graph, ptr %103, i64 0, i32 8, i64 %25
  %105 = load i32, ptr %104, align 4, !tbaa !113
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108, !prof !279

107:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 845, ptr noundef nonnull @.str.1) #16
  br label %108

108:                                              ; preds = %107, %100
  %109 = icmp eq ptr %31, null
  br i1 %109, label %119, label %110, !prof !280

110:                                              ; preds = %108
  %111 = icmp eq ptr %96, null
  br i1 %111, label %119, label %112, !prof !281

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 4, i64 %25
  %114 = load ptr, ptr %113, align 8, !tbaa !98
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 4, i64 %25
  %116 = load ptr, ptr %115, align 8, !tbaa !98
  %117 = tail call ptr @et_nca(ptr noundef %114, ptr noundef %116) #16
  %118 = load ptr, ptr %117, align 8, !tbaa !232
  br label %119

119:                                              ; preds = %112, %110, %108, %88
  %120 = phi ptr [ %31, %88 ], [ %118, %112 ], [ %96, %108 ], [ %31, %110 ]
  %121 = lshr i64 %83, 1
  %122 = add i32 %85, 1
  br label %26, !llvm.loop !303

123:                                              ; preds = %82
  ret ptr %31
}

declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @dominated_by_p(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #10 !prof !304 {
  %4 = add i32 %0, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %7, label %6, !prof !305

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %3, %6
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = load ptr, ptr @cfun, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !119
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 8, i64 %8
  %17 = load i32, ptr %16, align 4, !tbaa !113
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !306

19:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 957, ptr noundef nonnull @.str.1) #16
  br label %20

20:                                               ; preds = %7, %19
  %21 = load ptr, ptr @cfun, align 8, !tbaa !98
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !119
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 8, i64 %8
  %25 = load i32, ptr %24, align 4, !tbaa !113
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %40, !prof !307

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.et_node, ptr %10, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !308
  %30 = getelementptr inbounds %struct.et_node, ptr %12, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !308
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %42, label %33, !prof !309

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.et_node, ptr %10, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !310
  %36 = getelementptr inbounds %struct.et_node, ptr %12, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !310
  %38 = icmp sle i32 %35, %37
  %39 = zext i1 %38 to i8
  br label %42

40:                                               ; preds = %20
  %41 = tail call zeroext i8 @et_below(ptr noundef %10, ptr noundef %12) #16
  br label %42

42:                                               ; preds = %27, %33, %40
  %43 = phi i8 [ %41, %40 ], [ 0, %27 ], [ %39, %33 ]
  ret i8 %43
}

declare zeroext i8 @et_below(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @bb_dom_dfs_in(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !311 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %6, label %5, !prof !312

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %6

6:                                                ; preds = %2, %5
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = load ptr, ptr @cfun, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 8, i64 %7
  %14 = load i32, ptr %13, align 4, !tbaa !113
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %17, label %16, !prof !312

16:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 974, ptr noundef nonnull @.str.1) #16
  br label %17

17:                                               ; preds = %6, %16
  %18 = getelementptr inbounds %struct.et_node, ptr %9, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !308
  ret i32 %19
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @bb_dom_dfs_out(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !313 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %6, label %5, !prof !314

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %6

6:                                                ; preds = %2, %5
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = load ptr, ptr @cfun, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 8, i64 %7
  %14 = load i32, ptr %13, align 4, !tbaa !113
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %17, label %16, !prof !314

16:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 986, ptr noundef nonnull @.str.1) #16
  br label %17

17:                                               ; preds = %6, %16
  %18 = getelementptr inbounds %struct.et_node, ptr %9, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !310
  ret i32 %19
}

; Function Attrs: cold nounwind uwtable
define dso_local void @verify_dominators(i32 noundef %0) local_unnamed_addr #11 !prof !97 {
  %2 = alloca %struct.dom_info, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #16
  %3 = icmp eq i32 %0, 2
  %4 = zext i1 %3 to i8
  %5 = add i32 %0, -1
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr @cfun, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !119
  %12 = zext i32 %5 to i64
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 8, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !113
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 999, ptr noundef nonnull @.str.1) #16
  br label %17

17:                                               ; preds = %8, %16
  call fastcc void @init_dom_info(ptr noundef nonnull %2, i32 noundef %0)
  call fastcc void @calc_dfs_tree(ptr noundef nonnull %2, i8 noundef zeroext %4)
  call fastcc void @calc_idoms(ptr noundef nonnull %2, i8 noundef zeroext %4)
  %18 = load ptr, ptr @cfun, align 8, !tbaa !98
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !119
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !131
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !133
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %74, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.dom_info, ptr %2, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.dom_info, ptr %2, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.dom_info, ptr %2, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8
  br label %34

34:                                               ; preds = %27, %61
  %35 = phi ptr [ %23, %27 ], [ %64, %61 ]
  %36 = phi i32 [ 0, %27 ], [ %62, %61 ]
  %37 = tail call ptr @get_immediate_dominator(i32 noundef %0, ptr noundef %35)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !138
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2, i32 noundef %41) #16
  br label %42

42:                                               ; preds = %39, %34
  %43 = phi i32 [ %36, %34 ], [ 1, %39 ]
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !138
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %33, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !113
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %31, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !113
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %29, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !98
  %55 = icmp eq ptr %37, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !138
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !138
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, i32 noundef %45, i32 noundef %58, i32 noundef %60) #16
  br label %61

61:                                               ; preds = %42, %56
  %62 = phi i32 [ 1, %56 ], [ %43, %42 ]
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !131
  %65 = load ptr, ptr @cfun, align 8, !tbaa !98
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !119
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !133
  %70 = icmp eq ptr %64, %69
  br i1 %70, label %71, label %34, !llvm.loop !315

71:                                               ; preds = %61
  %72 = icmp eq i32 %62, 0
  call fastcc void @free_dom_info(ptr noundef nonnull %2)
  br i1 %72, label %75, label %73

73:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1024, ptr noundef nonnull @.str.1) #16
  br label %75

74:                                               ; preds = %17
  call fastcc void @free_dom_info(ptr noundef nonnull %2)
  br label %75

75:                                               ; preds = %74, %71, %73
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #16
  ret void
}

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @recompute_dominator(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !316 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %6, label %5, !prof !317

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr @cfun, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  %10 = zext i32 %3 to i64
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 8, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !113
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !318

14:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1040, ptr noundef nonnull @.str.1) #16
  br label %15

15:                                               ; preds = %6, %14
  %16 = icmp eq i32 %0, 1
  br i1 %16, label %17, label %107, !prof !317

17:                                               ; preds = %15
  %18 = icmp eq ptr %1, null
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 0
  br label %20

20:                                               ; preds = %17, %105
  %21 = phi i32 [ %106, %105 ], [ 0, %17 ]
  %22 = phi ptr [ %96, %105 ], [ null, %17 ]
  br i1 %18, label %23, label %24, !prof !319

23:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.1) #16
  br label %24

24:                                               ; preds = %23, %20
  %25 = load ptr, ptr %1, align 8, !tbaa !98
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !319

27:                                               ; preds = %24
  %28 = load i32, ptr %25, align 8, !tbaa !175
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi i32 [ %28, %27 ], [ 0, %24 ]
  %31 = icmp eq i32 %30, %21
  br i1 %31, label %36, label %32, !prof !320

32:                                               ; preds = %29
  %33 = zext i32 %21 to i64
  %34 = getelementptr inbounds %struct.VEC_edge_base, ptr %25, i64 0, i32 2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !98
  br label %36

36:                                               ; preds = %29, %32
  %37 = phi ptr [ %35, %32 ], [ null, %29 ]
  br i1 %31, label %145, label %38, !prof !320

38:                                               ; preds = %36
  %39 = load ptr, ptr %37, align 8, !tbaa !321
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 4, i64 0
  %41 = load ptr, ptr %40, align 8, !tbaa !98
  %42 = load ptr, ptr %19, align 8, !tbaa !98
  %43 = load ptr, ptr @cfun, align 8, !tbaa !98
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !119
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 8, i64 0
  %47 = load i32, ptr %46, align 4, !tbaa !113
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50, !prof !306

49:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 957, ptr noundef nonnull @.str.1) #16
  br label %50

50:                                               ; preds = %49, %38
  %51 = load ptr, ptr @cfun, align 8, !tbaa !98
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !119
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %53, i64 0, i32 8, i64 0
  %55 = load i32, ptr %54, align 4, !tbaa !113
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %70, !prof !307

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.et_node, ptr %41, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !308
  %60 = getelementptr inbounds %struct.et_node, ptr %42, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !308
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %72, label %63, !prof !309

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.et_node, ptr %41, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !310
  %66 = getelementptr inbounds %struct.et_node, ptr %42, i64 0, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !310
  %68 = icmp sle i32 %65, %67
  %69 = zext i1 %68 to i8
  br label %72

70:                                               ; preds = %50
  %71 = tail call zeroext i8 @et_below(ptr noundef %41, ptr noundef %42) #16
  br label %72

72:                                               ; preds = %57, %63, %70
  %73 = phi i8 [ %71, %70 ], [ 0, %57 ], [ %69, %63 ]
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %95, !prof !323

75:                                               ; preds = %72
  %76 = load ptr, ptr %37, align 8, !tbaa !321
  %77 = load ptr, ptr @cfun, align 8, !tbaa !98
  %78 = getelementptr inbounds %struct.function, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !119
  %80 = getelementptr inbounds %struct.control_flow_graph, ptr %79, i64 0, i32 8, i64 0
  %81 = load i32, ptr %80, align 4, !tbaa !113
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84, !prof !279

83:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 845, ptr noundef nonnull @.str.1) #16
  br label %84

84:                                               ; preds = %83, %75
  %85 = icmp eq ptr %22, null
  br i1 %85, label %95, label %86, !prof !280

86:                                               ; preds = %84
  %87 = icmp eq ptr %76, null
  br i1 %87, label %95, label %88, !prof !281

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 4, i64 0
  %90 = load ptr, ptr %89, align 8, !tbaa !98
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 4, i64 0
  %92 = load ptr, ptr %91, align 8, !tbaa !98
  %93 = tail call ptr @et_nca(ptr noundef %90, ptr noundef %92) #16
  %94 = load ptr, ptr %93, align 8, !tbaa !232
  br label %95

95:                                               ; preds = %88, %86, %84, %72
  %96 = phi ptr [ %22, %72 ], [ %94, %88 ], [ %76, %84 ], [ %22, %86 ]
  %97 = load ptr, ptr %1, align 8, !tbaa !98
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99, !prof !324

99:                                               ; preds = %95
  %100 = load i32, ptr %97, align 8, !tbaa !175
  br label %101

101:                                              ; preds = %99, %95
  %102 = phi i32 [ %100, %99 ], [ 0, %95 ]
  %103 = icmp ult i32 %21, %102
  br i1 %103, label %105, label %104, !prof !323

104:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %105

105:                                              ; preds = %101, %104
  %106 = add i32 %21, 1
  br label %20, !llvm.loop !325

107:                                              ; preds = %15
  %108 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  br label %109

109:                                              ; preds = %143, %107
  %110 = phi i32 [ 0, %107 ], [ %144, %143 ]
  %111 = phi ptr [ null, %107 ], [ %134, %143 ]
  %112 = load ptr, ptr %108, align 8, !tbaa !98
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = load i32, ptr %112, align 8, !tbaa !175
  br label %116

116:                                              ; preds = %114, %109
  %117 = phi i32 [ %115, %114 ], [ 0, %109 ]
  %118 = icmp eq i32 %117, %110
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = zext i32 %110 to i64
  %121 = getelementptr inbounds %struct.VEC_edge_base, ptr %112, i64 0, i32 2, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !98
  br label %123

123:                                              ; preds = %116, %119
  %124 = phi ptr [ %122, %119 ], [ null, %116 ]
  br i1 %118, label %145, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.edge_def, ptr %124, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !326
  %128 = tail call zeroext i8 @dominated_by_p(i32 noundef %0, ptr noundef %127, ptr noundef %1)
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load ptr, ptr %126, align 8, !tbaa !326
  %132 = tail call ptr @nearest_common_dominator(i32 noundef %0, ptr noundef %111, ptr noundef %131)
  br label %133

133:                                              ; preds = %130, %125
  %134 = phi ptr [ %111, %125 ], [ %132, %130 ]
  %135 = load ptr, ptr %108, align 8, !tbaa !98
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %133
  %138 = load i32, ptr %135, align 8, !tbaa !175
  br label %139

139:                                              ; preds = %137, %133
  %140 = phi i32 [ %138, %137 ], [ 0, %133 ]
  %141 = icmp ult i32 %110, %140
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %143

143:                                              ; preds = %139, %142
  %144 = add i32 %110, 1
  br label %109, !llvm.loop !327

145:                                              ; preds = %123, %36
  %146 = phi ptr [ %22, %36 ], [ %111, %123 ]
  ret ptr %146
}

; Function Attrs: nounwind uwtable
define dso_local void @iterate_fix_dominators(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !328 {
  %4 = add i32 %0, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %7, label %6, !prof !329

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %3, %6
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %10, label %9, !prof !329

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1240, ptr noundef nonnull @.str.1) #16
  br label %10

10:                                               ; preds = %7, %9
  %11 = load ptr, ptr @cfun, align 8, !tbaa !98
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !119
  %14 = zext i32 %4 to i64
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 8, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !113
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !330

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1241, ptr noundef nonnull @.str.1) #16
  br label %19

19:                                               ; preds = %10, %18
  %20 = icmp eq i8 %2, 0
  br i1 %20, label %21, label %37, !prof !330

21:                                               ; preds = %19
  %22 = icmp eq ptr %1, null
  br label %23

23:                                               ; preds = %21, %35
  %24 = phi i32 [ %36, %35 ], [ 0, %21 ]
  br i1 %22, label %32, label %25

25:                                               ; preds = %23
  %26 = load i32, ptr %1, align 8, !tbaa !241
  %27 = icmp ugt i32 %26, %24
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = zext i32 %24 to i64
  %30 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !98
  br label %32

32:                                               ; preds = %23, %25, %28
  %33 = phi ptr [ %31, %28 ], [ null, %25 ], [ null, %23 ]
  %34 = phi i1 [ false, %28 ], [ true, %25 ], [ true, %23 ]
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %33, ptr noundef null)
  %36 = add i32 %24, 1
  br label %23, !llvm.loop !331

37:                                               ; preds = %32, %19
  %38 = icmp eq ptr %1, null
  br label %39

39:                                               ; preds = %236, %37
  %40 = phi i32 [ %237, %236 ], [ 0, %37 ]
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1, i64 0, i32 2, i64 %41
  %43 = zext i32 %40 to i64
  %44 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1, i64 0, i32 2, i64 %43
  br label %45

45:                                               ; preds = %39, %240
  br i1 %38, label %51, label %46, !prof !332

46:                                               ; preds = %45
  %47 = load i32, ptr %1, align 8, !tbaa !241
  %48 = icmp ugt i32 %47, %40
  br i1 %48, label %49, label %51, !prof !333

49:                                               ; preds = %46
  %50 = load ptr, ptr %42, align 8, !tbaa !98
  br label %51

51:                                               ; preds = %49, %46, %45
  %52 = phi ptr [ %50, %49 ], [ null, %46 ], [ null, %45 ]
  %53 = phi i1 [ false, %49 ], [ true, %46 ], [ true, %45 ]
  br i1 %53, label %246, label %54, !prof !334

54:                                               ; preds = %51
  %55 = load ptr, ptr @cfun, align 8, !tbaa !98
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !119
  %58 = load ptr, ptr %57, align 8, !tbaa !130
  %59 = icmp eq ptr %52, %58
  br i1 %59, label %240, label %60, !prof !335

60:                                               ; preds = %54
  %61 = load ptr, ptr %52, align 8, !tbaa !336
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63, !prof !335

63:                                               ; preds = %60
  %64 = load i32, ptr %61, align 8, !tbaa !175
  %65 = icmp eq i32 %64, 1
  %66 = zext i1 %65 to i8
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi i8 [ %66, %63 ], [ 0, %60 ]
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %109, label %70, !prof !337

70:                                               ; preds = %67
  br i1 %62, label %74, label %71, !prof !338

71:                                               ; preds = %70
  %72 = load i32, ptr %61, align 8, !tbaa !175
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %75, label %74, !prof !339

74:                                               ; preds = %71, %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 655, ptr noundef nonnull @.str.1) #16
  br label %75

75:                                               ; preds = %74, %71
  %76 = load ptr, ptr %52, align 8, !tbaa !336
  %77 = getelementptr inbounds %struct.VEC_edge_base, ptr %76, i64 0, i32 2, i64 0
  %78 = load ptr, ptr %77, align 8, !tbaa !98
  %79 = load ptr, ptr %78, align 8, !tbaa !321
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 4, i64 0
  %81 = load ptr, ptr %80, align 8, !tbaa !98
  %82 = load ptr, ptr @cfun, align 8, !tbaa !98
  %83 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !119
  %85 = getelementptr inbounds %struct.control_flow_graph, ptr %84, i64 0, i32 8, i64 0
  %86 = load i32, ptr %85, align 4, !tbaa !113
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89, !prof !235

88:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 721, ptr noundef nonnull @.str.1) #16
  br label %89

89:                                               ; preds = %88, %75
  %90 = getelementptr inbounds %struct.et_node, ptr %81, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !144
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93, !prof !236

93:                                               ; preds = %89
  %94 = load ptr, ptr %91, align 8, !tbaa !232
  %95 = icmp eq ptr %94, %79
  br i1 %95, label %240, label %96, !prof !237

96:                                               ; preds = %93
  tail call void @et_split(ptr noundef %81) #16
  br label %97

97:                                               ; preds = %96, %89
  %98 = icmp eq ptr %79, null
  br i1 %98, label %102, label %99, !prof !238

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 4, i64 0
  %101 = load ptr, ptr %100, align 8, !tbaa !98
  tail call void @et_set_father(ptr noundef %81, ptr noundef %101) #16
  br label %102

102:                                              ; preds = %99, %97
  %103 = load ptr, ptr @cfun, align 8, !tbaa !98
  %104 = getelementptr inbounds %struct.function, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !119
  %106 = getelementptr inbounds %struct.control_flow_graph, ptr %105, i64 0, i32 8, i64 0
  %107 = load i32, ptr %106, align 4, !tbaa !113
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %238, label %240, !prof !239

109:                                              ; preds = %67
  br i1 %20, label %236, label %110, !prof !340

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 4, i64 0
  br label %112

112:                                              ; preds = %110, %197
  %113 = phi i32 [ %198, %197 ], [ 0, %110 ]
  %114 = phi ptr [ %187, %197 ], [ null, %110 ]
  %115 = phi i8 [ %188, %197 ], [ 1, %110 ]
  %116 = load ptr, ptr %52, align 8, !tbaa !98
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118, !prof !341

118:                                              ; preds = %112
  %119 = load i32, ptr %116, align 8, !tbaa !175
  br label %120

120:                                              ; preds = %118, %112
  %121 = phi i32 [ %119, %118 ], [ 0, %112 ]
  %122 = icmp eq i32 %121, %113
  br i1 %122, label %127, label %123, !prof !342

123:                                              ; preds = %120
  %124 = zext i32 %113 to i64
  %125 = getelementptr inbounds %struct.VEC_edge_base, ptr %116, i64 0, i32 2, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !98
  br label %127

127:                                              ; preds = %123, %120
  %128 = phi ptr [ %126, %123 ], [ null, %120 ]
  br i1 %122, label %199, label %129, !prof !342

129:                                              ; preds = %127
  %130 = load ptr, ptr %128, align 8, !tbaa !321
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %130, i64 0, i32 4, i64 0
  %132 = load ptr, ptr %131, align 8, !tbaa !98
  %133 = load ptr, ptr %111, align 8, !tbaa !98
  %134 = load ptr, ptr @cfun, align 8, !tbaa !98
  %135 = getelementptr inbounds %struct.function, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !119
  %137 = getelementptr inbounds %struct.control_flow_graph, ptr %136, i64 0, i32 8, i64 0
  %138 = load i32, ptr %137, align 4, !tbaa !113
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141, !prof !306

140:                                              ; preds = %129
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 957, ptr noundef nonnull @.str.1) #16
  br label %141

141:                                              ; preds = %140, %129
  %142 = load ptr, ptr @cfun, align 8, !tbaa !98
  %143 = getelementptr inbounds %struct.function, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !119
  %145 = getelementptr inbounds %struct.control_flow_graph, ptr %144, i64 0, i32 8, i64 0
  %146 = load i32, ptr %145, align 4, !tbaa !113
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %161, !prof !307

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.et_node, ptr %132, i64 0, i32 1
  %150 = load i32, ptr %149, align 8, !tbaa !308
  %151 = getelementptr inbounds %struct.et_node, ptr %133, i64 0, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !308
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %163, label %154, !prof !309

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.et_node, ptr %132, i64 0, i32 2
  %156 = load i32, ptr %155, align 4, !tbaa !310
  %157 = getelementptr inbounds %struct.et_node, ptr %133, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !310
  %159 = icmp sle i32 %156, %158
  %160 = zext i1 %159 to i8
  br label %163

161:                                              ; preds = %141
  %162 = tail call zeroext i8 @et_below(ptr noundef %132, ptr noundef %133) #16
  br label %163

163:                                              ; preds = %148, %154, %161
  %164 = phi i8 [ %162, %161 ], [ 0, %148 ], [ %160, %154 ]
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %186, !prof !343

166:                                              ; preds = %163
  %167 = icmp eq ptr %114, null
  %168 = load ptr, ptr %128, align 8, !tbaa !321
  br i1 %167, label %186, label %169, !prof !344

169:                                              ; preds = %166
  %170 = load ptr, ptr @cfun, align 8, !tbaa !98
  %171 = getelementptr inbounds %struct.function, ptr %170, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !119
  %173 = getelementptr inbounds %struct.control_flow_graph, ptr %172, i64 0, i32 8, i64 0
  %174 = load i32, ptr %173, align 4, !tbaa !113
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177, !prof !279

176:                                              ; preds = %169
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 845, ptr noundef nonnull @.str.1) #16
  br label %177

177:                                              ; preds = %169, %176
  %178 = icmp eq ptr %168, null
  br i1 %178, label %186, label %179, !prof !281

179:                                              ; preds = %177
  %180 = getelementptr inbounds %struct.basic_block_def, ptr %114, i64 0, i32 4, i64 0
  %181 = load ptr, ptr %180, align 8, !tbaa !98
  %182 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 4, i64 0
  %183 = load ptr, ptr %182, align 8, !tbaa !98
  %184 = tail call ptr @et_nca(ptr noundef %181, ptr noundef %183) #16
  %185 = load ptr, ptr %184, align 8, !tbaa !232
  br label %186

186:                                              ; preds = %166, %179, %177, %163
  %187 = phi ptr [ %114, %163 ], [ %185, %179 ], [ %114, %177 ], [ %168, %166 ]
  %188 = phi i8 [ %115, %163 ], [ 0, %179 ], [ 0, %177 ], [ %115, %166 ]
  %189 = load ptr, ptr %52, align 8, !tbaa !98
  %190 = icmp eq ptr %189, null
  br i1 %190, label %193, label %191, !prof !345

191:                                              ; preds = %186
  %192 = load i32, ptr %189, align 8, !tbaa !175
  br label %193

193:                                              ; preds = %191, %186
  %194 = phi i32 [ %192, %191 ], [ 0, %186 ]
  %195 = icmp ult i32 %113, %194
  br i1 %195, label %197, label %196, !prof !343

196:                                              ; preds = %193
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %197

197:                                              ; preds = %196, %193
  %198 = add i32 %113, 1
  br label %112, !llvm.loop !346

199:                                              ; preds = %127
  %200 = icmp eq ptr %114, null
  br i1 %200, label %201, label %202, !prof !340

201:                                              ; preds = %199
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1109, ptr noundef nonnull @.str.1) #16
  br label %202

202:                                              ; preds = %201, %199
  %203 = icmp eq i8 %115, 0
  br i1 %203, label %204, label %207, !prof !347

204:                                              ; preds = %202
  %205 = tail call ptr @find_edge(ptr noundef %114, ptr noundef nonnull %52) #16
  %206 = icmp eq ptr %205, null
  br i1 %206, label %236, label %207, !prof !348

207:                                              ; preds = %204, %202
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 4, i64 0
  %209 = load ptr, ptr %208, align 8, !tbaa !98
  %210 = load ptr, ptr @cfun, align 8, !tbaa !98
  %211 = getelementptr inbounds %struct.function, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !119
  %213 = getelementptr inbounds %struct.control_flow_graph, ptr %212, i64 0, i32 8, i64 0
  %214 = load i32, ptr %213, align 4, !tbaa !113
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217, !prof !235

216:                                              ; preds = %207
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 721, ptr noundef nonnull @.str.1) #16
  br label %217

217:                                              ; preds = %216, %207
  %218 = getelementptr inbounds %struct.et_node, ptr %209, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !144
  %220 = icmp eq ptr %219, null
  br i1 %220, label %225, label %221, !prof !236

221:                                              ; preds = %217
  %222 = load ptr, ptr %219, align 8, !tbaa !232
  %223 = icmp eq ptr %222, %114
  br i1 %223, label %240, label %224, !prof !237

224:                                              ; preds = %221
  tail call void @et_split(ptr noundef %209) #16
  br label %225

225:                                              ; preds = %224, %217
  br i1 %200, label %229, label %226, !prof !238

226:                                              ; preds = %225
  %227 = getelementptr inbounds %struct.basic_block_def, ptr %114, i64 0, i32 4, i64 0
  %228 = load ptr, ptr %227, align 8, !tbaa !98
  tail call void @et_set_father(ptr noundef %209, ptr noundef %228) #16
  br label %229

229:                                              ; preds = %226, %225
  %230 = load ptr, ptr @cfun, align 8, !tbaa !98
  %231 = getelementptr inbounds %struct.function, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !119
  %233 = getelementptr inbounds %struct.control_flow_graph, ptr %232, i64 0, i32 8, i64 0
  %234 = load i32, ptr %233, align 4, !tbaa !113
  %235 = icmp eq i32 %234, 2
  br i1 %235, label %238, label %240, !prof !239

236:                                              ; preds = %204, %109
  %237 = add i32 %40, 1
  br label %39, !llvm.loop !349

238:                                              ; preds = %229, %102
  %239 = phi ptr [ %106, %102 ], [ %233, %229 ]
  store i32 1, ptr %239, align 4, !tbaa !113
  br label %240

240:                                              ; preds = %238, %229, %221, %102, %93, %54
  %241 = load i32, ptr %1, align 8, !tbaa !241
  %242 = add i32 %241, -1
  store i32 %242, ptr %1, align 8, !tbaa !241
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1, i64 0, i32 2, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !98
  store ptr %245, ptr %44, align 8, !tbaa !98
  br label %45, !llvm.loop !349

246:                                              ; preds = %51
  br i1 %38, label %249, label %247, !prof !330

247:                                              ; preds = %246
  %248 = load i32, ptr %1, align 8, !tbaa !241
  br label %249

249:                                              ; preds = %246, %247
  %250 = phi i32 [ %248, %247 ], [ 0, %246 ]
  switch i32 %250, label %285 [
    i32 0, label %712
    i32 1, label %251
  ], !prof !350

251:                                              ; preds = %249
  %252 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1, i64 0, i32 2, i64 0
  %253 = load ptr, ptr %252, align 8, !tbaa !98
  %254 = tail call ptr @recompute_dominator(i32 noundef 1, ptr noundef %253)
  %255 = getelementptr inbounds %struct.basic_block_def, ptr %253, i64 0, i32 4, i64 0
  %256 = load ptr, ptr %255, align 8, !tbaa !98
  %257 = load ptr, ptr @cfun, align 8, !tbaa !98
  %258 = getelementptr inbounds %struct.function, ptr %257, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !119
  %260 = getelementptr inbounds %struct.control_flow_graph, ptr %259, i64 0, i32 8, i64 0
  %261 = load i32, ptr %260, align 4, !tbaa !113
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %264, !prof !235

263:                                              ; preds = %251
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 721, ptr noundef nonnull @.str.1) #16
  br label %264

264:                                              ; preds = %263, %251
  %265 = getelementptr inbounds %struct.et_node, ptr %256, i64 0, i32 3
  %266 = load ptr, ptr %265, align 8, !tbaa !144
  %267 = icmp eq ptr %266, null
  br i1 %267, label %272, label %268, !prof !236

268:                                              ; preds = %264
  %269 = load ptr, ptr %266, align 8, !tbaa !232
  %270 = icmp eq ptr %269, %254
  br i1 %270, label %712, label %271, !prof !237

271:                                              ; preds = %268
  tail call void @et_split(ptr noundef %256) #16
  br label %272

272:                                              ; preds = %271, %264
  %273 = icmp eq ptr %254, null
  br i1 %273, label %277, label %274, !prof !238

274:                                              ; preds = %272
  %275 = getelementptr inbounds %struct.basic_block_def, ptr %254, i64 0, i32 4, i64 0
  %276 = load ptr, ptr %275, align 8, !tbaa !98
  tail call void @et_set_father(ptr noundef %256, ptr noundef %276) #16
  br label %277

277:                                              ; preds = %274, %272
  %278 = load ptr, ptr @cfun, align 8, !tbaa !98
  %279 = getelementptr inbounds %struct.function, ptr %278, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !119
  %281 = getelementptr inbounds %struct.control_flow_graph, ptr %280, i64 0, i32 8, i64 0
  %282 = load i32, ptr %281, align 4, !tbaa !113
  %283 = icmp eq i32 %282, 2
  br i1 %283, label %284, label %712, !prof !239

284:                                              ; preds = %277
  store i32 1, ptr %281, align 4, !tbaa !113
  br label %712

285:                                              ; preds = %249
  %286 = tail call ptr @pointer_map_create() #16
  br label %287

287:                                              ; preds = %326, %285
  %288 = phi i32 [ 0, %285 ], [ %330, %326 ]
  br i1 %38, label %296, label %289, !prof !351

289:                                              ; preds = %287
  %290 = load i32, ptr %1, align 8, !tbaa !241
  %291 = icmp ugt i32 %290, %288
  br i1 %291, label %292, label %296, !prof !352

292:                                              ; preds = %289
  %293 = zext i32 %288 to i64
  %294 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1, i64 0, i32 2, i64 %293
  %295 = load ptr, ptr %294, align 8, !tbaa !98
  br label %296

296:                                              ; preds = %287, %289, %292
  %297 = phi ptr [ %295, %292 ], [ null, %289 ], [ null, %287 ]
  %298 = phi i1 [ false, %292 ], [ true, %289 ], [ true, %287 ]
  br i1 %298, label %331, label %299, !prof !353

299:                                              ; preds = %296
  br i1 %20, label %326, label %300, !prof !354

300:                                              ; preds = %299
  %301 = getelementptr inbounds %struct.basic_block_def, ptr %297, i64 0, i32 4, i64 0
  %302 = load ptr, ptr %301, align 8, !tbaa !98
  %303 = load ptr, ptr @cfun, align 8, !tbaa !98
  %304 = getelementptr inbounds %struct.function, ptr %303, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !119
  %306 = getelementptr inbounds %struct.control_flow_graph, ptr %305, i64 0, i32 8, i64 0
  %307 = load i32, ptr %306, align 4, !tbaa !113
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %310, !prof !235

309:                                              ; preds = %300
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 721, ptr noundef nonnull @.str.1) #16
  br label %310

310:                                              ; preds = %309, %300
  %311 = getelementptr inbounds %struct.et_node, ptr %302, i64 0, i32 3
  %312 = load ptr, ptr %311, align 8, !tbaa !144
  %313 = icmp eq ptr %312, null
  br i1 %313, label %318, label %314, !prof !236

314:                                              ; preds = %310
  %315 = load ptr, ptr %312, align 8, !tbaa !232
  %316 = icmp eq ptr %315, null
  br i1 %316, label %326, label %317, !prof !237

317:                                              ; preds = %314
  tail call void @et_split(ptr noundef %302) #16
  br label %318

318:                                              ; preds = %317, %310
  %319 = load ptr, ptr @cfun, align 8, !tbaa !98
  %320 = getelementptr inbounds %struct.function, ptr %319, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !119
  %322 = getelementptr inbounds %struct.control_flow_graph, ptr %321, i64 0, i32 8, i64 0
  %323 = load i32, ptr %322, align 4, !tbaa !113
  %324 = icmp eq i32 %323, 2
  br i1 %324, label %325, label %326, !prof !239

325:                                              ; preds = %318
  store i32 1, ptr %322, align 4, !tbaa !113
  br label %326

326:                                              ; preds = %325, %318, %314, %299
  %327 = zext i32 %288 to i64
  %328 = inttoptr i64 %327 to ptr
  %329 = tail call ptr @pointer_map_insert(ptr noundef %286, ptr noundef %297) #16
  store ptr %328, ptr %329, align 8, !tbaa !98
  %330 = add i32 %288, 1
  br label %287, !llvm.loop !355

331:                                              ; preds = %296
  %332 = sext i32 %250 to i64
  %333 = inttoptr i64 %332 to ptr
  %334 = load ptr, ptr @cfun, align 8, !tbaa !98
  %335 = getelementptr inbounds %struct.function, ptr %334, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !119
  %337 = load ptr, ptr %336, align 8, !tbaa !130
  %338 = tail call ptr @pointer_map_insert(ptr noundef %286, ptr noundef %337) #16
  store ptr %333, ptr %338, align 8, !tbaa !98
  %339 = add nsw i32 %250, 1
  %340 = tail call ptr @new_graph(i32 noundef %339) #16
  %341 = load i32, ptr %340, align 8, !tbaa !356
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %343, label %345, !prof !358

343:                                              ; preds = %331
  %344 = getelementptr inbounds %struct.graph, ptr %340, i64 0, i32 1
  br label %347

345:                                              ; preds = %347, %331
  %346 = getelementptr inbounds %struct.graph, ptr %340, i64 0, i32 1
  br label %356

347:                                              ; preds = %343, %347
  %348 = phi i64 [ 0, %343 ], [ %352, %347 ]
  %349 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %350 = load ptr, ptr %344, align 8, !tbaa !359
  %351 = getelementptr inbounds %struct.vertex, ptr %350, i64 %348, i32 4
  store ptr %349, ptr %351, align 8, !tbaa !360
  %352 = add nuw nsw i64 %348, 1
  %353 = load i32, ptr %340, align 8, !tbaa !356
  %354 = sext i32 %353 to i64
  %355 = icmp slt i64 %352, %354
  br i1 %355, label %347, label %345, !prof !362, !llvm.loop !363

356:                                              ; preds = %345, %426
  %357 = phi i32 [ %427, %426 ], [ 0, %345 ]
  br i1 %38, label %365, label %358, !prof !351

358:                                              ; preds = %356
  %359 = load i32, ptr %1, align 8, !tbaa !241
  %360 = icmp ugt i32 %359, %357
  br i1 %360, label %361, label %365, !prof !352

361:                                              ; preds = %358
  %362 = zext i32 %357 to i64
  %363 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1, i64 0, i32 2, i64 %362
  %364 = load ptr, ptr %363, align 8, !tbaa !98
  br label %365

365:                                              ; preds = %356, %358, %361
  %366 = phi ptr [ %364, %361 ], [ null, %358 ], [ null, %356 ]
  %367 = phi i1 [ false, %361 ], [ true, %358 ], [ true, %356 ]
  br i1 %367, label %370, label %368, !prof !353

368:                                              ; preds = %365
  %369 = icmp eq ptr %366, null
  br label %375

370:                                              ; preds = %365
  %371 = load i32, ptr %340, align 8, !tbaa !356
  %372 = icmp sgt i32 %371, 0
  br i1 %372, label %373, label %439, !prof !358

373:                                              ; preds = %370
  %374 = getelementptr inbounds %struct.graph, ptr %340, i64 0, i32 1
  br label %428

375:                                              ; preds = %368, %424
  %376 = phi i32 [ %425, %424 ], [ 0, %368 ]
  br i1 %369, label %377, label %378, !prof !364

377:                                              ; preds = %375
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.1) #16
  br label %378

378:                                              ; preds = %377, %375
  %379 = load ptr, ptr %366, align 8, !tbaa !98
  %380 = icmp eq ptr %379, null
  br i1 %380, label %383, label %381, !prof !364

381:                                              ; preds = %378
  %382 = load i32, ptr %379, align 8, !tbaa !175
  br label %383

383:                                              ; preds = %381, %378
  %384 = phi i32 [ %382, %381 ], [ 0, %378 ]
  %385 = icmp eq i32 %384, %376
  br i1 %385, label %390, label %386, !prof !365

386:                                              ; preds = %383
  %387 = zext i32 %376 to i64
  %388 = getelementptr inbounds %struct.VEC_edge_base, ptr %379, i64 0, i32 2, i64 %387
  %389 = load ptr, ptr %388, align 8, !tbaa !98
  br label %390

390:                                              ; preds = %383, %386
  %391 = phi ptr [ %389, %386 ], [ null, %383 ]
  br i1 %385, label %426, label %392, !prof !365

392:                                              ; preds = %390
  %393 = load ptr, ptr %391, align 8, !tbaa !321
  %394 = getelementptr inbounds %struct.basic_block_def, ptr %393, i64 0, i32 4, i64 0
  %395 = load ptr, ptr %394, align 8, !tbaa !98
  %396 = tail call ptr @et_root(ptr noundef %395) #16
  %397 = load ptr, ptr %396, align 8, !tbaa !232
  %398 = icmp eq ptr %397, %366
  br i1 %398, label %415, label %399, !prof !366

399:                                              ; preds = %392
  %400 = tail call ptr @pointer_map_contains(ptr noundef %286, ptr noundef %397) #16
  %401 = load ptr, ptr %400, align 8, !tbaa !98
  %402 = ptrtoint ptr %401 to i64
  %403 = load ptr, ptr %346, align 8, !tbaa !359
  %404 = getelementptr inbounds %struct.vertex, ptr %403, i64 %402, i32 4
  %405 = load ptr, ptr %404, align 8, !tbaa !360
  %406 = tail call i32 @bitmap_bit_p(ptr noundef %405, i32 noundef %357) #16
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %415, !prof !367

408:                                              ; preds = %399
  %409 = load ptr, ptr %346, align 8, !tbaa !359
  %410 = getelementptr inbounds %struct.vertex, ptr %409, i64 %402, i32 4
  %411 = load ptr, ptr %410, align 8, !tbaa !360
  %412 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %411, i32 noundef %357) #16
  %413 = trunc i64 %402 to i32
  %414 = tail call ptr @add_edge(ptr noundef nonnull %340, i32 noundef %413, i32 noundef %357) #16
  br label %415

415:                                              ; preds = %408, %392, %399
  %416 = load ptr, ptr %366, align 8, !tbaa !98
  %417 = icmp eq ptr %416, null
  br i1 %417, label %420, label %418, !prof !366

418:                                              ; preds = %415
  %419 = load i32, ptr %416, align 8, !tbaa !175
  br label %420

420:                                              ; preds = %418, %415
  %421 = phi i32 [ %419, %418 ], [ 0, %415 ]
  %422 = icmp ult i32 %376, %421
  br i1 %422, label %424, label %423, !prof !368

423:                                              ; preds = %420
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %424

424:                                              ; preds = %420, %423
  %425 = add i32 %376, 1
  br label %375, !llvm.loop !369

426:                                              ; preds = %390
  %427 = add i32 %357, 1
  br label %356, !llvm.loop !370

428:                                              ; preds = %373, %428
  %429 = phi i64 [ 0, %373 ], [ %435, %428 ]
  %430 = load ptr, ptr %374, align 8, !tbaa !359
  %431 = getelementptr inbounds %struct.vertex, ptr %430, i64 %429, i32 4
  %432 = load ptr, ptr %431, align 8, !tbaa !360
  tail call void @bitmap_obstack_free(ptr noundef %432) #16
  %433 = load ptr, ptr %374, align 8, !tbaa !359
  %434 = getelementptr inbounds %struct.vertex, ptr %433, i64 %429, i32 4
  store ptr null, ptr %434, align 8, !tbaa !360
  %435 = add nuw nsw i64 %429, 1
  %436 = load i32, ptr %340, align 8, !tbaa !356
  %437 = sext i32 %436 to i64
  %438 = icmp slt i64 %435, %437
  br i1 %438, label %428, label %439, !prof !362, !llvm.loop !371

439:                                              ; preds = %428, %370
  tail call void @pointer_map_destroy(ptr noundef %286) #16
  %440 = sext i32 %339 to i64
  %441 = shl nsw i64 %440, 2
  %442 = tail call ptr @xmalloc(i64 noundef %441) #16
  %443 = tail call ptr @xmalloc(i64 noundef %441) #16
  %444 = tail call ptr @xmalloc(i64 noundef %441) #16
  tail call void @graphds_domtree(ptr noundef nonnull %340, i32 noundef %250, ptr noundef %444, ptr noundef %442, ptr noundef %443) #16
  br label %445

445:                                              ; preds = %445, %439
  %446 = phi i32 [ %250, %439 ], [ %449, %445 ]
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, ptr %442, i64 %447
  %449 = load i32, ptr %448, align 4, !tbaa !113
  %450 = icmp eq i32 %449, -1
  br i1 %450, label %451, label %445, !prof !372, !llvm.loop !373

451:                                              ; preds = %445
  %452 = icmp eq i32 %446, -1
  br i1 %452, label %711, label %453, !prof !374

453:                                              ; preds = %451
  %454 = getelementptr inbounds %struct.graph, ptr %340, i64 0, i32 1
  br label %455

455:                                              ; preds = %453, %708
  %456 = phi i32 [ %446, %453 ], [ %709, %708 ]
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, ptr %442, i64 %457
  %459 = load i32, ptr %458, align 4, !tbaa !113
  %460 = icmp eq i32 %459, -1
  br i1 %460, label %695, label %461, !prof !375

461:                                              ; preds = %455
  br i1 %38, label %464, label %462, !prof !376

462:                                              ; preds = %461
  %463 = load i32, ptr %1, align 8, !tbaa !241
  br label %464

464:                                              ; preds = %462, %461
  %465 = phi i32 [ %463, %462 ], [ 0, %461 ]
  %466 = icmp eq i32 %465, %456
  br i1 %466, label %467, label %471, !prof !377

467:                                              ; preds = %464
  %468 = load ptr, ptr @cfun, align 8, !tbaa !98
  %469 = getelementptr inbounds %struct.function, ptr %468, i64 0, i32 1
  %470 = load ptr, ptr %469, align 8, !tbaa !119
  br label %474

471:                                              ; preds = %464
  %472 = zext i32 %456 to i64
  %473 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1, i64 0, i32 2, i64 %472
  br label %474

474:                                              ; preds = %471, %467
  %475 = phi ptr [ %470, %467 ], [ %473, %471 ]
  %476 = load ptr, ptr %475, align 8, !tbaa !98
  %477 = sext i32 %459 to i64
  %478 = getelementptr inbounds i32, ptr %443, i64 %477
  %479 = load i32, ptr %478, align 4, !tbaa !113
  %480 = icmp eq i32 %479, -1
  br i1 %480, label %481, label %487, !prof !378

481:                                              ; preds = %474
  %482 = zext i32 %459 to i64
  %483 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1, i64 0, i32 2, i64 %482
  %484 = load ptr, ptr %483, align 8, !tbaa !98
  %485 = tail call ptr @recompute_dominator(i32 noundef 1, ptr noundef %484)
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %484, ptr noundef %485)
  %486 = load i32, ptr %458, align 4, !tbaa !113
  tail call void @identify_vertices(ptr noundef nonnull %340, i32 noundef %456, i32 noundef %486) #16
  br label %695

487:                                              ; preds = %474
  %488 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %489 = load i32, ptr %458, align 4, !tbaa !113
  %490 = icmp eq i32 %489, -1
  br i1 %490, label %498, label %491, !prof !374

491:                                              ; preds = %487, %491
  %492 = phi i32 [ %496, %491 ], [ %489, %487 ]
  %493 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %488, i32 noundef %492) #16
  %494 = sext i32 %492 to i64
  %495 = getelementptr inbounds i32, ptr %443, i64 %494
  %496 = load i32, ptr %495, align 4, !tbaa !113
  %497 = icmp eq i32 %496, -1
  br i1 %497, label %498, label %491, !prof !379, !llvm.loop !380

498:                                              ; preds = %491, %487
  %499 = tail call i32 @graphds_scc(ptr noundef nonnull %340, ptr noundef %488) #16
  tail call void @bitmap_obstack_free(ptr noundef %488) #16
  %500 = sext i32 %499 to i64
  %501 = tail call ptr @xcalloc(i64 noundef %500, i64 noundef 8) #16
  %502 = load i32, ptr %458, align 4, !tbaa !113
  %503 = icmp eq i32 %502, -1
  br i1 %503, label %504, label %508, !prof !374

504:                                              ; preds = %525, %498
  %505 = icmp sgt i32 %499, 0
  br i1 %505, label %506, label %536, !prof !358

506:                                              ; preds = %504
  %507 = zext nneg i32 %499 to i64
  br label %540

508:                                              ; preds = %498, %525
  %509 = phi i32 [ %532, %525 ], [ %502, %498 ]
  %510 = load ptr, ptr %454, align 8, !tbaa !359
  %511 = sext i32 %509 to i64
  %512 = getelementptr inbounds %struct.vertex, ptr %510, i64 %511, i32 2
  %513 = load i32, ptr %512, align 8, !tbaa !381
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds ptr, ptr %501, i64 %514
  %516 = load ptr, ptr %515, align 8, !tbaa !98
  %517 = icmp eq ptr %516, null
  br i1 %517, label %523, label %518, !prof !382

518:                                              ; preds = %508
  %519 = getelementptr inbounds %struct.VEC_int_base, ptr %516, i64 0, i32 1
  %520 = load i32, ptr %519, align 4, !tbaa !383
  %521 = load i32, ptr %516, align 4, !tbaa !385
  %522 = icmp eq i32 %520, %521
  br i1 %522, label %523, label %525

523:                                              ; preds = %518, %508
  %524 = tail call ptr @vec_heap_o_reserve(ptr noundef %516, i32 noundef 1, i64 noundef 8, i64 noundef 4) #16
  store ptr %524, ptr %515, align 8, !tbaa !98
  br label %525

525:                                              ; preds = %523, %518
  %526 = load ptr, ptr %515, align 8, !tbaa !98
  %527 = load i32, ptr %526, align 4, !tbaa !385
  %528 = add i32 %527, 1
  store i32 %528, ptr %526, align 4, !tbaa !385
  %529 = zext i32 %527 to i64
  %530 = getelementptr inbounds %struct.VEC_int_base, ptr %526, i64 0, i32 2, i64 %529
  store i32 %509, ptr %530, align 4, !tbaa !113
  %531 = getelementptr inbounds i32, ptr %443, i64 %511
  %532 = load i32, ptr %531, align 4, !tbaa !113
  %533 = icmp eq i32 %532, -1
  br i1 %533, label %504, label %508, !prof !379, !llvm.loop !386

534:                                              ; preds = %639
  %535 = icmp sgt i64 %541, 1
  br i1 %535, label %540, label %536, !prof !387, !llvm.loop !388

536:                                              ; preds = %534, %504
  %537 = icmp sgt i32 %499, 0
  br i1 %537, label %538, label %686, !prof !358

538:                                              ; preds = %536
  %539 = zext nneg i32 %499 to i64
  br label %677

540:                                              ; preds = %506, %534
  %541 = phi i64 [ %507, %506 ], [ %542, %534 ]
  %542 = add nsw i64 %541, -1
  %543 = getelementptr inbounds ptr, ptr %501, i64 %542
  br label %544

544:                                              ; preds = %540, %621
  %545 = phi ptr [ %566, %621 ], [ null, %540 ]
  %546 = phi i32 [ %622, %621 ], [ 0, %540 ]
  %547 = load ptr, ptr %543, align 8, !tbaa !98
  %548 = icmp eq ptr %547, null
  br i1 %548, label %556, label %549, !prof !389

549:                                              ; preds = %544
  %550 = load i32, ptr %547, align 4, !tbaa !385
  %551 = icmp ugt i32 %550, %546
  br i1 %551, label %552, label %556, !prof !390

552:                                              ; preds = %549
  %553 = zext i32 %546 to i64
  %554 = getelementptr inbounds %struct.VEC_int_base, ptr %547, i64 0, i32 2, i64 %553
  %555 = load i32, ptr %554, align 4, !tbaa !113
  br label %556

556:                                              ; preds = %552, %549, %544
  %557 = phi i32 [ %555, %552 ], [ 0, %549 ], [ 0, %544 ]
  %558 = phi i1 [ false, %552 ], [ true, %549 ], [ true, %544 ]
  br i1 %558, label %623, label %559, !prof !390

559:                                              ; preds = %556
  %560 = zext i32 %557 to i64
  %561 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1, i64 0, i32 2, i64 %560
  %562 = load ptr, ptr %561, align 8, !tbaa !98
  %563 = icmp eq ptr %562, null
  br label %564

564:                                              ; preds = %619, %559
  %565 = phi i32 [ 0, %559 ], [ %620, %619 ]
  %566 = phi ptr [ %545, %559 ], [ %610, %619 ]
  br i1 %563, label %567, label %568, !prof !391

567:                                              ; preds = %564
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.1) #16
  br label %568

568:                                              ; preds = %567, %564
  %569 = load ptr, ptr %562, align 8, !tbaa !98
  %570 = icmp eq ptr %569, null
  br i1 %570, label %573, label %571, !prof !391

571:                                              ; preds = %568
  %572 = load i32, ptr %569, align 8, !tbaa !175
  br label %573

573:                                              ; preds = %571, %568
  %574 = phi i32 [ %572, %571 ], [ 0, %568 ]
  %575 = icmp eq i32 %574, %565
  br i1 %575, label %580, label %576, !prof !392

576:                                              ; preds = %573
  %577 = zext i32 %565 to i64
  %578 = getelementptr inbounds %struct.VEC_edge_base, ptr %569, i64 0, i32 2, i64 %577
  %579 = load ptr, ptr %578, align 8, !tbaa !98
  br label %580

580:                                              ; preds = %576, %573
  %581 = phi ptr [ %579, %576 ], [ null, %573 ]
  br i1 %575, label %621, label %582, !prof !392

582:                                              ; preds = %580
  %583 = load ptr, ptr %581, align 8, !tbaa !321
  %584 = getelementptr inbounds %struct.basic_block_def, ptr %583, i64 0, i32 4, i64 0
  %585 = load ptr, ptr %584, align 8, !tbaa !98
  %586 = tail call ptr @et_root(ptr noundef %585) #16
  %587 = load ptr, ptr %586, align 8, !tbaa !232
  %588 = icmp eq ptr %587, %476
  br i1 %588, label %589, label %609, !prof !393

589:                                              ; preds = %582
  %590 = load ptr, ptr %581, align 8, !tbaa !321
  %591 = load ptr, ptr @cfun, align 8, !tbaa !98
  %592 = getelementptr inbounds %struct.function, ptr %591, i64 0, i32 1
  %593 = load ptr, ptr %592, align 8, !tbaa !119
  %594 = getelementptr inbounds %struct.control_flow_graph, ptr %593, i64 0, i32 8, i64 0
  %595 = load i32, ptr %594, align 4, !tbaa !113
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %598, !prof !279

597:                                              ; preds = %589
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 845, ptr noundef nonnull @.str.1) #16
  br label %598

598:                                              ; preds = %597, %589
  %599 = icmp eq ptr %566, null
  br i1 %599, label %609, label %600, !prof !280

600:                                              ; preds = %598
  %601 = icmp eq ptr %590, null
  br i1 %601, label %609, label %602, !prof !281

602:                                              ; preds = %600
  %603 = getelementptr inbounds %struct.basic_block_def, ptr %566, i64 0, i32 4, i64 0
  %604 = load ptr, ptr %603, align 8, !tbaa !98
  %605 = getelementptr inbounds %struct.basic_block_def, ptr %590, i64 0, i32 4, i64 0
  %606 = load ptr, ptr %605, align 8, !tbaa !98
  %607 = tail call ptr @et_nca(ptr noundef %604, ptr noundef %606) #16
  %608 = load ptr, ptr %607, align 8, !tbaa !232
  br label %609

609:                                              ; preds = %602, %600, %598, %582
  %610 = phi ptr [ %566, %582 ], [ %608, %602 ], [ %590, %598 ], [ %566, %600 ]
  %611 = load ptr, ptr %562, align 8, !tbaa !98
  %612 = icmp eq ptr %611, null
  br i1 %612, label %615, label %613, !prof !394

613:                                              ; preds = %609
  %614 = load i32, ptr %611, align 8, !tbaa !175
  br label %615

615:                                              ; preds = %613, %609
  %616 = phi i32 [ %614, %613 ], [ 0, %609 ]
  %617 = icmp ult i32 %565, %616
  br i1 %617, label %619, label %618, !prof !393

618:                                              ; preds = %615
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %619

619:                                              ; preds = %618, %615
  %620 = add i32 %565, 1
  br label %564, !llvm.loop !395

621:                                              ; preds = %580
  %622 = add i32 %546, 1
  br label %544, !llvm.loop !396

623:                                              ; preds = %556
  %624 = getelementptr inbounds ptr, ptr %501, i64 %542
  %625 = icmp eq ptr %545, null
  br i1 %625, label %626, label %627, !prof !397

626:                                              ; preds = %623
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1195, ptr noundef nonnull @.str.1) #16
  br label %627

627:                                              ; preds = %626, %623
  br label %628

628:                                              ; preds = %675, %627
  %629 = phi i32 [ 0, %627 ], [ %676, %675 ]
  %630 = load ptr, ptr %624, align 8, !tbaa !98
  %631 = icmp eq ptr %630, null
  br i1 %631, label %639, label %632, !prof !389

632:                                              ; preds = %628
  %633 = load i32, ptr %630, align 4, !tbaa !385
  %634 = icmp ugt i32 %633, %629
  br i1 %634, label %635, label %639, !prof !390

635:                                              ; preds = %632
  %636 = zext i32 %629 to i64
  %637 = getelementptr inbounds %struct.VEC_int_base, ptr %630, i64 0, i32 2, i64 %636
  %638 = load i32, ptr %637, align 4, !tbaa !113
  br label %639

639:                                              ; preds = %635, %632, %628
  %640 = phi i32 [ %638, %635 ], [ 0, %632 ], [ 0, %628 ]
  %641 = phi i1 [ false, %635 ], [ true, %632 ], [ true, %628 ]
  br i1 %641, label %534, label %642, !prof !390

642:                                              ; preds = %639
  %643 = zext i32 %640 to i64
  %644 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1, i64 0, i32 2, i64 %643
  %645 = load ptr, ptr %644, align 8, !tbaa !98
  %646 = getelementptr inbounds %struct.basic_block_def, ptr %645, i64 0, i32 4, i64 0
  %647 = load ptr, ptr %646, align 8, !tbaa !98
  %648 = load ptr, ptr @cfun, align 8, !tbaa !98
  %649 = getelementptr inbounds %struct.function, ptr %648, i64 0, i32 1
  %650 = load ptr, ptr %649, align 8, !tbaa !119
  %651 = getelementptr inbounds %struct.control_flow_graph, ptr %650, i64 0, i32 8, i64 0
  %652 = load i32, ptr %651, align 4, !tbaa !113
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %654, label %655, !prof !235

654:                                              ; preds = %642
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 721, ptr noundef nonnull @.str.1) #16
  br label %655

655:                                              ; preds = %654, %642
  %656 = getelementptr inbounds %struct.et_node, ptr %647, i64 0, i32 3
  %657 = load ptr, ptr %656, align 8, !tbaa !144
  %658 = icmp eq ptr %657, null
  br i1 %658, label %663, label %659, !prof !236

659:                                              ; preds = %655
  %660 = load ptr, ptr %657, align 8, !tbaa !232
  %661 = icmp eq ptr %660, %545
  br i1 %661, label %675, label %662, !prof !237

662:                                              ; preds = %659
  tail call void @et_split(ptr noundef %647) #16
  br label %663

663:                                              ; preds = %662, %655
  br i1 %625, label %667, label %664, !prof !238

664:                                              ; preds = %663
  %665 = getelementptr inbounds %struct.basic_block_def, ptr %545, i64 0, i32 4, i64 0
  %666 = load ptr, ptr %665, align 8, !tbaa !98
  tail call void @et_set_father(ptr noundef %647, ptr noundef %666) #16
  br label %667

667:                                              ; preds = %664, %663
  %668 = load ptr, ptr @cfun, align 8, !tbaa !98
  %669 = getelementptr inbounds %struct.function, ptr %668, i64 0, i32 1
  %670 = load ptr, ptr %669, align 8, !tbaa !119
  %671 = getelementptr inbounds %struct.control_flow_graph, ptr %670, i64 0, i32 8, i64 0
  %672 = load i32, ptr %671, align 4, !tbaa !113
  %673 = icmp eq i32 %672, 2
  br i1 %673, label %674, label %675, !prof !239

674:                                              ; preds = %667
  store i32 1, ptr %671, align 4, !tbaa !113
  br label %675

675:                                              ; preds = %659, %667, %674
  %676 = add i32 %629, 1
  br label %628, !llvm.loop !398

677:                                              ; preds = %538, %683
  %678 = phi i64 [ 0, %538 ], [ %684, %683 ]
  %679 = getelementptr inbounds ptr, ptr %501, i64 %678
  %680 = load ptr, ptr %679, align 8, !tbaa !98
  %681 = icmp eq ptr %680, null
  br i1 %681, label %683, label %682, !prof !397

682:                                              ; preds = %677
  tail call void @free(ptr noundef %680)
  br label %683

683:                                              ; preds = %682, %677
  store ptr null, ptr %679, align 8, !tbaa !98
  %684 = add nuw nsw i64 %678, 1
  %685 = icmp eq i64 %684, %539
  br i1 %685, label %686, label %677, !prof !379, !llvm.loop !399

686:                                              ; preds = %683, %536
  tail call void @free(ptr noundef %501)
  %687 = load i32, ptr %458, align 4, !tbaa !113
  %688 = icmp eq i32 %687, -1
  br i1 %688, label %695, label %689, !prof !374

689:                                              ; preds = %686, %689
  %690 = phi i32 [ %693, %689 ], [ %687, %686 ]
  tail call void @identify_vertices(ptr noundef nonnull %340, i32 noundef %456, i32 noundef %690) #16
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds i32, ptr %443, i64 %691
  %693 = load i32, ptr %692, align 4, !tbaa !113
  %694 = icmp eq i32 %693, -1
  br i1 %694, label %695, label %689, !prof !379, !llvm.loop !400

695:                                              ; preds = %689, %686, %455, %481
  %696 = getelementptr inbounds i32, ptr %443, i64 %457
  %697 = load i32, ptr %696, align 4, !tbaa !113
  %698 = icmp eq i32 %697, -1
  br i1 %698, label %705, label %699, !prof !401

699:                                              ; preds = %695, %699
  %700 = phi i32 [ %703, %699 ], [ %697, %695 ]
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i32, ptr %442, i64 %701
  %703 = load i32, ptr %702, align 4, !tbaa !113
  %704 = icmp eq i32 %703, -1
  br i1 %704, label %708, label %699, !prof !402, !llvm.loop !403

705:                                              ; preds = %695
  %706 = getelementptr inbounds i32, ptr %444, i64 %457
  %707 = load i32, ptr %706, align 4, !tbaa !113
  br label %708

708:                                              ; preds = %699, %705
  %709 = phi i32 [ %707, %705 ], [ %700, %699 ]
  %710 = icmp eq i32 %709, -1
  br i1 %710, label %711, label %455, !prof !404, !llvm.loop !405

711:                                              ; preds = %708, %451
  tail call void @free(ptr noundef %442)
  tail call void @free(ptr noundef %443)
  tail call void @free(ptr noundef %444)
  tail call void @free_graph(ptr noundef nonnull %340) #16
  br label %712

712:                                              ; preds = %284, %277, %268, %249, %711
  ret void
}

declare ptr @pointer_map_create() local_unnamed_addr #3

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @new_graph(i32 noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @add_edge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @graphds_domtree(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

declare void @free_graph(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @add_to_dominance_info(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !406 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %6, label %5, !prof !407

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr @cfun, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  %10 = zext i32 %3 to i64
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 8, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !113
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !408

14:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1388, ptr noundef nonnull @.str.1) #16
  br label %15

15:                                               ; preds = %6, %14
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %10
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !407

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1389, ptr noundef nonnull @.str.1) #16
  br label %20

20:                                               ; preds = %15, %19
  %21 = load ptr, ptr @cfun, align 8, !tbaa !98
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !119
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 9, i64 %10
  %25 = load i32, ptr %24, align 4, !tbaa !113
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !113
  %27 = tail call ptr @et_new_tree(ptr noundef %1) #16
  store ptr %27, ptr %16, align 8, !tbaa !98
  %28 = load ptr, ptr @cfun, align 8, !tbaa !98
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !119
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 8, i64 %10
  %32 = load i32, ptr %31, align 4, !tbaa !113
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %35, !prof !409

34:                                               ; preds = %20
  store i32 1, ptr %31, align 4, !tbaa !113
  br label %35

35:                                               ; preds = %34, %20
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @delete_from_dominance_info(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !prof !410 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %6, label %5, !prof !411

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr @cfun, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  %10 = zext i32 %3 to i64
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 8, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !113
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !412

14:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1404, ptr noundef nonnull @.str.1) #16
  br label %15

15:                                               ; preds = %6, %14
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %10
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  tail call void @et_free_tree(ptr noundef %17) #16
  store ptr null, ptr %16, align 8, !tbaa !98
  %18 = load ptr, ptr @cfun, align 8, !tbaa !98
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !119
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 9, i64 %10
  %22 = load i32, ptr %21, align 4, !tbaa !113
  %23 = add i32 %22, -1
  store i32 %23, ptr %21, align 4, !tbaa !113
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 8, i64 %10
  %25 = load i32, ptr %24, align 4, !tbaa !113
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %28, !prof !413

27:                                               ; preds = %15
  store i32 1, ptr %24, align 4, !tbaa !113
  br label %28

28:                                               ; preds = %27, %15
  ret void
}

declare void @et_free_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @dom_info_state(i32 noundef %0) local_unnamed_addr #10 !prof !414 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %5, label %4, !prof !415

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @cfun, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !113
  ret i32 %11
}

; Function Attrs: cold nounwind uwtable
define dso_local void @set_dom_info_availability(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !97 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr @cfun, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  %10 = zext i32 %3 to i64
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 8, i64 %10
  store i32 %1, ptr %11, align 4, !tbaa !113
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_dominance_info(i32 noundef %0) local_unnamed_addr #11 !prof !97 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !98
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !131
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %31, label %11

11:                                               ; preds = %1, %22
  %12 = phi ptr [ %24, %22 ], [ %7, %1 ]
  %13 = tail call ptr @get_immediate_dominator(i32 noundef %0, ptr noundef %12)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @stderr, align 8, !tbaa !98
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !138
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !138
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.4, i32 noundef %18, i32 noundef %20) #17
  br label %22

22:                                               ; preds = %11, %15
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !131
  %25 = load ptr, ptr @cfun, align 8, !tbaa !98
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !119
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !133
  %30 = icmp eq ptr %24, %29
  br i1 %30, label %31, label %11, !llvm.loop !416

31:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_dominance_tree(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !97 {
  tail call fastcc void @debug_dominance_tree_1(i32 noundef %0, ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @debug_dominance_tree_1(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #11 !prof !97 {
  %5 = icmp ne i8 %3, 0
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %10 = load ptr, ptr @stderr, align 8, !tbaa !98
  %11 = tail call i32 @fputc(i32 9, ptr %10)
  %12 = add nuw i32 %9, 1
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %8, !llvm.loop !417

14:                                               ; preds = %8, %4
  %15 = load ptr, ptr @stderr, align 8, !tbaa !98
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !138
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.7, i32 noundef %17) #17
  %19 = add i32 %0, -1
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %22

22:                                               ; preds = %21, %14
  %23 = zext i32 %19 to i64
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !98
  %26 = getelementptr inbounds %struct.et_node, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !240
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %27, align 8, !tbaa !232
  br label %31

31:                                               ; preds = %22, %29
  %32 = phi ptr [ %30, %29 ], [ null, %22 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %55, label %34

34:                                               ; preds = %31
  %35 = add i32 %2, 1
  br label %36

36:                                               ; preds = %34, %52
  %37 = phi i8 [ 0, %34 ], [ 1, %52 ]
  %38 = phi ptr [ %32, %34 ], [ %53, %52 ]
  tail call fastcc void @debug_dominance_tree_1(i32 noundef %0, ptr noundef nonnull %38, i32 noundef %35, i8 noundef zeroext %37)
  br i1 %20, label %40, label %39

39:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %40

40:                                               ; preds = %39, %36
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 4, i64 %23
  %42 = load ptr, ptr %41, align 8, !tbaa !98
  %43 = getelementptr inbounds %struct.et_node, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !243
  %45 = getelementptr inbounds %struct.et_node, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !144
  %47 = getelementptr inbounds %struct.et_node, ptr %46, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !240
  %49 = icmp eq ptr %48, %44
  br i1 %49, label %52, label %50

50:                                               ; preds = %40
  %51 = load ptr, ptr %44, align 8, !tbaa !232
  br label %52

52:                                               ; preds = %40, %50
  %53 = phi ptr [ %51, %50 ], [ null, %40 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %36, !llvm.loop !418

55:                                               ; preds = %31
  %56 = load ptr, ptr @stderr, align 8, !tbaa !98
  %57 = tail call i32 @fputc(i32 10, ptr %56)
  br label %58

58:                                               ; preds = %52, %55
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @calc_dfs_tree_nonrec(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !419 !PGOFuncName !420 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !128
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 4
  %12 = tail call ptr @xmalloc(i64 noundef %11) #16
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %19, label %14, !prof !421

14:                                               ; preds = %3
  %15 = load ptr, ptr @cfun, align 8, !tbaa !98
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !119
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  br label %25

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr @cfun, align 8, !tbaa !98
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !119
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  br label %25

25:                                               ; preds = %19, %14
  %26 = phi ptr [ %20, %19 ], [ %1, %14 ]
  %27 = phi ptr [ %24, %19 ], [ %17, %14 ]
  %28 = phi ptr [ %23, %19 ], [ %18, %14 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !98
  %30 = load ptr, ptr %27, align 8, !tbaa !98
  %31 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %32 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %33 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 11
  %34 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %35 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  %36 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  br label %37

37:                                               ; preds = %171, %25
  %38 = phi ptr [ %26, %25 ], [ %172, %171 ]
  %39 = phi i32 [ undef, %25 ], [ %173, %171 ]
  %40 = phi i32 [ 0, %25 ], [ %174, %171 ]
  %41 = phi i32 [ 0, %25 ], [ %175, %171 ]
  %42 = sext i32 %41 to i64
  br label %43

43:                                               ; preds = %123, %37
  %44 = phi i64 [ %142, %123 ], [ %42, %37 ]
  %45 = phi ptr [ %109, %123 ], [ %38, %37 ]
  %46 = phi i32 [ 0, %123 ], [ %40, %37 ]
  %47 = icmp eq ptr %45, null
  br label %48

48:                                               ; preds = %82, %43
  %49 = phi i32 [ %46, %43 ], [ %83, %82 ]
  br i1 %47, label %50, label %51, !prof !422

50:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.1) #16
  br label %51

51:                                               ; preds = %50, %48
  %52 = load ptr, ptr %45, align 8, !tbaa !98
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !423

54:                                               ; preds = %51
  %55 = load i32, ptr %52, align 8, !tbaa !175
  br label %56

56:                                               ; preds = %51, %54
  %57 = phi i32 [ %55, %54 ], [ 0, %51 ]
  %58 = icmp eq i32 %57, %49
  br i1 %58, label %146, label %59, !prof !424

59:                                               ; preds = %56
  %60 = zext i32 %49 to i64
  %61 = getelementptr inbounds %struct.VEC_edge_base, ptr %52, i64 0, i32 2, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !98
  br i1 %13, label %86, label %63, !prof !425

63:                                               ; preds = %59
  %64 = load ptr, ptr %62, align 8, !tbaa !321
  %65 = icmp eq ptr %64, %30
  br i1 %65, label %74, label %66, !prof !426

66:                                               ; preds = %63
  %67 = load ptr, ptr %31, align 8, !tbaa !136
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 9
  %69 = load i32, ptr %68, align 8, !tbaa !138
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %67, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !113
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74, !prof !427

74:                                               ; preds = %63, %66
  %75 = icmp eq ptr %52, null
  br i1 %75, label %78, label %76, !prof !428

76:                                               ; preds = %74
  %77 = load i32, ptr %52, align 8, !tbaa !175
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %77, %76 ], [ 0, %74 ]
  %80 = icmp ult i32 %49, %79
  br i1 %80, label %82, label %81, !prof !429

81:                                               ; preds = %78, %102
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %82

82:                                               ; preds = %81, %102, %78
  %83 = add i32 %49, 1
  br label %48, !llvm.loop !430

84:                                               ; preds = %66
  %85 = getelementptr inbounds %struct.edge_def, ptr %62, i64 0, i32 1
  br label %107

86:                                               ; preds = %59
  %87 = getelementptr inbounds %struct.edge_def, ptr %62, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !326
  %89 = icmp eq ptr %88, %30
  br i1 %89, label %98, label %90, !prof !431

90:                                               ; preds = %86
  %91 = load ptr, ptr %32, align 8, !tbaa !136
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 9
  %93 = load i32, ptr %92, align 8, !tbaa !138
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, ptr %91, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !113
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %105, label %98, !prof !432

98:                                               ; preds = %86, %90
  %99 = icmp eq ptr %52, null
  br i1 %99, label %102, label %100, !prof !433

100:                                              ; preds = %98
  %101 = load i32, ptr %52, align 8, !tbaa !175
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %101, %100 ], [ 0, %98 ]
  %104 = icmp ult i32 %49, %103
  br i1 %104, label %82, label %81, !prof !434

105:                                              ; preds = %90
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 1
  br label %107

107:                                              ; preds = %105, %84
  %108 = phi ptr [ %64, %84 ], [ %88, %105 ]
  %109 = phi ptr [ %64, %84 ], [ %106, %105 ]
  %110 = phi ptr [ %85, %84 ], [ %62, %105 ]
  %111 = load ptr, ptr %110, align 8, !tbaa !98
  %112 = icmp eq ptr %108, %29
  br i1 %112, label %113, label %114, !prof !435

113:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 294, ptr noundef nonnull @.str.1) #16
  br label %114

114:                                              ; preds = %107, %113
  %115 = icmp eq ptr %111, %29
  br i1 %115, label %118, label %116, !prof !436

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %111, i64 0, i32 9
  br label %123

118:                                              ; preds = %114
  %119 = load ptr, ptr @cfun, align 8, !tbaa !98
  %120 = getelementptr inbounds %struct.function, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !119
  %122 = getelementptr inbounds %struct.control_flow_graph, ptr %121, i64 0, i32 5
  br label %123

123:                                              ; preds = %118, %116
  %124 = phi ptr [ %122, %118 ], [ %117, %116 ]
  %125 = load ptr, ptr %36, align 8, !tbaa !136
  %126 = load i32, ptr %124, align 8, !tbaa !113
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, ptr %125, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !113
  %130 = load i32, ptr %33, align 8, !tbaa !165
  %131 = add i32 %130, 1
  store i32 %131, ptr %33, align 8, !tbaa !165
  %132 = load ptr, ptr %34, align 8, !tbaa !136
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 9
  %134 = load i32, ptr %133, align 8, !tbaa !138
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, ptr %132, i64 %135
  store i32 %130, ptr %136, align 4, !tbaa !113
  %137 = load ptr, ptr %35, align 8, !tbaa !137
  %138 = zext i32 %130 to i64
  %139 = getelementptr inbounds ptr, ptr %137, i64 %138
  store ptr %108, ptr %139, align 8, !tbaa !98
  %140 = load ptr, ptr %0, align 8, !tbaa !153
  %141 = getelementptr inbounds i32, ptr %140, i64 %138
  store i32 %129, ptr %141, align 4, !tbaa !113
  %142 = add i64 %44, 1
  %143 = getelementptr inbounds %struct.edge_iterator, ptr %12, i64 %44
  store i32 %49, ptr %143, align 8, !tbaa.struct !437
  %144 = getelementptr inbounds i8, ptr %143, i64 4
  store i32 %39, ptr %144, align 4, !tbaa.struct !438
  %145 = getelementptr inbounds i8, ptr %143, i64 8
  store ptr %45, ptr %145, align 8, !tbaa.struct !439
  br label %43, !llvm.loop !430

146:                                              ; preds = %56
  %147 = trunc i64 %44 to i32
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %171, label %149, !prof !440

149:                                              ; preds = %146
  %150 = add nsw i32 %147, -1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.edge_iterator, ptr %12, i64 %151
  %153 = load i32, ptr %152, align 8, !tbaa.struct !437
  %154 = getelementptr inbounds i8, ptr %152, i64 4
  %155 = load i32, ptr %154, align 4, !tbaa.struct !438
  %156 = getelementptr inbounds i8, ptr %152, i64 8
  %157 = load ptr, ptr %156, align 8, !tbaa.struct !439
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %160, !prof !435

159:                                              ; preds = %149
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.1) #16
  br label %160

160:                                              ; preds = %159, %149
  %161 = load ptr, ptr %157, align 8, !tbaa !98
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163, !prof !435

163:                                              ; preds = %160
  %164 = load i32, ptr %161, align 8, !tbaa !175
  br label %165

165:                                              ; preds = %163, %160
  %166 = phi i32 [ %164, %163 ], [ 0, %160 ]
  %167 = icmp ult i32 %153, %166
  br i1 %167, label %169, label %168, !prof !441

168:                                              ; preds = %165
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %169

169:                                              ; preds = %165, %168
  %170 = add i32 %153, 1
  br label %171

171:                                              ; preds = %146, %169
  %172 = phi ptr [ %45, %146 ], [ %157, %169 ]
  %173 = phi i32 [ %39, %146 ], [ %155, %169 ]
  %174 = phi i32 [ %49, %146 ], [ %170, %169 ]
  %175 = phi i32 [ 0, %146 ], [ %150, %169 ]
  br i1 %148, label %176, label %37, !prof !440

176:                                              ; preds = %171
  tail call void @free(ptr noundef %12)
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compress(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 !prof !442 !PGOFuncName !443 {
  %3 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !113
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %4, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !113
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %12, !prof !444

12:                                               ; preds = %2
  tail call fastcc void @compress(ptr noundef %0, i32 noundef %7)
  %13 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !156
  %15 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !154
  %17 = getelementptr inbounds i32, ptr %16, i64 %8
  %18 = load i32, ptr %17, align 4, !tbaa !113
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %14, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !113
  %22 = getelementptr inbounds i32, ptr %16, i64 %5
  %23 = load i32, ptr %22, align 4, !tbaa !113
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %14, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !113
  %27 = icmp ult i32 %21, %26
  br i1 %27, label %28, label %29, !prof !445

28:                                               ; preds = %12
  store i32 %18, ptr %22, align 4, !tbaa !113
  br label %29

29:                                               ; preds = %28, %12
  %30 = load ptr, ptr %3, align 8, !tbaa !160
  %31 = getelementptr inbounds i32, ptr %30, i64 %8
  %32 = load i32, ptr %31, align 4, !tbaa !113
  %33 = getelementptr inbounds i32, ptr %30, i64 %5
  store i32 %32, ptr %33, align 4, !tbaa !113
  br label %34

34:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @assign_dfs_numbers(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #13 !prof !446 !PGOFuncName !447 {
  %3 = load i32, ptr %1, align 4, !tbaa !113
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %1, align 4, !tbaa !113
  %5 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !308
  %6 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !240
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9, !prof !448

9:                                                ; preds = %2
  tail call fastcc void @assign_dfs_numbers(ptr noundef nonnull %7, ptr noundef nonnull %1)
  %10 = load ptr, ptr %6, align 8, !tbaa !240
  %11 = getelementptr inbounds %struct.et_node, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !243
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %20, label %14, !prof !449

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %9 ]
  tail call fastcc void @assign_dfs_numbers(ptr noundef %15, ptr noundef nonnull %1)
  %16 = getelementptr inbounds %struct.et_node, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !243
  %18 = load ptr, ptr %6, align 8, !tbaa !240
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %14, !prof !450, !llvm.loop !451

20:                                               ; preds = %14, %9, %2
  %21 = load i32, ptr %1, align 4, !tbaa !113
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %1, align 4, !tbaa !113
  %23 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 2
  store i32 %21, ptr %23, align 4, !tbaa !310
  ret void
}

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @et_root(ptr noundef) local_unnamed_addr #3

declare void @identify_vertices(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @graphds_scc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

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
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!96}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!35 = !{ptr @calculate_dominance_info, ptr @et_new_tree, i64 5525582}
!36 = !{ptr @calculate_dominance_info, ptr @init_dom_info, i64 1026}
!37 = !{ptr @calculate_dominance_info, ptr @calc_dfs_tree, i64 1026}
!38 = !{ptr @calculate_dominance_info, ptr @calc_idoms, i64 1026}
!39 = !{ptr @calculate_dominance_info, ptr @et_set_father, i64 5523530}
!40 = !{ptr @calculate_dominance_info, ptr @free_dom_info, i64 1026}
!41 = !{ptr @calculate_dominance_info, ptr @assign_dfs_numbers, i64 2744}
!42 = !{ptr @init_dom_info, ptr @xcalloc, i64 8208}
!43 = !{ptr @init_dom_info, ptr @xmalloc, i64 3078}
!44 = !{ptr @init_dom_info, ptr @bitmap_obstack_alloc_stat, i64 498}
!45 = !{ptr @calc_dfs_tree, ptr @calc_dfs_tree_nonrec, i64 1569}
!46 = !{ptr @calc_dfs_tree, ptr @bitmap_set_bit, i64 543}
!47 = !{ptr @calc_idoms, ptr @bitmap_bit_p, i64 2464333}
!48 = !{ptr @calc_idoms, ptr @compress, i64 2423029}
!49 = !{ptr @free_dom_info, ptr @free, i64 11286}
!50 = !{ptr @free_dom_info, ptr @bitmap_obstack_free, i64 1026}
!51 = !{ptr @free_dominance_info, ptr @et_free_tree_force, i64 5205916}
!52 = !{ptr @free_dominance_info, ptr @et_free_pools, i64 1026}
!53 = !{ptr @set_immediate_dominator, ptr @et_split, i64 5540}
!54 = !{ptr @set_immediate_dominator, ptr @et_set_father, i64 15313}
!55 = !{ptr @get_all_dominated_blocks, ptr @vec_heap_p_reserve, i64 2843}
!56 = !{ptr @redirect_immediate_dominators, ptr @et_split, i64 3211}
!57 = !{ptr @redirect_immediate_dominators, ptr @et_set_father, i64 3211}
!58 = !{ptr @nearest_common_dominator, ptr @et_nca, i64 261969}
!59 = !{ptr @nearest_common_dominator_for_set, ptr @bitmap_first_set_bit, i64 90305}
!60 = !{ptr @nearest_common_dominator_for_set, ptr @et_nca, i64 552327}
!61 = !{ptr @dominated_by_p, ptr @et_below, i64 1384105}
!62 = !{ptr @recompute_dominator, ptr @et_below, i64 70834}
!63 = !{ptr @recompute_dominator, ptr @et_nca, i64 475343}
!64 = !{ptr @iterate_fix_dominators, ptr @et_split, i64 768}
!65 = !{ptr @iterate_fix_dominators, ptr @et_set_father, i64 2087}
!66 = !{ptr @iterate_fix_dominators, ptr @et_below, i64 154078}
!67 = !{ptr @iterate_fix_dominators, ptr @et_nca, i64 1590044}
!68 = !{ptr @iterate_fix_dominators, ptr @find_edge, i64 1170}
!69 = !{ptr @iterate_fix_dominators, ptr @recompute_dominator, i64 189}
!70 = !{ptr @iterate_fix_dominators, ptr @pointer_map_create, i64 236}
!71 = !{ptr @iterate_fix_dominators, ptr @pointer_map_insert, i64 903}
!72 = !{ptr @iterate_fix_dominators, ptr @new_graph, i64 236}
!73 = !{ptr @iterate_fix_dominators, ptr @bitmap_obstack_alloc_stat, i64 1139}
!74 = !{ptr @iterate_fix_dominators, ptr @et_root, i64 1114230}
!75 = !{ptr @iterate_fix_dominators, ptr @pointer_map_contains, i64 557122}
!76 = !{ptr @iterate_fix_dominators, ptr @bitmap_bit_p, i64 557122}
!77 = !{ptr @iterate_fix_dominators, ptr @bitmap_set_bit, i64 1793}
!78 = !{ptr @iterate_fix_dominators, ptr @add_edge, i64 1133}
!79 = !{ptr @iterate_fix_dominators, ptr @bitmap_obstack_free, i64 1139}
!80 = !{ptr @iterate_fix_dominators, ptr @pointer_map_destroy, i64 236}
!81 = !{ptr @iterate_fix_dominators, ptr @xmalloc, i64 708}
!82 = !{ptr @iterate_fix_dominators, ptr @graphds_domtree, i64 236}
!83 = !{ptr @iterate_fix_dominators, ptr @set_immediate_dominator, i64 7}
!84 = !{ptr @iterate_fix_dominators, ptr @identify_vertices, i64 667}
!85 = !{ptr @iterate_fix_dominators, ptr @graphds_scc, i64 236}
!86 = !{ptr @iterate_fix_dominators, ptr @xcalloc, i64 236}
!87 = !{ptr @iterate_fix_dominators, ptr @vec_heap_o_reserve, i64 660}
!88 = !{ptr @iterate_fix_dominators, ptr @free, i64 1604}
!89 = !{ptr @iterate_fix_dominators, ptr @free_graph, i64 236}
!90 = !{ptr @add_to_dominance_info, ptr @et_new_tree, i64 13049}
!91 = !{ptr @delete_from_dominance_info, ptr @et_free_tree, i64 332707}
!92 = !{ptr @calc_dfs_tree_nonrec, ptr @xmalloc, i64 1569}
!93 = !{ptr @calc_dfs_tree_nonrec, ptr @free, i64 1569}
!94 = !{ptr @compress, ptr @compress, i64 3226452}
!95 = !{ptr @assign_dfs_numbers, ptr @assign_dfs_numbers, i64 7681851}
!96 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!97 = !{!"function_entry_count", i64 0}
!98 = !{!99, !99, i64 0}
!99 = !{!"any pointer", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!103, !99, i64 8}
!103 = !{!"_IO_FILE", !104, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !99, i64 64, !99, i64 72, !99, i64 80, !99, i64 88, !99, i64 96, !99, i64 104, !104, i64 112, !104, i64 116, !105, i64 120, !106, i64 128, !100, i64 130, !100, i64 131, !99, i64 136, !105, i64 144, !99, i64 152, !99, i64 160, !99, i64 168, !99, i64 176, !105, i64 184, !104, i64 192, !100, i64 196}
!104 = !{!"int", !100, i64 0}
!105 = !{!"long", !100, i64 0}
!106 = !{!"short", !100, i64 0}
!107 = !{!103, !99, i64 16}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{!100, !100, i64 0}
!110 = !{!103, !99, i64 40}
!111 = !{!103, !99, i64 48}
!112 = !{!103, !104, i64 0}
!113 = !{!104, !104, i64 0}
!114 = distinct !{!114, !115, !116}
!115 = !{!"llvm.loop.mustprogress"}
!116 = !{!"llvm.loop.unroll.disable"}
!117 = !{!"function_entry_count", i64 2702}
!118 = !{!"branch_weights", i32 2702, i32 0}
!119 = !{!120, !99, i64 8}
!120 = !{!"function", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !99, i64 64, !99, i64 72, !99, i64 80, !99, i64 88, !99, i64 96, !104, i64 104, !104, i64 108, !104, i64 112, !104, i64 116, !104, i64 120, !104, i64 124, !99, i64 128, !104, i64 136, !104, i64 137, !104, i64 138, !104, i64 138, !104, i64 138, !104, i64 138, !104, i64 138, !104, i64 138, !104, i64 138, !104, i64 139, !104, i64 139, !104, i64 139, !104, i64 139, !104, i64 139, !104, i64 139, !104, i64 139}
!121 = !{!"branch_weights", i32 1330, i32 1372}
!122 = !{!"branch_weights", i32 1372, i32 0}
!123 = !{!"branch_weights", i32 1026, i32 346}
!124 = !{!"branch_weights", i32 1026, i32 0}
!125 = !{!"branch_weights", i32 1, i32 1025}
!126 = !{!"branch_weights", i32 1025, i32 5524553}
!127 = distinct !{!127, !115, !116}
!128 = !{!129, !104, i64 24}
!129 = !{!"control_flow_graph", !99, i64 0, !99, i64 8, !99, i64 16, !104, i64 24, !104, i64 28, !104, i64 32, !99, i64 40, !104, i64 48, !100, i64 52, !100, i64 60, !104, i64 68, !104, i64 72}
!130 = !{!129, !99, i64 0}
!131 = !{!132, !99, i64 56}
!132 = !{!"basic_block_def", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !100, i64 32, !99, i64 48, !99, i64 56, !100, i64 64, !105, i64 72, !104, i64 80, !104, i64 84, !104, i64 88, !104, i64 92, !104, i64 96}
!133 = !{!129, !99, i64 8}
!134 = !{!135, !99, i64 40}
!135 = !{!"dom_info", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !99, i64 64, !99, i64 72, !99, i64 80, !104, i64 88, !104, i64 92, !99, i64 96}
!136 = !{!135, !99, i64 72}
!137 = !{!135, !99, i64 80}
!138 = !{!132, !104, i64 80}
!139 = !{!"branch_weights", i32 0, i32 5523526}
!140 = !{!"branch_weights", i32 1025, i32 5522501}
!141 = distinct !{!141, !115, !116}
!142 = !{!"branch_weights", i32 0, i32 1372}
!143 = !{!"branch_weights", i32 1, i32 1371}
!144 = !{!145, !99, i64 16}
!145 = !{!"et_node", !99, i64 0, !104, i64 8, !104, i64 12, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56}
!146 = !{!"branch_weights", i32 2744, i32 7681851}
!147 = !{!"branch_weights", i32 1371, i32 7683224}
!148 = distinct !{!148, !115, !116}
!149 = !{!"function_entry_count", i64 2476968}
!150 = !{!"branch_weights", i32 2476968, i32 0}
!151 = !{!"function_entry_count", i64 1026}
!152 = !{!"dominance.c;init_dom_info"}
!153 = !{!135, !99, i64 0}
!154 = !{!135, !99, i64 16}
!155 = distinct !{!155, !115, !116}
!156 = !{!135, !99, i64 8}
!157 = distinct !{!157, !115, !116}
!158 = !{!135, !99, i64 24}
!159 = !{!135, !99, i64 32}
!160 = !{!135, !99, i64 48}
!161 = !{!135, !99, i64 56}
!162 = distinct !{!162, !115, !116}
!163 = !{!135, !99, i64 64}
!164 = !{!129, !104, i64 32}
!165 = !{!135, !104, i64 88}
!166 = !{!135, !104, i64 92}
!167 = !{!"branch_weights", i32 0, i32 528, i32 498}
!168 = !{!135, !99, i64 96}
!169 = !{!"dominance.c;calc_dfs_tree"}
!170 = !{!"branch_weights", i32 528, i32 498}
!171 = !{!132, !99, i64 48}
!172 = !{!"branch_weights", i32 1, i32 497}
!173 = !{!132, !99, i64 8}
!174 = !{!"branch_weights", i32 61, i32 2464270}
!175 = !{!176, !104, i64 0}
!176 = !{!"VEC_edge_base", !104, i64 0, !104, i64 4, !100, i64 8}
!177 = !{!"branch_weights", i32 543, i32 2463788}
!178 = !{!"branch_weights", i32 2, i32 2463786}
!179 = !{!"branch_weights", i32 497, i32 2463834}
!180 = distinct !{!180, !115, !116}
!181 = !{!"branch_weights", i32 496, i32 2}
!182 = !{!"branch_weights", i32 1, i32 127}
!183 = !{!"branch_weights", i32 0, i32 622}
!184 = !{!"branch_weights", i32 127, i32 39681}
!185 = distinct !{!185, !115, !116}
!186 = !{!"dominance.c;calc_idoms"}
!187 = !{!"branch_weights", i32 1025, i32 1}
!188 = !{!"branch_weights", i32 3059195, i32 2464331}
!189 = !{!"branch_weights", i32 2463788, i32 543}
!190 = !{!"branch_weights", i32 0, i32 15449560}
!191 = !{!"loop_header_weight", i64 15449560}
!192 = !{!"branch_weights", i32 61, i32 15449499}
!193 = !{!"branch_weights", i32 5523526, i32 9926034}
!194 = !{!"branch_weights", i32 5562004, i32 4364030}
!195 = !{!"branch_weights", i32 0, i32 9926034}
!196 = !{!"branch_weights", i32 9926034, i32 0}
!197 = !{!"branch_weights", i32 1316, i32 9924718}
!198 = !{!"loop_header_weight", i64 1859}
!199 = !{!"branch_weights", i32 3226071, i32 6700506}
!200 = !{!"branch_weights", i32 80672, i32 3145399}
!201 = !{!"branch_weights", i32 1847141, i32 1298258}
!202 = !{!"branch_weights", i32 760169, i32 2385230}
!203 = distinct !{!203, !115, !116}
!204 = !{!"branch_weights", i32 2408511, i32 3115015}
!205 = !{!"branch_weights", i32 1624202, i32 784309}
!206 = !{!"branch_weights", i32 0, i32 2408511}
!207 = distinct !{!207, !115, !116}
!208 = !{!"branch_weights", i32 3302105, i32 2221421}
!209 = !{!"branch_weights", i32 2409589, i32 3113937}
!210 = !{!"branch_weights", i32 3113937, i32 0}
!211 = distinct !{!211, !115, !116}
!212 = !{!"branch_weights", i32 1, i32 5523525}
!213 = !{!"branch_weights", i32 1229286, i32 4294240}
!214 = !{!"branch_weights", i32 3169471, i32 1124769}
!215 = !{!"branch_weights", i32 167161, i32 4127079}
!216 = !{!"branch_weights", i32 207915, i32 5315611}
!217 = !{!"branch_weights", i32 5523525, i32 1}
!218 = distinct !{!218, !115, !116}
!219 = distinct !{!219, !115, !116}
!220 = !{!"branch_weights", i32 5315611, i32 207915}
!221 = distinct !{!221, !115, !116}
!222 = !{!"dominance.c;free_dom_info"}
!223 = !{!"function_entry_count", i64 39138}
!224 = !{!"branch_weights", i32 39138, i32 0}
!225 = !{!"branch_weights", i32 38112, i32 1026}
!226 = !{!"branch_weights", i32 1025, i32 5204895}
!227 = distinct !{!227, !115, !116}
!228 = !{!"function_entry_count", i64 8350859}
!229 = !{!"branch_weights", i32 8350859, i32 0}
!230 = !{!"branch_weights", i32 0, i32 8350859}
!231 = !{!"branch_weights", i32 176, i32 8350683}
!232 = !{!145, !99, i64 0}
!233 = !{!"function_entry_count", i64 277725}
!234 = !{!"branch_weights", i32 316238, i32 0}
!235 = !{!"branch_weights", i32 0, i32 316238}
!236 = !{!"branch_weights", i32 11795, i32 304443}
!237 = !{!"branch_weights", i32 298135, i32 6308}
!238 = !{!"branch_weights", i32 667, i32 17436}
!239 = !{!"branch_weights", i32 28, i32 18075}
!240 = !{!145, !99, i64 24}
!241 = !{!242, !104, i64 0}
!242 = !{!"VEC_basic_block_base", !104, i64 0, !104, i64 4, !100, i64 8}
!243 = !{!145, !99, i64 40}
!244 = !{!242, !104, i64 4}
!245 = distinct !{!245, !115, !116}
!246 = !{!132, !104, i64 96}
!247 = distinct !{!247, !115, !116}
!248 = distinct !{!248, !115, !116}
!249 = distinct !{!249, !115, !116}
!250 = distinct !{!250, !115, !116}
!251 = !{!"function_entry_count", i64 5820228}
!252 = !{!"branch_weights", i32 5820228, i32 0}
!253 = !{!"branch_weights", i32 2896807, i32 2923421}
!254 = !{!"function_entry_count", i64 5463589}
!255 = !{!"branch_weights", i32 5463589, i32 0}
!256 = !{!"branch_weights", i32 2782367, i32 2681222}
!257 = !{!"function_entry_count", i64 533}
!258 = !{!"branch_weights", i32 1082652, i32 0}
!259 = !{!"branch_weights", i32 424459, i32 658193}
!260 = !{!"branch_weights", i32 533, i32 1082119}
!261 = !{!"branch_weights", i32 0, i32 1082119}
!262 = !{!"branch_weights", i32 2310, i32 1079809}
!263 = !{!"branch_weights", i32 1082119, i32 0}
!264 = !{!"branch_weights", i32 658193, i32 423926}
!265 = distinct !{!265, !115, !116}
!266 = !{!"branch_weights", i32 0, i32 1082652}
!267 = !{!"branch_weights", i32 1082119, i32 533}
!268 = distinct !{!268, !115, !116}
!269 = !{!"function_entry_count", i64 1420}
!270 = !{!"branch_weights", i32 1420, i32 0}
!271 = !{!"branch_weights", i32 0, i32 1420}
!272 = !{!"branch_weights", i32 1205, i32 215}
!273 = !{!"branch_weights", i32 1, i32 214}
!274 = !{!"branch_weights", i32 214, i32 2997}
!275 = distinct !{!275, !115, !116}
!276 = !{!"branch_weights", i32 48, i32 167}
!277 = !{!"function_entry_count", i64 262046}
!278 = !{!"branch_weights", i32 2880227, i32 0}
!279 = !{!"branch_weights", i32 0, i32 2880227}
!280 = !{!"branch_weights", i32 849, i32 2879378}
!281 = !{!"branch_weights", i32 0, i32 2879378}
!282 = !{!"function_entry_count", i64 90305}
!283 = !{!129, !99, i64 16}
!284 = !{!285, !99, i64 0}
!285 = !{!"bitmap_head_def", !99, i64 0, !99, i64 8, !104, i64 16, !99, i64 24}
!286 = !{!"branch_weights", i32 0, i32 90305}
!287 = !{!288, !104, i64 16}
!288 = !{!"bitmap_element_def", !99, i64 0, !99, i64 8, !104, i64 16, !100, i64 24}
!289 = !{!105, !105, i64 0}
!290 = !{!"branch_weights", i32 232231, i32 500869}
!291 = !{!"branch_weights", i32 642794, i32 1}
!292 = !{!"branch_weights", i32 5217469, i32 642794}
!293 = distinct !{!293, !115, !116}
!294 = !{!"branch_weights", i32 1, i32 180034}
!295 = !{!"branch_weights", i32 127839, i32 141926}
!296 = !{!"branch_weights", i32 180034, i32 89731}
!297 = distinct !{!297, !115, !116}
!298 = !{!288, !99, i64 0}
!299 = !{!"branch_weights", i32 90305, i32 89730}
!300 = distinct !{!300, !116}
!301 = !{!"branch_weights", i32 90305, i32 642795}
!302 = !{!"branch_weights", i32 90305, i32 552490}
!303 = distinct !{!303, !115, !116}
!304 = !{!"function_entry_count", i64 9291010}
!305 = !{!"branch_weights", i32 10800763, i32 0}
!306 = !{!"branch_weights", i32 0, i32 10800763}
!307 = !{!"branch_weights", i32 9191746, i32 1609017}
!308 = !{!145, !104, i64 8}
!309 = !{!"branch_weights", i32 4585254, i32 4606492}
!310 = !{!145, !104, i64 12}
!311 = !{!"function_entry_count", i64 957975}
!312 = !{!"branch_weights", i32 957975, i32 0}
!313 = !{!"function_entry_count", i64 584423}
!314 = !{!"branch_weights", i32 584423, i32 0}
!315 = distinct !{!315, !115, !116}
!316 = !{!"function_entry_count", i64 189}
!317 = !{!"branch_weights", i32 189, i32 0}
!318 = !{!"branch_weights", i32 0, i32 189}
!319 = !{!"branch_weights", i32 0, i32 475672}
!320 = !{!"branch_weights", i32 189, i32 475483}
!321 = !{!322, !99, i64 0}
!322 = !{!"edge_def", !99, i64 0, !99, i64 8, !100, i64 16, !99, i64 24, !99, i64 32, !104, i64 40, !104, i64 44, !104, i64 48, !104, i64 52, !105, i64 56}
!323 = !{!"branch_weights", i32 475483, i32 0}
!324 = !{!"branch_weights", i32 0, i32 475483}
!325 = distinct !{!325, !115, !116}
!326 = !{!322, !99, i64 8}
!327 = distinct !{!327, !115, !116}
!328 = !{!"function_entry_count", i64 707}
!329 = !{!"branch_weights", i32 707, i32 0}
!330 = !{!"branch_weights", i32 0, i32 707}
!331 = distinct !{!331, !115, !116}
!332 = !{!"branch_weights", i32 0, i32 38560}
!333 = !{!"branch_weights", i32 37853, i32 707}
!334 = !{!"branch_weights", i32 707, i32 37853}
!335 = !{!"branch_weights", i32 0, i32 37853}
!336 = !{!132, !99, i64 0}
!337 = !{!"branch_weights", i32 1170, i32 36683}
!338 = !{!"branch_weights", i32 0, i32 36683}
!339 = !{!"branch_weights", i32 36683, i32 0}
!340 = !{!"branch_weights", i32 0, i32 1170}
!341 = !{!"branch_weights", i32 0, i32 1035440}
!342 = !{!"branch_weights", i32 1170, i32 1034270}
!343 = !{!"branch_weights", i32 1034270, i32 0}
!344 = !{!"branch_weights", i32 1170, i32 1033100}
!345 = !{!"branch_weights", i32 0, i32 1034270}
!346 = distinct !{!346, !115, !116}
!347 = !{!"branch_weights", i32 1170, i32 0}
!348 = !{!"branch_weights", i32 849, i32 321}
!349 = distinct !{!349, !115, !116}
!350 = !{!"branch_weights", i32 236, i32 289, i32 182}
!351 = !{!"branch_weights", i32 0, i32 903}
!352 = !{!"branch_weights", i32 667, i32 236}
!353 = !{!"branch_weights", i32 236, i32 667}
!354 = !{!"branch_weights", i32 0, i32 667}
!355 = distinct !{!355, !115, !116}
!356 = !{!357, !104, i64 0}
!357 = !{!"graph", !104, i64 0, !99, i64 8, !99, i64 16}
!358 = !{!"branch_weights", i32 235, i32 1}
!359 = !{!357, !99, i64 8}
!360 = !{!361, !99, i64 24}
!361 = !{!"vertex", !99, i64 0, !99, i64 8, !104, i64 16, !104, i64 20, !99, i64 24}
!362 = !{!"branch_weights", i32 668, i32 235}
!363 = distinct !{!363, !115, !116}
!364 = !{!"branch_weights", i32 0, i32 557789}
!365 = !{!"branch_weights", i32 667, i32 557122}
!366 = !{!"branch_weights", i32 0, i32 557122}
!367 = !{!"branch_weights", i32 1133, i32 555989}
!368 = !{!"branch_weights", i32 557122, i32 0}
!369 = distinct !{!369, !115, !116}
!370 = distinct !{!370, !115, !116}
!371 = distinct !{!371, !115, !116}
!372 = !{!"branch_weights", i32 236, i32 243}
!373 = distinct !{!373, !115, !116}
!374 = !{!"branch_weights", i32 1, i32 235}
!375 = !{!"branch_weights", i32 660, i32 243}
!376 = !{!"branch_weights", i32 0, i32 243}
!377 = !{!"branch_weights", i32 236, i32 7}
!378 = !{!"branch_weights", i32 7, i32 236}
!379 = !{!"branch_weights", i32 235, i32 425}
!380 = distinct !{!380, !115, !116}
!381 = !{!361, !104, i64 16}
!382 = !{!"branch_weights", i32 660, i32 0}
!383 = !{!384, !104, i64 4}
!384 = !{!"VEC_int_base", !104, i64 0, !104, i64 4, !100, i64 8}
!385 = !{!384, !104, i64 0}
!386 = distinct !{!386, !115, !116}
!387 = !{!"branch_weights", i32 425, i32 235}
!388 = distinct !{!388, !115, !116}
!389 = !{!"branch_weights", i32 0, i32 1320}
!390 = !{!"branch_weights", i32 660, i32 660}
!391 = !{!"branch_weights", i32 0, i32 557768}
!392 = !{!"branch_weights", i32 660, i32 557108}
!393 = !{!"branch_weights", i32 557108, i32 0}
!394 = !{!"branch_weights", i32 0, i32 557108}
!395 = distinct !{!395, !115, !116}
!396 = distinct !{!396, !115, !116}
!397 = !{!"branch_weights", i32 0, i32 660}
!398 = distinct !{!398, !115, !116}
!399 = distinct !{!399, !115, !116}
!400 = distinct !{!400, !115, !116}
!401 = !{!"branch_weights", i32 479, i32 424}
!402 = !{!"branch_weights", i32 424, i32 0}
!403 = distinct !{!403, !115, !116}
!404 = !{!"branch_weights", i32 235, i32 668}
!405 = distinct !{!405, !115, !116}
!406 = !{!"function_entry_count", i64 13049}
!407 = !{!"branch_weights", i32 13049, i32 0}
!408 = !{!"branch_weights", i32 0, i32 13049}
!409 = !{!"branch_weights", i32 98, i32 12951}
!410 = !{!"function_entry_count", i64 332707}
!411 = !{!"branch_weights", i32 332707, i32 0}
!412 = !{!"branch_weights", i32 0, i32 332707}
!413 = !{!"branch_weights", i32 277, i32 332430}
!414 = !{!"function_entry_count", i64 1085235}
!415 = !{!"branch_weights", i32 1085235, i32 0}
!416 = distinct !{!416, !115, !116}
!417 = distinct !{!417, !115, !116}
!418 = distinct !{!418, !115, !116}
!419 = !{!"function_entry_count", i64 1569}
!420 = !{!"dominance.c;calc_dfs_tree_nonrec"}
!421 = !{!"branch_weights", i32 528, i32 1041}
!422 = !{!"branch_weights", i32 0, i32 15451759}
!423 = !{!"branch_weights", i32 126, i32 15451633}
!424 = !{!"branch_weights", i32 5524552, i32 9927207}
!425 = !{!"branch_weights", i32 5562679, i32 4364528}
!426 = !{!"branch_weights", i32 498, i32 4364030}
!427 = !{!"branch_weights", i32 2463788, i32 1900242}
!428 = !{!"branch_weights", i32 0, i32 1900740}
!429 = !{!"branch_weights", i32 1900740, i32 0}
!430 = distinct !{!430, !115, !116}
!431 = !{!"branch_weights", i32 675, i32 5562004}
!432 = !{!"branch_weights", i32 3059195, i32 2502809}
!433 = !{!"branch_weights", i32 0, i32 2503484}
!434 = !{!"branch_weights", i32 2503484, i32 0}
!435 = !{!"branch_weights", i32 0, i32 5522983}
!436 = !{!"branch_weights", i32 1316, i32 5521667}
!437 = !{i64 0, i64 4, !113, i64 8, i64 8, !98}
!438 = !{i64 4, i64 8, !98}
!439 = !{i64 0, i64 8, !98}
!440 = !{!"branch_weights", i32 1569, i32 5522983}
!441 = !{!"branch_weights", i32 5522983, i32 0}
!442 = !{!"function_entry_count", i64 5649479}
!443 = !{!"dominance.c;compress"}
!444 = !{!"branch_weights", i32 2423027, i32 3226452}
!445 = !{!"branch_weights", i32 2094144, i32 1132308}
!446 = !{!"function_entry_count", i64 7684595}
!447 = !{!"dominance.c;assign_dfs_numbers"}
!448 = !{!"branch_weights", i32 4285000, i32 3399595}
!449 = !{!"branch_weights", i32 1, i32 3399594}
!450 = !{!"branch_weights", i32 3399594, i32 882662}
!451 = distinct !{!451, !115, !116}
