; ModuleID = 'loop-init.c'
source_filename = "loop-init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loop_iterator = type { ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @loop_optimizer_init(i32 noundef %0) local_unnamed_addr #0 !prof !79 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !80
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !87

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 47, ptr noundef nonnull @.str.1) #11
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #11
  %9 = tail call i32 @flow_loops_find(ptr noundef %8) #11
  %10 = load ptr, ptr @cfun, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 4
  store ptr %8, ptr %11, align 8, !tbaa !84
  %12 = and i32 %0, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14, !prof !88

14:                                               ; preds = %7
  %15 = and i32 %0, -25
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !89

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 62, ptr noundef nonnull @.str.1) #11
  br label %18

18:                                               ; preds = %14, %17
  tail call fastcc void @loops_state_set() #12
  br label %20

19:                                               ; preds = %7
  tail call void @disambiguate_loops_with_multiple_latches() #11
  br label %20

20:                                               ; preds = %19, %18
  %21 = and i32 %0, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23, !prof !90

23:                                               ; preds = %20
  %24 = and i32 %0, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !91

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ 3, %26 ], [ 1, %23 ]
  tail call void @create_preheaders(i32 noundef %28) #11
  br label %29

29:                                               ; preds = %27, %20
  %30 = and i32 %0, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32, !prof !92

32:                                               ; preds = %29
  tail call void @force_single_succ_latches() #11
  br label %33

33:                                               ; preds = %32, %29
  %34 = and i32 %0, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !93

36:                                               ; preds = %33
  %37 = tail call zeroext i8 @mark_irreducible_loops() #11
  br label %38

38:                                               ; preds = %36, %33
  %39 = and i32 %0, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41, !prof !94

41:                                               ; preds = %38
  tail call void @record_loop_exits() #11
  br label %42

42:                                               ; preds = %41, %38
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !80
  tail call void @flow_loops_dump(ptr noundef %43, ptr noundef null, i32 noundef 1) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @flow_loops_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_set() unnamed_addr #3 !prof !95 !PGOFuncName !96 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !80
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = load i32, ptr %3, align 8, !tbaa !97
  %5 = or i32 %4, 16
  store i32 %5, ptr %3, align 8, !tbaa !97
  ret void
}

; Function Attrs: optsize
declare void @disambiguate_loops_with_multiple_latches() local_unnamed_addr #2

; Function Attrs: optsize
declare void @create_preheaders(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @force_single_succ_latches() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #2

; Function Attrs: optsize
declare void @record_loop_exits() local_unnamed_addr #2

; Function Attrs: optsize
declare void @flow_loops_dump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @loop_optimizer_finalize() local_unnamed_addr #0 !prof !79 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %3 = load ptr, ptr @cfun, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !99

7:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.1) #11
  br label %8

8:                                                ; preds = %0, %7
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #12
  %9 = load ptr, ptr %2, align 8, !tbaa !80
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !100

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %9, %8 ]
  tail call void @free_simple_loop_desc(ptr noundef nonnull %12) #11
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #12
  %13 = load ptr, ptr %2, align 8, !tbaa !80
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %11, !prof !101, !llvm.loop !102

15:                                               ; preds = %11, %8
  %16 = tail call fastcc zeroext i8 @loops_state_satisfies_p() #12
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18, !prof !104

18:                                               ; preds = %15
  tail call void @release_recorded_exits() #11
  br label %19

19:                                               ; preds = %18, %15
  %20 = load ptr, ptr @cfun, align 8, !tbaa !80
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !84
  tail call void @flow_loops_free(ptr noundef %22) #11
  %23 = load ptr, ptr @cfun, align 8, !tbaa !80
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  tail call void @ggc_free(ptr noundef %25) #11
  %26 = load ptr, ptr @cfun, align 8, !tbaa !80
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 4
  store ptr null, ptr %27, align 8, !tbaa !84
  %28 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !105
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32, !prof !106

32:                                               ; preds = %19, %32
  %33 = phi ptr [ %36, %32 ], [ %30, %19 ]
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 3
  store ptr null, ptr %34, align 8, !tbaa !107
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !80
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %32, !prof !110, !llvm.loop !111

38:                                               ; preds = %32, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !79 !PGOFuncName !112 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !113
  %4 = load ptr, ptr @cfun, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !99

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !115
  store ptr null, ptr %1, align 8, !tbaa !80
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #12
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #12
  store ptr %11, ptr %0, align 8, !tbaa !115
  %12 = load ptr, ptr @cfun, align 8, !tbaa !80
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !116
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !117
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23, !prof !99

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !115
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #12
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !121
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !87

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !122
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27, !prof !123

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !prof !124, !llvm.loop !125

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #12
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: optsize
declare void @free_simple_loop_desc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !79 !PGOFuncName !126 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !113
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !115
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #12, !range !127
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !87

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !113
  %13 = load i32, ptr %3, align 4, !tbaa !128
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #12
  store ptr %14, ptr %1, align 8, !tbaa !80
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !129

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #12
  store ptr null, ptr %1, align 8, !tbaa !80
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p() unnamed_addr #4 !prof !79 !PGOFuncName !130 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !80
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = load i32, ptr %3, align 8, !tbaa !97
  %5 = trunc i32 %4 to i8
  %6 = lshr i8 %5, 3
  %7 = and i8 %6, 1
  ret i8 %7
}

; Function Attrs: optsize
declare void @release_recorded_exits() local_unnamed_addr #2

; Function Attrs: optsize
declare void @flow_loops_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_loop2() #5 !prof !131 !PGOFuncName !132 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !128
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %16, !prof !133

3:                                                ; preds = %0
  %4 = load i32, ptr @flag_move_loop_invariants, align 4, !tbaa !128
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr @flag_unswitch_loops, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = load i32, ptr @flag_peel_loops, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %16, label %12, !prof !134

12:                                               ; preds = %3
  %13 = load i32, ptr @flag_unroll_loops, align 4, !tbaa !128
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %3, %12, %0
  %17 = phi i8 [ 0, %0 ], [ 1, %3 ], [ %15, %12 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rtl_loop_init() #0 !prof !131 !PGOFuncName !135 {
  %1 = tail call i32 @current_ir_type() #11
  %2 = icmp eq i32 %1, 2
  br i1 %2, label %4, label %3, !prof !133

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 179, ptr noundef nonnull @.str.1) #11
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !80
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !133

7:                                                ; preds = %4
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !128
  tail call void @dump_flow_info(ptr noundef nonnull %5, i32 noundef %8) #11
  br label %9

9:                                                ; preds = %7, %4
  tail call void @loop_optimizer_init(i32 noundef 7) #12
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rtl_loop_done() #0 !prof !131 !PGOFuncName !136 {
  tail call void @loop_optimizer_finalize() #12
  tail call void @free_dominance_info(i32 noundef 1) #11
  %1 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #11
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !80
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !133

4:                                                ; preds = %0
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !128
  tail call void @dump_flow_info(ptr noundef nonnull %2, i32 noundef %5) #11
  br label %6

6:                                                ; preds = %4, %0
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_rtl_move_loop_invariants() #5 !prof !131 !PGOFuncName !137 {
  %1 = load i32, ptr @flag_move_loop_invariants, align 4, !tbaa !128
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rtl_move_loop_invariants() #0 !prof !131 !PGOFuncName !138 {
  %1 = tail call fastcc i32 @number_of_loops() #12
  %2 = icmp ugt i32 %1, 1
  br i1 %2, label %3, label %4, !prof !139

3:                                                ; preds = %0
  tail call void @move_loop_invariants() #11
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_rtl_unswitch() #5 !prof !131 !PGOFuncName !140 {
  %1 = load i32, ptr @flag_unswitch_loops, align 4, !tbaa !128
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rtl_unswitch() #0 !prof !131 !PGOFuncName !141 {
  %1 = tail call fastcc i32 @number_of_loops() #12
  %2 = icmp ugt i32 %1, 1
  br i1 %2, label %3, label %4, !prof !139

3:                                                ; preds = %0
  tail call void @unswitch_loops() #11
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_rtl_unroll_and_peel_loops() #5 !prof !131 !PGOFuncName !142 {
  %1 = load i32, ptr @flag_peel_loops, align 4, !tbaa !128
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_unroll_loops, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load i32, ptr @flag_unroll_all_loops, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7, !prof !143
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rtl_unroll_and_peel_loops() #0 !prof !144 !PGOFuncName !145 {
  %1 = tail call fastcc i32 @number_of_loops() #12
  %2 = icmp ugt i32 %1, 1
  br i1 %2, label %3, label %19

3:                                                ; preds = %0
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !80
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @df_dump(ptr noundef nonnull %4) #11
  br label %7

7:                                                ; preds = %6, %3
  %8 = load i32, ptr @flag_peel_loops, align 4, !tbaa !128
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = load i32, ptr @flag_unroll_loops, align 4, !tbaa !128
  %12 = icmp eq i32 %11, 0
  %13 = or disjoint i32 %10, 2
  %14 = select i1 %12, i32 %10, i32 %13
  %15 = load i32, ptr @flag_unroll_all_loops, align 4, !tbaa !128
  %16 = icmp eq i32 %15, 0
  %17 = or disjoint i32 %14, 4
  %18 = select i1 %16, i32 %14, i32 %17
  tail call void @unroll_and_peel_loops(i32 noundef %18) #11
  br label %19

19:                                               ; preds = %7, %0
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_rtl_doloop() #6 !prof !131 !PGOFuncName !146 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @rtl_doloop() #6 !prof !144 !PGOFuncName !147 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !79 !PGOFuncName !148 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #11
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #4 !prof !149 !PGOFuncName !150 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !80
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !151

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !152
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #12
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #7 !prof !144 !PGOFuncName !153 {
  %3 = load i32, ptr %0, align 4, !tbaa !154
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !154
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !79 !PGOFuncName !156 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !87

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #12
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !158 !PGOFuncName !159 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !160

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !161
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !144 !PGOFuncName !163 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !79 !PGOFuncName !164 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !99

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !154
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !99

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !128
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !128
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #4 !prof !144 !PGOFuncName !165 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !80
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !152
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !79 !PGOFuncName !166 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !99

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #12
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare i32 @current_ir_type() local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @move_loop_invariants() local_unnamed_addr #2

; Function Attrs: optsize
declare void @unswitch_loops() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unroll_and_peel_loops(i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!78}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!35 = !{ptr @loop_optimizer_init, ptr @fancy_abort, i64 2}
!36 = !{ptr @loop_optimizer_init, ptr @ggc_alloc_cleared_stat, i64 802}
!37 = !{ptr @loop_optimizer_init, ptr @flow_loops_find, i64 802}
!38 = !{ptr @loop_optimizer_init, ptr @loops_state_set, i64 191}
!39 = !{ptr @loop_optimizer_init, ptr @disambiguate_loops_with_multiple_latches, i64 611}
!40 = !{ptr @loop_optimizer_init, ptr @create_preheaders, i64 382}
!41 = !{ptr @loop_optimizer_init, ptr @force_single_succ_latches, i64 458}
!42 = !{ptr @loop_optimizer_init, ptr @mark_irreducible_loops, i64 344}
!43 = !{ptr @loop_optimizer_init, ptr @record_loop_exits, i64 230}
!44 = !{ptr @loop_optimizer_init, ptr @flow_loops_dump, i64 802}
!45 = !{ptr @loop_optimizer_finalize, ptr @fancy_abort, i64 1}
!46 = !{ptr @loop_optimizer_finalize, ptr @fel_init, i64 802}
!47 = !{ptr @loop_optimizer_finalize, ptr @free_simple_loop_desc, i64 1}
!48 = !{ptr @loop_optimizer_finalize, ptr @fel_next, i64 1}
!49 = !{ptr @loop_optimizer_finalize, ptr @loops_state_satisfies_p, i64 802}
!50 = !{ptr @loop_optimizer_finalize, ptr @release_recorded_exits, i64 270}
!51 = !{ptr @loop_optimizer_finalize, ptr @flow_loops_free, i64 802}
!52 = !{ptr @loop_optimizer_finalize, ptr @ggc_free, i64 802}
!53 = !{ptr @fel_init, ptr @number_of_loops, i64 801}
!54 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 801}
!55 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 2}
!56 = !{ptr @fel_init, ptr @loop_outer, i64 801}
!57 = !{ptr @fel_init, ptr @fel_next, i64 801}
!58 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 803}
!59 = !{ptr @fel_next, ptr @get_loop, i64 1}
!60 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 802}
!61 = !{ptr @rtl_loop_init, ptr @current_ir_type, i64 38}
!62 = !{ptr @rtl_loop_init, ptr @fancy_abort, i64 1}
!63 = !{ptr @rtl_loop_init, ptr @dump_flow_info, i64 1}
!64 = !{ptr @rtl_loop_init, ptr @loop_optimizer_init, i64 38}
!65 = !{ptr @rtl_loop_done, ptr @loop_optimizer_finalize, i64 38}
!66 = !{ptr @rtl_loop_done, ptr @free_dominance_info, i64 38}
!67 = !{ptr @rtl_loop_done, ptr @cleanup_cfg, i64 38}
!68 = !{ptr @rtl_loop_done, ptr @dump_flow_info, i64 1}
!69 = !{ptr @rtl_move_loop_invariants, ptr @number_of_loops, i64 38}
!70 = !{ptr @rtl_move_loop_invariants, ptr @move_loop_invariants, i64 1}
!71 = !{ptr @rtl_unswitch, ptr @number_of_loops, i64 38}
!72 = !{ptr @rtl_unswitch, ptr @unswitch_loops, i64 1}
!73 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 802}
!74 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 877}
!75 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 802}
!76 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 1}
!77 = !{ptr @VEC_int_heap_free, ptr @free, i64 801}
!78 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!79 = !{!"function_entry_count", i64 802}
!80 = !{!81, !81, i64 0}
!81 = !{!"any pointer", !82, i64 0}
!82 = !{!"omnipotent char", !83, i64 0}
!83 = !{!"Simple C/C++ TBAA"}
!84 = !{!85, !81, i64 32}
!85 = !{!"function", !81, i64 0, !81, i64 8, !81, i64 16, !81, i64 24, !81, i64 32, !81, i64 40, !81, i64 48, !81, i64 56, !81, i64 64, !81, i64 72, !81, i64 80, !81, i64 88, !81, i64 96, !86, i64 104, !86, i64 108, !86, i64 112, !86, i64 116, !86, i64 120, !86, i64 124, !81, i64 128, !86, i64 136, !86, i64 137, !86, i64 138, !86, i64 138, !86, i64 138, !86, i64 138, !86, i64 138, !86, i64 138, !86, i64 138, !86, i64 139, !86, i64 139, !86, i64 139, !86, i64 139, !86, i64 139, !86, i64 139, !86, i64 139}
!86 = !{!"int", !82, i64 0}
!87 = !{!"branch_weights", i32 803, i32 1}
!88 = !{!"branch_weights", i32 613, i32 191}
!89 = !{!"branch_weights", i32 191, i32 1}
!90 = !{!"branch_weights", i32 421, i32 383}
!91 = !{!"branch_weights", i32 383, i32 1}
!92 = !{!"branch_weights", i32 345, i32 459}
!93 = !{!"branch_weights", i32 459, i32 345}
!94 = !{!"branch_weights", i32 573, i32 231}
!95 = !{!"function_entry_count", i64 190}
!96 = !{!"loop-init.c:loops_state_set"}
!97 = !{!98, !86, i64 0}
!98 = !{!"loops", !86, i64 0, !81, i64 8, !81, i64 16, !81, i64 24}
!99 = !{!"branch_weights", i32 1, i32 803}
!100 = !{!"branch_weights", i32 802, i32 1}
!101 = !{!"branch_weights", i32 1, i32 0}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.mustprogress"}
!104 = !{!"branch_weights", i32 533, i32 271}
!105 = !{!85, !81, i64 8}
!106 = !{!"branch_weights", i32 1, i32 802}
!107 = !{!108, !81, i64 24}
!108 = !{!"basic_block_def", !81, i64 0, !81, i64 8, !81, i64 16, !81, i64 24, !82, i64 32, !81, i64 48, !81, i64 56, !82, i64 64, !109, i64 72, !86, i64 80, !86, i64 84, !86, i64 88, !86, i64 92, !86, i64 96}
!109 = !{!"long", !82, i64 0}
!110 = !{!"branch_weights", i32 802, i32 3763549}
!111 = distinct !{!111, !103}
!112 = !{!"loop-init.c:fel_init"}
!113 = !{!114, !86, i64 8}
!114 = !{!"", !81, i64 0, !86, i64 8}
!115 = !{!114, !81, i64 0}
!116 = !{!98, !81, i64 24}
!117 = !{!118, !86, i64 0}
!118 = !{!"loop", !86, i64 0, !86, i64 4, !81, i64 8, !81, i64 16, !119, i64 24, !86, i64 32, !86, i64 36, !81, i64 40, !81, i64 48, !81, i64 56, !81, i64 64, !81, i64 72, !120, i64 80, !120, i64 96, !82, i64 112, !82, i64 113, !86, i64 116, !81, i64 120, !81, i64 128, !82, i64 136, !81, i64 144}
!119 = !{!"lpt_decision", !86, i64 0, !86, i64 4}
!120 = !{!"", !109, i64 0, !109, i64 8}
!121 = !{!118, !81, i64 48}
!122 = !{!118, !81, i64 56}
!123 = !{!"branch_weights", i32 803, i32 803}
!124 = !{!"branch_weights", i32 803, i32 0}
!125 = distinct !{!125, !103}
!126 = !{!"loop-init.c:fel_next"}
!127 = !{i32 0, i32 2}
!128 = !{!86, !86, i64 0}
!129 = distinct !{!129, !103}
!130 = !{!"loop-init.c:loops_state_satisfies_p"}
!131 = !{!"function_entry_count", i64 38}
!132 = !{!"loop-init.c:gate_handle_loop2"}
!133 = !{!"branch_weights", i32 39, i32 1}
!134 = !{!"branch_weights", i32 159, i32 1}
!135 = !{!"loop-init.c:rtl_loop_init"}
!136 = !{!"loop-init.c:rtl_loop_done"}
!137 = !{!"loop-init.c:gate_rtl_move_loop_invariants"}
!138 = !{!"loop-init.c:rtl_move_loop_invariants"}
!139 = !{!"branch_weights", i32 1, i32 39}
!140 = !{!"loop-init.c:gate_rtl_unswitch"}
!141 = !{!"loop-init.c:rtl_unswitch"}
!142 = !{!"loop-init.c:gate_rtl_unroll_and_peel_loops"}
!143 = !{!"branch_weights", i32 79, i32 1521}
!144 = !{!"function_entry_count", i64 0}
!145 = !{!"loop-init.c:rtl_unroll_and_peel_loops"}
!146 = !{!"loop-init.c:gate_rtl_doloop"}
!147 = !{!"loop-init.c:rtl_doloop"}
!148 = !{!"loop-init.c:VEC_int_heap_alloc"}
!149 = !{!"function_entry_count", i64 878}
!150 = !{!"loop-init.c:number_of_loops"}
!151 = !{!"branch_weights", i32 1, i32 879}
!152 = !{!98, !81, i64 8}
!153 = !{!"loop-init.c:VEC_int_base_quick_push"}
!154 = !{!155, !86, i64 0}
!155 = !{!"VEC_int_base", !86, i64 0, !86, i64 4, !82, i64 8}
!156 = !{!"loop-init.c:loop_outer"}
!157 = !{!118, !81, i64 40}
!158 = !{!"function_entry_count", i64 1680}
!159 = !{!"loop-init.c:VEC_loop_p_base_length"}
!160 = !{!"branch_weights", i32 803, i32 879}
!161 = !{!162, !86, i64 0}
!162 = !{!"VEC_loop_p_base", !86, i64 0, !86, i64 4, !82, i64 8}
!163 = !{!"loop-init.c:VEC_loop_p_base_index"}
!164 = !{!"loop-init.c:VEC_int_base_iterate"}
!165 = !{!"loop-init.c:get_loop"}
!166 = !{!"loop-init.c:VEC_int_heap_free"}
