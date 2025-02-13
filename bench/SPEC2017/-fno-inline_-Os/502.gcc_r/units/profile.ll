; ModuleID = 'profile.c'
source_filename = "profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.profile_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.edge_list = type { i32, i32, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gcov_ctr_summary = type { i32, i32, i64, i64, i64 }
%struct.bb_info = type { i8, i64, i64 }
%struct.histogram_value_t = type { %struct.anon, i32, i32, %union.anon.0 }
%struct.anon = type { ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.VEC_histogram_value_base = type { i32, i32, [1 x ptr] }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @branch_prob() local_unnamed_addr #0 !prof !34 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.expanded_location, align 8
  %6 = alloca %struct.expanded_location, align 8
  %7 = alloca %struct.expanded_location, align 8
  %8 = alloca %struct.expanded_location, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.edge_iterator, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = alloca %struct.expanded_location, align 8
  %14 = alloca %struct.expanded_location, align 8
  %15 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  store ptr null, ptr %1, align 8, !tbaa !35
  %16 = load i32, ptr @total_num_times_called, align 4, !tbaa !39
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @total_num_times_called, align 4, !tbaa !39
  %18 = tail call i32 @flow_call_edges_add(ptr noundef null) #17
  tail call void @add_noreturn_fake_exit_edges() #17
  %19 = load ptr, ptr @cfun, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %180, label %28

28:                                               ; preds = %0
  %29 = getelementptr inbounds i8, ptr %3, i64 8
  %30 = getelementptr inbounds %struct.expanded_location, ptr %7, i64 0, i32 1
  %31 = getelementptr inbounds %struct.expanded_location, ptr %8, i64 0, i32 1
  br label %32

32:                                               ; preds = %28, %171
  %33 = phi ptr [ %24, %28 ], [ %173, %171 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 1
  %35 = call fastcc ptr @ei_start_1(ptr noundef nonnull %34) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !49
  store ptr %35, ptr %29, align 8, !tbaa.struct !50
  %36 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %35, ptr noundef nonnull %2) #18, !range !51
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %106, label %38

38:                                               ; preds = %32, %84
  %39 = phi i32 [ %99, %84 ], [ 0, %32 ]
  %40 = phi i32 [ %101, %84 ], [ 0, %32 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %33) #18
  %41 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !51
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38, %47
  %44 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18
  %45 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %44) #18, !range !51
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  call fastcc void @gsi_prev(ptr noundef nonnull %4) #18
  %48 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !51
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %43, label %50, !llvm.loop !52

50:                                               ; preds = %47, %43
  %51 = icmp eq ptr %44, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %38, %50
  %53 = load ptr, ptr %2, align 8, !tbaa !35
  br label %84

54:                                               ; preds = %50
  %55 = call fastcc zeroext i8 @gimple_has_location(ptr noundef nonnull %44) #18, !range !51
  %56 = icmp eq i8 %55, 0
  %57 = load ptr, ptr %2, align 8, !tbaa !35
  br i1 %56, label %84, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !54
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %58
  %63 = call fastcc zeroext i8 @single_succ_p(ptr noundef %33) #18, !range !51
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %60) #17
  %66 = load ptr, ptr %5, align 8, !tbaa !56
  %67 = call fastcc i32 @gimple_location(ptr noundef nonnull %44) #18
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %6, i32 noundef %67) #17
  %68 = load ptr, ptr %6, align 8, !tbaa !56
  %69 = icmp eq ptr %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, ptr %59, align 8, !tbaa !54
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %7, i32 noundef %71) #17
  %72 = load i32, ptr %30, align 8, !tbaa !58
  %73 = call fastcc i32 @gimple_location(ptr noundef nonnull %44) #18
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %8, i32 noundef %73) #17
  %74 = load i32, ptr %31, align 8, !tbaa !58
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %70, %65
  %77 = call ptr @split_edge(ptr noundef nonnull %57) #17
  %78 = call fastcc ptr @single_succ_edge(ptr noundef %77) #18
  %79 = load i32, ptr %59, align 8, !tbaa !54
  %80 = getelementptr inbounds %struct.edge_def, ptr %78, i64 0, i32 5
  store i32 %79, ptr %80, align 8, !tbaa !54
  %81 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !59
  %83 = getelementptr inbounds %struct.edge_def, ptr %78, i64 0, i32 4
  store ptr %82, ptr %83, align 8, !tbaa !59
  br label %84

84:                                               ; preds = %52, %76, %70, %62, %58, %54
  %85 = phi ptr [ %53, %52 ], [ %57, %76 ], [ %57, %70 ], [ %57, %62 ], [ %57, %58 ], [ %57, %54 ]
  %86 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 7
  %87 = load i32, ptr %86, align 8, !tbaa !60
  %88 = and i32 %87, 6
  %89 = icmp eq i32 %88, 0
  %90 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !61
  %92 = load ptr, ptr @cfun, align 8, !tbaa !35
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !41
  %95 = getelementptr inbounds %struct.control_flow_graph, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !48
  %97 = icmp eq ptr %91, %96
  %98 = select i1 %89, i1 true, i1 %97
  %99 = select i1 %98, i32 %39, i32 1
  %100 = icmp eq ptr %91, %96
  %101 = select i1 %100, i32 1, i32 %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %102 = load i32, ptr %3, align 8
  %103 = load ptr, ptr %29, align 8
  %104 = call fastcc zeroext i8 @ei_cond(i32 %102, ptr %103, ptr noundef nonnull %2) #18, !range !51
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %38, !llvm.loop !62

106:                                              ; preds = %84, %32
  %107 = phi i32 [ 0, %32 ], [ %101, %84 ]
  %108 = phi i32 [ 0, %32 ], [ %99, %84 ]
  %109 = call fastcc ptr @ei_start_1(ptr noundef %33) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !49
  store ptr %109, ptr %29, align 8, !tbaa.struct !50
  %110 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %109, ptr noundef nonnull %2) #18, !range !51
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %134, label %112

112:                                              ; preds = %106, %112
  %113 = phi i32 [ %127, %112 ], [ 0, %106 ]
  %114 = phi i32 [ %129, %112 ], [ 0, %106 ]
  %115 = load ptr, ptr %2, align 8, !tbaa !35
  %116 = getelementptr inbounds %struct.edge_def, ptr %115, i64 0, i32 7
  %117 = load i32, ptr %116, align 8, !tbaa !60
  %118 = and i32 %117, 6
  %119 = icmp eq i32 %118, 0
  %120 = load ptr, ptr %115, align 8, !tbaa !63
  %121 = load ptr, ptr @cfun, align 8, !tbaa !35
  %122 = getelementptr inbounds %struct.function, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !41
  %124 = load ptr, ptr %123, align 8, !tbaa !43
  %125 = icmp eq ptr %120, %124
  %126 = select i1 %119, i1 true, i1 %125
  %127 = select i1 %126, i32 %113, i32 1
  %128 = icmp eq ptr %120, %124
  %129 = select i1 %128, i32 1, i32 %114
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %130 = load i32, ptr %3, align 8
  %131 = load ptr, ptr %29, align 8
  %132 = call fastcc zeroext i8 @ei_cond(i32 %130, ptr %131, ptr noundef nonnull %2) #18, !range !51
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %112, !llvm.loop !64

134:                                              ; preds = %112, %106
  %135 = phi i32 [ 0, %106 ], [ %129, %112 ]
  %136 = phi i32 [ 0, %106 ], [ %127, %112 ]
  %137 = icmp eq i32 %108, 0
  %138 = icmp ne i32 %107, 0
  %139 = select i1 %137, i1 true, i1 %138
  br i1 %139, label %154, label %140

140:                                              ; preds = %134
  %141 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %145 = load i32, ptr %144, align 8, !tbaa !65
  %146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %141, ptr noundef nonnull @.str, i32 noundef %145) #18
  br label %147

147:                                              ; preds = %143, %140
  %148 = load ptr, ptr @cfun, align 8, !tbaa !35
  %149 = getelementptr inbounds %struct.function, ptr %148, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !41
  %151 = getelementptr inbounds %struct.control_flow_graph, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !48
  %153 = call ptr @make_edge(ptr noundef %33, ptr noundef %152, i32 noundef 16) #17
  br label %154

154:                                              ; preds = %147, %134
  %155 = icmp eq i32 %136, 0
  %156 = icmp ne i32 %135, 0
  %157 = select i1 %155, i1 true, i1 %156
  br i1 %157, label %171, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %160 = icmp eq ptr %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %163 = load i32, ptr %162, align 8, !tbaa !65
  %164 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %159, ptr noundef nonnull @.str.1, i32 noundef %163) #18
  br label %165

165:                                              ; preds = %161, %158
  %166 = load ptr, ptr @cfun, align 8, !tbaa !35
  %167 = getelementptr inbounds %struct.function, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !41
  %169 = load ptr, ptr %168, align 8, !tbaa !43
  %170 = call ptr @make_edge(ptr noundef %169, ptr noundef %33, i32 noundef 16) #17
  br label %171

171:                                              ; preds = %165, %154
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %173 = load ptr, ptr %172, align 8, !tbaa !45
  %174 = load ptr, ptr @cfun, align 8, !tbaa !35
  %175 = getelementptr inbounds %struct.function, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !41
  %177 = getelementptr inbounds %struct.control_flow_graph, ptr %176, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !48
  %179 = icmp eq ptr %173, %178
  br i1 %179, label %180, label %32, !llvm.loop !66

180:                                              ; preds = %171, %0
  %181 = call ptr @create_edge_list() #17
  %182 = getelementptr inbounds %struct.edge_list, ptr %181, i64 0, i32 1
  %183 = load i32, ptr %182, align 4, !tbaa !67
  call void @alloc_aux_for_edges(i32 noundef 4) #17
  call void @compact_blocks() #17
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  call fastcc void @find_spanning_tree(ptr noundef nonnull %181) #18
  br label %254

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.edge_list, ptr %181, i64 0, i32 2
  %188 = zext i32 %183 to i64
  br label %189

189:                                              ; preds = %186, %219
  %190 = phi i64 [ 0, %186 ], [ %221, %219 ]
  %191 = phi i32 [ 0, %186 ], [ %220, %219 ]
  %192 = load ptr, ptr %187, align 8, !tbaa !69
  %193 = getelementptr inbounds ptr, ptr %192, i64 %190
  %194 = load ptr, ptr %193, align 8, !tbaa !35
  %195 = getelementptr inbounds %struct.edge_def, ptr %194, i64 0, i32 9
  store i64 0, ptr %195, align 8, !tbaa !70
  %196 = getelementptr inbounds %struct.edge_def, ptr %194, i64 0, i32 7
  %197 = load i32, ptr %196, align 8, !tbaa !60
  %198 = and i32 %197, 6
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %219, label %200

200:                                              ; preds = %189
  %201 = load ptr, ptr %194, align 8, !tbaa !63
  %202 = load ptr, ptr @cfun, align 8, !tbaa !35
  %203 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !41
  %205 = load ptr, ptr %204, align 8, !tbaa !43
  %206 = icmp eq ptr %201, %205
  br i1 %206, label %219, label %207

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.edge_def, ptr %194, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !61
  %210 = getelementptr inbounds %struct.control_flow_graph, ptr %204, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !48
  %212 = icmp eq ptr %209, %211
  br i1 %212, label %219, label %213

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.edge_def, ptr %194, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !71
  %216 = load i8, ptr %215, align 4
  %217 = or i8 %216, 4
  store i8 %217, ptr %215, align 4
  %218 = add i32 %191, 1
  br label %219

219:                                              ; preds = %213, %207, %200, %189
  %220 = phi i32 [ %218, %213 ], [ %191, %207 ], [ %191, %200 ], [ %191, %189 ]
  %221 = add nuw nsw i64 %190, 1
  %222 = icmp eq i64 %221, %188
  br i1 %222, label %223, label %189, !llvm.loop !72

223:                                              ; preds = %219
  call fastcc void @find_spanning_tree(ptr noundef nonnull %181) #18
  br i1 %184, label %254, label %224

224:                                              ; preds = %223
  %225 = getelementptr inbounds %struct.edge_list, ptr %181, i64 0, i32 2
  %226 = zext i32 %183 to i64
  br label %227

227:                                              ; preds = %224, %249
  %228 = phi i64 [ 0, %224 ], [ %252, %249 ]
  %229 = phi i32 [ %220, %224 ], [ %251, %249 ]
  %230 = phi i32 [ 0, %224 ], [ %250, %249 ]
  %231 = load ptr, ptr %225, align 8, !tbaa !69
  %232 = getelementptr inbounds ptr, ptr %231, i64 %228
  %233 = load ptr, ptr %232, align 8, !tbaa !35
  %234 = getelementptr inbounds %struct.edge_def, ptr %233, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !71
  %236 = load i8, ptr %235, align 4
  %237 = and i8 %236, 6
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %249

239:                                              ; preds = %227
  %240 = getelementptr inbounds %struct.edge_def, ptr %233, i64 0, i32 7
  %241 = load i32, ptr %240, align 8, !tbaa !60
  %242 = and i32 %241, 16
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %239
  %245 = or disjoint i8 %236, 4
  store i8 %245, ptr %235, align 4
  %246 = add i32 %229, 1
  br label %249

247:                                              ; preds = %239
  %248 = add i32 %230, 1
  br label %249

249:                                              ; preds = %244, %247, %227
  %250 = phi i32 [ %230, %227 ], [ %230, %244 ], [ %248, %247 ]
  %251 = phi i32 [ %229, %227 ], [ %246, %244 ], [ %229, %247 ]
  %252 = add nuw nsw i64 %228, 1
  %253 = icmp eq i64 %252, %226
  br i1 %253, label %254, label %227, !llvm.loop !73

254:                                              ; preds = %249, %185, %223
  %255 = phi i32 [ 0, %223 ], [ 0, %185 ], [ %250, %249 ]
  %256 = phi i32 [ %220, %223 ], [ 0, %185 ], [ %251, %249 ]
  %257 = load ptr, ptr @cfun, align 8, !tbaa !35
  %258 = getelementptr inbounds %struct.function, ptr %257, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !41
  %260 = getelementptr inbounds %struct.control_flow_graph, ptr %259, i64 0, i32 3
  %261 = load i32, ptr %260, align 8, !tbaa !74
  %262 = load i32, ptr @total_num_blocks, align 4, !tbaa !39
  %263 = add nsw i32 %262, %261
  store i32 %263, ptr @total_num_blocks, align 4, !tbaa !39
  %264 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %271

266:                                              ; preds = %254
  %267 = load i32, ptr @total_num_edges, align 4, !tbaa !39
  %268 = add i32 %267, %183
  store i32 %268, ptr @total_num_edges, align 4, !tbaa !39
  %269 = load i32, ptr @total_num_edges_ignored, align 4, !tbaa !39
  %270 = add i32 %269, %256
  store i32 %270, ptr @total_num_edges_ignored, align 4, !tbaa !39
  br label %288

271:                                              ; preds = %254
  %272 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %264, ptr noundef nonnull @.str.2, i32 noundef %261) #18
  %273 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %274 = load i32, ptr @total_num_edges, align 4, !tbaa !39
  %275 = add i32 %274, %183
  store i32 %275, ptr @total_num_edges, align 4, !tbaa !39
  %276 = icmp eq ptr %273, null
  br i1 %276, label %277, label %280

277:                                              ; preds = %271
  %278 = load i32, ptr @total_num_edges_ignored, align 4, !tbaa !39
  %279 = add i32 %278, %256
  store i32 %279, ptr @total_num_edges_ignored, align 4, !tbaa !39
  br label %288

280:                                              ; preds = %271
  %281 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %273, ptr noundef nonnull @.str.3, i32 noundef %183) #18
  %282 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %283 = load i32, ptr @total_num_edges_ignored, align 4, !tbaa !39
  %284 = add i32 %283, %256
  store i32 %284, ptr @total_num_edges_ignored, align 4, !tbaa !39
  %285 = icmp eq ptr %282, null
  br i1 %285, label %288, label %286

286:                                              ; preds = %280
  %287 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %282, ptr noundef nonnull @.str.4, i32 noundef %256) #18
  br label %288

288:                                              ; preds = %266, %277, %286, %280
  %289 = call i32 @coverage_begin_output() #17
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %309, label %291

291:                                              ; preds = %288
  %292 = call i32 @gcov_write_tag(i32 noundef 21037056) #17
  %293 = load ptr, ptr @cfun, align 8, !tbaa !35
  %294 = getelementptr inbounds %struct.function, ptr %293, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !41
  %296 = getelementptr inbounds %struct.control_flow_graph, ptr %295, i64 0, i32 3
  %297 = load i32, ptr %296, align 8, !tbaa !74
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %308, label %299

299:                                              ; preds = %291, %299
  %300 = phi i32 [ %301, %299 ], [ 0, %291 ]
  call void @gcov_write_unsigned(i32 noundef 0) #17
  %301 = add i32 %300, 1
  %302 = load ptr, ptr @cfun, align 8, !tbaa !35
  %303 = getelementptr inbounds %struct.function, ptr %302, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !41
  %305 = getelementptr inbounds %struct.control_flow_graph, ptr %304, i64 0, i32 3
  %306 = load i32, ptr %305, align 8, !tbaa !74
  %307 = icmp eq i32 %301, %306
  br i1 %307, label %308, label %299, !llvm.loop !75

308:                                              ; preds = %299, %291
  call void @gcov_write_length(i32 noundef %292) #17
  br label %309

309:                                              ; preds = %308, %288
  %310 = load ptr, ptr @cfun, align 8, !tbaa !35
  %311 = getelementptr inbounds %struct.function, ptr %310, i64 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !41
  %313 = load ptr, ptr %312, align 8, !tbaa !43
  %314 = getelementptr inbounds %struct.basic_block_def, ptr %313, i64 0, i32 9
  store i32 1, ptr %314, align 8, !tbaa !65
  %315 = getelementptr inbounds %struct.control_flow_graph, ptr %312, i64 0, i32 5
  %316 = load i32, ptr %315, align 8, !tbaa !76
  %317 = getelementptr inbounds %struct.control_flow_graph, ptr %312, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !48
  %319 = getelementptr inbounds %struct.basic_block_def, ptr %318, i64 0, i32 9
  store i32 %316, ptr %319, align 8, !tbaa !65
  %320 = call i32 @coverage_begin_output() #17
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %395, label %322

322:                                              ; preds = %309
  %323 = load ptr, ptr @cfun, align 8, !tbaa !35
  %324 = getelementptr inbounds %struct.function, ptr %323, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !41
  %326 = load ptr, ptr %325, align 8, !tbaa !35
  %327 = getelementptr inbounds %struct.control_flow_graph, ptr %325, i64 0, i32 1
  %328 = load ptr, ptr %327, align 8, !tbaa !48
  %329 = icmp eq ptr %326, %328
  br i1 %329, label %395, label %330

330:                                              ; preds = %322
  %331 = getelementptr inbounds i8, ptr %10, i64 8
  br label %332

332:                                              ; preds = %330, %386
  %333 = phi ptr [ %326, %330 ], [ %388, %386 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #16
  %334 = call i32 @gcov_write_tag(i32 noundef 21168128) #17
  %335 = getelementptr inbounds %struct.basic_block_def, ptr %333, i64 0, i32 9
  %336 = load i32, ptr %335, align 8, !tbaa !65
  %337 = add nsw i32 %336, -1
  call void @gcov_write_unsigned(i32 noundef %337) #17
  %338 = getelementptr inbounds %struct.basic_block_def, ptr %333, i64 0, i32 1
  %339 = call fastcc ptr @ei_start_1(ptr noundef nonnull %338) #18
  store i32 0, ptr %10, align 8, !tbaa.struct !49
  store ptr %339, ptr %331, align 8, !tbaa.struct !50
  %340 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %339, ptr noundef nonnull %9) #18, !range !51
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %386, label %342

342:                                              ; preds = %332, %381
  %343 = load ptr, ptr %9, align 8, !tbaa !35
  %344 = getelementptr inbounds %struct.edge_def, ptr %343, i64 0, i32 3
  %345 = load ptr, ptr %344, align 8, !tbaa !71
  %346 = load i8, ptr %345, align 4
  %347 = and i8 %346, 4
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %349, label %381

349:                                              ; preds = %342
  %350 = lshr i8 %346, 1
  %351 = and i8 %350, 1
  %352 = zext nneg i8 %351 to i32
  %353 = getelementptr inbounds %struct.edge_def, ptr %343, i64 0, i32 7
  %354 = load i32, ptr %353, align 8, !tbaa !60
  %355 = lshr i32 %354, 3
  %356 = and i32 %355, 2
  %357 = or disjoint i32 %356, %352
  %358 = shl i32 %354, 2
  %359 = and i32 %358, 4
  %360 = or disjoint i32 %357, %359
  %361 = and i32 %354, 3072
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %349
  %364 = getelementptr inbounds %struct.edge_def, ptr %343, i64 0, i32 1
  %365 = load ptr, ptr %364, align 8, !tbaa !61
  br label %375

366:                                              ; preds = %349
  %367 = or disjoint i32 %357, 4
  %368 = load ptr, ptr %343, align 8, !tbaa !63
  %369 = getelementptr inbounds %struct.basic_block_def, ptr %368, i64 0, i32 6
  %370 = load ptr, ptr %369, align 8, !tbaa !45
  %371 = getelementptr inbounds %struct.edge_def, ptr %343, i64 0, i32 1
  %372 = load ptr, ptr %371, align 8, !tbaa !61
  %373 = icmp eq ptr %370, %372
  %374 = select i1 %373, i32 %367, i32 %360
  br label %375

375:                                              ; preds = %363, %366
  %376 = phi ptr [ %365, %363 ], [ %372, %366 ]
  %377 = phi i32 [ %360, %363 ], [ %374, %366 ]
  %378 = getelementptr inbounds %struct.basic_block_def, ptr %376, i64 0, i32 9
  %379 = load i32, ptr %378, align 8, !tbaa !65
  %380 = add nsw i32 %379, -1
  call void @gcov_write_unsigned(i32 noundef %380) #17
  call void @gcov_write_unsigned(i32 noundef %377) #17
  br label %381

381:                                              ; preds = %375, %342
  call fastcc void @ei_next(ptr noundef nonnull %10) #18
  %382 = load i32, ptr %10, align 8
  %383 = load ptr, ptr %331, align 8
  %384 = call fastcc zeroext i8 @ei_cond(i32 %382, ptr %383, ptr noundef nonnull %9) #18, !range !51
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %386, label %342, !llvm.loop !77

386:                                              ; preds = %381, %332
  call void @gcov_write_length(i32 noundef %334) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  %387 = getelementptr inbounds %struct.basic_block_def, ptr %333, i64 0, i32 6
  %388 = load ptr, ptr %387, align 8, !tbaa !35
  %389 = load ptr, ptr @cfun, align 8, !tbaa !35
  %390 = getelementptr inbounds %struct.function, ptr %389, i64 0, i32 1
  %391 = load ptr, ptr %390, align 8, !tbaa !41
  %392 = getelementptr inbounds %struct.control_flow_graph, ptr %391, i64 0, i32 1
  %393 = load ptr, ptr %392, align 8, !tbaa !48
  %394 = icmp eq ptr %388, %393
  br i1 %394, label %395, label %332, !llvm.loop !78

395:                                              ; preds = %386, %322, %309
  %396 = call i32 @coverage_begin_output() #17
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %395
  %399 = load ptr, ptr @cfun, align 8, !tbaa !35
  br label %468

400:                                              ; preds = %395
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  call fastcc void @output_location(ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #18
  %401 = load ptr, ptr @cfun, align 8, !tbaa !35
  %402 = getelementptr inbounds %struct.function, ptr %401, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !41
  %404 = load ptr, ptr %403, align 8, !tbaa !43
  %405 = getelementptr inbounds %struct.basic_block_def, ptr %404, i64 0, i32 6
  %406 = load ptr, ptr %405, align 8, !tbaa !45
  %407 = getelementptr inbounds %struct.control_flow_graph, ptr %403, i64 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !48
  %409 = icmp eq ptr %406, %408
  br i1 %409, label %466, label %410

410:                                              ; preds = %400
  %411 = getelementptr inbounds %struct.expanded_location, ptr %13, i64 0, i32 1
  %412 = getelementptr inbounds %struct.expanded_location, ptr %15, i64 0, i32 1
  br label %413

413:                                              ; preds = %410, %457
  %414 = phi ptr [ %403, %410 ], [ %462, %457 ]
  %415 = phi ptr [ %406, %410 ], [ %459, %457 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #16
  store i32 0, ptr %11, align 4, !tbaa !39
  %416 = load ptr, ptr %414, align 8, !tbaa !43
  %417 = getelementptr inbounds %struct.basic_block_def, ptr %416, i64 0, i32 6
  %418 = load ptr, ptr %417, align 8, !tbaa !45
  %419 = icmp eq ptr %415, %418
  br i1 %419, label %420, label %426

420:                                              ; preds = %413
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #16
  %421 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %422 = getelementptr inbounds %struct.tree_decl_minimal, ptr %421, i64 0, i32 1
  %423 = load i32, ptr %422, align 8, !tbaa !79
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %13, i32 noundef %423) #17
  %424 = load ptr, ptr %13, align 8, !tbaa !56
  %425 = load i32, ptr %411, align 8, !tbaa !58
  call fastcc void @output_location(ptr noundef %424, i32 noundef %425, ptr noundef nonnull %11, ptr noundef %415) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #16
  br label %426

426:                                              ; preds = %420, %413
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %12, ptr noundef %415) #18
  %427 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %12) #18, !range !51
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %429, label %439

429:                                              ; preds = %426, %436
  %430 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %12) #18
  %431 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %430) #18, !range !51
  %432 = icmp eq i8 %431, 0
  br i1 %432, label %436, label %433

433:                                              ; preds = %429
  %434 = call fastcc ptr @gimple_filename(ptr noundef %430) #18
  %435 = call fastcc i32 @gimple_lineno(ptr noundef %430) #18
  call fastcc void @output_location(ptr noundef %434, i32 noundef %435, ptr noundef nonnull %11, ptr noundef %415) #18
  br label %436

436:                                              ; preds = %433, %429
  call fastcc void @gsi_next(ptr noundef nonnull %12) #18
  %437 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %12) #18, !range !51
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %429, label %439, !llvm.loop !80

439:                                              ; preds = %436, %426
  %440 = call fastcc zeroext i8 @single_succ_p(ptr noundef %415) #18, !range !51
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %453, label %442

442:                                              ; preds = %439
  %443 = call fastcc ptr @single_succ_edge(ptr noundef %415) #18
  %444 = getelementptr inbounds %struct.edge_def, ptr %443, i64 0, i32 5
  %445 = load i32, ptr %444, align 8, !tbaa !54
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %453, label %447

447:                                              ; preds = %442
  %448 = call fastcc ptr @single_succ_edge(ptr noundef %415) #18
  %449 = getelementptr inbounds %struct.edge_def, ptr %448, i64 0, i32 5
  %450 = load i32, ptr %449, align 8, !tbaa !54
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %14, i32 noundef %450) #17
  %451 = load ptr, ptr %14, align 8, !tbaa !56
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %15, i32 noundef %450) #17
  %452 = load i32, ptr %412, align 8, !tbaa !58
  call fastcc void @output_location(ptr noundef %451, i32 noundef %452, ptr noundef nonnull %11, ptr noundef %415) #18
  br label %453

453:                                              ; preds = %447, %442, %439
  %454 = load i32, ptr %11, align 4, !tbaa !39
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %457, label %456

456:                                              ; preds = %453
  call void @gcov_write_unsigned(i32 noundef 0) #17
  call void @gcov_write_string(ptr noundef null) #17
  call void @gcov_write_length(i32 noundef %454) #17
  br label %457

457:                                              ; preds = %456, %453
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #16
  %458 = getelementptr inbounds %struct.basic_block_def, ptr %415, i64 0, i32 6
  %459 = load ptr, ptr %458, align 8, !tbaa !45
  %460 = load ptr, ptr @cfun, align 8, !tbaa !35
  %461 = getelementptr inbounds %struct.function, ptr %460, i64 0, i32 1
  %462 = load ptr, ptr %461, align 8, !tbaa !41
  %463 = getelementptr inbounds %struct.control_flow_graph, ptr %462, i64 0, i32 1
  %464 = load ptr, ptr %463, align 8, !tbaa !48
  %465 = icmp eq ptr %459, %464
  br i1 %465, label %466, label %413, !llvm.loop !81

466:                                              ; preds = %457, %400
  %467 = phi ptr [ %401, %400 ], [ %460, %457 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  br label %468

468:                                              ; preds = %398, %466
  %469 = phi ptr [ %399, %398 ], [ %467, %466 ]
  %470 = getelementptr inbounds %struct.function, ptr %469, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !41
  %472 = load ptr, ptr %471, align 8, !tbaa !43
  %473 = getelementptr inbounds %struct.basic_block_def, ptr %472, i64 0, i32 9
  store i32 0, ptr %473, align 8, !tbaa !65
  %474 = getelementptr inbounds %struct.control_flow_graph, ptr %471, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !48
  %476 = getelementptr inbounds %struct.basic_block_def, ptr %475, i64 0, i32 9
  store i32 1, ptr %476, align 8, !tbaa !65
  %477 = load i32, ptr @flag_profile_values, align 4, !tbaa !39
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %480, label %479

479:                                              ; preds = %468
  call void @find_values_to_profile(ptr noundef nonnull %1) #17
  br label %480

480:                                              ; preds = %479, %468
  %481 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !39
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %488, label %483

483:                                              ; preds = %480
  call fastcc void @compute_branch_probabilities() #18
  %484 = load i32, ptr @flag_profile_values, align 4, !tbaa !39
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %488, label %486

486:                                              ; preds = %483
  %487 = load ptr, ptr %1, align 8, !tbaa !35
  call fastcc void @compute_value_histograms(ptr noundef %487) #18
  br label %488

488:                                              ; preds = %483, %486, %480
  call void @remove_fake_edges() #17
  %489 = load i32, ptr @profile_arc_flag, align 4, !tbaa !39
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %505, label %491

491:                                              ; preds = %488
  %492 = call i32 @coverage_counter_alloc(i32 noundef 0, i32 noundef %255) #17
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %505, label %494

494:                                              ; preds = %491
  %495 = load ptr, ptr @tree_profile_hooks, align 8, !tbaa !82
  call void %495() #17
  %496 = call fastcc i32 @instrument_edges(ptr noundef %181) #18
  %497 = icmp eq i32 %496, %255
  br i1 %497, label %499, label %498

498:                                              ; preds = %494
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1191, ptr noundef nonnull @.str.6) #17
  br label %499

499:                                              ; preds = %494, %498
  %500 = load i32, ptr @flag_profile_values, align 4, !tbaa !39
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %504, label %502

502:                                              ; preds = %499
  %503 = load ptr, ptr %1, align 8, !tbaa !35
  call fastcc void @instrument_values(ptr noundef %503) #18
  br label %504

504:                                              ; preds = %502, %499
  call void @gsi_commit_edge_inserts() #17
  br label %505

505:                                              ; preds = %504, %491, %488
  call void @free_aux_for_edges() #17
  call fastcc void @VEC_histogram_value_heap_free(ptr noundef nonnull %1) #18
  call void @free_edge_list(ptr noundef %181) #17
  call void @coverage_end_function() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @flow_call_edges_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_noreturn_fake_exit_edges() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 !prof !34 !PGOFuncName !84 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !34 !PGOFuncName !85 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !51
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !35
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !34 !PGOFuncName !86 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !34 !PGOFuncName !91 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !34 !PGOFuncName !92 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !95 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #18
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #4 !prof !34 !PGOFuncName !96 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  store ptr %4, ptr %0, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !98 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #18
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !100 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !79
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !101 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #18, !range !51
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 645, ptr noundef nonnull @.str.6) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #18
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !102 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !103
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !103
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_edge_list() local_unnamed_addr #2

; Function Attrs: optsize
declare void @alloc_aux_for_edges(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @compact_blocks() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_spanning_tree(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !105 {
  %2 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !67
  %4 = load ptr, ptr @cfun, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %13, %9 ], [ %7, %1 ]
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !106
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %9, !llvm.loop !107

15:                                               ; preds = %9, %1
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  tail call fastcc void @union_groups(ptr noundef %17, ptr noundef %7) #18
  %18 = icmp sgt i32 %3, 0
  br i1 %18, label %19, label %165

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %21 = zext nneg i32 %3 to i64
  br label %26

22:                                               ; preds = %74
  br i1 %18, label %23, label %165

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %25 = zext nneg i32 %3 to i64
  br label %81

26:                                               ; preds = %19, %74
  %27 = phi i64 [ 0, %19 ], [ %75, %74 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !69
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !60
  %33 = and i32 %32, 22
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !61
  %38 = load ptr, ptr @cfun, align 8, !tbaa !35
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !41
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = icmp eq ptr %37, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %35, %26
  %45 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !71
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 4
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = load ptr, ptr %30, align 8, !tbaa !63
  %52 = tail call fastcc ptr @find_group(ptr noundef %51) #18
  %53 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !61
  %55 = tail call fastcc ptr @find_group(ptr noundef %54) #18
  %56 = icmp eq ptr %52, %55
  br i1 %56, label %74, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %30, align 8, !tbaa !63
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !65
  %64 = load ptr, ptr %53, align 8, !tbaa !61
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !65
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %58, ptr noundef nonnull @.str.40, i32 noundef %63, i32 noundef %66) #18
  br label %68

68:                                               ; preds = %60, %57
  %69 = load ptr, ptr %45, align 8, !tbaa !71
  %70 = load i8, ptr %69, align 4
  %71 = or i8 %70, 2
  store i8 %71, ptr %69, align 4
  %72 = load ptr, ptr %30, align 8, !tbaa !63
  %73 = load ptr, ptr %53, align 8, !tbaa !61
  tail call fastcc void @union_groups(ptr noundef %72, ptr noundef %73) #18
  br label %74

74:                                               ; preds = %68, %50, %44, %35
  %75 = add nuw nsw i64 %27, 1
  %76 = icmp eq i64 %75, %21
  br i1 %76, label %22, label %26, !llvm.loop !108

77:                                               ; preds = %125
  br i1 %18, label %78, label %165

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %80 = zext nneg i32 %3 to i64
  br label %128

81:                                               ; preds = %23, %125
  %82 = phi i64 [ 0, %23 ], [ %126, %125 ]
  %83 = load ptr, ptr %24, align 8, !tbaa !69
  %84 = getelementptr inbounds ptr, ptr %83, i64 %82
  %85 = load ptr, ptr %84, align 8, !tbaa !35
  %86 = load ptr, ptr %85, align 8, !tbaa !63
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !99
  %89 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %88) #18
  %90 = icmp ugt i32 %89, 1
  br i1 %90, label %91, label %125

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !61
  %94 = load ptr, ptr %93, align 8, !tbaa !109
  %95 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %94) #18
  %96 = icmp ugt i32 %95, 1
  br i1 %96, label %97, label %125

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !71
  %100 = load i8, ptr %99, align 4
  %101 = and i8 %100, 4
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %97
  %104 = tail call fastcc ptr @find_group(ptr noundef nonnull %86) #18
  %105 = load ptr, ptr %92, align 8, !tbaa !61
  %106 = tail call fastcc ptr @find_group(ptr noundef %105) #18
  %107 = icmp eq ptr %104, %106
  br i1 %107, label %125, label %108

108:                                              ; preds = %103
  %109 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %110 = icmp eq ptr %109, null
  br i1 %110, label %119, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %85, align 8, !tbaa !63
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 9
  %114 = load i32, ptr %113, align 8, !tbaa !65
  %115 = load ptr, ptr %92, align 8, !tbaa !61
  %116 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 9
  %117 = load i32, ptr %116, align 8, !tbaa !65
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %109, ptr noundef nonnull @.str.41, i32 noundef %114, i32 noundef %117) #18
  br label %119

119:                                              ; preds = %111, %108
  %120 = load ptr, ptr %98, align 8, !tbaa !71
  %121 = load i8, ptr %120, align 4
  %122 = or i8 %121, 2
  store i8 %122, ptr %120, align 4
  %123 = load ptr, ptr %85, align 8, !tbaa !63
  %124 = load ptr, ptr %92, align 8, !tbaa !61
  tail call fastcc void @union_groups(ptr noundef %123, ptr noundef %124) #18
  br label %125

125:                                              ; preds = %119, %103, %97, %91, %81
  %126 = add nuw nsw i64 %82, 1
  %127 = icmp eq i64 %126, %25
  br i1 %127, label %77, label %81, !llvm.loop !110

128:                                              ; preds = %78, %162
  %129 = phi i64 [ 0, %78 ], [ %163, %162 ]
  %130 = load ptr, ptr %79, align 8, !tbaa !69
  %131 = getelementptr inbounds ptr, ptr %130, i64 %129
  %132 = load ptr, ptr %131, align 8, !tbaa !35
  %133 = getelementptr inbounds %struct.edge_def, ptr %132, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !71
  %135 = load i8, ptr %134, align 4
  %136 = and i8 %135, 4
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %162

138:                                              ; preds = %128
  %139 = load ptr, ptr %132, align 8, !tbaa !63
  %140 = tail call fastcc ptr @find_group(ptr noundef %139) #18
  %141 = getelementptr inbounds %struct.edge_def, ptr %132, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !61
  %143 = tail call fastcc ptr @find_group(ptr noundef %142) #18
  %144 = icmp eq ptr %140, %143
  br i1 %144, label %162, label %145

145:                                              ; preds = %138
  %146 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %147 = icmp eq ptr %146, null
  br i1 %147, label %156, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr %132, align 8, !tbaa !63
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %149, i64 0, i32 9
  %151 = load i32, ptr %150, align 8, !tbaa !65
  %152 = load ptr, ptr %141, align 8, !tbaa !61
  %153 = getelementptr inbounds %struct.basic_block_def, ptr %152, i64 0, i32 9
  %154 = load i32, ptr %153, align 8, !tbaa !65
  %155 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %146, ptr noundef nonnull @.str.42, i32 noundef %151, i32 noundef %154) #18
  br label %156

156:                                              ; preds = %148, %145
  %157 = load ptr, ptr %133, align 8, !tbaa !71
  %158 = load i8, ptr %157, align 4
  %159 = or i8 %158, 2
  store i8 %159, ptr %157, align 4
  %160 = load ptr, ptr %132, align 8, !tbaa !63
  %161 = load ptr, ptr %141, align 8, !tbaa !61
  tail call fastcc void @union_groups(ptr noundef %160, ptr noundef %161) #18
  br label %162

162:                                              ; preds = %156, %138, %128
  %163 = add nuw nsw i64 %129, 1
  %164 = icmp eq i64 %163, %80
  br i1 %164, label %165, label %128, !llvm.loop !111

165:                                              ; preds = %162, %15, %22, %77
  %166 = load ptr, ptr @cfun, align 8, !tbaa !35
  %167 = getelementptr inbounds %struct.function, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !41
  %169 = load ptr, ptr %168, align 8, !tbaa !35
  %170 = icmp eq ptr %169, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %165, %171
  %172 = phi ptr [ %175, %171 ], [ %169, %165 ]
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %172, i64 0, i32 2
  store ptr null, ptr %173, align 8, !tbaa !106
  %174 = getelementptr inbounds %struct.basic_block_def, ptr %172, i64 0, i32 6
  %175 = load ptr, ptr %174, align 8, !tbaa !35
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %171, !llvm.loop !112

177:                                              ; preds = %171, %165
  ret void
}

; Function Attrs: optsize
declare i32 @coverage_begin_output() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @gcov_write_tag(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gcov_write_unsigned(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gcov_write_length(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_location(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !34 !PGOFuncName !113 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store ptr null, ptr @output_location.prev_file_name, align 8, !tbaa !35
  br label %40

7:                                                ; preds = %4
  %8 = load ptr, ptr @output_location.prev_file_name, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %8) #18
  %12 = icmp ne i32 %11, 0
  %13 = load i32, ptr @output_location.prev_line, align 4, !tbaa !39
  %14 = icmp ne i32 %13, %1
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %10
  %17 = load i32, ptr %2, align 4, !tbaa !39
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %31

19:                                               ; preds = %7
  %20 = load i32, ptr %2, align 4, !tbaa !39
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr @output_location.prev_line, align 4, !tbaa !39
  %24 = icmp ne i32 %23, %1
  %25 = zext i1 %24 to i8
  br label %33

26:                                               ; preds = %19, %16
  %27 = tail call i32 @gcov_write_tag(i32 noundef 21299200) #17
  store i32 %27, ptr %2, align 4, !tbaa !39
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !65
  %30 = add nsw i32 %29, -1
  tail call void @gcov_write_unsigned(i32 noundef %30) #17
  br label %33

31:                                               ; preds = %16
  %32 = zext i1 %14 to i8
  br i1 %12, label %33, label %36

33:                                               ; preds = %22, %26, %31
  %34 = phi i8 [ 1, %26 ], [ %32, %31 ], [ %25, %22 ]
  store ptr %0, ptr @output_location.prev_file_name, align 8, !tbaa !35
  tail call void @gcov_write_unsigned(i32 noundef 0) #17
  %35 = load ptr, ptr @output_location.prev_file_name, align 8, !tbaa !35
  tail call void @gcov_write_string(ptr noundef %35) #17
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i8 [ %34, %33 ], [ %32, %31 ]
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  tail call void @gcov_write_unsigned(i32 noundef %1) #17
  br label %40

40:                                               ; preds = %6, %39
  %41 = phi i32 [ %1, %39 ], [ -1, %6 ]
  store i32 %41, ptr @output_location.prev_line, align 4, !tbaa !39
  br label %42

42:                                               ; preds = %40, %10, %36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !34 !PGOFuncName !114 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !90
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_filename(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !115 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #18
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %3) #17
  %4 = load ptr, ptr %2, align 8, !tbaa !56
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_lineno(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !116 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #18
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %3) #17
  %4 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !58
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #4 !prof !34 !PGOFuncName !117 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  store ptr %4, ptr %0, align 8, !tbaa !87
  ret void
}

; Function Attrs: optsize
declare void @gcov_write_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @find_values_to_profile(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_branch_probabilities() unnamed_addr #0 !prof !34 !PGOFuncName !119 {
  %1 = alloca [20 x i32], align 16
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.edge_iterator, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.edge_iterator, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct.edge_iterator, align 8
  %14 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %1) #16
  %15 = tail call fastcc ptr @get_exec_counts() #18
  %16 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %638, label %18

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %16, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !120
  %21 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %16, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !122
  %23 = zext i32 %22 to i64
  %24 = mul nsw i64 %20, %23
  %25 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %16, i64 0, i32 4
  %26 = load i64, ptr %25, align 8, !tbaa !123
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.18) #17
  %29 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %29, i64 0, i32 4
  %31 = load i64, ptr %30, align 8, !tbaa !123
  br label %32

32:                                               ; preds = %28, %18
  %33 = phi i64 [ %31, %28 ], [ %26, %18 ]
  %34 = phi ptr [ %29, %28 ], [ %16, %18 ]
  %35 = phi ptr [ null, %28 ], [ %15, %18 ]
  %36 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %34, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !124
  %38 = icmp slt i64 %37, %33
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.19) #17
  br label %40

40:                                               ; preds = %39, %32
  %41 = phi ptr [ null, %39 ], [ %35, %32 ]
  tail call void @alloc_aux_for_blocks(i32 noundef 24) #17
  %42 = load ptr, ptr @cfun, align 8, !tbaa !35
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !41
  %45 = load ptr, ptr %44, align 8, !tbaa !35, !nonnull !125, !noundef !125
  %46 = getelementptr inbounds i8, ptr %3, i64 8
  br label %47

47:                                               ; preds = %40, %95
  %48 = phi ptr [ %45, %40 ], [ %97, %95 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 1
  %50 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %49) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !49
  store ptr %50, ptr %46, align 8, !tbaa.struct !50
  %51 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %50, ptr noundef nonnull %2) #18, !range !51
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 2
  br label %55

55:                                               ; preds = %53, %67
  %56 = load ptr, ptr %2, align 8, !tbaa !35
  %57 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !71
  %59 = load i8, ptr %58, align 4
  %60 = and i8 %59, 4
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load ptr, ptr %54, align 8, !tbaa !106
  %64 = getelementptr inbounds %struct.bb_info, ptr %63, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !126
  %66 = add nsw i64 %65, 1
  store i64 %66, ptr %64, align 8, !tbaa !126
  br label %67

67:                                               ; preds = %55, %62
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %68 = load i32, ptr %3, align 8
  %69 = load ptr, ptr %46, align 8
  %70 = call fastcc zeroext i8 @ei_cond(i32 %68, ptr %69, ptr noundef nonnull %2) #18, !range !51
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %55, !llvm.loop !128

72:                                               ; preds = %67, %47
  %73 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %48) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !49
  store ptr %73, ptr %46, align 8, !tbaa.struct !50
  %74 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %73, ptr noundef nonnull %2) #18, !range !51
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 2
  br label %78

78:                                               ; preds = %76, %90
  %79 = load ptr, ptr %2, align 8, !tbaa !35
  %80 = getelementptr inbounds %struct.edge_def, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !71
  %82 = load i8, ptr %81, align 4
  %83 = and i8 %82, 4
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load ptr, ptr %77, align 8, !tbaa !106
  %87 = getelementptr inbounds %struct.bb_info, ptr %86, i64 0, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !129
  %89 = add nsw i64 %88, 1
  store i64 %89, ptr %87, align 8, !tbaa !129
  br label %90

90:                                               ; preds = %78, %85
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %91 = load i32, ptr %3, align 8
  %92 = load ptr, ptr %46, align 8
  %93 = call fastcc zeroext i8 @ei_cond(i32 %91, ptr %92, ptr noundef nonnull %2) #18, !range !51
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %78, !llvm.loop !130

95:                                               ; preds = %90, %72
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !35
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %47, !llvm.loop !131

99:                                               ; preds = %95
  %100 = load ptr, ptr @cfun, align 8, !tbaa !35
  %101 = getelementptr inbounds %struct.function, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !41
  %103 = load ptr, ptr %102, align 8, !tbaa !43
  %104 = getelementptr inbounds %struct.control_flow_graph, ptr %102, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !48
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !106
  %108 = getelementptr inbounds %struct.bb_info, ptr %107, i64 0, i32 1
  store i64 2, ptr %108, align 8, !tbaa !126
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %103, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !106
  %111 = getelementptr inbounds %struct.bb_info, ptr %110, i64 0, i32 2
  store i64 2, ptr %111, align 8, !tbaa !129
  %112 = tail call fastcc i32 @read_profile_edge_counts(ptr noundef %41) #18
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %99
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %113, ptr noundef nonnull @.str.20, i32 noundef %112) #18
  br label %117

117:                                              ; preds = %115, %99
  %118 = getelementptr inbounds i8, ptr %7, i64 8
  %119 = getelementptr inbounds i8, ptr %5, i64 8
  %120 = getelementptr inbounds i8, ptr %9, i64 8
  %121 = getelementptr inbounds i8, ptr %11, i64 8
  br label %124

122:                                              ; preds = %305
  %123 = icmp eq i32 %306, 0
  br i1 %123, label %310, label %124, !llvm.loop !132

124:                                              ; preds = %117, %122
  %125 = phi i32 [ 0, %117 ], [ %126, %122 ]
  %126 = add nuw nsw i32 %125, 1
  %127 = load ptr, ptr @cfun, align 8, !tbaa !35
  %128 = getelementptr inbounds %struct.function, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !41
  %130 = getelementptr inbounds %struct.control_flow_graph, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !35
  %132 = icmp eq ptr %131, null
  br i1 %132, label %310, label %133

133:                                              ; preds = %124, %305
  %134 = phi ptr [ %308, %305 ], [ %131, %124 ]
  %135 = phi i32 [ %306, %305 ], [ 0, %124 ]
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !106
  %138 = load i8, ptr %137, align 8
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %188

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.bb_info, ptr %137, i64 0, i32 1
  %143 = load i64, ptr %142, align 8, !tbaa !126
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %165

145:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 1
  %147 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %146) #18
  store i32 0, ptr %5, align 8, !tbaa.struct !49
  store ptr %147, ptr %119, align 8, !tbaa.struct !50
  %148 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %147, ptr noundef nonnull %4) #18, !range !51
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %145, %150
  %151 = phi i64 [ %155, %150 ], [ 0, %145 ]
  %152 = load ptr, ptr %4, align 8, !tbaa !35
  %153 = getelementptr inbounds %struct.edge_def, ptr %152, i64 0, i32 9
  %154 = load i64, ptr %153, align 8, !tbaa !70
  %155 = add nsw i64 %154, %151
  call fastcc void @ei_next(ptr noundef nonnull %5) #18
  %156 = load i32, ptr %5, align 8
  %157 = load ptr, ptr %119, align 8
  %158 = call fastcc zeroext i8 @ei_cond(i32 %156, ptr %157, ptr noundef nonnull %4) #18, !range !51
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %150, !llvm.loop !133

160:                                              ; preds = %150, %145
  %161 = phi i64 [ 0, %145 ], [ %155, %150 ]
  %162 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 8
  store i64 %161, ptr %162, align 8, !tbaa !134
  %163 = load i8, ptr %137, align 8
  %164 = or i8 %163, 1
  store i8 %164, ptr %137, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %188

165:                                              ; preds = %141
  %166 = getelementptr inbounds %struct.bb_info, ptr %137, i64 0, i32 2
  %167 = load i64, ptr %166, align 8, !tbaa !129
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %188

169:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %170 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %134) #18
  store i32 0, ptr %7, align 8, !tbaa.struct !49
  store ptr %170, ptr %118, align 8, !tbaa.struct !50
  %171 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %170, ptr noundef nonnull %6) #18, !range !51
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %183, label %173

173:                                              ; preds = %169, %173
  %174 = phi i64 [ %178, %173 ], [ 0, %169 ]
  %175 = load ptr, ptr %6, align 8, !tbaa !35
  %176 = getelementptr inbounds %struct.edge_def, ptr %175, i64 0, i32 9
  %177 = load i64, ptr %176, align 8, !tbaa !70
  %178 = add nsw i64 %177, %174
  call fastcc void @ei_next(ptr noundef nonnull %7) #18
  %179 = load i32, ptr %7, align 8
  %180 = load ptr, ptr %118, align 8
  %181 = call fastcc zeroext i8 @ei_cond(i32 %179, ptr %180, ptr noundef nonnull %6) #18, !range !51
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %173, !llvm.loop !135

183:                                              ; preds = %173, %169
  %184 = phi i64 [ 0, %169 ], [ %178, %173 ]
  %185 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 8
  store i64 %184, ptr %185, align 8, !tbaa !134
  %186 = load i8, ptr %137, align 8
  %187 = or i8 %186, 1
  store i8 %187, ptr %137, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %188

188:                                              ; preds = %160, %183, %165, %133
  %189 = phi i8 [ %138, %133 ], [ %164, %160 ], [ %187, %183 ], [ %138, %165 ]
  %190 = phi i32 [ %135, %133 ], [ 1, %160 ], [ 1, %183 ], [ %135, %165 ]
  %191 = and i8 %189, 1
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %305, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.bb_info, ptr %137, i64 0, i32 1
  %195 = load i64, ptr %194, align 8, !tbaa !126
  %196 = icmp eq i64 %195, 1
  br i1 %196, label %197, label %250

197:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  %198 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 1
  %199 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %198) #18
  store i32 0, ptr %9, align 8, !tbaa.struct !49
  store ptr %199, ptr %120, align 8, !tbaa.struct !50
  %200 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %199, ptr noundef nonnull %8) #18, !range !51
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %212, label %202

202:                                              ; preds = %197, %202
  %203 = phi i64 [ %207, %202 ], [ 0, %197 ]
  %204 = load ptr, ptr %8, align 8, !tbaa !35
  %205 = getelementptr inbounds %struct.edge_def, ptr %204, i64 0, i32 9
  %206 = load i64, ptr %205, align 8, !tbaa !70
  %207 = add nsw i64 %206, %203
  call fastcc void @ei_next(ptr noundef nonnull %9) #18
  %208 = load i32, ptr %9, align 8
  %209 = load ptr, ptr %120, align 8
  %210 = call fastcc zeroext i8 @ei_cond(i32 %208, ptr %209, ptr noundef nonnull %8) #18, !range !51
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %202, !llvm.loop !136

212:                                              ; preds = %202, %197
  %213 = phi i64 [ 0, %197 ], [ %207, %202 ]
  store i32 0, ptr %9, align 8, !tbaa.struct !49
  store ptr %199, ptr %120, align 8, !tbaa.struct !50
  %214 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %199, ptr noundef nonnull %8) #18, !range !51
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %228, label %216

216:                                              ; preds = %212, %223
  %217 = load ptr, ptr %8, align 8, !tbaa !35
  %218 = getelementptr inbounds %struct.edge_def, ptr %217, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !71
  %220 = load i8, ptr %219, align 4
  %221 = and i8 %220, 5
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %216
  call fastcc void @ei_next(ptr noundef nonnull %9) #18
  %224 = load i32, ptr %9, align 8
  %225 = load ptr, ptr %120, align 8
  %226 = call fastcc zeroext i8 @ei_cond(i32 %224, ptr %225, ptr noundef nonnull %8) #18, !range !51
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %228, label %216, !llvm.loop !137

228:                                              ; preds = %223, %216, %212
  %229 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 8
  %230 = load i64, ptr %229, align 8, !tbaa !134
  %231 = sub nsw i64 %230, %213
  %232 = load ptr, ptr %8, align 8, !tbaa !35
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 566, ptr noundef nonnull @.str.6) #17
  br label %235

235:                                              ; preds = %228, %234
  %236 = getelementptr inbounds %struct.edge_def, ptr %232, i64 0, i32 3
  %237 = load ptr, ptr %236, align 8, !tbaa !71
  %238 = load i8, ptr %237, align 4
  %239 = or i8 %238, 1
  store i8 %239, ptr %237, align 4
  %240 = getelementptr inbounds %struct.edge_def, ptr %232, i64 0, i32 9
  store i64 %231, ptr %240, align 8, !tbaa !70
  %241 = load i64, ptr %194, align 8, !tbaa !126
  %242 = add nsw i64 %241, -1
  store i64 %242, ptr %194, align 8, !tbaa !126
  %243 = getelementptr inbounds %struct.edge_def, ptr %232, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !61
  %245 = getelementptr inbounds %struct.basic_block_def, ptr %244, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !106
  %247 = getelementptr inbounds %struct.bb_info, ptr %246, i64 0, i32 2
  %248 = load i64, ptr %247, align 8, !tbaa !129
  %249 = add nsw i64 %248, -1
  store i64 %249, ptr %247, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %250

250:                                              ; preds = %235, %193
  %251 = phi i32 [ 1, %235 ], [ %190, %193 ]
  %252 = getelementptr inbounds %struct.bb_info, ptr %137, i64 0, i32 2
  %253 = load i64, ptr %252, align 8, !tbaa !129
  %254 = icmp eq i64 %253, 1
  br i1 %254, label %255, label %305

255:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #16
  %256 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %134) #18
  store i32 0, ptr %11, align 8, !tbaa.struct !49
  store ptr %256, ptr %121, align 8, !tbaa.struct !50
  %257 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %256, ptr noundef nonnull %10) #18, !range !51
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %269, label %259

259:                                              ; preds = %255, %259
  %260 = phi i64 [ %264, %259 ], [ 0, %255 ]
  %261 = load ptr, ptr %10, align 8, !tbaa !35
  %262 = getelementptr inbounds %struct.edge_def, ptr %261, i64 0, i32 9
  %263 = load i64, ptr %262, align 8, !tbaa !70
  %264 = add nsw i64 %263, %260
  call fastcc void @ei_next(ptr noundef nonnull %11) #18
  %265 = load i32, ptr %11, align 8
  %266 = load ptr, ptr %121, align 8
  %267 = call fastcc zeroext i8 @ei_cond(i32 %265, ptr %266, ptr noundef nonnull %10) #18, !range !51
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %259, !llvm.loop !138

269:                                              ; preds = %259, %255
  %270 = phi i64 [ 0, %255 ], [ %264, %259 ]
  store i32 0, ptr %11, align 8, !tbaa.struct !49
  store ptr %256, ptr %121, align 8, !tbaa.struct !50
  %271 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %256, ptr noundef nonnull %10) #18, !range !51
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %285, label %273

273:                                              ; preds = %269, %280
  %274 = load ptr, ptr %10, align 8, !tbaa !35
  %275 = getelementptr inbounds %struct.edge_def, ptr %274, i64 0, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !71
  %277 = load i8, ptr %276, align 4
  %278 = and i8 %277, 5
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %285, label %280

280:                                              ; preds = %273
  call fastcc void @ei_next(ptr noundef nonnull %11) #18
  %281 = load i32, ptr %11, align 8
  %282 = load ptr, ptr %121, align 8
  %283 = call fastcc zeroext i8 @ei_cond(i32 %281, ptr %282, ptr noundef nonnull %10) #18, !range !51
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %285, label %273, !llvm.loop !139

285:                                              ; preds = %273, %280, %269
  %286 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 8
  %287 = load i64, ptr %286, align 8, !tbaa !134
  %288 = sub i64 %287, %270
  %289 = load ptr, ptr %10, align 8, !tbaa !35
  %290 = getelementptr inbounds %struct.edge_def, ptr %289, i64 0, i32 9
  %291 = load i64, ptr %290, align 8, !tbaa !70
  %292 = add nsw i64 %288, %291
  %293 = getelementptr inbounds %struct.edge_def, ptr %289, i64 0, i32 3
  %294 = load ptr, ptr %293, align 8, !tbaa !71
  %295 = load i8, ptr %294, align 4
  %296 = or i8 %295, 1
  store i8 %296, ptr %294, align 4
  store i64 %292, ptr %290, align 8, !tbaa !70
  %297 = load i64, ptr %252, align 8, !tbaa !129
  %298 = add nsw i64 %297, -1
  store i64 %298, ptr %252, align 8, !tbaa !129
  %299 = load ptr, ptr %289, align 8, !tbaa !63
  %300 = getelementptr inbounds %struct.basic_block_def, ptr %299, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !106
  %302 = getelementptr inbounds %struct.bb_info, ptr %301, i64 0, i32 1
  %303 = load i64, ptr %302, align 8, !tbaa !126
  %304 = add nsw i64 %303, -1
  store i64 %304, ptr %302, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %305

305:                                              ; preds = %250, %285, %188
  %306 = phi i32 [ 1, %285 ], [ %251, %250 ], [ %190, %188 ]
  %307 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 5
  %308 = load ptr, ptr %307, align 8, !tbaa !35
  %309 = icmp eq ptr %308, null
  br i1 %309, label %122, label %133, !llvm.loop !140

310:                                              ; preds = %124, %122
  %311 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %316

313:                                              ; preds = %310
  %314 = load i32, ptr @total_num_passes, align 4, !tbaa !39
  %315 = add nsw i32 %314, %126
  store i32 %315, ptr @total_num_passes, align 4, !tbaa !39
  br label %324

316:                                              ; preds = %310
  %317 = load i32, ptr @dump_flags, align 4, !tbaa !39
  tail call void @dump_flow_info(ptr noundef nonnull %311, i32 noundef %317) #17
  %318 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %319 = load i32, ptr @total_num_passes, align 4, !tbaa !39
  %320 = add nsw i32 %319, %126
  store i32 %320, ptr @total_num_passes, align 4, !tbaa !39
  %321 = icmp eq ptr %318, null
  br i1 %321, label %324, label %322

322:                                              ; preds = %316
  %323 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %318, ptr noundef nonnull @.str.21, i32 noundef %126) #18
  br label %324

324:                                              ; preds = %313, %322, %316
  %325 = load ptr, ptr @cfun, align 8, !tbaa !35
  %326 = getelementptr inbounds %struct.function, ptr %325, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !41
  %328 = load ptr, ptr %327, align 8, !tbaa !43
  %329 = getelementptr inbounds %struct.basic_block_def, ptr %328, i64 0, i32 6
  %330 = load ptr, ptr %329, align 8, !tbaa !45
  %331 = getelementptr inbounds %struct.control_flow_graph, ptr %327, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !48
  %333 = icmp eq ptr %330, %332
  br i1 %333, label %357, label %334

334:                                              ; preds = %324, %348
  %335 = phi ptr [ %349, %348 ], [ %325, %324 ]
  %336 = phi ptr [ %351, %348 ], [ %330, %324 ]
  %337 = getelementptr inbounds %struct.basic_block_def, ptr %336, i64 0, i32 2
  %338 = load ptr, ptr %337, align 8, !tbaa !106
  %339 = getelementptr inbounds %struct.bb_info, ptr %338, i64 0, i32 1
  %340 = load i64, ptr %339, align 8, !tbaa !126
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %334
  %343 = getelementptr inbounds %struct.bb_info, ptr %338, i64 0, i32 2
  %344 = load i64, ptr %343, align 8, !tbaa !129
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %348, label %346

346:                                              ; preds = %342, %334
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 615, ptr noundef nonnull @.str.6) #17
  %347 = load ptr, ptr @cfun, align 8, !tbaa !35
  br label %348

348:                                              ; preds = %346, %342
  %349 = phi ptr [ %347, %346 ], [ %335, %342 ]
  %350 = getelementptr inbounds %struct.basic_block_def, ptr %336, i64 0, i32 6
  %351 = load ptr, ptr %350, align 8, !tbaa !45
  %352 = getelementptr inbounds %struct.function, ptr %349, i64 0, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !41
  %354 = getelementptr inbounds %struct.control_flow_graph, ptr %353, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !48
  %356 = icmp eq ptr %351, %355
  br i1 %356, label %357, label %334, !llvm.loop !141

357:                                              ; preds = %348, %324
  %358 = tail call fastcc zeroext i8 @is_inconsistent() #18, !range !51
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %374, label %360

360:                                              ; preds = %357
  %361 = load i32, ptr @flag_profile_correction, align 4, !tbaa !39
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %373, label %363

363:                                              ; preds = %360
  %364 = load i1, ptr @compute_branch_probabilities.informed, align 4
  br i1 %364, label %367, label %365

365:                                              ; preds = %363
  store i1 true, ptr @compute_branch_probabilities.informed, align 4
  %366 = load i32, ptr @input_location, align 4, !tbaa !39
  tail call void (i32, ptr, ...) @inform(i32 noundef %366, ptr noundef nonnull @.str.22) #17
  br label %367

367:                                              ; preds = %365, %363
  tail call fastcc void @correct_negative_edge_counts() #18
  tail call fastcc void @set_bb_counts() #18
  %368 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %369 = icmp eq ptr %368, null
  br i1 %369, label %372, label %370

370:                                              ; preds = %367
  %371 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 24, i64 1, ptr nonnull %368)
  br label %372

372:                                              ; preds = %370, %367
  tail call void @mcf_smooth_cfg() #17
  br label %374

373:                                              ; preds = %360
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24) #17
  br label %374

374:                                              ; preds = %372, %373, %357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false), !tbaa !39
  %375 = load ptr, ptr @cfun, align 8, !tbaa !35
  %376 = getelementptr inbounds %struct.function, ptr %375, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !41
  %378 = load ptr, ptr %377, align 8, !tbaa !35
  %379 = icmp eq ptr %378, null
  br i1 %379, label %589, label %380

380:                                              ; preds = %374
  %381 = getelementptr inbounds i8, ptr %13, i64 8
  br label %382

382:                                              ; preds = %380, %584
  %383 = phi ptr [ %378, %380 ], [ %587, %584 ]
  %384 = phi i32 [ 0, %380 ], [ %585, %584 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #16
  %385 = getelementptr inbounds %struct.basic_block_def, ptr %383, i64 0, i32 8
  %386 = load i64, ptr %385, align 8, !tbaa !134
  %387 = icmp slt i64 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %382
  %389 = getelementptr inbounds %struct.basic_block_def, ptr %383, i64 0, i32 9
  %390 = load i32, ptr %389, align 8, !tbaa !65
  %391 = trunc i64 %386 to i32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.25, i32 noundef %390, i32 noundef %391) #17
  store i64 0, ptr %385, align 8, !tbaa !134
  br label %392

392:                                              ; preds = %388, %382
  %393 = getelementptr inbounds %struct.basic_block_def, ptr %383, i64 0, i32 1
  %394 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %393) #18
  store i32 0, ptr %13, align 8, !tbaa.struct !49
  store ptr %394, ptr %381, align 8, !tbaa.struct !50
  %395 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %394, ptr noundef nonnull %12) #18, !range !51
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %455, label %397

397:                                              ; preds = %392, %450
  %398 = load ptr, ptr %12, align 8, !tbaa !35
  %399 = getelementptr inbounds %struct.edge_def, ptr %398, i64 0, i32 9
  %400 = load i64, ptr %399, align 8, !tbaa !70
  %401 = icmp slt i64 %400, 0
  br i1 %401, label %402, label %411

402:                                              ; preds = %397
  %403 = getelementptr inbounds %struct.edge_def, ptr %398, i64 0, i32 1
  %404 = load ptr, ptr %403, align 8, !tbaa !61
  %405 = load ptr, ptr @cfun, align 8, !tbaa !35
  %406 = getelementptr inbounds %struct.function, ptr %405, i64 0, i32 1
  %407 = load ptr, ptr %406, align 8, !tbaa !41
  %408 = getelementptr inbounds %struct.control_flow_graph, ptr %407, i64 0, i32 1
  %409 = load ptr, ptr %408, align 8, !tbaa !48
  %410 = icmp eq ptr %404, %409
  br i1 %410, label %423, label %411

411:                                              ; preds = %402, %397
  %412 = load i64, ptr %385, align 8, !tbaa !134
  %413 = icmp sgt i64 %400, %412
  br i1 %413, label %414, label %433

414:                                              ; preds = %411
  %415 = getelementptr inbounds %struct.edge_def, ptr %398, i64 0, i32 1
  %416 = load ptr, ptr %415, align 8, !tbaa !61
  %417 = load ptr, ptr @cfun, align 8, !tbaa !35
  %418 = getelementptr inbounds %struct.function, ptr %417, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !41
  %420 = getelementptr inbounds %struct.control_flow_graph, ptr %419, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !48
  %422 = icmp eq ptr %416, %421
  br i1 %422, label %433, label %423

423:                                              ; preds = %414, %402
  %424 = tail call zeroext i8 @block_ends_with_call_p(ptr noundef nonnull %383) #17
  %425 = icmp eq i8 %424, 0
  %426 = load i64, ptr %399, align 8, !tbaa !70
  br i1 %425, label %433, label %427

427:                                              ; preds = %423
  %428 = icmp slt i64 %426, 0
  br i1 %428, label %431, label %429

429:                                              ; preds = %427
  %430 = load i64, ptr %385, align 8, !tbaa !134
  br label %431

431:                                              ; preds = %427, %429
  %432 = phi i64 [ %430, %429 ], [ 0, %427 ]
  store i64 %432, ptr %399, align 8, !tbaa !70
  br label %433

433:                                              ; preds = %423, %414, %411, %431
  %434 = phi i64 [ %432, %431 ], [ %400, %411 ], [ %400, %414 ], [ %426, %423 ]
  %435 = icmp slt i64 %434, 0
  br i1 %435, label %439, label %436

436:                                              ; preds = %433
  %437 = load i64, ptr %385, align 8, !tbaa !134
  %438 = icmp sgt i64 %434, %437
  br i1 %438, label %439, label %450

439:                                              ; preds = %436, %433
  %440 = load ptr, ptr %398, align 8, !tbaa !63
  %441 = getelementptr inbounds %struct.basic_block_def, ptr %440, i64 0, i32 9
  %442 = load i32, ptr %441, align 8, !tbaa !65
  %443 = getelementptr inbounds %struct.edge_def, ptr %398, i64 0, i32 1
  %444 = load ptr, ptr %443, align 8, !tbaa !61
  %445 = getelementptr inbounds %struct.basic_block_def, ptr %444, i64 0, i32 9
  %446 = load i32, ptr %445, align 8, !tbaa !65
  %447 = trunc i64 %434 to i32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.26, i32 noundef %442, i32 noundef %446, i32 noundef %447) #17
  %448 = load i64, ptr %385, align 8, !tbaa !134
  %449 = sdiv i64 %448, 2
  store i64 %449, ptr %399, align 8, !tbaa !70
  br label %450

450:                                              ; preds = %436, %439
  call fastcc void @ei_next(ptr noundef nonnull %13) #18
  %451 = load i32, ptr %13, align 8
  %452 = load ptr, ptr %381, align 8
  %453 = call fastcc zeroext i8 @ei_cond(i32 %451, ptr %452, ptr noundef nonnull %12) #18, !range !51
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %455, label %397, !llvm.loop !142

455:                                              ; preds = %450, %392
  %456 = load i64, ptr %385, align 8, !tbaa !134
  %457 = icmp eq i64 %456, 0
  br i1 %457, label %514, label %458

458:                                              ; preds = %455
  store i32 0, ptr %13, align 8, !tbaa.struct !49
  store ptr %394, ptr %381, align 8, !tbaa.struct !50
  %459 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %394, ptr noundef nonnull %12) #18, !range !51
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %476, label %461

461:                                              ; preds = %458, %461
  %462 = load ptr, ptr %12, align 8, !tbaa !35
  %463 = getelementptr inbounds %struct.edge_def, ptr %462, i64 0, i32 9
  %464 = load i64, ptr %463, align 8, !tbaa !70
  %465 = mul nsw i64 %464, 10000
  %466 = load i64, ptr %385, align 8, !tbaa !134
  %467 = sdiv i64 %466, 2
  %468 = add nsw i64 %467, %465
  %469 = sdiv i64 %468, %466
  %470 = trunc i64 %469 to i32
  %471 = getelementptr inbounds %struct.edge_def, ptr %462, i64 0, i32 8
  store i32 %470, ptr %471, align 4, !tbaa !143
  call fastcc void @ei_next(ptr noundef nonnull %13) #18
  %472 = load i32, ptr %13, align 8
  %473 = load ptr, ptr %381, align 8
  %474 = call fastcc zeroext i8 @ei_cond(i32 %472, ptr %473, ptr noundef nonnull %12) #18, !range !51
  %475 = icmp eq i8 %474, 0
  br i1 %475, label %476, label %461, !llvm.loop !144

476:                                              ; preds = %461, %458
  %477 = getelementptr inbounds %struct.basic_block_def, ptr %383, i64 0, i32 9
  %478 = load i32, ptr %477, align 8, !tbaa !65
  %479 = icmp sgt i32 %478, 1
  br i1 %479, label %480, label %584

480:                                              ; preds = %476
  %481 = tail call zeroext i8 @block_ends_with_condjump_p(ptr noundef nonnull %383) #17
  %482 = icmp eq i8 %481, 0
  br i1 %482, label %584, label %483

483:                                              ; preds = %480
  %484 = load ptr, ptr %393, align 8, !tbaa !99
  %485 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %484) #18
  %486 = icmp ugt i32 %485, 1
  br i1 %486, label %487, label %584

487:                                              ; preds = %483
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  store i32 0, ptr %13, align 8, !tbaa.struct !49
  store ptr %394, ptr %381, align 8, !tbaa.struct !50
  %488 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %394, ptr noundef nonnull %14) #18, !range !51
  %489 = icmp eq i8 %488, 0
  br i1 %489, label %501, label %490

490:                                              ; preds = %487, %496
  %491 = load ptr, ptr %14, align 8, !tbaa !35
  %492 = getelementptr inbounds %struct.edge_def, ptr %491, i64 0, i32 7
  %493 = load i32, ptr %492, align 8, !tbaa !60
  %494 = and i32 %493, 17
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %501, label %496

496:                                              ; preds = %490
  call fastcc void @ei_next(ptr noundef nonnull %13) #18
  %497 = load i32, ptr %13, align 8
  %498 = load ptr, ptr %381, align 8
  %499 = call fastcc zeroext i8 @ei_cond(i32 %497, ptr %498, ptr noundef nonnull %14) #18, !range !51
  %500 = icmp eq i8 %499, 0
  br i1 %500, label %501, label %490, !llvm.loop !145

501:                                              ; preds = %496, %490, %487
  %502 = load ptr, ptr %14, align 8, !tbaa !35
  %503 = getelementptr inbounds %struct.edge_def, ptr %502, i64 0, i32 8
  %504 = load i32, ptr %503, align 4, !tbaa !143
  %505 = sdiv i32 %504, 500
  %506 = add i32 %504, -10000
  %507 = icmp ult i32 %506, 500
  %508 = select i1 %507, i32 19, i32 %505
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [20 x i32], ptr %1, i64 0, i64 %509
  %511 = load i32, ptr %510, align 4, !tbaa !39
  %512 = add nsw i32 %511, 1
  store i32 %512, ptr %510, align 4, !tbaa !39
  %513 = add nsw i32 %384, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  br label %584

514:                                              ; preds = %455
  %515 = load ptr, ptr @cfun, align 8, !tbaa !35
  %516 = getelementptr inbounds %struct.function, ptr %515, i64 0, i32 1
  %517 = load ptr, ptr %516, align 8, !tbaa !41
  %518 = getelementptr inbounds %struct.control_flow_graph, ptr %517, i64 0, i32 7
  %519 = load i32, ptr %518, align 8, !tbaa !146
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %584

521:                                              ; preds = %514
  store i32 0, ptr %13, align 8, !tbaa.struct !49
  store ptr %394, ptr %381, align 8, !tbaa.struct !50
  %522 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %394, ptr noundef nonnull %12) #18, !range !51
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %557, label %524

524:                                              ; preds = %521, %524
  %525 = phi i32 [ %532, %524 ], [ 0, %521 ]
  %526 = load ptr, ptr %12, align 8, !tbaa !35
  %527 = getelementptr inbounds %struct.edge_def, ptr %526, i64 0, i32 7
  %528 = load i32, ptr %527, align 8, !tbaa !60
  %529 = and i32 %528, 30
  %530 = icmp eq i32 %529, 0
  %531 = zext i1 %530 to i32
  %532 = add nuw nsw i32 %525, %531
  call fastcc void @ei_next(ptr noundef nonnull %13) #18
  %533 = load i32, ptr %13, align 8
  %534 = load ptr, ptr %381, align 8
  %535 = call fastcc zeroext i8 @ei_cond(i32 %533, ptr %534, ptr noundef nonnull %12) #18, !range !51
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %537, label %524, !llvm.loop !147

537:                                              ; preds = %524
  %538 = icmp eq i32 %532, 0
  br i1 %538, label %557, label %539

539:                                              ; preds = %537
  store i32 0, ptr %13, align 8, !tbaa.struct !49
  store ptr %394, ptr %381, align 8, !tbaa.struct !50
  %540 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %394, ptr noundef nonnull %12) #18, !range !51
  %541 = icmp eq i8 %540, 0
  br i1 %541, label %571, label %542

542:                                              ; preds = %539, %550
  %543 = load ptr, ptr %12, align 8, !tbaa !35
  %544 = getelementptr inbounds %struct.edge_def, ptr %543, i64 0, i32 7
  %545 = load i32, ptr %544, align 8, !tbaa !60
  %546 = and i32 %545, 30
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %550

548:                                              ; preds = %542
  %549 = udiv i32 10000, %532
  br label %550

550:                                              ; preds = %542, %548
  %551 = phi i32 [ %549, %548 ], [ 0, %542 ]
  %552 = getelementptr inbounds %struct.edge_def, ptr %543, i64 0, i32 8
  store i32 %551, ptr %552, align 4
  call fastcc void @ei_next(ptr noundef nonnull %13) #18
  %553 = load i32, ptr %13, align 8
  %554 = load ptr, ptr %381, align 8
  %555 = call fastcc zeroext i8 @ei_cond(i32 %553, ptr %554, ptr noundef nonnull %12) #18, !range !51
  %556 = icmp eq i8 %555, 0
  br i1 %556, label %571, label %542, !llvm.loop !148

557:                                              ; preds = %521, %537
  %558 = load ptr, ptr %393, align 8, !tbaa !99
  %559 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %558) #18
  store i32 0, ptr %13, align 8, !tbaa.struct !49
  store ptr %394, ptr %381, align 8, !tbaa.struct !50
  %560 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %394, ptr noundef nonnull %12) #18, !range !51
  %561 = icmp eq i8 %560, 0
  br i1 %561, label %571, label %562

562:                                              ; preds = %557
  %563 = sdiv i32 10000, %559
  br label %564

564:                                              ; preds = %562, %564
  %565 = load ptr, ptr %12, align 8, !tbaa !35
  %566 = getelementptr inbounds %struct.edge_def, ptr %565, i64 0, i32 8
  store i32 %563, ptr %566, align 4, !tbaa !143
  call fastcc void @ei_next(ptr noundef nonnull %13) #18
  %567 = load i32, ptr %13, align 8
  %568 = load ptr, ptr %381, align 8
  %569 = call fastcc zeroext i8 @ei_cond(i32 %567, ptr %568, ptr noundef nonnull %12) #18, !range !51
  %570 = icmp eq i8 %569, 0
  br i1 %570, label %571, label %564, !llvm.loop !149

571:                                              ; preds = %550, %564, %539, %557
  %572 = getelementptr inbounds %struct.basic_block_def, ptr %383, i64 0, i32 9
  %573 = load i32, ptr %572, align 8, !tbaa !65
  %574 = icmp sgt i32 %573, 1
  br i1 %574, label %575, label %584

575:                                              ; preds = %571
  %576 = tail call zeroext i8 @block_ends_with_condjump_p(ptr noundef nonnull %383) #17
  %577 = icmp eq i8 %576, 0
  br i1 %577, label %584, label %578

578:                                              ; preds = %575
  %579 = load ptr, ptr %393, align 8, !tbaa !99
  %580 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %579) #18
  %581 = icmp ugt i32 %580, 1
  %582 = zext i1 %581 to i32
  %583 = add nsw i32 %384, %582
  br label %584

584:                                              ; preds = %578, %571, %575, %514, %476, %480, %483, %501
  %585 = phi i32 [ %513, %501 ], [ %384, %483 ], [ %384, %480 ], [ %384, %476 ], [ %384, %514 ], [ %384, %575 ], [ %384, %571 ], [ %583, %578 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  %586 = getelementptr inbounds %struct.basic_block_def, ptr %383, i64 0, i32 6
  %587 = load ptr, ptr %586, align 8, !tbaa !35
  %588 = icmp eq ptr %587, null
  br i1 %588, label %589, label %382, !llvm.loop !150

589:                                              ; preds = %584, %374
  %590 = phi i32 [ 0, %374 ], [ %585, %584 ]
  %591 = tail call i32 @counts_to_freqs() #17
  %592 = load ptr, ptr @cfun, align 8, !tbaa !35
  %593 = getelementptr inbounds %struct.function, ptr %592, i64 0, i32 1
  %594 = load ptr, ptr %593, align 8, !tbaa !41
  %595 = getelementptr inbounds %struct.control_flow_graph, ptr %594, i64 0, i32 7
  store i32 2, ptr %595, align 8, !tbaa !146
  %596 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %597 = icmp eq ptr %596, null
  br i1 %597, label %637, label %598

598:                                              ; preds = %589
  %599 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %596, ptr noundef nonnull @.str.27, i32 noundef %590) #18
  %600 = icmp eq i32 %590, 0
  br i1 %600, label %620, label %601

601:                                              ; preds = %598, %601
  %602 = phi i64 [ %618, %601 ], [ 0, %598 ]
  %603 = trunc i64 %602 to i32
  %604 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %605 = getelementptr inbounds [20 x i32], ptr %1, i64 0, i64 %602
  %606 = load i32, ptr %605, align 4, !tbaa !39
  %607 = sub nuw nsw i64 19, %602
  %608 = getelementptr inbounds [20 x i32], ptr %1, i64 0, i64 %607
  %609 = load i32, ptr %608, align 4, !tbaa !39
  %610 = add nsw i32 %609, %606
  %611 = mul nsw i32 %610, 100
  %612 = sdiv i32 %611, %590
  %613 = mul nuw nsw i32 %603, 5
  %614 = add nuw nsw i32 %613, 5
  %615 = trunc i64 %602 to i32
  %616 = mul i32 %615, 5
  %617 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %604, ptr noundef nonnull @.str.16, i32 noundef %612, i32 noundef %616, i32 noundef %614) #18
  %618 = add nuw nsw i64 %602, 1
  %619 = icmp eq i64 %618, 10
  br i1 %619, label %620, label %601, !llvm.loop !151

620:                                              ; preds = %601, %598
  %621 = load i32, ptr @total_num_branches, align 4, !tbaa !39
  %622 = add nsw i32 %621, %590
  store i32 %622, ptr @total_num_branches, align 4, !tbaa !39
  br label %623

623:                                              ; preds = %623, %620
  %624 = phi i64 [ 0, %620 ], [ %630, %623 ]
  %625 = getelementptr inbounds [20 x i32], ptr %1, i64 0, i64 %624
  %626 = load <4 x i32>, ptr %625, align 16, !tbaa !39
  %627 = getelementptr inbounds [20 x i32], ptr @total_hist_br_prob, i64 0, i64 %624
  %628 = load <4 x i32>, ptr %627, align 16, !tbaa !39
  %629 = add nsw <4 x i32> %628, %626
  store <4 x i32> %629, ptr %627, align 16, !tbaa !39
  %630 = add nuw i64 %624, 4
  %631 = icmp eq i64 %630, 20
  br i1 %631, label %632, label %623, !llvm.loop !152

632:                                              ; preds = %623
  %633 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %634 = tail call i32 @fputc(i32 noundef 10, ptr noundef %633) #18
  %635 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %636 = tail call i32 @fputc(i32 noundef 10, ptr noundef %635) #18
  br label %637

637:                                              ; preds = %632, %589
  tail call void @free_aux_for_blocks() #17
  br label %638

638:                                              ; preds = %0, %637
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_value_histograms(ptr noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !155 {
  %2 = alloca [7 x i32], align 16
  %3 = alloca [7 x ptr], align 16
  %4 = alloca [7 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %2, i8 0, i64 28, i1 false), !tbaa !39
  %5 = tail call fastcc i32 @VEC_histogram_value_base_length(ptr noundef %0) #18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %1, %7
  %8 = phi i32 [ %18, %7 ], [ 0, %1 ]
  %9 = tail call fastcc ptr @VEC_histogram_value_base_index(ptr noundef %0, i32 noundef %8) #18
  %10 = getelementptr inbounds %struct.histogram_value_t, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !156
  %12 = getelementptr inbounds %struct.histogram_value_t, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !159
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [7 x i32], ptr %2, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !39
  %17 = add i32 %16, %11
  store i32 %17, ptr %15, align 4, !tbaa !39
  %18 = add nuw i32 %8, 1
  %19 = icmp eq i32 %18, %5
  br i1 %19, label %20, label %7, !llvm.loop !160

20:                                               ; preds = %7, %1
  br label %21

21:                                               ; preds = %20, %34
  %22 = phi i64 [ %27, %34 ], [ 0, %20 ]
  %23 = phi i32 [ %36, %34 ], [ 0, %20 ]
  %24 = getelementptr inbounds [7 x i32], ptr %2, i64 0, i64 %22
  %25 = load i32, ptr %24, align 4, !tbaa !39
  %26 = icmp eq i32 %25, 0
  %27 = add nuw nsw i64 %22, 1
  br i1 %26, label %34, label %28

28:                                               ; preds = %21
  %29 = trunc i64 %27 to i32
  %30 = tail call ptr @get_coverage_counts(i32 noundef %29, i32 noundef %25, ptr noundef null) #17
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, i32 %23, i32 1
  %33 = getelementptr inbounds [7 x ptr], ptr %4, i64 0, i64 %22
  store ptr %30, ptr %33, align 8, !tbaa !35
  br label %34

34:                                               ; preds = %21, %28
  %35 = phi ptr [ %30, %28 ], [ null, %21 ]
  %36 = phi i32 [ %32, %28 ], [ %23, %21 ]
  %37 = getelementptr inbounds [7 x ptr], ptr %3, i64 0, i64 %22
  store ptr %35, ptr %37, align 8
  %38 = icmp eq i64 %27, 7
  br i1 %38, label %39, label %21, !llvm.loop !161

39:                                               ; preds = %34
  %40 = icmp eq i32 %36, 0
  br i1 %40, label %89, label %41

41:                                               ; preds = %39
  %42 = tail call fastcc i32 @VEC_histogram_value_base_length(ptr noundef %0) #18
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %79, label %44

44:                                               ; preds = %41, %75
  %45 = phi i32 [ %76, %75 ], [ 0, %41 ]
  %46 = tail call fastcc ptr @VEC_histogram_value_base_index(ptr noundef %0, i32 noundef %45) #18
  %47 = getelementptr inbounds %struct.anon, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !162
  %49 = getelementptr inbounds %struct.histogram_value_t, ptr %46, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !159
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [7 x ptr], ptr %4, i64 0, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.histogram_value_t, ptr %46, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !156
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i64, ptr %53, i64 %56
  store ptr %57, ptr %52, align 8, !tbaa !35
  %58 = load ptr, ptr @cfun, align 8, !tbaa !35
  tail call void @gimple_add_histogram_value(ptr noundef %58, ptr noundef %48, ptr noundef %46) #17
  %59 = load i32, ptr %54, align 4, !tbaa !156
  %60 = zext i32 %59 to i64
  %61 = shl nuw nsw i64 %60, 3
  %62 = tail call ptr @xmalloc(i64 noundef %61) #17
  %63 = getelementptr inbounds %struct.anon, ptr %46, i64 0, i32 2
  store ptr %62, ptr %63, align 8, !tbaa !163
  %64 = load i32, ptr %54, align 4, !tbaa !156
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %44
  %67 = zext i32 %64 to i64
  br label %68

68:                                               ; preds = %66, %68
  %69 = phi i64 [ 0, %66 ], [ %73, %68 ]
  %70 = getelementptr inbounds i64, ptr %53, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !164
  %72 = getelementptr inbounds i64, ptr %62, i64 %69
  store i64 %71, ptr %72, align 8, !tbaa !164
  %73 = add nuw nsw i64 %69, 1
  %74 = icmp eq i64 %73, %67
  br i1 %74, label %75, label %68, !llvm.loop !165

75:                                               ; preds = %68, %44
  %76 = add nuw i32 %45, 1
  %77 = tail call fastcc i32 @VEC_histogram_value_base_length(ptr noundef %0) #18
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %44, label %79, !llvm.loop !166

79:                                               ; preds = %75, %41
  br label %80

80:                                               ; preds = %79, %86
  %81 = phi i64 [ %87, %86 ], [ 0, %79 ]
  %82 = getelementptr inbounds [7 x ptr], ptr %3, i64 0, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !35
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  tail call void @free(ptr noundef nonnull %83) #18
  br label %86

86:                                               ; preds = %80, %85
  %87 = add nuw nsw i64 %81, 1
  %88 = icmp eq i64 %87, 7
  br i1 %88, label %89, label %80, !llvm.loop !167

89:                                               ; preds = %86, %39
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare void @remove_fake_edges() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @coverage_counter_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @instrument_edges(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !168 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !67
  %6 = load ptr, ptr @cfun, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %72, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds i8, ptr %3, i64 8
  br label %13

13:                                               ; preds = %11, %67
  %14 = phi ptr [ %9, %11 ], [ %70, %67 ]
  %15 = phi i32 [ 0, %11 ], [ %68, %67 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 1
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %16) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !49
  store ptr %17, ptr %12, align 8, !tbaa.struct !50
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %2) #18, !range !51
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %67, label %20

20:                                               ; preds = %13, %61
  %21 = phi i32 [ %62, %61 ], [ %15, %13 ]
  %22 = load ptr, ptr %2, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !71
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, 6
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !60
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 138, ptr noundef nonnull @.str.6) #17
  br label %34

34:                                               ; preds = %28, %33
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %36 = icmp eq ptr %35, null
  br i1 %36, label %58, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %22, align 8, !tbaa !63
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !65
  %41 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !61
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !65
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !99
  %47 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %46) #18
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = load ptr, ptr %42, align 8, !tbaa !109
  %51 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %50) #18
  %52 = freeze i32 %51
  %53 = icmp ugt i32 %52, 1
  %54 = select i1 %53, ptr @.str.37, ptr @.str.38
  br label %55

55:                                               ; preds = %49, %37
  %56 = phi ptr [ @.str.38, %37 ], [ %54, %49 ]
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %35, ptr noundef nonnull @.str.36, i32 noundef %40, i32 noundef %44, ptr noundef nonnull %56) #18
  br label %58

58:                                               ; preds = %55, %34
  %59 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 1), align 8, !tbaa !169
  %60 = add i32 %21, 1
  tail call void %59(i32 noundef %21, ptr noundef nonnull %22) #17
  br label %61

61:                                               ; preds = %58, %20
  %62 = phi i32 [ %21, %20 ], [ %60, %58 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %63 = load i32, ptr %3, align 8
  %64 = load ptr, ptr %12, align 8
  %65 = call fastcc zeroext i8 @ei_cond(i32 %63, ptr %64, ptr noundef nonnull %2) #18, !range !51
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %20, !llvm.loop !170

67:                                               ; preds = %61, %13
  %68 = phi i32 [ %15, %13 ], [ %62, %61 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %13, !llvm.loop !171

72:                                               ; preds = %67, %1
  %73 = phi i32 [ 0, %1 ], [ %68, %67 ]
  %74 = load i32, ptr @total_num_blocks_created, align 4, !tbaa !39
  %75 = add nsw i32 %74, %5
  store i32 %75, ptr @total_num_blocks_created, align 4, !tbaa !39
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %76, ptr noundef nonnull @.str.39, i32 noundef %73) #18
  br label %80

80:                                               ; preds = %78, %72
  ret i32 %73
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @instrument_values(ptr noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !172 {
  %2 = tail call fastcc i32 @VEC_histogram_value_base_length(ptr noundef %0) #18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %41, label %4

4:                                                ; preds = %1, %37
  %5 = phi i32 [ %38, %37 ], [ 0, %1 ]
  %6 = phi i32 [ %15, %37 ], [ undef, %1 ]
  %7 = tail call fastcc ptr @VEC_histogram_value_base_index(ptr noundef %0, i32 noundef %5) #18
  %8 = getelementptr inbounds %struct.histogram_value_t, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !159
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 196, ptr noundef nonnull @.str.6) #17
  br label %14

12:                                               ; preds = %4
  %13 = add nuw nsw i32 %9, 1
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ %6, %11 ], [ %13, %12 ]
  %16 = getelementptr inbounds %struct.histogram_value_t, ptr %7, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !156
  %18 = tail call i32 @coverage_counter_alloc(i32 noundef %15, i32 noundef %17) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %8, align 8, !tbaa !159
  switch i32 %21, label %36 [
    i32 0, label %22
    i32 1, label %24
    i32 2, label %26
    i32 3, label %28
    i32 4, label %30
    i32 5, label %32
    i32 6, label %34
  ]

22:                                               ; preds = %20
  %23 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 2), align 8, !tbaa !173
  tail call void %23(ptr noundef nonnull %7, i32 noundef %15, i32 noundef 0) #17
  br label %37

24:                                               ; preds = %20
  %25 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 3), align 8, !tbaa !174
  tail call void %25(ptr noundef nonnull %7, i32 noundef %15, i32 noundef 0) #17
  br label %37

26:                                               ; preds = %20
  %27 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 4), align 8, !tbaa !175
  tail call void %27(ptr noundef nonnull %7, i32 noundef %15, i32 noundef 0) #17
  br label %37

28:                                               ; preds = %20
  %29 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 5), align 8, !tbaa !176
  tail call void %29(ptr noundef nonnull %7, i32 noundef %15, i32 noundef 0) #17
  br label %37

30:                                               ; preds = %20
  %31 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 6), align 8, !tbaa !177
  tail call void %31(ptr noundef nonnull %7, i32 noundef %15, i32 noundef 0) #17
  br label %37

32:                                               ; preds = %20
  %33 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 7), align 8, !tbaa !178
  tail call void %33(ptr noundef nonnull %7, i32 noundef %15, i32 noundef 0) #17
  br label %37

34:                                               ; preds = %20
  %35 = load ptr, ptr getelementptr inbounds (%struct.profile_hooks, ptr @tree_profile_hooks, i64 0, i32 8), align 8, !tbaa !179
  tail call void %35(ptr noundef nonnull %7, i32 noundef %15, i32 noundef 0) #17
  br label %37

36:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 232, ptr noundef nonnull @.str.6) #17
  br label %37

37:                                               ; preds = %22, %24, %26, %28, %30, %32, %34, %36, %14
  %38 = add nuw i32 %5, 1
  %39 = tail call fastcc i32 @VEC_histogram_value_base_length(ptr noundef %0) #18
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %4, label %41, !llvm.loop !180

41:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: optsize
declare void @gsi_commit_edge_inserts() local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_aux_for_edges() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_histogram_value_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !34 !PGOFuncName !181 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @free_edge_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @coverage_end_function() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_branch_prob() local_unnamed_addr #9 !prof !34 {
  store i32 0, ptr @total_num_blocks, align 4, !tbaa !39
  store i32 0, ptr @total_num_edges, align 4, !tbaa !39
  store i32 0, ptr @total_num_edges_ignored, align 4, !tbaa !39
  store i32 0, ptr @total_num_blocks_created, align 4, !tbaa !39
  store i32 0, ptr @total_num_passes, align 4, !tbaa !39
  store i32 0, ptr @total_num_times_called, align 4, !tbaa !39
  store i32 0, ptr @total_num_branches, align 4, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @total_hist_br_prob, i8 0, i64 80, i1 false), !tbaa !39
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @end_branch_prob() local_unnamed_addr #10 !prof !34 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %57, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @fputc(i32 10, ptr nonnull %1)
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %6 = load i32, ptr @total_num_blocks, align 4, !tbaa !39
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %6) #18
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %9 = load i32, ptr @total_num_edges, align 4, !tbaa !39
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %9) #18
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %12 = load i32, ptr @total_num_edges_ignored, align 4, !tbaa !39
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef %12) #18
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.11, i32 noundef 0) #18
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %17 = load i32, ptr @total_num_blocks_created, align 4, !tbaa !39
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.12, i32 noundef %17) #18
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %20 = load i32, ptr @total_num_passes, align 4, !tbaa !39
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.13, i32 noundef %20) #18
  %22 = load i32, ptr @total_num_times_called, align 4, !tbaa !39
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %3
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %26 = load i32, ptr @total_num_passes, align 4, !tbaa !39
  %27 = ashr i32 %22, 1
  %28 = add nsw i32 %26, %27
  %29 = sdiv i32 %28, %22
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.14, i32 noundef %29) #18
  br label %31

31:                                               ; preds = %24, %3
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %33 = load i32, ptr @total_num_branches, align 4, !tbaa !39
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.15, i32 noundef %33) #18
  %35 = load i32, ptr @total_num_branches, align 4, !tbaa !39
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %31, %37
  %38 = phi i64 [ %55, %37 ], [ 0, %31 ]
  %39 = trunc i64 %38 to i32
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %41 = getelementptr inbounds [20 x i32], ptr @total_hist_br_prob, i64 0, i64 %38
  %42 = load i32, ptr %41, align 4, !tbaa !39
  %43 = sub nuw nsw i64 19, %38
  %44 = getelementptr inbounds [20 x i32], ptr @total_hist_br_prob, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !39
  %46 = add nsw i32 %45, %42
  %47 = mul nsw i32 %46, 100
  %48 = load i32, ptr @total_num_branches, align 4, !tbaa !39
  %49 = sdiv i32 %47, %48
  %50 = mul nuw nsw i32 %39, 5
  %51 = add nuw nsw i32 %50, 5
  %52 = trunc i64 %38 to i32
  %53 = mul i32 %52, 5
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.16, i32 noundef %49, i32 noundef %53, i32 noundef %51) #18
  %55 = add nuw nsw i64 %38, 1
  %56 = icmp eq i64 %55, 10
  br i1 %56, label %57, label %37, !llvm.loop !182

57:                                               ; preds = %37, %31, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_register_profile_hooks() local_unnamed_addr #0 !prof !34 {
  %1 = tail call i32 @current_ir_type() #17
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1377, ptr noundef nonnull @.str.6) #17
  br label %4

4:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: optsize
declare i32 @current_ir_type() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !34 !PGOFuncName !183 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #18
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !34 !PGOFuncName !184 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !185 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !186
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !188 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.6) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !34 !PGOFuncName !189 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !34 !PGOFuncName !190 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !191
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !192
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !194 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !197 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !198
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_exec_counts() unnamed_addr #0 !prof !34 !PGOFuncName !199 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  br label %10

10:                                               ; preds = %8, %31
  %11 = phi ptr [ %6, %8 ], [ %34, %31 ]
  %12 = phi i32 [ 0, %8 ], [ %32, %31 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  %14 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %13) #18
  store i32 0, ptr %2, align 8, !tbaa.struct !49
  store ptr %14, ptr %9, align 8, !tbaa.struct !50
  %15 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %14, ptr noundef nonnull %1) #18, !range !51
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %10, %17
  %18 = phi i32 [ %26, %17 ], [ %12, %10 ]
  %19 = load ptr, ptr %1, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 6
  %24 = icmp eq i8 %23, 0
  %25 = zext i1 %24 to i32
  %26 = add i32 %18, %25
  call fastcc void @ei_next(ptr noundef nonnull %2) #18
  %27 = load i32, ptr %2, align 8
  %28 = load ptr, ptr %9, align 8
  %29 = call fastcc zeroext i8 @ei_cond(i32 %27, ptr %28, ptr noundef nonnull %1) #18, !range !51
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %17, !llvm.loop !200

31:                                               ; preds = %17, %10
  %32 = phi i32 [ %12, %10 ], [ %26, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %10, !llvm.loop !201

36:                                               ; preds = %31, %0
  %37 = phi i32 [ 0, %0 ], [ %32, %31 ]
  %38 = tail call ptr @get_coverage_counts(i32 noundef 0, i32 noundef %37, ptr noundef nonnull @profile_info) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %42 = icmp ne ptr %41, null
  %43 = load ptr, ptr @profile_info, align 8
  %44 = icmp ne ptr %43, null
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %43, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !122
  %49 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %43, i64 0, i32 4
  %50 = load i64, ptr %49, align 8, !tbaa !123
  %51 = trunc i64 %50 to i32
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %41, ptr noundef nonnull @.str.28, i32 noundef %48, i32 noundef %51) #18
  br label %53

53:                                               ; preds = %40, %46, %36
  ret ptr %38
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @alloc_aux_for_blocks(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @read_profile_edge_counts(ptr noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !202 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %93, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 8
  %11 = icmp eq ptr %0, null
  br label %12

12:                                               ; preds = %9, %87
  %13 = phi ptr [ %7, %9 ], [ %91, %87 ]
  %14 = phi i32 [ 0, %9 ], [ %89, %87 ]
  %15 = phi i32 [ 0, %9 ], [ %88, %87 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 1
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %16) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !49
  store ptr %17, ptr %10, align 8, !tbaa.struct !50
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %2) #18, !range !51
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %87, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 2
  br label %23

23:                                               ; preds = %20, %80
  %24 = phi i32 [ %14, %20 ], [ %82, %80 ]
  %25 = phi i32 [ %15, %20 ], [ %81, %80 ]
  %26 = load ptr, ptr %2, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !71
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, 6
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %80

32:                                               ; preds = %23
  %33 = add nsw i32 %24, 1
  br i1 %11, label %51, label %34

34:                                               ; preds = %32
  %35 = add nsw i32 %25, 1
  %36 = sext i32 %25 to i64
  %37 = getelementptr inbounds i64, ptr %0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !164
  %39 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 9
  store i64 %38, ptr %39, align 8, !tbaa !70
  %40 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %40, i64 0, i32 4
  %42 = load i64, ptr %41, align 8, !tbaa !123
  %43 = icmp sgt i64 %38, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load i32, ptr %21, align 8, !tbaa !65
  %46 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !61
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !65
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.29, i32 noundef %45, i32 noundef %49) #17
  %50 = load ptr, ptr %27, align 8, !tbaa !71
  br label %53

51:                                               ; preds = %32
  %52 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 9
  store i64 0, ptr %52, align 8, !tbaa !70
  br label %53

53:                                               ; preds = %34, %44, %51
  %54 = phi ptr [ %50, %44 ], [ %28, %34 ], [ %28, %51 ]
  %55 = phi i32 [ %35, %44 ], [ %35, %34 ], [ %25, %51 ]
  %56 = load i8, ptr %54, align 4
  %57 = or i8 %56, 1
  store i8 %57, ptr %54, align 4
  %58 = load ptr, ptr %22, align 8, !tbaa !106
  %59 = getelementptr inbounds %struct.bb_info, ptr %58, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !126
  %61 = add nsw i64 %60, -1
  store i64 %61, ptr %59, align 8, !tbaa !126
  %62 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !61
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !106
  %66 = getelementptr inbounds %struct.bb_info, ptr %65, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !129
  %68 = add nsw i64 %67, -1
  store i64 %68, ptr %66, align 8, !tbaa !129
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %70 = icmp eq ptr %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %53
  %72 = load i32, ptr %21, align 8, !tbaa !65
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !65
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %69, ptr noundef nonnull @.str.30, i32 noundef %72, i32 noundef %74) #18
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %77 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 9
  %78 = load i64, ptr %77, align 8, !tbaa !70
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.31, i64 noundef %78) #18
  br label %80

80:                                               ; preds = %23, %71, %53
  %81 = phi i32 [ %25, %23 ], [ %55, %71 ], [ %55, %53 ]
  %82 = phi i32 [ %24, %23 ], [ %33, %71 ], [ %33, %53 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %83 = load i32, ptr %3, align 8
  %84 = load ptr, ptr %10, align 8
  %85 = call fastcc zeroext i8 @ei_cond(i32 %83, ptr %84, ptr noundef nonnull %2) #18, !range !51
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %23, !llvm.loop !203

87:                                               ; preds = %80, %12
  %88 = phi i32 [ %15, %12 ], [ %81, %80 ]
  %89 = phi i32 [ %14, %12 ], [ %82, %80 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %12, !llvm.loop !204

93:                                               ; preds = %87, %1
  %94 = phi i32 [ 0, %1 ], [ %89, %87 ]
  ret i32 %94
}

; Function Attrs: optsize
declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_inconsistent() unnamed_addr #0 !prof !34 !PGOFuncName !205 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  br label %5

5:                                                ; preds = %90, %0
  %6 = phi ptr [ %4, %0 ], [ %9, %90 ]
  %7 = phi i8 [ 0, %0 ], [ %91, %90 ]
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = load ptr, ptr @cfun, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = icmp eq ptr %9, %14
  br i1 %15, label %96, label %16

16:                                               ; preds = %5
  %17 = load ptr, ptr %9, align 8, !tbaa !109
  %18 = tail call fastcc zeroext i8 @is_edge_inconsistent(ptr noundef %17) #18, !range !51
  %19 = or i8 %18, %7
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  %22 = icmp ne i8 %19, 0
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %96, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !99
  %27 = tail call fastcc zeroext i8 @is_edge_inconsistent(ptr noundef %26) #18, !range !51
  %28 = or i8 %27, %19
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  %31 = icmp ne i8 %28, 0
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %96, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !134
  %36 = icmp sgt i64 %35, -1
  %37 = or i1 %30, %36
  %38 = select i1 %36, i8 %28, i8 1
  br i1 %37, label %45, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !65
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.32, i32 noundef %41, i64 noundef %35) #18
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @dump_bb(ptr noundef nonnull %9, ptr noundef %43, i32 noundef 0) #17
  %44 = load i64, ptr %34, align 8, !tbaa !134
  br label %45

45:                                               ; preds = %33, %39
  %46 = phi i64 [ %35, %33 ], [ %44, %39 ]
  %47 = phi i8 [ %38, %33 ], [ 1, %39 ]
  %48 = load ptr, ptr %9, align 8, !tbaa !109
  %49 = tail call i64 @sum_edge_counts(ptr noundef %48) #17
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %62, label %51

51:                                               ; preds = %45
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !65
  %57 = load i64, ptr %34, align 8, !tbaa !134
  %58 = load ptr, ptr %9, align 8, !tbaa !109
  %59 = tail call i64 @sum_edge_counts(ptr noundef %58) #17
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %52, ptr noundef nonnull @.str.33, i32 noundef %56, i64 noundef %57, i64 noundef %59) #18
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @dump_bb(ptr noundef nonnull %9, ptr noundef %61, i32 noundef 0) #17
  br label %62

62:                                               ; preds = %51, %54, %45
  %63 = phi i8 [ %47, %45 ], [ 1, %54 ], [ 1, %51 ]
  %64 = load i64, ptr %34, align 8, !tbaa !134
  %65 = load ptr, ptr %25, align 8, !tbaa !99
  %66 = tail call i64 @sum_edge_counts(ptr noundef %65) #17
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %90, label %68

68:                                               ; preds = %62
  %69 = load ptr, ptr @cfun, align 8, !tbaa !35
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !41
  %72 = getelementptr inbounds %struct.control_flow_graph, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !48
  %74 = tail call ptr @find_edge(ptr noundef nonnull %9, ptr noundef %73) #17
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = tail call zeroext i8 @block_ends_with_call_p(ptr noundef nonnull %9) #17
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76, %68
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %81 = icmp eq ptr %80, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %84 = load i32, ptr %83, align 8, !tbaa !65
  %85 = load i64, ptr %34, align 8, !tbaa !134
  %86 = load ptr, ptr %25, align 8, !tbaa !99
  %87 = tail call i64 @sum_edge_counts(ptr noundef %86) #17
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %80, ptr noundef nonnull @.str.34, i32 noundef %84, i64 noundef %85, i64 noundef %87) #18
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @dump_bb(ptr noundef nonnull %9, ptr noundef %89, i32 noundef 0) #17
  br label %90

90:                                               ; preds = %79, %82, %76, %62
  %91 = phi i8 [ %63, %76 ], [ %63, %62 ], [ 1, %82 ], [ 1, %79 ]
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %93 = icmp eq ptr %92, null
  %94 = icmp ne i8 %91, 0
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %96, label %5, !llvm.loop !206

96:                                               ; preds = %5, %90, %24, %16
  %97 = phi i8 [ 1, %16 ], [ 1, %24 ], [ 1, %90 ], [ %7, %5 ]
  ret i8 %97
}

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @correct_negative_edge_counts() unnamed_addr #0 !prof !34 !PGOFuncName !207 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %3 = load ptr, ptr @cfun, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  br label %10

10:                                               ; preds = %8, %27
  %11 = phi ptr [ %6, %8 ], [ %29, %27 ]
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  %13 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %12) #18
  store i32 0, ptr %2, align 8, !tbaa.struct !49
  store ptr %13, ptr %9, align 8, !tbaa.struct !50
  %14 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %13, ptr noundef nonnull %1) #18, !range !51
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %10, %22
  %17 = load ptr, ptr %1, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 9
  %19 = load i64, ptr %18, align 8, !tbaa !70
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i64 0, ptr %18, align 8, !tbaa !70
  br label %22

22:                                               ; preds = %16, %21
  call fastcc void @ei_next(ptr noundef nonnull %2) #18
  %23 = load i32, ptr %2, align 8
  %24 = load ptr, ptr %9, align 8
  %25 = call fastcc zeroext i8 @ei_cond(i32 %23, ptr %24, ptr noundef nonnull %1) #18, !range !51
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %16, !llvm.loop !208

27:                                               ; preds = %22, %10
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %10, !llvm.loop !209

31:                                               ; preds = %27, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_bb_counts() unnamed_addr #0 !prof !34 !PGOFuncName !210 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %0, %14
  %7 = phi ptr [ %16, %14 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = tail call i64 @sum_edge_counts(ptr noundef %9) #17
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 8
  store i64 %10, ptr %11, align 8, !tbaa !134
  %12 = icmp sgt i64 %10, -1
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 384, ptr noundef nonnull @.str.6) #17
  br label %14

14:                                               ; preds = %6, %13
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !211

18:                                               ; preds = %14, %0
  ret void
}

; Function Attrs: optsize
declare void @mcf_smooth_cfg() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @block_ends_with_call_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @block_ends_with_condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @counts_to_freqs() local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @free_aux_for_blocks() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_coverage_counts(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_edge_inconsistent(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !212 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  store ptr %0, ptr %2, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %5 = call fastcc ptr @ei_start_1(ptr noundef nonnull %2) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !49
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !50
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %3) #18, !range !51
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %52, label %9

9:                                                ; preds = %1, %47
  %10 = load ptr, ptr %3, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 9
  %18 = load i64, ptr %17, align 8, !tbaa !70
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !60
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %10, align 8, !tbaa !63
  %27 = call zeroext i8 @block_ends_with_call_p(ptr noundef %26) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %25, %20
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 9
  %34 = load ptr, ptr %10, align 8, !tbaa !63
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !65
  %37 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !61
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !65
  %41 = load i64, ptr %33, align 8, !tbaa !70
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %30, ptr noundef nonnull @.str.35, i32 noundef %36, i32 noundef %40, i64 noundef %41) #18
  %43 = load ptr, ptr %10, align 8, !tbaa !63
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @dump_bb(ptr noundef %43, ptr noundef %44, i32 noundef 0) #17
  %45 = load ptr, ptr %37, align 8, !tbaa !61
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @dump_bb(ptr noundef %45, ptr noundef %46, i32 noundef 0) #17
  br label %52

47:                                               ; preds = %9, %25, %16
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %48 = load i32, ptr %4, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = call fastcc zeroext i8 @ei_cond(i32 %48, ptr %49, ptr noundef nonnull %3) #18, !range !51
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %9, !llvm.loop !213

52:                                               ; preds = %47, %1, %29, %32
  %53 = phi i8 [ 1, %32 ], [ 1, %29 ], [ 0, %1 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i8 %53
}

; Function Attrs: optsize
declare void @dump_bb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @sum_edge_counts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_histogram_value_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !214 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !215
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_histogram_value_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !34 !PGOFuncName !217 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  ret ptr %5
}

; Function Attrs: optsize
declare void @gimple_add_histogram_value(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @union_groups(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !218 {
  %3 = tail call fastcc ptr @find_group(ptr noundef %0) #18
  %4 = tail call fastcc ptr @find_group(ptr noundef %1) #18
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1236, ptr noundef nonnull @.str.6) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  store ptr %4, ptr %8, align 8, !tbaa !106
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @find_group(ptr noundef %0) unnamed_addr #13 !prof !34 !PGOFuncName !219 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = icmp eq ptr %5, %3
  br i1 %6, label %7, label %2, !llvm.loop !220

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %17, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %15, %11 ], [ %9, %7 ]
  %13 = phi ptr [ %14, %11 ], [ %8, %7 ]
  store ptr %3, ptr %13, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %11, !llvm.loop !221

17:                                               ; preds = %11, %7
  ret ptr %3
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!42, !36, i64 8}
!42 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !36, i64 128, !40, i64 136, !40, i64 137, !40, i64 138, !40, i64 138, !40, i64 138, !40, i64 138, !40, i64 138, !40, i64 138, !40, i64 138, !40, i64 139, !40, i64 139, !40, i64 139, !40, i64 139, !40, i64 139, !40, i64 139, !40, i64 139}
!43 = !{!44, !36, i64 0}
!44 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !36, i64 40, !40, i64 48, !37, i64 52, !37, i64 60, !40, i64 68, !40, i64 72}
!45 = !{!46, !36, i64 56}
!46 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !47, i64 72, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96}
!47 = !{!"long", !37, i64 0}
!48 = !{!44, !36, i64 8}
!49 = !{i64 0, i64 4, !39, i64 8, i64 8, !35}
!50 = !{i64 0, i64 8, !35}
!51 = !{i8 0, i8 2}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!55, !40, i64 40}
!55 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !47, i64 56}
!56 = !{!57, !36, i64 0}
!57 = !{!"", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!58 = !{!57, !40, i64 8}
!59 = !{!55, !36, i64 32}
!60 = !{!55, !40, i64 48}
!61 = !{!55, !36, i64 8}
!62 = distinct !{!62, !53}
!63 = !{!55, !36, i64 0}
!64 = distinct !{!64, !53}
!65 = !{!46, !40, i64 80}
!66 = distinct !{!66, !53}
!67 = !{!68, !40, i64 4}
!68 = !{!"edge_list", !40, i64 0, !40, i64 4, !36, i64 8}
!69 = !{!68, !36, i64 8}
!70 = !{!55, !47, i64 56}
!71 = !{!55, !36, i64 24}
!72 = distinct !{!72, !53}
!73 = distinct !{!73, !53}
!74 = !{!44, !40, i64 24}
!75 = distinct !{!75, !53}
!76 = !{!44, !40, i64 32}
!77 = distinct !{!77, !53}
!78 = distinct !{!78, !53}
!79 = !{!37, !37, i64 0}
!80 = distinct !{!80, !53}
!81 = distinct !{!81, !53}
!82 = !{!83, !36, i64 0}
!83 = !{!"profile_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!84 = !{!"profile.c:ei_start_1"}
!85 = !{!"profile.c:ei_cond"}
!86 = !{!"profile.c:gsi_last_bb"}
!87 = !{!88, !36, i64 0}
!88 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!89 = !{!88, !36, i64 8}
!90 = !{!88, !36, i64 16}
!91 = !{!"profile.c:gsi_end_p"}
!92 = !{!"profile.c:gsi_stmt"}
!93 = !{!94, !36, i64 0}
!94 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!95 = !{!"profile.c:gimple_has_location"}
!96 = !{!"profile.c:gsi_prev"}
!97 = !{!94, !36, i64 8}
!98 = !{!"profile.c:single_succ_p"}
!99 = !{!46, !36, i64 8}
!100 = !{!"profile.c:gimple_location"}
!101 = !{!"profile.c:single_succ_edge"}
!102 = !{!"profile.c:ei_next"}
!103 = !{!104, !40, i64 0}
!104 = !{!"", !40, i64 0, !36, i64 8}
!105 = !{!"profile.c:find_spanning_tree"}
!106 = !{!46, !36, i64 16}
!107 = distinct !{!107, !53}
!108 = distinct !{!108, !53}
!109 = !{!46, !36, i64 0}
!110 = distinct !{!110, !53}
!111 = distinct !{!111, !53}
!112 = distinct !{!112, !53}
!113 = !{!"profile.c:output_location"}
!114 = !{!"profile.c:gsi_start_bb"}
!115 = !{!"profile.c:gimple_filename"}
!116 = !{!"profile.c:gimple_lineno"}
!117 = !{!"profile.c:gsi_next"}
!118 = !{!94, !36, i64 16}
!119 = !{!"profile.c:compute_branch_probabilities"}
!120 = !{!121, !47, i64 16}
!121 = !{!"gcov_ctr_summary", !40, i64 0, !40, i64 4, !47, i64 8, !47, i64 16, !47, i64 24}
!122 = !{!121, !40, i64 4}
!123 = !{!121, !47, i64 24}
!124 = !{!121, !47, i64 8}
!125 = !{}
!126 = !{!127, !47, i64 8}
!127 = !{!"bb_info", !40, i64 0, !47, i64 8, !47, i64 16}
!128 = distinct !{!128, !53}
!129 = !{!127, !47, i64 16}
!130 = distinct !{!130, !53}
!131 = distinct !{!131, !53}
!132 = distinct !{!132, !53}
!133 = distinct !{!133, !53}
!134 = !{!46, !47, i64 72}
!135 = distinct !{!135, !53}
!136 = distinct !{!136, !53}
!137 = distinct !{!137, !53}
!138 = distinct !{!138, !53}
!139 = distinct !{!139, !53}
!140 = distinct !{!140, !53}
!141 = distinct !{!141, !53}
!142 = distinct !{!142, !53}
!143 = !{!55, !40, i64 52}
!144 = distinct !{!144, !53}
!145 = distinct !{!145, !53}
!146 = !{!44, !40, i64 48}
!147 = distinct !{!147, !53}
!148 = distinct !{!148, !53}
!149 = distinct !{!149, !53}
!150 = distinct !{!150, !53}
!151 = distinct !{!151, !53}
!152 = distinct !{!152, !53, !153, !154}
!153 = !{!"llvm.loop.isvectorized", i32 1}
!154 = !{!"llvm.loop.unroll.runtime.disable"}
!155 = !{!"profile.c:compute_value_histograms"}
!156 = !{!157, !40, i64 36}
!157 = !{!"histogram_value_t", !158, i64 0, !40, i64 32, !40, i64 36, !37, i64 40}
!158 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!159 = !{!157, !40, i64 32}
!160 = distinct !{!160, !53}
!161 = distinct !{!161, !53}
!162 = !{!157, !36, i64 8}
!163 = !{!157, !36, i64 16}
!164 = !{!47, !47, i64 0}
!165 = distinct !{!165, !53}
!166 = distinct !{!166, !53}
!167 = distinct !{!167, !53}
!168 = !{!"profile.c:instrument_edges"}
!169 = !{!83, !36, i64 8}
!170 = distinct !{!170, !53}
!171 = distinct !{!171, !53}
!172 = !{!"profile.c:instrument_values"}
!173 = !{!83, !36, i64 16}
!174 = !{!83, !36, i64 24}
!175 = !{!83, !36, i64 32}
!176 = !{!83, !36, i64 40}
!177 = !{!83, !36, i64 48}
!178 = !{!83, !36, i64 56}
!179 = !{!83, !36, i64 64}
!180 = distinct !{!180, !53}
!181 = !{!"profile.c:VEC_histogram_value_heap_free"}
!182 = distinct !{!182, !53}
!183 = !{!"profile.c:ei_end_p"}
!184 = !{!"profile.c:ei_edge"}
!185 = !{!"profile.c:VEC_edge_base_length"}
!186 = !{!187, !40, i64 0}
!187 = !{!"VEC_edge_base", !40, i64 0, !40, i64 4, !37, i64 8}
!188 = !{!"profile.c:ei_container"}
!189 = !{!"profile.c:VEC_edge_base_index"}
!190 = !{!"profile.c:bb_seq"}
!191 = !{!46, !40, i64 96}
!192 = !{!193, !36, i64 0}
!193 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!194 = !{!"profile.c:gimple_seq_last"}
!195 = !{!196, !36, i64 8}
!196 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!197 = !{!"profile.c:gimple_seq_first"}
!198 = !{!196, !36, i64 0}
!199 = !{!"profile.c:get_exec_counts"}
!200 = distinct !{!200, !53}
!201 = distinct !{!201, !53}
!202 = !{!"profile.c:read_profile_edge_counts"}
!203 = distinct !{!203, !53}
!204 = distinct !{!204, !53}
!205 = !{!"profile.c:is_inconsistent"}
!206 = distinct !{!206, !53}
!207 = !{!"profile.c:correct_negative_edge_counts"}
!208 = distinct !{!208, !53}
!209 = distinct !{!209, !53}
!210 = !{!"profile.c:set_bb_counts"}
!211 = distinct !{!211, !53}
!212 = !{!"profile.c:is_edge_inconsistent"}
!213 = distinct !{!213, !53}
!214 = !{!"profile.c:VEC_histogram_value_base_length"}
!215 = !{!216, !40, i64 0}
!216 = !{!"VEC_histogram_value_base", !40, i64 0, !40, i64 4, !37, i64 8}
!217 = !{!"profile.c:VEC_histogram_value_base_index"}
!218 = !{!"profile.c:union_groups"}
!219 = !{!"profile.c:find_group"}
!220 = distinct !{!220, !53}
!221 = distinct !{!221, !53}
