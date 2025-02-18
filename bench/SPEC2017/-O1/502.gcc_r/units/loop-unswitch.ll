; ModuleID = 'loop-unswitch.c'
source_filename = "loop-unswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.rtx_iv = type { ptr, ptr, i32, ptr, ptr, i32, i32, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [16 x i8] c"loop-unswitch.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c";; Not unswitching anymore, hit max level\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c";; Not unswitching, not innermost loop\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c";; Not unswitching, can't duplicate loop\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c";; Not unswitching, loop too big\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c";; Not unswitching, not hot area\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c";; Not unswitching, loop iterations < 1\0A\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@const_true_rtx = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c";; Unswitching loop\0A\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.9 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

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
define dso_local ptr @compare_and_jump_seq(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #9 !prof !34 {
  %7 = load i32, ptr %0, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load i32, ptr %1, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  br label %15

15:                                               ; preds = %11, %6
  %16 = phi i32 [ %14, %11 ], [ %9, %6 ]
  tail call void @start_sequence() #12
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !46
  %20 = icmp eq i8 %19, 1
  %21 = icmp eq ptr %5, null
  br i1 %20, label %22, label %59

22:                                               ; preds = %15
  br i1 %21, label %23, label %24

23:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 106, ptr noundef nonnull @.str.1) #12
  br label %24

24:                                               ; preds = %22, %23
  %25 = tail call ptr @pc_set(ptr noundef %5) #12
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, %2
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.1) #12
  br label %34

34:                                               ; preds = %24, %33
  %35 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef %36) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 109, ptr noundef nonnull @.str.1) #12
  br label %40

40:                                               ; preds = %34, %39
  %41 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = tail call i32 @rtx_equal_p(ptr noundef %1, ptr noundef %42) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 110, ptr noundef nonnull @.str.1) #12
  br label %46

46:                                               ; preds = %40, %45
  %47 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = tail call ptr @copy_insn(ptr noundef %48) #12
  %50 = tail call ptr @emit_jump_insn(ptr noundef %49) #12
  %51 = tail call ptr @get_last_insn() #12
  %52 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %53, ptr %54, align 8, !tbaa !46
  %55 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !46
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %55, align 8, !tbaa !46
  %58 = tail call i32 @redirect_jump(ptr noundef %51, ptr noundef %3, i32 noundef 0) #12
  br label %69

59:                                               ; preds = %15
  br i1 %21, label %61, label %60

60:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 119, ptr noundef nonnull @.str.1) #12
  br label %61

61:                                               ; preds = %59, %60
  %62 = tail call ptr @force_operand(ptr noundef nonnull %0, ptr noundef null) #12
  %63 = tail call ptr @force_operand(ptr noundef %1, ptr noundef null) #12
  tail call void @do_compare_rtx_and_jump(ptr noundef %62, ptr noundef %63, i32 noundef %2, i32 noundef 0, i32 noundef %16, ptr noundef null, ptr noundef null, ptr noundef %3, i32 noundef -1) #12
  %64 = tail call ptr @get_last_insn() #12
  %65 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %3, ptr %65, align 8, !tbaa !46
  %66 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !46
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %66, align 8, !tbaa !46
  br label %69

69:                                               ; preds = %61, %46
  %70 = phi ptr [ %51, %46 ], [ %64, %61 ]
  %71 = sext i32 %4 to i64
  %72 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %71) #12
  tail call void @add_reg_note(ptr noundef %70, i32 noundef 13, ptr noundef %72) #12
  %73 = tail call ptr @get_insns() #12
  tail call void @end_sequence() #12
  ret ptr %73
}

declare void @start_sequence() local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pc_set(ptr noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #3

declare ptr @copy_insn(ptr noundef) local_unnamed_addr #3

declare ptr @get_last_insn() local_unnamed_addr #3

declare i32 @redirect_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @do_compare_rtx_and_jump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @unswitch_loops() local_unnamed_addr #9 !prof !34 {
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
  br i1 %74, label %110, label %75

75:                                               ; preds = %70, %105
  %76 = phi ptr [ %108, %105 ], [ %73, %70 ]
  %77 = phi ptr [ %107, %105 ], [ %72, %70 ]
  %78 = phi i32 [ %106, %105 ], [ %71, %70 ]
  tail call fastcc void @unswitch_single_loop(ptr noundef nonnull %76, ptr noundef null, i32 noundef 0)
  %79 = icmp eq ptr %77, null
  %80 = load ptr, ptr @cfun, align 8
  %81 = getelementptr inbounds %struct.function, ptr %80, i64 0, i32 4
  br label %82

82:                                               ; preds = %94, %75
  %83 = phi i32 [ %78, %75 ], [ %95, %94 ]
  br i1 %79, label %91, label %84

84:                                               ; preds = %82
  %85 = load i32, ptr %77, align 4, !tbaa !65
  %86 = icmp ugt i32 %85, %83
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = zext i32 %83 to i64
  %89 = getelementptr inbounds %struct.VEC_int_base, ptr %77, i64 0, i32 2, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !50
  br label %91

91:                                               ; preds = %87, %84, %82
  %92 = phi i32 [ %90, %87 ], [ 0, %84 ], [ 0, %82 ]
  %93 = phi i1 [ false, %87 ], [ true, %84 ], [ true, %82 ]
  br i1 %93, label %103, label %94

94:                                               ; preds = %91
  %95 = add i32 %83, 1
  %96 = load ptr, ptr %81, align 8, !tbaa !54
  %97 = getelementptr inbounds %struct.loops, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !56
  %99 = zext i32 %92 to i64
  %100 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %98, i64 0, i32 2, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !35
  %102 = icmp eq ptr %101, null
  br i1 %102, label %82, label %105, !llvm.loop !68

103:                                              ; preds = %91
  br i1 %79, label %105, label %104

104:                                              ; preds = %103
  tail call void @free(ptr noundef %77)
  br label %105

105:                                              ; preds = %94, %103, %104
  %106 = phi i32 [ %83, %104 ], [ %83, %103 ], [ %95, %94 ]
  %107 = phi ptr [ null, %104 ], [ null, %103 ], [ %77, %94 ]
  %108 = phi ptr [ null, %104 ], [ null, %103 ], [ %101, %94 ]
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %75, !llvm.loop !69

110:                                              ; preds = %105, %70
  tail call void @iv_analysis_done() #12
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @unswitch_single_loop(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca [2 x ptr], align 16
  %6 = alloca %struct.rtx_iv, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %8 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.param_info, ptr %8, i64 36, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !70
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %302, label %15

15:                                               ; preds = %12
  %16 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 42, i64 1, ptr nonnull %13)
  br label %302

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %302, label %24

24:                                               ; preds = %21
  %25 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 39, i64 1, ptr nonnull %22)
  br label %302

26:                                               ; preds = %17
  %27 = tail call zeroext i8 @can_duplicate_loop_p(ptr noundef %0) #12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %31 = icmp eq ptr %30, null
  br i1 %31, label %302, label %32

32:                                               ; preds = %29
  %33 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 41, i64 1, ptr nonnull %30)
  br label %302

34:                                               ; preds = %26
  %35 = tail call i32 @num_loop_insns(ptr noundef %0) #12
  %36 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %37 = getelementptr inbounds %struct.param_info, ptr %36, i64 35, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !70
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %42 = icmp eq ptr %41, null
  br i1 %42, label %302, label %43

43:                                               ; preds = %40
  %44 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 33, i64 1, ptr nonnull %41)
  br label %302

45:                                               ; preds = %34
  %46 = tail call zeroext i8 @optimize_loop_for_size_p(ptr noundef %0) #12
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %50 = icmp eq ptr %49, null
  br i1 %50, label %302, label %51

51:                                               ; preds = %48
  %52 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 33, i64 1, ptr nonnull %49)
  br label %302

53:                                               ; preds = %45
  %54 = tail call i32 @expected_loop_iterations(ptr noundef %0) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %58 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 1
  %59 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 7
  %60 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %61 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %62 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %63 = icmp eq ptr %1, null
  br label %76

64:                                               ; preds = %53
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %66 = icmp eq ptr %65, null
  br i1 %66, label %302, label %67

67:                                               ; preds = %64
  %68 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 40, i64 1, ptr nonnull %65)
  br label %302

69:                                               ; preds = %267, %252
  %70 = phi ptr [ %257, %252 ], [ %272, %267 ]
  %71 = getelementptr inbounds %struct.VEC_edge_base, ptr %70, i64 0, i32 2, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !35
  br label %73

73:                                               ; preds = %69, %267, %252
  %74 = phi ptr [ %259, %252 ], [ %274, %267 ], [ %72, %69 ]
  %75 = call zeroext i8 @remove_path(ptr noundef %74) #12
  call void @free(ptr noundef %78)
  br label %76

76:                                               ; preds = %56, %73
  %77 = phi ptr [ %248, %73 ], [ null, %56 ]
  %78 = call ptr @get_loop_body(ptr noundef %0) #12
  call void @iv_analysis_loop_init(ptr noundef %0) #12
  %79 = load i32, ptr %57, align 4, !tbaa !72
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %220, label %81

81:                                               ; preds = %76, %212
  %82 = phi i64 [ %213, %212 ], [ 0, %76 ]
  %83 = phi ptr [ %209, %212 ], [ null, %76 ]
  %84 = getelementptr inbounds ptr, ptr %78, i64 %82
  %85 = load ptr, ptr %84, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #12
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !73
  %88 = icmp eq ptr %87, null
  br i1 %88, label %208, label %89

89:                                               ; preds = %81
  %90 = load i32, ptr %87, align 8, !tbaa !75
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %208

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !46
  %95 = getelementptr inbounds %struct.rtl_bb_info, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !77
  %97 = call i32 @any_condjump_p(ptr noundef %96) #12
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %208, label %99

99:                                               ; preds = %92
  %100 = load ptr, ptr %86, align 8, !tbaa !73
  %101 = getelementptr inbounds %struct.VEC_edge_base, ptr %100, i64 0, i32 2, i64 0
  %102 = load ptr, ptr %101, align 8, !tbaa !35
  %103 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !79
  %105 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %104) #12
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %208, label %107

107:                                              ; preds = %99
  %108 = load ptr, ptr %86, align 8, !tbaa !73
  %109 = getelementptr inbounds %struct.VEC_edge_base, ptr %108, i64 0, i32 2, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !35
  %111 = getelementptr inbounds %struct.edge_def, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !79
  %113 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %112) #12
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %208, label %115

115:                                              ; preds = %107
  %116 = call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %85) #12
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %208, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %93, align 8, !tbaa !46
  %120 = getelementptr inbounds %struct.rtl_bb_info, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !77
  %122 = call ptr @get_condition(ptr noundef %121, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #12
  %123 = icmp eq ptr %122, null
  br i1 %123, label %208, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  br label %126

126:                                              ; preds = %124, %151
  %127 = phi i64 [ 0, %124 ], [ %152, %151 ]
  %128 = getelementptr inbounds [1 x %union.rtunion_def], ptr %125, i64 0, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !46
  %130 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %127
  store ptr %129, ptr %130, align 8, !tbaa !35
  %131 = load i32, ptr %129, align 8
  %132 = and i32 %131, 65535
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !50
  %136 = icmp eq i32 %135, 9
  br i1 %136, label %151, label %137

137:                                              ; preds = %126
  %138 = load ptr, ptr %4, align 8, !tbaa !35
  %139 = call zeroext i8 @iv_analyze(ptr noundef %138, ptr noundef nonnull %129, ptr noundef nonnull %6) #12
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %208, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr %58, align 8, !tbaa !81
  %143 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %144 = icmp eq ptr %142, %143
  br i1 %144, label %145, label %208

145:                                              ; preds = %141
  %146 = load i8, ptr %59, align 8
  %147 = and i8 %146, 1
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %208

149:                                              ; preds = %145
  %150 = call ptr @get_iv_value(ptr noundef nonnull %6, ptr noundef %143) #12
  store ptr %150, ptr %130, align 8, !tbaa !35
  br label %151

151:                                              ; preds = %149, %126
  %152 = add nuw nsw i64 %127, 1
  %153 = icmp eq i64 %127, 0
  br i1 %153, label %126, label %154, !llvm.loop !83

154:                                              ; preds = %151
  %155 = load ptr, ptr %5, align 16, !tbaa !35
  %156 = load i32, ptr %155, align 8
  %157 = lshr i32 %156, 16
  %158 = and i32 %157, 255
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = load ptr, ptr %60, align 8, !tbaa !35
  %162 = load i32, ptr %161, align 8
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  br label %165

165:                                              ; preds = %160, %154
  %166 = phi i32 [ %164, %160 ], [ %158, %154 ]
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %167
  %169 = load i8, ptr %168, align 1, !tbaa !46
  %170 = icmp eq i8 %169, 1
  br i1 %170, label %171, label %193

171:                                              ; preds = %165
  %172 = load ptr, ptr %4, align 8, !tbaa !35
  %173 = load ptr, ptr %93, align 8, !tbaa !46
  %174 = getelementptr inbounds %struct.rtl_bb_info, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !77
  %176 = icmp eq ptr %172, %175
  br i1 %176, label %177, label %208

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !46
  %180 = call i32 @rtx_equal_p(ptr noundef nonnull %155, ptr noundef %179) #12
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %208, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %184 = load ptr, ptr %183, align 8, !tbaa !35
  %185 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  %186 = load ptr, ptr %185, align 8, !tbaa !46
  %187 = call i32 @rtx_equal_p(ptr noundef %184, ptr noundef %186) #12
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %208, label %189

189:                                              ; preds = %182
  %190 = load ptr, ptr %93, align 8, !tbaa !46
  %191 = getelementptr inbounds %struct.rtl_bb_info, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !77
  br label %208

193:                                              ; preds = %165
  %194 = load i32, ptr %122, align 8
  %195 = and i32 %194, 65535
  %196 = load ptr, ptr %61, align 8, !tbaa !35
  %197 = call ptr @simplify_gen_relational(i32 noundef %195, i32 noundef 16, i32 noundef %166, ptr noundef nonnull %155, ptr noundef %196) #12
  %198 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %199 = icmp eq ptr %197, %198
  %200 = load ptr, ptr @const_true_rtx, align 8
  %201 = icmp eq ptr %197, %200
  %202 = select i1 %199, i1 true, i1 %201
  br i1 %202, label %208, label %203

203:                                              ; preds = %193
  %204 = load i32, ptr %122, align 8
  %205 = and i32 %204, 65535
  %206 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef %205, i32 noundef 16, ptr noundef nonnull %155, ptr noundef %196) #12
  %207 = call ptr @canon_condition(ptr noundef %206) #12
  br label %208

208:                                              ; preds = %137, %141, %145, %81, %89, %92, %99, %107, %115, %118, %171, %177, %182, %189, %193, %203
  %209 = phi ptr [ %83, %92 ], [ %83, %99 ], [ %83, %107 ], [ %83, %115 ], [ %83, %118 ], [ %83, %177 ], [ %83, %182 ], [ %192, %189 ], [ %83, %171 ], [ %83, %193 ], [ %83, %203 ], [ %83, %89 ], [ %83, %81 ], [ %83, %145 ], [ %83, %141 ], [ %83, %137 ]
  %210 = phi ptr [ null, %92 ], [ null, %99 ], [ null, %107 ], [ null, %115 ], [ null, %118 ], [ null, %177 ], [ null, %182 ], [ %122, %189 ], [ null, %171 ], [ %197, %193 ], [ %207, %203 ], [ null, %89 ], [ null, %81 ], [ null, %145 ], [ null, %141 ], [ null, %137 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  store ptr %210, ptr %7, align 8, !tbaa !35
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %208
  %213 = add nuw nsw i64 %82, 1
  %214 = load i32, ptr %57, align 4, !tbaa !72
  %215 = zext i32 %214 to i64
  %216 = icmp ult i64 %213, %215
  br i1 %216, label %81, label %217, !llvm.loop !84

217:                                              ; preds = %208, %212
  %218 = phi i64 [ %213, %212 ], [ %82, %208 ]
  %219 = trunc i64 %218 to i32
  br label %220

220:                                              ; preds = %217, %76
  %221 = phi i32 [ 0, %76 ], [ %219, %217 ]
  %222 = phi ptr [ null, %76 ], [ %209, %217 ]
  %223 = load i32, ptr %62, align 4, !tbaa !72
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  call void @free(ptr noundef %78)
  br label %302

226:                                              ; preds = %220
  %227 = load ptr, ptr %7, align 8, !tbaa !35
  %228 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %229 = icmp eq ptr %227, %228
  %230 = load ptr, ptr @const_true_rtx, align 8
  %231 = icmp eq ptr %227, %230
  %232 = select i1 %229, i1 true, i1 %231
  br i1 %232, label %247, label %233

233:                                              ; preds = %226
  %234 = call ptr @reversed_condition(ptr noundef %227)
  %235 = icmp eq ptr %234, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %233
  %237 = call ptr @canon_condition(ptr noundef nonnull %234) #12
  br label %238

238:                                              ; preds = %236, %233
  %239 = phi ptr [ %237, %236 ], [ null, %233 ]
  br i1 %63, label %247, label %240

240:                                              ; preds = %238, %240
  %241 = phi ptr [ %245, %240 ], [ %1, %238 ]
  %242 = getelementptr inbounds %struct.rtx_def, ptr %241, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !46
  call void @simplify_using_condition(ptr noundef %243, ptr noundef nonnull %7, ptr noundef null) #12
  %244 = getelementptr inbounds %struct.rtx_def, ptr %241, i64 0, i32 1, i32 0, i32 0, i64 1
  %245 = load ptr, ptr %244, align 8, !tbaa !46
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %240, !llvm.loop !85

247:                                              ; preds = %240, %238, %226
  %248 = phi ptr [ %77, %226 ], [ %239, %238 ], [ %239, %240 ]
  %249 = load ptr, ptr %7, align 8, !tbaa !35
  %250 = load ptr, ptr @const_true_rtx, align 8, !tbaa !35
  %251 = icmp eq ptr %249, %250
  br i1 %251, label %252, label %264

252:                                              ; preds = %247
  %253 = zext i32 %221 to i64
  %254 = getelementptr inbounds ptr, ptr %78, i64 %253
  %255 = load ptr, ptr %254, align 8, !tbaa !35
  %256 = getelementptr inbounds %struct.basic_block_def, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !73
  %258 = getelementptr inbounds %struct.VEC_edge_base, ptr %257, i64 0, i32 2, i64 0
  %259 = load ptr, ptr %258, align 8, !tbaa !35
  %260 = getelementptr inbounds %struct.edge_def, ptr %259, i64 0, i32 7
  %261 = load i32, ptr %260, align 8, !tbaa !86
  %262 = and i32 %261, 1
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %69, label %73

264:                                              ; preds = %247
  %265 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %266 = icmp eq ptr %249, %265
  br i1 %266, label %267, label %279

267:                                              ; preds = %264
  %268 = zext i32 %221 to i64
  %269 = getelementptr inbounds ptr, ptr %78, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !35
  %271 = getelementptr inbounds %struct.basic_block_def, ptr %270, i64 0, i32 1
  %272 = load ptr, ptr %271, align 8, !tbaa !73
  %273 = getelementptr inbounds %struct.VEC_edge_base, ptr %272, i64 0, i32 2, i64 0
  %274 = load ptr, ptr %273, align 8, !tbaa !35
  %275 = getelementptr inbounds %struct.edge_def, ptr %274, i64 0, i32 7
  %276 = load i32, ptr %275, align 8, !tbaa !86
  %277 = and i32 %276, 1
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %73, label %69

279:                                              ; preds = %264
  %280 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %249, ptr noundef %1) #12
  %281 = icmp eq ptr %248, null
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef nonnull %248, ptr noundef %1) #12
  br label %284

284:                                              ; preds = %279, %282
  %285 = phi ptr [ %283, %282 ], [ %1, %279 ]
  %286 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %287 = icmp eq ptr %286, null
  br i1 %287, label %290, label %288

288:                                              ; preds = %284
  %289 = call i64 @fwrite(ptr nonnull @.str.8, i64 20, i64 1, ptr nonnull %286)
  br label %290

290:                                              ; preds = %288, %284
  %291 = zext i32 %221 to i64
  %292 = getelementptr inbounds ptr, ptr %78, i64 %291
  %293 = load ptr, ptr %292, align 8, !tbaa !35
  %294 = load ptr, ptr %7, align 8, !tbaa !35
  %295 = call fastcc ptr @unswitch_loop(ptr noundef %0, ptr noundef %293, ptr noundef %294, ptr noundef %222)
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 369, ptr noundef nonnull @.str.1) #12
  br label %298

298:                                              ; preds = %290, %297
  %299 = add nsw i32 %2, 1
  call fastcc void @unswitch_single_loop(ptr noundef %295, ptr noundef %285, i32 noundef %299)
  call fastcc void @unswitch_single_loop(ptr noundef %0, ptr noundef %280, i32 noundef %299)
  call void @free_EXPR_LIST_node(ptr noundef %280) #12
  br i1 %281, label %301, label %300

300:                                              ; preds = %298
  call void @free_EXPR_LIST_node(ptr noundef %285) #12
  br label %301

301:                                              ; preds = %300, %298
  call void @free(ptr noundef %78)
  br label %302

302:                                              ; preds = %64, %67, %48, %51, %40, %43, %29, %32, %21, %24, %12, %15, %301, %225
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  ret void
}

declare void @iv_analysis_done() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @reversed_condition(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @reversed_comparison_code(ptr noundef %0, ptr noundef null) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef %7, ptr noundef %9, ptr noundef %11) #12
  br label %13

13:                                               ; preds = %1, %4
  %14 = phi ptr [ %12, %4 ], [ null, %1 ]
  ret ptr %14
}

declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare zeroext i8 @can_duplicate_loop_p(ptr noundef) local_unnamed_addr #3

declare i32 @num_loop_insns(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_loop_for_size_p(ptr noundef) local_unnamed_addr #3

declare i32 @expected_loop_iterations(ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

declare void @iv_analysis_loop_init(ptr noundef) local_unnamed_addr #3

declare ptr @canon_condition(ptr noundef) local_unnamed_addr #3

declare void @simplify_using_condition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @remove_path(ptr noundef) local_unnamed_addr #3

declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @unswitch_loop(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #9 !prof !34 {
  %5 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %1) #12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 399, ptr noundef nonnull @.str.1) #12
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %10, align 8, !tbaa !75
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 400, ptr noundef nonnull @.str.1) #12
  br label %18

18:                                               ; preds = %14, %17
  %19 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %1) #12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 401, ptr noundef nonnull @.str.1) #12
  br label %22

22:                                               ; preds = %18, %21
  %23 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !60
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 402, ptr noundef nonnull @.str.1) #12
  br label %27

27:                                               ; preds = %22, %26
  %28 = load ptr, ptr %9, align 8, !tbaa !73
  %29 = getelementptr inbounds %struct.VEC_edge_base, ptr %28, i64 0, i32 2, i64 0
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !79
  %33 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %32) #12
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 403, ptr noundef nonnull @.str.1) #12
  br label %36

36:                                               ; preds = %27, %35
  %37 = load ptr, ptr %9, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.VEC_edge_base, ptr %37, i64 0, i32 2, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !79
  %42 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %41) #12
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 404, ptr noundef nonnull @.str.1) #12
  br label %45

45:                                               ; preds = %36, %44
  %46 = tail call ptr @loop_preheader_edge(ptr noundef %0) #12
  %47 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !86
  %49 = and i32 %48, 128
  %50 = and i32 %48, -129
  store i32 %50, ptr %47, align 8, !tbaa !86
  %51 = tail call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %46, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #12
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %224, label %53

53:                                               ; preds = %45
  %54 = load i32, ptr %47, align 8, !tbaa !86
  %55 = or i32 %54, %49
  store i32 %55, ptr %47, align 8, !tbaa !86
  %56 = tail call ptr @get_bb_copy(ptr noundef %1) #12
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !73
  %59 = getelementptr inbounds %struct.VEC_edge_base, ptr %58, i64 0, i32 2, i64 0
  %60 = load ptr, ptr %59, align 8, !tbaa !35
  %61 = getelementptr inbounds %struct.edge_def, ptr %60, i64 0, i32 7
  %62 = load i32, ptr %61, align 8, !tbaa !86
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.VEC_edge_base, ptr %58, i64 0, i32 2, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !35
  br label %68

68:                                               ; preds = %53, %65
  %69 = phi ptr [ %67, %65 ], [ %60, %53 ]
  %70 = load ptr, ptr %9, align 8, !tbaa !73
  %71 = getelementptr inbounds %struct.VEC_edge_base, ptr %70, i64 0, i32 2, i64 0
  %72 = load ptr, ptr %71, align 8, !tbaa !35
  %73 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !86
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.VEC_edge_base, ptr %70, i64 0, i32 2, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !35
  br label %80

80:                                               ; preds = %68, %77
  %81 = phi ptr [ %79, %77 ], [ %72, %68 ]
  %82 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !87
  %84 = tail call ptr @get_bb_copy(ptr noundef %83) #12
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !73
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = load i32, ptr %86, align 8, !tbaa !75
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %92, label %91

91:                                               ; preds = %80, %88
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #12
  br label %92

92:                                               ; preds = %88, %91
  %93 = load ptr, ptr %85, align 8, !tbaa !73
  %94 = getelementptr inbounds %struct.VEC_edge_base, ptr %93, i64 0, i32 2, i64 0
  %95 = load ptr, ptr %94, align 8, !tbaa !35
  %96 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 8
  %97 = load i32, ptr %96, align 4, !tbaa !88
  %98 = load ptr, ptr @cfun, align 8, !tbaa !35
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !89
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !90
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %102, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !92
  %105 = tail call ptr @create_empty_bb(ptr noundef %104) #12
  %106 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  %108 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  %110 = load i32, ptr %2, align 8
  %111 = and i32 %110, 65535
  %112 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !79
  %114 = tail call ptr @block_label(ptr noundef %113) #12
  %115 = tail call ptr @compare_and_jump_seq(ptr noundef %107, ptr noundef %109, i32 noundef %111, ptr noundef %114, i32 noundef %97, ptr noundef %3)
  %116 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 7
  %117 = load ptr, ptr %116, align 8, !tbaa !46
  %118 = getelementptr inbounds %struct.rtl_bb_info, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !77
  %120 = tail call ptr @emit_insn_after(ptr noundef %115, ptr noundef %119) #12
  %121 = load ptr, ptr %112, align 8, !tbaa !79
  %122 = tail call ptr @make_edge(ptr noundef %105, ptr noundef %121, i32 noundef 0) #12
  %123 = getelementptr inbounds %struct.edge_def, ptr %122, i64 0, i32 8
  store i32 %97, ptr %123, align 4, !tbaa !88
  %124 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 9
  %125 = load i64, ptr %124, align 8, !tbaa !93
  %126 = sext i32 %97 to i64
  %127 = mul nsw i64 %125, %126
  %128 = sdiv i64 %127, 10000
  %129 = getelementptr inbounds %struct.edge_def, ptr %122, i64 0, i32 9
  store i64 %128, ptr %129, align 8, !tbaa !93
  %130 = load ptr, ptr %9, align 8, !tbaa !73
  %131 = getelementptr inbounds %struct.VEC_edge_base, ptr %130, i64 0, i32 2, i64 0
  %132 = load ptr, ptr %131, align 8, !tbaa !35
  %133 = getelementptr inbounds %struct.edge_def, ptr %132, i64 0, i32 7
  %134 = load i32, ptr %133, align 8, !tbaa !86
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %92
  %138 = getelementptr inbounds %struct.VEC_edge_base, ptr %130, i64 0, i32 2, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !35
  br label %140

140:                                              ; preds = %92, %137
  %141 = phi ptr [ %139, %137 ], [ %132, %92 ]
  %142 = getelementptr inbounds %struct.edge_def, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !79
  %144 = tail call ptr @make_edge(ptr noundef %105, ptr noundef %143, i32 noundef 1) #12
  %145 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 8
  %146 = load i32, ptr %145, align 4, !tbaa !88
  %147 = getelementptr inbounds %struct.edge_def, ptr %144, i64 0, i32 8
  store i32 %146, ptr %147, align 4, !tbaa !88
  %148 = load i64, ptr %124, align 8, !tbaa !93
  %149 = load i32, ptr %145, align 4, !tbaa !88
  %150 = sext i32 %149 to i64
  %151 = mul nsw i64 %148, %150
  %152 = sdiv i64 %151, 10000
  %153 = getelementptr inbounds %struct.edge_def, ptr %144, i64 0, i32 9
  store i64 %152, ptr %153, align 8, !tbaa !93
  %154 = icmp eq i32 %49, 0
  %155 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 13
  %156 = load i32, ptr %155, align 8, !tbaa !94
  %157 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 1
  br i1 %154, label %171, label %158

158:                                              ; preds = %140
  %159 = or i32 %156, 4
  store i32 %159, ptr %155, align 8, !tbaa !94
  %160 = load ptr, ptr %157, align 8, !tbaa !73
  %161 = getelementptr inbounds %struct.VEC_edge_base, ptr %160, i64 0, i32 2, i64 0
  %162 = load ptr, ptr %161, align 8, !tbaa !35
  %163 = getelementptr inbounds %struct.edge_def, ptr %162, i64 0, i32 7
  %164 = load i32, ptr %163, align 8, !tbaa !86
  %165 = or i32 %164, 128
  store i32 %165, ptr %163, align 8, !tbaa !86
  %166 = getelementptr inbounds %struct.VEC_edge_base, ptr %160, i64 0, i32 2, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !35
  %168 = getelementptr inbounds %struct.edge_def, ptr %167, i64 0, i32 7
  %169 = load i32, ptr %168, align 8, !tbaa !86
  %170 = or i32 %169, 128
  store i32 %170, ptr %168, align 8, !tbaa !86
  br label %184

171:                                              ; preds = %140
  %172 = and i32 %156, -5
  store i32 %172, ptr %155, align 8, !tbaa !94
  %173 = load ptr, ptr %157, align 8, !tbaa !73
  %174 = getelementptr inbounds %struct.VEC_edge_base, ptr %173, i64 0, i32 2, i64 0
  %175 = load ptr, ptr %174, align 8, !tbaa !35
  %176 = getelementptr inbounds %struct.edge_def, ptr %175, i64 0, i32 7
  %177 = load i32, ptr %176, align 8, !tbaa !86
  %178 = and i32 %177, -129
  store i32 %178, ptr %176, align 8, !tbaa !86
  %179 = getelementptr inbounds %struct.VEC_edge_base, ptr %173, i64 0, i32 2, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !35
  %181 = getelementptr inbounds %struct.edge_def, ptr %180, i64 0, i32 7
  %182 = load i32, ptr %181, align 8, !tbaa !86
  %183 = and i32 %182, -129
  store i32 %183, ptr %181, align 8, !tbaa !86
  br label %184

184:                                              ; preds = %171, %158
  %185 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !95
  %187 = tail call ptr @get_bb_copy(ptr noundef %186) #12
  %188 = load ptr, ptr %187, align 8, !tbaa !96
  %189 = icmp eq ptr %188, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %184
  %191 = load i32, ptr %188, align 8, !tbaa !75
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %194, label %193

193:                                              ; preds = %184, %190
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 655, ptr noundef nonnull @.str.1) #12
  br label %194

194:                                              ; preds = %190, %193
  %195 = load ptr, ptr %187, align 8, !tbaa !96
  %196 = getelementptr inbounds %struct.VEC_edge_base, ptr %195, i64 0, i32 2, i64 0
  %197 = load ptr, ptr %196, align 8, !tbaa !35
  %198 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !73
  %200 = getelementptr inbounds %struct.VEC_edge_base, ptr %199, i64 0, i32 2, i64 0
  %201 = load ptr, ptr %200, align 8, !tbaa !35
  %202 = getelementptr inbounds %struct.edge_def, ptr %201, i64 0, i32 7
  %203 = load i32, ptr %202, align 8, !tbaa !86
  %204 = and i32 %203, 1
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %194
  %207 = getelementptr inbounds %struct.VEC_edge_base, ptr %199, i64 0, i32 2, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !35
  br label %209

209:                                              ; preds = %194, %206
  %210 = phi ptr [ %208, %206 ], [ %201, %194 ]
  br i1 %205, label %211, label %214

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct.VEC_edge_base, ptr %199, i64 0, i32 2, i64 1
  %213 = load ptr, ptr %212, align 8, !tbaa !35
  br label %214

214:                                              ; preds = %209, %211
  %215 = phi ptr [ %213, %211 ], [ %201, %209 ]
  %216 = sub nsw i32 10000, %97
  %217 = tail call ptr @loopify(ptr noundef %95, ptr noundef %197, ptr noundef %105, ptr noundef %210, ptr noundef %215, i8 noundef zeroext 1, i32 noundef %97, i32 noundef %216) #12
  %218 = tail call zeroext i8 @remove_path(ptr noundef %69) #12
  %219 = tail call zeroext i8 @remove_path(ptr noundef %81) #12
  %220 = tail call ptr @loop_preheader_edge(ptr noundef %0) #12
  %221 = tail call ptr @split_edge(ptr noundef %220) #12
  %222 = tail call ptr @loop_preheader_edge(ptr noundef %217) #12
  %223 = tail call ptr @split_edge(ptr noundef %222) #12
  br label %224

224:                                              ; preds = %45, %214
  %225 = phi ptr [ %217, %214 ], [ null, %45 ]
  ret ptr %225
}

declare void @free_EXPR_LIST_node(ptr noundef) local_unnamed_addr #3

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @just_once_each_iteration_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_condition(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @iv_analyze(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_iv_value(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_relational(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @duplicate_loop_to_header_edge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_bb_copy(ptr noundef) local_unnamed_addr #3

declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #3

declare ptr @block_label(ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @loopify(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

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
!69 = distinct !{!69, !52, !53}
!70 = !{!71, !41, i64 8}
!71 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!72 = !{!61, !41, i64 36}
!73 = !{!74, !36, i64 8}
!74 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!75 = !{!76, !41, i64 0}
!76 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!77 = !{!78, !36, i64 8}
!78 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!79 = !{!80, !36, i64 8}
!80 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!81 = !{!82, !36, i64 8}
!82 = !{!"rtx_iv", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48}
!83 = distinct !{!83, !52, !53}
!84 = distinct !{!84, !52, !53}
!85 = distinct !{!85, !52, !53}
!86 = !{!80, !41, i64 48}
!87 = !{!61, !36, i64 16}
!88 = !{!80, !41, i64 52}
!89 = !{!55, !36, i64 8}
!90 = !{!91, !36, i64 8}
!91 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!92 = !{!74, !36, i64 48}
!93 = !{!80, !42, i64 56}
!94 = !{!74, !41, i64 96}
!95 = !{!61, !36, i64 8}
!96 = !{!74, !36, i64 0}
