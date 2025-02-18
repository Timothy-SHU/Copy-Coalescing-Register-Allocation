; ModuleID = 'tree-ssa-loop.c'
source_filename = "tree-ssa-loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !44 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !45
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !44 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !45
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !55

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !49
  %11 = load i8, ptr %3, align 1, !tbaa !56
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !55

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !49
  %11 = load i8, ptr %3, align 1, !tbaa !56
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !44 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !55

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #13
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !49
  %11 = load i8, ptr %3, align 1, !tbaa !56
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !44 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !45
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !44 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !55

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !57
  store i8 %12, ptr %4, align 1, !tbaa !56
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !44 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !55

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !57
  store i8 %12, ptr %4, align 1, !tbaa !56
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !55

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !57
  store i8 %12, ptr %4, align 1, !tbaa !56
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !44 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #13
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !44 {
  %2 = load i32, ptr %0, align 8, !tbaa !59
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !44 {
  %2 = load i32, ptr %0, align 8, !tbaa !59
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !44 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !60
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !44 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !60
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !44 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #13
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
  br i1 %23, label %7, label %24, !llvm.loop !61

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_loop() #8 !prof !64 !PGOFuncName !65 {
  %1 = load i32, ptr @flag_tree_loop_optimize, align 4, !tbaa !60
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tree_ssa_loop_init() #9 !prof !64 !PGOFuncName !66 {
  tail call void @loop_optimizer_init(i32 noundef 15) #13
  tail call void @rewrite_into_loop_closed_ssa(ptr noundef null, i32 noundef 2048) #13
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !69

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !69

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !72
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %13, label %12, !prof !74

12:                                               ; preds = %9
  tail call void @scev_initialize() #13
  br label %13

13:                                               ; preds = %0, %5, %9, %12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_loop_im() #8 !prof !64 !PGOFuncName !75 {
  %1 = load i32, ptr @flag_tree_loop_im, align 4, !tbaa !60
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tree_ssa_loop_im() #9 !prof !64 !PGOFuncName !76 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !69

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !69

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !72
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %13, label %12, !prof !74

12:                                               ; preds = %9
  tail call void @tree_ssa_lim() #13
  br label %13

13:                                               ; preds = %0, %5, %9, %12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_loop_unswitch() #8 !prof !64 !PGOFuncName !77 {
  %1 = load i32, ptr @flag_unswitch_loops, align 4, !tbaa !60
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_loop_unswitch() #9 !prof !64 !PGOFuncName !78 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !69

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9, !prof !69

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !72
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %14, label %12, !prof !74

12:                                               ; preds = %9
  %13 = tail call i32 @tree_ssa_unswitch_loops() #13
  br label %14

14:                                               ; preds = %0, %5, %9, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %9 ], [ 0, %5 ], [ 0, %0 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_predictive_commoning() #8 !prof !64 !PGOFuncName !79 {
  %1 = load i32, ptr @flag_predictive_commoning, align 4, !tbaa !60
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @run_tree_predictive_commoning() #9 !prof !64 !PGOFuncName !80 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !69

5:                                                ; preds = %0
  %6 = tail call i32 @tree_predictive_commoning() #13
  br label %7

7:                                                ; preds = %0, %5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_vectorize() #8 !prof !64 !PGOFuncName !81 {
  %1 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !60
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_vectorize() #9 !prof !64 !PGOFuncName !82 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !69

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9, !prof !69

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !72
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %14, label %12, !prof !74

12:                                               ; preds = %9
  %13 = tail call i32 @vectorize_loops() #13
  br label %14

14:                                               ; preds = %0, %5, %9, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %9 ], [ 0, %5 ], [ 0, %0 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_linear_transform() #8 !prof !64 !PGOFuncName !83 {
  %1 = load i32, ptr @flag_tree_loop_linear, align 4, !tbaa !60
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @tree_linear_transform() #10 !prof !44 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !72
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @linear_transform_loops() #13
  br label %13

13:                                               ; preds = %0, %5, %9, %12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_graphite_transforms() #11 !prof !64 !PGOFuncName !84 {
  %1 = load i32, ptr @flag_loop_block, align 4, !tbaa !60
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_loop_interchange, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4, !prof !69
  %6 = load i32, ptr @flag_loop_strip_mine, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7, !prof !69
  %9 = load i32, ptr @flag_graphite_identity, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10, !prof !69
  %12 = load i32, ptr @flag_loop_parallelize_all, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13, !prof !69
  br i1 %14, label %15, label %16, !prof !69

15:                                               ; preds = %0
  store i32 1, ptr @flag_graphite, align 4, !tbaa !60
  br label %16

16:                                               ; preds = %0, %15
  %17 = load i32, ptr @flag_graphite, align 4, !tbaa !60
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i8
  ret i8 %19
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @graphite_transforms() #10 !prof !44 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void @graphite_transform_loops() #13
  br label %6

6:                                                ; preds = %0, %5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_check_data_deps() #8 !prof !64 !PGOFuncName !85 {
  %1 = load i32, ptr @flag_check_data_deps, align 4, !tbaa !60
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @check_data_deps() #10 !prof !44 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !72
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @tree_check_data_deps() #13
  br label %13

13:                                               ; preds = %0, %5, %9, %12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_loop_ivcanon() #8 !prof !64 !PGOFuncName !86 {
  %1 = load i32, ptr @flag_tree_loop_ivcanon, align 4, !tbaa !60
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_loop_ivcanon() #9 !prof !64 !PGOFuncName !87 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !69

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9, !prof !69

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !72
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %14, label %12, !prof !74

12:                                               ; preds = %9
  %13 = tail call i32 @canonicalize_induction_variables() #13
  br label %14

14:                                               ; preds = %0, %5, %9, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %9 ], [ 0, %5 ], [ 0, %0 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_scev_const_prop() #8 !prof !64 !PGOFuncName !88 {
  %1 = load i32, ptr @flag_tree_scev_cprop, align 4, !tbaa !60
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

declare i32 @scev_const_prop() #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @tree_ssa_loop_bounds() #9 !prof !64 !PGOFuncName !89 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !69

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !69

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !72
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %13, label %12, !prof !74

12:                                               ; preds = %9
  tail call void @estimate_numbers_of_iterations() #13
  tail call void @scev_reset() #13
  br label %13

13:                                               ; preds = %0, %5, %9, %12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_tree_complete_unroll() #12 !prof !64 !PGOFuncName !90 {
  ret i8 1
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_complete_unroll() #9 !prof !64 !PGOFuncName !91 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5, !prof !69

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9, !prof !69

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !72
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %23, label %12, !prof !74

12:                                               ; preds = %9
  %13 = load i32, ptr @flag_unroll_loops, align 4, !tbaa !60
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr @flag_peel_loops, align 4
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  %18 = load i32, ptr @optimize, align 4
  %19 = icmp sgt i32 %18, 2
  %20 = select i1 %17, i1 true, i1 %19
  %21 = zext i1 %20 to i8
  %22 = tail call i32 @tree_unroll_loops_completely(i8 noundef zeroext %21, i8 noundef zeroext 1) #13
  br label %23

23:                                               ; preds = %0, %5, %9, %12
  %24 = phi i32 [ %22, %12 ], [ 0, %9 ], [ 0, %5 ], [ 0, %0 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_complete_unroll_inner() #8 !prof !64 !PGOFuncName !92 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !60
  %2 = icmp sgt i32 %1, 1
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_complete_unroll_inner() #9 !prof !64 !PGOFuncName !93 {
  tail call void @loop_optimizer_init(i32 noundef 15) #13
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5, !prof !69

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9, !prof !69

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !72
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %17, !prof !69

12:                                               ; preds = %9
  tail call void @scev_initialize() #13
  %13 = load i32, ptr @optimize, align 4, !tbaa !60
  %14 = icmp sgt i32 %13, 2
  %15 = zext i1 %14 to i8
  %16 = tail call i32 @tree_unroll_loops_completely(i8 noundef zeroext %15, i8 noundef zeroext 0) #13
  tail call void @free_numbers_of_iterations_estimates() #13
  tail call void @scev_finalize() #13
  br label %17

17:                                               ; preds = %0, %5, %12, %9
  %18 = phi i32 [ %16, %12 ], [ 0, %9 ], [ 0, %5 ], [ 0, %0 ]
  tail call void @loop_optimizer_finalize() #13
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_parallelize_loops() #8 !prof !64 !PGOFuncName !94 {
  %1 = load i32, ptr @flag_tree_parallelize_loops, align 4, !tbaa !60
  %2 = icmp sgt i32 %1, 1
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: cold nounwind uwtable
define internal i32 @tree_parallelize_loops() #10 !prof !44 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !72
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call zeroext i8 @parallelize_loops() #13
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 0, i32 1048608
  br label %16

16:                                               ; preds = %0, %5, %12, %9
  %17 = phi i32 [ 0, %9 ], [ %15, %12 ], [ 0, %5 ], [ 0, %0 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_loop_prefetch() #8 !prof !64 !PGOFuncName !95 {
  %1 = load i32, ptr @flag_prefetch_loop_arrays, align 4, !tbaa !60
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: cold nounwind uwtable
define internal i32 @tree_ssa_loop_prefetch() #10 !prof !44 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !72
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @tree_ssa_prefetch_arrays() #13
  br label %14

14:                                               ; preds = %0, %5, %9, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %9 ], [ 0, %5 ], [ 0, %0 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_ssa_loop_ivopts() #8 !prof !64 !PGOFuncName !96 {
  %1 = load i32, ptr @flag_ivopts, align 4, !tbaa !60
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tree_ssa_loop_ivopts() #9 !prof !64 !PGOFuncName !97 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !69

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !69

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !72
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %13, label %12, !prof !74

12:                                               ; preds = %9
  tail call void @tree_ssa_iv_optimize() #13
  br label %13

13:                                               ; preds = %0, %5, %9, %12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tree_ssa_loop_done() #9 !prof !64 !PGOFuncName !98 {
  tail call void @free_numbers_of_iterations_estimates() #13
  tail call void @scev_finalize() #13
  tail call void @loop_optimizer_finalize() #13
  ret i32 0
}

declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

declare void @rewrite_into_loop_closed_ssa(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @scev_initialize() local_unnamed_addr #3

declare void @tree_ssa_lim() local_unnamed_addr #3

declare i32 @tree_ssa_unswitch_loops() local_unnamed_addr #3

declare i32 @tree_predictive_commoning() local_unnamed_addr #3

declare i32 @vectorize_loops() local_unnamed_addr #3

declare void @linear_transform_loops() local_unnamed_addr #3

declare void @graphite_transform_loops() local_unnamed_addr #3

declare void @tree_check_data_deps() local_unnamed_addr #3

declare i32 @canonicalize_induction_variables() local_unnamed_addr #3

declare void @estimate_numbers_of_iterations() local_unnamed_addr #3

declare void @scev_reset() local_unnamed_addr #3

declare i32 @tree_unroll_loops_completely(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @free_numbers_of_iterations_estimates() local_unnamed_addr #3

declare void @scev_finalize() local_unnamed_addr #3

declare void @loop_optimizer_finalize() local_unnamed_addr #3

declare zeroext i8 @parallelize_loops() local_unnamed_addr #3

declare i32 @tree_ssa_prefetch_arrays() local_unnamed_addr #3

declare void @tree_ssa_iv_optimize() local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @tree_ssa_loop_init, ptr @loop_optimizer_init, i64 38}
!36 = !{ptr @tree_ssa_loop_init, ptr @rewrite_into_loop_closed_ssa, i64 38}
!37 = !{ptr @run_tree_predictive_commoning, ptr @tree_predictive_commoning, i64 38}
!38 = !{ptr @tree_complete_unroll_inner, ptr @loop_optimizer_init, i64 38}
!39 = !{ptr @tree_complete_unroll_inner, ptr @loop_optimizer_finalize, i64 38}
!40 = !{ptr @tree_ssa_loop_done, ptr @free_numbers_of_iterations_estimates, i64 38}
!41 = !{ptr @tree_ssa_loop_done, ptr @scev_finalize, i64 38}
!42 = !{ptr @tree_ssa_loop_done, ptr @loop_optimizer_finalize, i64 38}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!50, !46, i64 8}
!50 = !{!"_IO_FILE", !51, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !51, i64 112, !51, i64 116, !52, i64 120, !53, i64 128, !47, i64 130, !47, i64 131, !46, i64 136, !52, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !52, i64 184, !51, i64 192, !47, i64 196}
!51 = !{!"int", !47, i64 0}
!52 = !{!"long", !47, i64 0}
!53 = !{!"short", !47, i64 0}
!54 = !{!50, !46, i64 16}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{!47, !47, i64 0}
!57 = !{!50, !46, i64 40}
!58 = !{!50, !46, i64 48}
!59 = !{!50, !51, i64 0}
!60 = !{!51, !51, i64 0}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!"function_entry_count", i64 38}
!65 = !{!"tree-ssa-loop.c;gate_tree_loop"}
!66 = !{!"tree-ssa-loop.c;tree_ssa_loop_init"}
!67 = !{!68, !46, i64 32}
!68 = !{!"function", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !51, i64 104, !51, i64 108, !51, i64 112, !51, i64 116, !51, i64 120, !51, i64 124, !46, i64 128, !51, i64 136, !51, i64 137, !51, i64 138, !51, i64 138, !51, i64 138, !51, i64 138, !51, i64 138, !51, i64 138, !51, i64 138, !51, i64 139, !51, i64 139, !51, i64 139, !51, i64 139, !51, i64 139, !51, i64 139, !51, i64 139}
!69 = !{!"branch_weights", i32 0, i32 38}
!70 = !{!71, !46, i64 8}
!71 = !{!"loops", !51, i64 0, !46, i64 8, !46, i64 16, !46, i64 24}
!72 = !{!73, !51, i64 0}
!73 = !{!"VEC_loop_p_base", !51, i64 0, !51, i64 4, !47, i64 8}
!74 = !{!"branch_weights", i32 38, i32 0}
!75 = !{!"tree-ssa-loop.c;gate_tree_ssa_loop_im"}
!76 = !{!"tree-ssa-loop.c;tree_ssa_loop_im"}
!77 = !{!"tree-ssa-loop.c;gate_tree_ssa_loop_unswitch"}
!78 = !{!"tree-ssa-loop.c;tree_ssa_loop_unswitch"}
!79 = !{!"tree-ssa-loop.c;gate_tree_predictive_commoning"}
!80 = !{!"tree-ssa-loop.c;run_tree_predictive_commoning"}
!81 = !{!"tree-ssa-loop.c;gate_tree_vectorize"}
!82 = !{!"tree-ssa-loop.c;tree_vectorize"}
!83 = !{!"tree-ssa-loop.c;gate_tree_linear_transform"}
!84 = !{!"tree-ssa-loop.c;gate_graphite_transforms"}
!85 = !{!"tree-ssa-loop.c;gate_check_data_deps"}
!86 = !{!"tree-ssa-loop.c;gate_tree_ssa_loop_ivcanon"}
!87 = !{!"tree-ssa-loop.c;tree_ssa_loop_ivcanon"}
!88 = !{!"tree-ssa-loop.c;gate_scev_const_prop"}
!89 = !{!"tree-ssa-loop.c;tree_ssa_loop_bounds"}
!90 = !{!"tree-ssa-loop.c;gate_tree_complete_unroll"}
!91 = !{!"tree-ssa-loop.c;tree_complete_unroll"}
!92 = !{!"tree-ssa-loop.c;gate_tree_complete_unroll_inner"}
!93 = !{!"tree-ssa-loop.c;tree_complete_unroll_inner"}
!94 = !{!"tree-ssa-loop.c;gate_tree_parallelize_loops"}
!95 = !{!"tree-ssa-loop.c;gate_tree_ssa_loop_prefetch"}
!96 = !{!"tree-ssa-loop.c;gate_tree_ssa_loop_ivopts"}
!97 = !{!"tree-ssa-loop.c;tree_ssa_loop_ivopts"}
!98 = !{!"tree-ssa-loop.c;tree_ssa_loop_done"}
