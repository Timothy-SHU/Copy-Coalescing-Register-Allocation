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
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }

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
@.str.20 = private unnamed_addr constant [43 x i8] c";;%s basic block %d, loop depth %d, count \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c";;%s prev block \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"(nil), \00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"next block \00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c";;%s pred:      \00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c";;%s succ:      \00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"%s does not support redirect_edge_and_branch\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"%s does not support can_remove_branch_p\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"%s does not support redirect_edge_and_branch_force\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"%s does not support split_block\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"%s does not support move_block_after\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"%s does not support delete_basic_block\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"%s does not support split_edge\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"%s does not support create_basic_block\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"%s does not support can_merge_blocks_p\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"%s does not support predict_edge\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"%s does not support predicted_by_p\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"%s does not support merge_blocks\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"%s does not support make_forwarder_block\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"%s does not support can_duplicate_block_p\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"%s does not support duplicate_block\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"%s does not support block_ends_with_call_p\00", align 1
@.str.46 = private unnamed_addr constant [47 x i8] c"%s does not support block_ends_with_condjump_p\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"%s does not support flow_call_edges_add\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @rtl_register_cfg_hooks() local_unnamed_addr #0 !prof !133 {
  store ptr @rtl_cfg_hooks, ptr @cfg_hooks, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @cfg_layout_rtl_register_cfg_hooks() local_unnamed_addr #0 !prof !138 {
  store ptr @cfg_layout_rtl_cfg_hooks, ptr @cfg_hooks, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gimple_register_cfg_hooks() local_unnamed_addr #0 !prof !139 {
  store ptr @gimple_cfg_hooks, ptr @cfg_hooks, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @get_cfg_hooks(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cfg_hooks) align 8 %0) local_unnamed_addr #1 !prof !140 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %2, i64 232, i1 false), !tbaa.struct !141
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_cfg_hooks(ptr nocapture noundef readonly byval(%struct.cfg_hooks) align 8 %0) local_unnamed_addr #1 !prof !142 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(232) %0, i64 232, i1 false), !tbaa.struct !141
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @current_ir_type() local_unnamed_addr #3 !prof !143 {
  %1 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %2 = icmp eq ptr %1, @gimple_cfg_hooks
  br i1 %2, label %8, label %3, !prof !144

3:                                                ; preds = %0
  %4 = icmp eq ptr %1, @rtl_cfg_hooks
  br i1 %4, label %8, label %5, !prof !145

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, @cfg_layout_rtl_cfg_hooks
  br i1 %6, label %8, label %7, !prof !146

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 83, ptr noundef nonnull @.str.1) #16
  br label %8

8:                                                ; preds = %5, %3, %0, %7
  %9 = phi i32 [ 0, %7 ], [ 0, %0 ], [ 1, %3 ], [ 2, %5 ]
  ret i32 %9
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_flow_info() local_unnamed_addr #3 !prof !147 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = load i8, ptr @timevar_enable, align 1, !tbaa !148
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 24) #16
  br label %8

8:                                                ; preds = %7, %0
  %9 = load ptr, ptr @cfun, align 8, !tbaa !134
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !149
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !152
  %14 = sext i32 %13 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 8) #16
  %16 = load ptr, ptr @cfun, align 8, !tbaa !134
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !149
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !152
  %21 = sext i32 %20 to i64
  %22 = tail call ptr @xcalloc(i64 noundef %21, i64 noundef 8) #16
  %23 = load ptr, ptr @cfun, align 8, !tbaa !134
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !149
  %26 = load ptr, ptr %25, align 8, !tbaa !154
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !155
  %29 = icmp eq ptr %28, null
  br i1 %29, label %70, label %30

30:                                               ; preds = %8, %60
  %31 = phi ptr [ %63, %60 ], [ %28, %8 ]
  %32 = phi i32 [ %61, %60 ], [ 0, %8 ]
  %33 = phi ptr [ %31, %60 ], [ %26, %8 ]
  %34 = load ptr, ptr @cfun, align 8, !tbaa !134
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !149
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !158
  %39 = icmp eq ptr %31, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !159
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !160
  %45 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %42, i32 noundef %44) #17
  %46 = icmp eq ptr %31, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2, i32 noundef %44) #16
  br label %48

48:                                               ; preds = %47, %40, %30
  %49 = phi i32 [ 1, %47 ], [ %32, %40 ], [ %32, %30 ]
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !161
  %52 = icmp eq ptr %51, %33
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %55 = load i32, ptr %54, align 8, !tbaa !160
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !160
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !160
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, i32 noundef %55, i32 noundef %57, i32 noundef %59) #16
  br label %60

60:                                               ; preds = %53, %48
  %61 = phi i32 [ 1, %53 ], [ %49, %48 ]
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !155
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %30, !llvm.loop !162

65:                                               ; preds = %60
  %66 = load ptr, ptr @cfun, align 8, !tbaa !134
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !149
  %69 = load ptr, ptr %68, align 8, !tbaa !154
  br label %70

70:                                               ; preds = %65, %8
  %71 = phi ptr [ %26, %8 ], [ %69, %65 ]
  %72 = phi ptr [ %25, %8 ], [ %68, %65 ]
  %73 = phi ptr [ %23, %8 ], [ %66, %65 ]
  %74 = phi i32 [ 0, %8 ], [ %61, %65 ]
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !158
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !161
  %79 = icmp eq ptr %78, %71
  br i1 %79, label %283, label %80

80:                                               ; preds = %70
  %81 = getelementptr inbounds i8, ptr %2, i64 8
  br label %82

82:                                               ; preds = %80, %274
  %83 = phi ptr [ %73, %80 ], [ %278, %274 ]
  %84 = phi ptr [ %78, %80 ], [ %277, %274 ]
  %85 = phi i32 [ %74, %80 ], [ %275, %274 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !164
  %88 = icmp eq ptr %87, null
  br i1 %88, label %100, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.function, ptr %83, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !165
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %95 = load i32, ptr %94, align 8, !tbaa !160
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4, i32 noundef %95) #16
  %96 = load ptr, ptr %86, align 8, !tbaa !164
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load ptr, ptr @cfun, align 8, !tbaa !134
  br label %100

100:                                              ; preds = %98, %82
  %101 = phi ptr [ %99, %98 ], [ %83, %82 ]
  %102 = phi i32 [ 1, %98 ], [ %85, %82 ]
  %103 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !165
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %108 = load i32, ptr %107, align 8, !tbaa !160
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5, i32 noundef %108) #16
  br label %109

109:                                              ; preds = %89, %106, %100, %93
  %110 = phi i32 [ 1, %106 ], [ %102, %100 ], [ 1, %93 ], [ %85, %89 ]
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 8
  %112 = load i64, ptr %111, align 8, !tbaa !166
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %116 = load i32, ptr %115, align 8, !tbaa !160
  %117 = trunc i64 %112 to i32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.6, i32 noundef %116, i32 noundef %117) #16
  br label %118

118:                                              ; preds = %114, %109
  %119 = phi i32 [ 1, %114 ], [ %110, %109 ]
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 11
  %121 = load i32, ptr %120, align 8, !tbaa !167
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %125 = load i32, ptr %124, align 8, !tbaa !160
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7, i32 noundef %125, i32 noundef %121) #16
  br label %126

126:                                              ; preds = %123, %118
  %127 = phi i32 [ 1, %123 ], [ %119, %118 ]
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 1
  %129 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %128) #17
  store i32 0, ptr %2, align 8, !tbaa.struct !168
  store ptr %129, ptr %81, align 8, !tbaa.struct !170
  %130 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %129, ptr noundef nonnull %1) #17, !range !171
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %220, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  br label %134

134:                                              ; preds = %132, %201
  %135 = phi i32 [ %127, %132 ], [ %202, %201 ]
  %136 = phi i32 [ 0, %132 ], [ %188, %201 ]
  %137 = load ptr, ptr %1, align 8, !tbaa !134
  %138 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !172
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 9
  %141 = load i32, ptr %140, align 8, !tbaa !160
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds ptr, ptr %15, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !134
  %145 = icmp eq ptr %144, %84
  br i1 %145, label %146, label %151

146:                                              ; preds = %134
  %147 = load ptr, ptr %137, align 8, !tbaa !174
  %148 = getelementptr inbounds %struct.basic_block_def, ptr %147, i64 0, i32 9
  %149 = load i32, ptr %148, align 8, !tbaa !160
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8, i32 noundef %149, i32 noundef %141) #16
  %150 = load ptr, ptr %138, align 8, !tbaa !172
  br label %151

151:                                              ; preds = %146, %134
  %152 = phi ptr [ %150, %146 ], [ %139, %134 ]
  %153 = phi i32 [ 1, %146 ], [ %135, %134 ]
  %154 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 8
  %155 = load i32, ptr %154, align 4, !tbaa !175
  %156 = icmp ugt i32 %155, 10000
  br i1 %156, label %157, label %164

157:                                              ; preds = %151
  %158 = load ptr, ptr %137, align 8, !tbaa !174
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %158, i64 0, i32 9
  %160 = load i32, ptr %159, align 8, !tbaa !160
  %161 = getelementptr inbounds %struct.basic_block_def, ptr %152, i64 0, i32 9
  %162 = load i32, ptr %161, align 8, !tbaa !160
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9, i32 noundef %160, i32 noundef %162, i32 noundef %155) #16
  %163 = load ptr, ptr %138, align 8, !tbaa !172
  br label %164

164:                                              ; preds = %151, %157
  %165 = phi ptr [ %163, %157 ], [ %152, %151 ]
  %166 = phi i32 [ 1, %157 ], [ %153, %151 ]
  %167 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 9
  %168 = load i64, ptr %167, align 8, !tbaa !176
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %164
  %171 = load ptr, ptr %137, align 8, !tbaa !174
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 9
  %173 = load i32, ptr %172, align 8, !tbaa !160
  %174 = getelementptr inbounds %struct.basic_block_def, ptr %165, i64 0, i32 9
  %175 = load i32, ptr %174, align 8, !tbaa !160
  %176 = trunc i64 %168 to i32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.10, i32 noundef %173, i32 noundef %175, i32 noundef %176) #16
  %177 = load ptr, ptr %138, align 8, !tbaa !172
  br label %178

178:                                              ; preds = %170, %164
  %179 = phi ptr [ %177, %170 ], [ %165, %164 ]
  %180 = phi i32 [ 1, %170 ], [ %166, %164 ]
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %179, i64 0, i32 9
  %182 = load i32, ptr %181, align 8, !tbaa !160
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds ptr, ptr %15, i64 %183
  store ptr %84, ptr %184, align 8, !tbaa !134
  %185 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 7
  %186 = load i32, ptr %185, align 8, !tbaa !177
  %187 = and i32 %186, 1
  %188 = add i32 %187, %136
  %189 = load ptr, ptr %137, align 8, !tbaa !174
  %190 = icmp eq ptr %189, %84
  br i1 %190, label %201, label %191

191:                                              ; preds = %178
  %192 = load i32, ptr %133, align 8, !tbaa !160
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.11, i32 noundef %192) #16
  %193 = load ptr, ptr @stderr, align 8, !tbaa !134
  %194 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 13, i64 1, ptr %193) #19
  %195 = load ptr, ptr @stderr, align 8, !tbaa !134
  tail call void @dump_edge_info(ptr noundef %195, ptr noundef nonnull %137, i32 noundef 0) #16
  %196 = load ptr, ptr @stderr, align 8, !tbaa !134
  %197 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %196) #19
  %198 = load ptr, ptr @stderr, align 8, !tbaa !134
  tail call void @dump_edge_info(ptr noundef %198, ptr noundef nonnull %137, i32 noundef 1) #16
  %199 = load ptr, ptr @stderr, align 8, !tbaa !134
  %200 = tail call i32 @fputc(i32 10, ptr %199)
  br label %201

201:                                              ; preds = %191, %178
  %202 = phi i32 [ 1, %191 ], [ %180, %178 ]
  %203 = ptrtoint ptr %137 to i64
  %204 = load ptr, ptr %138, align 8, !tbaa !172
  %205 = getelementptr inbounds %struct.basic_block_def, ptr %204, i64 0, i32 9
  %206 = load i32, ptr %205, align 8, !tbaa !160
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, ptr %22, i64 %207
  %209 = load i64, ptr %208, align 8, !tbaa !178
  %210 = add i64 %209, %203
  store i64 %210, ptr %208, align 8, !tbaa !178
  call fastcc void @ei_next(ptr noundef nonnull %2) #17
  %211 = load i32, ptr %2, align 8
  %212 = load ptr, ptr %81, align 8
  %213 = call fastcc zeroext i8 @ei_cond(i32 %211, ptr %212, ptr noundef nonnull %1) #17, !range !171
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %134, !llvm.loop !179

215:                                              ; preds = %201
  %216 = icmp sgt i32 %188, 1
  br i1 %216, label %217, label %220

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %219 = load i32, ptr %218, align 8, !tbaa !160
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.15, i32 noundef %219) #16
  br label %220

220:                                              ; preds = %126, %217, %215
  %221 = phi i32 [ 1, %217 ], [ %202, %215 ], [ %127, %126 ]
  %222 = tail call fastcc ptr @ei_start_1(ptr noundef %84) #17
  store i32 0, ptr %2, align 8, !tbaa.struct !168
  store ptr %222, ptr %81, align 8, !tbaa.struct !170
  %223 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %222, ptr noundef nonnull %1) #17, !range !171
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %274, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  br label %227

227:                                              ; preds = %225, %260
  %228 = phi i32 [ 0, %225 ], [ %270, %260 ]
  %229 = phi i32 [ %221, %225 ], [ %261, %260 ]
  %230 = load ptr, ptr %1, align 8, !tbaa !134
  %231 = getelementptr inbounds %struct.edge_def, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !172
  %233 = icmp eq ptr %232, %84
  br i1 %233, label %244, label %234

234:                                              ; preds = %227
  %235 = load i32, ptr %226, align 8, !tbaa !160
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16, i32 noundef %235) #16
  %236 = load ptr, ptr @stderr, align 8, !tbaa !134
  %237 = tail call i32 @fputs(ptr noundef nonnull @.str.12, ptr noundef %236) #20
  %238 = load ptr, ptr @stderr, align 8, !tbaa !134
  tail call void @dump_edge_info(ptr noundef %238, ptr noundef nonnull %230, i32 noundef 0) #16
  %239 = load ptr, ptr @stderr, align 8, !tbaa !134
  %240 = tail call i32 @fputs(ptr noundef nonnull @.str.13, ptr noundef %239) #20
  %241 = load ptr, ptr @stderr, align 8, !tbaa !134
  tail call void @dump_edge_info(ptr noundef %241, ptr noundef nonnull %230, i32 noundef 1) #16
  %242 = load ptr, ptr @stderr, align 8, !tbaa !134
  %243 = tail call i32 @fputc(i32 noundef 10, ptr noundef %242) #17
  br label %244

244:                                              ; preds = %234, %227
  %245 = phi i32 [ 1, %234 ], [ %229, %227 ]
  %246 = getelementptr inbounds %struct.edge_def, ptr %230, i64 0, i32 6
  %247 = load i32, ptr %246, align 4, !tbaa !180
  %248 = icmp eq i32 %228, %247
  br i1 %248, label %260, label %249

249:                                              ; preds = %244
  %250 = load i32, ptr %226, align 8, !tbaa !160
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16, i32 noundef %250) #16
  %251 = load i32, ptr %246, align 4, !tbaa !180
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.17, i32 noundef %228, i32 noundef %251) #16
  %252 = load ptr, ptr @stderr, align 8, !tbaa !134
  %253 = tail call i32 @fputs(ptr noundef nonnull @.str.12, ptr noundef %252) #20
  %254 = load ptr, ptr @stderr, align 8, !tbaa !134
  tail call void @dump_edge_info(ptr noundef %254, ptr noundef nonnull %230, i32 noundef 0) #16
  %255 = load ptr, ptr @stderr, align 8, !tbaa !134
  %256 = tail call i32 @fputs(ptr noundef nonnull @.str.13, ptr noundef %255) #20
  %257 = load ptr, ptr @stderr, align 8, !tbaa !134
  tail call void @dump_edge_info(ptr noundef %257, ptr noundef nonnull %230, i32 noundef 1) #16
  %258 = load ptr, ptr @stderr, align 8, !tbaa !134
  %259 = tail call i32 @fputc(i32 noundef 10, ptr noundef %258) #17
  br label %260

260:                                              ; preds = %249, %244
  %261 = phi i32 [ 1, %249 ], [ %245, %244 ]
  %262 = ptrtoint ptr %230 to i64
  %263 = load ptr, ptr %231, align 8, !tbaa !172
  %264 = getelementptr inbounds %struct.basic_block_def, ptr %263, i64 0, i32 9
  %265 = load i32, ptr %264, align 8, !tbaa !160
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, ptr %22, i64 %266
  %268 = load i64, ptr %267, align 8, !tbaa !178
  %269 = sub i64 %268, %262
  store i64 %269, ptr %267, align 8, !tbaa !178
  call fastcc void @ei_next(ptr noundef nonnull %2) #17
  %270 = load i32, ptr %2, align 8
  %271 = load ptr, ptr %81, align 8
  %272 = call fastcc zeroext i8 @ei_cond(i32 %270, ptr %271, ptr noundef nonnull %1) #17, !range !171
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %274, label %227, !llvm.loop !181

274:                                              ; preds = %260, %220
  %275 = phi i32 [ %221, %220 ], [ %261, %260 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  %276 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 5
  %277 = load ptr, ptr %276, align 8, !tbaa !161
  %278 = load ptr, ptr @cfun, align 8, !tbaa !134
  %279 = getelementptr inbounds %struct.function, ptr %278, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !149
  %281 = load ptr, ptr %280, align 8, !tbaa !154
  %282 = icmp eq ptr %277, %281
  br i1 %282, label %283, label %82, !llvm.loop !182

283:                                              ; preds = %274, %70
  %284 = phi i32 [ %74, %70 ], [ %275, %274 ]
  %285 = phi ptr [ %71, %70 ], [ %277, %274 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %286 = getelementptr inbounds %struct.basic_block_def, ptr %285, i64 0, i32 1
  %287 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %286) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !168
  %288 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %287, ptr %288, align 8, !tbaa.struct !170
  %289 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %287, ptr noundef nonnull %3) #17, !range !171
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %306, label %291

291:                                              ; preds = %283, %291
  %292 = load ptr, ptr %3, align 8, !tbaa !134
  %293 = ptrtoint ptr %292 to i64
  %294 = getelementptr inbounds %struct.edge_def, ptr %292, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !172
  %296 = getelementptr inbounds %struct.basic_block_def, ptr %295, i64 0, i32 9
  %297 = load i32, ptr %296, align 8, !tbaa !160
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i64, ptr %22, i64 %298
  %300 = load i64, ptr %299, align 8, !tbaa !178
  %301 = add i64 %300, %293
  store i64 %301, ptr %299, align 8, !tbaa !178
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %302 = load i32, ptr %4, align 8
  %303 = load ptr, ptr %288, align 8
  %304 = call fastcc zeroext i8 @ei_cond(i32 %302, ptr %303, ptr noundef nonnull %3) #17, !range !171
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %306, label %291, !llvm.loop !183

306:                                              ; preds = %291, %283
  %307 = load ptr, ptr @cfun, align 8, !tbaa !134
  %308 = getelementptr inbounds %struct.function, ptr %307, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !149
  %310 = getelementptr inbounds %struct.control_flow_graph, ptr %309, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !158
  %312 = tail call fastcc ptr @ei_start_1(ptr noundef %311) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !168
  store ptr %312, ptr %288, align 8, !tbaa.struct !170
  %313 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %312, ptr noundef nonnull %3) #17, !range !171
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %330, label %315

315:                                              ; preds = %306, %315
  %316 = load ptr, ptr %3, align 8, !tbaa !134
  %317 = ptrtoint ptr %316 to i64
  %318 = getelementptr inbounds %struct.edge_def, ptr %316, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !172
  %320 = getelementptr inbounds %struct.basic_block_def, ptr %319, i64 0, i32 9
  %321 = load i32, ptr %320, align 8, !tbaa !160
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64, ptr %22, i64 %322
  %324 = load i64, ptr %323, align 8, !tbaa !178
  %325 = sub i64 %324, %317
  store i64 %325, ptr %323, align 8, !tbaa !178
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %326 = load i32, ptr %4, align 8
  %327 = load ptr, ptr %288, align 8
  %328 = call fastcc zeroext i8 @ei_cond(i32 %326, ptr %327, ptr noundef nonnull %3) #17, !range !171
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %330, label %315, !llvm.loop !184

330:                                              ; preds = %315, %306
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  %331 = load ptr, ptr @cfun, align 8, !tbaa !134
  %332 = getelementptr inbounds %struct.function, ptr %331, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !149
  %334 = load ptr, ptr %333, align 8, !tbaa !134
  %335 = icmp eq ptr %334, null
  br i1 %335, label %351, label %336

336:                                              ; preds = %330, %346
  %337 = phi ptr [ %349, %346 ], [ %334, %330 ]
  %338 = phi i32 [ %347, %346 ], [ %284, %330 ]
  %339 = getelementptr inbounds %struct.basic_block_def, ptr %337, i64 0, i32 9
  %340 = load i32, ptr %339, align 8, !tbaa !160
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i64, ptr %22, i64 %341
  %343 = load i64, ptr %342, align 8, !tbaa !178
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %336
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.18, i32 noundef %340) #16
  br label %346

346:                                              ; preds = %336, %345
  %347 = phi i32 [ 1, %345 ], [ %338, %336 ]
  %348 = getelementptr inbounds %struct.basic_block_def, ptr %337, i64 0, i32 6
  %349 = load ptr, ptr %348, align 8, !tbaa !134
  %350 = icmp eq ptr %349, null
  br i1 %350, label %351, label %336, !llvm.loop !185

351:                                              ; preds = %346, %330
  %352 = phi i32 [ %284, %330 ], [ %347, %346 ]
  tail call void @free(ptr noundef %15) #17
  tail call void @free(ptr noundef %22) #17
  %353 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %354 = getelementptr inbounds %struct.cfg_hooks, ptr %353, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !186
  %356 = icmp eq ptr %355, null
  br i1 %356, label %360, label %357

357:                                              ; preds = %351
  %358 = tail call i32 %355() #16
  %359 = or i32 %358, %352
  br label %360

360:                                              ; preds = %357, %351
  %361 = phi i32 [ %359, %357 ], [ %352, %351 ]
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %364, label %363

363:                                              ; preds = %360
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.19) #16
  br label %364

364:                                              ; preds = %360, %363
  %365 = load i8, ptr @timevar_enable, align 1, !tbaa !148
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %368, label %367

367:                                              ; preds = %364
  tail call void @timevar_pop_1(i32 noundef 24) #16
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
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !147 !PGOFuncName !188 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  ret ptr %5
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 !prof !189 !PGOFuncName !190 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !prof !191 !PGOFuncName !192 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !171
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !193

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !134
  ret i8 %10
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare void @dump_edge_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #3 !prof !194 !PGOFuncName !195 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !196

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !197

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !198
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !198
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
define dso_local void @dump_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !147 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %6 = sext i32 %2 to i64
  %7 = add nsw i64 %6, 1
  %8 = alloca i8, i64 %7, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %8, i8 32, i64 %6, i1 false)
  %9 = getelementptr inbounds i8, ptr %8, i64 %6
  store i8 0, ptr %9, align 1, !tbaa !148
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !160
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !200
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %8, i32 noundef %11, i32 noundef %13) #17
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !166
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, i64 noundef %16) #17
  %18 = call i32 @putc(i32 noundef 10, ptr noundef %1) #17
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %8) #17
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !161
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !160
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %25) #17
  br label %29

27:                                               ; preds = %3
  %28 = call i64 @fwrite(ptr nonnull @.str.24, i64 7, i64 1, ptr %1)
  br label %29

29:                                               ; preds = %27, %23
  %30 = call i64 @fwrite(ptr nonnull @.str.25, i64 11, i64 1, ptr %1)
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !155
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !160
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %36) #17
  br label %40

38:                                               ; preds = %29
  %39 = call i64 @fwrite(ptr nonnull @.str.27, i64 5, i64 1, ptr %1)
  br label %40

40:                                               ; preds = %38, %34
  %41 = call i32 @putc(i32 noundef 10, ptr noundef %1) #17
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull %8) #17
  %43 = call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !168
  %44 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %43, ptr %44, align 8, !tbaa.struct !170
  %45 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %43, ptr noundef nonnull %4) #17, !range !171
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40, %47
  %48 = load ptr, ptr %4, align 8, !tbaa !134
  call void @dump_edge_info(ptr noundef %1, ptr noundef %48, i32 noundef 0) #16
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %49 = load i32, ptr %5, align 8
  %50 = load ptr, ptr %44, align 8
  %51 = call fastcc zeroext i8 @ei_cond(i32 %49, ptr %50, ptr noundef nonnull %4) #17, !range !171
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %47, !llvm.loop !201

53:                                               ; preds = %47, %40
  %54 = call i32 @putc(i32 noundef 10, ptr noundef %1) #17
  %55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull %8) #17
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %57 = call fastcc ptr @ei_start_1(ptr noundef nonnull %56) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !168
  store ptr %57, ptr %44, align 8, !tbaa.struct !170
  %58 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %57, ptr noundef nonnull %4) #17, !range !171
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %53, %60
  %61 = load ptr, ptr %4, align 8, !tbaa !134
  call void @dump_edge_info(ptr noundef %1, ptr noundef %61, i32 noundef 1) #16
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %62 = load i32, ptr %5, align 8
  %63 = load ptr, ptr %44, align 8
  %64 = call fastcc zeroext i8 @ei_cond(i32 %62, ptr %63, ptr noundef nonnull %4) #17, !range !171
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %60, !llvm.loop !202

66:                                               ; preds = %60, %53
  %67 = call i32 @putc(i32 noundef 10, ptr noundef %1) #17
  %68 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %69 = getelementptr inbounds %struct.cfg_hooks, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !203
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  call void %70(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0) #16
  br label %73

73:                                               ; preds = %72, %66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !204 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !205
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12, !prof !206

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.30, ptr noundef %8) #16
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !205
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %14 = tail call ptr %13(ptr noundef %0, ptr noundef %1) #16
  %15 = load ptr, ptr @cfun, align 8, !tbaa !134
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !165
  %18 = icmp ne ptr %17, null
  %19 = icmp eq ptr %14, %0
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !208

21:                                               ; preds = %12
  tail call void @rescan_loop_exit(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  br label %22

22:                                               ; preds = %21, %12
  ret ptr %14
}

; Function Attrs: optsize
declare void @rescan_loop_exit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_remove_branch_p(ptr noundef %0) local_unnamed_addr #3 !prof !147 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !209
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.31, ptr noundef %7) #16
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr %0, align 8, !tbaa !174
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !210
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %16 = getelementptr inbounds %struct.cfg_hooks, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !209
  %18 = tail call zeroext i8 %17(ptr noundef nonnull %0) #16
  br label %19

19:                                               ; preds = %8, %14
  %20 = phi i8 [ %18, %14 ], [ 0, %8 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !211 !PGOFuncName !212 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !213

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !214
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_branch(ptr noundef %0) local_unnamed_addr #3 !prof !147 {
  %2 = load ptr, ptr %0, align 8, !tbaa !174
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !210
  %5 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %4) #17
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 363, ptr noundef nonnull @.str.1) #16
  %8 = load ptr, ptr %3, align 8, !tbaa !210
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi ptr [ %4, %1 ], [ %8, %7 ]
  %11 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %10, i32 noundef 0) #17
  %12 = icmp eq ptr %11, %0
  %13 = zext i1 %12 to i32
  %14 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %10, i32 noundef %13) #17
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !177
  %17 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !172
  %19 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %0, ptr noundef %18) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 369, ptr noundef nonnull @.str.1) #16
  br label %22

22:                                               ; preds = %9, %21
  %23 = and i32 %16, 128
  %24 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !177
  %26 = and i32 %25, -129
  %27 = or disjoint i32 %26, %23
  store i32 %27, ptr %24, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !216 !PGOFuncName !217 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_edge(ptr noundef %0) local_unnamed_addr #3 !prof !218 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !134
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !165
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !219

6:                                                ; preds = %1
  tail call void @rescan_loop_exit(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #16
  br label %7

7:                                                ; preds = %6, %1
  tail call void @remove_edge_raw(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @remove_edge_raw(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @redirect_edge_and_branch_force(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !220 {
  %3 = load ptr, ptr %0, align 8, !tbaa !174
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !221
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !222

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.32, ptr noundef %9) #16
  br label %10

10:                                               ; preds = %8, %2
  %11 = load ptr, ptr @cfun, align 8, !tbaa !134
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !165
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !223

15:                                               ; preds = %10
  tail call void @rescan_loop_exit(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #16
  br label %16

16:                                               ; preds = %15, %10
  %17 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %18 = getelementptr inbounds %struct.cfg_hooks, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !221
  %20 = tail call ptr %19(ptr noundef nonnull %0, ptr noundef %1) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22, !prof !224

22:                                               ; preds = %16
  %23 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25, !prof !225

25:                                               ; preds = %22
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %20, ptr noundef %3) #16
  br label %26

26:                                               ; preds = %25, %22
  %27 = load ptr, ptr @cfun, align 8, !tbaa !134
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !165
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %36, !prof !223

31:                                               ; preds = %16
  %32 = load ptr, ptr @cfun, align 8, !tbaa !134
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !165
  %35 = icmp eq ptr %34, null
  br i1 %35, label %48, label %44, !prof !223

36:                                               ; preds = %26
  %37 = tail call fastcc ptr @single_pred(ptr noundef nonnull %20) #17
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !164
  %40 = tail call fastcc ptr @single_succ(ptr noundef nonnull %20) #17
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !164
  %43 = tail call ptr @find_common_loop(ptr noundef %39, ptr noundef %42) #16
  tail call void @add_bb_to_loop(ptr noundef nonnull %20, ptr noundef %43) #16
  br label %48

44:                                               ; preds = %31
  %45 = tail call ptr @find_edge(ptr noundef %3, ptr noundef %1) #16
  %46 = icmp eq ptr %45, %0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call void @rescan_loop_exit(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 0) #16
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
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !226 !PGOFuncName !227 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #17
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !228 !PGOFuncName !229 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !172
  ret ptr %4
}

; Function Attrs: optsize
declare void @add_bb_to_loop(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @split_block(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !230 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !231
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12, !prof !232

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.33, ptr noundef %8) #16
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !231
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %14 = tail call ptr %13(ptr noundef %0, ptr noundef %1) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16, !prof !232

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !166
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 8
  store i64 %18, ptr %19, align 8, !tbaa !166
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 10
  %22 = load <2 x i32>, ptr %20, align 4, !tbaa !169
  store <2 x i32> %22, ptr %21, align 4, !tbaa !169
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 12
  %24 = load i32, ptr %23, align 4, !tbaa !233
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 12
  store i32 %24, ptr %25, align 4, !tbaa !233
  %26 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28, !prof !234

28:                                               ; preds = %16
  tail call void @redirect_immediate_dominators(i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %14) #16
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %14, ptr noundef nonnull %0) #16
  br label %29

29:                                               ; preds = %28, %16
  %30 = load ptr, ptr @cfun, align 8, !tbaa !134
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !165
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34, !prof !234

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !164
  tail call void @add_bb_to_loop(ptr noundef nonnull %14, ptr noundef %36) #16
  %37 = load ptr, ptr %35, align 8, !tbaa !164
  %38 = getelementptr inbounds %struct.loop, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !235
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store ptr %14, ptr %38, align 8, !tbaa !235
  br label %42

42:                                               ; preds = %34, %41, %29
  %43 = tail call ptr @make_single_succ_edge(ptr noundef nonnull %0, ptr noundef nonnull %14, i32 noundef 1) #16
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !239
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48, !prof !234

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 13
  %50 = load i32, ptr %49, align 8, !tbaa !239
  %51 = or i32 %50, 4
  store i32 %51, ptr %49, align 8, !tbaa !239
  %52 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !177
  %54 = or i32 %53, 128
  store i32 %54, ptr %52, align 8, !tbaa !177
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
define dso_local ptr @split_block_after_labels(ptr noundef %0) local_unnamed_addr #3 !prof !147 {
  %2 = tail call ptr @split_block(ptr noundef %0, ptr noundef null) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @move_block_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !240 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !241
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12, !prof !242

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.34, ptr noundef %8) #16
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !241
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %14 = tail call zeroext i8 %13(ptr noundef %0, ptr noundef %1) #16
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_basic_block(ptr noundef %0) local_unnamed_addr #3 !prof !243 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !244
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11, !prof !245

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.35, ptr noundef %7) #16
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !244
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ %4, %1 ]
  tail call void %12(ptr noundef %0) #16
  %13 = load ptr, ptr @cfun, align 8, !tbaa !134
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !165
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !246

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !164
  %20 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !235
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %27, label %23, !prof !247

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !248
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %29, !prof !247

27:                                               ; preds = %23, %17
  %28 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  br label %29

29:                                               ; preds = %27, %23
  tail call void @remove_bb_from_loops(ptr noundef nonnull %0) #16
  br label %30

30:                                               ; preds = %29, %11
  %31 = load ptr, ptr %0, align 8, !tbaa !249
  %32 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %31) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39, !prof !250

34:                                               ; preds = %39, %30
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !210
  %37 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %36) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %45, !prof !251

39:                                               ; preds = %30, %39
  %40 = phi ptr [ %42, %39 ], [ %31, %30 ]
  %41 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %40, i32 noundef 0) #17
  tail call void @remove_edge(ptr noundef %41) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !249
  %43 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %42) #17
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %34, label %39, !prof !252, !llvm.loop !253

45:                                               ; preds = %34, %45
  %46 = phi ptr [ %48, %45 ], [ %36, %34 ]
  %47 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %46, i32 noundef 0) #17
  tail call void @remove_edge(ptr noundef %47) #17
  %48 = load ptr, ptr %35, align 8, !tbaa !210
  %49 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %48) #17
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %45, !prof !254, !llvm.loop !255

51:                                               ; preds = %45, %34
  %52 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54, !prof !256

54:                                               ; preds = %51
  tail call void @delete_from_dominance_info(i32 noundef 1, ptr noundef nonnull %0) #16
  br label %55

55:                                               ; preds = %54, %51
  %56 = tail call zeroext i8 @dom_info_available_p(i32 noundef 2) #16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %59, label %58, !prof !257

58:                                               ; preds = %55
  tail call void @delete_from_dominance_info(i32 noundef 2, ptr noundef nonnull %0) #16
  br label %59

59:                                               ; preds = %58, %55
  tail call void @expunge_block(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare void @remove_bb_from_loops(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @delete_from_dominance_info(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @expunge_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @split_edge(ptr noundef %0) local_unnamed_addr #3 !prof !258 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %5 = load i64, ptr %4, align 8, !tbaa !176
  %6 = load ptr, ptr %0, align 8, !tbaa !174
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !167
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !175
  %11 = mul nsw i32 %10, %8
  %12 = add nsw i32 %11, 5000
  %13 = sdiv i32 %12, 10000
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %14 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !177
  %16 = and i32 %15, 128
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !172
  %20 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %21 = getelementptr inbounds %struct.cfg_hooks, ptr %20, i64 0, i32 16
  %22 = load ptr, ptr %21, align 8, !tbaa !259
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26, !prof !260

24:                                               ; preds = %1
  %25 = load ptr, ptr %20, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.36, ptr noundef %25) #16
  br label %26

26:                                               ; preds = %24, %1
  %27 = load ptr, ptr @cfun, align 8, !tbaa !134
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !165
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !261

31:                                               ; preds = %26
  tail call void @rescan_loop_exit(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #16
  br label %32

32:                                               ; preds = %31, %26
  %33 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %34 = getelementptr inbounds %struct.cfg_hooks, ptr %33, i64 0, i32 16
  %35 = load ptr, ptr %34, align 8, !tbaa !259
  %36 = tail call ptr %35(ptr noundef nonnull %0) #16
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 8
  store i64 %5, ptr %37, align 8, !tbaa !166
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 11
  store i32 %13, ptr %38, align 8, !tbaa !167
  %39 = tail call fastcc ptr @single_succ_edge(ptr noundef %36) #17
  %40 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 8
  store i32 10000, ptr %40, align 4, !tbaa !175
  %41 = tail call fastcc ptr @single_succ_edge(ptr noundef %36) #17
  %42 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 9
  store i64 %5, ptr %42, align 8, !tbaa !176
  br i1 %17, label %55, label %43, !prof !262

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !239
  %46 = or i32 %45, 4
  store i32 %46, ptr %44, align 8, !tbaa !239
  %47 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %36) #17
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !177
  %50 = or i32 %49, 128
  store i32 %50, ptr %48, align 8, !tbaa !177
  %51 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %36) #17
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !177
  %54 = or i32 %53, 128
  store i32 %54, ptr %52, align 8, !tbaa !177
  br label %55

55:                                               ; preds = %43, %32
  %56 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %60, label %58, !prof !263

58:                                               ; preds = %55
  %59 = tail call fastcc ptr @single_pred(ptr noundef nonnull %36) #17
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %36, ptr noundef %59) #16
  br label %60

60:                                               ; preds = %58, %55
  %61 = tail call i32 @dom_info_state(i32 noundef 1) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %94, label %63, !prof !263

63:                                               ; preds = %60
  %64 = tail call fastcc ptr @single_succ(ptr noundef nonnull %36) #17
  %65 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %64) #16
  %66 = tail call fastcc ptr @single_pred(ptr noundef nonnull %36) #17
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %94, !prof !264

68:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %69 = tail call fastcc ptr @single_succ(ptr noundef nonnull %36) #17
  %70 = tail call fastcc ptr @ei_start_1(ptr noundef %69) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !168
  %71 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %70, ptr %71, align 8, !tbaa.struct !170
  %72 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %70, ptr noundef nonnull %2) #17, !range !171
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %88, label %74, !prof !265

74:                                               ; preds = %68, %83
  %75 = load ptr, ptr %2, align 8, !tbaa !134
  %76 = tail call fastcc ptr @single_succ_edge(ptr noundef %36) #17
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %83, label %78, !prof !266

78:                                               ; preds = %74
  %79 = load ptr, ptr %75, align 8, !tbaa !174
  %80 = tail call fastcc ptr @single_succ(ptr noundef %36) #17
  %81 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %79, ptr noundef %80) #16
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %88, label %83, !prof !267

83:                                               ; preds = %78, %74
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %84 = load i32, ptr %3, align 8
  %85 = load ptr, ptr %71, align 8
  %86 = call fastcc zeroext i8 @ei_cond(i32 %84, ptr %85, ptr noundef nonnull %2) #17, !range !171
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %74, !prof !268, !llvm.loop !269

88:                                               ; preds = %83, %78, %68
  %89 = load ptr, ptr %2, align 8, !tbaa !134
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %93, !prof !270

91:                                               ; preds = %88
  %92 = tail call fastcc ptr @single_succ(ptr noundef %36) #17
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %92, ptr noundef %36) #16
  br label %93

93:                                               ; preds = %91, %88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %94

94:                                               ; preds = %63, %93, %60
  %95 = load ptr, ptr @cfun, align 8, !tbaa !134
  %96 = getelementptr inbounds %struct.function, ptr %95, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !165
  %98 = icmp eq ptr %97, null
  br i1 %98, label %109, label %99, !prof !261

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !164
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !164
  %104 = tail call ptr @find_common_loop(ptr noundef %101, ptr noundef %103) #16
  tail call void @add_bb_to_loop(ptr noundef %36, ptr noundef %104) #16
  %105 = getelementptr inbounds %struct.loop, ptr %104, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !235
  %107 = icmp eq ptr %106, %6
  br i1 %107, label %108, label %109, !prof !271

108:                                              ; preds = %99
  store ptr %36, ptr %105, align 8, !tbaa !235
  br label %109

109:                                              ; preds = %99, %108, %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !272 !PGOFuncName !273 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #17, !range !171
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !274

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !210
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #17
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !226 !PGOFuncName !275 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #17, !range !171
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !276

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 655, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !249
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #17
  ret ptr %7
}

; Function Attrs: optsize
declare i32 @dom_info_state(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_basic_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !277 {
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13, !prof !279

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.37, ptr noundef %9) #16
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !278
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi ptr [ %12, %8 ], [ %6, %3 ]
  %15 = tail call ptr %14(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  %16 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18, !prof !280

18:                                               ; preds = %13
  tail call void @add_to_dominance_info(i32 noundef 1, ptr noundef %15) #16
  br label %19

19:                                               ; preds = %18, %13
  %20 = tail call zeroext i8 @dom_info_available_p(i32 noundef 2) #16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22, !prof !281

22:                                               ; preds = %19
  tail call void @add_to_dominance_info(i32 noundef 2, ptr noundef %15) #16
  br label %23

23:                                               ; preds = %22, %19
  ret ptr %15
}

; Function Attrs: optsize
declare void @add_to_dominance_info(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_empty_bb(ptr noundef %0) local_unnamed_addr #3 !prof !282 {
  %2 = tail call ptr @create_basic_block(ptr noundef null, ptr noundef null, ptr noundef %0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_merge_blocks_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !283 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !284
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12, !prof !285

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.38, ptr noundef %8) #16
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !284
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %14 = tail call zeroext i8 %13(ptr noundef %0, ptr noundef %1) #16
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @predict_edge(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !286 {
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !287
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13, !prof !288

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.39, ptr noundef %9) #16
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !287
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi ptr [ %12, %8 ], [ %6, %3 ]
  tail call void %14(ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @predicted_by_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !289 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !287
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10, !prof !290

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.40, ptr noundef %8) #16
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %9, %7 ], [ %3, %2 ]
  %12 = getelementptr inbounds %struct.cfg_hooks, ptr %11, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !291
  %14 = tail call zeroext i8 %13(ptr noundef %0, i32 noundef %1) #16
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @merge_blocks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !292 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %5 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.cfg_hooks, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !293
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14, !prof !294

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.41, ptr noundef %10) #16
  %11 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %12 = getelementptr inbounds %struct.cfg_hooks, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !293
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi ptr [ %13, %9 ], [ %7, %2 ]
  tail call void %15(ptr noundef %0, ptr noundef %1) #16
  %16 = load ptr, ptr @cfun, align 8, !tbaa !134
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !165
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !295

20:                                               ; preds = %14
  tail call void @remove_bb_from_loops(ptr noundef %1) #16
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !210
  %24 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %23) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26, !prof !296

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %29, %26 ], [ %23, %21 ]
  %28 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 0) #17
  tail call void @remove_edge(ptr noundef %28) #17
  %29 = load ptr, ptr %22, align 8, !tbaa !210
  %30 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %29) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %26, !prof !297, !llvm.loop !298

32:                                               ; preds = %26, %21
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %34 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %33) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !168
  %35 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %34, ptr %35, align 8, !tbaa.struct !170
  %36 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %34, ptr noundef nonnull %3) #17, !range !171
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %50, label %38, !prof !296

38:                                               ; preds = %32, %45
  %39 = load ptr, ptr %3, align 8, !tbaa !134
  store ptr %0, ptr %39, align 8, !tbaa !174
  %40 = load ptr, ptr @cfun, align 8, !tbaa !134
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !165
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44, !prof !299

44:                                               ; preds = %38
  tail call void @rescan_loop_exit(ptr noundef nonnull %39, i8 noundef zeroext 1, i8 noundef zeroext 0) #16
  br label %45

45:                                               ; preds = %38, %44
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %46 = load i32, ptr %4, align 8
  %47 = load ptr, ptr %35, align 8
  %48 = call fastcc zeroext i8 @ei_cond(i32 %46, ptr %47, ptr noundef nonnull %3) #17, !range !171
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %38, !prof !300, !llvm.loop !301

50:                                               ; preds = %45, %32
  %51 = load ptr, ptr %33, align 8, !tbaa !210
  store ptr %51, ptr %22, align 8, !tbaa !210
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %53 = load i32, ptr %52, align 8, !tbaa !239
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %55 = load i32, ptr %54, align 8, !tbaa !239
  %56 = or i32 %55, %53
  store i32 %56, ptr %54, align 8, !tbaa !239
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %57 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59, !prof !302

59:                                               ; preds = %50
  tail call void @redirect_immediate_dominators(i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %0) #16
  br label %60

60:                                               ; preds = %59, %50
  %61 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63, !prof !302

63:                                               ; preds = %60
  tail call void @delete_from_dominance_info(i32 noundef 1, ptr noundef nonnull %1) #16
  br label %64

64:                                               ; preds = %63, %60
  %65 = tail call zeroext i8 @dom_info_available_p(i32 noundef 2) #16
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67, !prof !295

67:                                               ; preds = %64
  tail call void @delete_from_dominance_info(i32 noundef 2, ptr noundef nonnull %1) #16
  br label %68

68:                                               ; preds = %67, %64
  tail call void @expunge_block(ptr noundef nonnull %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_forwarder_block(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #3 !prof !147 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %7 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %8 = getelementptr inbounds %struct.cfg_hooks, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !303
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load ptr, ptr %7, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.42, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %11, %3
  %14 = tail call ptr @split_block_after_labels(ptr noundef %0) #17
  %15 = load ptr, ptr %14, align 8, !tbaa !174
  %16 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !172
  %18 = tail call fastcc ptr @ei_start_1(ptr noundef %15) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !168
  %19 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %18, ptr %19, align 8, !tbaa.struct !170
  %20 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %18) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %87, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 11
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 8
  %25 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 9
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 3
  %27 = icmp eq ptr %2, null
  br label %28

28:                                               ; preds = %22, %82
  %29 = phi ptr [ %18, %22 ], [ %83, %82 ]
  %30 = phi i32 [ 0, %22 ], [ %84, %82 ]
  %31 = phi ptr [ %20, %22 ], [ %85, %82 ]
  %32 = tail call zeroext i8 %1(ptr noundef nonnull %31) #16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %35 = load i32, ptr %5, align 8
  %36 = load ptr, ptr %19, align 8
  br label %82, !llvm.loop !304

37:                                               ; preds = %28
  %38 = load ptr, ptr %31, align 8, !tbaa !174
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 11
  %40 = load i32, ptr %39, align 8, !tbaa !167
  %41 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !175
  %43 = mul nsw i32 %42, %40
  %44 = add nsw i32 %43, 5000
  %45 = sdiv i32 %44, -10000
  %46 = load i32, ptr %23, align 8, !tbaa !167
  %47 = add i32 %45, %46
  store i32 %47, ptr %23, align 8, !tbaa !167
  %48 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 9
  %49 = load i64, ptr %48, align 8, !tbaa !176
  %50 = load i64, ptr %24, align 8, !tbaa !166
  %51 = sub nsw i64 %50, %49
  store i64 %51, ptr %24, align 8, !tbaa !166
  %52 = icmp slt i32 %47, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  store i32 0, ptr %23, align 8, !tbaa !167
  br label %54

54:                                               ; preds = %53, %37
  %55 = icmp slt i64 %51, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  store i64 0, ptr %24, align 8, !tbaa !166
  br label %57

57:                                               ; preds = %56, %54
  %58 = load i64, ptr %25, align 8, !tbaa !176
  %59 = sub nsw i64 %58, %49
  %60 = tail call i64 @llvm.smax.i64(i64 %59, i64 0)
  store i64 %60, ptr %25, align 8, !tbaa !176
  %61 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %31, ptr noundef %17) #17
  %62 = icmp eq ptr %61, null
  br i1 %62, label %82, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr @cfun, align 8, !tbaa !134
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !165
  %67 = icmp eq ptr %66, null
  br i1 %67, label %80, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %26, align 8, !tbaa !164
  %70 = icmp eq ptr %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.loop, ptr %69, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !248
  %74 = icmp eq ptr %73, %15
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.loop, ptr %69, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !235
  %78 = icmp eq ptr %77, %38
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store ptr %61, ptr %76, align 8, !tbaa !235
  br label %80

80:                                               ; preds = %79, %75, %71, %68, %63
  br i1 %27, label %82, label %81

81:                                               ; preds = %80
  tail call void %2(ptr noundef nonnull %61) #16
  br label %82

82:                                               ; preds = %57, %81, %80, %34
  %83 = phi ptr [ %29, %57 ], [ %29, %81 ], [ %29, %80 ], [ %36, %34 ]
  %84 = phi i32 [ %30, %57 ], [ %30, %81 ], [ %30, %80 ], [ %35, %34 ]
  %85 = tail call fastcc ptr @ei_safe_edge(i32 %84, ptr %83) #17
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %28

87:                                               ; preds = %82, %13
  store ptr null, ptr %4, align 8, !tbaa !134
  %88 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %91 = tail call fastcc ptr @VEC_basic_block_heap_alloc() #17
  store ptr %91, ptr %6, align 8, !tbaa !134
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %91, ptr noundef %15) #17
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %91, ptr noundef %17) #17
  tail call void @iterate_fix_dominators(i32 noundef 1, ptr noundef %91, i8 noundef zeroext 0) #16
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %92

92:                                               ; preds = %90, %87
  %93 = load ptr, ptr @cfun, align 8, !tbaa !134
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !165
  %96 = icmp eq ptr %95, null
  br i1 %96, label %137, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !164
  %100 = getelementptr inbounds %struct.loop, ptr %99, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !248
  %102 = icmp eq ptr %101, %15
  br i1 %102, label %103, label %127

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.loop, ptr %99, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !235
  %106 = icmp eq ptr %105, null
  br i1 %106, label %127, label %107

107:                                              ; preds = %103
  %108 = tail call ptr @find_edge(ptr noundef nonnull %105, ptr noundef nonnull %15) #16
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %127

110:                                              ; preds = %107
  tail call void @remove_bb_from_loops(ptr noundef nonnull %15) #16
  store ptr %17, ptr %100, align 8, !tbaa !248
  store i32 0, ptr %5, align 8, !tbaa.struct !168
  store ptr %18, ptr %19, align 8, !tbaa.struct !170
  %111 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %4) #17, !range !171
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  tail call void @add_bb_to_loop(ptr noundef nonnull %15, ptr noundef nonnull %99) #16
  br label %127

114:                                              ; preds = %110, %114
  %115 = phi ptr [ %120, %114 ], [ %99, %110 ]
  %116 = load ptr, ptr %4, align 8, !tbaa !134
  %117 = load ptr, ptr %116, align 8, !tbaa !174
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %117, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !164
  %120 = tail call ptr @find_common_loop(ptr noundef %115, ptr noundef %119) #16
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %121 = load i32, ptr %5, align 8
  %122 = load ptr, ptr %19, align 8
  %123 = call fastcc zeroext i8 @ei_cond(i32 %121, ptr %122, ptr noundef nonnull %4) #17, !range !171
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %114, !llvm.loop !305

125:                                              ; preds = %114
  tail call void @add_bb_to_loop(ptr noundef %15, ptr noundef %120) #16
  %126 = icmp eq ptr %99, null
  br i1 %126, label %137, label %127

127:                                              ; preds = %97, %103, %107, %113, %125
  br label %128

128:                                              ; preds = %127, %134
  %129 = phi ptr [ %135, %134 ], [ %99, %127 ]
  %130 = getelementptr inbounds %struct.loop, ptr %129, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !235
  %132 = icmp eq ptr %131, %15
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store ptr %17, ptr %130, align 8, !tbaa !235
  br label %134

134:                                              ; preds = %128, %133
  %135 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %129) #17
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %128, !llvm.loop !306

137:                                              ; preds = %134, %125, %92
  %138 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %139 = getelementptr inbounds %struct.cfg_hooks, ptr %138, i64 0, i32 17
  %140 = load ptr, ptr %139, align 8, !tbaa !303
  tail call void %140(ptr noundef nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #3 !prof !147 !PGOFuncName !307 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !171
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_basic_block_heap_alloc() unnamed_addr #3 !prof !147 !PGOFuncName !308 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 2) #16
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !147 !PGOFuncName !309 {
  %3 = load i32, ptr %0, align 8, !tbaa !310
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !310
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !134
  ret void
}

; Function Attrs: optsize
declare void @iterate_fix_dominators(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !147 !PGOFuncName !312 {
  %2 = load ptr, ptr %0, align 8, !tbaa !134
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !147 !PGOFuncName !313 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !314
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #17
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tidy_fallthru_edge(ptr noundef %0) local_unnamed_addr #3 !prof !147 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !315
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #16
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tidy_fallthru_edges() local_unnamed_addr #3 !prof !316 {
  %1 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %2 = getelementptr inbounds %struct.cfg_hooks, ptr %1, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !315
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5, !prof !317

5:                                                ; preds = %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !134
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !149
  %9 = load ptr, ptr %8, align 8, !tbaa !154
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !158
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %53, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !161
  %18 = icmp eq ptr %11, %17
  br i1 %18, label %53, label %19

19:                                               ; preds = %15, %43
  %20 = phi ptr [ %44, %43 ], [ %11, %15 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !155
  %23 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %20) #17, !range !171
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %20) #17
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !177
  %29 = and i32 %28, 14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !172
  %34 = icmp eq ptr %33, %22
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !148
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !318
  %40 = tail call ptr @find_reg_note(ptr noundef %39, i32 noundef 29, ptr noundef null) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  tail call void @tidy_fallthru_edge(ptr noundef nonnull %26) #17
  br label %43

43:                                               ; preds = %25, %31, %35, %42, %19
  %44 = load ptr, ptr %21, align 8, !tbaa !155
  %45 = load ptr, ptr @cfun, align 8, !tbaa !134
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !149
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !158
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !161
  %52 = icmp eq ptr %44, %51
  br i1 %52, label %53, label %19, !llvm.loop !320

53:                                               ; preds = %43, %15, %5, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !272 !PGOFuncName !321 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !210
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_duplicate_block_p(ptr noundef %0) local_unnamed_addr #3 !prof !322 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !323
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !324

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.43, ptr noundef %7) #16
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr @cfun, align 8, !tbaa !134
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !149
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !158
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %23, label %15, !prof !324

15:                                               ; preds = %8
  %16 = load ptr, ptr %11, align 8, !tbaa !154
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %23, label %18, !prof !324

18:                                               ; preds = %15
  %19 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %20 = getelementptr inbounds %struct.cfg_hooks, ptr %19, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !323
  %22 = tail call zeroext i8 %21(ptr noundef %0) #16
  br label %23

23:                                               ; preds = %8, %15, %18
  %24 = phi i8 [ %22, %18 ], [ 0, %15 ], [ 0, %8 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @duplicate_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !325 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7, !prof !326

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 9
  %9 = load i64, ptr %8, align 8, !tbaa !176
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi i64 [ %9, %7 ], [ 0, %3 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %12 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %13 = getelementptr inbounds %struct.cfg_hooks, ptr %12, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !327
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18, !prof !328

16:                                               ; preds = %10
  %17 = load ptr, ptr %12, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.44, ptr noundef %17) #16
  br label %18

18:                                               ; preds = %16, %10
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !166
  %21 = icmp slt i64 %20, %11
  br i1 %21, label %22, label %23, !prof !328

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i64 [ %20, %22 ], [ %11, %18 ]
  %25 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %26 = getelementptr inbounds %struct.cfg_hooks, ptr %25, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !327
  %28 = tail call ptr %27(ptr noundef nonnull %0) #16
  %29 = icmp eq ptr %2, null
  br i1 %29, label %32, label %30, !prof !326

30:                                               ; preds = %23
  %31 = tail call zeroext i8 @move_block_after(ptr noundef %28, ptr noundef nonnull %2) #17
  br label %32

32:                                               ; preds = %30, %23
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %34 = load i32, ptr %33, align 4, !tbaa !200
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 10
  store i32 %34, ptr %35, align 4, !tbaa !200
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %37 = load i32, ptr %36, align 8, !tbaa !239
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 13
  store i32 %37, ptr %38, align 8, !tbaa !239
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %40 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %39) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !168
  %41 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %40, ptr %41, align 8, !tbaa.struct !170
  %42 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %40, ptr noundef nonnull %4) #17, !range !171
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %79, label %44, !prof !329

44:                                               ; preds = %32, %71
  %45 = load ptr, ptr %4, align 8, !tbaa !134
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !172
  %48 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !177
  %50 = tail call ptr @unchecked_make_edge(ptr noundef %28, ptr noundef %47, i32 noundef %49) #16
  %51 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 8
  %52 = load i32, ptr %51, align 4, !tbaa !175
  %53 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 8
  store i32 %52, ptr %53, align 4, !tbaa !175
  br i1 %6, label %67, label %54, !prof !330

54:                                               ; preds = %44
  %55 = load i64, ptr %19, align 8, !tbaa !166
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %67, label %57, !prof !331

57:                                               ; preds = %54
  %58 = mul nsw i64 %24, 10000
  %59 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 9
  %60 = load i64, ptr %59, align 8, !tbaa !176
  %61 = sdiv i64 %58, %55
  %62 = mul nsw i64 %61, %60
  %63 = sdiv i64 %62, 10000
  %64 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 9
  store i64 %63, ptr %64, align 8, !tbaa !176
  %65 = load i64, ptr %59, align 8, !tbaa !176
  %66 = sub nsw i64 %65, %63
  store i64 %66, ptr %59, align 8, !tbaa !176
  br label %71

67:                                               ; preds = %54, %44
  %68 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 9
  %69 = load i64, ptr %68, align 8, !tbaa !176
  %70 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 9
  store i64 %69, ptr %70, align 8, !tbaa !176
  br label %71

71:                                               ; preds = %67, %57
  %72 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !332
  %74 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 3
  store ptr %73, ptr %74, align 8, !tbaa !332
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %75 = load i32, ptr %5, align 8
  %76 = load ptr, ptr %41, align 8
  %77 = call fastcc zeroext i8 @ei_cond(i32 %75, ptr %76, ptr noundef nonnull %4) #17, !range !171
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %44, !prof !333, !llvm.loop !334

79:                                               ; preds = %71, %32
  br i1 %6, label %108, label %80, !prof !326

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 8
  store i64 %24, ptr %81, align 8, !tbaa !166
  %82 = load i64, ptr %19, align 8, !tbaa !166
  %83 = sub nsw i64 %82, %24
  store i64 %83, ptr %19, align 8, !tbaa !166
  %84 = load ptr, ptr %1, align 8, !tbaa !174
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 11
  %86 = load i32, ptr %85, align 8, !tbaa !167
  %87 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %88 = load i32, ptr %87, align 4, !tbaa !175
  %89 = mul nsw i32 %88, %86
  %90 = add nsw i32 %89, 5000
  %91 = sdiv i32 %90, 10000
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 11
  store i32 %91, ptr %92, align 8, !tbaa !167
  %93 = load i32, ptr %85, align 8, !tbaa !167
  %94 = mul nsw i32 %93, %88
  %95 = add nsw i32 %94, 5000
  %96 = sdiv i32 %95, -10000
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %98 = load i32, ptr %97, align 8, !tbaa !167
  %99 = add i32 %96, %98
  store i32 %99, ptr %97, align 8, !tbaa !167
  %100 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %1, ptr noundef %28) #17
  %101 = load i64, ptr %19, align 8, !tbaa !166
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104, !prof !335

103:                                              ; preds = %80
  store i64 0, ptr %19, align 8, !tbaa !166
  br label %104

104:                                              ; preds = %103, %80
  %105 = load i32, ptr %97, align 8, !tbaa !167
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %114, !prof !336

107:                                              ; preds = %104
  store i32 0, ptr %97, align 8, !tbaa !167
  br label %114

108:                                              ; preds = %79
  %109 = load i64, ptr %19, align 8, !tbaa !166
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 8
  store i64 %109, ptr %110, align 8, !tbaa !166
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %112 = load i32, ptr %111, align 8, !tbaa !167
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 11
  store i32 %112, ptr %113, align 8, !tbaa !167
  br label %114

114:                                              ; preds = %104, %107, %108
  tail call void @set_bb_original(ptr noundef nonnull %28, ptr noundef nonnull %0) #16
  tail call void @set_bb_copy(ptr noundef nonnull %0, ptr noundef nonnull %28) #16
  %115 = load ptr, ptr @cfun, align 8, !tbaa !134
  %116 = getelementptr inbounds %struct.function, ptr %115, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !165
  %118 = icmp eq ptr %117, null
  br i1 %118, label %125, label %119, !prof !337

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !164
  %122 = tail call ptr @get_loop_copy(ptr noundef %121) #16
  %123 = icmp eq ptr %122, null
  %124 = select i1 %123, ptr %121, ptr %122, !prof !338
  tail call void @add_bb_to_loop(ptr noundef nonnull %28, ptr noundef %124) #16
  br label %125

125:                                              ; preds = %119, %114
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
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
define dso_local zeroext i8 @block_ends_with_call_p(ptr noundef %0) local_unnamed_addr #3 !prof !339 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !340
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11, !prof !341

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.45, ptr noundef %7) #16
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !340
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ %4, %1 ]
  %13 = tail call zeroext i8 %12(ptr noundef %0) #16
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @block_ends_with_condjump_p(ptr noundef %0) local_unnamed_addr #3 !prof !147 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !342
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.46, ptr noundef %7) #16
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !342
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ %4, %1 ]
  %13 = tail call zeroext i8 %12(ptr noundef %0) #16
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @flow_call_edges_add(ptr noundef %0) local_unnamed_addr #3 !prof !147 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !343
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !207
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.47, ptr noundef %7) #16
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !343
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ %4, %1 ]
  %13 = tail call i32 %12(ptr noundef %0) #16
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @execute_on_growing_pred(ptr noundef %0) local_unnamed_addr #3 !prof !344 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !345
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !346

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #16
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @execute_on_shrinking_pred(ptr noundef %0) local_unnamed_addr #3 !prof !347 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !348
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !349

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #16
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lv_flush_pending_stmts(ptr noundef %0) local_unnamed_addr #3 !prof !147 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !350
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #16
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cfg_hook_duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #3 !prof !147 {
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !351
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1062, ptr noundef nonnull @.str.1) #16
  %13 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %14 = getelementptr inbounds %struct.cfg_hooks, ptr %13, i64 0, i32 24
  %15 = load ptr, ptr %14, align 8, !tbaa !351
  br label %16

16:                                               ; preds = %7, %12
  %17 = phi ptr [ %10, %7 ], [ %15, %12 ]
  %18 = tail call zeroext i8 %17(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #16
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extract_cond_bb_edges(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !147 {
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !352
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1076, ptr noundef nonnull @.str.1) #16
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 27
  %11 = load ptr, ptr %10, align 8, !tbaa !352
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi ptr [ %6, %3 ], [ %11, %8 ]
  tail call void %13(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lv_adjust_loop_header_phi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !147 {
  %5 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.cfg_hooks, ptr %5, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !353
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void %7(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #16
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lv_add_condition_to_bb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !147 {
  %5 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.cfg_hooks, ptr %5, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !354
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1097, ptr noundef nonnull @.str.1) #16
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !134
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !354
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %7, %4 ], [ %12, %9 ]
  tail call void %14(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #3 !prof !191 !PGOFuncName !355 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !356

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #17
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #3 !prof !357 !PGOFuncName !358 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !359

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #17
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #3 !prof !360 !PGOFuncName !361 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !362

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 687, ptr noundef nonnull @.str.1) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !134
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !226 !PGOFuncName !363 {
  %2 = load ptr, ptr %0, align 8, !tbaa !249
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !147 !PGOFuncName !364 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !365
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !147 !PGOFuncName !367 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  ret ptr %5
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

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
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { cold optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!132}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!35 = !{ptr @current_ir_type, ptr @fancy_abort, i64 1}
!36 = !{ptr @ei_cond, ptr @ei_end_p, i64 129474}
!37 = !{ptr @ei_cond, ptr @ei_edge, i64 88206}
!38 = !{ptr @ei_next, ptr @ei_container, i64 163943}
!39 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 81972}
!40 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!41 = !{ptr @redirect_edge_and_branch, ptr @internal_error, i64 1}
!42 = !{ptr @redirect_edge_and_branch, ptr @rescan_loop_exit, i64 253397}
!43 = !{ptr @remove_edge, ptr @rescan_loop_exit, i64 258648}
!44 = !{ptr @remove_edge, ptr @remove_edge_raw, i64 493114}
!45 = !{ptr @redirect_edge_and_branch_force, ptr @internal_error, i64 1}
!46 = !{ptr @redirect_edge_and_branch_force, ptr @rescan_loop_exit, i64 1}
!47 = !{ptr @redirect_edge_and_branch_force, ptr @dom_info_available_p, i64 2}
!48 = !{ptr @redirect_edge_and_branch_force, ptr @set_immediate_dominator, i64 1}
!49 = !{ptr @redirect_edge_and_branch_force, ptr @find_edge, i64 1}
!50 = !{ptr @single_pred, ptr @single_pred_edge, i64 22256}
!51 = !{ptr @single_succ, ptr @single_succ_edge, i64 23596}
!52 = !{ptr @split_block, ptr @internal_error, i64 1}
!53 = !{ptr @split_block, ptr @dom_info_available_p, i64 19146}
!54 = !{ptr @split_block, ptr @redirect_immediate_dominators, i64 1}
!55 = !{ptr @split_block, ptr @set_immediate_dominator, i64 1}
!56 = !{ptr @split_block, ptr @add_bb_to_loop, i64 1}
!57 = !{ptr @split_block, ptr @make_single_succ_edge, i64 19146}
!58 = !{ptr @move_block_after, ptr @internal_error, i64 1}
!59 = !{ptr @delete_basic_block, ptr @internal_error, i64 1}
!60 = !{ptr @delete_basic_block, ptr @remove_bb_from_loops, i64 186534}
!61 = !{ptr @delete_basic_block, ptr @VEC_edge_base_length, i64 895140}
!62 = !{ptr @delete_basic_block, ptr @VEC_edge_base_index, i64 120640}
!63 = !{ptr @delete_basic_block, ptr @remove_edge, i64 120640}
!64 = !{ptr @delete_basic_block, ptr @dom_info_available_p, i64 774500}
!65 = !{ptr @delete_basic_block, ptr @delete_from_dominance_info, i64 331288}
!66 = !{ptr @delete_basic_block, ptr @expunge_block, i64 387250}
!67 = !{ptr @split_edge, ptr @internal_error, i64 1}
!68 = !{ptr @split_edge, ptr @rescan_loop_exit, i64 11118}
!69 = !{ptr @split_edge, ptr @single_succ_edge, i64 528022}
!70 = !{ptr @split_edge, ptr @single_pred_edge, i64 1}
!71 = !{ptr @split_edge, ptr @dom_info_available_p, i64 257911}
!72 = !{ptr @split_edge, ptr @single_pred, i64 22258}
!73 = !{ptr @split_edge, ptr @set_immediate_dominator, i64 11130}
!74 = !{ptr @split_edge, ptr @dom_info_state, i64 257911}
!75 = !{ptr @split_edge, ptr @single_succ, i64 23550}
!76 = !{ptr @split_edge, ptr @get_immediate_dominator, i64 11129}
!77 = !{ptr @split_edge, ptr @ei_start_1, i64 6234}
!78 = !{ptr @split_edge, ptr @ei_cond, i64 12248}
!79 = !{ptr @split_edge, ptr @dominated_by_p, i64 6186}
!80 = !{ptr @split_edge, ptr @ei_next, i64 6014}
!81 = !{ptr @split_edge, ptr @find_common_loop, i64 11118}
!82 = !{ptr @split_edge, ptr @add_bb_to_loop, i64 11118}
!83 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 551711}
!84 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!85 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 551711}
!86 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 22256}
!87 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!88 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 22256}
!89 = !{ptr @create_basic_block, ptr @internal_error, i64 1}
!90 = !{ptr @create_basic_block, ptr @dom_info_available_p, i64 1151668}
!91 = !{ptr @create_basic_block, ptr @add_to_dominance_info, i64 13051}
!92 = !{ptr @create_empty_bb, ptr @create_basic_block, i64 235451}
!93 = !{ptr @can_merge_blocks_p, ptr @internal_error, i64 1}
!94 = !{ptr @predict_edge, ptr @internal_error, i64 1}
!95 = !{ptr @predicted_by_p, ptr @internal_error, i64 1}
!96 = !{ptr @merge_blocks, ptr @internal_error, i64 1}
!97 = !{ptr @merge_blocks, ptr @remove_bb_from_loops, i64 1}
!98 = !{ptr @merge_blocks, ptr @VEC_edge_base_length, i64 3098}
!99 = !{ptr @merge_blocks, ptr @VEC_edge_base_index, i64 1549}
!100 = !{ptr @merge_blocks, ptr @remove_edge, i64 1549}
!101 = !{ptr @merge_blocks, ptr @ei_start_1, i64 1549}
!102 = !{ptr @merge_blocks, ptr @ei_cond, i64 6502}
!103 = !{ptr @merge_blocks, ptr @rescan_loop_exit, i64 1}
!104 = !{ptr @merge_blocks, ptr @ei_next, i64 4953}
!105 = !{ptr @merge_blocks, ptr @dom_info_available_p, i64 4647}
!106 = !{ptr @merge_blocks, ptr @redirect_immediate_dominators, i64 1419}
!107 = !{ptr @merge_blocks, ptr @delete_from_dominance_info, i64 1420}
!108 = !{ptr @merge_blocks, ptr @expunge_block, i64 1549}
!109 = !{ptr @tidy_fallthru_edges, ptr @single_succ_p, i64 12}
!110 = !{ptr @tidy_fallthru_edges, ptr @single_succ_edge, i64 7}
!111 = !{ptr @tidy_fallthru_edges, ptr @find_reg_note, i64 1}
!112 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 551711}
!113 = !{ptr @can_duplicate_block_p, ptr @internal_error, i64 1}
!114 = !{ptr @duplicate_block, ptr @internal_error, i64 1}
!115 = !{ptr @duplicate_block, ptr @move_block_after, i64 259}
!116 = !{ptr @duplicate_block, ptr @ei_start_1, i64 39719}
!117 = !{ptr @duplicate_block, ptr @ei_cond, i64 110676}
!118 = !{ptr @duplicate_block, ptr @unchecked_make_edge, i64 70957}
!119 = !{ptr @duplicate_block, ptr @ei_next, i64 70957}
!120 = !{ptr @duplicate_block, ptr @redirect_edge_and_branch_force, i64 259}
!121 = !{ptr @duplicate_block, ptr @set_bb_original, i64 39719}
!122 = !{ptr @duplicate_block, ptr @set_bb_copy, i64 39719}
!123 = !{ptr @duplicate_block, ptr @get_loop_copy, i64 39460}
!124 = !{ptr @duplicate_block, ptr @add_bb_to_loop, i64 39460}
!125 = !{ptr @block_ends_with_call_p, ptr @internal_error, i64 1}
!126 = !{ptr @ei_end_p, ptr @ei_container, i64 258947}
!127 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 129474}
!128 = !{ptr @ei_edge, ptr @ei_container, i64 176411}
!129 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 88206}
!130 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!131 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 22256}
!132 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!133 = !{!"function_entry_count", i64 152}
!134 = !{!135, !135, i64 0}
!135 = !{!"any pointer", !136, i64 0}
!136 = !{!"omnipotent char", !137, i64 0}
!137 = !{!"Simple C/C++ TBAA"}
!138 = !{!"function_entry_count", i64 114}
!139 = !{!"function_entry_count", i64 208}
!140 = !{!"function_entry_count", i64 138099}
!141 = !{i64 0, i64 8, !134, i64 8, i64 8, !134, i64 16, i64 8, !134, i64 24, i64 8, !134, i64 32, i64 8, !134, i64 40, i64 8, !134, i64 48, i64 8, !134, i64 56, i64 8, !134, i64 64, i64 8, !134, i64 72, i64 8, !134, i64 80, i64 8, !134, i64 88, i64 8, !134, i64 96, i64 8, !134, i64 104, i64 8, !134, i64 112, i64 8, !134, i64 120, i64 8, !134, i64 128, i64 8, !134, i64 136, i64 8, !134, i64 144, i64 8, !134, i64 152, i64 8, !134, i64 160, i64 8, !134, i64 168, i64 8, !134, i64 176, i64 8, !134, i64 184, i64 8, !134, i64 192, i64 8, !134, i64 200, i64 8, !134, i64 208, i64 8, !134, i64 216, i64 8, !134, i64 224, i64 8, !134}
!142 = !{!"function_entry_count", i64 276198}
!143 = !{!"function_entry_count", i64 65728}
!144 = !{!"branch_weights", i32 1, i32 65729}
!145 = !{!"branch_weights", i32 65185, i32 545}
!146 = !{!"branch_weights", i32 545, i32 1}
!147 = !{!"function_entry_count", i64 0}
!148 = !{!136, !136, i64 0}
!149 = !{!150, !135, i64 8}
!150 = !{!"function", !135, i64 0, !135, i64 8, !135, i64 16, !135, i64 24, !135, i64 32, !135, i64 40, !135, i64 48, !135, i64 56, !135, i64 64, !135, i64 72, !135, i64 80, !135, i64 88, !135, i64 96, !151, i64 104, !151, i64 108, !151, i64 112, !151, i64 116, !151, i64 120, !151, i64 124, !135, i64 128, !151, i64 136, !151, i64 137, !151, i64 138, !151, i64 138, !151, i64 138, !151, i64 138, !151, i64 138, !151, i64 138, !151, i64 138, !151, i64 139, !151, i64 139, !151, i64 139, !151, i64 139, !151, i64 139, !151, i64 139, !151, i64 139}
!151 = !{!"int", !136, i64 0}
!152 = !{!153, !151, i64 32}
!153 = !{!"control_flow_graph", !135, i64 0, !135, i64 8, !135, i64 16, !151, i64 24, !151, i64 28, !151, i64 32, !135, i64 40, !151, i64 48, !136, i64 52, !136, i64 60, !151, i64 68, !151, i64 72}
!154 = !{!153, !135, i64 0}
!155 = !{!156, !135, i64 56}
!156 = !{!"basic_block_def", !135, i64 0, !135, i64 8, !135, i64 16, !135, i64 24, !136, i64 32, !135, i64 48, !135, i64 56, !136, i64 64, !157, i64 72, !151, i64 80, !151, i64 84, !151, i64 88, !151, i64 92, !151, i64 96}
!157 = !{!"long", !136, i64 0}
!158 = !{!153, !135, i64 8}
!159 = !{!153, !135, i64 16}
!160 = !{!156, !151, i64 80}
!161 = !{!156, !135, i64 48}
!162 = distinct !{!162, !163}
!163 = !{!"llvm.loop.mustprogress"}
!164 = !{!156, !135, i64 24}
!165 = !{!150, !135, i64 32}
!166 = !{!156, !157, i64 72}
!167 = !{!156, !151, i64 88}
!168 = !{i64 0, i64 4, !169, i64 8, i64 8, !134}
!169 = !{!151, !151, i64 0}
!170 = !{i64 0, i64 8, !134}
!171 = !{i8 0, i8 2}
!172 = !{!173, !135, i64 8}
!173 = !{!"edge_def", !135, i64 0, !135, i64 8, !136, i64 16, !135, i64 24, !135, i64 32, !151, i64 40, !151, i64 44, !151, i64 48, !151, i64 52, !157, i64 56}
!174 = !{!173, !135, i64 0}
!175 = !{!173, !151, i64 52}
!176 = !{!173, !157, i64 56}
!177 = !{!173, !151, i64 48}
!178 = !{!157, !157, i64 0}
!179 = distinct !{!179, !163}
!180 = !{!173, !151, i64 44}
!181 = distinct !{!181, !163}
!182 = distinct !{!182, !163}
!183 = distinct !{!183, !163}
!184 = distinct !{!184, !163}
!185 = distinct !{!185, !163}
!186 = !{!187, !135, i64 8}
!187 = !{!"cfg_hooks", !135, i64 0, !135, i64 8, !135, i64 16, !135, i64 24, !135, i64 32, !135, i64 40, !135, i64 48, !135, i64 56, !135, i64 64, !135, i64 72, !135, i64 80, !135, i64 88, !135, i64 96, !135, i64 104, !135, i64 112, !135, i64 120, !135, i64 128, !135, i64 136, !135, i64 144, !135, i64 152, !135, i64 160, !135, i64 168, !135, i64 176, !135, i64 184, !135, i64 192, !135, i64 200, !135, i64 208, !135, i64 216, !135, i64 224}
!188 = !{!"cfghooks.c:VEC_basic_block_base_index"}
!189 = !{!"function_entry_count", i64 47502}
!190 = !{!"cfghooks.c:ei_start_1"}
!191 = !{!"function_entry_count", i64 129474}
!192 = !{!"cfghooks.c:ei_cond"}
!193 = !{!"branch_weights", i32 88207, i32 41269}
!194 = !{!"function_entry_count", i64 81972}
!195 = !{!"cfghooks.c:ei_next"}
!196 = !{!"branch_weights", i32 1, i32 81973}
!197 = !{!"branch_weights", i32 81973, i32 1}
!198 = !{!199, !151, i64 0}
!199 = !{!"", !151, i64 0, !135, i64 8}
!200 = !{!156, !151, i64 84}
!201 = distinct !{!201, !163}
!202 = distinct !{!202, !163}
!203 = !{!187, !135, i64 16}
!204 = !{!"function_entry_count", i64 703066}
!205 = !{!187, !135, i64 32}
!206 = !{!"branch_weights", i32 1, i32 703067}
!207 = !{!187, !135, i64 0}
!208 = !{!"branch_weights", i32 2006595412, i32 -734142984}
!209 = !{!187, !135, i64 48}
!210 = !{!156, !135, i64 8}
!211 = !{!"function_entry_count", i64 1683649}
!212 = !{!"cfghooks.c:VEC_edge_base_length"}
!213 = !{!"branch_weights", i32 24, i32 1683627}
!214 = !{!215, !151, i64 0}
!215 = !{!"VEC_edge_base", !151, i64 0, !151, i64 4, !136, i64 8}
!216 = !{!"function_entry_count", i64 784360}
!217 = !{!"cfghooks.c:VEC_edge_base_index"}
!218 = !{!"function_entry_count", i64 493114}
!219 = !{!"branch_weights", i32 234467, i32 258649}
!220 = !{!"function_entry_count", i64 2453}
!221 = !{!187, !135, i64 40}
!222 = !{!"branch_weights", i32 1, i32 2454}
!223 = !{!"branch_weights", i32 2454, i32 1}
!224 = !{!"branch_weights", i32 2453, i32 2}
!225 = !{!"branch_weights", i32 2, i32 1}
!226 = !{!"function_entry_count", i64 22256}
!227 = !{!"cfghooks.c:single_pred"}
!228 = !{!"function_entry_count", i64 23596}
!229 = !{!"cfghooks.c:single_succ"}
!230 = !{!"function_entry_count", i64 19147}
!231 = !{!187, !135, i64 64}
!232 = !{!"branch_weights", i32 1, i32 19148}
!233 = !{!156, !151, i64 92}
!234 = !{!"branch_weights", i32 19148, i32 1}
!235 = !{!236, !135, i64 16}
!236 = !{!"loop", !151, i64 0, !151, i64 4, !135, i64 8, !135, i64 16, !237, i64 24, !151, i64 32, !151, i64 36, !135, i64 40, !135, i64 48, !135, i64 56, !135, i64 64, !135, i64 72, !238, i64 80, !238, i64 96, !136, i64 112, !136, i64 113, !151, i64 116, !135, i64 120, !135, i64 128, !136, i64 136, !135, i64 144}
!237 = !{!"lpt_decision", !151, i64 0, !151, i64 4}
!238 = !{!"", !157, i64 0, !157, i64 8}
!239 = !{!156, !151, i64 96}
!240 = !{!"function_entry_count", i64 1678}
!241 = !{!187, !135, i64 72}
!242 = !{!"branch_weights", i32 1, i32 1679}
!243 = !{!"function_entry_count", i64 387250}
!244 = !{!187, !135, i64 56}
!245 = !{!"branch_weights", i32 1, i32 387251}
!246 = !{!"branch_weights", i32 200717, i32 186535}
!247 = !{!"branch_weights", i32 1, i32 186535}
!248 = !{!236, !135, i64 8}
!249 = !{!156, !135, i64 0}
!250 = !{!"branch_weights", i32 384094, i32 3157}
!251 = !{!"branch_weights", i32 269768, i32 117483}
!252 = !{!"branch_weights", i32 3157, i32 0}
!253 = distinct !{!253, !163}
!254 = !{!"branch_weights", i32 117483, i32 0}
!255 = distinct !{!255, !163}
!256 = !{!"branch_weights", i32 119285, i32 267967}
!257 = !{!"branch_weights", i32 323930, i32 63322}
!258 = !{!"function_entry_count", i64 257911}
!259 = !{!187, !135, i64 128}
!260 = !{!"branch_weights", i32 1, i32 257912}
!261 = !{!"branch_weights", i32 246795, i32 11118}
!262 = !{!"branch_weights", i32 257912, i32 1}
!263 = !{!"branch_weights", i32 246784, i32 11129}
!264 = !{!"branch_weights", i32 6235, i32 4895}
!265 = !{!"branch_weights", i32 1, i32 127}
!266 = !{!"branch_weights", i32 6060, i32 6235}
!267 = !{!"branch_weights", i32 6235, i32 1}
!268 = !{!"branch_weights", i32 127, i32 1573505}
!269 = distinct !{!269, !163}
!270 = !{!"branch_weights", i32 1, i32 6235}
!271 = !{!"branch_weights", i32 1, i32 11118}
!272 = !{!"function_entry_count", i64 551711}
!273 = !{!"cfghooks.c:single_succ_edge"}
!274 = !{!"branch_weights", i32 1, i32 551712}
!275 = !{!"cfghooks.c:single_pred_edge"}
!276 = !{!"branch_weights", i32 1, i32 22257}
!277 = !{!"function_entry_count", i64 575834}
!278 = !{!187, !135, i64 24}
!279 = !{!"branch_weights", i32 1, i32 575835}
!280 = !{!"branch_weights", i32 562787, i32 13049}
!281 = !{!"branch_weights", i32 575834, i32 2}
!282 = !{!"function_entry_count", i64 235451}
!283 = !{!"function_entry_count", i64 403779}
!284 = !{!187, !135, i64 80}
!285 = !{!"branch_weights", i32 1, i32 403780}
!286 = !{!"function_entry_count", i64 266091}
!287 = !{!187, !135, i64 96}
!288 = !{!"branch_weights", i32 1, i32 266092}
!289 = !{!"function_entry_count", i64 175965}
!290 = !{!"branch_weights", i32 1, i32 175966}
!291 = !{!187, !135, i64 104}
!292 = !{!"function_entry_count", i64 1549}
!293 = !{!187, !135, i64 88}
!294 = !{!"branch_weights", i32 1, i32 1550}
!295 = !{!"branch_weights", i32 1550, i32 1}
!296 = !{!"branch_weights", i32 1, i32 1549}
!297 = !{!"branch_weights", i32 1549, i32 1}
!298 = distinct !{!298, !163}
!299 = !{!"branch_weights", i32 4956, i32 1}
!300 = !{!"branch_weights", i32 1549, i32 3407}
!301 = distinct !{!301, !163}
!302 = !{!"branch_weights", i32 130, i32 1421}
!303 = !{!187, !135, i64 136}
!304 = distinct !{!304, !163}
!305 = distinct !{!305, !163}
!306 = distinct !{!306, !163}
!307 = !{!"cfghooks.c:ei_safe_edge"}
!308 = !{!"cfghooks.c:VEC_basic_block_heap_alloc"}
!309 = !{!"cfghooks.c:VEC_basic_block_base_quick_push"}
!310 = !{!311, !151, i64 0}
!311 = !{!"VEC_basic_block_base", !151, i64 0, !151, i64 4, !136, i64 8}
!312 = !{!"cfghooks.c:VEC_basic_block_heap_free"}
!313 = !{!"cfghooks.c:loop_outer"}
!314 = !{!236, !135, i64 40}
!315 = !{!187, !135, i64 144}
!316 = !{!"function_entry_count", i64 39}
!317 = !{!"branch_weights", i32 40, i32 1}
!318 = !{!319, !135, i64 8}
!319 = !{!"rtl_bb_info", !135, i64 0, !135, i64 8, !135, i64 16, !135, i64 24, !151, i64 32}
!320 = distinct !{!320, !163}
!321 = !{!"cfghooks.c:single_succ_p"}
!322 = !{!"function_entry_count", i64 68417}
!323 = !{!187, !135, i64 112}
!324 = !{!"branch_weights", i32 1, i32 68418}
!325 = !{!"function_entry_count", i64 39719}
!326 = !{!"branch_weights", i32 39462, i32 259}
!327 = !{!187, !135, i64 120}
!328 = !{!"branch_weights", i32 1, i32 39720}
!329 = !{!"branch_weights", i32 1, i32 39719}
!330 = !{!"branch_weights", i32 70701, i32 259}
!331 = !{!"branch_weights", i32 259, i32 1}
!332 = !{!173, !135, i64 24}
!333 = !{!"branch_weights", i32 39719, i32 31240}
!334 = distinct !{!334, !163}
!335 = !{!"branch_weights", i32 1, i32 259}
!336 = !{!"branch_weights", i32 3, i32 257}
!337 = !{!"branch_weights", i32 259, i32 39462}
!338 = !{!"branch_weights", i32 39462, i32 1}
!339 = !{!"function_entry_count", i64 153339}
!340 = !{!187, !135, i64 152}
!341 = !{!"branch_weights", i32 1, i32 153340}
!342 = !{!187, !135, i64 160}
!343 = !{!187, !135, i64 168}
!344 = !{!"function_entry_count", i64 1729933}
!345 = !{!187, !135, i64 176}
!346 = !{!"branch_weights", i32 529681, i32 1200254}
!347 = !{!"function_entry_count", i64 1392081}
!348 = !{!187, !135, i64 184}
!349 = !{!"branch_weights", i32 488956, i32 903127}
!350 = !{!187, !135, i64 224}
!351 = !{!187, !135, i64 192}
!352 = !{!187, !135, i64 216}
!353 = !{!187, !135, i64 208}
!354 = !{!187, !135, i64 200}
!355 = !{!"cfghooks.c:ei_end_p"}
!356 = !{!"branch_weights", i32 1, i32 129475}
!357 = !{!"function_entry_count", i64 88206}
!358 = !{!"cfghooks.c:ei_edge"}
!359 = !{!"branch_weights", i32 1, i32 88207}
!360 = !{!"function_entry_count", i64 599304}
!361 = !{!"cfghooks.c:ei_container"}
!362 = !{!"branch_weights", i32 1, i32 599305}
!363 = !{!"cfghooks.c:single_pred_p"}
!364 = !{!"cfghooks.c:VEC_loop_p_base_length"}
!365 = !{!366, !151, i64 0}
!366 = !{!"VEC_loop_p_base", !151, i64 0, !151, i64 4, !136, i64 8}
!367 = !{!"cfghooks.c:VEC_loop_p_base_index"}
