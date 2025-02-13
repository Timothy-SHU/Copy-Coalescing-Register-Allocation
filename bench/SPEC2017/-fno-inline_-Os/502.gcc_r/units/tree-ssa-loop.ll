; ModuleID = 'tree-ssa-loop.c'
source_filename = "tree-ssa-loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@pass_tree_loop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_tree_loop, ptr null, ptr null, ptr null, i32 0, i32 81, i32 8, i32 0, i32 0, i32 2, i32 7 } }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"loopinit\00", align 1
@pass_tree_loop_init = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr null, ptr @tree_ssa_loop_init, ptr null, ptr null, i32 0, i32 100, i32 8, i32 0, i32 0, i32 0, i32 65 } }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"lim\00", align 1
@pass_lim = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_tree_ssa_loop_im, ptr @tree_ssa_loop_im, ptr null, ptr null, i32 0, i32 83, i32 8, i32 0, i32 0, i32 0, i32 65 } }, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"unswitch\00", align 1
@pass_tree_unswitch = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.3, ptr @gate_tree_ssa_loop_unswitch, ptr @tree_ssa_loop_unswitch, ptr null, ptr null, i32 0, i32 86, i32 8, i32 0, i32 0, i32 0, i32 67 } }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"pcom\00", align 1
@pass_predcom = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr @gate_tree_predictive_commoning, ptr @run_tree_predictive_commoning, ptr null, ptr null, i32 0, i32 99, i32 8, i32 0, i32 0, i32 0, i32 16449 } }, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"vect\00", align 1
@pass_vectorize = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr @gate_tree_vectorize, ptr @tree_vectorize, ptr null, ptr null, i32 0, i32 89, i32 40, i32 0, i32 0, i32 64, i32 2051 } }, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"ltrans\00", align 1
@pass_linear_transform = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.6, ptr @gate_tree_linear_transform, ptr @tree_linear_transform, ptr null, ptr null, i32 0, i32 94, i32 40, i32 0, i32 0, i32 0, i32 16451 } }, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"graphite\00", align 1
@pass_graphite_transforms = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.7, ptr @gate_graphite_transforms, ptr @graphite_transforms, ptr null, ptr null, i32 0, i32 91, i32 40, i32 0, i32 0, i32 0, i32 64 } }, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"ckdd\00", align 1
@pass_check_data_deps = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.8, ptr @gate_check_data_deps, ptr @check_data_deps, ptr null, ptr null, i32 0, i32 96, i32 40, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"ivcanon\00", align 1
@pass_iv_canon = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.9, ptr @gate_tree_ssa_loop_ivcanon, ptr @tree_ssa_loop_ivcanon, ptr null, ptr null, i32 0, i32 84, i32 40, i32 0, i32 0, i32 0, i32 65 } }, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"sccp\00", align 1
@pass_scev_cprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.10, ptr @gate_scev_const_prop, ptr @scev_const_prop, ptr null, ptr null, i32 0, i32 85, i32 40, i32 0, i32 0, i32 0, i32 16417 } }, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"*record_bounds\00", align 1
@pass_record_bounds = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.11, ptr null, ptr @tree_ssa_loop_bounds, ptr null, ptr null, i32 0, i32 82, i32 40, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"cunroll\00", align 1
@pass_complete_unroll = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.12, ptr @gate_tree_complete_unroll, ptr @tree_complete_unroll, ptr null, ptr null, i32 0, i32 87, i32 40, i32 0, i32 0, i32 0, i32 67 } }, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"cunrolli\00", align 1
@pass_complete_unrolli = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.13, ptr @gate_tree_complete_unroll_inner, ptr @tree_complete_unroll_inner, ptr null, ptr null, i32 0, i32 87, i32 40, i32 0, i32 0, i32 0, i32 67 } }, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"parloops\00", align 1
@pass_parallelize_loops = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.14, ptr @gate_tree_parallelize_loops, ptr @tree_parallelize_loops, ptr null, ptr null, i32 0, i32 88, i32 40, i32 0, i32 0, i32 0, i32 65 } }, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"aprefetch\00", align 1
@pass_loop_prefetch = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.15, ptr @gate_tree_ssa_loop_prefetch, ptr @tree_ssa_loop_prefetch, ptr null, ptr null, i32 0, i32 97, i32 40, i32 0, i32 0, i32 0, i32 65 } }, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"ivopts\00", align 1
@pass_iv_optimize = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.16, ptr @gate_tree_ssa_loop_ivopts, ptr @tree_ssa_loop_ivopts, ptr null, ptr null, i32 0, i32 98, i32 40, i32 0, i32 0, i32 0, i32 2115 } }, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"loopdone\00", align 1
@pass_tree_loop_done = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.17, ptr null, ptr @tree_ssa_loop_done, ptr null, ptr null, i32 0, i32 101, i32 8, i32 0, i32 0, i32 0, i32 33 } }, align 8
@flag_tree_loop_optimize = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@flag_tree_loop_im = external local_unnamed_addr global i32, align 4
@flag_unswitch_loops = external local_unnamed_addr global i32, align 4
@flag_predictive_commoning = external local_unnamed_addr global i32, align 4
@flag_tree_vectorize = external local_unnamed_addr global i32, align 4
@flag_tree_loop_linear = external local_unnamed_addr global i32, align 4
@flag_loop_block = external local_unnamed_addr global i32, align 4
@flag_loop_interchange = external local_unnamed_addr global i32, align 4
@flag_loop_strip_mine = external local_unnamed_addr global i32, align 4
@flag_graphite_identity = external local_unnamed_addr global i32, align 4
@flag_loop_parallelize_all = external local_unnamed_addr global i32, align 4
@flag_graphite = external local_unnamed_addr global i32, align 4
@flag_check_data_deps = external local_unnamed_addr global i32, align 4
@flag_tree_loop_ivcanon = external local_unnamed_addr global i32, align 4
@flag_tree_scev_cprop = external local_unnamed_addr global i32, align 4
@flag_unroll_loops = external local_unnamed_addr global i32, align 4
@flag_peel_loops = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@flag_tree_parallelize_loops = external local_unnamed_addr global i32, align 4
@flag_prefetch_loop_arrays = external local_unnamed_addr global i32, align 4
@flag_ivopts = external local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_loop() #0 !prof !67 !PGOFuncName !68 {
  %1 = load i32, ptr @flag_tree_loop_optimize, align 4, !tbaa !69
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_loop_init() #1 !prof !67 !PGOFuncName !73 {
  tail call void @loop_optimizer_init(i32 noundef 15) #7
  tail call void @rewrite_into_loop_closed_ssa(ptr noundef null, i32 noundef 2048) #7
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %4, label %3, !prof !74

3:                                                ; preds = %0
  tail call void @scev_initialize() #7
  br label %4

4:                                                ; preds = %0, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_loop_im() #0 !prof !67 !PGOFuncName !75 {
  %1 = load i32, ptr @flag_tree_loop_im, align 4, !tbaa !69
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_loop_im() #1 !prof !67 !PGOFuncName !76 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %4, label %3, !prof !74

3:                                                ; preds = %0
  tail call void @tree_ssa_lim() #7
  br label %4

4:                                                ; preds = %0, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_loop_unswitch() #0 !prof !67 !PGOFuncName !77 {
  %1 = load i32, ptr @flag_unswitch_loops, align 4, !tbaa !69
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_loop_unswitch() #1 !prof !67 !PGOFuncName !78 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %5, label %3, !prof !74

3:                                                ; preds = %0
  %4 = tail call i32 @tree_ssa_unswitch_loops() #7
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_predictive_commoning() #0 !prof !67 !PGOFuncName !79 {
  %1 = load i32, ptr @flag_predictive_commoning, align 4, !tbaa !69
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @run_tree_predictive_commoning() #1 !prof !67 !PGOFuncName !80 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !85

5:                                                ; preds = %0
  %6 = tail call i32 @tree_predictive_commoning() #7
  br label %7

7:                                                ; preds = %0, %5
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_vectorize() #0 !prof !67 !PGOFuncName !86 {
  %1 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !69
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_vectorize() #1 !prof !67 !PGOFuncName !87 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %5, label %3, !prof !74

3:                                                ; preds = %0
  %4 = tail call i32 @vectorize_loops() #7
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_linear_transform() #0 !prof !67 !PGOFuncName !88 {
  %1 = load i32, ptr @flag_tree_loop_linear, align 4, !tbaa !69
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_linear_transform() #1 !prof !89 !PGOFuncName !90 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @linear_transform_loops() #7
  br label %4

4:                                                ; preds = %0, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_graphite_transforms() #2 !prof !67 !PGOFuncName !91 {
  %1 = load i32, ptr @flag_loop_block, align 4, !tbaa !69
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_loop_interchange, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load i32, ptr @flag_loop_strip_mine, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = load i32, ptr @flag_graphite_identity, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  %12 = load i32, ptr @flag_loop_parallelize_all, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %19, label %15, !prof !92

15:                                               ; preds = %0
  %16 = load i32, ptr @flag_graphite, align 4, !tbaa !69
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i8
  br label %20

19:                                               ; preds = %0
  store i32 1, ptr @flag_graphite, align 4, !tbaa !69
  br label %20

20:                                               ; preds = %15, %19
  %21 = phi i8 [ %18, %15 ], [ 1, %19 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graphite_transforms() #1 !prof !89 !PGOFuncName !93 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void @graphite_transform_loops() #7
  br label %6

6:                                                ; preds = %0, %5
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_check_data_deps() #0 !prof !67 !PGOFuncName !94 {
  %1 = load i32, ptr @flag_check_data_deps, align 4, !tbaa !69
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @check_data_deps() #1 !prof !89 !PGOFuncName !95 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @tree_check_data_deps() #7
  br label %4

4:                                                ; preds = %0, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_loop_ivcanon() #0 !prof !67 !PGOFuncName !96 {
  %1 = load i32, ptr @flag_tree_loop_ivcanon, align 4, !tbaa !69
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_loop_ivcanon() #1 !prof !67 !PGOFuncName !97 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %5, label %3, !prof !74

3:                                                ; preds = %0
  %4 = tail call i32 @canonicalize_induction_variables() #7
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_scev_const_prop() #0 !prof !67 !PGOFuncName !98 {
  %1 = load i32, ptr @flag_tree_scev_cprop, align 4, !tbaa !69
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: optsize
declare i32 @scev_const_prop() #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_loop_bounds() #1 !prof !67 !PGOFuncName !99 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %4, label %3, !prof !74

3:                                                ; preds = %0
  tail call void @estimate_numbers_of_iterations() #7
  tail call void @scev_reset() #7
  br label %4

4:                                                ; preds = %0, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_tree_complete_unroll() #4 !prof !67 !PGOFuncName !100 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_complete_unroll() #1 !prof !67 !PGOFuncName !101 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %14, label %3, !prof !74

3:                                                ; preds = %0
  %4 = load i32, ptr @flag_unroll_loops, align 4, !tbaa !69
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr @flag_peel_loops, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = load i32, ptr @optimize, align 4
  %10 = icmp sgt i32 %9, 2
  %11 = select i1 %8, i1 true, i1 %10
  %12 = zext i1 %11 to i8
  %13 = tail call i32 @tree_unroll_loops_completely(i8 noundef zeroext %12, i8 noundef zeroext 1) #7
  br label %14

14:                                               ; preds = %0, %3
  %15 = phi i32 [ %13, %3 ], [ 0, %0 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_complete_unroll_inner() #0 !prof !67 !PGOFuncName !102 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !69
  %2 = icmp sgt i32 %1, 1
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_complete_unroll_inner() #1 !prof !67 !PGOFuncName !103 {
  tail call void @loop_optimizer_init(i32 noundef 15) #7
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ugt i32 %1, 1
  br i1 %2, label %3, label %8, !prof !85

3:                                                ; preds = %0
  tail call void @scev_initialize() #7
  %4 = load i32, ptr @optimize, align 4, !tbaa !69
  %5 = icmp sgt i32 %4, 2
  %6 = zext i1 %5 to i8
  %7 = tail call i32 @tree_unroll_loops_completely(i8 noundef zeroext %6, i8 noundef zeroext 0) #7
  tail call void @free_numbers_of_iterations_estimates() #7
  tail call void @scev_finalize() #7
  br label %8

8:                                                ; preds = %3, %0
  %9 = phi i32 [ %7, %3 ], [ 0, %0 ]
  tail call void @loop_optimizer_finalize() #7
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_parallelize_loops() #0 !prof !67 !PGOFuncName !104 {
  %1 = load i32, ptr @flag_tree_parallelize_loops, align 4, !tbaa !69
  %2 = icmp sgt i32 %1, 1
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_parallelize_loops() #1 !prof !89 !PGOFuncName !105 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @parallelize_loops() #7
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i32 0, i32 1048608
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i32 [ 0, %0 ], [ %6, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_loop_prefetch() #0 !prof !67 !PGOFuncName !106 {
  %1 = load i32, ptr @flag_prefetch_loop_arrays, align 4, !tbaa !69
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_loop_prefetch() #1 !prof !89 !PGOFuncName !107 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @tree_ssa_prefetch_arrays() #7
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_loop_ivopts() #0 !prof !67 !PGOFuncName !108 {
  %1 = load i32, ptr @flag_ivopts, align 4, !tbaa !69
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_loop_ivopts() #1 !prof !67 !PGOFuncName !109 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %4, label %3, !prof !74

3:                                                ; preds = %0
  tail call void @tree_ssa_iv_optimize() #7
  br label %4

4:                                                ; preds = %0, %3
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_loop_done() #1 !prof !67 !PGOFuncName !110 {
  tail call void @free_numbers_of_iterations_estimates() #7
  tail call void @scev_finalize() #7
  tail call void @loop_optimizer_finalize() #7
  ret i32 0
}

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rewrite_into_loop_closed_ssa(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #5 !prof !111 !PGOFuncName !112 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !113

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #8
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @scev_initialize() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !111 !PGOFuncName !116 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !113

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !117
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @tree_ssa_lim() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_ssa_unswitch_loops() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_predictive_commoning() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @vectorize_loops() local_unnamed_addr #3

; Function Attrs: optsize
declare void @linear_transform_loops() local_unnamed_addr #3

; Function Attrs: optsize
declare void @graphite_transform_loops() local_unnamed_addr #3

; Function Attrs: optsize
declare void @tree_check_data_deps() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @canonicalize_induction_variables() local_unnamed_addr #3

; Function Attrs: optsize
declare void @estimate_numbers_of_iterations() local_unnamed_addr #3

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_unroll_loops_completely(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_numbers_of_iterations_estimates() local_unnamed_addr #3

; Function Attrs: optsize
declare void @scev_finalize() local_unnamed_addr #3

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @parallelize_loops() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_ssa_prefetch_arrays() local_unnamed_addr #3

; Function Attrs: optsize
declare void @tree_ssa_iv_optimize() local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!66}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!35 = !{ptr @tree_ssa_loop_init, ptr @loop_optimizer_init, i64 38}
!36 = !{ptr @tree_ssa_loop_init, ptr @rewrite_into_loop_closed_ssa, i64 38}
!37 = !{ptr @tree_ssa_loop_init, ptr @number_of_loops, i64 38}
!38 = !{ptr @tree_ssa_loop_init, ptr @scev_initialize, i64 1}
!39 = !{ptr @tree_ssa_loop_im, ptr @number_of_loops, i64 38}
!40 = !{ptr @tree_ssa_loop_im, ptr @tree_ssa_lim, i64 1}
!41 = !{ptr @tree_ssa_loop_unswitch, ptr @number_of_loops, i64 38}
!42 = !{ptr @tree_ssa_loop_unswitch, ptr @tree_ssa_unswitch_loops, i64 1}
!43 = !{ptr @run_tree_predictive_commoning, ptr @tree_predictive_commoning, i64 37}
!44 = !{ptr @tree_vectorize, ptr @number_of_loops, i64 38}
!45 = !{ptr @tree_vectorize, ptr @vectorize_loops, i64 1}
!46 = !{ptr @tree_ssa_loop_ivcanon, ptr @number_of_loops, i64 38}
!47 = !{ptr @tree_ssa_loop_ivcanon, ptr @canonicalize_induction_variables, i64 1}
!48 = !{ptr @tree_ssa_loop_bounds, ptr @number_of_loops, i64 38}
!49 = !{ptr @tree_ssa_loop_bounds, ptr @estimate_numbers_of_iterations, i64 1}
!50 = !{ptr @tree_ssa_loop_bounds, ptr @scev_reset, i64 1}
!51 = !{ptr @tree_complete_unroll, ptr @number_of_loops, i64 38}
!52 = !{ptr @tree_complete_unroll, ptr @tree_unroll_loops_completely, i64 1}
!53 = !{ptr @tree_complete_unroll_inner, ptr @loop_optimizer_init, i64 38}
!54 = !{ptr @tree_complete_unroll_inner, ptr @number_of_loops, i64 38}
!55 = !{ptr @tree_complete_unroll_inner, ptr @scev_initialize, i64 1}
!56 = !{ptr @tree_complete_unroll_inner, ptr @tree_unroll_loops_completely, i64 1}
!57 = !{ptr @tree_complete_unroll_inner, ptr @free_numbers_of_iterations_estimates, i64 1}
!58 = !{ptr @tree_complete_unroll_inner, ptr @scev_finalize, i64 1}
!59 = !{ptr @tree_complete_unroll_inner, ptr @loop_optimizer_finalize, i64 38}
!60 = !{ptr @tree_ssa_loop_ivopts, ptr @number_of_loops, i64 38}
!61 = !{ptr @tree_ssa_loop_ivopts, ptr @tree_ssa_iv_optimize, i64 1}
!62 = !{ptr @tree_ssa_loop_done, ptr @free_numbers_of_iterations_estimates, i64 38}
!63 = !{ptr @tree_ssa_loop_done, ptr @scev_finalize, i64 38}
!64 = !{ptr @tree_ssa_loop_done, ptr @loop_optimizer_finalize, i64 38}
!65 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 341}
!66 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!67 = !{!"function_entry_count", i64 38}
!68 = !{!"tree-ssa-loop.c:gate_tree_loop"}
!69 = !{!70, !70, i64 0}
!70 = !{!"int", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C/C++ TBAA"}
!73 = !{!"tree-ssa-loop.c:tree_ssa_loop_init"}
!74 = !{!"branch_weights", i32 39, i32 1}
!75 = !{!"tree-ssa-loop.c:gate_tree_ssa_loop_im"}
!76 = !{!"tree-ssa-loop.c:tree_ssa_loop_im"}
!77 = !{!"tree-ssa-loop.c:gate_tree_ssa_loop_unswitch"}
!78 = !{!"tree-ssa-loop.c:tree_ssa_loop_unswitch"}
!79 = !{!"tree-ssa-loop.c:gate_tree_predictive_commoning"}
!80 = !{!"tree-ssa-loop.c:run_tree_predictive_commoning"}
!81 = !{!82, !82, i64 0}
!82 = !{!"any pointer", !71, i64 0}
!83 = !{!84, !82, i64 32}
!84 = !{!"function", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !82, i64 72, !82, i64 80, !82, i64 88, !82, i64 96, !70, i64 104, !70, i64 108, !70, i64 112, !70, i64 116, !70, i64 120, !70, i64 124, !82, i64 128, !70, i64 136, !70, i64 137, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139}
!85 = !{!"branch_weights", i32 1, i32 39}
!86 = !{!"tree-ssa-loop.c:gate_tree_vectorize"}
!87 = !{!"tree-ssa-loop.c:tree_vectorize"}
!88 = !{!"tree-ssa-loop.c:gate_tree_linear_transform"}
!89 = !{!"function_entry_count", i64 0}
!90 = !{!"tree-ssa-loop.c:tree_linear_transform"}
!91 = !{!"tree-ssa-loop.c:gate_graphite_transforms"}
!92 = !{!"branch_weights", i32 12175801, i32 90224199}
!93 = !{!"tree-ssa-loop.c:graphite_transforms"}
!94 = !{!"tree-ssa-loop.c:gate_check_data_deps"}
!95 = !{!"tree-ssa-loop.c:check_data_deps"}
!96 = !{!"tree-ssa-loop.c:gate_tree_ssa_loop_ivcanon"}
!97 = !{!"tree-ssa-loop.c:tree_ssa_loop_ivcanon"}
!98 = !{!"tree-ssa-loop.c:gate_scev_const_prop"}
!99 = !{!"tree-ssa-loop.c:tree_ssa_loop_bounds"}
!100 = !{!"tree-ssa-loop.c:gate_tree_complete_unroll"}
!101 = !{!"tree-ssa-loop.c:tree_complete_unroll"}
!102 = !{!"tree-ssa-loop.c:gate_tree_complete_unroll_inner"}
!103 = !{!"tree-ssa-loop.c:tree_complete_unroll_inner"}
!104 = !{!"tree-ssa-loop.c:gate_tree_parallelize_loops"}
!105 = !{!"tree-ssa-loop.c:tree_parallelize_loops"}
!106 = !{!"tree-ssa-loop.c:gate_tree_ssa_loop_prefetch"}
!107 = !{!"tree-ssa-loop.c:tree_ssa_loop_prefetch"}
!108 = !{!"tree-ssa-loop.c:gate_tree_ssa_loop_ivopts"}
!109 = !{!"tree-ssa-loop.c:tree_ssa_loop_ivopts"}
!110 = !{!"tree-ssa-loop.c:tree_ssa_loop_done"}
!111 = !{!"function_entry_count", i64 342}
!112 = !{!"tree-ssa-loop.c:number_of_loops"}
!113 = !{!"branch_weights", i32 1, i32 343}
!114 = !{!115, !82, i64 8}
!115 = !{!"loops", !70, i64 0, !82, i64 8, !82, i64 16, !82, i64 24}
!116 = !{!"tree-ssa-loop.c:VEC_loop_p_base_length"}
!117 = !{!118, !70, i64 0}
!118 = !{!"VEC_loop_p_base", !70, i64 0, !70, i64 4, !71, i64 8}
