; ModuleID = 'dominance.c'
source_filename = "dominance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.dom_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.et_node = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.graph = type { i32, ptr, ptr }
%struct.vertex = type { ptr, ptr, i32, i32, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }

@cfun = external local_unnamed_addr global ptr, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [12 x i8] c"dominance.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"dominator of %d status unknown\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"dominator of %d should be %d, not %d\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"%i %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @calculate_dominance_info(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.dom_info, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #17
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = icmp eq i32 %0, 2
  %5 = zext i1 %4 to i8
  %6 = load ptr, ptr @cfun, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = zext i32 %3 to i64
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !13
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %106, label %13

13:                                               ; preds = %1
  %14 = load i8, ptr @timevar_enable, align 1, !tbaa !14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @timevar_push_1(i32 noundef 112) #19
  br label %17

17:                                               ; preds = %16, %13
  %18 = tail call zeroext i8 @dom_info_available_p(i32 noundef %0) #18, !range !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %102

20:                                               ; preds = %17
  %21 = load ptr, ptr @cfun, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 9, i64 %9
  %25 = load i32, ptr %24, align 4, !tbaa !13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 646, ptr noundef nonnull @.str.1) #19
  %28 = load ptr, ptr @cfun, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !10
  br label %31

31:                                               ; preds = %20, %27
  %32 = phi ptr [ %23, %20 ], [ %30, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31, %35
  %36 = phi ptr [ %40, %35 ], [ %33, %31 ]
  %37 = tail call ptr @et_new_tree(ptr noundef nonnull %36) #19
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 4, i64 %9
  store ptr %37, ptr %38, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %35, !llvm.loop !16

42:                                               ; preds = %35
  %43 = load ptr, ptr @cfun, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !10
  br label %46

46:                                               ; preds = %42, %31
  %47 = phi ptr [ %45, %42 ], [ %32, %31 ]
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !18
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 9, i64 %9
  store i32 %49, ptr %50, align 4, !tbaa !13
  call fastcc void @init_dom_info(ptr noundef nonnull %2, i32 noundef %0) #18
  call fastcc void @calc_dfs_tree(ptr noundef nonnull %2, i8 noundef zeroext %5) #18
  call fastcc void @calc_idoms(ptr noundef nonnull %2, i8 noundef zeroext %5) #18
  %51 = load ptr, ptr @cfun, align 8, !tbaa !6
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !10
  %54 = load ptr, ptr %53, align 8, !tbaa !20
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !21
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %53, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !24
  %59 = icmp eq ptr %56, %58
  br i1 %59, label %97, label %60

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.dom_info, ptr %2, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !25
  %63 = getelementptr inbounds %struct.dom_info, ptr %2, i64 0, i32 9
  %64 = load ptr, ptr %63, align 8, !tbaa !27
  %65 = getelementptr inbounds %struct.dom_info, ptr %2, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !28
  br label %67

67:                                               ; preds = %60, %88
  %68 = phi ptr [ %51, %60 ], [ %89, %88 ]
  %69 = phi ptr [ %56, %60 ], [ %91, %88 ]
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !29
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %64, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !13
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %62, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !13
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %66, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  %81 = icmp eq ptr %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %67
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 4, i64 %9
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 4, i64 %9
  %86 = load ptr, ptr %85, align 8, !tbaa !6
  tail call void @et_set_father(ptr noundef %84, ptr noundef %86) #19
  %87 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %88

88:                                               ; preds = %82, %67
  %89 = phi ptr [ %87, %82 ], [ %68, %67 ]
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !21
  %92 = getelementptr inbounds %struct.function, ptr %89, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !10
  %94 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !24
  %96 = icmp eq ptr %91, %95
  br i1 %96, label %97, label %67, !llvm.loop !30

97:                                               ; preds = %88, %46
  call fastcc void @free_dom_info(ptr noundef nonnull %2) #18
  %98 = load ptr, ptr @cfun, align 8, !tbaa !6
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !10
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 8, i64 %9
  store i32 1, ptr %101, align 4, !tbaa !13
  br label %102

102:                                              ; preds = %97, %17
  tail call fastcc void @compute_dom_fast_query(i32 noundef %0) #18
  %103 = load i8, ptr @timevar_enable, align 1, !tbaa !14
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  tail call void @timevar_pop_1(i32 noundef 112) #19
  br label %106

106:                                              ; preds = %102, %105, %1
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @dom_convert_dir_to_idx(i32 noundef %0) unnamed_addr #0 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %1, %4
  ret i32 %2
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @dom_info_available_p(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %3 = load ptr, ptr @cfun, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 8, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !13
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @et_new_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_dom_info(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !18
  %8 = zext i32 %7 to i64
  %9 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  store ptr %9, ptr %0, align 8, !tbaa !31
  %10 = shl nuw nsw i64 %8, 2
  %11 = tail call ptr @xmalloc(i64 noundef %10) #19
  %12 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !32
  %13 = icmp eq i32 %7, 0
  br i1 %13, label %50, label %14

14:                                               ; preds = %2
  %15 = add nuw nsw i64 %8, 3
  %16 = and i64 %15, 8589934588
  %17 = add nsw i64 %8, -1
  %18 = insertelement <4 x i64> poison, i64 %17, i64 0
  %19 = shufflevector <4 x i64> %18, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %20

20:                                               ; preds = %46, %14
  %21 = phi i64 [ 0, %14 ], [ %47, %46 ]
  %22 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %14 ], [ %48, %46 ]
  %23 = trunc i64 %21 to i32
  %24 = icmp ule <4 x i64> %22, %19
  %25 = extractelement <4 x i1> %24, i64 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = getelementptr inbounds i32, ptr %11, i64 %21
  store i32 %23, ptr %27, align 4, !tbaa !13
  br label %28

28:                                               ; preds = %26, %20
  %29 = extractelement <4 x i1> %24, i64 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = or disjoint i64 %21, 1
  %32 = getelementptr inbounds i32, ptr %11, i64 %31
  %33 = or disjoint i32 %23, 1
  store i32 %33, ptr %32, align 4, !tbaa !13
  br label %34

34:                                               ; preds = %30, %28
  %35 = extractelement <4 x i1> %24, i64 2
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = or disjoint i64 %21, 2
  %38 = getelementptr inbounds i32, ptr %11, i64 %37
  %39 = or disjoint i32 %23, 2
  store i32 %39, ptr %38, align 4, !tbaa !13
  br label %40

40:                                               ; preds = %36, %34
  %41 = extractelement <4 x i1> %24, i64 3
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = or disjoint i64 %21, 3
  %44 = getelementptr inbounds i32, ptr %11, i64 %43
  %45 = or disjoint i32 %23, 3
  store i32 %45, ptr %44, align 4, !tbaa !13
  br label %46

46:                                               ; preds = %42, %40
  %47 = add i64 %21, 4
  %48 = add <4 x i64> %22, <i64 4, i64 4, i64 4, i64 4>
  %49 = icmp eq i64 %47, %16
  br i1 %49, label %53, label %20, !llvm.loop !33

50:                                               ; preds = %2
  %51 = tail call ptr @xmalloc(i64 noundef %10) #19
  %52 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !36
  br label %92

53:                                               ; preds = %46
  %54 = tail call ptr @xmalloc(i64 noundef %10) #19
  %55 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !36
  br i1 %13, label %92, label %56

56:                                               ; preds = %53
  %57 = add nuw nsw i64 %8, 3
  %58 = and i64 %57, 8589934588
  %59 = add nsw i64 %8, -1
  %60 = insertelement <4 x i64> poison, i64 %59, i64 0
  %61 = shufflevector <4 x i64> %60, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %62

62:                                               ; preds = %88, %56
  %63 = phi i64 [ 0, %56 ], [ %89, %88 ]
  %64 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %56 ], [ %90, %88 ]
  %65 = trunc i64 %63 to i32
  %66 = icmp ule <4 x i64> %64, %61
  %67 = extractelement <4 x i1> %66, i64 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = getelementptr inbounds i32, ptr %54, i64 %63
  store i32 %65, ptr %69, align 4, !tbaa !13
  br label %70

70:                                               ; preds = %68, %62
  %71 = extractelement <4 x i1> %66, i64 1
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = or disjoint i64 %63, 1
  %74 = getelementptr inbounds i32, ptr %54, i64 %73
  %75 = or disjoint i32 %65, 1
  store i32 %75, ptr %74, align 4, !tbaa !13
  br label %76

76:                                               ; preds = %72, %70
  %77 = extractelement <4 x i1> %66, i64 2
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = or disjoint i64 %63, 2
  %80 = getelementptr inbounds i32, ptr %54, i64 %79
  %81 = or disjoint i32 %65, 2
  store i32 %81, ptr %80, align 4, !tbaa !13
  br label %82

82:                                               ; preds = %78, %76
  %83 = extractelement <4 x i1> %66, i64 3
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  %85 = or disjoint i64 %63, 3
  %86 = getelementptr inbounds i32, ptr %54, i64 %85
  %87 = or disjoint i32 %65, 3
  store i32 %87, ptr %86, align 4, !tbaa !13
  br label %88

88:                                               ; preds = %84, %82
  %89 = add i64 %63, 4
  %90 = add <4 x i64> %64, <i64 4, i64 4, i64 4, i64 4>
  %91 = icmp eq i64 %89, %58
  br i1 %91, label %92, label %62, !llvm.loop !37

92:                                               ; preds = %88, %50, %53
  %93 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  %94 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  store ptr %93, ptr %94, align 8, !tbaa !25
  %95 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  %96 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 3
  store ptr %95, ptr %96, align 8, !tbaa !38
  %97 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  %98 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 4
  store ptr %97, ptr %98, align 8, !tbaa !39
  %99 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  %100 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  store ptr %99, ptr %100, align 8, !tbaa !40
  %101 = tail call ptr @xmalloc(i64 noundef %10) #19
  %102 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 7
  store ptr %101, ptr %102, align 8, !tbaa !41
  br i1 %13, label %135, label %103

103:                                              ; preds = %92
  %104 = add nuw nsw i64 %8, 3
  %105 = and i64 %104, 8589934588
  %106 = add nsw i64 %8, -1
  %107 = insertelement <4 x i64> poison, i64 %106, i64 0
  %108 = shufflevector <4 x i64> %107, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %109

109:                                              ; preds = %131, %103
  %110 = phi i64 [ 0, %103 ], [ %132, %131 ]
  %111 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %103 ], [ %133, %131 ]
  %112 = icmp ule <4 x i64> %111, %108
  %113 = extractelement <4 x i1> %112, i64 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = getelementptr inbounds i32, ptr %101, i64 %110
  store i32 1, ptr %115, align 4, !tbaa !13
  br label %116

116:                                              ; preds = %114, %109
  %117 = extractelement <4 x i1> %112, i64 1
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = or disjoint i64 %110, 1
  %120 = getelementptr inbounds i32, ptr %101, i64 %119
  store i32 1, ptr %120, align 4, !tbaa !13
  br label %121

121:                                              ; preds = %118, %116
  %122 = extractelement <4 x i1> %112, i64 2
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = or disjoint i64 %110, 2
  %125 = getelementptr inbounds i32, ptr %101, i64 %124
  store i32 1, ptr %125, align 4, !tbaa !13
  br label %126

126:                                              ; preds = %123, %121
  %127 = extractelement <4 x i1> %112, i64 3
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = or disjoint i64 %110, 3
  %130 = getelementptr inbounds i32, ptr %101, i64 %129
  store i32 1, ptr %130, align 4, !tbaa !13
  br label %131

131:                                              ; preds = %128, %126
  %132 = add i64 %110, 4
  %133 = add <4 x i64> %111, <i64 4, i64 4, i64 4, i64 4>
  %134 = icmp eq i64 %132, %105
  br i1 %134, label %135, label %109, !llvm.loop !42

135:                                              ; preds = %131, %92
  %136 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  %137 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 8
  store ptr %136, ptr %137, align 8, !tbaa !43
  %138 = load ptr, ptr @cfun, align 8, !tbaa !6
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !10
  %141 = getelementptr inbounds %struct.control_flow_graph, ptr %140, i64 0, i32 5
  %142 = load i32, ptr %141, align 8, !tbaa !44
  %143 = add i32 %142, 1
  %144 = zext i32 %143 to i64
  %145 = tail call ptr @xcalloc(i64 noundef %144, i64 noundef 4) #19
  %146 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  store ptr %145, ptr %146, align 8, !tbaa !27
  %147 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 8) #19
  %148 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  store ptr %147, ptr %148, align 8, !tbaa !28
  %149 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 11
  store i32 1, ptr %149, align 8, !tbaa !45
  %150 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 12
  store i32 0, ptr %150, align 4, !tbaa !46
  switch i32 %1, label %156 [
    i32 1, label %151
    i32 2, label %153
  ]

151:                                              ; preds = %135
  %152 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  store ptr null, ptr %152, align 8, !tbaa !47
  br label %157

153:                                              ; preds = %135
  %154 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %155 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  store ptr %154, ptr %155, align 8, !tbaa !47
  br label %157

156:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 178, ptr noundef nonnull @.str.1) #19
  br label %157

157:                                              ; preds = %156, %153, %151
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_dfs_tree(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = icmp eq i8 %1, 0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = select i1 %3, ptr %6, ptr %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %13, i64 %16
  store i32 %11, ptr %17, align 4, !tbaa !13
  %18 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !28
  %20 = zext i32 %11 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  store ptr %9, ptr %21, align 8, !tbaa !6
  %22 = add i32 %11, 1
  store i32 %22, ptr %10, align 8, !tbaa !45
  tail call fastcc void @calc_dfs_tree_nonrec(ptr noundef %0, ptr noundef %9, i8 noundef zeroext %1) #18
  %23 = load ptr, ptr @cfun, align 8, !tbaa !6
  br i1 %3, label %139, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !24
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = load ptr, ptr %26, align 8, !tbaa !20
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %139, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  br label %35

35:                                               ; preds = %33, %77
  %36 = phi ptr [ %23, %33 ], [ %78, %77 ]
  %37 = phi ptr [ %30, %33 ], [ %81, %77 ]
  %38 = phi i8 [ 0, %33 ], [ %79, %77 ]
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  %41 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %40) #18
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !29
  br i1 %42, label %52, label %45

45:                                               ; preds = %35
  %46 = load ptr, ptr %12, align 8, !tbaa !27
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds i32, ptr %46, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !13
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i8 1, i8 %38
  br label %77

52:                                               ; preds = %35
  %53 = load ptr, ptr %34, align 8, !tbaa !47
  %54 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %53, i32 noundef %44) #19
  %55 = load i32, ptr %10, align 8, !tbaa !45
  %56 = load ptr, ptr %12, align 8, !tbaa !27
  %57 = load i32, ptr %43, align 8, !tbaa !29
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %56, i64 %58
  store i32 %55, ptr %59, align 4, !tbaa !13
  %60 = load ptr, ptr %18, align 8, !tbaa !28
  %61 = zext i32 %55 to i64
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  store ptr %37, ptr %62, align 8, !tbaa !6
  %63 = load ptr, ptr %12, align 8, !tbaa !27
  %64 = load ptr, ptr @cfun, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !10
  %67 = getelementptr inbounds %struct.control_flow_graph, ptr %66, i64 0, i32 5
  %68 = load i32, ptr %67, align 8, !tbaa !44
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %63, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !13
  %72 = load ptr, ptr %0, align 8, !tbaa !31
  %73 = getelementptr inbounds i32, ptr %72, i64 %61
  store i32 %71, ptr %73, align 4, !tbaa !13
  %74 = load i32, ptr %10, align 8, !tbaa !45
  %75 = add i32 %74, 1
  store i32 %75, ptr %10, align 8, !tbaa !45
  tail call fastcc void @calc_dfs_tree_nonrec(ptr noundef nonnull %0, ptr noundef nonnull %37, i8 noundef zeroext 1) #18
  %76 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %77

77:                                               ; preds = %45, %52
  %78 = phi ptr [ %76, %52 ], [ %36, %45 ]
  %79 = phi i8 [ %38, %52 ], [ %51, %45 ]
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !48
  %82 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !10
  %84 = load ptr, ptr %83, align 8, !tbaa !20
  %85 = icmp eq ptr %81, %84
  br i1 %85, label %86, label %35, !llvm.loop !50

86:                                               ; preds = %77
  %87 = icmp eq i8 %79, 0
  br i1 %87, label %139, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.control_flow_graph, ptr %83, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !24
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !48
  %93 = icmp eq ptr %92, %81
  br i1 %93, label %139, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  br label %96

96:                                               ; preds = %94, %131
  %97 = phi ptr [ %78, %94 ], [ %132, %131 ]
  %98 = phi ptr [ %92, %94 ], [ %134, %131 ]
  %99 = load ptr, ptr %12, align 8, !tbaa !27
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 9
  %101 = load i32, ptr %100, align 8, !tbaa !29
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, ptr %99, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !13
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %96
  %107 = load ptr, ptr %95, align 8, !tbaa !47
  %108 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %107, i32 noundef %101) #19
  %109 = load i32, ptr %10, align 8, !tbaa !45
  %110 = load ptr, ptr %12, align 8, !tbaa !27
  %111 = load i32, ptr %100, align 8, !tbaa !29
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, ptr %110, i64 %112
  store i32 %109, ptr %113, align 4, !tbaa !13
  %114 = load ptr, ptr %18, align 8, !tbaa !28
  %115 = zext i32 %109 to i64
  %116 = getelementptr inbounds ptr, ptr %114, i64 %115
  store ptr %98, ptr %116, align 8, !tbaa !6
  %117 = load ptr, ptr %12, align 8, !tbaa !27
  %118 = load ptr, ptr @cfun, align 8, !tbaa !6
  %119 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !10
  %121 = getelementptr inbounds %struct.control_flow_graph, ptr %120, i64 0, i32 5
  %122 = load i32, ptr %121, align 8, !tbaa !44
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, ptr %117, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !13
  %126 = load ptr, ptr %0, align 8, !tbaa !31
  %127 = getelementptr inbounds i32, ptr %126, i64 %115
  store i32 %125, ptr %127, align 4, !tbaa !13
  %128 = load i32, ptr %10, align 8, !tbaa !45
  %129 = add i32 %128, 1
  store i32 %129, ptr %10, align 8, !tbaa !45
  tail call fastcc void @calc_dfs_tree_nonrec(ptr noundef nonnull %0, ptr noundef nonnull %98, i8 noundef zeroext 1) #18
  %130 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %131

131:                                              ; preds = %96, %106
  %132 = phi ptr [ %97, %96 ], [ %130, %106 ]
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 5
  %134 = load ptr, ptr %133, align 8, !tbaa !48
  %135 = getelementptr inbounds %struct.function, ptr %132, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !10
  %137 = load ptr, ptr %136, align 8, !tbaa !20
  %138 = icmp eq ptr %134, %137
  br i1 %138, label %139, label %96, !llvm.loop !51

139:                                              ; preds = %131, %24, %88, %86, %2
  %140 = phi ptr [ %78, %88 ], [ %78, %86 ], [ %23, %2 ], [ %23, %24 ], [ %132, %131 ]
  %141 = load i32, ptr %10, align 8, !tbaa !45
  %142 = add i32 %141, -1
  %143 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 12
  store i32 %142, ptr %143, align 4, !tbaa !46
  %144 = getelementptr inbounds %struct.function, ptr %140, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !10
  %146 = getelementptr inbounds %struct.control_flow_graph, ptr %145, i64 0, i32 3
  %147 = load i32, ptr %146, align 8, !tbaa !18
  %148 = icmp eq i32 %141, %147
  br i1 %148, label %150, label %149

149:                                              ; preds = %139
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 394, ptr noundef nonnull @.str.1) #19
  br label %150

150:                                              ; preds = %139, %149
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_idoms(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %4 = icmp eq i8 %1, 0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = select i1 %4, ptr %7, ptr %8
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 12
  %12 = load i32, ptr %11, align 4, !tbaa !46
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %127

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  %16 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  %17 = getelementptr inbounds i8, ptr %3, i64 8
  %18 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 3
  %20 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 4
  %21 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  %22 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %23 = zext i32 %12 to i64
  br label %24

24:                                               ; preds = %14, %121
  %25 = phi i64 [ %23, %14 ], [ %124, %121 ]
  %26 = load ptr, ptr %15, align 8, !tbaa !28
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = load ptr, ptr %0, align 8, !tbaa !31
  %30 = getelementptr inbounds i32, ptr %29, i64 %25
  %31 = load i32, ptr %30, align 4, !tbaa !13
  %32 = trunc i64 %25 to i32
  br i1 %4, label %33, label %36

33:                                               ; preds = %24
  %34 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %28) #18
  %35 = extractvalue { i32, ptr } %34, 1
  br label %46

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 1
  %38 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef nonnull %37) #18
  %39 = extractvalue { i32, ptr } %38, 1
  %40 = load ptr, ptr %16, align 8, !tbaa !47
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !29
  %43 = tail call i32 @bitmap_bit_p(ptr noundef %40, i32 noundef %42) #19
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  store ptr %39, ptr %17, align 8, !tbaa.struct !52
  store i32 0, ptr %3, align 8, !tbaa !53
  br label %59

46:                                               ; preds = %33, %36, %83
  %47 = phi ptr [ %87, %83 ], [ %39, %36 ], [ %35, %33 ]
  %48 = phi i32 [ %85, %83 ], [ %32, %36 ], [ %32, %33 ]
  %49 = phi <2 x i32> [ %86, %83 ], [ <i32 0, i32 undef>, %36 ], [ <i32 0, i32 undef>, %33 ]
  %50 = extractelement <2 x i32> %49, i64 0
  %51 = tail call fastcc zeroext i8 @ei_end_p(i32 %50, ptr %47) #18, !range !15
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %46
  %54 = tail call fastcc ptr @ei_edge(i32 %50, ptr %47) #18
  %55 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  %56 = select i1 %4, ptr %54, ptr %55
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  store <2 x i32> %49, ptr %3, align 8
  store ptr %47, ptr %17, align 8, !tbaa.struct !52
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %58 = icmp eq ptr %57, %10
  br i1 %58, label %59, label %65

59:                                               ; preds = %53, %45
  %60 = phi i32 [ %32, %45 ], [ %48, %53 ]
  %61 = load ptr, ptr @cfun, align 8, !tbaa !6
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !10
  %64 = getelementptr inbounds %struct.control_flow_graph, ptr %63, i64 0, i32 5
  br label %67

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 9
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi ptr [ %66, %65 ], [ %64, %59 ]
  %69 = phi i32 [ %48, %65 ], [ %60, %59 ]
  %70 = load ptr, ptr %22, align 8, !tbaa !27
  %71 = load i32, ptr %68, align 8, !tbaa !13
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %70, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !13
  %75 = zext i32 %74 to i64
  %76 = icmp ult i64 %25, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load ptr, ptr %18, align 8, !tbaa !36
  %79 = tail call fastcc i32 @eval(ptr noundef nonnull %0, i32 noundef %74) #18
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %78, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !13
  br label %83

83:                                               ; preds = %77, %67
  %84 = phi i32 [ %82, %77 ], [ %74, %67 ]
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 %69)
  %86 = load <2 x i32>, ptr %3, align 8
  %87 = load ptr, ptr %17, align 8, !tbaa.struct !52
  br label %46, !llvm.loop !55

88:                                               ; preds = %46
  %89 = load ptr, ptr %18, align 8, !tbaa !36
  %90 = getelementptr inbounds i32, ptr %89, i64 %25
  store i32 %48, ptr %90, align 4, !tbaa !13
  tail call fastcc void @link_roots(ptr noundef nonnull %0, i32 noundef %31, i32 noundef %32) #18
  %91 = load ptr, ptr %19, align 8, !tbaa !38
  %92 = zext i32 %48 to i64
  %93 = getelementptr inbounds i32, ptr %91, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !13
  %95 = load ptr, ptr %20, align 8, !tbaa !39
  %96 = getelementptr inbounds i32, ptr %95, i64 %25
  store i32 %94, ptr %96, align 4, !tbaa !13
  store i32 %32, ptr %93, align 4, !tbaa !13
  %97 = zext i32 %31 to i64
  %98 = getelementptr inbounds i32, ptr %91, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !13
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %88, %101
  %102 = phi i32 [ %117, %101 ], [ %99, %88 ]
  %103 = tail call fastcc i32 @eval(ptr noundef nonnull %0, i32 noundef %102) #18
  %104 = load ptr, ptr %18, align 8, !tbaa !36
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds i32, ptr %104, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !13
  %108 = zext i32 %102 to i64
  %109 = getelementptr inbounds i32, ptr %104, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !13
  %111 = icmp ult i32 %107, %110
  %112 = load ptr, ptr %21, align 8, !tbaa !25
  %113 = getelementptr inbounds i32, ptr %112, i64 %108
  %114 = select i1 %111, i32 %103, i32 %31
  store i32 %114, ptr %113, align 4, !tbaa !13
  %115 = load ptr, ptr %20, align 8, !tbaa !39
  %116 = getelementptr inbounds i32, ptr %115, i64 %108
  %117 = load i32, ptr %116, align 4, !tbaa !13
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %101, !llvm.loop !56

119:                                              ; preds = %101
  %120 = load ptr, ptr %19, align 8, !tbaa !38
  br label %121

121:                                              ; preds = %119, %88
  %122 = phi ptr [ %120, %119 ], [ %91, %88 ]
  %123 = getelementptr inbounds i32, ptr %122, i64 %97
  store i32 0, ptr %123, align 4, !tbaa !13
  %124 = add nsw i64 %25, -1
  %125 = and i64 %124, 4294967294
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %24, !llvm.loop !57

127:                                              ; preds = %121, %2
  %128 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !25
  %130 = getelementptr inbounds i32, ptr %129, i64 1
  store i32 0, ptr %130, align 4, !tbaa !13
  %131 = load i32, ptr %11, align 4, !tbaa !46
  %132 = icmp ult i32 %131, 2
  br i1 %132, label %154, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !36
  br label %136

136:                                              ; preds = %133, %150
  %137 = phi i32 [ %131, %133 ], [ %151, %150 ]
  %138 = phi i32 [ 2, %133 ], [ %152, %150 ]
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, ptr %129, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !13
  %142 = getelementptr inbounds i32, ptr %135, i64 %139
  %143 = load i32, ptr %142, align 4, !tbaa !13
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %150, label %145

145:                                              ; preds = %136
  %146 = zext i32 %141 to i64
  %147 = getelementptr inbounds i32, ptr %129, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !13
  store i32 %148, ptr %140, align 4, !tbaa !13
  %149 = load i32, ptr %11, align 4, !tbaa !46
  br label %150

150:                                              ; preds = %136, %145
  %151 = phi i32 [ %137, %136 ], [ %149, %145 ]
  %152 = add i32 %138, 1
  %153 = icmp ugt i32 %152, %151
  br i1 %153, label %154, label %136, !llvm.loop !58

154:                                              ; preds = %150, %127
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare void @et_set_father(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_dom_info(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !31
  tail call void @free(ptr noundef %2) #18
  %3 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  tail call void @free(ptr noundef %4) #18
  %5 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  tail call void @free(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  tail call void @free(ptr noundef %8) #18
  %9 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  tail call void @free(ptr noundef %10) #18
  %11 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  tail call void @free(ptr noundef %12) #18
  %13 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  tail call void @free(ptr noundef %14) #18
  %15 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  tail call void @free(ptr noundef %16) #18
  %17 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  tail call void @free(ptr noundef %18) #18
  %19 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !27
  tail call void @free(ptr noundef %20) #18
  %21 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  tail call void @free(ptr noundef %22) #18
  %23 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  tail call void @bitmap_obstack_free(ptr noundef %24) #19
  store ptr null, ptr %23, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_dom_fast_query(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !tbaa !13
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = tail call zeroext i8 @dom_info_available_p(i32 noundef %0) #18, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 615, ptr noundef nonnull @.str.1) #19
  br label %7

7:                                                ; preds = %1, %6
  %8 = load ptr, ptr @cfun, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 8, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !13
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %37, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %10, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %15, %26
  %19 = phi ptr [ %28, %26 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 4, i64 %11
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.et_node, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  call fastcc void @assign_dfs_numbers(ptr noundef nonnull %21, ptr noundef nonnull %2) #18
  br label %26

26:                                               ; preds = %18, %25
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !llvm.loop !61

30:                                               ; preds = %26
  %31 = load ptr, ptr @cfun, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !10
  br label %34

34:                                               ; preds = %30, %15
  %35 = phi ptr [ %33, %30 ], [ %10, %15 ]
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 8, i64 %11
  store i32 2, ptr %36, align 4, !tbaa !13
  br label %37

37:                                               ; preds = %7, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_dfs_tree_nonrec(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = load ptr, ptr @cfun, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !18
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 4
  %13 = tail call ptr @xmalloc(i64 noundef %12) #19
  %14 = icmp eq i8 %2, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %1) #18
  %17 = load ptr, ptr @cfun, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  br label %28

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %23 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef nonnull %22) #18
  %24 = load ptr, ptr @cfun, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi { i32, ptr } [ %23, %21 ], [ %16, %15 ]
  %30 = phi ptr [ %27, %21 ], [ %19, %15 ]
  %31 = phi ptr [ %26, %21 ], [ %20, %15 ]
  %32 = extractvalue { i32, ptr } %29, 1
  store i32 0, ptr %4, align 8
  %33 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %32, ptr %33, align 8
  %34 = load ptr, ptr %31, align 8, !tbaa !6
  %35 = load ptr, ptr %30, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %37 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 11
  %38 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  br label %39

39:                                               ; preds = %134, %28
  %40 = phi ptr [ %32, %28 ], [ %139, %134 ]
  %41 = phi i32 [ 0, %28 ], [ %138, %134 ]
  %42 = phi i32 [ 0, %28 ], [ %135, %134 ]
  %43 = tail call fastcc zeroext i8 @ei_end_p(i32 %41, ptr %40) #18, !range !15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %131

45:                                               ; preds = %39
  %46 = sext i32 %42 to i64
  br label %47

47:                                               ; preds = %45, %106
  %48 = phi i64 [ %46, %45 ], [ %123, %106 ]
  %49 = phi ptr [ %40, %45 ], [ %93, %106 ]
  %50 = phi i32 [ %41, %45 ], [ 0, %106 ]
  br label %51

51:                                               ; preds = %47, %66
  %52 = phi ptr [ %49, %47 ], [ %68, %66 ]
  %53 = phi i32 [ %50, %47 ], [ %67, %66 ]
  %54 = tail call fastcc ptr @ei_edge(i32 %53, ptr %52) #18
  br i1 %14, label %73, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %54, align 8, !tbaa !62
  %57 = icmp eq ptr %56, %35
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %36, align 8, !tbaa !27
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !29
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %59, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !13
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %55, %58, %73, %77
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %67 = load i32, ptr %4, align 8
  %68 = load ptr, ptr %33, align 8
  %69 = tail call fastcc zeroext i8 @ei_end_p(i32 %67, ptr %68) #18, !range !15
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %51, label %127, !llvm.loop !64

71:                                               ; preds = %58
  %72 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  br label %87

73:                                               ; preds = %51
  %74 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !65
  %76 = icmp eq ptr %75, %35
  br i1 %76, label %66, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %36, align 8, !tbaa !27
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !29
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, ptr %78, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !13
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %66

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 1
  br label %87

87:                                               ; preds = %85, %71
  %88 = phi ptr [ %86, %85 ], [ %56, %71 ]
  %89 = phi ptr [ %75, %85 ], [ %56, %71 ]
  %90 = phi ptr [ %54, %85 ], [ %72, %71 ]
  %91 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef nonnull %88) #18
  %92 = load ptr, ptr %90, align 8, !tbaa !6
  %93 = extractvalue { i32, ptr } %91, 1
  %94 = icmp eq ptr %89, %34
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 294, ptr noundef nonnull @.str.1) #19
  br label %96

96:                                               ; preds = %87, %95
  %97 = icmp eq ptr %92, %34
  %98 = load ptr, ptr %36, align 8, !tbaa !27
  br i1 %97, label %101, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 9
  br label %106

101:                                              ; preds = %96
  %102 = load ptr, ptr @cfun, align 8, !tbaa !6
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !10
  %105 = getelementptr inbounds %struct.control_flow_graph, ptr %104, i64 0, i32 5
  br label %106

106:                                              ; preds = %101, %99
  %107 = phi ptr [ %105, %101 ], [ %100, %99 ]
  %108 = load i32, ptr %107, align 8, !tbaa !13
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, ptr %98, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !13
  %112 = load i32, ptr %37, align 8, !tbaa !45
  %113 = add i32 %112, 1
  store i32 %113, ptr %37, align 8, !tbaa !45
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !29
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, ptr %98, i64 %116
  store i32 %112, ptr %117, align 4, !tbaa !13
  %118 = load ptr, ptr %38, align 8, !tbaa !28
  %119 = zext i32 %112 to i64
  %120 = getelementptr inbounds ptr, ptr %118, i64 %119
  store ptr %89, ptr %120, align 8, !tbaa !6
  %121 = load ptr, ptr %0, align 8, !tbaa !31
  %122 = getelementptr inbounds i32, ptr %121, i64 %119
  store i32 %111, ptr %122, align 4, !tbaa !13
  %123 = add i64 %48, 1
  %124 = getelementptr inbounds %struct.edge_iterator, ptr %13, i64 %48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %124, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !66
  store i32 0, ptr %4, align 8, !tbaa.struct !66
  store ptr %93, ptr %33, align 8, !tbaa.struct !52
  %125 = tail call fastcc zeroext i8 @ei_end_p(i32 0, ptr %93) #18, !range !15
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %47, label %129, !llvm.loop !64

127:                                              ; preds = %66
  %128 = trunc i64 %48 to i32
  br label %131

129:                                              ; preds = %106
  %130 = trunc i64 %123 to i32
  br label %131

131:                                              ; preds = %129, %127, %39
  %132 = phi i32 [ %42, %39 ], [ %128, %127 ], [ %130, %129 ]
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  %135 = add nsw i32 %132, -1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.edge_iterator, ptr %13, i64 %136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %137, i64 16, i1 false), !tbaa.struct !66
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %138 = load i32, ptr %4, align 8
  %139 = load ptr, ptr %33, align 8
  br label %39

140:                                              ; preds = %131
  tail call void @free(ptr noundef %13) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !67
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc { i32, ptr } @ei_start_1(ptr noundef %0) unnamed_addr #4 {
  %2 = insertvalue { i32, ptr } { i32 0, ptr poison }, ptr %0, 1
  ret { i32, ptr } %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !53
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @eval(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  %12 = getelementptr inbounds i32, ptr %11, i64 %5
  %13 = load i32, ptr %12, align 4, !tbaa !13
  br label %42

14:                                               ; preds = %2
  %15 = zext i32 %7 to i64
  %16 = getelementptr inbounds i32, ptr %4, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  tail call fastcc void @compress(ptr noundef nonnull %0, i32 noundef %1) #18
  %20 = load ptr, ptr %3, align 8, !tbaa !40
  %21 = getelementptr inbounds i32, ptr %20, i64 %5
  %22 = load i32, ptr %21, align 4, !tbaa !13
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i64 [ %23, %19 ], [ %15, %14 ]
  %26 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !36
  %28 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !32
  %30 = getelementptr inbounds i32, ptr %29, i64 %25
  %31 = load i32, ptr %30, align 4, !tbaa !13
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %27, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !13
  %35 = getelementptr inbounds i32, ptr %29, i64 %5
  %36 = load i32, ptr %35, align 4, !tbaa !13
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %27, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !13
  %40 = icmp ult i32 %34, %39
  %41 = select i1 %40, i32 %31, i32 %36
  br label %42

42:                                               ; preds = %24, %9
  %43 = phi i32 [ %13, %9 ], [ %41, %24 ]
  ret i32 %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_roots(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !32
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = load i32, ptr %9, align 4, !tbaa !13
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %5, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !13
  %16 = getelementptr inbounds i32, ptr %11, i64 %8
  %17 = load i32, ptr %16, align 4, !tbaa !13
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %7, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !13
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %5, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !13
  %24 = icmp ult i32 %15, %23
  %25 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  br i1 %24, label %27, label %73

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  br label %29

29:                                               ; preds = %27, %57
  %30 = phi i64 [ %18, %27 ], [ %66, %57 ]
  %31 = phi ptr [ %16, %27 ], [ %64, %57 ]
  %32 = phi i64 [ %8, %27 ], [ %63, %57 ]
  %33 = phi i32 [ %2, %27 ], [ %58, %57 ]
  %34 = getelementptr inbounds i32, ptr %26, i64 %32
  %35 = load i32, ptr %34, align 4, !tbaa !13
  %36 = getelementptr inbounds i32, ptr %11, i64 %30
  %37 = load i32, ptr %36, align 4, !tbaa !13
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %26, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !13
  %41 = add i32 %40, %35
  %42 = getelementptr inbounds i32, ptr %26, i64 %30
  %43 = load i32, ptr %42, align 4, !tbaa !13
  %44 = shl i32 %43, 1
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %29
  %47 = load ptr, ptr %28, align 8, !tbaa !40
  %48 = getelementptr inbounds i32, ptr %47, i64 %30
  store i32 %33, ptr %48, align 4, !tbaa !13
  %49 = load i32, ptr %31, align 4, !tbaa !13
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %11, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !13
  store i32 %52, ptr %31, align 4, !tbaa !13
  br label %57

53:                                               ; preds = %29
  store i32 %35, ptr %42, align 4, !tbaa !13
  %54 = load i32, ptr %31, align 4, !tbaa !13
  %55 = load ptr, ptr %28, align 8, !tbaa !40
  %56 = getelementptr inbounds i32, ptr %55, i64 %32
  store i32 %54, ptr %56, align 4, !tbaa !13
  br label %57

57:                                               ; preds = %53, %46
  %58 = phi i32 [ %33, %46 ], [ %54, %53 ]
  %59 = load i32, ptr %9, align 4, !tbaa !13
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %5, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !13
  %63 = zext i32 %58 to i64
  %64 = getelementptr inbounds i32, ptr %11, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !13
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %7, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !13
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %5, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !13
  %72 = icmp ult i32 %62, %71
  br i1 %72, label %29, label %73, !llvm.loop !69

73:                                               ; preds = %57, %3
  %74 = phi i32 [ %2, %3 ], [ %58, %57 ]
  %75 = phi i32 [ %12, %3 ], [ %59, %57 ]
  %76 = phi i64 [ %8, %3 ], [ %63, %57 ]
  %77 = getelementptr inbounds i32, ptr %7, i64 %76
  store i32 %75, ptr %77, align 4, !tbaa !13
  %78 = getelementptr inbounds i32, ptr %26, i64 %8
  %79 = load i32, ptr %78, align 4, !tbaa !13
  %80 = zext i32 %1 to i64
  %81 = getelementptr inbounds i32, ptr %26, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !13
  %83 = add i32 %82, %79
  store i32 %83, ptr %81, align 4, !tbaa !13
  %84 = load i32, ptr %78, align 4, !tbaa !13
  %85 = shl i32 %84, 1
  %86 = icmp ult i32 %83, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %73
  %88 = getelementptr inbounds i32, ptr %11, i64 %80
  %89 = load i32, ptr %88, align 4, !tbaa !13
  store i32 %74, ptr %88, align 4, !tbaa !13
  br label %90

90:                                               ; preds = %87, %73
  %91 = phi i32 [ %89, %87 ], [ %74, %73 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !40
  br label %96

96:                                               ; preds = %93, %96
  %97 = phi i32 [ %91, %93 ], [ %101, %96 ]
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %95, i64 %98
  store i32 %1, ptr %99, align 4, !tbaa !13
  %100 = getelementptr inbounds i32, ptr %11, i64 %98
  %101 = load i32, ptr %100, align 4, !tbaa !13
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %96, !llvm.loop !70

103:                                              ; preds = %96, %90
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compress(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !13
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %4, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %2
  tail call fastcc void @compress(ptr noundef nonnull %0, i32 noundef %7) #18
  %13 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !36
  %15 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !32
  %17 = getelementptr inbounds i32, ptr %16, i64 %8
  %18 = load i32, ptr %17, align 4, !tbaa !13
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %14, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !13
  %22 = getelementptr inbounds i32, ptr %16, i64 %5
  %23 = load i32, ptr %22, align 4, !tbaa !13
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %14, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !13
  %27 = icmp ult i32 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %12
  store i32 %18, ptr %22, align 4, !tbaa !13
  br label %29

29:                                               ; preds = %28, %12
  %30 = load ptr, ptr %3, align 8, !tbaa !40
  %31 = getelementptr inbounds i32, ptr %30, i64 %8
  %32 = load i32, ptr %31, align 4, !tbaa !13
  %33 = getelementptr inbounds i32, ptr %30, i64 %5
  store i32 %32, ptr %33, align 4, !tbaa !13
  br label %34

34:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @assign_dfs_numbers(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %1, align 4, !tbaa !13
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %1, align 4, !tbaa !13
  %5 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  tail call fastcc void @assign_dfs_numbers(ptr noundef nonnull %7, ptr noundef nonnull %1) #18
  %10 = load ptr, ptr %6, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.et_node, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %20, label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %9 ]
  tail call fastcc void @assign_dfs_numbers(ptr noundef %15, ptr noundef nonnull %1) #18
  %16 = getelementptr inbounds %struct.et_node, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = load ptr, ptr %6, align 8, !tbaa !72
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %14, !llvm.loop !74

20:                                               ; preds = %14, %9, %2
  %21 = load i32, ptr %1, align 4, !tbaa !13
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %1, align 4, !tbaa !13
  %23 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 2
  store i32 %21, ptr %23, align 4, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_dominance_info(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %3 = tail call zeroext i8 @dom_info_available_p(i32 noundef %0) #18, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @cfun, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  %11 = zext i32 %2 to i64
  br i1 %10, label %19, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %17, %12 ], [ %9, %5 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 4, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  tail call void @et_free_tree_force(ptr noundef %15) #19
  store ptr null, ptr %14, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %12, !llvm.loop !76

19:                                               ; preds = %12, %5
  tail call void @et_free_pools() #19
  %20 = load ptr, ptr @cfun, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 9, i64 %11
  store i32 0, ptr %23, align 4, !tbaa !13
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 8, i64 %11
  store i32 0, ptr %24, align 4, !tbaa !13
  br label %25

25:                                               ; preds = %1, %19
  ret void
}

; Function Attrs: optsize
declare void @et_free_tree_force(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @et_free_pools() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_immediate_dominator(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load ptr, ptr @cfun, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 8, i64 %4
  %11 = load i32, ptr %10, align 4, !tbaa !13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 704, ptr noundef nonnull @.str.1) #19
  br label %14

14:                                               ; preds = %2, %13
  %15 = getelementptr inbounds %struct.et_node, ptr %6, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !77
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi ptr [ %19, %18 ], [ null, %14 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_immediate_dominator(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load ptr, ptr @cfun, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 8, i64 %5
  %12 = load i32, ptr %11, align 4, !tbaa !13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 721, ptr noundef nonnull @.str.1) #19
  br label %15

15:                                               ; preds = %3, %14
  %16 = getelementptr inbounds %struct.et_node, ptr %7, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !77
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  tail call void @et_split(ptr noundef nonnull %7) #19
  br label %23

23:                                               ; preds = %22, %15
  %24 = icmp eq ptr %2, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %5
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  tail call void @et_set_father(ptr noundef nonnull %7, ptr noundef %27) #19
  br label %28

28:                                               ; preds = %25, %23
  %29 = load ptr, ptr @cfun, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !10
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 8, i64 %5
  %33 = load i32, ptr %32, align 4, !tbaa !13
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, ptr %32, align 4, !tbaa !13
  br label %36

36:                                               ; preds = %28, %35, %19
  ret void
}

; Function Attrs: optsize
declare void @et_split(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_dominated_by(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.et_node, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !6
  %10 = load ptr, ptr @cfun, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !10
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 8, i64 %5
  %14 = load i32, ptr %13, align 4, !tbaa !13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 746, ptr noundef nonnull @.str.1) #19
  br label %17

17:                                               ; preds = %2, %16
  %18 = icmp eq ptr %9, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %9, align 8, !tbaa !77
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %3, ptr noundef %20) #18
  %21 = getelementptr inbounds %struct.et_node, ptr %9, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  %23 = icmp eq ptr %22, %9
  br i1 %23, label %30, label %24

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %28, %24 ], [ %22, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %3, ptr noundef %26) #18
  %27 = getelementptr inbounds %struct.et_node, ptr %25, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  %29 = icmp eq ptr %28, %9
  br i1 %29, label %30, label %24, !llvm.loop !78

30:                                               ; preds = %24, %19
  %31 = load ptr, ptr %3, align 8, !tbaa !6
  br label %32

32:                                               ; preds = %17, %30
  %33 = phi ptr [ %31, %30 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_basic_block_heap_reserve(ptr noundef %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #19
  store ptr %6, ptr %0, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !79
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !79
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !81
  %6 = load i32, ptr %0, align 8, !tbaa !79
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_dominated_by_region(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !6
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %3
  %7 = zext i32 %2 to i64
  br label %11

8:                                                ; preds = %11
  br i1 %5, label %51, label %9

9:                                                ; preds = %8
  %10 = zext i32 %2 to i64
  br label %23

11:                                               ; preds = %6, %11
  %12 = phi i64 [ 0, %6 ], [ %18, %11 ]
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !82
  %17 = or i32 %16, 128
  store i32 %17, ptr %15, align 8, !tbaa !82
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, %7
  br i1 %19, label %8, label %11, !llvm.loop !83

20:                                               ; preds = %39
  br i1 %5, label %51, label %21

21:                                               ; preds = %20
  %22 = zext i32 %2 to i64
  br label %42

23:                                               ; preds = %9, %39
  %24 = phi i64 [ 0, %9 ], [ %40, %39 ]
  %25 = getelementptr inbounds ptr, ptr %1, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = tail call ptr @first_dom_son(i32 noundef %0, ptr noundef %26) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %23, %36
  %30 = phi ptr [ %37, %36 ], [ %27, %23 ]
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 13
  %32 = load i32, ptr %31, align 8, !tbaa !82
  %33 = and i32 %32, 128
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %4, ptr noundef nonnull %30) #18
  br label %36

36:                                               ; preds = %29, %35
  %37 = tail call ptr @next_dom_son(i32 noundef %0, ptr noundef nonnull %30) #18
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %29, !llvm.loop !84

39:                                               ; preds = %36, %23
  %40 = add nuw nsw i64 %24, 1
  %41 = icmp eq i64 %40, %10
  br i1 %41, label %20, label %23, !llvm.loop !85

42:                                               ; preds = %21, %42
  %43 = phi i64 [ 0, %21 ], [ %49, %42 ]
  %44 = getelementptr inbounds ptr, ptr %1, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !82
  %48 = and i32 %47, -129
  store i32 %48, ptr %46, align 8, !tbaa !82
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %49, %22
  br i1 %50, label %51, label %42, !llvm.loop !86

51:                                               ; preds = %42, %3, %8, %20
  %52 = load ptr, ptr %4, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @first_dom_son(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.et_node, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 8, !tbaa !77
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi ptr [ %11, %10 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @next_dom_son(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.et_node, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.et_node, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.et_node, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = icmp eq ptr %12, %8
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %8, align 8, !tbaa !77
  br label %16

16:                                               ; preds = %2, %14
  %17 = phi ptr [ %15, %14 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_all_dominated_blocks(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !6
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %3, ptr noundef %1) #18
  %4 = load ptr, ptr %3, align 8
  br label %5

5:                                                ; preds = %18, %2
  %6 = phi ptr [ %4, %2 ], [ %19, %18 ]
  %7 = phi i32 [ 0, %2 ], [ %8, %18 ]
  %8 = add nuw i32 %7, 1
  %9 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %7) #18
  %10 = tail call ptr @first_dom_son(i32 noundef %0, ptr noundef %9) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %10, %5 ]
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %13) #18
  %14 = tail call ptr @next_dom_son(i32 noundef %0, ptr noundef nonnull %13) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !llvm.loop !87

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = phi ptr [ %17, %16 ], [ %6, %5 ]
  %20 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %19) #18
  %21 = icmp ult i32 %8, %20
  br i1 %21, label %5, label %22, !llvm.loop !88

22:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !79
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_immediate_dominators(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %5
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load ptr, ptr @cfun, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !10
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 8, i64 %5
  %14 = load i32, ptr %13, align 4, !tbaa !13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 822, ptr noundef nonnull @.str.1) #19
  br label %17

17:                                               ; preds = %3, %16
  %18 = getelementptr inbounds %struct.et_node, ptr %7, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %23, %21 ], [ %19, %17 ]
  tail call void @et_split(ptr noundef nonnull %22) #19
  tail call void @et_set_father(ptr noundef nonnull %22, ptr noundef %9) #19
  %23 = load ptr, ptr %18, align 8, !tbaa !72
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21, !llvm.loop !89

25:                                               ; preds = %21
  %26 = load ptr, ptr @cfun, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !10
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 8, i64 %5
  %30 = load i32, ptr %29, align 4, !tbaa !13
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, ptr %29, align 4, !tbaa !13
  br label %33

33:                                               ; preds = %25, %32, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @nearest_common_dominator(i32 noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %5 = load ptr, ptr @cfun, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 8, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 845, ptr noundef nonnull @.str.1) #19
  br label %13

13:                                               ; preds = %3, %12
  %14 = icmp eq ptr %1, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  %16 = icmp eq ptr %2, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %8
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %8
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = tail call ptr @et_nca(ptr noundef %19, ptr noundef %21) #19
  %23 = load ptr, ptr %22, align 8, !tbaa !77
  br label %24

24:                                               ; preds = %15, %13, %17
  %25 = phi ptr [ %23, %17 ], [ %2, %13 ], [ %1, %15 ]
  ret ptr %25
}

; Function Attrs: optsize
declare ptr @et_nca(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @nearest_common_dominator_for_set(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %5 = tail call i32 @bitmap_first_set_bit(ptr noundef %1) #19
  %6 = load ptr, ptr @cfun, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %10, i32 noundef %5) #18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #18
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %2, %27
  %15 = phi ptr [ %28, %27 ], [ %6, %2 ]
  %16 = phi ptr [ %29, %27 ], [ %11, %2 ]
  %17 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !90
  %21 = load i32, ptr %3, align 4, !tbaa !13
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %20, i32 noundef %21) #18
  %23 = icmp eq ptr %16, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = tail call ptr @nearest_common_dominator(i32 noundef %0, ptr noundef %16, ptr noundef %22) #18
  %26 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %27

27:                                               ; preds = %14, %24
  %28 = phi ptr [ %26, %24 ], [ %15, %14 ]
  %29 = phi ptr [ %25, %24 ], [ %16, %14 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %14, !llvm.loop !91

32:                                               ; preds = %27, %2
  %33 = phi ptr [ %11, %2 ], [ %29, %27 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret ptr %33
}

; Function Attrs: optsize
declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 {
  %4 = load ptr, ptr %1, align 8, !tbaa !92
  store ptr %4, ptr %0, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !96
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !94
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !97
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !99
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !100
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !101
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !101
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !13
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !102

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !13
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !13
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !99
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !94
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !99
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !100
  store i64 %35, ptr %3, align 8, !tbaa !101
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !13
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !13
  %40 = load i32, ptr %23, align 8, !tbaa !99
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !99
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !103

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !104
  store ptr %44, ptr %0, align 8, !tbaa !94
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !97
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !13
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !101
  store i32 %16, ptr %1, align 4, !tbaa !13
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !101
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !101
  %6 = load i32, ptr %1, align 4, !tbaa !13
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @dominated_by_p(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %5
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load ptr, ptr @cfun, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !10
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 8, i64 %5
  %14 = load i32, ptr %13, align 4, !tbaa !13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 957, ptr noundef nonnull @.str.1) #19
  %17 = load ptr, ptr @cfun, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 8, i64 %5
  %21 = load i32, ptr %20, align 4, !tbaa !13
  br label %22

22:                                               ; preds = %3, %16
  %23 = phi i32 [ %14, %3 ], [ %21, %16 ]
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.et_node, ptr %7, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !71
  %28 = getelementptr inbounds %struct.et_node, ptr %9, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !71
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.et_node, ptr %7, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !75
  %34 = getelementptr inbounds %struct.et_node, ptr %9, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !75
  %36 = icmp sle i32 %33, %35
  %37 = zext i1 %36 to i8
  br label %40

38:                                               ; preds = %22
  %39 = tail call zeroext i8 @et_below(ptr noundef %7, ptr noundef %9) #19
  br label %40

40:                                               ; preds = %25, %31, %38
  %41 = phi i8 [ %39, %38 ], [ 0, %25 ], [ %37, %31 ]
  ret i8 %41
}

; Function Attrs: optsize
declare zeroext i8 @et_below(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @bb_dom_dfs_in(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load ptr, ptr @cfun, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 8, i64 %4
  %11 = load i32, ptr %10, align 4, !tbaa !13
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 974, ptr noundef nonnull @.str.1) #19
  br label %14

14:                                               ; preds = %2, %13
  %15 = getelementptr inbounds %struct.et_node, ptr %6, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !71
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @bb_dom_dfs_out(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load ptr, ptr @cfun, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 8, i64 %4
  %11 = load i32, ptr %10, align 4, !tbaa !13
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 986, ptr noundef nonnull @.str.1) #19
  br label %14

14:                                               ; preds = %2, %13
  %15 = getelementptr inbounds %struct.et_node, ptr %6, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !75
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_dominators(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.dom_info, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #17
  %3 = icmp eq i32 %0, 2
  %4 = zext i1 %3 to i8
  %5 = tail call zeroext i8 @dom_info_available_p(i32 noundef %0) #18, !range !15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 999, ptr noundef nonnull @.str.1) #19
  br label %8

8:                                                ; preds = %1, %7
  call fastcc void @init_dom_info(ptr noundef nonnull %2, i32 noundef %0) #18
  call fastcc void @calc_dfs_tree(ptr noundef nonnull %2, i8 noundef zeroext %4) #18
  call fastcc void @calc_idoms(ptr noundef nonnull %2, i8 noundef zeroext %4) #18
  %9 = load ptr, ptr @cfun, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = load ptr, ptr %11, align 8, !tbaa !20
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  call fastcc void @free_dom_info(ptr noundef nonnull %2) #18
  br label %66

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.dom_info, ptr %2, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.dom_info, ptr %2, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.dom_info, ptr %2, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8
  br label %26

26:                                               ; preds = %19, %53
  %27 = phi ptr [ %14, %19 ], [ %56, %53 ]
  %28 = phi i32 [ 0, %19 ], [ %54, %53 ]
  %29 = tail call ptr @get_immediate_dominator(i32 noundef %0, ptr noundef %27) #18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !29
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, i32 noundef %33) #19
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i32 [ %28, %26 ], [ 1, %31 ]
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !29
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %25, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !13
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %23, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !13
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %21, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = icmp eq ptr %29, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !29
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !29
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4, i32 noundef %37, i32 noundef %50, i32 noundef %52) #19
  br label %53

53:                                               ; preds = %34, %48
  %54 = phi i32 [ 1, %48 ], [ %35, %34 ]
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !21
  %57 = load ptr, ptr @cfun, align 8, !tbaa !6
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !10
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !24
  %62 = icmp eq ptr %56, %61
  br i1 %62, label %63, label %26, !llvm.loop !105

63:                                               ; preds = %53
  %64 = icmp eq i32 %54, 0
  call fastcc void @free_dom_info(ptr noundef nonnull %2) #18
  br i1 %64, label %66, label %65

65:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1024, ptr noundef nonnull @.str.1) #19
  br label %66

66:                                               ; preds = %18, %63, %65
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @recompute_dominator(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %6 = load ptr, ptr @cfun, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1040, ptr noundef nonnull @.str.1) #19
  br label %14

14:                                               ; preds = %2, %13
  %15 = icmp eq i32 %0, 1
  br i1 %15, label %16, label %37

16:                                               ; preds = %14
  %17 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %1) #18
  %18 = extractvalue { i32, ptr } %17, 1
  store i32 0, ptr %4, align 8, !tbaa.struct !66
  %19 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %18, ptr %19, align 8, !tbaa.struct !52
  %20 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %3) #18, !range !15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %16, %31
  %23 = phi ptr [ %32, %31 ], [ null, %16 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !6
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %25, ptr noundef %1) #18
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load ptr, ptr %24, align 8, !tbaa !62
  %30 = tail call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %23, ptr noundef %29) #18
  br label %31

31:                                               ; preds = %22, %28
  %32 = phi ptr [ %23, %22 ], [ %30, %28 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %33 = load i32, ptr %4, align 8
  %34 = load ptr, ptr %19, align 8
  %35 = call fastcc zeroext i8 @ei_cond(i32 %33, ptr %34, ptr noundef nonnull %3) #18, !range !15
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %60, label %22, !llvm.loop !106

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %39 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef nonnull %38) #18
  %40 = extractvalue { i32, ptr } %39, 1
  store i32 0, ptr %4, align 8, !tbaa.struct !66
  %41 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %40, ptr %41, align 8, !tbaa.struct !52
  %42 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %40, ptr noundef nonnull %3) #18, !range !15
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %37, %54
  %45 = phi ptr [ %55, %54 ], [ null, %37 ]
  %46 = load ptr, ptr %3, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !65
  %49 = tail call zeroext i8 @dominated_by_p(i32 noundef %0, ptr noundef %48, ptr noundef %1) #18
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load ptr, ptr %47, align 8, !tbaa !65
  %53 = tail call ptr @nearest_common_dominator(i32 noundef %0, ptr noundef %45, ptr noundef %52) #18
  br label %54

54:                                               ; preds = %44, %51
  %55 = phi ptr [ %45, %44 ], [ %53, %51 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %56 = load i32, ptr %4, align 8
  %57 = load ptr, ptr %41, align 8
  %58 = call fastcc zeroext i8 @ei_cond(i32 %56, ptr %57, ptr noundef nonnull %3) #18, !range !15
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %44, !llvm.loop !107

60:                                               ; preds = %54, %31, %37, %16
  %61 = phi ptr [ null, %16 ], [ null, %37 ], [ %32, %31 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !6
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @iterate_fix_dominators(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %7 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1240, ptr noundef nonnull @.str.1) #19
  br label %10

10:                                               ; preds = %3, %9
  %11 = load ptr, ptr @cfun, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !10
  %14 = zext i32 %7 to i64
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 8, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1241, ptr noundef nonnull @.str.1) #19
  br label %19

19:                                               ; preds = %10, %18
  %20 = icmp eq i8 %2, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #18, !range !108
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21, %24
  %25 = phi i32 [ %27, %24 ], [ 0, %21 ]
  %26 = load ptr, ptr %4, align 8, !tbaa !6
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %26, ptr noundef null) #18
  %27 = add i32 %25, 1
  %28 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef %27, ptr noundef nonnull %4) #18, !range !108
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %24, !llvm.loop !109

30:                                               ; preds = %24, %21, %19
  tail call fastcc void @prune_bbs_to_update_dominators(ptr noundef %1, i8 noundef zeroext %2) #18
  %31 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %1) #18
  switch i32 %31, label %35 [
    i32 0, label %169
    i32 1, label %32
  ]

32:                                               ; preds = %30
  %33 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef 0) #18
  %34 = tail call ptr @recompute_dominator(i32 noundef 1, ptr noundef %33) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %33, ptr noundef %34) #18
  br label %169

35:                                               ; preds = %30
  %36 = tail call ptr @pointer_map_create() #19
  %37 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #18, !range !108
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %35, %43
  %40 = phi i32 [ %47, %43 ], [ 0, %35 ]
  %41 = load ptr, ptr %4, align 8, !tbaa !6
  br i1 %20, label %43, label %42

42:                                               ; preds = %39
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %41, ptr noundef null) #18
  br label %43

43:                                               ; preds = %42, %39
  %44 = zext i32 %40 to i64
  %45 = inttoptr i64 %44 to ptr
  %46 = tail call ptr @pointer_map_insert(ptr noundef %36, ptr noundef %41) #19
  store ptr %45, ptr %46, align 8, !tbaa !6
  %47 = add i32 %40, 1
  %48 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef %47, ptr noundef nonnull %4) #18, !range !108
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %39, !llvm.loop !110

50:                                               ; preds = %43, %35
  %51 = sext i32 %31 to i64
  %52 = inttoptr i64 %51 to ptr
  %53 = load ptr, ptr @cfun, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !10
  %56 = load ptr, ptr %55, align 8, !tbaa !20
  %57 = tail call ptr @pointer_map_insert(ptr noundef %36, ptr noundef %56) #19
  store ptr %52, ptr %57, align 8, !tbaa !6
  %58 = add nsw i32 %31, 1
  %59 = tail call ptr @new_graph(i32 noundef %58) #19
  %60 = load i32, ptr %59, align 8, !tbaa !111
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.graph, ptr %59, i64 0, i32 1
  br label %71

64:                                               ; preds = %71, %50
  %65 = phi i32 [ %60, %50 ], [ %77, %71 ]
  %66 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #18, !range !108
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %6, i64 8
  %70 = getelementptr inbounds %struct.graph, ptr %59, i64 0, i32 1
  br label %88

71:                                               ; preds = %62, %71
  %72 = phi i64 [ 0, %62 ], [ %76, %71 ]
  %73 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %74 = load ptr, ptr %63, align 8, !tbaa !113
  %75 = getelementptr inbounds %struct.vertex, ptr %74, i64 %72, i32 4
  store ptr %73, ptr %75, align 8, !tbaa !114
  %76 = add nuw nsw i64 %72, 1
  %77 = load i32, ptr %59, align 8, !tbaa !111
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %71, label %64, !llvm.loop !116

80:                                               ; preds = %121
  %81 = load i32, ptr %59, align 8, !tbaa !111
  br label %82

82:                                               ; preds = %80, %64
  %83 = phi i32 [ %81, %80 ], [ %65, %64 ]
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %136

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.graph, ptr %59, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !113
  br label %125

88:                                               ; preds = %68, %121
  %89 = phi i32 [ 0, %68 ], [ %122, %121 ]
  %90 = load ptr, ptr %4, align 8, !tbaa !6
  %91 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %90) #18
  %92 = extractvalue { i32, ptr } %91, 1
  store i32 0, ptr %6, align 8, !tbaa.struct !66
  store ptr %92, ptr %69, align 8, !tbaa.struct !52
  %93 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %92, ptr noundef nonnull %5) #18, !range !15
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %121, label %95

95:                                               ; preds = %88, %116
  %96 = load ptr, ptr %5, align 8, !tbaa !6
  %97 = load ptr, ptr %96, align 8, !tbaa !62
  %98 = tail call fastcc ptr @root_of_dom_tree(ptr noundef %97) #18
  %99 = icmp eq ptr %98, %90
  br i1 %99, label %116, label %100

100:                                              ; preds = %95
  %101 = tail call ptr @pointer_map_contains(ptr noundef %36, ptr noundef %98) #19
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = ptrtoint ptr %102 to i64
  %104 = load ptr, ptr %70, align 8, !tbaa !113
  %105 = getelementptr inbounds %struct.vertex, ptr %104, i64 %103, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !114
  %107 = tail call i32 @bitmap_bit_p(ptr noundef %106, i32 noundef %89) #19
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load ptr, ptr %70, align 8, !tbaa !113
  %111 = getelementptr inbounds %struct.vertex, ptr %110, i64 %103, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !114
  %113 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %112, i32 noundef %89) #19
  %114 = trunc i64 %103 to i32
  %115 = tail call ptr @add_edge(ptr noundef nonnull %59, i32 noundef %114, i32 noundef %89) #19
  br label %116

116:                                              ; preds = %100, %95, %109
  call fastcc void @ei_next(ptr noundef nonnull %6) #18
  %117 = load i32, ptr %6, align 8
  %118 = load ptr, ptr %69, align 8
  %119 = call fastcc zeroext i8 @ei_cond(i32 %117, ptr %118, ptr noundef nonnull %5) #18, !range !15
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %95, !llvm.loop !117

121:                                              ; preds = %116, %88
  %122 = add i32 %89, 1
  %123 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef %122, ptr noundef nonnull %4) #18, !range !108
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %80, label %88, !llvm.loop !118

125:                                              ; preds = %85, %125
  %126 = phi ptr [ %87, %85 ], [ %130, %125 ]
  %127 = phi i64 [ 0, %85 ], [ %132, %125 ]
  %128 = getelementptr inbounds %struct.vertex, ptr %126, i64 %127, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !114
  tail call void @bitmap_obstack_free(ptr noundef %129) #19
  %130 = load ptr, ptr %86, align 8, !tbaa !113
  %131 = getelementptr inbounds %struct.vertex, ptr %130, i64 %127, i32 4
  store ptr null, ptr %131, align 8, !tbaa !114
  %132 = add nuw nsw i64 %127, 1
  %133 = load i32, ptr %59, align 8, !tbaa !111
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %132, %134
  br i1 %135, label %125, label %136, !llvm.loop !119

136:                                              ; preds = %125, %82
  tail call void @pointer_map_destroy(ptr noundef %36) #19
  %137 = sext i32 %58 to i64
  %138 = shl nsw i64 %137, 2
  %139 = tail call ptr @xmalloc(i64 noundef %138) #19
  %140 = tail call ptr @xmalloc(i64 noundef %138) #19
  %141 = tail call ptr @xmalloc(i64 noundef %138) #19
  tail call void @graphds_domtree(ptr noundef nonnull %59, i32 noundef %31, ptr noundef %141, ptr noundef %139, ptr noundef %140) #19
  br label %142

142:                                              ; preds = %142, %136
  %143 = phi i32 [ %31, %136 ], [ %146, %142 ]
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, ptr %139, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !13
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %142, !llvm.loop !120

148:                                              ; preds = %142
  %149 = icmp eq i32 %143, -1
  br i1 %149, label %168, label %150

150:                                              ; preds = %148, %165
  %151 = phi i32 [ %166, %165 ], [ %143, %148 ]
  tail call fastcc void @determine_dominators_for_sons(ptr noundef nonnull %59, ptr noundef %1, i32 noundef %151, ptr noundef %139, ptr noundef %140) #18
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, ptr %140, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !13
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %162, label %156

156:                                              ; preds = %150, %156
  %157 = phi i32 [ %160, %156 ], [ %154, %150 ]
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, ptr %139, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !13
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %165, label %156, !llvm.loop !121

162:                                              ; preds = %150
  %163 = getelementptr inbounds i32, ptr %141, i64 %152
  %164 = load i32, ptr %163, align 4, !tbaa !13
  br label %165

165:                                              ; preds = %156, %162
  %166 = phi i32 [ %164, %162 ], [ %157, %156 ]
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %150, !llvm.loop !122

168:                                              ; preds = %165, %148
  tail call void @free(ptr noundef %139) #18
  tail call void @free(ptr noundef %140) #18
  tail call void @free(ptr noundef %141) #18
  tail call void @free_graph(ptr noundef nonnull %59) #19
  br label %169

169:                                              ; preds = %30, %168, %32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !79
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !6
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prune_bbs_to_update_dominators(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %6 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #18, !range !108
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %70, label %8

8:                                                ; preds = %2
  %9 = icmp eq i8 %1, 0
  %10 = getelementptr inbounds i8, ptr %4, i64 8
  br label %11

11:                                               ; preds = %8, %63
  %12 = phi i32 [ 0, %8 ], [ %64, %63 ]
  br label %13

13:                                               ; preds = %11, %67
  %14 = load ptr, ptr %3, align 8, !tbaa !6
  %15 = load ptr, ptr @cfun, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  %19 = icmp eq ptr %14, %18
  br i1 %19, label %67, label %20

20:                                               ; preds = %13
  %21 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %14) #18, !range !15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call fastcc ptr @single_pred(ptr noundef %14) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %14, ptr noundef %24) #18
  br label %67

25:                                               ; preds = %20
  br i1 %9, label %63, label %26

26:                                               ; preds = %25
  %27 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %14) #18
  %28 = extractvalue { i32, ptr } %27, 1
  store i32 0, ptr %4, align 8, !tbaa.struct !66
  store ptr %28, ptr %10, align 8, !tbaa.struct !52
  %29 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %28, ptr noundef nonnull %5) #18, !range !15
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %26, %43
  %32 = phi i8 [ %45, %43 ], [ 1, %26 ]
  %33 = phi ptr [ %44, %43 ], [ null, %26 ]
  %34 = load ptr, ptr %5, align 8, !tbaa !6
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  %36 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %35, ptr noundef %14) #18
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = icmp eq ptr %33, null
  %40 = load ptr, ptr %34, align 8, !tbaa !62
  br i1 %39, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef nonnull %33, ptr noundef %40) #18
  br label %43

43:                                               ; preds = %38, %41, %31
  %44 = phi ptr [ %33, %31 ], [ %42, %41 ], [ %40, %38 ]
  %45 = phi i8 [ %32, %31 ], [ 0, %41 ], [ %32, %38 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %46 = load i32, ptr %4, align 8
  %47 = load ptr, ptr %10, align 8
  %48 = call fastcc zeroext i8 @ei_cond(i32 %46, ptr %47, ptr noundef nonnull %5) #18, !range !15
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %31, !llvm.loop !123

50:                                               ; preds = %43
  %51 = icmp eq ptr %44, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %26, %50
  %53 = phi i8 [ %45, %50 ], [ 1, %26 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1109, ptr noundef nonnull @.str.1) #19
  br label %54

54:                                               ; preds = %50, %52
  %55 = phi i8 [ %45, %50 ], [ %53, %52 ]
  %56 = phi ptr [ %44, %50 ], [ null, %52 ]
  %57 = icmp eq i8 %55, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = tail call ptr @find_edge(ptr noundef %56, ptr noundef %14) #19
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58, %54
  %62 = load ptr, ptr %3, align 8, !tbaa !6
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %62, ptr noundef %56) #18
  br label %67

63:                                               ; preds = %58, %25
  %64 = add i32 %12, 1
  %65 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %0, i32 noundef %64, ptr noundef nonnull %3) #18, !range !108
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %11, !llvm.loop !124

67:                                               ; preds = %13, %61, %23
  tail call fastcc void @VEC_basic_block_base_unordered_remove(ptr noundef %0, i32 noundef %12) #18
  %68 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %3) #18, !range !108
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %13, !llvm.loop !124

70:                                               ; preds = %63, %67, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @new_graph(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @root_of_dom_tree(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef 1) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 4, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = tail call ptr @et_root(ptr noundef %5) #19
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_edge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @graphds_domtree(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_dominators_for_sons(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %3, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !13
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %141, label %13

13:                                               ; preds = %5
  %14 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %1) #18
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load ptr, ptr @cfun, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  br label %23

21:                                               ; preds = %13
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef %2) #18
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %20, %16 ], [ %22, %21 ]
  %25 = sext i32 %11 to i64
  %26 = getelementptr inbounds i32, ptr %4, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !13
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef %11) #18
  %31 = tail call ptr @recompute_dominator(i32 noundef 1, ptr noundef %30) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %30, ptr noundef %31) #18
  %32 = load i32, ptr %10, align 4, !tbaa !13
  tail call void @identify_vertices(ptr noundef %0, i32 noundef %2, i32 noundef %32) #19
  br label %141

33:                                               ; preds = %23
  %34 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %35 = load i32, ptr %10, align 4, !tbaa !13
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %44, label %37

37:                                               ; preds = %33, %37
  %38 = phi i32 [ %42, %37 ], [ %35, %33 ]
  %39 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %38) #19
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, ptr %4, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !13
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %37, !llvm.loop !125

44:                                               ; preds = %37, %33
  %45 = tail call i32 @graphds_scc(ptr noundef %0, ptr noundef %34) #19
  tail call void @bitmap_obstack_free(ptr noundef %34) #19
  %46 = sext i32 %45 to i64
  %47 = tail call ptr @xcalloc(i64 noundef %46, i64 noundef 8) #19
  %48 = load i32, ptr %10, align 4, !tbaa !13
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %57

52:                                               ; preds = %57, %44
  store i32 -1, ptr %6, align 4, !tbaa !13
  %53 = icmp sgt i32 %45, 0
  br i1 %53, label %54, label %132

54:                                               ; preds = %52
  %55 = getelementptr inbounds i8, ptr %8, i64 8
  %56 = zext nneg i32 %45 to i64
  br label %70

57:                                               ; preds = %50, %57
  %58 = phi i32 [ %48, %50 ], [ %66, %57 ]
  %59 = load ptr, ptr %51, align 8, !tbaa !113
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds %struct.vertex, ptr %59, i64 %60, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !126
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %47, i64 %63
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef %64, i32 noundef %58) #18
  %65 = getelementptr inbounds i32, ptr %4, i64 %60
  %66 = load i32, ptr %65, align 4, !tbaa !13
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %52, label %57, !llvm.loop !127

68:                                               ; preds = %119, %114
  %69 = icmp sgt i64 %71, 1
  br i1 %69, label %70, label %77, !llvm.loop !128

70:                                               ; preds = %54, %68
  %71 = phi i64 [ %56, %54 ], [ %72, %68 ]
  %72 = add nsw i64 %71, -1
  %73 = getelementptr inbounds ptr, ptr %47, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %74, i32 noundef 0, ptr noundef nonnull %6) #18, !range !108
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %112, label %80

77:                                               ; preds = %68
  br i1 %53, label %78, label %132

78:                                               ; preds = %77
  %79 = zext nneg i32 %45 to i64
  br label %127

80:                                               ; preds = %70, %104
  %81 = phi i32 [ %106, %104 ], [ 0, %70 ]
  %82 = phi ptr [ %105, %104 ], [ null, %70 ]
  %83 = load i32, ptr %6, align 4, !tbaa !13
  %84 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef %83) #18
  %85 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %84) #18
  %86 = extractvalue { i32, ptr } %85, 1
  store i32 0, ptr %8, align 8, !tbaa.struct !66
  store ptr %86, ptr %55, align 8, !tbaa.struct !52
  %87 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %86, ptr noundef nonnull %7) #18, !range !15
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %80, %98
  %90 = phi ptr [ %99, %98 ], [ %82, %80 ]
  %91 = load ptr, ptr %7, align 8, !tbaa !6
  %92 = load ptr, ptr %91, align 8, !tbaa !62
  %93 = tail call fastcc ptr @root_of_dom_tree(ptr noundef %92) #18
  %94 = icmp eq ptr %93, %24
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load ptr, ptr %91, align 8, !tbaa !62
  %97 = tail call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %90, ptr noundef %96) #18
  br label %98

98:                                               ; preds = %89, %95
  %99 = phi ptr [ %90, %89 ], [ %97, %95 ]
  call fastcc void @ei_next(ptr noundef nonnull %8) #18
  %100 = load i32, ptr %8, align 8
  %101 = load ptr, ptr %55, align 8
  %102 = call fastcc zeroext i8 @ei_cond(i32 %100, ptr %101, ptr noundef nonnull %7) #18, !range !15
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %89, !llvm.loop !129

104:                                              ; preds = %98, %80
  %105 = phi ptr [ %82, %80 ], [ %99, %98 ]
  %106 = add i32 %81, 1
  %107 = load ptr, ptr %73, align 8, !tbaa !6
  %108 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %107, i32 noundef %106, ptr noundef nonnull %6) #18, !range !108
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %80, !llvm.loop !130

110:                                              ; preds = %104
  %111 = icmp eq ptr %105, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %70, %110
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1195, ptr noundef nonnull @.str.1) #19
  %113 = load ptr, ptr %73, align 8, !tbaa !6
  br label %114

114:                                              ; preds = %110, %112
  %115 = phi ptr [ %105, %110 ], [ null, %112 ]
  %116 = phi ptr [ %107, %110 ], [ %113, %112 ]
  %117 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %116, i32 noundef 0, ptr noundef nonnull %6) #18, !range !108
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %68, label %119

119:                                              ; preds = %114, %119
  %120 = phi i32 [ %123, %119 ], [ 0, %114 ]
  %121 = load i32, ptr %6, align 4, !tbaa !13
  %122 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef %121) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %122, ptr noundef %115) #18
  %123 = add i32 %120, 1
  %124 = load ptr, ptr %73, align 8, !tbaa !6
  %125 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %124, i32 noundef %123, ptr noundef nonnull %6) #18, !range !108
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %68, label %119, !llvm.loop !131

127:                                              ; preds = %78, %127
  %128 = phi i64 [ 0, %78 ], [ %130, %127 ]
  %129 = getelementptr inbounds ptr, ptr %47, i64 %128
  tail call fastcc void @VEC_int_heap_free(ptr noundef %129) #18
  %130 = add nuw nsw i64 %128, 1
  %131 = icmp eq i64 %130, %79
  br i1 %131, label %132, label %127, !llvm.loop !132

132:                                              ; preds = %127, %52, %77
  tail call void @free(ptr noundef %47) #18
  %133 = load i32, ptr %10, align 4, !tbaa !13
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %141, label %135

135:                                              ; preds = %132, %135
  %136 = phi i32 [ %139, %135 ], [ %133, %132 ]
  tail call void @identify_vertices(ptr noundef %0, i32 noundef %2, i32 noundef %136) #19
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, ptr %4, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !13
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %135, !llvm.loop !133

141:                                              ; preds = %135, %132, %5, %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  ret void
}

; Function Attrs: optsize
declare void @free_graph(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !134
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #18
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !79
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 8, !tbaa !79
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  store ptr %9, ptr %5, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #18, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !134
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #18
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @et_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @identify_vertices(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @graphds_scc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !135
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !13
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !13
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #19
  store ptr %6, ptr %0, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 4, !tbaa !135
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !135
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !137
  %6 = load i32, ptr %0, align 4, !tbaa !135
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_to_dominance_info(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 8, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1388, ptr noundef nonnull @.str.1) #19
  br label %12

12:                                               ; preds = %2, %11
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %7
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1389, ptr noundef nonnull @.str.1) #19
  br label %17

17:                                               ; preds = %12, %16
  %18 = load ptr, ptr @cfun, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 9, i64 %7
  %22 = load i32, ptr %21, align 4, !tbaa !13
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !13
  %24 = tail call ptr @et_new_tree(ptr noundef nonnull %1) #19
  store ptr %24, ptr %13, align 8, !tbaa !6
  %25 = load ptr, ptr @cfun, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !10
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 8, i64 %7
  %29 = load i32, ptr %28, align 4, !tbaa !13
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 1, ptr %28, align 4, !tbaa !13
  br label %32

32:                                               ; preds = %31, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_from_dominance_info(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 8, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1404, ptr noundef nonnull @.str.1) #19
  br label %12

12:                                               ; preds = %2, %11
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %7
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  tail call void @et_free_tree(ptr noundef %14) #19
  store ptr null, ptr %13, align 8, !tbaa !6
  %15 = load ptr, ptr @cfun, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 9, i64 %7
  %19 = load i32, ptr %18, align 4, !tbaa !13
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 4, !tbaa !13
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 8, i64 %7
  %22 = load i32, ptr %21, align 4, !tbaa !13
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  store i32 1, ptr %21, align 4, !tbaa !13
  br label %25

25:                                               ; preds = %24, %12
  ret void
}

; Function Attrs: optsize
declare void @et_free_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @dom_info_state(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %3 = load ptr, ptr @cfun, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 8, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !13
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_dom_info_availability(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 8, i64 %7
  store i32 %1, ptr %8, align 4, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_dominance_info(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %31, label %11

11:                                               ; preds = %1, %22
  %12 = phi ptr [ %24, %22 ], [ %7, %1 ]
  %13 = tail call ptr @get_immediate_dominator(i32 noundef %0, ptr noundef %12) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @stderr, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !29
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !29
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.5, i32 noundef %18, i32 noundef %20) #20
  br label %22

22:                                               ; preds = %11, %15
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !21
  %25 = load ptr, ptr @cfun, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !10
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !24
  %30 = icmp eq ptr %24, %29
  br i1 %30, label %31, label %11, !llvm.loop !138

31:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_dominance_tree(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call fastcc void @debug_dominance_tree_1(i32 noundef %0, ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @debug_dominance_tree_1(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = icmp ne i8 %3, 0
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %10 = load ptr, ptr @stderr, align 8, !tbaa !6
  %11 = tail call i32 @fputc(i32 9, ptr %10)
  %12 = add nuw i32 %9, 1
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %8, !llvm.loop !139

14:                                               ; preds = %8, %4
  %15 = load ptr, ptr @stderr, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !29
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.7, i32 noundef %17) #20
  %19 = tail call ptr @first_dom_son(i32 noundef %0, ptr noundef %1) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = add i32 %2, 1
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i8 [ 0, %21 ], [ 1, %23 ]
  %25 = phi ptr [ %19, %21 ], [ %26, %23 ]
  tail call fastcc void @debug_dominance_tree_1(i32 noundef %0, ptr noundef nonnull %25, i32 noundef %22, i8 noundef zeroext %24) #18
  %26 = tail call ptr @next_dom_son(i32 noundef %0, ptr noundef nonnull %25) #18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %23, !llvm.loop !140

28:                                               ; preds = %14
  %29 = load ptr, ptr @stderr, align 8, !tbaa !6
  %30 = tail call i32 @fputc(i32 10, ptr %29)
  br label %31

31:                                               ; preds = %23, %28
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize }
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
!10 = !{!11, !7, i64 8}
!11 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !7, i64 128, !12, i64 136, !12, i64 137, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139}
!12 = !{!"int", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{i8 0, i8 2}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!19, !12, i64 24}
!19 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !7, i64 40, !12, i64 48, !8, i64 52, !8, i64 60, !12, i64 68, !12, i64 72}
!20 = !{!19, !7, i64 0}
!21 = !{!22, !7, i64 56}
!22 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !23, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96}
!23 = !{!"long", !8, i64 0}
!24 = !{!19, !7, i64 8}
!25 = !{!26, !7, i64 40}
!26 = !{!"dom_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !12, i64 88, !12, i64 92, !7, i64 96}
!27 = !{!26, !7, i64 72}
!28 = !{!26, !7, i64 80}
!29 = !{!22, !12, i64 80}
!30 = distinct !{!30, !17}
!31 = !{!26, !7, i64 0}
!32 = !{!26, !7, i64 16}
!33 = distinct !{!33, !17, !34, !35}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!26, !7, i64 8}
!37 = distinct !{!37, !17, !34, !35}
!38 = !{!26, !7, i64 24}
!39 = !{!26, !7, i64 32}
!40 = !{!26, !7, i64 48}
!41 = !{!26, !7, i64 56}
!42 = distinct !{!42, !17, !34, !35}
!43 = !{!26, !7, i64 64}
!44 = !{!19, !12, i64 32}
!45 = !{!26, !12, i64 88}
!46 = !{!26, !12, i64 92}
!47 = !{!26, !7, i64 96}
!48 = !{!22, !7, i64 48}
!49 = !{!22, !7, i64 8}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = !{i64 0, i64 8, !6}
!53 = !{!54, !12, i64 0}
!54 = !{!"", !12, i64 0, !7, i64 8}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = !{!60, !7, i64 16}
!60 = !{!"et_node", !7, i64 0, !12, i64 8, !12, i64 12, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!61 = distinct !{!61, !17}
!62 = !{!63, !7, i64 0}
!63 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !23, i64 56}
!64 = distinct !{!64, !17}
!65 = !{!63, !7, i64 8}
!66 = !{i64 0, i64 4, !13, i64 8, i64 8, !6}
!67 = !{!68, !12, i64 0}
!68 = !{!"VEC_edge_base", !12, i64 0, !12, i64 4, !8, i64 8}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17}
!71 = !{!60, !12, i64 8}
!72 = !{!60, !7, i64 24}
!73 = !{!60, !7, i64 40}
!74 = distinct !{!74, !17}
!75 = !{!60, !12, i64 12}
!76 = distinct !{!76, !17}
!77 = !{!60, !7, i64 0}
!78 = distinct !{!78, !17}
!79 = !{!80, !12, i64 0}
!80 = !{!"VEC_basic_block_base", !12, i64 0, !12, i64 4, !8, i64 8}
!81 = !{!80, !12, i64 4}
!82 = !{!22, !12, i64 96}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !17}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !17}
!90 = !{!19, !7, i64 16}
!91 = distinct !{!91, !17}
!92 = !{!93, !7, i64 0}
!93 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !12, i64 16, !7, i64 24}
!94 = !{!95, !7, i64 0}
!95 = !{!"", !7, i64 0, !7, i64 8, !12, i64 16, !23, i64 24}
!96 = !{!95, !7, i64 8}
!97 = !{!98, !12, i64 16}
!98 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !12, i64 16, !8, i64 24}
!99 = !{!95, !12, i64 16}
!100 = !{!23, !23, i64 0}
!101 = !{!95, !23, i64 24}
!102 = distinct !{!102, !17}
!103 = distinct !{!103, !17}
!104 = !{!98, !7, i64 0}
!105 = distinct !{!105, !17}
!106 = distinct !{!106, !17}
!107 = distinct !{!107, !17}
!108 = !{i32 0, i32 2}
!109 = distinct !{!109, !17}
!110 = distinct !{!110, !17}
!111 = !{!112, !12, i64 0}
!112 = !{!"graph", !12, i64 0, !7, i64 8, !7, i64 16}
!113 = !{!112, !7, i64 8}
!114 = !{!115, !7, i64 24}
!115 = !{!"vertex", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20, !7, i64 24}
!116 = distinct !{!116, !17}
!117 = distinct !{!117, !17}
!118 = distinct !{!118, !17}
!119 = distinct !{!119, !17}
!120 = distinct !{!120, !17}
!121 = distinct !{!121, !17}
!122 = distinct !{!122, !17}
!123 = distinct !{!123, !17}
!124 = distinct !{!124, !17}
!125 = distinct !{!125, !17}
!126 = !{!115, !12, i64 16}
!127 = distinct !{!127, !17}
!128 = distinct !{!128, !17}
!129 = distinct !{!129, !17}
!130 = distinct !{!130, !17}
!131 = distinct !{!131, !17}
!132 = distinct !{!132, !17}
!133 = distinct !{!133, !17}
!134 = !{!22, !7, i64 0}
!135 = !{!136, !12, i64 0}
!136 = !{!"VEC_int_base", !12, i64 0, !12, i64 4, !8, i64 8}
!137 = !{!136, !12, i64 4}
!138 = distinct !{!138, !17}
!139 = distinct !{!139, !17}
!140 = distinct !{!140, !17}
