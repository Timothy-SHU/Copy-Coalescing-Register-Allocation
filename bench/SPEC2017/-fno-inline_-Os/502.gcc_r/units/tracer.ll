; ModuleID = 'tracer.c'
source_filename = "tracer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [7 x i8] c"tracer\00", align 1
@pass_tracer = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_tracer, ptr @tracer, ptr null, ptr null, i32 0, i32 134, i32 0, i32 0, i32 0, i32 0, i32 2053 } }, align 8
@bb_seen = dso_local local_unnamed_addr global ptr null, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_tracer = external local_unnamed_addr global i32, align 4
@flag_reorder_blocks = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tracer.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@profile_info = external local_unnamed_addr global ptr, align 8
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@probability_cutoff = internal unnamed_addr global i32 0, align 4
@branch_ratio_cutoff = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Duplicated %i as %i [%i]\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c" covered now %.1f\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Duplicated %i insns (%i%%)\0A\00", align 1
@eni_size_weights = external global %struct.eni_weights_d, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Trace seed %i [%i]\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c",%i [%i]\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c" forward %i [%i]\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tracer() #0 !prof !34 !PGOFuncName !35 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !36
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_tracer, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = load i32, ptr @flag_reorder_blocks, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false, !prof !40
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tracer() #1 !prof !41 !PGOFuncName !42 {
  %1 = tail call i32 @current_ir_type() #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @.str.2) #12
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @cfun, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !47
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %22, label %11

11:                                               ; preds = %4
  %12 = tail call zeroext i8 @mark_dfs_back_edges() #12
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr @dump_flags, align 4, !tbaa !36
  tail call void @dump_flow_info(ptr noundef nonnull %13, i32 noundef %16) #12
  br label %17

17:                                               ; preds = %15, %11
  tail call fastcc void @tail_duplicate() #13
  tail call void @free_dominance_info(i32 noundef 1) #12
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !43
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !36
  tail call void @dump_flow_info(ptr noundef nonnull %18, i32 noundef %21) #12
  br label %22

22:                                               ; preds = %17, %20, %4
  ret i32 0
}

; Function Attrs: optsize
declare i32 @current_ir_type() local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tail_duplicate() unnamed_addr #1 !prof !41 !PGOFuncName !49 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = sext i32 %6 to i64
  %8 = tail call ptr @xcalloc(i64 noundef %7, i64 noundef 8) #12
  %9 = load ptr, ptr @cfun, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call ptr @xmalloc(i64 noundef %15) #12
  %17 = load ptr, ptr @cfun, align 8, !tbaa !43
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !50
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 2
  %24 = tail call ptr @xmalloc(i64 noundef %23) #12
  %25 = tail call ptr @fibheap_new() #12
  %26 = load ptr, ptr @cfun, align 8, !tbaa !43
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !50
  %31 = shl nsw i32 %30, 1
  %32 = tail call ptr @sbitmap_alloc(i32 noundef %31) #12
  store ptr %32, ptr @bb_seen, align 8, !tbaa !43
  tail call void @sbitmap_zero(ptr noundef %32) #12
  tail call void @initialize_original_copy_tables() #12
  %33 = load ptr, ptr @profile_info, align 8, !tbaa !43
  %34 = icmp ne ptr %33, null
  %35 = load i32, ptr @flag_branch_probabilities, align 4
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  %38 = load ptr, ptr @compiler_params, align 8
  %39 = getelementptr inbounds %struct.param_info, ptr %38, i64 52, i32 1
  %40 = getelementptr inbounds %struct.param_info, ptr %38, i64 51, i32 1
  %41 = select i1 %37, ptr %40, ptr %39
  %42 = load i32, ptr %41, align 8, !tbaa !51
  %43 = mul nsw i32 %42, 100
  store i32 %43, ptr @probability_cutoff, align 4, !tbaa !36
  %44 = getelementptr inbounds %struct.param_info, ptr %38, i64 50, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !51
  %46 = mul nsw i32 %45, 100
  store i32 %46, ptr @branch_ratio_cutoff, align 4, !tbaa !36
  %47 = load ptr, ptr @cfun, align 8, !tbaa !43
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !45
  %50 = load ptr, ptr %49, align 8, !tbaa !53
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !54
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !57
  %55 = icmp eq ptr %52, %54
  br i1 %55, label %98, label %56

56:                                               ; preds = %0, %77
  %57 = phi ptr [ %87, %77 ], [ %52, %0 ]
  %58 = phi i32 [ %80, %77 ], [ 0, %0 ]
  %59 = phi i64 [ %85, %77 ], [ 0, %0 ]
  %60 = tail call fastcc i32 @count_insns(ptr noundef %57) #13
  %61 = tail call fastcc zeroext i8 @ignore_bb_p(ptr noundef %57) #13, !range !58
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !59
  %66 = sext i32 %65 to i64
  br label %77

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 11
  %69 = load i32, ptr %68, align 8, !tbaa !60
  %70 = sub nsw i32 0, %69
  %71 = sext i32 %70 to i64
  %72 = tail call ptr @fibheap_insert(ptr noundef %25, i64 noundef %71, ptr noundef %57) #12
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !59
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %8, i64 %75
  store ptr %72, ptr %76, align 8, !tbaa !43
  br label %77

77:                                               ; preds = %63, %67
  %78 = phi i64 [ %66, %63 ], [ %75, %67 ]
  %79 = getelementptr inbounds i32, ptr %24, i64 %78
  store i32 %60, ptr %79, align 4, !tbaa !36
  %80 = add nsw i32 %60, %58
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 11
  %82 = load i32, ptr %81, align 8, !tbaa !60
  %83 = mul nsw i32 %82, %60
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %59, %84
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !54
  %88 = load ptr, ptr @cfun, align 8, !tbaa !43
  %89 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !45
  %91 = getelementptr inbounds %struct.control_flow_graph, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !57
  %93 = icmp eq ptr %87, %92
  br i1 %93, label %94, label %56, !llvm.loop !61

94:                                               ; preds = %77
  %95 = load ptr, ptr @profile_info, align 8, !tbaa !43
  %96 = load i32, ptr @flag_branch_probabilities, align 4
  %97 = load ptr, ptr @compiler_params, align 8
  br label %98

98:                                               ; preds = %94, %0
  %99 = phi ptr [ %38, %0 ], [ %97, %94 ]
  %100 = phi i32 [ %35, %0 ], [ %96, %94 ]
  %101 = phi ptr [ %33, %0 ], [ %95, %94 ]
  %102 = phi i64 [ 0, %0 ], [ %85, %94 ]
  %103 = phi i32 [ 0, %0 ], [ %80, %94 ]
  %104 = icmp ne ptr %101, null
  %105 = icmp ne i32 %100, 0
  %106 = select i1 %104, i1 %105, i1 false
  %107 = getelementptr inbounds %struct.param_info, ptr %99, i64 47, i32 1
  %108 = getelementptr inbounds %struct.param_info, ptr %99, i64 48, i32 1
  %109 = select i1 %106, ptr %107, ptr %108
  %110 = load i32, ptr %109, align 8, !tbaa !51
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %102, %111
  %113 = add nsw i64 %112, 50
  %114 = sdiv i64 %113, 100
  %115 = getelementptr inbounds %struct.param_info, ptr %99, i64 49, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !51
  %117 = mul nsw i32 %116, %103
  %118 = add nsw i32 %117, 50
  %119 = sdiv i32 %118, 100
  %120 = icmp sgt i64 %112, 49
  %121 = icmp sgt i32 %117, 49
  %122 = select i1 %120, i1 %121, i1 false
  br i1 %122, label %123, label %252

123:                                              ; preds = %98
  %124 = sitofp i64 %102 to double
  br label %125

125:                                              ; preds = %123, %246
  %126 = phi i32 [ 0, %123 ], [ %248, %246 ]
  %127 = phi i64 [ 0, %123 ], [ %247, %246 ]
  %128 = call i32 @fibheap_empty(ptr noundef %25) #12
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %252

130:                                              ; preds = %125
  %131 = call ptr @fibheap_extract_min(ptr noundef %25) #12
  %132 = icmp eq ptr %131, null
  br i1 %132, label %252, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %131, i64 0, i32 9
  %135 = load i32, ptr %134, align 8, !tbaa !59
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds ptr, ptr %8, i64 %136
  store ptr null, ptr %137, align 8, !tbaa !43
  %138 = call fastcc zeroext i8 @ignore_bb_p(ptr noundef nonnull %131) #13, !range !58
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %246, !llvm.loop !63

140:                                              ; preds = %133
  %141 = call fastcc zeroext i8 @bb_seen_p(ptr noundef nonnull %131) #13, !range !58
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 278, ptr noundef nonnull @.str.2) #12
  br label %144

144:                                              ; preds = %140, %143
  %145 = call fastcc i32 @find_trace(ptr noundef nonnull %131, ptr noundef %16) #13
  %146 = load ptr, ptr %16, align 8, !tbaa !43
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 11
  %148 = load i32, ptr %147, align 8, !tbaa !60
  %149 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 9
  %150 = load i32, ptr %149, align 8, !tbaa !59
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, ptr %24, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !36
  %154 = mul nsw i32 %153, %148
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %127, %155
  %157 = getelementptr inbounds ptr, ptr %8, i64 %151
  %158 = load ptr, ptr %157, align 8, !tbaa !43
  %159 = icmp eq ptr %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %144
  %161 = call ptr @fibheap_delete_node(ptr noundef %25, ptr noundef nonnull %158) #12
  %162 = load i32, ptr %149, align 8, !tbaa !59
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %8, i64 %163
  store ptr null, ptr %164, align 8, !tbaa !43
  br label %165

165:                                              ; preds = %160, %144
  %166 = icmp sgt i32 %145, 1
  br i1 %166, label %167, label %236

167:                                              ; preds = %165
  %168 = zext nneg i32 %145 to i64
  br label %169

169:                                              ; preds = %167, %228
  %170 = phi i64 [ 1, %167 ], [ %233, %228 ]
  %171 = phi i32 [ %126, %167 ], [ %229, %228 ]
  %172 = phi ptr [ %146, %167 ], [ %230, %228 ]
  %173 = phi i64 [ %156, %167 ], [ %195, %228 ]
  %174 = getelementptr inbounds ptr, ptr %16, i64 %170
  %175 = load ptr, ptr %174, align 8, !tbaa !43
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %175, i64 0, i32 9
  %177 = load i32, ptr %176, align 8, !tbaa !59
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds ptr, ptr %8, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !43
  %181 = icmp eq ptr %180, null
  br i1 %181, label %187, label %182

182:                                              ; preds = %169
  %183 = call ptr @fibheap_delete_node(ptr noundef %25, ptr noundef nonnull %180) #12
  %184 = load i32, ptr %176, align 8, !tbaa !59
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds ptr, ptr %8, i64 %185
  store ptr null, ptr %186, align 8, !tbaa !43
  br label %187

187:                                              ; preds = %182, %169
  %188 = phi i64 [ %185, %182 ], [ %178, %169 ]
  %189 = getelementptr inbounds %struct.basic_block_def, ptr %175, i64 0, i32 11
  %190 = load i32, ptr %189, align 8, !tbaa !60
  %191 = getelementptr inbounds i32, ptr %24, i64 %188
  %192 = load i32, ptr %191, align 4, !tbaa !36
  %193 = mul nsw i32 %192, %190
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %173, %194
  %196 = load ptr, ptr %175, align 8, !tbaa !64
  %197 = call fastcc i32 @VEC_edge_base_length(ptr noundef %196) #13
  %198 = icmp ugt i32 %197, 1
  br i1 %198, label %199, label %228

199:                                              ; preds = %187
  %200 = call zeroext i8 @can_duplicate_block_p(ptr noundef nonnull %175) #12
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %228, label %202

202:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #14
  %203 = load i32, ptr %176, align 8, !tbaa !59
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, ptr %24, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !36
  %207 = add nsw i32 %206, %171
  %208 = call ptr @find_edge(ptr noundef %172, ptr noundef nonnull %175) #12
  %209 = call ptr @duplicate_block(ptr noundef nonnull %175, ptr noundef %208, ptr noundef %172) #12
  store ptr %209, ptr %1, align 8, !tbaa !43
  call void @flush_pending_stmts(ptr noundef %208) #12
  call void @add_phi_args_after_copy(ptr noundef nonnull %1, i32 noundef 1, ptr noundef null) #12
  %210 = load i32, ptr %189, align 8, !tbaa !60
  %211 = sub nsw i32 0, %210
  %212 = sext i32 %211 to i64
  %213 = call ptr @fibheap_insert(ptr noundef %25, i64 noundef %212, ptr noundef nonnull %175) #12
  %214 = load i32, ptr %176, align 8, !tbaa !59
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds ptr, ptr %8, i64 %215
  store ptr %213, ptr %216, align 8, !tbaa !43
  %217 = load ptr, ptr @dump_file, align 8, !tbaa !43
  %218 = icmp eq ptr %217, null
  br i1 %218, label %226, label %219

219:                                              ; preds = %202
  %220 = load ptr, ptr %1, align 8, !tbaa !43
  %221 = getelementptr inbounds %struct.basic_block_def, ptr %220, i64 0, i32 9
  %222 = load i32, ptr %221, align 8, !tbaa !59
  %223 = getelementptr inbounds %struct.basic_block_def, ptr %220, i64 0, i32 11
  %224 = load i32, ptr %223, align 8, !tbaa !60
  %225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %217, ptr noundef nonnull @.str.3, i32 noundef %214, i32 noundef %222, i32 noundef %224) #13
  br label %226

226:                                              ; preds = %219, %202
  %227 = load ptr, ptr %1, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #14
  br label %228

228:                                              ; preds = %226, %199, %187
  %229 = phi i32 [ %207, %226 ], [ %171, %199 ], [ %171, %187 ]
  %230 = phi ptr [ %227, %226 ], [ %175, %199 ], [ %175, %187 ]
  call fastcc void @mark_bb_seen(ptr noundef %230) #13
  %231 = call fastcc zeroext i8 @ignore_bb_p(ptr noundef %230) #13, !range !58
  %232 = icmp eq i8 %231, 0
  %233 = add nuw nsw i64 %170, 1
  %234 = icmp ult i64 %233, %168
  %235 = select i1 %232, i1 %234, i1 false
  br i1 %235, label %169, label %236, !llvm.loop !65

236:                                              ; preds = %228, %165
  %237 = phi i64 [ %156, %165 ], [ %195, %228 ]
  %238 = phi i32 [ %126, %165 ], [ %229, %228 ]
  %239 = load ptr, ptr @dump_file, align 8, !tbaa !43
  %240 = icmp eq ptr %239, null
  br i1 %240, label %246, label %241

241:                                              ; preds = %236
  %242 = sitofp i64 %237 to double
  %243 = fmul double %242, 1.000000e+02
  %244 = fdiv double %243, %124
  %245 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %239, ptr noundef nonnull @.str.4, double noundef %244) #13
  br label %246

246:                                              ; preds = %236, %241, %133
  %247 = phi i64 [ %127, %133 ], [ %237, %241 ], [ %237, %236 ]
  %248 = phi i32 [ %126, %133 ], [ %238, %241 ], [ %238, %236 ]
  %249 = icmp slt i64 %247, %114
  %250 = icmp slt i32 %248, %119
  %251 = select i1 %249, i1 %250, i1 false
  br i1 %251, label %125, label %252

252:                                              ; preds = %125, %246, %130, %98
  %253 = phi i32 [ 0, %98 ], [ %126, %130 ], [ %248, %246 ], [ %126, %125 ]
  %254 = load ptr, ptr @dump_file, align 8, !tbaa !43
  %255 = icmp eq ptr %254, null
  br i1 %255, label %260, label %256

256:                                              ; preds = %252
  %257 = mul nsw i32 %253, 100
  %258 = sdiv i32 %257, %103
  %259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %254, ptr noundef nonnull @.str.5, i32 noundef %253, i32 noundef %258) #13
  br label %260

260:                                              ; preds = %256, %252
  call void @free_original_copy_tables() #12
  %261 = load ptr, ptr @bb_seen, align 8, !tbaa !43
  %262 = load ptr, ptr %261, align 8, !tbaa !66
  call void @free(ptr noundef %262) #13
  %263 = load ptr, ptr @bb_seen, align 8, !tbaa !43
  call void @free(ptr noundef %263) #13
  call void @free(ptr noundef %8) #13
  call void @free(ptr noundef %16) #13
  call void @free(ptr noundef %24) #13
  call void @fibheap_delete(ptr noundef %25) #12
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fibheap_new() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @initialize_original_copy_tables() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @count_insns(ptr noundef %0) unnamed_addr #1 !prof !41 !PGOFuncName !68 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #13
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13, !range !58
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %9, %5 ], [ 0, %1 ]
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13
  %8 = tail call i32 @estimate_num_insns(ptr noundef %7, ptr noundef nonnull @eni_size_weights) #12
  %9 = add nsw i32 %8, %6
  call fastcc void @gsi_next(ptr noundef nonnull %2) #13
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13, !range !58
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !69

12:                                               ; preds = %5, %1
  %13 = phi i32 [ 0, %1 ], [ %9, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ignore_bb_p(ptr noundef %0) unnamed_addr #1 !prof !41 !PGOFuncName !70 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef nonnull %0) #12
  %7 = icmp ne i8 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i8 [ 1, %1 ], [ %8, %5 ]
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @fibheap_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare i32 @fibheap_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fibheap_extract_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @bb_seen_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !41 !PGOFuncName !71 {
  %2 = load ptr, ptr @bb_seen, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = lshr i32 %4, 6
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !72
  %9 = and i32 %4, 63
  %10 = zext nneg i32 %9 to i64
  %11 = lshr i64 %8, %10
  %12 = trunc i64 %11 to i8
  %13 = and i8 %12, 1
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_trace(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !41 !PGOFuncName !73 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !60
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.6, i32 noundef %7, i32 noundef %9) #13
  br label %11

11:                                               ; preds = %5, %2
  %12 = tail call fastcc ptr @find_best_predecessor(ptr noundef %0) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %11, %37
  %15 = phi ptr [ %38, %37 ], [ %12, %11 ]
  %16 = phi ptr [ %17, %37 ], [ %0, %11 ]
  %17 = load ptr, ptr %15, align 8, !tbaa !74
  %18 = tail call fastcc zeroext i8 @bb_seen_p(ptr noundef %17) #13, !range !58
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !76
  %23 = and i32 %22, 46
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = tail call fastcc ptr @find_best_successor(ptr noundef %17) #13
  %27 = icmp eq ptr %26, %15
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 11
  %35 = load i32, ptr %34, align 8, !tbaa !60
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.7, i32 noundef %33, i32 noundef %35) #13
  br label %37

37:                                               ; preds = %28, %31
  %38 = tail call fastcc ptr @find_best_predecessor(ptr noundef %17) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %14

40:                                               ; preds = %37, %25, %20, %14, %11
  %41 = phi ptr [ %0, %11 ], [ %16, %14 ], [ %16, %20 ], [ %16, %25 ], [ %17, %37 ]
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !43
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !59
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 11
  %48 = load i32, ptr %47, align 8, !tbaa !60
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %42, ptr noundef nonnull @.str.8, i32 noundef %46, i32 noundef %48) #13
  br label %50

50:                                               ; preds = %44, %40
  store ptr %41, ptr %1, align 8, !tbaa !43
  %51 = tail call fastcc ptr @find_best_successor(ptr noundef %41) #13
  %52 = icmp eq ptr %51, null
  br i1 %52, label %85, label %53

53:                                               ; preds = %50, %77
  %54 = phi i64 [ %78, %77 ], [ 1, %50 ]
  %55 = phi ptr [ %80, %77 ], [ %51, %50 ]
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !77
  %58 = tail call fastcc zeroext i8 @bb_seen_p(ptr noundef %57) #13, !range !58
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 7
  %62 = load i32, ptr %61, align 8, !tbaa !76
  %63 = and i32 %62, 46
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = tail call fastcc ptr @find_best_predecessor(ptr noundef %57) #13
  %67 = icmp eq ptr %66, %55
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !43
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 9
  %73 = load i32, ptr %72, align 8, !tbaa !59
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 11
  %75 = load i32, ptr %74, align 8, !tbaa !60
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %69, ptr noundef nonnull @.str.7, i32 noundef %73, i32 noundef %75) #13
  br label %77

77:                                               ; preds = %71, %68
  %78 = add nuw i64 %54, 1
  %79 = getelementptr inbounds ptr, ptr %1, i64 %54
  store ptr %57, ptr %79, align 8, !tbaa !43
  %80 = tail call fastcc ptr @find_best_successor(ptr noundef %57) #13
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %53, !llvm.loop !78

82:                                               ; preds = %53, %60, %65, %77
  %83 = phi i64 [ %78, %77 ], [ %54, %65 ], [ %54, %60 ], [ %54, %53 ]
  %84 = trunc i64 %83 to i32
  br label %85

85:                                               ; preds = %82, %50
  %86 = phi i32 [ 1, %50 ], [ %84, %82 ]
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !43
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = tail call i32 @fputc(i32 10, ptr nonnull %87)
  br label %91

91:                                               ; preds = %89, %85
  ret i32 %86
}

; Function Attrs: optsize
declare ptr @fibheap_delete_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !41 !PGOFuncName !79 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !80
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @can_duplicate_block_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @duplicate_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @flush_pending_stmts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_phi_args_after_copy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_bb_seen(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !41 !PGOFuncName !82 {
  %2 = load ptr, ptr @bb_seen, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !83
  %5 = shl i32 %4, 6
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !59
  %8 = icmp ult i32 %7, %5
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = shl i32 %4, 7
  %11 = tail call ptr @sbitmap_resize(ptr noundef nonnull %2, i32 noundef %10, i32 noundef 0) #12
  store ptr %11, ptr @bb_seen, align 8, !tbaa !43
  %12 = load i32, ptr %6, align 8, !tbaa !59
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i32 [ %12, %9 ], [ %7, %1 ]
  %15 = phi ptr [ %11, %9 ], [ %2, %1 ]
  tail call fastcc void @SET_BIT(ptr noundef %15, i32 noundef %14) #13
  ret void
}

; Function Attrs: optsize
declare void @free_original_copy_tables() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @fibheap_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !41 !PGOFuncName !84 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #13
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #13
  store ptr %4, ptr %0, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !87
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !41 !PGOFuncName !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !85
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !41 !PGOFuncName !90 {
  %2 = load ptr, ptr %0, align 8, !tbaa !85
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @estimate_num_insns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !41 !PGOFuncName !93 {
  %2 = load ptr, ptr %0, align 8, !tbaa !85
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  store ptr %4, ptr %0, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !41 !PGOFuncName !95 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !96
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !98
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !41 !PGOFuncName !100 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !101
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_size_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_best_predecessor(ptr noundef %0) unnamed_addr #1 !prof !41 !PGOFuncName !103 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #13
  store i32 0, ptr %3, align 8, !tbaa.struct !104
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !105
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #13, !range !58
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %1, %16
  %9 = phi ptr [ %17, %16 ], [ null, %1 ]
  %10 = icmp eq ptr %9, null
  %11 = load ptr, ptr %2, align 8, !tbaa !43
  br i1 %10, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call fastcc zeroext i8 @better_p(ptr noundef %11, ptr noundef nonnull %9) #13, !range !58
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %8
  br label %16

16:                                               ; preds = %12, %15
  %17 = phi ptr [ %11, %15 ], [ %9, %12 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #13
  %18 = load i32, ptr %3, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = call fastcc zeroext i8 @ei_cond(i32 %18, ptr %19, ptr noundef nonnull %2) #13, !range !58
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %8, !llvm.loop !106

22:                                               ; preds = %16
  %23 = icmp eq ptr %17, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %17, align 8, !tbaa !74
  %26 = tail call fastcc zeroext i8 @ignore_bb_p(ptr noundef %25) #13, !range !58
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load ptr, ptr %17, align 8, !tbaa !74
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 11
  %31 = load i32, ptr %30, align 8, !tbaa !60
  %32 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !107
  %34 = mul nsw i32 %33, %31
  %35 = freeze i32 %34
  %36 = add i32 %35, 5000
  %37 = srem i32 %36, 10000
  %38 = sub nsw i32 %36, %37
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %40 = load i32, ptr %39, align 8, !tbaa !60
  %41 = load i32, ptr @branch_ratio_cutoff, align 4, !tbaa !36
  %42 = mul nsw i32 %41, %40
  %43 = icmp slt i32 %38, %42
  %44 = select i1 %43, ptr null, ptr %17
  br label %45

45:                                               ; preds = %1, %28, %22, %24
  %46 = phi ptr [ null, %24 ], [ null, %22 ], [ %44, %28 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_best_successor(ptr noundef %0) unnamed_addr #1 !prof !41 !PGOFuncName !108 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #13
  store i32 0, ptr %3, align 8, !tbaa.struct !104
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !105
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #13, !range !58
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %1, %17
  %10 = phi ptr [ %18, %17 ], [ null, %1 ]
  %11 = icmp eq ptr %10, null
  %12 = load ptr, ptr %2, align 8, !tbaa !43
  br i1 %11, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc zeroext i8 @better_p(ptr noundef %12, ptr noundef nonnull %10) #13, !range !58
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %9
  br label %17

17:                                               ; preds = %13, %16
  %18 = phi ptr [ %12, %16 ], [ %10, %13 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #13
  %19 = load i32, ptr %3, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = call fastcc zeroext i8 @ei_cond(i32 %19, ptr %20, ptr noundef nonnull %2) #13, !range !58
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %9, !llvm.loop !109

23:                                               ; preds = %17
  %24 = icmp eq ptr %18, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !77
  %28 = tail call fastcc zeroext i8 @ignore_bb_p(ptr noundef %27) #13, !range !58
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 8
  %32 = load i32, ptr %31, align 4, !tbaa !107
  %33 = load i32, ptr @probability_cutoff, align 4, !tbaa !36
  %34 = icmp sgt i32 %32, %33
  %35 = select i1 %34, ptr %18, ptr null
  br label %36

36:                                               ; preds = %1, %30, %23, %25
  %37 = phi ptr [ null, %25 ], [ null, %23 ], [ %35, %30 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret ptr %37
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #9 !prof !41 !PGOFuncName !110 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !41 !PGOFuncName !111 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #13, !range !58
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #13
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !43
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @better_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !prof !41 !PGOFuncName !112 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %4 = load i64, ptr %3, align 8, !tbaa !113
  %5 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 9
  %6 = load i64, ptr %5, align 8, !tbaa !113
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = icmp sgt i64 %4, %6
  br label %44

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 4, !tbaa !107
  %16 = mul nsw i32 %15, %13
  %17 = load ptr, ptr %1, align 8, !tbaa !74
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 11
  %19 = load i32, ptr %18, align 8, !tbaa !60
  %20 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !107
  %22 = mul nsw i32 %21, %19
  %23 = icmp eq i32 %16, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %10
  %25 = icmp sgt i32 %16, %22
  br label %44

26:                                               ; preds = %10
  %27 = icmp eq ptr %11, %17
  br i1 %27, label %34, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !59
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !59
  %33 = icmp sgt i32 %30, %32
  br label %44

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !77
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !59
  %39 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !77
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !59
  %43 = icmp sgt i32 %38, %42
  br label %44

44:                                               ; preds = %34, %28, %24, %8
  %45 = phi i1 [ %9, %8 ], [ %25, %24 ], [ %33, %28 ], [ %43, %34 ]
  %46 = zext i1 %45 to i8
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 !prof !41 !PGOFuncName !114 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #13
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #13
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.2) #12
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !115
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !115
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 !prof !41 !PGOFuncName !117 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #13
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #13
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !41 !PGOFuncName !118 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #13
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #13
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !41 !PGOFuncName !119 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.2) #12
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !41 !PGOFuncName !120 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @sbitmap_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 !prof !41 !PGOFuncName !121 {
  %3 = load ptr, ptr %0, align 8, !tbaa !66
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
  %15 = load i64, ptr %14, align 8, !tbaa !72
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !97
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !97
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !72
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !72
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

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
!34 = !{!"function_entry_count", i64 38}
!35 = !{!"tracer.c:gate_tracer"}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"branch_weights", i32 39, i32 1561}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!"tracer.c:tracer"}
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !38, i64 0}
!45 = !{!46, !44, i64 8}
!46 = !{!"function", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !37, i64 104, !37, i64 108, !37, i64 112, !37, i64 116, !37, i64 120, !37, i64 124, !44, i64 128, !37, i64 136, !37, i64 137, !37, i64 138, !37, i64 138, !37, i64 138, !37, i64 138, !37, i64 138, !37, i64 138, !37, i64 138, !37, i64 139, !37, i64 139, !37, i64 139, !37, i64 139, !37, i64 139, !37, i64 139, !37, i64 139}
!47 = !{!48, !37, i64 24}
!48 = !{!"control_flow_graph", !44, i64 0, !44, i64 8, !44, i64 16, !37, i64 24, !37, i64 28, !37, i64 32, !44, i64 40, !37, i64 48, !38, i64 52, !38, i64 60, !37, i64 68, !37, i64 72}
!49 = !{!"tracer.c:tail_duplicate"}
!50 = !{!48, !37, i64 32}
!51 = !{!52, !37, i64 8}
!52 = !{!"param_info", !44, i64 0, !37, i64 8, !38, i64 12, !37, i64 16, !37, i64 20, !44, i64 24}
!53 = !{!48, !44, i64 0}
!54 = !{!55, !44, i64 56}
!55 = !{!"basic_block_def", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !38, i64 32, !44, i64 48, !44, i64 56, !38, i64 64, !56, i64 72, !37, i64 80, !37, i64 84, !37, i64 88, !37, i64 92, !37, i64 96}
!56 = !{!"long", !38, i64 0}
!57 = !{!48, !44, i64 8}
!58 = !{i8 0, i8 2}
!59 = !{!55, !37, i64 80}
!60 = !{!55, !37, i64 88}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = distinct !{!63, !62}
!64 = !{!55, !44, i64 0}
!65 = distinct !{!65, !62}
!66 = !{!67, !44, i64 0}
!67 = !{!"simple_bitmap_def", !44, i64 0, !37, i64 8, !37, i64 12, !38, i64 16}
!68 = !{!"tracer.c:count_insns"}
!69 = distinct !{!69, !62}
!70 = !{!"tracer.c:ignore_bb_p"}
!71 = !{!"tracer.c:bb_seen_p"}
!72 = !{!56, !56, i64 0}
!73 = !{!"tracer.c:find_trace"}
!74 = !{!75, !44, i64 0}
!75 = !{!"edge_def", !44, i64 0, !44, i64 8, !38, i64 16, !44, i64 24, !44, i64 32, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !56, i64 56}
!76 = !{!75, !37, i64 48}
!77 = !{!75, !44, i64 8}
!78 = distinct !{!78, !62}
!79 = !{!"tracer.c:VEC_edge_base_length"}
!80 = !{!81, !37, i64 0}
!81 = !{!"VEC_edge_base", !37, i64 0, !37, i64 4, !38, i64 8}
!82 = !{!"tracer.c:mark_bb_seen"}
!83 = !{!67, !37, i64 12}
!84 = !{!"tracer.c:gsi_start_bb"}
!85 = !{!86, !44, i64 0}
!86 = !{!"", !44, i64 0, !44, i64 8, !44, i64 16}
!87 = !{!86, !44, i64 8}
!88 = !{!86, !44, i64 16}
!89 = !{!"tracer.c:gsi_end_p"}
!90 = !{!"tracer.c:gsi_stmt"}
!91 = !{!92, !44, i64 0}
!92 = !{!"gimple_seq_node_d", !44, i64 0, !44, i64 8, !44, i64 16}
!93 = !{!"tracer.c:gsi_next"}
!94 = !{!92, !44, i64 16}
!95 = !{!"tracer.c:bb_seq"}
!96 = !{!55, !37, i64 96}
!97 = !{!38, !38, i64 0}
!98 = !{!99, !44, i64 0}
!99 = !{!"gimple_bb_info", !44, i64 0, !44, i64 8}
!100 = !{!"tracer.c:gimple_seq_first"}
!101 = !{!102, !44, i64 0}
!102 = !{!"gimple_seq_d", !44, i64 0, !44, i64 8, !44, i64 16}
!103 = !{!"tracer.c:find_best_predecessor"}
!104 = !{i64 0, i64 4, !36, i64 8, i64 8, !43}
!105 = !{i64 0, i64 8, !43}
!106 = distinct !{!106, !62}
!107 = !{!75, !37, i64 52}
!108 = !{!"tracer.c:find_best_successor"}
!109 = distinct !{!109, !62}
!110 = !{!"tracer.c:ei_start_1"}
!111 = !{!"tracer.c:ei_cond"}
!112 = !{!"tracer.c:better_p"}
!113 = !{!75, !56, i64 56}
!114 = !{!"tracer.c:ei_next"}
!115 = !{!116, !37, i64 0}
!116 = !{!"", !37, i64 0, !44, i64 8}
!117 = !{!"tracer.c:ei_end_p"}
!118 = !{!"tracer.c:ei_edge"}
!119 = !{!"tracer.c:ei_container"}
!120 = !{!"tracer.c:VEC_edge_base_index"}
!121 = !{!"tracer.c:SET_BIT"}
