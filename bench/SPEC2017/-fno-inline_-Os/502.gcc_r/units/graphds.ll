; ModuleID = 'graphds.c'
source_filename = "graphds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.graph = type { i32, ptr, ptr }
%struct.vertex = type { ptr, ptr, i32, i32, ptr }
%struct.graph_edge = type { i32, i32, ptr, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }

@.str = private unnamed_addr constant [11 x i8] c"%d (%d)\09<-\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\09->\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"graphds.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_graph(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !77 {
  %3 = load i32, ptr %1, align 8, !tbaa !78
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %57

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.graph, ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %52
  %8 = phi i32 [ %3, %5 ], [ %53, %52 ]
  %9 = phi i64 [ 0, %5 ], [ %54, %52 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !84
  %11 = getelementptr inbounds %struct.vertex, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.vertex, ptr %10, i64 %9, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18

18:                                               ; preds = %14, %7
  %19 = getelementptr inbounds %struct.vertex, ptr %10, i64 %9, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !88
  %21 = trunc i64 %9 to i32
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %21, i32 noundef %20) #15
  %23 = load ptr, ptr %6, align 8, !tbaa !84
  %24 = getelementptr inbounds %struct.vertex, ptr %23, i64 %9
  %25 = load ptr, ptr %24, align 8, !tbaa !89
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %18, %27
  %28 = phi ptr [ %32, %27 ], [ %25, %18 ]
  %29 = load i32, ptr %28, align 8, !tbaa !90
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %29) #15
  %31 = getelementptr inbounds %struct.graph_edge, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !89
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27, !llvm.loop !92

34:                                               ; preds = %27, %18
  %35 = tail call i32 @fputc(i32 10, ptr %0)
  %36 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %0)
  %37 = load ptr, ptr %6, align 8, !tbaa !84
  %38 = getelementptr inbounds %struct.vertex, ptr %37, i64 %9, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !89
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %34, %41
  %42 = phi ptr [ %47, %41 ], [ %39, %34 ]
  %43 = getelementptr inbounds %struct.graph_edge, ptr %42, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !94
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %44) #15
  %46 = getelementptr inbounds %struct.graph_edge, ptr %42, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !89
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %41, !llvm.loop !95

49:                                               ; preds = %41, %34
  %50 = tail call i32 @fputc(i32 10, ptr %0)
  %51 = load i32, ptr %1, align 8, !tbaa !78
  br label %52

52:                                               ; preds = %14, %49
  %53 = phi i32 [ %8, %14 ], [ %51, %49 ]
  %54 = add nuw nsw i64 %9, 1
  %55 = sext i32 %53 to i64
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %7, label %57, !llvm.loop !96

57:                                               ; preds = %52, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @new_graph(i32 noundef %0) local_unnamed_addr #3 !prof !97 {
  %2 = tail call ptr @xmalloc(i64 noundef 24) #16
  store i32 %0, ptr %2, align 8, !tbaa !78
  %3 = sext i32 %0 to i64
  %4 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.graph, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !84
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @add_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !98 {
  %4 = tail call ptr @xmalloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = sext i32 %1 to i64
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.vertex, ptr %6, i64 %8
  store i32 %1, ptr %4, align 8, !tbaa !90
  %10 = getelementptr inbounds %struct.graph_edge, ptr %4, i64 0, i32 1
  store i32 %2, ptr %10, align 4, !tbaa !94
  %11 = load ptr, ptr %9, align 8, !tbaa !85
  %12 = getelementptr inbounds %struct.graph_edge, ptr %4, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  store ptr %4, ptr %9, align 8, !tbaa !85
  %13 = getelementptr inbounds %struct.vertex, ptr %6, i64 %7, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = getelementptr inbounds %struct.graph_edge, ptr %4, i64 0, i32 3
  store ptr %14, ptr %15, align 8, !tbaa !100
  store ptr %4, ptr %13, align 8, !tbaa !87
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @identify_vertices(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 !prof !101 {
  %4 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.vertex, ptr %5, i64 %6
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.vertex, ptr %5, i64 %8
  %10 = getelementptr inbounds %struct.vertex, ptr %5, i64 %8, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13, !prof !102

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.vertex, ptr %5, i64 %6, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %15, %13 ], [ %18, %16 ]
  %18 = phi ptr [ %11, %13 ], [ %20, %16 ]
  %19 = getelementptr inbounds %struct.graph_edge, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !100
  store i32 %1, ptr %18, align 8, !tbaa !90
  store ptr %17, ptr %19, align 8, !tbaa !100
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !prof !103, !llvm.loop !104

22:                                               ; preds = %16
  store ptr %18, ptr %14, align 8, !tbaa !87
  br label %23

23:                                               ; preds = %22, %3
  store ptr null, ptr %10, align 8, !tbaa !87
  %24 = load ptr, ptr %9, align 8, !tbaa !85
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26, !prof !105

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 8, !tbaa !85
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi ptr [ %27, %26 ], [ %30, %28 ]
  %30 = phi ptr [ %24, %26 ], [ %32, %28 ]
  %31 = getelementptr inbounds %struct.graph_edge, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !99
  %33 = getelementptr inbounds %struct.graph_edge, ptr %30, i64 0, i32 1
  store i32 %1, ptr %33, align 4, !tbaa !94
  store ptr %29, ptr %31, align 8, !tbaa !99
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %28, !prof !106, !llvm.loop !107

35:                                               ; preds = %28
  store ptr %30, ptr %7, align 8, !tbaa !85
  br label %36

36:                                               ; preds = %35, %23
  store ptr null, ptr %9, align 8, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @graphds_dfs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #3 !prof !108 {
  %7 = alloca %struct.bitmap_iterator, align 8
  %8 = alloca i32, align 4
  %9 = load i32, ptr %0, align 8, !tbaa !78
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call ptr @xmalloc(i64 noundef %11) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  %13 = icmp eq ptr %5, null
  br i1 %13, label %14, label %21, !prof !109

14:                                               ; preds = %6
  %15 = load i32, ptr %0, align 8, !tbaa !78
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %40, !prof !110

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  %20 = zext nneg i32 %15 to i64
  br label %34

21:                                               ; preds = %6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %8) #15
  %22 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %8) #15, !range !111
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %40, label %24, !prof !112

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  br label %27

27:                                               ; preds = %24, %27
  %28 = load i32, ptr %8, align 4, !tbaa !113
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.vertex, ptr %26, i64 %29, i32 2
  store i32 -1, ptr %30, align 8, !tbaa !88
  %31 = getelementptr inbounds %struct.vertex, ptr %26, i64 %29, i32 3
  store i32 -1, ptr %31, align 4, !tbaa !114
  call fastcc void @bmp_iter_next(ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %8) #15, !range !111
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %40, label %27, !prof !115, !llvm.loop !116

34:                                               ; preds = %17, %34
  %35 = phi i64 [ 0, %17 ], [ %38, %34 ]
  %36 = getelementptr inbounds %struct.vertex, ptr %19, i64 %35, i32 2
  store i32 -1, ptr %36, align 8, !tbaa !88
  %37 = getelementptr inbounds %struct.vertex, ptr %19, i64 %35, i32 3
  store i32 -1, ptr %37, align 4, !tbaa !114
  %38 = add nuw nsw i64 %35, 1
  %39 = icmp eq i64 %38, %20
  br i1 %39, label %40, label %34, !prof !117, !llvm.loop !118

40:                                               ; preds = %27, %34, %21, %14
  %41 = icmp sgt i32 %2, 0
  br i1 %41, label %42, label %122, !prof !119

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %44 = icmp eq ptr %3, null
  %45 = zext nneg i32 %2 to i64
  %46 = load ptr, ptr %43, align 8, !tbaa !84
  br label %47

47:                                               ; preds = %42, %116
  %48 = phi ptr [ %46, %42 ], [ %117, %116 ]
  %49 = phi i64 [ 0, %42 ], [ %120, %116 ]
  %50 = phi i32 [ 0, %42 ], [ %119, %116 ]
  %51 = phi i32 [ 0, %42 ], [ %118, %116 ]
  %52 = getelementptr inbounds i32, ptr %1, i64 %49
  %53 = load i32, ptr %52, align 4, !tbaa !113
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.vertex, ptr %48, i64 %54, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !114
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %116, !prof !120

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.vertex, ptr %48, i64 %54, i32 2
  store i32 %50, ptr %59, align 8, !tbaa !88
  %60 = tail call fastcc ptr @dfs_fst_edge(ptr noundef nonnull %0, i32 noundef %53, i8 noundef zeroext %4, ptr noundef %5) #15
  br label %61

61:                                               ; preds = %98, %58
  %62 = phi i32 [ %93, %98 ], [ %51, %58 ]
  %63 = phi i32 [ %103, %98 ], [ %53, %58 ]
  %64 = phi i32 [ %99, %98 ], [ 0, %58 ]
  %65 = phi ptr [ %104, %98 ], [ %60, %58 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %88, label %67, !prof !121

67:                                               ; preds = %61
  %68 = sext i32 %64 to i64
  br label %69

69:                                               ; preds = %67, %105
  %70 = phi i64 [ %68, %67 ], [ %106, %105 ]
  %71 = phi ptr [ %65, %67 ], [ %109, %105 ]
  %72 = phi i32 [ %63, %67 ], [ %108, %105 ]
  br label %73

73:                                               ; preds = %69, %81
  %74 = phi ptr [ %71, %69 ], [ %82, %81 ]
  %75 = load ptr, ptr %43, align 8, !tbaa !84
  %76 = tail call fastcc i32 @dfs_edge_dest(ptr noundef nonnull %74, i8 noundef zeroext %4) #15
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.vertex, ptr %75, i64 %77, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !88
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %105, label %81, !prof !122

81:                                               ; preds = %73
  %82 = tail call fastcc ptr @dfs_next_edge(ptr noundef nonnull %74, i8 noundef zeroext %4, ptr noundef %5) #15
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %73, !prof !123, !llvm.loop !124

84:                                               ; preds = %81
  %85 = trunc i64 %70 to i32
  br label %88

86:                                               ; preds = %105
  %87 = trunc i64 %106 to i32
  br label %88

88:                                               ; preds = %86, %84, %61
  %89 = phi i32 [ %63, %61 ], [ %72, %84 ], [ %108, %86 ]
  %90 = phi i32 [ %64, %61 ], [ %85, %84 ], [ %87, %86 ]
  br i1 %44, label %92, label %91, !prof !125

91:                                               ; preds = %88
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %3, i32 noundef %89) #15
  br label %92

92:                                               ; preds = %91, %88
  %93 = add nsw i32 %62, 1
  %94 = load ptr, ptr %43, align 8, !tbaa !84
  %95 = sext i32 %89 to i64
  %96 = getelementptr inbounds %struct.vertex, ptr %94, i64 %95, i32 3
  store i32 %62, ptr %96, align 4, !tbaa !114
  %97 = icmp eq i32 %90, 0
  br i1 %97, label %114, label %98, !prof !126

98:                                               ; preds = %92
  %99 = add nsw i32 %90, -1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %12, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !89
  %103 = tail call fastcc i32 @dfs_edge_src(ptr noundef %102, i8 noundef zeroext %4) #15
  %104 = tail call fastcc ptr @dfs_next_edge(ptr noundef %102, i8 noundef zeroext %4, ptr noundef %5) #15
  br label %61

105:                                              ; preds = %73
  %106 = add i64 %70, 1
  %107 = getelementptr inbounds ptr, ptr %12, i64 %70
  store ptr %74, ptr %107, align 8, !tbaa !89
  %108 = tail call fastcc i32 @dfs_edge_dest(ptr noundef nonnull %74, i8 noundef zeroext %4) #15
  %109 = tail call fastcc ptr @dfs_fst_edge(ptr noundef nonnull %0, i32 noundef %108, i8 noundef zeroext %4, ptr noundef %5) #15
  %110 = load ptr, ptr %43, align 8, !tbaa !84
  %111 = sext i32 %108 to i64
  %112 = getelementptr inbounds %struct.vertex, ptr %110, i64 %111, i32 2
  store i32 %50, ptr %112, align 8, !tbaa !88
  %113 = icmp eq ptr %109, null
  br i1 %113, label %86, label %69, !prof !127

114:                                              ; preds = %92
  %115 = add nsw i32 %50, 1
  br label %116

116:                                              ; preds = %114, %47
  %117 = phi ptr [ %48, %47 ], [ %94, %114 ]
  %118 = phi i32 [ %51, %47 ], [ %93, %114 ]
  %119 = phi i32 [ %50, %47 ], [ %115, %114 ]
  %120 = add nuw nsw i64 %49, 1
  %121 = icmp eq i64 %120, %45
  br i1 %121, label %122, label %47, !prof !128, !llvm.loop !129

122:                                              ; preds = %116, %40
  %123 = phi i32 [ 0, %40 ], [ %119, %116 ]
  tail call void @free(ptr noundef %12) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #17
  ret i32 %123
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !130 !PGOFuncName !131 {
  %4 = load ptr, ptr %1, align 8, !tbaa !132
  store ptr %4, ptr %0, align 8, !tbaa !134
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !137
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !138

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !134
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !139
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !141

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !142
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !143
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !144
  %21 = icmp eq i64 %19, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %16, %22
  store i32 %23, ptr %2, align 4, !tbaa !113
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !145 !PGOFuncName !146 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !144
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !147

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !148

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !113
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !149, !llvm.loop !150

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !113
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !113
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !142
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !134
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !142
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !151

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !143
  store i64 %35, ptr %3, align 8, !tbaa !144
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !141

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !113
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !113
  %40 = load i32, ptr %23, align 8, !tbaa !142
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !142
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !152, !llvm.loop !153

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !154
  store ptr %44, ptr %0, align 8, !tbaa !134
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !141

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !139
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !113
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !144
  store i32 %16, ptr %1, align 4, !tbaa !113
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !155 !PGOFuncName !156 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !144
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !144
  %6 = load i32, ptr %1, align 4, !tbaa !113
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !113
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @dfs_fst_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 !prof !157 !PGOFuncName !158 {
  %5 = icmp eq i8 %2, 0
  %6 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.vertex, ptr %7, i64 %8, i32 1
  %10 = getelementptr inbounds %struct.vertex, ptr %7, i64 %8
  %11 = select i1 %5, ptr %10, ptr %9, !prof !125
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  %13 = tail call fastcc ptr @foll_in_subgraph(ptr noundef %12, i8 noundef zeroext %2, ptr noundef %3) #15
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @dfs_edge_dest(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !159 !PGOFuncName !160 {
  %3 = icmp eq i8 %1, 0
  %4 = getelementptr inbounds %struct.graph_edge, ptr %0, i64 0, i32 1
  %5 = select i1 %3, ptr %0, ptr %4, !prof !161
  %6 = load i32, ptr %5, align 4, !tbaa !113
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @dfs_next_edge(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #3 !prof !162 !PGOFuncName !163 {
  %4 = icmp eq i8 %1, 0
  %5 = getelementptr inbounds %struct.graph_edge, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.graph_edge, ptr %0, i64 0, i32 2
  %7 = select i1 %4, ptr %6, ptr %5, !prof !164
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = tail call fastcc ptr @foll_in_subgraph(ptr noundef %8, i8 noundef zeroext %1, ptr noundef %2) #15
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !prof !165 !PGOFuncName !166 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #15
  %3 = load ptr, ptr %0, align 8, !tbaa !89
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @dfs_edge_src(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !167 !PGOFuncName !168 {
  %3 = icmp eq i8 %1, 0
  %4 = getelementptr inbounds %struct.graph_edge, ptr %0, i64 0, i32 1
  %5 = select i1 %3, ptr %4, ptr %0, !prof !169
  %6 = load i32, ptr %5, align 4, !tbaa !113
  ret i32 %6
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @graphds_scc(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 !prof !97 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = load i32, ptr %0, align 8, !tbaa !78
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call ptr @xmalloc(i64 noundef %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %14, !prof !170

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 8, !tbaa !78
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %24, label %34, !prof !171

14:                                               ; preds = %2
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef nonnull %4) #15
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #15, !range !111
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %34, label %17, !prof !172

17:                                               ; preds = %14, %17
  %18 = phi i64 [ %20, %17 ], [ 0, %14 ]
  %19 = load i32, ptr %4, align 4, !tbaa !113
  %20 = add nuw i64 %18, 1
  %21 = getelementptr inbounds i32, ptr %9, i64 %18
  store i32 %19, ptr %21, align 4, !tbaa !113
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  %22 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #15, !range !111
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %17, !prof !173, !llvm.loop !174

24:                                               ; preds = %11, %24
  %25 = phi i64 [ %28, %24 ], [ 0, %11 ]
  %26 = getelementptr inbounds i32, ptr %9, i64 %25
  %27 = trunc i64 %25 to i32
  store i32 %27, ptr %26, align 4, !tbaa !113
  %28 = add nuw nsw i64 %25, 1
  %29 = load i32, ptr %0, align 8, !tbaa !78
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %24, label %34, !prof !175, !llvm.loop !176

32:                                               ; preds = %17
  %33 = trunc i64 %20 to i32
  br label %34

34:                                               ; preds = %24, %32, %14, %11
  %35 = phi i32 [ %12, %11 ], [ 0, %14 ], [ %33, %32 ], [ %29, %24 ]
  %36 = call i32 @graphds_dfs(ptr noundef nonnull %0, ptr noundef %9, i32 noundef %35, ptr noundef nonnull %3, i8 noundef zeroext 0, ptr noundef %1) #15
  %37 = load ptr, ptr %3, align 8
  %38 = call fastcc i32 @VEC_int_base_length(ptr noundef %37) #15
  %39 = icmp eq i32 %38, %35
  br i1 %39, label %41, label %40, !prof !177

40:                                               ; preds = %34
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 299, ptr noundef nonnull @.str.5) #16
  br label %41

41:                                               ; preds = %34, %40
  %42 = icmp sgt i32 %35, 0
  br i1 %42, label %43, label %55, !prof !178

43:                                               ; preds = %41
  %44 = zext nneg i32 %35 to i64
  %45 = load ptr, ptr %3, align 8
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi i64 [ 0, %43 ], [ %53, %46 ]
  %48 = trunc i64 %47 to i32
  %49 = xor i32 %48, -1
  %50 = add nsw i32 %35, %49
  %51 = call fastcc i32 @VEC_int_base_index(ptr noundef %45, i32 noundef %50) #15
  %52 = getelementptr inbounds i32, ptr %9, i64 %47
  store i32 %51, ptr %52, align 4, !tbaa !113
  %53 = add nuw nsw i64 %47, 1
  %54 = icmp eq i64 %53, %44
  br i1 %54, label %55, label %46, !prof !179, !llvm.loop !180

55:                                               ; preds = %46, %41
  %56 = call i32 @graphds_dfs(ptr noundef nonnull %0, ptr noundef %9, i32 noundef %35, ptr noundef null, i8 noundef zeroext 1, ptr noundef %1) #15
  call void @free(ptr noundef %9) #15
  call fastcc void @VEC_int_heap_free(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 %56
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_length(ptr noundef readonly %0) unnamed_addr #11 !prof !181 !PGOFuncName !182 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !183

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !184
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !186 !PGOFuncName !187 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !113
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !181 !PGOFuncName !188 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !183

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !89
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @for_each_edge(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 !prof !77 {
  %3 = load i32, ptr %0, align 8, !tbaa !78
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %21
  %8 = phi i32 [ %3, %5 ], [ %22, %21 ]
  %9 = phi i64 [ 0, %5 ], [ %23, %21 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !84
  %11 = getelementptr inbounds %struct.vertex, ptr %10, i64 %9, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %7, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %7 ]
  tail call void %1(ptr noundef nonnull %0, ptr noundef nonnull %15) #16
  %16 = getelementptr inbounds %struct.graph_edge, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !189

19:                                               ; preds = %14
  %20 = load i32, ptr %0, align 8, !tbaa !78
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi i32 [ %20, %19 ], [ %8, %7 ]
  %23 = add nuw nsw i64 %9, 1
  %24 = sext i32 %22 to i64
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %7, label %26, !llvm.loop !190

26:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_graph(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !97 {
  %2 = load i32, ptr %0, align 8, !tbaa !78
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %25, !prof !178

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %4, %20
  %7 = phi i32 [ %2, %4 ], [ %21, %20 ]
  %8 = phi i64 [ 0, %4 ], [ %22, %20 ]
  %9 = load ptr, ptr %5, align 8, !tbaa !84
  %10 = getelementptr inbounds %struct.vertex, ptr %9, i64 %8, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13, !prof !191

13:                                               ; preds = %6, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %6 ]
  %15 = getelementptr inbounds %struct.graph_edge, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  tail call void @free(ptr noundef nonnull %14) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !prof !192, !llvm.loop !193

18:                                               ; preds = %13
  %19 = load i32, ptr %0, align 8, !tbaa !78
  br label %20

20:                                               ; preds = %18, %6
  %21 = phi i32 [ %19, %18 ], [ %7, %6 ]
  %22 = add nuw nsw i64 %8, 1
  %23 = sext i32 %21 to i64
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %6, label %25, !prof !194, !llvm.loop !195

25:                                               ; preds = %20, %1
  %26 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  tail call void @free(ptr noundef %27) #15
  tail call void @free(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @graphds_domtree(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #3 !prof !196 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store i32 %1, ptr %6, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store ptr null, ptr %7, align 8, !tbaa !89
  %8 = load i32, ptr %0, align 8, !tbaa !78
  %9 = sext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 4) #16
  %11 = load i32, ptr %0, align 8, !tbaa !78
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %22, !prof !197

13:                                               ; preds = %5, %13
  %14 = phi i64 [ %18, %13 ], [ 0, %5 ]
  %15 = getelementptr inbounds i32, ptr %2, i64 %14
  store i32 -1, ptr %15, align 4, !tbaa !113
  %16 = getelementptr inbounds i32, ptr %3, i64 %14
  store i32 -1, ptr %16, align 4, !tbaa !113
  %17 = getelementptr inbounds i32, ptr %4, i64 %14
  store i32 -1, ptr %17, align 4, !tbaa !113
  %18 = add nuw nsw i64 %14, 1
  %19 = load i32, ptr %0, align 8, !tbaa !78
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %13, label %22, !prof !198, !llvm.loop !199

22:                                               ; preds = %13, %5
  %23 = call i32 @graphds_dfs(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null) #15
  %24 = load ptr, ptr %7, align 8
  %25 = call fastcc i32 @VEC_int_base_length(ptr noundef %24) #15
  %26 = load i32, ptr %0, align 8, !tbaa !78
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %31, label %28, !prof !200

28:                                               ; preds = %22
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 435, ptr noundef nonnull @.str.5) #16
  %29 = load ptr, ptr %7, align 8
  %30 = load i32, ptr %0, align 8, !tbaa !78
  br label %31

31:                                               ; preds = %22, %28
  %32 = phi i32 [ %25, %22 ], [ %30, %28 ]
  %33 = phi ptr [ %24, %22 ], [ %29, %28 ]
  %34 = add nsw i32 %32, -1
  %35 = call fastcc i32 @VEC_int_base_index(ptr noundef %33, i32 noundef %34) #15
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %38, label %37, !prof !200

37:                                               ; preds = %31
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 436, ptr noundef nonnull @.str.5) #16
  br label %38

38:                                               ; preds = %31, %37
  %39 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %42

40:                                               ; preds = %86
  %41 = icmp eq i8 %87, 0
  br i1 %41, label %90, label %42, !prof !201, !llvm.loop !202

42:                                               ; preds = %38, %40
  %43 = phi i32 [ 1, %38 ], [ %80, %40 ]
  %44 = load i32, ptr %0, align 8, !tbaa !78
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %90, !prof !203

46:                                               ; preds = %42
  %47 = add nsw i32 %44, -2
  %48 = load ptr, ptr %7, align 8
  br label %49

49:                                               ; preds = %46, %86
  %50 = phi i8 [ %87, %86 ], [ 0, %46 ]
  %51 = phi i32 [ %80, %86 ], [ %43, %46 ]
  %52 = phi i32 [ %88, %86 ], [ %47, %46 ]
  %53 = call fastcc i32 @VEC_int_base_index(ptr noundef %48, i32 noundef %52) #15
  %54 = load ptr, ptr %39, align 8, !tbaa !84
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds %struct.vertex, ptr %54, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !89
  %58 = icmp eq ptr %57, null
  br i1 %58, label %79, label %59, !prof !204

59:                                               ; preds = %49, %73
  %60 = phi ptr [ %77, %73 ], [ %57, %49 ]
  %61 = phi i32 [ %75, %73 ], [ -1, %49 ]
  %62 = phi i32 [ %74, %73 ], [ %51, %49 ]
  %63 = load i32, ptr %60, align 8, !tbaa !90
  %64 = icmp eq i32 %63, %1
  br i1 %64, label %70, label %65, !prof !205

65:                                               ; preds = %59
  %66 = sext i32 %63 to i64
  %67 = getelementptr inbounds i32, ptr %2, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !113
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %73, label %70, !prof !206

70:                                               ; preds = %65, %59
  %71 = add nsw i32 %62, 1
  %72 = call fastcc i32 @tree_nca(i32 noundef %61, i32 noundef %63, ptr noundef %2, ptr noundef %10, i32 noundef %62) #15
  br label %73

73:                                               ; preds = %65, %70
  %74 = phi i32 [ %62, %65 ], [ %71, %70 ]
  %75 = phi i32 [ %61, %65 ], [ %72, %70 ]
  %76 = getelementptr inbounds %struct.graph_edge, ptr %60, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !89
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %59, !prof !207, !llvm.loop !208

79:                                               ; preds = %73, %49
  %80 = phi i32 [ %51, %49 ], [ %74, %73 ]
  %81 = phi i32 [ -1, %49 ], [ %75, %73 ]
  %82 = getelementptr inbounds i32, ptr %2, i64 %55
  %83 = load i32, ptr %82, align 4, !tbaa !113
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %86, label %85, !prof !209

85:                                               ; preds = %79
  store i32 %81, ptr %82, align 4, !tbaa !113
  br label %86

86:                                               ; preds = %79, %85
  %87 = phi i8 [ 1, %85 ], [ %50, %79 ]
  %88 = add nsw i32 %52, -1
  %89 = icmp sgt i32 %52, 0
  br i1 %89, label %49, label %40, !prof !210, !llvm.loop !211

90:                                               ; preds = %42, %40
  call void @free(ptr noundef %10) #15
  call fastcc void @VEC_int_heap_free(ptr noundef nonnull %7) #15
  %91 = load i32, ptr %0, align 8, !tbaa !78
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %114, !prof !197

93:                                               ; preds = %90, %109
  %94 = phi i32 [ %110, %109 ], [ %91, %90 ]
  %95 = phi i64 [ %111, %109 ], [ 0, %90 ]
  %96 = getelementptr inbounds i32, ptr %2, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !113
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %109, label %99, !prof !212

99:                                               ; preds = %93
  %100 = sext i32 %97 to i64
  %101 = getelementptr inbounds i32, ptr %3, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !113
  %103 = getelementptr inbounds i32, ptr %4, i64 %95
  store i32 %102, ptr %103, align 4, !tbaa !113
  %104 = load i32, ptr %96, align 4, !tbaa !113
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, ptr %3, i64 %105
  %107 = trunc i64 %95 to i32
  store i32 %107, ptr %106, align 4, !tbaa !113
  %108 = load i32, ptr %0, align 8, !tbaa !78
  br label %109

109:                                              ; preds = %93, %99
  %110 = phi i32 [ %94, %93 ], [ %108, %99 ]
  %111 = add nuw nsw i64 %95, 1
  %112 = sext i32 %110 to i64
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %93, label %114, !prof !198, !llvm.loop !213

114:                                              ; preds = %109, %90
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc i32 @tree_nca(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #13 !prof !214 !PGOFuncName !215 {
  %6 = icmp eq i32 %0, -1
  %7 = icmp eq i32 %0, %1
  %8 = or i1 %6, %7
  br i1 %8, label %56, label %9, !prof !216

9:                                                ; preds = %5
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds i32, ptr %3, i64 %10
  store i32 %4, ptr %11, align 4, !tbaa !113
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds i32, ptr %3, i64 %12
  store i32 %4, ptr %13, align 4, !tbaa !113
  %14 = getelementptr inbounds i32, ptr %2, i64 %10
  %15 = load i32, ptr %14, align 4, !tbaa !113
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %38, label %17, !prof !217

17:                                               ; preds = %9, %34
  %18 = phi i32 [ %36, %34 ], [ %15, %9 ]
  %19 = phi i32 [ %27, %34 ], [ %1, %9 ]
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i32, ptr %3, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !113
  %23 = icmp eq i32 %22, %4
  br i1 %23, label %56, label %24, !prof !218

24:                                               ; preds = %17
  store i32 %4, ptr %21, align 4, !tbaa !113
  %25 = sext i32 %19 to i64
  %26 = getelementptr inbounds i32, ptr %2, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !113
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %48, label %29, !prof !219

29:                                               ; preds = %24
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds i32, ptr %3, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !113
  %33 = icmp eq i32 %32, %4
  br i1 %33, label %56, label %34, !prof !220

34:                                               ; preds = %29
  store i32 %4, ptr %31, align 4, !tbaa !113
  %35 = getelementptr inbounds i32, ptr %2, i64 %20
  %36 = load i32, ptr %35, align 4, !tbaa !113
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %17, !prof !221

38:                                               ; preds = %34, %9
  %39 = phi i64 [ %12, %9 ], [ %30, %34 ]
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ %44, %40 ], [ %39, %38 ]
  %42 = getelementptr inbounds i32, ptr %2, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !113
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %3, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !113
  %47 = icmp eq i32 %46, %4
  br i1 %47, label %56, label %40, !prof !222, !llvm.loop !223

48:                                               ; preds = %24, %48
  %49 = phi i64 [ %52, %48 ], [ %20, %24 ]
  %50 = getelementptr inbounds i32, ptr %2, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !113
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %3, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !113
  %55 = icmp eq i32 %54, %4
  br i1 %55, label %56, label %48, !prof !224, !llvm.loop !225

56:                                               ; preds = %29, %17, %48, %40, %5
  %57 = phi i32 [ %1, %5 ], [ %43, %40 ], [ %51, %48 ], [ %27, %29 ], [ %18, %17 ]
  ret i32 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @foll_in_subgraph(ptr noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #3 !prof !226 !PGOFuncName !227 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %22, label %5, !prof !228

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  br i1 %6, label %22, label %7, !prof !229

7:                                                ; preds = %5, %18
  %8 = phi ptr [ %20, %18 ], [ %0, %5 ]
  %9 = tail call fastcc i32 @dfs_edge_dest(ptr noundef nonnull %8, i8 noundef zeroext %1) #15
  %10 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %2, i32 noundef %9) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22, !prof !230

12:                                               ; preds = %7
  %13 = icmp eq i8 %1, 0
  br i1 %13, label %16, label %14, !prof !231

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.graph_edge, ptr %8, i64 0, i32 3
  br label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.graph_edge, ptr %8, i64 0, i32 2
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !89
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7, !prof !232, !llvm.loop !233

22:                                               ; preds = %7, %18, %5, %3
  %23 = phi ptr [ %0, %3 ], [ null, %5 ], [ %8, %7 ], [ null, %18 ]
  ret ptr %23
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #3 !prof !165 !PGOFuncName !234 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !235

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #16
  store ptr %6, ptr %0, align 8, !tbaa !89
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #8 !prof !165 !PGOFuncName !236 {
  %3 = load i32, ptr %0, align 4, !tbaa !184
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !184
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #11 !prof !165 !PGOFuncName !237 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !238

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !239
  %6 = load i32, ptr %0, align 4, !tbaa !184
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!76}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!35 = !{ptr @new_graph, ptr @xmalloc, i64 774}
!36 = !{ptr @new_graph, ptr @xcalloc, i64 774}
!37 = !{ptr @add_edge, ptr @xmalloc, i64 4725430}
!38 = !{ptr @graphds_dfs, ptr @xmalloc, i64 1784}
!39 = !{ptr @graphds_dfs, ptr @bmp_iter_set_init, i64 472}
!40 = !{ptr @graphds_dfs, ptr @bmp_iter_set, i64 1792}
!41 = !{ptr @graphds_dfs, ptr @bmp_iter_next, i64 1320}
!42 = !{ptr @graphds_dfs, ptr @dfs_fst_edge, i64 5426167}
!43 = !{ptr @graphds_dfs, ptr @dfs_edge_dest, i64 10755296}
!44 = !{ptr @graphds_dfs, ptr @dfs_next_edge, i64 10021117}
!45 = !{ptr @graphds_dfs, ptr @VEC_int_heap_safe_push, i64 2692299}
!46 = !{ptr @graphds_dfs, ptr @dfs_edge_src, i64 649237}
!47 = !{ptr @graphds_dfs, ptr @free, i64 1784}
!48 = !{ptr @dfs_fst_edge, ptr @foll_in_subgraph, i64 5386715}
!49 = !{ptr @dfs_next_edge, ptr @foll_in_subgraph, i64 9450971}
!50 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_heap_reserve, i64 2693809}
!51 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_base_quick_push, i64 2693809}
!52 = !{ptr @graphds_scc, ptr @xmalloc, i64 774}
!53 = !{ptr @graphds_scc, ptr @bmp_iter_set_init, i64 236}
!54 = !{ptr @graphds_scc, ptr @bmp_iter_set, i64 895}
!55 = !{ptr @graphds_scc, ptr @bmp_iter_next, i64 659}
!56 = !{ptr @graphds_scc, ptr @graphds_dfs, i64 1548}
!57 = !{ptr @graphds_scc, ptr @VEC_int_base_length, i64 774}
!58 = !{ptr @graphds_scc, ptr @fancy_abort, i64 1}
!59 = !{ptr @graphds_scc, ptr @VEC_int_base_index, i64 2689434}
!60 = !{ptr @graphds_scc, ptr @free, i64 774}
!61 = !{ptr @graphds_scc, ptr @VEC_int_heap_free, i64 774}
!62 = !{ptr @VEC_int_heap_free, ptr @free, i64 1009}
!63 = !{ptr @free_graph, ptr @free, i64 4720880}
!64 = !{ptr @graphds_domtree, ptr @xcalloc, i64 236}
!65 = !{ptr @graphds_domtree, ptr @graphds_dfs, i64 236}
!66 = !{ptr @graphds_domtree, ptr @VEC_int_base_length, i64 236}
!67 = !{ptr @graphds_domtree, ptr @fancy_abort, i64 2}
!68 = !{ptr @graphds_domtree, ptr @VEC_int_base_index, i64 1565}
!69 = !{ptr @graphds_domtree, ptr @tree_nca, i64 2256}
!70 = !{ptr @graphds_domtree, ptr @free, i64 236}
!71 = !{ptr @graphds_domtree, ptr @VEC_int_heap_free, i64 236}
!72 = !{ptr @foll_in_subgraph, ptr @dfs_edge_dest, i64 2763}
!73 = !{ptr @foll_in_subgraph, ptr @bitmap_bit_p, i64 2763}
!74 = !{ptr @VEC_int_heap_reserve, ptr @VEC_int_base_space, i64 2693809}
!75 = !{ptr @VEC_int_heap_reserve, ptr @vec_heap_o_reserve, i64 5852}
!76 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!77 = !{!"function_entry_count", i64 0}
!78 = !{!79, !80, i64 0}
!79 = !{!"graph", !80, i64 0, !83, i64 8, !83, i64 16}
!80 = !{!"int", !81, i64 0}
!81 = !{!"omnipotent char", !82, i64 0}
!82 = !{!"Simple C/C++ TBAA"}
!83 = !{!"any pointer", !81, i64 0}
!84 = !{!79, !83, i64 8}
!85 = !{!86, !83, i64 0}
!86 = !{!"vertex", !83, i64 0, !83, i64 8, !80, i64 16, !80, i64 20, !83, i64 24}
!87 = !{!86, !83, i64 8}
!88 = !{!86, !80, i64 16}
!89 = !{!83, !83, i64 0}
!90 = !{!91, !80, i64 0}
!91 = !{!"graph_edge", !80, i64 0, !80, i64 4, !83, i64 8, !83, i64 16, !83, i64 24}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!91, !80, i64 4}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !93}
!97 = !{!"function_entry_count", i64 774}
!98 = !{!"function_entry_count", i64 4725430}
!99 = !{!91, !83, i64 8}
!100 = !{!91, !83, i64 16}
!101 = !{!"function_entry_count", i64 667}
!102 = !{!"branch_weights", i32 31, i32 637}
!103 = !{!"branch_weights", i32 637, i32 0}
!104 = distinct !{!104, !93}
!105 = !{!"branch_weights", i32 1, i32 667}
!106 = !{!"branch_weights", i32 667, i32 474}
!107 = distinct !{!107, !93}
!108 = !{!"function_entry_count", i64 1784}
!109 = !{!"branch_weights", i32 1313, i32 473}
!110 = !{!"branch_weights", i32 1312, i32 1}
!111 = !{i8 0, i8 2}
!112 = !{!"branch_weights", i32 1, i32 472}
!113 = !{!80, !80, i64 0}
!114 = !{!86, !80, i64 20}
!115 = !{!"branch_weights", i32 472, i32 849}
!116 = distinct !{!116, !93}
!117 = !{!"branch_weights", i32 1312, i32 5384084}
!118 = distinct !{!118, !93}
!119 = !{!"branch_weights", i32 1784, i32 1}
!120 = !{!"branch_weights", i32 4737116, i32 648934}
!121 = !{!"branch_weights", i32 1, i32 127}
!122 = !{!"branch_weights", i32 649601, i32 8801372}
!123 = !{!"branch_weights", i32 5386715, i32 4064257}
!124 = distinct !{!124, !93}
!125 = !{!"branch_weights", i32 2692907, i32 2693810}
!126 = !{!"branch_weights", i32 4737116, i32 649601}
!127 = !{!"branch_weights", i32 127, i32 689499393}
!128 = !{!"branch_weights", i32 1784, i32 5384265}
!129 = distinct !{!129, !93}
!130 = !{!"function_entry_count", i64 708}
!131 = !{!"graphds.c:bmp_iter_set_init"}
!132 = !{!133, !83, i64 0}
!133 = !{!"bitmap_head_def", !83, i64 0, !83, i64 8, !80, i64 16, !83, i64 24}
!134 = !{!135, !83, i64 0}
!135 = !{!"", !83, i64 0, !83, i64 8, !80, i64 16, !136, i64 24}
!136 = !{!"long", !81, i64 0}
!137 = !{!135, !83, i64 8}
!138 = !{!"branch_weights", i32 1, i32 709}
!139 = !{!140, !80, i64 16}
!140 = !{!"bitmap_element_def", !83, i64 0, !83, i64 8, !80, i64 16, !81, i64 24}
!141 = !{!"branch_weights", i32 709, i32 1}
!142 = !{!135, !80, i64 16}
!143 = !{!136, !136, i64 0}
!144 = !{!135, !136, i64 24}
!145 = !{!"function_entry_count", i64 2688}
!146 = !{!"graphds.c:bmp_iter_set"}
!147 = !{!"branch_weights", i32 709, i32 1981}
!148 = !{!"branch_weights", i32 22, i32 1959}
!149 = !{!"branch_weights", i32 0, i32 22}
!150 = distinct !{!150, !93}
!151 = !{!"branch_weights", i32 1, i32 708}
!152 = !{!"branch_weights", i32 708, i32 1}
!153 = distinct !{!153, !93}
!154 = !{!140, !83, i64 0}
!155 = !{!"function_entry_count", i64 1980}
!156 = !{!"graphds.c:bmp_iter_next"}
!157 = !{!"function_entry_count", i64 5386715}
!158 = !{!"graphds.c:dfs_fst_edge"}
!159 = !{!"function_entry_count", i64 10102326}
!160 = !{!"graphds.c:dfs_edge_dest"}
!161 = !{!"branch_weights", i32 5374986, i32 4727342}
!162 = !{!"function_entry_count", i64 9450971}
!163 = !{!"graphds.c:dfs_next_edge"}
!164 = !{!"branch_weights", i32 4724920, i32 4726053}
!165 = !{!"function_entry_count", i64 2693809}
!166 = !{!"graphds.c:VEC_int_heap_safe_push"}
!167 = !{!"function_entry_count", i64 649600}
!168 = !{!"graphds.c:dfs_edge_src"}
!169 = !{!"branch_weights", i32 648934, i32 668}
!170 = !{!"branch_weights", i32 539, i32 237}
!171 = !{!"branch_weights", i32 538, i32 1}
!172 = !{!"branch_weights", i32 1, i32 236}
!173 = !{!"branch_weights", i32 236, i32 425}
!174 = distinct !{!174, !93}
!175 = !{!"branch_weights", i32 2691709, i32 538}
!176 = distinct !{!176, !93}
!177 = !{!"branch_weights", i32 775, i32 1}
!178 = !{!"branch_weights", i32 774, i32 1}
!179 = !{!"branch_weights", i32 774, i32 2692133}
!180 = distinct !{!180, !93}
!181 = !{!"function_entry_count", i64 1010}
!182 = !{!"graphds.c:VEC_int_base_length"}
!183 = !{!"branch_weights", i32 1, i32 1011}
!184 = !{!185, !80, i64 0}
!185 = !{!"VEC_int_base", !80, i64 0, !80, i64 4, !81, i64 8}
!186 = !{!"function_entry_count", i64 2694476}
!187 = !{!"graphds.c:VEC_int_base_index"}
!188 = !{!"graphds.c:VEC_int_heap_free"}
!189 = distinct !{!189, !93}
!190 = distinct !{!190, !93}
!191 = !{!"branch_weights", i32 1, i32 2693149}
!192 = !{!"branch_weights", i32 2693149, i32 2032282}
!193 = distinct !{!193, !93}
!194 = !{!"branch_weights", i32 2692376, i32 774}
!195 = distinct !{!195, !93}
!196 = !{!"function_entry_count", i64 236}
!197 = !{!"branch_weights", i32 236, i32 1}
!198 = !{!"branch_weights", i32 668, i32 236}
!199 = distinct !{!199, !93}
!200 = !{!"branch_weights", i32 237, i32 1}
!201 = !{!"branch_weights", i32 1073741823, i32 1073741825}
!202 = distinct !{!202, !93}
!203 = !{!"branch_weights", i32 472, i32 1}
!204 = !{!"branch_weights", i32 1, i32 1334}
!205 = !{!"branch_weights", i32 1023, i32 1245}
!206 = !{!"branch_weights", i32 1, i32 1245}
!207 = !{!"branch_weights", i32 1334, i32 933}
!208 = distinct !{!208, !93}
!209 = !{!"branch_weights", i32 668, i32 668}
!210 = !{!"branch_weights", i32 863, i32 472}
!211 = distinct !{!211, !93}
!212 = !{!"branch_weights", i32 237, i32 668}
!213 = distinct !{!213, !93}
!214 = !{!"function_entry_count", i64 2266}
!215 = !{!"graphds.c:tree_nca"}
!216 = !{!"branch_weights", i32 1287009, i32 831303}
!217 = !{!"branch_weights", i32 1, i32 252}
!218 = !{!"branch_weights", i32 299, i32 355}
!219 = !{!"branch_weights", i32 15, i32 341}
!220 = !{!"branch_weights", i32 327, i32 15}
!221 = !{!"branch_weights", i32 252, i32 401}
!222 = !{!"branch_weights", i32 253, i32 1}
!223 = distinct !{!223, !93}
!224 = !{!"branch_weights", i32 15, i32 1}
!225 = distinct !{!225, !93}
!226 = !{!"function_entry_count", i64 14837686}
!227 = !{!"graphds.c:foll_in_subgraph"}
!228 = !{!"branch_weights", i32 14835123, i32 2565}
!229 = !{!"branch_weights", i32 1, i32 1320}
!230 = !{!"branch_weights", i32 512, i32 1245}
!231 = !{!"branch_weights", i32 512, i32 1}
!232 = !{!"branch_weights", i32 1320, i32 436}
!233 = distinct !{!233, !93}
!234 = !{!"graphds.c:VEC_int_heap_reserve"}
!235 = !{!"branch_weights", i32 5852, i32 2687959}
!236 = !{!"graphds.c:VEC_int_base_quick_push"}
!237 = !{!"graphds.c:VEC_int_base_space"}
!238 = !{!"branch_weights", i32 1011, i32 2692800}
!239 = !{!185, !80, i64 4}
