; ModuleID = 'cfgloopmanip.c'
source_filename = "cfgloopmanip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"cfgloopmanip.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mfb_kj_edge = dso_local local_unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Created preheader block for loop %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !48 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !49
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !48 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !49
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !48 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !59

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !53
  %11 = load i8, ptr %3, align 1, !tbaa !60
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !48 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !59

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !53
  %11 = load i8, ptr %3, align 1, !tbaa !60
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !48 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !59

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !53
  %11 = load i8, ptr %3, align 1, !tbaa !60
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !48 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !49
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !48 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !59

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !61
  store i8 %12, ptr %4, align 1, !tbaa !60
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !48 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !59

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !61
  store i8 %12, ptr %4, align 1, !tbaa !60
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !48 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !59

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !61
  store i8 %12, ptr %4, align 1, !tbaa !60
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !48 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !48 {
  %2 = load i32, ptr %0, align 8, !tbaa !63
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !48 {
  %2 = load i32, ptr %0, align 8, !tbaa !63
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !48 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !64
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !48 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !64
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !48 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !48 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !48 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !48 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #15
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
  br i1 %23, label %7, label %24, !llvm.loop !65

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !48 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @remove_path(ptr noundef %0) local_unnamed_addr #9 !prof !48 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !tbaa !60
  %4 = tail call zeroext i8 @can_remove_branch_p(ptr noundef %0) #15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %452, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !68
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  store i8 1, ptr %3, align 1, !tbaa !60
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32, ptr %15, align 8, !tbaa !73
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %12, %17
  %22 = phi i8 [ %20, %17 ], [ 0, %12 ]
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = tail call ptr @split_edge(ptr noundef %0) #15
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %26, align 8, !tbaa !73
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %32, label %31

31:                                               ; preds = %24, %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 655, ptr noundef nonnull @.str.1) #15
  br label %32

32:                                               ; preds = %28, %31
  %33 = load ptr, ptr %25, align 8, !tbaa !71
  %34 = getelementptr inbounds %struct.VEC_edge_base, ptr %33, i64 0, i32 2, i64 0
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  br label %36

36:                                               ; preds = %32, %21
  %37 = phi ptr [ %0, %21 ], [ %35, %32 ]
  %38 = load i8, ptr %3, align 1, !tbaa !60
  %39 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 1
  br label %40

40:                                               ; preds = %144, %36
  %41 = phi i8 [ %78, %144 ], [ %38, %36 ]
  %42 = load ptr, ptr %37, align 8, !tbaa !75
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !76
  %45 = getelementptr inbounds %struct.loop, ptr %44, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !77
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = load i32, ptr %46, align 8, !tbaa !81
  br label %50

50:                                               ; preds = %48, %40
  %51 = phi i32 [ %49, %48 ], [ 0, %40 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = add i32 %51, -1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %46, i64 0, i32 2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !49
  br label %58

58:                                               ; preds = %50, %53
  %59 = phi ptr [ %57, %53 ], [ null, %50 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %148, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.loop, ptr %44, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !83
  %64 = load ptr, ptr %39, align 8, !tbaa !70
  %65 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %63, ptr noundef %64) #15
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %148, label %67

67:                                               ; preds = %61
  %68 = load ptr, ptr %37, align 8, !tbaa !75
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !76
  %71 = getelementptr inbounds %struct.loop, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 0, ptr %2, align 1, !tbaa !60
  %73 = tail call ptr @loop_preheader_edge(ptr noundef %70) #15
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 7
  %75 = load i32, ptr %74, align 8, !tbaa !68
  %76 = and i32 %75, 128
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i8 %41, i8 1
  %79 = tail call ptr @get_loop_body(ptr noundef %70) #15
  %80 = getelementptr inbounds %struct.loop, ptr %70, i64 0, i32 6
  %81 = load i32, ptr %80, align 4, !tbaa !84
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %112, label %83

83:                                               ; preds = %67
  %84 = getelementptr inbounds %struct.loop, ptr %70, i64 0, i32 7
  %85 = zext i32 %81 to i64
  br label %86

86:                                               ; preds = %83, %109
  %87 = phi i64 [ 0, %83 ], [ %110, %109 ]
  %88 = getelementptr inbounds ptr, ptr %79, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !49
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !76
  %92 = icmp eq ptr %91, %70
  br i1 %92, label %93, label %109

93:                                               ; preds = %86
  tail call void @remove_bb_from_loops(ptr noundef %89) #15
  %94 = load ptr, ptr %88, align 8, !tbaa !49
  %95 = load ptr, ptr %84, align 8, !tbaa !77
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %95, align 8, !tbaa !81
  br label %99

99:                                               ; preds = %97, %93
  %100 = phi i32 [ %98, %97 ], [ 0, %93 ]
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = add i32 %100, -1
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %95, i64 0, i32 2, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !49
  br label %107

107:                                              ; preds = %102, %99
  %108 = phi ptr [ %106, %102 ], [ null, %99 ]
  tail call void @add_bb_to_loop(ptr noundef %94, ptr noundef %108) #15
  br label %109

109:                                              ; preds = %107, %86
  %110 = add nuw nsw i64 %87, 1
  %111 = icmp eq i64 %110, %85
  br i1 %111, label %112, label %86, !llvm.loop !85

112:                                              ; preds = %109, %67
  tail call void @free(ptr noundef %79)
  %113 = getelementptr inbounds %struct.loop, ptr %70, i64 0, i32 8
  %114 = load ptr, ptr %113, align 8, !tbaa !86
  %115 = icmp eq ptr %114, null
  br i1 %115, label %136, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.loop, ptr %70, i64 0, i32 7
  br label %118

118:                                              ; preds = %116, %132
  %119 = phi ptr [ %114, %116 ], [ %134, %132 ]
  tail call void @flow_loop_tree_node_remove(ptr noundef nonnull %119) #15
  %120 = load ptr, ptr %117, align 8, !tbaa !77
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = load i32, ptr %120, align 8, !tbaa !81
  br label %124

124:                                              ; preds = %122, %118
  %125 = phi i32 [ %123, %122 ], [ 0, %118 ]
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = add i32 %125, -1
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %120, i64 0, i32 2, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !49
  br label %132

132:                                              ; preds = %127, %124
  %133 = phi ptr [ %131, %127 ], [ null, %124 ]
  tail call void @flow_loop_tree_node_add(ptr noundef %133, ptr noundef nonnull %119) #15
  %134 = load ptr, ptr %113, align 8, !tbaa !86
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %118, !llvm.loop !87

136:                                              ; preds = %132, %112
  tail call void @delete_loop(ptr noundef %70) #15
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !88
  %139 = icmp eq ptr %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = load i32, ptr %138, align 8, !tbaa !73
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %144, label %143

143:                                              ; preds = %140, %136
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %144

144:                                              ; preds = %140, %143
  %145 = load ptr, ptr %137, align 8, !tbaa !88
  %146 = getelementptr inbounds %struct.VEC_edge_base, ptr %145, i64 0, i32 2, i64 0
  %147 = load ptr, ptr %146, align 8, !tbaa !49
  tail call void @remove_edge(ptr noundef %147) #15
  call fastcc void @fix_bb_placements(ptr noundef %72, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  br label %40, !llvm.loop !89

148:                                              ; preds = %58, %61
  store i8 %41, ptr %3, align 1, !tbaa !60
  %149 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !70
  %151 = load ptr, ptr %150, align 8, !tbaa !71
  %152 = icmp eq ptr %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = load i32, ptr %151, align 8, !tbaa !73
  %155 = icmp ult i32 %154, 2
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 75, ptr noundef nonnull @.str.1) #15
  br label %157

157:                                              ; preds = %148, %153, %156
  %158 = load ptr, ptr @cfun, align 8, !tbaa !49
  %159 = getelementptr inbounds %struct.function, ptr %158, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !90
  %161 = getelementptr inbounds %struct.control_flow_graph, ptr %160, i64 0, i32 3
  %162 = load i32, ptr %161, align 8, !tbaa !92
  %163 = sext i32 %162 to i64
  %164 = tail call ptr @xcalloc(i64 noundef %163, i64 noundef 8) #15
  %165 = load ptr, ptr %149, align 8, !tbaa !70
  %166 = load ptr, ptr @cfun, align 8, !tbaa !49
  %167 = getelementptr inbounds %struct.function, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !90
  %169 = getelementptr inbounds %struct.control_flow_graph, ptr %168, i64 0, i32 3
  %170 = load i32, ptr %169, align 8, !tbaa !92
  %171 = tail call i32 @dfs_enumerate_from(ptr noundef %165, i32 noundef 0, ptr noundef nonnull @rpe_enum_p, ptr noundef %164, i32 noundef %170, ptr noundef %165) #15
  %172 = load ptr, ptr @cfun, align 8, !tbaa !49
  %173 = getelementptr inbounds %struct.function, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !90
  %175 = getelementptr inbounds %struct.control_flow_graph, ptr %174, i64 0, i32 3
  %176 = load i32, ptr %175, align 8, !tbaa !92
  %177 = sext i32 %176 to i64
  %178 = tail call ptr @xcalloc(i64 noundef %177, i64 noundef 8) #15
  %179 = load ptr, ptr @cfun, align 8, !tbaa !49
  %180 = getelementptr inbounds %struct.function, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !90
  %182 = getelementptr inbounds %struct.control_flow_graph, ptr %181, i64 0, i32 5
  %183 = load i32, ptr %182, align 8, !tbaa !94
  %184 = tail call ptr @sbitmap_alloc(i32 noundef %183) #15
  tail call void @sbitmap_zero(ptr noundef %184) #15
  %185 = icmp sgt i32 %171, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %157
  %187 = zext nneg i32 %171 to i64
  br label %193

188:                                              ; preds = %215, %157
  %189 = load i8, ptr %3, align 1, !tbaa !60
  %190 = icmp sgt i32 %171, 0
  br i1 %190, label %191, label %306

191:                                              ; preds = %188
  %192 = zext nneg i32 %171 to i64
  br label %226

193:                                              ; preds = %186, %215
  %194 = phi i64 [ 0, %186 ], [ %224, %215 ]
  %195 = getelementptr inbounds ptr, ptr %164, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !49
  %197 = getelementptr inbounds %struct.basic_block_def, ptr %196, i64 0, i32 9
  %198 = load i32, ptr %197, align 8, !tbaa !95
  %199 = load ptr, ptr %184, align 8, !tbaa !96
  %200 = icmp eq ptr %199, null
  br i1 %200, label %215, label %201

201:                                              ; preds = %193
  %202 = lshr i32 %198, 6
  %203 = zext nneg i32 %202 to i64
  %204 = getelementptr inbounds %struct.simple_bitmap_def, ptr %184, i64 0, i32 3, i64 %203
  %205 = load i64, ptr %204, align 8, !tbaa !98
  %206 = and i32 %198, 63
  %207 = zext nneg i32 %206 to i64
  %208 = shl nuw i64 1, %207
  %209 = and i64 %205, %208
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %201
  %212 = getelementptr inbounds i8, ptr %199, i64 %203
  %213 = load i8, ptr %212, align 1, !tbaa !60
  %214 = add i8 %213, 1
  store i8 %214, ptr %212, align 1, !tbaa !60
  br label %215

215:                                              ; preds = %193, %201, %211
  %216 = and i32 %198, 63
  %217 = zext nneg i32 %216 to i64
  %218 = shl nuw i64 1, %217
  %219 = lshr i32 %198, 6
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds %struct.simple_bitmap_def, ptr %184, i64 0, i32 3, i64 %220
  %222 = load i64, ptr %221, align 8, !tbaa !98
  %223 = or i64 %222, %218
  store i64 %223, ptr %221, align 8, !tbaa !98
  %224 = add nuw nsw i64 %194, 1
  %225 = icmp eq i64 %224, %187
  br i1 %225, label %188, label %193, !llvm.loop !99

226:                                              ; preds = %191, %303
  %227 = phi i64 [ 0, %191 ], [ %304, %303 ]
  %228 = phi i32 [ 0, %191 ], [ %236, %303 ]
  %229 = phi i8 [ %189, %191 ], [ %234, %303 ]
  %230 = getelementptr inbounds ptr, ptr %164, i64 %227
  %231 = load ptr, ptr %230, align 8, !tbaa !49
  %232 = getelementptr inbounds %struct.basic_block_def, ptr %231, i64 0, i32 1
  br label %233

233:                                              ; preds = %301, %226
  %234 = phi i8 [ %229, %226 ], [ %291, %301 ]
  %235 = phi i32 [ 0, %226 ], [ %302, %301 ]
  %236 = phi i32 [ %228, %226 ], [ %292, %301 ]
  %237 = load ptr, ptr %232, align 8, !tbaa !49
  %238 = icmp eq ptr %237, null
  br i1 %238, label %241, label %239

239:                                              ; preds = %233
  %240 = load i32, ptr %237, align 8, !tbaa !73
  br label %241

241:                                              ; preds = %239, %233
  %242 = phi i32 [ %240, %239 ], [ 0, %233 ]
  %243 = icmp eq i32 %242, %235
  br i1 %243, label %248, label %244

244:                                              ; preds = %241
  %245 = zext i32 %235 to i64
  %246 = getelementptr inbounds %struct.VEC_edge_base, ptr %237, i64 0, i32 2, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !49
  br label %248

248:                                              ; preds = %241, %244
  %249 = phi ptr [ %247, %244 ], [ null, %241 ]
  br i1 %243, label %303, label %250

250:                                              ; preds = %248
  %251 = getelementptr inbounds %struct.edge_def, ptr %249, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !70
  %253 = load ptr, ptr @cfun, align 8, !tbaa !49
  %254 = getelementptr inbounds %struct.function, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !90
  %256 = getelementptr inbounds %struct.control_flow_graph, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !100
  %258 = icmp eq ptr %252, %257
  br i1 %258, label %290, label %259

259:                                              ; preds = %250
  %260 = getelementptr inbounds %struct.basic_block_def, ptr %252, i64 0, i32 9
  %261 = load i32, ptr %260, align 8, !tbaa !95
  %262 = lshr i32 %261, 6
  %263 = zext nneg i32 %262 to i64
  %264 = getelementptr inbounds %struct.simple_bitmap_def, ptr %184, i64 0, i32 3, i64 %263
  %265 = load i64, ptr %264, align 8, !tbaa !98
  %266 = and i32 %261, 63
  %267 = zext nneg i32 %266 to i64
  %268 = shl nuw i64 1, %267
  %269 = and i64 %268, %265
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %290

271:                                              ; preds = %259
  %272 = load ptr, ptr %184, align 8, !tbaa !96
  %273 = icmp eq ptr %272, null
  br i1 %273, label %278, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds i8, ptr %272, i64 %263
  %276 = load i8, ptr %275, align 1, !tbaa !60
  %277 = add i8 %276, 1
  store i8 %277, ptr %275, align 1, !tbaa !60
  br label %278

278:                                              ; preds = %271, %274
  %279 = load i64, ptr %264, align 8, !tbaa !98
  %280 = or i64 %279, %268
  store i64 %280, ptr %264, align 8, !tbaa !98
  %281 = load ptr, ptr %251, align 8, !tbaa !70
  %282 = add nsw i32 %236, 1
  %283 = sext i32 %236 to i64
  %284 = getelementptr inbounds ptr, ptr %178, i64 %283
  store ptr %281, ptr %284, align 8, !tbaa !49
  %285 = getelementptr inbounds %struct.edge_def, ptr %249, i64 0, i32 7
  %286 = load i32, ptr %285, align 8, !tbaa !68
  %287 = and i32 %286, 128
  %288 = icmp eq i32 %287, 0
  %289 = select i1 %288, i8 %234, i8 1
  br label %290

290:                                              ; preds = %278, %259, %250
  %291 = phi i8 [ %234, %259 ], [ %234, %250 ], [ %289, %278 ]
  %292 = phi i32 [ %236, %259 ], [ %236, %250 ], [ %282, %278 ]
  %293 = load ptr, ptr %232, align 8, !tbaa !49
  %294 = icmp eq ptr %293, null
  br i1 %294, label %297, label %295

295:                                              ; preds = %290
  %296 = load i32, ptr %293, align 8, !tbaa !73
  br label %297

297:                                              ; preds = %295, %290
  %298 = phi i32 [ %296, %295 ], [ 0, %290 ]
  %299 = icmp ult i32 %235, %298
  br i1 %299, label %301, label %300

300:                                              ; preds = %297
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %301

301:                                              ; preds = %297, %300
  %302 = add i32 %235, 1
  br label %233, !llvm.loop !101

303:                                              ; preds = %248
  %304 = add nuw nsw i64 %227, 1
  %305 = icmp eq i64 %304, %192
  br i1 %305, label %306, label %226, !llvm.loop !102

306:                                              ; preds = %303, %188
  %307 = phi i8 [ %189, %188 ], [ %234, %303 ]
  %308 = phi i32 [ 0, %188 ], [ %236, %303 ]
  store i8 %307, ptr %3, align 1, !tbaa !60
  %309 = load ptr, ptr %37, align 8, !tbaa !75
  tail call void @remove_branch(ptr noundef nonnull %37) #15
  %310 = icmp sgt i32 %171, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %306
  %312 = zext nneg i32 %171 to i64
  br label %317

313:                                              ; preds = %327, %306
  %314 = icmp sgt i32 %171, 0
  br i1 %314, label %315, label %336

315:                                              ; preds = %313
  %316 = zext nneg i32 %171 to i64
  br label %330

317:                                              ; preds = %311, %327
  %318 = phi i64 [ 0, %311 ], [ %328, %327 ]
  %319 = getelementptr inbounds ptr, ptr %164, i64 %318
  %320 = load ptr, ptr %319, align 8, !tbaa !49
  %321 = getelementptr inbounds %struct.basic_block_def, ptr %320, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !76
  %323 = getelementptr inbounds %struct.loop, ptr %322, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !103
  %325 = icmp eq ptr %324, %320
  br i1 %325, label %326, label %327

326:                                              ; preds = %317
  tail call void @cancel_loop_tree(ptr noundef %322) #15
  br label %327

327:                                              ; preds = %317, %326
  %328 = add nuw nsw i64 %318, 1
  %329 = icmp eq i64 %328, %312
  br i1 %329, label %313, label %317, !llvm.loop !104

330:                                              ; preds = %315, %330
  %331 = phi i64 [ 0, %315 ], [ %334, %330 ]
  %332 = getelementptr inbounds ptr, ptr %164, i64 %331
  %333 = load ptr, ptr %332, align 8, !tbaa !49
  tail call void @delete_basic_block(ptr noundef %333) #15
  %334 = add nuw nsw i64 %331, 1
  %335 = icmp eq i64 %334, %316
  br i1 %335, label %336, label %330, !llvm.loop !105

336:                                              ; preds = %330, %313
  tail call void @free(ptr noundef %164)
  tail call void @sbitmap_zero(ptr noundef %184) #15
  %337 = icmp sgt i32 %308, 0
  br i1 %337, label %338, label %397

338:                                              ; preds = %336
  %339 = zext nneg i32 %308 to i64
  br label %340

340:                                              ; preds = %338, %393
  %341 = phi i64 [ 0, %338 ], [ %395, %393 ]
  %342 = phi ptr [ null, %338 ], [ %394, %393 ]
  %343 = getelementptr inbounds ptr, ptr %178, i64 %341
  %344 = load ptr, ptr %343, align 8, !tbaa !49
  %345 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %344) #15
  %346 = getelementptr inbounds %struct.basic_block_def, ptr %345, i64 0, i32 9
  %347 = load i32, ptr %346, align 8, !tbaa !95
  %348 = lshr i32 %347, 6
  %349 = zext nneg i32 %348 to i64
  %350 = getelementptr inbounds %struct.simple_bitmap_def, ptr %184, i64 0, i32 3, i64 %349
  %351 = load i64, ptr %350, align 8, !tbaa !98
  %352 = and i32 %347, 63
  %353 = zext nneg i32 %352 to i64
  %354 = shl nuw i64 1, %353
  %355 = and i64 %354, %351
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %357, label %393

357:                                              ; preds = %340
  %358 = load ptr, ptr %184, align 8, !tbaa !96
  %359 = icmp eq ptr %358, null
  br i1 %359, label %364, label %360

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %358, i64 %349
  %362 = load i8, ptr %361, align 1, !tbaa !60
  %363 = add i8 %362, 1
  store i8 %363, ptr %361, align 1, !tbaa !60
  br label %364

364:                                              ; preds = %357, %360
  %365 = load i64, ptr %350, align 8, !tbaa !98
  %366 = or i64 %365, %354
  store i64 %366, ptr %350, align 8, !tbaa !98
  %367 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %345) #15
  %368 = icmp eq ptr %367, null
  br i1 %368, label %393, label %369

369:                                              ; preds = %364, %389
  %370 = phi ptr [ %391, %389 ], [ %367, %364 ]
  %371 = phi ptr [ %390, %389 ], [ %342, %364 ]
  %372 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %309, ptr noundef nonnull %370) #15
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %374, label %389

374:                                              ; preds = %369
  %375 = icmp eq ptr %371, null
  br i1 %375, label %381, label %376

376:                                              ; preds = %374
  %377 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %371, i64 0, i32 1
  %378 = load i32, ptr %377, align 4, !tbaa !106
  %379 = load i32, ptr %371, align 8, !tbaa !108
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %383

381:                                              ; preds = %374, %376
  %382 = tail call ptr @vec_heap_p_reserve(ptr noundef %371, i32 noundef 1) #15
  br label %383

383:                                              ; preds = %376, %381
  %384 = phi ptr [ %382, %381 ], [ %371, %376 ]
  %385 = load i32, ptr %384, align 8, !tbaa !108
  %386 = add i32 %385, 1
  store i32 %386, ptr %384, align 8, !tbaa !108
  %387 = zext i32 %385 to i64
  %388 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %384, i64 0, i32 2, i64 %387
  store ptr %370, ptr %388, align 8, !tbaa !49
  br label %389

389:                                              ; preds = %369, %383
  %390 = phi ptr [ %384, %383 ], [ %371, %369 ]
  %391 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %370) #15
  %392 = icmp eq ptr %391, null
  br i1 %392, label %393, label %369, !llvm.loop !109

393:                                              ; preds = %389, %364, %340
  %394 = phi ptr [ %342, %340 ], [ %342, %364 ], [ %390, %389 ]
  %395 = add nuw nsw i64 %341, 1
  %396 = icmp eq i64 %395, %339
  br i1 %396, label %397, label %340, !llvm.loop !110

397:                                              ; preds = %393, %336
  %398 = phi ptr [ null, %336 ], [ %394, %393 ]
  tail call void @free(ptr noundef %184)
  tail call void @iterate_fix_dominators(i32 noundef 1, ptr noundef %398, i8 noundef zeroext 1) #15
  %399 = icmp eq ptr %398, null
  br i1 %399, label %401, label %400

400:                                              ; preds = %397
  tail call void @free(ptr noundef %398)
  br label %401

401:                                              ; preds = %397, %400
  tail call void @free(ptr noundef %178)
  call fastcc void @fix_bb_placements(ptr noundef %309, ptr noundef nonnull %3)
  %402 = getelementptr inbounds %struct.basic_block_def, ptr %309, i64 0, i32 3
  %403 = load ptr, ptr %402, align 8, !tbaa !76
  br label %404

404:                                              ; preds = %437, %401
  %405 = phi ptr [ %403, %401 ], [ %434, %437 ]
  %406 = getelementptr inbounds %struct.loop, ptr %405, i64 0, i32 7
  %407 = load ptr, ptr %406, align 8, !tbaa !77
  %408 = icmp eq ptr %407, null
  br i1 %408, label %411, label %409

409:                                              ; preds = %404
  %410 = load i32, ptr %407, align 8, !tbaa !81
  br label %411

411:                                              ; preds = %409, %404
  %412 = phi i32 [ %410, %409 ], [ 0, %404 ]
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %419, label %414

414:                                              ; preds = %411
  %415 = add i32 %412, -1
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %407, i64 0, i32 2, i64 %416
  %418 = load ptr, ptr %417, align 8, !tbaa !49
  br label %419

419:                                              ; preds = %414, %411
  %420 = phi ptr [ %418, %414 ], [ null, %411 ]
  %421 = icmp eq ptr %420, null
  br i1 %421, label %440, label %422

422:                                              ; preds = %419
  br i1 %408, label %425, label %423

423:                                              ; preds = %422
  %424 = load i32, ptr %407, align 8, !tbaa !81
  br label %425

425:                                              ; preds = %423, %422
  %426 = phi i32 [ %424, %423 ], [ 0, %422 ]
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %433, label %428

428:                                              ; preds = %425
  %429 = add i32 %426, -1
  %430 = zext i32 %429 to i64
  %431 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %407, i64 0, i32 2, i64 %430
  %432 = load ptr, ptr %431, align 8, !tbaa !49
  br label %433

433:                                              ; preds = %428, %425
  %434 = phi ptr [ %432, %428 ], [ null, %425 ]
  %435 = tail call fastcc zeroext i8 @fix_loop_placement(ptr noundef %405), !range !111
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %440, label %437

437:                                              ; preds = %433
  %438 = tail call ptr @loop_preheader_edge(ptr noundef %405) #15
  %439 = load ptr, ptr %438, align 8, !tbaa !75
  call fastcc void @fix_bb_placements(ptr noundef %439, ptr noundef nonnull %3)
  br label %404, !llvm.loop !112

440:                                              ; preds = %419, %433
  %441 = load i8, ptr %3, align 1, !tbaa !60
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %452, label %443

443:                                              ; preds = %440
  %444 = load ptr, ptr @cfun, align 8, !tbaa !49
  %445 = getelementptr inbounds %struct.function, ptr %444, i64 0, i32 4
  %446 = load ptr, ptr %445, align 8, !tbaa !113
  %447 = load i32, ptr %446, align 8, !tbaa !114
  %448 = and i32 %447, 4
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %452, label %450

450:                                              ; preds = %443
  %451 = tail call zeroext i8 @mark_irreducible_loops() #15
  br label %452

452:                                              ; preds = %440, %443, %450, %1
  %453 = phi i8 [ 0, %1 ], [ 1, %450 ], [ 1, %443 ], [ 1, %440 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret i8 %453
}

declare zeroext i8 @can_remove_branch_p(ptr noundef) local_unnamed_addr #3

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare void @remove_branch(ptr noundef) local_unnamed_addr #3

declare void @cancel_loop_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @iterate_fix_dominators(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @fix_bb_placements(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !prof !48 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = load ptr, ptr @cfun, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  %8 = getelementptr inbounds %struct.loops, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = icmp eq ptr %4, %9
  br i1 %10, label %329, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !94
  %16 = tail call ptr @sbitmap_alloc(i32 noundef %15) #15
  tail call void @sbitmap_zero(ptr noundef %16) #15
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !95
  %19 = load ptr, ptr %16, align 8, !tbaa !96
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %11
  %22 = lshr i32 %18, 6
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !98
  %26 = and i32 %18, 63
  %27 = zext nneg i32 %26 to i64
  %28 = shl nuw i64 1, %27
  %29 = and i64 %25, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = getelementptr inbounds i8, ptr %19, i64 %23
  %33 = load i8, ptr %32, align 1, !tbaa !60
  %34 = add i8 %33, 1
  store i8 %34, ptr %32, align 1, !tbaa !60
  br label %35

35:                                               ; preds = %11, %21, %31
  %36 = and i32 %18, 63
  %37 = zext nneg i32 %36 to i64
  %38 = shl nuw i64 1, %37
  %39 = lshr i32 %18, 6
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !98
  %43 = or i64 %42, %38
  store i64 %43, ptr %41, align 8, !tbaa !98
  %44 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !103
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !95
  %48 = load ptr, ptr %16, align 8, !tbaa !96
  %49 = icmp eq ptr %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %35
  %51 = lshr i32 %47, 6
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !98
  %55 = and i32 %47, 63
  %56 = zext nneg i32 %55 to i64
  %57 = shl nuw i64 1, %56
  %58 = and i64 %54, %57
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = getelementptr inbounds i8, ptr %48, i64 %52
  %62 = load i8, ptr %61, align 1, !tbaa !60
  %63 = add i8 %62, 1
  store i8 %63, ptr %61, align 1, !tbaa !60
  br label %64

64:                                               ; preds = %35, %50, %60
  %65 = and i32 %47, 63
  %66 = zext nneg i32 %65 to i64
  %67 = shl nuw i64 1, %66
  %68 = lshr i32 %47, 6
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !98
  %72 = or i64 %71, %67
  store i64 %72, ptr %70, align 8, !tbaa !98
  %73 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 6
  %74 = load i32, ptr %73, align 4, !tbaa !84
  %75 = add i32 %74, 1
  %76 = zext i32 %75 to i64
  %77 = shl nuw nsw i64 %76, 3
  %78 = tail call ptr @xmalloc(i64 noundef %77) #15
  %79 = load i32, ptr %73, align 4, !tbaa !84
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %78, i64 %80
  %82 = getelementptr inbounds ptr, ptr %78, i64 1
  store ptr %0, ptr %78, align 8, !tbaa !49
  br label %83

83:                                               ; preds = %64, %325
  %84 = phi ptr [ %78, %64 ], [ %89, %325 ]
  %85 = phi ptr [ %82, %64 ], [ %326, %325 ]
  %86 = load ptr, ptr %84, align 8, !tbaa !49
  %87 = getelementptr inbounds ptr, ptr %84, i64 1
  %88 = icmp eq ptr %84, %81
  %89 = select i1 %88, ptr %78, ptr %87
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !95
  %92 = load ptr, ptr %16, align 8, !tbaa !96
  %93 = icmp eq ptr %92, null
  br i1 %93, label %108, label %94

94:                                               ; preds = %83
  %95 = lshr i32 %91, 6
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %96
  %98 = load i64, ptr %97, align 8, !tbaa !98
  %99 = and i32 %91, 63
  %100 = zext nneg i32 %99 to i64
  %101 = shl nuw i64 1, %100
  %102 = and i64 %98, %101
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %94
  %105 = getelementptr inbounds i8, ptr %92, i64 %96
  %106 = load i8, ptr %105, align 1, !tbaa !60
  %107 = add i8 %106, -1
  store i8 %107, ptr %105, align 1, !tbaa !60
  br label %108

108:                                              ; preds = %83, %94, %104
  %109 = and i32 %91, 63
  %110 = zext nneg i32 %109 to i64
  %111 = shl nuw i64 1, %110
  %112 = xor i64 %111, -1
  %113 = lshr i32 %91, 6
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !98
  %117 = and i64 %116, %112
  store i64 %117, ptr %115, align 8, !tbaa !98
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !76
  %120 = getelementptr inbounds %struct.loop, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !103
  %122 = icmp eq ptr %121, %86
  br i1 %122, label %123, label %126

123:                                              ; preds = %108
  %124 = tail call fastcc zeroext i8 @fix_loop_placement(ptr noundef %119), !range !111
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %325, label %199, !llvm.loop !117

126:                                              ; preds = %108
  %127 = load ptr, ptr @cfun, align 8, !tbaa !49
  %128 = getelementptr inbounds %struct.function, ptr %127, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !113
  %130 = getelementptr inbounds %struct.loops, ptr %129, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !116
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 1
  br label %133

133:                                              ; preds = %193, %126
  %134 = phi i32 [ 0, %126 ], [ %194, %193 ]
  %135 = phi ptr [ %131, %126 ], [ %184, %193 ]
  %136 = load ptr, ptr %132, align 8, !tbaa !49
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %133
  %139 = load i32, ptr %136, align 8, !tbaa !73
  br label %140

140:                                              ; preds = %138, %133
  %141 = phi i32 [ %139, %138 ], [ 0, %133 ]
  %142 = icmp eq i32 %141, %134
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = zext i32 %134 to i64
  %145 = getelementptr inbounds %struct.VEC_edge_base, ptr %136, i64 0, i32 2, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !49
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi ptr [ %146, %143 ], [ null, %140 ]
  br i1 %142, label %195, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.edge_def, ptr %148, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !70
  %152 = load ptr, ptr @cfun, align 8, !tbaa !49
  %153 = getelementptr inbounds %struct.function, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !90
  %155 = getelementptr inbounds %struct.control_flow_graph, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !100
  %157 = icmp eq ptr %151, %156
  br i1 %157, label %183, label %158

158:                                              ; preds = %149
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %151, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !76
  %161 = getelementptr inbounds %struct.loop, ptr %160, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !103
  %163 = icmp eq ptr %162, %151
  br i1 %163, label %164, label %178

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.loop, ptr %160, i64 0, i32 7
  %166 = load ptr, ptr %165, align 8, !tbaa !77
  %167 = icmp eq ptr %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %164
  %169 = load i32, ptr %166, align 8, !tbaa !81
  br label %170

170:                                              ; preds = %168, %164
  %171 = phi i32 [ %169, %168 ], [ 0, %164 ]
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %170
  %174 = add i32 %171, -1
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %166, i64 0, i32 2, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !49
  br label %178

178:                                              ; preds = %173, %170, %158
  %179 = phi ptr [ %160, %158 ], [ %177, %173 ], [ null, %170 ]
  %180 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %135, ptr noundef %179) #15
  %181 = icmp eq i8 %180, 0
  %182 = select i1 %181, ptr %135, ptr %179
  br label %183

183:                                              ; preds = %178, %149
  %184 = phi ptr [ %135, %149 ], [ %182, %178 ]
  %185 = load ptr, ptr %132, align 8, !tbaa !49
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = load i32, ptr %185, align 8, !tbaa !73
  br label %189

189:                                              ; preds = %187, %183
  %190 = phi i32 [ %188, %187 ], [ 0, %183 ]
  %191 = icmp ult i32 %134, %190
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %193

193:                                              ; preds = %192, %189
  %194 = add i32 %134, 1
  br label %133, !llvm.loop !118

195:                                              ; preds = %147
  %196 = load ptr, ptr %118, align 8, !tbaa !76
  %197 = icmp eq ptr %135, %196
  br i1 %197, label %325, label %198

198:                                              ; preds = %195
  tail call void @remove_bb_from_loops(ptr noundef %86) #15
  tail call void @add_bb_to_loop(ptr noundef %86, ptr noundef %135) #15
  br label %199, !llvm.loop !117

199:                                              ; preds = %198, %123
  %200 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 1
  br label %201

201:                                              ; preds = %233, %199
  %202 = phi i32 [ 0, %199 ], [ %234, %233 ]
  %203 = load ptr, ptr %200, align 8, !tbaa !49
  %204 = icmp eq ptr %203, null
  br i1 %204, label %207, label %205

205:                                              ; preds = %201
  %206 = load i32, ptr %203, align 8, !tbaa !73
  br label %207

207:                                              ; preds = %205, %201
  %208 = phi i32 [ %206, %205 ], [ 0, %201 ]
  %209 = icmp eq i32 %208, %202
  br i1 %209, label %214, label %210

210:                                              ; preds = %207
  %211 = zext i32 %202 to i64
  %212 = getelementptr inbounds %struct.VEC_edge_base, ptr %203, i64 0, i32 2, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !49
  br label %214

214:                                              ; preds = %207, %210
  %215 = phi ptr [ %213, %210 ], [ null, %207 ]
  br i1 %209, label %216, label %218

216:                                              ; preds = %214
  %217 = icmp eq ptr %86, null
  br label %235

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.edge_def, ptr %215, i64 0, i32 7
  %220 = load i32, ptr %219, align 8, !tbaa !68
  %221 = and i32 %220, 128
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %218
  store i8 1, ptr %1, align 1, !tbaa !60
  br label %224

224:                                              ; preds = %223, %218
  %225 = load ptr, ptr %200, align 8, !tbaa !49
  %226 = icmp eq ptr %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %224
  %228 = load i32, ptr %225, align 8, !tbaa !73
  br label %229

229:                                              ; preds = %227, %224
  %230 = phi i32 [ %228, %227 ], [ 0, %224 ]
  %231 = icmp ult i32 %202, %230
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %233

233:                                              ; preds = %229, %232
  %234 = add i32 %202, 1
  br label %201, !llvm.loop !119

235:                                              ; preds = %216, %323
  %236 = phi i32 [ %324, %323 ], [ 0, %216 ]
  %237 = phi ptr [ %314, %323 ], [ %85, %216 ]
  br i1 %217, label %238, label %239

238:                                              ; preds = %235
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.1) #15
  br label %239

239:                                              ; preds = %238, %235
  %240 = load ptr, ptr %86, align 8, !tbaa !49
  %241 = icmp eq ptr %240, null
  br i1 %241, label %244, label %242

242:                                              ; preds = %239
  %243 = load i32, ptr %240, align 8, !tbaa !73
  br label %244

244:                                              ; preds = %242, %239
  %245 = phi i32 [ %243, %242 ], [ 0, %239 ]
  %246 = icmp eq i32 %245, %236
  br i1 %246, label %251, label %247

247:                                              ; preds = %244
  %248 = zext i32 %236 to i64
  %249 = getelementptr inbounds %struct.VEC_edge_base, ptr %240, i64 0, i32 2, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !49
  br label %251

251:                                              ; preds = %244, %247
  %252 = phi ptr [ %250, %247 ], [ null, %244 ]
  br i1 %246, label %325, label %253

253:                                              ; preds = %251
  %254 = load ptr, ptr %252, align 8, !tbaa !75
  %255 = getelementptr inbounds %struct.edge_def, ptr %252, i64 0, i32 7
  %256 = load i32, ptr %255, align 8, !tbaa !68
  %257 = and i32 %256, 128
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %253
  store i8 1, ptr %1, align 1, !tbaa !60
  br label %260

260:                                              ; preds = %259, %253
  %261 = getelementptr inbounds %struct.basic_block_def, ptr %254, i64 0, i32 9
  %262 = load i32, ptr %261, align 8, !tbaa !95
  %263 = lshr i32 %262, 6
  %264 = zext nneg i32 %263 to i64
  %265 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %264
  %266 = load i64, ptr %265, align 8, !tbaa !98
  %267 = and i32 %262, 63
  %268 = zext nneg i32 %267 to i64
  %269 = shl nuw i64 1, %268
  %270 = and i64 %269, %266
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %313

272:                                              ; preds = %260
  %273 = getelementptr inbounds %struct.basic_block_def, ptr %254, i64 0, i32 3
  %274 = load ptr, ptr %273, align 8, !tbaa !76
  %275 = tail call ptr @find_common_loop(ptr noundef %274, ptr noundef %4) #15
  %276 = load ptr, ptr %273, align 8, !tbaa !76
  %277 = icmp eq ptr %276, %4
  %278 = icmp eq ptr %275, %276
  %279 = select i1 %277, i1 true, i1 %278
  br i1 %279, label %283, label %280

280:                                              ; preds = %272
  %281 = getelementptr inbounds %struct.loop, ptr %276, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !103
  br label %287

283:                                              ; preds = %272
  %284 = load ptr, ptr %118, align 8, !tbaa !76
  %285 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %284, ptr noundef %276) #15
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %313, label %287

287:                                              ; preds = %283, %280
  %288 = phi ptr [ %282, %280 ], [ %254, %283 ]
  %289 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 9
  %290 = load i32, ptr %289, align 8, !tbaa !95
  %291 = lshr i32 %290, 6
  %292 = zext nneg i32 %291 to i64
  %293 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %292
  %294 = load i64, ptr %293, align 8, !tbaa !98
  %295 = and i32 %290, 63
  %296 = zext nneg i32 %295 to i64
  %297 = shl nuw i64 1, %296
  %298 = and i64 %297, %294
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %313

300:                                              ; preds = %287
  store ptr %288, ptr %237, align 8, !tbaa !49
  %301 = getelementptr inbounds ptr, ptr %237, i64 1
  %302 = icmp eq ptr %237, %81
  %303 = select i1 %302, ptr %78, ptr %301
  %304 = load ptr, ptr %16, align 8, !tbaa !96
  %305 = icmp eq ptr %304, null
  br i1 %305, label %310, label %306

306:                                              ; preds = %300
  %307 = getelementptr inbounds i8, ptr %304, i64 %292
  %308 = load i8, ptr %307, align 1, !tbaa !60
  %309 = add i8 %308, 1
  store i8 %309, ptr %307, align 1, !tbaa !60
  br label %310

310:                                              ; preds = %300, %306
  %311 = load i64, ptr %293, align 8, !tbaa !98
  %312 = or i64 %311, %297
  store i64 %312, ptr %293, align 8, !tbaa !98
  br label %313

313:                                              ; preds = %283, %310, %260, %287
  %314 = phi ptr [ %303, %310 ], [ %237, %260 ], [ %237, %287 ], [ %237, %283 ]
  %315 = load ptr, ptr %86, align 8, !tbaa !49
  %316 = icmp eq ptr %315, null
  br i1 %316, label %319, label %317

317:                                              ; preds = %313
  %318 = load i32, ptr %315, align 8, !tbaa !73
  br label %319

319:                                              ; preds = %317, %313
  %320 = phi i32 [ %318, %317 ], [ 0, %313 ]
  %321 = icmp ult i32 %236, %320
  br i1 %321, label %323, label %322

322:                                              ; preds = %319
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %323

323:                                              ; preds = %319, %322
  %324 = add i32 %236, 1
  br label %235, !llvm.loop !120

325:                                              ; preds = %251, %195, %123
  %326 = phi ptr [ %85, %123 ], [ %85, %195 ], [ %237, %251 ]
  %327 = icmp eq ptr %89, %326
  br i1 %327, label %328, label %83

328:                                              ; preds = %325
  tail call void @free(ptr noundef %16)
  tail call void @free(ptr noundef %78)
  br label %329

329:                                              ; preds = %2, %328
  ret void
}

declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @add_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !48 {
  tail call fastcc void @place_new_loop(ptr noundef %0)
  tail call void @flow_loop_tree_node_add(ptr noundef %1, ptr noundef %0) #15
  %3 = load ptr, ptr @cfun, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr @xmalloc(i64 noundef %9) #15
  %11 = load ptr, ptr @cfun, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !92
  %16 = tail call i32 @get_loop_body_with_size(ptr noundef %0, ptr noundef %10, i32 noundef %15) #15
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %20 = zext nneg i32 %16 to i64
  br label %25

21:                                               ; preds = %58, %2
  %22 = icmp sgt i32 %16, 0
  br i1 %22, label %23, label %95

23:                                               ; preds = %21
  %24 = zext nneg i32 %16 to i64
  br label %61

25:                                               ; preds = %18, %58
  %26 = phi i64 [ 0, %18 ], [ %59, %58 ]
  %27 = getelementptr inbounds ptr, ptr %10, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  tail call void @remove_bb_from_loops(ptr noundef %28) #15
  %33 = load ptr, ptr %27, align 8, !tbaa !49
  tail call void @add_bb_to_loop(ptr noundef %33, ptr noundef %0) #15
  br label %58

34:                                               ; preds = %25
  %35 = load i32, ptr %19, align 4, !tbaa !84
  %36 = add i32 %35, 1
  store i32 %36, ptr %19, align 4, !tbaa !84
  %37 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !77
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load i32, ptr %38, align 8, !tbaa !81
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi i32 [ %41, %40 ], [ 0, %34 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = add i32 %43, -1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %38, i64 0, i32 2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !49
  br label %50

50:                                               ; preds = %42, %45
  %51 = phi ptr [ %49, %45 ], [ null, %42 ]
  %52 = icmp eq ptr %51, %1
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !103
  %56 = icmp eq ptr %55, %28
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  tail call void @flow_loop_tree_node_remove(ptr noundef %30) #15
  tail call void @flow_loop_tree_node_add(ptr noundef %0, ptr noundef %30) #15
  br label %58

58:                                               ; preds = %50, %53, %57, %32
  %59 = add nuw nsw i64 %26, 1
  %60 = icmp eq i64 %59, %20
  br i1 %60, label %21, label %25, !llvm.loop !121

61:                                               ; preds = %23, %92
  %62 = phi i64 [ 0, %23 ], [ %93, %92 ]
  %63 = getelementptr inbounds ptr, ptr %10, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !49
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 1
  br label %66

66:                                               ; preds = %90, %61
  %67 = phi i32 [ 0, %61 ], [ %91, %90 ]
  %68 = load ptr, ptr %65, align 8, !tbaa !49
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %68, align 8, !tbaa !73
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi i32 [ %71, %70 ], [ 0, %66 ]
  %74 = icmp eq i32 %73, %67
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = zext i32 %67 to i64
  %77 = getelementptr inbounds %struct.VEC_edge_base, ptr %68, i64 0, i32 2, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !49
  br label %79

79:                                               ; preds = %72, %75
  %80 = phi ptr [ %78, %75 ], [ null, %72 ]
  br i1 %74, label %92, label %81

81:                                               ; preds = %79
  tail call void @rescan_loop_exit(ptr noundef %80, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %82 = load ptr, ptr %65, align 8, !tbaa !49
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %82, align 8, !tbaa !73
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i32 [ %85, %84 ], [ 0, %81 ]
  %88 = icmp ult i32 %67, %87
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %90

90:                                               ; preds = %86, %89
  %91 = add i32 %67, 1
  br label %66, !llvm.loop !122

92:                                               ; preds = %79
  %93 = add nuw nsw i64 %62, 1
  %94 = icmp eq i64 %93, %24
  br i1 %94, label %95, label %61, !llvm.loop !123

95:                                               ; preds = %92, %21
  tail call void @free(ptr noundef %10)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @place_new_loop(ptr noundef %0) unnamed_addr #9 !prof !48 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !81
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi i32 [ 0, %1 ], [ %11, %10 ], [ 0, %6 ]
  store i32 %13, ptr %0, align 8, !tbaa !125
  %14 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %15, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !126
  %20 = load i32, ptr %15, align 8, !tbaa !81
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %12, %17
  %23 = tail call ptr @vec_gc_p_reserve(ptr noundef %15, i32 noundef 1) #15
  store ptr %23, ptr %14, align 8, !tbaa !49
  br label %24

24:                                               ; preds = %17, %22
  %25 = load ptr, ptr %14, align 8, !tbaa !49
  %26 = load i32, ptr %25, align 8, !tbaa !81
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8, !tbaa !81
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %25, i64 0, i32 2, i64 %28
  store ptr %0, ptr %29, align 8, !tbaa !49
  ret void
}

declare void @flow_loop_tree_node_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare i32 @get_loop_body_with_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @remove_bb_from_loops(ptr noundef) local_unnamed_addr #3

declare void @add_bb_to_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @flow_loop_tree_node_remove(ptr noundef) local_unnamed_addr #3

declare void @rescan_loop_exit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @scale_loop_frequencies(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !48 {
  %4 = tail call ptr @get_loop_body(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !84
  tail call void @scale_bbs_frequencies_int(ptr noundef %4, i32 noundef %6, i32 noundef %1, i32 noundef %2) #15
  tail call void @free(ptr noundef %4)
  ret void
}

declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

declare void @scale_bbs_frequencies_int(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @create_empty_if_region_on_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !48 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %4 = tail call ptr @split_edge(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !127, !noalias !128
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !60, !noalias !128
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !131, !noalias !128
  br label %15

15:                                               ; preds = %13, %9, %2
  %16 = phi ptr [ %14, %13 ], [ null, %9 ], [ null, %2 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.gimple_seq_d, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !133, !noalias !128
  br label %21

21:                                               ; preds = %15, %18
  %22 = phi ptr [ %20, %18 ], [ null, %15 ]
  store ptr %22, ptr %3, align 8, !tbaa.struct !135
  %23 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %16, ptr %23, align 8, !tbaa.struct !136
  %24 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %4, ptr %24, align 8, !tbaa.struct !137
  %25 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #15
  %26 = call ptr @gimple_build_cond_from_tree(ptr noundef %25, ptr noundef null, ptr noundef null) #15
  %27 = load i32, ptr %5, align 8, !tbaa !127, !noalias !138
  %28 = and i32 %27, 512
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !60, !noalias !138
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !131, !noalias !138
  br label %36

36:                                               ; preds = %34, %30, %21
  %37 = phi ptr [ %35, %34 ], [ null, %30 ], [ null, %21 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.gimple_seq_d, ptr %37, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !133, !noalias !138
  br label %42

42:                                               ; preds = %36, %39
  %43 = phi ptr [ %41, %39 ], [ null, %36 ]
  store ptr %43, ptr %3, align 8, !tbaa.struct !135
  store ptr %37, ptr %23, align 8, !tbaa.struct !136
  store ptr %4, ptr %24, align 8, !tbaa.struct !137
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %26, i32 noundef 0) #15
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !88
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %45, align 8, !tbaa !73
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %51, label %50

50:                                               ; preds = %42, %47
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %51

51:                                               ; preds = %47, %50
  %52 = load ptr, ptr %44, align 8, !tbaa !88
  %53 = getelementptr inbounds %struct.VEC_edge_base, ptr %52, i64 0, i32 2, i64 0
  %54 = load ptr, ptr %53, align 8, !tbaa !49
  %55 = call ptr @split_edge(ptr noundef %54) #15
  %56 = load ptr, ptr %44, align 8, !tbaa !88
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, ptr %56, align 8, !tbaa !73
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %62, label %61

61:                                               ; preds = %51, %58
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %62

62:                                               ; preds = %58, %61
  %63 = load ptr, ptr %44, align 8, !tbaa !88
  %64 = getelementptr inbounds %struct.VEC_edge_base, ptr %63, i64 0, i32 2, i64 0
  %65 = load ptr, ptr %64, align 8, !tbaa !49
  %66 = call ptr @split_edge(ptr noundef %65) #15
  %67 = call ptr @make_edge(ptr noundef %4, ptr noundef %55, i32 noundef 0) #15
  %68 = call ptr @split_edge(ptr noundef %67) #15
  %69 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !68
  %71 = and i32 %70, -1026
  %72 = or disjoint i32 %71, 1024
  store i32 %72, ptr %69, align 8, !tbaa !68
  %73 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !68
  %75 = and i32 %74, -2050
  %76 = or disjoint i32 %75, 2048
  store i32 %76, ptr %73, align 8, !tbaa !68
  %77 = load ptr, ptr %0, align 8, !tbaa !75
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %4, ptr noundef %77) #15
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %66, ptr noundef %4) #15
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %68, ptr noundef %4) #15
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %55, ptr noundef %4) #15
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !88
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %62
  %82 = load i32, ptr %79, align 8, !tbaa !73
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %85, label %84

84:                                               ; preds = %62, %81
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %85

85:                                               ; preds = %81, %84
  %86 = load ptr, ptr %78, align 8, !tbaa !88
  %87 = getelementptr inbounds %struct.VEC_edge_base, ptr %86, i64 0, i32 2, i64 0
  %88 = load ptr, ptr %87, align 8, !tbaa !49
  %89 = getelementptr inbounds %struct.edge_def, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !70
  %91 = load ptr, ptr %90, align 8, !tbaa !71
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %85
  %94 = load i32, ptr %91, align 8, !tbaa !73
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %90, ptr noundef %55) #15
  br label %97

97:                                               ; preds = %85, %96, %93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret ptr %88
}

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond_from_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @create_empty_loop_on_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #9 !prof !48 {
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  %11 = icmp ne ptr %0, null
  %12 = icmp ne ptr %1, null
  %13 = and i1 %11, %12
  %14 = icmp ne ptr %2, null
  %15 = and i1 %13, %14
  %16 = icmp ne ptr %3, null
  %17 = and i1 %15, %16
  %18 = icmp ne ptr %4, null
  %19 = and i1 %17, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 630, ptr noundef nonnull @.str.1) #15
  br label %21

21:                                               ; preds = %8, %20
  %22 = load ptr, ptr %0, align 8, !tbaa !75
  %23 = tail call ptr @split_edge(ptr noundef nonnull %0) #15
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !88
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %25, align 8, !tbaa !73
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %31, label %30

30:                                               ; preds = %21, %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %31

31:                                               ; preds = %27, %30
  %32 = load ptr, ptr %24, align 8, !tbaa !88
  %33 = getelementptr inbounds %struct.VEC_edge_base, ptr %32, i64 0, i32 2, i64 0
  %34 = load ptr, ptr %33, align 8, !tbaa !49
  %35 = tail call ptr @split_edge(ptr noundef %34) #15
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !88
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, ptr %37, align 8, !tbaa !73
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %43

43:                                               ; preds = %39, %42
  %44 = load ptr, ptr %36, align 8, !tbaa !88
  %45 = getelementptr inbounds %struct.VEC_edge_base, ptr %44, i64 0, i32 2, i64 0
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !70
  %49 = tail call ptr @make_edge(ptr noundef %23, ptr noundef %48, i32 noundef 0) #15
  %50 = load ptr, ptr %36, align 8, !tbaa !88
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, ptr %50, align 8, !tbaa !73
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %56, label %55

55:                                               ; preds = %43, %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %56

56:                                               ; preds = %52, %55
  %57 = load ptr, ptr %36, align 8, !tbaa !88
  %58 = getelementptr inbounds %struct.VEC_edge_base, ptr %57, i64 0, i32 2, i64 0
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  %60 = tail call ptr @redirect_edge_succ_nodup(ptr noundef %59, ptr noundef %23) #15
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %23, ptr noundef %22) #15
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %35, ptr noundef %23) #15
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %48, ptr noundef %23) #15
  %61 = tail call ptr @alloc_loop() #15
  %62 = getelementptr inbounds %struct.loop, ptr %61, i64 0, i32 2
  store ptr %23, ptr %62, align 8, !tbaa !103
  %63 = getelementptr inbounds %struct.loop, ptr %61, i64 0, i32 3
  store ptr %35, ptr %63, align 8, !tbaa !83
  tail call void @add_loop(ptr noundef %61, ptr noundef %7)
  %64 = tail call ptr @get_loop_body(ptr noundef %61) #15
  %65 = getelementptr inbounds %struct.loop, ptr %61, i64 0, i32 6
  %66 = load i32, ptr %65, align 4, !tbaa !84
  tail call void @scale_bbs_frequencies_int(ptr noundef %64, i32 noundef %66, i32 noundef 5000, i32 noundef 10000) #15
  tail call void @free(ptr noundef %64)
  tail call fastcc void @update_dominators_in_loop(ptr noundef %61)
  %67 = tail call ptr @single_exit(ptr noundef %61) #15
  %68 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 7
  store i32 2560, ptr %68, align 8, !tbaa !68
  %69 = load ptr, ptr %35, align 8, !tbaa !71
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %56
  %72 = load i32, ptr %69, align 8, !tbaa !73
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %75, label %74

74:                                               ; preds = %56, %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 655, ptr noundef nonnull @.str.1) #15
  br label %75

75:                                               ; preds = %71, %74
  %76 = load ptr, ptr %35, align 8, !tbaa !71
  %77 = getelementptr inbounds %struct.VEC_edge_base, ptr %76, i64 0, i32 2, i64 0
  %78 = load ptr, ptr %77, align 8, !tbaa !49
  %79 = getelementptr inbounds %struct.edge_def, ptr %78, i64 0, i32 7
  store i32 1024, ptr %79, align 8, !tbaa !68
  %80 = call ptr @force_gimple_operand(ptr noundef %1, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef %4) #15
  %81 = load ptr, ptr %10, align 8, !tbaa !49
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = call ptr @loop_preheader_edge(ptr noundef %61) #15
  %85 = load ptr, ptr %10, align 8, !tbaa !49
  call void @gsi_insert_seq_on_edge(ptr noundef %84, ptr noundef %85) #15
  call void @gsi_commit_edge_inserts() #15
  br label %86

86:                                               ; preds = %83, %75
  %87 = call ptr @force_gimple_operand(ptr noundef %3, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef null) #15
  %88 = load ptr, ptr %10, align 8, !tbaa !49
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = call ptr @loop_preheader_edge(ptr noundef %61) #15
  %92 = load ptr, ptr %10, align 8, !tbaa !49
  call void @gsi_insert_seq_on_edge(ptr noundef %91, ptr noundef %92) #15
  call void @gsi_commit_edge_inserts() #15
  br label %93

93:                                               ; preds = %90, %86
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 13
  %95 = load i32, ptr %94, align 8, !tbaa !127, !noalias !141
  %96 = and i32 %95, 512
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !60, !noalias !141
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %100, align 8, !tbaa !131, !noalias !141
  br label %104

104:                                              ; preds = %102, %98, %93
  %105 = phi ptr [ %103, %102 ], [ null, %98 ], [ null, %93 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.gimple_seq_d, ptr %105, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !133, !noalias !141
  br label %110

110:                                              ; preds = %104, %107
  %111 = phi ptr [ %109, %107 ], [ null, %104 ]
  store ptr %111, ptr %9, align 8, !tbaa.struct !135
  %112 = getelementptr inbounds i8, ptr %9, i64 8
  store ptr %105, ptr %112, align 8, !tbaa.struct !136
  %113 = getelementptr inbounds i8, ptr %9, i64 16
  store ptr %23, ptr %113, align 8, !tbaa.struct !137
  call void @create_iv(ptr noundef %80, ptr noundef %2, ptr noundef %4, ptr noundef %61, ptr noundef nonnull %9, i8 noundef zeroext 0, ptr noundef %5, ptr noundef %6) #15
  %114 = load ptr, ptr %5, align 8, !tbaa !49
  %115 = call ptr @gimple_build_cond(i32 noundef 97, ptr noundef %114, ptr noundef %87, ptr noundef null, ptr noundef null) #15
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 255
  %118 = add nsw i32 %117, -10
  %119 = icmp ult i32 %118, -9
  br i1 %119, label %132, label %120

120:                                              ; preds = %110
  %121 = zext nneg i32 %117 to i64
  %122 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !64
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %124
  %126 = load i64, ptr %125, align 8, !tbaa !98
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.1) #15
  br label %129

129:                                              ; preds = %128, %120
  %130 = getelementptr inbounds i8, ptr %115, i64 %126
  %131 = load ptr, ptr %130, align 8, !tbaa !49
  br label %132

132:                                              ; preds = %110, %129
  %133 = phi ptr [ %131, %129 ], [ null, %110 ]
  %134 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %9, ptr noundef %133, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #15
  %135 = load i32, ptr %115, align 8
  %136 = and i32 %135, 255
  %137 = add nsw i32 %136, -10
  %138 = icmp ult i32 %137, -9
  br i1 %138, label %143, label %139

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.gimple_statement_base, ptr %115, i64 0, i32 3
  %141 = load i32, ptr %140, align 4, !tbaa !60
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139, %132
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1665, ptr noundef nonnull @.str.1) #15
  br label %144

144:                                              ; preds = %143, %139
  %145 = load i32, ptr %115, align 8
  %146 = and i32 %145, 255
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !64
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !98
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.1) #15
  br label %155

155:                                              ; preds = %144, %154
  %156 = getelementptr inbounds i8, ptr %115, i64 %152
  store ptr %134, ptr %156, align 8, !tbaa !49
  %157 = load ptr, ptr %67, align 8, !tbaa !75
  %158 = getelementptr inbounds %struct.basic_block_def, ptr %157, i64 0, i32 13
  %159 = load i32, ptr %158, align 8, !tbaa !127, !noalias !144
  %160 = and i32 %159, 512
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.basic_block_def, ptr %157, i64 0, i32 7
  %164 = load ptr, ptr %163, align 8, !tbaa !60, !noalias !144
  %165 = icmp eq ptr %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr %164, align 8, !tbaa !131, !noalias !144
  br label %168

168:                                              ; preds = %166, %162, %155
  %169 = phi ptr [ %167, %166 ], [ null, %162 ], [ null, %155 ]
  %170 = icmp eq ptr %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.gimple_seq_d, ptr %169, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !133, !noalias !144
  br label %174

174:                                              ; preds = %168, %171
  %175 = phi ptr [ %173, %171 ], [ null, %168 ]
  store ptr %175, ptr %9, align 8, !tbaa.struct !135
  store ptr %169, ptr %112, align 8, !tbaa.struct !136
  store ptr %157, ptr %113, align 8, !tbaa.struct !137
  call void @gsi_insert_after(ptr noundef nonnull %9, ptr noundef nonnull %115, i32 noundef 0) #15
  %176 = call ptr @split_block_after_labels(ptr noundef %23) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  ret ptr %61
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @alloc_loop() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @update_dominators_in_loop(ptr noundef %0) unnamed_addr #9 !prof !48 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !94
  %7 = tail call ptr @sbitmap_alloc(i32 noundef %6) #15
  tail call void @sbitmap_zero(ptr noundef %7) #15
  %8 = tail call ptr @get_loop_body(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !84
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %38, %1
  %13 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !84
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %106, label %51

16:                                               ; preds = %1, %38
  %17 = phi i64 [ %47, %38 ], [ 0, %1 ]
  %18 = getelementptr inbounds ptr, ptr %8, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !95
  %22 = load ptr, ptr %7, align 8, !tbaa !96
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %16
  %25 = lshr i32 %21, 6
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !98
  %29 = and i32 %21, 63
  %30 = zext nneg i32 %29 to i64
  %31 = shl nuw i64 1, %30
  %32 = and i64 %28, %31
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = getelementptr inbounds i8, ptr %22, i64 %26
  %36 = load i8, ptr %35, align 1, !tbaa !60
  %37 = add i8 %36, 1
  store i8 %37, ptr %35, align 1, !tbaa !60
  br label %38

38:                                               ; preds = %16, %24, %34
  %39 = and i32 %21, 63
  %40 = zext nneg i32 %39 to i64
  %41 = shl nuw i64 1, %40
  %42 = lshr i32 %21, 6
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !98
  %46 = or i64 %45, %41
  store i64 %46, ptr %44, align 8, !tbaa !98
  %47 = add nuw nsw i64 %17, 1
  %48 = load i32, ptr %9, align 4, !tbaa !84
  %49 = zext i32 %48 to i64
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %16, label %12, !llvm.loop !147

51:                                               ; preds = %12, %100
  %52 = phi i64 [ %102, %100 ], [ 0, %12 ]
  %53 = phi ptr [ %101, %100 ], [ null, %12 ]
  %54 = getelementptr inbounds ptr, ptr %8, i64 %52
  %55 = load ptr, ptr %54, align 8, !tbaa !49
  %56 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %55) #15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %100, label %58

58:                                               ; preds = %51, %96
  %59 = phi ptr [ %98, %96 ], [ %56, %51 ]
  %60 = phi ptr [ %97, %96 ], [ %53, %51 ]
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !95
  %63 = lshr i32 %62, 6
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !98
  %67 = and i32 %62, 63
  %68 = zext nneg i32 %67 to i64
  %69 = shl nuw i64 1, %68
  %70 = and i64 %69, %66
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %58
  %73 = load ptr, ptr %7, align 8, !tbaa !96
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds i8, ptr %73, i64 %64
  %77 = load i8, ptr %76, align 1, !tbaa !60
  %78 = add i8 %77, 1
  store i8 %78, ptr %76, align 1, !tbaa !60
  br label %79

79:                                               ; preds = %72, %75
  %80 = load i64, ptr %65, align 8, !tbaa !98
  %81 = or i64 %80, %69
  store i64 %81, ptr %65, align 8, !tbaa !98
  %82 = icmp eq ptr %60, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %60, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !106
  %86 = load i32, ptr %60, align 8, !tbaa !108
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %79, %83
  %89 = tail call ptr @vec_heap_p_reserve(ptr noundef %60, i32 noundef 1) #15
  br label %90

90:                                               ; preds = %83, %88
  %91 = phi ptr [ %89, %88 ], [ %60, %83 ]
  %92 = load i32, ptr %91, align 8, !tbaa !108
  %93 = add i32 %92, 1
  store i32 %93, ptr %91, align 8, !tbaa !108
  %94 = zext i32 %92 to i64
  %95 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %91, i64 0, i32 2, i64 %94
  store ptr %59, ptr %95, align 8, !tbaa !49
  br label %96

96:                                               ; preds = %58, %90
  %97 = phi ptr [ %91, %90 ], [ %60, %58 ]
  %98 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %59) #15
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %58, !llvm.loop !148

100:                                              ; preds = %96, %51
  %101 = phi ptr [ %53, %51 ], [ %97, %96 ]
  %102 = add nuw nsw i64 %52, 1
  %103 = load i32, ptr %13, align 4, !tbaa !84
  %104 = zext i32 %103 to i64
  %105 = icmp ult i64 %102, %104
  br i1 %105, label %51, label %106, !llvm.loop !149

106:                                              ; preds = %100, %12
  %107 = phi ptr [ null, %12 ], [ %101, %100 ]
  tail call void @iterate_fix_dominators(i32 noundef 1, ptr noundef %107, i8 noundef zeroext 0) #15
  tail call void @free(ptr noundef %8)
  tail call void @free(ptr noundef %7)
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  tail call void @free(ptr noundef %107)
  br label %110

110:                                              ; preds = %106, %109
  ret void
}

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare void @gsi_commit_edge_inserts() local_unnamed_addr #3

declare void @create_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @split_block_after_labels(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @loopify(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #9 !prof !48 {
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = load ptr, ptr %1, align 8, !tbaa !75
  %12 = tail call ptr @alloc_loop() #15
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = load i32, ptr %16, align 8, !tbaa !81
  br label %20

20:                                               ; preds = %18, %8
  %21 = phi i32 [ %19, %18 ], [ 0, %8 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = add i32 %21, -1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %16, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  br label %28

28:                                               ; preds = %20, %23
  %29 = phi ptr [ %27, %23 ], [ null, %20 ]
  %30 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  %32 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !103
  %33 = load ptr, ptr %0, align 8, !tbaa !75
  %34 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !83
  %35 = load ptr, ptr %1, align 8, !tbaa !75
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 11
  %37 = load i32, ptr %36, align 8, !tbaa !150
  %38 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %39 = load i32, ptr %38, align 4, !tbaa !151
  %40 = mul nsw i32 %39, %37
  %41 = add nsw i32 %40, 5000
  %42 = sdiv i32 %41, 10000
  %43 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 9
  %44 = load i64, ptr %43, align 8, !tbaa !152
  %45 = load ptr, ptr %9, align 8, !tbaa !70
  %46 = icmp eq ptr %45, %31
  br i1 %46, label %49, label %47

47:                                               ; preds = %28
  %48 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %0, ptr noundef %31) #15
  br label %49

49:                                               ; preds = %28, %47
  %50 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !70
  %52 = icmp eq ptr %51, %10
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @redirect_edge_and_branch_force(ptr noundef %3, ptr noundef %10) #15
  br label %55

55:                                               ; preds = %49, %53
  %56 = icmp eq i8 %5, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %55
  %58 = load ptr, ptr %30, align 8, !tbaa !70
  %59 = icmp eq ptr %58, %2
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %1, ptr noundef %2) #15
  br label %62

62:                                               ; preds = %57, %60
  %63 = load ptr, ptr %32, align 8, !tbaa !103
  %64 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !70
  %66 = icmp eq ptr %65, %63
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = tail call ptr @redirect_edge_and_branch_force(ptr noundef %4, ptr noundef %63) #15
  br label %69

69:                                               ; preds = %62, %67
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %2, ptr noundef %11) #15
  %70 = load ptr, ptr %32, align 8, !tbaa !103
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %70, ptr noundef %2) #15
  br label %71

71:                                               ; preds = %69, %55
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %10, ptr noundef %2) #15
  tail call void @add_loop(ptr noundef %12, ptr noundef %29)
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !76
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void @remove_bb_from_loops(ptr noundef %2) #15
  br label %76

76:                                               ; preds = %75, %71
  tail call void @add_bb_to_loop(ptr noundef %2, ptr noundef %29) #15
  br i1 %56, label %113, label %77

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 11
  store i32 %42, ptr %78, align 8, !tbaa !150
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 8
  store i64 %44, ptr %79, align 8, !tbaa !153
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  br label %81

81:                                               ; preds = %111, %77
  %82 = phi i32 [ 0, %77 ], [ %112, %111 ]
  %83 = load ptr, ptr %80, align 8, !tbaa !49
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load i32, ptr %83, align 8, !tbaa !73
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi i32 [ %86, %85 ], [ 0, %81 ]
  %89 = icmp eq i32 %88, %82
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = zext i32 %82 to i64
  %92 = getelementptr inbounds %struct.VEC_edge_base, ptr %83, i64 0, i32 2, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !49
  br label %94

94:                                               ; preds = %87, %90
  %95 = phi ptr [ %93, %90 ], [ null, %87 ]
  br i1 %89, label %113, label %96

96:                                               ; preds = %94
  %97 = load i64, ptr %79, align 8, !tbaa !153
  %98 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 8
  %99 = load i32, ptr %98, align 4, !tbaa !151
  %100 = sext i32 %99 to i64
  %101 = mul nsw i64 %97, %100
  %102 = sdiv i64 %101, 10000
  %103 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 9
  store i64 %102, ptr %103, align 8, !tbaa !152
  %104 = icmp eq ptr %83, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %96
  %106 = load i32, ptr %83, align 8, !tbaa !73
  br label %107

107:                                              ; preds = %105, %96
  %108 = phi i32 [ %106, %105 ], [ 0, %96 ]
  %109 = icmp ult i32 %82, %108
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %111

111:                                              ; preds = %107, %110
  %112 = add i32 %82, 1
  br label %81, !llvm.loop !154

113:                                              ; preds = %94, %76
  %114 = tail call ptr @get_loop_body(ptr noundef %12) #15
  %115 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 6
  %116 = load i32, ptr %115, align 4, !tbaa !84
  tail call void @scale_bbs_frequencies_int(ptr noundef %114, i32 noundef %116, i32 noundef %7, i32 noundef 10000) #15
  tail call void @free(ptr noundef %114)
  %117 = load ptr, ptr %13, align 8, !tbaa !76
  %118 = tail call ptr @get_loop_body(ptr noundef %117) #15
  %119 = getelementptr inbounds %struct.loop, ptr %117, i64 0, i32 6
  %120 = load i32, ptr %119, align 4, !tbaa !84
  tail call void @scale_bbs_frequencies_int(ptr noundef %118, i32 noundef %120, i32 noundef %6, i32 noundef 10000) #15
  tail call void @free(ptr noundef %118)
  tail call fastcc void @update_dominators_in_loop(ptr noundef %12)
  ret ptr %12
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @duplicate_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !48 {
  %3 = tail call ptr @alloc_loop() #15
  tail call fastcc void @place_new_loop(ptr noundef %3)
  tail call void @set_loop_copy(ptr noundef %0, ptr noundef %3) #15
  tail call void @flow_loop_tree_node_add(ptr noundef %1, ptr noundef %3) #15
  ret ptr %3
}

declare void @set_loop_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @duplicate_subloops(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !48 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %2 ]
  %8 = tail call ptr @alloc_loop() #15
  tail call fastcc void @place_new_loop(ptr noundef %8)
  tail call void @set_loop_copy(ptr noundef nonnull %7, ptr noundef %8) #15
  tail call void @flow_loop_tree_node_add(ptr noundef %1, ptr noundef %8) #15
  tail call void @duplicate_subloops(ptr noundef nonnull %7, ptr noundef %8)
  %9 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !155

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @can_duplicate_loop_p(ptr noundef %0) local_unnamed_addr #9 !prof !48 {
  %2 = tail call ptr @get_loop_body(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !84
  %5 = tail call zeroext i8 @can_copy_bbs_p(ptr noundef %2, i32 noundef %4) #15
  tail call void @free(ptr noundef %2)
  ret i8 %5
}

declare zeroext i8 @can_copy_bbs_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #9 !prof !48 {
  %8 = alloca [2 x ptr], align 16
  %9 = alloca [2 x ptr], align 16
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  %14 = load ptr, ptr %1, align 8, !tbaa !75
  %15 = icmp eq ptr %13, %14
  %16 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = icmp eq ptr %17, %11
  br i1 %18, label %20, label %19

19:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 998, ptr noundef nonnull @.str.1) #15
  br label %20

20:                                               ; preds = %7, %19
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 999, ptr noundef nonnull @.str.1) #15
  br label %23

23:                                               ; preds = %20, %22
  %24 = icmp eq ptr %4, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %4, align 8, !tbaa !75
  %27 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %26) #15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1004, ptr noundef nonnull @.str.1) #15
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !70
  %33 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %32) #15
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1005, ptr noundef nonnull @.str.1) #15
  br label %36

36:                                               ; preds = %35, %30, %23
  %37 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %38 = load i32, ptr %37, align 4, !tbaa !84
  %39 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #15
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  %41 = load ptr, ptr %10, align 8, !tbaa !103
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1010, ptr noundef nonnull @.str.1) #15
  br label %44

44:                                               ; preds = %36, %43
  %45 = add i32 %38, -1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %39, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  %49 = load ptr, ptr %12, align 8, !tbaa !83
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1011, ptr noundef nonnull @.str.1) #15
  br label %52

52:                                               ; preds = %44, %51
  %53 = load i32, ptr %37, align 4, !tbaa !84
  %54 = tail call zeroext i8 @can_copy_bbs_p(ptr noundef nonnull %39, i32 noundef %53) #15
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  tail call void @free(ptr noundef %39)
  br label %746

57:                                               ; preds = %52
  %58 = load i32, ptr %37, align 4, !tbaa !84
  %59 = zext i32 %58 to i64
  %60 = shl nuw nsw i64 %59, 3
  %61 = tail call ptr @xmalloc(i64 noundef %60) #15
  %62 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %63 = load i32, ptr %62, align 8, !tbaa !68
  %64 = and i32 %63, 128
  %65 = icmp ne i32 %64, 0
  %66 = select i1 %15, i1 %65, i1 false
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1024, ptr noundef nonnull @.str.1) #15
  br label %68

68:                                               ; preds = %57, %67
  %69 = tail call ptr @loop_latch_edge(ptr noundef %0) #15
  %70 = and i32 %6, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %267, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 11
  %74 = load i32, ptr %73, align 8, !tbaa !150
  %75 = load ptr, ptr %69, align 8, !tbaa !75
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 11
  %77 = load i32, ptr %76, align 8, !tbaa !150
  %78 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 8
  %79 = load i32, ptr %78, align 4, !tbaa !151
  %80 = mul nsw i32 %79, %77
  %81 = add nsw i32 %80, 5000
  %82 = sdiv i32 %81, 10000
  %83 = tail call i32 @llvm.umax.i32(i32 %74, i32 1)
  %84 = tail call i32 @llvm.smax.i32(i32 %83, i32 %82)
  br i1 %24, label %94, label %85

85:                                               ; preds = %72
  %86 = load ptr, ptr %4, align 8, !tbaa !75
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 11
  %88 = load i32, ptr %87, align 8, !tbaa !150
  %89 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 8
  %90 = load i32, ptr %89, align 4, !tbaa !151
  %91 = mul nsw i32 %90, %88
  %92 = add nsw i32 %91, 5000
  %93 = sdiv i32 %92, 10000
  br label %96

94:                                               ; preds = %72
  %95 = sub nsw i32 %84, %82
  br label %96

96:                                               ; preds = %94, %85
  %97 = phi i32 [ %93, %85 ], [ %95, %94 ]
  %98 = sub nsw i32 %84, %82
  %99 = tail call i32 @llvm.smin.i32(i32 %97, i32 %98)
  %100 = mul nsw i32 %82, 10000
  %101 = sdiv i32 %84, 2
  %102 = add nsw i32 %101, %100
  %103 = sdiv i32 %102, %84
  %104 = add nsw i32 %99, %82
  %105 = mul nsw i32 %104, 10000
  %106 = add nsw i32 %105, %101
  %107 = sdiv i32 %106, %84
  br i1 %24, label %136, label %108

108:                                              ; preds = %96
  %109 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 8
  %110 = load i32, ptr %109, align 4, !tbaa !151
  %111 = icmp eq i32 %110, 10000
  br i1 %111, label %136, label %112

112:                                              ; preds = %108
  %113 = sub nsw i32 10000, %110
  %114 = sdiv i32 %113, 2
  %115 = add nsw i32 %114, 100000000
  %116 = sdiv i32 %115, %113
  %117 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %118 = icmp eq i32 %38, 0
  br i1 %118, label %136, label %119

119:                                              ; preds = %112
  %120 = zext i32 %38 to i64
  br label %121

121:                                              ; preds = %119, %133
  %122 = phi i64 [ 0, %119 ], [ %134, %133 ]
  %123 = getelementptr inbounds ptr, ptr %39, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !49
  %125 = load ptr, ptr %4, align 8, !tbaa !75
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %124, ptr noundef %125) #15
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = trunc i64 %122 to i32
  %132 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %117, i32 noundef %131) #15
  br label %133

133:                                              ; preds = %121, %127, %130
  %134 = add nuw nsw i64 %122, 1
  %135 = icmp eq i64 %134, %120
  br i1 %135, label %136, label %121, !llvm.loop !156

136:                                              ; preds = %133, %112, %108, %96
  %137 = phi i32 [ 0, %108 ], [ 0, %96 ], [ %116, %112 ], [ %116, %133 ]
  %138 = phi ptr [ null, %108 ], [ null, %96 ], [ %117, %112 ], [ %117, %133 ]
  %139 = zext i32 %2 to i64
  %140 = shl nuw nsw i64 %139, 2
  %141 = tail call ptr @xmalloc(i64 noundef %140) #15
  %142 = icmp eq i32 %2, 0
  br i1 %142, label %162, label %143

143:                                              ; preds = %136
  %144 = add i32 %2, 1
  %145 = tail call i32 @llvm.umax.i32(i32 %144, i32 2)
  %146 = zext i32 %145 to i64
  %147 = getelementptr i32, ptr %141, i64 -1
  br label %148

148:                                              ; preds = %143, %148
  %149 = phi i64 [ 1, %143 ], [ %160, %148 ]
  %150 = lshr i64 %149, 6
  %151 = and i64 %150, 67108863
  %152 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3, i64 %151
  %153 = load i64, ptr %152, align 8, !tbaa !98
  %154 = and i64 %149, 63
  %155 = shl nuw i64 1, %154
  %156 = and i64 %153, %155
  %157 = icmp eq i64 %156, 0
  %158 = select i1 %157, i32 %103, i32 %107
  %159 = getelementptr i32, ptr %147, i64 %149
  store i32 %158, ptr %159, align 4, !tbaa !64
  %160 = add nuw nsw i64 %149, 1
  %161 = icmp eq i64 %160, %146
  br i1 %161, label %162, label %148, !llvm.loop !157

162:                                              ; preds = %148, %136
  %163 = and i32 %6, 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %198, label %165

165:                                              ; preds = %162
  %166 = load ptr, ptr %1, align 8, !tbaa !75
  %167 = getelementptr inbounds %struct.basic_block_def, ptr %166, i64 0, i32 11
  %168 = load i32, ptr %167, align 8, !tbaa !150
  %169 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %170 = load i32, ptr %169, align 4, !tbaa !151
  %171 = mul nsw i32 %170, %168
  %172 = add nsw i32 %171, 5000
  %173 = sdiv i32 %172, 10000
  %174 = tail call i32 @llvm.smin.i32(i32 %173, i32 %84)
  br i1 %15, label %175, label %176

175:                                              ; preds = %165
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1078, ptr noundef nonnull @.str.1) #15
  br label %176

176:                                              ; preds = %165, %175
  %177 = mul nsw i32 %174, 10000
  %178 = add nsw i32 %177, %101
  %179 = sdiv i32 %178, %84
  %180 = icmp eq i32 %2, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %176
  %182 = zext i32 %2 to i64
  br label %183

183:                                              ; preds = %181, %183
  %184 = phi i64 [ 0, %181 ], [ %191, %183 ]
  %185 = phi i32 [ %174, %181 ], [ %190, %183 ]
  %186 = getelementptr inbounds i32, ptr %141, i64 %184
  %187 = load i32, ptr %186, align 4, !tbaa !64
  %188 = mul nsw i32 %187, %185
  %189 = add nsw i32 %188, 5000
  %190 = sdiv i32 %189, 10000
  %191 = add nuw nsw i64 %184, 1
  %192 = icmp eq i64 %191, %182
  br i1 %192, label %193, label %183, !llvm.loop !158

193:                                              ; preds = %183, %176
  %194 = phi i32 [ %174, %176 ], [ %190, %183 ]
  %195 = mul nsw i32 %194, 10000
  %196 = add nsw i32 %195, %101
  %197 = sdiv i32 %196, %84
  br label %245

198:                                              ; preds = %162
  br i1 %15, label %203, label %199

199:                                              ; preds = %198
  %200 = icmp eq i32 %2, 0
  br i1 %200, label %242, label %201

201:                                              ; preds = %199
  %202 = zext i32 %2 to i64
  br label %232

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %205 = load i64, ptr %204, align 8, !tbaa !98
  %206 = and i64 %205, 1
  %207 = icmp eq i64 %206, 0
  %208 = select i1 %207, i32 %103, i32 %107
  %209 = icmp eq i32 %2, 0
  br i1 %209, label %224, label %210

210:                                              ; preds = %203
  %211 = zext i32 %2 to i64
  br label %212

212:                                              ; preds = %210, %212
  %213 = phi i64 [ 0, %210 ], [ %222, %212 ]
  %214 = phi i32 [ %208, %210 ], [ %221, %212 ]
  %215 = phi i32 [ 10000, %210 ], [ %216, %212 ]
  %216 = add nsw i32 %214, %215
  %217 = getelementptr inbounds i32, ptr %141, i64 %213
  %218 = load i32, ptr %217, align 4, !tbaa !64
  %219 = mul nsw i32 %218, %214
  %220 = add nsw i32 %219, 5000
  %221 = sdiv i32 %220, 10000
  %222 = add nuw nsw i64 %213, 1
  %223 = icmp eq i64 %222, %211
  br i1 %223, label %224, label %212, !llvm.loop !159

224:                                              ; preds = %212, %203
  %225 = phi i32 [ 10000, %203 ], [ %216, %212 ]
  %226 = sdiv i32 %225, 2
  %227 = add nsw i32 %226, 100000000
  %228 = sdiv i32 %227, %225
  %229 = mul nsw i32 %228, %208
  %230 = add nsw i32 %229, 5000
  %231 = sdiv i32 %230, 10000
  br label %245

232:                                              ; preds = %201, %232
  %233 = phi i64 [ 0, %201 ], [ %240, %232 ]
  %234 = phi i32 [ 10000, %201 ], [ %239, %232 ]
  %235 = getelementptr inbounds i32, ptr %141, i64 %233
  %236 = load i32, ptr %235, align 4, !tbaa !64
  %237 = mul nsw i32 %236, %234
  %238 = add nsw i32 %237, 5000
  %239 = sdiv i32 %238, 10000
  %240 = add nuw nsw i64 %233, 1
  %241 = icmp eq i64 %240, %202
  br i1 %241, label %242, label %232, !llvm.loop !160

242:                                              ; preds = %232, %199
  %243 = phi i32 [ 10000, %199 ], [ %239, %232 ]
  %244 = sub nsw i32 10000, %103
  br label %245

245:                                              ; preds = %224, %242, %193
  %246 = phi i32 [ %197, %193 ], [ %228, %224 ], [ %243, %242 ]
  %247 = phi i32 [ %179, %193 ], [ %231, %224 ], [ %244, %242 ]
  %248 = icmp eq i32 %2, 0
  br i1 %248, label %260, label %249

249:                                              ; preds = %245
  %250 = zext i32 %2 to i64
  br label %251

251:                                              ; preds = %249, %257
  %252 = phi i64 [ 0, %249 ], [ %258, %257 ]
  %253 = getelementptr inbounds i32, ptr %141, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !64
  %255 = icmp ult i32 %254, 10001
  br i1 %255, label %257, label %256

256:                                              ; preds = %251
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1113, ptr noundef nonnull @.str.1) #15
  br label %257

257:                                              ; preds = %251, %256
  %258 = add nuw nsw i64 %252, 1
  %259 = icmp eq i64 %258, %250
  br i1 %259, label %260, label %251, !llvm.loop !161

260:                                              ; preds = %257, %245
  %261 = icmp ult i32 %246, 10001
  %262 = icmp sgt i32 %247, -1
  %263 = select i1 %261, i1 %262, i1 false
  %264 = icmp slt i32 %247, 10001
  %265 = select i1 %263, i1 %264, i1 false
  br i1 %265, label %267, label %266

266:                                              ; preds = %260
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1115, ptr noundef nonnull @.str.1) #15
  br label %267

267:                                              ; preds = %266, %260, %68
  %268 = phi ptr [ %141, %260 ], [ %141, %266 ], [ null, %68 ]
  %269 = phi i32 [ %246, %260 ], [ %246, %266 ], [ 0, %68 ]
  %270 = phi i32 [ %137, %260 ], [ %137, %266 ], [ 0, %68 ]
  %271 = phi i32 [ %247, %260 ], [ %247, %266 ], [ 0, %68 ]
  %272 = phi ptr [ %138, %260 ], [ %138, %266 ], [ null, %68 ]
  %273 = load ptr, ptr %1, align 8, !tbaa !75
  %274 = getelementptr inbounds %struct.basic_block_def, ptr %273, i64 0, i32 3
  %275 = load ptr, ptr %274, align 8, !tbaa !76
  %276 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %277 = load ptr, ptr %276, align 8, !tbaa !49
  %278 = icmp eq ptr %277, null
  br i1 %278, label %286, label %279

279:                                              ; preds = %267, %279
  %280 = phi ptr [ %284, %279 ], [ %277, %267 ]
  %281 = phi i32 [ %282, %279 ], [ 0, %267 ]
  %282 = add i32 %281, 1
  %283 = getelementptr inbounds %struct.loop, ptr %280, i64 0, i32 9
  %284 = load ptr, ptr %283, align 8, !tbaa !49
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %279, !llvm.loop !162

286:                                              ; preds = %279, %267
  %287 = phi i32 [ 0, %267 ], [ %282, %279 ]
  %288 = zext i32 %287 to i64
  %289 = tail call ptr @xcalloc(i64 noundef %288, i64 noundef 8) #15
  %290 = load ptr, ptr %276, align 8, !tbaa !49
  %291 = icmp eq ptr %290, null
  br i1 %291, label %301, label %292

292:                                              ; preds = %286, %292
  %293 = phi ptr [ %299, %292 ], [ %290, %286 ]
  %294 = phi i32 [ %298, %292 ], [ 0, %286 ]
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds ptr, ptr %289, i64 %295
  store ptr %293, ptr %296, align 8, !tbaa !49
  %297 = getelementptr inbounds %struct.loop, ptr %293, i64 0, i32 9
  %298 = add i32 %294, 1
  %299 = load ptr, ptr %297, align 8, !tbaa !49
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %292, !llvm.loop !163

301:                                              ; preds = %292, %286
  tail call void @set_loop_copy(ptr noundef %0, ptr noundef %275) #15
  %302 = zext i32 %38 to i64
  %303 = shl nuw nsw i64 %302, 3
  %304 = tail call ptr @xmalloc(i64 noundef %303) #15
  br i1 %15, label %305, label %306

305:                                              ; preds = %301
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %304, ptr nonnull align 8 %39, i64 %303, i1 false)
  br label %306

306:                                              ; preds = %305, %301
  %307 = phi ptr [ %13, %305 ], [ null, %301 ]
  %308 = getelementptr inbounds [2 x ptr], ptr %8, i64 0, i64 1
  store ptr %4, ptr %308, align 8, !tbaa !49
  store ptr %69, ptr %8, align 16, !tbaa !49
  %309 = icmp eq i32 %2, 0
  br i1 %309, label %595, label %310

310:                                              ; preds = %306
  %311 = load ptr, ptr %1, align 8, !tbaa !75
  %312 = icmp sgt i32 %287, 0
  %313 = and i32 %6, 2
  %314 = icmp eq i32 %313, 0
  %315 = icmp eq i32 %38, 0
  %316 = icmp eq i32 %38, 0
  %317 = getelementptr inbounds ptr, ptr %61, i64 %46
  %318 = icmp eq ptr %5, null
  %319 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 1
  %320 = icmp eq ptr %272, null
  %321 = getelementptr inbounds ptr, ptr %61, i64 %46
  %322 = zext i32 %2 to i64
  %323 = zext nneg i32 %287 to i64
  %324 = select i1 %314, i1 true, i1 %315
  %325 = zext i32 %38 to i64
  %326 = icmp ne i32 %38, 0
  %327 = select i1 %65, i1 %326, i1 false
  %328 = zext i32 %38 to i64
  %329 = zext i32 %38 to i64
  %330 = zext i32 %38 to i64
  br label %331

331:                                              ; preds = %310, %591
  %332 = phi i64 [ 0, %310 ], [ %593, %591 ]
  %333 = phi ptr [ %1, %310 ], [ %469, %591 ]
  %334 = phi ptr [ %311, %310 ], [ %349, %591 ]
  %335 = phi ptr [ %13, %310 ], [ %468, %591 ]
  %336 = phi ptr [ %307, %310 ], [ %584, %591 ]
  %337 = phi ptr [ %69, %310 ], [ %467, %591 ]
  %338 = phi i32 [ %271, %310 ], [ %592, %591 ]
  br i1 %312, label %339, label %347

339:                                              ; preds = %331, %339
  %340 = phi i64 [ %345, %339 ], [ 0, %331 ]
  %341 = getelementptr inbounds ptr, ptr %289, i64 %340
  %342 = load ptr, ptr %341, align 8, !tbaa !49
  %343 = call ptr @alloc_loop() #15
  call fastcc void @place_new_loop(ptr noundef %343)
  call void @set_loop_copy(ptr noundef %342, ptr noundef %343) #15
  call void @flow_loop_tree_node_add(ptr noundef %275, ptr noundef %343) #15
  %344 = load ptr, ptr %341, align 8, !tbaa !49
  call void @duplicate_subloops(ptr noundef %344, ptr noundef %343)
  %345 = add nuw nsw i64 %340, 1
  %346 = icmp eq i64 %345, %323
  br i1 %346, label %347, label %339, !llvm.loop !164

347:                                              ; preds = %339, %331
  call void @copy_bbs(ptr noundef nonnull %39, i32 noundef %38, ptr noundef %61, ptr noundef nonnull %8, i32 noundef 2, ptr noundef nonnull %9, ptr noundef %0, ptr noundef %334) #15
  %348 = load ptr, ptr %9, align 16, !tbaa !49
  %349 = load ptr, ptr %348, align 8, !tbaa !75
  br i1 %324, label %366, label %350

350:                                              ; preds = %347
  %351 = add nuw nsw i64 %332, 1
  %352 = inttoptr i64 %351 to ptr
  br label %353

353:                                              ; preds = %350, %361
  %354 = phi i64 [ 0, %350 ], [ %364, %361 ]
  %355 = getelementptr inbounds ptr, ptr %61, i64 %354
  %356 = load ptr, ptr %355, align 8, !tbaa !49
  %357 = getelementptr inbounds %struct.basic_block_def, ptr %356, i64 0, i32 2
  %358 = load ptr, ptr %357, align 8, !tbaa !165
  %359 = icmp eq ptr %358, null
  br i1 %359, label %361, label %360

360:                                              ; preds = %353
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1155, ptr noundef nonnull @.str.1) #15
  br label %361

361:                                              ; preds = %353, %360
  %362 = load ptr, ptr %355, align 8, !tbaa !49
  %363 = getelementptr inbounds %struct.basic_block_def, ptr %362, i64 0, i32 2
  store ptr %352, ptr %363, align 8, !tbaa !165
  %364 = add nuw nsw i64 %354, 1
  %365 = icmp eq i64 %364, %325
  br i1 %365, label %366, label %353, !llvm.loop !166

366:                                              ; preds = %361, %347
  br i1 %327, label %367, label %447

367:                                              ; preds = %366, %367
  %368 = phi i64 [ %374, %367 ], [ 0, %366 ]
  %369 = getelementptr inbounds ptr, ptr %61, i64 %368
  %370 = load ptr, ptr %369, align 8, !tbaa !49
  %371 = getelementptr inbounds %struct.basic_block_def, ptr %370, i64 0, i32 13
  %372 = load i32, ptr %371, align 8, !tbaa !127
  %373 = or i32 %372, 128
  store i32 %373, ptr %371, align 8, !tbaa !127
  %374 = add nuw nsw i64 %368, 1
  %375 = icmp eq i64 %374, %328
  br i1 %375, label %377, label %367, !llvm.loop !167

376:                                              ; preds = %435
  br i1 %316, label %447, label %438

377:                                              ; preds = %367, %435
  %378 = phi i64 [ %436, %435 ], [ 0, %367 ]
  %379 = getelementptr inbounds ptr, ptr %61, i64 %378
  %380 = load ptr, ptr %379, align 8, !tbaa !49
  %381 = getelementptr inbounds %struct.basic_block_def, ptr %380, i64 0, i32 3
  %382 = load ptr, ptr %381, align 8, !tbaa !76
  %383 = icmp eq ptr %382, %275
  br i1 %383, label %384, label %388

384:                                              ; preds = %377
  %385 = getelementptr inbounds %struct.basic_block_def, ptr %380, i64 0, i32 13
  %386 = load i32, ptr %385, align 8, !tbaa !127
  %387 = or i32 %386, 4
  store i32 %387, ptr %385, align 8, !tbaa !127
  br label %388

388:                                              ; preds = %384, %377
  %389 = getelementptr inbounds %struct.basic_block_def, ptr %380, i64 0, i32 1
  br label %390

390:                                              ; preds = %433, %388
  %391 = phi i32 [ 0, %388 ], [ %434, %433 ]
  %392 = load ptr, ptr %389, align 8, !tbaa !49
  %393 = icmp eq ptr %392, null
  br i1 %393, label %396, label %394

394:                                              ; preds = %390
  %395 = load i32, ptr %392, align 8, !tbaa !73
  br label %396

396:                                              ; preds = %394, %390
  %397 = phi i32 [ %395, %394 ], [ 0, %390 ]
  %398 = icmp eq i32 %397, %391
  br i1 %398, label %403, label %399

399:                                              ; preds = %396
  %400 = zext i32 %391 to i64
  %401 = getelementptr inbounds %struct.VEC_edge_base, ptr %392, i64 0, i32 2, i64 %400
  %402 = load ptr, ptr %401, align 8, !tbaa !49
  br label %403

403:                                              ; preds = %396, %399
  %404 = phi ptr [ %402, %399 ], [ null, %396 ]
  br i1 %398, label %435, label %405

405:                                              ; preds = %403
  %406 = getelementptr inbounds %struct.edge_def, ptr %404, i64 0, i32 1
  %407 = load ptr, ptr %406, align 8, !tbaa !70
  %408 = getelementptr inbounds %struct.basic_block_def, ptr %407, i64 0, i32 13
  %409 = load i32, ptr %408, align 8, !tbaa !127
  %410 = and i32 %409, 128
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %425, label %412

412:                                              ; preds = %405
  %413 = load ptr, ptr %404, align 8, !tbaa !75
  %414 = getelementptr inbounds %struct.basic_block_def, ptr %413, i64 0, i32 3
  %415 = load ptr, ptr %414, align 8, !tbaa !76
  %416 = icmp eq ptr %415, %275
  br i1 %416, label %421, label %417

417:                                              ; preds = %412
  %418 = getelementptr inbounds %struct.basic_block_def, ptr %407, i64 0, i32 3
  %419 = load ptr, ptr %418, align 8, !tbaa !76
  %420 = icmp eq ptr %419, %275
  br i1 %420, label %421, label %425

421:                                              ; preds = %417, %412
  %422 = getelementptr inbounds %struct.edge_def, ptr %404, i64 0, i32 7
  %423 = load i32, ptr %422, align 8, !tbaa !68
  %424 = or i32 %423, 128
  store i32 %424, ptr %422, align 8, !tbaa !68
  br label %425

425:                                              ; preds = %421, %417, %405
  %426 = icmp eq ptr %392, null
  br i1 %426, label %429, label %427

427:                                              ; preds = %425
  %428 = load i32, ptr %392, align 8, !tbaa !73
  br label %429

429:                                              ; preds = %427, %425
  %430 = phi i32 [ %428, %427 ], [ 0, %425 ]
  %431 = icmp ult i32 %391, %430
  br i1 %431, label %433, label %432

432:                                              ; preds = %429
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %433

433:                                              ; preds = %429, %432
  %434 = add i32 %391, 1
  br label %390, !llvm.loop !168

435:                                              ; preds = %403
  %436 = add nuw nsw i64 %378, 1
  %437 = icmp eq i64 %436, %329
  br i1 %437, label %376, label %377, !llvm.loop !169

438:                                              ; preds = %376, %438
  %439 = phi i64 [ %445, %438 ], [ 0, %376 ]
  %440 = getelementptr inbounds ptr, ptr %61, i64 %439
  %441 = load ptr, ptr %440, align 8, !tbaa !49
  %442 = getelementptr inbounds %struct.basic_block_def, ptr %441, i64 0, i32 13
  %443 = load i32, ptr %442, align 8, !tbaa !127
  %444 = and i32 %443, -129
  store i32 %444, ptr %442, align 8, !tbaa !127
  %445 = add nuw nsw i64 %439, 1
  %446 = icmp eq i64 %445, %330
  br i1 %446, label %447, label %438, !llvm.loop !170

447:                                              ; preds = %438, %376, %366
  br i1 %15, label %448, label %457

448:                                              ; preds = %447
  %449 = load ptr, ptr %61, align 8, !tbaa !49
  %450 = call ptr @redirect_edge_and_branch_force(ptr noundef %337, ptr noundef %449) #15
  %451 = load ptr, ptr %9, align 16, !tbaa !49
  %452 = load ptr, ptr %10, align 8, !tbaa !103
  %453 = call ptr @redirect_edge_and_branch_force(ptr noundef %451, ptr noundef %452) #15
  %454 = load ptr, ptr %61, align 8, !tbaa !49
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %454, ptr noundef %335) #15
  %455 = load ptr, ptr %317, align 8, !tbaa !49
  store ptr %455, ptr %12, align 8, !tbaa !83
  %456 = load ptr, ptr %9, align 16, !tbaa !49
  br label %466

457:                                              ; preds = %447
  %458 = load ptr, ptr %9, align 16, !tbaa !49
  %459 = load ptr, ptr %10, align 8, !tbaa !103
  %460 = call ptr @redirect_edge_and_branch_force(ptr noundef %458, ptr noundef %459) #15
  %461 = load ptr, ptr %61, align 8, !tbaa !49
  %462 = call ptr @redirect_edge_and_branch_force(ptr noundef %333, ptr noundef %461) #15
  %463 = load ptr, ptr %61, align 8, !tbaa !49
  %464 = load ptr, ptr %333, align 8, !tbaa !75
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %463, ptr noundef %464) #15
  %465 = load ptr, ptr %9, align 16, !tbaa !49
  br label %466

466:                                              ; preds = %457, %448
  %467 = phi ptr [ %456, %448 ], [ %337, %457 ]
  %468 = phi ptr [ %455, %448 ], [ %335, %457 ]
  %469 = phi ptr [ %456, %448 ], [ %465, %457 ]
  br i1 %24, label %579, label %470

470:                                              ; preds = %466
  %471 = add nuw nsw i64 %332, 1
  %472 = lshr i64 %471, 6
  %473 = and i64 %472, 67108863
  %474 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3, i64 %473
  %475 = load i64, ptr %474, align 8, !tbaa !98
  %476 = and i64 %471, 63
  %477 = shl nuw i64 1, %476
  %478 = and i64 %475, %477
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %579, label %480

480:                                              ; preds = %470
  br i1 %318, label %499, label %481

481:                                              ; preds = %480
  %482 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 1
  %483 = load ptr, ptr %482, align 8, !tbaa !49
  %484 = load ptr, ptr %5, align 8, !tbaa !49
  %485 = icmp eq ptr %484, null
  br i1 %485, label %491, label %486

486:                                              ; preds = %481
  %487 = getelementptr inbounds %struct.VEC_edge_base, ptr %484, i64 0, i32 1
  %488 = load i32, ptr %487, align 4, !tbaa !171
  %489 = load i32, ptr %484, align 8, !tbaa !73
  %490 = icmp eq i32 %488, %489
  br i1 %490, label %491, label %493

491:                                              ; preds = %481, %486
  %492 = call ptr @vec_heap_p_reserve(ptr noundef %484, i32 noundef 1) #15
  store ptr %492, ptr %5, align 8, !tbaa !49
  br label %493

493:                                              ; preds = %486, %491
  %494 = load ptr, ptr %5, align 8, !tbaa !49
  %495 = load i32, ptr %494, align 8, !tbaa !73
  %496 = add i32 %495, 1
  store i32 %496, ptr %494, align 8, !tbaa !73
  %497 = zext i32 %495 to i64
  %498 = getelementptr inbounds %struct.VEC_edge_base, ptr %494, i64 0, i32 2, i64 %497
  store ptr %483, ptr %498, align 8, !tbaa !49
  br label %499

499:                                              ; preds = %493, %480
  %500 = load ptr, ptr %319, align 8, !tbaa !49
  call fastcc void @set_zero_probability(ptr noundef %500)
  br i1 %320, label %579, label %501

501:                                              ; preds = %499
  %502 = load ptr, ptr %272, align 8, !tbaa !172
  %503 = icmp eq ptr %502, null
  %504 = select i1 %503, ptr @bitmap_zero_bits, ptr %502
  %505 = getelementptr inbounds %struct.bitmap_element_def, ptr %504, i64 0, i32 2
  %506 = load i32, ptr %505, align 8, !tbaa !174
  %507 = shl i32 %506, 7
  %508 = getelementptr inbounds %struct.bitmap_element_def, ptr %504, i64 0, i32 3
  %509 = load i64, ptr %508, align 8, !tbaa !98
  %510 = icmp eq i64 %509, 0
  %511 = zext i1 %510 to i32
  %512 = or disjoint i32 %507, %511
  br label %513

513:                                              ; preds = %574, %501
  %514 = phi ptr [ %504, %501 ], [ %569, %574 ]
  %515 = phi i32 [ 0, %501 ], [ %570, %574 ]
  %516 = phi i64 [ %509, %501 ], [ %577, %574 ]
  %517 = phi i32 [ %512, %501 ], [ %578, %574 ]
  %518 = icmp eq i64 %516, 0
  br i1 %518, label %533, label %519

519:                                              ; preds = %547, %513
  %520 = phi ptr [ %514, %513 ], [ %538, %547 ]
  %521 = phi i32 [ %515, %513 ], [ %548, %547 ]
  %522 = phi i64 [ %516, %513 ], [ %552, %547 ]
  %523 = phi i32 [ %517, %513 ], [ %549, %547 ]
  %524 = and i64 %522, 1
  %525 = icmp eq i64 %524, 0
  br i1 %525, label %526, label %568

526:                                              ; preds = %519, %526
  %527 = phi i32 [ %530, %526 ], [ %523, %519 ]
  %528 = phi i64 [ %529, %526 ], [ %522, %519 ]
  %529 = lshr exact i64 %528, 1
  %530 = add i32 %527, 1
  %531 = and i64 %528, 2
  %532 = icmp eq i64 %531, 0
  br i1 %532, label %526, label %568, !llvm.loop !176

533:                                              ; preds = %513
  %534 = add i32 %517, 63
  %535 = and i32 %534, -64
  %536 = add i32 %515, 1
  br label %537

537:                                              ; preds = %564, %533
  %538 = phi ptr [ %514, %533 ], [ %562, %564 ]
  %539 = phi i64 [ %516, %533 ], [ %559, %564 ]
  %540 = phi i32 [ %535, %533 ], [ %567, %564 ]
  %541 = phi i32 [ %536, %533 ], [ 0, %564 ]
  %542 = icmp eq i32 %541, 2
  br i1 %542, label %558, label %543

543:                                              ; preds = %537
  %544 = add i32 %540, 128
  %545 = shl i32 %541, 6
  %546 = sub i32 %544, %545
  br label %547

547:                                              ; preds = %543, %554
  %548 = phi i32 [ %556, %554 ], [ %541, %543 ]
  %549 = phi i32 [ %555, %554 ], [ %540, %543 ]
  %550 = zext i32 %548 to i64
  %551 = getelementptr inbounds %struct.bitmap_element_def, ptr %538, i64 0, i32 3, i64 %550
  %552 = load i64, ptr %551, align 8, !tbaa !98
  %553 = icmp eq i64 %552, 0
  br i1 %553, label %554, label %519

554:                                              ; preds = %547
  %555 = add i32 %549, 64
  %556 = add i32 %548, 1
  %557 = icmp eq i32 %556, 2
  br i1 %557, label %558, label %547, !llvm.loop !177

558:                                              ; preds = %554, %537
  %559 = phi i64 [ %539, %537 ], [ %552, %554 ]
  %560 = phi i32 [ %540, %537 ], [ %546, %554 ]
  %561 = phi i32 [ %541, %537 ], [ 2, %554 ]
  %562 = load ptr, ptr %538, align 8, !tbaa !178
  %563 = icmp eq ptr %562, null
  br i1 %563, label %568, label %564

564:                                              ; preds = %558
  %565 = getelementptr inbounds %struct.bitmap_element_def, ptr %562, i64 0, i32 2
  %566 = load i32, ptr %565, align 8, !tbaa !174
  %567 = shl i32 %566, 7
  br label %537, !llvm.loop !179

568:                                              ; preds = %558, %526, %519
  %569 = phi ptr [ %520, %519 ], [ %520, %526 ], [ %562, %558 ]
  %570 = phi i32 [ %521, %519 ], [ %521, %526 ], [ %561, %558 ]
  %571 = phi i64 [ %522, %519 ], [ %529, %526 ], [ %559, %558 ]
  %572 = phi i32 [ %523, %519 ], [ %530, %526 ], [ %560, %558 ]
  %573 = phi i1 [ false, %519 ], [ false, %526 ], [ true, %558 ]
  br i1 %573, label %579, label %574

574:                                              ; preds = %568
  %575 = zext i32 %572 to i64
  %576 = getelementptr inbounds ptr, ptr %61, i64 %575
  call void @scale_bbs_frequencies_int(ptr noundef %576, i32 noundef 1, i32 noundef %270, i32 noundef 10000) #15
  %577 = lshr i64 %571, 1
  %578 = add i32 %572, 1
  br label %513, !llvm.loop !180

579:                                              ; preds = %568, %499, %470, %466
  %580 = icmp eq ptr %336, null
  br i1 %580, label %581, label %583

581:                                              ; preds = %579
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %304, ptr align 8 %61, i64 %303, i1 false)
  %582 = load ptr, ptr %321, align 8, !tbaa !49
  br label %583

583:                                              ; preds = %581, %579
  %584 = phi ptr [ %336, %579 ], [ %582, %581 ]
  br i1 %71, label %591, label %585

585:                                              ; preds = %583
  call void @scale_bbs_frequencies_int(ptr noundef %61, i32 noundef %38, i32 noundef %338, i32 noundef 10000) #15
  %586 = getelementptr inbounds i32, ptr %268, i64 %332
  %587 = load i32, ptr %586, align 4, !tbaa !64
  %588 = mul nsw i32 %587, %338
  %589 = add nsw i32 %588, 5000
  %590 = sdiv i32 %589, 10000
  br label %591

591:                                              ; preds = %583, %585
  %592 = phi i32 [ %590, %585 ], [ %338, %583 ]
  %593 = add nuw nsw i64 %332, 1
  %594 = icmp eq i64 %593, %322
  br i1 %594, label %595, label %331, !llvm.loop !181

595:                                              ; preds = %591, %306
  %596 = phi ptr [ %307, %306 ], [ %584, %591 ]
  %597 = phi ptr [ %1, %306 ], [ %469, %591 ]
  call void @free(ptr noundef %61)
  call void @free(ptr noundef %289)
  br i1 %24, label %701, label %598

598:                                              ; preds = %595
  %599 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %600 = load i64, ptr %599, align 8, !tbaa !98
  %601 = and i64 %600, 1
  %602 = icmp eq i64 %601, 0
  br i1 %602, label %701, label %603

603:                                              ; preds = %598
  %604 = icmp eq ptr %5, null
  br i1 %604, label %621, label %605

605:                                              ; preds = %603
  %606 = load ptr, ptr %5, align 8, !tbaa !49
  %607 = icmp eq ptr %606, null
  br i1 %607, label %613, label %608

608:                                              ; preds = %605
  %609 = getelementptr inbounds %struct.VEC_edge_base, ptr %606, i64 0, i32 1
  %610 = load i32, ptr %609, align 4, !tbaa !171
  %611 = load i32, ptr %606, align 8, !tbaa !73
  %612 = icmp eq i32 %610, %611
  br i1 %612, label %613, label %615

613:                                              ; preds = %605, %608
  %614 = call ptr @vec_heap_p_reserve(ptr noundef %606, i32 noundef 1) #15
  store ptr %614, ptr %5, align 8, !tbaa !49
  br label %615

615:                                              ; preds = %608, %613
  %616 = load ptr, ptr %5, align 8, !tbaa !49
  %617 = load i32, ptr %616, align 8, !tbaa !73
  %618 = add i32 %617, 1
  store i32 %618, ptr %616, align 8, !tbaa !73
  %619 = zext i32 %617 to i64
  %620 = getelementptr inbounds %struct.VEC_edge_base, ptr %616, i64 0, i32 2, i64 %619
  store ptr %4, ptr %620, align 8, !tbaa !49
  br label %621

621:                                              ; preds = %615, %603
  call fastcc void @set_zero_probability(ptr noundef nonnull %4)
  %622 = icmp eq ptr %272, null
  br i1 %622, label %701, label %623

623:                                              ; preds = %621
  %624 = load ptr, ptr %272, align 8, !tbaa !172
  %625 = icmp eq ptr %624, null
  %626 = select i1 %625, ptr @bitmap_zero_bits, ptr %624
  %627 = getelementptr inbounds %struct.bitmap_element_def, ptr %626, i64 0, i32 2
  %628 = load i32, ptr %627, align 8, !tbaa !174
  %629 = shl i32 %628, 7
  %630 = getelementptr inbounds %struct.bitmap_element_def, ptr %626, i64 0, i32 3
  %631 = load i64, ptr %630, align 8, !tbaa !98
  %632 = icmp eq i64 %631, 0
  %633 = zext i1 %632 to i32
  %634 = or disjoint i32 %629, %633
  br label %635

635:                                              ; preds = %696, %623
  %636 = phi ptr [ %626, %623 ], [ %691, %696 ]
  %637 = phi i32 [ 0, %623 ], [ %692, %696 ]
  %638 = phi i64 [ %631, %623 ], [ %699, %696 ]
  %639 = phi i32 [ %634, %623 ], [ %700, %696 ]
  %640 = icmp eq i64 %638, 0
  br i1 %640, label %655, label %641

641:                                              ; preds = %669, %635
  %642 = phi ptr [ %636, %635 ], [ %660, %669 ]
  %643 = phi i32 [ %637, %635 ], [ %670, %669 ]
  %644 = phi i64 [ %638, %635 ], [ %674, %669 ]
  %645 = phi i32 [ %639, %635 ], [ %671, %669 ]
  %646 = and i64 %644, 1
  %647 = icmp eq i64 %646, 0
  br i1 %647, label %648, label %690

648:                                              ; preds = %641, %648
  %649 = phi i32 [ %652, %648 ], [ %645, %641 ]
  %650 = phi i64 [ %651, %648 ], [ %644, %641 ]
  %651 = lshr exact i64 %650, 1
  %652 = add i32 %649, 1
  %653 = and i64 %650, 2
  %654 = icmp eq i64 %653, 0
  br i1 %654, label %648, label %690, !llvm.loop !176

655:                                              ; preds = %635
  %656 = add i32 %639, 63
  %657 = and i32 %656, -64
  %658 = add i32 %637, 1
  br label %659

659:                                              ; preds = %686, %655
  %660 = phi ptr [ %636, %655 ], [ %684, %686 ]
  %661 = phi i64 [ %638, %655 ], [ %681, %686 ]
  %662 = phi i32 [ %657, %655 ], [ %689, %686 ]
  %663 = phi i32 [ %658, %655 ], [ 0, %686 ]
  %664 = icmp eq i32 %663, 2
  br i1 %664, label %680, label %665

665:                                              ; preds = %659
  %666 = add i32 %662, 128
  %667 = shl i32 %663, 6
  %668 = sub i32 %666, %667
  br label %669

669:                                              ; preds = %665, %676
  %670 = phi i32 [ %678, %676 ], [ %663, %665 ]
  %671 = phi i32 [ %677, %676 ], [ %662, %665 ]
  %672 = zext i32 %670 to i64
  %673 = getelementptr inbounds %struct.bitmap_element_def, ptr %660, i64 0, i32 3, i64 %672
  %674 = load i64, ptr %673, align 8, !tbaa !98
  %675 = icmp eq i64 %674, 0
  br i1 %675, label %676, label %641

676:                                              ; preds = %669
  %677 = add i32 %671, 64
  %678 = add i32 %670, 1
  %679 = icmp eq i32 %678, 2
  br i1 %679, label %680, label %669, !llvm.loop !177

680:                                              ; preds = %676, %659
  %681 = phi i64 [ %661, %659 ], [ %674, %676 ]
  %682 = phi i32 [ %662, %659 ], [ %668, %676 ]
  %683 = phi i32 [ %663, %659 ], [ 2, %676 ]
  %684 = load ptr, ptr %660, align 8, !tbaa !178
  %685 = icmp eq ptr %684, null
  br i1 %685, label %690, label %686

686:                                              ; preds = %680
  %687 = getelementptr inbounds %struct.bitmap_element_def, ptr %684, i64 0, i32 2
  %688 = load i32, ptr %687, align 8, !tbaa !174
  %689 = shl i32 %688, 7
  br label %659, !llvm.loop !179

690:                                              ; preds = %680, %648, %641
  %691 = phi ptr [ %642, %641 ], [ %642, %648 ], [ %684, %680 ]
  %692 = phi i32 [ %643, %641 ], [ %643, %648 ], [ %683, %680 ]
  %693 = phi i64 [ %644, %641 ], [ %651, %648 ], [ %681, %680 ]
  %694 = phi i32 [ %645, %641 ], [ %652, %648 ], [ %682, %680 ]
  %695 = phi i1 [ false, %641 ], [ false, %648 ], [ true, %680 ]
  br i1 %695, label %701, label %696

696:                                              ; preds = %690
  %697 = zext i32 %694 to i64
  %698 = getelementptr inbounds ptr, ptr %39, i64 %697
  call void @scale_bbs_frequencies_int(ptr noundef nonnull %698, i32 noundef 1, i32 noundef %270, i32 noundef 10000) #15
  %699 = lshr i64 %693, 1
  %700 = add i32 %694, 1
  br label %635, !llvm.loop !182

701:                                              ; preds = %690, %621, %598, %595
  br i1 %15, label %706, label %702

702:                                              ; preds = %701
  %703 = getelementptr inbounds %struct.edge_def, ptr %597, i64 0, i32 1
  %704 = load ptr, ptr %703, align 8, !tbaa !70
  %705 = load ptr, ptr %597, align 8, !tbaa !75
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %704, ptr noundef %705) #15
  br label %706

706:                                              ; preds = %702, %701
  br i1 %71, label %708, label %707

707:                                              ; preds = %706
  call void @scale_bbs_frequencies_int(ptr noundef nonnull %39, i32 noundef %38, i32 noundef %269, i32 noundef 10000) #15
  call void @free(ptr noundef %268)
  br label %708

708:                                              ; preds = %707, %706
  %709 = icmp eq i32 %38, 0
  br i1 %709, label %745, label %710

710:                                              ; preds = %708
  %711 = zext i32 %38 to i64
  br label %712

712:                                              ; preds = %710, %742
  %713 = phi i64 [ 0, %710 ], [ %743, %742 ]
  %714 = getelementptr inbounds ptr, ptr %39, i64 %713
  %715 = load ptr, ptr %714, align 8, !tbaa !49
  %716 = getelementptr inbounds %struct.basic_block_def, ptr %715, i64 0, i32 2
  store ptr null, ptr %716, align 8, !tbaa !165
  %717 = call ptr @get_dominated_by(i32 noundef 1, ptr noundef %715) #15
  %718 = icmp eq ptr %717, null
  %719 = getelementptr inbounds ptr, ptr %304, i64 %713
  br label %720

720:                                              ; preds = %738, %712
  %721 = phi i32 [ 0, %712 ], [ %739, %738 ]
  br i1 %718, label %729, label %722

722:                                              ; preds = %720
  %723 = load i32, ptr %717, align 8, !tbaa !108
  %724 = icmp ugt i32 %723, %721
  br i1 %724, label %725, label %729

725:                                              ; preds = %722
  %726 = zext i32 %721 to i64
  %727 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %717, i64 0, i32 2, i64 %726
  %728 = load ptr, ptr %727, align 8, !tbaa !49
  br label %729

729:                                              ; preds = %720, %722, %725
  %730 = phi ptr [ %728, %725 ], [ null, %722 ], [ null, %720 ]
  %731 = phi i1 [ false, %725 ], [ true, %722 ], [ true, %720 ]
  br i1 %731, label %740, label %732

732:                                              ; preds = %729
  %733 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %730) #15
  %734 = icmp eq i8 %733, 0
  br i1 %734, label %735, label %738

735:                                              ; preds = %732
  %736 = load ptr, ptr %719, align 8, !tbaa !49
  %737 = call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %736, ptr noundef %596) #15
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %730, ptr noundef %737) #15
  br label %738

738:                                              ; preds = %732, %735
  %739 = add i32 %721, 1
  br label %720, !llvm.loop !183

740:                                              ; preds = %729
  br i1 %718, label %742, label %741

741:                                              ; preds = %740
  call void @free(ptr noundef %717)
  br label %742

742:                                              ; preds = %740, %741
  %743 = add nuw nsw i64 %713, 1
  %744 = icmp eq i64 %743, %711
  br i1 %744, label %745, label %712, !llvm.loop !184

745:                                              ; preds = %742, %708
  call void @free(ptr noundef %304)
  call void @free(ptr noundef %39)
  call void @bitmap_obstack_free(ptr noundef %272) #15
  br label %746

746:                                              ; preds = %745, %56
  %747 = phi i8 [ 1, %745 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  ret i8 %747
}

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #3

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @copy_bbs(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @set_zero_probability(ptr noundef %0) unnamed_addr #9 !prof !48 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %4, align 8, !tbaa !73
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %11 = load i64, ptr %10, align 8, !tbaa !152
  %12 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !151
  %14 = icmp ugt i32 %9, 1
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 938, ptr noundef nonnull @.str.1) #15
  br label %16

16:                                               ; preds = %8, %15
  %17 = add i32 %9, -1
  %18 = zext i32 %17 to i64
  %19 = sdiv i64 %11, %18
  %20 = srem i64 %11, %18
  %21 = udiv i32 %13, %17
  %22 = urem i32 %13, %17
  br label %23

23:                                               ; preds = %57, %16
  %24 = phi i32 [ 0, %16 ], [ %58, %57 ]
  %25 = phi ptr [ null, %16 ], [ %49, %57 ]
  %26 = load ptr, ptr %3, align 8, !tbaa !49
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %26, align 8, !tbaa !73
  br label %30

30:                                               ; preds = %28, %23
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ]
  %32 = icmp eq i32 %31, %24
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = zext i32 %24 to i64
  %35 = getelementptr inbounds %struct.VEC_edge_base, ptr %26, i64 0, i32 2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  br label %37

37:                                               ; preds = %30, %33
  %38 = phi ptr [ %36, %33 ], [ null, %30 ]
  br i1 %32, label %59, label %39

39:                                               ; preds = %37
  %40 = icmp eq ptr %38, %0
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 8
  %43 = load i32, ptr %42, align 4, !tbaa !151
  %44 = add i32 %43, %21
  store i32 %44, ptr %42, align 4, !tbaa !151
  %45 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 9
  %46 = load i64, ptr %45, align 8, !tbaa !152
  %47 = add nsw i64 %46, %19
  store i64 %47, ptr %45, align 8, !tbaa !152
  br label %48

48:                                               ; preds = %41, %39
  %49 = phi ptr [ %25, %39 ], [ %38, %41 ]
  %50 = icmp eq ptr %26, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %26, align 8, !tbaa !73
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi i32 [ %52, %51 ], [ 0, %48 ]
  %55 = icmp ult i32 %24, %54
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %57

57:                                               ; preds = %53, %56
  %58 = add i32 %24, 1
  br label %23, !llvm.loop !185

59:                                               ; preds = %37
  %60 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 8
  %61 = load i32, ptr %60, align 4, !tbaa !151
  %62 = add i32 %61, %22
  store i32 %62, ptr %60, align 4, !tbaa !151
  %63 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 9
  %64 = load i64, ptr %63, align 8, !tbaa !152
  %65 = add nsw i64 %64, %20
  store i64 %65, ptr %63, align 8, !tbaa !152
  store i32 0, ptr %12, align 4, !tbaa !151
  store i64 0, ptr %10, align 8, !tbaa !152
  ret void
}

declare ptr @get_dominated_by(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @nearest_common_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @mfb_keep_just(ptr noundef readnone %0) #12 !prof !48 {
  %2 = load ptr, ptr @mfb_kj_edge, align 8, !tbaa !49
  %3 = icmp ne ptr %2, %0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @create_preheader(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !48 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %7

7:                                                ; preds = %62, %2
  %8 = phi i32 [ 0, %2 ], [ %63, %62 ]
  %9 = phi ptr [ null, %2 ], [ %51, %62 ]
  %10 = phi ptr [ null, %2 ], [ %52, %62 ]
  %11 = phi i8 [ 0, %2 ], [ %53, %62 ]
  %12 = phi i32 [ 0, %2 ], [ %54, %62 ]
  br i1 %5, label %13, label %14

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.1) #15
  br label %14

14:                                               ; preds = %13, %7
  %15 = load ptr, ptr %4, align 8, !tbaa !49
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 8, !tbaa !73
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %18, %17 ], [ 0, %14 ]
  %21 = icmp eq i32 %20, %8
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = zext i32 %8 to i64
  %24 = getelementptr inbounds %struct.VEC_edge_base, ptr %15, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  br label %26

26:                                               ; preds = %19, %22
  %27 = phi ptr [ %25, %22 ], [ null, %19 ]
  br i1 %21, label %64, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %27, align 8, !tbaa !75
  %30 = load ptr, ptr %6, align 8, !tbaa !83
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %50, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !68
  %35 = trunc i32 %34 to i8
  %36 = lshr i8 %35, 7
  %37 = or i8 %36, %11
  %38 = add nsw i32 %12, 1
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !88
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = load i32, ptr %40, align 8, !tbaa !73
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i8
  br label %46

46:                                               ; preds = %32, %42
  %47 = phi i8 [ %45, %42 ], [ 0, %32 ]
  %48 = icmp eq i8 %47, 0
  %49 = select i1 %48, ptr %9, ptr %27
  br label %50

50:                                               ; preds = %28, %46
  %51 = phi ptr [ %9, %28 ], [ %49, %46 ]
  %52 = phi ptr [ %10, %28 ], [ %27, %46 ]
  %53 = phi i8 [ %11, %28 ], [ %37, %46 ]
  %54 = phi i32 [ %12, %28 ], [ %38, %46 ]
  %55 = icmp eq ptr %15, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = load i32, ptr %15, align 8, !tbaa !73
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi i32 [ %57, %56 ], [ 0, %50 ]
  %60 = icmp ult i32 %8, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %62

62:                                               ; preds = %58, %61
  %63 = add i32 %8, 1
  br label %7, !llvm.loop !186

64:                                               ; preds = %26
  switch i32 %12, label %128 [
    i32 0, label %65
    i32 1, label %66
  ]

65:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1346, ptr noundef nonnull @.str.1) #15
  br label %128

66:                                               ; preds = %64
  %67 = load ptr, ptr %10, align 8, !tbaa !75
  %68 = load ptr, ptr @cfun, align 8, !tbaa !49
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !90
  %71 = load ptr, ptr %70, align 8, !tbaa !187
  %72 = icmp eq ptr %67, %71
  br i1 %72, label %128, label %73

73:                                               ; preds = %66
  %74 = and i32 %1, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !88
  %79 = icmp eq ptr %78, null
  br i1 %79, label %128, label %80

80:                                               ; preds = %76
  %81 = load i32, ptr %78, align 8, !tbaa !73
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %128

83:                                               ; preds = %80, %73
  %84 = and i32 %1, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %203, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !60
  %89 = getelementptr inbounds %struct.rtl_bb_info, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !188
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 9
  br i1 %93, label %128, label %94

94:                                               ; preds = %86
  %95 = icmp eq ptr %67, null
  br label %96

96:                                               ; preds = %94, %125
  %97 = phi i32 [ %126, %125 ], [ 0, %94 ]
  br i1 %95, label %98, label %99

98:                                               ; preds = %96
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.1) #15
  br label %99

99:                                               ; preds = %98, %96
  %100 = load ptr, ptr %67, align 8, !tbaa !49
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr %100, align 8, !tbaa !73
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi i32 [ %103, %102 ], [ 0, %99 ]
  %106 = icmp eq i32 %105, %97
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = zext i32 %97 to i64
  %109 = getelementptr inbounds %struct.VEC_edge_base, ptr %100, i64 0, i32 2, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !49
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi ptr [ %110, %107 ], [ null, %104 ]
  br i1 %106, label %203, label %113

113:                                              ; preds = %111
  %114 = load ptr, ptr %112, align 8, !tbaa !75
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %114, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !76
  %117 = icmp eq ptr %116, %0
  br i1 %117, label %127, label %118

118:                                              ; preds = %113
  br i1 %101, label %121, label %119

119:                                              ; preds = %118
  %120 = load i32, ptr %100, align 8, !tbaa !73
  br label %121

121:                                              ; preds = %119, %118
  %122 = phi i32 [ %120, %119 ], [ 0, %118 ]
  %123 = icmp ult i32 %97, %122
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %125

125:                                              ; preds = %124, %121
  %126 = add i32 %97, 1
  br label %96, !llvm.loop !190

127:                                              ; preds = %113
  br i1 %106, label %203, label %128

128:                                              ; preds = %76, %127, %80, %66, %86, %65, %64
  %129 = tail call ptr @loop_latch_edge(ptr noundef %0) #15
  store ptr %129, ptr @mfb_kj_edge, align 8, !tbaa !49
  %130 = getelementptr inbounds %struct.edge_def, ptr %129, i64 0, i32 7
  %131 = load i32, ptr %130, align 8, !tbaa !68
  %132 = load ptr, ptr %3, align 8, !tbaa !103
  %133 = tail call ptr @make_forwarder_block(ptr noundef %132, ptr noundef nonnull @mfb_keep_just, ptr noundef null) #15
  %134 = load ptr, ptr %133, align 8, !tbaa !75
  %135 = getelementptr inbounds %struct.edge_def, ptr %133, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !70
  store ptr %136, ptr %3, align 8, !tbaa !103
  %137 = and i32 %131, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %149, label %139

139:                                              ; preds = %128
  %140 = icmp eq ptr %9, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %139
  %142 = load ptr, ptr %134, align 8, !tbaa !71
  %143 = getelementptr inbounds %struct.VEC_edge_base, ptr %142, i64 0, i32 2, i64 0
  %144 = load ptr, ptr %143, align 8, !tbaa !49
  br label %145

145:                                              ; preds = %139, %141
  %146 = phi ptr [ %144, %141 ], [ %9, %139 ]
  %147 = load ptr, ptr %146, align 8, !tbaa !75
  %148 = tail call zeroext i8 @move_block_after(ptr noundef %134, ptr noundef %147) #15
  br label %149

149:                                              ; preds = %145, %128
  %150 = icmp eq i8 %11, 0
  br i1 %150, label %169, label %151

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 13
  %153 = load i32, ptr %152, align 8, !tbaa !127
  %154 = or i32 %153, 4
  store i32 %154, ptr %152, align 8, !tbaa !127
  %155 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !88
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %151
  %159 = load i32, ptr %156, align 8, !tbaa !73
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %162, label %161

161:                                              ; preds = %151, %158
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %162

162:                                              ; preds = %158, %161
  %163 = load ptr, ptr %155, align 8, !tbaa !88
  %164 = getelementptr inbounds %struct.VEC_edge_base, ptr %163, i64 0, i32 2, i64 0
  %165 = load ptr, ptr %164, align 8, !tbaa !49
  %166 = getelementptr inbounds %struct.edge_def, ptr %165, i64 0, i32 7
  %167 = load i32, ptr %166, align 8, !tbaa !68
  %168 = or i32 %167, 128
  store i32 %168, ptr %166, align 8, !tbaa !68
  br label %169

169:                                              ; preds = %162, %149
  %170 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %171 = icmp eq ptr %170, null
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i32, ptr %0, align 8, !tbaa !125
  %174 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %170, ptr noundef nonnull @.str.2, i32 noundef %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = and i32 %1, 2
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %203, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !88
  %181 = icmp eq ptr %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %178
  %183 = load i32, ptr %180, align 8, !tbaa !73
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %186, label %185

185:                                              ; preds = %178, %182
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %186

186:                                              ; preds = %182, %185
  %187 = load ptr, ptr %179, align 8, !tbaa !88
  %188 = getelementptr inbounds %struct.VEC_edge_base, ptr %187, i64 0, i32 2, i64 0
  %189 = load ptr, ptr %188, align 8, !tbaa !49
  %190 = getelementptr inbounds %struct.edge_def, ptr %189, i64 0, i32 7
  %191 = load i32, ptr %190, align 8, !tbaa !68
  %192 = and i32 %191, 1
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %186
  %195 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 7
  %196 = load ptr, ptr %195, align 8, !tbaa !60
  %197 = getelementptr inbounds %struct.rtl_bb_info, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !188
  %199 = load i32, ptr %198, align 8
  %200 = and i32 %199, 65535
  %201 = icmp eq i32 %200, 9
  br i1 %201, label %202, label %203

202:                                              ; preds = %194, %186
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1409, ptr noundef nonnull @.str.1) #15
  br label %203

203:                                              ; preds = %111, %127, %83, %175, %194, %202
  %204 = phi ptr [ %134, %202 ], [ %134, %194 ], [ %134, %175 ], [ null, %83 ], [ null, %127 ], [ null, %111 ]
  ret ptr %204
}

declare ptr @make_forwarder_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @move_block_after(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @create_preheaders(i32 noundef %0) local_unnamed_addr #13 !prof !191 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  %5 = icmp eq ptr %4, null
  br i1 %5, label %128, label %6, !prof !192

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !192

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !81
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ 0, %6 ]
  %14 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %13, i64 noundef 8, i64 noundef 4) #15
  %15 = load ptr, ptr @cfun, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = getelementptr inbounds %struct.loops, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !116
  br label %20

20:                                               ; preds = %33, %12
  %21 = phi ptr [ %19, %12 ], [ %34, %33 ]
  %22 = load i32, ptr %21, align 8, !tbaa !125
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %29, label %24, !prof !193

24:                                               ; preds = %20
  %25 = load i32, ptr %14, align 4, !tbaa !194
  %26 = add i32 %25, 1
  store i32 %26, ptr %14, align 4, !tbaa !194
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds %struct.VEC_int_base, ptr %14, i64 0, i32 2, i64 %27
  store i32 %22, ptr %28, align 4, !tbaa !64
  br label %29

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33, !prof !193

33:                                               ; preds = %37, %29
  %34 = phi ptr [ %31, %29 ], [ %40, %37 ]
  br label %20, !llvm.loop !196

35:                                               ; preds = %56
  %36 = icmp eq ptr %14, null
  br label %59

37:                                               ; preds = %29, %56
  %38 = phi ptr [ %57, %56 ], [ %21, %29 ]
  %39 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !197
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %33, !prof !193, !llvm.loop !196

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !77
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !193

46:                                               ; preds = %42
  %47 = load i32, ptr %44, align 8, !tbaa !81
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %47, %46 ], [ 0, %42 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51, !prof !193

51:                                               ; preds = %48
  %52 = add i32 %49, -1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %44, i64 0, i32 2, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !49
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi ptr [ %55, %51 ], [ null, %48 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %35, label %37, !prof !193, !llvm.loop !198

59:                                               ; preds = %35, %71
  %60 = phi i32 [ %73, %71 ], [ 0, %35 ]
  br i1 %36, label %68, label %61, !prof !192

61:                                               ; preds = %59
  %62 = load i32, ptr %14, align 4, !tbaa !194
  %63 = icmp ugt i32 %62, %60
  br i1 %63, label %64, label %68, !prof !192

64:                                               ; preds = %61
  %65 = zext i32 %60 to i64
  %66 = getelementptr inbounds %struct.VEC_int_base, ptr %14, i64 0, i32 2, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !64
  br label %68

68:                                               ; preds = %64, %61, %59
  %69 = phi i32 [ %67, %64 ], [ 0, %61 ], [ 0, %59 ]
  %70 = phi i1 [ false, %64 ], [ true, %61 ], [ true, %59 ]
  br i1 %70, label %79, label %71, !prof !193

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.loops, ptr %17, i64 0, i32 1
  %73 = add i32 %60, 1
  %74 = load ptr, ptr %72, align 8, !tbaa !124
  %75 = zext i32 %69 to i64
  %76 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %74, i64 0, i32 2, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !49
  %78 = icmp eq ptr %77, null
  br i1 %78, label %59, label %81, !llvm.loop !199

79:                                               ; preds = %68
  br i1 %36, label %81, label %80, !prof !192

80:                                               ; preds = %79
  tail call void @free(ptr noundef %14)
  br label %81

81:                                               ; preds = %71, %79, %80
  %82 = phi i32 [ %60, %80 ], [ %60, %79 ], [ %73, %71 ]
  %83 = phi ptr [ null, %80 ], [ null, %79 ], [ %14, %71 ]
  %84 = phi ptr [ null, %80 ], [ null, %79 ], [ %77, %71 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %122, label %86, !prof !200

86:                                               ; preds = %81, %117
  %87 = phi ptr [ %120, %117 ], [ %84, %81 ]
  %88 = phi ptr [ %119, %117 ], [ %83, %81 ]
  %89 = phi i32 [ %118, %117 ], [ %82, %81 ]
  %90 = tail call ptr @create_preheader(ptr noundef nonnull %87, i32 noundef %0)
  %91 = icmp eq ptr %88, null
  %92 = load ptr, ptr @cfun, align 8
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 4
  br label %94

94:                                               ; preds = %106, %86
  %95 = phi i32 [ %89, %86 ], [ %107, %106 ]
  br i1 %91, label %103, label %96

96:                                               ; preds = %94
  %97 = load i32, ptr %88, align 4, !tbaa !194
  %98 = icmp ugt i32 %97, %95
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = zext i32 %95 to i64
  %101 = getelementptr inbounds %struct.VEC_int_base, ptr %88, i64 0, i32 2, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !64
  br label %103

103:                                              ; preds = %99, %96, %94
  %104 = phi i32 [ %102, %99 ], [ 0, %96 ], [ 0, %94 ]
  %105 = phi i1 [ false, %99 ], [ true, %96 ], [ true, %94 ]
  br i1 %105, label %115, label %106

106:                                              ; preds = %103
  %107 = add i32 %95, 1
  %108 = load ptr, ptr %93, align 8, !tbaa !113
  %109 = getelementptr inbounds %struct.loops, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !124
  %111 = zext i32 %104 to i64
  %112 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %110, i64 0, i32 2, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !49
  %114 = icmp eq ptr %113, null
  br i1 %114, label %94, label %117, !llvm.loop !199

115:                                              ; preds = %103
  br i1 %91, label %117, label %116

116:                                              ; preds = %115
  tail call void @free(ptr noundef %88)
  br label %117

117:                                              ; preds = %106, %115, %116
  %118 = phi i32 [ %95, %116 ], [ %95, %115 ], [ %107, %106 ]
  %119 = phi ptr [ null, %116 ], [ null, %115 ], [ %88, %106 ]
  %120 = phi ptr [ null, %116 ], [ null, %115 ], [ %113, %106 ]
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %86, !prof !200, !llvm.loop !201

122:                                              ; preds = %117, %81
  %123 = load ptr, ptr @cfun, align 8, !tbaa !49
  %124 = getelementptr inbounds %struct.function, ptr %123, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !113
  %126 = load i32, ptr %125, align 8, !tbaa !114
  %127 = or i32 %126, 1
  store i32 %127, ptr %125, align 8, !tbaa !114
  br label %128

128:                                              ; preds = %1, %122
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @force_single_succ_latches() local_unnamed_addr #13 !prof !202 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = icmp eq ptr %3, null
  br i1 %4, label %80, label %5, !prof !203

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !203

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !81
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ 0, %5 ]
  %13 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %12, i64 noundef 8, i64 noundef 4) #15
  %14 = load ptr, ptr @cfun, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = getelementptr inbounds %struct.loops, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !116
  br label %19

19:                                               ; preds = %32, %11
  %20 = phi ptr [ %18, %11 ], [ %33, %32 ]
  %21 = load i32, ptr %20, align 8, !tbaa !125
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %28, label %23, !prof !204

23:                                               ; preds = %19
  %24 = load i32, ptr %13, align 4, !tbaa !194
  %25 = add i32 %24, 1
  store i32 %25, ptr %13, align 4, !tbaa !194
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds %struct.VEC_int_base, ptr %13, i64 0, i32 2, i64 %26
  store i32 %21, ptr %27, align 4, !tbaa !64
  br label %28

28:                                               ; preds = %23, %19
  %29 = getelementptr inbounds %struct.loop, ptr %20, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !86
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32, !prof !204

32:                                               ; preds = %36, %28
  %33 = phi ptr [ %30, %28 ], [ %39, %36 ]
  br label %19, !llvm.loop !196

34:                                               ; preds = %55
  %35 = icmp eq ptr %13, null
  br label %58

36:                                               ; preds = %28, %55
  %37 = phi ptr [ %56, %55 ], [ %20, %28 ]
  %38 = getelementptr inbounds %struct.loop, ptr %37, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !197
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %32, !prof !204, !llvm.loop !196

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.loop, ptr %37, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !77
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !204

45:                                               ; preds = %41
  %46 = load i32, ptr %43, align 8, !tbaa !81
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %46, %45 ], [ 0, %41 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50, !prof !204

50:                                               ; preds = %47
  %51 = add i32 %48, -1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %43, i64 0, i32 2, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !49
  br label %55

55:                                               ; preds = %50, %47
  %56 = phi ptr [ %54, %50 ], [ null, %47 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %34, label %36, !prof !204, !llvm.loop !198

58:                                               ; preds = %34, %70
  %59 = phi i32 [ %72, %70 ], [ 0, %34 ]
  br i1 %35, label %67, label %60, !prof !203

60:                                               ; preds = %58
  %61 = load i32, ptr %13, align 4, !tbaa !194
  %62 = icmp ugt i32 %61, %59
  br i1 %62, label %63, label %67, !prof !203

63:                                               ; preds = %60
  %64 = zext i32 %59 to i64
  %65 = getelementptr inbounds %struct.VEC_int_base, ptr %13, i64 0, i32 2, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !64
  br label %67

67:                                               ; preds = %63, %60, %58
  %68 = phi i32 [ %66, %63 ], [ 0, %60 ], [ 0, %58 ]
  %69 = phi i1 [ false, %63 ], [ true, %60 ], [ true, %58 ]
  br i1 %69, label %78, label %70, !prof !204

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.loops, ptr %16, i64 0, i32 1
  %72 = add i32 %59, 1
  %73 = load ptr, ptr %71, align 8, !tbaa !124
  %74 = zext i32 %68 to i64
  %75 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %73, i64 0, i32 2, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !49
  %77 = icmp eq ptr %76, null
  br i1 %77, label %58, label %80, !llvm.loop !199

78:                                               ; preds = %67
  br i1 %35, label %80, label %79, !prof !203

79:                                               ; preds = %78
  tail call void @free(ptr noundef %13)
  br label %80

80:                                               ; preds = %70, %78, %79, %0
  %81 = phi i32 [ 0, %0 ], [ %59, %79 ], [ %59, %78 ], [ %72, %70 ]
  %82 = phi ptr [ null, %0 ], [ null, %79 ], [ null, %78 ], [ %13, %70 ]
  %83 = phi ptr [ null, %0 ], [ null, %79 ], [ null, %78 ], [ %76, %70 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %140, label %85, !prof !200

85:                                               ; preds = %80, %135
  %86 = phi ptr [ %138, %135 ], [ %83, %80 ]
  %87 = phi ptr [ %137, %135 ], [ %82, %80 ]
  %88 = phi i32 [ %136, %135 ], [ %81, %80 ]
  %89 = getelementptr inbounds %struct.loop, ptr %86, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !83
  %91 = getelementptr inbounds %struct.loop, ptr %86, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !103
  %93 = icmp eq ptr %90, %92
  br i1 %93, label %105, label %94

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !88
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %96, align 8, !tbaa !73
  %100 = icmp eq i32 %99, 1
  %101 = zext i1 %100 to i8
  br label %102

102:                                              ; preds = %94, %98
  %103 = phi i8 [ %101, %98 ], [ 0, %94 ]
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102, %85
  %106 = tail call ptr @find_edge(ptr noundef %90, ptr noundef %92) #15
  %107 = tail call ptr @split_edge(ptr noundef %106) #15
  br label %108

108:                                              ; preds = %102, %105
  %109 = icmp eq ptr %87, null
  %110 = load ptr, ptr @cfun, align 8
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 4
  br label %112

112:                                              ; preds = %124, %108
  %113 = phi i32 [ %88, %108 ], [ %125, %124 ]
  br i1 %109, label %121, label %114

114:                                              ; preds = %112
  %115 = load i32, ptr %87, align 4, !tbaa !194
  %116 = icmp ugt i32 %115, %113
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = zext i32 %113 to i64
  %119 = getelementptr inbounds %struct.VEC_int_base, ptr %87, i64 0, i32 2, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !64
  br label %121

121:                                              ; preds = %117, %114, %112
  %122 = phi i32 [ %120, %117 ], [ 0, %114 ], [ 0, %112 ]
  %123 = phi i1 [ false, %117 ], [ true, %114 ], [ true, %112 ]
  br i1 %123, label %133, label %124

124:                                              ; preds = %121
  %125 = add i32 %113, 1
  %126 = load ptr, ptr %111, align 8, !tbaa !113
  %127 = getelementptr inbounds %struct.loops, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !124
  %129 = zext i32 %122 to i64
  %130 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %128, i64 0, i32 2, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !49
  %132 = icmp eq ptr %131, null
  br i1 %132, label %112, label %135, !llvm.loop !199

133:                                              ; preds = %121
  br i1 %109, label %135, label %134

134:                                              ; preds = %133
  tail call void @free(ptr noundef %87)
  br label %135

135:                                              ; preds = %124, %133, %134
  %136 = phi i32 [ %113, %134 ], [ %113, %133 ], [ %125, %124 ]
  %137 = phi ptr [ null, %134 ], [ null, %133 ], [ %87, %124 ]
  %138 = phi ptr [ null, %134 ], [ null, %133 ], [ %131, %124 ]
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %85, !prof !200, !llvm.loop !205

140:                                              ; preds = %135, %80
  %141 = load ptr, ptr @cfun, align 8, !tbaa !49
  %142 = getelementptr inbounds %struct.function, ptr %141, i64 0, i32 4
  %143 = load ptr, ptr %142, align 8, !tbaa !113
  %144 = load i32, ptr %143, align 8, !tbaa !114
  %145 = or i32 %144, 2
  store i32 %145, ptr %143, align 8, !tbaa !114
  ret void
}

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @loop_version(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #9 !prof !48 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  %10 = tail call ptr @loop_preheader_edge(ptr noundef %0) #15
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !68
  %13 = and i32 %12, 128
  %14 = and i32 %12, -129
  store i32 %14, ptr %11, align 8, !tbaa !68
  %15 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = tail call zeroext i8 @cfg_hook_duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %10, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %142, label %19

19:                                               ; preds = %7
  %20 = load ptr, ptr %15, align 8, !tbaa !70
  %21 = tail call ptr @split_edge(ptr noundef %10) #15
  tail call void @lv_add_condition_to_bb(ptr noundef %16, ptr noundef %20, ptr noundef %21, ptr noundef %1) #15
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, ptr %23, align 8, !tbaa !73
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %29

29:                                               ; preds = %25, %28
  %30 = load ptr, ptr %22, align 8, !tbaa !88
  %31 = getelementptr inbounds %struct.VEC_edge_base, ptr %30, i64 0, i32 2, i64 0
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = tail call i32 @current_ir_type() #15
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 1024, i32 0
  %36 = tail call ptr @make_edge(ptr noundef %21, ptr noundef %16, i32 noundef %35) #15
  %37 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 8
  store i32 %3, ptr %37, align 4, !tbaa !151
  %38 = sub i32 10000, %3
  %39 = getelementptr inbounds %struct.edge_def, ptr %32, i64 0, i32 8
  store i32 %38, ptr %39, align 4, !tbaa !151
  %40 = getelementptr inbounds %struct.edge_def, ptr %32, i64 0, i32 9
  %41 = load i64, ptr %40, align 8, !tbaa !152
  %42 = load i32, ptr %37, align 4, !tbaa !151
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %41, %43
  %45 = add nsw i64 %44, 5000
  %46 = sdiv i64 %45, 10000
  %47 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 9
  store i64 %46, ptr %47, align 8, !tbaa !152
  %48 = load i64, ptr %40, align 8, !tbaa !152
  %49 = sext i32 %38 to i64
  %50 = mul nsw i64 %48, %49
  %51 = add nsw i64 %50, 5000
  %52 = sdiv i64 %51, 10000
  store i64 %52, ptr %40, align 8, !tbaa !152
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %16, ptr noundef %21) #15
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %20, ptr noundef %21) #15
  tail call void @lv_adjust_loop_header_phi(ptr noundef %16, ptr noundef %20, ptr noundef %21, ptr noundef %36) #15
  %53 = icmp eq ptr %2, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %29
  store ptr %21, ptr %2, align 8, !tbaa !49
  br label %55

55:                                               ; preds = %54, %29
  %56 = icmp eq ptr %21, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i32, ptr %11, align 8, !tbaa !68
  %59 = or i32 %58, %13
  store i32 %59, ptr %11, align 8, !tbaa !68
  br label %142

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !83
  %63 = tail call ptr @get_bb_copy(ptr noundef %62) #15
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !88
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, ptr %65, align 8, !tbaa !73
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %71, label %70

70:                                               ; preds = %60, %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %71

71:                                               ; preds = %67, %70
  %72 = load ptr, ptr %64, align 8, !tbaa !88
  %73 = getelementptr inbounds %struct.VEC_edge_base, ptr %72, i64 0, i32 2, i64 0
  %74 = load ptr, ptr %73, align 8, !tbaa !49
  call void @extract_cond_bb_edges(ptr noundef nonnull %21, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  %75 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !103
  %77 = call ptr @get_bb_copy(ptr noundef %76) #15
  %78 = load ptr, ptr %77, align 8, !tbaa !71
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %71
  %81 = load i32, ptr %78, align 8, !tbaa !73
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %84, label %83

83:                                               ; preds = %71, %80
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 655, ptr noundef nonnull @.str.1) #15
  br label %84

84:                                               ; preds = %80, %83
  %85 = load ptr, ptr %77, align 8, !tbaa !71
  %86 = getelementptr inbounds %struct.VEC_edge_base, ptr %85, i64 0, i32 2, i64 0
  %87 = load ptr, ptr %86, align 8, !tbaa !49
  %88 = load ptr, ptr %8, align 8, !tbaa !49
  %89 = load ptr, ptr %9, align 8, !tbaa !49
  %90 = call ptr @loopify(ptr noundef %74, ptr noundef %87, ptr noundef nonnull %21, ptr noundef %88, ptr noundef %89, i8 noundef zeroext 0, i32 noundef %4, i32 noundef %5)
  call void @lv_flush_pending_stmts(ptr noundef %74) #15
  call void @extract_cond_bb_edges(ptr noundef nonnull %21, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  %91 = load ptr, ptr %9, align 8, !tbaa !49
  call void @lv_flush_pending_stmts(ptr noundef %91) #15
  %92 = icmp eq i32 %13, 0
  br i1 %92, label %118, label %93

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %95 = load i32, ptr %94, align 8, !tbaa !127
  %96 = or i32 %95, 4
  store i32 %96, ptr %94, align 8, !tbaa !127
  %97 = call ptr @loop_preheader_edge(ptr noundef %0) #15
  %98 = getelementptr inbounds %struct.edge_def, ptr %97, i64 0, i32 7
  %99 = load i32, ptr %98, align 8, !tbaa !68
  %100 = or i32 %99, 128
  store i32 %100, ptr %98, align 8, !tbaa !68
  %101 = call ptr @loop_preheader_edge(ptr noundef %90) #15
  %102 = getelementptr inbounds %struct.edge_def, ptr %101, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !68
  %104 = or i32 %103, 128
  store i32 %104, ptr %102, align 8, !tbaa !68
  %105 = load ptr, ptr %21, align 8, !tbaa !71
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %93
  %108 = load i32, ptr %105, align 8, !tbaa !73
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %111, label %110

110:                                              ; preds = %93, %107
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 655, ptr noundef nonnull @.str.1) #15
  br label %111

111:                                              ; preds = %107, %110
  %112 = load ptr, ptr %21, align 8, !tbaa !71
  %113 = getelementptr inbounds %struct.VEC_edge_base, ptr %112, i64 0, i32 2, i64 0
  %114 = load ptr, ptr %113, align 8, !tbaa !49
  %115 = getelementptr inbounds %struct.edge_def, ptr %114, i64 0, i32 7
  %116 = load i32, ptr %115, align 8, !tbaa !68
  %117 = or i32 %116, 128
  store i32 %117, ptr %115, align 8, !tbaa !68
  br label %118

118:                                              ; preds = %111, %84
  %119 = icmp eq i8 %6, 0
  br i1 %119, label %137, label %120

120:                                              ; preds = %118
  %121 = call ptr @get_loop_body_in_dom_order(ptr noundef %90) #15
  %122 = getelementptr inbounds %struct.loop, ptr %90, i64 0, i32 6
  %123 = load i32, ptr %122, align 4, !tbaa !84
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %120, %125
  %126 = phi i64 [ %132, %125 ], [ 0, %120 ]
  %127 = phi ptr [ %129, %125 ], [ %61, %120 ]
  %128 = load ptr, ptr %127, align 8, !tbaa !49
  %129 = getelementptr inbounds ptr, ptr %121, i64 %126
  %130 = load ptr, ptr %129, align 8, !tbaa !49
  %131 = call zeroext i8 @move_block_after(ptr noundef %130, ptr noundef %128) #15
  %132 = add nuw nsw i64 %126, 1
  %133 = load i32, ptr %122, align 4, !tbaa !84
  %134 = zext i32 %133 to i64
  %135 = icmp ult i64 %132, %134
  br i1 %135, label %125, label %136, !llvm.loop !206

136:                                              ; preds = %125, %120
  call void @free(ptr noundef %121)
  br label %137

137:                                              ; preds = %136, %118
  %138 = call ptr @loop_preheader_edge(ptr noundef %0) #15
  %139 = call ptr @split_edge(ptr noundef %138) #15
  %140 = call ptr @loop_preheader_edge(ptr noundef %90) #15
  %141 = call ptr @split_edge(ptr noundef %140) #15
  br label %142

142:                                              ; preds = %7, %137, %57
  %143 = phi ptr [ %90, %137 ], [ null, %57 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  ret ptr %143
}

declare zeroext i8 @cfg_hook_duplicate_loop_to_header_edge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_bb_copy(ptr noundef) local_unnamed_addr #3

declare void @extract_cond_bb_edges(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lv_flush_pending_stmts(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @fix_loop_structure(ptr noundef %0) local_unnamed_addr #13 !prof !207 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !208

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !208

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !81
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi i32 [ 0, %1 ], [ %11, %10 ], [ 0, %6 ]
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = tail call ptr @xmalloc(i64 noundef %15) #15
  %17 = load ptr, ptr @cfun, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = load ptr, ptr %19, align 8, !tbaa !187
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !100
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !209
  %25 = icmp eq ptr %24, %22
  br i1 %25, label %52, label %26, !prof !210

26:                                               ; preds = %12
  %27 = icmp eq ptr %0, null
  %28 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  %30 = getelementptr inbounds %struct.loops, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !116
  br label %32

32:                                               ; preds = %26, %47
  %33 = phi ptr [ %24, %26 ], [ %50, %47 ]
  br i1 %27, label %47, label %34, !prof !211

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !76
  %37 = getelementptr inbounds %struct.loop, ptr %36, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !77
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !212

40:                                               ; preds = %34
  %41 = load i32, ptr %38, align 8, !tbaa !81
  br label %42

42:                                               ; preds = %34, %40
  %43 = phi i32 [ %41, %40 ], [ 0, %34 ]
  %44 = zext i32 %43 to i64
  %45 = inttoptr i64 %44 to ptr
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !165
  br label %47

47:                                               ; preds = %42, %32
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 3
  store ptr %31, ptr %48, align 8, !tbaa !76
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !209
  %51 = icmp eq ptr %50, %22
  br i1 %51, label %52, label %32, !prof !213, !llvm.loop !214

52:                                               ; preds = %47, %12
  %53 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !113
  %55 = load i32, ptr %54, align 8, !tbaa !114
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58, !prof !208

58:                                               ; preds = %52
  tail call void @release_recorded_exits() #15
  br label %59

59:                                               ; preds = %58, %52
  %60 = load ptr, ptr @cfun, align 8, !tbaa !49
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !113
  %63 = icmp eq ptr %62, null
  br i1 %63, label %155, label %64, !prof !208

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.loops, ptr %62, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !124
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !208

68:                                               ; preds = %64
  %69 = load i32, ptr %66, align 8, !tbaa !81
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi i32 [ %69, %68 ], [ 0, %64 ]
  %72 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %71, i64 noundef 8, i64 noundef 4) #15
  %73 = load ptr, ptr @cfun, align 8, !tbaa !49
  %74 = getelementptr inbounds %struct.function, ptr %73, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !113
  %76 = getelementptr inbounds %struct.loops, ptr %75, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !116
  br label %78

78:                                               ; preds = %78, %70
  %79 = phi ptr [ %77, %70 ], [ %81, %78 ]
  %80 = getelementptr inbounds %struct.loop, ptr %79, i64 0, i32 8
  %81 = load ptr, ptr %80, align 8, !tbaa !86
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %78, !prof !215, !llvm.loop !216

83:                                               ; preds = %78, %131
  %84 = phi ptr [ %132, %131 ], [ %79, %78 ]
  %85 = load i32, ptr %84, align 8, !tbaa !125
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %92, label %87, !prof !215

87:                                               ; preds = %83
  %88 = load i32, ptr %72, align 4, !tbaa !194
  %89 = add i32 %88, 1
  store i32 %89, ptr %72, align 4, !tbaa !194
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds %struct.VEC_int_base, ptr %72, i64 0, i32 2, i64 %90
  store i32 %85, ptr %91, align 4, !tbaa !64
  br label %92

92:                                               ; preds = %87, %83
  %93 = getelementptr inbounds %struct.loop, ptr %84, i64 0, i32 9
  %94 = load ptr, ptr %93, align 8, !tbaa !197
  %95 = icmp eq ptr %94, null
  br i1 %95, label %101, label %96, !prof !215

96:                                               ; preds = %92, %96
  %97 = phi ptr [ %99, %96 ], [ %94, %92 ]
  %98 = getelementptr inbounds %struct.loop, ptr %97, i64 0, i32 8
  %99 = load ptr, ptr %98, align 8, !tbaa !86
  %100 = icmp eq ptr %99, null
  br i1 %100, label %131, label %96, !llvm.loop !217

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.loop, ptr %84, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !77
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105, !prof !215

105:                                              ; preds = %101
  %106 = load i32, ptr %103, align 8, !tbaa !81
  br label %107

107:                                              ; preds = %105, %101
  %108 = phi i32 [ %106, %105 ], [ 0, %101 ]
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %115, label %110, !prof !215

110:                                              ; preds = %107
  %111 = add i32 %108, -1
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %103, i64 0, i32 2, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !49
  br label %115

115:                                              ; preds = %110, %107
  %116 = phi ptr [ %114, %110 ], [ null, %107 ]
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %120, !prof !215

118:                                              ; preds = %115
  %119 = icmp eq ptr %72, null
  br label %133

120:                                              ; preds = %115
  br i1 %104, label %123, label %121

121:                                              ; preds = %120
  %122 = load i32, ptr %103, align 8, !tbaa !81
  br label %123

123:                                              ; preds = %121, %120
  %124 = phi i32 [ %122, %121 ], [ 0, %120 ]
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = add i32 %124, -1
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %103, i64 0, i32 2, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !49
  br label %131

131:                                              ; preds = %96, %126, %123
  %132 = phi ptr [ %130, %126 ], [ null, %123 ], [ %97, %96 ]
  br label %83, !llvm.loop !218

133:                                              ; preds = %118, %145
  %134 = phi i32 [ %147, %145 ], [ 0, %118 ]
  br i1 %119, label %142, label %135, !prof !208

135:                                              ; preds = %133
  %136 = load i32, ptr %72, align 4, !tbaa !194
  %137 = icmp ugt i32 %136, %134
  br i1 %137, label %138, label %142, !prof !208

138:                                              ; preds = %135
  %139 = zext i32 %134 to i64
  %140 = getelementptr inbounds %struct.VEC_int_base, ptr %72, i64 0, i32 2, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !64
  br label %142

142:                                              ; preds = %138, %135, %133
  %143 = phi i32 [ %141, %138 ], [ 0, %135 ], [ 0, %133 ]
  %144 = phi i1 [ false, %138 ], [ true, %135 ], [ true, %133 ]
  br i1 %144, label %153, label %145, !prof !215

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.loops, ptr %75, i64 0, i32 1
  %147 = add i32 %134, 1
  %148 = load ptr, ptr %146, align 8, !tbaa !124
  %149 = zext i32 %143 to i64
  %150 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %148, i64 0, i32 2, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !49
  %152 = icmp eq ptr %151, null
  br i1 %152, label %133, label %155, !llvm.loop !199

153:                                              ; preds = %142
  br i1 %119, label %155, label %154, !prof !208

154:                                              ; preds = %153
  tail call void @free(ptr noundef %72)
  br label %155

155:                                              ; preds = %145, %153, %154, %59
  %156 = phi ptr [ null, %59 ], [ null, %154 ], [ null, %153 ], [ %151, %145 ]
  %157 = phi i32 [ 0, %59 ], [ %134, %154 ], [ %134, %153 ], [ %147, %145 ]
  %158 = phi ptr [ null, %59 ], [ null, %154 ], [ null, %153 ], [ %72, %145 ]
  %159 = icmp eq ptr %156, null
  br i1 %159, label %224, label %160, !prof !200

160:                                              ; preds = %155, %219
  %161 = phi ptr [ %222, %219 ], [ %158, %155 ]
  %162 = phi i32 [ %221, %219 ], [ %157, %155 ]
  %163 = phi ptr [ %220, %219 ], [ %156, %155 ]
  %164 = getelementptr inbounds %struct.loop, ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !103
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %192

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct.loop, ptr %163, i64 0, i32 8
  %169 = load ptr, ptr %168, align 8, !tbaa !86
  %170 = icmp eq ptr %169, null
  br i1 %170, label %191, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.loop, ptr %163, i64 0, i32 7
  br label %173

173:                                              ; preds = %171, %187
  %174 = phi ptr [ %169, %171 ], [ %189, %187 ]
  tail call void @flow_loop_tree_node_remove(ptr noundef nonnull %174) #15
  %175 = load ptr, ptr %172, align 8, !tbaa !77
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %173
  %178 = load i32, ptr %175, align 8, !tbaa !81
  br label %179

179:                                              ; preds = %177, %173
  %180 = phi i32 [ %178, %177 ], [ 0, %173 ]
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %179
  %183 = add i32 %180, -1
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %175, i64 0, i32 2, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !49
  br label %187

187:                                              ; preds = %179, %182
  %188 = phi ptr [ %186, %182 ], [ null, %179 ]
  tail call void @flow_loop_tree_node_add(ptr noundef %188, ptr noundef nonnull %174) #15
  %189 = load ptr, ptr %168, align 8, !tbaa !86
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %173, !llvm.loop !219

191:                                              ; preds = %187, %167
  tail call void @delete_loop(ptr noundef nonnull %163) #15
  br label %192

192:                                              ; preds = %160, %191
  %193 = icmp eq ptr %161, null
  %194 = load ptr, ptr @cfun, align 8
  %195 = getelementptr inbounds %struct.function, ptr %194, i64 0, i32 4
  br label %196

196:                                              ; preds = %208, %192
  %197 = phi i32 [ %162, %192 ], [ %209, %208 ]
  br i1 %193, label %205, label %198

198:                                              ; preds = %196
  %199 = load i32, ptr %161, align 4, !tbaa !194
  %200 = icmp ugt i32 %199, %197
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = zext i32 %197 to i64
  %203 = getelementptr inbounds %struct.VEC_int_base, ptr %161, i64 0, i32 2, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !64
  br label %205

205:                                              ; preds = %201, %198, %196
  %206 = phi i32 [ %204, %201 ], [ 0, %198 ], [ 0, %196 ]
  %207 = phi i1 [ false, %201 ], [ true, %198 ], [ true, %196 ]
  br i1 %207, label %217, label %208

208:                                              ; preds = %205
  %209 = add i32 %197, 1
  %210 = load ptr, ptr %195, align 8, !tbaa !113
  %211 = getelementptr inbounds %struct.loops, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !124
  %213 = zext i32 %206 to i64
  %214 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %212, i64 0, i32 2, i64 %213
  %215 = load ptr, ptr %214, align 8, !tbaa !49
  %216 = icmp eq ptr %215, null
  br i1 %216, label %196, label %219, !llvm.loop !199

217:                                              ; preds = %205
  br i1 %193, label %219, label %218

218:                                              ; preds = %217
  tail call void @free(ptr noundef %161)
  br label %219

219:                                              ; preds = %208, %217, %218
  %220 = phi ptr [ null, %218 ], [ null, %217 ], [ %215, %208 ]
  %221 = phi i32 [ %197, %218 ], [ %197, %217 ], [ %209, %208 ]
  %222 = phi ptr [ null, %218 ], [ null, %217 ], [ %161, %208 ]
  %223 = icmp eq ptr %220, null
  br i1 %223, label %224, label %160, !prof !200, !llvm.loop !220

224:                                              ; preds = %219, %155
  %225 = load ptr, ptr @cfun, align 8, !tbaa !49
  %226 = getelementptr inbounds %struct.function, ptr %225, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !90
  %228 = getelementptr inbounds %struct.control_flow_graph, ptr %227, i64 0, i32 3
  %229 = load i32, ptr %228, align 8, !tbaa !92
  %230 = getelementptr inbounds %struct.function, ptr %225, i64 0, i32 4
  %231 = load ptr, ptr %230, align 8, !tbaa !113
  %232 = getelementptr inbounds %struct.loops, ptr %231, i64 0, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !116
  %234 = getelementptr inbounds %struct.loop, ptr %233, i64 0, i32 6
  store i32 %229, ptr %234, align 4, !tbaa !84
  %235 = icmp eq ptr %231, null
  br i1 %235, label %311, label %236, !prof !208

236:                                              ; preds = %224
  %237 = getelementptr inbounds %struct.loops, ptr %231, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !124
  %239 = icmp eq ptr %238, null
  br i1 %239, label %242, label %240, !prof !208

240:                                              ; preds = %236
  %241 = load i32, ptr %238, align 8, !tbaa !81
  br label %242

242:                                              ; preds = %240, %236
  %243 = phi i32 [ %241, %240 ], [ 0, %236 ]
  %244 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %243, i64 noundef 8, i64 noundef 4) #15
  %245 = load ptr, ptr @cfun, align 8, !tbaa !49
  %246 = getelementptr inbounds %struct.function, ptr %245, i64 0, i32 4
  %247 = load ptr, ptr %246, align 8, !tbaa !113
  %248 = getelementptr inbounds %struct.loops, ptr %247, i64 0, i32 3
  %249 = load ptr, ptr %248, align 8, !tbaa !116
  br label %250

250:                                              ; preds = %263, %242
  %251 = phi ptr [ %249, %242 ], [ %264, %263 ]
  %252 = load i32, ptr %251, align 8, !tbaa !125
  %253 = icmp slt i32 %252, 1
  br i1 %253, label %259, label %254, !prof !215

254:                                              ; preds = %250
  %255 = load i32, ptr %244, align 4, !tbaa !194
  %256 = add i32 %255, 1
  store i32 %256, ptr %244, align 4, !tbaa !194
  %257 = zext i32 %255 to i64
  %258 = getelementptr inbounds %struct.VEC_int_base, ptr %244, i64 0, i32 2, i64 %257
  store i32 %252, ptr %258, align 4, !tbaa !64
  br label %259

259:                                              ; preds = %254, %250
  %260 = getelementptr inbounds %struct.loop, ptr %251, i64 0, i32 8
  %261 = load ptr, ptr %260, align 8, !tbaa !86
  %262 = icmp eq ptr %261, null
  br i1 %262, label %267, label %263, !prof !215

263:                                              ; preds = %267, %259
  %264 = phi ptr [ %261, %259 ], [ %270, %267 ]
  br label %250, !llvm.loop !196

265:                                              ; preds = %286
  %266 = icmp eq ptr %244, null
  br label %289

267:                                              ; preds = %259, %286
  %268 = phi ptr [ %287, %286 ], [ %251, %259 ]
  %269 = getelementptr inbounds %struct.loop, ptr %268, i64 0, i32 9
  %270 = load ptr, ptr %269, align 8, !tbaa !197
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %263, !prof !215, !llvm.loop !196

272:                                              ; preds = %267
  %273 = getelementptr inbounds %struct.loop, ptr %268, i64 0, i32 7
  %274 = load ptr, ptr %273, align 8, !tbaa !77
  %275 = icmp eq ptr %274, null
  br i1 %275, label %278, label %276, !prof !215

276:                                              ; preds = %272
  %277 = load i32, ptr %274, align 8, !tbaa !81
  br label %278

278:                                              ; preds = %276, %272
  %279 = phi i32 [ %277, %276 ], [ 0, %272 ]
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %286, label %281, !prof !215

281:                                              ; preds = %278
  %282 = add i32 %279, -1
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %274, i64 0, i32 2, i64 %283
  %285 = load ptr, ptr %284, align 8, !tbaa !49
  br label %286

286:                                              ; preds = %281, %278
  %287 = phi ptr [ %285, %281 ], [ null, %278 ]
  %288 = icmp eq ptr %287, null
  br i1 %288, label %265, label %267, !prof !215, !llvm.loop !198

289:                                              ; preds = %265, %301
  %290 = phi i32 [ %303, %301 ], [ 0, %265 ]
  br i1 %266, label %298, label %291, !prof !208

291:                                              ; preds = %289
  %292 = load i32, ptr %244, align 4, !tbaa !194
  %293 = icmp ugt i32 %292, %290
  br i1 %293, label %294, label %298, !prof !208

294:                                              ; preds = %291
  %295 = zext i32 %290 to i64
  %296 = getelementptr inbounds %struct.VEC_int_base, ptr %244, i64 0, i32 2, i64 %295
  %297 = load i32, ptr %296, align 4, !tbaa !64
  br label %298

298:                                              ; preds = %294, %291, %289
  %299 = phi i32 [ %297, %294 ], [ 0, %291 ], [ 0, %289 ]
  %300 = phi i1 [ false, %294 ], [ true, %291 ], [ true, %289 ]
  br i1 %300, label %309, label %301, !prof !215

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.loops, ptr %247, i64 0, i32 1
  %303 = add i32 %290, 1
  %304 = load ptr, ptr %302, align 8, !tbaa !124
  %305 = zext i32 %299 to i64
  %306 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %304, i64 0, i32 2, i64 %305
  %307 = load ptr, ptr %306, align 8, !tbaa !49
  %308 = icmp eq ptr %307, null
  br i1 %308, label %289, label %311, !llvm.loop !199

309:                                              ; preds = %298
  br i1 %266, label %311, label %310, !prof !208

310:                                              ; preds = %309
  tail call void @free(ptr noundef %244)
  br label %311

311:                                              ; preds = %301, %309, %310, %224
  %312 = phi ptr [ null, %224 ], [ null, %310 ], [ null, %309 ], [ %307, %301 ]
  %313 = phi i32 [ 0, %224 ], [ %290, %310 ], [ %290, %309 ], [ %303, %301 ]
  %314 = phi ptr [ null, %224 ], [ null, %310 ], [ null, %309 ], [ %244, %301 ]
  %315 = icmp eq ptr %312, null
  br i1 %315, label %361, label %316, !prof !200

316:                                              ; preds = %311, %356
  %317 = phi ptr [ %359, %356 ], [ %314, %311 ]
  %318 = phi i32 [ %358, %356 ], [ %313, %311 ]
  %319 = phi ptr [ %357, %356 ], [ %312, %311 ]
  %320 = getelementptr inbounds %struct.loop, ptr %319, i64 0, i32 2
  %321 = load ptr, ptr %320, align 8, !tbaa !103
  %322 = getelementptr inbounds %struct.basic_block_def, ptr %321, i64 0, i32 3
  %323 = load ptr, ptr %322, align 8, !tbaa !76
  %324 = load i32, ptr %319, align 8, !tbaa !125
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds ptr, ptr %16, i64 %325
  store ptr %323, ptr %326, align 8, !tbaa !49
  %327 = load ptr, ptr %320, align 8, !tbaa !103
  %328 = tail call i32 @flow_loop_nodes_find(ptr noundef %327, ptr noundef nonnull %319) #15
  %329 = getelementptr inbounds %struct.loop, ptr %319, i64 0, i32 6
  store i32 %328, ptr %329, align 4, !tbaa !84
  %330 = icmp eq ptr %317, null
  %331 = load ptr, ptr @cfun, align 8
  %332 = getelementptr inbounds %struct.function, ptr %331, i64 0, i32 4
  br label %333

333:                                              ; preds = %345, %316
  %334 = phi i32 [ %318, %316 ], [ %346, %345 ]
  br i1 %330, label %342, label %335

335:                                              ; preds = %333
  %336 = load i32, ptr %317, align 4, !tbaa !194
  %337 = icmp ugt i32 %336, %334
  br i1 %337, label %338, label %342

338:                                              ; preds = %335
  %339 = zext i32 %334 to i64
  %340 = getelementptr inbounds %struct.VEC_int_base, ptr %317, i64 0, i32 2, i64 %339
  %341 = load i32, ptr %340, align 4, !tbaa !64
  br label %342

342:                                              ; preds = %338, %335, %333
  %343 = phi i32 [ %341, %338 ], [ 0, %335 ], [ 0, %333 ]
  %344 = phi i1 [ false, %338 ], [ true, %335 ], [ true, %333 ]
  br i1 %344, label %354, label %345

345:                                              ; preds = %342
  %346 = add i32 %334, 1
  %347 = load ptr, ptr %332, align 8, !tbaa !113
  %348 = getelementptr inbounds %struct.loops, ptr %347, i64 0, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !124
  %350 = zext i32 %343 to i64
  %351 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %349, i64 0, i32 2, i64 %350
  %352 = load ptr, ptr %351, align 8, !tbaa !49
  %353 = icmp eq ptr %352, null
  br i1 %353, label %333, label %356, !llvm.loop !199

354:                                              ; preds = %342
  br i1 %330, label %356, label %355

355:                                              ; preds = %354
  tail call void @free(ptr noundef %317)
  br label %356

356:                                              ; preds = %345, %354, %355
  %357 = phi ptr [ null, %355 ], [ null, %354 ], [ %352, %345 ]
  %358 = phi i32 [ %334, %355 ], [ %334, %354 ], [ %346, %345 ]
  %359 = phi ptr [ null, %355 ], [ null, %354 ], [ %317, %345 ]
  %360 = icmp eq ptr %357, null
  br i1 %360, label %361, label %316, !prof !200, !llvm.loop !221

361:                                              ; preds = %356, %311
  %362 = load ptr, ptr @cfun, align 8, !tbaa !49
  %363 = getelementptr inbounds %struct.function, ptr %362, i64 0, i32 4
  %364 = load ptr, ptr %363, align 8, !tbaa !113
  %365 = icmp eq ptr %364, null
  br i1 %365, label %441, label %366, !prof !208

366:                                              ; preds = %361
  %367 = getelementptr inbounds %struct.loops, ptr %364, i64 0, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !124
  %369 = icmp eq ptr %368, null
  br i1 %369, label %372, label %370, !prof !208

370:                                              ; preds = %366
  %371 = load i32, ptr %368, align 8, !tbaa !81
  br label %372

372:                                              ; preds = %370, %366
  %373 = phi i32 [ %371, %370 ], [ 0, %366 ]
  %374 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %373, i64 noundef 8, i64 noundef 4) #15
  %375 = load ptr, ptr @cfun, align 8, !tbaa !49
  %376 = getelementptr inbounds %struct.function, ptr %375, i64 0, i32 4
  %377 = load ptr, ptr %376, align 8, !tbaa !113
  %378 = getelementptr inbounds %struct.loops, ptr %377, i64 0, i32 3
  %379 = load ptr, ptr %378, align 8, !tbaa !116
  br label %380

380:                                              ; preds = %393, %372
  %381 = phi ptr [ %379, %372 ], [ %394, %393 ]
  %382 = load i32, ptr %381, align 8, !tbaa !125
  %383 = icmp slt i32 %382, 1
  br i1 %383, label %389, label %384, !prof !215

384:                                              ; preds = %380
  %385 = load i32, ptr %374, align 4, !tbaa !194
  %386 = add i32 %385, 1
  store i32 %386, ptr %374, align 4, !tbaa !194
  %387 = zext i32 %385 to i64
  %388 = getelementptr inbounds %struct.VEC_int_base, ptr %374, i64 0, i32 2, i64 %387
  store i32 %382, ptr %388, align 4, !tbaa !64
  br label %389

389:                                              ; preds = %384, %380
  %390 = getelementptr inbounds %struct.loop, ptr %381, i64 0, i32 8
  %391 = load ptr, ptr %390, align 8, !tbaa !86
  %392 = icmp eq ptr %391, null
  br i1 %392, label %397, label %393, !prof !215

393:                                              ; preds = %397, %389
  %394 = phi ptr [ %391, %389 ], [ %400, %397 ]
  br label %380, !llvm.loop !196

395:                                              ; preds = %416
  %396 = icmp eq ptr %374, null
  br label %419

397:                                              ; preds = %389, %416
  %398 = phi ptr [ %417, %416 ], [ %381, %389 ]
  %399 = getelementptr inbounds %struct.loop, ptr %398, i64 0, i32 9
  %400 = load ptr, ptr %399, align 8, !tbaa !197
  %401 = icmp eq ptr %400, null
  br i1 %401, label %402, label %393, !prof !215, !llvm.loop !196

402:                                              ; preds = %397
  %403 = getelementptr inbounds %struct.loop, ptr %398, i64 0, i32 7
  %404 = load ptr, ptr %403, align 8, !tbaa !77
  %405 = icmp eq ptr %404, null
  br i1 %405, label %408, label %406, !prof !215

406:                                              ; preds = %402
  %407 = load i32, ptr %404, align 8, !tbaa !81
  br label %408

408:                                              ; preds = %406, %402
  %409 = phi i32 [ %407, %406 ], [ 0, %402 ]
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %416, label %411, !prof !215

411:                                              ; preds = %408
  %412 = add i32 %409, -1
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %404, i64 0, i32 2, i64 %413
  %415 = load ptr, ptr %414, align 8, !tbaa !49
  br label %416

416:                                              ; preds = %411, %408
  %417 = phi ptr [ %415, %411 ], [ null, %408 ]
  %418 = icmp eq ptr %417, null
  br i1 %418, label %395, label %397, !prof !215, !llvm.loop !198

419:                                              ; preds = %395, %431
  %420 = phi i32 [ %433, %431 ], [ 0, %395 ]
  br i1 %396, label %428, label %421, !prof !208

421:                                              ; preds = %419
  %422 = load i32, ptr %374, align 4, !tbaa !194
  %423 = icmp ugt i32 %422, %420
  br i1 %423, label %424, label %428, !prof !208

424:                                              ; preds = %421
  %425 = zext i32 %420 to i64
  %426 = getelementptr inbounds %struct.VEC_int_base, ptr %374, i64 0, i32 2, i64 %425
  %427 = load i32, ptr %426, align 4, !tbaa !64
  br label %428

428:                                              ; preds = %424, %421, %419
  %429 = phi i32 [ %427, %424 ], [ 0, %421 ], [ 0, %419 ]
  %430 = phi i1 [ false, %424 ], [ true, %421 ], [ true, %419 ]
  br i1 %430, label %439, label %431, !prof !215

431:                                              ; preds = %428
  %432 = getelementptr inbounds %struct.loops, ptr %377, i64 0, i32 1
  %433 = add i32 %420, 1
  %434 = load ptr, ptr %432, align 8, !tbaa !124
  %435 = zext i32 %429 to i64
  %436 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %434, i64 0, i32 2, i64 %435
  %437 = load ptr, ptr %436, align 8, !tbaa !49
  %438 = icmp eq ptr %437, null
  br i1 %438, label %419, label %441, !llvm.loop !199

439:                                              ; preds = %428
  br i1 %396, label %441, label %440, !prof !208

440:                                              ; preds = %439
  tail call void @free(ptr noundef %374)
  br label %441

441:                                              ; preds = %431, %439, %440, %361
  %442 = phi ptr [ null, %361 ], [ null, %440 ], [ null, %439 ], [ %437, %431 ]
  %443 = phi i32 [ 0, %361 ], [ %420, %440 ], [ %420, %439 ], [ %433, %431 ]
  %444 = phi ptr [ null, %361 ], [ null, %440 ], [ null, %439 ], [ %374, %431 ]
  %445 = icmp eq ptr %442, null
  br i1 %445, label %503, label %446, !prof !200

446:                                              ; preds = %441, %498
  %447 = phi ptr [ %501, %498 ], [ %444, %441 ]
  %448 = phi i32 [ %500, %498 ], [ %443, %441 ]
  %449 = phi ptr [ %499, %498 ], [ %442, %441 ]
  %450 = load i32, ptr %449, align 8, !tbaa !125
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds ptr, ptr %16, i64 %451
  %453 = load ptr, ptr %452, align 8, !tbaa !49
  %454 = getelementptr inbounds %struct.loop, ptr %449, i64 0, i32 7
  %455 = load ptr, ptr %454, align 8, !tbaa !77
  %456 = icmp eq ptr %455, null
  br i1 %456, label %459, label %457

457:                                              ; preds = %446
  %458 = load i32, ptr %455, align 8, !tbaa !81
  br label %459

459:                                              ; preds = %457, %446
  %460 = phi i32 [ %458, %457 ], [ 0, %446 ]
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %467, label %462

462:                                              ; preds = %459
  %463 = add i32 %460, -1
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %455, i64 0, i32 2, i64 %464
  %466 = load ptr, ptr %465, align 8, !tbaa !49
  br label %467

467:                                              ; preds = %459, %462
  %468 = phi ptr [ %466, %462 ], [ null, %459 ]
  %469 = icmp eq ptr %453, %468
  br i1 %469, label %471, label %470

470:                                              ; preds = %467
  tail call void @flow_loop_tree_node_remove(ptr noundef nonnull %449) #15
  tail call void @flow_loop_tree_node_add(ptr noundef %453, ptr noundef nonnull %449) #15
  br label %471

471:                                              ; preds = %467, %470
  %472 = icmp eq ptr %447, null
  %473 = load ptr, ptr @cfun, align 8
  %474 = getelementptr inbounds %struct.function, ptr %473, i64 0, i32 4
  br label %475

475:                                              ; preds = %487, %471
  %476 = phi i32 [ %448, %471 ], [ %488, %487 ]
  br i1 %472, label %484, label %477

477:                                              ; preds = %475
  %478 = load i32, ptr %447, align 4, !tbaa !194
  %479 = icmp ugt i32 %478, %476
  br i1 %479, label %480, label %484

480:                                              ; preds = %477
  %481 = zext i32 %476 to i64
  %482 = getelementptr inbounds %struct.VEC_int_base, ptr %447, i64 0, i32 2, i64 %481
  %483 = load i32, ptr %482, align 4, !tbaa !64
  br label %484

484:                                              ; preds = %480, %477, %475
  %485 = phi i32 [ %483, %480 ], [ 0, %477 ], [ 0, %475 ]
  %486 = phi i1 [ false, %480 ], [ true, %477 ], [ true, %475 ]
  br i1 %486, label %496, label %487

487:                                              ; preds = %484
  %488 = add i32 %476, 1
  %489 = load ptr, ptr %474, align 8, !tbaa !113
  %490 = getelementptr inbounds %struct.loops, ptr %489, i64 0, i32 1
  %491 = load ptr, ptr %490, align 8, !tbaa !124
  %492 = zext i32 %485 to i64
  %493 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %491, i64 0, i32 2, i64 %492
  %494 = load ptr, ptr %493, align 8, !tbaa !49
  %495 = icmp eq ptr %494, null
  br i1 %495, label %475, label %498, !llvm.loop !199

496:                                              ; preds = %484
  br i1 %472, label %498, label %497

497:                                              ; preds = %496
  tail call void @free(ptr noundef %447)
  br label %498

498:                                              ; preds = %487, %496, %497
  %499 = phi ptr [ null, %497 ], [ null, %496 ], [ %494, %487 ]
  %500 = phi i32 [ %476, %497 ], [ %476, %496 ], [ %488, %487 ]
  %501 = phi ptr [ null, %497 ], [ null, %496 ], [ %447, %487 ]
  %502 = icmp eq ptr %499, null
  br i1 %502, label %503, label %446, !prof !200, !llvm.loop !222

503:                                              ; preds = %498, %441
  tail call void @free(ptr noundef %16)
  %504 = icmp eq ptr %0, null
  br i1 %504, label %544, label %505, !prof !208

505:                                              ; preds = %503
  %506 = load ptr, ptr @cfun, align 8, !tbaa !49
  %507 = getelementptr inbounds %struct.function, ptr %506, i64 0, i32 1
  %508 = load ptr, ptr %507, align 8, !tbaa !90
  %509 = load ptr, ptr %508, align 8, !tbaa !187
  %510 = getelementptr inbounds %struct.basic_block_def, ptr %509, i64 0, i32 6
  %511 = load ptr, ptr %510, align 8, !tbaa !209
  %512 = getelementptr inbounds %struct.control_flow_graph, ptr %508, i64 0, i32 1
  %513 = load ptr, ptr %512, align 8, !tbaa !100
  %514 = icmp eq ptr %511, %513
  br i1 %514, label %544, label %515, !prof !210

515:                                              ; preds = %505, %535
  %516 = phi ptr [ %537, %535 ], [ %511, %505 ]
  %517 = getelementptr inbounds %struct.basic_block_def, ptr %516, i64 0, i32 3
  %518 = load ptr, ptr %517, align 8, !tbaa !76
  %519 = getelementptr inbounds %struct.loop, ptr %518, i64 0, i32 7
  %520 = load ptr, ptr %519, align 8, !tbaa !77
  %521 = icmp eq ptr %520, null
  br i1 %521, label %524, label %522, !prof !212

522:                                              ; preds = %515
  %523 = load i32, ptr %520, align 8, !tbaa !81
  br label %524

524:                                              ; preds = %515, %522
  %525 = phi i32 [ %523, %522 ], [ 0, %515 ]
  %526 = zext i32 %525 to i64
  %527 = inttoptr i64 %526 to ptr
  %528 = getelementptr inbounds %struct.basic_block_def, ptr %516, i64 0, i32 2
  %529 = load ptr, ptr %528, align 8, !tbaa !165
  %530 = icmp eq ptr %529, %527
  br i1 %530, label %535, label %531, !prof !212

531:                                              ; preds = %524
  %532 = getelementptr inbounds %struct.basic_block_def, ptr %516, i64 0, i32 9
  %533 = load i32, ptr %532, align 8, !tbaa !95
  %534 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %0, i32 noundef %533) #15
  br label %535

535:                                              ; preds = %531, %524
  store ptr null, ptr %528, align 8, !tbaa !165
  %536 = getelementptr inbounds %struct.basic_block_def, ptr %516, i64 0, i32 6
  %537 = load ptr, ptr %536, align 8, !tbaa !209
  %538 = load ptr, ptr @cfun, align 8, !tbaa !49
  %539 = getelementptr inbounds %struct.function, ptr %538, i64 0, i32 1
  %540 = load ptr, ptr %539, align 8, !tbaa !90
  %541 = getelementptr inbounds %struct.control_flow_graph, ptr %540, i64 0, i32 1
  %542 = load ptr, ptr %541, align 8, !tbaa !100
  %543 = icmp eq ptr %537, %542
  br i1 %543, label %544, label %515, !prof !213, !llvm.loop !223

544:                                              ; preds = %535, %505, %503
  %545 = load ptr, ptr @cfun, align 8, !tbaa !49
  %546 = getelementptr inbounds %struct.function, ptr %545, i64 0, i32 4
  %547 = load ptr, ptr %546, align 8, !tbaa !113
  %548 = load i32, ptr %547, align 8, !tbaa !114
  %549 = and i32 %548, 1
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %552, label %551, !prof !208

551:                                              ; preds = %544
  tail call void @create_preheaders(i32 noundef 1)
  br label %552

552:                                              ; preds = %551, %544
  %553 = load ptr, ptr @cfun, align 8, !tbaa !49
  %554 = getelementptr inbounds %struct.function, ptr %553, i64 0, i32 4
  %555 = load ptr, ptr %554, align 8, !tbaa !113
  %556 = load i32, ptr %555, align 8, !tbaa !114
  %557 = and i32 %556, 2
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %560, label %559, !prof !208

559:                                              ; preds = %552
  tail call void @force_single_succ_latches()
  br label %560

560:                                              ; preds = %559, %552
  %561 = load ptr, ptr @cfun, align 8, !tbaa !49
  %562 = getelementptr inbounds %struct.function, ptr %561, i64 0, i32 4
  %563 = load ptr, ptr %562, align 8, !tbaa !113
  %564 = load i32, ptr %563, align 8, !tbaa !114
  %565 = and i32 %564, 4
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %569, label %567, !prof !208

567:                                              ; preds = %560
  %568 = tail call zeroext i8 @mark_irreducible_loops() #15
  br label %569

569:                                              ; preds = %567, %560
  br i1 %57, label %571, label %570, !prof !208

570:                                              ; preds = %569
  tail call void @record_loop_exits() #15
  br label %571

571:                                              ; preds = %570, %569
  ret void
}

declare void @release_recorded_exits() local_unnamed_addr #3

declare void @delete_loop(ptr noundef) local_unnamed_addr #3

declare i32 @flow_loop_nodes_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @record_loop_exits() local_unnamed_addr #3

declare i32 @dfs_enumerate_from(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal zeroext i8 @rpe_enum_p(ptr noundef %0, ptr noundef %1) #9 !prof !48 {
  %3 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %1) #15
  ret i8 %3
}

declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @fix_loop_placement(ptr noundef %0) unnamed_addr #9 !prof !48 {
  %2 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #15
  %3 = load ptr, ptr @cfun, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = getelementptr inbounds %struct.loops, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = icmp eq ptr %2, null
  br label %9

9:                                                ; preds = %22, %1
  %10 = phi i32 [ 0, %1 ], [ %31, %22 ]
  %11 = phi ptr [ %7, %1 ], [ %30, %22 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %2, align 8, !tbaa !73
  %14 = icmp ugt i32 %13, %10
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = zext i32 %10 to i64
  %17 = getelementptr inbounds %struct.VEC_edge_base, ptr %2, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  br label %19

19:                                               ; preds = %9, %12, %15
  %20 = phi ptr [ %18, %15 ], [ null, %12 ], [ null, %9 ]
  %21 = phi i1 [ false, %15 ], [ true, %12 ], [ true, %9 ]
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  %27 = tail call ptr @find_common_loop(ptr noundef %0, ptr noundef %26) #15
  %28 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %11, ptr noundef %27) #15
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, ptr %11, ptr %27
  %31 = add i32 %10, 1
  br label %9, !llvm.loop !224

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 8, !tbaa !81
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %37, %36 ], [ 0, %32 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = add i32 %39, -1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %34, i64 0, i32 2, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  br label %46

46:                                               ; preds = %38, %41
  %47 = phi ptr [ %45, %41 ], [ null, %38 ]
  %48 = icmp eq ptr %11, %47
  br i1 %48, label %102, label %49

49:                                               ; preds = %46
  br i1 %35, label %52, label %50

50:                                               ; preds = %49
  %51 = load i32, ptr %34, align 8, !tbaa !81
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i32 [ %51, %50 ], [ 0, %49 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = add i32 %53, -1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %34, i64 0, i32 2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  br label %60

60:                                               ; preds = %52, %55
  %61 = phi ptr [ %59, %55 ], [ null, %52 ]
  %62 = icmp eq ptr %61, %11
  br i1 %62, label %87, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  br label %65

65:                                               ; preds = %63, %84
  %66 = phi ptr [ %61, %63 ], [ %85, %84 ]
  %67 = load i32, ptr %64, align 4, !tbaa !84
  %68 = getelementptr inbounds %struct.loop, ptr %66, i64 0, i32 6
  %69 = load i32, ptr %68, align 4, !tbaa !84
  %70 = sub i32 %69, %67
  store i32 %70, ptr %68, align 4, !tbaa !84
  %71 = getelementptr inbounds %struct.loop, ptr %66, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !77
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %65
  %75 = load i32, ptr %72, align 8, !tbaa !81
  br label %76

76:                                               ; preds = %74, %65
  %77 = phi i32 [ %75, %74 ], [ 0, %65 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = add i32 %77, -1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %72, i64 0, i32 2, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !49
  br label %84

84:                                               ; preds = %76, %79
  %85 = phi ptr [ %83, %79 ], [ null, %76 ]
  %86 = icmp eq ptr %85, %11
  br i1 %86, label %87, label %65, !llvm.loop !225

87:                                               ; preds = %84, %60
  tail call void @flow_loop_tree_node_remove(ptr noundef %0) #15
  tail call void @flow_loop_tree_node_add(ptr noundef %11, ptr noundef %0) #15
  br label %88

88:                                               ; preds = %100, %87
  %89 = phi i32 [ 0, %87 ], [ %101, %100 ]
  br i1 %8, label %97, label %90

90:                                               ; preds = %88
  %91 = load i32, ptr %2, align 8, !tbaa !73
  %92 = icmp ugt i32 %91, %89
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = zext i32 %89 to i64
  %95 = getelementptr inbounds %struct.VEC_edge_base, ptr %2, i64 0, i32 2, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !49
  br label %97

97:                                               ; preds = %88, %90, %93
  %98 = phi ptr [ %96, %93 ], [ null, %90 ], [ null, %88 ]
  %99 = phi i1 [ false, %93 ], [ true, %90 ], [ true, %88 ]
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  tail call void @rescan_loop_exit(ptr noundef %98, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %101 = add i32 %89, 1
  br label %88, !llvm.loop !226

102:                                              ; preds = %97, %46
  %103 = phi i8 [ 0, %46 ], [ 1, %97 ]
  br i1 %8, label %105, label %104

104:                                              ; preds = %102
  tail call void @free(ptr noundef %2)
  br label %105

105:                                              ; preds = %102, %104
  ret i8 %103
}

declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @lv_add_condition_to_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @current_ir_type() local_unnamed_addr #3

declare void @lv_adjust_loop_header_phi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!47}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!35 = !{ptr @create_preheaders, ptr @vec_heap_o_reserve_exact, i64 460}
!36 = !{ptr @create_preheaders, ptr @free, i64 460}
!37 = !{ptr @force_single_succ_latches, ptr @vec_heap_o_reserve_exact, i64 496}
!38 = !{ptr @force_single_succ_latches, ptr @free, i64 496}
!39 = !{ptr @fix_loop_structure, ptr @xmalloc, i64 38}
!40 = !{ptr @fix_loop_structure, ptr @release_recorded_exits, i64 38}
!41 = !{ptr @fix_loop_structure, ptr @vec_heap_o_reserve_exact, i64 114}
!42 = !{ptr @fix_loop_structure, ptr @free, i64 152}
!43 = !{ptr @fix_loop_structure, ptr @create_preheaders, i64 38}
!44 = !{ptr @fix_loop_structure, ptr @force_single_succ_latches, i64 38}
!45 = !{ptr @fix_loop_structure, ptr @mark_irreducible_loops, i64 38}
!46 = !{ptr @fix_loop_structure, ptr @record_loop_exits, i64 38}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!54, !50, i64 8}
!54 = !{!"_IO_FILE", !55, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48, !50, i64 56, !50, i64 64, !50, i64 72, !50, i64 80, !50, i64 88, !50, i64 96, !50, i64 104, !55, i64 112, !55, i64 116, !56, i64 120, !57, i64 128, !51, i64 130, !51, i64 131, !50, i64 136, !56, i64 144, !50, i64 152, !50, i64 160, !50, i64 168, !50, i64 176, !56, i64 184, !55, i64 192, !51, i64 196}
!55 = !{!"int", !51, i64 0}
!56 = !{!"long", !51, i64 0}
!57 = !{!"short", !51, i64 0}
!58 = !{!54, !50, i64 16}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{!51, !51, i64 0}
!61 = !{!54, !50, i64 40}
!62 = !{!54, !50, i64 48}
!63 = !{!54, !55, i64 0}
!64 = !{!55, !55, i64 0}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!69, !55, i64 48}
!69 = !{!"edge_def", !50, i64 0, !50, i64 8, !51, i64 16, !50, i64 24, !50, i64 32, !55, i64 40, !55, i64 44, !55, i64 48, !55, i64 52, !56, i64 56}
!70 = !{!69, !50, i64 8}
!71 = !{!72, !50, i64 0}
!72 = !{!"basic_block_def", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !51, i64 32, !50, i64 48, !50, i64 56, !51, i64 64, !56, i64 72, !55, i64 80, !55, i64 84, !55, i64 88, !55, i64 92, !55, i64 96}
!73 = !{!74, !55, i64 0}
!74 = !{!"VEC_edge_base", !55, i64 0, !55, i64 4, !51, i64 8}
!75 = !{!69, !50, i64 0}
!76 = !{!72, !50, i64 24}
!77 = !{!78, !50, i64 40}
!78 = !{!"loop", !55, i64 0, !55, i64 4, !50, i64 8, !50, i64 16, !79, i64 24, !55, i64 32, !55, i64 36, !50, i64 40, !50, i64 48, !50, i64 56, !50, i64 64, !50, i64 72, !80, i64 80, !80, i64 96, !51, i64 112, !51, i64 113, !55, i64 116, !50, i64 120, !50, i64 128, !51, i64 136, !50, i64 144}
!79 = !{!"lpt_decision", !55, i64 0, !55, i64 4}
!80 = !{!"", !56, i64 0, !56, i64 8}
!81 = !{!82, !55, i64 0}
!82 = !{!"VEC_loop_p_base", !55, i64 0, !55, i64 4, !51, i64 8}
!83 = !{!78, !50, i64 16}
!84 = !{!78, !55, i64 36}
!85 = distinct !{!85, !66, !67}
!86 = !{!78, !50, i64 48}
!87 = distinct !{!87, !66, !67}
!88 = !{!72, !50, i64 8}
!89 = distinct !{!89, !66, !67}
!90 = !{!91, !50, i64 8}
!91 = !{!"function", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48, !50, i64 56, !50, i64 64, !50, i64 72, !50, i64 80, !50, i64 88, !50, i64 96, !55, i64 104, !55, i64 108, !55, i64 112, !55, i64 116, !55, i64 120, !55, i64 124, !50, i64 128, !55, i64 136, !55, i64 137, !55, i64 138, !55, i64 138, !55, i64 138, !55, i64 138, !55, i64 138, !55, i64 138, !55, i64 138, !55, i64 139, !55, i64 139, !55, i64 139, !55, i64 139, !55, i64 139, !55, i64 139, !55, i64 139}
!92 = !{!93, !55, i64 24}
!93 = !{!"control_flow_graph", !50, i64 0, !50, i64 8, !50, i64 16, !55, i64 24, !55, i64 28, !55, i64 32, !50, i64 40, !55, i64 48, !51, i64 52, !51, i64 60, !55, i64 68, !55, i64 72}
!94 = !{!93, !55, i64 32}
!95 = !{!72, !55, i64 80}
!96 = !{!97, !50, i64 0}
!97 = !{!"simple_bitmap_def", !50, i64 0, !55, i64 8, !55, i64 12, !51, i64 16}
!98 = !{!56, !56, i64 0}
!99 = distinct !{!99, !66, !67}
!100 = !{!93, !50, i64 8}
!101 = distinct !{!101, !66, !67}
!102 = distinct !{!102, !66, !67}
!103 = !{!78, !50, i64 8}
!104 = distinct !{!104, !66, !67}
!105 = distinct !{!105, !66, !67}
!106 = !{!107, !55, i64 4}
!107 = !{!"VEC_basic_block_base", !55, i64 0, !55, i64 4, !51, i64 8}
!108 = !{!107, !55, i64 0}
!109 = distinct !{!109, !66, !67}
!110 = distinct !{!110, !66, !67}
!111 = !{i8 0, i8 2}
!112 = distinct !{!112, !66, !67}
!113 = !{!91, !50, i64 32}
!114 = !{!115, !55, i64 0}
!115 = !{!"loops", !55, i64 0, !50, i64 8, !50, i64 16, !50, i64 24}
!116 = !{!115, !50, i64 24}
!117 = distinct !{!117, !66, !67}
!118 = distinct !{!118, !66, !67}
!119 = distinct !{!119, !66, !67}
!120 = distinct !{!120, !66, !67}
!121 = distinct !{!121, !66, !67}
!122 = distinct !{!122, !66, !67}
!123 = distinct !{!123, !66, !67}
!124 = !{!115, !50, i64 8}
!125 = !{!78, !55, i64 0}
!126 = !{!82, !55, i64 4}
!127 = !{!72, !55, i64 96}
!128 = !{!129}
!129 = distinct !{!129, !130, !"gsi_last_bb: argument 0"}
!130 = distinct !{!130, !"gsi_last_bb"}
!131 = !{!132, !50, i64 0}
!132 = !{!"gimple_bb_info", !50, i64 0, !50, i64 8}
!133 = !{!134, !50, i64 8}
!134 = !{!"gimple_seq_d", !50, i64 0, !50, i64 8, !50, i64 16}
!135 = !{i64 0, i64 8, !49, i64 8, i64 8, !49, i64 16, i64 8, !49}
!136 = !{i64 0, i64 8, !49, i64 8, i64 8, !49}
!137 = !{i64 0, i64 8, !49}
!138 = !{!139}
!139 = distinct !{!139, !140, !"gsi_last_bb: argument 0"}
!140 = distinct !{!140, !"gsi_last_bb"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"gsi_last_bb: argument 0"}
!143 = distinct !{!143, !"gsi_last_bb"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"gsi_last_bb: argument 0"}
!146 = distinct !{!146, !"gsi_last_bb"}
!147 = distinct !{!147, !66, !67}
!148 = distinct !{!148, !66, !67}
!149 = distinct !{!149, !66, !67}
!150 = !{!72, !55, i64 88}
!151 = !{!69, !55, i64 52}
!152 = !{!69, !56, i64 56}
!153 = !{!72, !56, i64 72}
!154 = distinct !{!154, !66, !67}
!155 = distinct !{!155, !66, !67}
!156 = distinct !{!156, !66, !67}
!157 = distinct !{!157, !66, !67}
!158 = distinct !{!158, !66, !67}
!159 = distinct !{!159, !66, !67}
!160 = distinct !{!160, !66, !67}
!161 = distinct !{!161, !66, !67}
!162 = distinct !{!162, !66, !67}
!163 = distinct !{!163, !66, !67}
!164 = distinct !{!164, !66, !67}
!165 = !{!72, !50, i64 16}
!166 = distinct !{!166, !66, !67}
!167 = distinct !{!167, !66, !67}
!168 = distinct !{!168, !66, !67}
!169 = distinct !{!169, !66, !67}
!170 = distinct !{!170, !66, !67}
!171 = !{!74, !55, i64 4}
!172 = !{!173, !50, i64 0}
!173 = !{!"bitmap_head_def", !50, i64 0, !50, i64 8, !55, i64 16, !50, i64 24}
!174 = !{!175, !55, i64 16}
!175 = !{!"bitmap_element_def", !50, i64 0, !50, i64 8, !55, i64 16, !51, i64 24}
!176 = distinct !{!176, !66, !67}
!177 = distinct !{!177, !66, !67}
!178 = !{!175, !50, i64 0}
!179 = distinct !{!179, !67}
!180 = distinct !{!180, !66, !67}
!181 = distinct !{!181, !66, !67}
!182 = distinct !{!182, !66, !67}
!183 = distinct !{!183, !66, !67}
!184 = distinct !{!184, !66, !67}
!185 = distinct !{!185, !66, !67}
!186 = distinct !{!186, !66, !67}
!187 = !{!93, !50, i64 0}
!188 = !{!189, !50, i64 8}
!189 = !{!"rtl_bb_info", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !55, i64 32}
!190 = distinct !{!190, !66, !67}
!191 = !{!"function_entry_count", i64 460}
!192 = !{!"branch_weights", i32 0, i32 460}
!193 = !{!"branch_weights", i32 460, i32 0}
!194 = !{!195, !55, i64 0}
!195 = !{!"VEC_int_base", !55, i64 0, !55, i64 4, !51, i64 8}
!196 = distinct !{!196, !67}
!197 = !{!78, !50, i64 56}
!198 = distinct !{!198, !66, !67}
!199 = distinct !{!199, !66, !67}
!200 = !{!"branch_weights", i32 1, i32 0}
!201 = distinct !{!201, !66, !67}
!202 = !{!"function_entry_count", i64 496}
!203 = !{!"branch_weights", i32 0, i32 496}
!204 = !{!"branch_weights", i32 496, i32 0}
!205 = distinct !{!205, !66, !67}
!206 = distinct !{!206, !66, !67}
!207 = !{!"function_entry_count", i64 38}
!208 = !{!"branch_weights", i32 0, i32 38}
!209 = !{!72, !50, i64 56}
!210 = !{!"branch_weights", i32 1, i32 151}
!211 = !{!"branch_weights", i32 0, i32 155395}
!212 = !{!"branch_weights", i32 155395, i32 0}
!213 = !{!"branch_weights", i32 151, i32 621429}
!214 = distinct !{!214, !66, !67}
!215 = !{!"branch_weights", i32 38, i32 0}
!216 = distinct !{!216, !66, !67}
!217 = distinct !{!217, !66, !67}
!218 = distinct !{!218, !67}
!219 = distinct !{!219, !66, !67}
!220 = distinct !{!220, !66, !67}
!221 = distinct !{!221, !66, !67}
!222 = distinct !{!222, !66, !67}
!223 = distinct !{!223, !66, !67}
!224 = distinct !{!224, !66, !67}
!225 = distinct !{!225, !66, !67}
!226 = distinct !{!226, !66, !67}
