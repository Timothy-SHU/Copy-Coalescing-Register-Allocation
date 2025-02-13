; ModuleID = 'lcm.c'
source_filename = "lcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.edge_list = type { i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @pre_edge_lcm(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 !prof !124 {
  %8 = tail call ptr @create_edge_list() #6
  %9 = getelementptr inbounds %struct.edge_list, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !125
  %11 = load ptr, ptr @cfun, align 8, !tbaa !131
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !132
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !134
  %16 = tail call ptr @sbitmap_vector_alloc(i32 noundef %15, i32 noundef %0) #6
  %17 = load ptr, ptr @cfun, align 8, !tbaa !131
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !132
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !134
  %22 = tail call ptr @sbitmap_vector_alloc(i32 noundef %21, i32 noundef %0) #6
  tail call void @compute_available(ptr noundef %2, ptr noundef %4, ptr noundef %22, ptr noundef %16) #7
  tail call void @free(ptr noundef %16) #7
  %23 = load ptr, ptr @cfun, align 8, !tbaa !131
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !132
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !134
  %28 = tail call ptr @sbitmap_vector_alloc(i32 noundef %27, i32 noundef %0) #6
  %29 = load ptr, ptr @cfun, align 8, !tbaa !131
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !132
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !134
  %34 = tail call ptr @sbitmap_vector_alloc(i32 noundef %33, i32 noundef %0) #6
  tail call fastcc void @compute_antinout_edge(ptr noundef %3, ptr noundef %1, ptr noundef %28, ptr noundef %34) #7
  %35 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  tail call fastcc void @compute_earliest(ptr noundef %8, i32 noundef %0, ptr noundef %28, ptr noundef %34, ptr noundef %22, ptr noundef %4, ptr noundef %35) #7
  tail call void @free(ptr noundef %34) #7
  tail call void @free(ptr noundef %28) #7
  tail call void @free(ptr noundef %22) #7
  %36 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  %37 = load ptr, ptr @cfun, align 8, !tbaa !131
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !132
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !134
  %42 = add nsw i32 %41, 1
  %43 = tail call ptr @sbitmap_vector_alloc(i32 noundef %42, i32 noundef %0) #6
  tail call fastcc void @compute_laterin(ptr noundef %8, ptr noundef %35, ptr noundef %3, ptr noundef %36, ptr noundef %43) #7
  tail call void @free(ptr noundef %35) #7
  %44 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  store ptr %44, ptr %5, align 8, !tbaa !131
  %45 = load ptr, ptr @cfun, align 8, !tbaa !131
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !132
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !134
  %50 = tail call ptr @sbitmap_vector_alloc(i32 noundef %49, i32 noundef %0) #6
  store ptr %50, ptr %6, align 8, !tbaa !131
  %51 = load ptr, ptr %5, align 8, !tbaa !131
  tail call fastcc void @compute_insert_delete(ptr noundef %8, ptr noundef %3, ptr noundef %36, ptr noundef %43, ptr noundef %51, ptr noundef %50) #7
  tail call void @free(ptr noundef %43) #7
  tail call void @free(ptr noundef %36) #7
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @create_edge_list() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_vector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @compute_available(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !136 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  %7 = load ptr, ptr @cfun, align 8, !tbaa !131
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !137
  %12 = add nsw i32 %11, -2
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr @xmalloc(i64 noundef %14) #6
  %16 = load ptr, ptr @cfun, align 8, !tbaa !131
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !132
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !134
  tail call void @sbitmap_vector_ones(ptr noundef %2, i32 noundef %20) #6
  %21 = load ptr, ptr @cfun, align 8, !tbaa !131
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !132
  %24 = load ptr, ptr %23, align 8, !tbaa !138
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !139
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !142
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %45, label %30, !prof !143

30:                                               ; preds = %4, %30
  %31 = phi ptr [ %36, %30 ], [ %26, %4 ]
  %32 = phi ptr [ %33, %30 ], [ %15, %4 ]
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  store ptr %31, ptr %32, align 8, !tbaa !131
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 2
  store ptr %31, ptr %34, align 8, !tbaa !144
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !139
  %37 = load ptr, ptr @cfun, align 8, !tbaa !131
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !132
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !142
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %43, label %30, !prof !145, !llvm.loop !146

43:                                               ; preds = %30
  %44 = load ptr, ptr %39, align 8, !tbaa !138
  br label %45

45:                                               ; preds = %43, %4
  %46 = phi ptr [ %24, %4 ], [ %44, %43 ]
  %47 = phi ptr [ %23, %4 ], [ %39, %43 ]
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !137
  %50 = add nsw i32 %49, -2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %15, i64 %51
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 1
  %54 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %53) #7
  store i32 0, ptr %6, align 8, !tbaa.struct !148
  %55 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %54, ptr %55, align 8, !tbaa.struct !150
  %56 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %54, ptr noundef nonnull %5) #7, !range !151
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %60, !prof !143

58:                                               ; preds = %60, %45
  %59 = icmp eq i32 %50, 0
  br i1 %59, label %158, label %73, !prof !143

60:                                               ; preds = %45, %60
  %61 = load ptr, ptr @cfun, align 8, !tbaa !131
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !132
  %64 = load ptr, ptr %63, align 8, !tbaa !138
  %65 = load ptr, ptr %5, align 8, !tbaa !131
  %66 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !152
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 2
  store ptr %64, ptr %68, align 8, !tbaa !144
  call fastcc void @ei_next(ptr noundef nonnull %6) #7
  %69 = load i32, ptr %6, align 8
  %70 = load ptr, ptr %55, align 8
  %71 = call fastcc zeroext i8 @ei_cond(i32 %69, ptr %70, ptr noundef nonnull %5) #7, !range !151
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %58, label %60, !prof !154, !llvm.loop !155

73:                                               ; preds = %58, %154
  %74 = phi ptr [ %156, %154 ], [ %15, %58 ]
  %75 = phi ptr [ %83, %154 ], [ %15, %58 ]
  %76 = phi i32 [ %155, %154 ], [ %50, %58 ]
  %77 = getelementptr inbounds ptr, ptr %75, i64 1
  %78 = load ptr, ptr %75, align 8, !tbaa !131
  %79 = add i32 %76, -1
  %80 = icmp ult ptr %77, %52
  br i1 %80, label %82, label %81, !prof !156

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %73
  %83 = phi ptr [ %15, %81 ], [ %77, %73 ]
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !144
  %86 = load ptr, ptr @cfun, align 8, !tbaa !131
  %87 = getelementptr inbounds %struct.function, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !132
  %89 = load ptr, ptr %88, align 8, !tbaa !138
  %90 = icmp eq ptr %85, %89
  br i1 %90, label %91, label %97, !prof !157

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 9
  %93 = load i32, ptr %92, align 8, !tbaa !158
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds ptr, ptr %3, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !131
  tail call void @sbitmap_zero(ptr noundef %96) #6
  br label %103

97:                                               ; preds = %82
  store ptr null, ptr %84, align 8, !tbaa !144
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 9
  %99 = load i32, ptr %98, align 8, !tbaa !158
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %3, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !131
  tail call void @sbitmap_intersection_of_preds(ptr noundef %102, ptr noundef %2, i32 noundef %99) #6
  br label %103

103:                                              ; preds = %97, %91
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 9
  %105 = load i32, ptr %104, align 8, !tbaa !158
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %2, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !131
  %109 = getelementptr inbounds ptr, ptr %0, i64 %106
  %110 = load ptr, ptr %109, align 8, !tbaa !131
  %111 = getelementptr inbounds ptr, ptr %3, i64 %106
  %112 = load ptr, ptr %111, align 8, !tbaa !131
  %113 = getelementptr inbounds ptr, ptr %1, i64 %106
  %114 = load ptr, ptr %113, align 8, !tbaa !131
  %115 = tail call zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef %108, ptr noundef %110, ptr noundef %112, ptr noundef %114) #6
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %154, label %117, !prof !159

117:                                              ; preds = %103
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 1
  %119 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %118) #7
  store i32 0, ptr %6, align 8, !tbaa.struct !148
  store ptr %119, ptr %55, align 8, !tbaa.struct !150
  %120 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %119, ptr noundef nonnull %5) #7, !range !151
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %154, label %122, !prof !160

122:                                              ; preds = %117, %147
  %123 = phi ptr [ %149, %147 ], [ %74, %117 ]
  %124 = phi i32 [ %148, %147 ], [ %79, %117 ]
  %125 = load ptr, ptr %5, align 8, !tbaa !131
  %126 = getelementptr inbounds %struct.edge_def, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !152
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !144
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %147, !prof !161

131:                                              ; preds = %122
  %132 = load ptr, ptr @cfun, align 8, !tbaa !131
  %133 = getelementptr inbounds %struct.function, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !132
  %135 = getelementptr inbounds %struct.control_flow_graph, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !142
  %137 = icmp eq ptr %127, %136
  br i1 %137, label %147, label %138, !prof !162

138:                                              ; preds = %131
  %139 = getelementptr inbounds ptr, ptr %123, i64 1
  store ptr %127, ptr %123, align 8, !tbaa !131
  %140 = load ptr, ptr %5, align 8, !tbaa !131
  %141 = getelementptr inbounds %struct.edge_def, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !152
  %143 = getelementptr inbounds %struct.basic_block_def, ptr %142, i64 0, i32 2
  store ptr %140, ptr %143, align 8, !tbaa !144
  %144 = add i32 %124, 1
  %145 = icmp ult ptr %139, %52
  br i1 %145, label %147, label %146, !prof !163

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %122, %131, %146, %138
  %148 = phi i32 [ %124, %122 ], [ %144, %146 ], [ %144, %138 ], [ %124, %131 ]
  %149 = phi ptr [ %123, %122 ], [ %15, %146 ], [ %139, %138 ], [ %123, %131 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #7
  %150 = load i32, ptr %6, align 8
  %151 = load ptr, ptr %55, align 8
  %152 = call fastcc zeroext i8 @ei_cond(i32 %150, ptr %151, ptr noundef nonnull %5) #7, !range !151
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %122, !prof !164, !llvm.loop !165

154:                                              ; preds = %147, %117, %103
  %155 = phi i32 [ %79, %103 ], [ %79, %117 ], [ %148, %147 ]
  %156 = phi ptr [ %74, %103 ], [ %74, %117 ], [ %149, %147 ]
  %157 = icmp eq i32 %155, 0
  br i1 %157, label %158, label %73, !prof !166, !llvm.loop !167

158:                                              ; preds = %154, %58
  tail call void @clear_aux_for_edges() #6
  tail call void @clear_aux_for_blocks() #6
  tail call void @free(ptr noundef %15) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_antinout_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !168 !PGOFuncName !169 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  %7 = load ptr, ptr @cfun, align 8, !tbaa !131
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !137
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr @xmalloc(i64 noundef %13) #6
  %15 = load ptr, ptr @cfun, align 8, !tbaa !131
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !132
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !134
  tail call void @sbitmap_vector_ones(ptr noundef %2, i32 noundef %19) #6
  %20 = load ptr, ptr @cfun, align 8, !tbaa !131
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !132
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !142
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !170
  %27 = load ptr, ptr %22, align 8, !tbaa !138
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %44, label %29, !prof !171

29:                                               ; preds = %4, %29
  %30 = phi ptr [ %35, %29 ], [ %26, %4 ]
  %31 = phi ptr [ %32, %29 ], [ %14, %4 ]
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  store ptr %30, ptr %31, align 8, !tbaa !131
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 2
  store ptr %30, ptr %33, align 8, !tbaa !144
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !170
  %36 = load ptr, ptr @cfun, align 8, !tbaa !131
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !132
  %39 = load ptr, ptr %38, align 8, !tbaa !138
  %40 = icmp eq ptr %35, %39
  br i1 %40, label %41, label %29, !prof !172, !llvm.loop !173

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !142
  br label %44

44:                                               ; preds = %41, %4
  %45 = phi ptr [ %24, %4 ], [ %43, %41 ]
  %46 = phi ptr [ %22, %4 ], [ %38, %41 ]
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !137
  %49 = add nsw i32 %48, -2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %14, i64 %50
  %52 = tail call fastcc ptr @ei_start_1(ptr noundef %45) #7
  store i32 0, ptr %6, align 8, !tbaa.struct !148
  %53 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %52, ptr %53, align 8, !tbaa.struct !150
  %54 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %52, ptr noundef nonnull %5) #7, !range !151
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %58, !prof !171

56:                                               ; preds = %58, %44
  %57 = icmp eq i32 %49, 0
  br i1 %57, label %151, label %71, !prof !171

58:                                               ; preds = %44, %58
  %59 = load ptr, ptr @cfun, align 8, !tbaa !131
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !132
  %62 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !142
  %64 = load ptr, ptr %5, align 8, !tbaa !131
  %65 = load ptr, ptr %64, align 8, !tbaa !174
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 2
  store ptr %63, ptr %66, align 8, !tbaa !144
  call fastcc void @ei_next(ptr noundef nonnull %6) #7
  %67 = load i32, ptr %6, align 8
  %68 = load ptr, ptr %53, align 8
  %69 = call fastcc zeroext i8 @ei_cond(i32 %67, ptr %68, ptr noundef nonnull %5) #7, !range !151
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %56, label %58, !prof !175, !llvm.loop !176

71:                                               ; preds = %56, %147
  %72 = phi ptr [ %149, %147 ], [ %14, %56 ]
  %73 = phi ptr [ %79, %147 ], [ %14, %56 ]
  %74 = phi i32 [ %148, %147 ], [ %49, %56 ]
  %75 = getelementptr inbounds ptr, ptr %73, i64 1
  %76 = load ptr, ptr %73, align 8, !tbaa !131
  %77 = add i32 %74, -1
  %78 = icmp ult ptr %75, %51
  %79 = select i1 %78, ptr %75, ptr %14, !prof !177
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !144
  %82 = load ptr, ptr @cfun, align 8, !tbaa !131
  %83 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !132
  %85 = getelementptr inbounds %struct.control_flow_graph, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !142
  %87 = icmp eq ptr %81, %86
  br i1 %87, label %88, label %94, !prof !178

88:                                               ; preds = %71
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !158
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %3, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !131
  tail call void @sbitmap_zero(ptr noundef %93) #6
  br label %100

94:                                               ; preds = %71
  store ptr null, ptr %80, align 8, !tbaa !144
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %96 = load i32, ptr %95, align 8, !tbaa !158
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %3, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !131
  tail call void @sbitmap_intersection_of_succs(ptr noundef %99, ptr noundef %2, i32 noundef %96) #6
  br label %100

100:                                              ; preds = %94, %88
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %102 = load i32, ptr %101, align 8, !tbaa !158
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %2, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !131
  %106 = getelementptr inbounds ptr, ptr %0, i64 %103
  %107 = load ptr, ptr %106, align 8, !tbaa !131
  %108 = getelementptr inbounds ptr, ptr %1, i64 %103
  %109 = load ptr, ptr %108, align 8, !tbaa !131
  %110 = getelementptr inbounds ptr, ptr %3, i64 %103
  %111 = load ptr, ptr %110, align 8, !tbaa !131
  %112 = tail call zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr noundef %105, ptr noundef %107, ptr noundef %109, ptr noundef %111) #6
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %147, label %114, !prof !179

114:                                              ; preds = %100
  %115 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %76) #7
  store i32 0, ptr %6, align 8, !tbaa.struct !148
  store ptr %115, ptr %53, align 8, !tbaa.struct !150
  %116 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %115, ptr noundef nonnull %5) #7, !range !151
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %147, label %118, !prof !180

118:                                              ; preds = %114, %140
  %119 = phi ptr [ %142, %140 ], [ %72, %114 ]
  %120 = phi i32 [ %141, %140 ], [ %77, %114 ]
  %121 = load ptr, ptr %5, align 8, !tbaa !131
  %122 = load ptr, ptr %121, align 8, !tbaa !174
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !144
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %140, !prof !181

126:                                              ; preds = %118
  %127 = load ptr, ptr @cfun, align 8, !tbaa !131
  %128 = getelementptr inbounds %struct.function, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !132
  %130 = load ptr, ptr %129, align 8, !tbaa !138
  %131 = icmp eq ptr %122, %130
  br i1 %131, label %140, label %132, !prof !182

132:                                              ; preds = %126
  %133 = getelementptr inbounds ptr, ptr %119, i64 1
  store ptr %122, ptr %119, align 8, !tbaa !131
  %134 = load ptr, ptr %5, align 8, !tbaa !131
  %135 = load ptr, ptr %134, align 8, !tbaa !174
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 2
  store ptr %134, ptr %136, align 8, !tbaa !144
  %137 = add i32 %120, 1
  %138 = icmp ult ptr %133, %51
  br i1 %138, label %140, label %139, !prof !183

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %118, %126, %139, %132
  %141 = phi i32 [ %120, %118 ], [ %137, %139 ], [ %137, %132 ], [ %120, %126 ]
  %142 = phi ptr [ %119, %118 ], [ %14, %139 ], [ %133, %132 ], [ %119, %126 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #7
  %143 = load i32, ptr %6, align 8
  %144 = load ptr, ptr %53, align 8
  %145 = call fastcc zeroext i8 @ei_cond(i32 %143, ptr %144, ptr noundef nonnull %5) #7, !range !151
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %118, !prof !184, !llvm.loop !185

147:                                              ; preds = %140, %114, %100
  %148 = phi i32 [ %77, %100 ], [ %77, %114 ], [ %141, %140 ]
  %149 = phi ptr [ %72, %100 ], [ %72, %114 ], [ %142, %140 ]
  %150 = icmp eq i32 %148, 0
  br i1 %150, label %151, label %71, !prof !186, !llvm.loop !187

151:                                              ; preds = %147, %56
  tail call void @clear_aux_for_edges() #6
  tail call void @clear_aux_for_blocks() #6
  tail call void @free(ptr noundef %14) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_earliest(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #0 !prof !124 !PGOFuncName !188 {
  %8 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !125
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %1) #6
  %11 = tail call ptr @sbitmap_alloc(i32 noundef %1) #6
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %13, label %68, !prof !189

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %15 = zext nneg i32 %9 to i64
  br label %16

16:                                               ; preds = %13, %65
  %17 = phi i64 [ 0, %13 ], [ %66, %65 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !190
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !131
  %21 = load ptr, ptr %20, align 8, !tbaa !174
  %22 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !152
  %24 = load ptr, ptr @cfun, align 8, !tbaa !131
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !132
  %27 = load ptr, ptr %26, align 8, !tbaa !138
  %28 = icmp eq ptr %21, %27
  br i1 %28, label %29, label %37, !prof !191

29:                                               ; preds = %16
  %30 = getelementptr inbounds ptr, ptr %6, i64 %17
  %31 = load ptr, ptr %30, align 8, !tbaa !131
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !158
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !131
  tail call void @sbitmap_copy(ptr noundef %31, ptr noundef %36) #6
  br label %65

37:                                               ; preds = %16
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !142
  %40 = icmp eq ptr %23, %39
  br i1 %40, label %41, label %44, !prof !192

41:                                               ; preds = %37
  %42 = getelementptr inbounds ptr, ptr %6, i64 %17
  %43 = load ptr, ptr %42, align 8, !tbaa !131
  tail call void @sbitmap_zero(ptr noundef %43) #6
  br label %65

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !158
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !131
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !158
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %4, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !131
  tail call void @sbitmap_difference(ptr noundef %10, ptr noundef %49, ptr noundef %54) #6
  %55 = load i32, ptr %50, align 8, !tbaa !158
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %3, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !131
  tail call void @sbitmap_not(ptr noundef %11, ptr noundef %58) #6
  %59 = getelementptr inbounds ptr, ptr %6, i64 %17
  %60 = load ptr, ptr %59, align 8, !tbaa !131
  %61 = load i32, ptr %50, align 8, !tbaa !158
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %5, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !131
  tail call void @sbitmap_a_and_b_or_c(ptr noundef %60, ptr noundef %10, ptr noundef %64, ptr noundef %11) #6
  br label %65

65:                                               ; preds = %29, %44, %41
  %66 = add nuw nsw i64 %17, 1
  %67 = icmp eq i64 %66, %15
  br i1 %67, label %68, label %16, !prof !193, !llvm.loop !194

68:                                               ; preds = %65, %7
  %69 = load ptr, ptr %11, align 8, !tbaa !195
  tail call void @free(ptr noundef %69) #7
  tail call void @free(ptr noundef %11) #7
  %70 = load ptr, ptr %10, align 8, !tbaa !195
  tail call void @free(ptr noundef %70) #7
  tail call void @free(ptr noundef %10) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_laterin(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !124 !PGOFuncName !197 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  %8 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !125
  %10 = load ptr, ptr @cfun, align 8, !tbaa !131
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !132
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !137
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call ptr @xmalloc(i64 noundef %16) #6
  %18 = icmp sgt i32 %9, 0
  br i1 %18, label %19, label %31, !prof !189

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !190
  %22 = zext nneg i32 %9 to i64
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i64 [ 0, %19 ], [ %29, %23 ]
  %25 = inttoptr i64 %24 to ptr
  %26 = getelementptr inbounds ptr, ptr %21, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !131
  %28 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 3
  store ptr %25, ptr %28, align 8, !tbaa !198
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, %22
  br i1 %30, label %31, label %23, !prof !193, !llvm.loop !199

31:                                               ; preds = %23, %5
  tail call void @sbitmap_vector_ones(ptr noundef %3, i32 noundef %9) #6
  %32 = load ptr, ptr @cfun, align 8, !tbaa !131
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !132
  %35 = load ptr, ptr %34, align 8, !tbaa !138
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 1
  %37 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %36) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !148
  %38 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %37, ptr %38, align 8, !tbaa.struct !150
  %39 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %6) #7, !range !151
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %54, label %41, !prof !200

41:                                               ; preds = %31, %41
  %42 = load ptr, ptr %6, align 8, !tbaa !131
  %43 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !198
  %45 = ptrtoint ptr %44 to i64
  %46 = getelementptr inbounds ptr, ptr %3, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !131
  %48 = getelementptr inbounds ptr, ptr %1, i64 %45
  %49 = load ptr, ptr %48, align 8, !tbaa !131
  tail call void @sbitmap_copy(ptr noundef %47, ptr noundef %49) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %50 = load i32, ptr %7, align 8
  %51 = load ptr, ptr %38, align 8
  %52 = call fastcc zeroext i8 @ei_cond(i32 %50, ptr %51, ptr noundef nonnull %6) #7, !range !151
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %41, !prof !189, !llvm.loop !201

54:                                               ; preds = %41, %31
  %55 = load ptr, ptr @cfun, align 8, !tbaa !131
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !132
  %58 = load ptr, ptr %57, align 8, !tbaa !138
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !139
  %61 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !142
  %63 = icmp eq ptr %60, %62
  br i1 %63, label %77, label %64, !prof !200

64:                                               ; preds = %54, %64
  %65 = phi ptr [ %70, %64 ], [ %60, %54 ]
  %66 = phi ptr [ %67, %64 ], [ %17, %54 ]
  %67 = getelementptr inbounds ptr, ptr %66, i64 1
  store ptr %65, ptr %66, align 8, !tbaa !131
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 2
  store ptr %65, ptr %68, align 8, !tbaa !144
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !139
  %71 = load ptr, ptr @cfun, align 8, !tbaa !131
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !132
  %74 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !142
  %76 = icmp eq ptr %70, %75
  br i1 %76, label %77, label %64, !prof !202, !llvm.loop !203

77:                                               ; preds = %64, %54
  %78 = phi ptr [ %55, %54 ], [ %71, %64 ]
  %79 = phi ptr [ %57, %54 ], [ %73, %64 ]
  %80 = getelementptr inbounds %struct.control_flow_graph, ptr %79, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !137
  %82 = add nsw i32 %81, -2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %17, i64 %83
  %85 = icmp eq i32 %82, 0
  br i1 %85, label %180, label %90, !prof !200

86:                                               ; preds = %171, %123
  %87 = phi i32 [ %97, %123 ], [ %172, %171 ]
  %88 = phi ptr [ %91, %123 ], [ %173, %171 ]
  %89 = icmp eq i32 %87, 0
  br i1 %89, label %178, label %90, !prof !204, !llvm.loop !205

90:                                               ; preds = %77, %86
  %91 = phi ptr [ %88, %86 ], [ %17, %77 ]
  %92 = phi ptr [ %99, %86 ], [ %17, %77 ]
  %93 = phi i32 [ %87, %86 ], [ %82, %77 ]
  %94 = getelementptr inbounds ptr, ptr %92, i64 1
  %95 = load ptr, ptr %92, align 8, !tbaa !131
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 2
  store ptr null, ptr %96, align 8, !tbaa !144
  %97 = add i32 %93, -1
  %98 = icmp ult ptr %94, %84
  %99 = select i1 %98, ptr %94, ptr %17, !prof !206
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 9
  %101 = load i32, ptr %100, align 8, !tbaa !158
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds ptr, ptr %4, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !131
  tail call void @sbitmap_ones(ptr noundef %104) #6
  %105 = tail call fastcc ptr @ei_start_1(ptr noundef %95) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !148
  store ptr %105, ptr %38, align 8, !tbaa.struct !150
  %106 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %105, ptr noundef nonnull %6) #7, !range !151
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %123, label %108, !prof !207

108:                                              ; preds = %90, %108
  %109 = load i32, ptr %100, align 8, !tbaa !158
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %4, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !131
  %113 = load ptr, ptr %6, align 8, !tbaa !131
  %114 = getelementptr inbounds %struct.edge_def, ptr %113, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !198
  %116 = ptrtoint ptr %115 to i64
  %117 = getelementptr inbounds ptr, ptr %3, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !131
  tail call void @sbitmap_a_and_b(ptr noundef %112, ptr noundef %112, ptr noundef %118) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %119 = load i32, ptr %7, align 8
  %120 = load ptr, ptr %38, align 8
  %121 = call fastcc zeroext i8 @ei_cond(i32 %119, ptr %120, ptr noundef nonnull %6) #7, !range !151
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %108, !prof !208, !llvm.loop !209

123:                                              ; preds = %108, %90
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 1
  %125 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %124) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !148
  store ptr %125, ptr %38, align 8, !tbaa.struct !150
  %126 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %125, ptr noundef nonnull %6) #7, !range !151
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %86, label %128, !prof !207

128:                                              ; preds = %123, %171
  %129 = phi ptr [ %173, %171 ], [ %91, %123 ]
  %130 = phi i32 [ %172, %171 ], [ %97, %123 ]
  %131 = load ptr, ptr %6, align 8, !tbaa !131
  %132 = getelementptr inbounds %struct.edge_def, ptr %131, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !198
  %134 = ptrtoint ptr %133 to i64
  %135 = getelementptr inbounds ptr, ptr %3, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !131
  %137 = getelementptr inbounds ptr, ptr %1, i64 %134
  %138 = load ptr, ptr %137, align 8, !tbaa !131
  %139 = load ptr, ptr %131, align 8, !tbaa !174
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 9
  %141 = load i32, ptr %140, align 8, !tbaa !158
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds ptr, ptr %4, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !131
  %145 = getelementptr inbounds ptr, ptr %2, i64 %142
  %146 = load ptr, ptr %145, align 8, !tbaa !131
  %147 = tail call zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef %136, ptr noundef %138, ptr noundef %144, ptr noundef %146) #6
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %171, label %149, !prof !210

149:                                              ; preds = %128
  %150 = getelementptr inbounds %struct.edge_def, ptr %131, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !152
  %152 = load ptr, ptr @cfun, align 8, !tbaa !131
  %153 = getelementptr inbounds %struct.function, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !132
  %155 = getelementptr inbounds %struct.control_flow_graph, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !142
  %157 = icmp eq ptr %151, %156
  br i1 %157, label %171, label %158, !prof !211

158:                                              ; preds = %149
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %151, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !144
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %171, !prof !212

162:                                              ; preds = %158
  %163 = getelementptr inbounds ptr, ptr %129, i64 1
  store ptr %151, ptr %129, align 8, !tbaa !131
  %164 = load ptr, ptr %6, align 8, !tbaa !131
  %165 = getelementptr inbounds %struct.edge_def, ptr %164, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !152
  %167 = getelementptr inbounds %struct.basic_block_def, ptr %166, i64 0, i32 2
  store ptr %164, ptr %167, align 8, !tbaa !144
  %168 = add i32 %130, 1
  %169 = icmp ult ptr %163, %84
  br i1 %169, label %171, label %170, !prof !213

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %128, %149, %158, %170, %162
  %172 = phi i32 [ %168, %170 ], [ %168, %162 ], [ %130, %158 ], [ %130, %149 ], [ %130, %128 ]
  %173 = phi ptr [ %17, %170 ], [ %163, %162 ], [ %129, %158 ], [ %129, %149 ], [ %129, %128 ]
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %174 = load i32, ptr %7, align 8
  %175 = load ptr, ptr %38, align 8
  %176 = call fastcc zeroext i8 @ei_cond(i32 %174, ptr %175, ptr noundef nonnull %6) #7, !range !151
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %86, label %128, !prof !214, !llvm.loop !215

178:                                              ; preds = %86
  %179 = load ptr, ptr @cfun, align 8, !tbaa !131
  br label %180

180:                                              ; preds = %178, %77
  %181 = phi ptr [ %179, %178 ], [ %78, %77 ]
  %182 = getelementptr inbounds %struct.function, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !132
  %184 = getelementptr inbounds %struct.control_flow_graph, ptr %183, i64 0, i32 5
  %185 = load i32, ptr %184, align 8, !tbaa !134
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds ptr, ptr %4, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !131
  tail call void @sbitmap_ones(ptr noundef %188) #6
  %189 = load ptr, ptr @cfun, align 8, !tbaa !131
  %190 = getelementptr inbounds %struct.function, ptr %189, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !132
  %192 = getelementptr inbounds %struct.control_flow_graph, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !142
  %194 = tail call fastcc ptr @ei_start_1(ptr noundef %193) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !148
  store ptr %194, ptr %38, align 8, !tbaa.struct !150
  %195 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %194, ptr noundef nonnull %6) #7, !range !151
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %216, label %197, !prof !200

197:                                              ; preds = %180, %197
  %198 = load ptr, ptr @cfun, align 8, !tbaa !131
  %199 = getelementptr inbounds %struct.function, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !132
  %201 = getelementptr inbounds %struct.control_flow_graph, ptr %200, i64 0, i32 5
  %202 = load i32, ptr %201, align 8, !tbaa !134
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds ptr, ptr %4, i64 %203
  %205 = load ptr, ptr %204, align 8, !tbaa !131
  %206 = load ptr, ptr %6, align 8, !tbaa !131
  %207 = getelementptr inbounds %struct.edge_def, ptr %206, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !198
  %209 = ptrtoint ptr %208 to i64
  %210 = getelementptr inbounds ptr, ptr %3, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !131
  tail call void @sbitmap_a_and_b(ptr noundef %205, ptr noundef %205, ptr noundef %211) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %212 = load i32, ptr %7, align 8
  %213 = load ptr, ptr %38, align 8
  %214 = call fastcc zeroext i8 @ei_cond(i32 %212, ptr %213, ptr noundef nonnull %6) #7, !range !151
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %216, label %197, !prof !216, !llvm.loop !217

216:                                              ; preds = %197, %180
  tail call void @clear_aux_for_edges() #6
  tail call void @free(ptr noundef %17) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_insert_delete(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !prof !124 !PGOFuncName !218 {
  %7 = load ptr, ptr @cfun, align 8, !tbaa !131
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  %10 = load ptr, ptr %9, align 8, !tbaa !138
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !142
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %22, !prof !200

16:                                               ; preds = %22, %6
  %17 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !125
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %69, !prof !189

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  br label %41

22:                                               ; preds = %6, %22
  %23 = phi ptr [ %34, %22 ], [ %12, %6 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !158
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %5, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !131
  %29 = getelementptr inbounds ptr, ptr %1, i64 %26
  %30 = load ptr, ptr %29, align 8, !tbaa !131
  %31 = getelementptr inbounds ptr, ptr %3, i64 %26
  %32 = load ptr, ptr %31, align 8, !tbaa !131
  tail call void @sbitmap_difference(ptr noundef %28, ptr noundef %30, ptr noundef %32) #6
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !139
  %35 = load ptr, ptr @cfun, align 8, !tbaa !131
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !132
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !142
  %40 = icmp eq ptr %34, %39
  br i1 %40, label %16, label %22, !prof !202, !llvm.loop !219

41:                                               ; preds = %20, %41
  %42 = phi i64 [ 0, %20 ], [ %65, %41 ]
  %43 = load ptr, ptr %21, align 8, !tbaa !190
  %44 = getelementptr inbounds ptr, ptr %43, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !131
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !152
  %48 = load ptr, ptr @cfun, align 8, !tbaa !131
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !132
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !142
  %53 = icmp eq ptr %47, %52
  %54 = getelementptr inbounds ptr, ptr %4, i64 %42
  %55 = load ptr, ptr %54, align 8, !tbaa !131
  %56 = getelementptr inbounds ptr, ptr %2, i64 %42
  %57 = load ptr, ptr %56, align 8, !tbaa !131
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 5
  %60 = select i1 %53, ptr %59, ptr %58, !prof !220
  %61 = load i32, ptr %60, align 8, !tbaa !149
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %3, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !131
  tail call void @sbitmap_difference(ptr noundef %55, ptr noundef %57, ptr noundef %64) #6
  %65 = add nuw nsw i64 %42, 1
  %66 = load i32, ptr %17, align 4, !tbaa !125
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %41, label %69, !prof !221, !llvm.loop !222

69:                                               ; preds = %41, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_vector_ones(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #4 !prof !223 !PGOFuncName !224 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !225 !PGOFuncName !226 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #7, !range !151
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !227

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #7
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !131
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !228 !PGOFuncName !229 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !230

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #7
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #7
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !231

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !232
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !232
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_intersection_of_succs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @clear_aux_for_edges() local_unnamed_addr #2

; Function Attrs: optsize
declare void @clear_aux_for_blocks() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !225 !PGOFuncName !234 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !235

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #7
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #7
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !228 !PGOFuncName !236 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !230

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #7
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #7
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !237 !PGOFuncName !238 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !239

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !240
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !242 !PGOFuncName !243 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !244

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #6
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !131
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !228 !PGOFuncName !245 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_difference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_not(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_a_and_b_or_c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_a_and_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_intersection_of_preds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @pre_edge_rev_lcm(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 !prof !246 {
  %8 = tail call ptr @create_edge_list() #6
  %9 = getelementptr inbounds %struct.edge_list, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !125
  %11 = load ptr, ptr @cfun, align 8, !tbaa !131
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !132
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !134
  %16 = tail call ptr @sbitmap_vector_alloc(i32 noundef %15, i32 noundef %0) #6
  %17 = load ptr, ptr @cfun, align 8, !tbaa !131
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !132
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !134
  %22 = tail call ptr @sbitmap_vector_alloc(i32 noundef %21, i32 noundef %0) #6
  %23 = load ptr, ptr @cfun, align 8, !tbaa !131
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !132
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !134
  tail call void @sbitmap_vector_zero(ptr noundef %16, i32 noundef %27) #6
  %28 = load ptr, ptr @cfun, align 8, !tbaa !131
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !132
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !134
  tail call void @sbitmap_vector_zero(ptr noundef %22, i32 noundef %32) #6
  tail call fastcc void @compute_antinout_edge(ptr noundef %3, ptr noundef %1, ptr noundef %16, ptr noundef %22) #7
  %33 = load ptr, ptr @cfun, align 8, !tbaa !131
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !132
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !134
  %38 = tail call ptr @sbitmap_vector_alloc(i32 noundef %37, i32 noundef %0) #6
  %39 = load ptr, ptr @cfun, align 8, !tbaa !131
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !132
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !134
  %44 = tail call ptr @sbitmap_vector_alloc(i32 noundef %43, i32 noundef %0) #6
  tail call void @compute_available(ptr noundef %2, ptr noundef %4, ptr noundef %38, ptr noundef %44) #7
  %45 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  tail call fastcc void @compute_farthest(ptr noundef %8, i32 noundef %0, ptr noundef %38, ptr noundef %44, ptr noundef %16, ptr noundef %4, ptr noundef %45) #7
  tail call void @free(ptr noundef %16) #7
  tail call void @free(ptr noundef %22) #7
  tail call void @free(ptr noundef %44) #7
  tail call void @free(ptr noundef %38) #7
  %46 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  %47 = load ptr, ptr @cfun, align 8, !tbaa !131
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !132
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !134
  %52 = add nsw i32 %51, 1
  %53 = tail call ptr @sbitmap_vector_alloc(i32 noundef %52, i32 noundef %0) #6
  tail call fastcc void @compute_nearerout(ptr noundef %8, ptr noundef %45, ptr noundef %2, ptr noundef %46, ptr noundef %53) #7
  tail call void @free(ptr noundef %45) #7
  %54 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  store ptr %54, ptr %5, align 8, !tbaa !131
  %55 = load ptr, ptr @cfun, align 8, !tbaa !131
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !132
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !134
  %60 = tail call ptr @sbitmap_vector_alloc(i32 noundef %59, i32 noundef %0) #6
  store ptr %60, ptr %6, align 8, !tbaa !131
  %61 = load ptr, ptr %5, align 8, !tbaa !131
  tail call fastcc void @compute_rev_insert_delete(ptr noundef %8, ptr noundef %2, ptr noundef %46, ptr noundef %53, ptr noundef %61, ptr noundef %60) #7
  tail call void @free(ptr noundef %53) #7
  tail call void @free(ptr noundef %46) #7
  ret ptr %8
}

; Function Attrs: optsize
declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_farthest(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #0 !prof !246 !PGOFuncName !247 {
  %8 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !125
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %1) #6
  %11 = tail call ptr @sbitmap_alloc(i32 noundef %1) #6
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %13, label %68, !prof !248

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %15 = zext nneg i32 %9 to i64
  br label %16

16:                                               ; preds = %13, %65
  %17 = phi i64 [ 0, %13 ], [ %66, %65 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !190
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !131
  %21 = load ptr, ptr %20, align 8, !tbaa !174
  %22 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !152
  %24 = load ptr, ptr @cfun, align 8, !tbaa !131
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !132
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !142
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %30, label %38, !prof !249

30:                                               ; preds = %16
  %31 = getelementptr inbounds ptr, ptr %6, i64 %17
  %32 = load ptr, ptr %31, align 8, !tbaa !131
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !158
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %2, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !131
  tail call void @sbitmap_copy(ptr noundef %32, ptr noundef %37) #6
  br label %65

38:                                               ; preds = %16
  %39 = load ptr, ptr %26, align 8, !tbaa !138
  %40 = icmp eq ptr %21, %39
  br i1 %40, label %41, label %44, !prof !250

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %6, i64 %17
  %43 = load ptr, ptr %42, align 8, !tbaa !131
  tail call void @sbitmap_zero(ptr noundef %43) #6
  br label %65

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !158
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !131
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !158
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %4, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !131
  tail call void @sbitmap_difference(ptr noundef %10, ptr noundef %49, ptr noundef %54) #6
  %55 = load i32, ptr %50, align 8, !tbaa !158
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %3, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !131
  tail call void @sbitmap_not(ptr noundef %11, ptr noundef %58) #6
  %59 = getelementptr inbounds ptr, ptr %6, i64 %17
  %60 = load ptr, ptr %59, align 8, !tbaa !131
  %61 = load i32, ptr %50, align 8, !tbaa !158
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %5, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !131
  tail call void @sbitmap_a_and_b_or_c(ptr noundef %60, ptr noundef %10, ptr noundef %64, ptr noundef %11) #6
  br label %65

65:                                               ; preds = %30, %44, %41
  %66 = add nuw nsw i64 %17, 1
  %67 = icmp eq i64 %66, %15
  br i1 %67, label %68, label %16, !prof !251, !llvm.loop !252

68:                                               ; preds = %65, %7
  %69 = load ptr, ptr %11, align 8, !tbaa !195
  tail call void @free(ptr noundef %69) #7
  tail call void @free(ptr noundef %11) #7
  %70 = load ptr, ptr %10, align 8, !tbaa !195
  tail call void @free(ptr noundef %70) #7
  tail call void @free(ptr noundef %10) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_nearerout(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !246 !PGOFuncName !253 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  %8 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !125
  %10 = load ptr, ptr @cfun, align 8, !tbaa !131
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !132
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !137
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  %18 = tail call ptr @xmalloc(i64 noundef %17) #6
  %19 = icmp sgt i32 %9, 0
  br i1 %19, label %20, label %32, !prof !248

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !190
  %23 = zext nneg i32 %9 to i64
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi i64 [ 0, %20 ], [ %30, %24 ]
  %26 = inttoptr i64 %25 to ptr
  %27 = getelementptr inbounds ptr, ptr %22, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !131
  %29 = getelementptr inbounds %struct.edge_def, ptr %28, i64 0, i32 3
  store ptr %26, ptr %29, align 8, !tbaa !198
  %30 = add nuw nsw i64 %25, 1
  %31 = icmp eq i64 %30, %23
  br i1 %31, label %32, label %24, !prof !251, !llvm.loop !254

32:                                               ; preds = %24, %5
  tail call void @sbitmap_vector_ones(ptr noundef %3, i32 noundef %9) #6
  %33 = load ptr, ptr @cfun, align 8, !tbaa !131
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !132
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !142
  %38 = tail call fastcc ptr @ei_start_1(ptr noundef %37) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !148
  %39 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %38, ptr %39, align 8, !tbaa.struct !150
  %40 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %38, ptr noundef nonnull %6) #7, !range !151
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %55, label %42, !prof !255

42:                                               ; preds = %32, %42
  %43 = load ptr, ptr %6, align 8, !tbaa !131
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !198
  %46 = ptrtoint ptr %45 to i64
  %47 = getelementptr inbounds ptr, ptr %3, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !131
  %49 = getelementptr inbounds ptr, ptr %1, i64 %46
  %50 = load ptr, ptr %49, align 8, !tbaa !131
  tail call void @sbitmap_copy(ptr noundef %48, ptr noundef %50) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %51 = load i32, ptr %7, align 8
  %52 = load ptr, ptr %39, align 8
  %53 = call fastcc zeroext i8 @ei_cond(i32 %51, ptr %52, ptr noundef nonnull %6) #7, !range !151
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %42, !prof !256, !llvm.loop !257

55:                                               ; preds = %42, %32
  %56 = load ptr, ptr @cfun, align 8, !tbaa !131
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !132
  %59 = load ptr, ptr %58, align 8, !tbaa !138
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !139
  %62 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !142
  %64 = icmp eq ptr %61, %63
  br i1 %64, label %159, label %65, !prof !255

65:                                               ; preds = %55, %65
  %66 = phi ptr [ %71, %65 ], [ %61, %55 ]
  %67 = phi ptr [ %68, %65 ], [ %18, %55 ]
  %68 = getelementptr inbounds ptr, ptr %67, i64 1
  store ptr %66, ptr %67, align 8, !tbaa !131
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 2
  store ptr %66, ptr %69, align 8, !tbaa !144
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !139
  %72 = load ptr, ptr @cfun, align 8, !tbaa !131
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !132
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !142
  %77 = icmp eq ptr %71, %76
  br i1 %77, label %81, label %65, !prof !258, !llvm.loop !259

78:                                               ; preds = %151, %110
  %79 = phi ptr [ %83, %110 ], [ %152, %151 ]
  %80 = icmp eq ptr %79, %18
  br i1 %80, label %157, label %81, !prof !260, !llvm.loop !261

81:                                               ; preds = %65, %78
  %82 = phi ptr [ %79, %78 ], [ %68, %65 ]
  %83 = getelementptr inbounds ptr, ptr %82, i64 -1
  %84 = load ptr, ptr %83, align 8, !tbaa !131
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 2
  store ptr null, ptr %85, align 8, !tbaa !144
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !158
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds ptr, ptr %4, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !131
  tail call void @sbitmap_ones(ptr noundef %90) #6
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 1
  %92 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %91) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !148
  store ptr %92, ptr %39, align 8, !tbaa.struct !150
  %93 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %92, ptr noundef nonnull %6) #7, !range !151
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %110, label %95, !prof !262

95:                                               ; preds = %81, %95
  %96 = load i32, ptr %86, align 8, !tbaa !158
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %4, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !131
  %100 = load ptr, ptr %6, align 8, !tbaa !131
  %101 = getelementptr inbounds %struct.edge_def, ptr %100, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !198
  %103 = ptrtoint ptr %102 to i64
  %104 = getelementptr inbounds ptr, ptr %3, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !131
  tail call void @sbitmap_a_and_b(ptr noundef %99, ptr noundef %99, ptr noundef %105) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %106 = load i32, ptr %7, align 8
  %107 = load ptr, ptr %39, align 8
  %108 = call fastcc zeroext i8 @ei_cond(i32 %106, ptr %107, ptr noundef nonnull %6) #7, !range !151
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %95, !prof !263, !llvm.loop !264

110:                                              ; preds = %95, %81
  %111 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %84) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !148
  store ptr %111, ptr %39, align 8, !tbaa.struct !150
  %112 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %111, ptr noundef nonnull %6) #7, !range !151
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %78, label %114, !prof !262

114:                                              ; preds = %110, %151
  %115 = phi ptr [ %152, %151 ], [ %83, %110 ]
  %116 = load ptr, ptr %6, align 8, !tbaa !131
  %117 = getelementptr inbounds %struct.edge_def, ptr %116, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !198
  %119 = ptrtoint ptr %118 to i64
  %120 = getelementptr inbounds ptr, ptr %3, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !131
  %122 = getelementptr inbounds ptr, ptr %1, i64 %119
  %123 = load ptr, ptr %122, align 8, !tbaa !131
  %124 = getelementptr inbounds %struct.edge_def, ptr %116, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !152
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 9
  %127 = load i32, ptr %126, align 8, !tbaa !158
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds ptr, ptr %4, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !131
  %131 = getelementptr inbounds ptr, ptr %2, i64 %128
  %132 = load ptr, ptr %131, align 8, !tbaa !131
  %133 = tail call zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef %121, ptr noundef %123, ptr noundef %130, ptr noundef %132) #6
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %151, label %135, !prof !265

135:                                              ; preds = %114
  %136 = load ptr, ptr %116, align 8, !tbaa !174
  %137 = load ptr, ptr @cfun, align 8, !tbaa !131
  %138 = getelementptr inbounds %struct.function, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !132
  %140 = load ptr, ptr %139, align 8, !tbaa !138
  %141 = icmp eq ptr %136, %140
  br i1 %141, label %151, label %142, !prof !266

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.basic_block_def, ptr %136, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !144
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %151, !prof !267

146:                                              ; preds = %142
  %147 = getelementptr inbounds ptr, ptr %115, i64 1
  store ptr %136, ptr %115, align 8, !tbaa !131
  %148 = load ptr, ptr %6, align 8, !tbaa !131
  %149 = load ptr, ptr %148, align 8, !tbaa !174
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %149, i64 0, i32 2
  store ptr %148, ptr %150, align 8, !tbaa !144
  br label %151

151:                                              ; preds = %114, %135, %142, %146
  %152 = phi ptr [ %147, %146 ], [ %115, %142 ], [ %115, %135 ], [ %115, %114 ]
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %153 = load i32, ptr %7, align 8
  %154 = load ptr, ptr %39, align 8
  %155 = call fastcc zeroext i8 @ei_cond(i32 %153, ptr %154, ptr noundef nonnull %6) #7, !range !151
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %78, label %114, !prof !268, !llvm.loop !269

157:                                              ; preds = %78
  %158 = load ptr, ptr @cfun, align 8, !tbaa !131
  br label %159

159:                                              ; preds = %55, %157
  %160 = phi ptr [ %158, %157 ], [ %56, %55 ]
  %161 = getelementptr inbounds %struct.function, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !132
  %163 = getelementptr inbounds %struct.control_flow_graph, ptr %162, i64 0, i32 5
  %164 = load i32, ptr %163, align 8, !tbaa !134
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds ptr, ptr %4, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !131
  tail call void @sbitmap_ones(ptr noundef %167) #6
  %168 = load ptr, ptr @cfun, align 8, !tbaa !131
  %169 = getelementptr inbounds %struct.function, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !132
  %171 = load ptr, ptr %170, align 8, !tbaa !138
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 1
  %173 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %172) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !148
  store ptr %173, ptr %39, align 8, !tbaa.struct !150
  %174 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %173, ptr noundef nonnull %6) #7, !range !151
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %195, label %176, !prof !255

176:                                              ; preds = %159, %176
  %177 = load ptr, ptr @cfun, align 8, !tbaa !131
  %178 = getelementptr inbounds %struct.function, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !132
  %180 = getelementptr inbounds %struct.control_flow_graph, ptr %179, i64 0, i32 5
  %181 = load i32, ptr %180, align 8, !tbaa !134
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds ptr, ptr %4, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !131
  %185 = load ptr, ptr %6, align 8, !tbaa !131
  %186 = getelementptr inbounds %struct.edge_def, ptr %185, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !198
  %188 = ptrtoint ptr %187 to i64
  %189 = getelementptr inbounds ptr, ptr %3, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !131
  tail call void @sbitmap_a_and_b(ptr noundef %184, ptr noundef %184, ptr noundef %190) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %191 = load i32, ptr %7, align 8
  %192 = load ptr, ptr %39, align 8
  %193 = call fastcc zeroext i8 @ei_cond(i32 %191, ptr %192, ptr noundef nonnull %6) #7, !range !151
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %176, !prof !248, !llvm.loop !270

195:                                              ; preds = %176, %159
  tail call void @clear_aux_for_edges() #6
  tail call void @free(ptr noundef %18) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_rev_insert_delete(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !prof !246 !PGOFuncName !271 {
  %7 = load ptr, ptr @cfun, align 8, !tbaa !131
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  %10 = load ptr, ptr %9, align 8, !tbaa !138
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !142
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %22, !prof !255

16:                                               ; preds = %22, %6
  %17 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !125
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %70, !prof !248

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  br label %41

22:                                               ; preds = %6, %22
  %23 = phi ptr [ %34, %22 ], [ %12, %6 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !158
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %5, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !131
  %29 = getelementptr inbounds ptr, ptr %1, i64 %26
  %30 = load ptr, ptr %29, align 8, !tbaa !131
  %31 = getelementptr inbounds ptr, ptr %3, i64 %26
  %32 = load ptr, ptr %31, align 8, !tbaa !131
  tail call void @sbitmap_difference(ptr noundef %28, ptr noundef %30, ptr noundef %32) #6
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !139
  %35 = load ptr, ptr @cfun, align 8, !tbaa !131
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !132
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !142
  %40 = icmp eq ptr %34, %39
  br i1 %40, label %16, label %22, !prof !258, !llvm.loop !272

41:                                               ; preds = %20, %60
  %42 = phi i64 [ 0, %20 ], [ %66, %60 ]
  %43 = load ptr, ptr %21, align 8, !tbaa !190
  %44 = getelementptr inbounds ptr, ptr %43, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !131
  %46 = load ptr, ptr %45, align 8, !tbaa !174
  %47 = load ptr, ptr @cfun, align 8, !tbaa !131
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !132
  %50 = load ptr, ptr %49, align 8, !tbaa !138
  %51 = icmp eq ptr %46, %50
  %52 = getelementptr inbounds ptr, ptr %4, i64 %42
  %53 = load ptr, ptr %52, align 8, !tbaa !131
  %54 = getelementptr inbounds ptr, ptr %2, i64 %42
  %55 = load ptr, ptr %54, align 8, !tbaa !131
  br i1 %51, label %56, label %58, !prof !273

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 5
  br label %60

58:                                               ; preds = %41
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 9
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi ptr [ %59, %58 ], [ %57, %56 ]
  %62 = load i32, ptr %61, align 8, !tbaa !149
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %3, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !131
  tail call void @sbitmap_difference(ptr noundef %53, ptr noundef %55, ptr noundef %65) #6
  %66 = add nuw nsw i64 %42, 1
  %67 = load i32, ptr %17, align 4, !tbaa !125
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %41, label %70, !prof !274, !llvm.loop !275

70:                                               ; preds = %60, %16
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!123}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!36 = !{ptr @pre_edge_lcm, ptr @create_edge_list, i64 5055}
!37 = !{ptr @pre_edge_lcm, ptr @sbitmap_vector_alloc, i64 45495}
!38 = !{ptr @pre_edge_lcm, ptr @compute_available, i64 5055}
!39 = !{ptr @pre_edge_lcm, ptr @free, i64 35385}
!40 = !{ptr @pre_edge_lcm, ptr @compute_antinout_edge, i64 5055}
!41 = !{ptr @pre_edge_lcm, ptr @compute_earliest, i64 5055}
!42 = !{ptr @pre_edge_lcm, ptr @compute_laterin, i64 5055}
!43 = !{ptr @pre_edge_lcm, ptr @compute_insert_delete, i64 5055}
!44 = !{ptr @compute_available, ptr @xmalloc, i64 20667}
!45 = !{ptr @compute_available, ptr @sbitmap_vector_ones, i64 20667}
!46 = !{ptr @compute_available, ptr @ei_start_1, i64 2167157}
!47 = !{ptr @compute_available, ptr @ei_cond, i64 5635588}
!48 = !{ptr @compute_available, ptr @ei_next, i64 3468431}
!49 = !{ptr @compute_available, ptr @sbitmap_zero, i64 20667}
!50 = !{ptr @compute_available, ptr @sbitmap_intersection_of_preds, i64 2505805}
!51 = !{ptr @compute_available, ptr @sbitmap_union_of_diff_cg, i64 2526472}
!52 = !{ptr @compute_available, ptr @clear_aux_for_edges, i64 20667}
!53 = !{ptr @compute_available, ptr @clear_aux_for_blocks, i64 20667}
!54 = !{ptr @compute_available, ptr @free, i64 20667}
!55 = !{ptr @compute_antinout_edge, ptr @xmalloc, i64 7863}
!56 = !{ptr @compute_antinout_edge, ptr @sbitmap_vector_ones, i64 7863}
!57 = !{ptr @compute_antinout_edge, ptr @ei_start_1, i64 563005}
!58 = !{ptr @compute_antinout_edge, ptr @ei_cond, i64 1462197}
!59 = !{ptr @compute_antinout_edge, ptr @ei_next, i64 899192}
!60 = !{ptr @compute_antinout_edge, ptr @sbitmap_zero, i64 16383}
!61 = !{ptr @compute_antinout_edge, ptr @sbitmap_intersection_of_succs, i64 621166}
!62 = !{ptr @compute_antinout_edge, ptr @sbitmap_a_or_b_and_c_cg, i64 637549}
!63 = !{ptr @compute_antinout_edge, ptr @clear_aux_for_edges, i64 7863}
!64 = !{ptr @compute_antinout_edge, ptr @clear_aux_for_blocks, i64 7863}
!65 = !{ptr @compute_antinout_edge, ptr @free, i64 7863}
!66 = !{ptr @compute_earliest, ptr @sbitmap_alloc, i64 10110}
!67 = !{ptr @compute_earliest, ptr @sbitmap_copy, i64 5055}
!68 = !{ptr @compute_earliest, ptr @sbitmap_zero, i64 10115}
!69 = !{ptr @compute_earliest, ptr @sbitmap_difference, i64 452126}
!70 = !{ptr @compute_earliest, ptr @sbitmap_not, i64 452126}
!71 = !{ptr @compute_earliest, ptr @sbitmap_a_and_b_or_c, i64 452126}
!72 = !{ptr @compute_earliest, ptr @free, i64 20220}
!73 = !{ptr @compute_laterin, ptr @xmalloc, i64 5055}
!74 = !{ptr @compute_laterin, ptr @sbitmap_vector_ones, i64 5055}
!75 = !{ptr @compute_laterin, ptr @ei_start_1, i64 1102582}
!76 = !{ptr @compute_laterin, ptr @ei_cond, i64 3245482}
!77 = !{ptr @compute_laterin, ptr @sbitmap_copy, i64 5055}
!78 = !{ptr @compute_laterin, ptr @ei_next, i64 2142900}
!79 = !{ptr @compute_laterin, ptr @sbitmap_ones, i64 551291}
!80 = !{ptr @compute_laterin, ptr @sbitmap_a_and_b, i64 1248919}
!81 = !{ptr @compute_laterin, ptr @sbitmap_union_of_diff_cg, i64 888926}
!82 = !{ptr @compute_laterin, ptr @clear_aux_for_edges, i64 5055}
!83 = !{ptr @compute_laterin, ptr @free, i64 5055}
!84 = !{ptr @compute_insert_delete, ptr @sbitmap_difference, i64 755886}
!85 = !{ptr @ei_cond, ptr @ei_end_p, i64 11678858}
!86 = !{ptr @ei_cond, ptr @ei_edge, i64 7336030}
!87 = !{ptr @ei_next, ptr @ei_container, i64 14672059}
!88 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 7336030}
!89 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!90 = !{ptr @ei_end_p, ptr @ei_container, i64 23357715}
!91 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 11678858}
!92 = !{ptr @ei_edge, ptr @ei_container, i64 14672059}
!93 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 7336030}
!94 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!95 = !{ptr @pre_edge_rev_lcm, ptr @create_edge_list, i64 2808}
!96 = !{ptr @pre_edge_rev_lcm, ptr @sbitmap_vector_alloc, i64 25272}
!97 = !{ptr @pre_edge_rev_lcm, ptr @sbitmap_vector_zero, i64 5616}
!98 = !{ptr @pre_edge_rev_lcm, ptr @compute_antinout_edge, i64 2808}
!99 = !{ptr @pre_edge_rev_lcm, ptr @compute_available, i64 2808}
!100 = !{ptr @pre_edge_rev_lcm, ptr @compute_farthest, i64 2808}
!101 = !{ptr @pre_edge_rev_lcm, ptr @free, i64 19656}
!102 = !{ptr @pre_edge_rev_lcm, ptr @compute_nearerout, i64 2808}
!103 = !{ptr @pre_edge_rev_lcm, ptr @compute_rev_insert_delete, i64 2808}
!104 = !{ptr @compute_farthest, ptr @sbitmap_alloc, i64 5616}
!105 = !{ptr @compute_farthest, ptr @sbitmap_copy, i64 6267}
!106 = !{ptr @compute_farthest, ptr @sbitmap_zero, i64 2808}
!107 = !{ptr @compute_farthest, ptr @sbitmap_difference, i64 338281}
!108 = !{ptr @compute_farthest, ptr @sbitmap_not, i64 338281}
!109 = !{ptr @compute_farthest, ptr @sbitmap_a_and_b_or_c, i64 338281}
!110 = !{ptr @compute_farthest, ptr @free, i64 11232}
!111 = !{ptr @compute_nearerout, ptr @xmalloc, i64 2808}
!112 = !{ptr @compute_nearerout, ptr @sbitmap_vector_ones, i64 2808}
!113 = !{ptr @compute_nearerout, ptr @ei_start_1, i64 509518}
!114 = !{ptr @compute_nearerout, ptr @ei_cond, i64 1334034}
!115 = !{ptr @compute_nearerout, ptr @sbitmap_copy, i64 6267}
!116 = !{ptr @compute_nearerout, ptr @ei_next, i64 824516}
!117 = !{ptr @compute_nearerout, ptr @sbitmap_ones, i64 254759}
!118 = !{ptr @compute_nearerout, ptr @sbitmap_a_and_b, i64 412281}
!119 = !{ptr @compute_nearerout, ptr @sbitmap_union_of_diff_cg, i64 405968}
!120 = !{ptr @compute_nearerout, ptr @clear_aux_for_edges, i64 2808}
!121 = !{ptr @compute_nearerout, ptr @free, i64 2808}
!122 = !{ptr @compute_rev_insert_delete, ptr @sbitmap_difference, i64 562846}
!123 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!124 = !{!"function_entry_count", i64 5055}
!125 = !{!126, !127, i64 4}
!126 = !{!"edge_list", !127, i64 0, !127, i64 4, !130, i64 8}
!127 = !{!"int", !128, i64 0}
!128 = !{!"omnipotent char", !129, i64 0}
!129 = !{!"Simple C/C++ TBAA"}
!130 = !{!"any pointer", !128, i64 0}
!131 = !{!130, !130, i64 0}
!132 = !{!133, !130, i64 8}
!133 = !{!"function", !130, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !130, i64 32, !130, i64 40, !130, i64 48, !130, i64 56, !130, i64 64, !130, i64 72, !130, i64 80, !130, i64 88, !130, i64 96, !127, i64 104, !127, i64 108, !127, i64 112, !127, i64 116, !127, i64 120, !127, i64 124, !130, i64 128, !127, i64 136, !127, i64 137, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139}
!134 = !{!135, !127, i64 32}
!135 = !{!"control_flow_graph", !130, i64 0, !130, i64 8, !130, i64 16, !127, i64 24, !127, i64 28, !127, i64 32, !130, i64 40, !127, i64 48, !128, i64 52, !128, i64 60, !127, i64 68, !127, i64 72}
!136 = !{!"function_entry_count", i64 20667}
!137 = !{!135, !127, i64 24}
!138 = !{!135, !130, i64 0}
!139 = !{!140, !130, i64 56}
!140 = !{!"basic_block_def", !130, i64 0, !130, i64 8, !130, i64 16, !130, i64 24, !128, i64 32, !130, i64 48, !130, i64 56, !128, i64 64, !141, i64 72, !127, i64 80, !127, i64 84, !127, i64 88, !127, i64 92, !127, i64 96}
!141 = !{!"long", !128, i64 0}
!142 = !{!135, !130, i64 8}
!143 = !{!"branch_weights", i32 1, i32 20667}
!144 = !{!140, !130, i64 16}
!145 = !{!"branch_weights", i32 20667, i32 1255863}
!146 = distinct !{!146, !147}
!147 = !{!"llvm.loop.mustprogress"}
!148 = !{i64 0, i64 4, !149, i64 8, i64 8, !131}
!149 = !{!127, !127, i64 0}
!150 = !{i64 0, i64 8, !131}
!151 = !{i8 0, i8 2}
!152 = !{!153, !130, i64 8}
!153 = !{!"edge_def", !130, i64 0, !130, i64 8, !128, i64 16, !130, i64 24, !130, i64 32, !127, i64 40, !127, i64 44, !127, i64 48, !127, i64 52, !141, i64 56}
!154 = !{!"branch_weights", i32 20667, i32 1}
!155 = distinct !{!155, !147}
!156 = !{!"branch_weights", i32 2501555, i32 25040}
!157 = !{!"branch_weights", i32 20668, i32 2505927}
!158 = !{!140, !127, i64 80}
!159 = !{!"branch_weights", i32 380000, i32 2146595}
!160 = !{!"branch_weights", i32 1, i32 2146594}
!161 = !{!"branch_weights", i32 1284536, i32 2163397}
!162 = !{!"branch_weights", i32 34472, i32 1250065}
!163 = !{!"branch_weights", i32 1245693, i32 4373}
!164 = !{!"branch_weights", i32 2146594, i32 1301338}
!165 = distinct !{!165, !147}
!166 = !{!"branch_weights", i32 20667, i32 2505927}
!167 = distinct !{!167, !147}
!168 = !{!"function_entry_count", i64 7863}
!169 = !{!"lcm.c:compute_antinout_edge"}
!170 = !{!140, !130, i64 48}
!171 = !{!"branch_weights", i32 1, i32 7863}
!172 = !{!"branch_weights", i32 7863, i32 496351}
!173 = distinct !{!173, !147}
!174 = !{!153, !130, i64 0}
!175 = !{!"branch_weights", i32 7863, i32 8522}
!176 = distinct !{!176, !147}
!177 = !{!"branch_weights", i32 629666, i32 7965}
!178 = !{!"branch_weights", i32 16385, i32 621246}
!179 = !{!"branch_weights", i32 82418, i32 555213}
!180 = !{!"branch_weights", i32 1, i32 555212}
!181 = !{!"branch_weights", i32 141240, i32 741684}
!182 = !{!"branch_weights", i32 7824, i32 133417}
!183 = !{!"branch_weights", i32 133316, i32 102}
!184 = !{!"branch_weights", i32 555212, i32 327711}
!185 = distinct !{!185, !147}
!186 = !{!"branch_weights", i32 7863, i32 629767}
!187 = distinct !{!187, !147}
!188 = !{!"lcm.c:compute_earliest"}
!189 = !{!"branch_weights", i32 5055, i32 1}
!190 = !{!126, !130, i64 8}
!191 = !{!"branch_weights", i32 5056, i32 462333}
!192 = !{!"branch_weights", i32 10117, i32 452217}
!193 = !{!"branch_weights", i32 5055, i32 462333}
!194 = distinct !{!194, !147}
!195 = !{!196, !130, i64 0}
!196 = !{!"simple_bitmap_def", !130, i64 0, !127, i64 8, !127, i64 12, !128, i64 16}
!197 = !{!"lcm.c:compute_laterin"}
!198 = !{!153, !130, i64 24}
!199 = distinct !{!199, !147}
!200 = !{!"branch_weights", i32 1, i32 5055}
!201 = distinct !{!201, !147}
!202 = !{!"branch_weights", i32 5055, i32 283592}
!203 = distinct !{!203, !147}
!204 = !{!"branch_weights", i32 5055, i32 541289}
!205 = distinct !{!205, !147}
!206 = !{!"branch_weights", i32 540393, i32 5952}
!207 = !{!"branch_weights", i32 1, i32 546343}
!208 = !{!"branch_weights", i32 546343, i32 692706}
!209 = distinct !{!209, !147}
!210 = !{!"branch_weights", i32 137073, i32 752030}
!211 = !{!"branch_weights", i32 12205, i32 739826}
!212 = !{!"branch_weights", i32 257698, i32 482129}
!213 = !{!"branch_weights", i32 256802, i32 897}
!214 = !{!"branch_weights", i32 546343, i32 342759}
!215 = distinct !{!215, !147}
!216 = !{!"branch_weights", i32 5055, i32 5062}
!217 = distinct !{!217, !147}
!218 = !{!"lcm.c:compute_insert_delete"}
!219 = distinct !{!219, !147}
!220 = !{!"branch_weights", i32 10117, i32 457272}
!221 = !{!"branch_weights", i32 462333, i32 5055}
!222 = distinct !{!222, !147}
!223 = !{!"function_entry_count", i64 4342828}
!224 = !{!"lcm.c:ei_start_1"}
!225 = !{!"function_entry_count", i64 11678858}
!226 = !{!"lcm.c:ei_cond"}
!227 = !{!"branch_weights", i32 7336031, i32 4342829}
!228 = !{!"function_entry_count", i64 7336030}
!229 = !{!"lcm.c:ei_next"}
!230 = !{!"branch_weights", i32 1, i32 7336031}
!231 = !{!"branch_weights", i32 7336031, i32 1}
!232 = !{!233, !127, i64 0}
!233 = !{!"", !127, i64 0, !130, i64 8}
!234 = !{!"lcm.c:ei_end_p"}
!235 = !{!"branch_weights", i32 1, i32 11678859}
!236 = !{!"lcm.c:ei_edge"}
!237 = !{!"function_entry_count", i64 19014888}
!238 = !{!"lcm.c:VEC_edge_base_length"}
!239 = !{!"branch_weights", i32 1, i32 19014889}
!240 = !{!241, !127, i64 0}
!241 = !{!"VEC_edge_base", !127, i64 0, !127, i64 4, !128, i64 8}
!242 = !{!"function_entry_count", i64 52701836}
!243 = !{!"lcm.c:ei_container"}
!244 = !{!"branch_weights", i32 1, i32 52701837}
!245 = !{!"lcm.c:VEC_edge_base_index"}
!246 = !{!"function_entry_count", i64 2808}
!247 = !{!"lcm.c:compute_farthest"}
!248 = !{!"branch_weights", i32 2808, i32 1}
!249 = !{!"branch_weights", i32 6269, i32 341211}
!250 = !{!"branch_weights", i32 2809, i32 338403}
!251 = !{!"branch_weights", i32 2808, i32 344671}
!252 = distinct !{!252, !147}
!253 = !{!"lcm.c:compute_nearerout"}
!254 = distinct !{!254, !147}
!255 = !{!"branch_weights", i32 1, i32 2808}
!256 = !{!"branch_weights", i32 2808, i32 3461}
!257 = distinct !{!257, !147}
!258 = !{!"branch_weights", i32 2808, i32 212760}
!259 = distinct !{!259, !147}
!260 = !{!"branch_weights", i32 2808, i32 249233}
!261 = distinct !{!261, !147}
!262 = !{!"branch_weights", i32 1, i32 252040}
!263 = !{!"branch_weights", i32 252040, i32 157579}
!264 = distinct !{!264, !147}
!265 = !{!"branch_weights", i32 62781, i32 343333}
!266 = !{!"branch_weights", i32 2809, i32 340525}
!267 = !{!"branch_weights", i32 36474, i32 304052}
!268 = !{!"branch_weights", i32 252040, i32 154073}
!269 = distinct !{!269, !147}
!270 = distinct !{!270, !147}
!271 = !{!"lcm.c:compute_rev_insert_delete"}
!272 = distinct !{!272, !147}
!273 = !{!"branch_weights", i32 2809, i32 344671}
!274 = !{!"branch_weights", i32 344671, i32 2808}
!275 = distinct !{!275, !147}
