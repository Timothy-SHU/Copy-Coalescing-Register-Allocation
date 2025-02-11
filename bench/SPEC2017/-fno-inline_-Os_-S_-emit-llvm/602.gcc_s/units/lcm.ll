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
define dso_local ptr @pre_edge_lcm(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = tail call ptr @create_edge_list() #6
  %9 = getelementptr inbounds %struct.edge_list, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !6
  %11 = load ptr, ptr @cfun, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !15
  %16 = tail call ptr @sbitmap_vector_alloc(i32 noundef %15, i32 noundef %0) #6
  %17 = load ptr, ptr @cfun, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !15
  %22 = tail call ptr @sbitmap_vector_alloc(i32 noundef %21, i32 noundef %0) #6
  tail call void @compute_available(ptr noundef %2, ptr noundef %4, ptr noundef %22, ptr noundef %16) #7
  tail call void @free(ptr noundef %16) #7
  %23 = load ptr, ptr @cfun, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !15
  %28 = tail call ptr @sbitmap_vector_alloc(i32 noundef %27, i32 noundef %0) #6
  %29 = load ptr, ptr @cfun, align 8, !tbaa !12
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !15
  %34 = tail call ptr @sbitmap_vector_alloc(i32 noundef %33, i32 noundef %0) #6
  tail call fastcc void @compute_antinout_edge(ptr noundef %3, ptr noundef %1, ptr noundef %28, ptr noundef %34) #7
  %35 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  tail call fastcc void @compute_earliest(ptr noundef %8, i32 noundef %0, ptr noundef %28, ptr noundef %34, ptr noundef %22, ptr noundef %4, ptr noundef %35) #7
  tail call void @free(ptr noundef %34) #7
  tail call void @free(ptr noundef %28) #7
  tail call void @free(ptr noundef %22) #7
  %36 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  %37 = load ptr, ptr @cfun, align 8, !tbaa !12
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !15
  %42 = add nsw i32 %41, 1
  %43 = tail call ptr @sbitmap_vector_alloc(i32 noundef %42, i32 noundef %0) #6
  tail call fastcc void @compute_laterin(ptr noundef %8, ptr noundef %35, ptr noundef %3, ptr noundef %36, ptr noundef %43) #7
  tail call void @free(ptr noundef %35) #7
  %44 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  store ptr %44, ptr %5, align 8, !tbaa !12
  %45 = load ptr, ptr @cfun, align 8, !tbaa !12
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !13
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !15
  %50 = tail call ptr @sbitmap_vector_alloc(i32 noundef %49, i32 noundef %0) #6
  store ptr %50, ptr %6, align 8, !tbaa !12
  %51 = load ptr, ptr %5, align 8, !tbaa !12
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
define dso_local void @compute_available(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  %7 = load ptr, ptr @cfun, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !17
  %12 = add nsw i32 %11, -2
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr @xmalloc(i64 noundef %14) #6
  %16 = load ptr, ptr @cfun, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !15
  tail call void @sbitmap_vector_ones(ptr noundef %2, i32 noundef %20) #6
  %21 = load ptr, ptr @cfun, align 8, !tbaa !12
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %45, label %30

30:                                               ; preds = %4, %30
  %31 = phi ptr [ %36, %30 ], [ %26, %4 ]
  %32 = phi ptr [ %33, %30 ], [ %15, %4 ]
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  store ptr %31, ptr %32, align 8, !tbaa !12
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 2
  store ptr %31, ptr %34, align 8, !tbaa !23
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !19
  %37 = load ptr, ptr @cfun, align 8, !tbaa !12
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %43, label %30, !llvm.loop !24

43:                                               ; preds = %30
  %44 = load ptr, ptr %39, align 8, !tbaa !18
  br label %45

45:                                               ; preds = %43, %4
  %46 = phi ptr [ %24, %4 ], [ %44, %43 ]
  %47 = phi ptr [ %23, %4 ], [ %39, %43 ]
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !17
  %50 = add nsw i32 %49, -2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %15, i64 %51
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 1
  %54 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %53) #7
  store i32 0, ptr %6, align 8, !tbaa.struct !26
  %55 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %54, ptr %55, align 8, !tbaa.struct !28
  %56 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %54, ptr noundef nonnull %5) #7, !range !29
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %60, %45
  %59 = icmp eq i32 %50, 0
  br i1 %59, label %156, label %73

60:                                               ; preds = %45, %60
  %61 = load ptr, ptr @cfun, align 8, !tbaa !12
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !13
  %64 = load ptr, ptr %63, align 8, !tbaa !18
  %65 = load ptr, ptr %5, align 8, !tbaa !12
  %66 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !30
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 2
  store ptr %64, ptr %68, align 8, !tbaa !23
  call fastcc void @ei_next(ptr noundef nonnull %6) #7
  %69 = load i32, ptr %6, align 8
  %70 = load ptr, ptr %55, align 8
  %71 = call fastcc zeroext i8 @ei_cond(i32 %69, ptr %70, ptr noundef nonnull %5) #7, !range !29
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %58, label %60, !llvm.loop !32

73:                                               ; preds = %58, %152
  %74 = phi ptr [ %154, %152 ], [ %15, %58 ]
  %75 = phi ptr [ %81, %152 ], [ %15, %58 ]
  %76 = phi i32 [ %153, %152 ], [ %50, %58 ]
  %77 = getelementptr inbounds ptr, ptr %75, i64 1
  %78 = load ptr, ptr %75, align 8, !tbaa !12
  %79 = add i32 %76, -1
  %80 = icmp ult ptr %77, %52
  %81 = select i1 %80, ptr %77, ptr %15
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !23
  %84 = load ptr, ptr @cfun, align 8, !tbaa !12
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !13
  %87 = load ptr, ptr %86, align 8, !tbaa !18
  %88 = icmp eq ptr %83, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %73
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !33
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %3, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !12
  tail call void @sbitmap_zero(ptr noundef %94) #6
  br label %101

95:                                               ; preds = %73
  store ptr null, ptr %82, align 8, !tbaa !23
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 9
  %97 = load i32, ptr %96, align 8, !tbaa !33
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %3, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !12
  tail call void @sbitmap_intersection_of_preds(ptr noundef %100, ptr noundef %2, i32 noundef %97) #6
  br label %101

101:                                              ; preds = %95, %89
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 9
  %103 = load i32, ptr %102, align 8, !tbaa !33
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %2, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !12
  %107 = getelementptr inbounds ptr, ptr %0, i64 %104
  %108 = load ptr, ptr %107, align 8, !tbaa !12
  %109 = getelementptr inbounds ptr, ptr %3, i64 %104
  %110 = load ptr, ptr %109, align 8, !tbaa !12
  %111 = getelementptr inbounds ptr, ptr %1, i64 %104
  %112 = load ptr, ptr %111, align 8, !tbaa !12
  %113 = tail call zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef %106, ptr noundef %108, ptr noundef %110, ptr noundef %112) #6
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %152, label %115

115:                                              ; preds = %101
  %116 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 1
  %117 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %116) #7
  store i32 0, ptr %6, align 8, !tbaa.struct !26
  store ptr %117, ptr %55, align 8, !tbaa.struct !28
  %118 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %117, ptr noundef nonnull %5) #7, !range !29
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %152, label %120

120:                                              ; preds = %115, %145
  %121 = phi ptr [ %147, %145 ], [ %74, %115 ]
  %122 = phi i32 [ %146, %145 ], [ %79, %115 ]
  %123 = load ptr, ptr %5, align 8, !tbaa !12
  %124 = getelementptr inbounds %struct.edge_def, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !30
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !23
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %145

129:                                              ; preds = %120
  %130 = load ptr, ptr @cfun, align 8, !tbaa !12
  %131 = getelementptr inbounds %struct.function, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !13
  %133 = getelementptr inbounds %struct.control_flow_graph, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !22
  %135 = icmp eq ptr %125, %134
  br i1 %135, label %145, label %136

136:                                              ; preds = %129
  %137 = getelementptr inbounds ptr, ptr %121, i64 1
  store ptr %125, ptr %121, align 8, !tbaa !12
  %138 = load ptr, ptr %5, align 8, !tbaa !12
  %139 = getelementptr inbounds %struct.edge_def, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !30
  %141 = getelementptr inbounds %struct.basic_block_def, ptr %140, i64 0, i32 2
  store ptr %138, ptr %141, align 8, !tbaa !23
  %142 = add i32 %122, 1
  %143 = icmp ult ptr %137, %52
  %144 = select i1 %143, ptr %137, ptr %15
  br label %145

145:                                              ; preds = %136, %120, %129
  %146 = phi i32 [ %122, %120 ], [ %122, %129 ], [ %142, %136 ]
  %147 = phi ptr [ %121, %120 ], [ %121, %129 ], [ %144, %136 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #7
  %148 = load i32, ptr %6, align 8
  %149 = load ptr, ptr %55, align 8
  %150 = call fastcc zeroext i8 @ei_cond(i32 %148, ptr %149, ptr noundef nonnull %5) #7, !range !29
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %120, !llvm.loop !34

152:                                              ; preds = %145, %115, %101
  %153 = phi i32 [ %79, %101 ], [ %79, %115 ], [ %146, %145 ]
  %154 = phi ptr [ %74, %101 ], [ %74, %115 ], [ %147, %145 ]
  %155 = icmp eq i32 %153, 0
  br i1 %155, label %156, label %73, !llvm.loop !35

156:                                              ; preds = %152, %58
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
define internal fastcc void @compute_antinout_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  %7 = load ptr, ptr @cfun, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !17
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr @xmalloc(i64 noundef %13) #6
  %15 = load ptr, ptr @cfun, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !15
  tail call void @sbitmap_vector_ones(ptr noundef %2, i32 noundef %19) #6
  %20 = load ptr, ptr @cfun, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !36
  %27 = load ptr, ptr %22, align 8, !tbaa !18
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %44, label %29

29:                                               ; preds = %4, %29
  %30 = phi ptr [ %35, %29 ], [ %26, %4 ]
  %31 = phi ptr [ %32, %29 ], [ %14, %4 ]
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  store ptr %30, ptr %31, align 8, !tbaa !12
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 2
  store ptr %30, ptr %33, align 8, !tbaa !23
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !36
  %36 = load ptr, ptr @cfun, align 8, !tbaa !12
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !13
  %39 = load ptr, ptr %38, align 8, !tbaa !18
  %40 = icmp eq ptr %35, %39
  br i1 %40, label %41, label %29, !llvm.loop !37

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !22
  br label %44

44:                                               ; preds = %41, %4
  %45 = phi ptr [ %24, %4 ], [ %43, %41 ]
  %46 = phi ptr [ %22, %4 ], [ %38, %41 ]
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !17
  %49 = add nsw i32 %48, -2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %14, i64 %50
  %52 = tail call fastcc ptr @ei_start_1(ptr noundef %45) #7
  store i32 0, ptr %6, align 8, !tbaa.struct !26
  %53 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %52, ptr %53, align 8, !tbaa.struct !28
  %54 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %52, ptr noundef nonnull %5) #7, !range !29
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %58, %44
  %57 = icmp eq i32 %49, 0
  br i1 %57, label %151, label %71

58:                                               ; preds = %44, %58
  %59 = load ptr, ptr @cfun, align 8, !tbaa !12
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !13
  %62 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !22
  %64 = load ptr, ptr %5, align 8, !tbaa !12
  %65 = load ptr, ptr %64, align 8, !tbaa !38
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 2
  store ptr %63, ptr %66, align 8, !tbaa !23
  call fastcc void @ei_next(ptr noundef nonnull %6) #7
  %67 = load i32, ptr %6, align 8
  %68 = load ptr, ptr %53, align 8
  %69 = call fastcc zeroext i8 @ei_cond(i32 %67, ptr %68, ptr noundef nonnull %5) #7, !range !29
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %56, label %58, !llvm.loop !39

71:                                               ; preds = %56, %147
  %72 = phi ptr [ %149, %147 ], [ %14, %56 ]
  %73 = phi ptr [ %79, %147 ], [ %14, %56 ]
  %74 = phi i32 [ %148, %147 ], [ %49, %56 ]
  %75 = getelementptr inbounds ptr, ptr %73, i64 1
  %76 = load ptr, ptr %73, align 8, !tbaa !12
  %77 = add i32 %74, -1
  %78 = icmp ult ptr %75, %51
  %79 = select i1 %78, ptr %75, ptr %14
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !23
  %82 = load ptr, ptr @cfun, align 8, !tbaa !12
  %83 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !13
  %85 = getelementptr inbounds %struct.control_flow_graph, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !22
  %87 = icmp eq ptr %81, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %71
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !33
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %3, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !12
  tail call void @sbitmap_zero(ptr noundef %93) #6
  br label %100

94:                                               ; preds = %71
  store ptr null, ptr %80, align 8, !tbaa !23
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %96 = load i32, ptr %95, align 8, !tbaa !33
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %3, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !12
  tail call void @sbitmap_intersection_of_succs(ptr noundef %99, ptr noundef %2, i32 noundef %96) #6
  br label %100

100:                                              ; preds = %94, %88
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %102 = load i32, ptr %101, align 8, !tbaa !33
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %2, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !12
  %106 = getelementptr inbounds ptr, ptr %0, i64 %103
  %107 = load ptr, ptr %106, align 8, !tbaa !12
  %108 = getelementptr inbounds ptr, ptr %1, i64 %103
  %109 = load ptr, ptr %108, align 8, !tbaa !12
  %110 = getelementptr inbounds ptr, ptr %3, i64 %103
  %111 = load ptr, ptr %110, align 8, !tbaa !12
  %112 = tail call zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr noundef %105, ptr noundef %107, ptr noundef %109, ptr noundef %111) #6
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %147, label %114

114:                                              ; preds = %100
  %115 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %76) #7
  store i32 0, ptr %6, align 8, !tbaa.struct !26
  store ptr %115, ptr %53, align 8, !tbaa.struct !28
  %116 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %115, ptr noundef nonnull %5) #7, !range !29
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %147, label %118

118:                                              ; preds = %114, %140
  %119 = phi ptr [ %142, %140 ], [ %72, %114 ]
  %120 = phi i32 [ %141, %140 ], [ %77, %114 ]
  %121 = load ptr, ptr %5, align 8, !tbaa !12
  %122 = load ptr, ptr %121, align 8, !tbaa !38
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !23
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %140

126:                                              ; preds = %118
  %127 = load ptr, ptr @cfun, align 8, !tbaa !12
  %128 = getelementptr inbounds %struct.function, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !13
  %130 = load ptr, ptr %129, align 8, !tbaa !18
  %131 = icmp eq ptr %122, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds ptr, ptr %119, i64 1
  store ptr %122, ptr %119, align 8, !tbaa !12
  %134 = load ptr, ptr %5, align 8, !tbaa !12
  %135 = load ptr, ptr %134, align 8, !tbaa !38
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 2
  store ptr %134, ptr %136, align 8, !tbaa !23
  %137 = add i32 %120, 1
  %138 = icmp ult ptr %133, %51
  %139 = select i1 %138, ptr %133, ptr %14
  br label %140

140:                                              ; preds = %132, %118, %126
  %141 = phi i32 [ %120, %118 ], [ %120, %126 ], [ %137, %132 ]
  %142 = phi ptr [ %119, %118 ], [ %119, %126 ], [ %139, %132 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #7
  %143 = load i32, ptr %6, align 8
  %144 = load ptr, ptr %53, align 8
  %145 = call fastcc zeroext i8 @ei_cond(i32 %143, ptr %144, ptr noundef nonnull %5) #7, !range !29
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %118, !llvm.loop !40

147:                                              ; preds = %140, %114, %100
  %148 = phi i32 [ %77, %100 ], [ %77, %114 ], [ %141, %140 ]
  %149 = phi ptr [ %72, %100 ], [ %72, %114 ], [ %142, %140 ]
  %150 = icmp eq i32 %148, 0
  br i1 %150, label %151, label %71, !llvm.loop !41

151:                                              ; preds = %147, %56
  tail call void @clear_aux_for_edges() #6
  tail call void @clear_aux_for_blocks() #6
  tail call void @free(ptr noundef %14) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_earliest(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !6
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
  %18 = load ptr, ptr %14, align 8, !tbaa !42
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !12
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !30
  %24 = load ptr, ptr @cfun, align 8, !tbaa !12
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = icmp eq ptr %21, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %16
  %30 = getelementptr inbounds ptr, ptr %6, i64 %17
  %31 = load ptr, ptr %30, align 8, !tbaa !12
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !33
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !12
  tail call void @sbitmap_copy(ptr noundef %31, ptr noundef %36) #6
  br label %65

37:                                               ; preds = %16
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !22
  %40 = icmp eq ptr %23, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds ptr, ptr %6, i64 %17
  %43 = load ptr, ptr %42, align 8, !tbaa !12
  tail call void @sbitmap_zero(ptr noundef %43) #6
  br label %65

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !33
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !12
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !33
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %4, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !12
  tail call void @sbitmap_difference(ptr noundef %10, ptr noundef %49, ptr noundef %54) #6
  %55 = load i32, ptr %50, align 8, !tbaa !33
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %3, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !12
  tail call void @sbitmap_not(ptr noundef %11, ptr noundef %58) #6
  %59 = getelementptr inbounds ptr, ptr %6, i64 %17
  %60 = load ptr, ptr %59, align 8, !tbaa !12
  %61 = load i32, ptr %50, align 8, !tbaa !33
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %5, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !12
  tail call void @sbitmap_a_and_b_or_c(ptr noundef %60, ptr noundef %10, ptr noundef %64, ptr noundef %11) #6
  br label %65

65:                                               ; preds = %29, %44, %41
  %66 = add nuw nsw i64 %17, 1
  %67 = icmp eq i64 %66, %15
  br i1 %67, label %68, label %16, !llvm.loop !43

68:                                               ; preds = %65, %7
  %69 = load ptr, ptr %11, align 8, !tbaa !44
  tail call void @free(ptr noundef %69) #7
  tail call void @free(ptr noundef %11) #7
  %70 = load ptr, ptr %10, align 8, !tbaa !44
  tail call void @free(ptr noundef %70) #7
  tail call void @free(ptr noundef %10) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_laterin(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  %8 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !6
  %10 = load ptr, ptr @cfun, align 8, !tbaa !12
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call ptr @xmalloc(i64 noundef %16) #6
  %18 = icmp sgt i32 %9, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = zext nneg i32 %9 to i64
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i64 [ 0, %19 ], [ %29, %23 ]
  %25 = inttoptr i64 %24 to ptr
  %26 = getelementptr inbounds ptr, ptr %21, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !12
  %28 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 3
  store ptr %25, ptr %28, align 8, !tbaa !46
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, %22
  br i1 %30, label %31, label %23, !llvm.loop !47

31:                                               ; preds = %23, %5
  tail call void @sbitmap_vector_ones(ptr noundef %3, i32 noundef %9) #6
  %32 = load ptr, ptr @cfun, align 8, !tbaa !12
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !13
  %35 = load ptr, ptr %34, align 8, !tbaa !18
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 1
  %37 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %36) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !26
  %38 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %37, ptr %38, align 8, !tbaa.struct !28
  %39 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %6) #7, !range !29
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %31, %41
  %42 = load ptr, ptr %6, align 8, !tbaa !12
  %43 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = ptrtoint ptr %44 to i64
  %46 = getelementptr inbounds ptr, ptr %3, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !12
  %48 = getelementptr inbounds ptr, ptr %1, i64 %45
  %49 = load ptr, ptr %48, align 8, !tbaa !12
  tail call void @sbitmap_copy(ptr noundef %47, ptr noundef %49) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %50 = load i32, ptr %7, align 8
  %51 = load ptr, ptr %38, align 8
  %52 = call fastcc zeroext i8 @ei_cond(i32 %50, ptr %51, ptr noundef nonnull %6) #7, !range !29
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %41, !llvm.loop !48

54:                                               ; preds = %41, %31
  %55 = load ptr, ptr @cfun, align 8, !tbaa !12
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !13
  %58 = load ptr, ptr %57, align 8, !tbaa !18
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !19
  %61 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !22
  %63 = icmp eq ptr %60, %62
  br i1 %63, label %77, label %64

64:                                               ; preds = %54, %64
  %65 = phi ptr [ %70, %64 ], [ %60, %54 ]
  %66 = phi ptr [ %67, %64 ], [ %17, %54 ]
  %67 = getelementptr inbounds ptr, ptr %66, i64 1
  store ptr %65, ptr %66, align 8, !tbaa !12
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 2
  store ptr %65, ptr %68, align 8, !tbaa !23
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !19
  %71 = load ptr, ptr @cfun, align 8, !tbaa !12
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !13
  %74 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !22
  %76 = icmp eq ptr %70, %75
  br i1 %76, label %77, label %64, !llvm.loop !49

77:                                               ; preds = %64, %54
  %78 = phi ptr [ %55, %54 ], [ %71, %64 ]
  %79 = phi ptr [ %57, %54 ], [ %73, %64 ]
  %80 = getelementptr inbounds %struct.control_flow_graph, ptr %79, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !17
  %82 = add nsw i32 %81, -2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %17, i64 %83
  %85 = icmp eq i32 %82, 0
  br i1 %85, label %180, label %90

86:                                               ; preds = %171, %123
  %87 = phi i32 [ %97, %123 ], [ %172, %171 ]
  %88 = phi ptr [ %91, %123 ], [ %173, %171 ]
  %89 = icmp eq i32 %87, 0
  br i1 %89, label %178, label %90, !llvm.loop !50

90:                                               ; preds = %77, %86
  %91 = phi ptr [ %88, %86 ], [ %17, %77 ]
  %92 = phi ptr [ %99, %86 ], [ %17, %77 ]
  %93 = phi i32 [ %87, %86 ], [ %82, %77 ]
  %94 = getelementptr inbounds ptr, ptr %92, i64 1
  %95 = load ptr, ptr %92, align 8, !tbaa !12
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 2
  store ptr null, ptr %96, align 8, !tbaa !23
  %97 = add i32 %93, -1
  %98 = icmp ult ptr %94, %84
  %99 = select i1 %98, ptr %94, ptr %17
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 9
  %101 = load i32, ptr %100, align 8, !tbaa !33
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds ptr, ptr %4, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !12
  tail call void @sbitmap_ones(ptr noundef %104) #6
  %105 = tail call fastcc ptr @ei_start_1(ptr noundef %95) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !26
  store ptr %105, ptr %38, align 8, !tbaa.struct !28
  %106 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %105, ptr noundef nonnull %6) #7, !range !29
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %90, %108
  %109 = load i32, ptr %100, align 8, !tbaa !33
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %4, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !12
  %113 = load ptr, ptr %6, align 8, !tbaa !12
  %114 = getelementptr inbounds %struct.edge_def, ptr %113, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !46
  %116 = ptrtoint ptr %115 to i64
  %117 = getelementptr inbounds ptr, ptr %3, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !12
  tail call void @sbitmap_a_and_b(ptr noundef %112, ptr noundef %112, ptr noundef %118) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %119 = load i32, ptr %7, align 8
  %120 = load ptr, ptr %38, align 8
  %121 = call fastcc zeroext i8 @ei_cond(i32 %119, ptr %120, ptr noundef nonnull %6) #7, !range !29
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %108, !llvm.loop !51

123:                                              ; preds = %108, %90
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 1
  %125 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %124) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !26
  store ptr %125, ptr %38, align 8, !tbaa.struct !28
  %126 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %125, ptr noundef nonnull %6) #7, !range !29
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %86, label %128

128:                                              ; preds = %123, %171
  %129 = phi ptr [ %173, %171 ], [ %91, %123 ]
  %130 = phi i32 [ %172, %171 ], [ %97, %123 ]
  %131 = load ptr, ptr %6, align 8, !tbaa !12
  %132 = getelementptr inbounds %struct.edge_def, ptr %131, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !46
  %134 = ptrtoint ptr %133 to i64
  %135 = getelementptr inbounds ptr, ptr %3, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !12
  %137 = getelementptr inbounds ptr, ptr %1, i64 %134
  %138 = load ptr, ptr %137, align 8, !tbaa !12
  %139 = load ptr, ptr %131, align 8, !tbaa !38
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 9
  %141 = load i32, ptr %140, align 8, !tbaa !33
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds ptr, ptr %4, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !12
  %145 = getelementptr inbounds ptr, ptr %2, i64 %142
  %146 = load ptr, ptr %145, align 8, !tbaa !12
  %147 = tail call zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef %136, ptr noundef %138, ptr noundef %144, ptr noundef %146) #6
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %171, label %149

149:                                              ; preds = %128
  %150 = getelementptr inbounds %struct.edge_def, ptr %131, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !30
  %152 = load ptr, ptr @cfun, align 8, !tbaa !12
  %153 = getelementptr inbounds %struct.function, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !13
  %155 = getelementptr inbounds %struct.control_flow_graph, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !22
  %157 = icmp eq ptr %151, %156
  br i1 %157, label %171, label %158

158:                                              ; preds = %149
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %151, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !23
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %171

162:                                              ; preds = %158
  %163 = getelementptr inbounds ptr, ptr %129, i64 1
  store ptr %151, ptr %129, align 8, !tbaa !12
  %164 = load ptr, ptr %6, align 8, !tbaa !12
  %165 = getelementptr inbounds %struct.edge_def, ptr %164, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !30
  %167 = getelementptr inbounds %struct.basic_block_def, ptr %166, i64 0, i32 2
  store ptr %164, ptr %167, align 8, !tbaa !23
  %168 = add i32 %130, 1
  %169 = icmp ult ptr %163, %84
  %170 = select i1 %169, ptr %163, ptr %17
  br label %171

171:                                              ; preds = %162, %128, %149, %158
  %172 = phi i32 [ %130, %158 ], [ %130, %149 ], [ %130, %128 ], [ %168, %162 ]
  %173 = phi ptr [ %129, %158 ], [ %129, %149 ], [ %129, %128 ], [ %170, %162 ]
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %174 = load i32, ptr %7, align 8
  %175 = load ptr, ptr %38, align 8
  %176 = call fastcc zeroext i8 @ei_cond(i32 %174, ptr %175, ptr noundef nonnull %6) #7, !range !29
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %86, label %128, !llvm.loop !52

178:                                              ; preds = %86
  %179 = load ptr, ptr @cfun, align 8, !tbaa !12
  br label %180

180:                                              ; preds = %178, %77
  %181 = phi ptr [ %179, %178 ], [ %78, %77 ]
  %182 = getelementptr inbounds %struct.function, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !13
  %184 = getelementptr inbounds %struct.control_flow_graph, ptr %183, i64 0, i32 5
  %185 = load i32, ptr %184, align 8, !tbaa !15
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds ptr, ptr %4, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !12
  tail call void @sbitmap_ones(ptr noundef %188) #6
  %189 = load ptr, ptr @cfun, align 8, !tbaa !12
  %190 = getelementptr inbounds %struct.function, ptr %189, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !13
  %192 = getelementptr inbounds %struct.control_flow_graph, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !22
  %194 = tail call fastcc ptr @ei_start_1(ptr noundef %193) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !26
  store ptr %194, ptr %38, align 8, !tbaa.struct !28
  %195 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %194, ptr noundef nonnull %6) #7, !range !29
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %216, label %197

197:                                              ; preds = %180, %197
  %198 = load ptr, ptr @cfun, align 8, !tbaa !12
  %199 = getelementptr inbounds %struct.function, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !13
  %201 = getelementptr inbounds %struct.control_flow_graph, ptr %200, i64 0, i32 5
  %202 = load i32, ptr %201, align 8, !tbaa !15
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds ptr, ptr %4, i64 %203
  %205 = load ptr, ptr %204, align 8, !tbaa !12
  %206 = load ptr, ptr %6, align 8, !tbaa !12
  %207 = getelementptr inbounds %struct.edge_def, ptr %206, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !46
  %209 = ptrtoint ptr %208 to i64
  %210 = getelementptr inbounds ptr, ptr %3, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !12
  tail call void @sbitmap_a_and_b(ptr noundef %205, ptr noundef %205, ptr noundef %211) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %212 = load i32, ptr %7, align 8
  %213 = load ptr, ptr %38, align 8
  %214 = call fastcc zeroext i8 @ei_cond(i32 %212, ptr %213, ptr noundef nonnull %6) #7, !range !29
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %216, label %197, !llvm.loop !53

216:                                              ; preds = %197, %180
  tail call void @clear_aux_for_edges() #6
  tail call void @free(ptr noundef %17) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_insert_delete(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = load ptr, ptr @cfun, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %22, %6
  %17 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !6
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  br label %41

22:                                               ; preds = %6, %22
  %23 = phi ptr [ %34, %22 ], [ %12, %6 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !33
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %5, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !12
  %29 = getelementptr inbounds ptr, ptr %1, i64 %26
  %30 = load ptr, ptr %29, align 8, !tbaa !12
  %31 = getelementptr inbounds ptr, ptr %3, i64 %26
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  tail call void @sbitmap_difference(ptr noundef %28, ptr noundef %30, ptr noundef %32) #6
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  %35 = load ptr, ptr @cfun, align 8, !tbaa !12
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !13
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !22
  %40 = icmp eq ptr %34, %39
  br i1 %40, label %16, label %22, !llvm.loop !54

41:                                               ; preds = %20, %41
  %42 = phi i64 [ 0, %20 ], [ %65, %41 ]
  %43 = load ptr, ptr %21, align 8, !tbaa !42
  %44 = getelementptr inbounds ptr, ptr %43, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !12
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !30
  %48 = load ptr, ptr @cfun, align 8, !tbaa !12
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !13
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  %53 = icmp eq ptr %47, %52
  %54 = getelementptr inbounds ptr, ptr %4, i64 %42
  %55 = load ptr, ptr %54, align 8, !tbaa !12
  %56 = getelementptr inbounds ptr, ptr %2, i64 %42
  %57 = load ptr, ptr %56, align 8, !tbaa !12
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 5
  %60 = select i1 %53, ptr %59, ptr %58
  %61 = load i32, ptr %60, align 8, !tbaa !27
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %3, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !12
  tail call void @sbitmap_difference(ptr noundef %55, ptr noundef %57, ptr noundef %64) #6
  %65 = add nuw nsw i64 %42, 1
  %66 = load i32, ptr %17, align 4, !tbaa !6
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %41, label %69, !llvm.loop !55

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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #4 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #7, !range !29
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #7
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !12
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #7
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #7
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #6
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !56
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !56
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
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #7
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #7
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !58
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #6
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
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
define dso_local ptr @pre_edge_rev_lcm(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = tail call ptr @create_edge_list() #6
  %9 = getelementptr inbounds %struct.edge_list, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !6
  %11 = load ptr, ptr @cfun, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !15
  %16 = tail call ptr @sbitmap_vector_alloc(i32 noundef %15, i32 noundef %0) #6
  %17 = load ptr, ptr @cfun, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !15
  %22 = tail call ptr @sbitmap_vector_alloc(i32 noundef %21, i32 noundef %0) #6
  %23 = load ptr, ptr @cfun, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !15
  tail call void @sbitmap_vector_zero(ptr noundef %16, i32 noundef %27) #6
  %28 = load ptr, ptr @cfun, align 8, !tbaa !12
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !13
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !15
  tail call void @sbitmap_vector_zero(ptr noundef %22, i32 noundef %32) #6
  tail call fastcc void @compute_antinout_edge(ptr noundef %3, ptr noundef %1, ptr noundef %16, ptr noundef %22) #7
  %33 = load ptr, ptr @cfun, align 8, !tbaa !12
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !13
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !15
  %38 = tail call ptr @sbitmap_vector_alloc(i32 noundef %37, i32 noundef %0) #6
  %39 = load ptr, ptr @cfun, align 8, !tbaa !12
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !13
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !15
  %44 = tail call ptr @sbitmap_vector_alloc(i32 noundef %43, i32 noundef %0) #6
  tail call void @compute_available(ptr noundef %2, ptr noundef %4, ptr noundef %38, ptr noundef %44) #7
  %45 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  tail call fastcc void @compute_farthest(ptr noundef %8, i32 noundef %0, ptr noundef %38, ptr noundef %44, ptr noundef %16, ptr noundef %4, ptr noundef %45) #7
  tail call void @free(ptr noundef %16) #7
  tail call void @free(ptr noundef %22) #7
  tail call void @free(ptr noundef %44) #7
  tail call void @free(ptr noundef %38) #7
  %46 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  %47 = load ptr, ptr @cfun, align 8, !tbaa !12
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !13
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !15
  %52 = add nsw i32 %51, 1
  %53 = tail call ptr @sbitmap_vector_alloc(i32 noundef %52, i32 noundef %0) #6
  tail call fastcc void @compute_nearerout(ptr noundef %8, ptr noundef %45, ptr noundef %2, ptr noundef %46, ptr noundef %53) #7
  tail call void @free(ptr noundef %45) #7
  %54 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %0) #6
  store ptr %54, ptr %5, align 8, !tbaa !12
  %55 = load ptr, ptr @cfun, align 8, !tbaa !12
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !13
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !15
  %60 = tail call ptr @sbitmap_vector_alloc(i32 noundef %59, i32 noundef %0) #6
  store ptr %60, ptr %6, align 8, !tbaa !12
  %61 = load ptr, ptr %5, align 8, !tbaa !12
  tail call fastcc void @compute_rev_insert_delete(ptr noundef %8, ptr noundef %2, ptr noundef %46, ptr noundef %53, ptr noundef %61, ptr noundef %60) #7
  tail call void @free(ptr noundef %53) #7
  tail call void @free(ptr noundef %46) #7
  ret ptr %8
}

; Function Attrs: optsize
declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_farthest(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !6
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
  %18 = load ptr, ptr %14, align 8, !tbaa !42
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !12
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !30
  %24 = load ptr, ptr @cfun, align 8, !tbaa !12
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %16
  %31 = getelementptr inbounds ptr, ptr %6, i64 %17
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %2, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !12
  tail call void @sbitmap_copy(ptr noundef %32, ptr noundef %37) #6
  br label %65

38:                                               ; preds = %16
  %39 = load ptr, ptr %26, align 8, !tbaa !18
  %40 = icmp eq ptr %21, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %6, i64 %17
  %43 = load ptr, ptr %42, align 8, !tbaa !12
  tail call void @sbitmap_zero(ptr noundef %43) #6
  br label %65

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !33
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !12
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !33
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %4, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !12
  tail call void @sbitmap_difference(ptr noundef %10, ptr noundef %49, ptr noundef %54) #6
  %55 = load i32, ptr %50, align 8, !tbaa !33
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %3, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !12
  tail call void @sbitmap_not(ptr noundef %11, ptr noundef %58) #6
  %59 = getelementptr inbounds ptr, ptr %6, i64 %17
  %60 = load ptr, ptr %59, align 8, !tbaa !12
  %61 = load i32, ptr %50, align 8, !tbaa !33
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %5, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !12
  tail call void @sbitmap_a_and_b_or_c(ptr noundef %60, ptr noundef %10, ptr noundef %64, ptr noundef %11) #6
  br label %65

65:                                               ; preds = %30, %44, %41
  %66 = add nuw nsw i64 %17, 1
  %67 = icmp eq i64 %66, %15
  br i1 %67, label %68, label %16, !llvm.loop !60

68:                                               ; preds = %65, %7
  %69 = load ptr, ptr %11, align 8, !tbaa !44
  tail call void @free(ptr noundef %69) #7
  tail call void @free(ptr noundef %11) #7
  %70 = load ptr, ptr %10, align 8, !tbaa !44
  tail call void @free(ptr noundef %70) #7
  tail call void @free(ptr noundef %10) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_nearerout(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  %8 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !6
  %10 = load ptr, ptr @cfun, align 8, !tbaa !12
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  %18 = tail call ptr @xmalloc(i64 noundef %17) #6
  %19 = icmp sgt i32 %9, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = zext nneg i32 %9 to i64
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi i64 [ 0, %20 ], [ %30, %24 ]
  %26 = inttoptr i64 %25 to ptr
  %27 = getelementptr inbounds ptr, ptr %22, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !12
  %29 = getelementptr inbounds %struct.edge_def, ptr %28, i64 0, i32 3
  store ptr %26, ptr %29, align 8, !tbaa !46
  %30 = add nuw nsw i64 %25, 1
  %31 = icmp eq i64 %30, %23
  br i1 %31, label %32, label %24, !llvm.loop !61

32:                                               ; preds = %24, %5
  tail call void @sbitmap_vector_ones(ptr noundef %3, i32 noundef %9) #6
  %33 = load ptr, ptr @cfun, align 8, !tbaa !12
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !13
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  %38 = tail call fastcc ptr @ei_start_1(ptr noundef %37) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !26
  %39 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %38, ptr %39, align 8, !tbaa.struct !28
  %40 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %38, ptr noundef nonnull %6) #7, !range !29
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %32, %42
  %43 = load ptr, ptr %6, align 8, !tbaa !12
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = ptrtoint ptr %45 to i64
  %47 = getelementptr inbounds ptr, ptr %3, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !12
  %49 = getelementptr inbounds ptr, ptr %1, i64 %46
  %50 = load ptr, ptr %49, align 8, !tbaa !12
  tail call void @sbitmap_copy(ptr noundef %48, ptr noundef %50) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %51 = load i32, ptr %7, align 8
  %52 = load ptr, ptr %39, align 8
  %53 = call fastcc zeroext i8 @ei_cond(i32 %51, ptr %52, ptr noundef nonnull %6) #7, !range !29
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %42, !llvm.loop !62

55:                                               ; preds = %42, %32
  %56 = load ptr, ptr @cfun, align 8, !tbaa !12
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !13
  %59 = load ptr, ptr %58, align 8, !tbaa !18
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !19
  %62 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !22
  %64 = icmp eq ptr %61, %63
  br i1 %64, label %159, label %65

65:                                               ; preds = %55, %65
  %66 = phi ptr [ %71, %65 ], [ %61, %55 ]
  %67 = phi ptr [ %68, %65 ], [ %18, %55 ]
  %68 = getelementptr inbounds ptr, ptr %67, i64 1
  store ptr %66, ptr %67, align 8, !tbaa !12
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 2
  store ptr %66, ptr %69, align 8, !tbaa !23
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !19
  %72 = load ptr, ptr @cfun, align 8, !tbaa !12
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !13
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !22
  %77 = icmp eq ptr %71, %76
  br i1 %77, label %81, label %65, !llvm.loop !63

78:                                               ; preds = %151, %110
  %79 = phi ptr [ %83, %110 ], [ %152, %151 ]
  %80 = icmp eq ptr %79, %18
  br i1 %80, label %157, label %81, !llvm.loop !64

81:                                               ; preds = %65, %78
  %82 = phi ptr [ %79, %78 ], [ %68, %65 ]
  %83 = getelementptr inbounds ptr, ptr %82, i64 -1
  %84 = load ptr, ptr %83, align 8, !tbaa !12
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 2
  store ptr null, ptr %85, align 8, !tbaa !23
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !33
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds ptr, ptr %4, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !12
  tail call void @sbitmap_ones(ptr noundef %90) #6
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 1
  %92 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %91) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !26
  store ptr %92, ptr %39, align 8, !tbaa.struct !28
  %93 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %92, ptr noundef nonnull %6) #7, !range !29
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %81, %95
  %96 = load i32, ptr %86, align 8, !tbaa !33
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %4, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !12
  %100 = load ptr, ptr %6, align 8, !tbaa !12
  %101 = getelementptr inbounds %struct.edge_def, ptr %100, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !46
  %103 = ptrtoint ptr %102 to i64
  %104 = getelementptr inbounds ptr, ptr %3, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !12
  tail call void @sbitmap_a_and_b(ptr noundef %99, ptr noundef %99, ptr noundef %105) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %106 = load i32, ptr %7, align 8
  %107 = load ptr, ptr %39, align 8
  %108 = call fastcc zeroext i8 @ei_cond(i32 %106, ptr %107, ptr noundef nonnull %6) #7, !range !29
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %95, !llvm.loop !65

110:                                              ; preds = %95, %81
  %111 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %84) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !26
  store ptr %111, ptr %39, align 8, !tbaa.struct !28
  %112 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %111, ptr noundef nonnull %6) #7, !range !29
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %78, label %114

114:                                              ; preds = %110, %151
  %115 = phi ptr [ %152, %151 ], [ %83, %110 ]
  %116 = load ptr, ptr %6, align 8, !tbaa !12
  %117 = getelementptr inbounds %struct.edge_def, ptr %116, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !46
  %119 = ptrtoint ptr %118 to i64
  %120 = getelementptr inbounds ptr, ptr %3, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !12
  %122 = getelementptr inbounds ptr, ptr %1, i64 %119
  %123 = load ptr, ptr %122, align 8, !tbaa !12
  %124 = getelementptr inbounds %struct.edge_def, ptr %116, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !30
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 9
  %127 = load i32, ptr %126, align 8, !tbaa !33
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds ptr, ptr %4, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !12
  %131 = getelementptr inbounds ptr, ptr %2, i64 %128
  %132 = load ptr, ptr %131, align 8, !tbaa !12
  %133 = tail call zeroext i8 @sbitmap_union_of_diff_cg(ptr noundef %121, ptr noundef %123, ptr noundef %130, ptr noundef %132) #6
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %151, label %135

135:                                              ; preds = %114
  %136 = load ptr, ptr %116, align 8, !tbaa !38
  %137 = load ptr, ptr @cfun, align 8, !tbaa !12
  %138 = getelementptr inbounds %struct.function, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !13
  %140 = load ptr, ptr %139, align 8, !tbaa !18
  %141 = icmp eq ptr %136, %140
  br i1 %141, label %151, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.basic_block_def, ptr %136, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !23
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = getelementptr inbounds ptr, ptr %115, i64 1
  store ptr %136, ptr %115, align 8, !tbaa !12
  %148 = load ptr, ptr %6, align 8, !tbaa !12
  %149 = load ptr, ptr %148, align 8, !tbaa !38
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %149, i64 0, i32 2
  store ptr %148, ptr %150, align 8, !tbaa !23
  br label %151

151:                                              ; preds = %114, %135, %142, %146
  %152 = phi ptr [ %147, %146 ], [ %115, %142 ], [ %115, %135 ], [ %115, %114 ]
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %153 = load i32, ptr %7, align 8
  %154 = load ptr, ptr %39, align 8
  %155 = call fastcc zeroext i8 @ei_cond(i32 %153, ptr %154, ptr noundef nonnull %6) #7, !range !29
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %78, label %114, !llvm.loop !66

157:                                              ; preds = %78
  %158 = load ptr, ptr @cfun, align 8, !tbaa !12
  br label %159

159:                                              ; preds = %55, %157
  %160 = phi ptr [ %158, %157 ], [ %56, %55 ]
  %161 = getelementptr inbounds %struct.function, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !13
  %163 = getelementptr inbounds %struct.control_flow_graph, ptr %162, i64 0, i32 5
  %164 = load i32, ptr %163, align 8, !tbaa !15
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds ptr, ptr %4, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !12
  tail call void @sbitmap_ones(ptr noundef %167) #6
  %168 = load ptr, ptr @cfun, align 8, !tbaa !12
  %169 = getelementptr inbounds %struct.function, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !13
  %171 = load ptr, ptr %170, align 8, !tbaa !18
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 1
  %173 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %172) #7
  store i32 0, ptr %7, align 8, !tbaa.struct !26
  store ptr %173, ptr %39, align 8, !tbaa.struct !28
  %174 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %173, ptr noundef nonnull %6) #7, !range !29
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %195, label %176

176:                                              ; preds = %159, %176
  %177 = load ptr, ptr @cfun, align 8, !tbaa !12
  %178 = getelementptr inbounds %struct.function, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !13
  %180 = getelementptr inbounds %struct.control_flow_graph, ptr %179, i64 0, i32 5
  %181 = load i32, ptr %180, align 8, !tbaa !15
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds ptr, ptr %4, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !12
  %185 = load ptr, ptr %6, align 8, !tbaa !12
  %186 = getelementptr inbounds %struct.edge_def, ptr %185, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !46
  %188 = ptrtoint ptr %187 to i64
  %189 = getelementptr inbounds ptr, ptr %3, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !12
  tail call void @sbitmap_a_and_b(ptr noundef %184, ptr noundef %184, ptr noundef %190) #6
  call fastcc void @ei_next(ptr noundef nonnull %7) #7
  %191 = load i32, ptr %7, align 8
  %192 = load ptr, ptr %39, align 8
  %193 = call fastcc zeroext i8 @ei_cond(i32 %191, ptr %192, ptr noundef nonnull %6) #7, !range !29
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %176, !llvm.loop !67

195:                                              ; preds = %176, %159
  tail call void @clear_aux_for_edges() #6
  tail call void @free(ptr noundef %18) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_rev_insert_delete(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = load ptr, ptr @cfun, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %22, %6
  %17 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !6
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  br label %41

22:                                               ; preds = %6, %22
  %23 = phi ptr [ %34, %22 ], [ %12, %6 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !33
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %5, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !12
  %29 = getelementptr inbounds ptr, ptr %1, i64 %26
  %30 = load ptr, ptr %29, align 8, !tbaa !12
  %31 = getelementptr inbounds ptr, ptr %3, i64 %26
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  tail call void @sbitmap_difference(ptr noundef %28, ptr noundef %30, ptr noundef %32) #6
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  %35 = load ptr, ptr @cfun, align 8, !tbaa !12
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !13
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !22
  %40 = icmp eq ptr %34, %39
  br i1 %40, label %16, label %22, !llvm.loop !68

41:                                               ; preds = %20, %41
  %42 = phi i64 [ 0, %20 ], [ %63, %41 ]
  %43 = load ptr, ptr %21, align 8, !tbaa !42
  %44 = getelementptr inbounds ptr, ptr %43, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !12
  %46 = load ptr, ptr %45, align 8, !tbaa !38
  %47 = load ptr, ptr @cfun, align 8, !tbaa !12
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !13
  %50 = load ptr, ptr %49, align 8, !tbaa !18
  %51 = icmp eq ptr %46, %50
  %52 = getelementptr inbounds ptr, ptr %4, i64 %42
  %53 = load ptr, ptr %52, align 8, !tbaa !12
  %54 = getelementptr inbounds ptr, ptr %2, i64 %42
  %55 = load ptr, ptr %54, align 8, !tbaa !12
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 9
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 5
  %58 = select i1 %51, ptr %57, ptr %56
  %59 = load i32, ptr %58, align 8, !tbaa !27
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %3, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !12
  tail call void @sbitmap_difference(ptr noundef %53, ptr noundef %55, ptr noundef %62) #6
  %63 = add nuw nsw i64 %42, 1
  %64 = load i32, ptr %17, align 4, !tbaa !6
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %41, label %67, !llvm.loop !69

67:                                               ; preds = %41, %16
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 4}
!7 = !{!"edge_list", !8, i64 0, !8, i64 4, !11, i64 8}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!14, !11, i64 8}
!14 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !11, i64 128, !8, i64 136, !8, i64 137, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139}
!15 = !{!16, !8, i64 32}
!16 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !11, i64 40, !8, i64 48, !9, i64 52, !9, i64 60, !8, i64 68, !8, i64 72}
!17 = !{!16, !8, i64 24}
!18 = !{!16, !11, i64 0}
!19 = !{!20, !11, i64 56}
!20 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !9, i64 32, !11, i64 48, !11, i64 56, !9, i64 64, !21, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96}
!21 = !{!"long", !9, i64 0}
!22 = !{!16, !11, i64 8}
!23 = !{!20, !11, i64 16}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{i64 0, i64 4, !27, i64 8, i64 8, !12}
!27 = !{!8, !8, i64 0}
!28 = !{i64 0, i64 8, !12}
!29 = !{i8 0, i8 2}
!30 = !{!31, !11, i64 8}
!31 = !{!"edge_def", !11, i64 0, !11, i64 8, !9, i64 16, !11, i64 24, !11, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !21, i64 56}
!32 = distinct !{!32, !25}
!33 = !{!20, !8, i64 80}
!34 = distinct !{!34, !25}
!35 = distinct !{!35, !25}
!36 = !{!20, !11, i64 48}
!37 = distinct !{!37, !25}
!38 = !{!31, !11, i64 0}
!39 = distinct !{!39, !25}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25}
!42 = !{!7, !11, i64 8}
!43 = distinct !{!43, !25}
!44 = !{!45, !11, i64 0}
!45 = !{!"simple_bitmap_def", !11, i64 0, !8, i64 8, !8, i64 12, !9, i64 16}
!46 = !{!31, !11, i64 24}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !25}
!52 = distinct !{!52, !25}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !25}
!55 = distinct !{!55, !25}
!56 = !{!57, !8, i64 0}
!57 = !{!"", !8, i64 0, !11, i64 8}
!58 = !{!59, !8, i64 0}
!59 = !{!"VEC_edge_base", !8, i64 0, !8, i64 4, !9, i64 8}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !25}
!62 = distinct !{!62, !25}
!63 = distinct !{!63, !25}
!64 = distinct !{!64, !25}
!65 = distinct !{!65, !25}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25}
!69 = distinct !{!69, !25}
