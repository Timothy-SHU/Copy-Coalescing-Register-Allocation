; ModuleID = 'profile.c'
source_filename = "profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.profile_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.edge_list = type { i32, i32, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gcov_ctr_summary = type { i32, i32, i64, i64, i64 }
%struct.bb_info = type { i8, i64, i64 }
%struct.VEC_histogram_value_base = type { i32, i32, [1 x ptr] }
%struct.histogram_value_t = type { %struct.anon, i32, i32, %union.anon.0 }
%struct.anon = type { ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@total_num_times_called = internal unnamed_addr global i32 0, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [32 x i8] c"Adding fake exit edge to bb %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Adding fake entry edge to bb %i\0A\00", align 1
@total_num_blocks = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"%d basic blocks\0A\00", align 1
@total_num_edges = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%d edges\0A\00", align 1
@total_num_edges_ignored = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"%d ignored edges\0A\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@flag_profile_values = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@profile_arc_flag = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"profile.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@total_num_blocks_created = internal unnamed_addr global i32 0, align 4
@total_num_passes = internal unnamed_addr global i32 0, align 4
@total_num_branches = internal unnamed_addr global i32 0, align 4
@total_hist_br_prob = internal unnamed_addr global [20 x i32] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [28 x i8] c"Total number of blocks: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Total number of edges: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Total number of ignored edges: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Total number of instrumented edges: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Total number of blocks created: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"Total number of graph solution passes: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Average number of graph solution passes: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Total number of branches: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"%d%% branches in range %d-%d%%\0A\00", align 1
@tree_profile_hooks = external local_unnamed_addr global %struct.profile_hooks, align 8
@profile_info = dso_local global ptr null, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@output_location.prev_file_name = internal unnamed_addr global ptr null, align 8
@output_location.prev_line = internal unnamed_addr global i32 0, align 4
@.str.18 = private unnamed_addr constant [49 x i8] c"corrupted profile info: run_max * runs < sum_max\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"corrupted profile info: sum_all is smaller than sum_max\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"\0A%d edge counts read\0A\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [32 x i8] c"Graph solving took %d passes.\0A\0A\00", align 1
@flag_profile_correction = external local_unnamed_addr global i32, align 4
@compute_branch_probabilities.informed = internal unnamed_addr global i1 false, align 4
@input_location = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [37 x i8] c"correcting inconsistent profile data\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"\0ACalling mcf_smooth_cfg\0A\00", align 1
@.str.24 = private unnamed_addr constant [60 x i8] c"corrupted profile info: profile data is not flow-consistent\00", align 1
@.str.25 = private unnamed_addr constant [81 x i8] c"corrupted profile info: number of iterations for basic block %d thought to be %i\00", align 1
@.str.26 = private unnamed_addr constant [77 x i8] c"corrupted profile info: number of executions for edge %d-%d thought to be %i\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"%d branches\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"Merged %u profiles with maximal count %u.\0A\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"corrupted profile info: edge from %i to %i exceeds maximal count\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"\0ARead edge from %i to %i, count:\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"BB %i count is negative %ld\00", align 1
@.str.33 = private unnamed_addr constant [67 x i8] c"BB %i count does not match sum of incoming edges %ld should be %ld\00", align 1
@.str.34 = private unnamed_addr constant [67 x i8] c"BB %i count does not match sum of outgoing edges %ld should be %ld\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"Edge %i->%i is inconsistent, count%ld\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"Edge %d to %d instrumented%s\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c" (and split)\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"%d edges instrumented\0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Abnormal edge %d to %d put to tree\0A\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"Critical edge %d to %d put to tree\0A\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"Normal edge %d to %d put to tree\0A\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
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
  %5 = tail call ptr @__ctype_tolower_loc() #17
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
  %5 = tail call ptr @__ctype_toupper_loc() #17
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
define dso_local void @branch_prob() local_unnamed_addr #9 !prof !34 {
  %1 = alloca [7 x i32], align 16
  %2 = alloca [7 x ptr], align 16
  %3 = alloca [7 x ptr], align 16
  %4 = alloca [20 x i32], align 16
  %5 = alloca %struct.expanded_location, align 8
  %6 = alloca %struct.expanded_location, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.expanded_location, align 8
  %9 = alloca %struct.expanded_location, align 8
  %10 = alloca %struct.expanded_location, align 8
  %11 = alloca %struct.expanded_location, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.expanded_location, align 8
  %14 = alloca %struct.expanded_location, align 8
  %15 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store ptr null, ptr %7, align 8, !tbaa !35
  %16 = load i32, ptr @total_num_times_called, align 4, !tbaa !50
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @total_num_times_called, align 4, !tbaa !50
  %18 = tail call i32 @flow_call_edges_add(ptr noundef null) #17
  tail call void @add_noreturn_fake_exit_edges() #17
  %19 = load ptr, ptr @cfun, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %261, label %28

28:                                               ; preds = %0
  %29 = getelementptr inbounds %struct.expanded_location, ptr %10, i64 0, i32 1
  %30 = getelementptr inbounds %struct.expanded_location, ptr %11, i64 0, i32 1
  br label %31

31:                                               ; preds = %28, %252
  %32 = phi ptr [ %24, %28 ], [ %254, %252 ]
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 1
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 13
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  br label %36

36:                                               ; preds = %165, %31
  %37 = phi i32 [ 0, %31 ], [ %166, %165 ]
  %38 = phi i32 [ 0, %31 ], [ %156, %165 ]
  %39 = phi i32 [ 0, %31 ], [ %147, %165 ]
  %40 = load ptr, ptr %33, align 8, !tbaa !35
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr %40, align 8, !tbaa !61
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i32 [ %43, %42 ], [ 0, %36 ]
  %46 = icmp eq i32 %45, %37
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = zext i32 %37 to i64
  %49 = getelementptr inbounds %struct.VEC_edge_base, ptr %40, i64 0, i32 2, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  br label %51

51:                                               ; preds = %44, %47
  %52 = phi ptr [ %50, %47 ], [ null, %44 ]
  br i1 %46, label %53, label %55

53:                                               ; preds = %51
  %54 = icmp eq ptr %32, null
  br label %167

55:                                               ; preds = %51
  %56 = load i32, ptr %34, align 8, !tbaa !63, !noalias !64
  %57 = and i32 %56, 512
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load ptr, ptr %35, align 8, !tbaa !46, !noalias !64
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %60, align 8, !tbaa !67, !noalias !64
  br label %64

64:                                               ; preds = %62, %59, %55
  %65 = phi ptr [ %63, %62 ], [ null, %59 ], [ null, %55 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.gimple_seq_d, ptr %65, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !69, !noalias !64
  br label %70

70:                                               ; preds = %64, %67
  %71 = phi ptr [ %69, %67 ], [ null, %64 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %83, label %73

73:                                               ; preds = %70, %79
  %74 = phi ptr [ %81, %79 ], [ %71, %70 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !71
  %76 = getelementptr inbounds %struct.gimple_statement_base, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !46
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %74, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !73
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %73, !llvm.loop !74

83:                                               ; preds = %79, %73, %70
  %84 = phi ptr [ null, %70 ], [ %75, %73 ], [ %75, %79 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %131, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.gimple_statement_base, ptr %84, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !46
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %131, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 5
  %92 = load i32, ptr %91, align 8, !tbaa !75
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %131, label %94

94:                                               ; preds = %90
  br i1 %41, label %99, label %95

95:                                               ; preds = %94
  %96 = load i32, ptr %40, align 8, !tbaa !61
  %97 = icmp eq i32 %96, 1
  %98 = zext i1 %97 to i8
  br label %99

99:                                               ; preds = %94, %95
  %100 = phi i8 [ %98, %95 ], [ 0, %94 ]
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %99
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %8, i32 noundef %92) #17
  %103 = load ptr, ptr %8, align 8, !tbaa !77
  %104 = load i32, ptr %87, align 8, !tbaa !46
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %9, i32 noundef %104) #17
  %105 = load ptr, ptr %9, align 8, !tbaa !77
  %106 = icmp eq ptr %103, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, ptr %91, align 8, !tbaa !75
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %10, i32 noundef %108) #17
  %109 = load i32, ptr %29, align 8, !tbaa !79
  %110 = load i32, ptr %87, align 8, !tbaa !46
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %11, i32 noundef %110) #17
  %111 = load i32, ptr %30, align 8, !tbaa !79
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %131, label %113

113:                                              ; preds = %107, %102
  %114 = call ptr @split_edge(ptr noundef %52) #17
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !80
  %117 = icmp eq ptr %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load i32, ptr %116, align 8, !tbaa !61
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %122, label %121

121:                                              ; preds = %113, %118
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 645, ptr noundef nonnull @.str.6) #17
  br label %122

122:                                              ; preds = %118, %121
  %123 = load ptr, ptr %115, align 8, !tbaa !80
  %124 = getelementptr inbounds %struct.VEC_edge_base, ptr %123, i64 0, i32 2, i64 0
  %125 = load ptr, ptr %124, align 8, !tbaa !35
  %126 = load i32, ptr %91, align 8, !tbaa !75
  %127 = getelementptr inbounds %struct.edge_def, ptr %125, i64 0, i32 5
  store i32 %126, ptr %127, align 8, !tbaa !75
  %128 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !81
  %130 = getelementptr inbounds %struct.edge_def, ptr %125, i64 0, i32 4
  store ptr %129, ptr %130, align 8, !tbaa !81
  br label %131

131:                                              ; preds = %122, %107, %99, %90, %86, %83
  %132 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 7
  %133 = load i32, ptr %132, align 8, !tbaa !82
  %134 = and i32 %133, 6
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !83
  %139 = load ptr, ptr @cfun, align 8, !tbaa !35
  %140 = getelementptr inbounds %struct.function, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !54
  %142 = getelementptr inbounds %struct.control_flow_graph, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !60
  %144 = icmp eq ptr %138, %143
  %145 = select i1 %144, i32 %39, i32 1
  br label %146

146:                                              ; preds = %136, %131
  %147 = phi i32 [ %39, %131 ], [ %145, %136 ]
  %148 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !83
  %150 = load ptr, ptr @cfun, align 8, !tbaa !35
  %151 = getelementptr inbounds %struct.function, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !54
  %153 = getelementptr inbounds %struct.control_flow_graph, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !60
  %155 = icmp eq ptr %149, %154
  %156 = select i1 %155, i32 1, i32 %38
  %157 = load ptr, ptr %33, align 8, !tbaa !35
  %158 = icmp eq ptr %157, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %146
  %160 = load i32, ptr %157, align 8, !tbaa !61
  br label %161

161:                                              ; preds = %159, %146
  %162 = phi i32 [ %160, %159 ], [ 0, %146 ]
  %163 = icmp ult i32 %37, %162
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %165

165:                                              ; preds = %161, %164
  %166 = add i32 %37, 1
  br label %36, !llvm.loop !84

167:                                              ; preds = %53, %215
  %168 = phi i32 [ %216, %215 ], [ 0, %53 ]
  %169 = phi i32 [ %207, %215 ], [ 0, %53 ]
  %170 = phi i32 [ %200, %215 ], [ 0, %53 ]
  br i1 %54, label %171, label %172

171:                                              ; preds = %167
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.6) #17
  br label %172

172:                                              ; preds = %171, %167
  %173 = load ptr, ptr %32, align 8, !tbaa !35
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %172
  %176 = load i32, ptr %173, align 8, !tbaa !61
  br label %177

177:                                              ; preds = %175, %172
  %178 = phi i32 [ %176, %175 ], [ 0, %172 ]
  %179 = icmp eq i32 %178, %168
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = zext i32 %168 to i64
  %182 = getelementptr inbounds %struct.VEC_edge_base, ptr %173, i64 0, i32 2, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !35
  br label %184

184:                                              ; preds = %177, %180
  %185 = phi ptr [ %183, %180 ], [ null, %177 ]
  br i1 %179, label %217, label %186

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.edge_def, ptr %185, i64 0, i32 7
  %188 = load i32, ptr %187, align 8, !tbaa !82
  %189 = and i32 %188, 6
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %186
  %192 = load ptr, ptr %185, align 8, !tbaa !85
  %193 = load ptr, ptr @cfun, align 8, !tbaa !35
  %194 = getelementptr inbounds %struct.function, ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !54
  %196 = load ptr, ptr %195, align 8, !tbaa !56
  %197 = icmp eq ptr %192, %196
  %198 = select i1 %197, i32 %170, i32 1
  br label %199

199:                                              ; preds = %191, %186
  %200 = phi i32 [ %170, %186 ], [ %198, %191 ]
  %201 = load ptr, ptr %185, align 8, !tbaa !85
  %202 = load ptr, ptr @cfun, align 8, !tbaa !35
  %203 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !54
  %205 = load ptr, ptr %204, align 8, !tbaa !56
  %206 = icmp eq ptr %201, %205
  %207 = select i1 %206, i32 1, i32 %169
  %208 = icmp eq ptr %173, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %199
  %210 = load i32, ptr %173, align 8, !tbaa !61
  br label %211

211:                                              ; preds = %209, %199
  %212 = phi i32 [ %210, %209 ], [ 0, %199 ]
  %213 = icmp ult i32 %168, %212
  br i1 %213, label %215, label %214

214:                                              ; preds = %211
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %215

215:                                              ; preds = %211, %214
  %216 = add i32 %168, 1
  br label %167, !llvm.loop !86

217:                                              ; preds = %184
  %218 = icmp eq i32 %39, 0
  %219 = icmp ne i32 %38, 0
  %220 = select i1 %218, i1 true, i1 %219
  br i1 %220, label %235, label %221

221:                                              ; preds = %217
  %222 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %223 = icmp eq ptr %222, null
  br i1 %223, label %228, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %226 = load i32, ptr %225, align 8, !tbaa !87
  %227 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %222, ptr noundef nonnull @.str, i32 noundef %226)
  br label %228

228:                                              ; preds = %224, %221
  %229 = load ptr, ptr @cfun, align 8, !tbaa !35
  %230 = getelementptr inbounds %struct.function, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !54
  %232 = getelementptr inbounds %struct.control_flow_graph, ptr %231, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !60
  %234 = call ptr @make_edge(ptr noundef nonnull %32, ptr noundef %233, i32 noundef 16) #17
  br label %235

235:                                              ; preds = %228, %217
  %236 = icmp eq i32 %170, 0
  %237 = icmp ne i32 %169, 0
  %238 = select i1 %236, i1 true, i1 %237
  br i1 %238, label %252, label %239

239:                                              ; preds = %235
  %240 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %241 = icmp eq ptr %240, null
  br i1 %241, label %246, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %244 = load i32, ptr %243, align 8, !tbaa !87
  %245 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %240, ptr noundef nonnull @.str.1, i32 noundef %244)
  br label %246

246:                                              ; preds = %242, %239
  %247 = load ptr, ptr @cfun, align 8, !tbaa !35
  %248 = getelementptr inbounds %struct.function, ptr %247, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !54
  %250 = load ptr, ptr %249, align 8, !tbaa !56
  %251 = call ptr @make_edge(ptr noundef %250, ptr noundef nonnull %32, i32 noundef 16) #17
  br label %252

252:                                              ; preds = %246, %235
  %253 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 6
  %254 = load ptr, ptr %253, align 8, !tbaa !58
  %255 = load ptr, ptr @cfun, align 8, !tbaa !35
  %256 = getelementptr inbounds %struct.function, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !54
  %258 = getelementptr inbounds %struct.control_flow_graph, ptr %257, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !60
  %260 = icmp eq ptr %254, %259
  br i1 %260, label %261, label %31, !llvm.loop !88

261:                                              ; preds = %252, %0
  %262 = call ptr @create_edge_list() #17
  %263 = getelementptr inbounds %struct.edge_list, ptr %262, i64 0, i32 1
  %264 = load i32, ptr %263, align 4, !tbaa !89
  call void @alloc_aux_for_edges(i32 noundef 4) #17
  call void @compact_blocks() #17
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %303, label %266

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.edge_list, ptr %262, i64 0, i32 2
  %268 = zext i32 %264 to i64
  br label %269

269:                                              ; preds = %266, %299
  %270 = phi i64 [ 0, %266 ], [ %301, %299 ]
  %271 = phi i32 [ 0, %266 ], [ %300, %299 ]
  %272 = load ptr, ptr %267, align 8, !tbaa !91
  %273 = getelementptr inbounds ptr, ptr %272, i64 %270
  %274 = load ptr, ptr %273, align 8, !tbaa !35
  %275 = getelementptr inbounds %struct.edge_def, ptr %274, i64 0, i32 9
  store i64 0, ptr %275, align 8, !tbaa !92
  %276 = getelementptr inbounds %struct.edge_def, ptr %274, i64 0, i32 7
  %277 = load i32, ptr %276, align 8, !tbaa !82
  %278 = and i32 %277, 6
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %299, label %280

280:                                              ; preds = %269
  %281 = load ptr, ptr %274, align 8, !tbaa !85
  %282 = load ptr, ptr @cfun, align 8, !tbaa !35
  %283 = getelementptr inbounds %struct.function, ptr %282, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !54
  %285 = load ptr, ptr %284, align 8, !tbaa !56
  %286 = icmp eq ptr %281, %285
  br i1 %286, label %299, label %287

287:                                              ; preds = %280
  %288 = getelementptr inbounds %struct.edge_def, ptr %274, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !83
  %290 = getelementptr inbounds %struct.control_flow_graph, ptr %284, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !60
  %292 = icmp eq ptr %289, %291
  br i1 %292, label %299, label %293

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.edge_def, ptr %274, i64 0, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !93
  %296 = load i8, ptr %295, align 4
  %297 = or i8 %296, 4
  store i8 %297, ptr %295, align 4
  %298 = add i32 %271, 1
  br label %299

299:                                              ; preds = %293, %287, %280, %269
  %300 = phi i32 [ %298, %293 ], [ %271, %287 ], [ %271, %280 ], [ %271, %269 ]
  %301 = add nuw nsw i64 %270, 1
  %302 = icmp eq i64 %301, %268
  br i1 %302, label %303, label %269, !llvm.loop !94

303:                                              ; preds = %299, %261
  %304 = phi i32 [ 0, %261 ], [ %300, %299 ]
  %305 = load i32, ptr %263, align 4, !tbaa !89
  %306 = load ptr, ptr @cfun, align 8, !tbaa !35
  %307 = getelementptr inbounds %struct.function, ptr %306, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !54
  %309 = load ptr, ptr %308, align 8, !tbaa !35
  %310 = icmp eq ptr %309, null
  br i1 %310, label %317, label %311

311:                                              ; preds = %303, %311
  %312 = phi ptr [ %315, %311 ], [ %309, %303 ]
  %313 = getelementptr inbounds %struct.basic_block_def, ptr %312, i64 0, i32 2
  store ptr %312, ptr %313, align 8, !tbaa !95
  %314 = getelementptr inbounds %struct.basic_block_def, ptr %312, i64 0, i32 6
  %315 = load ptr, ptr %314, align 8, !tbaa !35
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %311, !llvm.loop !96

317:                                              ; preds = %311, %303
  %318 = getelementptr inbounds %struct.control_flow_graph, ptr %308, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !60
  %320 = load ptr, ptr %308, align 8, !tbaa !56
  call fastcc void @union_groups(ptr noundef %319, ptr noundef %320)
  %321 = icmp sgt i32 %305, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %317
  %323 = getelementptr inbounds %struct.edge_list, ptr %262, i64 0, i32 2
  %324 = zext nneg i32 %305 to i64
  br label %330

325:                                              ; preds = %406, %317
  %326 = icmp sgt i32 %305, 0
  br i1 %326, label %327, label %409

327:                                              ; preds = %325
  %328 = getelementptr inbounds %struct.edge_list, ptr %262, i64 0, i32 2
  %329 = zext nneg i32 %305 to i64
  br label %414

330:                                              ; preds = %322, %406
  %331 = phi i64 [ 0, %322 ], [ %407, %406 ]
  %332 = load ptr, ptr %323, align 8, !tbaa !91
  %333 = getelementptr inbounds ptr, ptr %332, i64 %331
  %334 = load ptr, ptr %333, align 8, !tbaa !35
  %335 = getelementptr inbounds %struct.edge_def, ptr %334, i64 0, i32 7
  %336 = load i32, ptr %335, align 8, !tbaa !82
  %337 = and i32 %336, 22
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %348

339:                                              ; preds = %330
  %340 = getelementptr inbounds %struct.edge_def, ptr %334, i64 0, i32 1
  %341 = load ptr, ptr %340, align 8, !tbaa !83
  %342 = load ptr, ptr @cfun, align 8, !tbaa !35
  %343 = getelementptr inbounds %struct.function, ptr %342, i64 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !54
  %345 = getelementptr inbounds %struct.control_flow_graph, ptr %344, i64 0, i32 1
  %346 = load ptr, ptr %345, align 8, !tbaa !60
  %347 = icmp eq ptr %341, %346
  br i1 %347, label %348, label %406

348:                                              ; preds = %339, %330
  %349 = getelementptr inbounds %struct.edge_def, ptr %334, i64 0, i32 3
  %350 = load ptr, ptr %349, align 8, !tbaa !93
  %351 = load i8, ptr %350, align 4
  %352 = and i8 %351, 4
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %354, label %406

354:                                              ; preds = %348
  %355 = load ptr, ptr %334, align 8, !tbaa !85
  br label %356

356:                                              ; preds = %356, %354
  %357 = phi ptr [ %355, %354 ], [ %359, %356 ]
  %358 = getelementptr inbounds %struct.basic_block_def, ptr %357, i64 0, i32 2
  %359 = load ptr, ptr %358, align 8, !tbaa !95
  %360 = icmp eq ptr %359, %357
  br i1 %360, label %361, label %356, !llvm.loop !97

361:                                              ; preds = %356
  %362 = getelementptr inbounds %struct.basic_block_def, ptr %355, i64 0, i32 2
  %363 = load ptr, ptr %362, align 8, !tbaa !95
  %364 = icmp eq ptr %363, %357
  br i1 %364, label %371, label %365

365:                                              ; preds = %361, %365
  %366 = phi ptr [ %369, %365 ], [ %363, %361 ]
  %367 = phi ptr [ %368, %365 ], [ %362, %361 ]
  store ptr %357, ptr %367, align 8, !tbaa !95
  %368 = getelementptr inbounds %struct.basic_block_def, ptr %366, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !95
  %370 = icmp eq ptr %369, %357
  br i1 %370, label %371, label %365, !llvm.loop !98

371:                                              ; preds = %365, %361
  %372 = getelementptr inbounds %struct.edge_def, ptr %334, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !83
  br label %374

374:                                              ; preds = %374, %371
  %375 = phi ptr [ %373, %371 ], [ %377, %374 ]
  %376 = getelementptr inbounds %struct.basic_block_def, ptr %375, i64 0, i32 2
  %377 = load ptr, ptr %376, align 8, !tbaa !95
  %378 = icmp eq ptr %377, %375
  br i1 %378, label %379, label %374, !llvm.loop !97

379:                                              ; preds = %374
  %380 = getelementptr inbounds %struct.basic_block_def, ptr %373, i64 0, i32 2
  %381 = load ptr, ptr %380, align 8, !tbaa !95
  %382 = icmp eq ptr %381, %375
  br i1 %382, label %389, label %383

383:                                              ; preds = %379, %383
  %384 = phi ptr [ %387, %383 ], [ %381, %379 ]
  %385 = phi ptr [ %386, %383 ], [ %380, %379 ]
  store ptr %375, ptr %385, align 8, !tbaa !95
  %386 = getelementptr inbounds %struct.basic_block_def, ptr %384, i64 0, i32 2
  %387 = load ptr, ptr %386, align 8, !tbaa !95
  %388 = icmp eq ptr %387, %375
  br i1 %388, label %389, label %383, !llvm.loop !98

389:                                              ; preds = %383, %379
  %390 = icmp eq ptr %357, %375
  br i1 %390, label %406, label %391

391:                                              ; preds = %389
  %392 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %393 = icmp eq ptr %392, null
  br i1 %393, label %400, label %394

394:                                              ; preds = %391
  %395 = getelementptr inbounds %struct.basic_block_def, ptr %355, i64 0, i32 9
  %396 = load i32, ptr %395, align 8, !tbaa !87
  %397 = getelementptr inbounds %struct.basic_block_def, ptr %373, i64 0, i32 9
  %398 = load i32, ptr %397, align 8, !tbaa !87
  %399 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %392, ptr noundef nonnull @.str.40, i32 noundef %396, i32 noundef %398)
  br label %400

400:                                              ; preds = %394, %391
  %401 = load ptr, ptr %349, align 8, !tbaa !93
  %402 = load i8, ptr %401, align 4
  %403 = or i8 %402, 2
  store i8 %403, ptr %401, align 4
  %404 = load ptr, ptr %334, align 8, !tbaa !85
  %405 = load ptr, ptr %372, align 8, !tbaa !83
  call fastcc void @union_groups(ptr noundef %404, ptr noundef %405)
  br label %406

406:                                              ; preds = %400, %389, %348, %339
  %407 = add nuw nsw i64 %331, 1
  %408 = icmp eq i64 %407, %324
  br i1 %408, label %325, label %330, !llvm.loop !99

409:                                              ; preds = %492, %325
  %410 = icmp sgt i32 %305, 0
  br i1 %410, label %411, label %560

411:                                              ; preds = %409
  %412 = getelementptr inbounds %struct.edge_list, ptr %262, i64 0, i32 2
  %413 = zext nneg i32 %305 to i64
  br label %495

414:                                              ; preds = %327, %492
  %415 = phi i64 [ 0, %327 ], [ %493, %492 ]
  %416 = load ptr, ptr %328, align 8, !tbaa !91
  %417 = getelementptr inbounds ptr, ptr %416, i64 %415
  %418 = load ptr, ptr %417, align 8, !tbaa !35
  %419 = load ptr, ptr %418, align 8, !tbaa !85
  %420 = getelementptr inbounds %struct.basic_block_def, ptr %419, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !80
  %422 = icmp eq ptr %421, null
  br i1 %422, label %425, label %423

423:                                              ; preds = %414
  %424 = load i32, ptr %421, align 8, !tbaa !61
  br label %425

425:                                              ; preds = %423, %414
  %426 = phi i32 [ %424, %423 ], [ 0, %414 ]
  %427 = icmp ugt i32 %426, 1
  br i1 %427, label %428, label %492

428:                                              ; preds = %425
  %429 = getelementptr inbounds %struct.edge_def, ptr %418, i64 0, i32 1
  %430 = load ptr, ptr %429, align 8, !tbaa !83
  %431 = load ptr, ptr %430, align 8, !tbaa !100
  %432 = icmp eq ptr %431, null
  br i1 %432, label %435, label %433

433:                                              ; preds = %428
  %434 = load i32, ptr %431, align 8, !tbaa !61
  br label %435

435:                                              ; preds = %433, %428
  %436 = phi i32 [ %434, %433 ], [ 0, %428 ]
  %437 = icmp ugt i32 %436, 1
  br i1 %437, label %438, label %492

438:                                              ; preds = %435
  %439 = getelementptr inbounds %struct.edge_def, ptr %418, i64 0, i32 3
  %440 = load ptr, ptr %439, align 8, !tbaa !93
  %441 = load i8, ptr %440, align 4
  %442 = and i8 %441, 4
  %443 = icmp eq i8 %442, 0
  br i1 %443, label %444, label %492

444:                                              ; preds = %438, %444
  %445 = phi ptr [ %447, %444 ], [ %419, %438 ]
  %446 = getelementptr inbounds %struct.basic_block_def, ptr %445, i64 0, i32 2
  %447 = load ptr, ptr %446, align 8, !tbaa !95
  %448 = icmp eq ptr %447, %445
  br i1 %448, label %449, label %444, !llvm.loop !97

449:                                              ; preds = %444
  %450 = getelementptr inbounds %struct.basic_block_def, ptr %419, i64 0, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !95
  %452 = icmp eq ptr %451, %445
  br i1 %452, label %459, label %453

453:                                              ; preds = %449, %453
  %454 = phi ptr [ %457, %453 ], [ %451, %449 ]
  %455 = phi ptr [ %456, %453 ], [ %450, %449 ]
  store ptr %445, ptr %455, align 8, !tbaa !95
  %456 = getelementptr inbounds %struct.basic_block_def, ptr %454, i64 0, i32 2
  %457 = load ptr, ptr %456, align 8, !tbaa !95
  %458 = icmp eq ptr %457, %445
  br i1 %458, label %459, label %453, !llvm.loop !98

459:                                              ; preds = %453, %449
  br label %460

460:                                              ; preds = %459, %460
  %461 = phi ptr [ %463, %460 ], [ %430, %459 ]
  %462 = getelementptr inbounds %struct.basic_block_def, ptr %461, i64 0, i32 2
  %463 = load ptr, ptr %462, align 8, !tbaa !95
  %464 = icmp eq ptr %463, %461
  br i1 %464, label %465, label %460, !llvm.loop !97

465:                                              ; preds = %460
  %466 = getelementptr inbounds %struct.basic_block_def, ptr %430, i64 0, i32 2
  %467 = load ptr, ptr %466, align 8, !tbaa !95
  %468 = icmp eq ptr %467, %461
  br i1 %468, label %475, label %469

469:                                              ; preds = %465, %469
  %470 = phi ptr [ %473, %469 ], [ %467, %465 ]
  %471 = phi ptr [ %472, %469 ], [ %466, %465 ]
  store ptr %461, ptr %471, align 8, !tbaa !95
  %472 = getelementptr inbounds %struct.basic_block_def, ptr %470, i64 0, i32 2
  %473 = load ptr, ptr %472, align 8, !tbaa !95
  %474 = icmp eq ptr %473, %461
  br i1 %474, label %475, label %469, !llvm.loop !98

475:                                              ; preds = %469, %465
  %476 = icmp eq ptr %445, %461
  br i1 %476, label %492, label %477

477:                                              ; preds = %475
  %478 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %479 = icmp eq ptr %478, null
  br i1 %479, label %486, label %480

480:                                              ; preds = %477
  %481 = getelementptr inbounds %struct.basic_block_def, ptr %419, i64 0, i32 9
  %482 = load i32, ptr %481, align 8, !tbaa !87
  %483 = getelementptr inbounds %struct.basic_block_def, ptr %430, i64 0, i32 9
  %484 = load i32, ptr %483, align 8, !tbaa !87
  %485 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %478, ptr noundef nonnull @.str.41, i32 noundef %482, i32 noundef %484)
  br label %486

486:                                              ; preds = %480, %477
  %487 = load ptr, ptr %439, align 8, !tbaa !93
  %488 = load i8, ptr %487, align 4
  %489 = or i8 %488, 2
  store i8 %489, ptr %487, align 4
  %490 = load ptr, ptr %418, align 8, !tbaa !85
  %491 = load ptr, ptr %429, align 8, !tbaa !83
  call fastcc void @union_groups(ptr noundef %490, ptr noundef %491)
  br label %492

492:                                              ; preds = %486, %475, %438, %435, %425
  %493 = add nuw nsw i64 %415, 1
  %494 = icmp eq i64 %493, %329
  br i1 %494, label %409, label %414, !llvm.loop !101

495:                                              ; preds = %411, %557
  %496 = phi i64 [ 0, %411 ], [ %558, %557 ]
  %497 = load ptr, ptr %412, align 8, !tbaa !91
  %498 = getelementptr inbounds ptr, ptr %497, i64 %496
  %499 = load ptr, ptr %498, align 8, !tbaa !35
  %500 = getelementptr inbounds %struct.edge_def, ptr %499, i64 0, i32 3
  %501 = load ptr, ptr %500, align 8, !tbaa !93
  %502 = load i8, ptr %501, align 4
  %503 = and i8 %502, 4
  %504 = icmp eq i8 %503, 0
  br i1 %504, label %505, label %557

505:                                              ; preds = %495
  %506 = load ptr, ptr %499, align 8, !tbaa !85
  br label %507

507:                                              ; preds = %507, %505
  %508 = phi ptr [ %506, %505 ], [ %510, %507 ]
  %509 = getelementptr inbounds %struct.basic_block_def, ptr %508, i64 0, i32 2
  %510 = load ptr, ptr %509, align 8, !tbaa !95
  %511 = icmp eq ptr %510, %508
  br i1 %511, label %512, label %507, !llvm.loop !97

512:                                              ; preds = %507
  %513 = getelementptr inbounds %struct.basic_block_def, ptr %506, i64 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !95
  %515 = icmp eq ptr %514, %508
  br i1 %515, label %522, label %516

516:                                              ; preds = %512, %516
  %517 = phi ptr [ %520, %516 ], [ %514, %512 ]
  %518 = phi ptr [ %519, %516 ], [ %513, %512 ]
  store ptr %508, ptr %518, align 8, !tbaa !95
  %519 = getelementptr inbounds %struct.basic_block_def, ptr %517, i64 0, i32 2
  %520 = load ptr, ptr %519, align 8, !tbaa !95
  %521 = icmp eq ptr %520, %508
  br i1 %521, label %522, label %516, !llvm.loop !98

522:                                              ; preds = %516, %512
  %523 = getelementptr inbounds %struct.edge_def, ptr %499, i64 0, i32 1
  %524 = load ptr, ptr %523, align 8, !tbaa !83
  br label %525

525:                                              ; preds = %525, %522
  %526 = phi ptr [ %524, %522 ], [ %528, %525 ]
  %527 = getelementptr inbounds %struct.basic_block_def, ptr %526, i64 0, i32 2
  %528 = load ptr, ptr %527, align 8, !tbaa !95
  %529 = icmp eq ptr %528, %526
  br i1 %529, label %530, label %525, !llvm.loop !97

530:                                              ; preds = %525
  %531 = getelementptr inbounds %struct.basic_block_def, ptr %524, i64 0, i32 2
  %532 = load ptr, ptr %531, align 8, !tbaa !95
  %533 = icmp eq ptr %532, %526
  br i1 %533, label %540, label %534

534:                                              ; preds = %530, %534
  %535 = phi ptr [ %538, %534 ], [ %532, %530 ]
  %536 = phi ptr [ %537, %534 ], [ %531, %530 ]
  store ptr %526, ptr %536, align 8, !tbaa !95
  %537 = getelementptr inbounds %struct.basic_block_def, ptr %535, i64 0, i32 2
  %538 = load ptr, ptr %537, align 8, !tbaa !95
  %539 = icmp eq ptr %538, %526
  br i1 %539, label %540, label %534, !llvm.loop !98

540:                                              ; preds = %534, %530
  %541 = icmp eq ptr %508, %526
  br i1 %541, label %557, label %542

542:                                              ; preds = %540
  %543 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %544 = icmp eq ptr %543, null
  br i1 %544, label %551, label %545

545:                                              ; preds = %542
  %546 = getelementptr inbounds %struct.basic_block_def, ptr %506, i64 0, i32 9
  %547 = load i32, ptr %546, align 8, !tbaa !87
  %548 = getelementptr inbounds %struct.basic_block_def, ptr %524, i64 0, i32 9
  %549 = load i32, ptr %548, align 8, !tbaa !87
  %550 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %543, ptr noundef nonnull @.str.42, i32 noundef %547, i32 noundef %549)
  br label %551

551:                                              ; preds = %545, %542
  %552 = load ptr, ptr %500, align 8, !tbaa !93
  %553 = load i8, ptr %552, align 4
  %554 = or i8 %553, 2
  store i8 %554, ptr %552, align 4
  %555 = load ptr, ptr %499, align 8, !tbaa !85
  %556 = load ptr, ptr %523, align 8, !tbaa !83
  call fastcc void @union_groups(ptr noundef %555, ptr noundef %556)
  br label %557

557:                                              ; preds = %551, %540, %495
  %558 = add nuw nsw i64 %496, 1
  %559 = icmp eq i64 %558, %413
  br i1 %559, label %560, label %495, !llvm.loop !102

560:                                              ; preds = %557, %409
  %561 = load ptr, ptr @cfun, align 8, !tbaa !35
  %562 = getelementptr inbounds %struct.function, ptr %561, i64 0, i32 1
  %563 = load ptr, ptr %562, align 8, !tbaa !54
  %564 = load ptr, ptr %563, align 8, !tbaa !35
  %565 = icmp eq ptr %564, null
  br i1 %565, label %566, label %571

566:                                              ; preds = %571, %560
  %567 = icmp eq i32 %264, 0
  br i1 %567, label %604, label %568

568:                                              ; preds = %566
  %569 = getelementptr inbounds %struct.edge_list, ptr %262, i64 0, i32 2
  %570 = zext i32 %264 to i64
  br label %577

571:                                              ; preds = %560, %571
  %572 = phi ptr [ %575, %571 ], [ %564, %560 ]
  %573 = getelementptr inbounds %struct.basic_block_def, ptr %572, i64 0, i32 2
  store ptr null, ptr %573, align 8, !tbaa !95
  %574 = getelementptr inbounds %struct.basic_block_def, ptr %572, i64 0, i32 6
  %575 = load ptr, ptr %574, align 8, !tbaa !35
  %576 = icmp eq ptr %575, null
  br i1 %576, label %566, label %571, !llvm.loop !103

577:                                              ; preds = %568, %599
  %578 = phi i64 [ 0, %568 ], [ %602, %599 ]
  %579 = phi i32 [ %304, %568 ], [ %601, %599 ]
  %580 = phi i32 [ 0, %568 ], [ %600, %599 ]
  %581 = load ptr, ptr %569, align 8, !tbaa !91
  %582 = getelementptr inbounds ptr, ptr %581, i64 %578
  %583 = load ptr, ptr %582, align 8, !tbaa !35
  %584 = getelementptr inbounds %struct.edge_def, ptr %583, i64 0, i32 3
  %585 = load ptr, ptr %584, align 8, !tbaa !93
  %586 = load i8, ptr %585, align 4
  %587 = and i8 %586, 6
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %589, label %599

589:                                              ; preds = %577
  %590 = getelementptr inbounds %struct.edge_def, ptr %583, i64 0, i32 7
  %591 = load i32, ptr %590, align 8, !tbaa !82
  %592 = and i32 %591, 16
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %597, label %594

594:                                              ; preds = %589
  %595 = or disjoint i8 %586, 4
  store i8 %595, ptr %585, align 4
  %596 = add i32 %579, 1
  br label %599

597:                                              ; preds = %589
  %598 = add i32 %580, 1
  br label %599

599:                                              ; preds = %594, %597, %577
  %600 = phi i32 [ %580, %577 ], [ %580, %594 ], [ %598, %597 ]
  %601 = phi i32 [ %579, %577 ], [ %596, %594 ], [ %579, %597 ]
  %602 = add nuw nsw i64 %578, 1
  %603 = icmp eq i64 %602, %570
  br i1 %603, label %604, label %577, !llvm.loop !104

604:                                              ; preds = %599, %566
  %605 = phi i32 [ 0, %566 ], [ %600, %599 ]
  %606 = phi i32 [ %304, %566 ], [ %601, %599 ]
  %607 = load ptr, ptr @cfun, align 8, !tbaa !35
  %608 = getelementptr inbounds %struct.function, ptr %607, i64 0, i32 1
  %609 = load ptr, ptr %608, align 8, !tbaa !54
  %610 = getelementptr inbounds %struct.control_flow_graph, ptr %609, i64 0, i32 3
  %611 = load i32, ptr %610, align 8, !tbaa !105
  %612 = load i32, ptr @total_num_blocks, align 4, !tbaa !50
  %613 = add nsw i32 %612, %611
  store i32 %613, ptr @total_num_blocks, align 4, !tbaa !50
  %614 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %615 = icmp eq ptr %614, null
  br i1 %615, label %618, label %616

616:                                              ; preds = %604
  %617 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %614, ptr noundef nonnull @.str.2, i32 noundef %611)
  br label %618

618:                                              ; preds = %616, %604
  %619 = load i32, ptr @total_num_edges, align 4, !tbaa !50
  %620 = add i32 %619, %264
  store i32 %620, ptr @total_num_edges, align 4, !tbaa !50
  %621 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %622 = icmp eq ptr %621, null
  br i1 %622, label %625, label %623

623:                                              ; preds = %618
  %624 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %621, ptr noundef nonnull @.str.3, i32 noundef %264)
  br label %625

625:                                              ; preds = %623, %618
  %626 = load i32, ptr @total_num_edges_ignored, align 4, !tbaa !50
  %627 = add i32 %626, %606
  store i32 %627, ptr @total_num_edges_ignored, align 4, !tbaa !50
  %628 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %629 = icmp eq ptr %628, null
  br i1 %629, label %632, label %630

630:                                              ; preds = %625
  %631 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %628, ptr noundef nonnull @.str.4, i32 noundef %606)
  br label %632

632:                                              ; preds = %630, %625
  %633 = call i32 @coverage_begin_output() #17
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %653, label %635

635:                                              ; preds = %632
  %636 = call i32 @gcov_write_tag(i32 noundef 21037056) #17
  %637 = load ptr, ptr @cfun, align 8, !tbaa !35
  %638 = getelementptr inbounds %struct.function, ptr %637, i64 0, i32 1
  %639 = load ptr, ptr %638, align 8, !tbaa !54
  %640 = getelementptr inbounds %struct.control_flow_graph, ptr %639, i64 0, i32 3
  %641 = load i32, ptr %640, align 8, !tbaa !105
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %652, label %643

643:                                              ; preds = %635, %643
  %644 = phi i32 [ %645, %643 ], [ 0, %635 ]
  call void @gcov_write_unsigned(i32 noundef 0) #17
  %645 = add i32 %644, 1
  %646 = load ptr, ptr @cfun, align 8, !tbaa !35
  %647 = getelementptr inbounds %struct.function, ptr %646, i64 0, i32 1
  %648 = load ptr, ptr %647, align 8, !tbaa !54
  %649 = getelementptr inbounds %struct.control_flow_graph, ptr %648, i64 0, i32 3
  %650 = load i32, ptr %649, align 8, !tbaa !105
  %651 = icmp eq i32 %645, %650
  br i1 %651, label %652, label %643, !llvm.loop !106

652:                                              ; preds = %643, %635
  call void @gcov_write_length(i32 noundef %636) #17
  br label %653

653:                                              ; preds = %652, %632
  %654 = load ptr, ptr @cfun, align 8, !tbaa !35
  %655 = getelementptr inbounds %struct.function, ptr %654, i64 0, i32 1
  %656 = load ptr, ptr %655, align 8, !tbaa !54
  %657 = load ptr, ptr %656, align 8, !tbaa !56
  %658 = getelementptr inbounds %struct.basic_block_def, ptr %657, i64 0, i32 9
  store i32 1, ptr %658, align 8, !tbaa !87
  %659 = getelementptr inbounds %struct.control_flow_graph, ptr %656, i64 0, i32 5
  %660 = load i32, ptr %659, align 8, !tbaa !107
  %661 = getelementptr inbounds %struct.control_flow_graph, ptr %656, i64 0, i32 1
  %662 = load ptr, ptr %661, align 8, !tbaa !60
  %663 = getelementptr inbounds %struct.basic_block_def, ptr %662, i64 0, i32 9
  store i32 %660, ptr %663, align 8, !tbaa !87
  %664 = call i32 @coverage_begin_output() #17
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %752, label %666

666:                                              ; preds = %653
  %667 = load ptr, ptr @cfun, align 8, !tbaa !35
  %668 = getelementptr inbounds %struct.function, ptr %667, i64 0, i32 1
  %669 = load ptr, ptr %668, align 8, !tbaa !54
  %670 = load ptr, ptr %669, align 8, !tbaa !35
  %671 = getelementptr inbounds %struct.control_flow_graph, ptr %669, i64 0, i32 1
  %672 = load ptr, ptr %671, align 8, !tbaa !60
  %673 = icmp eq ptr %670, %672
  br i1 %673, label %752, label %674

674:                                              ; preds = %666, %743
  %675 = phi ptr [ %745, %743 ], [ %670, %666 ]
  %676 = call i32 @gcov_write_tag(i32 noundef 21168128) #17
  %677 = getelementptr inbounds %struct.basic_block_def, ptr %675, i64 0, i32 9
  %678 = load i32, ptr %677, align 8, !tbaa !87
  %679 = add nsw i32 %678, -1
  call void @gcov_write_unsigned(i32 noundef %679) #17
  %680 = getelementptr inbounds %struct.basic_block_def, ptr %675, i64 0, i32 1
  br label %681

681:                                              ; preds = %741, %674
  %682 = phi i32 [ 0, %674 ], [ %742, %741 ]
  %683 = load ptr, ptr %680, align 8, !tbaa !35
  %684 = icmp eq ptr %683, null
  br i1 %684, label %687, label %685

685:                                              ; preds = %681
  %686 = load i32, ptr %683, align 8, !tbaa !61
  br label %687

687:                                              ; preds = %685, %681
  %688 = phi i32 [ %686, %685 ], [ 0, %681 ]
  %689 = icmp eq i32 %688, %682
  br i1 %689, label %694, label %690

690:                                              ; preds = %687
  %691 = zext i32 %682 to i64
  %692 = getelementptr inbounds %struct.VEC_edge_base, ptr %683, i64 0, i32 2, i64 %691
  %693 = load ptr, ptr %692, align 8, !tbaa !35
  br label %694

694:                                              ; preds = %687, %690
  %695 = phi ptr [ %693, %690 ], [ null, %687 ]
  br i1 %689, label %743, label %696

696:                                              ; preds = %694
  %697 = getelementptr inbounds %struct.edge_def, ptr %695, i64 0, i32 3
  %698 = load ptr, ptr %697, align 8, !tbaa !93
  %699 = load i8, ptr %698, align 4
  %700 = and i8 %699, 4
  %701 = icmp eq i8 %700, 0
  br i1 %701, label %702, label %732

702:                                              ; preds = %696
  %703 = lshr i8 %699, 1
  %704 = and i8 %703, 1
  %705 = zext nneg i8 %704 to i32
  %706 = getelementptr inbounds %struct.edge_def, ptr %695, i64 0, i32 7
  %707 = load i32, ptr %706, align 8, !tbaa !82
  %708 = lshr i32 %707, 3
  %709 = and i32 %708, 2
  %710 = or disjoint i32 %709, %705
  %711 = shl i32 %707, 2
  %712 = and i32 %711, 4
  %713 = or disjoint i32 %710, %712
  %714 = and i32 %707, 3072
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %725, label %716

716:                                              ; preds = %702
  %717 = or disjoint i32 %710, 4
  %718 = load ptr, ptr %695, align 8, !tbaa !85
  %719 = getelementptr inbounds %struct.basic_block_def, ptr %718, i64 0, i32 6
  %720 = load ptr, ptr %719, align 8, !tbaa !58
  %721 = getelementptr inbounds %struct.edge_def, ptr %695, i64 0, i32 1
  %722 = load ptr, ptr %721, align 8, !tbaa !83
  %723 = icmp eq ptr %720, %722
  %724 = select i1 %723, i32 %717, i32 %713
  br label %725

725:                                              ; preds = %716, %702
  %726 = phi i32 [ %713, %702 ], [ %724, %716 ]
  %727 = getelementptr inbounds %struct.edge_def, ptr %695, i64 0, i32 1
  %728 = load ptr, ptr %727, align 8, !tbaa !83
  %729 = getelementptr inbounds %struct.basic_block_def, ptr %728, i64 0, i32 9
  %730 = load i32, ptr %729, align 8, !tbaa !87
  %731 = add nsw i32 %730, -1
  call void @gcov_write_unsigned(i32 noundef %731) #17
  call void @gcov_write_unsigned(i32 noundef %726) #17
  br label %732

732:                                              ; preds = %696, %725
  %733 = load ptr, ptr %680, align 8, !tbaa !35
  %734 = icmp eq ptr %733, null
  br i1 %734, label %737, label %735

735:                                              ; preds = %732
  %736 = load i32, ptr %733, align 8, !tbaa !61
  br label %737

737:                                              ; preds = %735, %732
  %738 = phi i32 [ %736, %735 ], [ 0, %732 ]
  %739 = icmp ult i32 %682, %738
  br i1 %739, label %741, label %740

740:                                              ; preds = %737
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %741

741:                                              ; preds = %737, %740
  %742 = add i32 %682, 1
  br label %681, !llvm.loop !108

743:                                              ; preds = %694
  call void @gcov_write_length(i32 noundef %676) #17
  %744 = getelementptr inbounds %struct.basic_block_def, ptr %675, i64 0, i32 6
  %745 = load ptr, ptr %744, align 8, !tbaa !35
  %746 = load ptr, ptr @cfun, align 8, !tbaa !35
  %747 = getelementptr inbounds %struct.function, ptr %746, i64 0, i32 1
  %748 = load ptr, ptr %747, align 8, !tbaa !54
  %749 = getelementptr inbounds %struct.control_flow_graph, ptr %748, i64 0, i32 1
  %750 = load ptr, ptr %749, align 8, !tbaa !60
  %751 = icmp eq ptr %745, %750
  br i1 %751, label %752, label %674, !llvm.loop !109

752:                                              ; preds = %743, %666, %653
  %753 = call i32 @coverage_begin_output() #17
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %867, label %755

755:                                              ; preds = %752
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #17
  store ptr null, ptr @output_location.prev_file_name, align 8, !tbaa !35
  store i32 -1, ptr @output_location.prev_line, align 4, !tbaa !50
  %756 = load ptr, ptr @cfun, align 8, !tbaa !35
  %757 = getelementptr inbounds %struct.function, ptr %756, i64 0, i32 1
  %758 = load ptr, ptr %757, align 8, !tbaa !54
  %759 = load ptr, ptr %758, align 8, !tbaa !56
  %760 = getelementptr inbounds %struct.basic_block_def, ptr %759, i64 0, i32 6
  %761 = load ptr, ptr %760, align 8, !tbaa !58
  %762 = getelementptr inbounds %struct.control_flow_graph, ptr %758, i64 0, i32 1
  %763 = load ptr, ptr %762, align 8, !tbaa !60
  %764 = icmp eq ptr %761, %763
  br i1 %764, label %866, label %765

765:                                              ; preds = %755
  %766 = getelementptr inbounds %struct.expanded_location, ptr %13, i64 0, i32 1
  %767 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 1
  %768 = getelementptr inbounds %struct.expanded_location, ptr %15, i64 0, i32 1
  br label %769

769:                                              ; preds = %765, %857
  %770 = phi ptr [ %758, %765 ], [ %862, %857 ]
  %771 = phi ptr [ %761, %765 ], [ %859, %857 ]
  store i32 0, ptr %12, align 4, !tbaa !50
  %772 = load ptr, ptr %770, align 8, !tbaa !56
  %773 = getelementptr inbounds %struct.basic_block_def, ptr %772, i64 0, i32 6
  %774 = load ptr, ptr %773, align 8, !tbaa !58
  %775 = icmp eq ptr %771, %774
  br i1 %775, label %776, label %782

776:                                              ; preds = %769
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #17
  %777 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %778 = getelementptr inbounds %struct.tree_decl_minimal, ptr %777, i64 0, i32 1
  %779 = load i32, ptr %778, align 8, !tbaa !46
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %13, i32 noundef %779) #17
  %780 = load ptr, ptr %13, align 8, !tbaa !77
  %781 = load i32, ptr %766, align 8, !tbaa !79
  call fastcc void @output_location(ptr noundef %780, i32 noundef %781, ptr noundef nonnull %12, ptr noundef %771)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #17
  br label %782

782:                                              ; preds = %776, %769
  %783 = getelementptr inbounds %struct.basic_block_def, ptr %771, i64 0, i32 13
  %784 = load i32, ptr %783, align 8, !tbaa !63, !noalias !110
  %785 = and i32 %784, 512
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %787, label %793

787:                                              ; preds = %782
  %788 = getelementptr inbounds %struct.basic_block_def, ptr %771, i64 0, i32 7
  %789 = load ptr, ptr %788, align 8, !tbaa !46, !noalias !110
  %790 = icmp eq ptr %789, null
  br i1 %790, label %793, label %791

791:                                              ; preds = %787
  %792 = load ptr, ptr %789, align 8, !tbaa !67, !noalias !110
  br label %793

793:                                              ; preds = %791, %787, %782
  %794 = phi ptr [ %792, %791 ], [ null, %787 ], [ null, %782 ]
  %795 = icmp eq ptr %794, null
  br i1 %795, label %798, label %796

796:                                              ; preds = %793
  %797 = load ptr, ptr %794, align 8, !tbaa !113, !noalias !110
  br label %798

798:                                              ; preds = %793, %796
  %799 = phi ptr [ %797, %796 ], [ null, %793 ]
  %800 = icmp eq ptr %799, null
  br i1 %800, label %816, label %801

801:                                              ; preds = %798, %812
  %802 = phi ptr [ %814, %812 ], [ %799, %798 ]
  %803 = load ptr, ptr %802, align 8, !tbaa !71
  %804 = getelementptr inbounds %struct.gimple_statement_base, ptr %803, i64 0, i32 2
  %805 = load i32, ptr %804, align 8, !tbaa !46
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %812, label %807

807:                                              ; preds = %801
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6)
  %808 = load i32, ptr %804, align 8, !tbaa !46
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %6, i32 noundef %808) #17
  %809 = load ptr, ptr %6, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5)
  %810 = load i32, ptr %804, align 8, !tbaa !46
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %810) #17
  %811 = load i32, ptr %767, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5)
  call fastcc void @output_location(ptr noundef %809, i32 noundef %811, ptr noundef nonnull %12, ptr noundef %771)
  br label %812

812:                                              ; preds = %807, %801
  %813 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %802, i64 0, i32 2
  %814 = load ptr, ptr %813, align 8, !tbaa !114
  %815 = icmp eq ptr %814, null
  br i1 %815, label %816, label %801, !llvm.loop !115

816:                                              ; preds = %812, %798
  %817 = getelementptr inbounds %struct.basic_block_def, ptr %771, i64 0, i32 1
  %818 = load ptr, ptr %817, align 8, !tbaa !80
  %819 = icmp eq ptr %818, null
  br i1 %819, label %824, label %820

820:                                              ; preds = %816
  %821 = load i32, ptr %818, align 8, !tbaa !61
  %822 = icmp eq i32 %821, 1
  %823 = zext i1 %822 to i8
  br label %824

824:                                              ; preds = %816, %820
  %825 = phi i8 [ %823, %820 ], [ 0, %816 ]
  %826 = icmp eq i8 %825, 0
  br i1 %826, label %853, label %827

827:                                              ; preds = %824
  br i1 %819, label %831, label %828

828:                                              ; preds = %827
  %829 = load i32, ptr %818, align 8, !tbaa !61
  %830 = icmp eq i32 %829, 1
  br i1 %830, label %832, label %831

831:                                              ; preds = %827, %828
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 645, ptr noundef nonnull @.str.6) #17
  br label %832

832:                                              ; preds = %828, %831
  %833 = load ptr, ptr %817, align 8, !tbaa !80
  %834 = getelementptr inbounds %struct.VEC_edge_base, ptr %833, i64 0, i32 2, i64 0
  %835 = load ptr, ptr %834, align 8, !tbaa !35
  %836 = getelementptr inbounds %struct.edge_def, ptr %835, i64 0, i32 5
  %837 = load i32, ptr %836, align 8, !tbaa !75
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %853, label %839

839:                                              ; preds = %832
  %840 = icmp eq ptr %833, null
  br i1 %840, label %844, label %841

841:                                              ; preds = %839
  %842 = load i32, ptr %833, align 8, !tbaa !61
  %843 = icmp eq i32 %842, 1
  br i1 %843, label %845, label %844

844:                                              ; preds = %839, %841
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 645, ptr noundef nonnull @.str.6) #17
  br label %845

845:                                              ; preds = %841, %844
  %846 = load ptr, ptr %817, align 8, !tbaa !80
  %847 = getelementptr inbounds %struct.VEC_edge_base, ptr %846, i64 0, i32 2, i64 0
  %848 = load ptr, ptr %847, align 8, !tbaa !35
  %849 = getelementptr inbounds %struct.edge_def, ptr %848, i64 0, i32 5
  %850 = load i32, ptr %849, align 8, !tbaa !75
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %14, i32 noundef %850) #17
  %851 = load ptr, ptr %14, align 8, !tbaa !77
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %15, i32 noundef %850) #17
  %852 = load i32, ptr %768, align 8, !tbaa !79
  call fastcc void @output_location(ptr noundef %851, i32 noundef %852, ptr noundef nonnull %12, ptr noundef %771)
  br label %853

853:                                              ; preds = %845, %832, %824
  %854 = load i32, ptr %12, align 4, !tbaa !50
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %857, label %856

856:                                              ; preds = %853
  call void @gcov_write_unsigned(i32 noundef 0) #17
  call void @gcov_write_string(ptr noundef null) #17
  call void @gcov_write_length(i32 noundef %854) #17
  br label %857

857:                                              ; preds = %856, %853
  %858 = getelementptr inbounds %struct.basic_block_def, ptr %771, i64 0, i32 6
  %859 = load ptr, ptr %858, align 8, !tbaa !58
  %860 = load ptr, ptr @cfun, align 8, !tbaa !35
  %861 = getelementptr inbounds %struct.function, ptr %860, i64 0, i32 1
  %862 = load ptr, ptr %861, align 8, !tbaa !54
  %863 = getelementptr inbounds %struct.control_flow_graph, ptr %862, i64 0, i32 1
  %864 = load ptr, ptr %863, align 8, !tbaa !60
  %865 = icmp eq ptr %859, %864
  br i1 %865, label %866, label %769, !llvm.loop !116

866:                                              ; preds = %857, %755
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #17
  br label %867

867:                                              ; preds = %866, %752
  %868 = load ptr, ptr @cfun, align 8, !tbaa !35
  %869 = getelementptr inbounds %struct.function, ptr %868, i64 0, i32 1
  %870 = load ptr, ptr %869, align 8, !tbaa !54
  %871 = load ptr, ptr %870, align 8, !tbaa !56
  %872 = getelementptr inbounds %struct.basic_block_def, ptr %871, i64 0, i32 9
  store i32 0, ptr %872, align 8, !tbaa !87
  %873 = getelementptr inbounds %struct.control_flow_graph, ptr %870, i64 0, i32 1
  %874 = load ptr, ptr %873, align 8, !tbaa !60
  %875 = getelementptr inbounds %struct.basic_block_def, ptr %874, i64 0, i32 9
  store i32 1, ptr %875, align 8, !tbaa !87
  %876 = load i32, ptr @flag_profile_values, align 4, !tbaa !50
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %879, label %878

878:                                              ; preds = %867
  call void @find_values_to_profile(ptr noundef nonnull %7) #17
  br label %879

879:                                              ; preds = %878, %867
  %880 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !50
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %2120, label %882

882:                                              ; preds = %879
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #17
  %883 = load ptr, ptr @cfun, align 8, !tbaa !35
  %884 = getelementptr inbounds %struct.function, ptr %883, i64 0, i32 1
  %885 = load ptr, ptr %884, align 8, !tbaa !54
  %886 = load ptr, ptr %885, align 8, !tbaa !35
  %887 = icmp eq ptr %886, null
  br i1 %887, label %928, label %888

888:                                              ; preds = %882, %924
  %889 = phi ptr [ %926, %924 ], [ %886, %882 ]
  %890 = phi i32 [ %894, %924 ], [ 0, %882 ]
  %891 = getelementptr inbounds %struct.basic_block_def, ptr %889, i64 0, i32 1
  br label %892

892:                                              ; preds = %922, %888
  %893 = phi i32 [ 0, %888 ], [ %923, %922 ]
  %894 = phi i32 [ %890, %888 ], [ %915, %922 ]
  %895 = load ptr, ptr %891, align 8, !tbaa !35
  %896 = icmp eq ptr %895, null
  br i1 %896, label %899, label %897

897:                                              ; preds = %892
  %898 = load i32, ptr %895, align 8, !tbaa !61
  br label %899

899:                                              ; preds = %897, %892
  %900 = phi i32 [ %898, %897 ], [ 0, %892 ]
  %901 = icmp eq i32 %900, %893
  br i1 %901, label %906, label %902

902:                                              ; preds = %899
  %903 = zext i32 %893 to i64
  %904 = getelementptr inbounds %struct.VEC_edge_base, ptr %895, i64 0, i32 2, i64 %903
  %905 = load ptr, ptr %904, align 8, !tbaa !35
  br label %906

906:                                              ; preds = %902, %899
  %907 = phi ptr [ %905, %902 ], [ null, %899 ]
  br i1 %901, label %924, label %908

908:                                              ; preds = %906
  %909 = getelementptr inbounds %struct.edge_def, ptr %907, i64 0, i32 3
  %910 = load ptr, ptr %909, align 8, !tbaa !93
  %911 = load i8, ptr %910, align 4
  %912 = and i8 %911, 6
  %913 = icmp eq i8 %912, 0
  %914 = zext i1 %913 to i32
  %915 = add i32 %894, %914
  br i1 %896, label %918, label %916

916:                                              ; preds = %908
  %917 = load i32, ptr %895, align 8, !tbaa !61
  br label %918

918:                                              ; preds = %916, %908
  %919 = phi i32 [ %917, %916 ], [ 0, %908 ]
  %920 = icmp ult i32 %893, %919
  br i1 %920, label %922, label %921

921:                                              ; preds = %918
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %922

922:                                              ; preds = %921, %918
  %923 = add i32 %893, 1
  br label %892, !llvm.loop !117

924:                                              ; preds = %906
  %925 = getelementptr inbounds %struct.basic_block_def, ptr %889, i64 0, i32 6
  %926 = load ptr, ptr %925, align 8, !tbaa !35
  %927 = icmp eq ptr %926, null
  br i1 %927, label %928, label %888, !llvm.loop !118

928:                                              ; preds = %924, %882
  %929 = phi i32 [ 0, %882 ], [ %894, %924 ]
  %930 = call ptr @get_coverage_counts(i32 noundef 0, i32 noundef %929, ptr noundef nonnull @profile_info) #17
  %931 = icmp eq ptr %930, null
  br i1 %931, label %945, label %932

932:                                              ; preds = %928
  %933 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %934 = icmp ne ptr %933, null
  %935 = load ptr, ptr @profile_info, align 8
  %936 = icmp ne ptr %935, null
  %937 = select i1 %934, i1 %936, i1 false
  br i1 %937, label %938, label %945

938:                                              ; preds = %932
  %939 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %935, i64 0, i32 1
  %940 = load i32, ptr %939, align 4, !tbaa !119
  %941 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %935, i64 0, i32 4
  %942 = load i64, ptr %941, align 8, !tbaa !121
  %943 = trunc i64 %942 to i32
  %944 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %933, ptr noundef nonnull @.str.28, i32 noundef %940, i32 noundef %943)
  br label %945

945:                                              ; preds = %938, %932, %928
  %946 = phi ptr [ null, %928 ], [ %930, %938 ], [ %930, %932 ]
  %947 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %948 = icmp eq ptr %947, null
  br i1 %948, label %2021, label %949

949:                                              ; preds = %945
  %950 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %947, i64 0, i32 3
  %951 = load i64, ptr %950, align 8, !tbaa !122
  %952 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %947, i64 0, i32 1
  %953 = load i32, ptr %952, align 4, !tbaa !119
  %954 = zext i32 %953 to i64
  %955 = mul nsw i64 %951, %954
  %956 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %947, i64 0, i32 4
  %957 = load i64, ptr %956, align 8, !tbaa !121
  %958 = icmp slt i64 %955, %957
  br i1 %958, label %959, label %960

959:                                              ; preds = %949
  call void (ptr, ...) @error(ptr noundef nonnull @.str.18) #17
  br label %960

960:                                              ; preds = %959, %949
  %961 = phi ptr [ null, %959 ], [ %946, %949 ]
  %962 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %963 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %962, i64 0, i32 2
  %964 = load i64, ptr %963, align 8, !tbaa !123
  %965 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %962, i64 0, i32 4
  %966 = load i64, ptr %965, align 8, !tbaa !121
  %967 = icmp slt i64 %964, %966
  br i1 %967, label %968, label %969

968:                                              ; preds = %960
  call void (ptr, ...) @error(ptr noundef nonnull @.str.19) #17
  br label %969

969:                                              ; preds = %968, %960
  %970 = phi ptr [ null, %968 ], [ %961, %960 ]
  call void @alloc_aux_for_blocks(i32 noundef 24) #17
  %971 = load ptr, ptr @cfun, align 8, !tbaa !35
  %972 = getelementptr inbounds %struct.function, ptr %971, i64 0, i32 1
  %973 = load ptr, ptr %972, align 8, !tbaa !54
  %974 = load ptr, ptr %973, align 8, !tbaa !35
  %975 = icmp eq ptr %974, null
  br i1 %975, label %1056, label %976

976:                                              ; preds = %969, %1052
  %977 = phi ptr [ %1054, %1052 ], [ %974, %969 ]
  %978 = getelementptr inbounds %struct.basic_block_def, ptr %977, i64 0, i32 1
  %979 = getelementptr inbounds %struct.basic_block_def, ptr %977, i64 0, i32 2
  br label %980

980:                                              ; preds = %1015, %976
  %981 = phi i32 [ 0, %976 ], [ %1016, %1015 ]
  %982 = load ptr, ptr %978, align 8, !tbaa !35
  %983 = icmp eq ptr %982, null
  br i1 %983, label %986, label %984

984:                                              ; preds = %980
  %985 = load i32, ptr %982, align 8, !tbaa !61
  br label %986

986:                                              ; preds = %984, %980
  %987 = phi i32 [ %985, %984 ], [ 0, %980 ]
  %988 = icmp eq i32 %987, %981
  br i1 %988, label %993, label %989

989:                                              ; preds = %986
  %990 = zext i32 %981 to i64
  %991 = getelementptr inbounds %struct.VEC_edge_base, ptr %982, i64 0, i32 2, i64 %990
  %992 = load ptr, ptr %991, align 8, !tbaa !35
  br label %993

993:                                              ; preds = %989, %986
  %994 = phi ptr [ %992, %989 ], [ null, %986 ]
  br i1 %988, label %995, label %997

995:                                              ; preds = %993
  %996 = getelementptr inbounds %struct.basic_block_def, ptr %977, i64 0, i32 2
  br label %1017

997:                                              ; preds = %993
  %998 = getelementptr inbounds %struct.edge_def, ptr %994, i64 0, i32 3
  %999 = load ptr, ptr %998, align 8, !tbaa !93
  %1000 = load i8, ptr %999, align 4
  %1001 = and i8 %1000, 4
  %1002 = icmp eq i8 %1001, 0
  br i1 %1002, label %1003, label %1008

1003:                                             ; preds = %997
  %1004 = load ptr, ptr %979, align 8, !tbaa !95
  %1005 = getelementptr inbounds %struct.bb_info, ptr %1004, i64 0, i32 1
  %1006 = load i64, ptr %1005, align 8, !tbaa !124
  %1007 = add nsw i64 %1006, 1
  store i64 %1007, ptr %1005, align 8, !tbaa !124
  br label %1008

1008:                                             ; preds = %1003, %997
  br i1 %983, label %1011, label %1009

1009:                                             ; preds = %1008
  %1010 = load i32, ptr %982, align 8, !tbaa !61
  br label %1011

1011:                                             ; preds = %1009, %1008
  %1012 = phi i32 [ %1010, %1009 ], [ 0, %1008 ]
  %1013 = icmp ult i32 %981, %1012
  br i1 %1013, label %1015, label %1014

1014:                                             ; preds = %1011
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1015

1015:                                             ; preds = %1014, %1011
  %1016 = add i32 %981, 1
  br label %980, !llvm.loop !126

1017:                                             ; preds = %995, %1050
  %1018 = phi i32 [ %1051, %1050 ], [ 0, %995 ]
  %1019 = load ptr, ptr %977, align 8, !tbaa !35
  %1020 = icmp eq ptr %1019, null
  br i1 %1020, label %1023, label %1021

1021:                                             ; preds = %1017
  %1022 = load i32, ptr %1019, align 8, !tbaa !61
  br label %1023

1023:                                             ; preds = %1021, %1017
  %1024 = phi i32 [ %1022, %1021 ], [ 0, %1017 ]
  %1025 = icmp eq i32 %1024, %1018
  br i1 %1025, label %1030, label %1026

1026:                                             ; preds = %1023
  %1027 = zext i32 %1018 to i64
  %1028 = getelementptr inbounds %struct.VEC_edge_base, ptr %1019, i64 0, i32 2, i64 %1027
  %1029 = load ptr, ptr %1028, align 8, !tbaa !35
  br label %1030

1030:                                             ; preds = %1026, %1023
  %1031 = phi ptr [ %1029, %1026 ], [ null, %1023 ]
  br i1 %1025, label %1052, label %1032

1032:                                             ; preds = %1030
  %1033 = getelementptr inbounds %struct.edge_def, ptr %1031, i64 0, i32 3
  %1034 = load ptr, ptr %1033, align 8, !tbaa !93
  %1035 = load i8, ptr %1034, align 4
  %1036 = and i8 %1035, 4
  %1037 = icmp eq i8 %1036, 0
  br i1 %1037, label %1038, label %1043

1038:                                             ; preds = %1032
  %1039 = load ptr, ptr %996, align 8, !tbaa !95
  %1040 = getelementptr inbounds %struct.bb_info, ptr %1039, i64 0, i32 2
  %1041 = load i64, ptr %1040, align 8, !tbaa !127
  %1042 = add nsw i64 %1041, 1
  store i64 %1042, ptr %1040, align 8, !tbaa !127
  br label %1043

1043:                                             ; preds = %1038, %1032
  br i1 %1020, label %1046, label %1044

1044:                                             ; preds = %1043
  %1045 = load i32, ptr %1019, align 8, !tbaa !61
  br label %1046

1046:                                             ; preds = %1044, %1043
  %1047 = phi i32 [ %1045, %1044 ], [ 0, %1043 ]
  %1048 = icmp ult i32 %1018, %1047
  br i1 %1048, label %1050, label %1049

1049:                                             ; preds = %1046
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1050

1050:                                             ; preds = %1049, %1046
  %1051 = add i32 %1018, 1
  br label %1017, !llvm.loop !128

1052:                                             ; preds = %1030
  %1053 = getelementptr inbounds %struct.basic_block_def, ptr %977, i64 0, i32 6
  %1054 = load ptr, ptr %1053, align 8, !tbaa !35
  %1055 = icmp eq ptr %1054, null
  br i1 %1055, label %1056, label %976, !llvm.loop !129

1056:                                             ; preds = %1052, %969
  %1057 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1058 = getelementptr inbounds %struct.function, ptr %1057, i64 0, i32 1
  %1059 = load ptr, ptr %1058, align 8, !tbaa !54
  %1060 = getelementptr inbounds %struct.control_flow_graph, ptr %1059, i64 0, i32 1
  %1061 = load ptr, ptr %1060, align 8, !tbaa !60
  %1062 = getelementptr inbounds %struct.basic_block_def, ptr %1061, i64 0, i32 2
  %1063 = load ptr, ptr %1062, align 8, !tbaa !95
  %1064 = getelementptr inbounds %struct.bb_info, ptr %1063, i64 0, i32 1
  store i64 2, ptr %1064, align 8, !tbaa !124
  %1065 = load ptr, ptr %1059, align 8, !tbaa !35
  %1066 = getelementptr inbounds %struct.basic_block_def, ptr %1065, i64 0, i32 2
  %1067 = load ptr, ptr %1066, align 8, !tbaa !95
  %1068 = getelementptr inbounds %struct.bb_info, ptr %1067, i64 0, i32 2
  store i64 2, ptr %1068, align 8, !tbaa !127
  %1069 = icmp eq ptr %1065, null
  br i1 %1069, label %1167, label %1070

1070:                                             ; preds = %1056
  %1071 = icmp eq ptr %970, null
  br label %1072

1072:                                             ; preds = %1070, %1163
  %1073 = phi ptr [ %1065, %1070 ], [ %1165, %1163 ]
  %1074 = phi i32 [ 0, %1070 ], [ %1083, %1163 ]
  %1075 = phi i32 [ 0, %1070 ], [ %1082, %1163 ]
  %1076 = getelementptr inbounds %struct.basic_block_def, ptr %1073, i64 0, i32 1
  %1077 = getelementptr inbounds %struct.basic_block_def, ptr %1073, i64 0, i32 9
  %1078 = getelementptr inbounds %struct.basic_block_def, ptr %1073, i64 0, i32 2
  %1079 = getelementptr inbounds %struct.basic_block_def, ptr %1073, i64 0, i32 9
  br label %1080

1080:                                             ; preds = %1161, %1072
  %1081 = phi i32 [ 0, %1072 ], [ %1162, %1161 ]
  %1082 = phi i32 [ %1075, %1072 ], [ %1151, %1161 ]
  %1083 = phi i32 [ %1074, %1072 ], [ %1152, %1161 ]
  %1084 = load ptr, ptr %1076, align 8, !tbaa !35
  %1085 = icmp eq ptr %1084, null
  br i1 %1085, label %1088, label %1086

1086:                                             ; preds = %1080
  %1087 = load i32, ptr %1084, align 8, !tbaa !61
  br label %1088

1088:                                             ; preds = %1086, %1080
  %1089 = phi i32 [ %1087, %1086 ], [ 0, %1080 ]
  %1090 = icmp eq i32 %1089, %1081
  br i1 %1090, label %1095, label %1091

1091:                                             ; preds = %1088
  %1092 = zext i32 %1081 to i64
  %1093 = getelementptr inbounds %struct.VEC_edge_base, ptr %1084, i64 0, i32 2, i64 %1092
  %1094 = load ptr, ptr %1093, align 8, !tbaa !35
  br label %1095

1095:                                             ; preds = %1091, %1088
  %1096 = phi ptr [ %1094, %1091 ], [ null, %1088 ]
  br i1 %1090, label %1163, label %1097

1097:                                             ; preds = %1095
  %1098 = getelementptr inbounds %struct.edge_def, ptr %1096, i64 0, i32 3
  %1099 = load ptr, ptr %1098, align 8, !tbaa !93
  %1100 = load i8, ptr %1099, align 4
  %1101 = and i8 %1100, 6
  %1102 = icmp eq i8 %1101, 0
  br i1 %1102, label %1103, label %1150

1103:                                             ; preds = %1097
  %1104 = add nsw i32 %1083, 1
  br i1 %1071, label %1121, label %1105

1105:                                             ; preds = %1103
  %1106 = add nsw i32 %1082, 1
  %1107 = sext i32 %1082 to i64
  %1108 = getelementptr inbounds i64, ptr %970, i64 %1107
  %1109 = load i64, ptr %1108, align 8, !tbaa !130
  %1110 = getelementptr inbounds %struct.edge_def, ptr %1096, i64 0, i32 9
  store i64 %1109, ptr %1110, align 8, !tbaa !92
  %1111 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %1112 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %1111, i64 0, i32 4
  %1113 = load i64, ptr %1112, align 8, !tbaa !121
  %1114 = icmp sgt i64 %1109, %1113
  br i1 %1114, label %1115, label %1123

1115:                                             ; preds = %1105
  %1116 = load i32, ptr %1077, align 8, !tbaa !87
  %1117 = getelementptr inbounds %struct.edge_def, ptr %1096, i64 0, i32 1
  %1118 = load ptr, ptr %1117, align 8, !tbaa !83
  %1119 = getelementptr inbounds %struct.basic_block_def, ptr %1118, i64 0, i32 9
  %1120 = load i32, ptr %1119, align 8, !tbaa !87
  call void (ptr, ...) @error(ptr noundef nonnull @.str.29, i32 noundef %1116, i32 noundef %1120) #17
  br label %1123

1121:                                             ; preds = %1103
  %1122 = getelementptr inbounds %struct.edge_def, ptr %1096, i64 0, i32 9
  store i64 0, ptr %1122, align 8, !tbaa !92
  br label %1123

1123:                                             ; preds = %1121, %1115, %1105
  %1124 = phi i32 [ %1106, %1115 ], [ %1106, %1105 ], [ %1082, %1121 ]
  %1125 = load ptr, ptr %1098, align 8, !tbaa !93
  %1126 = load i8, ptr %1125, align 4
  %1127 = or i8 %1126, 1
  store i8 %1127, ptr %1125, align 4
  %1128 = load ptr, ptr %1078, align 8, !tbaa !95
  %1129 = getelementptr inbounds %struct.bb_info, ptr %1128, i64 0, i32 1
  %1130 = load i64, ptr %1129, align 8, !tbaa !124
  %1131 = add nsw i64 %1130, -1
  store i64 %1131, ptr %1129, align 8, !tbaa !124
  %1132 = getelementptr inbounds %struct.edge_def, ptr %1096, i64 0, i32 1
  %1133 = load ptr, ptr %1132, align 8, !tbaa !83
  %1134 = getelementptr inbounds %struct.basic_block_def, ptr %1133, i64 0, i32 2
  %1135 = load ptr, ptr %1134, align 8, !tbaa !95
  %1136 = getelementptr inbounds %struct.bb_info, ptr %1135, i64 0, i32 2
  %1137 = load i64, ptr %1136, align 8, !tbaa !127
  %1138 = add nsw i64 %1137, -1
  store i64 %1138, ptr %1136, align 8, !tbaa !127
  %1139 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1140 = icmp eq ptr %1139, null
  br i1 %1140, label %1150, label %1141

1141:                                             ; preds = %1123
  %1142 = load i32, ptr %1079, align 8, !tbaa !87
  %1143 = getelementptr inbounds %struct.basic_block_def, ptr %1133, i64 0, i32 9
  %1144 = load i32, ptr %1143, align 8, !tbaa !87
  %1145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1139, ptr noundef nonnull @.str.30, i32 noundef %1142, i32 noundef %1144)
  %1146 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1147 = getelementptr inbounds %struct.edge_def, ptr %1096, i64 0, i32 9
  %1148 = load i64, ptr %1147, align 8, !tbaa !92
  %1149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1146, ptr noundef nonnull @.str.31, i64 noundef %1148)
  br label %1150

1150:                                             ; preds = %1141, %1123, %1097
  %1151 = phi i32 [ %1082, %1097 ], [ %1124, %1141 ], [ %1124, %1123 ]
  %1152 = phi i32 [ %1083, %1097 ], [ %1104, %1141 ], [ %1104, %1123 ]
  %1153 = load ptr, ptr %1076, align 8, !tbaa !35
  %1154 = icmp eq ptr %1153, null
  br i1 %1154, label %1157, label %1155

1155:                                             ; preds = %1150
  %1156 = load i32, ptr %1153, align 8, !tbaa !61
  br label %1157

1157:                                             ; preds = %1155, %1150
  %1158 = phi i32 [ %1156, %1155 ], [ 0, %1150 ]
  %1159 = icmp ult i32 %1081, %1158
  br i1 %1159, label %1161, label %1160

1160:                                             ; preds = %1157
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1161

1161:                                             ; preds = %1160, %1157
  %1162 = add i32 %1081, 1
  br label %1080, !llvm.loop !131

1163:                                             ; preds = %1095
  %1164 = getelementptr inbounds %struct.basic_block_def, ptr %1073, i64 0, i32 6
  %1165 = load ptr, ptr %1164, align 8, !tbaa !35
  %1166 = icmp eq ptr %1165, null
  br i1 %1166, label %1167, label %1072, !llvm.loop !132

1167:                                             ; preds = %1163, %1056
  %1168 = phi i32 [ 0, %1056 ], [ %1083, %1163 ]
  %1169 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1170 = icmp eq ptr %1169, null
  br i1 %1170, label %1173, label %1171

1171:                                             ; preds = %1167
  %1172 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1169, ptr noundef nonnull @.str.20, i32 noundef %1168)
  br label %1173

1173:                                             ; preds = %1171, %1167
  br label %1177

1174:                                             ; preds = %1440, %1177
  %1175 = phi i32 [ 0, %1177 ], [ %1441, %1440 ]
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1445, label %1177, !llvm.loop !133

1177:                                             ; preds = %1173, %1174
  %1178 = phi i32 [ %1179, %1174 ], [ 0, %1173 ]
  %1179 = add nuw nsw i32 %1178, 1
  %1180 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1181 = getelementptr inbounds %struct.function, ptr %1180, i64 0, i32 1
  %1182 = load ptr, ptr %1181, align 8, !tbaa !54
  %1183 = getelementptr inbounds %struct.control_flow_graph, ptr %1182, i64 0, i32 1
  %1184 = load ptr, ptr %1183, align 8, !tbaa !35
  %1185 = icmp eq ptr %1184, null
  br i1 %1185, label %1174, label %1186

1186:                                             ; preds = %1177, %1440
  %1187 = phi ptr [ %1443, %1440 ], [ %1184, %1177 ]
  %1188 = phi i32 [ %1441, %1440 ], [ 0, %1177 ]
  %1189 = getelementptr inbounds %struct.basic_block_def, ptr %1187, i64 0, i32 2
  %1190 = load ptr, ptr %1189, align 8, !tbaa !95
  %1191 = load i8, ptr %1190, align 8
  %1192 = and i8 %1191, 1
  %1193 = icmp eq i8 %1192, 0
  br i1 %1193, label %1194, label %1265

1194:                                             ; preds = %1186
  %1195 = getelementptr inbounds %struct.bb_info, ptr %1190, i64 0, i32 1
  %1196 = load i64, ptr %1195, align 8, !tbaa !124
  %1197 = icmp eq i64 %1196, 0
  br i1 %1197, label %1198, label %1228

1198:                                             ; preds = %1194
  %1199 = getelementptr inbounds %struct.basic_block_def, ptr %1187, i64 0, i32 1
  br label %1200

1200:                                             ; preds = %1226, %1198
  %1201 = phi i32 [ 0, %1198 ], [ %1227, %1226 ]
  %1202 = phi i64 [ 0, %1198 ], [ %1219, %1226 ]
  %1203 = load ptr, ptr %1199, align 8, !tbaa !35
  %1204 = icmp eq ptr %1203, null
  br i1 %1204, label %1207, label %1205

1205:                                             ; preds = %1200
  %1206 = load i32, ptr %1203, align 8, !tbaa !61
  br label %1207

1207:                                             ; preds = %1205, %1200
  %1208 = phi i32 [ %1206, %1205 ], [ 0, %1200 ]
  %1209 = icmp eq i32 %1208, %1201
  br i1 %1209, label %1214, label %1210

1210:                                             ; preds = %1207
  %1211 = zext i32 %1201 to i64
  %1212 = getelementptr inbounds %struct.VEC_edge_base, ptr %1203, i64 0, i32 2, i64 %1211
  %1213 = load ptr, ptr %1212, align 8, !tbaa !35
  br label %1214

1214:                                             ; preds = %1210, %1207
  %1215 = phi ptr [ %1213, %1210 ], [ null, %1207 ]
  br i1 %1209, label %1260, label %1216

1216:                                             ; preds = %1214
  %1217 = getelementptr inbounds %struct.edge_def, ptr %1215, i64 0, i32 9
  %1218 = load i64, ptr %1217, align 8, !tbaa !92
  %1219 = add nsw i64 %1218, %1202
  br i1 %1204, label %1222, label %1220

1220:                                             ; preds = %1216
  %1221 = load i32, ptr %1203, align 8, !tbaa !61
  br label %1222

1222:                                             ; preds = %1220, %1216
  %1223 = phi i32 [ %1221, %1220 ], [ 0, %1216 ]
  %1224 = icmp ult i32 %1201, %1223
  br i1 %1224, label %1226, label %1225

1225:                                             ; preds = %1222
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1226

1226:                                             ; preds = %1225, %1222
  %1227 = add i32 %1201, 1
  br label %1200, !llvm.loop !134

1228:                                             ; preds = %1194
  %1229 = getelementptr inbounds %struct.bb_info, ptr %1190, i64 0, i32 2
  %1230 = load i64, ptr %1229, align 8, !tbaa !127
  %1231 = icmp eq i64 %1230, 0
  br i1 %1231, label %1232, label %1265

1232:                                             ; preds = %1228, %1258
  %1233 = phi i32 [ %1259, %1258 ], [ 0, %1228 ]
  %1234 = phi i64 [ %1251, %1258 ], [ 0, %1228 ]
  %1235 = load ptr, ptr %1187, align 8, !tbaa !35
  %1236 = icmp eq ptr %1235, null
  br i1 %1236, label %1239, label %1237

1237:                                             ; preds = %1232
  %1238 = load i32, ptr %1235, align 8, !tbaa !61
  br label %1239

1239:                                             ; preds = %1237, %1232
  %1240 = phi i32 [ %1238, %1237 ], [ 0, %1232 ]
  %1241 = icmp eq i32 %1240, %1233
  br i1 %1241, label %1246, label %1242

1242:                                             ; preds = %1239
  %1243 = zext i32 %1233 to i64
  %1244 = getelementptr inbounds %struct.VEC_edge_base, ptr %1235, i64 0, i32 2, i64 %1243
  %1245 = load ptr, ptr %1244, align 8, !tbaa !35
  br label %1246

1246:                                             ; preds = %1242, %1239
  %1247 = phi ptr [ %1245, %1242 ], [ null, %1239 ]
  br i1 %1241, label %1260, label %1248

1248:                                             ; preds = %1246
  %1249 = getelementptr inbounds %struct.edge_def, ptr %1247, i64 0, i32 9
  %1250 = load i64, ptr %1249, align 8, !tbaa !92
  %1251 = add nsw i64 %1250, %1234
  br i1 %1236, label %1254, label %1252

1252:                                             ; preds = %1248
  %1253 = load i32, ptr %1235, align 8, !tbaa !61
  br label %1254

1254:                                             ; preds = %1252, %1248
  %1255 = phi i32 [ %1253, %1252 ], [ 0, %1248 ]
  %1256 = icmp ult i32 %1233, %1255
  br i1 %1256, label %1258, label %1257

1257:                                             ; preds = %1254
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1258

1258:                                             ; preds = %1257, %1254
  %1259 = add i32 %1233, 1
  br label %1232, !llvm.loop !135

1260:                                             ; preds = %1246, %1214
  %1261 = phi i64 [ %1202, %1214 ], [ %1234, %1246 ]
  %1262 = getelementptr inbounds %struct.basic_block_def, ptr %1187, i64 0, i32 8
  store i64 %1261, ptr %1262, align 8, !tbaa !136
  %1263 = load i8, ptr %1190, align 8
  %1264 = or i8 %1263, 1
  store i8 %1264, ptr %1190, align 8
  br label %1265

1265:                                             ; preds = %1260, %1228, %1186
  %1266 = phi i32 [ %1188, %1186 ], [ %1188, %1228 ], [ 1, %1260 ]
  %1267 = load i8, ptr %1190, align 8
  %1268 = and i8 %1267, 1
  %1269 = icmp eq i8 %1268, 0
  br i1 %1269, label %1440, label %1270

1270:                                             ; preds = %1265
  %1271 = getelementptr inbounds %struct.bb_info, ptr %1190, i64 0, i32 1
  %1272 = load i64, ptr %1271, align 8, !tbaa !124
  %1273 = icmp eq i64 %1272, 1
  br i1 %1273, label %1274, label %1355

1274:                                             ; preds = %1270
  %1275 = getelementptr inbounds %struct.basic_block_def, ptr %1187, i64 0, i32 1
  br label %1276

1276:                                             ; preds = %1302, %1274
  %1277 = phi i32 [ 0, %1274 ], [ %1303, %1302 ]
  %1278 = phi i64 [ 0, %1274 ], [ %1295, %1302 ]
  %1279 = load ptr, ptr %1275, align 8, !tbaa !35
  %1280 = icmp eq ptr %1279, null
  br i1 %1280, label %1283, label %1281

1281:                                             ; preds = %1276
  %1282 = load i32, ptr %1279, align 8, !tbaa !61
  br label %1283

1283:                                             ; preds = %1281, %1276
  %1284 = phi i32 [ %1282, %1281 ], [ 0, %1276 ]
  %1285 = icmp eq i32 %1284, %1277
  br i1 %1285, label %1290, label %1286

1286:                                             ; preds = %1283
  %1287 = zext i32 %1277 to i64
  %1288 = getelementptr inbounds %struct.VEC_edge_base, ptr %1279, i64 0, i32 2, i64 %1287
  %1289 = load ptr, ptr %1288, align 8, !tbaa !35
  br label %1290

1290:                                             ; preds = %1286, %1283
  %1291 = phi ptr [ %1289, %1286 ], [ null, %1283 ]
  br i1 %1285, label %1304, label %1292

1292:                                             ; preds = %1290
  %1293 = getelementptr inbounds %struct.edge_def, ptr %1291, i64 0, i32 9
  %1294 = load i64, ptr %1293, align 8, !tbaa !92
  %1295 = add nsw i64 %1294, %1278
  br i1 %1280, label %1298, label %1296

1296:                                             ; preds = %1292
  %1297 = load i32, ptr %1279, align 8, !tbaa !61
  br label %1298

1298:                                             ; preds = %1296, %1292
  %1299 = phi i32 [ %1297, %1296 ], [ 0, %1292 ]
  %1300 = icmp ult i32 %1277, %1299
  br i1 %1300, label %1302, label %1301

1301:                                             ; preds = %1298
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1302

1302:                                             ; preds = %1301, %1298
  %1303 = add i32 %1277, 1
  br label %1276, !llvm.loop !137

1304:                                             ; preds = %1290, %1332
  %1305 = phi i32 [ %1333, %1332 ], [ 0, %1290 ]
  %1306 = load ptr, ptr %1275, align 8, !tbaa !35
  %1307 = icmp eq ptr %1306, null
  br i1 %1307, label %1310, label %1308

1308:                                             ; preds = %1304
  %1309 = load i32, ptr %1306, align 8, !tbaa !61
  br label %1310

1310:                                             ; preds = %1308, %1304
  %1311 = phi i32 [ %1309, %1308 ], [ 0, %1304 ]
  %1312 = icmp eq i32 %1311, %1305
  br i1 %1312, label %1317, label %1313

1313:                                             ; preds = %1310
  %1314 = zext i32 %1305 to i64
  %1315 = getelementptr inbounds %struct.VEC_edge_base, ptr %1306, i64 0, i32 2, i64 %1314
  %1316 = load ptr, ptr %1315, align 8, !tbaa !35
  br label %1317

1317:                                             ; preds = %1313, %1310
  %1318 = phi ptr [ %1316, %1313 ], [ null, %1310 ]
  br i1 %1312, label %1334, label %1319

1319:                                             ; preds = %1317
  %1320 = getelementptr inbounds %struct.edge_def, ptr %1318, i64 0, i32 3
  %1321 = load ptr, ptr %1320, align 8, !tbaa !93
  %1322 = load i8, ptr %1321, align 4
  %1323 = and i8 %1322, 5
  %1324 = icmp eq i8 %1323, 0
  br i1 %1324, label %1334, label %1325

1325:                                             ; preds = %1319
  br i1 %1307, label %1328, label %1326

1326:                                             ; preds = %1325
  %1327 = load i32, ptr %1306, align 8, !tbaa !61
  br label %1328

1328:                                             ; preds = %1326, %1325
  %1329 = phi i32 [ %1327, %1326 ], [ 0, %1325 ]
  %1330 = icmp ult i32 %1305, %1329
  br i1 %1330, label %1332, label %1331

1331:                                             ; preds = %1328
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1332

1332:                                             ; preds = %1331, %1328
  %1333 = add i32 %1305, 1
  br label %1304, !llvm.loop !138

1334:                                             ; preds = %1319, %1317
  %1335 = getelementptr inbounds %struct.basic_block_def, ptr %1187, i64 0, i32 8
  %1336 = load i64, ptr %1335, align 8, !tbaa !136
  %1337 = sub nsw i64 %1336, %1278
  %1338 = icmp eq ptr %1318, null
  br i1 %1338, label %1339, label %1340

1339:                                             ; preds = %1334
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 566, ptr noundef nonnull @.str.6) #17
  br label %1340

1340:                                             ; preds = %1339, %1334
  %1341 = getelementptr inbounds %struct.edge_def, ptr %1318, i64 0, i32 3
  %1342 = load ptr, ptr %1341, align 8, !tbaa !93
  %1343 = load i8, ptr %1342, align 4
  %1344 = or i8 %1343, 1
  store i8 %1344, ptr %1342, align 4
  %1345 = getelementptr inbounds %struct.edge_def, ptr %1318, i64 0, i32 9
  store i64 %1337, ptr %1345, align 8, !tbaa !92
  %1346 = load i64, ptr %1271, align 8, !tbaa !124
  %1347 = add nsw i64 %1346, -1
  store i64 %1347, ptr %1271, align 8, !tbaa !124
  %1348 = getelementptr inbounds %struct.edge_def, ptr %1318, i64 0, i32 1
  %1349 = load ptr, ptr %1348, align 8, !tbaa !83
  %1350 = getelementptr inbounds %struct.basic_block_def, ptr %1349, i64 0, i32 2
  %1351 = load ptr, ptr %1350, align 8, !tbaa !95
  %1352 = getelementptr inbounds %struct.bb_info, ptr %1351, i64 0, i32 2
  %1353 = load i64, ptr %1352, align 8, !tbaa !127
  %1354 = add nsw i64 %1353, -1
  store i64 %1354, ptr %1352, align 8, !tbaa !127
  br label %1355

1355:                                             ; preds = %1340, %1270
  %1356 = phi i32 [ 1, %1340 ], [ %1266, %1270 ]
  %1357 = getelementptr inbounds %struct.bb_info, ptr %1190, i64 0, i32 2
  %1358 = load i64, ptr %1357, align 8, !tbaa !127
  %1359 = icmp eq i64 %1358, 1
  br i1 %1359, label %1360, label %1440

1360:                                             ; preds = %1355, %1386
  %1361 = phi i32 [ %1387, %1386 ], [ 0, %1355 ]
  %1362 = phi i64 [ %1379, %1386 ], [ 0, %1355 ]
  %1363 = load ptr, ptr %1187, align 8, !tbaa !35
  %1364 = icmp eq ptr %1363, null
  br i1 %1364, label %1367, label %1365

1365:                                             ; preds = %1360
  %1366 = load i32, ptr %1363, align 8, !tbaa !61
  br label %1367

1367:                                             ; preds = %1365, %1360
  %1368 = phi i32 [ %1366, %1365 ], [ 0, %1360 ]
  %1369 = icmp eq i32 %1368, %1361
  br i1 %1369, label %1374, label %1370

1370:                                             ; preds = %1367
  %1371 = zext i32 %1361 to i64
  %1372 = getelementptr inbounds %struct.VEC_edge_base, ptr %1363, i64 0, i32 2, i64 %1371
  %1373 = load ptr, ptr %1372, align 8, !tbaa !35
  br label %1374

1374:                                             ; preds = %1370, %1367
  %1375 = phi ptr [ %1373, %1370 ], [ null, %1367 ]
  br i1 %1369, label %1388, label %1376

1376:                                             ; preds = %1374
  %1377 = getelementptr inbounds %struct.edge_def, ptr %1375, i64 0, i32 9
  %1378 = load i64, ptr %1377, align 8, !tbaa !92
  %1379 = add nsw i64 %1378, %1362
  br i1 %1364, label %1382, label %1380

1380:                                             ; preds = %1376
  %1381 = load i32, ptr %1363, align 8, !tbaa !61
  br label %1382

1382:                                             ; preds = %1380, %1376
  %1383 = phi i32 [ %1381, %1380 ], [ 0, %1376 ]
  %1384 = icmp ult i32 %1361, %1383
  br i1 %1384, label %1386, label %1385

1385:                                             ; preds = %1382
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1386

1386:                                             ; preds = %1385, %1382
  %1387 = add i32 %1361, 1
  br label %1360, !llvm.loop !139

1388:                                             ; preds = %1374, %1416
  %1389 = phi i32 [ %1417, %1416 ], [ 0, %1374 ]
  %1390 = load ptr, ptr %1187, align 8, !tbaa !35
  %1391 = icmp eq ptr %1390, null
  br i1 %1391, label %1394, label %1392

1392:                                             ; preds = %1388
  %1393 = load i32, ptr %1390, align 8, !tbaa !61
  br label %1394

1394:                                             ; preds = %1392, %1388
  %1395 = phi i32 [ %1393, %1392 ], [ 0, %1388 ]
  %1396 = icmp eq i32 %1395, %1389
  br i1 %1396, label %1401, label %1397

1397:                                             ; preds = %1394
  %1398 = zext i32 %1389 to i64
  %1399 = getelementptr inbounds %struct.VEC_edge_base, ptr %1390, i64 0, i32 2, i64 %1398
  %1400 = load ptr, ptr %1399, align 8, !tbaa !35
  br label %1401

1401:                                             ; preds = %1397, %1394
  %1402 = phi ptr [ %1400, %1397 ], [ null, %1394 ]
  br i1 %1396, label %1418, label %1403

1403:                                             ; preds = %1401
  %1404 = getelementptr inbounds %struct.edge_def, ptr %1402, i64 0, i32 3
  %1405 = load ptr, ptr %1404, align 8, !tbaa !93
  %1406 = load i8, ptr %1405, align 4
  %1407 = and i8 %1406, 5
  %1408 = icmp eq i8 %1407, 0
  br i1 %1408, label %1418, label %1409

1409:                                             ; preds = %1403
  br i1 %1391, label %1412, label %1410

1410:                                             ; preds = %1409
  %1411 = load i32, ptr %1390, align 8, !tbaa !61
  br label %1412

1412:                                             ; preds = %1410, %1409
  %1413 = phi i32 [ %1411, %1410 ], [ 0, %1409 ]
  %1414 = icmp ult i32 %1389, %1413
  br i1 %1414, label %1416, label %1415

1415:                                             ; preds = %1412
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1416

1416:                                             ; preds = %1415, %1412
  %1417 = add i32 %1389, 1
  br label %1388, !llvm.loop !140

1418:                                             ; preds = %1403, %1401
  %1419 = getelementptr inbounds %struct.basic_block_def, ptr %1187, i64 0, i32 8
  %1420 = load i64, ptr %1419, align 8, !tbaa !136
  %1421 = sub i64 %1420, %1362
  %1422 = getelementptr inbounds %struct.edge_def, ptr %1402, i64 0, i32 9
  %1423 = load i64, ptr %1422, align 8, !tbaa !92
  %1424 = add nsw i64 %1421, %1423
  %1425 = icmp eq ptr %1402, null
  br i1 %1425, label %1426, label %1427

1426:                                             ; preds = %1418
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 593, ptr noundef nonnull @.str.6) #17
  br label %1427

1427:                                             ; preds = %1426, %1418
  %1428 = getelementptr inbounds %struct.edge_def, ptr %1402, i64 0, i32 3
  %1429 = load ptr, ptr %1428, align 8, !tbaa !93
  %1430 = load i8, ptr %1429, align 4
  %1431 = or i8 %1430, 1
  store i8 %1431, ptr %1429, align 4
  store i64 %1424, ptr %1422, align 8, !tbaa !92
  %1432 = load i64, ptr %1357, align 8, !tbaa !127
  %1433 = add nsw i64 %1432, -1
  store i64 %1433, ptr %1357, align 8, !tbaa !127
  %1434 = load ptr, ptr %1402, align 8, !tbaa !85
  %1435 = getelementptr inbounds %struct.basic_block_def, ptr %1434, i64 0, i32 2
  %1436 = load ptr, ptr %1435, align 8, !tbaa !95
  %1437 = getelementptr inbounds %struct.bb_info, ptr %1436, i64 0, i32 1
  %1438 = load i64, ptr %1437, align 8, !tbaa !124
  %1439 = add nsw i64 %1438, -1
  store i64 %1439, ptr %1437, align 8, !tbaa !124
  br label %1440

1440:                                             ; preds = %1427, %1355, %1265
  %1441 = phi i32 [ 1, %1427 ], [ %1356, %1355 ], [ %1266, %1265 ]
  %1442 = getelementptr inbounds %struct.basic_block_def, ptr %1187, i64 0, i32 5
  %1443 = load ptr, ptr %1442, align 8, !tbaa !35
  %1444 = icmp eq ptr %1443, null
  br i1 %1444, label %1174, label %1186, !llvm.loop !141

1445:                                             ; preds = %1174
  %1446 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1447 = icmp eq ptr %1446, null
  br i1 %1447, label %1450, label %1448

1448:                                             ; preds = %1445
  %1449 = load i32, ptr @dump_flags, align 4, !tbaa !50
  call void @dump_flow_info(ptr noundef nonnull %1446, i32 noundef %1449) #17
  br label %1450

1450:                                             ; preds = %1448, %1445
  %1451 = load i32, ptr @total_num_passes, align 4, !tbaa !50
  %1452 = add nsw i32 %1451, %1179
  store i32 %1452, ptr @total_num_passes, align 4, !tbaa !50
  %1453 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1454 = icmp eq ptr %1453, null
  br i1 %1454, label %1457, label %1455

1455:                                             ; preds = %1450
  %1456 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1453, ptr noundef nonnull @.str.21, i32 noundef %1179)
  br label %1457

1457:                                             ; preds = %1455, %1450
  %1458 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1459 = getelementptr inbounds %struct.function, ptr %1458, i64 0, i32 1
  %1460 = load ptr, ptr %1459, align 8, !tbaa !54
  %1461 = load ptr, ptr %1460, align 8, !tbaa !56
  %1462 = getelementptr inbounds %struct.basic_block_def, ptr %1461, i64 0, i32 6
  %1463 = load ptr, ptr %1462, align 8, !tbaa !58
  %1464 = getelementptr inbounds %struct.control_flow_graph, ptr %1460, i64 0, i32 1
  %1465 = load ptr, ptr %1464, align 8, !tbaa !60
  %1466 = icmp eq ptr %1463, %1465
  br i1 %1466, label %1488, label %1467

1467:                                             ; preds = %1457, %1479
  %1468 = phi ptr [ %1481, %1479 ], [ %1463, %1457 ]
  %1469 = getelementptr inbounds %struct.basic_block_def, ptr %1468, i64 0, i32 2
  %1470 = load ptr, ptr %1469, align 8, !tbaa !95
  %1471 = getelementptr inbounds %struct.bb_info, ptr %1470, i64 0, i32 1
  %1472 = load i64, ptr %1471, align 8, !tbaa !124
  %1473 = icmp eq i64 %1472, 0
  br i1 %1473, label %1474, label %1478

1474:                                             ; preds = %1467
  %1475 = getelementptr inbounds %struct.bb_info, ptr %1470, i64 0, i32 2
  %1476 = load i64, ptr %1475, align 8, !tbaa !127
  %1477 = icmp eq i64 %1476, 0
  br i1 %1477, label %1479, label %1478

1478:                                             ; preds = %1474, %1467
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 615, ptr noundef nonnull @.str.6) #17
  br label %1479

1479:                                             ; preds = %1478, %1474
  %1480 = getelementptr inbounds %struct.basic_block_def, ptr %1468, i64 0, i32 6
  %1481 = load ptr, ptr %1480, align 8, !tbaa !58
  %1482 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1483 = getelementptr inbounds %struct.function, ptr %1482, i64 0, i32 1
  %1484 = load ptr, ptr %1483, align 8, !tbaa !54
  %1485 = getelementptr inbounds %struct.control_flow_graph, ptr %1484, i64 0, i32 1
  %1486 = load ptr, ptr %1485, align 8, !tbaa !60
  %1487 = icmp eq ptr %1481, %1486
  br i1 %1487, label %1488, label %1467, !llvm.loop !142

1488:                                             ; preds = %1479, %1457
  %1489 = phi ptr [ %1460, %1457 ], [ %1484, %1479 ]
  %1490 = load ptr, ptr %1489, align 8, !tbaa !56
  br label %1491

1491:                                             ; preds = %1575, %1488
  %1492 = phi ptr [ %1490, %1488 ], [ %1495, %1575 ]
  %1493 = phi i8 [ 0, %1488 ], [ %1576, %1575 ]
  %1494 = getelementptr inbounds %struct.basic_block_def, ptr %1492, i64 0, i32 6
  %1495 = load ptr, ptr %1494, align 8, !tbaa !58
  %1496 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1497 = getelementptr inbounds %struct.function, ptr %1496, i64 0, i32 1
  %1498 = load ptr, ptr %1497, align 8, !tbaa !54
  %1499 = getelementptr inbounds %struct.control_flow_graph, ptr %1498, i64 0, i32 1
  %1500 = load ptr, ptr %1499, align 8, !tbaa !60
  %1501 = icmp eq ptr %1495, %1500
  br i1 %1501, label %1581, label %1502

1502:                                             ; preds = %1491
  %1503 = load ptr, ptr %1495, align 8, !tbaa !100
  %1504 = call fastcc zeroext i8 @is_edge_inconsistent(ptr noundef %1503), !range !143
  %1505 = or i8 %1504, %1493
  %1506 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1507 = icmp eq ptr %1506, null
  %1508 = icmp ne i8 %1505, 0
  %1509 = select i1 %1507, i1 %1508, i1 false
  br i1 %1509, label %1581, label %1510

1510:                                             ; preds = %1502
  %1511 = getelementptr inbounds %struct.basic_block_def, ptr %1495, i64 0, i32 1
  %1512 = load ptr, ptr %1511, align 8, !tbaa !80
  %1513 = call fastcc zeroext i8 @is_edge_inconsistent(ptr noundef %1512), !range !143
  %1514 = or i8 %1513, %1505
  %1515 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1516 = icmp eq ptr %1515, null
  %1517 = icmp ne i8 %1514, 0
  %1518 = select i1 %1516, i1 %1517, i1 false
  br i1 %1518, label %1581, label %1519

1519:                                             ; preds = %1510
  %1520 = getelementptr inbounds %struct.basic_block_def, ptr %1495, i64 0, i32 8
  %1521 = load i64, ptr %1520, align 8, !tbaa !136
  %1522 = icmp sgt i64 %1521, -1
  %1523 = or i1 %1516, %1522
  %1524 = select i1 %1522, i8 %1514, i8 1
  br i1 %1523, label %1530, label %1525

1525:                                             ; preds = %1519
  %1526 = getelementptr inbounds %struct.basic_block_def, ptr %1495, i64 0, i32 9
  %1527 = load i32, ptr %1526, align 8, !tbaa !87
  %1528 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1515, ptr noundef nonnull @.str.32, i32 noundef %1527, i64 noundef %1521)
  %1529 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @dump_bb(ptr noundef nonnull %1495, ptr noundef %1529, i32 noundef 0) #17
  br label %1530

1530:                                             ; preds = %1525, %1519
  %1531 = phi i8 [ %1524, %1519 ], [ 1, %1525 ]
  %1532 = load i64, ptr %1520, align 8, !tbaa !136
  %1533 = load ptr, ptr %1495, align 8, !tbaa !100
  %1534 = call i64 @sum_edge_counts(ptr noundef %1533) #17
  %1535 = icmp eq i64 %1532, %1534
  br i1 %1535, label %1547, label %1536

1536:                                             ; preds = %1530
  %1537 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1538 = icmp eq ptr %1537, null
  br i1 %1538, label %1547, label %1539

1539:                                             ; preds = %1536
  %1540 = getelementptr inbounds %struct.basic_block_def, ptr %1495, i64 0, i32 9
  %1541 = load i32, ptr %1540, align 8, !tbaa !87
  %1542 = load i64, ptr %1520, align 8, !tbaa !136
  %1543 = load ptr, ptr %1495, align 8, !tbaa !100
  %1544 = call i64 @sum_edge_counts(ptr noundef %1543) #17
  %1545 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1537, ptr noundef nonnull @.str.33, i32 noundef %1541, i64 noundef %1542, i64 noundef %1544)
  %1546 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @dump_bb(ptr noundef nonnull %1495, ptr noundef %1546, i32 noundef 0) #17
  br label %1547

1547:                                             ; preds = %1539, %1536, %1530
  %1548 = phi i8 [ %1531, %1530 ], [ 1, %1539 ], [ 1, %1536 ]
  %1549 = load i64, ptr %1520, align 8, !tbaa !136
  %1550 = load ptr, ptr %1511, align 8, !tbaa !80
  %1551 = call i64 @sum_edge_counts(ptr noundef %1550) #17
  %1552 = icmp eq i64 %1549, %1551
  br i1 %1552, label %1575, label %1553

1553:                                             ; preds = %1547
  %1554 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1555 = getelementptr inbounds %struct.function, ptr %1554, i64 0, i32 1
  %1556 = load ptr, ptr %1555, align 8, !tbaa !54
  %1557 = getelementptr inbounds %struct.control_flow_graph, ptr %1556, i64 0, i32 1
  %1558 = load ptr, ptr %1557, align 8, !tbaa !60
  %1559 = call ptr @find_edge(ptr noundef nonnull %1495, ptr noundef %1558) #17
  %1560 = icmp eq ptr %1559, null
  br i1 %1560, label %1564, label %1561

1561:                                             ; preds = %1553
  %1562 = call zeroext i8 @block_ends_with_call_p(ptr noundef nonnull %1495) #17
  %1563 = icmp eq i8 %1562, 0
  br i1 %1563, label %1564, label %1575

1564:                                             ; preds = %1561, %1553
  %1565 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1566 = icmp eq ptr %1565, null
  br i1 %1566, label %1575, label %1567

1567:                                             ; preds = %1564
  %1568 = getelementptr inbounds %struct.basic_block_def, ptr %1495, i64 0, i32 9
  %1569 = load i32, ptr %1568, align 8, !tbaa !87
  %1570 = load i64, ptr %1520, align 8, !tbaa !136
  %1571 = load ptr, ptr %1511, align 8, !tbaa !80
  %1572 = call i64 @sum_edge_counts(ptr noundef %1571) #17
  %1573 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1565, ptr noundef nonnull @.str.34, i32 noundef %1569, i64 noundef %1570, i64 noundef %1572)
  %1574 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @dump_bb(ptr noundef nonnull %1495, ptr noundef %1574, i32 noundef 0) #17
  br label %1575

1575:                                             ; preds = %1564, %1567, %1561, %1547
  %1576 = phi i8 [ %1548, %1561 ], [ %1548, %1547 ], [ 1, %1567 ], [ 1, %1564 ]
  %1577 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1578 = icmp eq ptr %1577, null
  %1579 = icmp ne i8 %1576, 0
  %1580 = select i1 %1578, i1 %1579, i1 false
  br i1 %1580, label %1581, label %1491, !llvm.loop !144

1581:                                             ; preds = %1575, %1510, %1502, %1491
  %1582 = phi i8 [ 1, %1502 ], [ 1, %1510 ], [ %1493, %1491 ], [ 1, %1575 ]
  %1583 = icmp eq i8 %1582, 0
  br i1 %1583, label %1658, label %1584

1584:                                             ; preds = %1581
  %1585 = load i32, ptr @flag_profile_correction, align 4, !tbaa !50
  %1586 = icmp eq i32 %1585, 0
  br i1 %1586, label %1657, label %1587

1587:                                             ; preds = %1584
  %1588 = load i1, ptr @compute_branch_probabilities.informed, align 4
  br i1 %1588, label %1591, label %1589

1589:                                             ; preds = %1587
  store i1 true, ptr @compute_branch_probabilities.informed, align 4
  %1590 = load i32, ptr @input_location, align 4, !tbaa !50
  call void (i32, ptr, ...) @inform(i32 noundef %1590, ptr noundef nonnull @.str.22) #17
  br label %1591

1591:                                             ; preds = %1589, %1587
  %1592 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1593 = getelementptr inbounds %struct.function, ptr %1592, i64 0, i32 1
  %1594 = load ptr, ptr %1593, align 8, !tbaa !54
  %1595 = load ptr, ptr %1594, align 8, !tbaa !35
  %1596 = icmp eq ptr %1595, null
  br i1 %1596, label %1633, label %1597

1597:                                             ; preds = %1591, %1629
  %1598 = phi ptr [ %1631, %1629 ], [ %1595, %1591 ]
  %1599 = getelementptr inbounds %struct.basic_block_def, ptr %1598, i64 0, i32 1
  br label %1600

1600:                                             ; preds = %1627, %1597
  %1601 = phi i32 [ 0, %1597 ], [ %1628, %1627 ]
  %1602 = load ptr, ptr %1599, align 8, !tbaa !35
  %1603 = icmp eq ptr %1602, null
  br i1 %1603, label %1606, label %1604

1604:                                             ; preds = %1600
  %1605 = load i32, ptr %1602, align 8, !tbaa !61
  br label %1606

1606:                                             ; preds = %1604, %1600
  %1607 = phi i32 [ %1605, %1604 ], [ 0, %1600 ]
  %1608 = icmp eq i32 %1607, %1601
  br i1 %1608, label %1613, label %1609

1609:                                             ; preds = %1606
  %1610 = zext i32 %1601 to i64
  %1611 = getelementptr inbounds %struct.VEC_edge_base, ptr %1602, i64 0, i32 2, i64 %1610
  %1612 = load ptr, ptr %1611, align 8, !tbaa !35
  br label %1613

1613:                                             ; preds = %1609, %1606
  %1614 = phi ptr [ %1612, %1609 ], [ null, %1606 ]
  br i1 %1608, label %1629, label %1615

1615:                                             ; preds = %1613
  %1616 = getelementptr inbounds %struct.edge_def, ptr %1614, i64 0, i32 9
  %1617 = load i64, ptr %1616, align 8, !tbaa !92
  %1618 = icmp slt i64 %1617, 0
  br i1 %1618, label %1619, label %1620

1619:                                             ; preds = %1615
  store i64 0, ptr %1616, align 8, !tbaa !92
  br label %1620

1620:                                             ; preds = %1619, %1615
  br i1 %1603, label %1623, label %1621

1621:                                             ; preds = %1620
  %1622 = load i32, ptr %1602, align 8, !tbaa !61
  br label %1623

1623:                                             ; preds = %1621, %1620
  %1624 = phi i32 [ %1622, %1621 ], [ 0, %1620 ]
  %1625 = icmp ult i32 %1601, %1624
  br i1 %1625, label %1627, label %1626

1626:                                             ; preds = %1623
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1627

1627:                                             ; preds = %1626, %1623
  %1628 = add i32 %1601, 1
  br label %1600, !llvm.loop !145

1629:                                             ; preds = %1613
  %1630 = getelementptr inbounds %struct.basic_block_def, ptr %1598, i64 0, i32 6
  %1631 = load ptr, ptr %1630, align 8, !tbaa !35
  %1632 = icmp eq ptr %1631, null
  br i1 %1632, label %1633, label %1597, !llvm.loop !146

1633:                                             ; preds = %1629, %1591
  %1634 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1635 = getelementptr inbounds %struct.function, ptr %1634, i64 0, i32 1
  %1636 = load ptr, ptr %1635, align 8, !tbaa !54
  %1637 = load ptr, ptr %1636, align 8, !tbaa !35
  %1638 = icmp eq ptr %1637, null
  br i1 %1638, label %1651, label %1639

1639:                                             ; preds = %1633, %1647
  %1640 = phi ptr [ %1649, %1647 ], [ %1637, %1633 ]
  %1641 = getelementptr inbounds %struct.basic_block_def, ptr %1640, i64 0, i32 1
  %1642 = load ptr, ptr %1641, align 8, !tbaa !80
  %1643 = call i64 @sum_edge_counts(ptr noundef %1642) #17
  %1644 = getelementptr inbounds %struct.basic_block_def, ptr %1640, i64 0, i32 8
  store i64 %1643, ptr %1644, align 8, !tbaa !136
  %1645 = icmp sgt i64 %1643, -1
  br i1 %1645, label %1647, label %1646

1646:                                             ; preds = %1639
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 384, ptr noundef nonnull @.str.6) #17
  br label %1647

1647:                                             ; preds = %1646, %1639
  %1648 = getelementptr inbounds %struct.basic_block_def, ptr %1640, i64 0, i32 6
  %1649 = load ptr, ptr %1648, align 8, !tbaa !35
  %1650 = icmp eq ptr %1649, null
  br i1 %1650, label %1651, label %1639, !llvm.loop !147

1651:                                             ; preds = %1647, %1633
  %1652 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1653 = icmp eq ptr %1652, null
  br i1 %1653, label %1656, label %1654

1654:                                             ; preds = %1651
  %1655 = call i64 @fwrite(ptr nonnull @.str.23, i64 24, i64 1, ptr nonnull %1652)
  br label %1656

1656:                                             ; preds = %1654, %1651
  call void @mcf_smooth_cfg() #17
  br label %1658

1657:                                             ; preds = %1584
  call void (ptr, ...) @error(ptr noundef nonnull @.str.24) #17
  br label %1658

1658:                                             ; preds = %1657, %1656, %1581
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %4, i8 0, i64 80, i1 false), !tbaa !50
  %1659 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1660 = getelementptr inbounds %struct.function, ptr %1659, i64 0, i32 1
  %1661 = load ptr, ptr %1660, align 8, !tbaa !54
  %1662 = load ptr, ptr %1661, align 8, !tbaa !35
  %1663 = icmp eq ptr %1662, null
  br i1 %1663, label %1972, label %1664

1664:                                             ; preds = %1658, %1967
  %1665 = phi ptr [ %1970, %1967 ], [ %1662, %1658 ]
  %1666 = phi i32 [ %1968, %1967 ], [ 0, %1658 ]
  %1667 = getelementptr inbounds %struct.basic_block_def, ptr %1665, i64 0, i32 8
  %1668 = load i64, ptr %1667, align 8, !tbaa !136
  %1669 = icmp slt i64 %1668, 0
  br i1 %1669, label %1670, label %1674

1670:                                             ; preds = %1664
  %1671 = getelementptr inbounds %struct.basic_block_def, ptr %1665, i64 0, i32 9
  %1672 = load i32, ptr %1671, align 8, !tbaa !87
  %1673 = trunc i64 %1668 to i32
  call void (ptr, ...) @error(ptr noundef nonnull @.str.25, i32 noundef %1672, i32 noundef %1673) #17
  store i64 0, ptr %1667, align 8, !tbaa !136
  br label %1674

1674:                                             ; preds = %1670, %1664
  %1675 = getelementptr inbounds %struct.basic_block_def, ptr %1665, i64 0, i32 1
  br label %1676

1676:                                             ; preds = %1752, %1674
  %1677 = phi i32 [ 0, %1674 ], [ %1753, %1752 ]
  %1678 = load ptr, ptr %1675, align 8, !tbaa !35
  %1679 = icmp eq ptr %1678, null
  br i1 %1679, label %1682, label %1680

1680:                                             ; preds = %1676
  %1681 = load i32, ptr %1678, align 8, !tbaa !61
  br label %1682

1682:                                             ; preds = %1680, %1676
  %1683 = phi i32 [ %1681, %1680 ], [ 0, %1676 ]
  %1684 = icmp eq i32 %1683, %1677
  br i1 %1684, label %1689, label %1685

1685:                                             ; preds = %1682
  %1686 = zext i32 %1677 to i64
  %1687 = getelementptr inbounds %struct.VEC_edge_base, ptr %1678, i64 0, i32 2, i64 %1686
  %1688 = load ptr, ptr %1687, align 8, !tbaa !35
  br label %1689

1689:                                             ; preds = %1685, %1682
  %1690 = phi ptr [ %1688, %1685 ], [ null, %1682 ]
  br i1 %1684, label %1754, label %1691

1691:                                             ; preds = %1689
  %1692 = getelementptr inbounds %struct.edge_def, ptr %1690, i64 0, i32 9
  %1693 = load i64, ptr %1692, align 8, !tbaa !92
  %1694 = icmp slt i64 %1693, 0
  br i1 %1694, label %1695, label %1704

1695:                                             ; preds = %1691
  %1696 = getelementptr inbounds %struct.edge_def, ptr %1690, i64 0, i32 1
  %1697 = load ptr, ptr %1696, align 8, !tbaa !83
  %1698 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1699 = getelementptr inbounds %struct.function, ptr %1698, i64 0, i32 1
  %1700 = load ptr, ptr %1699, align 8, !tbaa !54
  %1701 = getelementptr inbounds %struct.control_flow_graph, ptr %1700, i64 0, i32 1
  %1702 = load ptr, ptr %1701, align 8, !tbaa !60
  %1703 = icmp eq ptr %1697, %1702
  br i1 %1703, label %1716, label %1704

1704:                                             ; preds = %1695, %1691
  %1705 = load i64, ptr %1667, align 8, !tbaa !136
  %1706 = icmp sgt i64 %1693, %1705
  br i1 %1706, label %1707, label %1726

1707:                                             ; preds = %1704
  %1708 = getelementptr inbounds %struct.edge_def, ptr %1690, i64 0, i32 1
  %1709 = load ptr, ptr %1708, align 8, !tbaa !83
  %1710 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1711 = getelementptr inbounds %struct.function, ptr %1710, i64 0, i32 1
  %1712 = load ptr, ptr %1711, align 8, !tbaa !54
  %1713 = getelementptr inbounds %struct.control_flow_graph, ptr %1712, i64 0, i32 1
  %1714 = load ptr, ptr %1713, align 8, !tbaa !60
  %1715 = icmp eq ptr %1709, %1714
  br i1 %1715, label %1726, label %1716

1716:                                             ; preds = %1695, %1707
  %1717 = call zeroext i8 @block_ends_with_call_p(ptr noundef nonnull %1665) #17
  %1718 = icmp eq i8 %1717, 0
  br i1 %1718, label %1726, label %1719

1719:                                             ; preds = %1716
  %1720 = load i64, ptr %1692, align 8, !tbaa !92
  %1721 = icmp slt i64 %1720, 0
  br i1 %1721, label %1724, label %1722

1722:                                             ; preds = %1719
  %1723 = load i64, ptr %1667, align 8, !tbaa !136
  br label %1724

1724:                                             ; preds = %1722, %1719
  %1725 = phi i64 [ %1723, %1722 ], [ 0, %1719 ]
  store i64 %1725, ptr %1692, align 8, !tbaa !92
  br label %1726

1726:                                             ; preds = %1716, %1724, %1707, %1704
  %1727 = load i64, ptr %1692, align 8, !tbaa !92
  %1728 = icmp slt i64 %1727, 0
  br i1 %1728, label %1732, label %1729

1729:                                             ; preds = %1726
  %1730 = load i64, ptr %1667, align 8, !tbaa !136
  %1731 = icmp sgt i64 %1727, %1730
  br i1 %1731, label %1732, label %1743

1732:                                             ; preds = %1729, %1726
  %1733 = load ptr, ptr %1690, align 8, !tbaa !85
  %1734 = getelementptr inbounds %struct.basic_block_def, ptr %1733, i64 0, i32 9
  %1735 = load i32, ptr %1734, align 8, !tbaa !87
  %1736 = getelementptr inbounds %struct.edge_def, ptr %1690, i64 0, i32 1
  %1737 = load ptr, ptr %1736, align 8, !tbaa !83
  %1738 = getelementptr inbounds %struct.basic_block_def, ptr %1737, i64 0, i32 9
  %1739 = load i32, ptr %1738, align 8, !tbaa !87
  %1740 = trunc i64 %1727 to i32
  call void (ptr, ...) @error(ptr noundef nonnull @.str.26, i32 noundef %1735, i32 noundef %1739, i32 noundef %1740) #17
  %1741 = load i64, ptr %1667, align 8, !tbaa !136
  %1742 = sdiv i64 %1741, 2
  store i64 %1742, ptr %1692, align 8, !tbaa !92
  br label %1743

1743:                                             ; preds = %1732, %1729
  %1744 = load ptr, ptr %1675, align 8, !tbaa !35
  %1745 = icmp eq ptr %1744, null
  br i1 %1745, label %1748, label %1746

1746:                                             ; preds = %1743
  %1747 = load i32, ptr %1744, align 8, !tbaa !61
  br label %1748

1748:                                             ; preds = %1746, %1743
  %1749 = phi i32 [ %1747, %1746 ], [ 0, %1743 ]
  %1750 = icmp ult i32 %1677, %1749
  br i1 %1750, label %1752, label %1751

1751:                                             ; preds = %1748
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1752

1752:                                             ; preds = %1751, %1748
  %1753 = add i32 %1677, 1
  br label %1676, !llvm.loop !148

1754:                                             ; preds = %1689
  %1755 = load i64, ptr %1667, align 8, !tbaa !136
  %1756 = icmp eq i64 %1755, 0
  br i1 %1756, label %1846, label %1757

1757:                                             ; preds = %1754, %1788
  %1758 = phi i32 [ %1789, %1788 ], [ 0, %1754 ]
  %1759 = load ptr, ptr %1675, align 8, !tbaa !35
  %1760 = icmp eq ptr %1759, null
  br i1 %1760, label %1763, label %1761

1761:                                             ; preds = %1757
  %1762 = load i32, ptr %1759, align 8, !tbaa !61
  br label %1763

1763:                                             ; preds = %1761, %1757
  %1764 = phi i32 [ %1762, %1761 ], [ 0, %1757 ]
  %1765 = icmp eq i32 %1764, %1758
  br i1 %1765, label %1770, label %1766

1766:                                             ; preds = %1763
  %1767 = zext i32 %1758 to i64
  %1768 = getelementptr inbounds %struct.VEC_edge_base, ptr %1759, i64 0, i32 2, i64 %1767
  %1769 = load ptr, ptr %1768, align 8, !tbaa !35
  br label %1770

1770:                                             ; preds = %1766, %1763
  %1771 = phi ptr [ %1769, %1766 ], [ null, %1763 ]
  br i1 %1765, label %1790, label %1772

1772:                                             ; preds = %1770
  %1773 = getelementptr inbounds %struct.edge_def, ptr %1771, i64 0, i32 9
  %1774 = load i64, ptr %1773, align 8, !tbaa !92
  %1775 = mul nsw i64 %1774, 10000
  %1776 = load i64, ptr %1667, align 8, !tbaa !136
  %1777 = sdiv i64 %1776, 2
  %1778 = add nsw i64 %1777, %1775
  %1779 = sdiv i64 %1778, %1776
  %1780 = trunc i64 %1779 to i32
  %1781 = getelementptr inbounds %struct.edge_def, ptr %1771, i64 0, i32 8
  store i32 %1780, ptr %1781, align 4, !tbaa !149
  br i1 %1760, label %1784, label %1782

1782:                                             ; preds = %1772
  %1783 = load i32, ptr %1759, align 8, !tbaa !61
  br label %1784

1784:                                             ; preds = %1782, %1772
  %1785 = phi i32 [ %1783, %1782 ], [ 0, %1772 ]
  %1786 = icmp ult i32 %1758, %1785
  br i1 %1786, label %1788, label %1787

1787:                                             ; preds = %1784
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1788

1788:                                             ; preds = %1787, %1784
  %1789 = add i32 %1758, 1
  br label %1757, !llvm.loop !150

1790:                                             ; preds = %1770
  %1791 = getelementptr inbounds %struct.basic_block_def, ptr %1665, i64 0, i32 9
  %1792 = load i32, ptr %1791, align 8, !tbaa !87
  %1793 = icmp sgt i32 %1792, 1
  br i1 %1793, label %1794, label %1967

1794:                                             ; preds = %1790
  %1795 = call zeroext i8 @block_ends_with_condjump_p(ptr noundef nonnull %1665) #17
  %1796 = icmp eq i8 %1795, 0
  br i1 %1796, label %1967, label %1797

1797:                                             ; preds = %1794
  %1798 = load ptr, ptr %1675, align 8, !tbaa !80
  %1799 = icmp eq ptr %1798, null
  br i1 %1799, label %1802, label %1800

1800:                                             ; preds = %1797
  %1801 = load i32, ptr %1798, align 8, !tbaa !61
  br label %1802

1802:                                             ; preds = %1800, %1797
  %1803 = phi i32 [ %1801, %1800 ], [ 0, %1797 ]
  %1804 = icmp ugt i32 %1803, 1
  br i1 %1804, label %1805, label %1967

1805:                                             ; preds = %1802, %1832
  %1806 = phi i32 [ %1833, %1832 ], [ 0, %1802 ]
  %1807 = load ptr, ptr %1675, align 8, !tbaa !35
  %1808 = icmp eq ptr %1807, null
  br i1 %1808, label %1811, label %1809

1809:                                             ; preds = %1805
  %1810 = load i32, ptr %1807, align 8, !tbaa !61
  br label %1811

1811:                                             ; preds = %1809, %1805
  %1812 = phi i32 [ %1810, %1809 ], [ 0, %1805 ]
  %1813 = icmp eq i32 %1812, %1806
  br i1 %1813, label %1818, label %1814

1814:                                             ; preds = %1811
  %1815 = zext i32 %1806 to i64
  %1816 = getelementptr inbounds %struct.VEC_edge_base, ptr %1807, i64 0, i32 2, i64 %1815
  %1817 = load ptr, ptr %1816, align 8, !tbaa !35
  br label %1818

1818:                                             ; preds = %1814, %1811
  %1819 = phi ptr [ %1817, %1814 ], [ null, %1811 ]
  br i1 %1813, label %1834, label %1820

1820:                                             ; preds = %1818
  %1821 = getelementptr inbounds %struct.edge_def, ptr %1819, i64 0, i32 7
  %1822 = load i32, ptr %1821, align 8, !tbaa !82
  %1823 = and i32 %1822, 17
  %1824 = icmp eq i32 %1823, 0
  br i1 %1824, label %1834, label %1825

1825:                                             ; preds = %1820
  br i1 %1808, label %1828, label %1826

1826:                                             ; preds = %1825
  %1827 = load i32, ptr %1807, align 8, !tbaa !61
  br label %1828

1828:                                             ; preds = %1826, %1825
  %1829 = phi i32 [ %1827, %1826 ], [ 0, %1825 ]
  %1830 = icmp ult i32 %1806, %1829
  br i1 %1830, label %1832, label %1831

1831:                                             ; preds = %1828
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1832

1832:                                             ; preds = %1831, %1828
  %1833 = add i32 %1806, 1
  br label %1805, !llvm.loop !151

1834:                                             ; preds = %1820, %1818
  %1835 = getelementptr inbounds %struct.edge_def, ptr %1819, i64 0, i32 8
  %1836 = load i32, ptr %1835, align 4, !tbaa !149
  %1837 = sdiv i32 %1836, 500
  %1838 = add i32 %1836, -10000
  %1839 = icmp ult i32 %1838, 500
  %1840 = select i1 %1839, i32 19, i32 %1837
  %1841 = sext i32 %1840 to i64
  %1842 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %1841
  %1843 = load i32, ptr %1842, align 4, !tbaa !50
  %1844 = add nsw i32 %1843, 1
  store i32 %1844, ptr %1842, align 4, !tbaa !50
  %1845 = add nsw i32 %1666, 1
  br label %1967

1846:                                             ; preds = %1754
  %1847 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1848 = getelementptr inbounds %struct.function, ptr %1847, i64 0, i32 1
  %1849 = load ptr, ptr %1848, align 8, !tbaa !54
  %1850 = getelementptr inbounds %struct.control_flow_graph, ptr %1849, i64 0, i32 7
  %1851 = load i32, ptr %1850, align 8, !tbaa !152
  %1852 = icmp eq i32 %1851, 0
  br i1 %1852, label %1853, label %1967

1853:                                             ; preds = %1846, %1882
  %1854 = phi i32 [ %1883, %1882 ], [ 0, %1846 ]
  %1855 = phi i32 [ %1875, %1882 ], [ 0, %1846 ]
  %1856 = load ptr, ptr %1675, align 8, !tbaa !35
  %1857 = icmp eq ptr %1856, null
  br i1 %1857, label %1860, label %1858

1858:                                             ; preds = %1853
  %1859 = load i32, ptr %1856, align 8, !tbaa !61
  br label %1860

1860:                                             ; preds = %1858, %1853
  %1861 = phi i32 [ %1859, %1858 ], [ 0, %1853 ]
  %1862 = icmp eq i32 %1861, %1854
  br i1 %1862, label %1867, label %1863

1863:                                             ; preds = %1860
  %1864 = zext i32 %1854 to i64
  %1865 = getelementptr inbounds %struct.VEC_edge_base, ptr %1856, i64 0, i32 2, i64 %1864
  %1866 = load ptr, ptr %1865, align 8, !tbaa !35
  br label %1867

1867:                                             ; preds = %1863, %1860
  %1868 = phi ptr [ %1866, %1863 ], [ null, %1860 ]
  br i1 %1862, label %1884, label %1869

1869:                                             ; preds = %1867
  %1870 = getelementptr inbounds %struct.edge_def, ptr %1868, i64 0, i32 7
  %1871 = load i32, ptr %1870, align 8, !tbaa !82
  %1872 = and i32 %1871, 30
  %1873 = icmp eq i32 %1872, 0
  %1874 = zext i1 %1873 to i32
  %1875 = add nuw nsw i32 %1855, %1874
  br i1 %1857, label %1878, label %1876

1876:                                             ; preds = %1869
  %1877 = load i32, ptr %1856, align 8, !tbaa !61
  br label %1878

1878:                                             ; preds = %1876, %1869
  %1879 = phi i32 [ %1877, %1876 ], [ 0, %1869 ]
  %1880 = icmp ult i32 %1854, %1879
  br i1 %1880, label %1882, label %1881

1881:                                             ; preds = %1878
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1882

1882:                                             ; preds = %1881, %1878
  %1883 = add i32 %1854, 1
  br label %1853, !llvm.loop !153

1884:                                             ; preds = %1867
  %1885 = icmp eq i32 %1855, 0
  br i1 %1885, label %1919, label %1886

1886:                                             ; preds = %1884, %1917
  %1887 = phi i32 [ %1918, %1917 ], [ 0, %1884 ]
  %1888 = load ptr, ptr %1675, align 8, !tbaa !35
  %1889 = icmp eq ptr %1888, null
  br i1 %1889, label %1892, label %1890

1890:                                             ; preds = %1886
  %1891 = load i32, ptr %1888, align 8, !tbaa !61
  br label %1892

1892:                                             ; preds = %1890, %1886
  %1893 = phi i32 [ %1891, %1890 ], [ 0, %1886 ]
  %1894 = icmp eq i32 %1893, %1887
  br i1 %1894, label %1899, label %1895

1895:                                             ; preds = %1892
  %1896 = zext i32 %1887 to i64
  %1897 = getelementptr inbounds %struct.VEC_edge_base, ptr %1888, i64 0, i32 2, i64 %1896
  %1898 = load ptr, ptr %1897, align 8, !tbaa !35
  br label %1899

1899:                                             ; preds = %1895, %1892
  %1900 = phi ptr [ %1898, %1895 ], [ null, %1892 ]
  br i1 %1894, label %1950, label %1901

1901:                                             ; preds = %1899
  %1902 = getelementptr inbounds %struct.edge_def, ptr %1900, i64 0, i32 7
  %1903 = load i32, ptr %1902, align 8, !tbaa !82
  %1904 = and i32 %1903, 30
  %1905 = icmp eq i32 %1904, 0
  br i1 %1905, label %1906, label %1908

1906:                                             ; preds = %1901
  %1907 = udiv i32 10000, %1855
  br label %1908

1908:                                             ; preds = %1901, %1906
  %1909 = phi i32 [ %1907, %1906 ], [ 0, %1901 ]
  %1910 = getelementptr inbounds %struct.edge_def, ptr %1900, i64 0, i32 8
  store i32 %1909, ptr %1910, align 4, !tbaa !149
  br i1 %1889, label %1913, label %1911

1911:                                             ; preds = %1908
  %1912 = load i32, ptr %1888, align 8, !tbaa !61
  br label %1913

1913:                                             ; preds = %1911, %1908
  %1914 = phi i32 [ %1912, %1911 ], [ 0, %1908 ]
  %1915 = icmp ult i32 %1887, %1914
  br i1 %1915, label %1917, label %1916

1916:                                             ; preds = %1913
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1917

1917:                                             ; preds = %1916, %1913
  %1918 = add i32 %1887, 1
  br label %1886, !llvm.loop !154

1919:                                             ; preds = %1884
  br i1 %1857, label %1922, label %1920

1920:                                             ; preds = %1919
  %1921 = load i32, ptr %1856, align 8, !tbaa !61
  br label %1922

1922:                                             ; preds = %1920, %1919
  %1923 = phi i32 [ %1921, %1920 ], [ 0, %1919 ]
  br label %1924

1924:                                             ; preds = %1948, %1922
  %1925 = phi i32 [ 0, %1922 ], [ %1949, %1948 ]
  %1926 = load ptr, ptr %1675, align 8, !tbaa !35
  %1927 = icmp eq ptr %1926, null
  br i1 %1927, label %1930, label %1928

1928:                                             ; preds = %1924
  %1929 = load i32, ptr %1926, align 8, !tbaa !61
  br label %1930

1930:                                             ; preds = %1928, %1924
  %1931 = phi i32 [ %1929, %1928 ], [ 0, %1924 ]
  %1932 = icmp eq i32 %1931, %1925
  br i1 %1932, label %1937, label %1933

1933:                                             ; preds = %1930
  %1934 = zext i32 %1925 to i64
  %1935 = getelementptr inbounds %struct.VEC_edge_base, ptr %1926, i64 0, i32 2, i64 %1934
  %1936 = load ptr, ptr %1935, align 8, !tbaa !35
  br label %1937

1937:                                             ; preds = %1933, %1930
  %1938 = phi ptr [ %1936, %1933 ], [ null, %1930 ]
  br i1 %1932, label %1950, label %1939

1939:                                             ; preds = %1937
  %1940 = sdiv i32 10000, %1923
  %1941 = getelementptr inbounds %struct.edge_def, ptr %1938, i64 0, i32 8
  store i32 %1940, ptr %1941, align 4, !tbaa !149
  br i1 %1927, label %1944, label %1942

1942:                                             ; preds = %1939
  %1943 = load i32, ptr %1926, align 8, !tbaa !61
  br label %1944

1944:                                             ; preds = %1942, %1939
  %1945 = phi i32 [ %1943, %1942 ], [ 0, %1939 ]
  %1946 = icmp ult i32 %1925, %1945
  br i1 %1946, label %1948, label %1947

1947:                                             ; preds = %1944
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1948

1948:                                             ; preds = %1947, %1944
  %1949 = add i32 %1925, 1
  br label %1924, !llvm.loop !155

1950:                                             ; preds = %1899, %1937
  %1951 = getelementptr inbounds %struct.basic_block_def, ptr %1665, i64 0, i32 9
  %1952 = load i32, ptr %1951, align 8, !tbaa !87
  %1953 = icmp sgt i32 %1952, 1
  br i1 %1953, label %1954, label %1967

1954:                                             ; preds = %1950
  %1955 = call zeroext i8 @block_ends_with_condjump_p(ptr noundef nonnull %1665) #17
  %1956 = icmp eq i8 %1955, 0
  br i1 %1956, label %1967, label %1957

1957:                                             ; preds = %1954
  %1958 = load ptr, ptr %1675, align 8, !tbaa !80
  %1959 = icmp eq ptr %1958, null
  br i1 %1959, label %1962, label %1960

1960:                                             ; preds = %1957
  %1961 = load i32, ptr %1958, align 8, !tbaa !61
  br label %1962

1962:                                             ; preds = %1960, %1957
  %1963 = phi i32 [ %1961, %1960 ], [ 0, %1957 ]
  %1964 = icmp ugt i32 %1963, 1
  %1965 = zext i1 %1964 to i32
  %1966 = add nsw i32 %1666, %1965
  br label %1967

1967:                                             ; preds = %1962, %1954, %1950, %1846, %1834, %1802, %1794, %1790
  %1968 = phi i32 [ %1845, %1834 ], [ %1666, %1802 ], [ %1666, %1794 ], [ %1666, %1790 ], [ %1666, %1846 ], [ %1666, %1954 ], [ %1666, %1950 ], [ %1966, %1962 ]
  %1969 = getelementptr inbounds %struct.basic_block_def, ptr %1665, i64 0, i32 6
  %1970 = load ptr, ptr %1969, align 8, !tbaa !35
  %1971 = icmp eq ptr %1970, null
  br i1 %1971, label %1972, label %1664, !llvm.loop !156

1972:                                             ; preds = %1967, %1658
  %1973 = phi i32 [ 0, %1658 ], [ %1968, %1967 ]
  %1974 = call i32 @counts_to_freqs() #17
  %1975 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1976 = getelementptr inbounds %struct.function, ptr %1975, i64 0, i32 1
  %1977 = load ptr, ptr %1976, align 8, !tbaa !54
  %1978 = getelementptr inbounds %struct.control_flow_graph, ptr %1977, i64 0, i32 7
  store i32 2, ptr %1978, align 8, !tbaa !152
  %1979 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1980 = icmp eq ptr %1979, null
  br i1 %1980, label %2020, label %1981

1981:                                             ; preds = %1972
  %1982 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1979, ptr noundef nonnull @.str.27, i32 noundef %1973)
  %1983 = icmp eq i32 %1973, 0
  br i1 %1983, label %2003, label %1984

1984:                                             ; preds = %1981, %1984
  %1985 = phi i64 [ %2001, %1984 ], [ 0, %1981 ]
  %1986 = trunc i64 %1985 to i32
  %1987 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1988 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %1985
  %1989 = load i32, ptr %1988, align 4, !tbaa !50
  %1990 = sub nuw nsw i64 19, %1985
  %1991 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %1990
  %1992 = load i32, ptr %1991, align 4, !tbaa !50
  %1993 = add nsw i32 %1992, %1989
  %1994 = mul nsw i32 %1993, 100
  %1995 = sdiv i32 %1994, %1973
  %1996 = mul nuw nsw i32 %1986, 5
  %1997 = add nuw nsw i32 %1996, 5
  %1998 = trunc i64 %1985 to i32
  %1999 = mul i32 %1998, 5
  %2000 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1987, ptr noundef nonnull @.str.16, i32 noundef %1995, i32 noundef %1999, i32 noundef %1997)
  %2001 = add nuw nsw i64 %1985, 1
  %2002 = icmp eq i64 %2001, 10
  br i1 %2002, label %2003, label %1984, !llvm.loop !157

2003:                                             ; preds = %1984, %1981
  %2004 = load i32, ptr @total_num_branches, align 4, !tbaa !50
  %2005 = add nsw i32 %2004, %1973
  store i32 %2005, ptr @total_num_branches, align 4, !tbaa !50
  br label %2006

2006:                                             ; preds = %2003, %2006
  %2007 = phi i64 [ 0, %2003 ], [ %2013, %2006 ]
  %2008 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %2007
  %2009 = load i32, ptr %2008, align 4, !tbaa !50
  %2010 = getelementptr inbounds [20 x i32], ptr @total_hist_br_prob, i64 0, i64 %2007
  %2011 = load i32, ptr %2010, align 4, !tbaa !50
  %2012 = add nsw i32 %2011, %2009
  store i32 %2012, ptr %2010, align 4, !tbaa !50
  %2013 = add nuw nsw i64 %2007, 1
  %2014 = icmp eq i64 %2013, 20
  br i1 %2014, label %2015, label %2006, !llvm.loop !158

2015:                                             ; preds = %2006
  %2016 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2017 = call i32 @fputc(i32 noundef 10, ptr noundef %2016)
  %2018 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2019 = call i32 @fputc(i32 noundef 10, ptr noundef %2018)
  br label %2020

2020:                                             ; preds = %2015, %1972
  call void @free_aux_for_blocks() #17
  br label %2021

2021:                                             ; preds = %945, %2020
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #17
  %2022 = load i32, ptr @flag_profile_values, align 4, !tbaa !50
  %2023 = icmp eq i32 %2022, 0
  br i1 %2023, label %2120, label %2024

2024:                                             ; preds = %2021
  %2025 = load ptr, ptr %7, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false), !tbaa !50
  %2026 = icmp eq ptr %2025, null
  br label %2027

2027:                                             ; preds = %2024, %2035
  %2028 = phi i64 [ 0, %2024 ], [ %2046, %2035 ]
  br i1 %2026, label %2031, label %2029

2029:                                             ; preds = %2027
  %2030 = load i32, ptr %2025, align 8, !tbaa !159
  br label %2031

2031:                                             ; preds = %2029, %2027
  %2032 = phi i32 [ %2030, %2029 ], [ 0, %2027 ]
  %2033 = zext i32 %2032 to i64
  %2034 = icmp ult i64 %2028, %2033
  br i1 %2034, label %2035, label %2047

2035:                                             ; preds = %2031
  %2036 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %2025, i64 0, i32 2, i64 %2028
  %2037 = load ptr, ptr %2036, align 8, !tbaa !35
  %2038 = getelementptr inbounds %struct.histogram_value_t, ptr %2037, i64 0, i32 2
  %2039 = load i32, ptr %2038, align 4, !tbaa !161
  %2040 = getelementptr inbounds %struct.histogram_value_t, ptr %2037, i64 0, i32 1
  %2041 = load i32, ptr %2040, align 8, !tbaa !164
  %2042 = sext i32 %2041 to i64
  %2043 = getelementptr inbounds [7 x i32], ptr %1, i64 0, i64 %2042
  %2044 = load i32, ptr %2043, align 4, !tbaa !50
  %2045 = add i32 %2044, %2039
  store i32 %2045, ptr %2043, align 4, !tbaa !50
  %2046 = add nuw nsw i64 %2028, 1
  br label %2027, !llvm.loop !165

2047:                                             ; preds = %2031, %2060
  %2048 = phi i64 [ %2065, %2060 ], [ 0, %2031 ]
  %2049 = phi i32 [ %2063, %2060 ], [ 0, %2031 ]
  %2050 = getelementptr inbounds [7 x i32], ptr %1, i64 0, i64 %2048
  %2051 = load i32, ptr %2050, align 4, !tbaa !50
  %2052 = icmp eq i32 %2051, 0
  br i1 %2052, label %2060, label %2053

2053:                                             ; preds = %2047
  %2054 = trunc i64 %2048 to i32
  %2055 = add i32 %2054, 1
  %2056 = call ptr @get_coverage_counts(i32 noundef %2055, i32 noundef %2051, ptr noundef null) #17
  %2057 = getelementptr inbounds [7 x ptr], ptr %2, i64 0, i64 %2048
  store ptr %2056, ptr %2057, align 8, !tbaa !35
  %2058 = icmp eq ptr %2056, null
  %2059 = select i1 %2058, i32 %2049, i32 1
  br label %2060

2060:                                             ; preds = %2047, %2053
  %2061 = phi ptr [ %3, %2053 ], [ %2, %2047 ]
  %2062 = phi ptr [ %2056, %2053 ], [ null, %2047 ]
  %2063 = phi i32 [ %2059, %2053 ], [ %2049, %2047 ]
  %2064 = getelementptr inbounds [7 x ptr], ptr %2061, i64 0, i64 %2048
  store ptr %2062, ptr %2064, align 8, !tbaa !35
  %2065 = add nuw nsw i64 %2048, 1
  %2066 = icmp eq i64 %2065, 7
  br i1 %2066, label %2067, label %2047, !llvm.loop !166

2067:                                             ; preds = %2060
  %2068 = icmp eq i32 %2063, 0
  br i1 %2068, label %2119, label %2069

2069:                                             ; preds = %2067, %2108
  %2070 = phi i64 [ %2109, %2108 ], [ 0, %2067 ]
  br i1 %2026, label %2073, label %2071

2071:                                             ; preds = %2069
  %2072 = load i32, ptr %2025, align 8, !tbaa !159
  br label %2073

2073:                                             ; preds = %2071, %2069
  %2074 = phi i32 [ %2072, %2071 ], [ 0, %2069 ]
  %2075 = zext i32 %2074 to i64
  %2076 = icmp ult i64 %2070, %2075
  br i1 %2076, label %2077, label %2110

2077:                                             ; preds = %2073
  %2078 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %2025, i64 0, i32 2, i64 %2070
  %2079 = load ptr, ptr %2078, align 8, !tbaa !35
  %2080 = getelementptr inbounds %struct.anon, ptr %2079, i64 0, i32 1
  %2081 = load ptr, ptr %2080, align 8, !tbaa !167
  %2082 = getelementptr inbounds %struct.histogram_value_t, ptr %2079, i64 0, i32 1
  %2083 = load i32, ptr %2082, align 8, !tbaa !164
  %2084 = zext i32 %2083 to i64
  %2085 = getelementptr inbounds [7 x ptr], ptr %3, i64 0, i64 %2084
  %2086 = load ptr, ptr %2085, align 8, !tbaa !35
  %2087 = getelementptr inbounds %struct.histogram_value_t, ptr %2079, i64 0, i32 2
  %2088 = load i32, ptr %2087, align 4, !tbaa !161
  %2089 = zext i32 %2088 to i64
  %2090 = getelementptr inbounds i64, ptr %2086, i64 %2089
  store ptr %2090, ptr %2085, align 8, !tbaa !35
  %2091 = load ptr, ptr @cfun, align 8, !tbaa !35
  call void @gimple_add_histogram_value(ptr noundef %2091, ptr noundef %2081, ptr noundef %2079) #17
  %2092 = load i32, ptr %2087, align 4, !tbaa !161
  %2093 = zext i32 %2092 to i64
  %2094 = shl nuw nsw i64 %2093, 3
  %2095 = call ptr @xmalloc(i64 noundef %2094) #17
  %2096 = getelementptr inbounds %struct.anon, ptr %2079, i64 0, i32 2
  store ptr %2095, ptr %2096, align 8, !tbaa !168
  %2097 = load i32, ptr %2087, align 4, !tbaa !161
  %2098 = icmp eq i32 %2097, 0
  br i1 %2098, label %2108, label %2099

2099:                                             ; preds = %2077
  %2100 = zext i32 %2097 to i64
  br label %2101

2101:                                             ; preds = %2099, %2101
  %2102 = phi i64 [ 0, %2099 ], [ %2106, %2101 ]
  %2103 = getelementptr inbounds i64, ptr %2086, i64 %2102
  %2104 = load i64, ptr %2103, align 8, !tbaa !130
  %2105 = getelementptr inbounds i64, ptr %2095, i64 %2102
  store i64 %2104, ptr %2105, align 8, !tbaa !130
  %2106 = add nuw nsw i64 %2102, 1
  %2107 = icmp eq i64 %2106, %2100
  br i1 %2107, label %2108, label %2101, !llvm.loop !169

2108:                                             ; preds = %2101, %2077
  %2109 = add nuw nsw i64 %2070, 1
  br label %2069, !llvm.loop !170

2110:                                             ; preds = %2073, %2116
  %2111 = phi i64 [ %2117, %2116 ], [ 0, %2073 ]
  %2112 = getelementptr inbounds [7 x ptr], ptr %2, i64 0, i64 %2111
  %2113 = load ptr, ptr %2112, align 8, !tbaa !35
  %2114 = icmp eq ptr %2113, null
  br i1 %2114, label %2116, label %2115

2115:                                             ; preds = %2110
  call void @free(ptr noundef %2113)
  br label %2116

2116:                                             ; preds = %2115, %2110
  %2117 = add nuw nsw i64 %2111, 1
  %2118 = icmp eq i64 %2117, 7
  br i1 %2118, label %2119, label %2110, !llvm.loop !171

2119:                                             ; preds = %2116, %2067
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %1) #17
  br label %2120

2120:                                             ; preds = %2021, %2119, %879
  call void @remove_fake_edges() #17
  %2121 = load i32, ptr @profile_arc_flag, align 4, !tbaa !50
  %2122 = icmp eq i32 %2121, 0
  br i1 %2122, label %2277, label %2123

2123:                                             ; preds = %2120
  %2124 = call i32 @coverage_counter_alloc(i32 noundef 0, i32 noundef %605) #17
  %2125 = icmp eq i32 %2124, 0
  br i1 %2125, label %2277, label %2126

2126:                                             ; preds = %2123
  %2127 = load ptr, ptr @tree_profile_hooks, align 8, !tbaa !172
  call void %2127() #17
  %2128 = load i32, ptr %263, align 4, !tbaa !89
  %2129 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2130 = getelementptr inbounds %struct.function, ptr %2129, i64 0, i32 1
  %2131 = load ptr, ptr %2130, align 8, !tbaa !54
  %2132 = load ptr, ptr %2131, align 8, !tbaa !35
  %2133 = icmp eq ptr %2132, null
  br i1 %2133, label %2216, label %2134

2134:                                             ; preds = %2126, %2212
  %2135 = phi ptr [ %2214, %2212 ], [ %2132, %2126 ]
  %2136 = phi i32 [ %2140, %2212 ], [ 0, %2126 ]
  %2137 = getelementptr inbounds %struct.basic_block_def, ptr %2135, i64 0, i32 1
  br label %2138

2138:                                             ; preds = %2210, %2134
  %2139 = phi i32 [ 0, %2134 ], [ %2211, %2210 ]
  %2140 = phi i32 [ %2136, %2134 ], [ %2201, %2210 ]
  %2141 = load ptr, ptr %2137, align 8, !tbaa !35
  %2142 = icmp eq ptr %2141, null
  br i1 %2142, label %2145, label %2143

2143:                                             ; preds = %2138
  %2144 = load i32, ptr %2141, align 8, !tbaa !61
  br label %2145

2145:                                             ; preds = %2143, %2138
  %2146 = phi i32 [ %2144, %2143 ], [ 0, %2138 ]
  %2147 = icmp eq i32 %2146, %2139
  br i1 %2147, label %2152, label %2148

2148:                                             ; preds = %2145
  %2149 = zext i32 %2139 to i64
  %2150 = getelementptr inbounds %struct.VEC_edge_base, ptr %2141, i64 0, i32 2, i64 %2149
  %2151 = load ptr, ptr %2150, align 8, !tbaa !35
  br label %2152

2152:                                             ; preds = %2148, %2145
  %2153 = phi ptr [ %2151, %2148 ], [ null, %2145 ]
  br i1 %2147, label %2212, label %2154

2154:                                             ; preds = %2152
  %2155 = getelementptr inbounds %struct.edge_def, ptr %2153, i64 0, i32 3
  %2156 = load ptr, ptr %2155, align 8, !tbaa !93
  %2157 = load i8, ptr %2156, align 4
  %2158 = and i8 %2157, 6
  %2159 = icmp eq i8 %2158, 0
  br i1 %2159, label %2160, label %2200

2160:                                             ; preds = %2154
  %2161 = getelementptr inbounds %struct.edge_def, ptr %2153, i64 0, i32 7
  %2162 = load i32, ptr %2161, align 8, !tbaa !82
  %2163 = and i32 %2162, 2
  %2164 = icmp eq i32 %2163, 0
  br i1 %2164, label %2166, label %2165

2165:                                             ; preds = %2160
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 138, ptr noundef nonnull @.str.6) #17
  br label %2166

2166:                                             ; preds = %2165, %2160
  %2167 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2168 = icmp eq ptr %2167, null
  br i1 %2168, label %2197, label %2169

2169:                                             ; preds = %2166
  %2170 = load ptr, ptr %2153, align 8, !tbaa !85
  %2171 = getelementptr inbounds %struct.basic_block_def, ptr %2170, i64 0, i32 9
  %2172 = load i32, ptr %2171, align 8, !tbaa !87
  %2173 = getelementptr inbounds %struct.edge_def, ptr %2153, i64 0, i32 1
  %2174 = load ptr, ptr %2173, align 8, !tbaa !83
  %2175 = getelementptr inbounds %struct.basic_block_def, ptr %2174, i64 0, i32 9
  %2176 = load i32, ptr %2175, align 8, !tbaa !87
  %2177 = getelementptr inbounds %struct.basic_block_def, ptr %2170, i64 0, i32 1
  %2178 = load ptr, ptr %2177, align 8, !tbaa !80
  %2179 = icmp eq ptr %2178, null
  br i1 %2179, label %2182, label %2180

2180:                                             ; preds = %2169
  %2181 = load i32, ptr %2178, align 8, !tbaa !61
  br label %2182

2182:                                             ; preds = %2180, %2169
  %2183 = phi i32 [ %2181, %2180 ], [ 0, %2169 ]
  %2184 = icmp ugt i32 %2183, 1
  br i1 %2184, label %2185, label %2193

2185:                                             ; preds = %2182
  %2186 = load ptr, ptr %2174, align 8, !tbaa !100
  %2187 = icmp eq ptr %2186, null
  br i1 %2187, label %2190, label %2188

2188:                                             ; preds = %2185
  %2189 = load i32, ptr %2186, align 8, !tbaa !61
  br label %2190

2190:                                             ; preds = %2188, %2185
  %2191 = phi i32 [ %2189, %2188 ], [ 0, %2185 ]
  %2192 = icmp ugt i32 %2191, 1
  br label %2193

2193:                                             ; preds = %2190, %2182
  %2194 = phi i1 [ false, %2182 ], [ %2192, %2190 ]
  %2195 = select i1 %2194, ptr @.str.37, ptr @.str.38
  %2196 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2167, ptr noundef nonnull @.str.36, i32 noundef %2172, i32 noundef %2176, ptr noundef nonnull %2195)
  br label %2197

2197:                                             ; preds = %2193, %2166
  %2198 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 1), align 8, !tbaa !174
  %2199 = add i32 %2140, 1
  call void %2198(i32 noundef %2140, ptr noundef %2153) #17
  br label %2200

2200:                                             ; preds = %2197, %2154
  %2201 = phi i32 [ %2140, %2154 ], [ %2199, %2197 ]
  %2202 = load ptr, ptr %2137, align 8, !tbaa !35
  %2203 = icmp eq ptr %2202, null
  br i1 %2203, label %2206, label %2204

2204:                                             ; preds = %2200
  %2205 = load i32, ptr %2202, align 8, !tbaa !61
  br label %2206

2206:                                             ; preds = %2204, %2200
  %2207 = phi i32 [ %2205, %2204 ], [ 0, %2200 ]
  %2208 = icmp ult i32 %2139, %2207
  br i1 %2208, label %2210, label %2209

2209:                                             ; preds = %2206
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %2210

2210:                                             ; preds = %2209, %2206
  %2211 = add i32 %2139, 1
  br label %2138, !llvm.loop !175

2212:                                             ; preds = %2152
  %2213 = getelementptr inbounds %struct.basic_block_def, ptr %2135, i64 0, i32 6
  %2214 = load ptr, ptr %2213, align 8, !tbaa !35
  %2215 = icmp eq ptr %2214, null
  br i1 %2215, label %2216, label %2134, !llvm.loop !176

2216:                                             ; preds = %2212, %2126
  %2217 = phi i32 [ 0, %2126 ], [ %2140, %2212 ]
  %2218 = load i32, ptr @total_num_blocks_created, align 4, !tbaa !50
  %2219 = add nsw i32 %2218, %2128
  store i32 %2219, ptr @total_num_blocks_created, align 4, !tbaa !50
  %2220 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2221 = icmp eq ptr %2220, null
  br i1 %2221, label %2224, label %2222

2222:                                             ; preds = %2216
  %2223 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2220, ptr noundef nonnull @.str.39, i32 noundef %2217)
  br label %2224

2224:                                             ; preds = %2216, %2222
  %2225 = icmp eq i32 %2217, %605
  br i1 %2225, label %2227, label %2226

2226:                                             ; preds = %2224
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1191, ptr noundef nonnull @.str.6) #17
  br label %2227

2227:                                             ; preds = %2224, %2226
  %2228 = load i32, ptr @flag_profile_values, align 4, !tbaa !50
  %2229 = icmp eq i32 %2228, 0
  br i1 %2229, label %2276, label %2230

2230:                                             ; preds = %2227
  %2231 = load ptr, ptr %7, align 8, !tbaa !35
  %2232 = icmp eq ptr %2231, null
  br label %2233

2233:                                             ; preds = %2274, %2230
  %2234 = phi i64 [ %2275, %2274 ], [ 0, %2230 ]
  %2235 = phi i32 [ %2252, %2274 ], [ undef, %2230 ]
  br i1 %2232, label %2238, label %2236

2236:                                             ; preds = %2233
  %2237 = load i32, ptr %2231, align 8, !tbaa !159
  br label %2238

2238:                                             ; preds = %2236, %2233
  %2239 = phi i32 [ %2237, %2236 ], [ 0, %2233 ]
  %2240 = zext i32 %2239 to i64
  %2241 = icmp ult i64 %2234, %2240
  br i1 %2241, label %2242, label %2276

2242:                                             ; preds = %2238
  %2243 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %2231, i64 0, i32 2, i64 %2234
  %2244 = load ptr, ptr %2243, align 8, !tbaa !35
  %2245 = getelementptr inbounds %struct.histogram_value_t, ptr %2244, i64 0, i32 1
  %2246 = load i32, ptr %2245, align 8, !tbaa !164
  %2247 = icmp ult i32 %2246, 7
  br i1 %2247, label %2249, label %2248

2248:                                             ; preds = %2242
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 196, ptr noundef nonnull @.str.6) #17
  br label %2251

2249:                                             ; preds = %2242
  %2250 = add nuw nsw i32 %2246, 1
  br label %2251

2251:                                             ; preds = %2249, %2248
  %2252 = phi i32 [ %2235, %2248 ], [ %2250, %2249 ]
  %2253 = getelementptr inbounds %struct.histogram_value_t, ptr %2244, i64 0, i32 2
  %2254 = load i32, ptr %2253, align 4, !tbaa !161
  %2255 = call i32 @coverage_counter_alloc(i32 noundef %2252, i32 noundef %2254) #17
  %2256 = icmp eq i32 %2255, 0
  br i1 %2256, label %2274, label %2257

2257:                                             ; preds = %2251
  %2258 = load i32, ptr %2245, align 8, !tbaa !164
  switch i32 %2258, label %2273 [
    i32 0, label %2259
    i32 1, label %2261
    i32 2, label %2263
    i32 3, label %2265
    i32 4, label %2267
    i32 5, label %2269
    i32 6, label %2271
  ]

2259:                                             ; preds = %2257
  %2260 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 2), align 8, !tbaa !177
  call void %2260(ptr noundef %2244, i32 noundef %2252, i32 noundef 0) #17
  br label %2274

2261:                                             ; preds = %2257
  %2262 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 3), align 8, !tbaa !178
  call void %2262(ptr noundef %2244, i32 noundef %2252, i32 noundef 0) #17
  br label %2274

2263:                                             ; preds = %2257
  %2264 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 4), align 8, !tbaa !179
  call void %2264(ptr noundef %2244, i32 noundef %2252, i32 noundef 0) #17
  br label %2274

2265:                                             ; preds = %2257
  %2266 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 5), align 8, !tbaa !180
  call void %2266(ptr noundef %2244, i32 noundef %2252, i32 noundef 0) #17
  br label %2274

2267:                                             ; preds = %2257
  %2268 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 6), align 8, !tbaa !181
  call void %2268(ptr noundef %2244, i32 noundef %2252, i32 noundef 0) #17
  br label %2274

2269:                                             ; preds = %2257
  %2270 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 7), align 8, !tbaa !182
  call void %2270(ptr noundef %2244, i32 noundef %2252, i32 noundef 0) #17
  br label %2274

2271:                                             ; preds = %2257
  %2272 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 8), align 8, !tbaa !183
  call void %2272(ptr noundef %2244, i32 noundef %2252, i32 noundef 0) #17
  br label %2274

2273:                                             ; preds = %2257
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 232, ptr noundef nonnull @.str.6) #17
  br label %2274

2274:                                             ; preds = %2273, %2271, %2269, %2267, %2265, %2263, %2261, %2259, %2251
  %2275 = add nuw nsw i64 %2234, 1
  br label %2233, !llvm.loop !184

2276:                                             ; preds = %2238, %2227
  call void @gsi_commit_edge_inserts() #17
  br label %2277

2277:                                             ; preds = %2276, %2123, %2120
  call void @free_aux_for_edges() #17
  %2278 = load ptr, ptr %7, align 8, !tbaa !35
  %2279 = icmp eq ptr %2278, null
  br i1 %2279, label %2281, label %2280

2280:                                             ; preds = %2277
  call void @free(ptr noundef %2278)
  br label %2281

2281:                                             ; preds = %2277, %2280
  store ptr null, ptr %7, align 8, !tbaa !35
  call void @free_edge_list(ptr noundef %262) #17
  call void @coverage_end_function() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  ret void
}

declare i32 @flow_call_edges_add(ptr noundef) local_unnamed_addr #3

declare void @add_noreturn_fake_exit_edges() local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @create_edge_list() local_unnamed_addr #3

declare void @alloc_aux_for_edges(i32 noundef) local_unnamed_addr #3

declare void @compact_blocks() local_unnamed_addr #3

declare i32 @coverage_begin_output() local_unnamed_addr #3

declare i32 @gcov_write_tag(i32 noundef) local_unnamed_addr #3

declare void @gcov_write_unsigned(i32 noundef) local_unnamed_addr #3

declare void @gcov_write_length(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @output_location(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #9 !prof !34 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store ptr null, ptr @output_location.prev_file_name, align 8, !tbaa !35
  br label %38

7:                                                ; preds = %4
  %8 = load ptr, ptr @output_location.prev_file_name, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %8)
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i8 [ 1, %7 ], [ %13, %10 ]
  %16 = load i32, ptr @output_location.prev_line, align 4, !tbaa !50
  %17 = icmp ne i32 %16, %1
  %18 = icmp ne i8 %15, 0
  %19 = select i1 %18, i1 true, i1 %17
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = zext i1 %17 to i8
  %22 = load i32, ptr %2, align 4, !tbaa !50
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = tail call i32 @gcov_write_tag(i32 noundef 21299200) #17
  store i32 %25, ptr %2, align 4, !tbaa !50
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !87
  %28 = add nsw i32 %27, -1
  tail call void @gcov_write_unsigned(i32 noundef %28) #17
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i8 [ %15, %20 ], [ 1, %24 ]
  %31 = phi i8 [ %21, %20 ], [ 1, %24 ]
  %32 = icmp eq i8 %30, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  store ptr %0, ptr @output_location.prev_file_name, align 8, !tbaa !35
  tail call void @gcov_write_unsigned(i32 noundef 0) #17
  %34 = load ptr, ptr @output_location.prev_file_name, align 8, !tbaa !35
  tail call void @gcov_write_string(ptr noundef %34) #17
  br label %35

35:                                               ; preds = %33, %29
  %36 = icmp eq i8 %31, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  tail call void @gcov_write_unsigned(i32 noundef %1) #17
  br label %38

38:                                               ; preds = %6, %37
  %39 = phi i32 [ %1, %37 ], [ -1, %6 ]
  store i32 %39, ptr @output_location.prev_line, align 4, !tbaa !50
  br label %40

40:                                               ; preds = %38, %14, %35
  ret void
}

declare void @gcov_write_string(ptr noundef) local_unnamed_addr #3

declare void @find_values_to_profile(ptr noundef) local_unnamed_addr #3

declare void @remove_fake_edges() local_unnamed_addr #3

declare i32 @coverage_counter_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_commit_edge_inserts() local_unnamed_addr #3

declare void @free_aux_for_edges() local_unnamed_addr #3

declare void @free_edge_list(ptr noundef) local_unnamed_addr #3

declare void @coverage_end_function() local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_branch_prob() local_unnamed_addr #10 !prof !34 {
  store i32 0, ptr @total_num_blocks, align 4, !tbaa !50
  store i32 0, ptr @total_num_edges, align 4, !tbaa !50
  store i32 0, ptr @total_num_edges_ignored, align 4, !tbaa !50
  store i32 0, ptr @total_num_blocks_created, align 4, !tbaa !50
  store i32 0, ptr @total_num_passes, align 4, !tbaa !50
  store i32 0, ptr @total_num_times_called, align 4, !tbaa !50
  store i32 0, ptr @total_num_branches, align 4, !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @total_hist_br_prob, i8 0, i64 80, i1 false), !tbaa !50
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @end_branch_prob() local_unnamed_addr #11 !prof !34 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %57, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @fputc(i32 10, ptr nonnull %1)
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %6 = load i32, ptr @total_num_blocks, align 4, !tbaa !50
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %6)
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %9 = load i32, ptr @total_num_edges, align 4, !tbaa !50
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %9)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %12 = load i32, ptr @total_num_edges_ignored, align 4, !tbaa !50
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef %12)
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.11, i32 noundef 0)
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %17 = load i32, ptr @total_num_blocks_created, align 4, !tbaa !50
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.12, i32 noundef %17)
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %20 = load i32, ptr @total_num_passes, align 4, !tbaa !50
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.13, i32 noundef %20)
  %22 = load i32, ptr @total_num_times_called, align 4, !tbaa !50
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %3
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %26 = load i32, ptr @total_num_passes, align 4, !tbaa !50
  %27 = ashr i32 %22, 1
  %28 = add nsw i32 %26, %27
  %29 = sdiv i32 %28, %22
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.14, i32 noundef %29)
  br label %31

31:                                               ; preds = %24, %3
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %33 = load i32, ptr @total_num_branches, align 4, !tbaa !50
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.15, i32 noundef %33)
  %35 = load i32, ptr @total_num_branches, align 4, !tbaa !50
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %31, %37
  %38 = phi i64 [ %55, %37 ], [ 0, %31 ]
  %39 = trunc i64 %38 to i32
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %41 = getelementptr inbounds [20 x i32], ptr @total_hist_br_prob, i64 0, i64 %38
  %42 = load i32, ptr %41, align 4, !tbaa !50
  %43 = sub nuw nsw i64 19, %38
  %44 = getelementptr inbounds [20 x i32], ptr @total_hist_br_prob, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !50
  %46 = add nsw i32 %45, %42
  %47 = mul nsw i32 %46, 100
  %48 = load i32, ptr @total_num_branches, align 4, !tbaa !50
  %49 = sdiv i32 %47, %48
  %50 = mul nuw nsw i32 %39, 5
  %51 = add nuw nsw i32 %50, 5
  %52 = trunc i64 %38 to i32
  %53 = mul i32 %52, 5
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.16, i32 noundef %49, i32 noundef %53, i32 noundef %51)
  %55 = add nuw nsw i64 %38, 1
  %56 = icmp eq i64 %55, 10
  br i1 %56, label %57, label %37, !llvm.loop !185

57:                                               ; preds = %37, %31, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @tree_register_profile_hooks() local_unnamed_addr #9 !prof !34 {
  %1 = tail call i32 @current_ir_type() #17
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1377, ptr noundef nonnull @.str.6) #17
  br label %4

4:                                                ; preds = %0, %3
  ret void
}

declare i32 @current_ir_type() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare void @alloc_aux_for_blocks(i32 noundef) local_unnamed_addr #3

declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @mcf_smooth_cfg() local_unnamed_addr #3

declare zeroext i8 @block_ends_with_call_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @block_ends_with_condjump_p(ptr noundef) local_unnamed_addr #3

declare i32 @counts_to_freqs() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare void @free_aux_for_blocks() local_unnamed_addr #3

declare ptr @get_coverage_counts(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @is_edge_inconsistent(ptr noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ne ptr %0, null
  br label %4

4:                                                ; preds = %61, %1
  %5 = phi i32 [ 0, %1 ], [ %62, %61 ]
  br i1 %2, label %8, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 8, !tbaa !61
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %7, %6 ], [ 0, %4 ]
  %10 = icmp eq i32 %9, %5
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  tail call void @llvm.assume(i1 %3)
  %12 = zext i32 %5 to i64
  %13 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  br label %15

15:                                               ; preds = %8, %11
  %16 = phi ptr [ %14, %11 ], [ null, %8 ]
  br i1 %10, label %63, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !93
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 9
  %25 = load i64, ptr %24, align 8, !tbaa !92
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !82
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %16, align 8, !tbaa !85
  %34 = tail call zeroext i8 @block_ends_with_call_p(ptr noundef %33) #17
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %32, %27
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %38 = icmp eq ptr %37, null
  br i1 %38, label %63, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 9
  %41 = load ptr, ptr %16, align 8, !tbaa !85
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 9
  %43 = load i32, ptr %42, align 8, !tbaa !87
  %44 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !83
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !87
  %48 = load i64, ptr %40, align 8, !tbaa !92
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %37, ptr noundef nonnull @.str.35, i32 noundef %43, i32 noundef %47, i64 noundef %48)
  %50 = load ptr, ptr %16, align 8, !tbaa !85
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @dump_bb(ptr noundef %50, ptr noundef %51, i32 noundef 0) #17
  %52 = load ptr, ptr %44, align 8, !tbaa !83
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @dump_bb(ptr noundef %52, ptr noundef %53, i32 noundef 0) #17
  br label %63

54:                                               ; preds = %23, %32, %17
  br i1 %2, label %57, label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %0, align 8, !tbaa !61
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ %56, %55 ], [ 0, %54 ]
  %59 = icmp ult i32 %5, %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %61

61:                                               ; preds = %57, %60
  %62 = add i32 %5, 1
  br label %4, !llvm.loop !186

63:                                               ; preds = %15, %36, %39
  %64 = phi i8 [ 1, %39 ], [ 1, %36 ], [ 0, %15 ]
  ret i8 %64
}

declare void @dump_bb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @sum_edge_counts(ptr noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_add_histogram_value(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind uwtable
define internal fastcc void @union_groups(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %8, label %3, !llvm.loop !97

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %18, label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %16, %12 ], [ %10, %8 ]
  %14 = phi ptr [ %15, %12 ], [ %9, %8 ]
  store ptr %4, ptr %14, align 8, !tbaa !95
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = icmp eq ptr %16, %4
  br i1 %17, label %18, label %12, !llvm.loop !98

18:                                               ; preds = %12, %8
  br label %19

19:                                               ; preds = %18, %19
  %20 = phi ptr [ %22, %19 ], [ %1, %18 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !95
  %23 = icmp eq ptr %22, %20
  br i1 %23, label %24, label %19, !llvm.loop !97

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !95
  %27 = icmp eq ptr %26, %20
  br i1 %27, label %34, label %28

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %32, %28 ], [ %26, %24 ]
  %30 = phi ptr [ %31, %28 ], [ %25, %24 ]
  store ptr %20, ptr %30, align 8, !tbaa !95
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !95
  %33 = icmp eq ptr %32, %20
  br i1 %33, label %34, label %28, !llvm.loop !98

34:                                               ; preds = %28, %24
  %35 = icmp eq ptr %4, %20
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1236, ptr noundef nonnull @.str.6) #17
  br label %37

37:                                               ; preds = %34, %36
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 2
  store ptr %20, ptr %38, align 8, !tbaa !95
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

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
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }

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
!54 = !{!55, !36, i64 8}
!55 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!56 = !{!57, !36, i64 0}
!57 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!58 = !{!59, !36, i64 56}
!59 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!60 = !{!57, !36, i64 8}
!61 = !{!62, !41, i64 0}
!62 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!63 = !{!59, !41, i64 96}
!64 = !{!65}
!65 = distinct !{!65, !66, !"gsi_last_bb: argument 0"}
!66 = distinct !{!66, !"gsi_last_bb"}
!67 = !{!68, !36, i64 0}
!68 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!69 = !{!70, !36, i64 8}
!70 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!71 = !{!72, !36, i64 0}
!72 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!73 = !{!72, !36, i64 8}
!74 = distinct !{!74, !52, !53}
!75 = !{!76, !41, i64 40}
!76 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!77 = !{!78, !36, i64 0}
!78 = !{!"", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!79 = !{!78, !41, i64 8}
!80 = !{!59, !36, i64 8}
!81 = !{!76, !36, i64 32}
!82 = !{!76, !41, i64 48}
!83 = !{!76, !36, i64 8}
!84 = distinct !{!84, !52, !53}
!85 = !{!76, !36, i64 0}
!86 = distinct !{!86, !52, !53}
!87 = !{!59, !41, i64 80}
!88 = distinct !{!88, !52, !53}
!89 = !{!90, !41, i64 4}
!90 = !{!"edge_list", !41, i64 0, !41, i64 4, !36, i64 8}
!91 = !{!90, !36, i64 8}
!92 = !{!76, !42, i64 56}
!93 = !{!76, !36, i64 24}
!94 = distinct !{!94, !52, !53}
!95 = !{!59, !36, i64 16}
!96 = distinct !{!96, !52, !53}
!97 = distinct !{!97, !52, !53}
!98 = distinct !{!98, !52, !53}
!99 = distinct !{!99, !52, !53}
!100 = !{!59, !36, i64 0}
!101 = distinct !{!101, !52, !53}
!102 = distinct !{!102, !52, !53}
!103 = distinct !{!103, !52, !53}
!104 = distinct !{!104, !52, !53}
!105 = !{!57, !41, i64 24}
!106 = distinct !{!106, !52, !53}
!107 = !{!57, !41, i64 32}
!108 = distinct !{!108, !52, !53}
!109 = distinct !{!109, !52, !53}
!110 = !{!111}
!111 = distinct !{!111, !112, !"gsi_start_bb: argument 0"}
!112 = distinct !{!112, !"gsi_start_bb"}
!113 = !{!70, !36, i64 0}
!114 = !{!72, !36, i64 16}
!115 = distinct !{!115, !52, !53}
!116 = distinct !{!116, !52, !53}
!117 = distinct !{!117, !52, !53}
!118 = distinct !{!118, !52, !53}
!119 = !{!120, !41, i64 4}
!120 = !{!"gcov_ctr_summary", !41, i64 0, !41, i64 4, !42, i64 8, !42, i64 16, !42, i64 24}
!121 = !{!120, !42, i64 24}
!122 = !{!120, !42, i64 16}
!123 = !{!120, !42, i64 8}
!124 = !{!125, !42, i64 8}
!125 = !{!"bb_info", !41, i64 0, !42, i64 8, !42, i64 16}
!126 = distinct !{!126, !52, !53}
!127 = !{!125, !42, i64 16}
!128 = distinct !{!128, !52, !53}
!129 = distinct !{!129, !52, !53}
!130 = !{!42, !42, i64 0}
!131 = distinct !{!131, !52, !53}
!132 = distinct !{!132, !52, !53}
!133 = distinct !{!133, !52, !53}
!134 = distinct !{!134, !52, !53}
!135 = distinct !{!135, !52, !53}
!136 = !{!59, !42, i64 72}
!137 = distinct !{!137, !52, !53}
!138 = distinct !{!138, !52, !53}
!139 = distinct !{!139, !52, !53}
!140 = distinct !{!140, !52, !53}
!141 = distinct !{!141, !52, !53}
!142 = distinct !{!142, !52, !53}
!143 = !{i8 0, i8 2}
!144 = distinct !{!144, !52, !53}
!145 = distinct !{!145, !52, !53}
!146 = distinct !{!146, !52, !53}
!147 = distinct !{!147, !52, !53}
!148 = distinct !{!148, !52, !53}
!149 = !{!76, !41, i64 52}
!150 = distinct !{!150, !52, !53}
!151 = distinct !{!151, !52, !53}
!152 = !{!57, !41, i64 48}
!153 = distinct !{!153, !52, !53}
!154 = distinct !{!154, !52, !53}
!155 = distinct !{!155, !52, !53}
!156 = distinct !{!156, !52, !53}
!157 = distinct !{!157, !52, !53}
!158 = distinct !{!158, !52, !53}
!159 = !{!160, !41, i64 0}
!160 = !{!"VEC_histogram_value_base", !41, i64 0, !41, i64 4, !37, i64 8}
!161 = !{!162, !41, i64 36}
!162 = !{!"histogram_value_t", !163, i64 0, !41, i64 32, !41, i64 36, !37, i64 40}
!163 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!164 = !{!162, !41, i64 32}
!165 = distinct !{!165, !52, !53}
!166 = distinct !{!166, !52, !53}
!167 = !{!162, !36, i64 8}
!168 = !{!162, !36, i64 16}
!169 = distinct !{!169, !52, !53}
!170 = distinct !{!170, !52, !53}
!171 = distinct !{!171, !52, !53}
!172 = !{!173, !36, i64 0}
!173 = !{!"profile_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!174 = !{!173, !36, i64 8}
!175 = distinct !{!175, !52, !53}
!176 = distinct !{!176, !52, !53}
!177 = !{!173, !36, i64 16}
!178 = !{!173, !36, i64 24}
!179 = !{!173, !36, i64 32}
!180 = !{!173, !36, i64 40}
!181 = !{!173, !36, i64 48}
!182 = !{!173, !36, i64 56}
!183 = !{!173, !36, i64 64}
!184 = distinct !{!184, !52, !53}
!185 = distinct !{!185, !52, !53}
!186 = distinct !{!186, !52, !53}
