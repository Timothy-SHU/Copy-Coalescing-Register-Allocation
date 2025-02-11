; ModuleID = 'tree-ssa-loop.c'
source_filename = "tree-ssa-loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }

@pass_tree_loop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_tree_loop, ptr null, ptr null, ptr null, i32 0, i32 81, i32 8, i32 0, i32 0, i32 2, i32 7 } }, align 8
@.str = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@flag_tree_loop_optimize = external local_unnamed_addr global i32, align 4
@pass_tree_loop_init = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr null, ptr @tree_ssa_loop_init, ptr null, ptr null, i32 0, i32 100, i32 8, i32 0, i32 0, i32 0, i32 65 } }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"loopinit\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@pass_lim = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_tree_ssa_loop_im, ptr @tree_ssa_loop_im, ptr null, ptr null, i32 0, i32 83, i32 8, i32 0, i32 0, i32 0, i32 65 } }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"lim\00", align 1
@flag_tree_loop_im = external local_unnamed_addr global i32, align 4
@pass_tree_unswitch = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.3, ptr @gate_tree_ssa_loop_unswitch, ptr @tree_ssa_loop_unswitch, ptr null, ptr null, i32 0, i32 86, i32 8, i32 0, i32 0, i32 0, i32 67 } }, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"unswitch\00", align 1
@flag_unswitch_loops = external local_unnamed_addr global i32, align 4
@pass_predcom = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr @gate_tree_predictive_commoning, ptr @run_tree_predictive_commoning, ptr null, ptr null, i32 0, i32 99, i32 8, i32 0, i32 0, i32 0, i32 16449 } }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"pcom\00", align 1
@flag_predictive_commoning = external local_unnamed_addr global i32, align 4
@pass_vectorize = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr @gate_tree_vectorize, ptr @tree_vectorize, ptr null, ptr null, i32 0, i32 89, i32 40, i32 0, i32 0, i32 64, i32 2051 } }, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"vect\00", align 1
@flag_tree_vectorize = external local_unnamed_addr global i32, align 4
@pass_linear_transform = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.6, ptr @gate_tree_linear_transform, ptr @tree_linear_transform, ptr null, ptr null, i32 0, i32 94, i32 40, i32 0, i32 0, i32 0, i32 16451 } }, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"ltrans\00", align 1
@flag_tree_loop_linear = external local_unnamed_addr global i32, align 4
@pass_graphite_transforms = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.7, ptr @gate_graphite_transforms, ptr @graphite_transforms, ptr null, ptr null, i32 0, i32 91, i32 40, i32 0, i32 0, i32 0, i32 64 } }, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"graphite\00", align 1
@flag_loop_block = external local_unnamed_addr global i32, align 4
@flag_loop_interchange = external local_unnamed_addr global i32, align 4
@flag_loop_strip_mine = external local_unnamed_addr global i32, align 4
@flag_graphite_identity = external local_unnamed_addr global i32, align 4
@flag_loop_parallelize_all = external local_unnamed_addr global i32, align 4
@flag_graphite = external local_unnamed_addr global i32, align 4
@pass_check_data_deps = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.8, ptr @gate_check_data_deps, ptr @check_data_deps, ptr null, ptr null, i32 0, i32 96, i32 40, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"ckdd\00", align 1
@flag_check_data_deps = external local_unnamed_addr global i32, align 4
@pass_iv_canon = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.9, ptr @gate_tree_ssa_loop_ivcanon, ptr @tree_ssa_loop_ivcanon, ptr null, ptr null, i32 0, i32 84, i32 40, i32 0, i32 0, i32 0, i32 65 } }, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"ivcanon\00", align 1
@flag_tree_loop_ivcanon = external local_unnamed_addr global i32, align 4
@pass_scev_cprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.10, ptr @gate_scev_const_prop, ptr @scev_const_prop, ptr null, ptr null, i32 0, i32 85, i32 40, i32 0, i32 0, i32 0, i32 16417 } }, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"sccp\00", align 1
@flag_tree_scev_cprop = external local_unnamed_addr global i32, align 4
@pass_record_bounds = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.11, ptr null, ptr @tree_ssa_loop_bounds, ptr null, ptr null, i32 0, i32 82, i32 40, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"*record_bounds\00", align 1
@pass_complete_unroll = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.12, ptr @gate_tree_complete_unroll, ptr @tree_complete_unroll, ptr null, ptr null, i32 0, i32 87, i32 40, i32 0, i32 0, i32 0, i32 67 } }, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"cunroll\00", align 1
@flag_unroll_loops = external local_unnamed_addr global i32, align 4
@flag_peel_loops = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@pass_complete_unrolli = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.13, ptr @gate_tree_complete_unroll_inner, ptr @tree_complete_unroll_inner, ptr null, ptr null, i32 0, i32 87, i32 40, i32 0, i32 0, i32 0, i32 67 } }, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"cunrolli\00", align 1
@pass_parallelize_loops = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.14, ptr @gate_tree_parallelize_loops, ptr @tree_parallelize_loops, ptr null, ptr null, i32 0, i32 88, i32 40, i32 0, i32 0, i32 0, i32 65 } }, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"parloops\00", align 1
@flag_tree_parallelize_loops = external local_unnamed_addr global i32, align 4
@pass_loop_prefetch = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.15, ptr @gate_tree_ssa_loop_prefetch, ptr @tree_ssa_loop_prefetch, ptr null, ptr null, i32 0, i32 97, i32 40, i32 0, i32 0, i32 0, i32 65 } }, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"aprefetch\00", align 1
@flag_prefetch_loop_arrays = external local_unnamed_addr global i32, align 4
@pass_iv_optimize = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.16, ptr @gate_tree_ssa_loop_ivopts, ptr @tree_ssa_loop_ivopts, ptr null, ptr null, i32 0, i32 98, i32 40, i32 0, i32 0, i32 0, i32 2115 } }, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"ivopts\00", align 1
@flag_ivopts = external local_unnamed_addr global i32, align 4
@pass_tree_loop_done = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.17, ptr null, ptr @tree_ssa_loop_done, ptr null, ptr null, i32 0, i32 101, i32 8, i32 0, i32 0, i32 0, i32 33 } }, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"loopdone\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_loop() #0 {
  %1 = load i32, ptr @flag_tree_loop_optimize, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_loop_init() #1 {
  tail call void @loop_optimizer_init(i32 noundef 15) #7
  tail call void @rewrite_into_loop_closed_ssa(ptr noundef null, i32 noundef 2048) #7
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @scev_initialize() #7
  br label %4

4:                                                ; preds = %0, %3
  ret i32 0
}

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rewrite_into_loop_closed_ssa(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #3 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #8
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @scev_initialize() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !16
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_loop_im() #0 {
  %1 = load i32, ptr @flag_tree_loop_im, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_loop_im() #1 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @tree_ssa_lim() #7
  br label %4

4:                                                ; preds = %0, %3
  ret i32 0
}

; Function Attrs: optsize
declare void @tree_ssa_lim() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_loop_unswitch() #0 {
  %1 = load i32, ptr @flag_unswitch_loops, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_loop_unswitch() #1 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @tree_ssa_unswitch_loops() #7
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @tree_ssa_unswitch_loops() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_predictive_commoning() #0 {
  %1 = load i32, ptr @flag_predictive_commoning, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @run_tree_predictive_commoning() #1 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = tail call i32 @tree_predictive_commoning() #7
  br label %7

7:                                                ; preds = %0, %5
  ret i32 0
}

; Function Attrs: optsize
declare i32 @tree_predictive_commoning() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_vectorize() #0 {
  %1 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !6
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_vectorize() #1 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @vectorize_loops() #7
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @vectorize_loops() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_linear_transform() #0 {
  %1 = load i32, ptr @flag_tree_loop_linear, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_linear_transform() #1 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @linear_transform_loops() #7
  br label %4

4:                                                ; preds = %0, %3
  ret i32 0
}

; Function Attrs: optsize
declare void @linear_transform_loops() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_graphite_transforms() #5 {
  %1 = load i32, ptr @flag_loop_block, align 4, !tbaa !6
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
  br i1 %14, label %19, label %15

15:                                               ; preds = %0
  %16 = load i32, ptr @flag_graphite, align 4, !tbaa !6
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i8
  br label %20

19:                                               ; preds = %0
  store i32 1, ptr @flag_graphite, align 4, !tbaa !6
  br label %20

20:                                               ; preds = %15, %19
  %21 = phi i8 [ %18, %15 ], [ 1, %19 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @graphite_transforms() #1 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void @graphite_transform_loops() #7
  br label %6

6:                                                ; preds = %0, %5
  ret i32 0
}

; Function Attrs: optsize
declare void @graphite_transform_loops() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_check_data_deps() #0 {
  %1 = load i32, ptr @flag_check_data_deps, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @check_data_deps() #1 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @tree_check_data_deps() #7
  br label %4

4:                                                ; preds = %0, %3
  ret i32 0
}

; Function Attrs: optsize
declare void @tree_check_data_deps() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_loop_ivcanon() #0 {
  %1 = load i32, ptr @flag_tree_loop_ivcanon, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_loop_ivcanon() #1 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @canonicalize_induction_variables() #7
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @canonicalize_induction_variables() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_scev_const_prop() #0 {
  %1 = load i32, ptr @flag_tree_scev_cprop, align 4, !tbaa !6
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: optsize
declare i32 @scev_const_prop() #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_loop_bounds() #1 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @estimate_numbers_of_iterations() #7
  tail call void @scev_reset() #7
  br label %4

4:                                                ; preds = %0, %3
  ret i32 0
}

; Function Attrs: optsize
declare void @estimate_numbers_of_iterations() local_unnamed_addr #2

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_tree_complete_unroll() #6 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_complete_unroll() #1 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %14, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @flag_unroll_loops, align 4, !tbaa !6
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

; Function Attrs: optsize
declare i32 @tree_unroll_loops_completely(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_complete_unroll_inner() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 1
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_complete_unroll_inner() #1 {
  tail call void @loop_optimizer_init(i32 noundef 15) #7
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ugt i32 %1, 1
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  tail call void @scev_initialize() #7
  %4 = load i32, ptr @optimize, align 4, !tbaa !6
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

; Function Attrs: optsize
declare void @free_numbers_of_iterations_estimates() local_unnamed_addr #2

; Function Attrs: optsize
declare void @scev_finalize() local_unnamed_addr #2

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_parallelize_loops() #0 {
  %1 = load i32, ptr @flag_tree_parallelize_loops, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 1
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_parallelize_loops() #1 {
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

; Function Attrs: optsize
declare zeroext i8 @parallelize_loops() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_loop_prefetch() #0 {
  %1 = load i32, ptr @flag_prefetch_loop_arrays, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_loop_prefetch() #1 {
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

; Function Attrs: optsize
declare i32 @tree_ssa_prefetch_arrays() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_loop_ivopts() #0 {
  %1 = load i32, ptr @flag_ivopts, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_loop_ivopts() #1 {
  %1 = tail call fastcc i32 @number_of_loops() #8
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @tree_ssa_iv_optimize() #7
  br label %4

4:                                                ; preds = %0, %3
  ret i32 0
}

; Function Attrs: optsize
declare void @tree_ssa_iv_optimize() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_loop_done() #1 {
  tail call void @free_numbers_of_iterations_estimates() #7
  tail call void @scev_finalize() #7
  tail call void @loop_optimizer_finalize() #7
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !11, i64 32}
!13 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !11, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!14 = !{!15, !11, i64 8}
!15 = !{!"loops", !7, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!16 = !{!17, !7, i64 0}
!17 = !{!"VEC_loop_p_base", !7, i64 0, !7, i64 4, !8, i64 8}
