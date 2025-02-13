; ModuleID = 'loop-unroll.c'
source_filename = "loop-unroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.loop_iterator = type { ptr, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.niter_desc = type { ptr, ptr, i8, i8, i64, i64, ptr, ptr, ptr, i8, i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.opt_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.iv_to_split = type { ptr, ptr, ptr, ptr, i32, [3 x i32] }
%struct.var_to_expand = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.rtx_iv = type { ptr, ptr, i32, ptr, ptr, i32, i32, i8 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unroll_and_peel_loops(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  tail call fastcc void @peel_loops_completely() #16
  tail call fastcc void @decide_unrolling_and_peeling(i32 noundef %0) #16
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %2) #16
  %4 = load ptr, ptr %2, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1, %16
  %7 = phi ptr [ %17, %16 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !9
  switch i32 %9, label %15 [
    i32 1, label %10
    i32 2, label %11
    i32 3, label %12
    i32 4, label %13
    i32 5, label %14
    i32 0, label %16
  ]

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 178, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %6, %10
  tail call fastcc void @peel_loop_simple(ptr noundef nonnull %7) #16
  br label %16

12:                                               ; preds = %6
  tail call fastcc void @unroll_loop_constant_iterations(ptr noundef nonnull %7) #16
  br label %16

13:                                               ; preds = %6
  tail call fastcc void @unroll_loop_runtime_iterations(ptr noundef nonnull %7) #16
  br label %16

14:                                               ; preds = %6
  tail call fastcc void @unroll_loop_stupid(ptr noundef nonnull %7) #16
  br label %16

15:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #17
  br label %16

16:                                               ; preds = %6, %15, %14, %13, %12, %11
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #16
  %17 = load ptr, ptr %2, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !15

19:                                               ; preds = %16, %1
  tail call void @iv_analysis_done() #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @peel_loops_completely() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call fastcc void @fel_init(ptr noundef nonnull %2, ptr noundef nonnull %1) #16
  %3 = load ptr, ptr %1, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %0, %24
  %6 = phi ptr [ %25, %24 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 4
  store i32 0, ptr %7, align 8, !tbaa !9
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %6, align 8, !tbaa !17
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.2, i32 noundef %11) #16
  br label %13

13:                                               ; preds = %10, %5
  %14 = tail call i32 @num_loop_insns(ptr noundef nonnull %6) #17
  %15 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 1
  store i32 %14, ptr %15, align 4, !tbaa !18
  tail call fastcc void @decide_peel_once_rolling(ptr noundef nonnull %6) #16
  %16 = load i32, ptr %7, align 8, !tbaa !9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  tail call fastcc void @decide_peel_completely(ptr noundef nonnull %6) #16
  %19 = load i32, ptr %7, align 8, !tbaa !9
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ %19, %18 ], [ %16, %13 ]
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call fastcc void @peel_loop_completely(ptr noundef nonnull %6) #16
  br label %24

24:                                               ; preds = %20, %23
  call fastcc void @fel_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #16
  %25 = load ptr, ptr %1, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %5, !llvm.loop !19

27:                                               ; preds = %24, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decide_unrolling_and_peeling(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %2) #16
  %4 = load ptr, ptr %2, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %56, label %6

6:                                                ; preds = %1, %53
  %7 = phi ptr [ %54, %53 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 4
  store i32 0, ptr %8, align 8, !tbaa !9
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %7, align 8, !tbaa !17
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.19, i32 noundef %12) #16
  br label %14

14:                                               ; preds = %11, %6
  %15 = tail call zeroext i8 @optimize_loop_for_size_p(ptr noundef nonnull %7) #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %53, label %20

20:                                               ; preds = %17
  %21 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 35, i64 1, ptr nonnull %18)
  br label %53

22:                                               ; preds = %14
  %23 = tail call zeroext i8 @can_duplicate_loop_p(ptr noundef nonnull %7) #17
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %53, label %28

28:                                               ; preds = %25
  %29 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 42, i64 1, ptr nonnull %26)
  br label %53

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %34
  %38 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 42, i64 1, ptr nonnull %35)
  br label %53

39:                                               ; preds = %30
  %40 = tail call i32 @num_loop_insns(ptr noundef nonnull %7) #17
  %41 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 1
  store i32 %40, ptr %41, align 4, !tbaa !18
  %42 = tail call i32 @average_num_loop_insns(ptr noundef nonnull %7) #17
  %43 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 5
  store i32 %42, ptr %43, align 8, !tbaa !21
  tail call fastcc void @decide_unroll_constant_iterations(ptr noundef nonnull %7, i32 noundef %0) #16
  %44 = load i32, ptr %8, align 8, !tbaa !9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  tail call fastcc void @decide_unroll_runtime_iterations(ptr noundef nonnull %7, i32 noundef %0) #16
  %47 = load i32, ptr %8, align 8, !tbaa !9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  tail call fastcc void @decide_unroll_stupid(ptr noundef nonnull %7, i32 noundef %0) #16
  %50 = load i32, ptr %8, align 8, !tbaa !9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call fastcc void @decide_peel_simple(ptr noundef nonnull %7, i32 noundef %0) #16
  br label %53

53:                                               ; preds = %39, %46, %49, %52, %34, %37, %25, %28, %17, %20
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #16
  %54 = load ptr, ptr %2, align 8, !tbaa !5
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %6, !llvm.loop !22

56:                                               ; preds = %53, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !23
  %4 = load ptr, ptr @cfun, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !27
  store ptr null, ptr %1, align 8, !tbaa !5
  br label %43

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #16
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #16
  store ptr %11, ptr %0, align 8, !tbaa !27
  %12 = load ptr, ptr @cfun, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !28
  br label %17

17:                                               ; preds = %17, %9
  %18 = phi ptr [ %16, %9 ], [ %20, %17 ]
  %19 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !llvm.loop !30

22:                                               ; preds = %17, %40
  %23 = phi ptr [ %41, %40 ], [ %18, %17 ]
  %24 = load i32, ptr %23, align 8, !tbaa !17
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8, !tbaa !27
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %27, i32 noundef %24) #16
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !31
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.loop, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %32, !llvm.loop !32

37:                                               ; preds = %28
  %38 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %23) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %32, %37
  %41 = phi ptr [ %38, %37 ], [ %33, %32 ]
  br label %22

42:                                               ; preds = %37
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #16
  br label %43

43:                                               ; preds = %42, %8
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @peel_loop_simple(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !33
  %4 = tail call ptr @get_simple_loop_desc(ptr noundef %0) #17
  %5 = load i32, ptr @flag_split_ivs_in_unroller, align 4, !tbaa !34
  %6 = icmp ne i32 %5, 0
  %7 = icmp ugt i32 %3, 1
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call fastcc ptr @analyze_insns_in_loop(ptr noundef nonnull %0) #16
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ %10, %9 ], [ null, %1 ]
  %13 = add i32 %3, 1
  %14 = tail call ptr @sbitmap_alloc(i32 noundef %13) #17
  tail call void @sbitmap_zero(ptr noundef %14) #17
  tail call fastcc void @opt_info_start_duplication(ptr noundef %12) #16
  %15 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #17
  %16 = icmp eq ptr %12, null
  %17 = select i1 %16, i32 1, i32 3
  %18 = tail call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %0, ptr noundef %15, i32 noundef %3, ptr noundef %14, ptr noundef null, ptr noundef null, i32 noundef %17) #17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1312, ptr noundef nonnull @.str.1) #17
  br label %21

21:                                               ; preds = %11, %20
  tail call void @free(ptr noundef %14) #16
  br i1 %16, label %23, label %22

22:                                               ; preds = %21
  tail call fastcc void @apply_opt_in_copies(ptr noundef nonnull %12, i32 noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  tail call fastcc void @free_opt_info(ptr noundef nonnull %12) #16
  br label %23

23:                                               ; preds = %22, %21
  %24 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 2
  %25 = load i8, ptr %24, align 8, !tbaa !35
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !37
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = zext i32 %3 to i64
  %33 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 4
  %34 = load i64, ptr %33, align 8, !tbaa !38
  %35 = sub i64 %34, %32
  store i64 %35, ptr %33, align 8, !tbaa !38
  %36 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %35) #17
  %37 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 11
  store ptr %36, ptr %37, align 8, !tbaa !39
  %38 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 7
  store ptr null, ptr %38, align 8, !tbaa !40
  br label %40

39:                                               ; preds = %27
  tail call void @free_simple_loop_desc(ptr noundef nonnull %0) #17
  br label %40

40:                                               ; preds = %31, %39, %23
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %41, ptr noundef nonnull @.str.42, i32 noundef %3) #16
  br label %45

45:                                               ; preds = %43, %40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unroll_loop_constant_iterations(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !33
  %6 = tail call ptr @get_simple_loop_desc(ptr noundef %0) #17
  %7 = tail call fastcc zeroext i8 @loop_exit_at_end_p(ptr noundef %0) #16, !range !41
  %8 = getelementptr inbounds %struct.niter_desc, ptr %6, i64 0, i32 4
  %9 = load i64, ptr %8, align 8, !tbaa !38
  %10 = add i32 %5, 1
  %11 = zext i32 %10 to i64
  %12 = icmp ugt i64 %9, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 656, ptr noundef nonnull @.str.1) #17
  br label %14

14:                                               ; preds = %1, %13
  %15 = urem i64 %9, %11
  %16 = trunc i64 %15 to i32
  %17 = tail call ptr @sbitmap_alloc(i32 noundef %10) #17
  tail call void @sbitmap_ones(ptr noundef %17) #17
  store ptr null, ptr %2, align 8, !tbaa !5
  %18 = load i32, ptr @flag_split_ivs_in_unroller, align 4, !tbaa !34
  %19 = icmp ne i32 %18, 0
  %20 = load i32, ptr @flag_variable_expansion_in_unroller, align 4
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = tail call fastcc ptr @analyze_insns_in_loop(ptr noundef nonnull %0) #16
  br label %25

25:                                               ; preds = %14, %23
  %26 = phi ptr [ %24, %23 ], [ null, %14 ]
  %27 = icmp eq i8 %7, 0
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %27, label %30, label %58

30:                                               ; preds = %25
  br i1 %29, label %33, label %31

31:                                               ; preds = %30
  %32 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 35, i64 1, ptr nonnull %28)
  br label %33

33:                                               ; preds = %31, %30
  tail call fastcc void @RESET_BIT(ptr noundef %17, i32 noundef 0) #16
  %34 = getelementptr inbounds %struct.niter_desc, ptr %6, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !40
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call fastcc void @RESET_BIT(ptr noundef %17, i32 noundef 1) #16
  br label %38

38:                                               ; preds = %37, %33
  %39 = icmp eq i32 %16, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %38
  tail call fastcc void @opt_info_start_duplication(ptr noundef %26) #16
  %41 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #17
  %42 = load ptr, ptr %6, align 8, !tbaa !42
  %43 = icmp ne ptr %26, null
  %44 = icmp ne i32 %16, 1
  %45 = and i1 %44, %43
  %46 = select i1 %45, i32 3, i32 1
  %47 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %0, ptr noundef %41, i32 noundef %16, ptr noundef %17, ptr noundef %42, ptr noundef nonnull %2, i32 noundef %46) #17
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 693, ptr noundef nonnull @.str.1) #17
  br label %50

50:                                               ; preds = %40, %49
  br i1 %45, label %51, label %52

51:                                               ; preds = %50
  call fastcc void @apply_opt_in_copies(ptr noundef nonnull %26, i32 noundef %16, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  br label %52

52:                                               ; preds = %51, %50
  store ptr null, ptr %34, align 8, !tbaa !40
  %53 = load <2 x i64>, ptr %8, align 8, !tbaa !43
  %54 = insertelement <2 x i64> poison, i64 %15, i64 0
  %55 = shufflevector <2 x i64> %54, <2 x i64> poison, <2 x i32> zeroinitializer
  %56 = sub <2 x i64> %53, %55
  store <2 x i64> %56, ptr %8, align 8, !tbaa !43
  br label %57

57:                                               ; preds = %52, %38
  call fastcc void @SET_BIT(ptr noundef %17, i32 noundef 1) #16
  br label %92

58:                                               ; preds = %25
  br i1 %29, label %61, label %59

59:                                               ; preds = %58
  %60 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 29, i64 1, ptr nonnull %28)
  br label %61

61:                                               ; preds = %59, %58
  %62 = icmp eq i32 %5, %16
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.niter_desc, ptr %6, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !40
  %66 = icmp eq ptr %65, null
  br i1 %66, label %91, label %67

67:                                               ; preds = %63, %61
  tail call fastcc void @RESET_BIT(ptr noundef %17, i32 noundef 0) #16
  %68 = getelementptr inbounds %struct.niter_desc, ptr %6, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !40
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  tail call fastcc void @RESET_BIT(ptr noundef %17, i32 noundef 1) #16
  br label %72

72:                                               ; preds = %71, %67
  tail call fastcc void @opt_info_start_duplication(ptr noundef %26) #16
  %73 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #17
  %74 = add nuw i32 %16, 1
  %75 = load ptr, ptr %6, align 8, !tbaa !42
  %76 = icmp ne ptr %26, null
  %77 = icmp ne i32 %16, 0
  %78 = and i1 %77, %76
  %79 = select i1 %78, i32 3, i32 1
  %80 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %0, ptr noundef %73, i32 noundef %74, ptr noundef %17, ptr noundef %75, ptr noundef nonnull %2, i32 noundef %79) #17
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 732, ptr noundef nonnull @.str.1) #17
  br label %83

83:                                               ; preds = %72, %82
  br i1 %78, label %84, label %85

84:                                               ; preds = %83
  call fastcc void @apply_opt_in_copies(ptr noundef nonnull %26, i32 noundef %74, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  br label %85

85:                                               ; preds = %84, %83
  %86 = zext i32 %74 to i64
  %87 = load <2 x i64>, ptr %8, align 8, !tbaa !43
  %88 = insertelement <2 x i64> poison, i64 %86, i64 0
  %89 = shufflevector <2 x i64> %88, <2 x i64> poison, <2 x i32> zeroinitializer
  %90 = sub <2 x i64> %87, %89
  store <2 x i64> %90, ptr %8, align 8, !tbaa !43
  store ptr null, ptr %68, align 8, !tbaa !40
  call fastcc void @SET_BIT(ptr noundef %17, i32 noundef 0) #16
  call fastcc void @SET_BIT(ptr noundef %17, i32 noundef 1) #16
  br label %91

91:                                               ; preds = %85, %63
  call fastcc void @RESET_BIT(ptr noundef %17, i32 noundef %5) #16
  br label %92

92:                                               ; preds = %91, %57
  call fastcc void @opt_info_start_duplication(ptr noundef %26) #16
  %93 = call ptr @loop_latch_edge(ptr noundef nonnull %0) #17
  %94 = load ptr, ptr %6, align 8, !tbaa !42
  %95 = icmp eq ptr %26, null
  %96 = select i1 %95, i32 1, i32 3
  %97 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %0, ptr noundef %93, i32 noundef %5, ptr noundef %17, ptr noundef %94, ptr noundef nonnull %2, i32 noundef %96) #17
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 759, ptr noundef nonnull @.str.1) #17
  br label %100

100:                                              ; preds = %92, %99
  br i1 %95, label %102, label %101

101:                                              ; preds = %100
  call fastcc void @apply_opt_in_copies(ptr noundef nonnull %26, i32 noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #16
  call fastcc void @free_opt_info(ptr noundef nonnull %26) #16
  br label %102

102:                                              ; preds = %101, %100
  call void @free(ptr noundef %17) #16
  br i1 %27, label %123, label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.niter_desc, ptr %6, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !44
  %106 = load ptr, ptr %105, align 8, !tbaa !45
  %107 = call ptr @get_bb_copy(ptr noundef %106) #17
  %108 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !47
  %110 = call fastcc ptr @VEC_edge_base_index(ptr noundef %109, i32 noundef 0) #16
  %111 = getelementptr inbounds %struct.edge_def, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !49
  %113 = load ptr, ptr %6, align 8, !tbaa !42
  %114 = getelementptr inbounds %struct.edge_def, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !49
  %116 = icmp eq ptr %112, %115
  br i1 %116, label %119, label %117

117:                                              ; preds = %103
  %118 = call fastcc ptr @VEC_edge_base_index(ptr noundef %109, i32 noundef 1) #16
  br label %119

119:                                              ; preds = %103, %117
  %120 = phi ptr [ %118, %117 ], [ %110, %103 ]
  %121 = phi i32 [ 0, %117 ], [ 1, %103 ]
  store ptr %120, ptr %6, align 8, !tbaa !42
  %122 = call fastcc ptr @VEC_edge_base_index(ptr noundef %109, i32 noundef %121) #16
  store ptr %122, ptr %104, align 8, !tbaa !44
  br label %123

123:                                              ; preds = %119, %102
  %124 = load i64, ptr %8, align 8, !tbaa !38
  %125 = udiv i64 %124, %11
  store i64 %125, ptr %8, align 8, !tbaa !38
  %126 = getelementptr inbounds %struct.niter_desc, ptr %6, i64 0, i32 5
  %127 = load i64, ptr %126, align 8, !tbaa !50
  %128 = udiv i64 %127, %11
  store i64 %128, ptr %126, align 8, !tbaa !50
  %129 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %125) #17
  %130 = getelementptr inbounds %struct.niter_desc, ptr %6, i64 0, i32 11
  store ptr %129, ptr %130, align 8, !tbaa !39
  %131 = load ptr, ptr %2, align 8
  %132 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %131, i32 noundef 0, ptr noundef nonnull %3) #16, !range !51
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %123, %134
  %135 = phi i32 [ %138, %134 ], [ 0, %123 ]
  %136 = load ptr, ptr %3, align 8, !tbaa !5
  %137 = call zeroext i8 @remove_path(ptr noundef %136) #17
  %138 = add i32 %135, 1
  %139 = load ptr, ptr %2, align 8
  %140 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %139, i32 noundef %138, ptr noundef nonnull %3) #16, !range !51
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %134, !llvm.loop !52

142:                                              ; preds = %134, %123
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %2) #16
  %143 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = call i32 @num_loop_insns(ptr noundef %0) #17
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %143, ptr noundef nonnull @.str.39, i32 noundef %5, i32 noundef %146) #16
  br label %148

148:                                              ; preds = %145, %142
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unroll_loop_runtime_iterations(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !33
  %9 = tail call ptr @get_simple_loop_desc(ptr noundef %0) #17
  %10 = tail call fastcc zeroext i8 @loop_exit_at_end_p(ptr noundef %0) #16, !range !41
  %11 = load i32, ptr @flag_split_ivs_in_unroller, align 4, !tbaa !34
  %12 = icmp ne i32 %11, 0
  %13 = load i32, ptr @flag_variable_expansion_in_unroller, align 4
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = tail call fastcc ptr @analyze_insns_in_loop(ptr noundef nonnull %0) #16
  br label %18

18:                                               ; preds = %1, %16
  %19 = phi ptr [ %17, %16 ], [ null, %1 ]
  store ptr null, ptr %2, align 8, !tbaa !5
  %20 = tail call ptr @get_loop_body(ptr noundef nonnull %0) #17
  %21 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !53
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %18, %41
  %25 = phi i64 [ %42, %41 ], [ 0, %18 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %26 = getelementptr inbounds ptr, ptr %20, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = tail call ptr @get_dominated_by(i32 noundef 1, ptr noundef %27) #17
  store ptr %28, ptr %5, align 8, !tbaa !5
  %29 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %28, i32 noundef 0, ptr noundef nonnull %6) #16, !range !51
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %24, %37
  %32 = phi i32 [ %38, %37 ], [ 0, %24 ]
  %33 = load ptr, ptr %6, align 8, !tbaa !5
  %34 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %33) #17
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %2, ptr noundef %33) #16
  br label %37

37:                                               ; preds = %31, %36
  %38 = add i32 %32, 1
  %39 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %28, i32 noundef %38, ptr noundef nonnull %6) #16, !range !51
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %31, !llvm.loop !54

41:                                               ; preds = %37, %24
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %42 = add nuw nsw i64 %25, 1
  %43 = load i32, ptr %21, align 4, !tbaa !53
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %24, label %46, !llvm.loop !55

46:                                               ; preds = %41, %18
  tail call void @free(ptr noundef %20) #16
  %47 = icmp ne i8 %10, 0
  %48 = select i1 %47, i32 %8, i32 0
  %49 = xor i1 %47, true
  %50 = sext i1 %49 to i32
  %51 = add i32 %8, %50
  tail call void @start_sequence() #17
  %52 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 10
  %53 = load i32, ptr %52, align 4, !tbaa !56
  %54 = tail call ptr @gen_reg_rtx(i32 noundef %53) #17
  %55 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 11
  %56 = load ptr, ptr %55, align 8, !tbaa !39
  %57 = tail call ptr @copy_rtx(ptr noundef %56) #17
  %58 = tail call ptr @force_operand(ptr noundef %57, ptr noundef %54) #17
  %59 = icmp eq ptr %58, %54
  br i1 %59, label %62, label %60

60:                                               ; preds = %46
  %61 = tail call ptr @emit_move_insn(ptr noundef %54, ptr noundef %58) #17
  br label %62

62:                                               ; preds = %60, %46
  %63 = load i32, ptr %52, align 4, !tbaa !56
  %64 = zext i32 %8 to i64
  %65 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %64) #17
  %66 = tail call ptr @expand_simple_binop(i32 noundef %63, i32 noundef 61, ptr noundef %54, ptr noundef %65, ptr noundef null, i32 noundef 0, i32 noundef 3) #17
  %67 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  tail call void @unshare_all_rtl_in_chain(ptr noundef %67) #17
  %68 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #17
  %69 = tail call ptr @split_edge_and_insert(ptr noundef %68, ptr noundef %67) #16
  store ptr null, ptr %3, align 8, !tbaa !5
  %70 = add i32 %8, 2
  %71 = tail call ptr @sbitmap_alloc(i32 noundef %70) #17
  tail call void @sbitmap_zero(ptr noundef %71) #17
  br i1 %47, label %77, label %72

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !40
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  tail call fastcc void @SET_BIT(ptr noundef %71, i32 noundef 1) #16
  br label %77

77:                                               ; preds = %76, %72, %62
  %78 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #17
  %79 = load ptr, ptr %78, align 8, !tbaa !45
  %80 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #17
  %81 = load ptr, ptr %9, align 8, !tbaa !42
  %82 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %0, ptr noundef %80, i32 noundef 1, ptr noundef %71, ptr noundef %81, ptr noundef nonnull %3, i32 noundef 1) #17
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1057, ptr noundef nonnull @.str.1) #17
  br label %85

85:                                               ; preds = %77, %84
  %86 = call ptr @loop_preheader_edge(ptr noundef nonnull %0) #17
  %87 = call ptr @split_edge(ptr noundef %86) #17
  %88 = icmp eq i32 %51, 0
  br i1 %88, label %136, label %89

89:                                               ; preds = %85
  %90 = add i32 %51, -1
  %91 = zext i32 %90 to i64
  %92 = zext nneg i8 %10 to i64
  %93 = zext i32 %51 to i64
  br label %94

94:                                               ; preds = %89, %122
  %95 = phi i64 [ 0, %89 ], [ %134, %122 ]
  %96 = phi ptr [ %87, %89 ], [ %124, %122 ]
  call void @sbitmap_zero(ptr noundef %71) #17
  %97 = icmp eq i64 %95, %91
  %98 = and i1 %47, %97
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  call fastcc void @SET_BIT(ptr noundef %71, i32 noundef 1) #16
  br label %100

100:                                              ; preds = %94, %99
  %101 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %102 = load ptr, ptr %9, align 8, !tbaa !42
  %103 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %101, i32 noundef 1, ptr noundef %71, ptr noundef %102, ptr noundef nonnull %3, i32 noundef 1) #17
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1072, ptr noundef nonnull @.str.1) #17
  br label %106

106:                                              ; preds = %100, %105
  %107 = add nuw nsw i64 %95, %92
  %108 = trunc i64 %107 to i32
  %109 = sub i32 %51, %108
  %110 = trunc i64 %95 to i32
  %111 = add i32 %110, 2
  %112 = udiv i32 10000, %111
  %113 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %114 = call ptr @split_edge(ptr noundef %113) #17
  %115 = call ptr @copy_rtx(ptr noundef %66) #17
  %116 = zext i32 %109 to i64
  %117 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %116) #17
  %118 = call ptr @block_label(ptr noundef %114) #17
  %119 = call ptr @compare_and_jump_seq(ptr noundef %115, ptr noundef %117, i32 noundef 81, ptr noundef %118, i32 noundef %112, ptr noundef null) #17
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %106
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1085, ptr noundef nonnull @.str.1) #17
  br label %122

122:                                              ; preds = %106, %121
  %123 = call fastcc ptr @single_pred_edge(ptr noundef %96) #16
  %124 = call ptr @split_edge_and_insert(ptr noundef %123, ptr noundef %119) #16
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %114, ptr noundef %124) #17
  %125 = sub nuw nsw i32 10000, %112
  %126 = call fastcc ptr @single_pred_edge(ptr noundef %124) #16
  %127 = getelementptr inbounds %struct.edge_def, ptr %126, i64 0, i32 8
  store i32 %125, ptr %127, align 4, !tbaa !57
  %128 = call fastcc ptr @single_succ_edge(ptr noundef %124) #16
  %129 = getelementptr inbounds %struct.edge_def, ptr %128, i64 0, i32 7
  %130 = load i32, ptr %129, align 8, !tbaa !58
  %131 = and i32 %130, 128
  %132 = call ptr @make_edge(ptr noundef %124, ptr noundef %114, i32 noundef %131) #17
  %133 = getelementptr inbounds %struct.edge_def, ptr %132, i64 0, i32 8
  store i32 %112, ptr %133, align 4, !tbaa !57
  %134 = add nuw nsw i64 %95, 1
  %135 = icmp eq i64 %134, %93
  br i1 %135, label %136, label %94, !llvm.loop !59

136:                                              ; preds = %122, %85
  %137 = phi ptr [ undef, %85 ], [ %132, %122 ]
  store ptr %137, ptr %4, align 8, !tbaa !5
  br i1 %47, label %161, label %138

138:                                              ; preds = %136
  %139 = add i32 %8, 1
  %140 = udiv i32 10000, %139
  %141 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %142 = call ptr @split_edge(ptr noundef %141) #17
  %143 = call ptr @copy_rtx(ptr noundef %66) #17
  %144 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %145 = call ptr @block_label(ptr noundef %142) #17
  %146 = call ptr @compare_and_jump_seq(ptr noundef %143, ptr noundef %144, i32 noundef 81, ptr noundef %145, i32 noundef %140, ptr noundef null) #17
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1104, ptr noundef nonnull @.str.1) #17
  br label %149

149:                                              ; preds = %138, %148
  %150 = call fastcc ptr @single_succ_edge(ptr noundef %79) #16
  %151 = call ptr @split_edge_and_insert(ptr noundef %150, ptr noundef %146) #16
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %142, ptr noundef %151) #17
  %152 = sub nuw nsw i32 10000, %140
  %153 = call fastcc ptr @single_succ_edge(ptr noundef %151) #16
  %154 = getelementptr inbounds %struct.edge_def, ptr %153, i64 0, i32 8
  store i32 %152, ptr %154, align 4, !tbaa !57
  %155 = call fastcc ptr @single_succ_edge(ptr noundef %151) #16
  %156 = getelementptr inbounds %struct.edge_def, ptr %155, i64 0, i32 7
  %157 = load i32, ptr %156, align 8, !tbaa !58
  %158 = and i32 %157, 128
  %159 = call ptr @make_edge(ptr noundef %151, ptr noundef %142, i32 noundef %158) #17
  store ptr %159, ptr %4, align 8, !tbaa !5
  %160 = getelementptr inbounds %struct.edge_def, ptr %159, i64 0, i32 8
  store i32 %140, ptr %160, align 4, !tbaa !57
  br label %161

161:                                              ; preds = %149, %136
  %162 = load ptr, ptr %2, align 8, !tbaa !5
  call void @iterate_fix_dominators(i32 noundef 1, ptr noundef %162, i8 noundef zeroext 0) #17
  call void @sbitmap_ones(ptr noundef %71) #17
  call fastcc void @RESET_BIT(ptr noundef %71, i32 noundef %48) #16
  call fastcc void @opt_info_start_duplication(ptr noundef %19) #16
  %163 = call ptr @loop_latch_edge(ptr noundef %0) #17
  %164 = load ptr, ptr %9, align 8, !tbaa !42
  %165 = icmp eq ptr %19, null
  %166 = select i1 %165, i32 1, i32 3
  %167 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %163, i32 noundef %8, ptr noundef %71, ptr noundef %164, ptr noundef nonnull %3, i32 noundef %166) #17
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1131, ptr noundef nonnull @.str.1) #17
  br label %170

170:                                              ; preds = %161, %169
  br i1 %165, label %172, label %171

171:                                              ; preds = %170
  call fastcc void @apply_opt_in_copies(ptr noundef nonnull %19, i32 noundef %8, i8 noundef zeroext 1, i8 noundef zeroext 1) #16
  call fastcc void @free_opt_info(ptr noundef nonnull %19) #16
  br label %172

172:                                              ; preds = %171, %170
  call void @free(ptr noundef %71) #16
  br i1 %47, label %173, label %193

173:                                              ; preds = %172
  %174 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !44
  %176 = load ptr, ptr %175, align 8, !tbaa !45
  %177 = call ptr @get_bb_copy(ptr noundef %176) #17
  %178 = getelementptr inbounds %struct.basic_block_def, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !47
  %180 = call fastcc ptr @VEC_edge_base_index(ptr noundef %179, i32 noundef 0) #16
  %181 = getelementptr inbounds %struct.edge_def, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !49
  %183 = load ptr, ptr %9, align 8, !tbaa !42
  %184 = getelementptr inbounds %struct.edge_def, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !49
  %186 = icmp eq ptr %182, %185
  br i1 %186, label %189, label %187

187:                                              ; preds = %173
  %188 = call fastcc ptr @VEC_edge_base_index(ptr noundef %179, i32 noundef 1) #16
  br label %189

189:                                              ; preds = %173, %187
  %190 = phi ptr [ %188, %187 ], [ %180, %173 ]
  %191 = phi i32 [ 0, %187 ], [ 1, %173 ]
  store ptr %190, ptr %9, align 8, !tbaa !42
  %192 = call fastcc ptr @VEC_edge_base_index(ptr noundef %179, i32 noundef %191) #16
  store ptr %192, ptr %174, align 8, !tbaa !44
  br label %193

193:                                              ; preds = %189, %172
  %194 = load ptr, ptr %3, align 8
  %195 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %194, i32 noundef 0, ptr noundef nonnull %4) #16, !range !51
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %205, label %197

197:                                              ; preds = %193, %197
  %198 = phi i32 [ %201, %197 ], [ 0, %193 ]
  %199 = load ptr, ptr %4, align 8, !tbaa !5
  %200 = call zeroext i8 @remove_path(ptr noundef %199) #17
  %201 = add i32 %198, 1
  %202 = load ptr, ptr %3, align 8
  %203 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %202, i32 noundef %201, ptr noundef nonnull %4) #16, !range !51
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %197, !llvm.loop !60

205:                                              ; preds = %197, %193
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %3) #16
  %206 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 3
  %207 = load i8, ptr %206, align 1, !tbaa !37
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1168, ptr noundef nonnull @.str.1) #17
  br label %210

210:                                              ; preds = %205, %209
  %211 = load i32, ptr %52, align 4, !tbaa !56
  %212 = add i32 %8, 1
  %213 = zext i32 %212 to i64
  %214 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %213) #17
  %215 = call ptr @simplify_gen_binary(i32 noundef 59, i32 noundef %211, ptr noundef %54, ptr noundef %214) #17
  store ptr %215, ptr %55, align 8, !tbaa !39
  %216 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 5
  %217 = load i64, ptr %216, align 8, !tbaa !50
  %218 = udiv i64 %217, %213
  store i64 %218, ptr %216, align 8, !tbaa !50
  br i1 %47, label %219, label %226

219:                                              ; preds = %210
  %220 = load i32, ptr %52, align 4, !tbaa !56
  %221 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !5
  %222 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %220, ptr noundef %215, ptr noundef %221) #17
  store ptr %222, ptr %55, align 8, !tbaa !39
  %223 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 7
  store ptr null, ptr %223, align 8, !tbaa !40
  %224 = load i64, ptr %216, align 8, !tbaa !50
  %225 = add i64 %224, -1
  store i64 %225, ptr %216, align 8, !tbaa !50
  br label %226

226:                                              ; preds = %219, %210
  %227 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %228 = icmp eq ptr %227, null
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = call i32 @num_loop_insns(ptr noundef %0) #17
  %231 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %227, ptr noundef nonnull @.str.40, i32 noundef %8, i32 noundef %230) #16
  br label %232

232:                                              ; preds = %229, %226
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unroll_loop_stupid(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !33
  %4 = tail call ptr @get_simple_loop_desc(ptr noundef %0) #17
  %5 = load i32, ptr @flag_split_ivs_in_unroller, align 4, !tbaa !34
  %6 = icmp ne i32 %5, 0
  %7 = load i32, ptr @flag_variable_expansion_in_unroller, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = tail call fastcc ptr @analyze_insns_in_loop(ptr noundef nonnull %0) #16
  br label %12

12:                                               ; preds = %1, %10
  %13 = phi ptr [ %11, %10 ], [ null, %1 ]
  %14 = add i32 %3, 1
  %15 = tail call ptr @sbitmap_alloc(i32 noundef %14) #17
  tail call void @sbitmap_zero(ptr noundef %15) #17
  tail call fastcc void @opt_info_start_duplication(ptr noundef %13) #16
  %16 = tail call ptr @loop_latch_edge(ptr noundef nonnull %0) #17
  %17 = icmp eq ptr %13, null
  %18 = select i1 %17, i32 1, i32 3
  %19 = tail call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %0, ptr noundef %16, i32 noundef %3, ptr noundef %15, ptr noundef null, ptr noundef null, i32 noundef %18) #17
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1463, ptr noundef nonnull @.str.1) #17
  br label %22

22:                                               ; preds = %12, %21
  br i1 %17, label %24, label %23

23:                                               ; preds = %22
  tail call fastcc void @apply_opt_in_copies(ptr noundef nonnull %13, i32 noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 1) #16
  tail call fastcc void @free_opt_info(ptr noundef nonnull %13) #16
  br label %24

24:                                               ; preds = %23, %22
  tail call void @free(ptr noundef %15) #16
  %25 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 2
  %26 = load i8, ptr %25, align 8, !tbaa !35
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i8 0, ptr %25, align 8, !tbaa !35
  br label %29

29:                                               ; preds = %28, %24
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @num_loop_insns(ptr noundef nonnull %0) #17
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %30, ptr noundef nonnull @.str.43, i32 noundef %3, i32 noundef %33) #16
  br label %35

35:                                               ; preds = %32, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !23
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !27
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #16, !range !51
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !23
  %13 = load i32, ptr %3, align 4, !tbaa !34
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #16
  store ptr %14, ptr %1, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !61

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #16
  store ptr null, ptr %1, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare void @iv_analysis_done() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @split_edge_and_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @split_edge(ptr noundef %0) #17
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = tail call ptr @emit_insn_after(ptr noundef nonnull %1, ptr noundef %9) #17
  br label %11

11:                                               ; preds = %2, %4
  %12 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #3 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #16
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = load i32, ptr %0, align 4, !tbaa !66
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !66
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #16
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !69
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !66
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !34
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !34
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #16
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #16
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @num_loop_insns(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decide_peel_once_rolling(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 42, i64 1, ptr nonnull %2)
  br label %6

6:                                                ; preds = %4, %1
  %7 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.param_info, ptr %7, i64 33, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !18
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %51, label %16

16:                                               ; preds = %13
  %17 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 36, i64 1, ptr nonnull %14)
  br label %51

18:                                               ; preds = %6
  %19 = tail call ptr @get_simple_loop_desc(ptr noundef nonnull %0) #17
  %20 = getelementptr inbounds %struct.niter_desc, ptr %19, i64 0, i32 2
  %21 = load i8, ptr %20, align 8, !tbaa !35
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.niter_desc, ptr %19, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.niter_desc, ptr %19, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !74
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.niter_desc, ptr %19, i64 0, i32 3
  %33 = load i8, ptr %32, align 1, !tbaa !37
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.niter_desc, ptr %19, i64 0, i32 4
  %37 = load i64, ptr %36, align 8, !tbaa !38
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35, %31, %27, %23, %18
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 52, i64 1, ptr nonnull %40)
  br label %51

44:                                               ; preds = %35
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 45, i64 1, ptr nonnull %45)
  br label %49

49:                                               ; preds = %47, %44
  %50 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4
  store i32 1, ptr %50, align 8, !tbaa !9
  br label %51

51:                                               ; preds = %39, %42, %13, %16, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decide_peel_completely(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 35, i64 1, ptr nonnull %2)
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %90, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 42, i64 1, ptr nonnull %11)
  br label %90

15:                                               ; preds = %6
  %16 = tail call zeroext i8 @optimize_loop_for_size_p(ptr noundef nonnull %0) #17
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %90, label %21

21:                                               ; preds = %18
  %22 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 35, i64 1, ptr nonnull %19)
  br label %90

23:                                               ; preds = %15
  %24 = tail call zeroext i8 @can_duplicate_loop_p(ptr noundef nonnull %0) #17
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %90, label %29

29:                                               ; preds = %26
  %30 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 42, i64 1, ptr nonnull %27)
  br label %90

31:                                               ; preds = %23
  %32 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.param_info, ptr %32, i64 31, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !71
  %35 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !18
  %37 = udiv i32 %34, %36
  %38 = getelementptr inbounds %struct.param_info, ptr %32, i64 32, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !71
  %40 = tail call i32 @llvm.umin.i32(i32 %37, i32 %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %90, label %45

45:                                               ; preds = %42
  %46 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 36, i64 1, ptr nonnull %43)
  br label %90

47:                                               ; preds = %31
  %48 = tail call ptr @get_simple_loop_desc(ptr noundef nonnull %0) #17
  %49 = getelementptr inbounds %struct.niter_desc, ptr %48, i64 0, i32 2
  %50 = load i8, ptr %49, align 8, !tbaa !35
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.niter_desc, ptr %48, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !73
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.niter_desc, ptr %48, i64 0, i32 3
  %58 = load i8, ptr %57, align 1, !tbaa !37
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.niter_desc, ptr %48, i64 0, i32 8
  %62 = load ptr, ptr %61, align 8, !tbaa !74
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %60, %56, %52, %47
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %66 = icmp eq ptr %65, null
  br i1 %66, label %90, label %67

67:                                               ; preds = %64
  %68 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 57, i64 1, ptr nonnull %65)
  br label %90

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.niter_desc, ptr %48, i64 0, i32 4
  %71 = load i64, ptr %70, align 8, !tbaa !38
  %72 = add i32 %40, -1
  %73 = zext i32 %72 to i64
  %74 = icmp ugt i64 %71, %73
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %76 = icmp eq ptr %75, null
  br i1 %74, label %77, label %85

77:                                               ; preds = %69
  br i1 %76, label %90, label %78

78:                                               ; preds = %77
  %79 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 48, i64 1, ptr nonnull %75)
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %81 = load i64, ptr %70, align 8, !tbaa !38
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.13, i64 noundef %81) #16
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.14, i32 noundef %40) #16
  br label %90

85:                                               ; preds = %69
  br i1 %76, label %88, label %86

86:                                               ; preds = %85
  %87 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 35, i64 1, ptr nonnull %75)
  br label %88

88:                                               ; preds = %86, %85
  %89 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4
  store i32 1, ptr %89, align 8, !tbaa !9
  br label %90

90:                                               ; preds = %77, %78, %64, %67, %42, %45, %26, %29, %18, %21, %10, %13, %88
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @peel_loop_completely(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call ptr @get_simple_loop_desc(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %1
  %9 = trunc i64 %6 to i32
  %10 = add i32 %9, 1
  %11 = tail call ptr @sbitmap_alloc(i32 noundef %10) #17
  tail call void @sbitmap_ones(ptr noundef %11) #17
  tail call fastcc void @RESET_BIT(ptr noundef %11, i32 noundef 0) #16
  %12 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call fastcc void @RESET_BIT(ptr noundef %11, i32 noundef 1) #16
  br label %16

16:                                               ; preds = %15, %8
  store ptr null, ptr %2, align 8, !tbaa !5
  %17 = load i32, ptr @flag_split_ivs_in_unroller, align 4, !tbaa !34
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @analyze_insns_in_loop(ptr noundef %0) #16
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi ptr [ %20, %19 ], [ null, %16 ]
  tail call fastcc void @opt_info_start_duplication(ptr noundef %22) #16
  %23 = tail call ptr @loop_preheader_edge(ptr noundef %0) #17
  %24 = load ptr, ptr %4, align 8, !tbaa !42
  %25 = icmp eq ptr %22, null
  %26 = select i1 %25, i32 5, i32 7
  %27 = call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %23, i32 noundef %9, ptr noundef %11, ptr noundef %24, ptr noundef nonnull %2, i32 noundef %26) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 492, ptr noundef nonnull @.str.1) #17
  br label %30

30:                                               ; preds = %21, %29
  call void @free(ptr noundef %11) #16
  br i1 %25, label %32, label %31

31:                                               ; preds = %30
  call fastcc void @apply_opt_in_copies(ptr noundef nonnull %22, i32 noundef %9, i8 noundef zeroext 0, i8 noundef zeroext 1) #16
  call fastcc void @free_opt_info(ptr noundef nonnull %22) #16
  br label %32

32:                                               ; preds = %31, %30
  %33 = load ptr, ptr %2, align 8
  %34 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %33, i32 noundef 0, ptr noundef nonnull %3) #16, !range !51
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32, %36
  %37 = phi i32 [ %40, %36 ], [ 0, %32 ]
  %38 = load ptr, ptr %3, align 8, !tbaa !5
  %39 = call zeroext i8 @remove_path(ptr noundef %38) #17
  %40 = add i32 %37, 1
  %41 = load ptr, ptr %2, align 8
  %42 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %41, i32 noundef %40, ptr noundef nonnull %3) #16, !range !51
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %36, !llvm.loop !75

44:                                               ; preds = %36, %32
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %2) #16
  br label %45

45:                                               ; preds = %44, %1
  %46 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !44
  call void @free_simple_loop_desc(ptr noundef %0) #17
  %48 = call zeroext i8 @remove_path(ptr noundef %47) #17
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = trunc i64 %6 to i32
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.16, i32 noundef %52) #16
  br label %54

54:                                               ; preds = %51, %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare ptr @get_simple_loop_desc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_loop_for_size_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @can_duplicate_loop_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !43
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !62
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !62
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !43
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @analyze_insns_in_loop(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %4 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #17
  store ptr %4, ptr %2, align 8, !tbaa !5
  tail call void @iv_analysis_loop_init(ptr noundef %0) #17
  %5 = tail call ptr @get_loop_body(ptr noundef %0) #17
  %6 = load i32, ptr @flag_split_ivs_in_unroller, align 4, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !53
  %11 = mul i32 %10, 5
  %12 = zext i32 %11 to i64
  %13 = tail call ptr @htab_create(i64 noundef %12, ptr noundef nonnull @si_info_hash, ptr noundef nonnull @si_info_eq, ptr noundef nonnull @free) #17
  store ptr %13, ptr %3, align 8, !tbaa !78
  %14 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 1
  store ptr null, ptr %14, align 8, !tbaa !80
  %15 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !81
  br label %16

16:                                               ; preds = %8, %1
  %17 = tail call ptr @loop_preheader_edge(ptr noundef %0) #17
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 8
  store ptr %18, ptr %19, align 8, !tbaa !82
  %20 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %4) #16
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %42

22:                                               ; preds = %16
  %23 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef 0) #16
  %24 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !58
  %26 = and i32 %25, 14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = tail call ptr @split_edge(ptr noundef nonnull %23) #17
  %30 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 7
  store ptr %29, ptr %30, align 8, !tbaa !83
  %31 = load i32, ptr @flag_variable_expansion_in_unroller, align 4, !tbaa !34
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !53
  %36 = mul i32 %35, 5
  %37 = zext i32 %36 to i64
  %38 = tail call ptr @htab_create(i64 noundef %37, ptr noundef nonnull @ve_info_hash, ptr noundef nonnull @ve_info_eq, ptr noundef nonnull @free) #17
  %39 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 3
  store ptr %38, ptr %39, align 8, !tbaa !84
  %40 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 4
  store ptr null, ptr %40, align 8, !tbaa !85
  %41 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 5
  store ptr %40, ptr %41, align 8, !tbaa !86
  br label %42

42:                                               ; preds = %16, %22, %33, %28
  %43 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !53
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %127, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %48 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 2
  %49 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 3
  %50 = getelementptr inbounds %struct.opt_info, ptr %3, i64 0, i32 5
  br label %51

51:                                               ; preds = %46, %120
  %52 = phi i64 [ 0, %46 ], [ %123, %120 ]
  %53 = phi ptr [ null, %46 ], [ %122, %120 ]
  %54 = phi ptr [ null, %46 ], [ %121, %120 ]
  %55 = getelementptr inbounds ptr, ptr %5, i64 %52
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = load ptr, ptr %47, align 8, !tbaa !87
  %58 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %57, ptr noundef %56) #17
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %120, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !62
  %63 = load ptr, ptr %62, align 8, !tbaa !62
  %64 = icmp eq ptr %63, null
  br i1 %64, label %120, label %65

65:                                               ; preds = %60, %114
  %66 = phi ptr [ %118, %114 ], [ %63, %60 ]
  %67 = phi ptr [ %116, %114 ], [ %53, %60 ]
  %68 = phi ptr [ %115, %114 ], [ %54, %60 ]
  %69 = load ptr, ptr %61, align 8, !tbaa !62
  %70 = getelementptr inbounds %struct.rtl_bb_info, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !63
  %72 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 2
  %73 = load ptr, ptr %72, align 8, !tbaa !62
  %74 = icmp eq ptr %66, %73
  br i1 %74, label %120, label %75

75:                                               ; preds = %65
  %76 = load i32, ptr %66, align 8
  %77 = and i32 %76, 65535
  %78 = add nsw i32 %77, -7
  %79 = icmp ult i32 %78, 4
  br i1 %79, label %80, label %114

80:                                               ; preds = %75
  %81 = load ptr, ptr %3, align 8, !tbaa !78
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = tail call fastcc ptr @analyze_iv_to_split_insn(ptr noundef nonnull %66) #16
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi ptr [ %84, %83 ], [ %67, %80 ]
  %87 = icmp eq ptr %86, null
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %3, align 8, !tbaa !78
  %90 = tail call ptr @htab_find_slot(ptr noundef %89, ptr noundef nonnull %86, i32 noundef 1) #17
  %91 = load ptr, ptr %90, align 8, !tbaa !5
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1859, ptr noundef nonnull @.str.1) #17
  br label %94

94:                                               ; preds = %88, %93
  store ptr %86, ptr %90, align 8, !tbaa !5
  %95 = load ptr, ptr %48, align 8, !tbaa !81
  store ptr %86, ptr %95, align 8, !tbaa !5
  %96 = getelementptr inbounds %struct.iv_to_split, ptr %86, i64 0, i32 3
  store ptr %96, ptr %48, align 8, !tbaa !81
  br label %114

97:                                               ; preds = %85
  %98 = load ptr, ptr %49, align 8, !tbaa !84
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = tail call fastcc ptr @analyze_insn_to_expand_var(ptr noundef %0, ptr noundef nonnull %66) #16
  br label %102

102:                                              ; preds = %100, %97
  %103 = phi ptr [ %101, %100 ], [ %68, %97 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %114, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %49, align 8, !tbaa !84
  %107 = tail call ptr @htab_find_slot(ptr noundef %106, ptr noundef nonnull %103, i32 noundef 1) #17
  %108 = load ptr, ptr %107, align 8, !tbaa !5
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1872, ptr noundef nonnull @.str.1) #17
  br label %111

111:                                              ; preds = %105, %110
  store ptr %103, ptr %107, align 8, !tbaa !5
  %112 = load ptr, ptr %50, align 8, !tbaa !86
  store ptr %103, ptr %112, align 8, !tbaa !5
  %113 = getelementptr inbounds %struct.var_to_expand, ptr %103, i64 0, i32 3
  store ptr %113, ptr %50, align 8, !tbaa !86
  br label %114

114:                                              ; preds = %75, %102, %111, %94
  %115 = phi ptr [ %68, %94 ], [ %103, %111 ], [ null, %102 ], [ %68, %75 ]
  %116 = phi ptr [ %86, %94 ], [ null, %111 ], [ null, %102 ], [ %67, %75 ]
  %117 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 2
  %118 = load ptr, ptr %117, align 8, !tbaa !62
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %65, !llvm.loop !88

120:                                              ; preds = %114, %65, %60, %51
  %121 = phi ptr [ %54, %51 ], [ %54, %60 ], [ %115, %114 ], [ %68, %65 ]
  %122 = phi ptr [ %53, %51 ], [ %53, %60 ], [ %116, %114 ], [ %67, %65 ]
  %123 = add nuw nsw i64 %52, 1
  %124 = load i32, ptr %43, align 4, !tbaa !53
  %125 = zext i32 %124 to i64
  %126 = icmp ult i64 %123, %125
  br i1 %126, label %51, label %127, !llvm.loop !89

127:                                              ; preds = %120, %42
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %2) #16
  tail call void @free(ptr noundef %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @opt_info_start_duplication(ptr noundef writeonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @cfun, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 6
  store i32 %8, ptr %9, align 8, !tbaa !93
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @duplicate_loop_to_header_edge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @apply_opt_in_copies(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.iv_to_split, align 8
  %6 = alloca %struct.var_to_expand, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  %7 = icmp eq i8 %2, 0
  %8 = icmp ne i8 %3, 0
  %9 = or i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2209, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %4, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !78
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %21, %18 ], [ %16, %14 ]
  tail call fastcc void @allocate_basic_variable(ptr noundef nonnull %19) #16
  %20 = getelementptr inbounds %struct.iv_to_split, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !94

23:                                               ; preds = %18, %14, %11
  %24 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !93
  %26 = load ptr, ptr @cfun, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !90
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !91
  %31 = icmp ult i32 %25, %30
  br i1 %31, label %32, label %142

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 3
  br label %34

34:                                               ; preds = %32, %134
  %35 = phi ptr [ %28, %32 ], [ %138, %134 ]
  %36 = phi i32 [ %25, %32 ], [ %135, %134 ]
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !95
  %39 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %38, i32 noundef %36) #16
  %40 = call ptr @get_bb_original(ptr noundef %39) #17
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !96
  %43 = ptrtoint ptr %42 to i64
  %44 = trunc i64 %43 to i32
  %45 = call fastcc i32 @determine_split_iv_delta(i32 noundef %44, i32 noundef %1, i8 noundef zeroext %2) #16
  store ptr null, ptr %41, align 8, !tbaa !96
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !62
  %48 = load ptr, ptr %47, align 8, !tbaa !97
  %49 = getelementptr inbounds %struct.rtl_bb_info, ptr %47, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 2
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  %53 = icmp eq ptr %48, %52
  br i1 %53, label %134, label %54

54:                                               ; preds = %34
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !62
  %57 = load ptr, ptr %56, align 8, !tbaa !97
  %58 = icmp eq i32 %45, 0
  br label %59

59:                                               ; preds = %54, %126
  %60 = phi ptr [ %47, %54 ], [ %127, %126 ]
  %61 = phi ptr [ %57, %54 ], [ %128, %126 ]
  %62 = phi ptr [ %48, %54 ], [ %64, %126 ]
  %63 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 0, i64 2
  %64 = load ptr, ptr %63, align 8, !tbaa !62
  %65 = load i32, ptr %62, align 8
  %66 = and i32 %65, 65535
  %67 = add nsw i32 %66, -7
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %69, label %126

69:                                               ; preds = %59
  %70 = load i32, ptr %61, align 8
  %71 = and i32 %70, 65535
  %72 = add nsw i32 %71, -7
  %73 = icmp ult i32 %72, 4
  br i1 %73, label %82, label %74

74:                                               ; preds = %69, %74
  %75 = phi ptr [ %77, %74 ], [ %61, %69 ]
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !62
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  %80 = add nsw i32 %79, -7
  %81 = icmp ult i32 %80, 4
  br i1 %81, label %82, label %74, !llvm.loop !98

82:                                               ; preds = %74, %69
  %83 = phi ptr [ %61, %69 ], [ %77, %74 ]
  store ptr %83, ptr %5, align 8, !tbaa !99
  store ptr %83, ptr %6, align 8, !tbaa !101
  %84 = load ptr, ptr %0, align 8, !tbaa !78
  %85 = icmp eq ptr %84, null
  br i1 %85, label %103, label %86

86:                                               ; preds = %82
  %87 = call ptr @htab_find(ptr noundef nonnull %84, ptr noundef nonnull %5) #17
  %88 = icmp eq ptr %87, null
  br i1 %88, label %103, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !62
  %92 = load i32, ptr %91, align 8
  %93 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !62
  %95 = load i32, ptr %94, align 8
  %96 = xor i32 %95, %92
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %89
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2248, ptr noundef nonnull @.str.1) #17
  br label %100

100:                                              ; preds = %89, %99
  br i1 %58, label %101, label %102

101:                                              ; preds = %100
  call fastcc void @insert_base_initialization(ptr noundef nonnull %87, ptr noundef nonnull %62) #16
  br label %102

102:                                              ; preds = %101, %100
  call fastcc void @split_iv(ptr noundef nonnull %87, ptr noundef nonnull %62, i32 noundef %45) #16
  br label %103

103:                                              ; preds = %86, %102, %82
  br i1 %7, label %122, label %104

104:                                              ; preds = %103
  %105 = load ptr, ptr %33, align 8, !tbaa !84
  %106 = icmp eq ptr %105, null
  br i1 %106, label %122, label %107

107:                                              ; preds = %104
  %108 = call ptr @htab_find(ptr noundef nonnull %105, ptr noundef nonnull %6) #17
  %109 = icmp eq ptr %108, null
  br i1 %109, label %122, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !62
  %113 = load i32, ptr %112, align 8
  %114 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !62
  %116 = load i32, ptr %115, align 8
  %117 = xor i32 %116, %113
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %110
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2263, ptr noundef nonnull @.str.1) #17
  br label %121

121:                                              ; preds = %110, %120
  call fastcc void @expand_var_during_unrolling(ptr noundef nonnull %108, ptr noundef nonnull %62) #16
  br label %122

122:                                              ; preds = %107, %121, %104, %103
  %123 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 2
  %124 = load ptr, ptr %123, align 8, !tbaa !62
  %125 = load ptr, ptr %46, align 8, !tbaa !62
  br label %126

126:                                              ; preds = %59, %122
  %127 = phi ptr [ %125, %122 ], [ %60, %59 ]
  %128 = phi ptr [ %124, %122 ], [ %61, %59 ]
  %129 = getelementptr inbounds %struct.rtl_bb_info, ptr %127, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !63
  %131 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1, i32 0, i32 0, i64 2
  %132 = load ptr, ptr %131, align 8, !tbaa !62
  %133 = icmp eq ptr %64, %132
  br i1 %133, label %134, label %59, !llvm.loop !103

134:                                              ; preds = %126, %34
  %135 = add nuw i32 %36, 1
  %136 = load ptr, ptr @cfun, align 8, !tbaa !5
  %137 = getelementptr inbounds %struct.function, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !90
  %139 = getelementptr inbounds %struct.control_flow_graph, ptr %138, i64 0, i32 5
  %140 = load i32, ptr %139, align 8, !tbaa !91
  %141 = icmp ult i32 %135, %140
  br i1 %141, label %34, label %142, !llvm.loop !104

142:                                              ; preds = %134, %23
  %143 = icmp eq i8 %3, 0
  br i1 %143, label %234, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !84
  %147 = icmp eq ptr %146, null
  br i1 %147, label %171, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 4
  %150 = load ptr, ptr %149, align 8, !tbaa !5
  %151 = icmp eq ptr %150, null
  br i1 %151, label %171, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 8
  br label %159

154:                                              ; preds = %159
  %155 = load ptr, ptr %149, align 8, !tbaa !5
  %156 = icmp eq ptr %155, null
  br i1 %156, label %171, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 7
  br label %165

159:                                              ; preds = %152, %159
  %160 = phi ptr [ %150, %152 ], [ %163, %159 ]
  %161 = load ptr, ptr %153, align 8, !tbaa !82
  call fastcc void @insert_var_expansion_initialization(ptr noundef nonnull %160, ptr noundef %161) #16
  %162 = getelementptr inbounds %struct.var_to_expand, ptr %160, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !5
  %164 = icmp eq ptr %163, null
  br i1 %164, label %154, label %159, !llvm.loop !105

165:                                              ; preds = %157, %165
  %166 = phi ptr [ %155, %157 ], [ %169, %165 ]
  %167 = load ptr, ptr %158, align 8, !tbaa !83
  call fastcc void @combine_var_copies_in_loop_exit(ptr noundef nonnull %166, ptr noundef %167) #16
  %168 = getelementptr inbounds %struct.var_to_expand, ptr %166, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !5
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %165, !llvm.loop !106

171:                                              ; preds = %165, %148, %154, %144
  %172 = load i32, ptr %24, align 8, !tbaa !93
  %173 = load ptr, ptr @cfun, align 8, !tbaa !5
  %174 = getelementptr inbounds %struct.function, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !90
  %176 = getelementptr inbounds %struct.control_flow_graph, ptr %175, i64 0, i32 5
  %177 = load i32, ptr %176, align 8, !tbaa !91
  %178 = icmp ult i32 %172, %177
  br i1 %178, label %179, label %234

179:                                              ; preds = %171, %226
  %180 = phi ptr [ %230, %226 ], [ %175, %171 ]
  %181 = phi i32 [ %227, %226 ], [ %172, %171 ]
  %182 = getelementptr inbounds %struct.control_flow_graph, ptr %180, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !95
  %184 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %183, i32 noundef %181) #16
  %185 = call ptr @get_bb_original(ptr noundef %184) #17
  %186 = call ptr @get_bb_copy(ptr noundef %185) #17
  %187 = icmp eq ptr %186, %184
  br i1 %187, label %188, label %226

188:                                              ; preds = %179
  %189 = call fastcc i32 @determine_split_iv_delta(i32 noundef 0, i32 noundef %1, i8 noundef zeroext %2) #16
  %190 = getelementptr inbounds %struct.basic_block_def, ptr %185, i64 0, i32 7
  %191 = load ptr, ptr %190, align 8, !tbaa !62
  %192 = load ptr, ptr %191, align 8, !tbaa !97
  %193 = getelementptr inbounds %struct.basic_block_def, ptr %184, i64 0, i32 7
  %194 = load ptr, ptr %193, align 8, !tbaa !62
  %195 = getelementptr inbounds %struct.rtl_bb_info, ptr %194, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !63
  %197 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1, i32 0, i32 0, i64 2
  %198 = load ptr, ptr %197, align 8, !tbaa !62
  %199 = icmp eq ptr %192, %198
  br i1 %199, label %226, label %200

200:                                              ; preds = %188
  %201 = icmp eq i32 %189, 0
  br label %202

202:                                              ; preds = %200, %219
  %203 = phi ptr [ %192, %200 ], [ %205, %219 ]
  %204 = getelementptr inbounds %struct.rtx_def, ptr %203, i64 0, i32 1, i32 0, i32 0, i64 2
  %205 = load ptr, ptr %204, align 8, !tbaa !62
  %206 = load i32, ptr %203, align 8
  %207 = and i32 %206, 65535
  %208 = add nsw i32 %207, -7
  %209 = icmp ult i32 %208, 4
  br i1 %209, label %210, label %219

210:                                              ; preds = %202
  store ptr %203, ptr %5, align 8, !tbaa !99
  %211 = load ptr, ptr %0, align 8, !tbaa !78
  %212 = icmp eq ptr %211, null
  br i1 %212, label %219, label %213

213:                                              ; preds = %210
  %214 = call ptr @htab_find(ptr noundef nonnull %211, ptr noundef nonnull %5) #17
  %215 = icmp eq ptr %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %213
  br i1 %201, label %217, label %218

217:                                              ; preds = %216
  call fastcc void @insert_base_initialization(ptr noundef nonnull %214, ptr noundef nonnull %203) #16
  br label %218

218:                                              ; preds = %217, %216
  call fastcc void @split_iv(ptr noundef nonnull %214, ptr noundef nonnull %203, i32 noundef %189) #16
  br label %219

219:                                              ; preds = %202, %210, %213, %218
  %220 = load ptr, ptr %193, align 8, !tbaa !62
  %221 = getelementptr inbounds %struct.rtl_bb_info, ptr %220, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !63
  %223 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1, i32 0, i32 0, i64 2
  %224 = load ptr, ptr %223, align 8, !tbaa !62
  %225 = icmp eq ptr %205, %224
  br i1 %225, label %226, label %202, !llvm.loop !107

226:                                              ; preds = %219, %188, %179
  %227 = add nuw i32 %181, 1
  %228 = load ptr, ptr @cfun, align 8, !tbaa !5
  %229 = getelementptr inbounds %struct.function, ptr %228, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !90
  %231 = getelementptr inbounds %struct.control_flow_graph, ptr %230, i64 0, i32 5
  %232 = load i32, ptr %231, align 8, !tbaa !91
  %233 = icmp ult i32 %227, %232
  br i1 %233, label %179, label %234, !llvm.loop !108

234:                                              ; preds = %226, %171, %142
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_opt_info(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !78
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @htab_delete(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.opt_info, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %17, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.var_to_expand, ptr %14, i64 0, i32 2
  tail call fastcc void @VEC_rtx_heap_free(ptr noundef nonnull %15) #16
  %16 = getelementptr inbounds %struct.var_to_expand, ptr %14, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13, !llvm.loop !109

19:                                               ; preds = %13
  %20 = load ptr, ptr %6, align 8, !tbaa !84
  br label %21

21:                                               ; preds = %19, %9
  %22 = phi ptr [ %20, %19 ], [ %7, %9 ]
  tail call void @htab_delete(ptr noundef %22) #17
  br label %23

23:                                               ; preds = %21, %5
  tail call void @free(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !110
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !5
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @remove_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #16
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @free_simple_loop_desc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @iv_analysis_loop_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @si_info_hash(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !99
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !62
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @si_info_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !99
  %4 = load ptr, ptr %1, align 8, !tbaa !99
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !110
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @ve_info_hash(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !101
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !62
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @ve_info_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !101
  %4 = load ptr, ptr %1, align 8, !tbaa !101
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @analyze_iv_to_split_insn(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.rtx_iv, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %48

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 23
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %9) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %14, %13 ], [ %9, %7 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !62
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %48

23:                                               ; preds = %16
  %24 = tail call zeroext i8 @biv_p(ptr noundef nonnull %0, ptr noundef nonnull %19) #17
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %23
  %27 = call zeroext i8 @iv_analyze_result(ptr noundef nonnull %0, ptr noundef nonnull %19, ptr noundef nonnull %2) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !112
  %32 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %48, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !114
  %37 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !115
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = call ptr @xmalloc(i64 noundef 48) #17
  store ptr %0, ptr %41, align 8, !tbaa !99
  %42 = getelementptr inbounds %struct.iv_to_split, ptr %41, i64 0, i32 1
  store ptr null, ptr %42, align 8, !tbaa !116
  %43 = load ptr, ptr %30, align 8, !tbaa !112
  %44 = getelementptr inbounds %struct.iv_to_split, ptr %41, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !117
  %45 = getelementptr inbounds %struct.iv_to_split, ptr %41, i64 0, i32 3
  store ptr null, ptr %45, align 8, !tbaa !118
  %46 = getelementptr inbounds %struct.iv_to_split, ptr %41, i64 0, i32 4
  store i32 1, ptr %46, align 8, !tbaa !119
  %47 = getelementptr inbounds %struct.iv_to_split, ptr %41, i64 0, i32 5
  store i32 1, ptr %47, align 4, !tbaa !34
  br label %48

48:                                               ; preds = %1, %29, %34, %26, %23, %16, %13, %40
  %49 = phi ptr [ %41, %40 ], [ null, %13 ], [ null, %16 ], [ null, %23 ], [ null, %26 ], [ null, %34 ], [ null, %29 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  ret ptr %49
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @analyze_insn_to_expand_var(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !tbaa !34
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %109

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 23
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %109, label %17

17:                                               ; preds = %8, %14
  %18 = phi ptr [ %15, %14 ], [ %10, %8 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !62
  %21 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = load i32, ptr %22, align 8
  %24 = trunc i32 %23 to i16
  switch i16 %24, label %109 [
    i16 49, label %25
    i16 50, label %25
    i16 52, label %25
  ]

25:                                               ; preds = %17, %17, %17
  %26 = and i32 %23, 65535
  %27 = lshr i32 %23, 16
  %28 = and i32 %27, 255
  %29 = tail call i32 @have_insn_for(i32 noundef %26, i32 noundef %28) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %109, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  %34 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  %36 = load i32, ptr %20, align 8
  %37 = trunc i32 %36 to i16
  switch i16 %37, label %109 [
    i16 37, label %44
    i16 39, label %38
  ]

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 37
  br i1 %43, label %44, label %109

44:                                               ; preds = %31, %38
  %45 = tail call i32 @rtx_equal_p(ptr noundef nonnull %20, ptr noundef %33) #17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = tail call i32 @rtx_equal_p(ptr noundef nonnull %20, ptr noundef %35) #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %109, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %22, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 50
  br i1 %53, label %109, label %54

54:                                               ; preds = %44, %50
  %55 = phi i32 [ 1, %50 ], [ 0, %44 ]
  %56 = phi ptr [ %33, %50 ], [ %35, %44 ]
  %57 = tail call i32 @rtx_referenced_p(ptr noundef nonnull %20, ptr noundef %56) #17
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %109

59:                                               ; preds = %54
  %60 = call fastcc zeroext i8 @referenced_in_one_insn_in_loop_p(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull %3) #16, !range !41
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %109, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %20, align 8
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !62
  switch i8 %68, label %69 [
    i8 8, label %81
    i8 9, label %81
    i8 11, label %81
    i8 17, label %81
  ]

69:                                               ; preds = %62
  %70 = load i32, ptr %56, align 8
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 255
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !62
  switch i8 %75, label %76 [
    i8 8, label %81
    i8 9, label %81
    i8 11, label %81
  ]

76:                                               ; preds = %69
  %77 = icmp ne i8 %75, 17
  %78 = load i32, ptr @flag_associative_math, align 4
  %79 = icmp ne i32 %78, 0
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %84, label %109

81:                                               ; preds = %69, %69, %69, %62, %62, %62, %62
  %82 = load i32, ptr @flag_associative_math, align 4, !tbaa !34
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %109, label %84

84:                                               ; preds = %81, %76
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 26, i64 1, ptr nonnull %85)
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !5
  tail call void @print_rtl(ptr noundef %89, ptr noundef nonnull %20) #17
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %91 = tail call i32 @fputc(i32 10, ptr %90)
  br label %92

92:                                               ; preds = %87, %84
  %93 = load i32, ptr %3, align 4, !tbaa !34
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  tail call fastcc void @reset_debug_uses_in_loop(ptr noundef %0, ptr noundef nonnull %20, i32 noundef %93) #16
  br label %96

96:                                               ; preds = %95, %92
  %97 = tail call ptr @xmalloc(i64 noundef 48) #17
  store ptr %1, ptr %97, align 8, !tbaa !101
  %98 = tail call ptr @copy_rtx(ptr noundef nonnull %20) #17
  %99 = getelementptr inbounds %struct.var_to_expand, ptr %97, i64 0, i32 1
  store ptr %98, ptr %99, align 8, !tbaa !120
  %100 = tail call fastcc ptr @VEC_rtx_heap_alloc() #16
  %101 = getelementptr inbounds %struct.var_to_expand, ptr %97, i64 0, i32 2
  store ptr %100, ptr %101, align 8, !tbaa !121
  %102 = getelementptr inbounds %struct.var_to_expand, ptr %97, i64 0, i32 3
  store ptr null, ptr %102, align 8, !tbaa !122
  %103 = load i32, ptr %22, align 8
  %104 = and i32 %103, 65535
  %105 = getelementptr inbounds %struct.var_to_expand, ptr %97, i64 0, i32 4
  store i32 %104, ptr %105, align 8, !tbaa !123
  %106 = getelementptr inbounds %struct.var_to_expand, ptr %97, i64 0, i32 5
  store i32 0, ptr %106, align 4, !tbaa !124
  %107 = getelementptr inbounds %struct.var_to_expand, ptr %97, i64 0, i32 6
  store i32 0, ptr %107, align 8, !tbaa !125
  %108 = getelementptr inbounds %struct.var_to_expand, ptr %97, i64 0, i32 7
  store i32 %55, ptr %108, align 4, !tbaa !126
  br label %109

109:                                              ; preds = %2, %81, %76, %59, %54, %50, %47, %38, %31, %25, %17, %14, %96
  %110 = phi ptr [ %97, %96 ], [ null, %14 ], [ null, %17 ], [ null, %25 ], [ null, %31 ], [ null, %38 ], [ null, %47 ], [ null, %50 ], [ null, %54 ], [ null, %59 ], [ null, %76 ], [ null, %81 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret ptr %110
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @biv_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @iv_analyze_result(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @have_insn_for(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_referenced_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @referenced_in_one_insn_in_loop_p(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @get_loop_body(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %57, label %8

8:                                                ; preds = %3, %48
  %9 = phi i32 [ %49, %48 ], [ %6, %3 ]
  %10 = phi i64 [ %51, %48 ], [ 0, %3 ]
  %11 = phi i32 [ %50, %48 ], [ 0, %3 ]
  %12 = getelementptr inbounds ptr, ptr %4, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = icmp eq ptr %16, null
  br i1 %17, label %48, label %18

18:                                               ; preds = %8, %40
  %19 = phi ptr [ %43, %40 ], [ %16, %8 ]
  %20 = phi i32 [ %41, %40 ], [ %11, %8 ]
  %21 = load ptr, ptr %14, align 8, !tbaa !62
  %22 = getelementptr inbounds %struct.rtl_bb_info, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !63
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = icmp eq ptr %19, %25
  br i1 %26, label %45, label %27

27:                                               ; preds = %18
  %28 = tail call i32 @rtx_referenced_p(ptr noundef %1, ptr noundef nonnull %19) #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %19, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 7
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, ptr %2, align 4, !tbaa !34
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %2, align 4, !tbaa !34
  br label %40

37:                                               ; preds = %30
  %38 = add nsw i32 %20, 1
  %39 = icmp sgt i32 %20, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37, %34, %27
  %41 = phi i32 [ %20, %34 ], [ %38, %37 ], [ %20, %27 ]
  %42 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !62
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %18, !llvm.loop !127

45:                                               ; preds = %18, %37, %40
  %46 = phi i32 [ %41, %40 ], [ %38, %37 ], [ %20, %18 ]
  %47 = load i32, ptr %5, align 4, !tbaa !53
  br label %48

48:                                               ; preds = %45, %8
  %49 = phi i32 [ %9, %8 ], [ %47, %45 ]
  %50 = phi i32 [ %11, %8 ], [ %46, %45 ]
  %51 = add nuw nsw i64 %10, 1
  %52 = zext i32 %49 to i64
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %8, label %54, !llvm.loop !128

54:                                               ; preds = %48
  %55 = icmp eq i32 %50, 1
  %56 = zext i1 %55 to i8
  br label %57

57:                                               ; preds = %54, %3
  %58 = phi i8 [ 0, %3 ], [ %56, %54 ]
  tail call void @free(ptr noundef %4) #16
  ret i8 %58
}

; Function Attrs: optsize
declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reset_debug_uses_in_loop(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @get_loop_body(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %54, label %7

7:                                                ; preds = %3, %50
  %8 = phi i64 [ %52, %50 ], [ 0, %3 ]
  %9 = phi i32 [ %51, %50 ], [ %2, %3 ]
  %10 = load i32, ptr %5, align 4, !tbaa !53
  %11 = zext i32 %10 to i64
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %7
  %14 = getelementptr inbounds ptr, ptr %4, i64 %8
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = icmp eq ptr %18, null
  br i1 %19, label %50, label %20

20:                                               ; preds = %13, %45
  %21 = phi ptr [ %48, %45 ], [ %18, %13 ]
  %22 = phi i32 [ %46, %45 ], [ %9, %13 ]
  %23 = load ptr, ptr %16, align 8, !tbaa !62
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !63
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = icmp eq ptr %21, %27
  br i1 %28, label %50, label %29

29:                                               ; preds = %20
  %30 = load i32, ptr %21, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 7
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = tail call i32 @rtx_referenced_p(ptr noundef %1, ptr noundef nonnull %21) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !62
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %41 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %40) #17
  %42 = tail call zeroext i8 @validate_change(ptr noundef nonnull %21, ptr noundef nonnull %39, ptr noundef %41, i8 noundef zeroext 0) #17
  %43 = add nsw i32 %22, -1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %36, %29, %33
  %46 = phi i32 [ %43, %36 ], [ %22, %33 ], [ %22, %29 ]
  %47 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %20, !llvm.loop !129

50:                                               ; preds = %45, %20, %13
  %51 = phi i32 [ %9, %13 ], [ %22, %20 ], [ %46, %45 ]
  %52 = add nuw nsw i64 %8, 1
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %54, label %7, !llvm.loop !130

54:                                               ; preds = %7, %50, %36, %3
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_rtx_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #17
  ret ptr %1
}

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @allocate_basic_variable(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !99
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 23
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @single_set_2(ptr noundef nonnull %2, ptr noundef nonnull %9) #17
  br label %15

15:                                               ; preds = %1, %7, %13
  %16 = phi ptr [ %14, %13 ], [ null, %1 ], [ %9, %7 ]
  %17 = tail call fastcc ptr @get_ivts_expr(ptr noundef %16, ptr noundef nonnull %0) #16
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = tail call ptr @gen_reg_rtx(i32 noundef %21) #17
  %23 = getelementptr inbounds %struct.iv_to_split, ptr %0, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @get_bb_original(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @determine_split_iv_delta(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #11 {
  %4 = icmp eq i8 %2, 0
  %5 = icmp eq i32 %0, 0
  %6 = add i32 %0, -1
  %7 = select i1 %5, i32 %1, i32 %6
  %8 = select i1 %4, i32 %7, i32 %0
  ret i32 %8
}

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_base_initialization(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 23
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %9) #17
  br label %15

15:                                               ; preds = %2, %7, %13
  %16 = phi ptr [ %14, %13 ], [ null, %2 ], [ %9, %7 ]
  %17 = tail call fastcc ptr @get_ivts_expr(ptr noundef %16, ptr noundef %0) #16
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = tail call ptr @copy_rtx(ptr noundef %18) #17
  tail call void @start_sequence() #17
  %20 = getelementptr inbounds %struct.iv_to_split, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !116
  %22 = tail call ptr @force_operand(ptr noundef %19, ptr noundef %21) #17
  %23 = load ptr, ptr %20, align 8, !tbaa !116
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  %26 = tail call ptr @emit_move_insn(ptr noundef %23, ptr noundef %22) #17
  br label %27

27:                                               ; preds = %25, %15
  %28 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %29 = tail call ptr @emit_insn_before(ptr noundef %28, ptr noundef nonnull %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @split_iv(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.iv_to_split, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.iv_to_split, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !117
  %13 = zext i32 %2 to i64
  %14 = tail call ptr @gen_int_mode(i64 noundef %13, i32 noundef %8) #17
  %15 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %8, ptr noundef %12, ptr noundef %14) #17
  %16 = load ptr, ptr %4, align 8, !tbaa !116
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %19, ptr noundef nonnull %16, ptr noundef %15) #17
  br label %21

21:                                               ; preds = %3, %10
  %22 = phi ptr [ %20, %10 ], [ %5, %3 ]
  %23 = load i32, ptr %1, align 8
  %24 = and i32 %23, 65535
  %25 = add nsw i32 %24, -7
  %26 = icmp ult i32 %25, 4
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !62
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 23
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %29) #17
  br label %35

35:                                               ; preds = %21, %27, %33
  %36 = phi ptr [ %34, %33 ], [ null, %21 ], [ %29, %27 ]
  %37 = tail call fastcc ptr @get_ivts_expr(ptr noundef %36, ptr noundef nonnull %0) #16
  %38 = tail call zeroext i8 @validate_change(ptr noundef nonnull %1, ptr noundef nonnull %37, ptr noundef %22, i8 noundef zeroext 0) #17
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %82

40:                                               ; preds = %35
  tail call void @start_sequence() #17
  %41 = tail call ptr @gen_reg_rtx(i32 noundef %8) #17
  %42 = tail call ptr @force_operand(ptr noundef %22, ptr noundef %41) #17
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call ptr @emit_move_insn(ptr noundef %41, ptr noundef %42) #17
  br label %46

46:                                               ; preds = %44, %40
  %47 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %48 = tail call ptr @emit_insn_before(ptr noundef %47, ptr noundef nonnull %1) #17
  %49 = tail call zeroext i8 @validate_change(ptr noundef nonnull %1, ptr noundef nonnull %37, ptr noundef %41, i8 noundef zeroext 0) #17
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %46
  %52 = load i32, ptr %1, align 8
  %53 = and i32 %52, 65535
  %54 = add nsw i32 %53, -7
  %55 = icmp ult i32 %54, 4
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !62
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 23
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %58) #17
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %51, %62
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2008, ptr noundef nonnull @.str.1) #17
  br label %66

66:                                               ; preds = %56, %62, %65
  %67 = phi ptr [ %63, %62 ], [ null, %65 ], [ %58, %56 ]
  tail call void @start_sequence() #17
  store ptr %41, ptr %37, align 8, !tbaa !5
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !62
  %71 = tail call ptr @copy_rtx(ptr noundef %70) #17
  %72 = load ptr, ptr %68, align 8, !tbaa !62
  %73 = tail call ptr @copy_rtx(ptr noundef %72) #17
  %74 = tail call ptr @force_operand(ptr noundef %71, ptr noundef %73) #17
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %78, label %76

76:                                               ; preds = %66
  %77 = tail call ptr @emit_move_insn(ptr noundef %73, ptr noundef %74) #17
  br label %78

78:                                               ; preds = %76, %66
  %79 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %80 = tail call ptr @emit_insn_before(ptr noundef %79, ptr noundef nonnull %1) #17
  %81 = tail call ptr @delete_insn(ptr noundef nonnull %1) #17
  br label %82

82:                                               ; preds = %46, %35, %78
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_var_during_unrolling(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 23
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %9) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2, %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2056, ptr noundef nonnull @.str.1) #17
  br label %17

17:                                               ; preds = %7, %13, %16
  %18 = phi ptr [ %14, %13 ], [ null, %16 ], [ %9, %7 ]
  %19 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.param_info, ptr %19, i64 10, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !71
  %22 = getelementptr inbounds %struct.var_to_expand, ptr %0, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !124
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.var_to_expand, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !120
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = tail call ptr @gen_reg_rtx(i32 noundef %30) #17
  br label %34

32:                                               ; preds = %17
  %33 = tail call fastcc ptr @get_expansion(ptr noundef nonnull %0) #16
  br label %34

34:                                               ; preds = %32, %25
  %35 = phi ptr [ %31, %25 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %37 = tail call zeroext i8 @validate_change(ptr noundef nonnull %1, ptr noundef nonnull %36, ptr noundef %35, i8 noundef zeroext 1) #17
  %38 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !62
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = getelementptr inbounds %struct.var_to_expand, ptr %0, i64 0, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !126
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [1 x %union.rtunion_def], ptr %40, i64 0, i64 %43
  %45 = tail call zeroext i8 @validate_change(ptr noundef nonnull %1, ptr noundef nonnull %44, ptr noundef %35, i8 noundef zeroext 1) #17
  %46 = tail call i32 @apply_change_group() #17
  %47 = icmp ne i32 %46, 0
  %48 = and i1 %24, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.var_to_expand, ptr %0, i64 0, i32 2
  tail call fastcc void @VEC_rtx_heap_safe_push(ptr noundef nonnull %50, ptr noundef %35) #16
  %51 = load i32, ptr %22, align 4, !tbaa !124
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %22, align 4, !tbaa !124
  br label %53

53:                                               ; preds = %49, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_var_expansion_initialization(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.var_to_expand, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !62
  switch i8 %11, label %31 [
    i8 8, label %12
    i8 9, label %12
    i8 11, label %12
    i8 17, label %12
  ]

12:                                               ; preds = %2, %2, %2, %2
  %13 = and i8 %11, -2
  %14 = icmp eq i8 %13, 8
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %9
  %17 = load i8, ptr %16, align 1, !tbaa !62
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i32 [ %8, %12 ], [ %18, %15 ]
  %21 = add nsw i32 %20, -38
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.real_format, ptr %24, i64 0, i32 14
  %26 = load i8, ptr %25, align 1, !tbaa !131
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, ptr @flag_signed_zeros, align 4, !tbaa !34
  %30 = icmp eq i32 %29, 0
  br label %31

31:                                               ; preds = %2, %28, %19
  %32 = phi i1 [ true, %19 ], [ %30, %28 ], [ true, %2 ]
  %33 = getelementptr inbounds %struct.var_to_expand, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !121
  %35 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %34) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %95, label %37

37:                                               ; preds = %31
  tail call void @start_sequence() #17
  %38 = getelementptr inbounds %struct.var_to_expand, ptr %0, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !123
  switch i32 %39, label %77 [
    i32 49, label %44
    i32 50, label %44
    i32 52, label %40
  ]

40:                                               ; preds = %37
  %41 = load ptr, ptr %33, align 8, !tbaa !121
  %42 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %41, i32 noundef 0, ptr noundef nonnull %3) #16, !range !51
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %77, label %63

44:                                               ; preds = %37, %37
  %45 = load ptr, ptr %33, align 8, !tbaa !121
  %46 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %45, i32 noundef 0, ptr noundef nonnull %3) #16, !range !51
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %77, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %9
  br label %50

50:                                               ; preds = %48, %55
  %51 = phi i32 [ 0, %48 ], [ %59, %55 ]
  %52 = load ptr, ptr %49, align 8, !tbaa !5
  br i1 %32, label %55, label %53

53:                                               ; preds = %50
  %54 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %8, ptr noundef %52, i32 noundef %8) #17
  br label %55

55:                                               ; preds = %50, %53
  %56 = phi ptr [ %54, %53 ], [ %52, %50 ]
  %57 = load ptr, ptr %3, align 8, !tbaa !5
  %58 = tail call ptr @emit_move_insn(ptr noundef %57, ptr noundef %56) #17
  %59 = add i32 %51, 1
  %60 = load ptr, ptr %33, align 8, !tbaa !121
  %61 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %60, i32 noundef %59, ptr noundef nonnull %3) #16, !range !51
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %77, label %50, !llvm.loop !133

63:                                               ; preds = %40, %63
  %64 = phi i32 [ %73, %63 ], [ 0, %40 ]
  %65 = load ptr, ptr %3, align 8, !tbaa !5
  %66 = load i32, ptr %65, align 8
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !5
  %72 = tail call ptr @emit_move_insn(ptr noundef nonnull %65, ptr noundef %71) #17
  %73 = add i32 %64, 1
  %74 = load ptr, ptr %33, align 8, !tbaa !121
  %75 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %74, i32 noundef %73, ptr noundef nonnull %3) #16, !range !51
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %63, !llvm.loop !134

77:                                               ; preds = %63, %55, %40, %44, %37
  %78 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !62
  br label %81

81:                                               ; preds = %91, %77
  %82 = phi ptr [ %80, %77 ], [ %92, %91 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !62
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 13
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 1
  %89 = load i32, ptr %88, align 8, !tbaa !62
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %93, label %91

91:                                               ; preds = %81, %87
  %92 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %81, !llvm.loop !135

93:                                               ; preds = %87
  %94 = tail call ptr @emit_insn_after(ptr noundef %78, ptr noundef nonnull %83) #17
  br label %95

95:                                               ; preds = %31, %93
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @combine_var_copies_in_loop_exit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.var_to_expand, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %6 = getelementptr inbounds %struct.var_to_expand, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %7) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %73, label %10

10:                                               ; preds = %2
  tail call void @start_sequence() #17
  %11 = getelementptr inbounds %struct.var_to_expand, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !123
  switch i32 %12, label %47 [
    i32 49, label %17
    i32 50, label %17
    i32 52, label %13
  ]

13:                                               ; preds = %10
  %14 = load ptr, ptr %6, align 8, !tbaa !121
  %15 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %3) #16, !range !51
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %47, label %34

17:                                               ; preds = %10, %10
  %18 = load ptr, ptr %6, align 8, !tbaa !121
  %19 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %3) #16, !range !51
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %17, %21
  %22 = phi i32 [ %30, %21 ], [ 0, %17 ]
  %23 = phi ptr [ %29, %21 ], [ %5, %17 ]
  %24 = load ptr, ptr %4, align 8, !tbaa !120
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = load ptr, ptr %3, align 8, !tbaa !5
  %29 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %27, ptr noundef %28, ptr noundef %23) #17
  %30 = add i32 %22, 1
  %31 = load ptr, ptr %6, align 8, !tbaa !121
  %32 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %31, i32 noundef %30, ptr noundef nonnull %3) #16, !range !51
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %21, !llvm.loop !136

34:                                               ; preds = %13, %34
  %35 = phi i32 [ %43, %34 ], [ 0, %13 ]
  %36 = phi ptr [ %42, %34 ], [ %5, %13 ]
  %37 = load ptr, ptr %4, align 8, !tbaa !120
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = load ptr, ptr %3, align 8, !tbaa !5
  %42 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %40, ptr noundef %41, ptr noundef %36) #17
  %43 = add i32 %35, 1
  %44 = load ptr, ptr %6, align 8, !tbaa !121
  %45 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %44, i32 noundef %43, ptr noundef nonnull %3) #16, !range !51
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %34, !llvm.loop !137

47:                                               ; preds = %34, %21, %13, %17, %10
  %48 = phi ptr [ %5, %10 ], [ %5, %17 ], [ %5, %13 ], [ %29, %21 ], [ %42, %34 ]
  %49 = load ptr, ptr %4, align 8, !tbaa !120
  %50 = tail call ptr @force_operand(ptr noundef %48, ptr noundef %49) #17
  %51 = load ptr, ptr %4, align 8, !tbaa !120
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = tail call ptr @emit_move_insn(ptr noundef %51, ptr noundef %50) #17
  br label %55

55:                                               ; preds = %53, %47
  %56 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !62
  br label %59

59:                                               ; preds = %69, %55
  %60 = phi ptr [ %58, %55 ], [ %70, %69 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !62
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 13
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 1
  %67 = load i32, ptr %66, align 8, !tbaa !62
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %71, label %69

69:                                               ; preds = %59, %65
  %70 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %59, !llvm.loop !138

71:                                               ; preds = %65
  %72 = tail call ptr @emit_insn_after(ptr noundef %56, ptr noundef nonnull %61) #17
  br label %73

73:                                               ; preds = %2, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare ptr @get_bb_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc nonnull ptr @get_ivts_expr(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.iv_to_split, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !119
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = zext i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %18, %9 ]
  %11 = phi ptr [ %3, %7 ], [ %17, %9 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = getelementptr inbounds %struct.iv_to_split, ptr %1, i64 0, i32 5, i64 %10
  %15 = load i32, ptr %14, align 4, !tbaa !34
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [1 x %union.rtunion_def], ptr %13, i64 0, i64 %16
  %18 = add nuw nsw i64 %10, 1
  %19 = icmp eq i64 %18, %8
  br i1 %19, label %20, label %9, !llvm.loop !139

20:                                               ; preds = %9, %2
  %21 = phi ptr [ %3, %2 ], [ %17, %9 ]
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_expansion(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.var_to_expand, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !125
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.var_to_expand, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  %8 = getelementptr inbounds %struct.var_to_expand, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  br label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.var_to_expand, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = add nsw i32 %3, -1
  %14 = tail call fastcc ptr @VEC_rtx_base_index(ptr noundef %12, i32 noundef %13) #16
  br label %15

15:                                               ; preds = %10, %5
  %16 = phi ptr [ %9, %5 ], [ %12, %10 ]
  %17 = phi ptr [ %7, %5 ], [ %14, %10 ]
  %18 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %16) #16
  %19 = icmp eq i32 %18, %3
  %20 = add nsw i32 %3, 1
  %21 = select i1 %19, i32 0, i32 %20
  store i32 %21, ptr %2, align 8, !tbaa !125
  ret ptr %17
}

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_rtx_heap_reserve(ptr noundef %0) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_rtx_base_quick_push(ptr noundef %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_rtx_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !140
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_rtx_base_space(ptr noundef %2) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #17
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = load i32, ptr %0, align 8, !tbaa !140
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !140
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_space(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !142
  %6 = load i32, ptr %0, align 8, !tbaa !140
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_rtx_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !140
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !5
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @simplify_gen_unary(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_rtx_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #16
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare i32 @average_num_loop_insns(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decide_unroll_constant_iterations(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = and i32 %1, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %119, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 66, i64 1, ptr nonnull %6)
  br label %10

10:                                               ; preds = %8, %5
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 26, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !18
  %16 = udiv i32 %13, %15
  %17 = getelementptr inbounds %struct.param_info, ptr %11, i64 27, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !21
  %21 = udiv i32 %18, %20
  %22 = tail call i32 @llvm.umin.i32(i32 %16, i32 %21)
  %23 = getelementptr inbounds %struct.param_info, ptr %11, i64 28, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !71
  %25 = tail call i32 @llvm.umin.i32(i32 %22, i32 %24)
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %32

27:                                               ; preds = %10
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %119, label %30

30:                                               ; preds = %27
  %31 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 36, i64 1, ptr nonnull %28)
  br label %119

32:                                               ; preds = %10
  %33 = tail call ptr @get_simple_loop_desc(ptr noundef nonnull %0) #17
  %34 = getelementptr inbounds %struct.niter_desc, ptr %33, i64 0, i32 2
  %35 = load i8, ptr %34, align 8, !tbaa !35
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.niter_desc, ptr %33, i64 0, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !37
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.niter_desc, ptr %33, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !73
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41, %37, %32
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %119, label %48

48:                                               ; preds = %45
  %49 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 57, i64 1, ptr nonnull %46)
  br label %119

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.niter_desc, ptr %33, i64 0, i32 4
  %52 = load i64, ptr %51, align 8, !tbaa !38
  %53 = shl i32 %25, 1
  %54 = zext i32 %53 to i64
  %55 = icmp ult i64 %52, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %58 = icmp eq ptr %57, null
  br i1 %58, label %119, label %59

59:                                               ; preds = %56
  %60 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 36, i64 1, ptr nonnull %57)
  br label %119

61:                                               ; preds = %50
  %62 = add i32 %53, 10
  %63 = add i32 %53, 2
  %64 = or disjoint i32 %53, 1
  %65 = zext i32 %64 to i64
  %66 = icmp ugt i64 %52, %65
  %67 = trunc i64 %52 to i32
  %68 = add i32 %67, -2
  %69 = select i1 %66, i32 %63, i32 %68
  %70 = add i32 %25, -1
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %102, label %72

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.niter_desc, ptr %33, i64 0, i32 7
  br label %74

74:                                               ; preds = %72, %95
  %75 = phi i32 [ %62, %72 ], [ %99, %95 ]
  %76 = phi i32 [ %69, %72 ], [ %100, %95 ]
  %77 = phi i32 [ 0, %72 ], [ %98, %95 ]
  %78 = load i64, ptr %51, align 8, !tbaa !38
  %79 = add i32 %76, 1
  %80 = zext i32 %79 to i64
  %81 = urem i64 %78, %80
  %82 = trunc i64 %81 to i32
  %83 = tail call fastcc zeroext i8 @loop_exit_at_end_p(ptr noundef %0) #16, !range !41
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = add i32 %79, %82
  br label %95

87:                                               ; preds = %74
  %88 = icmp eq i32 %76, %82
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load ptr, ptr %73, align 8, !tbaa !40
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %89, %87
  %93 = add i32 %76, 2
  %94 = add i32 %93, %82
  br label %95

95:                                               ; preds = %89, %92, %85
  %96 = phi i32 [ %94, %92 ], [ %86, %85 ], [ %79, %89 ]
  %97 = icmp ult i32 %96, %75
  %98 = select i1 %97, i32 %76, i32 %77
  %99 = tail call i32 @llvm.umin.i32(i32 %96, i32 %75)
  %100 = add i32 %76, -1
  %101 = icmp ult i32 %100, %70
  br i1 %101, label %102, label %74, !llvm.loop !143

102:                                              ; preds = %95, %61
  %103 = phi i32 [ 0, %61 ], [ %98, %95 ]
  %104 = phi i32 [ %62, %61 ], [ %99, %95 ]
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4
  store i32 3, ptr %108, align 8, !tbaa !9
  %109 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4, i32 1
  store i32 %103, ptr %109, align 4, !tbaa !33
  br label %119

110:                                              ; preds = %102
  %111 = add i32 %103, 1
  %112 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %105, ptr noundef nonnull @.str.22, i32 noundef %111, i32 noundef %104, i32 noundef %25) #16
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %114 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4
  store i32 3, ptr %114, align 8, !tbaa !9
  %115 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4, i32 1
  store i32 %103, ptr %115, align 4, !tbaa !33
  %116 = icmp eq ptr %113, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %110
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %113, ptr noundef nonnull @.str.23, i32 noundef %103) #16
  br label %119

119:                                              ; preds = %107, %110, %117, %56, %59, %45, %48, %27, %30, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decide_unroll_runtime_iterations(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = and i32 %1, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %83, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 76, i64 1, ptr nonnull %6)
  br label %10

10:                                               ; preds = %8, %5
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 26, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !18
  %16 = udiv i32 %13, %15
  %17 = getelementptr inbounds %struct.param_info, ptr %11, i64 27, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !21
  %21 = udiv i32 %18, %20
  %22 = tail call i32 @llvm.umin.i32(i32 %16, i32 %21)
  %23 = getelementptr inbounds %struct.param_info, ptr %11, i64 28, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !71
  %25 = tail call i32 @llvm.umin.i32(i32 %22, i32 %24)
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %32

27:                                               ; preds = %10
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %83, label %30

30:                                               ; preds = %27
  %31 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 36, i64 1, ptr nonnull %28)
  br label %83

32:                                               ; preds = %10
  %33 = tail call ptr @get_simple_loop_desc(ptr noundef nonnull %0) #17
  %34 = getelementptr inbounds %struct.niter_desc, ptr %33, i64 0, i32 2
  %35 = load i8, ptr %34, align 8, !tbaa !35
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.niter_desc, ptr %33, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !73
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37, %32
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %83, label %44

44:                                               ; preds = %41
  %45 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 75, i64 1, ptr nonnull %42)
  br label %83

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.niter_desc, ptr %33, i64 0, i32 3
  %48 = load i8, ptr %47, align 1, !tbaa !37
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %52 = icmp eq ptr %51, null
  br i1 %52, label %83, label %53

53:                                               ; preds = %50
  %54 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 32, i64 1, ptr nonnull %51)
  br label %83

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !144
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 8
  %59 = load i64, ptr %58, align 8, !tbaa !145
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %62, %55
  br label %71

62:                                               ; preds = %55
  %63 = tail call i32 @expected_loop_iterations(ptr noundef nonnull %0) #17
  %64 = shl i32 %25, 1
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %61

66:                                               ; preds = %62
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %68 = icmp eq ptr %67, null
  br i1 %68, label %83, label %69

69:                                               ; preds = %66
  %70 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 36, i64 1, ptr nonnull %67)
  br label %83

71:                                               ; preds = %61, %71
  %72 = phi i32 [ %73, %71 ], [ 1, %61 ]
  %73 = shl i32 %72, 1
  %74 = icmp ugt i32 %73, %25
  br i1 %74, label %75, label %71, !llvm.loop !146

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4
  store i32 4, ptr %76, align 8, !tbaa !9
  %77 = add i32 %72, -1
  %78 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4, i32 1
  store i32 %77, ptr %78, align 4, !tbaa !33
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %79, ptr noundef nonnull @.str.27, i32 noundef %77) #16
  br label %83

83:                                               ; preds = %75, %81, %66, %69, %50, %53, %41, %44, %27, %30, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decide_unroll_stupid(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = and i32 %1, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %82, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 40, i64 1, ptr nonnull %6)
  br label %10

10:                                               ; preds = %8, %5
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 26, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !18
  %16 = udiv i32 %13, %15
  %17 = getelementptr inbounds %struct.param_info, ptr %11, i64 27, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !21
  %21 = udiv i32 %18, %20
  %22 = tail call i32 @llvm.umin.i32(i32 %16, i32 %21)
  %23 = getelementptr inbounds %struct.param_info, ptr %11, i64 28, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !71
  %25 = tail call i32 @llvm.umin.i32(i32 %22, i32 %24)
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %32

27:                                               ; preds = %10
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %82, label %30

30:                                               ; preds = %27
  %31 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 36, i64 1, ptr nonnull %28)
  br label %82

32:                                               ; preds = %10
  %33 = tail call ptr @get_simple_loop_desc(ptr noundef nonnull %0) #17
  %34 = getelementptr inbounds %struct.niter_desc, ptr %33, i64 0, i32 2
  %35 = load i8, ptr %34, align 8, !tbaa !35
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.niter_desc, ptr %33, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !73
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %82, label %44

44:                                               ; preds = %41
  %45 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 22, i64 1, ptr nonnull %42)
  br label %82

46:                                               ; preds = %37, %32
  %47 = tail call i32 @num_loop_branches(ptr noundef nonnull %0) #17
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %82, label %52

52:                                               ; preds = %49
  %53 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 36, i64 1, ptr nonnull %50)
  br label %82

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !144
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 8
  %58 = load i64, ptr %57, align 8, !tbaa !145
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %61, %54
  br label %70

61:                                               ; preds = %54
  %62 = tail call i32 @expected_loop_iterations(ptr noundef nonnull %0) #17
  %63 = shl i32 %25, 1
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %60

65:                                               ; preds = %61
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %82, label %68

68:                                               ; preds = %65
  %69 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 36, i64 1, ptr nonnull %66)
  br label %82

70:                                               ; preds = %60, %70
  %71 = phi i32 [ %72, %70 ], [ 1, %60 ]
  %72 = shl i32 %71, 1
  %73 = icmp ugt i32 %72, %25
  br i1 %73, label %74, label %70, !llvm.loop !147

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4
  store i32 5, ptr %75, align 8, !tbaa !9
  %76 = add i32 %71, -1
  %77 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4, i32 1
  store i32 %76, ptr %77, align 4, !tbaa !33
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %78, ptr noundef nonnull @.str.31, i32 noundef %76) #16
  br label %82

82:                                               ; preds = %74, %80, %65, %68, %49, %52, %41, %44, %27, %30, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decide_peel_simple(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %84, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 36, i64 1, ptr nonnull %6)
  br label %10

10:                                               ; preds = %8, %5
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 29, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !18
  %16 = udiv i32 %13, %15
  %17 = getelementptr inbounds %struct.param_info, ptr %11, i64 30, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !71
  %19 = tail call i32 @llvm.umin.i32(i32 %16, i32 %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %10
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %84, label %24

24:                                               ; preds = %21
  %25 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 36, i64 1, ptr nonnull %22)
  br label %84

26:                                               ; preds = %10
  %27 = tail call ptr @get_simple_loop_desc(ptr noundef nonnull %0) #17
  %28 = getelementptr inbounds %struct.niter_desc, ptr %27, i64 0, i32 2
  %29 = load i8, ptr %28, align 8, !tbaa !35
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.niter_desc, ptr %27, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.niter_desc, ptr %27, i64 0, i32 3
  %37 = load i8, ptr %36, align 1, !tbaa !37
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %84, label %42

42:                                               ; preds = %39
  %43 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 32, i64 1, ptr nonnull %40)
  br label %84

44:                                               ; preds = %35, %31, %26
  %45 = tail call i32 @num_loop_branches(ptr noundef nonnull %0) #17
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %84, label %50

50:                                               ; preds = %47
  %51 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 34, i64 1, ptr nonnull %48)
  br label %84

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !144
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 8
  %56 = load i64, ptr %55, align 8, !tbaa !145
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %52
  %59 = tail call i32 @expected_loop_iterations(ptr noundef nonnull %0) #17
  %60 = add i32 %59, 1
  %61 = icmp ugt i32 %60, %19
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %64 = icmp eq ptr %63, null
  br i1 %64, label %84, label %65

65:                                               ; preds = %62
  %66 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 37, i64 1, ptr nonnull %63)
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %68 = zext i32 %60 to i64
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.13, i64 noundef %68) #16
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.14, i32 noundef %19) #16
  br label %84

72:                                               ; preds = %52
  %73 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %74 = icmp eq ptr %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %72
  %76 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 55, i64 1, ptr nonnull %73)
  br label %84

77:                                               ; preds = %58
  %78 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4
  store i32 2, ptr %78, align 8, !tbaa !9
  %79 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 4, i32 1
  store i32 %60, ptr %79, align 4, !tbaa !33
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %80, ptr noundef nonnull @.str.36, i32 noundef %60) #16
  br label %84

84:                                               ; preds = %65, %62, %77, %82, %72, %75, %47, %50, %39, %42, %21, %24, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @loop_exit_at_end_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @get_simple_loop_desc(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.niter_desc, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rtl_bb_info, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !62
  br label %24

20:                                               ; preds = %27
  %21 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24, !llvm.loop !148

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
  %33 = phi i8 [ 0, %1 ], [ 1, %10 ], [ 1, %20 ], [ 1, %24 ], [ 0, %27 ]
  ret i8 %33
}

; Function Attrs: optsize
declare i32 @expected_loop_iterations(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @num_loop_branches(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw nsw i64 1, %7
  br label %20

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !43
  %12 = and i32 %1, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %11, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i8, ptr %3, align 1, !tbaa !62
  %19 = add i8 %18, 1
  store i8 %19, ptr %3, align 1, !tbaa !62
  br label %20

20:                                               ; preds = %5, %9, %17
  %21 = phi i64 [ %8, %5 ], [ %14, %9 ], [ %14, %17 ]
  %22 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !43
  %24 = or i64 %23, %21
  store i64 %24, ptr %22, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_dominated_by(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !149
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !5
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_basic_block_heap_reserve(ptr noundef %0) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #16
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare ptr @expand_simple_binop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unshare_all_rtl_in_chain(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @compare_and_jump_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @block_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #16, !range !41
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 655, ptr noundef nonnull @.str.1) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !151
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #16
  ret ptr %7
}

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #16, !range !41
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.41, i32 noundef 645, ptr noundef nonnull @.str.1) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #16
  ret ptr %8
}

; Function Attrs: optsize
declare void @iterate_fix_dominators(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %2) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #17
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = load i32, ptr %0, align 8, !tbaa !149
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !149
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !152
  %6 = load i32, ptr %0, align 8, !tbaa !149
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !151
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #16
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #16
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 24}
!10 = !{!"loop", !11, i64 0, !11, i64 4, !6, i64 8, !6, i64 16, !12, i64 24, !11, i64 32, !11, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !13, i64 80, !13, i64 96, !7, i64 112, !7, i64 113, !11, i64 116, !6, i64 120, !6, i64 128, !7, i64 136, !6, i64 144}
!11 = !{!"int", !7, i64 0}
!12 = !{!"lpt_decision", !11, i64 0, !11, i64 4}
!13 = !{!"", !14, i64 0, !14, i64 8}
!14 = !{!"long", !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!10, !11, i64 0}
!18 = !{!10, !11, i64 4}
!19 = distinct !{!19, !16}
!20 = !{!10, !6, i64 48}
!21 = !{!10, !11, i64 32}
!22 = distinct !{!22, !16}
!23 = !{!24, !11, i64 8}
!24 = !{!"", !6, i64 0, !11, i64 8}
!25 = !{!26, !6, i64 32}
!26 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !6, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!27 = !{!24, !6, i64 0}
!28 = !{!29, !6, i64 24}
!29 = !{!"loops", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!30 = distinct !{!30, !16}
!31 = !{!10, !6, i64 56}
!32 = distinct !{!32, !16}
!33 = !{!10, !11, i64 28}
!34 = !{!11, !11, i64 0}
!35 = !{!36, !7, i64 16}
!36 = !{!"niter_desc", !6, i64 0, !6, i64 8, !7, i64 16, !7, i64 17, !14, i64 24, !14, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !7, i64 64, !11, i64 68, !6, i64 72}
!37 = !{!36, !7, i64 17}
!38 = !{!36, !14, i64 24}
!39 = !{!36, !6, i64 72}
!40 = !{!36, !6, i64 48}
!41 = !{i8 0, i8 2}
!42 = !{!36, !6, i64 0}
!43 = !{!14, !14, i64 0}
!44 = !{!36, !6, i64 8}
!45 = !{!46, !6, i64 0}
!46 = !{!"edge_def", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !14, i64 56}
!47 = !{!48, !6, i64 8}
!48 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !14, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!49 = !{!46, !6, i64 8}
!50 = !{!36, !14, i64 32}
!51 = !{i32 0, i32 2}
!52 = distinct !{!52, !16}
!53 = !{!10, !11, i64 36}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = !{!36, !11, i64 68}
!57 = !{!46, !11, i64 52}
!58 = !{!46, !11, i64 48}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
!62 = !{!7, !7, i64 0}
!63 = !{!64, !6, i64 8}
!64 = !{!"rtl_bb_info", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32}
!65 = !{!29, !6, i64 8}
!66 = !{!67, !11, i64 0}
!67 = !{!"VEC_int_base", !11, i64 0, !11, i64 4, !7, i64 8}
!68 = !{!10, !6, i64 40}
!69 = !{!70, !11, i64 0}
!70 = !{!"VEC_loop_p_base", !11, i64 0, !11, i64 4, !7, i64 8}
!71 = !{!72, !11, i64 8}
!72 = !{!"param_info", !6, i64 0, !11, i64 8, !7, i64 12, !11, i64 16, !11, i64 20, !6, i64 24}
!73 = !{!36, !6, i64 40}
!74 = !{!36, !6, i64 56}
!75 = distinct !{!75, !16}
!76 = !{!77, !6, i64 0}
!77 = !{!"simple_bitmap_def", !6, i64 0, !11, i64 8, !11, i64 12, !7, i64 16}
!78 = !{!79, !6, i64 0}
!79 = !{!"opt_info", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !11, i64 48, !6, i64 56, !6, i64 64}
!80 = !{!79, !6, i64 8}
!81 = !{!79, !6, i64 16}
!82 = !{!79, !6, i64 64}
!83 = !{!79, !6, i64 56}
!84 = !{!79, !6, i64 24}
!85 = !{!79, !6, i64 32}
!86 = !{!79, !6, i64 40}
!87 = !{!10, !6, i64 16}
!88 = distinct !{!88, !16}
!89 = distinct !{!89, !16}
!90 = !{!26, !6, i64 8}
!91 = !{!92, !11, i64 32}
!92 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !6, i64 40, !11, i64 48, !7, i64 52, !7, i64 60, !11, i64 68, !11, i64 72}
!93 = !{!79, !11, i64 48}
!94 = distinct !{!94, !16}
!95 = !{!92, !6, i64 16}
!96 = !{!48, !6, i64 16}
!97 = !{!64, !6, i64 0}
!98 = distinct !{!98, !16}
!99 = !{!100, !6, i64 0}
!100 = !{!"iv_to_split", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !7, i64 36}
!101 = !{!102, !6, i64 0}
!102 = !{!"var_to_expand", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44}
!103 = distinct !{!103, !16}
!104 = distinct !{!104, !16}
!105 = distinct !{!105, !16}
!106 = distinct !{!106, !16}
!107 = distinct !{!107, !16}
!108 = distinct !{!108, !16}
!109 = distinct !{!109, !16}
!110 = !{!111, !11, i64 0}
!111 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !7, i64 8}
!112 = !{!113, !6, i64 8}
!113 = !{!"rtx_iv", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 44, !11, i64 48}
!114 = !{!113, !11, i64 44}
!115 = !{!113, !11, i64 40}
!116 = !{!100, !6, i64 8}
!117 = !{!100, !6, i64 16}
!118 = !{!100, !6, i64 24}
!119 = !{!100, !11, i64 32}
!120 = !{!102, !6, i64 8}
!121 = !{!102, !6, i64 16}
!122 = !{!102, !6, i64 24}
!123 = !{!102, !11, i64 32}
!124 = !{!102, !11, i64 36}
!125 = !{!102, !11, i64 40}
!126 = !{!102, !11, i64 44}
!127 = distinct !{!127, !16}
!128 = distinct !{!128, !16}
!129 = distinct !{!129, !16}
!130 = distinct !{!130, !16}
!131 = !{!132, !7, i64 49}
!132 = !{!"real_format", !6, i64 0, !6, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !7, i64 44, !7, i64 45, !7, i64 46, !7, i64 47, !7, i64 48, !7, i64 49, !7, i64 50, !7, i64 51}
!133 = distinct !{!133, !16}
!134 = distinct !{!134, !16}
!135 = distinct !{!135, !16}
!136 = distinct !{!136, !16}
!137 = distinct !{!137, !16}
!138 = distinct !{!138, !16}
!139 = distinct !{!139, !16}
!140 = !{!141, !11, i64 0}
!141 = !{!"VEC_rtx_base", !11, i64 0, !11, i64 4, !7, i64 8}
!142 = !{!141, !11, i64 4}
!143 = distinct !{!143, !16}
!144 = !{!10, !6, i64 8}
!145 = !{!48, !14, i64 72}
!146 = distinct !{!146, !16}
!147 = distinct !{!147, !16}
!148 = distinct !{!148, !16}
!149 = !{!150, !11, i64 0}
!150 = !{!"VEC_basic_block_base", !11, i64 0, !11, i64 4, !7, i64 8}
!151 = !{!48, !6, i64 0}
!152 = !{!150, !11, i64 4}
