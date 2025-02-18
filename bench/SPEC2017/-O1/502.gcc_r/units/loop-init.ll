; ModuleID = 'loop-init.c'
source_filename = "loop-init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"loop-init.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"loop2\00", align 1
@pass_loop2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.2, ptr @gate_handle_loop2, ptr null, ptr null, ptr null, i32 0, i32 125, i32 0, i32 0, i32 0, i32 0, i32 3 } }, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"loop2_init\00", align 1
@pass_rtl_loop_init = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.3, ptr null, ptr @rtl_loop_init, ptr null, ptr null, i32 0, i32 125, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"loop2_done\00", align 1
@pass_rtl_loop_done = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.4, ptr null, ptr @rtl_loop_done, ptr null, ptr null, i32 0, i32 125, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"loop2_invariant\00", align 1
@pass_rtl_move_loop_invariants = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.5, ptr @gate_rtl_move_loop_invariants, ptr @rtl_move_loop_invariants, ptr null, ptr null, i32 0, i32 126, i32 0, i32 0, i32 0, i32 0, i32 394241 } }, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"loop2_unswitch\00", align 1
@pass_rtl_unswitch = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.6, ptr @gate_rtl_unswitch, ptr @rtl_unswitch, ptr null, ptr null, i32 0, i32 127, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"loop2_unroll\00", align 1
@pass_rtl_unroll_and_peel_loops = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.7, ptr @gate_rtl_unroll_and_peel_loops, ptr @rtl_unroll_and_peel_loops, ptr null, ptr null, i32 0, i32 128, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"loop2_doloop\00", align 1
@pass_rtl_doloop = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.8, ptr @gate_rtl_doloop, ptr @rtl_doloop, ptr null, ptr null, i32 0, i32 129, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_move_loop_invariants = external local_unnamed_addr global i32, align 4
@flag_unswitch_loops = external local_unnamed_addr global i32, align 4
@flag_peel_loops = external local_unnamed_addr global i32, align 4
@flag_unroll_loops = external local_unnamed_addr global i32, align 4
@dump_flags = external local_unnamed_addr global i32, align 4
@flag_unroll_all_loops = external local_unnamed_addr global i32, align 4

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
define dso_local void @loop_optimizer_init(i32 noundef %0) local_unnamed_addr #8 !prof !74 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !77

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 47, ptr noundef nonnull @.str.1) #14
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #14
  %9 = tail call i32 @flow_loops_find(ptr noundef %8) #14
  %10 = load ptr, ptr @cfun, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 4
  store ptr %8, ptr %11, align 8, !tbaa !75
  %12 = and i32 %0, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14, !prof !78

14:                                               ; preds = %7
  %15 = and i32 %0, -25
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !79

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 62, ptr noundef nonnull @.str.1) #14
  br label %18

18:                                               ; preds = %14, %17
  %19 = load ptr, ptr @cfun, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = load i32, ptr %21, align 8, !tbaa !80
  %23 = or i32 %22, 16
  store i32 %23, ptr %21, align 8, !tbaa !80
  br label %25

24:                                               ; preds = %7
  tail call void @disambiguate_loops_with_multiple_latches() #14
  br label %25

25:                                               ; preds = %24, %18
  %26 = and i32 %0, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !82

28:                                               ; preds = %25
  %29 = and i32 %0, 128
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 1, i32 3, !prof !83
  tail call void @create_preheaders(i32 noundef %31) #14
  br label %32

32:                                               ; preds = %28, %25
  %33 = and i32 %0, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !84

35:                                               ; preds = %32
  tail call void @force_single_succ_latches() #14
  br label %36

36:                                               ; preds = %35, %32
  %37 = and i32 %0, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39, !prof !85

39:                                               ; preds = %36
  %40 = tail call zeroext i8 @mark_irreducible_loops() #14
  br label %41

41:                                               ; preds = %39, %36
  %42 = and i32 %0, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44, !prof !86

44:                                               ; preds = %41
  tail call void @record_loop_exits() #14
  br label %45

45:                                               ; preds = %44, %41
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !55
  tail call void @flow_loops_dump(ptr noundef %46, ptr noundef null, i32 noundef 1) #14
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

declare i32 @flow_loops_find(ptr noundef) local_unnamed_addr #3

declare void @disambiguate_loops_with_multiple_latches() local_unnamed_addr #3

declare void @create_preheaders(i32 noundef) local_unnamed_addr #3

declare void @force_single_succ_latches() local_unnamed_addr #3

declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #3

declare void @record_loop_exits() local_unnamed_addr #3

declare void @flow_loops_dump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @loop_optimizer_finalize() local_unnamed_addr #8 !prof !74 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !55
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !87

5:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.1) #14
  br label %6

6:                                                ; preds = %0, %5
  %7 = load ptr, ptr @cfun, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = icmp eq ptr %9, null
  br i1 %10, label %86, label %11, !prof !87

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.loops, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !87

15:                                               ; preds = %11
  %16 = load i32, ptr %13, align 8, !tbaa !89
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %16, %15 ], [ 0, %11 ]
  %19 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %18, i64 noundef 8, i64 noundef 4) #14
  %20 = load ptr, ptr @cfun, align 8, !tbaa !55
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = getelementptr inbounds %struct.loops, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  br label %25

25:                                               ; preds = %38, %17
  %26 = phi ptr [ %24, %17 ], [ %39, %38 ]
  %27 = load i32, ptr %26, align 8, !tbaa !92
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %34, !prof !87

29:                                               ; preds = %25
  %30 = load i32, ptr %19, align 4, !tbaa !96
  %31 = add i32 %30, 1
  store i32 %31, ptr %19, align 4, !tbaa !96
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds %struct.VEC_int_base, ptr %19, i64 0, i32 2, i64 %32
  store i32 %27, ptr %33, align 4, !tbaa !70
  br label %34

34:                                               ; preds = %29, %25
  %35 = getelementptr inbounds %struct.loop, ptr %26, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !98
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38, !prof !77

38:                                               ; preds = %42, %34
  %39 = phi ptr [ %36, %34 ], [ %45, %42 ]
  br label %25, !llvm.loop !99

40:                                               ; preds = %61
  %41 = icmp eq ptr %19, null
  br label %64

42:                                               ; preds = %34, %61
  %43 = phi ptr [ %62, %61 ], [ %26, %34 ]
  %44 = getelementptr inbounds %struct.loop, ptr %43, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !100
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %38, !prof !77, !llvm.loop !99

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.loop, ptr %43, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !101
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51, !prof !77

51:                                               ; preds = %47
  %52 = load i32, ptr %49, align 8, !tbaa !89
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i32 [ %52, %51 ], [ 0, %47 ]
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56, !prof !77

56:                                               ; preds = %53
  %57 = add i32 %54, -1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %49, i64 0, i32 2, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !55
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi ptr [ %60, %56 ], [ null, %53 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %40, label %42, !prof !77, !llvm.loop !102

64:                                               ; preds = %40, %76
  %65 = phi i32 [ %78, %76 ], [ 0, %40 ]
  br i1 %41, label %73, label %66, !prof !87

66:                                               ; preds = %64
  %67 = load i32, ptr %19, align 4, !tbaa !96
  %68 = icmp ugt i32 %67, %65
  br i1 %68, label %69, label %73, !prof !87

69:                                               ; preds = %66
  %70 = zext i32 %65 to i64
  %71 = getelementptr inbounds %struct.VEC_int_base, ptr %19, i64 0, i32 2, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !70
  br label %73

73:                                               ; preds = %69, %66, %64
  %74 = phi i32 [ %72, %69 ], [ 0, %66 ], [ 0, %64 ]
  %75 = phi i1 [ false, %69 ], [ true, %66 ], [ true, %64 ]
  br i1 %75, label %84, label %76, !prof !77

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.loops, ptr %22, i64 0, i32 1
  %78 = add i32 %65, 1
  %79 = load ptr, ptr %77, align 8, !tbaa !88
  %80 = zext i32 %74 to i64
  %81 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %79, i64 0, i32 2, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !55
  %83 = icmp eq ptr %82, null
  br i1 %83, label %64, label %86, !llvm.loop !103

84:                                               ; preds = %73
  br i1 %41, label %86, label %85, !prof !87

85:                                               ; preds = %84
  tail call void @free(ptr noundef %19)
  br label %86

86:                                               ; preds = %76, %84, %85, %6
  %87 = phi i32 [ 0, %6 ], [ %65, %85 ], [ %65, %84 ], [ %78, %76 ]
  %88 = phi ptr [ null, %6 ], [ null, %85 ], [ null, %84 ], [ %19, %76 ]
  %89 = phi ptr [ null, %6 ], [ null, %85 ], [ null, %84 ], [ %82, %76 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %126, label %91, !prof !104

91:                                               ; preds = %86, %121
  %92 = phi ptr [ %124, %121 ], [ %89, %86 ]
  %93 = phi ptr [ %123, %121 ], [ %88, %86 ]
  %94 = phi i32 [ %122, %121 ], [ %87, %86 ]
  tail call void @free_simple_loop_desc(ptr noundef nonnull %92) #14
  %95 = icmp eq ptr %93, null
  %96 = load ptr, ptr @cfun, align 8
  %97 = getelementptr inbounds %struct.function, ptr %96, i64 0, i32 4
  br label %98

98:                                               ; preds = %110, %91
  %99 = phi i32 [ %94, %91 ], [ %111, %110 ]
  br i1 %95, label %107, label %100

100:                                              ; preds = %98
  %101 = load i32, ptr %93, align 4, !tbaa !96
  %102 = icmp ugt i32 %101, %99
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = zext i32 %99 to i64
  %105 = getelementptr inbounds %struct.VEC_int_base, ptr %93, i64 0, i32 2, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !70
  br label %107

107:                                              ; preds = %103, %100, %98
  %108 = phi i32 [ %106, %103 ], [ 0, %100 ], [ 0, %98 ]
  %109 = phi i1 [ false, %103 ], [ true, %100 ], [ true, %98 ]
  br i1 %109, label %119, label %110

110:                                              ; preds = %107
  %111 = add i32 %99, 1
  %112 = load ptr, ptr %97, align 8, !tbaa !75
  %113 = getelementptr inbounds %struct.loops, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !88
  %115 = zext i32 %108 to i64
  %116 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %114, i64 0, i32 2, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !55
  %118 = icmp eq ptr %117, null
  br i1 %118, label %98, label %121, !llvm.loop !103

119:                                              ; preds = %107
  br i1 %95, label %121, label %120

120:                                              ; preds = %119
  tail call void @free(ptr noundef %93)
  br label %121

121:                                              ; preds = %110, %119, %120
  %122 = phi i32 [ %99, %120 ], [ %99, %119 ], [ %111, %110 ]
  %123 = phi ptr [ null, %120 ], [ null, %119 ], [ %93, %110 ]
  %124 = phi ptr [ null, %120 ], [ null, %119 ], [ %117, %110 ]
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %91, !prof !104, !llvm.loop !105

126:                                              ; preds = %121, %86
  %127 = load ptr, ptr @cfun, align 8, !tbaa !55
  %128 = getelementptr inbounds %struct.function, ptr %127, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !75
  %130 = load i32, ptr %129, align 8, !tbaa !80
  %131 = and i32 %130, 8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133, !prof !106

133:                                              ; preds = %126
  tail call void @release_recorded_exits() #14
  br label %134

134:                                              ; preds = %133, %126
  %135 = load ptr, ptr @cfun, align 8, !tbaa !55
  %136 = getelementptr inbounds %struct.function, ptr %135, i64 0, i32 4
  %137 = load ptr, ptr %136, align 8, !tbaa !75
  tail call void @flow_loops_free(ptr noundef %137) #14
  %138 = load ptr, ptr @cfun, align 8, !tbaa !55
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 4
  %140 = load ptr, ptr %139, align 8, !tbaa !75
  tail call void @ggc_free(ptr noundef %140) #14
  %141 = load ptr, ptr @cfun, align 8, !tbaa !55
  %142 = getelementptr inbounds %struct.function, ptr %141, i64 0, i32 4
  store ptr null, ptr %142, align 8, !tbaa !75
  %143 = getelementptr inbounds %struct.function, ptr %141, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !107
  %145 = load ptr, ptr %144, align 8, !tbaa !55
  %146 = icmp eq ptr %145, null
  br i1 %146, label %153, label %147, !prof !108

147:                                              ; preds = %134, %147
  %148 = phi ptr [ %151, %147 ], [ %145, %134 ]
  %149 = getelementptr inbounds %struct.basic_block_def, ptr %148, i64 0, i32 3
  store ptr null, ptr %149, align 8, !tbaa !109
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %148, i64 0, i32 6
  %151 = load ptr, ptr %150, align 8, !tbaa !55
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %147, !prof !111, !llvm.loop !112

153:                                              ; preds = %147, %134
  ret void
}

declare void @free_simple_loop_desc(ptr noundef) local_unnamed_addr #3

declare void @release_recorded_exits() local_unnamed_addr #3

declare void @flow_loops_free(ptr noundef) local_unnamed_addr #3

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_loop2() #9 !prof !113 !PGOFuncName !114 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !70
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %16, !prof !115

3:                                                ; preds = %0
  %4 = load i32, ptr @flag_move_loop_invariants, align 4, !tbaa !70
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr @flag_unswitch_loops, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7, !prof !115
  %9 = load i32, ptr @flag_peel_loops, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10, !prof !115
  br i1 %11, label %16, label %12, !prof !115

12:                                               ; preds = %3
  %13 = load i32, ptr @flag_unroll_loops, align 4, !tbaa !70
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %3, %12, %0
  %17 = phi i8 [ 0, %0 ], [ 1, %3 ], [ %15, %12 ]
  ret i8 %17
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rtl_loop_init() #8 !prof !113 !PGOFuncName !116 {
  %1 = tail call i32 @current_ir_type() #14
  %2 = icmp eq i32 %1, 2
  br i1 %2, label %4, label %3, !prof !115

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 179, ptr noundef nonnull @.str.1) #14
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !55
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !115

7:                                                ; preds = %4
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !70
  tail call void @dump_flow_info(ptr noundef nonnull %5, i32 noundef %8) #14
  br label %9

9:                                                ; preds = %7, %4
  tail call void @loop_optimizer_init(i32 noundef 7)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rtl_loop_done() #8 !prof !113 !PGOFuncName !117 {
  tail call void @loop_optimizer_finalize()
  tail call void @free_dominance_info(i32 noundef 1) #14
  %1 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #14
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !55
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !115

4:                                                ; preds = %0
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !70
  tail call void @dump_flow_info(ptr noundef nonnull %2, i32 noundef %5) #14
  br label %6

6:                                                ; preds = %4, %0
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_rtl_move_loop_invariants() #9 !prof !113 !PGOFuncName !118 {
  %1 = load i32, ptr @flag_move_loop_invariants, align 4, !tbaa !70
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rtl_move_loop_invariants() #8 !prof !113 !PGOFuncName !119 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !55
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !120

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !120

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !89
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %13, !prof !120

12:                                               ; preds = %9
  tail call void @move_loop_invariants() #14
  br label %13

13:                                               ; preds = %0, %5, %12, %9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_rtl_unswitch() #9 !prof !113 !PGOFuncName !121 {
  %1 = load i32, ptr @flag_unswitch_loops, align 4, !tbaa !70
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rtl_unswitch() #8 !prof !113 !PGOFuncName !122 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !55
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !120

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !120

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !89
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %13, !prof !120

12:                                               ; preds = %9
  tail call void @unswitch_loops() #14
  br label %13

13:                                               ; preds = %0, %5, %12, %9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_rtl_unroll_and_peel_loops() #9 !prof !113 !PGOFuncName !123 {
  %1 = load i32, ptr @flag_peel_loops, align 4, !tbaa !70
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_unroll_loops, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4, !prof !120
  %6 = load i32, ptr @flag_unroll_all_loops, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7, !prof !120
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @rtl_unroll_and_peel_loops() #10 !prof !54 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !55
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !89
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !55
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @df_dump(ptr noundef nonnull %13) #14
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, ptr @flag_peel_loops, align 4, !tbaa !70
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load i32, ptr @flag_unroll_loops, align 4, !tbaa !70
  %21 = icmp eq i32 %20, 0
  %22 = or disjoint i32 %19, 2
  %23 = select i1 %21, i32 %19, i32 %22
  %24 = load i32, ptr @flag_unroll_all_loops, align 4, !tbaa !70
  %25 = icmp eq i32 %24, 0
  %26 = or disjoint i32 %23, 4
  %27 = select i1 %25, i32 %23, i32 %26
  tail call void @unroll_and_peel_loops(i32 noundef %27) #14
  br label %28

28:                                               ; preds = %0, %5, %16, %9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_rtl_doloop() #11 !prof !113 !PGOFuncName !124 {
  ret i8 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rtl_doloop() #12 !prof !54 {
  ret i32 0
}

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare i32 @current_ir_type() local_unnamed_addr #3

declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #3

declare void @move_loop_invariants() local_unnamed_addr #3

declare void @unswitch_loops() local_unnamed_addr #3

declare void @df_dump(ptr noundef) local_unnamed_addr #3

declare void @unroll_and_peel_loops(i32 noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!35 = !{ptr @loop_optimizer_init, ptr @ggc_alloc_cleared_stat, i64 802}
!36 = !{ptr @loop_optimizer_init, ptr @flow_loops_find, i64 802}
!37 = !{ptr @loop_optimizer_init, ptr @disambiguate_loops_with_multiple_latches, i64 612}
!38 = !{ptr @loop_optimizer_init, ptr @create_preheaders, i64 382}
!39 = !{ptr @loop_optimizer_init, ptr @force_single_succ_latches, i64 458}
!40 = !{ptr @loop_optimizer_init, ptr @mark_irreducible_loops, i64 344}
!41 = !{ptr @loop_optimizer_init, ptr @record_loop_exits, i64 230}
!42 = !{ptr @loop_optimizer_init, ptr @flow_loops_dump, i64 802}
!43 = !{ptr @loop_optimizer_finalize, ptr @vec_heap_o_reserve_exact, i64 802}
!44 = !{ptr @loop_optimizer_finalize, ptr @free, i64 802}
!45 = !{ptr @loop_optimizer_finalize, ptr @release_recorded_exits, i64 270}
!46 = !{ptr @loop_optimizer_finalize, ptr @flow_loops_free, i64 802}
!47 = !{ptr @loop_optimizer_finalize, ptr @ggc_free, i64 802}
!48 = !{ptr @rtl_loop_init, ptr @current_ir_type, i64 38}
!49 = !{ptr @rtl_loop_init, ptr @loop_optimizer_init, i64 38}
!50 = !{ptr @rtl_loop_done, ptr @loop_optimizer_finalize, i64 38}
!51 = !{ptr @rtl_loop_done, ptr @free_dominance_info, i64 38}
!52 = !{ptr @rtl_loop_done, ptr @cleanup_cfg, i64 38}
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
!74 = !{!"function_entry_count", i64 802}
!75 = !{!76, !56, i64 32}
!76 = !{!"function", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !56, i64 96, !61, i64 104, !61, i64 108, !61, i64 112, !61, i64 116, !61, i64 120, !61, i64 124, !56, i64 128, !61, i64 136, !61, i64 137, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139}
!77 = !{!"branch_weights", i32 802, i32 0}
!78 = !{!"branch_weights", i32 612, i32 190}
!79 = !{!"branch_weights", i32 190, i32 0}
!80 = !{!81, !61, i64 0}
!81 = !{!"loops", !61, i64 0, !56, i64 8, !56, i64 16, !56, i64 24}
!82 = !{!"branch_weights", i32 420, i32 382}
!83 = !{!"branch_weights", i32 382, i32 0}
!84 = !{!"branch_weights", i32 344, i32 458}
!85 = !{!"branch_weights", i32 458, i32 344}
!86 = !{!"branch_weights", i32 572, i32 230}
!87 = !{!"branch_weights", i32 0, i32 802}
!88 = !{!81, !56, i64 8}
!89 = !{!90, !61, i64 0}
!90 = !{!"VEC_loop_p_base", !61, i64 0, !61, i64 4, !57, i64 8}
!91 = !{!81, !56, i64 24}
!92 = !{!93, !61, i64 0}
!93 = !{!"loop", !61, i64 0, !61, i64 4, !56, i64 8, !56, i64 16, !94, i64 24, !61, i64 32, !61, i64 36, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !95, i64 80, !95, i64 96, !57, i64 112, !57, i64 113, !61, i64 116, !56, i64 120, !56, i64 128, !57, i64 136, !56, i64 144}
!94 = !{!"lpt_decision", !61, i64 0, !61, i64 4}
!95 = !{!"", !62, i64 0, !62, i64 8}
!96 = !{!97, !61, i64 0}
!97 = !{!"VEC_int_base", !61, i64 0, !61, i64 4, !57, i64 8}
!98 = !{!93, !56, i64 48}
!99 = distinct !{!99, !73}
!100 = !{!93, !56, i64 56}
!101 = !{!93, !56, i64 40}
!102 = distinct !{!102, !72, !73}
!103 = distinct !{!103, !72, !73}
!104 = !{!"branch_weights", i32 1, i32 0}
!105 = distinct !{!105, !72, !73}
!106 = !{!"branch_weights", i32 532, i32 270}
!107 = !{!76, !56, i64 8}
!108 = !{!"branch_weights", i32 1, i32 801}
!109 = !{!110, !56, i64 24}
!110 = !{!"basic_block_def", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !57, i64 32, !56, i64 48, !56, i64 56, !57, i64 64, !62, i64 72, !61, i64 80, !61, i64 84, !61, i64 88, !61, i64 92, !61, i64 96}
!111 = !{!"branch_weights", i32 801, i32 3763549}
!112 = distinct !{!112, !72, !73}
!113 = !{!"function_entry_count", i64 38}
!114 = !{!"loop-init.c;gate_handle_loop2"}
!115 = !{!"branch_weights", i32 38, i32 0}
!116 = !{!"loop-init.c;rtl_loop_init"}
!117 = !{!"loop-init.c;rtl_loop_done"}
!118 = !{!"loop-init.c;gate_rtl_move_loop_invariants"}
!119 = !{!"loop-init.c;rtl_move_loop_invariants"}
!120 = !{!"branch_weights", i32 0, i32 38}
!121 = !{!"loop-init.c;gate_rtl_unswitch"}
!122 = !{!"loop-init.c;rtl_unswitch"}
!123 = !{!"loop-init.c;gate_rtl_unroll_and_peel_loops"}
!124 = !{!"loop-init.c;gate_rtl_doloop"}
