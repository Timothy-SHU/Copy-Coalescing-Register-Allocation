; ModuleID = 'cfghooks.c'
source_filename = "cfghooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cfg_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }

@rtl_cfg_hooks = external global %struct.cfg_hooks, align 8
@cfg_hooks = internal unnamed_addr global ptr null, align 8
@cfg_layout_rtl_cfg_hooks = external global %struct.cfg_hooks, align 8
@gimple_cfg_hooks = external global %struct.cfg_hooks, align 8
@.str = private unnamed_addr constant [11 x i8] c"cfghooks.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"bb %d on wrong place\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"prev_bb of %d should be %d, not %d\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"verify_flow_info: Block %i has loop_father, but there are no loops\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"verify_flow_info: Block %i lacks loop_father\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"verify_flow_info: Wrong count of block %i %i\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"verify_flow_info: Wrong frequency of block %i %i\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"verify_flow_info: Duplicate edge %i->%i\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"verify_flow_info: Wrong probability of edge %i->%i %i\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"verify_flow_info: Wrong count of edge %i->%i %i\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"verify_flow_info: Basic block %d succ edge is corrupted\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"Predecessor: \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"\0ASuccessor: \00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"wrong amount of branch edges after unconditional jump %i\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"basic block %d pred edge is corrupted\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"its dest_idx should be %d, not %d\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"basic block %i edge lists are corrupted\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"verify_flow_info failed\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c";;%s basic block %d, loop depth %d, count \00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c";;%s prev block \00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"(nil), \00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"next block \00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c";;%s pred:      \00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c";;%s succ:      \00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"%s does not support redirect_edge_and_branch\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"%s does not support can_remove_branch_p\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"%s does not support redirect_edge_and_branch_force\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"%s does not support split_block\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"%s does not support move_block_after\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"%s does not support delete_basic_block\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"%s does not support split_edge\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"%s does not support create_basic_block\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"%s does not support can_merge_blocks_p\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"%s does not support predict_edge\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"%s does not support predicted_by_p\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"%s does not support merge_blocks\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"%s does not support make_forwarder_block\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"%s does not support can_duplicate_block_p\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"%s does not support duplicate_block\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"%s does not support block_ends_with_call_p\00", align 1
@.str.47 = private unnamed_addr constant [47 x i8] c"%s does not support block_ends_with_condjump_p\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"%s does not support flow_call_edges_add\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @rtl_register_cfg_hooks() local_unnamed_addr #0 !prof !171 {
  store ptr @rtl_cfg_hooks, ptr @cfg_hooks, align 8, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @cfg_layout_rtl_register_cfg_hooks() local_unnamed_addr #0 !prof !176 {
  store ptr @cfg_layout_rtl_cfg_hooks, ptr @cfg_hooks, align 8, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gimple_register_cfg_hooks() local_unnamed_addr #0 !prof !177 {
  store ptr @gimple_cfg_hooks, ptr @cfg_hooks, align 8, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @get_cfg_hooks(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cfg_hooks) align 8 %0) local_unnamed_addr #1 !prof !178 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %2, i64 232, i1 false), !tbaa.struct !179
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_cfg_hooks(ptr nocapture noundef readonly byval(%struct.cfg_hooks) align 8 %0) local_unnamed_addr #1 !prof !178 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(232) %0, i64 232, i1 false), !tbaa.struct !179
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @current_ir_type() local_unnamed_addr #3 !prof !180 {
  %1 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %2 = icmp eq ptr %1, @gimple_cfg_hooks
  br i1 %2, label %8, label %3, !prof !181

3:                                                ; preds = %0
  %4 = icmp eq ptr %1, @rtl_cfg_hooks
  br i1 %4, label %8, label %5, !prof !182

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, @cfg_layout_rtl_cfg_hooks
  br i1 %6, label %8, label %7, !prof !183

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 83, ptr noundef nonnull @.str.1) #15
  br label %8

8:                                                ; preds = %5, %3, %0, %7
  %9 = phi i32 [ 0, %7 ], [ 0, %0 ], [ 1, %3 ], [ 2, %5 ]
  ret i32 %9
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_flow_info() local_unnamed_addr #3 !prof !178 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = load i8, ptr @timevar_enable, align 1, !tbaa !184
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 24) #15
  br label %8

8:                                                ; preds = %7, %0
  %9 = load ptr, ptr @cfun, align 8, !tbaa !172
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !185
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !188
  %14 = sext i32 %13 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 8) #15
  %16 = load ptr, ptr @cfun, align 8, !tbaa !172
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !185
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !188
  %21 = sext i32 %20 to i64
  %22 = tail call ptr @xcalloc(i64 noundef %21, i64 noundef 8) #15
  %23 = load ptr, ptr @cfun, align 8, !tbaa !172
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !185
  %26 = load ptr, ptr %25, align 8, !tbaa !190
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !191
  %29 = icmp eq ptr %28, null
  br i1 %29, label %70, label %30

30:                                               ; preds = %8, %60
  %31 = phi ptr [ %63, %60 ], [ %28, %8 ]
  %32 = phi i32 [ %61, %60 ], [ 0, %8 ]
  %33 = phi ptr [ %31, %60 ], [ %26, %8 ]
  %34 = load ptr, ptr @cfun, align 8, !tbaa !172
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !185
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !194
  %39 = icmp eq ptr %31, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !195
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !196
  %45 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %42, i32 noundef %44) #16
  %46 = icmp eq ptr %31, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2, i32 noundef %44) #15
  br label %48

48:                                               ; preds = %47, %40, %30
  %49 = phi i32 [ 1, %47 ], [ %32, %40 ], [ %32, %30 ]
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !197
  %52 = icmp eq ptr %51, %33
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %55 = load i32, ptr %54, align 8, !tbaa !196
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !196
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !196
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, i32 noundef %55, i32 noundef %57, i32 noundef %59) #15
  br label %60

60:                                               ; preds = %53, %48
  %61 = phi i32 [ 1, %53 ], [ %49, %48 ]
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !191
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %30, !llvm.loop !198

65:                                               ; preds = %60
  %66 = load ptr, ptr @cfun, align 8, !tbaa !172
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !185
  %69 = load ptr, ptr %68, align 8, !tbaa !190
  br label %70

70:                                               ; preds = %65, %8
  %71 = phi ptr [ %26, %8 ], [ %69, %65 ]
  %72 = phi ptr [ %25, %8 ], [ %68, %65 ]
  %73 = phi ptr [ %23, %8 ], [ %66, %65 ]
  %74 = phi i32 [ 0, %8 ], [ %61, %65 ]
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !194
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !197
  %79 = icmp eq ptr %78, %71
  br i1 %79, label %283, label %80

80:                                               ; preds = %70
  %81 = getelementptr inbounds i8, ptr %2, i64 8
  br label %82

82:                                               ; preds = %80, %274
  %83 = phi ptr [ %73, %80 ], [ %278, %274 ]
  %84 = phi ptr [ %78, %80 ], [ %277, %274 ]
  %85 = phi i32 [ %74, %80 ], [ %275, %274 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !200
  %88 = icmp eq ptr %87, null
  br i1 %88, label %100, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.function, ptr %83, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !201
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %95 = load i32, ptr %94, align 8, !tbaa !196
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4, i32 noundef %95) #15
  %96 = load ptr, ptr %86, align 8, !tbaa !200
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load ptr, ptr @cfun, align 8, !tbaa !172
  br label %100

100:                                              ; preds = %98, %82
  %101 = phi ptr [ %99, %98 ], [ %83, %82 ]
  %102 = phi i32 [ 1, %98 ], [ %85, %82 ]
  %103 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !201
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %108 = load i32, ptr %107, align 8, !tbaa !196
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5, i32 noundef %108) #15
  br label %109

109:                                              ; preds = %89, %106, %100, %93
  %110 = phi i32 [ 1, %106 ], [ %102, %100 ], [ 1, %93 ], [ %85, %89 ]
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 8
  %112 = load i64, ptr %111, align 8, !tbaa !202
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %116 = load i32, ptr %115, align 8, !tbaa !196
  %117 = trunc i64 %112 to i32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.6, i32 noundef %116, i32 noundef %117) #15
  br label %118

118:                                              ; preds = %114, %109
  %119 = phi i32 [ 1, %114 ], [ %110, %109 ]
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 11
  %121 = load i32, ptr %120, align 8, !tbaa !203
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %125 = load i32, ptr %124, align 8, !tbaa !196
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7, i32 noundef %125, i32 noundef %121) #15
  br label %126

126:                                              ; preds = %123, %118
  %127 = phi i32 [ 1, %123 ], [ %119, %118 ]
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 1
  %129 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %128) #16
  store i32 0, ptr %2, align 8, !tbaa.struct !204
  store ptr %129, ptr %81, align 8, !tbaa.struct !206
  %130 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %129, ptr noundef nonnull %1) #16, !range !207
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %220, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  br label %134

134:                                              ; preds = %132, %201
  %135 = phi i32 [ %127, %132 ], [ %202, %201 ]
  %136 = phi i32 [ 0, %132 ], [ %188, %201 ]
  %137 = load ptr, ptr %1, align 8, !tbaa !172
  %138 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !208
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 9
  %141 = load i32, ptr %140, align 8, !tbaa !196
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds ptr, ptr %15, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !172
  %145 = icmp eq ptr %144, %84
  br i1 %145, label %146, label %151

146:                                              ; preds = %134
  %147 = load ptr, ptr %137, align 8, !tbaa !210
  %148 = getelementptr inbounds %struct.basic_block_def, ptr %147, i64 0, i32 9
  %149 = load i32, ptr %148, align 8, !tbaa !196
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8, i32 noundef %149, i32 noundef %141) #15
  %150 = load ptr, ptr %138, align 8, !tbaa !208
  br label %151

151:                                              ; preds = %146, %134
  %152 = phi ptr [ %150, %146 ], [ %139, %134 ]
  %153 = phi i32 [ 1, %146 ], [ %135, %134 ]
  %154 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 8
  %155 = load i32, ptr %154, align 4, !tbaa !211
  %156 = icmp ugt i32 %155, 10000
  br i1 %156, label %157, label %164

157:                                              ; preds = %151
  %158 = load ptr, ptr %137, align 8, !tbaa !210
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %158, i64 0, i32 9
  %160 = load i32, ptr %159, align 8, !tbaa !196
  %161 = getelementptr inbounds %struct.basic_block_def, ptr %152, i64 0, i32 9
  %162 = load i32, ptr %161, align 8, !tbaa !196
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9, i32 noundef %160, i32 noundef %162, i32 noundef %155) #15
  %163 = load ptr, ptr %138, align 8, !tbaa !208
  br label %164

164:                                              ; preds = %151, %157
  %165 = phi ptr [ %163, %157 ], [ %152, %151 ]
  %166 = phi i32 [ 1, %157 ], [ %153, %151 ]
  %167 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 9
  %168 = load i64, ptr %167, align 8, !tbaa !212
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %164
  %171 = load ptr, ptr %137, align 8, !tbaa !210
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 9
  %173 = load i32, ptr %172, align 8, !tbaa !196
  %174 = getelementptr inbounds %struct.basic_block_def, ptr %165, i64 0, i32 9
  %175 = load i32, ptr %174, align 8, !tbaa !196
  %176 = trunc i64 %168 to i32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.10, i32 noundef %173, i32 noundef %175, i32 noundef %176) #15
  %177 = load ptr, ptr %138, align 8, !tbaa !208
  br label %178

178:                                              ; preds = %170, %164
  %179 = phi ptr [ %177, %170 ], [ %165, %164 ]
  %180 = phi i32 [ 1, %170 ], [ %166, %164 ]
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %179, i64 0, i32 9
  %182 = load i32, ptr %181, align 8, !tbaa !196
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds ptr, ptr %15, i64 %183
  store ptr %84, ptr %184, align 8, !tbaa !172
  %185 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 7
  %186 = load i32, ptr %185, align 8, !tbaa !213
  %187 = and i32 %186, 1
  %188 = add i32 %187, %136
  %189 = load ptr, ptr %137, align 8, !tbaa !210
  %190 = icmp eq ptr %189, %84
  br i1 %190, label %201, label %191

191:                                              ; preds = %178
  %192 = load i32, ptr %133, align 8, !tbaa !196
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.11, i32 noundef %192) #15
  %193 = load ptr, ptr @stderr, align 8, !tbaa !172
  %194 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 13, i64 1, ptr %193) #18
  %195 = load ptr, ptr @stderr, align 8, !tbaa !172
  tail call void @dump_edge_info(ptr noundef %195, ptr noundef nonnull %137, i32 noundef 0) #15
  %196 = load ptr, ptr @stderr, align 8, !tbaa !172
  %197 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %196) #18
  %198 = load ptr, ptr @stderr, align 8, !tbaa !172
  tail call void @dump_edge_info(ptr noundef %198, ptr noundef nonnull %137, i32 noundef 1) #15
  %199 = load ptr, ptr @stderr, align 8, !tbaa !172
  %200 = tail call i32 @fputc(i32 10, ptr %199)
  br label %201

201:                                              ; preds = %191, %178
  %202 = phi i32 [ 1, %191 ], [ %180, %178 ]
  %203 = ptrtoint ptr %137 to i64
  %204 = load ptr, ptr %138, align 8, !tbaa !208
  %205 = getelementptr inbounds %struct.basic_block_def, ptr %204, i64 0, i32 9
  %206 = load i32, ptr %205, align 8, !tbaa !196
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, ptr %22, i64 %207
  %209 = load i64, ptr %208, align 8, !tbaa !214
  %210 = add i64 %209, %203
  store i64 %210, ptr %208, align 8, !tbaa !214
  call fastcc void @ei_next(ptr noundef nonnull %2) #16
  %211 = load i32, ptr %2, align 8
  %212 = load ptr, ptr %81, align 8
  %213 = call fastcc zeroext i8 @ei_cond(i32 %211, ptr %212, ptr noundef nonnull %1) #16, !range !207
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %134, !llvm.loop !215

215:                                              ; preds = %201
  %216 = icmp sgt i32 %188, 1
  br i1 %216, label %217, label %220

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %219 = load i32, ptr %218, align 8, !tbaa !196
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.15, i32 noundef %219) #15
  br label %220

220:                                              ; preds = %126, %217, %215
  %221 = phi i32 [ 1, %217 ], [ %202, %215 ], [ %127, %126 ]
  %222 = tail call fastcc ptr @ei_start_1(ptr noundef %84) #16
  store i32 0, ptr %2, align 8, !tbaa.struct !204
  store ptr %222, ptr %81, align 8, !tbaa.struct !206
  %223 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %222, ptr noundef nonnull %1) #16, !range !207
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %274, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  br label %227

227:                                              ; preds = %225, %260
  %228 = phi i32 [ 0, %225 ], [ %270, %260 ]
  %229 = phi i32 [ %221, %225 ], [ %261, %260 ]
  %230 = load ptr, ptr %1, align 8, !tbaa !172
  %231 = getelementptr inbounds %struct.edge_def, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !208
  %233 = icmp eq ptr %232, %84
  br i1 %233, label %244, label %234

234:                                              ; preds = %227
  %235 = load i32, ptr %226, align 8, !tbaa !196
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16, i32 noundef %235) #15
  %236 = load ptr, ptr @stderr, align 8, !tbaa !172
  %237 = tail call i32 @fputs(ptr noundef nonnull @.str.12, ptr noundef %236) #19
  %238 = load ptr, ptr @stderr, align 8, !tbaa !172
  tail call void @dump_edge_info(ptr noundef %238, ptr noundef nonnull %230, i32 noundef 0) #15
  %239 = load ptr, ptr @stderr, align 8, !tbaa !172
  %240 = tail call i32 @fputs(ptr noundef nonnull @.str.13, ptr noundef %239) #19
  %241 = load ptr, ptr @stderr, align 8, !tbaa !172
  tail call void @dump_edge_info(ptr noundef %241, ptr noundef nonnull %230, i32 noundef 1) #15
  %242 = load ptr, ptr @stderr, align 8, !tbaa !172
  %243 = tail call i32 @fputc(i32 noundef 10, ptr noundef %242) #16
  br label %244

244:                                              ; preds = %234, %227
  %245 = phi i32 [ 1, %234 ], [ %229, %227 ]
  %246 = getelementptr inbounds %struct.edge_def, ptr %230, i64 0, i32 6
  %247 = load i32, ptr %246, align 4, !tbaa !216
  %248 = icmp eq i32 %228, %247
  br i1 %248, label %260, label %249

249:                                              ; preds = %244
  %250 = load i32, ptr %226, align 8, !tbaa !196
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16, i32 noundef %250) #15
  %251 = load i32, ptr %246, align 4, !tbaa !216
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.17, i32 noundef %228, i32 noundef %251) #15
  %252 = load ptr, ptr @stderr, align 8, !tbaa !172
  %253 = tail call i32 @fputs(ptr noundef nonnull @.str.12, ptr noundef %252) #19
  %254 = load ptr, ptr @stderr, align 8, !tbaa !172
  tail call void @dump_edge_info(ptr noundef %254, ptr noundef nonnull %230, i32 noundef 0) #15
  %255 = load ptr, ptr @stderr, align 8, !tbaa !172
  %256 = tail call i32 @fputs(ptr noundef nonnull @.str.13, ptr noundef %255) #19
  %257 = load ptr, ptr @stderr, align 8, !tbaa !172
  tail call void @dump_edge_info(ptr noundef %257, ptr noundef nonnull %230, i32 noundef 1) #15
  %258 = load ptr, ptr @stderr, align 8, !tbaa !172
  %259 = tail call i32 @fputc(i32 noundef 10, ptr noundef %258) #16
  br label %260

260:                                              ; preds = %249, %244
  %261 = phi i32 [ 1, %249 ], [ %245, %244 ]
  %262 = ptrtoint ptr %230 to i64
  %263 = load ptr, ptr %231, align 8, !tbaa !208
  %264 = getelementptr inbounds %struct.basic_block_def, ptr %263, i64 0, i32 9
  %265 = load i32, ptr %264, align 8, !tbaa !196
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, ptr %22, i64 %266
  %268 = load i64, ptr %267, align 8, !tbaa !214
  %269 = sub i64 %268, %262
  store i64 %269, ptr %267, align 8, !tbaa !214
  call fastcc void @ei_next(ptr noundef nonnull %2) #16
  %270 = load i32, ptr %2, align 8
  %271 = load ptr, ptr %81, align 8
  %272 = call fastcc zeroext i8 @ei_cond(i32 %270, ptr %271, ptr noundef nonnull %1) #16, !range !207
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %274, label %227, !llvm.loop !217

274:                                              ; preds = %260, %220
  %275 = phi i32 [ %221, %220 ], [ %261, %260 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  %276 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 5
  %277 = load ptr, ptr %276, align 8, !tbaa !197
  %278 = load ptr, ptr @cfun, align 8, !tbaa !172
  %279 = getelementptr inbounds %struct.function, ptr %278, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !185
  %281 = load ptr, ptr %280, align 8, !tbaa !190
  %282 = icmp eq ptr %277, %281
  br i1 %282, label %283, label %82, !llvm.loop !218

283:                                              ; preds = %274, %70
  %284 = phi i32 [ %74, %70 ], [ %275, %274 ]
  %285 = phi ptr [ %71, %70 ], [ %277, %274 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %286 = getelementptr inbounds %struct.basic_block_def, ptr %285, i64 0, i32 1
  %287 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %286) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !204
  %288 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %287, ptr %288, align 8, !tbaa.struct !206
  %289 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %287, ptr noundef nonnull %3) #16, !range !207
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %306, label %291

291:                                              ; preds = %283, %291
  %292 = load ptr, ptr %3, align 8, !tbaa !172
  %293 = ptrtoint ptr %292 to i64
  %294 = getelementptr inbounds %struct.edge_def, ptr %292, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !208
  %296 = getelementptr inbounds %struct.basic_block_def, ptr %295, i64 0, i32 9
  %297 = load i32, ptr %296, align 8, !tbaa !196
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i64, ptr %22, i64 %298
  %300 = load i64, ptr %299, align 8, !tbaa !214
  %301 = add i64 %300, %293
  store i64 %301, ptr %299, align 8, !tbaa !214
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %302 = load i32, ptr %4, align 8
  %303 = load ptr, ptr %288, align 8
  %304 = call fastcc zeroext i8 @ei_cond(i32 %302, ptr %303, ptr noundef nonnull %3) #16, !range !207
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %306, label %291, !llvm.loop !219

306:                                              ; preds = %291, %283
  %307 = load ptr, ptr @cfun, align 8, !tbaa !172
  %308 = getelementptr inbounds %struct.function, ptr %307, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !185
  %310 = getelementptr inbounds %struct.control_flow_graph, ptr %309, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !194
  %312 = tail call fastcc ptr @ei_start_1(ptr noundef %311) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !204
  store ptr %312, ptr %288, align 8, !tbaa.struct !206
  %313 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %312, ptr noundef nonnull %3) #16, !range !207
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %330, label %315

315:                                              ; preds = %306, %315
  %316 = load ptr, ptr %3, align 8, !tbaa !172
  %317 = ptrtoint ptr %316 to i64
  %318 = getelementptr inbounds %struct.edge_def, ptr %316, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !208
  %320 = getelementptr inbounds %struct.basic_block_def, ptr %319, i64 0, i32 9
  %321 = load i32, ptr %320, align 8, !tbaa !196
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64, ptr %22, i64 %322
  %324 = load i64, ptr %323, align 8, !tbaa !214
  %325 = sub i64 %324, %317
  store i64 %325, ptr %323, align 8, !tbaa !214
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %326 = load i32, ptr %4, align 8
  %327 = load ptr, ptr %288, align 8
  %328 = call fastcc zeroext i8 @ei_cond(i32 %326, ptr %327, ptr noundef nonnull %3) #16, !range !207
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %330, label %315, !llvm.loop !220

330:                                              ; preds = %315, %306
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  %331 = load ptr, ptr @cfun, align 8, !tbaa !172
  %332 = getelementptr inbounds %struct.function, ptr %331, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !185
  %334 = load ptr, ptr %333, align 8, !tbaa !172
  %335 = icmp eq ptr %334, null
  br i1 %335, label %351, label %336

336:                                              ; preds = %330, %346
  %337 = phi ptr [ %349, %346 ], [ %334, %330 ]
  %338 = phi i32 [ %347, %346 ], [ %284, %330 ]
  %339 = getelementptr inbounds %struct.basic_block_def, ptr %337, i64 0, i32 9
  %340 = load i32, ptr %339, align 8, !tbaa !196
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i64, ptr %22, i64 %341
  %343 = load i64, ptr %342, align 8, !tbaa !214
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %336
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.18, i32 noundef %340) #15
  br label %346

346:                                              ; preds = %336, %345
  %347 = phi i32 [ 1, %345 ], [ %338, %336 ]
  %348 = getelementptr inbounds %struct.basic_block_def, ptr %337, i64 0, i32 6
  %349 = load ptr, ptr %348, align 8, !tbaa !172
  %350 = icmp eq ptr %349, null
  br i1 %350, label %351, label %336, !llvm.loop !221

351:                                              ; preds = %346, %330
  %352 = phi i32 [ %284, %330 ], [ %347, %346 ]
  tail call void @free(ptr noundef %15) #16
  tail call void @free(ptr noundef %22) #16
  %353 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %354 = getelementptr inbounds %struct.cfg_hooks, ptr %353, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !222
  %356 = icmp eq ptr %355, null
  br i1 %356, label %360, label %357

357:                                              ; preds = %351
  %358 = tail call i32 %355() #15
  %359 = or i32 %358, %352
  br label %360

360:                                              ; preds = %357, %351
  %361 = phi i32 [ %359, %357 ], [ %352, %351 ]
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %364, label %363

363:                                              ; preds = %360
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.19) #15
  br label %364

364:                                              ; preds = %360, %363
  %365 = load i8, ptr @timevar_enable, align 1, !tbaa !184
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %368, label %367

367:                                              ; preds = %364
  tail call void @timevar_pop_1(i32 noundef 24) #15
  br label %368

368:                                              ; preds = %367, %364
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !178 !PGOFuncName !224 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  ret ptr %5
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 !prof !225 !PGOFuncName !226 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !prof !227 !PGOFuncName !228 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #16, !range !207
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !229

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #16
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !172
  ret i8 %10
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare void @dump_edge_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #3 !prof !230 !PGOFuncName !231 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !232

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #16
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #16
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !233

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !234
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !234
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #3 !prof !236 !PGOFuncName !237 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !238

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #16
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #3 !prof !239 !PGOFuncName !240 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !241

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #16
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !242 !PGOFuncName !243 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !244

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !245
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #3 !prof !247 !PGOFuncName !248 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !249

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 687, ptr noundef nonnull @.str.1) #15
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !172
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !250 !PGOFuncName !251 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !178 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %6 = sext i32 %2 to i64
  %7 = add nsw i64 %6, 1
  %8 = alloca i8, i64 %7, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %8, i8 32, i64 %6, i1 false)
  %9 = getelementptr inbounds i8, ptr %8, i64 %6
  store i8 0, ptr %9, align 1, !tbaa !184
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !196
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !252
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef nonnull %8, i32 noundef %11, i32 noundef %13) #16
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !202
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.22, i64 noundef %16) #16
  %18 = call i32 @putc(i32 noundef 10, ptr noundef %1) #16
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull %8) #16
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !197
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !196
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %25) #16
  br label %29

27:                                               ; preds = %3
  %28 = call i64 @fwrite(ptr nonnull @.str.25, i64 7, i64 1, ptr %1)
  br label %29

29:                                               ; preds = %27, %23
  %30 = call i64 @fwrite(ptr nonnull @.str.26, i64 11, i64 1, ptr %1)
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !191
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !196
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %36) #16
  br label %40

38:                                               ; preds = %29
  %39 = call i64 @fwrite(ptr nonnull @.str.28, i64 5, i64 1, ptr %1)
  br label %40

40:                                               ; preds = %38, %34
  %41 = call i32 @putc(i32 noundef 10, ptr noundef %1) #16
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull %8) #16
  %43 = call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #16
  store i32 0, ptr %5, align 8, !tbaa.struct !204
  %44 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %43, ptr %44, align 8, !tbaa.struct !206
  %45 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %43, ptr noundef nonnull %4) #16, !range !207
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40, %47
  %48 = load ptr, ptr %4, align 8, !tbaa !172
  call void @dump_edge_info(ptr noundef %1, ptr noundef %48, i32 noundef 0) #15
  call fastcc void @ei_next(ptr noundef nonnull %5) #16
  %49 = load i32, ptr %5, align 8
  %50 = load ptr, ptr %44, align 8
  %51 = call fastcc zeroext i8 @ei_cond(i32 %49, ptr %50, ptr noundef nonnull %4) #16, !range !207
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %47, !llvm.loop !253

53:                                               ; preds = %47, %40
  %54 = call i32 @putc(i32 noundef 10, ptr noundef %1) #16
  %55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull %8) #16
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %57 = call fastcc ptr @ei_start_1(ptr noundef nonnull %56) #16
  store i32 0, ptr %5, align 8, !tbaa.struct !204
  store ptr %57, ptr %44, align 8, !tbaa.struct !206
  %58 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %57, ptr noundef nonnull %4) #16, !range !207
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %53, %60
  %61 = load ptr, ptr %4, align 8, !tbaa !172
  call void @dump_edge_info(ptr noundef %1, ptr noundef %61, i32 noundef 1) #15
  call fastcc void @ei_next(ptr noundef nonnull %5) #16
  %62 = load i32, ptr %5, align 8
  %63 = load ptr, ptr %44, align 8
  %64 = call fastcc zeroext i8 @ei_cond(i32 %62, ptr %63, ptr noundef nonnull %4) #16, !range !207
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %60, !llvm.loop !254

66:                                               ; preds = %60, %53
  %67 = call i32 @putc(i32 noundef 10, ptr noundef %1) #16
  %68 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %69 = getelementptr inbounds %struct.cfg_hooks, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !255
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  call void %70(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0) #15
  br label %73

73:                                               ; preds = %72, %66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !256 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !257
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12, !prof !258

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.31, ptr noundef %8) #15
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !257
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %14 = tail call ptr %13(ptr noundef %0, ptr noundef %1) #15
  %15 = load ptr, ptr @cfun, align 8, !tbaa !172
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !201
  %18 = icmp ne ptr %17, null
  %19 = icmp eq ptr %14, %0
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !260

21:                                               ; preds = %12
  tail call void @rescan_loop_exit(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %22

22:                                               ; preds = %21, %12
  ret ptr %14
}

; Function Attrs: optsize
declare void @rescan_loop_exit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_remove_branch_p(ptr noundef %0) local_unnamed_addr #3 !prof !261 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !262
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !263

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.32, ptr noundef %7) #15
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr %0, align 8, !tbaa !210
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !264
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #16
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %19, !prof !265

14:                                               ; preds = %8
  %15 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %16 = getelementptr inbounds %struct.cfg_hooks, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !262
  %18 = tail call zeroext i8 %17(ptr noundef nonnull %0) #15
  br label %19

19:                                               ; preds = %8, %14
  %20 = phi i8 [ %18, %14 ], [ 0, %8 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_branch(ptr noundef %0) local_unnamed_addr #3 !prof !261 {
  %2 = load ptr, ptr %0, align 8, !tbaa !210
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !264
  %5 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %4) #16
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %9, label %7, !prof !265

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 363, ptr noundef nonnull @.str.1) #15
  %8 = load ptr, ptr %3, align 8, !tbaa !264
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi ptr [ %4, %1 ], [ %8, %7 ]
  %11 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %10, i32 noundef 0) #16
  %12 = icmp eq ptr %11, %0
  %13 = zext i1 %12 to i32
  %14 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %10, i32 noundef %13) #16
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !213
  %17 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !208
  %19 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %0, ptr noundef %18) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !263

21:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 369, ptr noundef nonnull @.str.1) #15
  br label %22

22:                                               ; preds = %9, %21
  %23 = and i32 %16, 128
  %24 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !213
  %26 = and i32 %25, -129
  %27 = or disjoint i32 %26, %23
  store i32 %27, ptr %24, align 8, !tbaa !213
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_edge(ptr noundef %0) local_unnamed_addr #3 !prof !266 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !172
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !201
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !267

6:                                                ; preds = %1
  tail call void @rescan_loop_exit(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #15
  br label %7

7:                                                ; preds = %6, %1
  tail call void @remove_edge_raw(ptr noundef %0) #15
  ret void
}

; Function Attrs: optsize
declare void @remove_edge_raw(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @redirect_edge_and_branch_force(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !268 {
  %3 = load ptr, ptr %0, align 8, !tbaa !210
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !269
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !270

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.33, ptr noundef %9) #15
  br label %10

10:                                               ; preds = %8, %2
  %11 = load ptr, ptr @cfun, align 8, !tbaa !172
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !201
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !271

15:                                               ; preds = %10
  tail call void @rescan_loop_exit(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #15
  br label %16

16:                                               ; preds = %15, %10
  %17 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %18 = getelementptr inbounds %struct.cfg_hooks, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !269
  %20 = tail call ptr %19(ptr noundef nonnull %0, ptr noundef %1) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22, !prof !272

22:                                               ; preds = %16
  %23 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25, !prof !273

25:                                               ; preds = %22
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %20, ptr noundef %3) #15
  br label %26

26:                                               ; preds = %25, %22
  %27 = load ptr, ptr @cfun, align 8, !tbaa !172
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !201
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %36, !prof !271

31:                                               ; preds = %16
  %32 = load ptr, ptr @cfun, align 8, !tbaa !172
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !201
  %35 = icmp eq ptr %34, null
  br i1 %35, label %48, label %44, !prof !271

36:                                               ; preds = %26
  %37 = tail call fastcc ptr @single_pred(ptr noundef nonnull %20) #16
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !200
  %40 = tail call fastcc ptr @single_succ(ptr noundef nonnull %20) #16
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !200
  %43 = tail call ptr @find_common_loop(ptr noundef %39, ptr noundef %42) #15
  tail call void @add_bb_to_loop(ptr noundef nonnull %20, ptr noundef %43) #15
  br label %48

44:                                               ; preds = %31
  %45 = tail call ptr @find_edge(ptr noundef %3, ptr noundef %1) #15
  %46 = icmp eq ptr %45, %0
  br i1 %46, label %47, label %48, !prof !274

47:                                               ; preds = %44
  tail call void @rescan_loop_exit(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %48

48:                                               ; preds = %31, %36, %47, %44, %26
  ret ptr %20
}

; Function Attrs: optsize
declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !275 !PGOFuncName !276 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #16
  %3 = load ptr, ptr %2, align 8, !tbaa !210
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !277 !PGOFuncName !278 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !208
  ret ptr %4
}

; Function Attrs: optsize
declare void @add_bb_to_loop(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !279 !PGOFuncName !280 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #16, !range !207
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !281

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 655, ptr noundef nonnull @.str.1) #15
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !282
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #16
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !279 !PGOFuncName !283 {
  %2 = load ptr, ptr %0, align 8, !tbaa !282
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #16
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !284 !PGOFuncName !285 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #16, !range !207
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !286

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !264
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #16
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !284 !PGOFuncName !287 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !264
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #16
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @split_block(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !288 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !289
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12, !prof !290

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.34, ptr noundef %8) #15
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !289
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %14 = tail call ptr %13(ptr noundef %0, ptr noundef %1) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16, !prof !290

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !202
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 8
  store i64 %18, ptr %19, align 8, !tbaa !202
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 10
  %22 = load <2 x i32>, ptr %20, align 4, !tbaa !205
  store <2 x i32> %22, ptr %21, align 4, !tbaa !205
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 12
  %24 = load i32, ptr %23, align 4, !tbaa !291
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 12
  store i32 %24, ptr %25, align 4, !tbaa !291
  %26 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #15
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28, !prof !292

28:                                               ; preds = %16
  tail call void @redirect_immediate_dominators(i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %14) #15
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %14, ptr noundef nonnull %0) #15
  br label %29

29:                                               ; preds = %28, %16
  %30 = load ptr, ptr @cfun, align 8, !tbaa !172
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !201
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34, !prof !293

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !200
  tail call void @add_bb_to_loop(ptr noundef nonnull %14, ptr noundef %36) #15
  %37 = load ptr, ptr %35, align 8, !tbaa !200
  %38 = getelementptr inbounds %struct.loop, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !294
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %42, !prof !298

41:                                               ; preds = %34
  store ptr %14, ptr %38, align 8, !tbaa !294
  br label %42

42:                                               ; preds = %34, %41, %29
  %43 = tail call ptr @make_single_succ_edge(ptr noundef nonnull %0, ptr noundef nonnull %14, i32 noundef 1) #15
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !299
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48, !prof !300

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 13
  %50 = load i32, ptr %49, align 8, !tbaa !299
  %51 = or i32 %50, 4
  store i32 %51, ptr %49, align 8, !tbaa !299
  %52 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !213
  %54 = or i32 %53, 128
  store i32 %54, ptr %52, align 8, !tbaa !213
  br label %55

55:                                               ; preds = %42, %48, %12
  %56 = phi ptr [ null, %12 ], [ %43, %48 ], [ %43, %42 ]
  ret ptr %56
}

; Function Attrs: optsize
declare void @redirect_immediate_dominators(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @make_single_succ_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @split_block_after_labels(ptr noundef %0) local_unnamed_addr #3 !prof !301 {
  %2 = tail call ptr @split_block(ptr noundef %0, ptr noundef null) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @move_block_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !302 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12, !prof !304

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.35, ptr noundef %8) #15
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !303
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %14 = tail call zeroext i8 %13(ptr noundef %0, ptr noundef %1) #15
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_basic_block(ptr noundef %0) local_unnamed_addr #3 !prof !305 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !306
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11, !prof !307

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.36, ptr noundef %7) #15
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !306
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ %4, %1 ]
  tail call void %12(ptr noundef %0) #15
  %13 = load ptr, ptr @cfun, align 8, !tbaa !172
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !201
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !308

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !200
  %20 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !294
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %27, label %23, !prof !309

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !310
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %29, !prof !311

27:                                               ; preds = %23, %17
  %28 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  br label %29

29:                                               ; preds = %27, %23
  tail call void @remove_bb_from_loops(ptr noundef nonnull %0) #15
  br label %30

30:                                               ; preds = %29, %11
  %31 = load ptr, ptr %0, align 8, !tbaa !282
  %32 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %31) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39, !prof !312

34:                                               ; preds = %39, %30
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !264
  %37 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %36) #16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %45, !prof !313

39:                                               ; preds = %30, %39
  %40 = phi ptr [ %42, %39 ], [ %31, %30 ]
  %41 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %40, i32 noundef 0) #16
  tail call void @remove_edge(ptr noundef %41) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !282
  %43 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %42) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %34, label %39, !prof !314, !llvm.loop !315

45:                                               ; preds = %34, %45
  %46 = phi ptr [ %48, %45 ], [ %36, %34 ]
  %47 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %46, i32 noundef 0) #16
  tail call void @remove_edge(ptr noundef %47) #16
  %48 = load ptr, ptr %35, align 8, !tbaa !264
  %49 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %48) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %45, !prof !316, !llvm.loop !317

51:                                               ; preds = %45, %34
  %52 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #15
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54, !prof !318

54:                                               ; preds = %51
  tail call void @delete_from_dominance_info(i32 noundef 1, ptr noundef nonnull %0) #15
  br label %55

55:                                               ; preds = %54, %51
  %56 = tail call zeroext i8 @dom_info_available_p(i32 noundef 2) #15
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %59, label %58, !prof !319

58:                                               ; preds = %55
  tail call void @delete_from_dominance_info(i32 noundef 2, ptr noundef nonnull %0) #15
  br label %59

59:                                               ; preds = %58, %55
  tail call void @expunge_block(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: optsize
declare void @remove_bb_from_loops(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @delete_from_dominance_info(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @expunge_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @split_edge(ptr noundef %0) local_unnamed_addr #3 !prof !320 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %5 = load i64, ptr %4, align 8, !tbaa !212
  %6 = load ptr, ptr %0, align 8, !tbaa !210
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !203
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !211
  %11 = mul nsw i32 %10, %8
  %12 = add nsw i32 %11, 5000
  %13 = sdiv i32 %12, 10000
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %14 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !213
  %16 = and i32 %15, 128
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !208
  %20 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %21 = getelementptr inbounds %struct.cfg_hooks, ptr %20, i64 0, i32 16
  %22 = load ptr, ptr %21, align 8, !tbaa !321
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26, !prof !322

24:                                               ; preds = %1
  %25 = load ptr, ptr %20, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.37, ptr noundef %25) #15
  br label %26

26:                                               ; preds = %24, %1
  %27 = load ptr, ptr @cfun, align 8, !tbaa !172
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !201
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !323

31:                                               ; preds = %26
  tail call void @rescan_loop_exit(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #15
  br label %32

32:                                               ; preds = %31, %26
  %33 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %34 = getelementptr inbounds %struct.cfg_hooks, ptr %33, i64 0, i32 16
  %35 = load ptr, ptr %34, align 8, !tbaa !321
  %36 = tail call ptr %35(ptr noundef nonnull %0) #15
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 8
  store i64 %5, ptr %37, align 8, !tbaa !202
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 11
  store i32 %13, ptr %38, align 8, !tbaa !203
  %39 = tail call fastcc ptr @single_succ_edge(ptr noundef %36) #16
  %40 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 8
  store i32 10000, ptr %40, align 4, !tbaa !211
  %41 = tail call fastcc ptr @single_succ_edge(ptr noundef %36) #16
  %42 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 9
  store i64 %5, ptr %42, align 8, !tbaa !212
  br i1 %17, label %55, label %43, !prof !324

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !299
  %46 = or i32 %45, 4
  store i32 %46, ptr %44, align 8, !tbaa !299
  %47 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %36) #16
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !213
  %50 = or i32 %49, 128
  store i32 %50, ptr %48, align 8, !tbaa !213
  %51 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %36) #16
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !213
  %54 = or i32 %53, 128
  store i32 %54, ptr %52, align 8, !tbaa !213
  br label %55

55:                                               ; preds = %43, %32
  %56 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #15
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %60, label %58, !prof !325

58:                                               ; preds = %55
  %59 = tail call fastcc ptr @single_pred(ptr noundef nonnull %36) #16
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %36, ptr noundef %59) #15
  br label %60

60:                                               ; preds = %58, %55
  %61 = tail call i32 @dom_info_state(i32 noundef 1) #15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %94, label %63, !prof !325

63:                                               ; preds = %60
  %64 = tail call fastcc ptr @single_succ(ptr noundef nonnull %36) #16
  %65 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %64) #15
  %66 = tail call fastcc ptr @single_pred(ptr noundef nonnull %36) #16
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %94, !prof !326

68:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %69 = tail call fastcc ptr @single_succ(ptr noundef nonnull %36) #16
  %70 = tail call fastcc ptr @ei_start_1(ptr noundef %69) #16
  store i32 0, ptr %3, align 8, !tbaa.struct !204
  %71 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %70, ptr %71, align 8, !tbaa.struct !206
  %72 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %70, ptr noundef nonnull %2) #16, !range !207
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %88, label %74, !prof !327

74:                                               ; preds = %68, %83
  %75 = load ptr, ptr %2, align 8, !tbaa !172
  %76 = tail call fastcc ptr @single_succ_edge(ptr noundef %36) #16
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %83, label %78, !prof !328

78:                                               ; preds = %74
  %79 = load ptr, ptr %75, align 8, !tbaa !210
  %80 = tail call fastcc ptr @single_succ(ptr noundef %36) #16
  %81 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %79, ptr noundef %80) #15
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %88, label %83, !prof !329

83:                                               ; preds = %78, %74
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %84 = load i32, ptr %3, align 8
  %85 = load ptr, ptr %71, align 8
  %86 = call fastcc zeroext i8 @ei_cond(i32 %84, ptr %85, ptr noundef nonnull %2) #16, !range !207
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %74, !prof !330, !llvm.loop !331

88:                                               ; preds = %83, %78, %68
  %89 = load ptr, ptr %2, align 8, !tbaa !172
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %93, !prof !332

91:                                               ; preds = %88
  %92 = tail call fastcc ptr @single_succ(ptr noundef %36) #16
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %92, ptr noundef %36) #15
  br label %93

93:                                               ; preds = %91, %88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  br label %94

94:                                               ; preds = %63, %93, %60
  %95 = load ptr, ptr @cfun, align 8, !tbaa !172
  %96 = getelementptr inbounds %struct.function, ptr %95, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !201
  %98 = icmp eq ptr %97, null
  br i1 %98, label %109, label %99, !prof !323

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !200
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !200
  %104 = tail call ptr @find_common_loop(ptr noundef %101, ptr noundef %103) #15
  tail call void @add_bb_to_loop(ptr noundef %36, ptr noundef %104) #15
  %105 = getelementptr inbounds %struct.loop, ptr %104, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !294
  %107 = icmp eq ptr %106, %6
  br i1 %107, label %108, label %109, !prof !333

108:                                              ; preds = %99
  store ptr %36, ptr %105, align 8, !tbaa !294
  br label %109

109:                                              ; preds = %99, %108, %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret ptr %36
}

; Function Attrs: optsize
declare i32 @dom_info_state(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_basic_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !334 {
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !335
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13, !prof !336

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.38, ptr noundef %9) #15
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !335
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi ptr [ %12, %8 ], [ %6, %3 ]
  %15 = tail call ptr %14(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  %16 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18, !prof !337

18:                                               ; preds = %13
  tail call void @add_to_dominance_info(i32 noundef 1, ptr noundef %15) #15
  br label %19

19:                                               ; preds = %18, %13
  %20 = tail call zeroext i8 @dom_info_available_p(i32 noundef 2) #15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22, !prof !338

22:                                               ; preds = %19
  tail call void @add_to_dominance_info(i32 noundef 2, ptr noundef %15) #15
  br label %23

23:                                               ; preds = %22, %19
  ret ptr %15
}

; Function Attrs: optsize
declare void @add_to_dominance_info(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_empty_bb(ptr noundef %0) local_unnamed_addr #3 !prof !339 {
  %2 = tail call ptr @create_basic_block(ptr noundef null, ptr noundef null, ptr noundef %0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_merge_blocks_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !340 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !341
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12, !prof !342

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.39, ptr noundef %8) #15
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !341
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %14 = tail call zeroext i8 %13(ptr noundef %0, ptr noundef %1) #15
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @predict_edge(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !343 {
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !344
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13, !prof !345

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.40, ptr noundef %9) #15
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !344
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi ptr [ %12, %8 ], [ %6, %3 ]
  tail call void %14(ptr noundef %0, i32 noundef %1, i32 noundef %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @predicted_by_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !346 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !344
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10, !prof !347

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.41, ptr noundef %8) #15
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %9, %7 ], [ %3, %2 ]
  %12 = getelementptr inbounds %struct.cfg_hooks, ptr %11, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !348
  %14 = tail call zeroext i8 %13(ptr noundef %0, i32 noundef %1) #15
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @merge_blocks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !349 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.cfg_hooks, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !350
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14, !prof !351

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.42, ptr noundef %10) #15
  %11 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %12 = getelementptr inbounds %struct.cfg_hooks, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !350
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi ptr [ %13, %9 ], [ %7, %2 ]
  tail call void %15(ptr noundef %0, ptr noundef %1) #15
  %16 = load ptr, ptr @cfun, align 8, !tbaa !172
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !201
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !352

20:                                               ; preds = %14
  tail call void @remove_bb_from_loops(ptr noundef %1) #15
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !264
  %24 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %23) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26, !prof !353

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %29, %26 ], [ %23, %21 ]
  %28 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 0) #16
  tail call void @remove_edge(ptr noundef %28) #16
  %29 = load ptr, ptr %22, align 8, !tbaa !264
  %30 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %29) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %26, !prof !354, !llvm.loop !355

32:                                               ; preds = %26, %21
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %34 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %33) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !204
  %35 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %34, ptr %35, align 8, !tbaa.struct !206
  %36 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %34, ptr noundef nonnull %3) #16, !range !207
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %50, label %38, !prof !353

38:                                               ; preds = %32, %45
  %39 = load ptr, ptr %3, align 8, !tbaa !172
  store ptr %0, ptr %39, align 8, !tbaa !210
  %40 = load ptr, ptr @cfun, align 8, !tbaa !172
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !201
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44, !prof !356

44:                                               ; preds = %38
  tail call void @rescan_loop_exit(ptr noundef nonnull %39, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %45

45:                                               ; preds = %38, %44
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %46 = load i32, ptr %4, align 8
  %47 = load ptr, ptr %35, align 8
  %48 = call fastcc zeroext i8 @ei_cond(i32 %46, ptr %47, ptr noundef nonnull %3) #16, !range !207
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %38, !prof !357, !llvm.loop !358

50:                                               ; preds = %45, %32
  %51 = load ptr, ptr %33, align 8, !tbaa !264
  store ptr %51, ptr %22, align 8, !tbaa !264
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %53 = load i32, ptr %52, align 8, !tbaa !299
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %55 = load i32, ptr %54, align 8, !tbaa !299
  %56 = or i32 %55, %53
  store i32 %56, ptr %54, align 8, !tbaa !299
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %57 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #15
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59, !prof !359

59:                                               ; preds = %50
  tail call void @redirect_immediate_dominators(i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %0) #15
  br label %60

60:                                               ; preds = %59, %50
  %61 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #15
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63, !prof !359

63:                                               ; preds = %60
  tail call void @delete_from_dominance_info(i32 noundef 1, ptr noundef nonnull %1) #15
  br label %64

64:                                               ; preds = %63, %60
  %65 = tail call zeroext i8 @dom_info_available_p(i32 noundef 2) #15
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67, !prof !360

67:                                               ; preds = %64
  tail call void @delete_from_dominance_info(i32 noundef 2, ptr noundef nonnull %1) #15
  br label %68

68:                                               ; preds = %67, %64
  tail call void @expunge_block(ptr noundef nonnull %1) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_forwarder_block(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #3 !prof !301 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %7 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %8 = getelementptr inbounds %struct.cfg_hooks, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !361
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13, !prof !362

11:                                               ; preds = %3
  %12 = load ptr, ptr %7, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.43, ptr noundef %12) #15
  br label %13

13:                                               ; preds = %11, %3
  %14 = tail call ptr @split_block_after_labels(ptr noundef %0) #16
  %15 = load ptr, ptr %14, align 8, !tbaa !210
  %16 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !208
  %18 = tail call fastcc ptr @ei_start_1(ptr noundef %15) #16
  store i32 0, ptr %5, align 8, !tbaa.struct !204
  %19 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %18, ptr %19, align 8, !tbaa.struct !206
  %20 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %18) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %90, label %22, !prof !363

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 11
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 8
  %25 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 9
  br label %26

26:                                               ; preds = %22, %85
  %27 = phi ptr [ %18, %22 ], [ %86, %85 ]
  %28 = phi i32 [ 0, %22 ], [ %87, %85 ]
  %29 = phi ptr [ %20, %22 ], [ %88, %85 ]
  %30 = tail call zeroext i8 %1(ptr noundef nonnull %29) #15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32, !prof !364

32:                                               ; preds = %26
  call fastcc void @ei_next(ptr noundef nonnull %5) #16
  %33 = load i32, ptr %5, align 8
  %34 = load ptr, ptr %19, align 8
  br label %85, !llvm.loop !365

35:                                               ; preds = %26
  %36 = load ptr, ptr %29, align 8, !tbaa !210
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 11
  %38 = load i32, ptr %37, align 8, !tbaa !203
  %39 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 8
  %40 = load i32, ptr %39, align 4, !tbaa !211
  %41 = mul nsw i32 %40, %38
  %42 = add nsw i32 %41, 5000
  %43 = sdiv i32 %42, -10000
  %44 = load i32, ptr %23, align 8, !tbaa !203
  %45 = add i32 %43, %44
  store i32 %45, ptr %23, align 8, !tbaa !203
  %46 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 9
  %47 = load i64, ptr %46, align 8, !tbaa !212
  %48 = load i64, ptr %24, align 8, !tbaa !202
  %49 = sub nsw i64 %48, %47
  store i64 %49, ptr %24, align 8, !tbaa !202
  %50 = icmp slt i32 %45, 0
  br i1 %50, label %51, label %52, !prof !366

51:                                               ; preds = %35
  store i32 0, ptr %23, align 8, !tbaa !203
  br label %52

52:                                               ; preds = %51, %35
  %53 = icmp slt i64 %49, 0
  br i1 %53, label %54, label %55, !prof !367

54:                                               ; preds = %52
  store i64 0, ptr %24, align 8, !tbaa !202
  br label %55

55:                                               ; preds = %54, %52
  %56 = load i64, ptr %25, align 8, !tbaa !212
  %57 = sub nsw i64 %56, %47
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60, !prof !367

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i64 [ 0, %59 ], [ %57, %55 ]
  store i64 %61, ptr %25, align 8, !tbaa !212
  %62 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %29, ptr noundef %17) #16
  %63 = icmp eq ptr %62, null
  br i1 %63, label %85, label %64, !prof !368

64:                                               ; preds = %60
  %65 = load ptr, ptr @cfun, align 8, !tbaa !172
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !201
  %68 = icmp eq ptr %67, null
  br i1 %68, label %82, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !200
  %72 = icmp eq ptr %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.loop, ptr %71, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !310
  %76 = icmp eq ptr %75, %15
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.loop, ptr %71, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !294
  %80 = icmp eq ptr %79, %36
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store ptr %62, ptr %78, align 8, !tbaa !294
  br label %82

82:                                               ; preds = %81, %77, %73, %69, %64
  %83 = icmp eq ptr %2, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %82
  tail call void %2(ptr noundef nonnull %62) #15
  br label %85

85:                                               ; preds = %60, %84, %82, %32
  %86 = phi ptr [ %27, %60 ], [ %27, %84 ], [ %27, %82 ], [ %34, %32 ]
  %87 = phi i32 [ %28, %60 ], [ %28, %84 ], [ %28, %82 ], [ %33, %32 ]
  %88 = tail call fastcc ptr @ei_safe_edge(i32 %87, ptr %86) #16
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %26, !prof !369

90:                                               ; preds = %85, %13
  store ptr null, ptr %4, align 8, !tbaa !172
  %91 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #15
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93, !prof !370

93:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %94 = tail call fastcc ptr @VEC_basic_block_heap_alloc() #16
  store ptr %94, ptr %6, align 8, !tbaa !172
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %94, ptr noundef %15) #16
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %94, ptr noundef %17) #16
  tail call void @iterate_fix_dominators(i32 noundef 1, ptr noundef %94, i8 noundef zeroext 0) #15
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br label %95

95:                                               ; preds = %93, %90
  %96 = load ptr, ptr @cfun, align 8, !tbaa !172
  %97 = getelementptr inbounds %struct.function, ptr %96, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !201
  %99 = icmp eq ptr %98, null
  br i1 %99, label %140, label %100, !prof !362

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !200
  %103 = getelementptr inbounds %struct.loop, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !310
  %105 = icmp eq ptr %104, %15
  br i1 %105, label %106, label %130, !prof !371

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.loop, ptr %102, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !294
  %109 = icmp eq ptr %108, null
  br i1 %109, label %130, label %110, !prof !372

110:                                              ; preds = %106
  %111 = tail call ptr @find_edge(ptr noundef nonnull %108, ptr noundef nonnull %15) #15
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %130, !prof !373

113:                                              ; preds = %110
  tail call void @remove_bb_from_loops(ptr noundef nonnull %15) #15
  store ptr %17, ptr %103, align 8, !tbaa !310
  store i32 0, ptr %5, align 8, !tbaa.struct !204
  store ptr %18, ptr %19, align 8, !tbaa.struct !206
  %114 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %4) #16, !range !207
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %117, !prof !374

116:                                              ; preds = %113
  tail call void @add_bb_to_loop(ptr noundef nonnull %15, ptr noundef nonnull %102) #15
  br label %130

117:                                              ; preds = %113, %117
  %118 = phi ptr [ %123, %117 ], [ %102, %113 ]
  %119 = load ptr, ptr %4, align 8, !tbaa !172
  %120 = load ptr, ptr %119, align 8, !tbaa !210
  %121 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !200
  %123 = tail call ptr @find_common_loop(ptr noundef %118, ptr noundef %122) #15
  call fastcc void @ei_next(ptr noundef nonnull %5) #16
  %124 = load i32, ptr %5, align 8
  %125 = load ptr, ptr %19, align 8
  %126 = call fastcc zeroext i8 @ei_cond(i32 %124, ptr %125, ptr noundef nonnull %4) #16, !range !207
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %117, !prof !375, !llvm.loop !376

128:                                              ; preds = %117
  tail call void @add_bb_to_loop(ptr noundef %15, ptr noundef %123) #15
  %129 = icmp eq ptr %102, null
  br i1 %129, label %140, label %130, !prof !377

130:                                              ; preds = %100, %106, %110, %116, %128
  br label %131

131:                                              ; preds = %130, %137
  %132 = phi ptr [ %138, %137 ], [ %102, %130 ]
  %133 = getelementptr inbounds %struct.loop, ptr %132, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !294
  %135 = icmp eq ptr %134, %15
  br i1 %135, label %136, label %137, !prof !378

136:                                              ; preds = %131
  store ptr %17, ptr %133, align 8, !tbaa !294
  br label %137

137:                                              ; preds = %131, %136
  %138 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %132) #16
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %131, !prof !379, !llvm.loop !380

140:                                              ; preds = %137, %128, %95
  %141 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %142 = getelementptr inbounds %struct.cfg_hooks, ptr %141, i64 0, i32 17
  %143 = load ptr, ptr %142, align 8, !tbaa !361
  tail call void %143(ptr noundef nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #3 !prof !381 !PGOFuncName !382 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #16, !range !207
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !383

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_basic_block_heap_alloc() unnamed_addr #3 !prof !384 !PGOFuncName !385 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 2) #15
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !386 !PGOFuncName !387 {
  %3 = load i32, ptr %0, align 8, !tbaa !388
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !388
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: optsize
declare void @iterate_fix_dominators(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #13 !prof !384 !PGOFuncName !390 {
  %2 = load ptr, ptr %0, align 8, !tbaa !172
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !391

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #16
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !392 !PGOFuncName !393 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !394
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !395

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #16
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !392 !PGOFuncName !396 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !395

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !397
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !399 !PGOFuncName !400 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tidy_fallthru_edge(ptr noundef %0) local_unnamed_addr #3 !prof !401 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !402
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !403

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #15
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tidy_fallthru_edges() local_unnamed_addr #3 !prof !404 {
  %1 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %2 = getelementptr inbounds %struct.cfg_hooks, ptr %1, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !402
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5, !prof !405

5:                                                ; preds = %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = load ptr, ptr %8, align 8, !tbaa !190
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !191
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !194
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %53, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !197
  %18 = icmp eq ptr %11, %17
  br i1 %18, label %53, label %19

19:                                               ; preds = %15, %43
  %20 = phi ptr [ %44, %43 ], [ %11, %15 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !191
  %23 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %20) #16, !range !207
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %20) #16
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !213
  %29 = and i32 %28, 14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !208
  %34 = icmp eq ptr %33, %22
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !184
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !406
  %40 = tail call ptr @find_reg_note(ptr noundef %39, i32 noundef 29, ptr noundef null) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  tail call void @tidy_fallthru_edge(ptr noundef nonnull %26) #16
  br label %43

43:                                               ; preds = %25, %31, %35, %42, %19
  %44 = load ptr, ptr %21, align 8, !tbaa !191
  %45 = load ptr, ptr @cfun, align 8, !tbaa !172
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !185
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !194
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !197
  %52 = icmp eq ptr %44, %51
  br i1 %52, label %53, label %19, !llvm.loop !408

53:                                               ; preds = %43, %15, %5, %0
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_duplicate_block_p(ptr noundef %0) local_unnamed_addr #3 !prof !409 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !410
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !411

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.44, ptr noundef %7) #15
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr @cfun, align 8, !tbaa !172
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !185
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !194
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %23, label %15, !prof !411

15:                                               ; preds = %8
  %16 = load ptr, ptr %11, align 8, !tbaa !190
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %23, label %18, !prof !411

18:                                               ; preds = %15
  %19 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %20 = getelementptr inbounds %struct.cfg_hooks, ptr %19, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !410
  %22 = tail call zeroext i8 %21(ptr noundef %0) #15
  br label %23

23:                                               ; preds = %8, %15, %18
  %24 = phi i8 [ %22, %18 ], [ 0, %15 ], [ 0, %8 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @duplicate_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !412 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7, !prof !413

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 9
  %9 = load i64, ptr %8, align 8, !tbaa !212
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi i64 [ %9, %7 ], [ 0, %3 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %12 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %13 = getelementptr inbounds %struct.cfg_hooks, ptr %12, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !414
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18, !prof !415

16:                                               ; preds = %10
  %17 = load ptr, ptr %12, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.45, ptr noundef %17) #15
  br label %18

18:                                               ; preds = %16, %10
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !202
  %21 = icmp slt i64 %20, %11
  br i1 %21, label %22, label %23, !prof !415

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i64 [ %20, %22 ], [ %11, %18 ]
  %25 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %26 = getelementptr inbounds %struct.cfg_hooks, ptr %25, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !414
  %28 = tail call ptr %27(ptr noundef nonnull %0) #15
  %29 = icmp eq ptr %2, null
  br i1 %29, label %32, label %30, !prof !416

30:                                               ; preds = %23
  %31 = tail call zeroext i8 @move_block_after(ptr noundef %28, ptr noundef nonnull %2) #16
  br label %32

32:                                               ; preds = %30, %23
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %34 = load i32, ptr %33, align 4, !tbaa !252
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 10
  store i32 %34, ptr %35, align 4, !tbaa !252
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %37 = load i32, ptr %36, align 8, !tbaa !299
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 13
  store i32 %37, ptr %38, align 8, !tbaa !299
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %40 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %39) #16
  store i32 0, ptr %5, align 8, !tbaa.struct !204
  %41 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %40, ptr %41, align 8, !tbaa.struct !206
  %42 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %40, ptr noundef nonnull %4) #16, !range !207
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %79, label %44, !prof !417

44:                                               ; preds = %32, %71
  %45 = load ptr, ptr %4, align 8, !tbaa !172
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !208
  %48 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !213
  %50 = tail call ptr @unchecked_make_edge(ptr noundef %28, ptr noundef %47, i32 noundef %49) #15
  %51 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 8
  %52 = load i32, ptr %51, align 4, !tbaa !211
  %53 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 8
  store i32 %52, ptr %53, align 4, !tbaa !211
  br i1 %6, label %67, label %54, !prof !418

54:                                               ; preds = %44
  %55 = load i64, ptr %19, align 8, !tbaa !202
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %67, label %57, !prof !419

57:                                               ; preds = %54
  %58 = mul nsw i64 %24, 10000
  %59 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 9
  %60 = load i64, ptr %59, align 8, !tbaa !212
  %61 = sdiv i64 %58, %55
  %62 = mul nsw i64 %61, %60
  %63 = sdiv i64 %62, 10000
  %64 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 9
  store i64 %63, ptr %64, align 8, !tbaa !212
  %65 = load i64, ptr %59, align 8, !tbaa !212
  %66 = sub nsw i64 %65, %63
  store i64 %66, ptr %59, align 8, !tbaa !212
  br label %71

67:                                               ; preds = %54, %44
  %68 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 9
  %69 = load i64, ptr %68, align 8, !tbaa !212
  %70 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 9
  store i64 %69, ptr %70, align 8, !tbaa !212
  br label %71

71:                                               ; preds = %67, %57
  %72 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !420
  %74 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 3
  store ptr %73, ptr %74, align 8, !tbaa !420
  call fastcc void @ei_next(ptr noundef nonnull %5) #16
  %75 = load i32, ptr %5, align 8
  %76 = load ptr, ptr %41, align 8
  %77 = call fastcc zeroext i8 @ei_cond(i32 %75, ptr %76, ptr noundef nonnull %4) #16, !range !207
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %44, !prof !421, !llvm.loop !422

79:                                               ; preds = %71, %32
  br i1 %6, label %108, label %80, !prof !413

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 8
  store i64 %24, ptr %81, align 8, !tbaa !202
  %82 = load i64, ptr %19, align 8, !tbaa !202
  %83 = sub nsw i64 %82, %24
  store i64 %83, ptr %19, align 8, !tbaa !202
  %84 = load ptr, ptr %1, align 8, !tbaa !210
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 11
  %86 = load i32, ptr %85, align 8, !tbaa !203
  %87 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %88 = load i32, ptr %87, align 4, !tbaa !211
  %89 = mul nsw i32 %88, %86
  %90 = add nsw i32 %89, 5000
  %91 = sdiv i32 %90, 10000
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 11
  store i32 %91, ptr %92, align 8, !tbaa !203
  %93 = load i32, ptr %85, align 8, !tbaa !203
  %94 = mul nsw i32 %93, %88
  %95 = add nsw i32 %94, 5000
  %96 = sdiv i32 %95, -10000
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %98 = load i32, ptr %97, align 8, !tbaa !203
  %99 = add i32 %96, %98
  store i32 %99, ptr %97, align 8, !tbaa !203
  %100 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %1, ptr noundef %28) #16
  %101 = load i64, ptr %19, align 8, !tbaa !202
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104, !prof !423

103:                                              ; preds = %80
  store i64 0, ptr %19, align 8, !tbaa !202
  br label %104

104:                                              ; preds = %103, %80
  %105 = load i32, ptr %97, align 8, !tbaa !203
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %114, !prof !424

107:                                              ; preds = %104
  store i32 0, ptr %97, align 8, !tbaa !203
  br label %114

108:                                              ; preds = %79
  %109 = load i64, ptr %19, align 8, !tbaa !202
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 8
  store i64 %109, ptr %110, align 8, !tbaa !202
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %112 = load i32, ptr %111, align 8, !tbaa !203
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 11
  store i32 %112, ptr %113, align 8, !tbaa !203
  br label %114

114:                                              ; preds = %104, %107, %108
  tail call void @set_bb_original(ptr noundef nonnull %28, ptr noundef nonnull %0) #15
  tail call void @set_bb_copy(ptr noundef nonnull %0, ptr noundef nonnull %28) #15
  %115 = load ptr, ptr @cfun, align 8, !tbaa !172
  %116 = getelementptr inbounds %struct.function, ptr %115, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !201
  %118 = icmp eq ptr %117, null
  br i1 %118, label %125, label %119, !prof !425

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !200
  %122 = tail call ptr @get_loop_copy(ptr noundef %121) #15
  %123 = icmp eq ptr %122, null
  %124 = select i1 %123, ptr %121, ptr %122, !prof !426
  tail call void @add_bb_to_loop(ptr noundef nonnull %28, ptr noundef %124) #15
  br label %125

125:                                              ; preds = %119, %114
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret ptr %28
}

; Function Attrs: optsize
declare ptr @unchecked_make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_bb_original(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_bb_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_loop_copy(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @block_ends_with_call_p(ptr noundef %0) local_unnamed_addr #3 !prof !427 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !428
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11, !prof !429

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.46, ptr noundef %7) #15
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !428
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ %4, %1 ]
  %13 = tail call zeroext i8 %12(ptr noundef %0) #15
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @block_ends_with_condjump_p(ptr noundef %0) local_unnamed_addr #3 !prof !178 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !430
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.47, ptr noundef %7) #15
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !430
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ %4, %1 ]
  %13 = tail call zeroext i8 %12(ptr noundef %0) #15
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @flow_call_edges_add(ptr noundef %0) local_unnamed_addr #3 !prof !178 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !431
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !259
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.48, ptr noundef %7) #15
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !431
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ %4, %1 ]
  %13 = tail call i32 %12(ptr noundef %0) #15
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @execute_on_growing_pred(ptr noundef %0) local_unnamed_addr #3 !prof !432 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !433
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !434

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #15
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @execute_on_shrinking_pred(ptr noundef %0) local_unnamed_addr #3 !prof !435 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !436
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !437

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #15
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lv_flush_pending_stmts(ptr noundef %0) local_unnamed_addr #3 !prof !438 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !439
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !440

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #15
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cfg_hook_duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #3 !prof !441 {
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !442
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16, !prof !443

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1062, ptr noundef nonnull @.str.1) #15
  %13 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %14 = getelementptr inbounds %struct.cfg_hooks, ptr %13, i64 0, i32 24
  %15 = load ptr, ptr %14, align 8, !tbaa !442
  br label %16

16:                                               ; preds = %7, %12
  %17 = phi ptr [ %10, %7 ], [ %15, %12 ]
  %18 = tail call zeroext i8 %17(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #15
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extract_cond_bb_edges(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !438 {
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !444
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12, !prof !440

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1076, ptr noundef nonnull @.str.1) #15
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 27
  %11 = load ptr, ptr %10, align 8, !tbaa !444
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi ptr [ %6, %3 ], [ %11, %8 ]
  tail call void %13(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lv_adjust_loop_header_phi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !441 {
  %5 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.cfg_hooks, ptr %5, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !445
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !443

9:                                                ; preds = %4
  tail call void %7(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #15
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lv_add_condition_to_bb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !441 {
  %5 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.cfg_hooks, ptr %5, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !446
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13, !prof !443

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1097, ptr noundef nonnull @.str.1) #15
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !172
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !446
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %7, %4 ], [ %12, %9 ]
  tail call void %14(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #15
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { cold optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!170}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!36 = !{ptr @current_ir_type, ptr @fancy_abort, i64 1}
!37 = !{ptr @ei_cond, ptr @ei_end_p, i64 592222}
!38 = !{ptr @ei_cond, ptr @ei_edge, i64 372567}
!39 = !{ptr @ei_next, ptr @ei_container, i64 794309}
!40 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 397155}
!41 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!42 = !{ptr @ei_end_p, ptr @ei_container, i64 1425210}
!43 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 712617}
!44 = !{ptr @ei_edge, ptr @ei_container, i64 913627}
!45 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 456814}
!46 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!47 = !{ptr @redirect_edge_and_branch, ptr @internal_error, i64 1}
!48 = !{ptr @redirect_edge_and_branch, ptr @rescan_loop_exit, i64 294785}
!49 = !{ptr @can_remove_branch_p, ptr @internal_error, i64 1}
!50 = !{ptr @can_remove_branch_p, ptr @VEC_edge_base_length, i64 1434}
!51 = !{ptr @remove_branch, ptr @VEC_edge_base_length, i64 1434}
!52 = !{ptr @remove_branch, ptr @fancy_abort, i64 2}
!53 = !{ptr @remove_branch, ptr @VEC_edge_base_index, i64 2868}
!54 = !{ptr @remove_branch, ptr @redirect_edge_and_branch, i64 1434}
!55 = !{ptr @remove_edge, ptr @rescan_loop_exit, i64 203349}
!56 = !{ptr @remove_edge, ptr @remove_edge_raw, i64 785049}
!57 = !{ptr @redirect_edge_and_branch_force, ptr @internal_error, i64 1}
!58 = !{ptr @redirect_edge_and_branch_force, ptr @rescan_loop_exit, i64 125088}
!59 = !{ptr @redirect_edge_and_branch_force, ptr @dom_info_available_p, i64 288}
!60 = !{ptr @redirect_edge_and_branch_force, ptr @set_immediate_dominator, i64 1}
!61 = !{ptr @redirect_edge_and_branch_force, ptr @single_pred, i64 200}
!62 = !{ptr @redirect_edge_and_branch_force, ptr @single_succ, i64 200}
!63 = !{ptr @redirect_edge_and_branch_force, ptr @find_common_loop, i64 200}
!64 = !{ptr @redirect_edge_and_branch_force, ptr @add_bb_to_loop, i64 200}
!65 = !{ptr @redirect_edge_and_branch_force, ptr @find_edge, i64 62444}
!66 = !{ptr @single_pred, ptr @single_pred_edge, i64 268404}
!67 = !{ptr @single_succ, ptr @single_succ_edge, i64 241101}
!68 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 268423}
!69 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!70 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 268423}
!71 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 268423}
!72 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 993866}
!73 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!74 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 993866}
!75 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 993866}
!76 = !{ptr @split_block, ptr @internal_error, i64 1}
!77 = !{ptr @split_block, ptr @dom_info_available_p, i64 102249}
!78 = !{ptr @split_block, ptr @redirect_immediate_dominators, i64 34930}
!79 = !{ptr @split_block, ptr @set_immediate_dominator, i64 34930}
!80 = !{ptr @split_block, ptr @add_bb_to_loop, i64 36148}
!81 = !{ptr @split_block, ptr @make_single_succ_edge, i64 102249}
!82 = !{ptr @split_block_after_labels, ptr @split_block, i64 36148}
!83 = !{ptr @move_block_after, ptr @internal_error, i64 1}
!84 = !{ptr @delete_basic_block, ptr @internal_error, i64 1}
!85 = !{ptr @delete_basic_block, ptr @remove_bb_from_loops, i64 138101}
!86 = !{ptr @delete_basic_block, ptr @VEC_edge_base_length, i64 1169256}
!87 = !{ptr @delete_basic_block, ptr @VEC_edge_base_index, i64 140358}
!88 = !{ptr @delete_basic_block, ptr @remove_edge, i64 140358}
!89 = !{ptr @delete_basic_block, ptr @dom_info_available_p, i64 1028898}
!90 = !{ptr @delete_basic_block, ptr @delete_from_dominance_info, i64 414696}
!91 = !{ptr @delete_basic_block, ptr @expunge_block, i64 514449}
!92 = !{ptr @split_edge, ptr @internal_error, i64 1}
!93 = !{ptr @split_edge, ptr @rescan_loop_exit, i64 133644}
!94 = !{ptr @split_edge, ptr @single_succ_edge, i64 766484}
!95 = !{ptr @split_edge, ptr @single_pred_edge, i64 20}
!96 = !{ptr @split_edge, ptr @dom_info_available_p, i64 337347}
!97 = !{ptr @split_edge, ptr @single_pred, i64 268404}
!98 = !{ptr @split_edge, ptr @set_immediate_dominator, i64 158056}
!99 = !{ptr @split_edge, ptr @dom_info_state, i64 337347}
!100 = !{ptr @split_edge, ptr @single_succ, i64 247489}
!101 = !{ptr @split_edge, ptr @get_immediate_dominator, i64 134202}
!102 = !{ptr @split_edge, ptr @ei_start_1, i64 46699}
!103 = !{ptr @split_edge, ptr @ei_cond, i64 111609}
!104 = !{ptr @split_edge, ptr @dominated_by_p, i64 42734}
!105 = !{ptr @split_edge, ptr @ei_next, i64 64910}
!106 = !{ptr @split_edge, ptr @find_common_loop, i64 133644}
!107 = !{ptr @split_edge, ptr @add_bb_to_loop, i64 133644}
!108 = !{ptr @create_basic_block, ptr @internal_error, i64 1}
!109 = !{ptr @create_basic_block, ptr @dom_info_available_p, i64 1958432}
!110 = !{ptr @create_basic_block, ptr @add_to_dominance_info, i64 202932}
!111 = !{ptr @create_empty_bb, ptr @create_basic_block, i64 379964}
!112 = !{ptr @can_merge_blocks_p, ptr @internal_error, i64 1}
!113 = !{ptr @predict_edge, ptr @internal_error, i64 1}
!114 = !{ptr @predicted_by_p, ptr @internal_error, i64 1}
!115 = !{ptr @merge_blocks, ptr @internal_error, i64 1}
!116 = !{ptr @merge_blocks, ptr @remove_bb_from_loops, i64 6823}
!117 = !{ptr @merge_blocks, ptr @VEC_edge_base_length, i64 239484}
!118 = !{ptr @merge_blocks, ptr @VEC_edge_base_index, i64 119742}
!119 = !{ptr @merge_blocks, ptr @remove_edge, i64 119742}
!120 = !{ptr @merge_blocks, ptr @ei_start_1, i64 119742}
!121 = !{ptr @merge_blocks, ptr @ei_cond, i64 300188}
!122 = !{ptr @merge_blocks, ptr @rescan_loop_exit, i64 10328}
!123 = !{ptr @merge_blocks, ptr @ei_next, i64 180446}
!124 = !{ptr @merge_blocks, ptr @dom_info_available_p, i64 359226}
!125 = !{ptr @merge_blocks, ptr @redirect_immediate_dominators, i64 94438}
!126 = !{ptr @merge_blocks, ptr @delete_from_dominance_info, i64 95105}
!127 = !{ptr @merge_blocks, ptr @expunge_block, i64 119742}
!128 = !{ptr @make_forwarder_block, ptr @internal_error, i64 1}
!129 = !{ptr @make_forwarder_block, ptr @split_block_after_labels, i64 36148}
!130 = !{ptr @make_forwarder_block, ptr @ei_start_1, i64 36148}
!131 = !{ptr @make_forwarder_block, ptr @ei_safe_edge, i64 120394}
!132 = !{ptr @make_forwarder_block, ptr @ei_next, i64 82431}
!133 = !{ptr @make_forwarder_block, ptr @redirect_edge_and_branch_force, i64 36814}
!134 = !{ptr @make_forwarder_block, ptr @dom_info_available_p, i64 36148}
!135 = !{ptr @make_forwarder_block, ptr @VEC_basic_block_heap_alloc, i64 34850}
!136 = !{ptr @make_forwarder_block, ptr @VEC_basic_block_base_quick_push, i64 69700}
!137 = !{ptr @make_forwarder_block, ptr @iterate_fix_dominators, i64 34850}
!138 = !{ptr @make_forwarder_block, ptr @VEC_basic_block_heap_free, i64 34850}
!139 = !{ptr @make_forwarder_block, ptr @find_edge, i64 31541}
!140 = !{ptr @make_forwarder_block, ptr @remove_bb_from_loops, i64 31540}
!141 = !{ptr @make_forwarder_block, ptr @ei_cond, i64 66539}
!142 = !{ptr @make_forwarder_block, ptr @add_bb_to_loop, i64 31540}
!143 = !{ptr @make_forwarder_block, ptr @find_common_loop, i64 34999}
!144 = !{ptr @make_forwarder_block, ptr @loop_outer, i64 127023}
!145 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 120395}
!146 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 84247}
!147 = !{ptr @VEC_basic_block_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 34851}
!148 = !{ptr @VEC_basic_block_heap_free, ptr @free, i64 34850}
!149 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 127029}
!150 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 90881}
!151 = !{ptr @tidy_fallthru_edges, ptr @single_succ_p, i64 12}
!152 = !{ptr @tidy_fallthru_edges, ptr @single_succ_edge, i64 8}
!153 = !{ptr @tidy_fallthru_edges, ptr @find_reg_note, i64 1}
!154 = !{ptr @can_duplicate_block_p, ptr @internal_error, i64 1}
!155 = !{ptr @duplicate_block, ptr @internal_error, i64 1}
!156 = !{ptr @duplicate_block, ptr @move_block_after, i64 24435}
!157 = !{ptr @duplicate_block, ptr @ei_start_1, i64 44516}
!158 = !{ptr @duplicate_block, ptr @ei_cond, i64 123580}
!159 = !{ptr @duplicate_block, ptr @unchecked_make_edge, i64 79064}
!160 = !{ptr @duplicate_block, ptr @ei_next, i64 79064}
!161 = !{ptr @duplicate_block, ptr @redirect_edge_and_branch_force, i64 5643}
!162 = !{ptr @duplicate_block, ptr @set_bb_original, i64 44516}
!163 = !{ptr @duplicate_block, ptr @set_bb_copy, i64 44516}
!164 = !{ptr @duplicate_block, ptr @get_loop_copy, i64 38873}
!165 = !{ptr @duplicate_block, ptr @add_bb_to_loop, i64 38873}
!166 = !{ptr @block_ends_with_call_p, ptr @internal_error, i64 1}
!167 = !{ptr @cfg_hook_duplicate_loop_to_header_edge, ptr @fancy_abort, i64 1}
!168 = !{ptr @extract_cond_bb_edges, ptr @fancy_abort, i64 1}
!169 = !{ptr @lv_add_condition_to_bb, ptr @fancy_abort, i64 1}
!170 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!171 = !{!"function_entry_count", i64 24904}
!172 = !{!173, !173, i64 0}
!173 = !{!"any pointer", !174, i64 0}
!174 = !{!"omnipotent char", !175, i64 0}
!175 = !{!"Simple C/C++ TBAA"}
!176 = !{!"function_entry_count", i64 18252}
!177 = !{!"function_entry_count", i64 61968}
!178 = !{!"function_entry_count", i64 0}
!179 = !{i64 0, i64 8, !172, i64 8, i64 8, !172, i64 16, i64 8, !172, i64 24, i64 8, !172, i64 32, i64 8, !172, i64 40, i64 8, !172, i64 48, i64 8, !172, i64 56, i64 8, !172, i64 64, i64 8, !172, i64 72, i64 8, !172, i64 80, i64 8, !172, i64 88, i64 8, !172, i64 96, i64 8, !172, i64 104, i64 8, !172, i64 112, i64 8, !172, i64 120, i64 8, !172, i64 128, i64 8, !172, i64 136, i64 8, !172, i64 144, i64 8, !172, i64 152, i64 8, !172, i64 160, i64 8, !172, i64 168, i64 8, !172, i64 176, i64 8, !172, i64 184, i64 8, !172, i64 192, i64 8, !172, i64 200, i64 8, !172, i64 208, i64 8, !172, i64 216, i64 8, !172, i64 224, i64 8, !172}
!180 = !{!"function_entry_count", i64 236072}
!181 = !{!"branch_weights", i32 2184, i32 233890}
!182 = !{!"branch_weights", i32 137754, i32 96137}
!183 = !{!"branch_weights", i32 96137, i32 1}
!184 = !{!174, !174, i64 0}
!185 = !{!186, !173, i64 8}
!186 = !{!"function", !173, i64 0, !173, i64 8, !173, i64 16, !173, i64 24, !173, i64 32, !173, i64 40, !173, i64 48, !173, i64 56, !173, i64 64, !173, i64 72, !173, i64 80, !173, i64 88, !173, i64 96, !187, i64 104, !187, i64 108, !187, i64 112, !187, i64 116, !187, i64 120, !187, i64 124, !173, i64 128, !187, i64 136, !187, i64 137, !187, i64 138, !187, i64 138, !187, i64 138, !187, i64 138, !187, i64 138, !187, i64 138, !187, i64 138, !187, i64 139, !187, i64 139, !187, i64 139, !187, i64 139, !187, i64 139, !187, i64 139, !187, i64 139}
!187 = !{!"int", !174, i64 0}
!188 = !{!189, !187, i64 32}
!189 = !{!"control_flow_graph", !173, i64 0, !173, i64 8, !173, i64 16, !187, i64 24, !187, i64 28, !187, i64 32, !173, i64 40, !187, i64 48, !174, i64 52, !174, i64 60, !187, i64 68, !187, i64 72}
!190 = !{!189, !173, i64 0}
!191 = !{!192, !173, i64 56}
!192 = !{!"basic_block_def", !173, i64 0, !173, i64 8, !173, i64 16, !173, i64 24, !174, i64 32, !173, i64 48, !173, i64 56, !174, i64 64, !193, i64 72, !187, i64 80, !187, i64 84, !187, i64 88, !187, i64 92, !187, i64 96}
!193 = !{!"long", !174, i64 0}
!194 = !{!189, !173, i64 8}
!195 = !{!189, !173, i64 16}
!196 = !{!192, !187, i64 80}
!197 = !{!192, !173, i64 48}
!198 = distinct !{!198, !199}
!199 = !{!"llvm.loop.mustprogress"}
!200 = !{!192, !173, i64 24}
!201 = !{!186, !173, i64 32}
!202 = !{!192, !193, i64 72}
!203 = !{!192, !187, i64 88}
!204 = !{i64 0, i64 4, !205, i64 8, i64 8, !172}
!205 = !{!187, !187, i64 0}
!206 = !{i64 0, i64 8, !172}
!207 = !{i8 0, i8 2}
!208 = !{!209, !173, i64 8}
!209 = !{!"edge_def", !173, i64 0, !173, i64 8, !174, i64 16, !173, i64 24, !173, i64 32, !187, i64 40, !187, i64 44, !187, i64 48, !187, i64 52, !193, i64 56}
!210 = !{!209, !173, i64 0}
!211 = !{!209, !187, i64 52}
!212 = !{!209, !193, i64 56}
!213 = !{!209, !187, i64 48}
!214 = !{!193, !193, i64 0}
!215 = distinct !{!215, !199}
!216 = !{!209, !187, i64 44}
!217 = distinct !{!217, !199}
!218 = distinct !{!218, !199}
!219 = distinct !{!219, !199}
!220 = distinct !{!220, !199}
!221 = distinct !{!221, !199}
!222 = !{!223, !173, i64 8}
!223 = !{!"cfg_hooks", !173, i64 0, !173, i64 8, !173, i64 16, !173, i64 24, !173, i64 32, !173, i64 40, !173, i64 48, !173, i64 56, !173, i64 64, !173, i64 72, !173, i64 80, !173, i64 88, !173, i64 96, !173, i64 104, !173, i64 112, !173, i64 120, !173, i64 128, !173, i64 136, !173, i64 144, !173, i64 152, !173, i64 160, !173, i64 168, !173, i64 176, !173, i64 184, !173, i64 192, !173, i64 200, !173, i64 208, !173, i64 216, !173, i64 224}
!224 = !{!"cfghooks.c:VEC_basic_block_base_index"}
!225 = !{!"function_entry_count", i64 278648}
!226 = !{!"cfghooks.c:ei_start_1"}
!227 = !{!"function_entry_count", i64 592222}
!228 = !{!"cfghooks.c:ei_cond"}
!229 = !{!"branch_weights", i32 372568, i32 219656}
!230 = !{!"function_entry_count", i64 397155}
!231 = !{!"cfghooks.c:ei_next"}
!232 = !{!"branch_weights", i32 1, i32 397156}
!233 = !{!"branch_weights", i32 397156, i32 1}
!234 = !{!235, !187, i64 0}
!235 = !{!"", !187, i64 0, !173, i64 8}
!236 = !{!"function_entry_count", i64 712617}
!237 = !{!"cfghooks.c:ei_end_p"}
!238 = !{!"branch_weights", i32 24, i32 712595}
!239 = !{!"function_entry_count", i64 456814}
!240 = !{!"cfghooks.c:ei_edge"}
!241 = !{!"branch_weights", i32 1, i32 456815}
!242 = !{!"function_entry_count", i64 3783667}
!243 = !{!"cfghooks.c:VEC_edge_base_length"}
!244 = !{!"branch_weights", i32 1377, i32 3782292}
!245 = !{!246, !187, i64 0}
!246 = !{!"VEC_edge_base", !187, i64 0, !187, i64 4, !174, i64 8}
!247 = !{!"function_entry_count", i64 3133149}
!248 = !{!"cfghooks.c:ei_container"}
!249 = !{!"branch_weights", i32 1, i32 3133150}
!250 = !{!"function_entry_count", i64 1982069}
!251 = !{!"cfghooks.c:VEC_edge_base_index"}
!252 = !{!192, !187, i64 84}
!253 = distinct !{!253, !199}
!254 = distinct !{!254, !199}
!255 = !{!223, !173, i64 16}
!256 = !{!"function_entry_count", i64 1017523}
!257 = !{!223, !173, i64 32}
!258 = !{!"branch_weights", i32 1, i32 1017524}
!259 = !{!223, !173, i64 0}
!260 = !{!"branch_weights", i32 1365301384, i32 -947601643}
!261 = !{!"function_entry_count", i64 1434}
!262 = !{!223, !173, i64 48}
!263 = !{!"branch_weights", i32 1, i32 1435}
!264 = !{!192, !173, i64 8}
!265 = !{!"branch_weights", i32 1435, i32 1}
!266 = !{!"function_entry_count", i64 785049}
!267 = !{!"branch_weights", i32 581701, i32 203350}
!268 = !{!"function_entry_count", i64 89999}
!269 = !{!223, !173, i64 40}
!270 = !{!"branch_weights", i32 1, i32 90000}
!271 = !{!"branch_weights", i32 27355, i32 62646}
!272 = !{!"branch_weights", i32 89713, i32 288}
!273 = !{!"branch_weights", i32 288, i32 1}
!274 = !{!"branch_weights", i32 62646, i32 1}
!275 = !{!"function_entry_count", i64 268404}
!276 = !{!"cfghooks.c:single_pred"}
!277 = !{!"function_entry_count", i64 241101}
!278 = !{!"cfghooks.c:single_succ"}
!279 = !{!"function_entry_count", i64 268423}
!280 = !{!"cfghooks.c:single_pred_edge"}
!281 = !{!"branch_weights", i32 1, i32 268424}
!282 = !{!192, !173, i64 0}
!283 = !{!"cfghooks.c:single_pred_p"}
!284 = !{!"function_entry_count", i64 993866}
!285 = !{!"cfghooks.c:single_succ_edge"}
!286 = !{!"branch_weights", i32 1, i32 993867}
!287 = !{!"cfghooks.c:single_succ_p"}
!288 = !{!"function_entry_count", i64 102250}
!289 = !{!223, !173, i64 64}
!290 = !{!"branch_weights", i32 1, i32 102251}
!291 = !{!192, !187, i64 92}
!292 = !{!"branch_weights", i32 67321, i32 34931}
!293 = !{!"branch_weights", i32 66103, i32 36149}
!294 = !{!295, !173, i64 16}
!295 = !{!"loop", !187, i64 0, !187, i64 4, !173, i64 8, !173, i64 16, !296, i64 24, !187, i64 32, !187, i64 36, !173, i64 40, !173, i64 48, !173, i64 56, !173, i64 64, !173, i64 72, !297, i64 80, !297, i64 96, !174, i64 112, !174, i64 113, !187, i64 116, !173, i64 120, !173, i64 128, !174, i64 136, !173, i64 144}
!296 = !{!"lpt_decision", !187, i64 0, !187, i64 4}
!297 = !{!"", !193, i64 0, !193, i64 8}
!298 = !{!"branch_weights", i32 5304, i32 30846}
!299 = !{!192, !187, i64 96}
!300 = !{!"branch_weights", i32 102250, i32 2}
!301 = !{!"function_entry_count", i64 36148}
!302 = !{!"function_entry_count", i64 131376}
!303 = !{!223, !173, i64 72}
!304 = !{!"branch_weights", i32 1, i32 131377}
!305 = !{!"function_entry_count", i64 514449}
!306 = !{!223, !173, i64 56}
!307 = !{!"branch_weights", i32 1, i32 514450}
!308 = !{!"branch_weights", i32 376349, i32 138102}
!309 = !{!"branch_weights", i32 418, i32 137685}
!310 = !{!295, !173, i64 8}
!311 = !{!"branch_weights", i32 1, i32 137685}
!312 = !{!"branch_weights", i32 498863, i32 15587}
!313 = !{!"branch_weights", i32 389679, i32 124771}
!314 = !{!"branch_weights", i32 15587, i32 0}
!315 = distinct !{!315, !199}
!316 = !{!"branch_weights", i32 124771, i32 0}
!317 = distinct !{!317, !199}
!318 = !{!"branch_weights", i32 125821, i32 388630}
!319 = !{!"branch_weights", i32 488383, i32 26068}
!320 = !{!"function_entry_count", i64 337347}
!321 = !{!223, !173, i64 128}
!322 = !{!"branch_weights", i32 1, i32 337348}
!323 = !{!"branch_weights", i32 203704, i32 133645}
!324 = !{!"branch_weights", i32 337329, i32 20}
!325 = !{!"branch_weights", i32 203146, i32 134203}
!326 = !{!"branch_weights", i32 46700, i32 87504}
!327 = !{!"branch_weights", i32 1, i32 23854}
!328 = !{!"branch_weights", i32 41707, i32 36347}
!329 = !{!"branch_weights", i32 22846, i32 13502}
!330 = !{!"branch_weights", i32 23854, i32 54199}
!331 = distinct !{!331, !199}
!332 = !{!"branch_weights", i32 23855, i32 22846}
!333 = !{!"branch_weights", i32 64358, i32 69288}
!334 = !{!"function_entry_count", i64 979216}
!335 = !{!223, !173, i64 24}
!336 = !{!"branch_weights", i32 1, i32 979217}
!337 = !{!"branch_weights", i32 776574, i32 202644}
!338 = !{!"branch_weights", i32 978930, i32 288}
!339 = !{!"function_entry_count", i64 379964}
!340 = !{!"function_entry_count", i64 2467942}
!341 = !{!223, !173, i64 80}
!342 = !{!"branch_weights", i32 1, i32 2467943}
!343 = !{!"function_entry_count", i64 209464}
!344 = !{!223, !173, i64 96}
!345 = !{!"branch_weights", i32 1, i32 209465}
!346 = !{!"function_entry_count", i64 460477}
!347 = !{!"branch_weights", i32 1, i32 460478}
!348 = !{!223, !173, i64 104}
!349 = !{!"function_entry_count", i64 119742}
!350 = !{!223, !173, i64 88}
!351 = !{!"branch_weights", i32 1, i32 119743}
!352 = !{!"branch_weights", i32 112921, i32 6823}
!353 = !{!"branch_weights", i32 1, i32 119742}
!354 = !{!"branch_weights", i32 119742, i32 1}
!355 = distinct !{!355, !199}
!356 = !{!"branch_weights", i32 170121, i32 10328}
!357 = !{!"branch_weights", i32 119742, i32 60706}
!358 = distinct !{!358, !199}
!359 = !{!"branch_weights", i32 25304, i32 94440}
!360 = !{!"branch_weights", i32 119077, i32 667}
!361 = !{!223, !173, i64 136}
!362 = !{!"branch_weights", i32 1, i32 36149}
!363 = !{!"branch_weights", i32 1, i32 36148}
!364 = !{!"branch_weights", i32 36815, i32 47434}
!365 = distinct !{!365, !199}
!366 = !{!"branch_weights", i32 43, i32 36773}
!367 = !{!"branch_weights", i32 1, i32 36815}
!368 = !{!"branch_weights", i32 36815, i32 1}
!369 = !{!"branch_weights", i32 36148, i32 48100}
!370 = !{!"branch_weights", i32 1298, i32 34852}
!371 = !{!"branch_weights", i32 36149, i32 1}
!372 = !{!"branch_weights", i32 4606, i32 31544}
!373 = !{!"branch_weights", i32 31544, i32 1}
!374 = !{!"branch_weights", i32 1, i32 31543}
!375 = !{!"branch_weights", i32 31543, i32 3461}
!376 = distinct !{!376, !199}
!377 = !{!"branch_weights", i32 68086, i32 2147415562}
!378 = !{!"branch_weights", i32 29, i32 127002}
!379 = !{!"branch_weights", i32 36148, i32 90882}
!380 = distinct !{!380, !199}
!381 = !{!"function_entry_count", i64 120395}
!382 = !{!"cfghooks.c:ei_safe_edge"}
!383 = !{!"branch_weights", i32 84248, i32 36149}
!384 = !{!"function_entry_count", i64 34851}
!385 = !{!"cfghooks.c:VEC_basic_block_heap_alloc"}
!386 = !{!"function_entry_count", i64 69702}
!387 = !{!"cfghooks.c:VEC_basic_block_base_quick_push"}
!388 = !{!389, !187, i64 0}
!389 = !{!"VEC_basic_block_base", !187, i64 0, !187, i64 4, !174, i64 8}
!390 = !{!"cfghooks.c:VEC_basic_block_heap_free"}
!391 = !{!"branch_weights", i32 1, i32 34852}
!392 = !{!"function_entry_count", i64 127029}
!393 = !{!"cfghooks.c:loop_outer"}
!394 = !{!295, !173, i64 40}
!395 = !{!"branch_weights", i32 36149, i32 90882}
!396 = !{!"cfghooks.c:VEC_loop_p_base_length"}
!397 = !{!398, !187, i64 0}
!398 = !{!"VEC_loop_p_base", !187, i64 0, !187, i64 4, !174, i64 8}
!399 = !{!"function_entry_count", i64 90881}
!400 = !{!"cfghooks.c:VEC_loop_p_base_index"}
!401 = !{!"function_entry_count", i64 111}
!402 = !{!223, !173, i64 144}
!403 = !{!"branch_weights", i32 1, i32 112}
!404 = !{!"function_entry_count", i64 4657}
!405 = !{!"branch_weights", i32 4658, i32 1}
!406 = !{!407, !173, i64 8}
!407 = !{!"rtl_bb_info", !173, i64 0, !173, i64 8, !173, i64 16, !173, i64 24, !187, i64 32}
!408 = distinct !{!408, !199}
!409 = !{!"function_entry_count", i64 148235}
!410 = !{!223, !173, i64 112}
!411 = !{!"branch_weights", i32 1, i32 148236}
!412 = !{!"function_entry_count", i64 44516}
!413 = !{!"branch_weights", i32 38875, i32 5643}
!414 = !{!223, !173, i64 120}
!415 = !{!"branch_weights", i32 1, i32 44517}
!416 = !{!"branch_weights", i32 20082, i32 24436}
!417 = !{!"branch_weights", i32 1, i32 44516}
!418 = !{!"branch_weights", i32 70821, i32 8246}
!419 = !{!"branch_weights", i32 8246, i32 1}
!420 = !{!209, !173, i64 24}
!421 = !{!"branch_weights", i32 44516, i32 34550}
!422 = distinct !{!422, !199}
!423 = !{!"branch_weights", i32 1, i32 5643}
!424 = !{!"branch_weights", i32 33, i32 5611}
!425 = !{!"branch_weights", i32 5643, i32 38875}
!426 = !{!"branch_weights", i32 28884, i32 9992}
!427 = !{!"function_entry_count", i64 235287}
!428 = !{!223, !173, i64 152}
!429 = !{!"branch_weights", i32 1, i32 235288}
!430 = !{!223, !173, i64 160}
!431 = !{!223, !173, i64 168}
!432 = !{!"function_entry_count", i64 2564804}
!433 = !{!223, !173, i64 176}
!434 = !{!"branch_weights", i32 628771, i32 1936035}
!435 = !{!"function_entry_count", i64 1994805}
!436 = !{!223, !173, i64 184}
!437 = !{!"branch_weights", i32 612103, i32 1382704}
!438 = !{!"function_entry_count", i64 862}
!439 = !{!223, !173, i64 224}
!440 = !{!"branch_weights", i32 1, i32 863}
!441 = !{!"function_entry_count", i64 431}
!442 = !{!223, !173, i64 192}
!443 = !{!"branch_weights", i32 1, i32 432}
!444 = !{!223, !173, i64 216}
!445 = !{!223, !173, i64 208}
!446 = !{!223, !173, i64 200}
