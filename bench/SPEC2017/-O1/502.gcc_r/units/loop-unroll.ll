; ModuleID = 'loop-unroll.c'
source_filename = "loop-unroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.loop_iterator = type { ptr, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.niter_desc = type { ptr, ptr, i8, i8, i64, i64, ptr, ptr, ptr, i8, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.opt_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_iv = type { ptr, ptr, i32, ptr, ptr, i32, i32, i8 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.iv_to_split = type { ptr, ptr, ptr, ptr, i32, [3 x i32] }
%struct.var_to_expand = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"loop-unroll.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"\0A;; *** Considering loop %d for complete peeling ***\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\0A;; Considering peeling once rolling loop\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c";; Not considering loop, is too big\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c";; Unable to prove that the loop rolls exactly once\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c";; Decided to peel exactly once rolling loop\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\0A;; Considering peeling completely\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c";; Not considering loop, is not innermost\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c";; Not considering loop, cold area\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c";; Not considering loop, cannot duplicate\0A\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c";; Unable to prove that the loop iterates constant times\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c";; Not peeling loop completely, rolls too much (\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c" iterations > %d [maximum peelings])\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c";; Decided to peel loop completely\0A\00", align 1
@flag_split_ivs_in_unroller = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [37 x i8] c";; Peeled loop completely, %d times\0A\00", align 1
@flag_variable_expansion_in_unroller = external local_unnamed_addr global i32, align 4
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@flag_associative_math = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"\0A;; Expanding Accumulator \00", align 1
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@.str.19 = private unnamed_addr constant [33 x i8] c"\0A;; *** Considering loop %d ***\0A\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"\0A;; Considering unrolling loop with constant number of iterations\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c";; Not unrolling loop, doesn't roll\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c";; max_unroll %d (%d copies, initial %d).\0A\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c";; Decided to unroll the constant times rolling loop, %d times.\0A\00", align 1
@.str.24 = private unnamed_addr constant [77 x i8] c"\0A;; Considering unrolling loop with runtime computable number of iterations\0A\00", align 1
@.str.25 = private unnamed_addr constant [76 x i8] c";; Unable to prove that the number of iterations can be counted in runtime\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c";; Loop iterates constant times\0A\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c";; Decided to unroll the runtime computable times rolling loop, %d times.\0A\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"\0A;; Considering unrolling loop stupidly\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c";; The loop is simple\0A\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c";; Not unrolling, contains branches\0A\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c";; Decided to unroll the loop stupidly, %d times.\0A\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"\0A;; Considering simply peeling loop\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c";; Not peeling, contains branches\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c";; Not peeling loop, rolls too much (\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c";; Not peeling loop, no evidence it will be profitable\0A\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c";; Decided to simply peel the loop, %d times.\0A\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c";; Condition on beginning of loop.\0A\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c";; Condition on end of loop.\0A\00", align 1
@.str.39 = private unnamed_addr constant [62 x i8] c";; Unrolled loop %d times, constant # of iterations %i insns\0A\00", align 1
@.str.40 = private unnamed_addr constant [74 x i8] c";; Unrolled loop %d times, counting # of iterations in runtime, %i insns\0A\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c";; Peeling loop %d times\0A\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c";; Unrolled loop %d times, %i insns\0A\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
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
  %5 = tail call ptr @__ctype_tolower_loc() #15
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
  %5 = tail call ptr @__ctype_toupper_loc() #15
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
define dso_local void @unroll_and_peel_loops(i32 noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.loop_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.loop_iterator, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  call fastcc void @fel_init(ptr noundef nonnull %8, ptr noundef nonnull %7)
  %11 = load ptr, ptr %7, align 8, !tbaa !35
  %12 = load ptr, ptr %8, align 8, !tbaa !35
  %13 = icmp eq ptr %11, null
  br i1 %13, label %294, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.loop_iterator, ptr %8, i64 0, i32 1
  br label %16

16:                                               ; preds = %14, %290
  %17 = phi ptr [ %11, %14 ], [ %292, %290 ]
  %18 = phi ptr [ %12, %14 ], [ %291, %290 ]
  %19 = getelementptr inbounds %struct.loop, ptr %17, i64 0, i32 4
  store i32 0, ptr %19, align 8, !tbaa !54
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr %17, align 8, !tbaa !58
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.2, i32 noundef %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = call i32 @num_loop_insns(ptr noundef nonnull %17) #15
  %27 = getelementptr inbounds %struct.loop, ptr %17, i64 0, i32 1
  store i32 %26, ptr %27, align 4, !tbaa !59
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = call i64 @fwrite(ptr nonnull @.str.3, i64 42, i64 1, ptr nonnull %28)
  br label %32

32:                                               ; preds = %30, %25
  %33 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %34 = getelementptr inbounds %struct.param_info, ptr %33, i64 33, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !60
  %36 = load i32, ptr %27, align 4, !tbaa !59
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %40 = icmp eq ptr %39, null
  br i1 %40, label %75, label %41

41:                                               ; preds = %38
  %42 = call i64 @fwrite(ptr nonnull @.str.4, i64 36, i64 1, ptr nonnull %39)
  br label %75

43:                                               ; preds = %32
  %44 = call ptr @get_simple_loop_desc(ptr noundef nonnull %17) #15
  %45 = getelementptr inbounds %struct.niter_desc, ptr %44, i64 0, i32 2
  %46 = load i8, ptr %45, align 8, !tbaa !62
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.niter_desc, ptr %44, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !64
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.niter_desc, ptr %44, i64 0, i32 8
  %54 = load ptr, ptr %53, align 8, !tbaa !65
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.niter_desc, ptr %44, i64 0, i32 3
  %58 = load i8, ptr %57, align 1, !tbaa !66
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.niter_desc, ptr %44, i64 0, i32 4
  %62 = load i64, ptr %61, align 8, !tbaa !67
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60, %56, %52, %48, %43
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  %68 = call i64 @fwrite(ptr nonnull @.str.5, i64 52, i64 1, ptr nonnull %65)
  br label %75

69:                                               ; preds = %60
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = call i64 @fwrite(ptr nonnull @.str.6, i64 45, i64 1, ptr nonnull %70)
  br label %74

74:                                               ; preds = %72, %69
  store i32 1, ptr %19, align 8, !tbaa !54
  br label %75

75:                                               ; preds = %74, %67, %64, %41, %38
  %76 = load i32, ptr %19, align 8, !tbaa !54
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %165

78:                                               ; preds = %75
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = call i64 @fwrite(ptr nonnull @.str.7, i64 35, i64 1, ptr nonnull %79)
  br label %83

83:                                               ; preds = %81, %78
  %84 = getelementptr inbounds %struct.loop, ptr %17, i64 0, i32 8
  %85 = load ptr, ptr %84, align 8, !tbaa !68
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %89 = icmp eq ptr %88, null
  br i1 %89, label %165, label %90

90:                                               ; preds = %87
  %91 = call i64 @fwrite(ptr nonnull @.str.8, i64 42, i64 1, ptr nonnull %88)
  br label %165

92:                                               ; preds = %83
  %93 = call zeroext i8 @optimize_loop_for_size_p(ptr noundef nonnull %17) #15
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %97 = icmp eq ptr %96, null
  br i1 %97, label %165, label %98

98:                                               ; preds = %95
  %99 = call i64 @fwrite(ptr nonnull @.str.9, i64 35, i64 1, ptr nonnull %96)
  br label %165

100:                                              ; preds = %92
  %101 = call zeroext i8 @can_duplicate_loop_p(ptr noundef nonnull %17) #15
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %105 = icmp eq ptr %104, null
  br i1 %105, label %165, label %106

106:                                              ; preds = %103
  %107 = call i64 @fwrite(ptr nonnull @.str.10, i64 42, i64 1, ptr nonnull %104)
  br label %165

108:                                              ; preds = %100
  %109 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %110 = getelementptr inbounds %struct.param_info, ptr %109, i64 31, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !60
  %112 = load i32, ptr %27, align 4, !tbaa !59
  %113 = udiv i32 %111, %112
  %114 = getelementptr inbounds %struct.param_info, ptr %109, i64 32, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !60
  %116 = call i32 @llvm.umin.i32(i32 %113, i32 %115)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %108
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %120 = icmp eq ptr %119, null
  br i1 %120, label %165, label %121

121:                                              ; preds = %118
  %122 = call i64 @fwrite(ptr nonnull @.str.4, i64 36, i64 1, ptr nonnull %119)
  br label %165

123:                                              ; preds = %108
  %124 = call ptr @get_simple_loop_desc(ptr noundef nonnull %17) #15
  %125 = getelementptr inbounds %struct.niter_desc, ptr %124, i64 0, i32 2
  %126 = load i8, ptr %125, align 8, !tbaa !62
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.niter_desc, ptr %124, i64 0, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !64
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.niter_desc, ptr %124, i64 0, i32 3
  %134 = load i8, ptr %133, align 1, !tbaa !66
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.niter_desc, ptr %124, i64 0, i32 8
  %138 = load ptr, ptr %137, align 8, !tbaa !65
  %139 = icmp eq ptr %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %136, %132, %128, %123
  %141 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %142 = icmp eq ptr %141, null
  br i1 %142, label %165, label %143

143:                                              ; preds = %140
  %144 = call i64 @fwrite(ptr nonnull @.str.11, i64 57, i64 1, ptr nonnull %141)
  br label %165

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct.niter_desc, ptr %124, i64 0, i32 4
  %147 = load i64, ptr %146, align 8, !tbaa !67
  %148 = add i32 %116, -1
  %149 = zext i32 %148 to i64
  %150 = icmp ugt i64 %147, %149
  %151 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %152 = icmp eq ptr %151, null
  br i1 %150, label %153, label %161

153:                                              ; preds = %145
  br i1 %152, label %165, label %154

154:                                              ; preds = %153
  %155 = call i64 @fwrite(ptr nonnull @.str.12, i64 48, i64 1, ptr nonnull %151)
  %156 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %157 = load i64, ptr %146, align 8, !tbaa !67
  %158 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef nonnull @.str.13, i64 noundef %157)
  %159 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %160 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef nonnull @.str.14, i32 noundef %116)
  br label %165

161:                                              ; preds = %145
  br i1 %152, label %164, label %162

162:                                              ; preds = %161
  %163 = call i64 @fwrite(ptr nonnull @.str.15, i64 35, i64 1, ptr nonnull %151)
  br label %164

164:                                              ; preds = %162, %161
  store i32 1, ptr %19, align 8, !tbaa !54
  br label %165

165:                                              ; preds = %164, %154, %153, %143, %140, %121, %118, %106, %103, %98, %95, %90, %87, %75
  %166 = load i32, ptr %19, align 8, !tbaa !54
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %261

168:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %169 = call ptr @get_simple_loop_desc(ptr noundef nonnull %17) #15
  %170 = getelementptr inbounds %struct.niter_desc, ptr %169, i64 0, i32 4
  %171 = load i64, ptr %170, align 8, !tbaa !67
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %251, label %173

173:                                              ; preds = %168
  %174 = trunc i64 %171 to i32
  %175 = add i32 %174, 1
  %176 = call ptr @sbitmap_alloc(i32 noundef %175) #15
  call void @sbitmap_ones(ptr noundef %176) #15
  %177 = load ptr, ptr %176, align 8, !tbaa !69
  %178 = icmp eq ptr %177, null
  br i1 %178, label %187, label %179

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.simple_bitmap_def, ptr %176, i64 0, i32 3, i64 0
  %181 = load i64, ptr %180, align 8, !tbaa !71
  %182 = and i64 %181, 1
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = load i8, ptr %177, align 1, !tbaa !46
  %186 = add i8 %185, -1
  store i8 %186, ptr %177, align 1, !tbaa !46
  br label %187

187:                                              ; preds = %184, %179, %173
  %188 = getelementptr inbounds %struct.simple_bitmap_def, ptr %176, i64 0, i32 3, i64 0
  %189 = load i64, ptr %188, align 8, !tbaa !71
  %190 = and i64 %189, -2
  store i64 %190, ptr %188, align 8, !tbaa !71
  %191 = getelementptr inbounds %struct.niter_desc, ptr %169, i64 0, i32 7
  %192 = load ptr, ptr %191, align 8, !tbaa !72
  %193 = icmp eq ptr %192, null
  br i1 %193, label %206, label %194

194:                                              ; preds = %187
  %195 = load ptr, ptr %176, align 8, !tbaa !69
  %196 = icmp eq ptr %195, null
  %197 = and i64 %189, 2
  %198 = icmp eq i64 %197, 0
  %199 = select i1 %196, i1 true, i1 %198
  br i1 %199, label %203, label %200

200:                                              ; preds = %194
  %201 = load i8, ptr %195, align 1, !tbaa !46
  %202 = add i8 %201, -1
  store i8 %202, ptr %195, align 1, !tbaa !46
  br label %203

203:                                              ; preds = %200, %194
  %204 = load i64, ptr %188, align 8, !tbaa !71
  %205 = and i64 %204, -3
  store i64 %205, ptr %188, align 8, !tbaa !71
  br label %206

206:                                              ; preds = %203, %187
  store ptr null, ptr %6, align 8, !tbaa !35
  %207 = load i32, ptr @flag_split_ivs_in_unroller, align 4, !tbaa !50
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %206
  %210 = call fastcc ptr @analyze_insns_in_loop(ptr noundef nonnull %17)
  br label %211

211:                                              ; preds = %209, %206
  %212 = phi ptr [ %210, %209 ], [ null, %206 ]
  %213 = icmp eq ptr %212, null
  br i1 %213, label %221, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr @cfun, align 8, !tbaa !35
  %216 = getelementptr inbounds %struct.function, ptr %215, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !73
  %218 = getelementptr inbounds %struct.control_flow_graph, ptr %217, i64 0, i32 5
  %219 = load i32, ptr %218, align 8, !tbaa !75
  %220 = getelementptr inbounds %struct.opt_info, ptr %212, i64 0, i32 6
  store i32 %219, ptr %220, align 8, !tbaa !77
  br label %221

221:                                              ; preds = %214, %211
  %222 = phi i32 [ 5, %211 ], [ 7, %214 ]
  %223 = call ptr @loop_preheader_edge(ptr noundef nonnull %17) #15
  %224 = load ptr, ptr %169, align 8, !tbaa !79
  %225 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %17, ptr noundef %223, i32 noundef %174, ptr noundef nonnull %176, ptr noundef %224, ptr noundef nonnull %6, i32 noundef %222) #15
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 492, ptr noundef nonnull @.str.1) #15
  br label %228

228:                                              ; preds = %227, %221
  call void @free(ptr noundef %176)
  br i1 %213, label %230, label %229

229:                                              ; preds = %228
  call fastcc void @apply_opt_in_copies(ptr noundef nonnull %212, i32 noundef %174, i8 noundef zeroext 0, i8 noundef zeroext 1)
  call fastcc void @free_opt_info(ptr noundef nonnull %212)
  br label %230

230:                                              ; preds = %229, %228
  br label %231

231:                                              ; preds = %230, %245
  %232 = phi i32 [ %247, %245 ], [ 0, %230 ]
  %233 = load ptr, ptr %6, align 8
  %234 = icmp eq ptr %233, null
  br i1 %234, label %242, label %235

235:                                              ; preds = %231
  %236 = load i32, ptr %233, align 8, !tbaa !80
  %237 = icmp ugt i32 %236, %232
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = zext i32 %232 to i64
  %240 = getelementptr inbounds %struct.VEC_edge_base, ptr %233, i64 0, i32 2, i64 %239
  %241 = load ptr, ptr %240, align 8, !tbaa !35
  br label %242

242:                                              ; preds = %238, %235, %231
  %243 = phi ptr [ %241, %238 ], [ null, %235 ], [ null, %231 ]
  %244 = phi i1 [ false, %238 ], [ true, %235 ], [ true, %231 ]
  br i1 %244, label %248, label %245

245:                                              ; preds = %242
  %246 = call zeroext i8 @remove_path(ptr noundef %243) #15
  %247 = add i32 %232, 1
  br label %231, !llvm.loop !82

248:                                              ; preds = %242
  br i1 %234, label %250, label %249

249:                                              ; preds = %248
  call void @free(ptr noundef %233)
  br label %250

250:                                              ; preds = %249, %248
  store ptr null, ptr %6, align 8, !tbaa !35
  br label %251

251:                                              ; preds = %250, %168
  %252 = getelementptr inbounds %struct.niter_desc, ptr %169, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !83
  call void @free_simple_loop_desc(ptr noundef nonnull %17) #15
  %254 = call zeroext i8 @remove_path(ptr noundef %253) #15
  %255 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %256 = icmp eq ptr %255, null
  br i1 %256, label %260, label %257

257:                                              ; preds = %251
  %258 = trunc i64 %171 to i32
  %259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %255, ptr noundef nonnull @.str.16, i32 noundef %258)
  br label %260

260:                                              ; preds = %257, %251
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %261

261:                                              ; preds = %260, %165
  %262 = icmp eq ptr %18, null
  %263 = load i32, ptr %15, align 8, !tbaa !84
  %264 = load ptr, ptr @cfun, align 8
  %265 = getelementptr inbounds %struct.function, ptr %264, i64 0, i32 4
  br label %266

266:                                              ; preds = %278, %261
  %267 = phi i32 [ %279, %278 ], [ %263, %261 ]
  br i1 %262, label %275, label %268

268:                                              ; preds = %266
  %269 = load i32, ptr %18, align 4, !tbaa !86
  %270 = icmp ugt i32 %269, %267
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = zext i32 %267 to i64
  %273 = getelementptr inbounds %struct.VEC_int_base, ptr %18, i64 0, i32 2, i64 %272
  %274 = load i32, ptr %273, align 4, !tbaa !50
  br label %275

275:                                              ; preds = %271, %268, %266
  %276 = phi i32 [ %274, %271 ], [ 0, %268 ], [ 0, %266 ]
  %277 = phi i1 [ false, %271 ], [ true, %268 ], [ true, %266 ]
  br i1 %277, label %287, label %278

278:                                              ; preds = %275
  %279 = add i32 %267, 1
  %280 = load ptr, ptr %265, align 8, !tbaa !88
  %281 = getelementptr inbounds %struct.loops, ptr %280, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !89
  %283 = zext i32 %276 to i64
  %284 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %282, i64 0, i32 2, i64 %283
  %285 = load ptr, ptr %284, align 8, !tbaa !35
  %286 = icmp eq ptr %285, null
  br i1 %286, label %266, label %289, !llvm.loop !91

287:                                              ; preds = %275
  store i32 %267, ptr %15, align 8, !tbaa !84
  br i1 %262, label %290, label %288

288:                                              ; preds = %287
  call void @free(ptr noundef %18)
  br label %290

289:                                              ; preds = %278
  store i32 %279, ptr %15, align 8, !tbaa !84
  br label %290

290:                                              ; preds = %287, %288, %289
  %291 = phi ptr [ %18, %289 ], [ null, %288 ], [ null, %287 ]
  %292 = phi ptr [ %285, %289 ], [ null, %288 ], [ null, %287 ]
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %16, !llvm.loop !92

294:                                              ; preds = %290, %1
  %295 = phi ptr [ %12, %1 ], [ %291, %290 ]
  %296 = phi ptr [ %11, %1 ], [ %292, %290 ]
  store ptr %296, ptr %7, align 8, !tbaa !35
  store ptr %295, ptr %8, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call fastcc void @fel_init(ptr noundef nonnull %5, ptr noundef nonnull %4)
  %297 = load ptr, ptr %4, align 8, !tbaa !35
  %298 = load ptr, ptr %5, align 8, !tbaa !35
  %299 = icmp eq ptr %297, null
  br i1 %299, label %729, label %300

300:                                              ; preds = %294
  %301 = and i32 %0, 2
  %302 = icmp eq i32 %301, 0
  %303 = and i32 %0, 4
  %304 = icmp eq i32 %303, 0
  %305 = and i32 %0, 1
  %306 = icmp eq i32 %305, 0
  %307 = getelementptr inbounds %struct.loop_iterator, ptr %5, i64 0, i32 1
  br label %308

308:                                              ; preds = %300, %725
  %309 = phi ptr [ %297, %300 ], [ %727, %725 ]
  %310 = phi ptr [ %298, %300 ], [ %726, %725 ]
  %311 = getelementptr inbounds %struct.loop, ptr %309, i64 0, i32 4
  store i32 0, ptr %311, align 8, !tbaa !54
  %312 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %313 = icmp eq ptr %312, null
  br i1 %313, label %317, label %314

314:                                              ; preds = %308
  %315 = load i32, ptr %309, align 8, !tbaa !58
  %316 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %312, ptr noundef nonnull @.str.19, i32 noundef %315)
  br label %317

317:                                              ; preds = %314, %308
  %318 = call zeroext i8 @optimize_loop_for_size_p(ptr noundef nonnull %309) #15
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %325, label %320

320:                                              ; preds = %317
  %321 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %322 = icmp eq ptr %321, null
  br i1 %322, label %696, label %323

323:                                              ; preds = %320
  %324 = call i64 @fwrite(ptr nonnull @.str.9, i64 35, i64 1, ptr nonnull %321)
  br label %696

325:                                              ; preds = %317
  %326 = call zeroext i8 @can_duplicate_loop_p(ptr noundef nonnull %309) #15
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %325
  %329 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %330 = icmp eq ptr %329, null
  br i1 %330, label %696, label %331

331:                                              ; preds = %328
  %332 = call i64 @fwrite(ptr nonnull @.str.10, i64 42, i64 1, ptr nonnull %329)
  br label %696

333:                                              ; preds = %325
  %334 = getelementptr inbounds %struct.loop, ptr %309, i64 0, i32 8
  %335 = load ptr, ptr %334, align 8, !tbaa !68
  %336 = icmp eq ptr %335, null
  br i1 %336, label %342, label %337

337:                                              ; preds = %333
  %338 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %339 = icmp eq ptr %338, null
  br i1 %339, label %696, label %340

340:                                              ; preds = %337
  %341 = call i64 @fwrite(ptr nonnull @.str.8, i64 42, i64 1, ptr nonnull %338)
  br label %696

342:                                              ; preds = %333
  %343 = call i32 @num_loop_insns(ptr noundef nonnull %309) #15
  %344 = getelementptr inbounds %struct.loop, ptr %309, i64 0, i32 1
  store i32 %343, ptr %344, align 4, !tbaa !59
  %345 = call i32 @average_num_loop_insns(ptr noundef nonnull %309) #15
  %346 = getelementptr inbounds %struct.loop, ptr %309, i64 0, i32 5
  store i32 %345, ptr %346, align 8, !tbaa !93
  br i1 %302, label %456, label %347

347:                                              ; preds = %342
  %348 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %349 = icmp eq ptr %348, null
  br i1 %349, label %352, label %350

350:                                              ; preds = %347
  %351 = call i64 @fwrite(ptr nonnull @.str.20, i64 66, i64 1, ptr nonnull %348)
  br label %352

352:                                              ; preds = %350, %347
  %353 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %354 = getelementptr inbounds %struct.param_info, ptr %353, i64 26, i32 1
  %355 = load i32, ptr %354, align 8, !tbaa !60
  %356 = load i32, ptr %344, align 4, !tbaa !59
  %357 = udiv i32 %355, %356
  %358 = getelementptr inbounds %struct.param_info, ptr %353, i64 27, i32 1
  %359 = load i32, ptr %358, align 8, !tbaa !60
  %360 = load i32, ptr %346, align 8, !tbaa !93
  %361 = udiv i32 %359, %360
  %362 = call i32 @llvm.umin.i32(i32 %357, i32 %361)
  %363 = getelementptr inbounds %struct.param_info, ptr %353, i64 28, i32 1
  %364 = load i32, ptr %363, align 8, !tbaa !60
  %365 = call i32 @llvm.umin.i32(i32 %362, i32 %364)
  %366 = icmp ult i32 %365, 2
  br i1 %366, label %367, label %372

367:                                              ; preds = %352
  %368 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %369 = icmp eq ptr %368, null
  br i1 %369, label %456, label %370

370:                                              ; preds = %367
  %371 = call i64 @fwrite(ptr nonnull @.str.4, i64 36, i64 1, ptr nonnull %368)
  br label %456

372:                                              ; preds = %352
  %373 = call ptr @get_simple_loop_desc(ptr noundef nonnull %309) #15
  %374 = getelementptr inbounds %struct.niter_desc, ptr %373, i64 0, i32 2
  %375 = load i8, ptr %374, align 8, !tbaa !62
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %385, label %377

377:                                              ; preds = %372
  %378 = getelementptr inbounds %struct.niter_desc, ptr %373, i64 0, i32 3
  %379 = load i8, ptr %378, align 1, !tbaa !66
  %380 = icmp eq i8 %379, 0
  br i1 %380, label %385, label %381

381:                                              ; preds = %377
  %382 = getelementptr inbounds %struct.niter_desc, ptr %373, i64 0, i32 6
  %383 = load ptr, ptr %382, align 8, !tbaa !64
  %384 = icmp eq ptr %383, null
  br i1 %384, label %390, label %385

385:                                              ; preds = %381, %377, %372
  %386 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %387 = icmp eq ptr %386, null
  br i1 %387, label %456, label %388

388:                                              ; preds = %385
  %389 = call i64 @fwrite(ptr nonnull @.str.11, i64 57, i64 1, ptr nonnull %386)
  br label %456

390:                                              ; preds = %381
  %391 = getelementptr inbounds %struct.niter_desc, ptr %373, i64 0, i32 4
  %392 = load i64, ptr %391, align 8, !tbaa !67
  %393 = shl i32 %365, 1
  %394 = zext i32 %393 to i64
  %395 = icmp ult i64 %392, %394
  br i1 %395, label %396, label %401

396:                                              ; preds = %390
  %397 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %398 = icmp eq ptr %397, null
  br i1 %398, label %456, label %399

399:                                              ; preds = %396
  %400 = call i64 @fwrite(ptr nonnull @.str.21, i64 36, i64 1, ptr nonnull %397)
  br label %456

401:                                              ; preds = %390
  %402 = add i32 %393, 10
  %403 = add i32 %393, 2
  %404 = or disjoint i32 %393, 1
  %405 = zext i32 %404 to i64
  %406 = icmp ugt i64 %392, %405
  %407 = trunc i64 %392 to i32
  %408 = add i32 %407, -2
  %409 = select i1 %406, i32 %403, i32 %408
  %410 = add i32 %365, -1
  %411 = icmp ult i32 %409, %410
  br i1 %411, label %442, label %412

412:                                              ; preds = %401, %435
  %413 = phi i32 [ %439, %435 ], [ %402, %401 ]
  %414 = phi i32 [ %440, %435 ], [ %409, %401 ]
  %415 = phi i32 [ %438, %435 ], [ 0, %401 ]
  %416 = load i64, ptr %391, align 8, !tbaa !67
  %417 = add i32 %414, 1
  %418 = zext i32 %417 to i64
  %419 = urem i64 %416, %418
  %420 = trunc i64 %419 to i32
  %421 = call fastcc zeroext i8 @loop_exit_at_end_p(ptr noundef nonnull %309), !range !94
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %412
  %424 = add i32 %414, 1
  %425 = add i32 %424, %420
  br label %435

426:                                              ; preds = %412
  %427 = icmp eq i32 %414, %420
  br i1 %427, label %428, label %432

428:                                              ; preds = %426
  %429 = getelementptr inbounds %struct.niter_desc, ptr %373, i64 0, i32 7
  %430 = load ptr, ptr %429, align 8, !tbaa !72
  %431 = icmp eq ptr %430, null
  br i1 %431, label %435, label %432

432:                                              ; preds = %428, %426
  %433 = add i32 %414, 2
  %434 = add i32 %433, %420
  br label %435

435:                                              ; preds = %432, %428, %423
  %436 = phi i32 [ %434, %432 ], [ %425, %423 ], [ %417, %428 ]
  %437 = icmp ult i32 %436, %413
  %438 = select i1 %437, i32 %414, i32 %415
  %439 = call i32 @llvm.umin.i32(i32 %436, i32 %413)
  %440 = add i32 %414, -1
  %441 = icmp ult i32 %440, %410
  br i1 %441, label %442, label %412, !llvm.loop !95

442:                                              ; preds = %435, %401
  %443 = phi i32 [ 0, %401 ], [ %438, %435 ]
  %444 = phi i32 [ %402, %401 ], [ %439, %435 ]
  %445 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %446 = icmp eq ptr %445, null
  br i1 %446, label %450, label %447

447:                                              ; preds = %442
  %448 = add i32 %443, 1
  %449 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %445, ptr noundef nonnull @.str.22, i32 noundef %448, i32 noundef %444, i32 noundef %365)
  br label %450

450:                                              ; preds = %447, %442
  store i32 3, ptr %311, align 8, !tbaa !54
  %451 = getelementptr inbounds %struct.loop, ptr %309, i64 0, i32 4, i32 1
  store i32 %443, ptr %451, align 4, !tbaa !96
  %452 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %453 = icmp eq ptr %452, null
  br i1 %453, label %456, label %454

454:                                              ; preds = %450
  %455 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %452, ptr noundef nonnull @.str.23, i32 noundef %443)
  br label %456

456:                                              ; preds = %454, %450, %399, %396, %388, %385, %370, %367, %342
  %457 = load i32, ptr %311, align 8, !tbaa !54
  %458 = icmp ne i32 %457, 0
  %459 = or i1 %302, %458
  br i1 %459, label %535, label %460

460:                                              ; preds = %456
  %461 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %462 = icmp eq ptr %461, null
  br i1 %462, label %465, label %463

463:                                              ; preds = %460
  %464 = call i64 @fwrite(ptr nonnull @.str.24, i64 76, i64 1, ptr nonnull %461)
  br label %465

465:                                              ; preds = %463, %460
  %466 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %467 = getelementptr inbounds %struct.param_info, ptr %466, i64 26, i32 1
  %468 = load i32, ptr %467, align 8, !tbaa !60
  %469 = load i32, ptr %344, align 4, !tbaa !59
  %470 = udiv i32 %468, %469
  %471 = getelementptr inbounds %struct.param_info, ptr %466, i64 27, i32 1
  %472 = load i32, ptr %471, align 8, !tbaa !60
  %473 = load i32, ptr %346, align 8, !tbaa !93
  %474 = udiv i32 %472, %473
  %475 = call i32 @llvm.umin.i32(i32 %470, i32 %474)
  %476 = getelementptr inbounds %struct.param_info, ptr %466, i64 28, i32 1
  %477 = load i32, ptr %476, align 8, !tbaa !60
  %478 = call i32 @llvm.umin.i32(i32 %475, i32 %477)
  %479 = icmp ult i32 %478, 2
  br i1 %479, label %480, label %485

480:                                              ; preds = %465
  %481 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %482 = icmp eq ptr %481, null
  br i1 %482, label %535, label %483

483:                                              ; preds = %480
  %484 = call i64 @fwrite(ptr nonnull @.str.4, i64 36, i64 1, ptr nonnull %481)
  br label %535

485:                                              ; preds = %465
  %486 = call ptr @get_simple_loop_desc(ptr noundef nonnull %309) #15
  %487 = getelementptr inbounds %struct.niter_desc, ptr %486, i64 0, i32 2
  %488 = load i8, ptr %487, align 8, !tbaa !62
  %489 = icmp eq i8 %488, 0
  br i1 %489, label %494, label %490

490:                                              ; preds = %485
  %491 = getelementptr inbounds %struct.niter_desc, ptr %486, i64 0, i32 6
  %492 = load ptr, ptr %491, align 8, !tbaa !64
  %493 = icmp eq ptr %492, null
  br i1 %493, label %499, label %494

494:                                              ; preds = %490, %485
  %495 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %496 = icmp eq ptr %495, null
  br i1 %496, label %535, label %497

497:                                              ; preds = %494
  %498 = call i64 @fwrite(ptr nonnull @.str.25, i64 75, i64 1, ptr nonnull %495)
  br label %535

499:                                              ; preds = %490
  %500 = getelementptr inbounds %struct.niter_desc, ptr %486, i64 0, i32 3
  %501 = load i8, ptr %500, align 1, !tbaa !66
  %502 = icmp eq i8 %501, 0
  br i1 %502, label %508, label %503

503:                                              ; preds = %499
  %504 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %505 = icmp eq ptr %504, null
  br i1 %505, label %535, label %506

506:                                              ; preds = %503
  %507 = call i64 @fwrite(ptr nonnull @.str.26, i64 32, i64 1, ptr nonnull %504)
  br label %535

508:                                              ; preds = %499
  %509 = getelementptr inbounds %struct.loop, ptr %309, i64 0, i32 2
  %510 = load ptr, ptr %509, align 8, !tbaa !97
  %511 = getelementptr inbounds %struct.basic_block_def, ptr %510, i64 0, i32 8
  %512 = load i64, ptr %511, align 8, !tbaa !98
  %513 = icmp eq i64 %512, 0
  br i1 %513, label %514, label %515

514:                                              ; preds = %515, %508
  br label %524

515:                                              ; preds = %508
  %516 = call i32 @expected_loop_iterations(ptr noundef nonnull %309) #15
  %517 = shl i32 %478, 1
  %518 = icmp ult i32 %516, %517
  br i1 %518, label %519, label %514

519:                                              ; preds = %515
  %520 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %521 = icmp eq ptr %520, null
  br i1 %521, label %535, label %522

522:                                              ; preds = %519
  %523 = call i64 @fwrite(ptr nonnull @.str.21, i64 36, i64 1, ptr nonnull %520)
  br label %535

524:                                              ; preds = %514, %524
  %525 = phi i32 [ %526, %524 ], [ 1, %514 ]
  %526 = shl i32 %525, 1
  %527 = icmp ugt i32 %526, %478
  br i1 %527, label %528, label %524, !llvm.loop !100

528:                                              ; preds = %524
  store i32 4, ptr %311, align 8, !tbaa !54
  %529 = add i32 %525, -1
  %530 = getelementptr inbounds %struct.loop, ptr %309, i64 0, i32 4, i32 1
  store i32 %529, ptr %530, align 4, !tbaa !96
  %531 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %532 = icmp eq ptr %531, null
  br i1 %532, label %535, label %533

533:                                              ; preds = %528
  %534 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %531, ptr noundef nonnull @.str.27, i32 noundef %529)
  br label %535

535:                                              ; preds = %533, %528, %522, %519, %506, %503, %497, %494, %483, %480, %456
  %536 = load i32, ptr %311, align 8, !tbaa !54
  %537 = icmp ne i32 %536, 0
  %538 = or i1 %304, %537
  br i1 %538, label %613, label %539

539:                                              ; preds = %535
  %540 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %541 = icmp eq ptr %540, null
  br i1 %541, label %544, label %542

542:                                              ; preds = %539
  %543 = call i64 @fwrite(ptr nonnull @.str.28, i64 40, i64 1, ptr nonnull %540)
  br label %544

544:                                              ; preds = %542, %539
  %545 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %546 = getelementptr inbounds %struct.param_info, ptr %545, i64 26, i32 1
  %547 = load i32, ptr %546, align 8, !tbaa !60
  %548 = load i32, ptr %344, align 4, !tbaa !59
  %549 = udiv i32 %547, %548
  %550 = getelementptr inbounds %struct.param_info, ptr %545, i64 27, i32 1
  %551 = load i32, ptr %550, align 8, !tbaa !60
  %552 = load i32, ptr %346, align 8, !tbaa !93
  %553 = udiv i32 %551, %552
  %554 = call i32 @llvm.umin.i32(i32 %549, i32 %553)
  %555 = getelementptr inbounds %struct.param_info, ptr %545, i64 28, i32 1
  %556 = load i32, ptr %555, align 8, !tbaa !60
  %557 = call i32 @llvm.umin.i32(i32 %554, i32 %556)
  %558 = icmp ult i32 %557, 2
  br i1 %558, label %559, label %564

559:                                              ; preds = %544
  %560 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %561 = icmp eq ptr %560, null
  br i1 %561, label %613, label %562

562:                                              ; preds = %559
  %563 = call i64 @fwrite(ptr nonnull @.str.4, i64 36, i64 1, ptr nonnull %560)
  br label %613

564:                                              ; preds = %544
  %565 = call ptr @get_simple_loop_desc(ptr noundef nonnull %309) #15
  %566 = getelementptr inbounds %struct.niter_desc, ptr %565, i64 0, i32 2
  %567 = load i8, ptr %566, align 8, !tbaa !62
  %568 = icmp eq i8 %567, 0
  br i1 %568, label %578, label %569

569:                                              ; preds = %564
  %570 = getelementptr inbounds %struct.niter_desc, ptr %565, i64 0, i32 6
  %571 = load ptr, ptr %570, align 8, !tbaa !64
  %572 = icmp eq ptr %571, null
  br i1 %572, label %573, label %578

573:                                              ; preds = %569
  %574 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %575 = icmp eq ptr %574, null
  br i1 %575, label %613, label %576

576:                                              ; preds = %573
  %577 = call i64 @fwrite(ptr nonnull @.str.29, i64 22, i64 1, ptr nonnull %574)
  br label %613

578:                                              ; preds = %569, %564
  %579 = call i32 @num_loop_branches(ptr noundef nonnull %309) #15
  %580 = icmp ugt i32 %579, 1
  br i1 %580, label %581, label %586

581:                                              ; preds = %578
  %582 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %583 = icmp eq ptr %582, null
  br i1 %583, label %613, label %584

584:                                              ; preds = %581
  %585 = call i64 @fwrite(ptr nonnull @.str.30, i64 36, i64 1, ptr nonnull %582)
  br label %613

586:                                              ; preds = %578
  %587 = getelementptr inbounds %struct.loop, ptr %309, i64 0, i32 2
  %588 = load ptr, ptr %587, align 8, !tbaa !97
  %589 = getelementptr inbounds %struct.basic_block_def, ptr %588, i64 0, i32 8
  %590 = load i64, ptr %589, align 8, !tbaa !98
  %591 = icmp eq i64 %590, 0
  br i1 %591, label %592, label %593

592:                                              ; preds = %593, %586
  br label %602

593:                                              ; preds = %586
  %594 = call i32 @expected_loop_iterations(ptr noundef nonnull %309) #15
  %595 = shl i32 %557, 1
  %596 = icmp ult i32 %594, %595
  br i1 %596, label %597, label %592

597:                                              ; preds = %593
  %598 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %599 = icmp eq ptr %598, null
  br i1 %599, label %613, label %600

600:                                              ; preds = %597
  %601 = call i64 @fwrite(ptr nonnull @.str.21, i64 36, i64 1, ptr nonnull %598)
  br label %613

602:                                              ; preds = %592, %602
  %603 = phi i32 [ %604, %602 ], [ 1, %592 ]
  %604 = shl i32 %603, 1
  %605 = icmp ugt i32 %604, %557
  br i1 %605, label %606, label %602, !llvm.loop !101

606:                                              ; preds = %602
  store i32 5, ptr %311, align 8, !tbaa !54
  %607 = add i32 %603, -1
  %608 = getelementptr inbounds %struct.loop, ptr %309, i64 0, i32 4, i32 1
  store i32 %607, ptr %608, align 4, !tbaa !96
  %609 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %610 = icmp eq ptr %609, null
  br i1 %610, label %613, label %611

611:                                              ; preds = %606
  %612 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %609, ptr noundef nonnull @.str.31, i32 noundef %607)
  br label %613

613:                                              ; preds = %611, %606, %600, %597, %584, %581, %576, %573, %562, %559, %535
  %614 = load i32, ptr %311, align 8, !tbaa !54
  %615 = icmp ne i32 %614, 0
  %616 = or i1 %306, %615
  br i1 %616, label %696, label %617

617:                                              ; preds = %613
  %618 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %619 = icmp eq ptr %618, null
  br i1 %619, label %622, label %620

620:                                              ; preds = %617
  %621 = call i64 @fwrite(ptr nonnull @.str.32, i64 36, i64 1, ptr nonnull %618)
  br label %622

622:                                              ; preds = %620, %617
  %623 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %624 = getelementptr inbounds %struct.param_info, ptr %623, i64 29, i32 1
  %625 = load i32, ptr %624, align 8, !tbaa !60
  %626 = load i32, ptr %344, align 4, !tbaa !59
  %627 = udiv i32 %625, %626
  %628 = getelementptr inbounds %struct.param_info, ptr %623, i64 30, i32 1
  %629 = load i32, ptr %628, align 8, !tbaa !60
  %630 = call i32 @llvm.umin.i32(i32 %627, i32 %629)
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %637

632:                                              ; preds = %622
  %633 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %634 = icmp eq ptr %633, null
  br i1 %634, label %696, label %635

635:                                              ; preds = %632
  %636 = call i64 @fwrite(ptr nonnull @.str.4, i64 36, i64 1, ptr nonnull %633)
  br label %696

637:                                              ; preds = %622
  %638 = call ptr @get_simple_loop_desc(ptr noundef nonnull %309) #15
  %639 = getelementptr inbounds %struct.niter_desc, ptr %638, i64 0, i32 2
  %640 = load i8, ptr %639, align 8, !tbaa !62
  %641 = icmp eq i8 %640, 0
  br i1 %641, label %655, label %642

642:                                              ; preds = %637
  %643 = getelementptr inbounds %struct.niter_desc, ptr %638, i64 0, i32 6
  %644 = load ptr, ptr %643, align 8, !tbaa !64
  %645 = icmp eq ptr %644, null
  br i1 %645, label %646, label %655

646:                                              ; preds = %642
  %647 = getelementptr inbounds %struct.niter_desc, ptr %638, i64 0, i32 3
  %648 = load i8, ptr %647, align 1, !tbaa !66
  %649 = icmp eq i8 %648, 0
  br i1 %649, label %655, label %650

650:                                              ; preds = %646
  %651 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %652 = icmp eq ptr %651, null
  br i1 %652, label %696, label %653

653:                                              ; preds = %650
  %654 = call i64 @fwrite(ptr nonnull @.str.26, i64 32, i64 1, ptr nonnull %651)
  br label %696

655:                                              ; preds = %646, %642, %637
  %656 = call i32 @num_loop_branches(ptr noundef nonnull %309) #15
  %657 = icmp ugt i32 %656, 1
  br i1 %657, label %658, label %663

658:                                              ; preds = %655
  %659 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %660 = icmp eq ptr %659, null
  br i1 %660, label %696, label %661

661:                                              ; preds = %658
  %662 = call i64 @fwrite(ptr nonnull @.str.33, i64 34, i64 1, ptr nonnull %659)
  br label %696

663:                                              ; preds = %655
  %664 = getelementptr inbounds %struct.loop, ptr %309, i64 0, i32 2
  %665 = load ptr, ptr %664, align 8, !tbaa !97
  %666 = getelementptr inbounds %struct.basic_block_def, ptr %665, i64 0, i32 8
  %667 = load i64, ptr %666, align 8, !tbaa !98
  %668 = icmp eq i64 %667, 0
  br i1 %668, label %685, label %669

669:                                              ; preds = %663
  %670 = call i32 @expected_loop_iterations(ptr noundef nonnull %309) #15
  %671 = add i32 %670, 1
  %672 = icmp ugt i32 %671, %630
  br i1 %672, label %673, label %683

673:                                              ; preds = %669
  %674 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %675 = icmp eq ptr %674, null
  br i1 %675, label %683, label %676

676:                                              ; preds = %673
  %677 = call i64 @fwrite(ptr nonnull @.str.34, i64 37, i64 1, ptr nonnull %674)
  %678 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %679 = zext i32 %671 to i64
  %680 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %678, ptr noundef nonnull @.str.13, i64 noundef %679)
  %681 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %682 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %681, ptr noundef nonnull @.str.14, i32 noundef %630)
  br label %683

683:                                              ; preds = %676, %673, %669
  %684 = phi i32 [ %630, %676 ], [ %630, %673 ], [ %671, %669 ]
  br i1 %672, label %696, label %690

685:                                              ; preds = %663
  %686 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %687 = icmp eq ptr %686, null
  br i1 %687, label %696, label %688

688:                                              ; preds = %685
  %689 = call i64 @fwrite(ptr nonnull @.str.35, i64 55, i64 1, ptr nonnull %686)
  br label %696

690:                                              ; preds = %683
  store i32 2, ptr %311, align 8, !tbaa !54
  %691 = getelementptr inbounds %struct.loop, ptr %309, i64 0, i32 4, i32 1
  store i32 %684, ptr %691, align 4, !tbaa !96
  %692 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %693 = icmp eq ptr %692, null
  br i1 %693, label %696, label %694

694:                                              ; preds = %690
  %695 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %692, ptr noundef nonnull @.str.36, i32 noundef %684)
  br label %696

696:                                              ; preds = %694, %690, %688, %685, %683, %661, %658, %653, %650, %635, %632, %613, %340, %337, %331, %328, %323, %320
  %697 = icmp eq ptr %310, null
  %698 = load i32, ptr %307, align 8, !tbaa !84
  %699 = load ptr, ptr @cfun, align 8
  %700 = getelementptr inbounds %struct.function, ptr %699, i64 0, i32 4
  br label %701

701:                                              ; preds = %713, %696
  %702 = phi i32 [ %714, %713 ], [ %698, %696 ]
  br i1 %697, label %710, label %703

703:                                              ; preds = %701
  %704 = load i32, ptr %310, align 4, !tbaa !86
  %705 = icmp ugt i32 %704, %702
  br i1 %705, label %706, label %710

706:                                              ; preds = %703
  %707 = zext i32 %702 to i64
  %708 = getelementptr inbounds %struct.VEC_int_base, ptr %310, i64 0, i32 2, i64 %707
  %709 = load i32, ptr %708, align 4, !tbaa !50
  br label %710

710:                                              ; preds = %706, %703, %701
  %711 = phi i32 [ %709, %706 ], [ 0, %703 ], [ 0, %701 ]
  %712 = phi i1 [ false, %706 ], [ true, %703 ], [ true, %701 ]
  br i1 %712, label %722, label %713

713:                                              ; preds = %710
  %714 = add i32 %702, 1
  %715 = load ptr, ptr %700, align 8, !tbaa !88
  %716 = getelementptr inbounds %struct.loops, ptr %715, i64 0, i32 1
  %717 = load ptr, ptr %716, align 8, !tbaa !89
  %718 = zext i32 %711 to i64
  %719 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %717, i64 0, i32 2, i64 %718
  %720 = load ptr, ptr %719, align 8, !tbaa !35
  %721 = icmp eq ptr %720, null
  br i1 %721, label %701, label %724, !llvm.loop !91

722:                                              ; preds = %710
  store i32 %702, ptr %307, align 8, !tbaa !84
  br i1 %697, label %725, label %723

723:                                              ; preds = %722
  call void @free(ptr noundef %310)
  br label %725

724:                                              ; preds = %713
  store i32 %714, ptr %307, align 8, !tbaa !84
  br label %725

725:                                              ; preds = %722, %723, %724
  %726 = phi ptr [ %310, %724 ], [ null, %723 ], [ null, %722 ]
  %727 = phi ptr [ %720, %724 ], [ null, %723 ], [ null, %722 ]
  %728 = icmp eq ptr %727, null
  br i1 %728, label %729, label %308, !llvm.loop !102

729:                                              ; preds = %725, %294
  %730 = phi ptr [ %298, %294 ], [ %726, %725 ]
  %731 = phi ptr [ %297, %294 ], [ %727, %725 ]
  store ptr %731, ptr %4, align 8, !tbaa !35
  store ptr %730, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call fastcc void @fel_init(ptr noundef nonnull %10, ptr noundef nonnull %9)
  %732 = load ptr, ptr %9, align 8, !tbaa !35
  %733 = icmp eq ptr %732, null
  br i1 %733, label %1576, label %734

734:                                              ; preds = %729
  %735 = getelementptr inbounds %struct.loop_iterator, ptr %10, i64 0, i32 1
  br label %736

736:                                              ; preds = %734, %1573
  %737 = phi ptr [ %732, %734 ], [ %1574, %1573 ]
  %738 = getelementptr inbounds %struct.loop, ptr %737, i64 0, i32 4
  %739 = load i32, ptr %738, align 8, !tbaa !54
  switch i32 %739, label %1539 [
    i32 1, label %740
    i32 2, label %741
    i32 3, label %793
    i32 4, label %1089
    i32 5, label %1497
    i32 0, label %1540
  ]

740:                                              ; preds = %736
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 178, ptr noundef nonnull @.str.1) #15
  br label %741

741:                                              ; preds = %736, %740
  %742 = getelementptr inbounds %struct.loop, ptr %737, i64 0, i32 4, i32 1
  %743 = load i32, ptr %742, align 4, !tbaa !96
  %744 = call ptr @get_simple_loop_desc(ptr noundef nonnull %737) #15
  %745 = load i32, ptr @flag_split_ivs_in_unroller, align 4, !tbaa !50
  %746 = icmp ne i32 %745, 0
  %747 = icmp ugt i32 %743, 1
  %748 = select i1 %746, i1 %747, i1 false
  br i1 %748, label %749, label %751

749:                                              ; preds = %741
  %750 = call fastcc ptr @analyze_insns_in_loop(ptr noundef nonnull %737)
  br label %751

751:                                              ; preds = %749, %741
  %752 = phi ptr [ %750, %749 ], [ null, %741 ]
  %753 = add i32 %743, 1
  %754 = call ptr @sbitmap_alloc(i32 noundef %753) #15
  call void @sbitmap_zero(ptr noundef %754) #15
  %755 = icmp eq ptr %752, null
  br i1 %755, label %763, label %756

756:                                              ; preds = %751
  %757 = load ptr, ptr @cfun, align 8, !tbaa !35
  %758 = getelementptr inbounds %struct.function, ptr %757, i64 0, i32 1
  %759 = load ptr, ptr %758, align 8, !tbaa !73
  %760 = getelementptr inbounds %struct.control_flow_graph, ptr %759, i64 0, i32 5
  %761 = load i32, ptr %760, align 8, !tbaa !75
  %762 = getelementptr inbounds %struct.opt_info, ptr %752, i64 0, i32 6
  store i32 %761, ptr %762, align 8, !tbaa !77
  br label %763

763:                                              ; preds = %756, %751
  %764 = phi i32 [ 1, %751 ], [ 3, %756 ]
  %765 = call ptr @loop_preheader_edge(ptr noundef nonnull %737) #15
  %766 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %737, ptr noundef %765, i32 noundef %743, ptr noundef %754, ptr noundef null, ptr noundef null, i32 noundef %764) #15
  %767 = icmp eq i8 %766, 0
  br i1 %767, label %768, label %769

768:                                              ; preds = %763
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1312, ptr noundef nonnull @.str.1) #15
  br label %769

769:                                              ; preds = %768, %763
  call void @free(ptr noundef %754)
  br i1 %755, label %771, label %770

770:                                              ; preds = %769
  call fastcc void @apply_opt_in_copies(ptr noundef nonnull %752, i32 noundef %743, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call fastcc void @free_opt_info(ptr noundef nonnull %752)
  br label %771

771:                                              ; preds = %770, %769
  %772 = getelementptr inbounds %struct.niter_desc, ptr %744, i64 0, i32 2
  %773 = load i8, ptr %772, align 8, !tbaa !62
  %774 = icmp eq i8 %773, 0
  br i1 %774, label %788, label %775

775:                                              ; preds = %771
  %776 = getelementptr inbounds %struct.niter_desc, ptr %744, i64 0, i32 3
  %777 = load i8, ptr %776, align 1, !tbaa !66
  %778 = icmp eq i8 %777, 0
  br i1 %778, label %787, label %779

779:                                              ; preds = %775
  %780 = zext i32 %743 to i64
  %781 = getelementptr inbounds %struct.niter_desc, ptr %744, i64 0, i32 4
  %782 = load i64, ptr %781, align 8, !tbaa !67
  %783 = sub i64 %782, %780
  store i64 %783, ptr %781, align 8, !tbaa !67
  %784 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %783) #15
  %785 = getelementptr inbounds %struct.niter_desc, ptr %744, i64 0, i32 11
  store ptr %784, ptr %785, align 8, !tbaa !103
  %786 = getelementptr inbounds %struct.niter_desc, ptr %744, i64 0, i32 7
  store ptr null, ptr %786, align 8, !tbaa !72
  br label %788

787:                                              ; preds = %775
  call void @free_simple_loop_desc(ptr noundef nonnull %737) #15
  br label %788

788:                                              ; preds = %787, %779, %771
  %789 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %790 = icmp eq ptr %789, null
  br i1 %790, label %1540, label %791

791:                                              ; preds = %788
  %792 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %789, ptr noundef nonnull @.str.42, i32 noundef %743)
  br label %1540

793:                                              ; preds = %736
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %794 = getelementptr inbounds %struct.loop, ptr %737, i64 0, i32 4, i32 1
  %795 = load i32, ptr %794, align 4, !tbaa !96
  %796 = call ptr @get_simple_loop_desc(ptr noundef nonnull %737) #15
  %797 = call fastcc zeroext i8 @loop_exit_at_end_p(ptr noundef nonnull %737), !range !94
  %798 = getelementptr inbounds %struct.niter_desc, ptr %796, i64 0, i32 4
  %799 = load i64, ptr %798, align 8, !tbaa !67
  %800 = add i32 %795, 1
  %801 = zext i32 %800 to i64
  %802 = icmp ugt i64 %799, %801
  br i1 %802, label %804, label %803

803:                                              ; preds = %793
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 656, ptr noundef nonnull @.str.1) #15
  br label %804

804:                                              ; preds = %803, %793
  %805 = urem i64 %799, %801
  %806 = trunc i64 %805 to i32
  %807 = call ptr @sbitmap_alloc(i32 noundef %800) #15
  call void @sbitmap_ones(ptr noundef %807) #15
  store ptr null, ptr %3, align 8, !tbaa !35
  %808 = load i32, ptr @flag_split_ivs_in_unroller, align 4, !tbaa !50
  %809 = icmp ne i32 %808, 0
  %810 = load i32, ptr @flag_variable_expansion_in_unroller, align 4
  %811 = icmp ne i32 %810, 0
  %812 = select i1 %809, i1 true, i1 %811
  br i1 %812, label %813, label %815

813:                                              ; preds = %804
  %814 = call fastcc ptr @analyze_insns_in_loop(ptr noundef nonnull %737)
  br label %815

815:                                              ; preds = %813, %804
  %816 = phi ptr [ %814, %813 ], [ null, %804 ]
  %817 = icmp eq i8 %797, 0
  %818 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %819 = icmp eq ptr %818, null
  br i1 %817, label %820, label %895

820:                                              ; preds = %815
  br i1 %819, label %823, label %821

821:                                              ; preds = %820
  %822 = call i64 @fwrite(ptr nonnull @.str.37, i64 35, i64 1, ptr nonnull %818)
  br label %823

823:                                              ; preds = %821, %820
  %824 = load ptr, ptr %807, align 8, !tbaa !69
  %825 = icmp eq ptr %824, null
  br i1 %825, label %834, label %826

826:                                              ; preds = %823
  %827 = getelementptr inbounds %struct.simple_bitmap_def, ptr %807, i64 0, i32 3, i64 0
  %828 = load i64, ptr %827, align 8, !tbaa !71
  %829 = and i64 %828, 1
  %830 = icmp eq i64 %829, 0
  br i1 %830, label %834, label %831

831:                                              ; preds = %826
  %832 = load i8, ptr %824, align 1, !tbaa !46
  %833 = add i8 %832, -1
  store i8 %833, ptr %824, align 1, !tbaa !46
  br label %834

834:                                              ; preds = %831, %826, %823
  %835 = getelementptr inbounds %struct.simple_bitmap_def, ptr %807, i64 0, i32 3, i64 0
  %836 = load i64, ptr %835, align 8, !tbaa !71
  %837 = and i64 %836, -2
  store i64 %837, ptr %835, align 8, !tbaa !71
  %838 = getelementptr inbounds %struct.niter_desc, ptr %796, i64 0, i32 7
  %839 = load ptr, ptr %838, align 8, !tbaa !72
  %840 = icmp eq ptr %839, null
  br i1 %840, label %853, label %841

841:                                              ; preds = %834
  %842 = load ptr, ptr %807, align 8, !tbaa !69
  %843 = icmp eq ptr %842, null
  %844 = and i64 %836, 2
  %845 = icmp eq i64 %844, 0
  %846 = select i1 %843, i1 true, i1 %845
  br i1 %846, label %850, label %847

847:                                              ; preds = %841
  %848 = load i8, ptr %842, align 1, !tbaa !46
  %849 = add i8 %848, -1
  store i8 %849, ptr %842, align 1, !tbaa !46
  br label %850

850:                                              ; preds = %847, %841
  %851 = load i64, ptr %835, align 8, !tbaa !71
  %852 = and i64 %851, -3
  store i64 %852, ptr %835, align 8, !tbaa !71
  br label %853

853:                                              ; preds = %850, %834
  %854 = icmp eq i32 %806, 0
  br i1 %854, label %882, label %855

855:                                              ; preds = %853
  %856 = icmp eq ptr %816, null
  br i1 %856, label %864, label %857

857:                                              ; preds = %855
  %858 = load ptr, ptr @cfun, align 8, !tbaa !35
  %859 = getelementptr inbounds %struct.function, ptr %858, i64 0, i32 1
  %860 = load ptr, ptr %859, align 8, !tbaa !73
  %861 = getelementptr inbounds %struct.control_flow_graph, ptr %860, i64 0, i32 5
  %862 = load i32, ptr %861, align 8, !tbaa !75
  %863 = getelementptr inbounds %struct.opt_info, ptr %816, i64 0, i32 6
  store i32 %862, ptr %863, align 8, !tbaa !77
  br label %864

864:                                              ; preds = %857, %855
  %865 = call ptr @loop_preheader_edge(ptr noundef nonnull %737) #15
  %866 = load ptr, ptr %796, align 8, !tbaa !79
  %867 = icmp ne ptr %816, null
  %868 = icmp ne i32 %806, 1
  %869 = and i1 %868, %867
  %870 = select i1 %869, i32 3, i32 1
  %871 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %737, ptr noundef %865, i32 noundef %806, ptr noundef nonnull %807, ptr noundef %866, ptr noundef nonnull %3, i32 noundef %870) #15
  %872 = icmp eq i8 %871, 0
  br i1 %872, label %873, label %874

873:                                              ; preds = %864
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 693, ptr noundef nonnull @.str.1) #15
  br label %874

874:                                              ; preds = %873, %864
  br i1 %869, label %875, label %876

875:                                              ; preds = %874
  call fastcc void @apply_opt_in_copies(ptr noundef nonnull %816, i32 noundef %806, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %876

876:                                              ; preds = %875, %874
  store ptr null, ptr %838, align 8, !tbaa !72
  %877 = load i64, ptr %798, align 8, !tbaa !67
  %878 = sub i64 %877, %805
  store i64 %878, ptr %798, align 8, !tbaa !67
  %879 = getelementptr inbounds %struct.niter_desc, ptr %796, i64 0, i32 5
  %880 = load i64, ptr %879, align 8, !tbaa !104
  %881 = sub i64 %880, %805
  store i64 %881, ptr %879, align 8, !tbaa !104
  br label %882

882:                                              ; preds = %876, %853
  %883 = load ptr, ptr %807, align 8, !tbaa !69
  %884 = icmp eq ptr %883, null
  br i1 %884, label %892, label %885

885:                                              ; preds = %882
  %886 = load i64, ptr %835, align 8, !tbaa !71
  %887 = and i64 %886, 2
  %888 = icmp eq i64 %887, 0
  br i1 %888, label %889, label %892

889:                                              ; preds = %885
  %890 = load i8, ptr %883, align 1, !tbaa !46
  %891 = add i8 %890, 1
  store i8 %891, ptr %883, align 1, !tbaa !46
  br label %892

892:                                              ; preds = %889, %885, %882
  %893 = load i64, ptr %835, align 8, !tbaa !71
  %894 = or i64 %893, 2
  store i64 %894, ptr %835, align 8, !tbaa !71
  br label %1013

895:                                              ; preds = %815
  br i1 %819, label %898, label %896

896:                                              ; preds = %895
  %897 = call i64 @fwrite(ptr nonnull @.str.38, i64 29, i64 1, ptr nonnull %818)
  br label %898

898:                                              ; preds = %896, %895
  %899 = icmp eq i32 %795, %806
  br i1 %899, label %900, label %904

900:                                              ; preds = %898
  %901 = getelementptr inbounds %struct.niter_desc, ptr %796, i64 0, i32 7
  %902 = load ptr, ptr %901, align 8, !tbaa !72
  %903 = icmp eq ptr %902, null
  br i1 %903, label %986, label %904

904:                                              ; preds = %900, %898
  %905 = load ptr, ptr %807, align 8, !tbaa !69
  %906 = icmp eq ptr %905, null
  br i1 %906, label %915, label %907

907:                                              ; preds = %904
  %908 = getelementptr inbounds %struct.simple_bitmap_def, ptr %807, i64 0, i32 3, i64 0
  %909 = load i64, ptr %908, align 8, !tbaa !71
  %910 = and i64 %909, 1
  %911 = icmp eq i64 %910, 0
  br i1 %911, label %915, label %912

912:                                              ; preds = %907
  %913 = load i8, ptr %905, align 1, !tbaa !46
  %914 = add i8 %913, -1
  store i8 %914, ptr %905, align 1, !tbaa !46
  br label %915

915:                                              ; preds = %912, %907, %904
  %916 = getelementptr inbounds %struct.simple_bitmap_def, ptr %807, i64 0, i32 3, i64 0
  %917 = load i64, ptr %916, align 8, !tbaa !71
  %918 = and i64 %917, -2
  store i64 %918, ptr %916, align 8, !tbaa !71
  %919 = getelementptr inbounds %struct.niter_desc, ptr %796, i64 0, i32 7
  %920 = load ptr, ptr %919, align 8, !tbaa !72
  %921 = icmp eq ptr %920, null
  br i1 %921, label %934, label %922

922:                                              ; preds = %915
  %923 = load ptr, ptr %807, align 8, !tbaa !69
  %924 = icmp eq ptr %923, null
  %925 = and i64 %917, 2
  %926 = icmp eq i64 %925, 0
  %927 = select i1 %924, i1 true, i1 %926
  br i1 %927, label %931, label %928

928:                                              ; preds = %922
  %929 = load i8, ptr %923, align 1, !tbaa !46
  %930 = add i8 %929, -1
  store i8 %930, ptr %923, align 1, !tbaa !46
  br label %931

931:                                              ; preds = %928, %922
  %932 = load i64, ptr %916, align 8, !tbaa !71
  %933 = and i64 %932, -3
  store i64 %933, ptr %916, align 8, !tbaa !71
  br label %934

934:                                              ; preds = %931, %915
  %935 = icmp eq ptr %816, null
  br i1 %935, label %943, label %936

936:                                              ; preds = %934
  %937 = load ptr, ptr @cfun, align 8, !tbaa !35
  %938 = getelementptr inbounds %struct.function, ptr %937, i64 0, i32 1
  %939 = load ptr, ptr %938, align 8, !tbaa !73
  %940 = getelementptr inbounds %struct.control_flow_graph, ptr %939, i64 0, i32 5
  %941 = load i32, ptr %940, align 8, !tbaa !75
  %942 = getelementptr inbounds %struct.opt_info, ptr %816, i64 0, i32 6
  store i32 %941, ptr %942, align 8, !tbaa !77
  br label %943

943:                                              ; preds = %936, %934
  %944 = call ptr @loop_preheader_edge(ptr noundef nonnull %737) #15
  %945 = add nuw i32 %806, 1
  %946 = load ptr, ptr %796, align 8, !tbaa !79
  %947 = icmp ne ptr %816, null
  %948 = icmp ne i32 %806, 0
  %949 = and i1 %948, %947
  %950 = select i1 %949, i32 3, i32 1
  %951 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %737, ptr noundef %944, i32 noundef %945, ptr noundef nonnull %807, ptr noundef %946, ptr noundef nonnull %3, i32 noundef %950) #15
  %952 = icmp eq i8 %951, 0
  br i1 %952, label %953, label %954

953:                                              ; preds = %943
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 732, ptr noundef nonnull @.str.1) #15
  br label %954

954:                                              ; preds = %953, %943
  br i1 %949, label %955, label %956

955:                                              ; preds = %954
  call fastcc void @apply_opt_in_copies(ptr noundef nonnull %816, i32 noundef %945, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %956

956:                                              ; preds = %955, %954
  %957 = zext i32 %945 to i64
  %958 = load i64, ptr %798, align 8, !tbaa !67
  %959 = sub i64 %958, %957
  store i64 %959, ptr %798, align 8, !tbaa !67
  %960 = getelementptr inbounds %struct.niter_desc, ptr %796, i64 0, i32 5
  %961 = load i64, ptr %960, align 8, !tbaa !104
  %962 = sub i64 %961, %957
  store i64 %962, ptr %960, align 8, !tbaa !104
  store ptr null, ptr %919, align 8, !tbaa !72
  %963 = load ptr, ptr %807, align 8, !tbaa !69
  %964 = icmp eq ptr %963, null
  br i1 %964, label %972, label %965

965:                                              ; preds = %956
  %966 = load i64, ptr %916, align 8, !tbaa !71
  %967 = and i64 %966, 1
  %968 = icmp eq i64 %967, 0
  br i1 %968, label %969, label %972

969:                                              ; preds = %965
  %970 = load i8, ptr %963, align 1, !tbaa !46
  %971 = add i8 %970, 1
  store i8 %971, ptr %963, align 1, !tbaa !46
  br label %972

972:                                              ; preds = %969, %965, %956
  %973 = load i64, ptr %916, align 8, !tbaa !71
  %974 = or i64 %973, 1
  store i64 %974, ptr %916, align 8, !tbaa !71
  %975 = load ptr, ptr %807, align 8, !tbaa !69
  %976 = icmp ne ptr %975, null
  %977 = and i64 %973, 2
  %978 = icmp eq i64 %977, 0
  %979 = select i1 %976, i1 %978, i1 false
  br i1 %979, label %980, label %983

980:                                              ; preds = %972
  %981 = load i8, ptr %975, align 1, !tbaa !46
  %982 = add i8 %981, 1
  store i8 %982, ptr %975, align 1, !tbaa !46
  br label %983

983:                                              ; preds = %980, %972
  %984 = load i64, ptr %916, align 8, !tbaa !71
  %985 = or i64 %984, 2
  store i64 %985, ptr %916, align 8, !tbaa !71
  br label %986

986:                                              ; preds = %983, %900
  %987 = load ptr, ptr %807, align 8, !tbaa !69
  %988 = icmp eq ptr %987, null
  br i1 %988, label %1003, label %989

989:                                              ; preds = %986
  %990 = lshr i32 %795, 6
  %991 = zext nneg i32 %990 to i64
  %992 = getelementptr inbounds %struct.simple_bitmap_def, ptr %807, i64 0, i32 3, i64 %991
  %993 = load i64, ptr %992, align 8, !tbaa !71
  %994 = and i32 %795, 63
  %995 = zext nneg i32 %994 to i64
  %996 = shl nuw i64 1, %995
  %997 = and i64 %993, %996
  %998 = icmp eq i64 %997, 0
  br i1 %998, label %1003, label %999

999:                                              ; preds = %989
  %1000 = getelementptr inbounds i8, ptr %987, i64 %991
  %1001 = load i8, ptr %1000, align 1, !tbaa !46
  %1002 = add i8 %1001, -1
  store i8 %1002, ptr %1000, align 1, !tbaa !46
  br label %1003

1003:                                             ; preds = %999, %989, %986
  %1004 = and i32 %795, 63
  %1005 = zext nneg i32 %1004 to i64
  %1006 = shl nuw i64 1, %1005
  %1007 = xor i64 %1006, -1
  %1008 = lshr i32 %795, 6
  %1009 = zext nneg i32 %1008 to i64
  %1010 = getelementptr inbounds %struct.simple_bitmap_def, ptr %807, i64 0, i32 3, i64 %1009
  %1011 = load i64, ptr %1010, align 8, !tbaa !71
  %1012 = and i64 %1011, %1007
  store i64 %1012, ptr %1010, align 8, !tbaa !71
  br label %1013

1013:                                             ; preds = %1003, %892
  %1014 = icmp eq ptr %816, null
  br i1 %1014, label %1022, label %1015

1015:                                             ; preds = %1013
  %1016 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1017 = getelementptr inbounds %struct.function, ptr %1016, i64 0, i32 1
  %1018 = load ptr, ptr %1017, align 8, !tbaa !73
  %1019 = getelementptr inbounds %struct.control_flow_graph, ptr %1018, i64 0, i32 5
  %1020 = load i32, ptr %1019, align 8, !tbaa !75
  %1021 = getelementptr inbounds %struct.opt_info, ptr %816, i64 0, i32 6
  store i32 %1020, ptr %1021, align 8, !tbaa !77
  br label %1022

1022:                                             ; preds = %1015, %1013
  %1023 = phi i32 [ 1, %1013 ], [ 3, %1015 ]
  %1024 = call ptr @loop_latch_edge(ptr noundef nonnull %737) #15
  %1025 = load ptr, ptr %796, align 8, !tbaa !79
  %1026 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %737, ptr noundef %1024, i32 noundef %795, ptr noundef %807, ptr noundef %1025, ptr noundef nonnull %3, i32 noundef %1023) #15
  %1027 = icmp eq i8 %1026, 0
  br i1 %1027, label %1028, label %1029

1028:                                             ; preds = %1022
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 759, ptr noundef nonnull @.str.1) #15
  br label %1029

1029:                                             ; preds = %1028, %1022
  br i1 %1014, label %1031, label %1030

1030:                                             ; preds = %1029
  call fastcc void @apply_opt_in_copies(ptr noundef nonnull %816, i32 noundef %795, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call fastcc void @free_opt_info(ptr noundef nonnull %816)
  br label %1031

1031:                                             ; preds = %1030, %1029
  call void @free(ptr noundef %807)
  br i1 %817, label %1055, label %1032

1032:                                             ; preds = %1031
  %1033 = getelementptr inbounds %struct.niter_desc, ptr %796, i64 0, i32 1
  %1034 = load ptr, ptr %1033, align 8, !tbaa !83
  %1035 = load ptr, ptr %1034, align 8, !tbaa !105
  %1036 = call ptr @get_bb_copy(ptr noundef %1035) #15
  %1037 = getelementptr inbounds %struct.basic_block_def, ptr %1036, i64 0, i32 1
  %1038 = load ptr, ptr %1037, align 8, !tbaa !107
  %1039 = getelementptr inbounds %struct.VEC_edge_base, ptr %1038, i64 0, i32 2, i64 0
  %1040 = load ptr, ptr %1039, align 8, !tbaa !35
  %1041 = getelementptr inbounds %struct.edge_def, ptr %1040, i64 0, i32 1
  %1042 = load ptr, ptr %1041, align 8, !tbaa !108
  %1043 = load ptr, ptr %796, align 8, !tbaa !79
  %1044 = getelementptr inbounds %struct.edge_def, ptr %1043, i64 0, i32 1
  %1045 = load ptr, ptr %1044, align 8, !tbaa !108
  %1046 = icmp eq ptr %1042, %1045
  br i1 %1046, label %1047, label %1049

1047:                                             ; preds = %1032
  store ptr %1040, ptr %796, align 8, !tbaa !79
  %1048 = getelementptr inbounds %struct.VEC_edge_base, ptr %1038, i64 0, i32 2, i64 1
  br label %1052

1049:                                             ; preds = %1032
  %1050 = getelementptr inbounds %struct.VEC_edge_base, ptr %1038, i64 0, i32 2, i64 1
  %1051 = load ptr, ptr %1050, align 8, !tbaa !35
  store ptr %1051, ptr %796, align 8, !tbaa !79
  br label %1052

1052:                                             ; preds = %1049, %1047
  %1053 = phi ptr [ %1039, %1049 ], [ %1048, %1047 ]
  %1054 = load ptr, ptr %1053, align 8, !tbaa !35
  store ptr %1054, ptr %1033, align 8, !tbaa !83
  br label %1055

1055:                                             ; preds = %1052, %1031
  %1056 = load i64, ptr %798, align 8, !tbaa !67
  %1057 = udiv i64 %1056, %801
  store i64 %1057, ptr %798, align 8, !tbaa !67
  %1058 = getelementptr inbounds %struct.niter_desc, ptr %796, i64 0, i32 5
  %1059 = load i64, ptr %1058, align 8, !tbaa !104
  %1060 = udiv i64 %1059, %801
  store i64 %1060, ptr %1058, align 8, !tbaa !104
  %1061 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1057) #15
  %1062 = getelementptr inbounds %struct.niter_desc, ptr %796, i64 0, i32 11
  store ptr %1061, ptr %1062, align 8, !tbaa !103
  br label %1063

1063:                                             ; preds = %1077, %1055
  %1064 = phi i32 [ 0, %1055 ], [ %1079, %1077 ]
  %1065 = load ptr, ptr %3, align 8
  %1066 = icmp eq ptr %1065, null
  br i1 %1066, label %1074, label %1067

1067:                                             ; preds = %1063
  %1068 = load i32, ptr %1065, align 8, !tbaa !80
  %1069 = icmp ugt i32 %1068, %1064
  br i1 %1069, label %1070, label %1074

1070:                                             ; preds = %1067
  %1071 = zext i32 %1064 to i64
  %1072 = getelementptr inbounds %struct.VEC_edge_base, ptr %1065, i64 0, i32 2, i64 %1071
  %1073 = load ptr, ptr %1072, align 8, !tbaa !35
  br label %1074

1074:                                             ; preds = %1070, %1067, %1063
  %1075 = phi ptr [ %1073, %1070 ], [ null, %1067 ], [ null, %1063 ]
  %1076 = phi i1 [ false, %1070 ], [ true, %1067 ], [ true, %1063 ]
  br i1 %1076, label %1080, label %1077

1077:                                             ; preds = %1074
  %1078 = call zeroext i8 @remove_path(ptr noundef %1075) #15
  %1079 = add i32 %1064, 1
  br label %1063, !llvm.loop !109

1080:                                             ; preds = %1074
  br i1 %1066, label %1082, label %1081

1081:                                             ; preds = %1080
  call void @free(ptr noundef %1065)
  br label %1082

1082:                                             ; preds = %1081, %1080
  store ptr null, ptr %3, align 8, !tbaa !35
  %1083 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1084 = icmp eq ptr %1083, null
  br i1 %1084, label %1088, label %1085

1085:                                             ; preds = %1082
  %1086 = call i32 @num_loop_insns(ptr noundef nonnull %737) #15
  %1087 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1083, ptr noundef nonnull @.str.39, i32 noundef %795, i32 noundef %1086)
  br label %1088

1088:                                             ; preds = %1082, %1085
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %1540

1089:                                             ; preds = %736
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %1090 = getelementptr inbounds %struct.loop, ptr %737, i64 0, i32 4, i32 1
  %1091 = load i32, ptr %1090, align 4, !tbaa !96
  %1092 = call ptr @get_simple_loop_desc(ptr noundef nonnull %737) #15
  %1093 = call fastcc zeroext i8 @loop_exit_at_end_p(ptr noundef nonnull %737), !range !94
  %1094 = load i32, ptr @flag_split_ivs_in_unroller, align 4, !tbaa !50
  %1095 = icmp ne i32 %1094, 0
  %1096 = load i32, ptr @flag_variable_expansion_in_unroller, align 4
  %1097 = icmp ne i32 %1096, 0
  %1098 = select i1 %1095, i1 true, i1 %1097
  br i1 %1098, label %1099, label %1101

1099:                                             ; preds = %1089
  %1100 = call fastcc ptr @analyze_insns_in_loop(ptr noundef nonnull %737)
  br label %1101

1101:                                             ; preds = %1099, %1089
  %1102 = phi ptr [ %1100, %1099 ], [ null, %1089 ]
  %1103 = call ptr @get_loop_body(ptr noundef nonnull %737) #15
  %1104 = getelementptr inbounds %struct.loop, ptr %737, i64 0, i32 6
  %1105 = load i32, ptr %1104, align 4, !tbaa !110
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1155, label %1107

1107:                                             ; preds = %1101, %1150
  %1108 = phi i64 [ %1151, %1150 ], [ 0, %1101 ]
  %1109 = phi ptr [ %1115, %1150 ], [ null, %1101 ]
  %1110 = getelementptr inbounds ptr, ptr %1103, i64 %1108
  %1111 = load ptr, ptr %1110, align 8, !tbaa !35
  %1112 = call ptr @get_dominated_by(i32 noundef 1, ptr noundef %1111) #15
  %1113 = icmp eq ptr %1112, null
  br label %1114

1114:                                             ; preds = %1145, %1107
  %1115 = phi ptr [ %1109, %1107 ], [ %1146, %1145 ]
  %1116 = phi i32 [ 0, %1107 ], [ %1147, %1145 ]
  br i1 %1113, label %1124, label %1117

1117:                                             ; preds = %1114
  %1118 = load i32, ptr %1112, align 8, !tbaa !111
  %1119 = icmp ugt i32 %1118, %1116
  br i1 %1119, label %1120, label %1124

1120:                                             ; preds = %1117
  %1121 = zext i32 %1116 to i64
  %1122 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1112, i64 0, i32 2, i64 %1121
  %1123 = load ptr, ptr %1122, align 8, !tbaa !35
  br label %1124

1124:                                             ; preds = %1120, %1117, %1114
  %1125 = phi ptr [ %1123, %1120 ], [ null, %1117 ], [ null, %1114 ]
  %1126 = phi i1 [ false, %1120 ], [ true, %1117 ], [ true, %1114 ]
  br i1 %1126, label %1148, label %1127

1127:                                             ; preds = %1124
  %1128 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %737, ptr noundef %1125) #15
  %1129 = icmp eq i8 %1128, 0
  br i1 %1129, label %1130, label %1145

1130:                                             ; preds = %1127
  %1131 = icmp eq ptr %1115, null
  br i1 %1131, label %1137, label %1132

1132:                                             ; preds = %1130
  %1133 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1115, i64 0, i32 1
  %1134 = load i32, ptr %1133, align 4, !tbaa !113
  %1135 = load i32, ptr %1115, align 8, !tbaa !111
  %1136 = icmp eq i32 %1134, %1135
  br i1 %1136, label %1137, label %1139

1137:                                             ; preds = %1132, %1130
  %1138 = call ptr @vec_heap_p_reserve(ptr noundef %1115, i32 noundef 1) #15
  br label %1139

1139:                                             ; preds = %1137, %1132
  %1140 = phi ptr [ %1138, %1137 ], [ %1115, %1132 ]
  %1141 = load i32, ptr %1140, align 8, !tbaa !111
  %1142 = add i32 %1141, 1
  store i32 %1142, ptr %1140, align 8, !tbaa !111
  %1143 = zext i32 %1141 to i64
  %1144 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1140, i64 0, i32 2, i64 %1143
  store ptr %1125, ptr %1144, align 8, !tbaa !35
  br label %1145

1145:                                             ; preds = %1139, %1127
  %1146 = phi ptr [ %1140, %1139 ], [ %1115, %1127 ]
  %1147 = add i32 %1116, 1
  br label %1114, !llvm.loop !114

1148:                                             ; preds = %1124
  br i1 %1113, label %1150, label %1149

1149:                                             ; preds = %1148
  call void @free(ptr noundef %1112)
  br label %1150

1150:                                             ; preds = %1149, %1148
  %1151 = add nuw nsw i64 %1108, 1
  %1152 = load i32, ptr %1104, align 4, !tbaa !110
  %1153 = zext i32 %1152 to i64
  %1154 = icmp ult i64 %1151, %1153
  br i1 %1154, label %1107, label %1155, !llvm.loop !115

1155:                                             ; preds = %1150, %1101
  %1156 = phi ptr [ null, %1101 ], [ %1115, %1150 ]
  call void @free(ptr noundef %1103)
  %1157 = icmp ne i8 %1093, 0
  %1158 = select i1 %1157, i32 %1091, i32 0
  %1159 = xor i1 %1157, true
  %1160 = sext i1 %1159 to i32
  %1161 = add i32 %1091, %1160
  call void @start_sequence() #15
  %1162 = getelementptr inbounds %struct.niter_desc, ptr %1092, i64 0, i32 10
  %1163 = load i32, ptr %1162, align 4, !tbaa !116
  %1164 = call ptr @gen_reg_rtx(i32 noundef %1163) #15
  %1165 = getelementptr inbounds %struct.niter_desc, ptr %1092, i64 0, i32 11
  %1166 = load ptr, ptr %1165, align 8, !tbaa !103
  %1167 = call ptr @copy_rtx(ptr noundef %1166) #15
  %1168 = call ptr @force_operand(ptr noundef %1167, ptr noundef %1164) #15
  %1169 = icmp eq ptr %1168, %1164
  br i1 %1169, label %1172, label %1170

1170:                                             ; preds = %1155
  %1171 = call ptr @emit_move_insn(ptr noundef %1164, ptr noundef %1168) #15
  br label %1172

1172:                                             ; preds = %1170, %1155
  %1173 = load i32, ptr %1162, align 4, !tbaa !116
  %1174 = zext i32 %1091 to i64
  %1175 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1174) #15
  %1176 = call ptr @expand_simple_binop(i32 noundef %1173, i32 noundef 61, ptr noundef %1164, ptr noundef %1175, ptr noundef null, i32 noundef 0, i32 noundef 3) #15
  %1177 = call ptr @get_insns() #15
  call void @end_sequence() #15
  call void @unshare_all_rtl_in_chain(ptr noundef %1177) #15
  %1178 = call ptr @loop_preheader_edge(ptr noundef nonnull %737) #15
  %1179 = icmp eq ptr %1177, null
  br i1 %1179, label %1187, label %1180

1180:                                             ; preds = %1172
  %1181 = call ptr @split_edge(ptr noundef %1178) #15
  %1182 = getelementptr inbounds %struct.basic_block_def, ptr %1181, i64 0, i32 7
  %1183 = load ptr, ptr %1182, align 8, !tbaa !46
  %1184 = getelementptr inbounds %struct.rtl_bb_info, ptr %1183, i64 0, i32 1
  %1185 = load ptr, ptr %1184, align 8, !tbaa !117
  %1186 = call ptr @emit_insn_after(ptr noundef nonnull %1177, ptr noundef %1185) #15
  br label %1187

1187:                                             ; preds = %1180, %1172
  store ptr null, ptr %2, align 8, !tbaa !35
  %1188 = add i32 %1091, 2
  %1189 = call ptr @sbitmap_alloc(i32 noundef %1188) #15
  call void @sbitmap_zero(ptr noundef %1189) #15
  br i1 %1157, label %1209, label %1190

1190:                                             ; preds = %1187
  %1191 = getelementptr inbounds %struct.niter_desc, ptr %1092, i64 0, i32 7
  %1192 = load ptr, ptr %1191, align 8, !tbaa !72
  %1193 = icmp eq ptr %1192, null
  br i1 %1193, label %1194, label %1209

1194:                                             ; preds = %1190
  %1195 = load ptr, ptr %1189, align 8, !tbaa !69
  %1196 = icmp eq ptr %1195, null
  br i1 %1196, label %1205, label %1197

1197:                                             ; preds = %1194
  %1198 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1189, i64 0, i32 3
  %1199 = load i64, ptr %1198, align 8, !tbaa !71
  %1200 = and i64 %1199, 2
  %1201 = icmp eq i64 %1200, 0
  br i1 %1201, label %1202, label %1205

1202:                                             ; preds = %1197
  %1203 = load i8, ptr %1195, align 1, !tbaa !46
  %1204 = add i8 %1203, 1
  store i8 %1204, ptr %1195, align 1, !tbaa !46
  br label %1205

1205:                                             ; preds = %1202, %1197, %1194
  %1206 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1189, i64 0, i32 3
  %1207 = load i64, ptr %1206, align 8, !tbaa !71
  %1208 = or i64 %1207, 2
  store i64 %1208, ptr %1206, align 8, !tbaa !71
  br label %1209

1209:                                             ; preds = %1205, %1190, %1187
  %1210 = call ptr @loop_preheader_edge(ptr noundef nonnull %737) #15
  %1211 = load ptr, ptr %1210, align 8, !tbaa !105
  %1212 = call ptr @loop_preheader_edge(ptr noundef nonnull %737) #15
  %1213 = load ptr, ptr %1092, align 8, !tbaa !79
  %1214 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %737, ptr noundef %1212, i32 noundef 1, ptr noundef %1189, ptr noundef %1213, ptr noundef nonnull %2, i32 noundef 1) #15
  %1215 = icmp eq i8 %1214, 0
  br i1 %1215, label %1216, label %1217

1216:                                             ; preds = %1209
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1057, ptr noundef nonnull @.str.1) #15
  br label %1217

1217:                                             ; preds = %1216, %1209
  %1218 = call ptr @loop_preheader_edge(ptr noundef nonnull %737) #15
  %1219 = call ptr @split_edge(ptr noundef %1218) #15
  %1220 = icmp eq i32 %1161, 0
  br i1 %1220, label %1318, label %1221

1221:                                             ; preds = %1217
  %1222 = add i32 %1161, -1
  %1223 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1189, i64 0, i32 3
  %1224 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1189, i64 0, i32 3
  %1225 = zext i32 %1222 to i64
  %1226 = zext nneg i8 %1093 to i64
  %1227 = zext i32 %1161 to i64
  br label %1228

1228:                                             ; preds = %1221, %1307
  %1229 = phi i64 [ 0, %1221 ], [ %1316, %1307 ]
  %1230 = phi ptr [ %1219, %1221 ], [ %1287, %1307 ]
  call void @sbitmap_zero(ptr noundef %1189) #15
  %1231 = icmp eq i64 %1229, %1225
  %1232 = and i1 %1157, %1231
  br i1 %1232, label %1246, label %1233

1233:                                             ; preds = %1228
  %1234 = load ptr, ptr %1189, align 8, !tbaa !69
  %1235 = icmp eq ptr %1234, null
  br i1 %1235, label %1243, label %1236

1236:                                             ; preds = %1233
  %1237 = load i64, ptr %1223, align 8, !tbaa !71
  %1238 = and i64 %1237, 2
  %1239 = icmp eq i64 %1238, 0
  br i1 %1239, label %1240, label %1243

1240:                                             ; preds = %1236
  %1241 = load i8, ptr %1234, align 1, !tbaa !46
  %1242 = add i8 %1241, 1
  store i8 %1242, ptr %1234, align 1, !tbaa !46
  br label %1243

1243:                                             ; preds = %1240, %1236, %1233
  %1244 = load i64, ptr %1224, align 8, !tbaa !71
  %1245 = or i64 %1244, 2
  store i64 %1245, ptr %1224, align 8, !tbaa !71
  br label %1246

1246:                                             ; preds = %1243, %1228
  %1247 = call ptr @loop_preheader_edge(ptr noundef nonnull %737) #15
  %1248 = load ptr, ptr %1092, align 8, !tbaa !79
  %1249 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %737, ptr noundef %1247, i32 noundef 1, ptr noundef %1189, ptr noundef %1248, ptr noundef nonnull %2, i32 noundef 1) #15
  %1250 = icmp eq i8 %1249, 0
  br i1 %1250, label %1251, label %1252

1251:                                             ; preds = %1246
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1072, ptr noundef nonnull @.str.1) #15
  br label %1252

1252:                                             ; preds = %1251, %1246
  %1253 = add nuw nsw i64 %1229, %1226
  %1254 = trunc i64 %1253 to i32
  %1255 = sub i32 %1161, %1254
  %1256 = trunc i64 %1229 to i32
  %1257 = add i32 %1256, 2
  %1258 = udiv i32 10000, %1257
  %1259 = call ptr @loop_preheader_edge(ptr noundef nonnull %737) #15
  %1260 = call ptr @split_edge(ptr noundef %1259) #15
  %1261 = call ptr @copy_rtx(ptr noundef %1176) #15
  %1262 = zext i32 %1255 to i64
  %1263 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1262) #15
  %1264 = call ptr @block_label(ptr noundef %1260) #15
  %1265 = call ptr @compare_and_jump_seq(ptr noundef %1261, ptr noundef %1263, i32 noundef 81, ptr noundef %1264, i32 noundef %1258, ptr noundef null) #15
  %1266 = icmp eq ptr %1265, null
  br i1 %1266, label %1267, label %1268

1267:                                             ; preds = %1252
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1085, ptr noundef nonnull @.str.1) #15
  br label %1268

1268:                                             ; preds = %1267, %1252
  %1269 = load ptr, ptr %1230, align 8, !tbaa !119
  %1270 = icmp eq ptr %1269, null
  br i1 %1270, label %1274, label %1271

1271:                                             ; preds = %1268
  %1272 = load i32, ptr %1269, align 8, !tbaa !80
  %1273 = icmp eq i32 %1272, 1
  br i1 %1273, label %1275, label %1274

1274:                                             ; preds = %1271, %1268
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 655, ptr noundef nonnull @.str.1) #15
  br label %1275

1275:                                             ; preds = %1274, %1271
  br i1 %1266, label %1286, label %1276

1276:                                             ; preds = %1275
  %1277 = load ptr, ptr %1230, align 8, !tbaa !119
  %1278 = getelementptr inbounds %struct.VEC_edge_base, ptr %1277, i64 0, i32 2, i64 0
  %1279 = load ptr, ptr %1278, align 8, !tbaa !35
  %1280 = call ptr @split_edge(ptr noundef %1279) #15
  %1281 = getelementptr inbounds %struct.basic_block_def, ptr %1280, i64 0, i32 7
  %1282 = load ptr, ptr %1281, align 8, !tbaa !46
  %1283 = getelementptr inbounds %struct.rtl_bb_info, ptr %1282, i64 0, i32 1
  %1284 = load ptr, ptr %1283, align 8, !tbaa !117
  %1285 = call ptr @emit_insn_after(ptr noundef nonnull %1265, ptr noundef %1284) #15
  br label %1286

1286:                                             ; preds = %1276, %1275
  %1287 = phi ptr [ %1280, %1276 ], [ null, %1275 ]
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %1260, ptr noundef %1287) #15
  %1288 = sub nuw nsw i32 10000, %1258
  %1289 = load ptr, ptr %1287, align 8, !tbaa !119
  %1290 = icmp eq ptr %1289, null
  br i1 %1290, label %1294, label %1291

1291:                                             ; preds = %1286
  %1292 = load i32, ptr %1289, align 8, !tbaa !80
  %1293 = icmp eq i32 %1292, 1
  br i1 %1293, label %1295, label %1294

1294:                                             ; preds = %1291, %1286
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 655, ptr noundef nonnull @.str.1) #15
  br label %1295

1295:                                             ; preds = %1294, %1291
  %1296 = load ptr, ptr %1287, align 8, !tbaa !119
  %1297 = getelementptr inbounds %struct.VEC_edge_base, ptr %1296, i64 0, i32 2, i64 0
  %1298 = load ptr, ptr %1297, align 8, !tbaa !35
  %1299 = getelementptr inbounds %struct.edge_def, ptr %1298, i64 0, i32 8
  store i32 %1288, ptr %1299, align 4, !tbaa !120
  %1300 = getelementptr inbounds %struct.basic_block_def, ptr %1287, i64 0, i32 1
  %1301 = load ptr, ptr %1300, align 8, !tbaa !107
  %1302 = icmp eq ptr %1301, null
  br i1 %1302, label %1306, label %1303

1303:                                             ; preds = %1295
  %1304 = load i32, ptr %1301, align 8, !tbaa !80
  %1305 = icmp eq i32 %1304, 1
  br i1 %1305, label %1307, label %1306

1306:                                             ; preds = %1303, %1295
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %1307

1307:                                             ; preds = %1306, %1303
  %1308 = load ptr, ptr %1300, align 8, !tbaa !107
  %1309 = getelementptr inbounds %struct.VEC_edge_base, ptr %1308, i64 0, i32 2, i64 0
  %1310 = load ptr, ptr %1309, align 8, !tbaa !35
  %1311 = getelementptr inbounds %struct.edge_def, ptr %1310, i64 0, i32 7
  %1312 = load i32, ptr %1311, align 8, !tbaa !121
  %1313 = and i32 %1312, 128
  %1314 = call ptr @make_edge(ptr noundef nonnull %1287, ptr noundef %1260, i32 noundef %1313) #15
  %1315 = getelementptr inbounds %struct.edge_def, ptr %1314, i64 0, i32 8
  store i32 %1258, ptr %1315, align 4, !tbaa !120
  %1316 = add nuw nsw i64 %1229, 1
  %1317 = icmp eq i64 %1316, %1227
  br i1 %1317, label %1318, label %1228, !llvm.loop !122

1318:                                             ; preds = %1307, %1217
  br i1 %1157, label %1378, label %1319

1319:                                             ; preds = %1318
  %1320 = add i32 %1091, 1
  %1321 = udiv i32 10000, %1320
  %1322 = call ptr @loop_preheader_edge(ptr noundef nonnull %737) #15
  %1323 = call ptr @split_edge(ptr noundef %1322) #15
  %1324 = call ptr @copy_rtx(ptr noundef %1176) #15
  %1325 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %1326 = call ptr @block_label(ptr noundef %1323) #15
  %1327 = call ptr @compare_and_jump_seq(ptr noundef %1324, ptr noundef %1325, i32 noundef 81, ptr noundef %1326, i32 noundef %1321, ptr noundef null) #15
  %1328 = icmp eq ptr %1327, null
  br i1 %1328, label %1329, label %1330

1329:                                             ; preds = %1319
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1104, ptr noundef nonnull @.str.1) #15
  br label %1330

1330:                                             ; preds = %1329, %1319
  %1331 = getelementptr inbounds %struct.basic_block_def, ptr %1211, i64 0, i32 1
  %1332 = load ptr, ptr %1331, align 8, !tbaa !107
  %1333 = icmp eq ptr %1332, null
  br i1 %1333, label %1337, label %1334

1334:                                             ; preds = %1330
  %1335 = load i32, ptr %1332, align 8, !tbaa !80
  %1336 = icmp eq i32 %1335, 1
  br i1 %1336, label %1338, label %1337

1337:                                             ; preds = %1334, %1330
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %1338

1338:                                             ; preds = %1337, %1334
  br i1 %1328, label %1349, label %1339

1339:                                             ; preds = %1338
  %1340 = load ptr, ptr %1331, align 8, !tbaa !107
  %1341 = getelementptr inbounds %struct.VEC_edge_base, ptr %1340, i64 0, i32 2, i64 0
  %1342 = load ptr, ptr %1341, align 8, !tbaa !35
  %1343 = call ptr @split_edge(ptr noundef %1342) #15
  %1344 = getelementptr inbounds %struct.basic_block_def, ptr %1343, i64 0, i32 7
  %1345 = load ptr, ptr %1344, align 8, !tbaa !46
  %1346 = getelementptr inbounds %struct.rtl_bb_info, ptr %1345, i64 0, i32 1
  %1347 = load ptr, ptr %1346, align 8, !tbaa !117
  %1348 = call ptr @emit_insn_after(ptr noundef nonnull %1327, ptr noundef %1347) #15
  br label %1349

1349:                                             ; preds = %1339, %1338
  %1350 = phi ptr [ %1343, %1339 ], [ null, %1338 ]
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %1323, ptr noundef %1350) #15
  %1351 = sub nuw nsw i32 10000, %1321
  %1352 = getelementptr inbounds %struct.basic_block_def, ptr %1350, i64 0, i32 1
  %1353 = load ptr, ptr %1352, align 8, !tbaa !107
  %1354 = icmp eq ptr %1353, null
  br i1 %1354, label %1358, label %1355

1355:                                             ; preds = %1349
  %1356 = load i32, ptr %1353, align 8, !tbaa !80
  %1357 = icmp eq i32 %1356, 1
  br i1 %1357, label %1359, label %1358

1358:                                             ; preds = %1355, %1349
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %1359

1359:                                             ; preds = %1358, %1355
  %1360 = load ptr, ptr %1352, align 8, !tbaa !107
  %1361 = getelementptr inbounds %struct.VEC_edge_base, ptr %1360, i64 0, i32 2, i64 0
  %1362 = load ptr, ptr %1361, align 8, !tbaa !35
  %1363 = getelementptr inbounds %struct.edge_def, ptr %1362, i64 0, i32 8
  store i32 %1351, ptr %1363, align 4, !tbaa !120
  %1364 = icmp eq ptr %1360, null
  br i1 %1364, label %1368, label %1365

1365:                                             ; preds = %1359
  %1366 = load i32, ptr %1360, align 8, !tbaa !80
  %1367 = icmp eq i32 %1366, 1
  br i1 %1367, label %1369, label %1368

1368:                                             ; preds = %1365, %1359
  call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %1369

1369:                                             ; preds = %1368, %1365
  %1370 = load ptr, ptr %1352, align 8, !tbaa !107
  %1371 = getelementptr inbounds %struct.VEC_edge_base, ptr %1370, i64 0, i32 2, i64 0
  %1372 = load ptr, ptr %1371, align 8, !tbaa !35
  %1373 = getelementptr inbounds %struct.edge_def, ptr %1372, i64 0, i32 7
  %1374 = load i32, ptr %1373, align 8, !tbaa !121
  %1375 = and i32 %1374, 128
  %1376 = call ptr @make_edge(ptr noundef %1350, ptr noundef %1323, i32 noundef %1375) #15
  %1377 = getelementptr inbounds %struct.edge_def, ptr %1376, i64 0, i32 8
  store i32 %1321, ptr %1377, align 4, !tbaa !120
  br label %1378

1378:                                             ; preds = %1369, %1318
  call void @iterate_fix_dominators(i32 noundef 1, ptr noundef %1156, i8 noundef zeroext 0) #15
  call void @sbitmap_ones(ptr noundef %1189) #15
  %1379 = load ptr, ptr %1189, align 8, !tbaa !69
  %1380 = icmp eq ptr %1379, null
  br i1 %1380, label %1395, label %1381

1381:                                             ; preds = %1378
  %1382 = lshr i32 %1158, 6
  %1383 = zext nneg i32 %1382 to i64
  %1384 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1189, i64 0, i32 3, i64 %1383
  %1385 = load i64, ptr %1384, align 8, !tbaa !71
  %1386 = and i32 %1158, 63
  %1387 = zext nneg i32 %1386 to i64
  %1388 = shl nuw i64 1, %1387
  %1389 = and i64 %1385, %1388
  %1390 = icmp eq i64 %1389, 0
  br i1 %1390, label %1395, label %1391

1391:                                             ; preds = %1381
  %1392 = getelementptr inbounds i8, ptr %1379, i64 %1383
  %1393 = load i8, ptr %1392, align 1, !tbaa !46
  %1394 = add i8 %1393, -1
  store i8 %1394, ptr %1392, align 1, !tbaa !46
  br label %1395

1395:                                             ; preds = %1391, %1381, %1378
  %1396 = and i32 %1158, 63
  %1397 = zext nneg i32 %1396 to i64
  %1398 = shl nuw i64 1, %1397
  %1399 = xor i64 %1398, -1
  %1400 = lshr i32 %1158, 6
  %1401 = zext nneg i32 %1400 to i64
  %1402 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1189, i64 0, i32 3, i64 %1401
  %1403 = load i64, ptr %1402, align 8, !tbaa !71
  %1404 = and i64 %1403, %1399
  store i64 %1404, ptr %1402, align 8, !tbaa !71
  %1405 = icmp eq ptr %1102, null
  br i1 %1405, label %1413, label %1406

1406:                                             ; preds = %1395
  %1407 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1408 = getelementptr inbounds %struct.function, ptr %1407, i64 0, i32 1
  %1409 = load ptr, ptr %1408, align 8, !tbaa !73
  %1410 = getelementptr inbounds %struct.control_flow_graph, ptr %1409, i64 0, i32 5
  %1411 = load i32, ptr %1410, align 8, !tbaa !75
  %1412 = getelementptr inbounds %struct.opt_info, ptr %1102, i64 0, i32 6
  store i32 %1411, ptr %1412, align 8, !tbaa !77
  br label %1413

1413:                                             ; preds = %1406, %1395
  %1414 = phi i32 [ 1, %1395 ], [ 3, %1406 ]
  %1415 = call ptr @loop_latch_edge(ptr noundef nonnull %737) #15
  %1416 = load ptr, ptr %1092, align 8, !tbaa !79
  %1417 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %737, ptr noundef %1415, i32 noundef %1091, ptr noundef nonnull %1189, ptr noundef %1416, ptr noundef nonnull %2, i32 noundef %1414) #15
  %1418 = icmp eq i8 %1417, 0
  br i1 %1418, label %1419, label %1420

1419:                                             ; preds = %1413
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1131, ptr noundef nonnull @.str.1) #15
  br label %1420

1420:                                             ; preds = %1419, %1413
  br i1 %1405, label %1422, label %1421

1421:                                             ; preds = %1420
  call fastcc void @apply_opt_in_copies(ptr noundef nonnull %1102, i32 noundef %1091, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call fastcc void @free_opt_info(ptr noundef nonnull %1102)
  br label %1422

1422:                                             ; preds = %1421, %1420
  call void @free(ptr noundef %1189)
  br i1 %1157, label %1423, label %1446

1423:                                             ; preds = %1422
  %1424 = getelementptr inbounds %struct.niter_desc, ptr %1092, i64 0, i32 1
  %1425 = load ptr, ptr %1424, align 8, !tbaa !83
  %1426 = load ptr, ptr %1425, align 8, !tbaa !105
  %1427 = call ptr @get_bb_copy(ptr noundef %1426) #15
  %1428 = getelementptr inbounds %struct.basic_block_def, ptr %1427, i64 0, i32 1
  %1429 = load ptr, ptr %1428, align 8, !tbaa !107
  %1430 = getelementptr inbounds %struct.VEC_edge_base, ptr %1429, i64 0, i32 2, i64 0
  %1431 = load ptr, ptr %1430, align 8, !tbaa !35
  %1432 = getelementptr inbounds %struct.edge_def, ptr %1431, i64 0, i32 1
  %1433 = load ptr, ptr %1432, align 8, !tbaa !108
  %1434 = load ptr, ptr %1092, align 8, !tbaa !79
  %1435 = getelementptr inbounds %struct.edge_def, ptr %1434, i64 0, i32 1
  %1436 = load ptr, ptr %1435, align 8, !tbaa !108
  %1437 = icmp eq ptr %1433, %1436
  br i1 %1437, label %1438, label %1440

1438:                                             ; preds = %1423
  store ptr %1431, ptr %1092, align 8, !tbaa !79
  %1439 = getelementptr inbounds %struct.VEC_edge_base, ptr %1429, i64 0, i32 2, i64 1
  br label %1443

1440:                                             ; preds = %1423
  %1441 = getelementptr inbounds %struct.VEC_edge_base, ptr %1429, i64 0, i32 2, i64 1
  %1442 = load ptr, ptr %1441, align 8, !tbaa !35
  store ptr %1442, ptr %1092, align 8, !tbaa !79
  br label %1443

1443:                                             ; preds = %1440, %1438
  %1444 = phi ptr [ %1430, %1440 ], [ %1439, %1438 ]
  %1445 = load ptr, ptr %1444, align 8, !tbaa !35
  store ptr %1445, ptr %1424, align 8, !tbaa !83
  br label %1446

1446:                                             ; preds = %1443, %1422
  br label %1447

1447:                                             ; preds = %1446, %1461
  %1448 = phi i32 [ %1463, %1461 ], [ 0, %1446 ]
  %1449 = load ptr, ptr %2, align 8
  %1450 = icmp eq ptr %1449, null
  br i1 %1450, label %1458, label %1451

1451:                                             ; preds = %1447
  %1452 = load i32, ptr %1449, align 8, !tbaa !80
  %1453 = icmp ugt i32 %1452, %1448
  br i1 %1453, label %1454, label %1458

1454:                                             ; preds = %1451
  %1455 = zext i32 %1448 to i64
  %1456 = getelementptr inbounds %struct.VEC_edge_base, ptr %1449, i64 0, i32 2, i64 %1455
  %1457 = load ptr, ptr %1456, align 8, !tbaa !35
  br label %1458

1458:                                             ; preds = %1454, %1451, %1447
  %1459 = phi ptr [ %1457, %1454 ], [ null, %1451 ], [ null, %1447 ]
  %1460 = phi i1 [ false, %1454 ], [ true, %1451 ], [ true, %1447 ]
  br i1 %1460, label %1464, label %1461

1461:                                             ; preds = %1458
  %1462 = call zeroext i8 @remove_path(ptr noundef %1459) #15
  %1463 = add i32 %1448, 1
  br label %1447, !llvm.loop !123

1464:                                             ; preds = %1458
  br i1 %1450, label %1466, label %1465

1465:                                             ; preds = %1464
  call void @free(ptr noundef %1449)
  br label %1466

1466:                                             ; preds = %1465, %1464
  store ptr null, ptr %2, align 8, !tbaa !35
  %1467 = getelementptr inbounds %struct.niter_desc, ptr %1092, i64 0, i32 3
  %1468 = load i8, ptr %1467, align 1, !tbaa !66
  %1469 = icmp eq i8 %1468, 0
  br i1 %1469, label %1471, label %1470

1470:                                             ; preds = %1466
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1168, ptr noundef nonnull @.str.1) #15
  br label %1471

1471:                                             ; preds = %1470, %1466
  %1472 = load i32, ptr %1162, align 4, !tbaa !116
  %1473 = add i32 %1091, 1
  %1474 = zext i32 %1473 to i64
  %1475 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1474) #15
  %1476 = call ptr @simplify_gen_binary(i32 noundef 59, i32 noundef %1472, ptr noundef %1164, ptr noundef %1475) #15
  store ptr %1476, ptr %1165, align 8, !tbaa !103
  %1477 = getelementptr inbounds %struct.niter_desc, ptr %1092, i64 0, i32 5
  %1478 = load i64, ptr %1477, align 8, !tbaa !104
  %1479 = udiv i64 %1478, %1474
  store i64 %1479, ptr %1477, align 8, !tbaa !104
  br i1 %1157, label %1480, label %1487

1480:                                             ; preds = %1471
  %1481 = load i32, ptr %1162, align 4, !tbaa !116
  %1482 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !35
  %1483 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1481, ptr noundef %1476, ptr noundef %1482) #15
  store ptr %1483, ptr %1165, align 8, !tbaa !103
  %1484 = getelementptr inbounds %struct.niter_desc, ptr %1092, i64 0, i32 7
  store ptr null, ptr %1484, align 8, !tbaa !72
  %1485 = load i64, ptr %1477, align 8, !tbaa !104
  %1486 = add i64 %1485, -1
  store i64 %1486, ptr %1477, align 8, !tbaa !104
  br label %1487

1487:                                             ; preds = %1480, %1471
  %1488 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1489 = icmp eq ptr %1488, null
  br i1 %1489, label %1493, label %1490

1490:                                             ; preds = %1487
  %1491 = call i32 @num_loop_insns(ptr noundef nonnull %737) #15
  %1492 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1488, ptr noundef nonnull @.str.40, i32 noundef %1091, i32 noundef %1491)
  br label %1493

1493:                                             ; preds = %1490, %1487
  %1494 = icmp eq ptr %1156, null
  br i1 %1494, label %1496, label %1495

1495:                                             ; preds = %1493
  call void @free(ptr noundef %1156)
  br label %1496

1496:                                             ; preds = %1493, %1495
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  br label %1540

1497:                                             ; preds = %736
  %1498 = getelementptr inbounds %struct.loop, ptr %737, i64 0, i32 4, i32 1
  %1499 = load i32, ptr %1498, align 4, !tbaa !96
  %1500 = call ptr @get_simple_loop_desc(ptr noundef nonnull %737) #15
  %1501 = load i32, ptr @flag_split_ivs_in_unroller, align 4, !tbaa !50
  %1502 = icmp ne i32 %1501, 0
  %1503 = load i32, ptr @flag_variable_expansion_in_unroller, align 4
  %1504 = icmp ne i32 %1503, 0
  %1505 = select i1 %1502, i1 true, i1 %1504
  br i1 %1505, label %1506, label %1508

1506:                                             ; preds = %1497
  %1507 = call fastcc ptr @analyze_insns_in_loop(ptr noundef nonnull %737)
  br label %1508

1508:                                             ; preds = %1506, %1497
  %1509 = phi ptr [ %1507, %1506 ], [ null, %1497 ]
  %1510 = add i32 %1499, 1
  %1511 = call ptr @sbitmap_alloc(i32 noundef %1510) #15
  call void @sbitmap_zero(ptr noundef %1511) #15
  %1512 = icmp eq ptr %1509, null
  br i1 %1512, label %1520, label %1513

1513:                                             ; preds = %1508
  %1514 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1515 = getelementptr inbounds %struct.function, ptr %1514, i64 0, i32 1
  %1516 = load ptr, ptr %1515, align 8, !tbaa !73
  %1517 = getelementptr inbounds %struct.control_flow_graph, ptr %1516, i64 0, i32 5
  %1518 = load i32, ptr %1517, align 8, !tbaa !75
  %1519 = getelementptr inbounds %struct.opt_info, ptr %1509, i64 0, i32 6
  store i32 %1518, ptr %1519, align 8, !tbaa !77
  br label %1520

1520:                                             ; preds = %1513, %1508
  %1521 = phi i32 [ 1, %1508 ], [ 3, %1513 ]
  %1522 = call ptr @loop_latch_edge(ptr noundef nonnull %737) #15
  %1523 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %737, ptr noundef %1522, i32 noundef %1499, ptr noundef %1511, ptr noundef null, ptr noundef null, i32 noundef %1521) #15
  %1524 = icmp eq i8 %1523, 0
  br i1 %1524, label %1525, label %1526

1525:                                             ; preds = %1520
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1463, ptr noundef nonnull @.str.1) #15
  br label %1526

1526:                                             ; preds = %1525, %1520
  br i1 %1512, label %1528, label %1527

1527:                                             ; preds = %1526
  call fastcc void @apply_opt_in_copies(ptr noundef nonnull %1509, i32 noundef %1499, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call fastcc void @free_opt_info(ptr noundef nonnull %1509)
  br label %1528

1528:                                             ; preds = %1527, %1526
  call void @free(ptr noundef %1511)
  %1529 = getelementptr inbounds %struct.niter_desc, ptr %1500, i64 0, i32 2
  %1530 = load i8, ptr %1529, align 8, !tbaa !62
  %1531 = icmp eq i8 %1530, 0
  br i1 %1531, label %1533, label %1532

1532:                                             ; preds = %1528
  store i8 0, ptr %1529, align 8, !tbaa !62
  br label %1533

1533:                                             ; preds = %1532, %1528
  %1534 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1535 = icmp eq ptr %1534, null
  br i1 %1535, label %1540, label %1536

1536:                                             ; preds = %1533
  %1537 = call i32 @num_loop_insns(ptr noundef nonnull %737) #15
  %1538 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1534, ptr noundef nonnull @.str.43, i32 noundef %1499, i32 noundef %1537)
  br label %1540

1539:                                             ; preds = %736
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #15
  br label %1540

1540:                                             ; preds = %788, %1536, %1533, %791, %736, %1539, %1496, %1088
  %1541 = load ptr, ptr %10, align 8, !tbaa !35
  %1542 = icmp eq ptr %1541, null
  %1543 = load i32, ptr %735, align 8, !tbaa !84
  %1544 = load ptr, ptr %9, align 8, !tbaa !35
  %1545 = load ptr, ptr @cfun, align 8
  %1546 = getelementptr inbounds %struct.function, ptr %1545, i64 0, i32 4
  br label %1547

1547:                                             ; preds = %1560, %1540
  %1548 = phi ptr [ %1567, %1560 ], [ %1544, %1540 ]
  %1549 = phi i32 [ %1561, %1560 ], [ %1543, %1540 ]
  br i1 %1542, label %1557, label %1550

1550:                                             ; preds = %1547
  %1551 = load i32, ptr %1541, align 4, !tbaa !86
  %1552 = icmp ugt i32 %1551, %1549
  br i1 %1552, label %1553, label %1557

1553:                                             ; preds = %1550
  %1554 = zext i32 %1549 to i64
  %1555 = getelementptr inbounds %struct.VEC_int_base, ptr %1541, i64 0, i32 2, i64 %1554
  %1556 = load i32, ptr %1555, align 4, !tbaa !50
  br label %1557

1557:                                             ; preds = %1553, %1550, %1547
  %1558 = phi i32 [ %1556, %1553 ], [ 0, %1550 ], [ 0, %1547 ]
  %1559 = phi i1 [ false, %1553 ], [ true, %1550 ], [ true, %1547 ]
  br i1 %1559, label %1569, label %1560

1560:                                             ; preds = %1557
  %1561 = add i32 %1549, 1
  %1562 = load ptr, ptr %1546, align 8, !tbaa !88
  %1563 = getelementptr inbounds %struct.loops, ptr %1562, i64 0, i32 1
  %1564 = load ptr, ptr %1563, align 8, !tbaa !89
  %1565 = zext i32 %1558 to i64
  %1566 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1564, i64 0, i32 2, i64 %1565
  %1567 = load ptr, ptr %1566, align 8, !tbaa !35
  %1568 = icmp eq ptr %1567, null
  br i1 %1568, label %1547, label %1572, !llvm.loop !91

1569:                                             ; preds = %1557
  store i32 %1549, ptr %735, align 8, !tbaa !84
  store ptr %1548, ptr %9, align 8, !tbaa !35
  br i1 %1542, label %1571, label %1570

1570:                                             ; preds = %1569
  call void @free(ptr noundef %1541)
  br label %1571

1571:                                             ; preds = %1570, %1569
  store ptr null, ptr %10, align 8, !tbaa !35
  br label %1573

1572:                                             ; preds = %1560
  store i32 %1561, ptr %735, align 8, !tbaa !84
  br label %1573

1573:                                             ; preds = %1572, %1571
  %1574 = phi ptr [ %1567, %1572 ], [ null, %1571 ]
  store ptr %1574, ptr %9, align 8, !tbaa !35
  %1575 = icmp eq ptr %1574, null
  br i1 %1575, label %1576, label %736, !llvm.loop !124

1576:                                             ; preds = %1573, %729
  call void @iv_analysis_done() #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !84
  %4 = load ptr, ptr @cfun, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp eq ptr %6, null
  br i1 %7, label %104, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.loops, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %10, align 8, !tbaa !125
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  %16 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %15, i64 noundef 8, i64 noundef 4) #15
  store ptr %16, ptr %0, align 8, !tbaa !127
  %17 = load ptr, ptr @cfun, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  %20 = getelementptr inbounds %struct.loops, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !128
  br label %22

22:                                               ; preds = %22, %14
  %23 = phi ptr [ %21, %14 ], [ %25, %22 ]
  %24 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !68
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !llvm.loop !129

27:                                               ; preds = %22, %75
  %28 = phi ptr [ %76, %75 ], [ %23, %22 ]
  %29 = load i32, ptr %28, align 8, !tbaa !58
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, ptr %16, align 4, !tbaa !86
  %33 = add i32 %32, 1
  store i32 %33, ptr %16, align 4, !tbaa !86
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds %struct.VEC_int_base, ptr %16, i64 0, i32 2, i64 %34
  store i32 %29, ptr %35, align 4, !tbaa !50
  br label %36

36:                                               ; preds = %31, %27
  %37 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !130
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %43, %40 ], [ %38, %36 ]
  %42 = getelementptr inbounds %struct.loop, ptr %41, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !68
  %44 = icmp eq ptr %43, null
  br i1 %44, label %75, label %40, !llvm.loop !131

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !132
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %47, align 8, !tbaa !125
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i32 [ %50, %49 ], [ 0, %45 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = add i32 %52, -1
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %47, i64 0, i32 2, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  br label %59

59:                                               ; preds = %51, %54
  %60 = phi ptr [ %58, %54 ], [ null, %51 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, ptr %3, align 8, !tbaa !84
  br label %77

64:                                               ; preds = %59
  br i1 %48, label %67, label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %47, align 8, !tbaa !125
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ %66, %65 ], [ 0, %64 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = add i32 %68, -1
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %47, i64 0, i32 2, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !35
  br label %75

75:                                               ; preds = %40, %70, %67
  %76 = phi ptr [ %74, %70 ], [ null, %67 ], [ %41, %40 ]
  br label %27, !llvm.loop !133

77:                                               ; preds = %62, %91
  %78 = phi i32 [ %63, %62 ], [ %92, %91 ]
  %79 = load ptr, ptr %0, align 8, !tbaa !35
  %80 = icmp eq ptr %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  %82 = load i32, ptr %79, align 4, !tbaa !86
  %83 = icmp ugt i32 %82, %78
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = zext i32 %78 to i64
  %86 = getelementptr inbounds %struct.VEC_int_base, ptr %79, i64 0, i32 2, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !50
  br label %88

88:                                               ; preds = %84, %81, %77
  %89 = phi i32 [ %87, %84 ], [ 0, %81 ], [ 0, %77 ]
  %90 = phi i1 [ false, %84 ], [ true, %81 ], [ true, %77 ]
  br i1 %90, label %102, label %91

91:                                               ; preds = %88
  %92 = add i32 %78, 1
  store i32 %92, ptr %3, align 8, !tbaa !84
  %93 = load ptr, ptr @cfun, align 8, !tbaa !35
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !88
  %96 = getelementptr inbounds %struct.loops, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !89
  %98 = zext i32 %89 to i64
  %99 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %97, i64 0, i32 2, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !35
  store ptr %100, ptr %1, align 8, !tbaa !35
  %101 = icmp eq ptr %100, null
  br i1 %101, label %77, label %105, !llvm.loop !91

102:                                              ; preds = %88
  br i1 %80, label %104, label %103

103:                                              ; preds = %102
  tail call void @free(ptr noundef %79)
  br label %104

104:                                              ; preds = %102, %103, %2
  store ptr null, ptr %0, align 8, !tbaa !35
  store ptr null, ptr %1, align 8, !tbaa !35
  br label %105

105:                                              ; preds = %91, %104
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @iv_analysis_done() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @split_edge_and_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @split_edge(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  %10 = tail call ptr @emit_insn_after(ptr noundef nonnull %1, ptr noundef %9) #15
  br label %11

11:                                               ; preds = %2, %4
  %12 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %12
}

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #10

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare i32 @num_loop_insns(ptr noundef) local_unnamed_addr #3

declare ptr @get_simple_loop_desc(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_loop_for_size_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_duplicate_loop_p(ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @analyze_insns_in_loop(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca %struct.rtx_iv, align 8
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #15
  %4 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #15
  tail call void @iv_analysis_loop_init(ptr noundef %0) #15
  %5 = tail call ptr @get_loop_body(ptr noundef %0) #15
  %6 = load i32, ptr @flag_split_ivs_in_unroller, align 4, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !110
  %11 = mul i32 %10, 5
  %12 = zext i32 %11 to i64
  %13 = tail call ptr @htab_create(i64 noundef %12, ptr noundef nonnull @si_info_hash, ptr noundef nonnull @si_info_eq, ptr noundef nonnull @free) #15
  store ptr %13, ptr %3, align 8, !tbaa !134
  %14 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 1
  store ptr null, ptr %14, align 8, !tbaa !135
  %15 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !136
  br label %16

16:                                               ; preds = %8, %1
  %17 = tail call ptr @loop_preheader_edge(ptr noundef %0) #15
  %18 = load ptr, ptr %17, align 8, !tbaa !105
  %19 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 8
  store ptr %18, ptr %19, align 8, !tbaa !137
  %20 = icmp eq ptr %4, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %4, align 8, !tbaa !80
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.VEC_edge_base, ptr %4, i64 0, i32 2, i64 0
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !121
  %29 = and i32 %28, 14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = tail call ptr @split_edge(ptr noundef %26) #15
  %33 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 7
  store ptr %32, ptr %33, align 8, !tbaa !138
  br label %34

34:                                               ; preds = %16, %24, %31, %21
  %35 = phi i1 [ false, %24 ], [ true, %31 ], [ false, %21 ], [ false, %16 ]
  %36 = load i32, ptr @flag_variable_expansion_in_unroller, align 4, !tbaa !50
  %37 = icmp ne i32 %36, 0
  %38 = and i1 %35, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %41 = load i32, ptr %40, align 4, !tbaa !110
  %42 = mul i32 %41, 5
  %43 = zext i32 %42 to i64
  %44 = tail call ptr @htab_create(i64 noundef %43, ptr noundef nonnull @ve_info_hash, ptr noundef nonnull @ve_info_eq, ptr noundef nonnull @free) #15
  %45 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 3
  store ptr %44, ptr %45, align 8, !tbaa !139
  %46 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 4
  store ptr null, ptr %46, align 8, !tbaa !140
  %47 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 5
  store ptr %46, ptr %47, align 8, !tbaa !141
  br label %48

48:                                               ; preds = %39, %34
  %49 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %50 = load i32, ptr %49, align 4, !tbaa !110
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %384, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %54 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 1
  %55 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 6
  %56 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 5
  %57 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 2
  %58 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 3
  %59 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 5
  br label %60

60:                                               ; preds = %52, %377
  %61 = phi i64 [ 0, %52 ], [ %380, %377 ]
  %62 = phi ptr [ null, %52 ], [ %379, %377 ]
  %63 = phi ptr [ null, %52 ], [ %378, %377 ]
  %64 = getelementptr inbounds ptr, ptr %5, i64 %61
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  %66 = load ptr, ptr %53, align 8, !tbaa !142
  %67 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %66, ptr noundef %65) #15
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %377, label %69

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = icmp eq ptr %72, null
  br i1 %73, label %377, label %74

74:                                               ; preds = %69, %371
  %75 = phi ptr [ %375, %371 ], [ %72, %69 ]
  %76 = phi ptr [ %373, %371 ], [ %62, %69 ]
  %77 = phi ptr [ %372, %371 ], [ %63, %69 ]
  %78 = load ptr, ptr %70, align 8, !tbaa !46
  %79 = getelementptr inbounds %struct.rtl_bb_info, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !117
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 0, i64 2
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  %83 = icmp eq ptr %75, %82
  br i1 %83, label %377, label %84

84:                                               ; preds = %74
  %85 = load i32, ptr %75, align 8
  %86 = and i32 %85, 65535
  %87 = add nsw i32 %86, -7
  %88 = icmp ult i32 %87, 4
  br i1 %88, label %89, label %371

89:                                               ; preds = %84
  %90 = load ptr, ptr %3, align 8, !tbaa !134
  %91 = icmp eq ptr %90, null
  br i1 %91, label %138, label %92

92:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  %93 = load i32, ptr %75, align 8
  %94 = and i32 %93, 65535
  %95 = add nsw i32 %94, -7
  %96 = icmp ult i32 %95, 4
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 23
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = call ptr @single_set_2(ptr noundef nonnull %75, ptr noundef nonnull %99) #15
  br label %105

105:                                              ; preds = %103, %97, %92
  %106 = phi ptr [ %104, %103 ], [ null, %92 ], [ %99, %97 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %136, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  %111 = load i32, ptr %110, align 8
  %112 = and i32 %111, 65535
  %113 = icmp eq i32 %112, 37
  br i1 %113, label %114, label %136

114:                                              ; preds = %108
  %115 = call zeroext i8 @biv_p(ptr noundef nonnull %75, ptr noundef nonnull %110) #15
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %136, label %117

117:                                              ; preds = %114
  %118 = call zeroext i8 @iv_analyze_result(ptr noundef nonnull %75, ptr noundef nonnull %110, ptr noundef nonnull %2) #15
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr %54, align 8, !tbaa !143
  %122 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %123 = icmp eq ptr %121, %122
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load i32, ptr %55, align 4, !tbaa !145
  %126 = load i32, ptr %56, align 8, !tbaa !146
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = call ptr @xmalloc(i64 noundef 48) #15
  store ptr %75, ptr %129, align 8, !tbaa !147
  %130 = getelementptr inbounds %struct.iv_to_split, ptr %129, i64 0, i32 1
  store ptr null, ptr %130, align 8, !tbaa !149
  %131 = load ptr, ptr %54, align 8, !tbaa !143
  %132 = getelementptr inbounds %struct.iv_to_split, ptr %129, i64 0, i32 2
  store ptr %131, ptr %132, align 8, !tbaa !150
  %133 = getelementptr inbounds %struct.iv_to_split, ptr %129, i64 0, i32 3
  store ptr null, ptr %133, align 8, !tbaa !151
  %134 = getelementptr inbounds %struct.iv_to_split, ptr %129, i64 0, i32 4
  store i32 1, ptr %134, align 8, !tbaa !152
  %135 = getelementptr inbounds %struct.iv_to_split, ptr %129, i64 0, i32 5
  store i32 1, ptr %135, align 4, !tbaa !50
  br label %136

136:                                              ; preds = %105, %108, %114, %117, %120, %124, %128
  %137 = phi ptr [ %129, %128 ], [ null, %105 ], [ null, %108 ], [ null, %114 ], [ null, %117 ], [ null, %124 ], [ null, %120 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  br label %138

138:                                              ; preds = %136, %89
  %139 = phi ptr [ %137, %136 ], [ %76, %89 ]
  %140 = icmp eq ptr %139, null
  br i1 %140, label %150, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr %3, align 8, !tbaa !134
  %143 = call ptr @htab_find_slot(ptr noundef %142, ptr noundef nonnull %139, i32 noundef 1) #15
  %144 = load ptr, ptr %143, align 8, !tbaa !35
  %145 = icmp eq ptr %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1859, ptr noundef nonnull @.str.1) #15
  br label %147

147:                                              ; preds = %141, %146
  store ptr %139, ptr %143, align 8, !tbaa !35
  %148 = load ptr, ptr %57, align 8, !tbaa !136
  store ptr %139, ptr %148, align 8, !tbaa !35
  %149 = getelementptr inbounds %struct.iv_to_split, ptr %139, i64 0, i32 3
  store ptr %149, ptr %57, align 8, !tbaa !136
  br label %371

150:                                              ; preds = %138
  %151 = load ptr, ptr %58, align 8, !tbaa !139
  %152 = icmp eq ptr %151, null
  br i1 %152, label %359, label %153

153:                                              ; preds = %150
  %154 = load i32, ptr %75, align 8
  %155 = and i32 %154, 65535
  %156 = add nsw i32 %155, -7
  %157 = icmp ult i32 %156, 4
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 1
  %160 = load ptr, ptr %159, align 8, !tbaa !46
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 65535
  %163 = icmp eq i32 %162, 23
  br i1 %163, label %166, label %164

164:                                              ; preds = %158
  %165 = call ptr @single_set_2(ptr noundef nonnull %75, ptr noundef nonnull %160) #15
  br label %166

166:                                              ; preds = %164, %158, %153
  %167 = phi ptr [ %165, %164 ], [ null, %153 ], [ %160, %158 ]
  %168 = icmp eq ptr %167, null
  br i1 %168, label %359, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !46
  %172 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 0, i32 1, i32 0, i32 0, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !46
  %174 = load i32, ptr %173, align 8
  %175 = trunc i32 %174 to i16
  switch i16 %175, label %359 [
    i16 49, label %176
    i16 50, label %176
    i16 52, label %176
  ]

176:                                              ; preds = %169, %169, %169
  %177 = and i32 %174, 65535
  %178 = lshr i32 %174, 16
  %179 = and i32 %178, 255
  %180 = call i32 @have_insn_for(i32 noundef %177, i32 noundef %179) #15
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %359, label %182

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !46
  %185 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1, i32 0, i32 0, i64 1
  %186 = load ptr, ptr %185, align 8, !tbaa !46
  %187 = load i32, ptr %171, align 8
  %188 = trunc i32 %187 to i16
  switch i16 %188, label %359 [
    i16 37, label %195
    i16 39, label %189
  ]

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !46
  %192 = load i32, ptr %191, align 8
  %193 = and i32 %192, 65535
  %194 = icmp eq i32 %193, 37
  br i1 %194, label %195, label %359

195:                                              ; preds = %189, %182
  %196 = call i32 @rtx_equal_p(ptr noundef nonnull %171, ptr noundef %184) #15
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = call i32 @rtx_equal_p(ptr noundef nonnull %171, ptr noundef %186) #15
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %359, label %201

201:                                              ; preds = %198, %195
  %202 = phi i32 [ 0, %195 ], [ 1, %198 ]
  br i1 %197, label %203, label %207

203:                                              ; preds = %201
  %204 = load i32, ptr %173, align 8
  %205 = and i32 %204, 65535
  %206 = icmp eq i32 %205, 50
  br i1 %206, label %359, label %207

207:                                              ; preds = %203, %201
  %208 = phi ptr [ %186, %201 ], [ %184, %203 ]
  %209 = call i32 @rtx_referenced_p(ptr noundef nonnull %171, ptr noundef %208) #15
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %359

211:                                              ; preds = %207
  %212 = call ptr @get_loop_body(ptr noundef %0) #15
  %213 = load i32, ptr %49, align 4, !tbaa !110
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %260, label %215

215:                                              ; preds = %211, %253
  %216 = phi i64 [ %256, %253 ], [ 0, %211 ]
  %217 = phi i32 [ %255, %253 ], [ 0, %211 ]
  %218 = phi i32 [ %254, %253 ], [ 0, %211 ]
  %219 = getelementptr inbounds ptr, ptr %212, i64 %216
  %220 = load ptr, ptr %219, align 8, !tbaa !35
  %221 = getelementptr inbounds %struct.basic_block_def, ptr %220, i64 0, i32 7
  %222 = load ptr, ptr %221, align 8, !tbaa !46
  %223 = load ptr, ptr %222, align 8, !tbaa !46
  %224 = icmp eq ptr %223, null
  br i1 %224, label %253, label %225

225:                                              ; preds = %215, %247
  %226 = phi ptr [ %251, %247 ], [ %223, %215 ]
  %227 = phi i32 [ %249, %247 ], [ %217, %215 ]
  %228 = phi i32 [ %248, %247 ], [ %218, %215 ]
  %229 = load ptr, ptr %221, align 8, !tbaa !46
  %230 = getelementptr inbounds %struct.rtl_bb_info, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !117
  %232 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1, i32 0, i32 0, i64 2
  %233 = load ptr, ptr %232, align 8, !tbaa !46
  %234 = icmp eq ptr %226, %233
  br i1 %234, label %253, label %235

235:                                              ; preds = %225
  %236 = call i32 @rtx_referenced_p(ptr noundef nonnull %171, ptr noundef nonnull %226) #15
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %247, label %238

238:                                              ; preds = %235
  %239 = load i32, ptr %226, align 8
  %240 = and i32 %239, 65535
  %241 = icmp eq i32 %240, 7
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = add nsw i32 %228, 1
  br label %247

244:                                              ; preds = %238
  %245 = add nsw i32 %227, 1
  %246 = icmp sgt i32 %227, 0
  br i1 %246, label %253, label %247

247:                                              ; preds = %244, %242, %235
  %248 = phi i32 [ %228, %235 ], [ %243, %242 ], [ %228, %244 ]
  %249 = phi i32 [ %227, %235 ], [ %227, %242 ], [ %245, %244 ]
  %250 = getelementptr inbounds %struct.rtx_def, ptr %226, i64 0, i32 1, i32 0, i32 0, i64 2
  %251 = load ptr, ptr %250, align 8, !tbaa !46
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %225, !llvm.loop !153

253:                                              ; preds = %247, %225, %244, %215
  %254 = phi i32 [ %218, %215 ], [ %248, %247 ], [ %228, %225 ], [ %228, %244 ]
  %255 = phi i32 [ %217, %215 ], [ %249, %247 ], [ %227, %225 ], [ %245, %244 ]
  %256 = add nuw nsw i64 %216, 1
  %257 = load i32, ptr %49, align 4, !tbaa !110
  %258 = zext i32 %257 to i64
  %259 = icmp ult i64 %256, %258
  br i1 %259, label %215, label %260, !llvm.loop !154

260:                                              ; preds = %253, %211
  %261 = phi i32 [ 0, %211 ], [ %254, %253 ]
  %262 = phi i32 [ 0, %211 ], [ %255, %253 ]
  call void @free(ptr noundef %212)
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %359

264:                                              ; preds = %260
  %265 = load i32, ptr %171, align 8
  %266 = lshr i32 %265, 16
  %267 = and i32 %266, 255
  %268 = zext nneg i32 %267 to i64
  %269 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !46
  switch i8 %270, label %271 [
    i8 8, label %283
    i8 9, label %283
    i8 11, label %283
    i8 17, label %283
  ]

271:                                              ; preds = %264
  %272 = load i32, ptr %208, align 8
  %273 = lshr i32 %272, 16
  %274 = and i32 %273, 255
  %275 = zext nneg i32 %274 to i64
  %276 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %275
  %277 = load i8, ptr %276, align 1, !tbaa !46
  switch i8 %277, label %278 [
    i8 8, label %283
    i8 9, label %283
    i8 11, label %283
  ]

278:                                              ; preds = %271
  %279 = icmp ne i8 %277, 17
  %280 = load i32, ptr @flag_associative_math, align 4
  %281 = icmp ne i32 %280, 0
  %282 = select i1 %279, i1 true, i1 %281
  br i1 %282, label %286, label %359

283:                                              ; preds = %271, %271, %264, %264, %264, %271, %264
  %284 = load i32, ptr @flag_associative_math, align 4, !tbaa !50
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %359, label %286

286:                                              ; preds = %283, %278
  %287 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %288 = icmp eq ptr %287, null
  br i1 %288, label %294, label %289

289:                                              ; preds = %286
  %290 = call i64 @fwrite(ptr nonnull @.str.17, i64 26, i64 1, ptr nonnull %287)
  %291 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_rtl(ptr noundef %291, ptr noundef nonnull %171) #15
  %292 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %293 = call i32 @fputc(i32 10, ptr %292)
  br label %294

294:                                              ; preds = %289, %286
  %295 = icmp eq i32 %261, 0
  br i1 %295, label %346, label %296

296:                                              ; preds = %294
  %297 = call ptr @get_loop_body(ptr noundef %0) #15
  br label %298

298:                                              ; preds = %296, %341
  %299 = phi i64 [ 0, %296 ], [ %343, %341 ]
  %300 = phi i32 [ %261, %296 ], [ %342, %341 ]
  %301 = load i32, ptr %49, align 4, !tbaa !110
  %302 = zext i32 %301 to i64
  %303 = icmp ult i64 %299, %302
  br i1 %303, label %304, label %345

304:                                              ; preds = %298
  %305 = getelementptr inbounds ptr, ptr %297, i64 %299
  %306 = load ptr, ptr %305, align 8, !tbaa !35
  %307 = getelementptr inbounds %struct.basic_block_def, ptr %306, i64 0, i32 7
  %308 = load ptr, ptr %307, align 8, !tbaa !46
  %309 = load ptr, ptr %308, align 8, !tbaa !46
  %310 = icmp eq ptr %309, null
  br i1 %310, label %341, label %311

311:                                              ; preds = %304, %336
  %312 = phi ptr [ %339, %336 ], [ %309, %304 ]
  %313 = phi i32 [ %337, %336 ], [ %300, %304 ]
  %314 = load ptr, ptr %307, align 8, !tbaa !46
  %315 = getelementptr inbounds %struct.rtl_bb_info, ptr %314, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !117
  %317 = getelementptr inbounds %struct.rtx_def, ptr %316, i64 0, i32 1, i32 0, i32 0, i64 2
  %318 = load ptr, ptr %317, align 8, !tbaa !46
  %319 = icmp eq ptr %312, %318
  br i1 %319, label %341, label %320

320:                                              ; preds = %311
  %321 = load i32, ptr %312, align 8
  %322 = and i32 %321, 65535
  %323 = icmp eq i32 %322, 7
  br i1 %323, label %324, label %336

324:                                              ; preds = %320
  %325 = call i32 @rtx_referenced_p(ptr noundef nonnull %171, ptr noundef nonnull %312) #15
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %336, label %327

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct.rtx_def, ptr %312, i64 1
  %329 = load ptr, ptr %328, align 8, !tbaa !46
  %330 = getelementptr inbounds %struct.rtx_def, ptr %329, i64 0, i32 1, i32 0, i32 0, i64 1
  %331 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %332 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %331) #15
  %333 = call zeroext i8 @validate_change(ptr noundef nonnull %312, ptr noundef nonnull %330, ptr noundef %332, i8 noundef zeroext 0) #15
  %334 = add nsw i32 %313, -1
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %341, label %336

336:                                              ; preds = %327, %324, %320
  %337 = phi i32 [ %334, %327 ], [ %313, %324 ], [ %313, %320 ]
  %338 = getelementptr inbounds %struct.rtx_def, ptr %312, i64 0, i32 1, i32 0, i32 0, i64 2
  %339 = load ptr, ptr %338, align 8, !tbaa !46
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %311, !llvm.loop !155

341:                                              ; preds = %336, %311, %327, %304
  %342 = phi i32 [ %300, %304 ], [ %337, %336 ], [ %313, %311 ], [ 0, %327 ]
  %343 = add nuw nsw i64 %299, 1
  %344 = icmp eq i32 %342, 0
  br i1 %344, label %345, label %298, !llvm.loop !156

345:                                              ; preds = %341, %298
  call void @free(ptr noundef %297)
  br label %346

346:                                              ; preds = %345, %294
  %347 = call ptr @xmalloc(i64 noundef 48) #15
  store ptr %75, ptr %347, align 8, !tbaa !157
  %348 = call ptr @copy_rtx(ptr noundef nonnull %171) #15
  %349 = getelementptr inbounds %struct.var_to_expand, ptr %347, i64 0, i32 1
  store ptr %348, ptr %349, align 8, !tbaa !159
  %350 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #15
  %351 = getelementptr inbounds %struct.var_to_expand, ptr %347, i64 0, i32 2
  store ptr %350, ptr %351, align 8, !tbaa !160
  %352 = getelementptr inbounds %struct.var_to_expand, ptr %347, i64 0, i32 3
  store ptr null, ptr %352, align 8, !tbaa !161
  %353 = load i32, ptr %173, align 8
  %354 = and i32 %353, 65535
  %355 = getelementptr inbounds %struct.var_to_expand, ptr %347, i64 0, i32 4
  store i32 %354, ptr %355, align 8, !tbaa !162
  %356 = getelementptr inbounds %struct.var_to_expand, ptr %347, i64 0, i32 5
  store i32 0, ptr %356, align 4, !tbaa !163
  %357 = getelementptr inbounds %struct.var_to_expand, ptr %347, i64 0, i32 6
  store i32 0, ptr %357, align 8, !tbaa !164
  %358 = getelementptr inbounds %struct.var_to_expand, ptr %347, i64 0, i32 7
  store i32 %202, ptr %358, align 4, !tbaa !165
  br label %359

359:                                              ; preds = %278, %207, %198, %189, %169, %346, %283, %260, %203, %182, %176, %166, %150
  %360 = phi ptr [ %77, %150 ], [ %347, %346 ], [ null, %166 ], [ null, %176 ], [ null, %182 ], [ null, %203 ], [ null, %260 ], [ null, %283 ], [ null, %169 ], [ null, %189 ], [ null, %198 ], [ null, %207 ], [ null, %278 ]
  %361 = icmp eq ptr %360, null
  br i1 %361, label %371, label %362

362:                                              ; preds = %359
  %363 = load ptr, ptr %58, align 8, !tbaa !139
  %364 = call ptr @htab_find_slot(ptr noundef %363, ptr noundef nonnull %360, i32 noundef 1) #15
  %365 = load ptr, ptr %364, align 8, !tbaa !35
  %366 = icmp eq ptr %365, null
  br i1 %366, label %368, label %367

367:                                              ; preds = %362
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1872, ptr noundef nonnull @.str.1) #15
  br label %368

368:                                              ; preds = %362, %367
  store ptr %360, ptr %364, align 8, !tbaa !35
  %369 = load ptr, ptr %59, align 8, !tbaa !141
  store ptr %360, ptr %369, align 8, !tbaa !35
  %370 = getelementptr inbounds %struct.var_to_expand, ptr %360, i64 0, i32 3
  store ptr %370, ptr %59, align 8, !tbaa !141
  br label %371

371:                                              ; preds = %84, %359, %368, %147
  %372 = phi ptr [ %77, %147 ], [ %360, %368 ], [ null, %359 ], [ %77, %84 ]
  %373 = phi ptr [ %139, %147 ], [ null, %368 ], [ null, %359 ], [ %76, %84 ]
  %374 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 2
  %375 = load ptr, ptr %374, align 8, !tbaa !46
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %74, !llvm.loop !166

377:                                              ; preds = %371, %74, %69, %60
  %378 = phi ptr [ %63, %60 ], [ %63, %69 ], [ %77, %74 ], [ %372, %371 ]
  %379 = phi ptr [ %62, %60 ], [ %62, %69 ], [ %76, %74 ], [ %373, %371 ]
  %380 = add nuw nsw i64 %61, 1
  %381 = load i32, ptr %49, align 4, !tbaa !110
  %382 = zext i32 %381 to i64
  %383 = icmp ult i64 %380, %382
  br i1 %383, label %60, label %384, !llvm.loop !167

384:                                              ; preds = %377, %48
  br i1 %20, label %386, label %385

385:                                              ; preds = %384
  call void @free(ptr noundef %4)
  br label %386

386:                                              ; preds = %384, %385
  call void @free(ptr noundef %5)
  ret ptr %3
}

declare zeroext i8 @duplicate_loop_to_header_edge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @apply_opt_in_copies(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #9 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.iv_to_split, align 8
  %7 = alloca %struct.var_to_expand, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #15
  %8 = icmp eq i8 %2, 0
  %9 = icmp ne i8 %3, 0
  %10 = or i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2209, ptr noundef nonnull @.str.1) #15
  br label %12

12:                                               ; preds = %4, %11
  %13 = load ptr, ptr %0, align 8, !tbaa !134
  %14 = icmp eq ptr %13, null
  br i1 %14, label %63, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %63, label %19

19:                                               ; preds = %15, %52
  %20 = phi ptr [ %61, %52 ], [ %17, %15 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !147
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = add nsw i32 %23, -7
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 23
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = tail call ptr @single_set_2(ptr noundef nonnull %21, ptr noundef nonnull %28) #15
  br label %34

34:                                               ; preds = %32, %26, %19
  %35 = phi ptr [ %33, %32 ], [ null, %19 ], [ %28, %26 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %35, ptr %5, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.iv_to_split, ptr %20, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !152
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %34
  %40 = zext i32 %37 to i64
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ 0, %39 ], [ %50, %41 ]
  %43 = phi ptr [ %5, %39 ], [ %49, %41 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %46 = getelementptr inbounds %struct.iv_to_split, ptr %20, i64 0, i32 5, i64 %42
  %47 = load i32, ptr %46, align 4, !tbaa !50
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %48
  %50 = add nuw nsw i64 %42, 1
  %51 = icmp eq i64 %50, %40
  br i1 %51, label %52, label %41, !llvm.loop !168

52:                                               ; preds = %41, %34
  %53 = phi ptr [ %5, %34 ], [ %49, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = tail call ptr @gen_reg_rtx(i32 noundef %57) #15
  %59 = getelementptr inbounds %struct.iv_to_split, ptr %20, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !149
  %60 = getelementptr inbounds %struct.iv_to_split, ptr %20, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !35
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %19, !llvm.loop !169

63:                                               ; preds = %52, %15, %12
  %64 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !77
  %66 = load ptr, ptr @cfun, align 8, !tbaa !35
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !73
  %69 = getelementptr inbounds %struct.control_flow_graph, ptr %68, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !75
  %71 = icmp ult i32 %65, %70
  br i1 %71, label %72, label %274

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 3
  %74 = zext i32 %65 to i64
  br label %75

75:                                               ; preds = %72, %265
  %76 = phi i64 [ %74, %72 ], [ %266, %265 ]
  %77 = phi ptr [ %68, %72 ], [ %269, %265 ]
  %78 = getelementptr inbounds %struct.control_flow_graph, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !170
  %80 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %79, i64 0, i32 2, i64 %76
  %81 = load ptr, ptr %80, align 8, !tbaa !35
  %82 = call ptr @get_bb_original(ptr noundef %81) #15
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !171
  %85 = ptrtoint ptr %84 to i64
  %86 = trunc i64 %85 to i32
  %87 = icmp eq i32 %86, 0
  %88 = add i32 %86, -1
  %89 = select i1 %87, i32 %1, i32 %88
  %90 = select i1 %8, i32 %89, i32 %86
  store ptr null, ptr %83, align 8, !tbaa !171
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 7
  %92 = load ptr, ptr %91, align 8, !tbaa !46
  %93 = load ptr, ptr %92, align 8, !tbaa !172
  %94 = getelementptr inbounds %struct.rtl_bb_info, ptr %92, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !117
  %96 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 2
  %97 = load ptr, ptr %96, align 8, !tbaa !46
  %98 = icmp eq ptr %93, %97
  br i1 %98, label %265, label %99

99:                                               ; preds = %75
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !46
  %102 = load ptr, ptr %101, align 8, !tbaa !172
  br label %103

103:                                              ; preds = %99, %257
  %104 = phi ptr [ %102, %99 ], [ %258, %257 ]
  %105 = phi ptr [ %93, %99 ], [ %107, %257 ]
  %106 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 2
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  %108 = load i32, ptr %105, align 8
  %109 = and i32 %108, 65535
  %110 = add nsw i32 %109, -7
  %111 = icmp ult i32 %110, 4
  br i1 %111, label %112, label %257

112:                                              ; preds = %103
  %113 = load i32, ptr %104, align 8
  %114 = and i32 %113, 65535
  %115 = add nsw i32 %114, -7
  %116 = icmp ult i32 %115, 4
  br i1 %116, label %125, label %117

117:                                              ; preds = %112, %117
  %118 = phi ptr [ %120, %117 ], [ %104, %112 ]
  %119 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1, i32 0, i32 0, i64 2
  %120 = load ptr, ptr %119, align 8, !tbaa !46
  %121 = load i32, ptr %120, align 8
  %122 = and i32 %121, 65535
  %123 = add nsw i32 %122, -7
  %124 = icmp ult i32 %123, 4
  br i1 %124, label %125, label %117, !llvm.loop !173

125:                                              ; preds = %117, %112
  %126 = phi ptr [ %104, %112 ], [ %120, %117 ]
  store ptr %126, ptr %6, align 8, !tbaa !147
  store ptr %126, ptr %7, align 8, !tbaa !157
  %127 = load ptr, ptr %0, align 8, !tbaa !134
  %128 = icmp eq ptr %127, null
  br i1 %128, label %147, label %129

129:                                              ; preds = %125
  %130 = call ptr @htab_find(ptr noundef nonnull %127, ptr noundef nonnull %6) #15
  %131 = icmp eq ptr %130, null
  br i1 %131, label %147, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !46
  %135 = load i32, ptr %134, align 8
  %136 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  %138 = load i32, ptr %137, align 8
  %139 = xor i32 %138, %135
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %132
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2248, ptr noundef nonnull @.str.1) #15
  br label %143

143:                                              ; preds = %132, %142
  %144 = icmp eq i32 %90, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %143
  call fastcc void @insert_base_initialization(ptr noundef nonnull %130, ptr noundef nonnull %105)
  br label %146

146:                                              ; preds = %145, %143
  call fastcc void @split_iv(ptr noundef nonnull %130, ptr noundef nonnull %105, i32 noundef %90)
  br label %147

147:                                              ; preds = %129, %146, %125
  br i1 %8, label %254, label %148

148:                                              ; preds = %147
  %149 = load ptr, ptr %73, align 8, !tbaa !139
  %150 = icmp eq ptr %149, null
  br i1 %150, label %254, label %151

151:                                              ; preds = %148
  %152 = call ptr @htab_find(ptr noundef nonnull %149, ptr noundef nonnull %7) #15
  %153 = icmp eq ptr %152, null
  br i1 %153, label %254, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !46
  %157 = load i32, ptr %156, align 8
  %158 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 1
  %159 = load ptr, ptr %158, align 8, !tbaa !46
  %160 = load i32, ptr %159, align 8
  %161 = xor i32 %160, %157
  %162 = and i32 %161, 65535
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %154
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2263, ptr noundef nonnull @.str.1) #15
  br label %165

165:                                              ; preds = %154, %164
  %166 = load i32, ptr %105, align 8
  %167 = and i32 %166, 65535
  %168 = add nsw i32 %167, -7
  %169 = icmp ult i32 %168, 4
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load ptr, ptr %155, align 8, !tbaa !46
  %172 = load i32, ptr %171, align 8
  %173 = and i32 %172, 65535
  %174 = icmp eq i32 %173, 23
  br i1 %174, label %177, label %175

175:                                              ; preds = %170
  %176 = call ptr @single_set_2(ptr noundef nonnull %105, ptr noundef nonnull %171) #15
  br label %177

177:                                              ; preds = %175, %170, %165
  %178 = phi ptr [ %176, %175 ], [ null, %165 ], [ %171, %170 ]
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2056, ptr noundef nonnull @.str.1) #15
  br label %181

181:                                              ; preds = %180, %177
  %182 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %183 = getelementptr inbounds %struct.param_info, ptr %182, i64 10, i32 1
  %184 = load i32, ptr %183, align 8, !tbaa !60
  %185 = getelementptr inbounds %struct.var_to_expand, ptr %152, i64 0, i32 5
  %186 = load i32, ptr %185, align 4, !tbaa !163
  %187 = icmp sgt i32 %184, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.var_to_expand, ptr %152, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !159
  %191 = load i32, ptr %190, align 8
  %192 = lshr i32 %191, 16
  %193 = and i32 %192, 255
  %194 = call ptr @gen_reg_rtx(i32 noundef %193) #15
  br label %220

195:                                              ; preds = %181
  %196 = getelementptr inbounds %struct.var_to_expand, ptr %152, i64 0, i32 6
  %197 = load i32, ptr %196, align 8, !tbaa !164
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.var_to_expand, ptr %152, i64 0, i32 1
  br label %207

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.var_to_expand, ptr %152, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !160
  %204 = add nsw i32 %197, -1
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.VEC_rtx_base, ptr %203, i64 0, i32 2, i64 %205
  br label %207

207:                                              ; preds = %201, %199
  %208 = phi ptr [ %200, %199 ], [ %206, %201 ]
  %209 = load ptr, ptr %208, align 8, !tbaa !35
  %210 = getelementptr inbounds %struct.var_to_expand, ptr %152, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !160
  %212 = icmp eq ptr %211, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %207
  %214 = load i32, ptr %211, align 8, !tbaa !174
  br label %215

215:                                              ; preds = %213, %207
  %216 = phi i32 [ %214, %213 ], [ 0, %207 ]
  %217 = icmp eq i32 %216, %197
  %218 = add nsw i32 %197, 1
  %219 = select i1 %217, i32 0, i32 %218
  store i32 %219, ptr %196, align 8, !tbaa !164
  br label %220

220:                                              ; preds = %215, %188
  %221 = phi ptr [ %194, %188 ], [ %209, %215 ]
  %222 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1
  %223 = call zeroext i8 @validate_change(ptr noundef nonnull %105, ptr noundef nonnull %222, ptr noundef %221, i8 noundef zeroext 1) #15
  %224 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1, i32 0, i32 0, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !46
  %226 = getelementptr inbounds %struct.rtx_def, ptr %225, i64 0, i32 1
  %227 = getelementptr inbounds %struct.var_to_expand, ptr %152, i64 0, i32 7
  %228 = load i32, ptr %227, align 4, !tbaa !165
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds [1 x %union.rtunion_def], ptr %226, i64 0, i64 %229
  %231 = call zeroext i8 @validate_change(ptr noundef nonnull %105, ptr noundef nonnull %230, ptr noundef %221, i8 noundef zeroext 1) #15
  %232 = call i32 @apply_change_group() #15
  %233 = icmp ne i32 %232, 0
  %234 = and i1 %187, %233
  br i1 %234, label %235, label %254

235:                                              ; preds = %220
  %236 = getelementptr inbounds %struct.var_to_expand, ptr %152, i64 0, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !35
  %238 = icmp eq ptr %237, null
  br i1 %238, label %244, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.VEC_rtx_base, ptr %237, i64 0, i32 1
  %241 = load i32, ptr %240, align 4, !tbaa !176
  %242 = load i32, ptr %237, align 8, !tbaa !174
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %239, %235
  %245 = call ptr @vec_heap_p_reserve(ptr noundef %237, i32 noundef 1) #15
  store ptr %245, ptr %236, align 8, !tbaa !35
  br label %246

246:                                              ; preds = %244, %239
  %247 = load ptr, ptr %236, align 8, !tbaa !35
  %248 = load i32, ptr %247, align 8, !tbaa !174
  %249 = add i32 %248, 1
  store i32 %249, ptr %247, align 8, !tbaa !174
  %250 = zext i32 %248 to i64
  %251 = getelementptr inbounds %struct.VEC_rtx_base, ptr %247, i64 0, i32 2, i64 %250
  store ptr %221, ptr %251, align 8, !tbaa !35
  %252 = load i32, ptr %185, align 4, !tbaa !163
  %253 = add nsw i32 %252, 1
  store i32 %253, ptr %185, align 4, !tbaa !163
  br label %254

254:                                              ; preds = %246, %220, %151, %148, %147
  %255 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1, i32 0, i32 0, i64 2
  %256 = load ptr, ptr %255, align 8, !tbaa !46
  br label %257

257:                                              ; preds = %103, %254
  %258 = phi ptr [ %256, %254 ], [ %104, %103 ]
  %259 = load ptr, ptr %91, align 8, !tbaa !46
  %260 = getelementptr inbounds %struct.rtl_bb_info, ptr %259, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !117
  %262 = getelementptr inbounds %struct.rtx_def, ptr %261, i64 0, i32 1, i32 0, i32 0, i64 2
  %263 = load ptr, ptr %262, align 8, !tbaa !46
  %264 = icmp eq ptr %107, %263
  br i1 %264, label %265, label %103, !llvm.loop !177

265:                                              ; preds = %257, %75
  %266 = add nuw nsw i64 %76, 1
  %267 = load ptr, ptr @cfun, align 8, !tbaa !35
  %268 = getelementptr inbounds %struct.function, ptr %267, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !73
  %270 = getelementptr inbounds %struct.control_flow_graph, ptr %269, i64 0, i32 5
  %271 = load i32, ptr %270, align 8, !tbaa !75
  %272 = zext i32 %271 to i64
  %273 = icmp ult i64 %266, %272
  br i1 %273, label %75, label %274, !llvm.loop !178

274:                                              ; preds = %265, %63
  %275 = icmp eq i8 %3, 0
  br i1 %275, label %559, label %276

276:                                              ; preds = %274
  %277 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !139
  %279 = icmp eq ptr %278, null
  br i1 %279, label %493, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 4
  %282 = load ptr, ptr %281, align 8, !tbaa !35
  %283 = icmp eq ptr %282, null
  br i1 %283, label %286, label %284

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 8
  br label %291

286:                                              ; preds = %400, %280
  %287 = load ptr, ptr %281, align 8, !tbaa !35
  %288 = icmp eq ptr %287, null
  br i1 %288, label %493, label %289

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 7
  br label %404

291:                                              ; preds = %284, %400
  %292 = phi ptr [ %282, %284 ], [ %402, %400 ]
  %293 = load ptr, ptr %285, align 8, !tbaa !137
  %294 = getelementptr inbounds %struct.var_to_expand, ptr %292, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !159
  %296 = load i32, ptr %295, align 8
  %297 = lshr i32 %296, 16
  %298 = and i32 %297, 255
  %299 = zext nneg i32 %298 to i64
  %300 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !46
  switch i8 %301, label %321 [
    i8 8, label %302
    i8 9, label %302
    i8 11, label %302
    i8 17, label %302
  ]

302:                                              ; preds = %291, %291, %291, %291
  %303 = and i8 %301, -2
  %304 = icmp eq i8 %303, 8
  br i1 %304, label %309, label %305

305:                                              ; preds = %302
  %306 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %299
  %307 = load i8, ptr %306, align 1, !tbaa !46
  %308 = zext i8 %307 to i32
  br label %309

309:                                              ; preds = %302, %305
  %310 = phi i32 [ %308, %305 ], [ %298, %302 ]
  %311 = add nsw i32 %310, -38
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !35
  %315 = getelementptr inbounds %struct.real_format, ptr %314, i64 0, i32 14
  %316 = load i8, ptr %315, align 1, !tbaa !179
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %309
  %319 = load i32, ptr @flag_signed_zeros, align 4, !tbaa !50
  %320 = icmp eq i32 %319, 0
  br label %321

321:                                              ; preds = %318, %309, %291
  %322 = phi i1 [ true, %309 ], [ %320, %318 ], [ true, %291 ]
  %323 = getelementptr inbounds %struct.var_to_expand, ptr %292, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !160
  %325 = icmp eq ptr %324, null
  br i1 %325, label %400, label %326

326:                                              ; preds = %321
  %327 = load i32, ptr %324, align 8, !tbaa !174
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %400, label %329

329:                                              ; preds = %326
  call void @start_sequence() #15
  %330 = getelementptr inbounds %struct.var_to_expand, ptr %292, i64 0, i32 4
  %331 = load i32, ptr %330, align 8, !tbaa !162
  switch i32 %331, label %382 [
    i32 49, label %332
    i32 50, label %332
    i32 52, label %359
  ]

332:                                              ; preds = %329, %329
  %333 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %299
  %334 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %299
  br label %335

335:                                              ; preds = %355, %332
  %336 = phi i32 [ 0, %332 ], [ %358, %355 ]
  %337 = load ptr, ptr %323, align 8, !tbaa !160
  %338 = icmp eq ptr %337, null
  br i1 %338, label %346, label %339

339:                                              ; preds = %335
  %340 = load i32, ptr %337, align 8, !tbaa !174
  %341 = icmp ugt i32 %340, %336
  br i1 %341, label %342, label %346

342:                                              ; preds = %339
  %343 = zext i32 %336 to i64
  %344 = getelementptr inbounds %struct.VEC_rtx_base, ptr %337, i64 0, i32 2, i64 %343
  %345 = load ptr, ptr %344, align 8, !tbaa !35
  br label %346

346:                                              ; preds = %342, %339, %335
  %347 = phi ptr [ %345, %342 ], [ null, %339 ], [ null, %335 ]
  %348 = phi i1 [ false, %342 ], [ true, %339 ], [ true, %335 ]
  br i1 %348, label %382, label %349

349:                                              ; preds = %346
  br i1 %322, label %353, label %350

350:                                              ; preds = %349
  %351 = load ptr, ptr %333, align 8, !tbaa !35
  %352 = call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %298, ptr noundef %351, i32 noundef %298) #15
  br label %355

353:                                              ; preds = %349
  %354 = load ptr, ptr %334, align 8, !tbaa !35
  br label %355

355:                                              ; preds = %353, %350
  %356 = phi ptr [ %352, %350 ], [ %354, %353 ]
  %357 = call ptr @emit_move_insn(ptr noundef %347, ptr noundef %356) #15
  %358 = add i32 %336, 1
  br label %335, !llvm.loop !181

359:                                              ; preds = %329, %373
  %360 = phi i32 [ %381, %373 ], [ 0, %329 ]
  %361 = load ptr, ptr %323, align 8, !tbaa !160
  %362 = icmp eq ptr %361, null
  br i1 %362, label %370, label %363

363:                                              ; preds = %359
  %364 = load i32, ptr %361, align 8, !tbaa !174
  %365 = icmp ugt i32 %364, %360
  br i1 %365, label %366, label %370

366:                                              ; preds = %363
  %367 = zext i32 %360 to i64
  %368 = getelementptr inbounds %struct.VEC_rtx_base, ptr %361, i64 0, i32 2, i64 %367
  %369 = load ptr, ptr %368, align 8, !tbaa !35
  br label %370

370:                                              ; preds = %366, %363, %359
  %371 = phi ptr [ %369, %366 ], [ null, %363 ], [ null, %359 ]
  %372 = phi i1 [ false, %366 ], [ true, %363 ], [ true, %359 ]
  br i1 %372, label %382, label %373

373:                                              ; preds = %370
  %374 = load i32, ptr %371, align 8
  %375 = lshr i32 %374, 16
  %376 = and i32 %375, 255
  %377 = zext nneg i32 %376 to i64
  %378 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %377
  %379 = load ptr, ptr %378, align 8, !tbaa !35
  %380 = call ptr @emit_move_insn(ptr noundef nonnull %371, ptr noundef %379) #15
  %381 = add i32 %360, 1
  br label %359, !llvm.loop !182

382:                                              ; preds = %370, %346, %329
  %383 = call ptr @get_insns() #15
  call void @end_sequence() #15
  %384 = getelementptr inbounds %struct.basic_block_def, ptr %293, i64 0, i32 7
  %385 = load ptr, ptr %384, align 8, !tbaa !46
  br label %386

386:                                              ; preds = %396, %382
  %387 = phi ptr [ %385, %382 ], [ %397, %396 ]
  %388 = load ptr, ptr %387, align 8, !tbaa !46
  %389 = load i32, ptr %388, align 8
  %390 = and i32 %389, 65535
  %391 = icmp eq i32 %390, 13
  br i1 %391, label %392, label %396

392:                                              ; preds = %386
  %393 = getelementptr inbounds %struct.rtx_def, ptr %388, i64 1
  %394 = load i32, ptr %393, align 8, !tbaa !46
  %395 = icmp eq i32 %394, 10
  br i1 %395, label %398, label %396

396:                                              ; preds = %392, %386
  %397 = getelementptr inbounds %struct.rtx_def, ptr %388, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %386, !llvm.loop !183

398:                                              ; preds = %392
  %399 = call ptr @emit_insn_after(ptr noundef %383, ptr noundef nonnull %388) #15
  br label %400

400:                                              ; preds = %321, %326, %398
  %401 = getelementptr inbounds %struct.var_to_expand, ptr %292, i64 0, i32 3
  %402 = load ptr, ptr %401, align 8, !tbaa !35
  %403 = icmp eq ptr %402, null
  br i1 %403, label %286, label %291, !llvm.loop !184

404:                                              ; preds = %289, %489
  %405 = phi ptr [ %287, %289 ], [ %491, %489 ]
  %406 = load ptr, ptr %290, align 8, !tbaa !138
  %407 = getelementptr inbounds %struct.var_to_expand, ptr %405, i64 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !159
  %409 = getelementptr inbounds %struct.var_to_expand, ptr %405, i64 0, i32 2
  %410 = load ptr, ptr %409, align 8, !tbaa !160
  %411 = icmp eq ptr %410, null
  br i1 %411, label %489, label %412

412:                                              ; preds = %404
  %413 = load i32, ptr %410, align 8, !tbaa !174
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %489, label %415

415:                                              ; preds = %412
  call void @start_sequence() #15
  %416 = getelementptr inbounds %struct.var_to_expand, ptr %405, i64 0, i32 4
  %417 = load i32, ptr %416, align 8, !tbaa !162
  switch i32 %417, label %463 [
    i32 49, label %418
    i32 50, label %418
    i32 52, label %441
  ]

418:                                              ; preds = %415, %415
  br label %419

419:                                              ; preds = %418, %434
  %420 = phi ptr [ %439, %434 ], [ %408, %418 ]
  %421 = phi i32 [ %440, %434 ], [ 0, %418 ]
  %422 = load ptr, ptr %409, align 8, !tbaa !160
  %423 = icmp eq ptr %422, null
  br i1 %423, label %431, label %424

424:                                              ; preds = %419
  %425 = load i32, ptr %422, align 8, !tbaa !174
  %426 = icmp ugt i32 %425, %421
  br i1 %426, label %427, label %431

427:                                              ; preds = %424
  %428 = zext i32 %421 to i64
  %429 = getelementptr inbounds %struct.VEC_rtx_base, ptr %422, i64 0, i32 2, i64 %428
  %430 = load ptr, ptr %429, align 8, !tbaa !35
  br label %431

431:                                              ; preds = %427, %424, %419
  %432 = phi ptr [ %430, %427 ], [ null, %424 ], [ null, %419 ]
  %433 = phi i1 [ false, %427 ], [ true, %424 ], [ true, %419 ]
  br i1 %433, label %463, label %434

434:                                              ; preds = %431
  %435 = load ptr, ptr %407, align 8, !tbaa !159
  %436 = load i32, ptr %435, align 8
  %437 = lshr i32 %436, 16
  %438 = and i32 %437, 255
  %439 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %438, ptr noundef %432, ptr noundef %420) #15
  %440 = add i32 %421, 1
  br label %419, !llvm.loop !185

441:                                              ; preds = %415, %456
  %442 = phi ptr [ %461, %456 ], [ %408, %415 ]
  %443 = phi i32 [ %462, %456 ], [ 0, %415 ]
  %444 = load ptr, ptr %409, align 8, !tbaa !160
  %445 = icmp eq ptr %444, null
  br i1 %445, label %453, label %446

446:                                              ; preds = %441
  %447 = load i32, ptr %444, align 8, !tbaa !174
  %448 = icmp ugt i32 %447, %443
  br i1 %448, label %449, label %453

449:                                              ; preds = %446
  %450 = zext i32 %443 to i64
  %451 = getelementptr inbounds %struct.VEC_rtx_base, ptr %444, i64 0, i32 2, i64 %450
  %452 = load ptr, ptr %451, align 8, !tbaa !35
  br label %453

453:                                              ; preds = %449, %446, %441
  %454 = phi ptr [ %452, %449 ], [ null, %446 ], [ null, %441 ]
  %455 = phi i1 [ false, %449 ], [ true, %446 ], [ true, %441 ]
  br i1 %455, label %463, label %456

456:                                              ; preds = %453
  %457 = load ptr, ptr %407, align 8, !tbaa !159
  %458 = load i32, ptr %457, align 8
  %459 = lshr i32 %458, 16
  %460 = and i32 %459, 255
  %461 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %460, ptr noundef %454, ptr noundef %442) #15
  %462 = add i32 %443, 1
  br label %441, !llvm.loop !186

463:                                              ; preds = %453, %431, %415
  %464 = phi ptr [ %408, %415 ], [ %420, %431 ], [ %442, %453 ]
  %465 = load ptr, ptr %407, align 8, !tbaa !159
  %466 = call ptr @force_operand(ptr noundef %464, ptr noundef %465) #15
  %467 = load ptr, ptr %407, align 8, !tbaa !159
  %468 = icmp eq ptr %466, %467
  br i1 %468, label %471, label %469

469:                                              ; preds = %463
  %470 = call ptr @emit_move_insn(ptr noundef %467, ptr noundef %466) #15
  br label %471

471:                                              ; preds = %469, %463
  %472 = call ptr @get_insns() #15
  call void @end_sequence() #15
  %473 = getelementptr inbounds %struct.basic_block_def, ptr %406, i64 0, i32 7
  %474 = load ptr, ptr %473, align 8, !tbaa !46
  br label %475

475:                                              ; preds = %485, %471
  %476 = phi ptr [ %474, %471 ], [ %486, %485 ]
  %477 = load ptr, ptr %476, align 8, !tbaa !46
  %478 = load i32, ptr %477, align 8
  %479 = and i32 %478, 65535
  %480 = icmp eq i32 %479, 13
  br i1 %480, label %481, label %485

481:                                              ; preds = %475
  %482 = getelementptr inbounds %struct.rtx_def, ptr %477, i64 1
  %483 = load i32, ptr %482, align 8, !tbaa !46
  %484 = icmp eq i32 %483, 10
  br i1 %484, label %487, label %485

485:                                              ; preds = %481, %475
  %486 = getelementptr inbounds %struct.rtx_def, ptr %477, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %475, !llvm.loop !187

487:                                              ; preds = %481
  %488 = call ptr @emit_insn_after(ptr noundef %472, ptr noundef nonnull %477) #15
  br label %489

489:                                              ; preds = %404, %412, %487
  %490 = getelementptr inbounds %struct.var_to_expand, ptr %405, i64 0, i32 3
  %491 = load ptr, ptr %490, align 8, !tbaa !35
  %492 = icmp eq ptr %491, null
  br i1 %492, label %493, label %404, !llvm.loop !188

493:                                              ; preds = %489, %286, %276
  %494 = load i32, ptr %64, align 8, !tbaa !77
  %495 = load ptr, ptr @cfun, align 8, !tbaa !35
  %496 = getelementptr inbounds %struct.function, ptr %495, i64 0, i32 1
  %497 = load ptr, ptr %496, align 8, !tbaa !73
  %498 = getelementptr inbounds %struct.control_flow_graph, ptr %497, i64 0, i32 5
  %499 = load i32, ptr %498, align 8, !tbaa !75
  %500 = icmp ult i32 %494, %499
  br i1 %500, label %501, label %559

501:                                              ; preds = %493
  %502 = select i1 %8, i32 %1, i32 0
  %503 = icmp eq i32 %502, 0
  %504 = zext i32 %494 to i64
  br label %505

505:                                              ; preds = %501, %550
  %506 = phi i64 [ %504, %501 ], [ %551, %550 ]
  %507 = phi ptr [ %497, %501 ], [ %554, %550 ]
  %508 = getelementptr inbounds %struct.control_flow_graph, ptr %507, i64 0, i32 2
  %509 = load ptr, ptr %508, align 8, !tbaa !170
  %510 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %509, i64 0, i32 2, i64 %506
  %511 = load ptr, ptr %510, align 8, !tbaa !35
  %512 = call ptr @get_bb_original(ptr noundef %511) #15
  %513 = call ptr @get_bb_copy(ptr noundef %512) #15
  %514 = icmp eq ptr %513, %511
  br i1 %514, label %515, label %550

515:                                              ; preds = %505
  %516 = getelementptr inbounds %struct.basic_block_def, ptr %512, i64 0, i32 7
  %517 = load ptr, ptr %516, align 8, !tbaa !46
  %518 = load ptr, ptr %517, align 8, !tbaa !172
  %519 = getelementptr inbounds %struct.basic_block_def, ptr %511, i64 0, i32 7
  %520 = load ptr, ptr %519, align 8, !tbaa !46
  %521 = getelementptr inbounds %struct.rtl_bb_info, ptr %520, i64 0, i32 1
  %522 = load ptr, ptr %521, align 8, !tbaa !117
  %523 = getelementptr inbounds %struct.rtx_def, ptr %522, i64 0, i32 1, i32 0, i32 0, i64 2
  %524 = load ptr, ptr %523, align 8, !tbaa !46
  %525 = icmp eq ptr %518, %524
  br i1 %525, label %550, label %526

526:                                              ; preds = %515, %543
  %527 = phi ptr [ %529, %543 ], [ %518, %515 ]
  %528 = getelementptr inbounds %struct.rtx_def, ptr %527, i64 0, i32 1, i32 0, i32 0, i64 2
  %529 = load ptr, ptr %528, align 8, !tbaa !46
  %530 = load i32, ptr %527, align 8
  %531 = and i32 %530, 65535
  %532 = add nsw i32 %531, -7
  %533 = icmp ult i32 %532, 4
  br i1 %533, label %534, label %543

534:                                              ; preds = %526
  store ptr %527, ptr %6, align 8, !tbaa !147
  %535 = load ptr, ptr %0, align 8, !tbaa !134
  %536 = icmp eq ptr %535, null
  br i1 %536, label %543, label %537

537:                                              ; preds = %534
  %538 = call ptr @htab_find(ptr noundef nonnull %535, ptr noundef nonnull %6) #15
  %539 = icmp eq ptr %538, null
  br i1 %539, label %543, label %540

540:                                              ; preds = %537
  br i1 %503, label %541, label %542

541:                                              ; preds = %540
  call fastcc void @insert_base_initialization(ptr noundef nonnull %538, ptr noundef nonnull %527)
  br label %542

542:                                              ; preds = %541, %540
  call fastcc void @split_iv(ptr noundef nonnull %538, ptr noundef nonnull %527, i32 noundef %502)
  br label %543

543:                                              ; preds = %526, %534, %537, %542
  %544 = load ptr, ptr %519, align 8, !tbaa !46
  %545 = getelementptr inbounds %struct.rtl_bb_info, ptr %544, i64 0, i32 1
  %546 = load ptr, ptr %545, align 8, !tbaa !117
  %547 = getelementptr inbounds %struct.rtx_def, ptr %546, i64 0, i32 1, i32 0, i32 0, i64 2
  %548 = load ptr, ptr %547, align 8, !tbaa !46
  %549 = icmp eq ptr %529, %548
  br i1 %549, label %550, label %526, !llvm.loop !189

550:                                              ; preds = %543, %515, %505
  %551 = add nuw nsw i64 %506, 1
  %552 = load ptr, ptr @cfun, align 8, !tbaa !35
  %553 = getelementptr inbounds %struct.function, ptr %552, i64 0, i32 1
  %554 = load ptr, ptr %553, align 8, !tbaa !73
  %555 = getelementptr inbounds %struct.control_flow_graph, ptr %554, i64 0, i32 5
  %556 = load i32, ptr %555, align 8, !tbaa !75
  %557 = zext i32 %556 to i64
  %558 = icmp ult i64 %551, %557
  br i1 %558, label %505, label %559, !llvm.loop !190

559:                                              ; preds = %550, %493, %274
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @free_opt_info(ptr nocapture noundef %0) unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !134
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @htab_delete(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9, %19
  %14 = phi ptr [ %21, %19 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.var_to_expand, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @free(ptr noundef %16)
  br label %19

19:                                               ; preds = %13, %18
  store ptr null, ptr %15, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.var_to_expand, ptr %14, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %13, !llvm.loop !191

23:                                               ; preds = %19, %9
  %24 = load ptr, ptr %6, align 8, !tbaa !139
  tail call void @htab_delete(ptr noundef %24) #15
  br label %25

25:                                               ; preds = %23, %5
  tail call void @free(ptr noundef %0)
  ret void
}

declare zeroext i8 @remove_path(ptr noundef) local_unnamed_addr #3

declare void @free_simple_loop_desc(ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #3

declare void @iv_analysis_loop_init(ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @si_info_hash(ptr nocapture noundef readonly %0) #11 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !147
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !46
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @si_info_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !147
  %4 = load ptr, ptr %1, align 8, !tbaa !147
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @ve_info_hash(ptr nocapture noundef readonly %0) #11 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !157
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !46
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @ve_info_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !157
  %4 = load ptr, ptr %1, align 8, !tbaa !157
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @biv_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @iv_analyze_result(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare i32 @have_insn_for(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_referenced_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_bb_original(ptr noundef) local_unnamed_addr #3

declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @insert_base_initialization(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 23
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %10) #15
  br label %16

16:                                               ; preds = %2, %8, %14
  %17 = phi ptr [ %15, %14 ], [ null, %2 ], [ %10, %8 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %17, ptr %3, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.iv_to_split, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !152
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = zext i32 %19 to i64
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ 0, %21 ], [ %32, %23 ]
  %25 = phi ptr [ %3, %21 ], [ %31, %23 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %28 = getelementptr inbounds %struct.iv_to_split, ptr %0, i64 0, i32 5, i64 %24
  %29 = load i32, ptr %28, align 4, !tbaa !50
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [1 x %union.rtunion_def], ptr %27, i64 0, i64 %30
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, %22
  br i1 %33, label %34, label %23, !llvm.loop !168

34:                                               ; preds = %23, %16
  %35 = phi ptr [ %3, %16 ], [ %31, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = tail call ptr @copy_rtx(ptr noundef %36) #15
  tail call void @start_sequence() #15
  %38 = getelementptr inbounds %struct.iv_to_split, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !149
  %40 = tail call ptr @force_operand(ptr noundef %37, ptr noundef %39) #15
  %41 = load ptr, ptr %38, align 8, !tbaa !149
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = tail call ptr @emit_move_insn(ptr noundef %41, ptr noundef %40) #15
  br label %45

45:                                               ; preds = %43, %34
  %46 = tail call ptr @get_insns() #15
  tail call void @end_sequence() #15
  %47 = tail call ptr @emit_insn_before(ptr noundef %46, ptr noundef nonnull %1) #15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @split_iv(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.iv_to_split, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.iv_to_split, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !150
  %14 = zext i32 %2 to i64
  %15 = tail call ptr @gen_int_mode(i64 noundef %14, i32 noundef %9) #15
  %16 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %9, ptr noundef %13, ptr noundef %15) #15
  %17 = load ptr, ptr %5, align 8, !tbaa !149
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %20, ptr noundef nonnull %17, ptr noundef %16) #15
  br label %22

22:                                               ; preds = %3, %11
  %23 = phi ptr [ %21, %11 ], [ %6, %3 ]
  %24 = load i32, ptr %1, align 8
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -7
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 23
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %30) #15
  br label %36

36:                                               ; preds = %22, %28, %34
  %37 = phi ptr [ %35, %34 ], [ null, %22 ], [ %30, %28 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr %37, ptr %4, align 8, !tbaa !35
  %38 = getelementptr inbounds %struct.iv_to_split, ptr %0, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !152
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %36
  %42 = zext i32 %39 to i64
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ 0, %41 ], [ %52, %43 ]
  %45 = phi ptr [ %4, %41 ], [ %51, %43 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %48 = getelementptr inbounds %struct.iv_to_split, ptr %0, i64 0, i32 5, i64 %44
  %49 = load i32, ptr %48, align 4, !tbaa !50
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [1 x %union.rtunion_def], ptr %47, i64 0, i64 %50
  %52 = add nuw nsw i64 %44, 1
  %53 = icmp eq i64 %52, %42
  br i1 %53, label %54, label %43, !llvm.loop !168

54:                                               ; preds = %43, %36
  %55 = phi ptr [ %4, %36 ], [ %51, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %56 = call zeroext i8 @validate_change(ptr noundef nonnull %1, ptr noundef %55, ptr noundef %23, i8 noundef zeroext 0) #15
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %101

58:                                               ; preds = %54
  call void @start_sequence() #15
  %59 = call ptr @gen_reg_rtx(i32 noundef %9) #15
  %60 = call ptr @force_operand(ptr noundef %23, ptr noundef %59) #15
  %61 = icmp eq ptr %60, %59
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = call ptr @emit_move_insn(ptr noundef %59, ptr noundef %60) #15
  br label %64

64:                                               ; preds = %62, %58
  %65 = call ptr @get_insns() #15
  call void @end_sequence() #15
  %66 = call ptr @emit_insn_before(ptr noundef %65, ptr noundef nonnull %1) #15
  %67 = call zeroext i8 @validate_change(ptr noundef nonnull %1, ptr noundef %55, ptr noundef %59, i8 noundef zeroext 0) #15
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %64
  %70 = load i32, ptr %1, align 8
  %71 = and i32 %70, 65535
  %72 = add nsw i32 %71, -7
  %73 = icmp ult i32 %72, 4
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !46
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 23
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %76) #15
  br label %82

82:                                               ; preds = %69, %74, %80
  %83 = phi ptr [ %81, %80 ], [ null, %69 ], [ %76, %74 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2008, ptr noundef nonnull @.str.1) #15
  br label %86

86:                                               ; preds = %82, %85
  call void @start_sequence() #15
  store ptr %59, ptr %55, align 8, !tbaa !35
  %87 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %88 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  %90 = call ptr @copy_rtx(ptr noundef %89) #15
  %91 = load ptr, ptr %87, align 8, !tbaa !46
  %92 = call ptr @copy_rtx(ptr noundef %91) #15
  %93 = call ptr @force_operand(ptr noundef %90, ptr noundef %92) #15
  %94 = icmp eq ptr %93, %92
  br i1 %94, label %97, label %95

95:                                               ; preds = %86
  %96 = call ptr @emit_move_insn(ptr noundef %92, ptr noundef %93) #15
  br label %97

97:                                               ; preds = %95, %86
  %98 = call ptr @get_insns() #15
  call void @end_sequence() #15
  %99 = call ptr @emit_insn_before(ptr noundef %98, ptr noundef nonnull %1) #15
  %100 = call ptr @delete_insn(ptr noundef nonnull %1) #15
  br label %101

101:                                              ; preds = %64, %54, %97
  ret void
}

declare ptr @get_bb_copy(ptr noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare i32 @apply_change_group() local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_gen_unary(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare i32 @average_num_loop_insns(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @loop_exit_at_end_p(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = tail call ptr @get_simple_loop_desc(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.niter_desc, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !142
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rtl_bb_info, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !117
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  br label %24

20:                                               ; preds = %27
  %21 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24, !llvm.loop !192

24:                                               ; preds = %15, %20
  %25 = phi ptr [ %13, %15 ], [ %22, %20 ]
  %26 = icmp eq ptr %25, %19
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %25, align 8
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -7
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %32, label %20

32:                                               ; preds = %20, %24, %27, %10, %1
  %33 = phi i8 [ 0, %1 ], [ 1, %10 ], [ 0, %27 ], [ 1, %24 ], [ 1, %20 ]
  ret i8 %33
}

declare i32 @expected_loop_iterations(ptr noundef) local_unnamed_addr #3

declare i32 @num_loop_branches(ptr noundef) local_unnamed_addr #3

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @get_dominated_by(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @expand_simple_binop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @unshare_all_rtl_in_chain(ptr noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare ptr @compare_and_jump_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @block_label(ptr noundef) local_unnamed_addr #3

declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @iterate_fix_dominators(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

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
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }

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
!54 = !{!55, !41, i64 24}
!55 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !56, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !57, i64 80, !57, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!56 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!57 = !{!"", !42, i64 0, !42, i64 8}
!58 = !{!55, !41, i64 0}
!59 = !{!55, !41, i64 4}
!60 = !{!61, !41, i64 8}
!61 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!62 = !{!63, !37, i64 16}
!63 = !{!"niter_desc", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 17, !42, i64 24, !42, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !41, i64 68, !36, i64 72}
!64 = !{!63, !36, i64 40}
!65 = !{!63, !36, i64 56}
!66 = !{!63, !37, i64 17}
!67 = !{!63, !42, i64 24}
!68 = !{!55, !36, i64 48}
!69 = !{!70, !36, i64 0}
!70 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!71 = !{!42, !42, i64 0}
!72 = !{!63, !36, i64 48}
!73 = !{!74, !36, i64 8}
!74 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!75 = !{!76, !41, i64 32}
!76 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!77 = !{!78, !41, i64 48}
!78 = !{!"opt_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !41, i64 48, !36, i64 56, !36, i64 64}
!79 = !{!63, !36, i64 0}
!80 = !{!81, !41, i64 0}
!81 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!82 = distinct !{!82, !52, !53}
!83 = !{!63, !36, i64 8}
!84 = !{!85, !41, i64 8}
!85 = !{!"", !36, i64 0, !41, i64 8}
!86 = !{!87, !41, i64 0}
!87 = !{!"VEC_int_base", !41, i64 0, !41, i64 4, !37, i64 8}
!88 = !{!74, !36, i64 32}
!89 = !{!90, !36, i64 8}
!90 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = !{!55, !41, i64 32}
!94 = !{i8 0, i8 2}
!95 = distinct !{!95, !52, !53}
!96 = !{!55, !41, i64 28}
!97 = !{!55, !36, i64 8}
!98 = !{!99, !42, i64 72}
!99 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!100 = distinct !{!100, !52, !53}
!101 = distinct !{!101, !52, !53}
!102 = distinct !{!102, !52, !53}
!103 = !{!63, !36, i64 72}
!104 = !{!63, !42, i64 32}
!105 = !{!106, !36, i64 0}
!106 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!107 = !{!99, !36, i64 8}
!108 = !{!106, !36, i64 8}
!109 = distinct !{!109, !52, !53}
!110 = !{!55, !41, i64 36}
!111 = !{!112, !41, i64 0}
!112 = !{!"VEC_basic_block_base", !41, i64 0, !41, i64 4, !37, i64 8}
!113 = !{!112, !41, i64 4}
!114 = distinct !{!114, !52, !53}
!115 = distinct !{!115, !52, !53}
!116 = !{!63, !41, i64 68}
!117 = !{!118, !36, i64 8}
!118 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!119 = !{!99, !36, i64 0}
!120 = !{!106, !41, i64 52}
!121 = !{!106, !41, i64 48}
!122 = distinct !{!122, !52, !53}
!123 = distinct !{!123, !52, !53}
!124 = distinct !{!124, !52, !53}
!125 = !{!126, !41, i64 0}
!126 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!127 = !{!85, !36, i64 0}
!128 = !{!90, !36, i64 24}
!129 = distinct !{!129, !52, !53}
!130 = !{!55, !36, i64 56}
!131 = distinct !{!131, !52, !53}
!132 = !{!55, !36, i64 40}
!133 = distinct !{!133, !53}
!134 = !{!78, !36, i64 0}
!135 = !{!78, !36, i64 8}
!136 = !{!78, !36, i64 16}
!137 = !{!78, !36, i64 64}
!138 = !{!78, !36, i64 56}
!139 = !{!78, !36, i64 24}
!140 = !{!78, !36, i64 32}
!141 = !{!78, !36, i64 40}
!142 = !{!55, !36, i64 16}
!143 = !{!144, !36, i64 8}
!144 = !{!"rtx_iv", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48}
!145 = !{!144, !41, i64 44}
!146 = !{!144, !41, i64 40}
!147 = !{!148, !36, i64 0}
!148 = !{!"iv_to_split", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !37, i64 36}
!149 = !{!148, !36, i64 8}
!150 = !{!148, !36, i64 16}
!151 = !{!148, !36, i64 24}
!152 = !{!148, !41, i64 32}
!153 = distinct !{!153, !52, !53}
!154 = distinct !{!154, !52, !53}
!155 = distinct !{!155, !52, !53}
!156 = distinct !{!156, !52, !53}
!157 = !{!158, !36, i64 0}
!158 = !{!"var_to_expand", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!159 = !{!158, !36, i64 8}
!160 = !{!158, !36, i64 16}
!161 = !{!158, !36, i64 24}
!162 = !{!158, !41, i64 32}
!163 = !{!158, !41, i64 36}
!164 = !{!158, !41, i64 40}
!165 = !{!158, !41, i64 44}
!166 = distinct !{!166, !52, !53}
!167 = distinct !{!167, !52, !53}
!168 = distinct !{!168, !52, !53}
!169 = distinct !{!169, !52, !53}
!170 = !{!76, !36, i64 16}
!171 = !{!99, !36, i64 16}
!172 = !{!118, !36, i64 0}
!173 = distinct !{!173, !52, !53}
!174 = !{!175, !41, i64 0}
!175 = !{!"VEC_rtx_base", !41, i64 0, !41, i64 4, !37, i64 8}
!176 = !{!175, !41, i64 4}
!177 = distinct !{!177, !52, !53}
!178 = distinct !{!178, !52, !53}
!179 = !{!180, !37, i64 49}
!180 = !{!"real_format", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !37, i64 44, !37, i64 45, !37, i64 46, !37, i64 47, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51}
!181 = distinct !{!181, !52, !53}
!182 = distinct !{!182, !52, !53}
!183 = distinct !{!183, !52, !53}
!184 = distinct !{!184, !52, !53}
!185 = distinct !{!185, !52, !53}
!186 = distinct !{!186, !52, !53}
!187 = distinct !{!187, !52, !53}
!188 = distinct !{!188, !52, !53}
!189 = distinct !{!189, !52, !53}
!190 = distinct !{!190, !52, !53}
!191 = distinct !{!191, !52, !53}
!192 = distinct !{!192, !52, !53}
