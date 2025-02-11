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
define dso_local void @rtl_register_cfg_hooks() local_unnamed_addr #0 {
  store ptr @rtl_cfg_hooks, ptr @cfg_hooks, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @cfg_layout_rtl_register_cfg_hooks() local_unnamed_addr #0 {
  store ptr @cfg_layout_rtl_cfg_hooks, ptr @cfg_hooks, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gimple_register_cfg_hooks() local_unnamed_addr #0 {
  store ptr @gimple_cfg_hooks, ptr @cfg_hooks, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @get_cfg_hooks(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cfg_hooks) align 8 %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %2, i64 232, i1 false), !tbaa.struct !10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_cfg_hooks(ptr nocapture noundef readonly byval(%struct.cfg_hooks) align 8 %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(232) %0, i64 232, i1 false), !tbaa.struct !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @current_ir_type() local_unnamed_addr #3 {
  %1 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %2 = icmp eq ptr %1, @gimple_cfg_hooks
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = icmp eq ptr %1, @rtl_cfg_hooks
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, @cfg_layout_rtl_cfg_hooks
  br i1 %6, label %8, label %7

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
define dso_local void @verify_flow_info() local_unnamed_addr #3 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = load i8, ptr @timevar_enable, align 1, !tbaa !11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 24) #16
  br label %8

8:                                                ; preds = %7, %0
  %9 = load ptr, ptr @cfun, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !15
  %14 = sext i32 %13 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 8) #16
  %16 = load ptr, ptr @cfun, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !15
  %21 = sext i32 %20 to i64
  %22 = tail call ptr @xcalloc(i64 noundef %21, i64 noundef 8) #16
  %23 = load ptr, ptr @cfun, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !12
  %26 = load ptr, ptr %25, align 8, !tbaa !17
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %70, label %30

30:                                               ; preds = %8, %60
  %31 = phi ptr [ %63, %60 ], [ %28, %8 ]
  %32 = phi i32 [ %61, %60 ], [ 0, %8 ]
  %33 = phi ptr [ %31, %60 ], [ %26, %8 ]
  %34 = load ptr, ptr @cfun, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !12
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !21
  %39 = icmp eq ptr %31, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !23
  %45 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %42, i32 noundef %44) #17
  %46 = icmp eq ptr %31, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2, i32 noundef %44) #16
  br label %48

48:                                               ; preds = %47, %40, %30
  %49 = phi i32 [ 1, %47 ], [ %32, %40 ], [ %32, %30 ]
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !24
  %52 = icmp eq ptr %51, %33
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %55 = load i32, ptr %54, align 8, !tbaa !23
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !23
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !23
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, i32 noundef %55, i32 noundef %57, i32 noundef %59) #16
  br label %60

60:                                               ; preds = %53, %48
  %61 = phi i32 [ 1, %53 ], [ %49, %48 ]
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !18
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %30, !llvm.loop !25

65:                                               ; preds = %60
  %66 = load ptr, ptr @cfun, align 8, !tbaa !6
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !12
  %69 = load ptr, ptr %68, align 8, !tbaa !17
  br label %70

70:                                               ; preds = %65, %8
  %71 = phi ptr [ %26, %8 ], [ %69, %65 ]
  %72 = phi ptr [ %25, %8 ], [ %68, %65 ]
  %73 = phi ptr [ %23, %8 ], [ %66, %65 ]
  %74 = phi i32 [ 0, %8 ], [ %61, %65 ]
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !21
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !24
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
  %87 = load ptr, ptr %86, align 8, !tbaa !27
  %88 = icmp eq ptr %87, null
  br i1 %88, label %100, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.function, ptr %83, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !28
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %95 = load i32, ptr %94, align 8, !tbaa !23
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4, i32 noundef %95) #16
  %96 = load ptr, ptr %86, align 8, !tbaa !27
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %100

100:                                              ; preds = %98, %82
  %101 = phi ptr [ %99, %98 ], [ %83, %82 ]
  %102 = phi i32 [ 1, %98 ], [ %85, %82 ]
  %103 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !28
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %108 = load i32, ptr %107, align 8, !tbaa !23
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5, i32 noundef %108) #16
  br label %109

109:                                              ; preds = %89, %106, %100, %93
  %110 = phi i32 [ 1, %106 ], [ %102, %100 ], [ 1, %93 ], [ %85, %89 ]
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 8
  %112 = load i64, ptr %111, align 8, !tbaa !29
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %116 = load i32, ptr %115, align 8, !tbaa !23
  %117 = trunc i64 %112 to i32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.6, i32 noundef %116, i32 noundef %117) #16
  br label %118

118:                                              ; preds = %114, %109
  %119 = phi i32 [ 1, %114 ], [ %110, %109 ]
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 11
  %121 = load i32, ptr %120, align 8, !tbaa !30
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %125 = load i32, ptr %124, align 8, !tbaa !23
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7, i32 noundef %125, i32 noundef %121) #16
  br label %126

126:                                              ; preds = %123, %118
  %127 = phi i32 [ 1, %123 ], [ %119, %118 ]
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 1
  %129 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %128) #17
  store i32 0, ptr %2, align 8, !tbaa.struct !31
  store ptr %129, ptr %81, align 8, !tbaa.struct !33
  %130 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %129, ptr noundef nonnull %1) #17, !range !34
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %220, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  br label %134

134:                                              ; preds = %132, %201
  %135 = phi i32 [ %127, %132 ], [ %202, %201 ]
  %136 = phi i32 [ 0, %132 ], [ %188, %201 ]
  %137 = load ptr, ptr %1, align 8, !tbaa !6
  %138 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !35
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 9
  %141 = load i32, ptr %140, align 8, !tbaa !23
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds ptr, ptr %15, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !6
  %145 = icmp eq ptr %144, %84
  br i1 %145, label %146, label %151

146:                                              ; preds = %134
  %147 = load ptr, ptr %137, align 8, !tbaa !37
  %148 = getelementptr inbounds %struct.basic_block_def, ptr %147, i64 0, i32 9
  %149 = load i32, ptr %148, align 8, !tbaa !23
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8, i32 noundef %149, i32 noundef %141) #16
  %150 = load ptr, ptr %138, align 8, !tbaa !35
  br label %151

151:                                              ; preds = %146, %134
  %152 = phi ptr [ %150, %146 ], [ %139, %134 ]
  %153 = phi i32 [ 1, %146 ], [ %135, %134 ]
  %154 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 8
  %155 = load i32, ptr %154, align 4, !tbaa !38
  %156 = icmp ugt i32 %155, 10000
  br i1 %156, label %157, label %164

157:                                              ; preds = %151
  %158 = load ptr, ptr %137, align 8, !tbaa !37
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %158, i64 0, i32 9
  %160 = load i32, ptr %159, align 8, !tbaa !23
  %161 = getelementptr inbounds %struct.basic_block_def, ptr %152, i64 0, i32 9
  %162 = load i32, ptr %161, align 8, !tbaa !23
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9, i32 noundef %160, i32 noundef %162, i32 noundef %155) #16
  %163 = load ptr, ptr %138, align 8, !tbaa !35
  br label %164

164:                                              ; preds = %151, %157
  %165 = phi ptr [ %163, %157 ], [ %152, %151 ]
  %166 = phi i32 [ 1, %157 ], [ %153, %151 ]
  %167 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 9
  %168 = load i64, ptr %167, align 8, !tbaa !39
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %164
  %171 = load ptr, ptr %137, align 8, !tbaa !37
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 9
  %173 = load i32, ptr %172, align 8, !tbaa !23
  %174 = getelementptr inbounds %struct.basic_block_def, ptr %165, i64 0, i32 9
  %175 = load i32, ptr %174, align 8, !tbaa !23
  %176 = trunc i64 %168 to i32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.10, i32 noundef %173, i32 noundef %175, i32 noundef %176) #16
  %177 = load ptr, ptr %138, align 8, !tbaa !35
  br label %178

178:                                              ; preds = %170, %164
  %179 = phi ptr [ %177, %170 ], [ %165, %164 ]
  %180 = phi i32 [ 1, %170 ], [ %166, %164 ]
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %179, i64 0, i32 9
  %182 = load i32, ptr %181, align 8, !tbaa !23
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds ptr, ptr %15, i64 %183
  store ptr %84, ptr %184, align 8, !tbaa !6
  %185 = getelementptr inbounds %struct.edge_def, ptr %137, i64 0, i32 7
  %186 = load i32, ptr %185, align 8, !tbaa !40
  %187 = and i32 %186, 1
  %188 = add i32 %187, %136
  %189 = load ptr, ptr %137, align 8, !tbaa !37
  %190 = icmp eq ptr %189, %84
  br i1 %190, label %201, label %191

191:                                              ; preds = %178
  %192 = load i32, ptr %133, align 8, !tbaa !23
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.11, i32 noundef %192) #16
  %193 = load ptr, ptr @stderr, align 8, !tbaa !6
  %194 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 13, i64 1, ptr %193) #19
  %195 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @dump_edge_info(ptr noundef %195, ptr noundef nonnull %137, i32 noundef 0) #16
  %196 = load ptr, ptr @stderr, align 8, !tbaa !6
  %197 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %196) #19
  %198 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @dump_edge_info(ptr noundef %198, ptr noundef nonnull %137, i32 noundef 1) #16
  %199 = load ptr, ptr @stderr, align 8, !tbaa !6
  %200 = tail call i32 @fputc(i32 10, ptr %199)
  br label %201

201:                                              ; preds = %191, %178
  %202 = phi i32 [ 1, %191 ], [ %180, %178 ]
  %203 = ptrtoint ptr %137 to i64
  %204 = load ptr, ptr %138, align 8, !tbaa !35
  %205 = getelementptr inbounds %struct.basic_block_def, ptr %204, i64 0, i32 9
  %206 = load i32, ptr %205, align 8, !tbaa !23
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, ptr %22, i64 %207
  %209 = load i64, ptr %208, align 8, !tbaa !41
  %210 = add i64 %209, %203
  store i64 %210, ptr %208, align 8, !tbaa !41
  call fastcc void @ei_next(ptr noundef nonnull %2) #17
  %211 = load i32, ptr %2, align 8
  %212 = load ptr, ptr %81, align 8
  %213 = call fastcc zeroext i8 @ei_cond(i32 %211, ptr %212, ptr noundef nonnull %1) #17, !range !34
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %134, !llvm.loop !42

215:                                              ; preds = %201
  %216 = icmp sgt i32 %188, 1
  br i1 %216, label %217, label %220

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %219 = load i32, ptr %218, align 8, !tbaa !23
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.15, i32 noundef %219) #16
  br label %220

220:                                              ; preds = %126, %217, %215
  %221 = phi i32 [ 1, %217 ], [ %202, %215 ], [ %127, %126 ]
  %222 = tail call fastcc ptr @ei_start_1(ptr noundef %84) #17
  store i32 0, ptr %2, align 8, !tbaa.struct !31
  store ptr %222, ptr %81, align 8, !tbaa.struct !33
  %223 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %222, ptr noundef nonnull %1) #17, !range !34
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %274, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  br label %227

227:                                              ; preds = %225, %260
  %228 = phi i32 [ 0, %225 ], [ %270, %260 ]
  %229 = phi i32 [ %221, %225 ], [ %261, %260 ]
  %230 = load ptr, ptr %1, align 8, !tbaa !6
  %231 = getelementptr inbounds %struct.edge_def, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !35
  %233 = icmp eq ptr %232, %84
  br i1 %233, label %244, label %234

234:                                              ; preds = %227
  %235 = load i32, ptr %226, align 8, !tbaa !23
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16, i32 noundef %235) #16
  %236 = load ptr, ptr @stderr, align 8, !tbaa !6
  %237 = tail call i32 @fputs(ptr noundef nonnull @.str.12, ptr noundef %236) #20
  %238 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @dump_edge_info(ptr noundef %238, ptr noundef nonnull %230, i32 noundef 0) #16
  %239 = load ptr, ptr @stderr, align 8, !tbaa !6
  %240 = tail call i32 @fputs(ptr noundef nonnull @.str.13, ptr noundef %239) #20
  %241 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @dump_edge_info(ptr noundef %241, ptr noundef nonnull %230, i32 noundef 1) #16
  %242 = load ptr, ptr @stderr, align 8, !tbaa !6
  %243 = tail call i32 @fputc(i32 noundef 10, ptr noundef %242) #17
  br label %244

244:                                              ; preds = %234, %227
  %245 = phi i32 [ 1, %234 ], [ %229, %227 ]
  %246 = getelementptr inbounds %struct.edge_def, ptr %230, i64 0, i32 6
  %247 = load i32, ptr %246, align 4, !tbaa !43
  %248 = icmp eq i32 %228, %247
  br i1 %248, label %260, label %249

249:                                              ; preds = %244
  %250 = load i32, ptr %226, align 8, !tbaa !23
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16, i32 noundef %250) #16
  %251 = load i32, ptr %246, align 4, !tbaa !43
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.17, i32 noundef %228, i32 noundef %251) #16
  %252 = load ptr, ptr @stderr, align 8, !tbaa !6
  %253 = tail call i32 @fputs(ptr noundef nonnull @.str.12, ptr noundef %252) #20
  %254 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @dump_edge_info(ptr noundef %254, ptr noundef nonnull %230, i32 noundef 0) #16
  %255 = load ptr, ptr @stderr, align 8, !tbaa !6
  %256 = tail call i32 @fputs(ptr noundef nonnull @.str.13, ptr noundef %255) #20
  %257 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @dump_edge_info(ptr noundef %257, ptr noundef nonnull %230, i32 noundef 1) #16
  %258 = load ptr, ptr @stderr, align 8, !tbaa !6
  %259 = tail call i32 @fputc(i32 noundef 10, ptr noundef %258) #17
  br label %260

260:                                              ; preds = %249, %244
  %261 = phi i32 [ 1, %249 ], [ %245, %244 ]
  %262 = ptrtoint ptr %230 to i64
  %263 = load ptr, ptr %231, align 8, !tbaa !35
  %264 = getelementptr inbounds %struct.basic_block_def, ptr %263, i64 0, i32 9
  %265 = load i32, ptr %264, align 8, !tbaa !23
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, ptr %22, i64 %266
  %268 = load i64, ptr %267, align 8, !tbaa !41
  %269 = sub i64 %268, %262
  store i64 %269, ptr %267, align 8, !tbaa !41
  call fastcc void @ei_next(ptr noundef nonnull %2) #17
  %270 = load i32, ptr %2, align 8
  %271 = load ptr, ptr %81, align 8
  %272 = call fastcc zeroext i8 @ei_cond(i32 %270, ptr %271, ptr noundef nonnull %1) #17, !range !34
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %274, label %227, !llvm.loop !44

274:                                              ; preds = %260, %220
  %275 = phi i32 [ %221, %220 ], [ %261, %260 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  %276 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 5
  %277 = load ptr, ptr %276, align 8, !tbaa !24
  %278 = load ptr, ptr @cfun, align 8, !tbaa !6
  %279 = getelementptr inbounds %struct.function, ptr %278, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !12
  %281 = load ptr, ptr %280, align 8, !tbaa !17
  %282 = icmp eq ptr %277, %281
  br i1 %282, label %283, label %82, !llvm.loop !45

283:                                              ; preds = %274, %70
  %284 = phi i32 [ %74, %70 ], [ %275, %274 ]
  %285 = phi ptr [ %71, %70 ], [ %277, %274 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %286 = getelementptr inbounds %struct.basic_block_def, ptr %285, i64 0, i32 1
  %287 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %286) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !31
  %288 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %287, ptr %288, align 8, !tbaa.struct !33
  %289 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %287, ptr noundef nonnull %3) #17, !range !34
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %306, label %291

291:                                              ; preds = %283, %291
  %292 = load ptr, ptr %3, align 8, !tbaa !6
  %293 = ptrtoint ptr %292 to i64
  %294 = getelementptr inbounds %struct.edge_def, ptr %292, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !35
  %296 = getelementptr inbounds %struct.basic_block_def, ptr %295, i64 0, i32 9
  %297 = load i32, ptr %296, align 8, !tbaa !23
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i64, ptr %22, i64 %298
  %300 = load i64, ptr %299, align 8, !tbaa !41
  %301 = add i64 %300, %293
  store i64 %301, ptr %299, align 8, !tbaa !41
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %302 = load i32, ptr %4, align 8
  %303 = load ptr, ptr %288, align 8
  %304 = call fastcc zeroext i8 @ei_cond(i32 %302, ptr %303, ptr noundef nonnull %3) #17, !range !34
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %306, label %291, !llvm.loop !46

306:                                              ; preds = %291, %283
  %307 = load ptr, ptr @cfun, align 8, !tbaa !6
  %308 = getelementptr inbounds %struct.function, ptr %307, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !12
  %310 = getelementptr inbounds %struct.control_flow_graph, ptr %309, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !21
  %312 = tail call fastcc ptr @ei_start_1(ptr noundef %311) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !31
  store ptr %312, ptr %288, align 8, !tbaa.struct !33
  %313 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %312, ptr noundef nonnull %3) #17, !range !34
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %330, label %315

315:                                              ; preds = %306, %315
  %316 = load ptr, ptr %3, align 8, !tbaa !6
  %317 = ptrtoint ptr %316 to i64
  %318 = getelementptr inbounds %struct.edge_def, ptr %316, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !35
  %320 = getelementptr inbounds %struct.basic_block_def, ptr %319, i64 0, i32 9
  %321 = load i32, ptr %320, align 8, !tbaa !23
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64, ptr %22, i64 %322
  %324 = load i64, ptr %323, align 8, !tbaa !41
  %325 = sub i64 %324, %317
  store i64 %325, ptr %323, align 8, !tbaa !41
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %326 = load i32, ptr %4, align 8
  %327 = load ptr, ptr %288, align 8
  %328 = call fastcc zeroext i8 @ei_cond(i32 %326, ptr %327, ptr noundef nonnull %3) #17, !range !34
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %330, label %315, !llvm.loop !47

330:                                              ; preds = %315, %306
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  %331 = load ptr, ptr @cfun, align 8, !tbaa !6
  %332 = getelementptr inbounds %struct.function, ptr %331, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !12
  %334 = load ptr, ptr %333, align 8, !tbaa !6
  %335 = icmp eq ptr %334, null
  br i1 %335, label %351, label %336

336:                                              ; preds = %330, %346
  %337 = phi ptr [ %349, %346 ], [ %334, %330 ]
  %338 = phi i32 [ %347, %346 ], [ %284, %330 ]
  %339 = getelementptr inbounds %struct.basic_block_def, ptr %337, i64 0, i32 9
  %340 = load i32, ptr %339, align 8, !tbaa !23
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i64, ptr %22, i64 %341
  %343 = load i64, ptr %342, align 8, !tbaa !41
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %336
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.18, i32 noundef %340) #16
  br label %346

346:                                              ; preds = %336, %345
  %347 = phi i32 [ 1, %345 ], [ %338, %336 ]
  %348 = getelementptr inbounds %struct.basic_block_def, ptr %337, i64 0, i32 6
  %349 = load ptr, ptr %348, align 8, !tbaa !6
  %350 = icmp eq ptr %349, null
  br i1 %350, label %351, label %336, !llvm.loop !48

351:                                              ; preds = %346, %330
  %352 = phi i32 [ %284, %330 ], [ %347, %346 ]
  tail call void @free(ptr noundef %15) #17
  tail call void @free(ptr noundef %22) #17
  %353 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %354 = getelementptr inbounds %struct.cfg_hooks, ptr %353, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !49
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
  %365 = load i8, ptr @timevar_enable, align 1, !tbaa !11
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
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !34
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !6
  ret i8 %10
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare void @dump_edge_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !51
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !51
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
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #17
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !53
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 687, ptr noundef nonnull @.str.1) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %6 = sext i32 %2 to i64
  %7 = add nsw i64 %6, 1
  %8 = alloca i8, i64 %7, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %8, i8 32, i64 %6, i1 false)
  %9 = getelementptr inbounds i8, ptr %8, i64 %6
  store i8 0, ptr %9, align 1, !tbaa !11
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !55
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef nonnull %8, i32 noundef %11, i32 noundef %13) #17
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !29
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.22, i64 noundef %16) #17
  %18 = call i32 @putc(i32 noundef 10, ptr noundef %1) #17
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull %8) #17
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !24
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !23
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %25) #17
  br label %29

27:                                               ; preds = %3
  %28 = call i64 @fwrite(ptr nonnull @.str.25, i64 7, i64 1, ptr %1)
  br label %29

29:                                               ; preds = %27, %23
  %30 = call i64 @fwrite(ptr nonnull @.str.26, i64 11, i64 1, ptr %1)
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !18
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !23
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %36) #17
  br label %40

38:                                               ; preds = %29
  %39 = call i64 @fwrite(ptr nonnull @.str.28, i64 5, i64 1, ptr %1)
  br label %40

40:                                               ; preds = %38, %34
  %41 = call i32 @putc(i32 noundef 10, ptr noundef %1) #17
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull %8) #17
  %43 = call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !31
  %44 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %43, ptr %44, align 8, !tbaa.struct !33
  %45 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %43, ptr noundef nonnull %4) #17, !range !34
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40, %47
  %48 = load ptr, ptr %4, align 8, !tbaa !6
  call void @dump_edge_info(ptr noundef %1, ptr noundef %48, i32 noundef 0) #16
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %49 = load i32, ptr %5, align 8
  %50 = load ptr, ptr %44, align 8
  %51 = call fastcc zeroext i8 @ei_cond(i32 %49, ptr %50, ptr noundef nonnull %4) #17, !range !34
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %47, !llvm.loop !56

53:                                               ; preds = %47, %40
  %54 = call i32 @putc(i32 noundef 10, ptr noundef %1) #17
  %55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull %8) #17
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %57 = call fastcc ptr @ei_start_1(ptr noundef nonnull %56) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !31
  store ptr %57, ptr %44, align 8, !tbaa.struct !33
  %58 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %57, ptr noundef nonnull %4) #17, !range !34
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %53, %60
  %61 = load ptr, ptr %4, align 8, !tbaa !6
  call void @dump_edge_info(ptr noundef %1, ptr noundef %61, i32 noundef 1) #16
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %62 = load i32, ptr %5, align 8
  %63 = load ptr, ptr %44, align 8
  %64 = call fastcc zeroext i8 @ei_cond(i32 %62, ptr %63, ptr noundef nonnull %4) #17, !range !34
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %60, !llvm.loop !57

66:                                               ; preds = %60, %53
  %67 = call i32 @putc(i32 noundef 10, ptr noundef %1) #17
  %68 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %69 = getelementptr inbounds %struct.cfg_hooks, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !58
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
define dso_local ptr @redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.31, ptr noundef %8) #16
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %14 = tail call ptr %13(ptr noundef %0, ptr noundef %1) #16
  %15 = load ptr, ptr @cfun, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !28
  %18 = icmp ne ptr %17, null
  %19 = icmp eq ptr %14, %0
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  tail call void @rescan_loop_exit(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  br label %22

22:                                               ; preds = %21, %12
  ret ptr %14
}

; Function Attrs: optsize
declare void @rescan_loop_exit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_remove_branch_p(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.32, ptr noundef %7) #16
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr %0, align 8, !tbaa !37
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.cfg_hooks, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = tail call zeroext i8 %17(ptr noundef nonnull %0) #16
  br label %19

19:                                               ; preds = %8, %14
  %20 = phi i8 [ %18, %14 ], [ 0, %8 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_branch(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !37
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %4) #17
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 363, ptr noundef nonnull @.str.1) #16
  %8 = load ptr, ptr %3, align 8, !tbaa !62
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi ptr [ %4, %1 ], [ %8, %7 ]
  %11 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %10, i32 noundef 0) #17
  %12 = icmp eq ptr %11, %0
  %13 = zext i1 %12 to i32
  %14 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %10, i32 noundef %13) #17
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %0, ptr noundef %18) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 369, ptr noundef nonnull @.str.1) #16
  br label %22

22:                                               ; preds = %9, %21
  %23 = and i32 %16, 128
  %24 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !40
  %26 = and i32 %25, -129
  %27 = or disjoint i32 %26, %23
  store i32 %27, ptr %24, align 8, !tbaa !40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_edge(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

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
define dso_local ptr @redirect_edge_and_branch_force(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !37
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.33, ptr noundef %9) #16
  br label %10

10:                                               ; preds = %8, %2
  %11 = load ptr, ptr @cfun, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !28
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @rescan_loop_exit(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #16
  br label %16

16:                                               ; preds = %15, %10
  %17 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.cfg_hooks, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !63
  %20 = tail call ptr %19(ptr noundef nonnull %0, ptr noundef %1) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %20, ptr noundef %3) #16
  br label %26

26:                                               ; preds = %25, %22
  %27 = load ptr, ptr @cfun, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !28
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %36

31:                                               ; preds = %16
  %32 = load ptr, ptr @cfun, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !28
  %35 = icmp eq ptr %34, null
  br i1 %35, label %48, label %44

36:                                               ; preds = %26
  %37 = tail call fastcc ptr @single_pred(ptr noundef nonnull %20) #17
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !27
  %40 = tail call fastcc ptr @single_succ(ptr noundef nonnull %20) #17
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !27
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
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #17
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  ret ptr %4
}

; Function Attrs: optsize
declare void @add_bb_to_loop(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #17, !range !34
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 655, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !64
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #17
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #17, !range !34
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #17
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @split_block(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.34, ptr noundef %8) #16
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %14 = tail call ptr %13(ptr noundef %0, ptr noundef %1) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !29
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 8
  store i64 %18, ptr %19, align 8, !tbaa !29
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 10
  %22 = load <2 x i32>, ptr %20, align 4, !tbaa !32
  store <2 x i32> %22, ptr %21, align 4, !tbaa !32
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 12
  %24 = load i32, ptr %23, align 4, !tbaa !66
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 12
  store i32 %24, ptr %25, align 4, !tbaa !66
  %26 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  tail call void @redirect_immediate_dominators(i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %14) #16
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %14, ptr noundef nonnull %0) #16
  br label %29

29:                                               ; preds = %28, %16
  %30 = load ptr, ptr @cfun, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !28
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !27
  tail call void @add_bb_to_loop(ptr noundef nonnull %14, ptr noundef %36) #16
  %37 = load ptr, ptr %35, align 8, !tbaa !27
  %38 = getelementptr inbounds %struct.loop, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !67
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store ptr %14, ptr %38, align 8, !tbaa !67
  br label %42

42:                                               ; preds = %34, %41, %29
  %43 = tail call ptr @make_single_succ_edge(ptr noundef nonnull %0, ptr noundef nonnull %14, i32 noundef 1) #16
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !71
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 13
  %50 = load i32, ptr %49, align 8, !tbaa !71
  %51 = or i32 %50, 4
  store i32 %51, ptr %49, align 8, !tbaa !71
  %52 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !40
  %54 = or i32 %53, 128
  store i32 %54, ptr %52, align 8, !tbaa !40
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
define dso_local ptr @split_block_after_labels(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @split_block(ptr noundef %0, ptr noundef null) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @move_block_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.35, ptr noundef %8) #16
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %14 = tail call zeroext i8 %13(ptr noundef %0, ptr noundef %1) #16
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_basic_block(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.36, ptr noundef %7) #16
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ %4, %1 ]
  tail call void %12(ptr noundef %0) #16
  %13 = load ptr, ptr @cfun, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !27
  %20 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %17
  %28 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  br label %29

29:                                               ; preds = %27, %23
  tail call void @remove_bb_from_loops(ptr noundef nonnull %0) #16
  br label %30

30:                                               ; preds = %29, %11
  %31 = load ptr, ptr %0, align 8, !tbaa !64
  %32 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %31) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %39, %30
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !62
  %37 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %36) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %45

39:                                               ; preds = %30, %39
  %40 = phi ptr [ %42, %39 ], [ %31, %30 ]
  %41 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %40, i32 noundef 0) #17
  tail call void @remove_edge(ptr noundef %41) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !64
  %43 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %42) #17
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %34, label %39, !llvm.loop !75

45:                                               ; preds = %34, %45
  %46 = phi ptr [ %48, %45 ], [ %36, %34 ]
  %47 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %46, i32 noundef 0) #17
  tail call void @remove_edge(ptr noundef %47) #17
  %48 = load ptr, ptr %35, align 8, !tbaa !62
  %49 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %48) #17
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %45, !llvm.loop !76

51:                                               ; preds = %45, %34
  %52 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void @delete_from_dominance_info(i32 noundef 1, ptr noundef nonnull %0) #16
  br label %55

55:                                               ; preds = %54, %51
  %56 = tail call zeroext i8 @dom_info_available_p(i32 noundef 2) #16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %59, label %58

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
define dso_local noundef ptr @split_edge(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %5 = load i64, ptr %4, align 8, !tbaa !39
  %6 = load ptr, ptr %0, align 8, !tbaa !37
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !30
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !38
  %11 = mul nsw i32 %10, %8
  %12 = add nsw i32 %11, 5000
  %13 = sdiv i32 %12, 10000
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %14 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !40
  %16 = and i32 %15, 128
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.cfg_hooks, ptr %20, i64 0, i32 16
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load ptr, ptr %20, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.37, ptr noundef %25) #16
  br label %26

26:                                               ; preds = %24, %1
  %27 = load ptr, ptr @cfun, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !28
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @rescan_loop_exit(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #16
  br label %32

32:                                               ; preds = %31, %26
  %33 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.cfg_hooks, ptr %33, i64 0, i32 16
  %35 = load ptr, ptr %34, align 8, !tbaa !77
  %36 = tail call ptr %35(ptr noundef nonnull %0) #16
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 8
  store i64 %5, ptr %37, align 8, !tbaa !29
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 11
  store i32 %13, ptr %38, align 8, !tbaa !30
  %39 = tail call fastcc ptr @single_succ_edge(ptr noundef %36) #17
  %40 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 8
  store i32 10000, ptr %40, align 4, !tbaa !38
  %41 = tail call fastcc ptr @single_succ_edge(ptr noundef %36) #17
  %42 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 9
  store i64 %5, ptr %42, align 8, !tbaa !39
  br i1 %17, label %55, label %43

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !71
  %46 = or i32 %45, 4
  store i32 %46, ptr %44, align 8, !tbaa !71
  %47 = tail call fastcc ptr @single_pred_edge(ptr noundef nonnull %36) #17
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !40
  %50 = or i32 %49, 128
  store i32 %50, ptr %48, align 8, !tbaa !40
  %51 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %36) #17
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !40
  %54 = or i32 %53, 128
  store i32 %54, ptr %52, align 8, !tbaa !40
  br label %55

55:                                               ; preds = %43, %32
  %56 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = tail call fastcc ptr @single_pred(ptr noundef nonnull %36) #17
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %36, ptr noundef %59) #16
  br label %60

60:                                               ; preds = %58, %55
  %61 = tail call i32 @dom_info_state(i32 noundef 1) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %60
  %64 = tail call fastcc ptr @single_succ(ptr noundef nonnull %36) #17
  %65 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %64) #16
  %66 = tail call fastcc ptr @single_pred(ptr noundef nonnull %36) #17
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %69 = tail call fastcc ptr @single_succ(ptr noundef nonnull %36) #17
  %70 = tail call fastcc ptr @ei_start_1(ptr noundef %69) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !31
  %71 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %70, ptr %71, align 8, !tbaa.struct !33
  %72 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %70, ptr noundef nonnull %2) #17, !range !34
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %68, %83
  %75 = load ptr, ptr %2, align 8, !tbaa !6
  %76 = tail call fastcc ptr @single_succ_edge(ptr noundef %36) #17
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %75, align 8, !tbaa !37
  %80 = tail call fastcc ptr @single_succ(ptr noundef %36) #17
  %81 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %79, ptr noundef %80) #16
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78, %74
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %84 = load i32, ptr %3, align 8
  %85 = load ptr, ptr %71, align 8
  %86 = call fastcc zeroext i8 @ei_cond(i32 %84, ptr %85, ptr noundef nonnull %2) #17, !range !34
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %74, !llvm.loop !78

88:                                               ; preds = %83, %78, %68
  %89 = load ptr, ptr %2, align 8, !tbaa !6
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = tail call fastcc ptr @single_succ(ptr noundef %36) #17
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %92, ptr noundef %36) #16
  br label %93

93:                                               ; preds = %91, %88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %94

94:                                               ; preds = %63, %93, %60
  %95 = load ptr, ptr @cfun, align 8, !tbaa !6
  %96 = getelementptr inbounds %struct.function, ptr %95, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !28
  %98 = icmp eq ptr %97, null
  br i1 %98, label %109, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !27
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !27
  %104 = tail call ptr @find_common_loop(ptr noundef %101, ptr noundef %103) #16
  tail call void @add_bb_to_loop(ptr noundef %36, ptr noundef %104) #16
  %105 = getelementptr inbounds %struct.loop, ptr %104, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !67
  %107 = icmp eq ptr %106, %6
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  store ptr %36, ptr %105, align 8, !tbaa !67
  br label %109

109:                                              ; preds = %99, %108, %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret ptr %36
}

; Function Attrs: optsize
declare i32 @dom_info_state(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_basic_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.38, ptr noundef %9) #16
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi ptr [ %12, %8 ], [ %6, %3 ]
  %15 = tail call ptr %14(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  %16 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @add_to_dominance_info(i32 noundef 1, ptr noundef %15) #16
  br label %19

19:                                               ; preds = %18, %13
  %20 = tail call zeroext i8 @dom_info_available_p(i32 noundef 2) #16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @add_to_dominance_info(i32 noundef 2, ptr noundef %15) #16
  br label %23

23:                                               ; preds = %22, %19
  ret ptr %15
}

; Function Attrs: optsize
declare void @add_to_dominance_info(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_empty_bb(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @create_basic_block(ptr noundef null, ptr noundef null, ptr noundef %0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_merge_blocks_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.39, ptr noundef %8) #16
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %14 = tail call zeroext i8 %13(ptr noundef %0, ptr noundef %1) #16
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @predict_edge(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.40, ptr noundef %9) #16
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi ptr [ %12, %8 ], [ %6, %3 ]
  tail call void %14(ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @predicted_by_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.cfg_hooks, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.41, ptr noundef %8) #16
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %9, %7 ], [ %3, %2 ]
  %12 = getelementptr inbounds %struct.cfg_hooks, ptr %11, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  %14 = tail call zeroext i8 %13(ptr noundef %0, i32 noundef %1) #16
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @merge_blocks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %5 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.cfg_hooks, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.42, ptr noundef %10) #16
  %11 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.cfg_hooks, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi ptr [ %13, %9 ], [ %7, %2 ]
  tail call void %15(ptr noundef %0, ptr noundef %1) #16
  %16 = load ptr, ptr @cfun, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @remove_bb_from_loops(ptr noundef %1) #16
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !62
  %24 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %23) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %29, %26 ], [ %23, %21 ]
  %28 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 0) #17
  tail call void @remove_edge(ptr noundef %28) #17
  %29 = load ptr, ptr %22, align 8, !tbaa !62
  %30 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %29) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %26, !llvm.loop !84

32:                                               ; preds = %26, %21
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %34 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %33) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !31
  %35 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %34, ptr %35, align 8, !tbaa.struct !33
  %36 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %34, ptr noundef nonnull %3) #17, !range !34
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %32, %45
  %39 = load ptr, ptr %3, align 8, !tbaa !6
  store ptr %0, ptr %39, align 8, !tbaa !37
  %40 = load ptr, ptr @cfun, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  tail call void @rescan_loop_exit(ptr noundef nonnull %39, i8 noundef zeroext 1, i8 noundef zeroext 0) #16
  br label %45

45:                                               ; preds = %38, %44
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %46 = load i32, ptr %4, align 8
  %47 = load ptr, ptr %35, align 8
  %48 = call fastcc zeroext i8 @ei_cond(i32 %46, ptr %47, ptr noundef nonnull %3) #17, !range !34
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %38, !llvm.loop !85

50:                                               ; preds = %45, %32
  %51 = load ptr, ptr %33, align 8, !tbaa !62
  store ptr %51, ptr %22, align 8, !tbaa !62
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %53 = load i32, ptr %52, align 8, !tbaa !71
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %55 = load i32, ptr %54, align 8, !tbaa !71
  %56 = or i32 %55, %53
  store i32 %56, ptr %54, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %57 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  tail call void @redirect_immediate_dominators(i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %0) #16
  br label %60

60:                                               ; preds = %59, %50
  %61 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call void @delete_from_dominance_info(i32 noundef 1, ptr noundef nonnull %1) #16
  br label %64

64:                                               ; preds = %63, %60
  %65 = tail call zeroext i8 @dom_info_available_p(i32 noundef 2) #16
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67

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
define dso_local noundef ptr @make_forwarder_block(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #3 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %7 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.cfg_hooks, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load ptr, ptr %7, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.43, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %11, %3
  %14 = tail call ptr @split_block_after_labels(ptr noundef %0) #17
  %15 = load ptr, ptr %14, align 8, !tbaa !37
  %16 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = tail call fastcc ptr @ei_start_1(ptr noundef %15) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !31
  %19 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %18, ptr %19, align 8, !tbaa.struct !33
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
  br label %82, !llvm.loop !87

37:                                               ; preds = %28
  %38 = load ptr, ptr %31, align 8, !tbaa !37
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 11
  %40 = load i32, ptr %39, align 8, !tbaa !30
  %41 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !38
  %43 = mul nsw i32 %42, %40
  %44 = add nsw i32 %43, 5000
  %45 = sdiv i32 %44, -10000
  %46 = load i32, ptr %23, align 8, !tbaa !30
  %47 = add i32 %45, %46
  store i32 %47, ptr %23, align 8, !tbaa !30
  %48 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 9
  %49 = load i64, ptr %48, align 8, !tbaa !39
  %50 = load i64, ptr %24, align 8, !tbaa !29
  %51 = sub nsw i64 %50, %49
  store i64 %51, ptr %24, align 8, !tbaa !29
  %52 = icmp slt i32 %47, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  store i32 0, ptr %23, align 8, !tbaa !30
  br label %54

54:                                               ; preds = %53, %37
  %55 = icmp slt i64 %51, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  store i64 0, ptr %24, align 8, !tbaa !29
  br label %57

57:                                               ; preds = %56, %54
  %58 = load i64, ptr %25, align 8, !tbaa !39
  %59 = sub nsw i64 %58, %49
  %60 = tail call i64 @llvm.smax.i64(i64 %59, i64 0)
  store i64 %60, ptr %25, align 8, !tbaa !39
  %61 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %31, ptr noundef %17) #17
  %62 = icmp eq ptr %61, null
  br i1 %62, label %82, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr @cfun, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !28
  %67 = icmp eq ptr %66, null
  br i1 %67, label %80, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %26, align 8, !tbaa !27
  %70 = icmp eq ptr %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.loop, ptr %69, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !74
  %74 = icmp eq ptr %73, %15
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.loop, ptr %69, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !67
  %78 = icmp eq ptr %77, %38
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store ptr %61, ptr %76, align 8, !tbaa !67
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
  store ptr null, ptr %4, align 8, !tbaa !6
  %88 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %91 = tail call fastcc ptr @VEC_basic_block_heap_alloc() #17
  store ptr %91, ptr %6, align 8, !tbaa !6
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %91, ptr noundef %15) #17
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %91, ptr noundef %17) #17
  tail call void @iterate_fix_dominators(i32 noundef 1, ptr noundef %91, i8 noundef zeroext 0) #16
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %92

92:                                               ; preds = %90, %87
  %93 = load ptr, ptr @cfun, align 8, !tbaa !6
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !28
  %96 = icmp eq ptr %95, null
  br i1 %96, label %137, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !27
  %100 = getelementptr inbounds %struct.loop, ptr %99, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !74
  %102 = icmp eq ptr %101, %15
  br i1 %102, label %103, label %127

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.loop, ptr %99, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !67
  %106 = icmp eq ptr %105, null
  br i1 %106, label %127, label %107

107:                                              ; preds = %103
  %108 = tail call ptr @find_edge(ptr noundef nonnull %105, ptr noundef nonnull %15) #16
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %127

110:                                              ; preds = %107
  tail call void @remove_bb_from_loops(ptr noundef nonnull %15) #16
  store ptr %17, ptr %100, align 8, !tbaa !74
  store i32 0, ptr %5, align 8, !tbaa.struct !31
  store ptr %18, ptr %19, align 8, !tbaa.struct !33
  %111 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %4) #17, !range !34
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  tail call void @add_bb_to_loop(ptr noundef nonnull %15, ptr noundef nonnull %99) #16
  br label %127

114:                                              ; preds = %110, %114
  %115 = phi ptr [ %120, %114 ], [ %99, %110 ]
  %116 = load ptr, ptr %4, align 8, !tbaa !6
  %117 = load ptr, ptr %116, align 8, !tbaa !37
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %117, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !27
  %120 = tail call ptr @find_common_loop(ptr noundef %115, ptr noundef %119) #16
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %121 = load i32, ptr %5, align 8
  %122 = load ptr, ptr %19, align 8
  %123 = call fastcc zeroext i8 @ei_cond(i32 %121, ptr %122, ptr noundef nonnull %4) #17, !range !34
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %114, !llvm.loop !88

125:                                              ; preds = %114
  tail call void @add_bb_to_loop(ptr noundef %15, ptr noundef %120) #16
  %126 = icmp eq ptr %99, null
  br i1 %126, label %137, label %127

127:                                              ; preds = %97, %103, %107, %113, %125
  br label %128

128:                                              ; preds = %127, %134
  %129 = phi ptr [ %135, %134 ], [ %99, %127 ]
  %130 = getelementptr inbounds %struct.loop, ptr %129, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !67
  %132 = icmp eq ptr %131, %15
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store ptr %17, ptr %130, align 8, !tbaa !67
  br label %134

134:                                              ; preds = %128, %133
  %135 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %129) #17
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %128, !llvm.loop !89

137:                                              ; preds = %134, %125, %92
  %138 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %139 = getelementptr inbounds %struct.cfg_hooks, ptr %138, i64 0, i32 17
  %140 = load ptr, ptr %139, align 8, !tbaa !86
  tail call void %140(ptr noundef nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #3 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !34
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
define internal fastcc ptr @VEC_basic_block_heap_alloc() unnamed_addr #3 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 2) #16
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #12 {
  %3 = load i32, ptr %0, align 8, !tbaa !90
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !90
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @iterate_fix_dominators(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !92
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

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !93
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tidy_fallthru_edge(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #16
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tidy_fallthru_edges() local_unnamed_addr #3 {
  %1 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.cfg_hooks, ptr %1, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %53, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !24
  %18 = icmp eq ptr %11, %17
  br i1 %18, label %53, label %19

19:                                               ; preds = %15, %43
  %20 = phi ptr [ %44, %43 ], [ %11, %15 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !18
  %23 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %20) #17, !range !34
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %20) #17
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !40
  %29 = and i32 %28, 14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = icmp eq ptr %33, %22
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !96
  %40 = tail call ptr @find_reg_note(ptr noundef %39, i32 noundef 29, ptr noundef null) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  tail call void @tidy_fallthru_edge(ptr noundef nonnull %26) #17
  br label %43

43:                                               ; preds = %25, %31, %35, %42, %19
  %44 = load ptr, ptr %21, align 8, !tbaa !18
  %45 = load ptr, ptr @cfun, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !12
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !21
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !24
  %52 = icmp eq ptr %44, %51
  br i1 %52, label %53, label %19, !llvm.loop !98

53:                                               ; preds = %43, %15, %5, %0
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_duplicate_block_p(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.44, ptr noundef %7) #16
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr @cfun, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %11, align 8, !tbaa !17
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.cfg_hooks, ptr %19, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !99
  %22 = tail call zeroext i8 %21(ptr noundef %0) #16
  br label %23

23:                                               ; preds = %8, %15, %18
  %24 = phi i8 [ %22, %18 ], [ 0, %15 ], [ 0, %8 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @duplicate_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 9
  %9 = load i64, ptr %8, align 8, !tbaa !39
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi i64 [ %9, %7 ], [ 0, %3 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %12 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.cfg_hooks, ptr %12, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load ptr, ptr %12, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.45, ptr noundef %17) #16
  %18 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.cfg_hooks, ptr %18, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !100
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi ptr [ %20, %16 ], [ %14, %10 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !29
  %25 = tail call i64 @llvm.smin.i64(i64 %24, i64 %11)
  %26 = tail call ptr %22(ptr noundef %0) #16
  %27 = icmp eq ptr %2, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = tail call zeroext i8 @move_block_after(ptr noundef %26, ptr noundef nonnull %2) #17
  br label %30

30:                                               ; preds = %28, %21
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %32 = load i32, ptr %31, align 4, !tbaa !55
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 10
  store i32 %32, ptr %33, align 4, !tbaa !55
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %35 = load i32, ptr %34, align 8, !tbaa !71
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 13
  store i32 %35, ptr %36, align 8, !tbaa !71
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %38 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %37) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !31
  %39 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %38, ptr %39, align 8, !tbaa.struct !33
  %40 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %38, ptr noundef nonnull %4) #17, !range !34
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %78, label %42

42:                                               ; preds = %30
  %43 = mul nsw i64 %25, 10000
  br label %44

44:                                               ; preds = %42, %70
  %45 = load ptr, ptr %4, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !40
  %50 = tail call ptr @unchecked_make_edge(ptr noundef %26, ptr noundef %47, i32 noundef %49) #16
  %51 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 8
  %52 = load i32, ptr %51, align 4, !tbaa !38
  %53 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 8
  store i32 %52, ptr %53, align 4, !tbaa !38
  br i1 %6, label %66, label %54

54:                                               ; preds = %44
  %55 = load i64, ptr %23, align 8, !tbaa !29
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 9
  %59 = load i64, ptr %58, align 8, !tbaa !39
  %60 = sdiv i64 %43, %55
  %61 = mul nsw i64 %60, %59
  %62 = sdiv i64 %61, 10000
  %63 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 9
  store i64 %62, ptr %63, align 8, !tbaa !39
  %64 = load i64, ptr %58, align 8, !tbaa !39
  %65 = sub nsw i64 %64, %62
  store i64 %65, ptr %58, align 8, !tbaa !39
  br label %70

66:                                               ; preds = %54, %44
  %67 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 9
  %68 = load i64, ptr %67, align 8, !tbaa !39
  %69 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 9
  store i64 %68, ptr %69, align 8, !tbaa !39
  br label %70

70:                                               ; preds = %66, %57
  %71 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !101
  %73 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 3
  store ptr %72, ptr %73, align 8, !tbaa !101
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %74 = load i32, ptr %5, align 8
  %75 = load ptr, ptr %39, align 8
  %76 = call fastcc zeroext i8 @ei_cond(i32 %74, ptr %75, ptr noundef nonnull %4) #17, !range !34
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %44, !llvm.loop !102

78:                                               ; preds = %70, %30
  br i1 %6, label %107, label %79

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 8
  store i64 %25, ptr %80, align 8, !tbaa !29
  %81 = load i64, ptr %23, align 8, !tbaa !29
  %82 = sub nsw i64 %81, %25
  store i64 %82, ptr %23, align 8, !tbaa !29
  %83 = load ptr, ptr %1, align 8, !tbaa !37
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 11
  %85 = load i32, ptr %84, align 8, !tbaa !30
  %86 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %87 = load i32, ptr %86, align 4, !tbaa !38
  %88 = mul nsw i32 %87, %85
  %89 = add nsw i32 %88, 5000
  %90 = sdiv i32 %89, 10000
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 11
  store i32 %90, ptr %91, align 8, !tbaa !30
  %92 = load i32, ptr %84, align 8, !tbaa !30
  %93 = mul nsw i32 %92, %87
  %94 = add nsw i32 %93, 5000
  %95 = sdiv i32 %94, -10000
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %97 = load i32, ptr %96, align 8, !tbaa !30
  %98 = add i32 %95, %97
  store i32 %98, ptr %96, align 8, !tbaa !30
  %99 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %1, ptr noundef %26) #17
  %100 = load i64, ptr %23, align 8, !tbaa !29
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %79
  store i64 0, ptr %23, align 8, !tbaa !29
  br label %103

103:                                              ; preds = %102, %79
  %104 = load i32, ptr %96, align 8, !tbaa !30
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  store i32 0, ptr %96, align 8, !tbaa !30
  br label %113

107:                                              ; preds = %78
  %108 = load i64, ptr %23, align 8, !tbaa !29
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 8
  store i64 %108, ptr %109, align 8, !tbaa !29
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %111 = load i32, ptr %110, align 8, !tbaa !30
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 11
  store i32 %111, ptr %112, align 8, !tbaa !30
  br label %113

113:                                              ; preds = %103, %106, %107
  tail call void @set_bb_original(ptr noundef nonnull %26, ptr noundef nonnull %0) #16
  tail call void @set_bb_copy(ptr noundef nonnull %0, ptr noundef nonnull %26) #16
  %114 = load ptr, ptr @cfun, align 8, !tbaa !6
  %115 = getelementptr inbounds %struct.function, ptr %114, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !28
  %117 = icmp eq ptr %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !27
  %121 = tail call ptr @get_loop_copy(ptr noundef %120) #16
  %122 = icmp eq ptr %121, null
  %123 = select i1 %122, ptr %120, ptr %121
  tail call void @add_bb_to_loop(ptr noundef nonnull %26, ptr noundef %123) #16
  br label %124

124:                                              ; preds = %118, %113
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret ptr %26
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
define dso_local zeroext i8 @block_ends_with_call_p(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.46, ptr noundef %7) #16
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !103
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ %4, %1 ]
  %13 = tail call zeroext i8 %12(ptr noundef %0) #16
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @block_ends_with_condjump_p(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.47, ptr noundef %7) #16
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !104
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ %4, %1 ]
  %13 = tail call zeroext i8 %12(ptr noundef %0) #16
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @flow_call_edges_add(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !60
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.48, ptr noundef %7) #16
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !105
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %10, %6 ], [ %4, %1 ]
  %13 = tail call i32 %12(ptr noundef %0) #16
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @execute_on_growing_pred(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #16
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @execute_on_shrinking_pred(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #16
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lv_flush_pending_stmts(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.cfg_hooks, ptr %2, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #16
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cfg_hook_duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #3 {
  %8 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.cfg_hooks, ptr %8, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1062, ptr noundef nonnull @.str.1) #16
  %13 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.cfg_hooks, ptr %13, i64 0, i32 24
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  br label %16

16:                                               ; preds = %7, %12
  %17 = phi ptr [ %10, %7 ], [ %15, %12 ]
  %18 = tail call zeroext i8 %17(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #16
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extract_cond_bb_edges(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.cfg_hooks, ptr %4, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1076, ptr noundef nonnull @.str.1) #16
  %9 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.cfg_hooks, ptr %9, i64 0, i32 27
  %11 = load ptr, ptr %10, align 8, !tbaa !110
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi ptr [ %6, %3 ], [ %11, %8 ]
  tail call void %13(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lv_adjust_loop_header_phi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.cfg_hooks, ptr %5, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void %7(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #16
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lv_add_condition_to_bb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.cfg_hooks, ptr %5, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1097, ptr noundef nonnull @.str.1) #16
  %10 = load ptr, ptr @cfg_hooks, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.cfg_hooks, ptr %10, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !112
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %7, %4 ], [ %12, %9 ]
  tail call void %14(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #16
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

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
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { cold optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !6, i64 24, i64 8, !6, i64 32, i64 8, !6, i64 40, i64 8, !6, i64 48, i64 8, !6, i64 56, i64 8, !6, i64 64, i64 8, !6, i64 72, i64 8, !6, i64 80, i64 8, !6, i64 88, i64 8, !6, i64 96, i64 8, !6, i64 104, i64 8, !6, i64 112, i64 8, !6, i64 120, i64 8, !6, i64 128, i64 8, !6, i64 136, i64 8, !6, i64 144, i64 8, !6, i64 152, i64 8, !6, i64 160, i64 8, !6, i64 168, i64 8, !6, i64 176, i64 8, !6, i64 184, i64 8, !6, i64 192, i64 8, !6, i64 200, i64 8, !6, i64 208, i64 8, !6, i64 216, i64 8, !6, i64 224, i64 8, !6}
!11 = !{!8, !8, i64 0}
!12 = !{!13, !7, i64 8}
!13 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !14, i64 104, !14, i64 108, !14, i64 112, !14, i64 116, !14, i64 120, !14, i64 124, !7, i64 128, !14, i64 136, !14, i64 137, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139}
!14 = !{!"int", !8, i64 0}
!15 = !{!16, !14, i64 32}
!16 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !7, i64 40, !14, i64 48, !8, i64 52, !8, i64 60, !14, i64 68, !14, i64 72}
!17 = !{!16, !7, i64 0}
!18 = !{!19, !7, i64 56}
!19 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !20, i64 72, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96}
!20 = !{!"long", !8, i64 0}
!21 = !{!16, !7, i64 8}
!22 = !{!16, !7, i64 16}
!23 = !{!19, !14, i64 80}
!24 = !{!19, !7, i64 48}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!19, !7, i64 24}
!28 = !{!13, !7, i64 32}
!29 = !{!19, !20, i64 72}
!30 = !{!19, !14, i64 88}
!31 = !{i64 0, i64 4, !32, i64 8, i64 8, !6}
!32 = !{!14, !14, i64 0}
!33 = !{i64 0, i64 8, !6}
!34 = !{i8 0, i8 2}
!35 = !{!36, !7, i64 8}
!36 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !20, i64 56}
!37 = !{!36, !7, i64 0}
!38 = !{!36, !14, i64 52}
!39 = !{!36, !20, i64 56}
!40 = !{!36, !14, i64 48}
!41 = !{!20, !20, i64 0}
!42 = distinct !{!42, !26}
!43 = !{!36, !14, i64 44}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !26}
!46 = distinct !{!46, !26}
!47 = distinct !{!47, !26}
!48 = distinct !{!48, !26}
!49 = !{!50, !7, i64 8}
!50 = !{!"cfg_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224}
!51 = !{!52, !14, i64 0}
!52 = !{!"", !14, i64 0, !7, i64 8}
!53 = !{!54, !14, i64 0}
!54 = !{!"VEC_edge_base", !14, i64 0, !14, i64 4, !8, i64 8}
!55 = !{!19, !14, i64 84}
!56 = distinct !{!56, !26}
!57 = distinct !{!57, !26}
!58 = !{!50, !7, i64 16}
!59 = !{!50, !7, i64 32}
!60 = !{!50, !7, i64 0}
!61 = !{!50, !7, i64 48}
!62 = !{!19, !7, i64 8}
!63 = !{!50, !7, i64 40}
!64 = !{!19, !7, i64 0}
!65 = !{!50, !7, i64 64}
!66 = !{!19, !14, i64 92}
!67 = !{!68, !7, i64 16}
!68 = !{!"loop", !14, i64 0, !14, i64 4, !7, i64 8, !7, i64 16, !69, i64 24, !14, i64 32, !14, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !70, i64 80, !70, i64 96, !8, i64 112, !8, i64 113, !14, i64 116, !7, i64 120, !7, i64 128, !8, i64 136, !7, i64 144}
!69 = !{!"lpt_decision", !14, i64 0, !14, i64 4}
!70 = !{!"", !20, i64 0, !20, i64 8}
!71 = !{!19, !14, i64 96}
!72 = !{!50, !7, i64 72}
!73 = !{!50, !7, i64 56}
!74 = !{!68, !7, i64 8}
!75 = distinct !{!75, !26}
!76 = distinct !{!76, !26}
!77 = !{!50, !7, i64 128}
!78 = distinct !{!78, !26}
!79 = !{!50, !7, i64 24}
!80 = !{!50, !7, i64 80}
!81 = !{!50, !7, i64 96}
!82 = !{!50, !7, i64 104}
!83 = !{!50, !7, i64 88}
!84 = distinct !{!84, !26}
!85 = distinct !{!85, !26}
!86 = !{!50, !7, i64 136}
!87 = distinct !{!87, !26}
!88 = distinct !{!88, !26}
!89 = distinct !{!89, !26}
!90 = !{!91, !14, i64 0}
!91 = !{!"VEC_basic_block_base", !14, i64 0, !14, i64 4, !8, i64 8}
!92 = !{!68, !7, i64 40}
!93 = !{!94, !14, i64 0}
!94 = !{!"VEC_loop_p_base", !14, i64 0, !14, i64 4, !8, i64 8}
!95 = !{!50, !7, i64 144}
!96 = !{!97, !7, i64 8}
!97 = !{!"rtl_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !14, i64 32}
!98 = distinct !{!98, !26}
!99 = !{!50, !7, i64 112}
!100 = !{!50, !7, i64 120}
!101 = !{!36, !7, i64 24}
!102 = distinct !{!102, !26}
!103 = !{!50, !7, i64 152}
!104 = !{!50, !7, i64 160}
!105 = !{!50, !7, i64 168}
!106 = !{!50, !7, i64 176}
!107 = !{!50, !7, i64 184}
!108 = !{!50, !7, i64 224}
!109 = !{!50, !7, i64 192}
!110 = !{!50, !7, i64 216}
!111 = !{!50, !7, i64 208}
!112 = !{!50, !7, i64 200}
