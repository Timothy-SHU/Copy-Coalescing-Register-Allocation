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
define dso_local ptr @pre_edge_lcm(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 !prof !95 {
  %8 = tail call ptr @create_edge_list() #6
  %9 = getelementptr inbounds %struct.edge_list, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !96
  %11 = load ptr, ptr @cfun, align 8, !tbaa !102
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !105
  %16 = tail call ptr @sbitmap_vector_alloc(i32 noundef %15, i32 noundef %0) #6
  %17 = load ptr, ptr @cfun, align 8, !tbaa !102
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !103
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !105
  %22 = tail call ptr @sbitmap_vector_alloc(i32 noundef %21, i32 noundef %0) #6
  tail call void @compute_available(ptr noundef %2, ptr noundef %4, ptr noundef %22, ptr noundef %16) #7
  tail call void @free(ptr noundef %16) #7
  %23 = load ptr, ptr @cfun, align 8, !tbaa !102
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !103
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !105
  %28 = tail call ptr @sbitmap_vector_alloc(i32 noundef %27, i32 noundef %0) #6
  %29 = load ptr, ptr @cfun, align 8, !tbaa !102
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !103
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !105
  %34 = tail call ptr @sbitmap_vector_alloc(i32 noundef %33, i32 noundef %0) #6
  tail call fastcc void @compute_antinout_edge(ptr noundef %3, ptr noundef %1, ptr noundef %28, ptr noundef %34) #7
  %35 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  tail call fastcc void @compute_earliest(ptr noundef %8, i32 noundef %0, ptr noundef %28, ptr noundef %34, ptr noundef %22, ptr noundef %4, ptr noundef %35) #7
  tail call void @free(ptr noundef %34) #7
  tail call void @free(ptr noundef %28) #7
  tail call void @free(ptr noundef %22) #7
  %36 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  %37 = load ptr, ptr @cfun, align 8, !tbaa !102
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !103
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !105
  %42 = add nsw i32 %41, 1
  %43 = tail call ptr @sbitmap_vector_alloc(i32 noundef %42, i32 noundef %0) #6
  tail call fastcc void @compute_laterin(ptr noundef %8, ptr noundef %35, ptr noundef %3, ptr noundef %36, ptr noundef %43) #7
  tail call void @free(ptr noundef %35) #7
  %44 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  store ptr %44, ptr %5, align 8, !tbaa !102
  %45 = load ptr, ptr @cfun, align 8, !tbaa !102
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !103
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !105
  %50 = tail call ptr @sbitmap_vector_alloc(i32 noundef %49, i32 noundef %0) #6
  store ptr %50, ptr %6, align 8, !tbaa !102
  %51 = load ptr, ptr %5, align 8, !tbaa !102
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
define dso_local void @compute_available(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !107 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  %7 = load ptr, ptr @cfun, align 8, !tbaa !102
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !108
  %12 = add nsw i32 %11, -2
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr @xmalloc(i64 noundef %14) #6
  %16 = load ptr, ptr @cfun, align 8, !tbaa !102
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !103
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !105
  tail call void @sbitmap_vector_ones(ptr noundef %2, i32 noundef %20) #6
  %21 = load ptr, ptr @cfun, align 8, !tbaa !102
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = load ptr, ptr %23, align 8, !tbaa !109
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !110
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !113
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %45, label %30, !prof !114

30:                                               ; preds = %4, %30
  %31 = phi ptr [ %36, %30 ], [ %26, %4 ]
  %32 = phi ptr [ %33, %30 ], [ %15, %4 ]
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  store ptr %31, ptr %32, align 8, !tbaa !102
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 2
  store ptr %31, ptr %34, align 8, !tbaa !115
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !110
  %37 = load ptr, ptr @cfun, align 8, !tbaa !102
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !103
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !113
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %43, label %30, !prof !116, !llvm.loop !117

43:                                               ; preds = %30
  %44 = load ptr, ptr %39, align 8, !tbaa !109
  br label %45

45:                                               ; preds = %43, %4
  %46 = phi ptr [ %24, %4 ], [ %44, %43 ]
  %47 = phi ptr [ %23, %4 ], [ %39, %43 ]
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !108
  %50 = add nsw i32 %49, -2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %15, i64 %51
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 1
  %54 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %53) #7
  store i32 0, ptr %6, align 8, !tbaa.struct !119
  %55 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %54, ptr %55, align 8, !tbaa.struct !121
  %56 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %54, ptr noundef nonnull %5) #7, !range !122
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %60, !prof !114

58:                                               ; preds = %60, %45
  %59 = icmp eq i32 %50, 0
  br i1 %59, label %158, label %73, !prof !114

60:                                               ; preds = %45, %60
  %61 = load ptr, ptr @cfun, align 8, !tbaa !102
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !103
  %64 = load ptr, ptr %63, align 8, !tbaa !109
  %65 = load ptr, ptr %5, align 8, !tbaa !102
  %66 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !123
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 2
  store ptr %64, ptr %68, align 8, !tbaa !115
  call fastcc void @ei_next(ptr noundef nonnull %6) #7
  %69 = load i32, ptr %6, align 8
  %70 = load ptr, ptr %55, align 8
  %71 = call fastcc zeroext i8 @ei_cond(i32 %69, ptr %70, ptr noundef nonnull %5) #7, !range !122
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %58, label %60, !prof !125, !llvm.loop !126

73:                                               ; preds = %58, %154
  %74 = phi ptr [ %156, %154 ], [ %15, %58 ]
  %75 = phi ptr [ %83, %154 ], [ %15, %58 ]
  %76 = phi i32 [ %155, %154 ], [ %50, %58 ]
  %77 = getelementptr inbounds ptr, ptr %75, i64 1
  %78 = load ptr, ptr %75, align 8, !tbaa !102
  %79 = add i32 %76, -1
  %80 = icmp ult ptr %77, %52
  br i1 %80, label %82, label %81, !prof !127

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %73
  %83 = phi ptr [ %15, %81 ], [ %77, %73 ]
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !115
  %86 = load ptr, ptr @cfun, align 8, !tbaa !102
  %87 = getelementptr inbounds %struct.function, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !103
  %89 = load ptr, ptr %88, align 8, !tbaa !109
  %90 = icmp eq ptr %85, %89
  br i1 %90, label %91, label %97, !prof !128

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 9
  %93 = load i32, ptr %92, align 8, !tbaa !129
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds ptr, ptr %3, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !102
  tail call void @sbitmap_zero(ptr noundef %96) #6
  br label %103

97:                                               ; preds = %82
  store ptr null, ptr %84, align 8, !tbaa !115
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 9
  %99 = load i32, ptr %98, align 8, !tbaa !129
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %3, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !102
  tail call void @sbitmap_intersection_of_preds(ptr noundef %102, ptr noundef %2, i32 noundef %99) #6
  br label %103

103:                                              ; preds = %97, %91
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 9
  %105 = load i32, ptr %104, align 8, !tbaa !129
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %2, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !102
  %109 = getelementptr inbounds ptr, ptr %0, i64 %106
  %110 = load ptr, ptr %109, align 8, !tbaa !102
  %111 = getelementptr inbounds ptr, ptr %3, i64 %106
  %112 = load ptr, ptr %111, align 8, !tbaa !102
  %113 = getelementptr inbounds ptr, ptr %1, i64 %106
  %114 = load ptr, ptr %113, align 8, !tbaa !102
  %115 = tail call zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef %108, ptr noundef %110, ptr noundef %112, ptr noundef %114) #6
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %154, label %117, !prof !130

117:                                              ; preds = %103
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 1
  %119 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %118) #7
  store i32 0, ptr %6, align 8, !tbaa.struct !119
  store ptr %119, ptr %55, align 8, !tbaa.struct !121
  %120 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %119, ptr noundef nonnull %5) #7, !range !122
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %154, label %122, !prof !131

122:                                              ; preds = %117, %147
  %123 = phi ptr [ %149, %147 ], [ %74, %117 ]
  %124 = phi i32 [ %148, %147 ], [ %79, %117 ]
  %125 = load ptr, ptr %5, align 8, !tbaa !102
  %126 = getelementptr inbounds %struct.edge_def, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !123
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !115
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %147, !prof !132

131:                                              ; preds = %122
  %132 = load ptr, ptr @cfun, align 8, !tbaa !102
  %133 = getelementptr inbounds %struct.function, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !103
  %135 = getelementptr inbounds %struct.control_flow_graph, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !113
  %137 = icmp eq ptr %127, %136
  br i1 %137, label %147, label %138, !prof !133

138:                                              ; preds = %131
  %139 = getelementptr inbounds ptr, ptr %123, i64 1
  store ptr %127, ptr %123, align 8, !tbaa !102
  %140 = load ptr, ptr %5, align 8, !tbaa !102
  %141 = getelementptr inbounds %struct.edge_def, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !123
  %143 = getelementptr inbounds %struct.basic_block_def, ptr %142, i64 0, i32 2
  store ptr %140, ptr %143, align 8, !tbaa !115
  %144 = add i32 %124, 1
  %145 = icmp ult ptr %139, %52
  %146 = select i1 %145, ptr %139, ptr %15
  br label %147

147:                                              ; preds = %138, %122, %131
  %148 = phi i32 [ %124, %122 ], [ %124, %131 ], [ %144, %138 ]
  %149 = phi ptr [ %123, %122 ], [ %123, %131 ], [ %146, %138 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #7
  %150 = load i32, ptr %6, align 8
  %151 = load ptr, ptr %55, align 8
  %152 = call fastcc zeroext i8 @ei_cond(i32 %150, ptr %151, ptr noundef nonnull %5) #7, !range !122
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %122, !prof !134, !llvm.loop !135

154:                                              ; preds = %147, %117, %103
  %155 = phi i32 [ %79, %103 ], [ %79, %117 ], [ %148, %147 ]
  %156 = phi ptr [ %74, %103 ], [ %74, %117 ], [ %149, %147 ]
  %157 = icmp eq i32 %155, 0
  br i1 %157, label %158, label %73, !prof !116, !llvm.loop !136

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
define internal fastcc void @compute_antinout_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !95 !PGOFuncName !137 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  %7 = load ptr, ptr @cfun, align 8, !tbaa !102
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !108
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr @xmalloc(i64 noundef %13) #6
  %15 = load ptr, ptr @cfun, align 8, !tbaa !102
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !103
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !105
  tail call void @sbitmap_vector_ones(ptr noundef %2, i32 noundef %19) #6
  %20 = load ptr, ptr @cfun, align 8, !tbaa !102
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !103
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !113
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !138
  %27 = load ptr, ptr %22, align 8, !tbaa !109
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %44, label %29, !prof !139

29:                                               ; preds = %4, %29
  %30 = phi ptr [ %35, %29 ], [ %26, %4 ]
  %31 = phi ptr [ %32, %29 ], [ %14, %4 ]
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  store ptr %30, ptr %31, align 8, !tbaa !102
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 2
  store ptr %30, ptr %33, align 8, !tbaa !115
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !138
  %36 = load ptr, ptr @cfun, align 8, !tbaa !102
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !103
  %39 = load ptr, ptr %38, align 8, !tbaa !109
  %40 = icmp eq ptr %35, %39
  br i1 %40, label %41, label %29, !prof !140, !llvm.loop !141

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !113
  br label %44

44:                                               ; preds = %41, %4
  %45 = phi ptr [ %24, %4 ], [ %43, %41 ]
  %46 = phi ptr [ %22, %4 ], [ %38, %41 ]
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !108
  %49 = add nsw i32 %48, -2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %14, i64 %50
  %52 = tail call fastcc ptr @ei_start_1(ptr noundef %45) #7
  store i32 0, ptr %6, align 8, !tbaa.struct !119
  %53 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %52, ptr %53, align 8, !tbaa.struct !121
  %54 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %52, ptr noundef nonnull %5) #7, !range !122
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %58, !prof !139

56:                                               ; preds = %58, %44
  %57 = icmp eq i32 %49, 0
  br i1 %57, label %153, label %71, !prof !139

58:                                               ; preds = %44, %58
  %59 = load ptr, ptr @cfun, align 8, !tbaa !102
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !103
  %62 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !113
  %64 = load ptr, ptr %5, align 8, !tbaa !102
  %65 = load ptr, ptr %64, align 8, !tbaa !142
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 2
  store ptr %63, ptr %66, align 8, !tbaa !115
  call fastcc void @ei_next(ptr noundef nonnull %6) #7
  %67 = load i32, ptr %6, align 8
  %68 = load ptr, ptr %53, align 8
  %69 = call fastcc zeroext i8 @ei_cond(i32 %67, ptr %68, ptr noundef nonnull %5) #7, !range !122
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %56, label %58, !prof !143, !llvm.loop !144

71:                                               ; preds = %56, %149
  %72 = phi ptr [ %151, %149 ], [ %14, %56 ]
  %73 = phi ptr [ %81, %149 ], [ %14, %56 ]
  %74 = phi i32 [ %150, %149 ], [ %49, %56 ]
  %75 = getelementptr inbounds ptr, ptr %73, i64 1
  %76 = load ptr, ptr %73, align 8, !tbaa !102
  %77 = add i32 %74, -1
  %78 = icmp ult ptr %75, %51
  br i1 %78, label %80, label %79, !prof !145

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %71
  %81 = phi ptr [ %14, %79 ], [ %75, %71 ]
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !115
  %84 = load ptr, ptr @cfun, align 8, !tbaa !102
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !103
  %87 = getelementptr inbounds %struct.control_flow_graph, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !113
  %89 = icmp eq ptr %83, %88
  br i1 %89, label %90, label %96, !prof !146

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %92 = load i32, ptr %91, align 8, !tbaa !129
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %3, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !102
  tail call void @sbitmap_zero(ptr noundef %95) #6
  br label %102

96:                                               ; preds = %80
  store ptr null, ptr %82, align 8, !tbaa !115
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !129
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %3, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !102
  tail call void @sbitmap_intersection_of_succs(ptr noundef %101, ptr noundef %2, i32 noundef %98) #6
  br label %102

102:                                              ; preds = %96, %90
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %104 = load i32, ptr %103, align 8, !tbaa !129
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %2, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !102
  %108 = getelementptr inbounds ptr, ptr %0, i64 %105
  %109 = load ptr, ptr %108, align 8, !tbaa !102
  %110 = getelementptr inbounds ptr, ptr %1, i64 %105
  %111 = load ptr, ptr %110, align 8, !tbaa !102
  %112 = getelementptr inbounds ptr, ptr %3, i64 %105
  %113 = load ptr, ptr %112, align 8, !tbaa !102
  %114 = tail call zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr noundef %107, ptr noundef %109, ptr noundef %111, ptr noundef %113) #6
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %149, label %116, !prof !147

116:                                              ; preds = %102
  %117 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %76) #7
  store i32 0, ptr %6, align 8, !tbaa.struct !119
  store ptr %117, ptr %53, align 8, !tbaa.struct !121
  %118 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %117, ptr noundef nonnull %5) #7, !range !122
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %149, label %120, !prof !148

120:                                              ; preds = %116, %142
  %121 = phi ptr [ %144, %142 ], [ %72, %116 ]
  %122 = phi i32 [ %143, %142 ], [ %77, %116 ]
  %123 = load ptr, ptr %5, align 8, !tbaa !102
  %124 = load ptr, ptr %123, align 8, !tbaa !142
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !115
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %142, !prof !149

128:                                              ; preds = %120
  %129 = load ptr, ptr @cfun, align 8, !tbaa !102
  %130 = getelementptr inbounds %struct.function, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !103
  %132 = load ptr, ptr %131, align 8, !tbaa !109
  %133 = icmp eq ptr %124, %132
  br i1 %133, label %142, label %134, !prof !150

134:                                              ; preds = %128
  %135 = getelementptr inbounds ptr, ptr %121, i64 1
  store ptr %124, ptr %121, align 8, !tbaa !102
  %136 = load ptr, ptr %5, align 8, !tbaa !102
  %137 = load ptr, ptr %136, align 8, !tbaa !142
  %138 = getelementptr inbounds %struct.basic_block_def, ptr %137, i64 0, i32 2
  store ptr %136, ptr %138, align 8, !tbaa !115
  %139 = add i32 %122, 1
  %140 = icmp ult ptr %135, %51
  %141 = select i1 %140, ptr %135, ptr %14
  br label %142

142:                                              ; preds = %134, %120, %128
  %143 = phi i32 [ %122, %120 ], [ %122, %128 ], [ %139, %134 ]
  %144 = phi ptr [ %121, %120 ], [ %121, %128 ], [ %141, %134 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #7
  %145 = load i32, ptr %6, align 8
  %146 = load ptr, ptr %53, align 8
  %147 = call fastcc zeroext i8 @ei_cond(i32 %145, ptr %146, ptr noundef nonnull %5) #7, !range !122
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %120, !prof !151, !llvm.loop !152

149:                                              ; preds = %142, %116, %102
  %150 = phi i32 [ %77, %102 ], [ %77, %116 ], [ %143, %142 ]
  %151 = phi ptr [ %72, %102 ], [ %72, %116 ], [ %144, %142 ]
  %152 = icmp eq i32 %150, 0
  br i1 %152, label %153, label %71, !prof !140, !llvm.loop !153

153:                                              ; preds = %149, %56
  tail call void @clear_aux_for_edges() #6
  tail call void @clear_aux_for_blocks() #6
  tail call void @free(ptr noundef %14) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_earliest(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #0 !prof !95 !PGOFuncName !154 {
  %8 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !96
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %1) #6
  %11 = tail call ptr @sbitmap_alloc(i32 noundef %1) #6
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %13, label %68, !prof !155

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %15 = zext nneg i32 %9 to i64
  br label %16

16:                                               ; preds = %13, %65
  %17 = phi i64 [ 0, %13 ], [ %66, %65 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !156
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !102
  %21 = load ptr, ptr %20, align 8, !tbaa !142
  %22 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !123
  %24 = load ptr, ptr @cfun, align 8, !tbaa !102
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  %27 = load ptr, ptr %26, align 8, !tbaa !109
  %28 = icmp eq ptr %21, %27
  br i1 %28, label %29, label %37, !prof !157

29:                                               ; preds = %16
  %30 = getelementptr inbounds ptr, ptr %6, i64 %17
  %31 = load ptr, ptr %30, align 8, !tbaa !102
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !129
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !102
  tail call void @sbitmap_copy(ptr noundef %31, ptr noundef %36) #6
  br label %65

37:                                               ; preds = %16
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !113
  %40 = icmp eq ptr %23, %39
  br i1 %40, label %41, label %44, !prof !158

41:                                               ; preds = %37
  %42 = getelementptr inbounds ptr, ptr %6, i64 %17
  %43 = load ptr, ptr %42, align 8, !tbaa !102
  tail call void @sbitmap_zero(ptr noundef %43) #6
  br label %65

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !129
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !102
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !129
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %4, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !102
  tail call void @sbitmap_difference(ptr noundef %10, ptr noundef %49, ptr noundef %54) #6
  %55 = load i32, ptr %50, align 8, !tbaa !129
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %3, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !102
  tail call void @sbitmap_not(ptr noundef %11, ptr noundef %58) #6
  %59 = getelementptr inbounds ptr, ptr %6, i64 %17
  %60 = load ptr, ptr %59, align 8, !tbaa !102
  %61 = load i32, ptr %50, align 8, !tbaa !129
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %5, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !102
  tail call void @sbitmap_a_and_b_or_c(ptr noundef %60, ptr noundef %10, ptr noundef %64, ptr noundef %11) #6
  br label %65

65:                                               ; preds = %29, %44, %41
  %66 = add nuw nsw i64 %17, 1
  %67 = icmp eq i64 %66, %15
  br i1 %67, label %68, label %16, !prof !159, !llvm.loop !160

68:                                               ; preds = %65, %7
  %69 = load ptr, ptr %11, align 8, !tbaa !161
  tail call void @free(ptr noundef %69) #7
  tail call void @free(ptr noundef %11) #7
  %70 = load ptr, ptr %10, align 8, !tbaa !161
  tail call void @free(ptr noundef %70) #7
  tail call void @free(ptr noundef %10) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_laterin(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !95 !PGOFuncName !163 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  %8 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !96
  %10 = load ptr, ptr @cfun, align 8, !tbaa !102
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !108
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call ptr @xmalloc(i64 noundef %16) #6
  %18 = icmp sgt i32 %9, 0
  br i1 %18, label %19, label %31, !prof !155

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !156
  %22 = zext nneg i32 %9 to i64
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i64 [ 0, %19 ], [ %29, %23 ]
  %25 = inttoptr i64 %24 to ptr
  %26 = getelementptr inbounds ptr, ptr %21, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !102
  %28 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 3
  store ptr %25, ptr %28, align 8, !tbaa !164
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, %22
  br i1 %30, label %31, label %23, !prof !159, !llvm.loop !165

31:                                               ; preds = %23, %5
  tail call void @sbitmap_vector_ones(ptr noundef %3, i32 noundef %9) #6
  %32 = load ptr, ptr @cfun, align 8, !tbaa !102
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !103
  %35 = load ptr, ptr %34, align 8, !tbaa !109
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 1
  %37 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %36) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !119
  %38 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %37, ptr %38, align 8, !tbaa.struct !121
  %39 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %6) #7, !range !122
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %54, label %41, !prof !139

41:                                               ; preds = %31, %41
  %42 = load ptr, ptr %6, align 8, !tbaa !102
  %43 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !164
  %45 = ptrtoint ptr %44 to i64
  %46 = getelementptr inbounds ptr, ptr %3, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !102
  %48 = getelementptr inbounds ptr, ptr %1, i64 %45
  %49 = load ptr, ptr %48, align 8, !tbaa !102
  tail call void @sbitmap_copy(ptr noundef %47, ptr noundef %49) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %50 = load i32, ptr %7, align 8
  %51 = load ptr, ptr %38, align 8
  %52 = call fastcc zeroext i8 @ei_cond(i32 %50, ptr %51, ptr noundef nonnull %6) #7, !range !122
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %41, !prof !155, !llvm.loop !166

54:                                               ; preds = %41, %31
  %55 = load ptr, ptr @cfun, align 8, !tbaa !102
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !103
  %58 = load ptr, ptr %57, align 8, !tbaa !109
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !110
  %61 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !113
  %63 = icmp eq ptr %60, %62
  br i1 %63, label %77, label %64, !prof !139

64:                                               ; preds = %54, %64
  %65 = phi ptr [ %70, %64 ], [ %60, %54 ]
  %66 = phi ptr [ %67, %64 ], [ %17, %54 ]
  %67 = getelementptr inbounds ptr, ptr %66, i64 1
  store ptr %65, ptr %66, align 8, !tbaa !102
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 2
  store ptr %65, ptr %68, align 8, !tbaa !115
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !110
  %71 = load ptr, ptr @cfun, align 8, !tbaa !102
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !103
  %74 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !113
  %76 = icmp eq ptr %70, %75
  br i1 %76, label %77, label %64, !prof !140, !llvm.loop !167

77:                                               ; preds = %64, %54
  %78 = phi ptr [ %55, %54 ], [ %71, %64 ]
  %79 = phi ptr [ %57, %54 ], [ %73, %64 ]
  %80 = getelementptr inbounds %struct.control_flow_graph, ptr %79, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !108
  %82 = add nsw i32 %81, -2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %17, i64 %83
  %85 = icmp eq i32 %82, 0
  br i1 %85, label %182, label %90, !prof !139

86:                                               ; preds = %173, %125
  %87 = phi i32 [ %97, %125 ], [ %174, %173 ]
  %88 = phi ptr [ %91, %125 ], [ %175, %173 ]
  %89 = icmp eq i32 %87, 0
  br i1 %89, label %180, label %90, !prof !140, !llvm.loop !168

90:                                               ; preds = %77, %86
  %91 = phi ptr [ %88, %86 ], [ %17, %77 ]
  %92 = phi ptr [ %101, %86 ], [ %17, %77 ]
  %93 = phi i32 [ %87, %86 ], [ %82, %77 ]
  %94 = getelementptr inbounds ptr, ptr %92, i64 1
  %95 = load ptr, ptr %92, align 8, !tbaa !102
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 2
  store ptr null, ptr %96, align 8, !tbaa !115
  %97 = add i32 %93, -1
  %98 = icmp ult ptr %94, %84
  br i1 %98, label %100, label %99, !prof !145

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %90
  %101 = phi ptr [ %17, %99 ], [ %94, %90 ]
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 9
  %103 = load i32, ptr %102, align 8, !tbaa !129
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %4, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !102
  tail call void @sbitmap_ones(ptr noundef %106) #6
  %107 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %95) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !119
  store ptr %107, ptr %38, align 8, !tbaa.struct !121
  %108 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %107, ptr noundef nonnull %6) #7, !range !122
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %125, label %110, !prof !148

110:                                              ; preds = %100, %110
  %111 = load i32, ptr %102, align 8, !tbaa !129
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds ptr, ptr %4, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !102
  %115 = load ptr, ptr %6, align 8, !tbaa !102
  %116 = getelementptr inbounds %struct.edge_def, ptr %115, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !164
  %118 = ptrtoint ptr %117 to i64
  %119 = getelementptr inbounds ptr, ptr %3, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !102
  tail call void @sbitmap_a_and_b(ptr noundef %114, ptr noundef %114, ptr noundef %120) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %121 = load i32, ptr %7, align 8
  %122 = load ptr, ptr %38, align 8
  %123 = call fastcc zeroext i8 @ei_cond(i32 %121, ptr %122, ptr noundef nonnull %6) #7, !range !122
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %110, !prof !151, !llvm.loop !169

125:                                              ; preds = %110, %100
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 1
  %127 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %126) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !119
  store ptr %127, ptr %38, align 8, !tbaa.struct !121
  %128 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %127, ptr noundef nonnull %6) #7, !range !122
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %86, label %130, !prof !148

130:                                              ; preds = %125, %173
  %131 = phi ptr [ %175, %173 ], [ %91, %125 ]
  %132 = phi i32 [ %174, %173 ], [ %97, %125 ]
  %133 = load ptr, ptr %6, align 8, !tbaa !102
  %134 = getelementptr inbounds %struct.edge_def, ptr %133, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !164
  %136 = ptrtoint ptr %135 to i64
  %137 = getelementptr inbounds ptr, ptr %3, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !102
  %139 = getelementptr inbounds ptr, ptr %1, i64 %136
  %140 = load ptr, ptr %139, align 8, !tbaa !102
  %141 = load ptr, ptr %133, align 8, !tbaa !142
  %142 = getelementptr inbounds %struct.basic_block_def, ptr %141, i64 0, i32 9
  %143 = load i32, ptr %142, align 8, !tbaa !129
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds ptr, ptr %4, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !102
  %147 = getelementptr inbounds ptr, ptr %2, i64 %144
  %148 = load ptr, ptr %147, align 8, !tbaa !102
  %149 = tail call zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef %138, ptr noundef %140, ptr noundef %146, ptr noundef %148) #6
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %173, label %151, !prof !170

151:                                              ; preds = %130
  %152 = getelementptr inbounds %struct.edge_def, ptr %133, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !123
  %154 = load ptr, ptr @cfun, align 8, !tbaa !102
  %155 = getelementptr inbounds %struct.function, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !103
  %157 = getelementptr inbounds %struct.control_flow_graph, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !113
  %159 = icmp eq ptr %153, %158
  br i1 %159, label %173, label %160, !prof !158

160:                                              ; preds = %151
  %161 = getelementptr inbounds %struct.basic_block_def, ptr %153, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !115
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %173, !prof !171

164:                                              ; preds = %160
  %165 = getelementptr inbounds ptr, ptr %131, i64 1
  store ptr %153, ptr %131, align 8, !tbaa !102
  %166 = load ptr, ptr %6, align 8, !tbaa !102
  %167 = getelementptr inbounds %struct.edge_def, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !123
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 2
  store ptr %166, ptr %169, align 8, !tbaa !115
  %170 = add i32 %132, 1
  %171 = icmp ult ptr %165, %84
  %172 = select i1 %171, ptr %165, ptr %17
  br label %173

173:                                              ; preds = %164, %130, %151, %160
  %174 = phi i32 [ %132, %160 ], [ %132, %151 ], [ %132, %130 ], [ %170, %164 ]
  %175 = phi ptr [ %131, %160 ], [ %131, %151 ], [ %131, %130 ], [ %172, %164 ]
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %176 = load i32, ptr %7, align 8
  %177 = load ptr, ptr %38, align 8
  %178 = call fastcc zeroext i8 @ei_cond(i32 %176, ptr %177, ptr noundef nonnull %6) #7, !range !122
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %86, label %130, !prof !172, !llvm.loop !173

180:                                              ; preds = %86
  %181 = load ptr, ptr @cfun, align 8, !tbaa !102
  br label %182

182:                                              ; preds = %180, %77
  %183 = phi ptr [ %181, %180 ], [ %78, %77 ]
  %184 = getelementptr inbounds %struct.function, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !103
  %186 = getelementptr inbounds %struct.control_flow_graph, ptr %185, i64 0, i32 5
  %187 = load i32, ptr %186, align 8, !tbaa !105
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds ptr, ptr %4, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !102
  tail call void @sbitmap_ones(ptr noundef %190) #6
  %191 = load ptr, ptr @cfun, align 8, !tbaa !102
  %192 = getelementptr inbounds %struct.function, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !103
  %194 = getelementptr inbounds %struct.control_flow_graph, ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !113
  %196 = tail call fastcc ptr @ei_start_1(ptr noundef %195) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !119
  store ptr %196, ptr %38, align 8, !tbaa.struct !121
  %197 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %196, ptr noundef nonnull %6) #7, !range !122
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %218, label %199, !prof !139

199:                                              ; preds = %182, %199
  %200 = load ptr, ptr @cfun, align 8, !tbaa !102
  %201 = getelementptr inbounds %struct.function, ptr %200, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !103
  %203 = getelementptr inbounds %struct.control_flow_graph, ptr %202, i64 0, i32 5
  %204 = load i32, ptr %203, align 8, !tbaa !105
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds ptr, ptr %4, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !102
  %208 = load ptr, ptr %6, align 8, !tbaa !102
  %209 = getelementptr inbounds %struct.edge_def, ptr %208, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !164
  %211 = ptrtoint ptr %210 to i64
  %212 = getelementptr inbounds ptr, ptr %3, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !102
  tail call void @sbitmap_a_and_b(ptr noundef %207, ptr noundef %207, ptr noundef %213) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %214 = load i32, ptr %7, align 8
  %215 = load ptr, ptr %38, align 8
  %216 = call fastcc zeroext i8 @ei_cond(i32 %214, ptr %215, ptr noundef nonnull %6) #7, !range !122
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %199, !prof !143, !llvm.loop !174

218:                                              ; preds = %199, %182
  tail call void @clear_aux_for_edges() #6
  tail call void @free(ptr noundef %17) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_insert_delete(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !prof !95 !PGOFuncName !175 {
  %7 = load ptr, ptr @cfun, align 8, !tbaa !102
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !113
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %22, !prof !139

16:                                               ; preds = %22, %6
  %17 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !96
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %69, !prof !155

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  br label %41

22:                                               ; preds = %6, %22
  %23 = phi ptr [ %34, %22 ], [ %12, %6 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !129
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %5, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !102
  %29 = getelementptr inbounds ptr, ptr %1, i64 %26
  %30 = load ptr, ptr %29, align 8, !tbaa !102
  %31 = getelementptr inbounds ptr, ptr %3, i64 %26
  %32 = load ptr, ptr %31, align 8, !tbaa !102
  tail call void @sbitmap_difference(ptr noundef %28, ptr noundef %30, ptr noundef %32) #6
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !110
  %35 = load ptr, ptr @cfun, align 8, !tbaa !102
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !103
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !113
  %40 = icmp eq ptr %34, %39
  br i1 %40, label %16, label %22, !prof !140, !llvm.loop !176

41:                                               ; preds = %20, %41
  %42 = phi i64 [ 0, %20 ], [ %65, %41 ]
  %43 = load ptr, ptr %21, align 8, !tbaa !156
  %44 = getelementptr inbounds ptr, ptr %43, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !102
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !123
  %48 = load ptr, ptr @cfun, align 8, !tbaa !102
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !103
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !113
  %53 = icmp eq ptr %47, %52
  %54 = getelementptr inbounds ptr, ptr %4, i64 %42
  %55 = load ptr, ptr %54, align 8, !tbaa !102
  %56 = getelementptr inbounds ptr, ptr %2, i64 %42
  %57 = load ptr, ptr %56, align 8, !tbaa !102
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 5
  %60 = select i1 %53, ptr %59, ptr %58, !prof !177
  %61 = load i32, ptr %60, align 8, !tbaa !120
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %3, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !102
  tail call void @sbitmap_difference(ptr noundef %55, ptr noundef %57, ptr noundef %64) #6
  %65 = add nuw nsw i64 %42, 1
  %66 = load i32, ptr %17, align 4, !tbaa !96
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %41, label %69, !prof !178, !llvm.loop !179

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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #4 !prof !180 !PGOFuncName !181 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !182 !PGOFuncName !183 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #7, !range !122
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !184

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #7
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !102
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !185 !PGOFuncName !186 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !187

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #7
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #7
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !188

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !189
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !189
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_intersection_of_preds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @clear_aux_for_edges() local_unnamed_addr #2

; Function Attrs: optsize
declare void @clear_aux_for_blocks() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @pre_edge_rev_lcm(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 !prof !191 {
  %8 = tail call ptr @create_edge_list() #6
  %9 = getelementptr inbounds %struct.edge_list, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !96
  %11 = load ptr, ptr @cfun, align 8, !tbaa !102
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !105
  %16 = tail call ptr @sbitmap_vector_alloc(i32 noundef %15, i32 noundef %0) #6
  %17 = load ptr, ptr @cfun, align 8, !tbaa !102
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !103
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !105
  %22 = tail call ptr @sbitmap_vector_alloc(i32 noundef %21, i32 noundef %0) #6
  %23 = load ptr, ptr @cfun, align 8, !tbaa !102
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !103
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !105
  tail call void @sbitmap_vector_zero(ptr noundef %16, i32 noundef %27) #6
  %28 = load ptr, ptr @cfun, align 8, !tbaa !102
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !103
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !105
  tail call void @sbitmap_vector_zero(ptr noundef %22, i32 noundef %32) #6
  tail call fastcc void @compute_antinout_edge(ptr noundef %3, ptr noundef %1, ptr noundef %16, ptr noundef %22) #7
  %33 = load ptr, ptr @cfun, align 8, !tbaa !102
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !103
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !105
  %38 = tail call ptr @sbitmap_vector_alloc(i32 noundef %37, i32 noundef %0) #6
  %39 = load ptr, ptr @cfun, align 8, !tbaa !102
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !103
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !105
  %44 = tail call ptr @sbitmap_vector_alloc(i32 noundef %43, i32 noundef %0) #6
  tail call void @compute_available(ptr noundef %2, ptr noundef %4, ptr noundef %38, ptr noundef %44) #7
  %45 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  tail call fastcc void @compute_farthest(ptr noundef %8, i32 noundef %0, ptr noundef %38, ptr noundef %44, ptr noundef %16, ptr noundef %4, ptr noundef %45) #7
  tail call void @free(ptr noundef %16) #7
  tail call void @free(ptr noundef %22) #7
  tail call void @free(ptr noundef %44) #7
  tail call void @free(ptr noundef %38) #7
  %46 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  %47 = load ptr, ptr @cfun, align 8, !tbaa !102
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !103
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !105
  %52 = add nsw i32 %51, 1
  %53 = tail call ptr @sbitmap_vector_alloc(i32 noundef %52, i32 noundef %0) #6
  tail call fastcc void @compute_nearerout(ptr noundef %8, ptr noundef %45, ptr noundef %2, ptr noundef %46, ptr noundef %53) #7
  tail call void @free(ptr noundef %45) #7
  %54 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  store ptr %54, ptr %5, align 8, !tbaa !102
  %55 = load ptr, ptr @cfun, align 8, !tbaa !102
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !103
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !105
  %60 = tail call ptr @sbitmap_vector_alloc(i32 noundef %59, i32 noundef %0) #6
  store ptr %60, ptr %6, align 8, !tbaa !102
  %61 = load ptr, ptr %5, align 8, !tbaa !102
  tail call fastcc void @compute_rev_insert_delete(ptr noundef %8, ptr noundef %2, ptr noundef %46, ptr noundef %53, ptr noundef %61, ptr noundef %60) #7
  tail call void @free(ptr noundef %53) #7
  tail call void @free(ptr noundef %46) #7
  ret ptr %8
}

; Function Attrs: optsize
declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_farthest(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #0 !prof !191 !PGOFuncName !192 {
  %8 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !96
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %1) #6
  %11 = tail call ptr @sbitmap_alloc(i32 noundef %1) #6
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %13, label %68

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %15 = zext nneg i32 %9 to i64
  br label %16

16:                                               ; preds = %13, %65
  %17 = phi i64 [ 0, %13 ], [ %66, %65 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !156
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !102
  %21 = load ptr, ptr %20, align 8, !tbaa !142
  %22 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !123
  %24 = load ptr, ptr @cfun, align 8, !tbaa !102
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !113
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %16
  %31 = getelementptr inbounds ptr, ptr %6, i64 %17
  %32 = load ptr, ptr %31, align 8, !tbaa !102
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !129
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %2, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !102
  tail call void @sbitmap_copy(ptr noundef %32, ptr noundef %37) #6
  br label %65

38:                                               ; preds = %16
  %39 = load ptr, ptr %26, align 8, !tbaa !109
  %40 = icmp eq ptr %21, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %6, i64 %17
  %43 = load ptr, ptr %42, align 8, !tbaa !102
  tail call void @sbitmap_zero(ptr noundef %43) #6
  br label %65

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !129
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !102
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !129
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %4, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !102
  tail call void @sbitmap_difference(ptr noundef %10, ptr noundef %49, ptr noundef %54) #6
  %55 = load i32, ptr %50, align 8, !tbaa !129
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %3, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !102
  tail call void @sbitmap_not(ptr noundef %11, ptr noundef %58) #6
  %59 = getelementptr inbounds ptr, ptr %6, i64 %17
  %60 = load ptr, ptr %59, align 8, !tbaa !102
  %61 = load i32, ptr %50, align 8, !tbaa !129
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %5, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !102
  tail call void @sbitmap_a_and_b_or_c(ptr noundef %60, ptr noundef %10, ptr noundef %64, ptr noundef %11) #6
  br label %65

65:                                               ; preds = %30, %44, %41
  %66 = add nuw nsw i64 %17, 1
  %67 = icmp eq i64 %66, %15
  br i1 %67, label %68, label %16, !llvm.loop !193

68:                                               ; preds = %65, %7
  %69 = load ptr, ptr %11, align 8, !tbaa !161
  tail call void @free(ptr noundef %69) #7
  tail call void @free(ptr noundef %11) #7
  %70 = load ptr, ptr %10, align 8, !tbaa !161
  tail call void @free(ptr noundef %70) #7
  tail call void @free(ptr noundef %10) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_nearerout(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !191 !PGOFuncName !194 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  %8 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !96
  %10 = load ptr, ptr @cfun, align 8, !tbaa !102
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !108
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  %18 = tail call ptr @xmalloc(i64 noundef %17) #6
  %19 = icmp sgt i32 %9, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !156
  %23 = zext nneg i32 %9 to i64
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi i64 [ 0, %20 ], [ %30, %24 ]
  %26 = inttoptr i64 %25 to ptr
  %27 = getelementptr inbounds ptr, ptr %22, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !102
  %29 = getelementptr inbounds %struct.edge_def, ptr %28, i64 0, i32 3
  store ptr %26, ptr %29, align 8, !tbaa !164
  %30 = add nuw nsw i64 %25, 1
  %31 = icmp eq i64 %30, %23
  br i1 %31, label %32, label %24, !llvm.loop !195

32:                                               ; preds = %24, %5
  tail call void @sbitmap_vector_ones(ptr noundef %3, i32 noundef %9) #6
  %33 = load ptr, ptr @cfun, align 8, !tbaa !102
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !103
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !113
  %38 = tail call fastcc ptr @ei_start_1(ptr noundef %37) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !119
  %39 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %38, ptr %39, align 8, !tbaa.struct !121
  %40 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %38, ptr noundef nonnull %6) #7, !range !122
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %32, %42
  %43 = load ptr, ptr %6, align 8, !tbaa !102
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !164
  %46 = ptrtoint ptr %45 to i64
  %47 = getelementptr inbounds ptr, ptr %3, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !102
  %49 = getelementptr inbounds ptr, ptr %1, i64 %46
  %50 = load ptr, ptr %49, align 8, !tbaa !102
  tail call void @sbitmap_copy(ptr noundef %48, ptr noundef %50) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %51 = load i32, ptr %7, align 8
  %52 = load ptr, ptr %39, align 8
  %53 = call fastcc zeroext i8 @ei_cond(i32 %51, ptr %52, ptr noundef nonnull %6) #7, !range !122
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %42, !llvm.loop !196

55:                                               ; preds = %42, %32
  %56 = load ptr, ptr @cfun, align 8, !tbaa !102
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !103
  %59 = load ptr, ptr %58, align 8, !tbaa !109
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !110
  %62 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !113
  %64 = icmp eq ptr %61, %63
  br i1 %64, label %159, label %65

65:                                               ; preds = %55, %65
  %66 = phi ptr [ %71, %65 ], [ %61, %55 ]
  %67 = phi ptr [ %68, %65 ], [ %18, %55 ]
  %68 = getelementptr inbounds ptr, ptr %67, i64 1
  store ptr %66, ptr %67, align 8, !tbaa !102
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 2
  store ptr %66, ptr %69, align 8, !tbaa !115
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !110
  %72 = load ptr, ptr @cfun, align 8, !tbaa !102
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !103
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !113
  %77 = icmp eq ptr %71, %76
  br i1 %77, label %81, label %65, !llvm.loop !197

78:                                               ; preds = %151, %110
  %79 = phi ptr [ %83, %110 ], [ %152, %151 ]
  %80 = icmp eq ptr %79, %18
  br i1 %80, label %157, label %81, !llvm.loop !198

81:                                               ; preds = %65, %78
  %82 = phi ptr [ %79, %78 ], [ %68, %65 ]
  %83 = getelementptr inbounds ptr, ptr %82, i64 -1
  %84 = load ptr, ptr %83, align 8, !tbaa !102
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 2
  store ptr null, ptr %85, align 8, !tbaa !115
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !129
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds ptr, ptr %4, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !102
  tail call void @sbitmap_ones(ptr noundef %90) #6
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 1
  %92 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %91) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !119
  store ptr %92, ptr %39, align 8, !tbaa.struct !121
  %93 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %92, ptr noundef nonnull %6) #7, !range !122
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %81, %95
  %96 = load i32, ptr %86, align 8, !tbaa !129
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %4, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !102
  %100 = load ptr, ptr %6, align 8, !tbaa !102
  %101 = getelementptr inbounds %struct.edge_def, ptr %100, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !164
  %103 = ptrtoint ptr %102 to i64
  %104 = getelementptr inbounds ptr, ptr %3, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !102
  tail call void @sbitmap_a_and_b(ptr noundef %99, ptr noundef %99, ptr noundef %105) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %106 = load i32, ptr %7, align 8
  %107 = load ptr, ptr %39, align 8
  %108 = call fastcc zeroext i8 @ei_cond(i32 %106, ptr %107, ptr noundef nonnull %6) #7, !range !122
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %95, !llvm.loop !199

110:                                              ; preds = %95, %81
  %111 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %84) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !119
  store ptr %111, ptr %39, align 8, !tbaa.struct !121
  %112 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %111, ptr noundef nonnull %6) #7, !range !122
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %78, label %114

114:                                              ; preds = %110, %151
  %115 = phi ptr [ %152, %151 ], [ %83, %110 ]
  %116 = load ptr, ptr %6, align 8, !tbaa !102
  %117 = getelementptr inbounds %struct.edge_def, ptr %116, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !164
  %119 = ptrtoint ptr %118 to i64
  %120 = getelementptr inbounds ptr, ptr %3, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !102
  %122 = getelementptr inbounds ptr, ptr %1, i64 %119
  %123 = load ptr, ptr %122, align 8, !tbaa !102
  %124 = getelementptr inbounds %struct.edge_def, ptr %116, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !123
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 9
  %127 = load i32, ptr %126, align 8, !tbaa !129
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds ptr, ptr %4, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !102
  %131 = getelementptr inbounds ptr, ptr %2, i64 %128
  %132 = load ptr, ptr %131, align 8, !tbaa !102
  %133 = tail call zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef %121, ptr noundef %123, ptr noundef %130, ptr noundef %132) #6
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %151, label %135

135:                                              ; preds = %114
  %136 = load ptr, ptr %116, align 8, !tbaa !142
  %137 = load ptr, ptr @cfun, align 8, !tbaa !102
  %138 = getelementptr inbounds %struct.function, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !103
  %140 = load ptr, ptr %139, align 8, !tbaa !109
  %141 = icmp eq ptr %136, %140
  br i1 %141, label %151, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.basic_block_def, ptr %136, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !115
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = getelementptr inbounds ptr, ptr %115, i64 1
  store ptr %136, ptr %115, align 8, !tbaa !102
  %148 = load ptr, ptr %6, align 8, !tbaa !102
  %149 = load ptr, ptr %148, align 8, !tbaa !142
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %149, i64 0, i32 2
  store ptr %148, ptr %150, align 8, !tbaa !115
  br label %151

151:                                              ; preds = %114, %135, %142, %146
  %152 = phi ptr [ %147, %146 ], [ %115, %142 ], [ %115, %135 ], [ %115, %114 ]
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %153 = load i32, ptr %7, align 8
  %154 = load ptr, ptr %39, align 8
  %155 = call fastcc zeroext i8 @ei_cond(i32 %153, ptr %154, ptr noundef nonnull %6) #7, !range !122
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %78, label %114, !llvm.loop !200

157:                                              ; preds = %78
  %158 = load ptr, ptr @cfun, align 8, !tbaa !102
  br label %159

159:                                              ; preds = %55, %157
  %160 = phi ptr [ %158, %157 ], [ %56, %55 ]
  %161 = getelementptr inbounds %struct.function, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !103
  %163 = getelementptr inbounds %struct.control_flow_graph, ptr %162, i64 0, i32 5
  %164 = load i32, ptr %163, align 8, !tbaa !105
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds ptr, ptr %4, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !102
  tail call void @sbitmap_ones(ptr noundef %167) #6
  %168 = load ptr, ptr @cfun, align 8, !tbaa !102
  %169 = getelementptr inbounds %struct.function, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !103
  %171 = load ptr, ptr %170, align 8, !tbaa !109
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 1
  %173 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %172) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !119
  store ptr %173, ptr %39, align 8, !tbaa.struct !121
  %174 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %173, ptr noundef nonnull %6) #7, !range !122
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %195, label %176

176:                                              ; preds = %159, %176
  %177 = load ptr, ptr @cfun, align 8, !tbaa !102
  %178 = getelementptr inbounds %struct.function, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !103
  %180 = getelementptr inbounds %struct.control_flow_graph, ptr %179, i64 0, i32 5
  %181 = load i32, ptr %180, align 8, !tbaa !105
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds ptr, ptr %4, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !102
  %185 = load ptr, ptr %6, align 8, !tbaa !102
  %186 = getelementptr inbounds %struct.edge_def, ptr %185, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !164
  %188 = ptrtoint ptr %187 to i64
  %189 = getelementptr inbounds ptr, ptr %3, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !102
  tail call void @sbitmap_a_and_b(ptr noundef %184, ptr noundef %184, ptr noundef %190) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %191 = load i32, ptr %7, align 8
  %192 = load ptr, ptr %39, align 8
  %193 = call fastcc zeroext i8 @ei_cond(i32 %191, ptr %192, ptr noundef nonnull %6) #7, !range !122
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %176, !llvm.loop !201

195:                                              ; preds = %176, %159
  tail call void @clear_aux_for_edges() #6
  tail call void @free(ptr noundef %18) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_rev_insert_delete(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !prof !191 !PGOFuncName !202 {
  %7 = load ptr, ptr @cfun, align 8, !tbaa !102
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !113
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %22, %6
  %17 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !96
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  br label %41

22:                                               ; preds = %6, %22
  %23 = phi ptr [ %34, %22 ], [ %12, %6 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !129
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %5, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !102
  %29 = getelementptr inbounds ptr, ptr %1, i64 %26
  %30 = load ptr, ptr %29, align 8, !tbaa !102
  %31 = getelementptr inbounds ptr, ptr %3, i64 %26
  %32 = load ptr, ptr %31, align 8, !tbaa !102
  tail call void @sbitmap_difference(ptr noundef %28, ptr noundef %30, ptr noundef %32) #6
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !110
  %35 = load ptr, ptr @cfun, align 8, !tbaa !102
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !103
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !113
  %40 = icmp eq ptr %34, %39
  br i1 %40, label %16, label %22, !llvm.loop !203

41:                                               ; preds = %20, %41
  %42 = phi i64 [ 0, %20 ], [ %63, %41 ]
  %43 = load ptr, ptr %21, align 8, !tbaa !156
  %44 = getelementptr inbounds ptr, ptr %43, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !102
  %46 = load ptr, ptr %45, align 8, !tbaa !142
  %47 = load ptr, ptr @cfun, align 8, !tbaa !102
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !103
  %50 = load ptr, ptr %49, align 8, !tbaa !109
  %51 = icmp eq ptr %46, %50
  %52 = getelementptr inbounds ptr, ptr %4, i64 %42
  %53 = load ptr, ptr %52, align 8, !tbaa !102
  %54 = getelementptr inbounds ptr, ptr %2, i64 %42
  %55 = load ptr, ptr %54, align 8, !tbaa !102
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 9
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 5
  %58 = select i1 %51, ptr %57, ptr %56
  %59 = load i32, ptr %58, align 8, !tbaa !120
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %3, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !102
  tail call void @sbitmap_difference(ptr noundef %53, ptr noundef %55, ptr noundef %62) #6
  %63 = add nuw nsw i64 %42, 1
  %64 = load i32, ptr %17, align 4, !tbaa !96
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %41, label %67, !llvm.loop !204

67:                                               ; preds = %41, %16
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_intersection_of_succs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !182 !PGOFuncName !205 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !206

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !185 !PGOFuncName !207 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !187

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #7
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #7
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !208 !PGOFuncName !209 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !210

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !211
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !213 !PGOFuncName !214 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !215

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #6
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !102
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !185 !PGOFuncName !216 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  ret ptr %5
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!94}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!35 = !{ptr @pre_edge_lcm, ptr @create_edge_list, i64 31}
!36 = !{ptr @pre_edge_lcm, ptr @sbitmap_vector_alloc, i64 279}
!37 = !{ptr @pre_edge_lcm, ptr @compute_available, i64 31}
!38 = !{ptr @pre_edge_lcm, ptr @free, i64 217}
!39 = !{ptr @pre_edge_lcm, ptr @compute_antinout_edge, i64 31}
!40 = !{ptr @pre_edge_lcm, ptr @compute_earliest, i64 31}
!41 = !{ptr @pre_edge_lcm, ptr @compute_laterin, i64 31}
!42 = !{ptr @pre_edge_lcm, ptr @compute_insert_delete, i64 31}
!43 = !{ptr @compute_available, ptr @xmalloc, i64 124}
!44 = !{ptr @compute_available, ptr @sbitmap_vector_ones, i64 124}
!45 = !{ptr @compute_available, ptr @ei_start_1, i64 22039}
!46 = !{ptr @compute_available, ptr @ei_cond, i64 58968}
!47 = !{ptr @compute_available, ptr @ei_next, i64 36929}
!48 = !{ptr @compute_available, ptr @sbitmap_zero, i64 124}
!49 = !{ptr @compute_available, ptr @sbitmap_intersection_of_preds, i64 21801}
!50 = !{ptr @compute_available, ptr @sbitmap_union_of_diff_cg, i64 21925}
!51 = !{ptr @compute_available, ptr @clear_aux_for_edges, i64 124}
!52 = !{ptr @compute_available, ptr @clear_aux_for_blocks, i64 124}
!53 = !{ptr @compute_available, ptr @free, i64 124}
!54 = !{ptr @compute_antinout_edge, ptr @xmalloc, i64 31}
!55 = !{ptr @compute_antinout_edge, ptr @sbitmap_vector_ones, i64 31}
!56 = !{ptr @compute_antinout_edge, ptr @ei_start_1, i64 5823}
!57 = !{ptr @compute_antinout_edge, ptr @ei_cond, i64 15394}
!58 = !{ptr @compute_antinout_edge, ptr @ei_next, i64 9571}
!59 = !{ptr @compute_antinout_edge, ptr @sbitmap_zero, i64 104}
!60 = !{ptr @compute_antinout_edge, ptr @sbitmap_intersection_of_succs, i64 5689}
!61 = !{ptr @compute_antinout_edge, ptr @sbitmap_a_or_b_and_c_cg, i64 5793}
!62 = !{ptr @compute_antinout_edge, ptr @clear_aux_for_edges, i64 31}
!63 = !{ptr @compute_antinout_edge, ptr @clear_aux_for_blocks, i64 31}
!64 = !{ptr @compute_antinout_edge, ptr @free, i64 31}
!65 = !{ptr @compute_earliest, ptr @sbitmap_alloc, i64 62}
!66 = !{ptr @compute_earliest, ptr @sbitmap_copy, i64 31}
!67 = !{ptr @compute_earliest, ptr @sbitmap_zero, i64 104}
!68 = !{ptr @compute_earliest, ptr @sbitmap_difference, i64 9437}
!69 = !{ptr @compute_earliest, ptr @sbitmap_not, i64 9437}
!70 = !{ptr @compute_earliest, ptr @sbitmap_a_and_b_or_c, i64 9437}
!71 = !{ptr @compute_earliest, ptr @free, i64 124}
!72 = !{ptr @compute_laterin, ptr @xmalloc, i64 31}
!73 = !{ptr @compute_laterin, ptr @sbitmap_vector_ones, i64 31}
!74 = !{ptr @compute_laterin, ptr @ei_start_1, i64 11648}
!75 = !{ptr @compute_laterin, ptr @ei_cond, i64 30793}
!76 = !{ptr @compute_laterin, ptr @sbitmap_copy, i64 31}
!77 = !{ptr @compute_laterin, ptr @ei_next, i64 19145}
!78 = !{ptr @compute_laterin, ptr @sbitmap_ones, i64 5824}
!79 = !{ptr @compute_laterin, ptr @sbitmap_a_and_b, i64 9573}
!80 = !{ptr @compute_laterin, ptr @sbitmap_union_of_diff_cg, i64 9541}
!81 = !{ptr @compute_laterin, ptr @clear_aux_for_edges, i64 31}
!82 = !{ptr @compute_laterin, ptr @free, i64 31}
!83 = !{ptr @compute_insert_delete, ptr @sbitmap_difference, i64 15364}
!84 = !{ptr @ei_cond, ptr @ei_end_p, i64 107109}
!85 = !{ptr @ei_cond, ptr @ei_edge, i64 66863}
!86 = !{ptr @ei_next, ptr @ei_container, i64 133725}
!87 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 66863}
!88 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!89 = !{ptr @ei_end_p, ptr @ei_container, i64 214217}
!90 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 107109}
!91 = !{ptr @ei_edge, ptr @ei_container, i64 133725}
!92 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 66863}
!93 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!94 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!95 = !{!"function_entry_count", i64 31}
!96 = !{!97, !98, i64 4}
!97 = !{!"edge_list", !98, i64 0, !98, i64 4, !101, i64 8}
!98 = !{!"int", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C/C++ TBAA"}
!101 = !{!"any pointer", !99, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!104, !101, i64 8}
!104 = !{!"function", !101, i64 0, !101, i64 8, !101, i64 16, !101, i64 24, !101, i64 32, !101, i64 40, !101, i64 48, !101, i64 56, !101, i64 64, !101, i64 72, !101, i64 80, !101, i64 88, !101, i64 96, !98, i64 104, !98, i64 108, !98, i64 112, !98, i64 116, !98, i64 120, !98, i64 124, !101, i64 128, !98, i64 136, !98, i64 137, !98, i64 138, !98, i64 138, !98, i64 138, !98, i64 138, !98, i64 138, !98, i64 138, !98, i64 138, !98, i64 139, !98, i64 139, !98, i64 139, !98, i64 139, !98, i64 139, !98, i64 139, !98, i64 139}
!105 = !{!106, !98, i64 32}
!106 = !{!"control_flow_graph", !101, i64 0, !101, i64 8, !101, i64 16, !98, i64 24, !98, i64 28, !98, i64 32, !101, i64 40, !98, i64 48, !99, i64 52, !99, i64 60, !98, i64 68, !98, i64 72}
!107 = !{!"function_entry_count", i64 124}
!108 = !{!106, !98, i64 24}
!109 = !{!106, !101, i64 0}
!110 = !{!111, !101, i64 56}
!111 = !{!"basic_block_def", !101, i64 0, !101, i64 8, !101, i64 16, !101, i64 24, !99, i64 32, !101, i64 48, !101, i64 56, !99, i64 64, !112, i64 72, !98, i64 80, !98, i64 84, !98, i64 88, !98, i64 92, !98, i64 96}
!112 = !{!"long", !99, i64 0}
!113 = !{!106, !101, i64 8}
!114 = !{!"branch_weights", i32 1, i32 249}
!115 = !{!111, !101, i64 16}
!116 = !{!"branch_weights", i32 249, i32 43955}
!117 = distinct !{!117, !118}
!118 = !{!"llvm.loop.mustprogress"}
!119 = !{i64 0, i64 4, !120, i64 8, i64 8, !102}
!120 = !{!98, !98, i64 0}
!121 = !{i64 0, i64 8, !102}
!122 = !{i8 0, i8 2}
!123 = !{!124, !101, i64 8}
!124 = !{!"edge_def", !101, i64 0, !101, i64 8, !99, i64 16, !101, i64 24, !101, i64 32, !98, i64 40, !98, i64 44, !98, i64 48, !98, i64 52, !112, i64 56}
!125 = !{!"branch_weights", i32 249, i32 1}
!126 = distinct !{!126, !118}
!127 = !{!"branch_weights", i32 21978, i32 125}
!128 = !{!"branch_weights", i32 125, i32 21978}
!129 = !{!111, !98, i64 80}
!130 = !{!"branch_weights", i32 10, i32 22093}
!131 = !{!"branch_weights", i32 1, i32 22092}
!132 = !{!"branch_weights", i32 257, i32 36847}
!133 = !{!"branch_weights", i32 257, i32 1}
!134 = !{!"branch_weights", i32 22092, i32 15011}
!135 = distinct !{!135, !118}
!136 = distinct !{!136, !118}
!137 = !{!"lcm.c:compute_antinout_edge"}
!138 = !{!111, !101, i64 48}
!139 = !{!"branch_weights", i32 1, i32 127}
!140 = !{!"branch_weights", i32 127, i32 23793}
!141 = distinct !{!141, !118}
!142 = !{!124, !101, i64 0}
!143 = !{!"branch_weights", i32 127, i32 301}
!144 = distinct !{!144, !118}
!145 = !{!"branch_weights", i32 5949, i32 32}
!146 = !{!"branch_weights", i32 107, i32 5874}
!147 = !{!"branch_weights", i32 1, i32 5980}
!148 = !{!"branch_weights", i32 1, i32 5979}
!149 = !{!"branch_weights", i32 32, i32 9743}
!150 = !{!"branch_weights", i32 32, i32 1}
!151 = !{!"branch_weights", i32 5979, i32 3795}
!152 = distinct !{!152, !118}
!153 = distinct !{!153, !118}
!154 = !{!"lcm.c:compute_earliest"}
!155 = !{!"branch_weights", i32 127, i32 1}
!156 = !{!97, !101, i64 8}
!157 = !{!"branch_weights", i32 32, i32 9849}
!158 = !{!"branch_weights", i32 107, i32 9743}
!159 = !{!"branch_weights", i32 127, i32 39393}
!160 = distinct !{!160, !118}
!161 = !{!162, !101, i64 0}
!162 = !{!"simple_bitmap_def", !101, i64 0, !98, i64 8, !98, i64 12, !99, i64 16}
!163 = !{!"lcm.c:compute_laterin"}
!164 = !{!124, !101, i64 24}
!165 = distinct !{!165, !118}
!166 = distinct !{!166, !118}
!167 = distinct !{!167, !118}
!168 = distinct !{!168, !118}
!169 = distinct !{!169, !118}
!170 = !{!"branch_weights", i32 1, i32 9849}
!171 = !{!"branch_weights", i32 1, i32 9743}
!172 = !{!"branch_weights", i32 5979, i32 3870}
!173 = distinct !{!173, !118}
!174 = distinct !{!174, !118}
!175 = !{!"lcm.c:compute_insert_delete"}
!176 = distinct !{!176, !118}
!177 = !{!"branch_weights", i32 107, i32 9774}
!178 = !{!"branch_weights", i32 39393, i32 127}
!179 = distinct !{!179, !118}
!180 = !{!"function_entry_count", i64 40246}
!181 = !{!"lcm.c:ei_start_1"}
!182 = !{!"function_entry_count", i64 107109}
!183 = !{!"lcm.c:ei_cond"}
!184 = !{!"branch_weights", i32 66864, i32 40247}
!185 = !{!"function_entry_count", i64 66863}
!186 = !{!"lcm.c:ei_next"}
!187 = !{!"branch_weights", i32 1, i32 66864}
!188 = !{!"branch_weights", i32 66864, i32 1}
!189 = !{!190, !98, i64 0}
!190 = !{!"", !98, i64 0, !101, i64 8}
!191 = !{!"function_entry_count", i64 0}
!192 = !{!"lcm.c:compute_farthest"}
!193 = distinct !{!193, !118}
!194 = !{!"lcm.c:compute_nearerout"}
!195 = distinct !{!195, !118}
!196 = distinct !{!196, !118}
!197 = distinct !{!197, !118}
!198 = distinct !{!198, !118}
!199 = distinct !{!199, !118}
!200 = distinct !{!200, !118}
!201 = distinct !{!201, !118}
!202 = !{!"lcm.c:compute_rev_insert_delete"}
!203 = distinct !{!203, !118}
!204 = distinct !{!204, !118}
!205 = !{!"lcm.c:ei_end_p"}
!206 = !{!"branch_weights", i32 1, i32 107110}
!207 = !{!"lcm.c:ei_edge"}
!208 = !{!"function_entry_count", i64 173972}
!209 = !{!"lcm.c:VEC_edge_base_length"}
!210 = !{!"branch_weights", i32 1, i32 173973}
!211 = !{!212, !98, i64 0}
!212 = !{!"VEC_edge_base", !98, i64 0, !98, i64 4, !99, i64 8}
!213 = !{!"function_entry_count", i64 481670}
!214 = !{!"lcm.c:ei_container"}
!215 = !{!"branch_weights", i32 1, i32 481671}
!216 = !{!"lcm.c:VEC_edge_base_index"}
