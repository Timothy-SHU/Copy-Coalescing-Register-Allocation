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
define dso_local void @calculate_dominance_info(i32 noundef %0) local_unnamed_addr #0 !prof !224 {
  %2 = alloca %struct.dom_info, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #17
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = icmp eq i32 %0, 2
  %5 = zext i1 %4 to i8
  %6 = load ptr, ptr @cfun, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !229
  %9 = zext i32 %3 to i64
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !232
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %106, label %13, !prof !233

13:                                               ; preds = %1
  %14 = load i8, ptr @timevar_enable, align 1, !tbaa !234
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16, !prof !235

16:                                               ; preds = %13
  tail call void @timevar_push_1(i32 noundef 112) #19
  br label %17

17:                                               ; preds = %16, %13
  %18 = tail call zeroext i8 @dom_info_available_p(i32 noundef %0) #18, !range !236
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %102, !prof !237

20:                                               ; preds = %17
  %21 = load ptr, ptr @cfun, align 8, !tbaa !225
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !229
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 9, i64 %9
  %25 = load i32, ptr %24, align 4, !tbaa !232
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !238

27:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 646, ptr noundef nonnull @.str.1) #19
  %28 = load ptr, ptr @cfun, align 8, !tbaa !225
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !229
  br label %31

31:                                               ; preds = %20, %27
  %32 = phi ptr [ %23, %20 ], [ %30, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !225
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35, !prof !239

35:                                               ; preds = %31, %35
  %36 = phi ptr [ %40, %35 ], [ %33, %31 ]
  %37 = tail call ptr @et_new_tree(ptr noundef nonnull %36) #19
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 4, i64 %9
  store ptr %37, ptr %38, align 8, !tbaa !225
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !225
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %35, !prof !240, !llvm.loop !241

42:                                               ; preds = %35
  %43 = load ptr, ptr @cfun, align 8, !tbaa !225
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !229
  br label %46

46:                                               ; preds = %42, %31
  %47 = phi ptr [ %45, %42 ], [ %32, %31 ]
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !243
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 9, i64 %9
  store i32 %49, ptr %50, align 4, !tbaa !232
  call fastcc void @init_dom_info(ptr noundef nonnull %2, i32 noundef %0) #18
  call fastcc void @calc_dfs_tree(ptr noundef nonnull %2, i8 noundef zeroext %5) #18
  call fastcc void @calc_idoms(ptr noundef nonnull %2, i8 noundef zeroext %5) #18
  %51 = load ptr, ptr @cfun, align 8, !tbaa !225
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !229
  %54 = load ptr, ptr %53, align 8, !tbaa !245
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !246
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %53, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !249
  %59 = icmp eq ptr %56, %58
  br i1 %59, label %97, label %60, !prof !239

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.dom_info, ptr %2, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !250
  %63 = getelementptr inbounds %struct.dom_info, ptr %2, i64 0, i32 9
  %64 = load ptr, ptr %63, align 8, !tbaa !252
  %65 = getelementptr inbounds %struct.dom_info, ptr %2, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !253
  br label %67

67:                                               ; preds = %60, %88
  %68 = phi ptr [ %51, %60 ], [ %89, %88 ]
  %69 = phi ptr [ %56, %60 ], [ %91, %88 ]
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !254
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %64, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !232
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %62, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !232
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %66, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !225
  %81 = icmp eq ptr %80, null
  br i1 %81, label %88, label %82, !prof !255

82:                                               ; preds = %67
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 4, i64 %9
  %84 = load ptr, ptr %83, align 8, !tbaa !225
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 4, i64 %9
  %86 = load ptr, ptr %85, align 8, !tbaa !225
  tail call void @et_set_father(ptr noundef %84, ptr noundef %86) #19
  %87 = load ptr, ptr @cfun, align 8, !tbaa !225
  br label %88

88:                                               ; preds = %82, %67
  %89 = phi ptr [ %87, %82 ], [ %68, %67 ]
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !246
  %92 = getelementptr inbounds %struct.function, ptr %89, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !229
  %94 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !249
  %96 = icmp eq ptr %91, %95
  br i1 %96, label %97, label %67, !prof !256, !llvm.loop !257

97:                                               ; preds = %88, %46
  call fastcc void @free_dom_info(ptr noundef nonnull %2) #18
  %98 = load ptr, ptr @cfun, align 8, !tbaa !225
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !229
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 8, i64 %9
  store i32 1, ptr %101, align 4, !tbaa !232
  br label %102

102:                                              ; preds = %97, %17
  tail call fastcc void @compute_dom_fast_query(i32 noundef %0) #18
  %103 = load i8, ptr @timevar_enable, align 1, !tbaa !234
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %106, label %105, !prof !235

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
define internal fastcc noundef i32 @dom_convert_dir_to_idx(i32 noundef %0) unnamed_addr #0 !prof !258 !PGOFuncName !259 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %5, label %4, !prof !260

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %1, %4
  ret i32 %2
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @dom_info_available_p(i32 noundef %0) local_unnamed_addr #0 !prof !261 {
  %2 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %3 = load ptr, ptr @cfun, align 8, !tbaa !225
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !229
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 8, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !232
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @et_new_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_dom_info(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #0 !prof !262 !PGOFuncName !263 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !225
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !229
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !243
  %8 = zext i32 %7 to i64
  %9 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  store ptr %9, ptr %0, align 8, !tbaa !264
  %10 = shl nuw nsw i64 %8, 2
  %11 = tail call ptr @xmalloc(i64 noundef %10) #19
  %12 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !265
  %13 = icmp eq i32 %7, 0
  br i1 %13, label %50, label %14, !prof !239

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
  store i32 %23, ptr %27, align 4, !tbaa !232
  br label %28

28:                                               ; preds = %26, %20
  %29 = extractelement <4 x i1> %24, i64 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = or disjoint i64 %21, 1
  %32 = getelementptr inbounds i32, ptr %11, i64 %31
  %33 = or disjoint i32 %23, 1
  store i32 %33, ptr %32, align 4, !tbaa !232
  br label %34

34:                                               ; preds = %30, %28
  %35 = extractelement <4 x i1> %24, i64 2
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = or disjoint i64 %21, 2
  %38 = getelementptr inbounds i32, ptr %11, i64 %37
  %39 = or disjoint i32 %23, 2
  store i32 %39, ptr %38, align 4, !tbaa !232
  br label %40

40:                                               ; preds = %36, %34
  %41 = extractelement <4 x i1> %24, i64 3
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = or disjoint i64 %21, 3
  %44 = getelementptr inbounds i32, ptr %11, i64 %43
  %45 = or disjoint i32 %23, 3
  store i32 %45, ptr %44, align 4, !tbaa !232
  br label %46

46:                                               ; preds = %42, %40
  %47 = add i64 %21, 4
  %48 = add <4 x i64> %22, <i64 4, i64 4, i64 4, i64 4>
  %49 = icmp eq i64 %47, %16
  br i1 %49, label %53, label %20, !prof !266, !llvm.loop !267

50:                                               ; preds = %2
  %51 = tail call ptr @xmalloc(i64 noundef %10) #19
  %52 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !270
  br label %92

53:                                               ; preds = %46
  %54 = tail call ptr @xmalloc(i64 noundef %10) #19
  %55 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !270
  br i1 %13, label %92, label %56, !prof !271

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
  store i32 %65, ptr %69, align 4, !tbaa !232
  br label %70

70:                                               ; preds = %68, %62
  %71 = extractelement <4 x i1> %66, i64 1
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = or disjoint i64 %63, 1
  %74 = getelementptr inbounds i32, ptr %54, i64 %73
  %75 = or disjoint i32 %65, 1
  store i32 %75, ptr %74, align 4, !tbaa !232
  br label %76

76:                                               ; preds = %72, %70
  %77 = extractelement <4 x i1> %66, i64 2
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = or disjoint i64 %63, 2
  %80 = getelementptr inbounds i32, ptr %54, i64 %79
  %81 = or disjoint i32 %65, 2
  store i32 %81, ptr %80, align 4, !tbaa !232
  br label %82

82:                                               ; preds = %78, %76
  %83 = extractelement <4 x i1> %66, i64 3
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  %85 = or disjoint i64 %63, 3
  %86 = getelementptr inbounds i32, ptr %54, i64 %85
  %87 = or disjoint i32 %65, 3
  store i32 %87, ptr %86, align 4, !tbaa !232
  br label %88

88:                                               ; preds = %84, %82
  %89 = add i64 %63, 4
  %90 = add <4 x i64> %64, <i64 4, i64 4, i64 4, i64 4>
  %91 = icmp eq i64 %89, %58
  br i1 %91, label %92, label %62, !prof !266, !llvm.loop !272

92:                                               ; preds = %88, %50, %53
  %93 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  %94 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  store ptr %93, ptr %94, align 8, !tbaa !250
  %95 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  %96 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 3
  store ptr %95, ptr %96, align 8, !tbaa !273
  %97 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  %98 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 4
  store ptr %97, ptr %98, align 8, !tbaa !274
  %99 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  %100 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  store ptr %99, ptr %100, align 8, !tbaa !275
  %101 = tail call ptr @xmalloc(i64 noundef %10) #19
  %102 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 7
  store ptr %101, ptr %102, align 8, !tbaa !276
  br i1 %13, label %135, label %103, !prof !239

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
  store i32 1, ptr %115, align 4, !tbaa !232
  br label %116

116:                                              ; preds = %114, %109
  %117 = extractelement <4 x i1> %112, i64 1
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = or disjoint i64 %110, 1
  %120 = getelementptr inbounds i32, ptr %101, i64 %119
  store i32 1, ptr %120, align 4, !tbaa !232
  br label %121

121:                                              ; preds = %118, %116
  %122 = extractelement <4 x i1> %112, i64 2
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = or disjoint i64 %110, 2
  %125 = getelementptr inbounds i32, ptr %101, i64 %124
  store i32 1, ptr %125, align 4, !tbaa !232
  br label %126

126:                                              ; preds = %123, %121
  %127 = extractelement <4 x i1> %112, i64 3
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = or disjoint i64 %110, 3
  %130 = getelementptr inbounds i32, ptr %101, i64 %129
  store i32 1, ptr %130, align 4, !tbaa !232
  br label %131

131:                                              ; preds = %128, %126
  %132 = add i64 %110, 4
  %133 = add <4 x i64> %111, <i64 4, i64 4, i64 4, i64 4>
  %134 = icmp eq i64 %132, %105
  br i1 %134, label %135, label %109, !prof !266, !llvm.loop !277

135:                                              ; preds = %131, %92
  %136 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  %137 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 8
  store ptr %136, ptr %137, align 8, !tbaa !278
  %138 = load ptr, ptr @cfun, align 8, !tbaa !225
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !229
  %141 = getelementptr inbounds %struct.control_flow_graph, ptr %140, i64 0, i32 5
  %142 = load i32, ptr %141, align 8, !tbaa !279
  %143 = add i32 %142, 1
  %144 = zext i32 %143 to i64
  %145 = tail call ptr @xcalloc(i64 noundef %144, i64 noundef 4) #19
  %146 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  store ptr %145, ptr %146, align 8, !tbaa !252
  %147 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 8) #19
  %148 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  store ptr %147, ptr %148, align 8, !tbaa !253
  %149 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 11
  store i32 1, ptr %149, align 8, !tbaa !280
  %150 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 12
  store i32 0, ptr %150, align 4, !tbaa !281
  switch i32 %1, label %156 [
    i32 1, label %151
    i32 2, label %153
  ], !prof !282

151:                                              ; preds = %135
  %152 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  store ptr null, ptr %152, align 8, !tbaa !283
  br label %157

153:                                              ; preds = %135
  %154 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %155 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  store ptr %154, ptr %155, align 8, !tbaa !283
  br label %157

156:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 178, ptr noundef nonnull @.str.1) #19
  br label %157

157:                                              ; preds = %156, %153, %151
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_dfs_tree(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !262 !PGOFuncName !284 {
  %3 = icmp eq i8 %1, 0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !225
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !229
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = select i1 %3, ptr %6, ptr %7, !prof !285
  %9 = load ptr, ptr %8, align 8, !tbaa !225
  %10 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !280
  %12 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !252
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !279
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %13, i64 %16
  store i32 %11, ptr %17, align 4, !tbaa !232
  %18 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !253
  %20 = zext i32 %11 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  store ptr %9, ptr %21, align 8, !tbaa !225
  %22 = add i32 %11, 1
  store i32 %22, ptr %10, align 8, !tbaa !280
  tail call fastcc void @calc_dfs_tree_nonrec(ptr noundef %0, ptr noundef %9, i8 noundef zeroext %1) #18
  %23 = load ptr, ptr @cfun, align 8, !tbaa !225
  br i1 %3, label %149, label %24, !prof !285

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !229
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !249
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !286
  %31 = load ptr, ptr %26, align 8, !tbaa !245
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %149, label %33, !prof !287

33:                                               ; preds = %24, %79
  %34 = phi ptr [ %80, %79 ], [ %23, %24 ]
  %35 = phi ptr [ %82, %79 ], [ %30, %24 ]
  %36 = phi i8 [ %39, %79 ], [ 0, %24 ]
  br label %37

37:                                               ; preds = %33, %87
  %38 = phi ptr [ %90, %87 ], [ %35, %33 ]
  %39 = phi i8 [ 1, %87 ], [ %36, %33 ]
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !288
  %42 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %41) #18
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !254
  br i1 %43, label %52, label %46, !prof !289

46:                                               ; preds = %37
  %47 = load ptr, ptr %12, align 8, !tbaa !252
  %48 = sext i32 %45 to i64
  %49 = getelementptr inbounds i32, ptr %47, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !232
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %87, label %79, !prof !290

52:                                               ; preds = %37
  %53 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %55 = load ptr, ptr %53, align 8, !tbaa !283
  %56 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %55, i32 noundef %45) #19
  %57 = load i32, ptr %10, align 8, !tbaa !280
  %58 = load ptr, ptr %12, align 8, !tbaa !252
  %59 = load i32, ptr %54, align 8, !tbaa !254
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %58, i64 %60
  store i32 %57, ptr %61, align 4, !tbaa !232
  %62 = load ptr, ptr %18, align 8, !tbaa !253
  %63 = zext i32 %57 to i64
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  store ptr %38, ptr %64, align 8, !tbaa !225
  %65 = load ptr, ptr %12, align 8, !tbaa !252
  %66 = load ptr, ptr @cfun, align 8, !tbaa !225
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !229
  %69 = getelementptr inbounds %struct.control_flow_graph, ptr %68, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !279
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %65, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !232
  %74 = load ptr, ptr %0, align 8, !tbaa !264
  %75 = getelementptr inbounds i32, ptr %74, i64 %63
  store i32 %73, ptr %75, align 4, !tbaa !232
  %76 = load i32, ptr %10, align 8, !tbaa !280
  %77 = add i32 %76, 1
  store i32 %77, ptr %10, align 8, !tbaa !280
  tail call fastcc void @calc_dfs_tree_nonrec(ptr noundef nonnull %0, ptr noundef nonnull %38, i8 noundef zeroext 1) #18
  %78 = load ptr, ptr @cfun, align 8, !tbaa !225
  br label %79

79:                                               ; preds = %46, %52
  %80 = phi ptr [ %78, %52 ], [ %34, %46 ]
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !286
  %83 = getelementptr inbounds %struct.function, ptr %80, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !229
  %85 = load ptr, ptr %84, align 8, !tbaa !245
  %86 = icmp eq ptr %82, %85
  br i1 %86, label %94, label %33, !prof !291, !llvm.loop !292

87:                                               ; preds = %46
  %88 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !286
  %91 = load ptr, ptr %88, align 8, !tbaa !229
  %92 = load ptr, ptr %91, align 8, !tbaa !245
  %93 = icmp eq ptr %90, %92
  br i1 %93, label %96, label %37, !prof !291, !llvm.loop !292

94:                                               ; preds = %79
  %95 = icmp eq i8 %39, 0
  br i1 %95, label %149, label %96, !prof !293

96:                                               ; preds = %87, %94
  %97 = phi ptr [ %80, %94 ], [ %34, %87 ]
  %98 = phi ptr [ %82, %94 ], [ %90, %87 ]
  %99 = phi ptr [ %84, %94 ], [ %91, %87 ]
  %100 = getelementptr inbounds %struct.control_flow_graph, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !249
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %101, i64 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !286
  %104 = icmp eq ptr %103, %98
  br i1 %104, label %149, label %105, !prof !294

105:                                              ; preds = %96, %141
  %106 = phi ptr [ %142, %141 ], [ %97, %96 ]
  %107 = phi ptr [ %144, %141 ], [ %103, %96 ]
  %108 = load ptr, ptr %12, align 8, !tbaa !252
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 9
  %110 = load i32, ptr %109, align 8, !tbaa !254
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %108, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !232
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %141, !prof !295

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  %117 = load ptr, ptr %116, align 8, !tbaa !283
  %118 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %117, i32 noundef %110) #19
  %119 = load i32, ptr %10, align 8, !tbaa !280
  %120 = load ptr, ptr %12, align 8, !tbaa !252
  %121 = load i32, ptr %109, align 8, !tbaa !254
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, ptr %120, i64 %122
  store i32 %119, ptr %123, align 4, !tbaa !232
  %124 = load ptr, ptr %18, align 8, !tbaa !253
  %125 = zext i32 %119 to i64
  %126 = getelementptr inbounds ptr, ptr %124, i64 %125
  store ptr %107, ptr %126, align 8, !tbaa !225
  %127 = load ptr, ptr %12, align 8, !tbaa !252
  %128 = load ptr, ptr @cfun, align 8, !tbaa !225
  %129 = getelementptr inbounds %struct.function, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !229
  %131 = getelementptr inbounds %struct.control_flow_graph, ptr %130, i64 0, i32 5
  %132 = load i32, ptr %131, align 8, !tbaa !279
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, ptr %127, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !232
  %136 = load ptr, ptr %0, align 8, !tbaa !264
  %137 = getelementptr inbounds i32, ptr %136, i64 %125
  store i32 %135, ptr %137, align 4, !tbaa !232
  %138 = load i32, ptr %10, align 8, !tbaa !280
  %139 = add i32 %138, 1
  store i32 %139, ptr %10, align 8, !tbaa !280
  tail call fastcc void @calc_dfs_tree_nonrec(ptr noundef nonnull %0, ptr noundef nonnull %107, i8 noundef zeroext 1) #18
  %140 = load ptr, ptr @cfun, align 8, !tbaa !225
  br label %141

141:                                              ; preds = %105, %115
  %142 = phi ptr [ %106, %105 ], [ %140, %115 ]
  %143 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 5
  %144 = load ptr, ptr %143, align 8, !tbaa !286
  %145 = getelementptr inbounds %struct.function, ptr %142, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !229
  %147 = load ptr, ptr %146, align 8, !tbaa !245
  %148 = icmp eq ptr %144, %147
  br i1 %148, label %149, label %105, !prof !296, !llvm.loop !297

149:                                              ; preds = %141, %24, %96, %94, %2
  %150 = phi ptr [ %97, %96 ], [ %80, %94 ], [ %23, %2 ], [ %23, %24 ], [ %142, %141 ]
  %151 = load i32, ptr %10, align 8, !tbaa !280
  %152 = add i32 %151, -1
  %153 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 12
  store i32 %152, ptr %153, align 4, !tbaa !281
  %154 = getelementptr inbounds %struct.function, ptr %150, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !229
  %156 = getelementptr inbounds %struct.control_flow_graph, ptr %155, i64 0, i32 3
  %157 = load i32, ptr %156, align 8, !tbaa !243
  %158 = icmp eq i32 %151, %157
  br i1 %158, label %160, label %159, !prof !238

159:                                              ; preds = %149
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 394, ptr noundef nonnull @.str.1) #19
  br label %160

160:                                              ; preds = %149, %159
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_idoms(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !262 !PGOFuncName !298 {
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %4 = icmp eq i8 %1, 0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !225
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !229
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = select i1 %4, ptr %7, ptr %8, !prof !285
  %10 = load ptr, ptr %9, align 8, !tbaa !225
  %11 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 12
  %12 = load i32, ptr %11, align 4, !tbaa !281
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %127, !prof !299

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  %16 = getelementptr inbounds i8, ptr %3, i64 8
  %17 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 3
  %19 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 4
  %20 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %22 = zext i32 %12 to i64
  br label %23

23:                                               ; preds = %14, %121
  %24 = phi i64 [ %22, %14 ], [ %124, %121 ]
  %25 = load ptr, ptr %15, align 8, !tbaa !253
  %26 = getelementptr inbounds ptr, ptr %25, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !225
  %28 = load ptr, ptr %0, align 8, !tbaa !264
  %29 = getelementptr inbounds i32, ptr %28, i64 %24
  %30 = load i32, ptr %29, align 4, !tbaa !232
  %31 = trunc i64 %24 to i32
  br i1 %4, label %32, label %35, !prof !300

32:                                               ; preds = %23
  %33 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %27) #18
  %34 = extractvalue { i32, ptr } %33, 1
  br label %46

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 1
  %38 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef nonnull %37) #18
  %39 = extractvalue { i32, ptr } %38, 1
  %40 = load ptr, ptr %36, align 8, !tbaa !283
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !254
  %43 = tail call i32 @bitmap_bit_p(ptr noundef %40, i32 noundef %42) #19
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45, !prof !301

45:                                               ; preds = %35
  store ptr %39, ptr %16, align 8, !tbaa.struct !302
  store i32 0, ptr %3, align 8, !tbaa !303
  br label %59

46:                                               ; preds = %32, %35, %83
  %47 = phi ptr [ %87, %83 ], [ %39, %35 ], [ %34, %32 ]
  %48 = phi i32 [ %85, %83 ], [ %31, %35 ], [ %31, %32 ]
  %49 = phi <2 x i32> [ %86, %83 ], [ <i32 0, i32 undef>, %35 ], [ <i32 0, i32 undef>, %32 ]
  %50 = extractelement <2 x i32> %49, i64 0
  %51 = tail call fastcc zeroext i8 @ei_end_p(i32 %50, ptr %47) #18, !range !236
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %88, !prof !305

53:                                               ; preds = %46
  %54 = tail call fastcc ptr @ei_edge(i32 %50, ptr %47) #18
  %55 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  %56 = select i1 %4, ptr %54, ptr %55, !prof !306
  %57 = load ptr, ptr %56, align 8, !tbaa !225
  store <2 x i32> %49, ptr %3, align 8
  store ptr %47, ptr %16, align 8, !tbaa.struct !302
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %58 = icmp eq ptr %57, %10
  br i1 %58, label %59, label %65, !prof !307

59:                                               ; preds = %53, %45
  %60 = phi i32 [ %31, %45 ], [ %48, %53 ]
  %61 = load ptr, ptr @cfun, align 8, !tbaa !225
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !229
  %64 = getelementptr inbounds %struct.control_flow_graph, ptr %63, i64 0, i32 5
  br label %67

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 9
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi ptr [ %66, %65 ], [ %64, %59 ]
  %69 = phi i32 [ %48, %65 ], [ %60, %59 ]
  %70 = load ptr, ptr %21, align 8, !tbaa !252
  %71 = load i32, ptr %68, align 8, !tbaa !232
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %70, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !232
  %75 = zext i32 %74 to i64
  %76 = icmp ult i64 %24, %75
  br i1 %76, label %77, label %83, !prof !308

77:                                               ; preds = %67
  %78 = load ptr, ptr %17, align 8, !tbaa !270
  %79 = tail call fastcc i32 @eval(ptr noundef nonnull %0, i32 noundef %74) #18
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %78, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !232
  br label %83

83:                                               ; preds = %77, %67
  %84 = phi i32 [ %82, %77 ], [ %74, %67 ]
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 %69)
  %86 = load <2 x i32>, ptr %3, align 8
  %87 = load ptr, ptr %16, align 8, !tbaa.struct !302
  br label %46, !llvm.loop !309

88:                                               ; preds = %46
  %89 = load ptr, ptr %17, align 8, !tbaa !270
  %90 = getelementptr inbounds i32, ptr %89, i64 %24
  store i32 %48, ptr %90, align 4, !tbaa !232
  tail call fastcc void @link_roots(ptr noundef nonnull %0, i32 noundef %30, i32 noundef %31) #18
  %91 = load ptr, ptr %18, align 8, !tbaa !273
  %92 = zext i32 %48 to i64
  %93 = getelementptr inbounds i32, ptr %91, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !232
  %95 = load ptr, ptr %19, align 8, !tbaa !274
  %96 = getelementptr inbounds i32, ptr %95, i64 %24
  store i32 %94, ptr %96, align 4, !tbaa !232
  store i32 %31, ptr %93, align 4, !tbaa !232
  %97 = zext i32 %30 to i64
  %98 = getelementptr inbounds i32, ptr %91, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !232
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %121, label %101, !prof !310

101:                                              ; preds = %88, %101
  %102 = phi i32 [ %117, %101 ], [ %99, %88 ]
  %103 = tail call fastcc i32 @eval(ptr noundef nonnull %0, i32 noundef %102) #18
  %104 = load ptr, ptr %17, align 8, !tbaa !270
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds i32, ptr %104, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !232
  %108 = zext i32 %102 to i64
  %109 = getelementptr inbounds i32, ptr %104, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !232
  %111 = icmp ult i32 %107, %110
  %112 = load ptr, ptr %20, align 8, !tbaa !250
  %113 = getelementptr inbounds i32, ptr %112, i64 %108
  %114 = select i1 %111, i32 %103, i32 %30, !prof !311
  store i32 %114, ptr %113, align 4, !tbaa !232
  %115 = load ptr, ptr %19, align 8, !tbaa !274
  %116 = getelementptr inbounds i32, ptr %115, i64 %108
  %117 = load i32, ptr %116, align 4, !tbaa !232
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %101, !prof !312, !llvm.loop !313

119:                                              ; preds = %101
  %120 = load ptr, ptr %18, align 8, !tbaa !273
  br label %121

121:                                              ; preds = %119, %88
  %122 = phi ptr [ %120, %119 ], [ %91, %88 ]
  %123 = getelementptr inbounds i32, ptr %122, i64 %97
  store i32 0, ptr %123, align 4, !tbaa !232
  %124 = add nsw i64 %24, -1
  %125 = and i64 %124, 4294967294
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %23, !prof !256, !llvm.loop !314

127:                                              ; preds = %121, %2
  %128 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !250
  %130 = getelementptr inbounds i32, ptr %129, i64 1
  store i32 0, ptr %130, align 4, !tbaa !232
  %131 = load i32, ptr %11, align 4, !tbaa !281
  %132 = icmp ult i32 %131, 2
  br i1 %132, label %154, label %133, !prof !239

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !270
  br label %136

136:                                              ; preds = %133, %150
  %137 = phi i32 [ %131, %133 ], [ %151, %150 ]
  %138 = phi i32 [ 2, %133 ], [ %152, %150 ]
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, ptr %129, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !232
  %142 = getelementptr inbounds i32, ptr %135, i64 %139
  %143 = load i32, ptr %142, align 4, !tbaa !232
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %150, label %145, !prof !315

145:                                              ; preds = %136
  %146 = zext i32 %141 to i64
  %147 = getelementptr inbounds i32, ptr %129, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !232
  store i32 %148, ptr %140, align 4, !tbaa !232
  %149 = load i32, ptr %11, align 4, !tbaa !281
  br label %150

150:                                              ; preds = %136, %145
  %151 = phi i32 [ %137, %136 ], [ %149, %145 ]
  %152 = add i32 %138, 1
  %153 = icmp ugt i32 %152, %151
  br i1 %153, label %154, label %136, !prof !256, !llvm.loop !316

154:                                              ; preds = %150, %127
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare void @et_set_father(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_dom_info(ptr nocapture noundef %0) unnamed_addr #0 !prof !262 !PGOFuncName !317 {
  %2 = load ptr, ptr %0, align 8, !tbaa !264
  tail call void @free(ptr noundef %2) #18
  %3 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !265
  tail call void @free(ptr noundef %4) #18
  %5 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !270
  tail call void @free(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !250
  tail call void @free(ptr noundef %8) #18
  %9 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !273
  tail call void @free(ptr noundef %10) #18
  %11 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !274
  tail call void @free(ptr noundef %12) #18
  %13 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !275
  tail call void @free(ptr noundef %14) #18
  %15 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !276
  tail call void @free(ptr noundef %16) #18
  %17 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !278
  tail call void @free(ptr noundef %18) #18
  %19 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !252
  tail call void @free(ptr noundef %20) #18
  %21 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !253
  tail call void @free(ptr noundef %22) #18
  %23 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !283
  tail call void @bitmap_obstack_free(ptr noundef %24) #19
  store ptr null, ptr %23, align 8, !tbaa !283
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_dom_fast_query(i32 noundef %0) unnamed_addr #0 !prof !318 !PGOFuncName !319 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !tbaa !232
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = tail call zeroext i8 @dom_info_available_p(i32 noundef %0) #18, !range !236
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !320

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 615, ptr noundef nonnull @.str.1) #19
  br label %7

7:                                                ; preds = %1, %6
  %8 = load ptr, ptr @cfun, align 8, !tbaa !225
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !229
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 8, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !232
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %37, label %15, !prof !320

15:                                               ; preds = %7
  %16 = load ptr, ptr %10, align 8, !tbaa !225
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18, !prof !321

18:                                               ; preds = %15, %26
  %19 = phi ptr [ %28, %26 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 4, i64 %11
  %21 = load ptr, ptr %20, align 8, !tbaa !225
  %22 = getelementptr inbounds %struct.et_node, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !322
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !324

25:                                               ; preds = %18
  call fastcc void @assign_dfs_numbers(ptr noundef nonnull %21, ptr noundef nonnull %2) #18
  br label %26

26:                                               ; preds = %18, %25
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !225
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !prof !325, !llvm.loop !326

30:                                               ; preds = %26
  %31 = load ptr, ptr @cfun, align 8, !tbaa !225
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !229
  br label %34

34:                                               ; preds = %30, %15
  %35 = phi ptr [ %33, %30 ], [ %10, %15 ]
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 8, i64 %11
  store i32 2, ptr %36, align 4, !tbaa !232
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
define internal fastcc void @calc_dfs_tree_nonrec(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !327 !PGOFuncName !328 {
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = load ptr, ptr @cfun, align 8, !tbaa !225
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !229
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !243
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 4
  %13 = tail call ptr @xmalloc(i64 noundef %12) #19
  %14 = icmp eq i8 %2, 0
  br i1 %14, label %21, label %15, !prof !329

15:                                               ; preds = %3
  %16 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %1) #18
  %17 = load ptr, ptr @cfun, align 8, !tbaa !225
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !229
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  br label %28

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %23 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef nonnull %22) #18
  %24 = load ptr, ptr @cfun, align 8, !tbaa !225
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !229
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
  %34 = load ptr, ptr %31, align 8, !tbaa !225
  %35 = load ptr, ptr %30, align 8, !tbaa !225
  %36 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %37 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 11
  %38 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  br label %39

39:                                               ; preds = %134, %28
  %40 = phi ptr [ %32, %28 ], [ %139, %134 ]
  %41 = phi i32 [ 0, %28 ], [ %138, %134 ]
  %42 = phi i32 [ 0, %28 ], [ %135, %134 ]
  %43 = tail call fastcc zeroext i8 @ei_end_p(i32 %41, ptr %40) #18, !range !236
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %131, !prof !330

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
  br i1 %14, label %73, label %55, !prof !331

55:                                               ; preds = %51
  %56 = load ptr, ptr %54, align 8, !tbaa !332
  %57 = icmp eq ptr %56, %35
  br i1 %57, label %66, label %58, !prof !334

58:                                               ; preds = %55
  %59 = load ptr, ptr %36, align 8, !tbaa !252
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !254
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %59, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !232
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66, !prof !335

66:                                               ; preds = %55, %58, %73, %77
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %67 = load i32, ptr %4, align 8
  %68 = load ptr, ptr %33, align 8
  %69 = tail call fastcc zeroext i8 @ei_end_p(i32 %67, ptr %68) #18, !range !236
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %51, label %127, !prof !336, !llvm.loop !337

71:                                               ; preds = %58
  %72 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  br label %87

73:                                               ; preds = %51
  %74 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !338
  %76 = icmp eq ptr %75, %35
  br i1 %76, label %66, label %77, !prof !339

77:                                               ; preds = %73
  %78 = load ptr, ptr %36, align 8, !tbaa !252
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !254
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, ptr %78, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !232
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %66, !prof !340

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 1
  br label %87

87:                                               ; preds = %85, %71
  %88 = phi ptr [ %86, %85 ], [ %56, %71 ]
  %89 = phi ptr [ %75, %85 ], [ %56, %71 ]
  %90 = phi ptr [ %54, %85 ], [ %72, %71 ]
  %91 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef nonnull %88) #18
  %92 = load ptr, ptr %90, align 8, !tbaa !225
  %93 = extractvalue { i32, ptr } %91, 1
  %94 = icmp eq ptr %89, %34
  br i1 %94, label %95, label %96, !prof !341

95:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 294, ptr noundef nonnull @.str.1) #19
  br label %96

96:                                               ; preds = %87, %95
  %97 = icmp eq ptr %92, %34
  %98 = load ptr, ptr %36, align 8, !tbaa !252
  br i1 %97, label %101, label %99, !prof !342

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 9
  br label %106

101:                                              ; preds = %96
  %102 = load ptr, ptr @cfun, align 8, !tbaa !225
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !229
  %105 = getelementptr inbounds %struct.control_flow_graph, ptr %104, i64 0, i32 5
  br label %106

106:                                              ; preds = %101, %99
  %107 = phi ptr [ %105, %101 ], [ %100, %99 ]
  %108 = load i32, ptr %107, align 8, !tbaa !232
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, ptr %98, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !232
  %112 = load i32, ptr %37, align 8, !tbaa !280
  %113 = add i32 %112, 1
  store i32 %113, ptr %37, align 8, !tbaa !280
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !254
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, ptr %98, i64 %116
  store i32 %112, ptr %117, align 4, !tbaa !232
  %118 = load ptr, ptr %38, align 8, !tbaa !253
  %119 = zext i32 %112 to i64
  %120 = getelementptr inbounds ptr, ptr %118, i64 %119
  store ptr %89, ptr %120, align 8, !tbaa !225
  %121 = load ptr, ptr %0, align 8, !tbaa !264
  %122 = getelementptr inbounds i32, ptr %121, i64 %119
  store i32 %111, ptr %122, align 4, !tbaa !232
  %123 = add i64 %48, 1
  %124 = getelementptr inbounds %struct.edge_iterator, ptr %13, i64 %48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %124, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !343
  store i32 0, ptr %4, align 8, !tbaa.struct !343
  store ptr %93, ptr %33, align 8, !tbaa.struct !302
  %125 = tail call fastcc zeroext i8 @ei_end_p(i32 0, ptr %93) #18, !range !236
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %47, label %129, !prof !344, !llvm.loop !337

127:                                              ; preds = %66
  %128 = trunc i64 %48 to i32
  br label %131

129:                                              ; preds = %106
  %130 = trunc i64 %123 to i32
  br label %131

131:                                              ; preds = %129, %127, %39
  %132 = phi i32 [ %42, %39 ], [ %128, %127 ], [ %130, %129 ]
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %140, label %134, !prof !345

134:                                              ; preds = %131
  %135 = add nsw i32 %132, -1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.edge_iterator, ptr %13, i64 %136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %137, i64 16, i1 false), !tbaa.struct !343
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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !346 !PGOFuncName !347 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !348

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !349
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc { i32, ptr } @ei_start_1(ptr noundef %0) unnamed_addr #4 !prof !351 !PGOFuncName !352 {
  %2 = insertvalue { i32, ptr } { i32 0, ptr poison }, ptr %0, 1
  ret { i32, ptr } %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !353 !PGOFuncName !354 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !355

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !356 !PGOFuncName !357 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !358

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !356 !PGOFuncName !359 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !358

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !360

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !303
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !303
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !361 !PGOFuncName !362 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !363

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !225
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !364 !PGOFuncName !365 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !225
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @eval(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !366 !PGOFuncName !367 {
  %3 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !275
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !232
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14, !prof !368

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !265
  %12 = getelementptr inbounds i32, ptr %11, i64 %5
  %13 = load i32, ptr %12, align 4, !tbaa !232
  br label %42

14:                                               ; preds = %2
  %15 = zext i32 %7 to i64
  %16 = getelementptr inbounds i32, ptr %4, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !232
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19, !prof !369

19:                                               ; preds = %14
  tail call fastcc void @compress(ptr noundef nonnull %0, i32 noundef %1) #18
  %20 = load ptr, ptr %3, align 8, !tbaa !275
  %21 = getelementptr inbounds i32, ptr %20, i64 %5
  %22 = load i32, ptr %21, align 4, !tbaa !232
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i64 [ %23, %19 ], [ %15, %14 ]
  %26 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !270
  %28 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !265
  %30 = getelementptr inbounds i32, ptr %29, i64 %25
  %31 = load i32, ptr %30, align 4, !tbaa !232
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %27, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !232
  %35 = getelementptr inbounds i32, ptr %29, i64 %5
  %36 = load i32, ptr %35, align 4, !tbaa !232
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %27, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !232
  %40 = icmp ult i32 %34, %39
  %41 = select i1 %40, i32 %31, i32 %36, !prof !370
  br label %42

42:                                               ; preds = %24, %9
  %43 = phi i32 [ %13, %9 ], [ %41, %24 ]
  ret i32 %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_roots(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 !prof !371 !PGOFuncName !372 {
  %4 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !270
  %6 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !265
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !278
  %12 = load i32, ptr %9, align 4, !tbaa !232
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %5, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !232
  %16 = getelementptr inbounds i32, ptr %11, i64 %8
  %17 = load i32, ptr %16, align 4, !tbaa !232
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %7, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !232
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %5, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !232
  %24 = icmp ult i32 %15, %23
  %25 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !276
  br i1 %24, label %27, label %73, !prof !373

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  br label %29

29:                                               ; preds = %27, %57
  %30 = phi i64 [ %18, %27 ], [ %66, %57 ]
  %31 = phi ptr [ %16, %27 ], [ %64, %57 ]
  %32 = phi i64 [ %8, %27 ], [ %63, %57 ]
  %33 = phi i32 [ %2, %27 ], [ %58, %57 ]
  %34 = getelementptr inbounds i32, ptr %26, i64 %32
  %35 = load i32, ptr %34, align 4, !tbaa !232
  %36 = getelementptr inbounds i32, ptr %11, i64 %30
  %37 = load i32, ptr %36, align 4, !tbaa !232
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %26, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !232
  %41 = add i32 %40, %35
  %42 = getelementptr inbounds i32, ptr %26, i64 %30
  %43 = load i32, ptr %42, align 4, !tbaa !232
  %44 = shl i32 %43, 1
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %53, label %46, !prof !374

46:                                               ; preds = %29
  %47 = load ptr, ptr %28, align 8, !tbaa !275
  %48 = getelementptr inbounds i32, ptr %47, i64 %30
  store i32 %33, ptr %48, align 4, !tbaa !232
  %49 = load i32, ptr %31, align 4, !tbaa !232
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %11, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !232
  store i32 %52, ptr %31, align 4, !tbaa !232
  br label %57

53:                                               ; preds = %29
  store i32 %35, ptr %42, align 4, !tbaa !232
  %54 = load i32, ptr %31, align 4, !tbaa !232
  %55 = load ptr, ptr %28, align 8, !tbaa !275
  %56 = getelementptr inbounds i32, ptr %55, i64 %32
  store i32 %54, ptr %56, align 4, !tbaa !232
  br label %57

57:                                               ; preds = %53, %46
  %58 = phi i32 [ %33, %46 ], [ %54, %53 ]
  %59 = load i32, ptr %9, align 4, !tbaa !232
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %5, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !232
  %63 = zext i32 %58 to i64
  %64 = getelementptr inbounds i32, ptr %11, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !232
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %7, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !232
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %5, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !232
  %72 = icmp ult i32 %62, %71
  br i1 %72, label %29, label %73, !prof !375, !llvm.loop !376

73:                                               ; preds = %57, %3
  %74 = phi i32 [ %2, %3 ], [ %58, %57 ]
  %75 = phi i32 [ %12, %3 ], [ %59, %57 ]
  %76 = phi i64 [ %8, %3 ], [ %63, %57 ]
  %77 = getelementptr inbounds i32, ptr %7, i64 %76
  store i32 %75, ptr %77, align 4, !tbaa !232
  %78 = getelementptr inbounds i32, ptr %26, i64 %8
  %79 = load i32, ptr %78, align 4, !tbaa !232
  %80 = zext i32 %1 to i64
  %81 = getelementptr inbounds i32, ptr %26, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !232
  %83 = add i32 %82, %79
  store i32 %83, ptr %81, align 4, !tbaa !232
  %84 = load i32, ptr %78, align 4, !tbaa !232
  %85 = shl i32 %84, 1
  %86 = icmp ult i32 %83, %85
  br i1 %86, label %87, label %90, !prof !377

87:                                               ; preds = %73
  %88 = getelementptr inbounds i32, ptr %11, i64 %80
  %89 = load i32, ptr %88, align 4, !tbaa !232
  store i32 %74, ptr %88, align 4, !tbaa !232
  br label %90

90:                                               ; preds = %87, %73
  %91 = phi i32 [ %89, %87 ], [ %74, %73 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %103, label %93, !prof !378

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !275
  br label %96

96:                                               ; preds = %93, %96
  %97 = phi i32 [ %91, %93 ], [ %101, %96 ]
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %95, i64 %98
  store i32 %1, ptr %99, align 4, !tbaa !232
  %100 = getelementptr inbounds i32, ptr %11, i64 %98
  %101 = load i32, ptr %100, align 4, !tbaa !232
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %96, !prof !379, !llvm.loop !380

103:                                              ; preds = %96, %90
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compress(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !381 !PGOFuncName !382 {
  %3 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !275
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !232
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %4, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !232
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %12, !prof !383

12:                                               ; preds = %2
  tail call fastcc void @compress(ptr noundef nonnull %0, i32 noundef %7) #18
  %13 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !270
  %15 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !265
  %17 = getelementptr inbounds i32, ptr %16, i64 %8
  %18 = load i32, ptr %17, align 4, !tbaa !232
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %14, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !232
  %22 = getelementptr inbounds i32, ptr %16, i64 %5
  %23 = load i32, ptr %22, align 4, !tbaa !232
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %14, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !232
  %27 = icmp ult i32 %21, %26
  br i1 %27, label %28, label %29, !prof !384

28:                                               ; preds = %12
  store i32 %18, ptr %22, align 4, !tbaa !232
  br label %29

29:                                               ; preds = %28, %12
  %30 = load ptr, ptr %3, align 8, !tbaa !275
  %31 = getelementptr inbounds i32, ptr %30, i64 %8
  %32 = load i32, ptr %31, align 4, !tbaa !232
  %33 = getelementptr inbounds i32, ptr %30, i64 %5
  store i32 %32, ptr %33, align 4, !tbaa !232
  br label %34

34:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @assign_dfs_numbers(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #7 !prof !385 !PGOFuncName !386 {
  %3 = load i32, ptr %1, align 4, !tbaa !232
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %1, align 4, !tbaa !232
  %5 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !387
  %6 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !388
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9, !prof !389

9:                                                ; preds = %2
  tail call fastcc void @assign_dfs_numbers(ptr noundef nonnull %7, ptr noundef nonnull %1) #18
  %10 = load ptr, ptr %6, align 8, !tbaa !388
  %11 = getelementptr inbounds %struct.et_node, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !390
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %20, label %14, !prof !391

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %9 ]
  tail call fastcc void @assign_dfs_numbers(ptr noundef %15, ptr noundef nonnull %1) #18
  %16 = getelementptr inbounds %struct.et_node, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !390
  %18 = load ptr, ptr %6, align 8, !tbaa !388
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %14, !prof !392, !llvm.loop !393

20:                                               ; preds = %14, %9, %2
  %21 = load i32, ptr %1, align 4, !tbaa !232
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %1, align 4, !tbaa !232
  %23 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 2
  store i32 %21, ptr %23, align 4, !tbaa !394
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_dominance_info(i32 noundef %0) local_unnamed_addr #0 !prof !395 {
  %2 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %3 = tail call zeroext i8 @dom_info_available_p(i32 noundef %0) #18, !range !236
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5, !prof !396

5:                                                ; preds = %1
  %6 = load ptr, ptr @cfun, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !229
  %9 = load ptr, ptr %8, align 8, !tbaa !225
  %10 = icmp eq ptr %9, null
  %11 = zext i32 %2 to i64
  br i1 %10, label %19, label %12, !prof !239

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %17, %12 ], [ %9, %5 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 4, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !225
  tail call void @et_free_tree_force(ptr noundef %15) #19
  store ptr null, ptr %14, align 8, !tbaa !225
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !225
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %12, !prof !397, !llvm.loop !398

19:                                               ; preds = %12, %5
  tail call void @et_free_pools() #19
  %20 = load ptr, ptr @cfun, align 8, !tbaa !225
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !229
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 9, i64 %11
  store i32 0, ptr %23, align 4, !tbaa !232
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 8, i64 %11
  store i32 0, ptr %24, align 4, !tbaa !232
  br label %25

25:                                               ; preds = %1, %19
  ret void
}

; Function Attrs: optsize
declare void @et_free_tree_force(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @et_free_pools() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_immediate_dominator(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !399 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = load ptr, ptr @cfun, align 8, !tbaa !225
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !229
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 8, i64 %4
  %11 = load i32, ptr %10, align 4, !tbaa !232
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !400

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 704, ptr noundef nonnull @.str.1) #19
  br label %14

14:                                               ; preds = %2, %13
  %15 = getelementptr inbounds %struct.et_node, ptr %6, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !322
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !401

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !402
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi ptr [ %19, %18 ], [ null, %14 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_immediate_dominator(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 !prof !403 {
  %4 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !225
  %8 = load ptr, ptr @cfun, align 8, !tbaa !225
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !229
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 8, i64 %5
  %12 = load i32, ptr %11, align 4, !tbaa !232
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !404

14:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 721, ptr noundef nonnull @.str.1) #19
  br label %15

15:                                               ; preds = %3, %14
  %16 = getelementptr inbounds %struct.et_node, ptr %7, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !322
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !405

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !402
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %36, label %22, !prof !406

22:                                               ; preds = %19
  tail call void @et_split(ptr noundef nonnull %7) #19
  br label %23

23:                                               ; preds = %22, %15
  %24 = icmp eq ptr %2, null
  br i1 %24, label %28, label %25, !prof !407

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %5
  %27 = load ptr, ptr %26, align 8, !tbaa !225
  tail call void @et_set_father(ptr noundef nonnull %7, ptr noundef %27) #19
  br label %28

28:                                               ; preds = %25, %23
  %29 = load ptr, ptr @cfun, align 8, !tbaa !225
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !229
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 8, i64 %5
  %33 = load i32, ptr %32, align 4, !tbaa !232
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %36, !prof !408

35:                                               ; preds = %28
  store i32 1, ptr %32, align 4, !tbaa !232
  br label %36

36:                                               ; preds = %28, %35, %19
  ret void
}

; Function Attrs: optsize
declare void @et_split(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_dominated_by(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !409 {
  %3 = alloca ptr, align 8
  %4 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !225
  %8 = getelementptr inbounds %struct.et_node, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !225
  %10 = load ptr, ptr @cfun, align 8, !tbaa !225
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !229
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 8, i64 %5
  %14 = load i32, ptr %13, align 4, !tbaa !232
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !410

16:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 746, ptr noundef nonnull @.str.1) #19
  br label %17

17:                                               ; preds = %2, %16
  %18 = icmp eq ptr %9, null
  br i1 %18, label %32, label %19, !prof !411

19:                                               ; preds = %17
  %20 = load ptr, ptr %9, align 8, !tbaa !402
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %3, ptr noundef %20) #18
  %21 = getelementptr inbounds %struct.et_node, ptr %9, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !390
  %23 = icmp eq ptr %22, %9
  br i1 %23, label %30, label %24, !prof !412

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %28, %24 ], [ %22, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !402
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %3, ptr noundef %26) #18
  %27 = getelementptr inbounds %struct.et_node, ptr %25, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !390
  %29 = icmp eq ptr %28, %9
  br i1 %29, label %30, label %24, !prof !413, !llvm.loop !414

30:                                               ; preds = %24, %19
  %31 = load ptr, ptr %3, align 8, !tbaa !225
  br label %32

32:                                               ; preds = %17, %30
  %33 = phi ptr [ %31, %30 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !415 !PGOFuncName !416 {
  tail call fastcc void @VEC_basic_block_heap_reserve(ptr noundef %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !225
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !415 !PGOFuncName !417 {
  %2 = load ptr, ptr %0, align 8, !tbaa !225
  %3 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !418

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #19
  store ptr %6, ptr %0, align 8, !tbaa !225
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !415 !PGOFuncName !419 {
  %3 = load i32, ptr %0, align 8, !tbaa !420
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !420
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !225
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !415 !PGOFuncName !422 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !423

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !424
  %6 = load i32, ptr %0, align 8, !tbaa !420
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
define dso_local ptr @get_dominated_by_region(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !prof !425 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !225
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %51, label %6, !prof !426

6:                                                ; preds = %3
  %7 = zext i32 %2 to i64
  br label %11

8:                                                ; preds = %11
  br i1 %5, label %51, label %9, !prof !271

9:                                                ; preds = %8
  %10 = zext i32 %2 to i64
  br label %23

11:                                               ; preds = %6, %11
  %12 = phi i64 [ 0, %6 ], [ %18, %11 ]
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !225
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !427
  %17 = or i32 %16, 128
  store i32 %17, ptr %15, align 8, !tbaa !427
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, %7
  br i1 %19, label %8, label %11, !prof !428, !llvm.loop !429

20:                                               ; preds = %39
  br i1 %5, label %51, label %21, !prof !271

21:                                               ; preds = %20
  %22 = zext i32 %2 to i64
  br label %42

23:                                               ; preds = %9, %39
  %24 = phi i64 [ 0, %9 ], [ %40, %39 ]
  %25 = getelementptr inbounds ptr, ptr %1, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !225
  %27 = tail call ptr @first_dom_son(i32 noundef %0, ptr noundef %26) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29, !prof !430

29:                                               ; preds = %23, %36
  %30 = phi ptr [ %37, %36 ], [ %27, %23 ]
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 13
  %32 = load i32, ptr %31, align 8, !tbaa !427
  %33 = and i32 %32, 128
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36, !prof !431

35:                                               ; preds = %29
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %4, ptr noundef nonnull %30) #18
  br label %36

36:                                               ; preds = %29, %35
  %37 = tail call ptr @next_dom_son(i32 noundef %0, ptr noundef nonnull %30) #18
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %29, !prof !432, !llvm.loop !433

39:                                               ; preds = %36, %23
  %40 = add nuw nsw i64 %24, 1
  %41 = icmp eq i64 %40, %10
  br i1 %41, label %20, label %23, !prof !428, !llvm.loop !434

42:                                               ; preds = %21, %42
  %43 = phi i64 [ 0, %21 ], [ %49, %42 ]
  %44 = getelementptr inbounds ptr, ptr %1, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !225
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !427
  %48 = and i32 %47, -129
  store i32 %48, ptr %46, align 8, !tbaa !427
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %49, %22
  br i1 %50, label %51, label %42, !prof !428, !llvm.loop !435

51:                                               ; preds = %42, %3, %8, %20
  %52 = load ptr, ptr %4, align 8, !tbaa !225
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @first_dom_son(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !436 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.et_node, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !388
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !437

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 8, !tbaa !402
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi ptr [ %11, %10 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @next_dom_son(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !438 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.et_node, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !390
  %9 = getelementptr inbounds %struct.et_node, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !322
  %11 = getelementptr inbounds %struct.et_node, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !388
  %13 = icmp eq ptr %12, %8
  br i1 %13, label %16, label %14, !prof !439

14:                                               ; preds = %2
  %15 = load ptr, ptr %8, align 8, !tbaa !402
  br label %16

16:                                               ; preds = %2, %14
  %17 = phi ptr [ %15, %14 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_all_dominated_blocks(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !440 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !225
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
  br i1 %11, label %18, label %12, !prof !441

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %10, %5 ]
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %13) #18
  %14 = tail call ptr @next_dom_son(i32 noundef %0, ptr noundef nonnull %13) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !prof !442, !llvm.loop !443

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = phi ptr [ %17, %16 ], [ %6, %5 ]
  %20 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %19) #18
  %21 = icmp ult i32 %8, %20
  br i1 %21, label %5, label %22, !prof !444, !llvm.loop !445

22:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !446 !PGOFuncName !447 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !225
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !448 !PGOFuncName !449 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !450

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !420
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_immediate_dominators(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !451 {
  %4 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !225
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %5
  %9 = load ptr, ptr %8, align 8, !tbaa !225
  %10 = load ptr, ptr @cfun, align 8, !tbaa !225
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !229
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 8, i64 %5
  %14 = load i32, ptr %13, align 4, !tbaa !232
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !452

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 822, ptr noundef nonnull @.str.1) #19
  br label %17

17:                                               ; preds = %3, %16
  %18 = getelementptr inbounds %struct.et_node, ptr %7, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !388
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21, !prof !453

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %23, %21 ], [ %19, %17 ]
  tail call void @et_split(ptr noundef nonnull %22) #19
  tail call void @et_set_father(ptr noundef nonnull %22, ptr noundef %9) #19
  %23 = load ptr, ptr %18, align 8, !tbaa !388
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21, !prof !454, !llvm.loop !455

25:                                               ; preds = %21
  %26 = load ptr, ptr @cfun, align 8, !tbaa !225
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !229
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 8, i64 %5
  %30 = load i32, ptr %29, align 4, !tbaa !232
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %33, !prof !456

32:                                               ; preds = %25
  store i32 1, ptr %29, align 4, !tbaa !232
  br label %33

33:                                               ; preds = %25, %32, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @nearest_common_dominator(i32 noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 !prof !457 {
  %4 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %5 = load ptr, ptr @cfun, align 8, !tbaa !225
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !229
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 8, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !232
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !458

12:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 845, ptr noundef nonnull @.str.1) #19
  br label %13

13:                                               ; preds = %3, %12
  %14 = icmp eq ptr %1, null
  br i1 %14, label %24, label %15, !prof !459

15:                                               ; preds = %13
  %16 = icmp eq ptr %2, null
  br i1 %16, label %24, label %17, !prof !460

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %8
  %19 = load ptr, ptr %18, align 8, !tbaa !225
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %8
  %21 = load ptr, ptr %20, align 8, !tbaa !225
  %22 = tail call ptr @et_nca(ptr noundef %19, ptr noundef %21) #19
  %23 = load ptr, ptr %22, align 8, !tbaa !402
  br label %24

24:                                               ; preds = %15, %13, %17
  %25 = phi ptr [ %23, %17 ], [ %2, %13 ], [ %1, %15 ]
  ret ptr %25
}

; Function Attrs: optsize
declare ptr @et_nca(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @nearest_common_dominator_for_set(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !461 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %5 = tail call i32 @bitmap_first_set_bit(ptr noundef %1) #19
  %6 = load ptr, ptr @cfun, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !229
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !462
  %11 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %10, i32 noundef %5) #18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #18
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !236
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %32, label %14, !prof !463

14:                                               ; preds = %2, %27
  %15 = phi ptr [ %28, %27 ], [ %6, %2 ]
  %16 = phi ptr [ %29, %27 ], [ %11, %2 ]
  %17 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !229
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !462
  %21 = load i32, ptr %3, align 4, !tbaa !232
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %20, i32 noundef %21) #18
  %23 = icmp eq ptr %16, %22
  br i1 %23, label %27, label %24, !prof !464

24:                                               ; preds = %14
  %25 = tail call ptr @nearest_common_dominator(i32 noundef %0, ptr noundef %16, ptr noundef %22) #18
  %26 = load ptr, ptr @cfun, align 8, !tbaa !225
  br label %27

27:                                               ; preds = %14, %24
  %28 = phi ptr [ %26, %24 ], [ %15, %14 ]
  %29 = phi ptr [ %25, %24 ], [ %16, %14 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !236
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %14, !prof !465, !llvm.loop !466

32:                                               ; preds = %27, %2
  %33 = phi ptr [ %11, %2 ], [ %29, %27 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret ptr %33
}

; Function Attrs: optsize
declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !461 !PGOFuncName !467 {
  %4 = load ptr, ptr %1, align 8, !tbaa !468
  store ptr %4, ptr %0, align 8, !tbaa !470
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !472
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !473

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !470
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !474
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !476
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !477
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !478
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !232
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 !prof !479 !PGOFuncName !480 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !478
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !481

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !482

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !232
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !483, !llvm.loop !484

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !232
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !232
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !476
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !470
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !476
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !485

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !477
  store i64 %35, ptr %3, align 8, !tbaa !478
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !486

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !232
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !232
  %40 = load i32, ptr %23, align 8, !tbaa !476
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !476
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !487, !llvm.loop !488

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !489
  store ptr %44, ptr %0, align 8, !tbaa !470
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !490

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !474
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !232
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !478
  store i32 %16, ptr %1, align 4, !tbaa !232
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !491 !PGOFuncName !492 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !478
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !478
  %6 = load i32, ptr %1, align 4, !tbaa !232
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !232
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @dominated_by_p(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !493 {
  %4 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !225
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %5
  %9 = load ptr, ptr %8, align 8, !tbaa !225
  %10 = load ptr, ptr @cfun, align 8, !tbaa !225
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !229
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 8, i64 %5
  %14 = load i32, ptr %13, align 4, !tbaa !232
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22, !prof !494

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 957, ptr noundef nonnull @.str.1) #19
  %17 = load ptr, ptr @cfun, align 8, !tbaa !225
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !229
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 8, i64 %5
  %21 = load i32, ptr %20, align 4, !tbaa !232
  br label %22

22:                                               ; preds = %3, %16
  %23 = phi i32 [ %14, %3 ], [ %21, %16 ]
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %38, !prof !495

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.et_node, ptr %7, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !387
  %28 = getelementptr inbounds %struct.et_node, ptr %9, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !387
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %40, label %31, !prof !496

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.et_node, ptr %7, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !394
  %34 = getelementptr inbounds %struct.et_node, ptr %9, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !394
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
define dso_local i32 @bb_dom_dfs_in(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !497 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = load ptr, ptr @cfun, align 8, !tbaa !225
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !229
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 8, i64 %4
  %11 = load i32, ptr %10, align 4, !tbaa !232
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %14, label %13, !prof !498

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 974, ptr noundef nonnull @.str.1) #19
  br label %14

14:                                               ; preds = %2, %13
  %15 = getelementptr inbounds %struct.et_node, ptr %6, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !387
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @bb_dom_dfs_out(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !499 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = load ptr, ptr @cfun, align 8, !tbaa !225
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !229
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 8, i64 %4
  %11 = load i32, ptr %10, align 4, !tbaa !232
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %14, label %13, !prof !500

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 986, ptr noundef nonnull @.str.1) #19
  br label %14

14:                                               ; preds = %2, %13
  %15 = getelementptr inbounds %struct.et_node, ptr %6, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !394
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_dominators(i32 noundef %0) local_unnamed_addr #0 !prof !501 {
  %2 = alloca %struct.dom_info, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #17
  %3 = icmp eq i32 %0, 2
  %4 = zext i1 %3 to i8
  %5 = tail call zeroext i8 @dom_info_available_p(i32 noundef %0) #18, !range !236
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 999, ptr noundef nonnull @.str.1) #19
  br label %8

8:                                                ; preds = %1, %7
  call fastcc void @init_dom_info(ptr noundef nonnull %2, i32 noundef %0) #18
  call fastcc void @calc_dfs_tree(ptr noundef nonnull %2, i8 noundef zeroext %4) #18
  call fastcc void @calc_idoms(ptr noundef nonnull %2, i8 noundef zeroext %4) #18
  %9 = load ptr, ptr @cfun, align 8, !tbaa !225
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !229
  %12 = load ptr, ptr %11, align 8, !tbaa !245
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !246
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !249
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
  %33 = load i32, ptr %32, align 8, !tbaa !254
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, i32 noundef %33) #19
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i32 [ %28, %26 ], [ 1, %31 ]
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !254
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %25, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !232
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %23, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !232
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %21, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !225
  %47 = icmp eq ptr %29, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !254
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !254
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4, i32 noundef %37, i32 noundef %50, i32 noundef %52) #19
  br label %53

53:                                               ; preds = %34, %48
  %54 = phi i32 [ 1, %48 ], [ %35, %34 ]
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !246
  %57 = load ptr, ptr @cfun, align 8, !tbaa !225
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !229
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !249
  %62 = icmp eq ptr %56, %61
  br i1 %62, label %63, label %26, !llvm.loop !502

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
define dso_local ptr @recompute_dominator(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !503 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %6 = load ptr, ptr @cfun, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !229
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !232
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !504

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1040, ptr noundef nonnull @.str.1) #19
  br label %14

14:                                               ; preds = %2, %13
  %15 = icmp eq i32 %0, 1
  br i1 %15, label %16, label %37, !prof !505

16:                                               ; preds = %14
  %17 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %1) #18
  %18 = extractvalue { i32, ptr } %17, 1
  store i32 0, ptr %4, align 8, !tbaa.struct !343
  %19 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %18, ptr %19, align 8, !tbaa.struct !302
  %20 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %3) #18, !range !236
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %60, label %22, !prof !506

22:                                               ; preds = %16, %31
  %23 = phi ptr [ %32, %31 ], [ null, %16 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !225
  %25 = load ptr, ptr %24, align 8, !tbaa !332
  %26 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %25, ptr noundef %1) #18
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31, !prof !507

28:                                               ; preds = %22
  %29 = load ptr, ptr %24, align 8, !tbaa !332
  %30 = tail call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %23, ptr noundef %29) #18
  br label %31

31:                                               ; preds = %22, %28
  %32 = phi ptr [ %23, %22 ], [ %30, %28 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %33 = load i32, ptr %4, align 8
  %34 = load ptr, ptr %19, align 8
  %35 = call fastcc zeroext i8 @ei_cond(i32 %33, ptr %34, ptr noundef nonnull %3) #18, !range !236
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %60, label %22, !prof !508, !llvm.loop !509

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %39 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef nonnull %38) #18
  %40 = extractvalue { i32, ptr } %39, 1
  store i32 0, ptr %4, align 8, !tbaa.struct !343
  %41 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %40, ptr %41, align 8, !tbaa.struct !302
  %42 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %40, ptr noundef nonnull %3) #18, !range !236
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %37, %54
  %45 = phi ptr [ %55, %54 ], [ null, %37 ]
  %46 = load ptr, ptr %3, align 8, !tbaa !225
  %47 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !338
  %49 = tail call zeroext i8 @dominated_by_p(i32 noundef %0, ptr noundef %48, ptr noundef %1) #18
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load ptr, ptr %47, align 8, !tbaa !338
  %53 = tail call ptr @nearest_common_dominator(i32 noundef %0, ptr noundef %45, ptr noundef %52) #18
  br label %54

54:                                               ; preds = %44, %51
  %55 = phi ptr [ %45, %44 ], [ %53, %51 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %56 = load i32, ptr %4, align 8
  %57 = load ptr, ptr %41, align 8
  %58 = call fastcc zeroext i8 @ei_cond(i32 %56, ptr %57, ptr noundef nonnull %3) #18, !range !236
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %44, !llvm.loop !510

60:                                               ; preds = %54, %31, %37, %16
  %61 = phi ptr [ null, %16 ], [ null, %37 ], [ %32, %31 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !511 !PGOFuncName !512 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !236
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !513

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !225
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @iterate_fix_dominators(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !514 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %7 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %10, label %9, !prof !515

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1240, ptr noundef nonnull @.str.1) #19
  br label %10

10:                                               ; preds = %3, %9
  %11 = load ptr, ptr @cfun, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !229
  %14 = zext i32 %7 to i64
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 8, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !232
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !516

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1241, ptr noundef nonnull @.str.1) #19
  br label %19

19:                                               ; preds = %10, %18
  %20 = icmp eq i8 %2, 0
  br i1 %20, label %21, label %30, !prof !517

21:                                               ; preds = %19
  %22 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #18, !range !518
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24, !prof !519

24:                                               ; preds = %21, %24
  %25 = phi i32 [ %27, %24 ], [ 0, %21 ]
  %26 = load ptr, ptr %4, align 8, !tbaa !225
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %26, ptr noundef null) #18
  %27 = add i32 %25, 1
  %28 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef %27, ptr noundef nonnull %4) #18, !range !518
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %24, !prof !520, !llvm.loop !521

30:                                               ; preds = %24, %21, %19
  tail call fastcc void @prune_bbs_to_update_dominators(ptr noundef %1, i8 noundef zeroext %2) #18
  %31 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %1) #18
  switch i32 %31, label %35 [
    i32 0, label %169
    i32 1, label %32
  ], !prof !522

32:                                               ; preds = %30
  %33 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef 0) #18
  %34 = tail call ptr @recompute_dominator(i32 noundef 1, ptr noundef %33) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %33, ptr noundef %34) #18
  br label %169

35:                                               ; preds = %30
  %36 = tail call ptr @pointer_map_create() #19
  %37 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #18, !range !518
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %50, label %39, !prof !523

39:                                               ; preds = %35, %43
  %40 = phi i32 [ %47, %43 ], [ 0, %35 ]
  %41 = load ptr, ptr %4, align 8, !tbaa !225
  br i1 %20, label %43, label %42, !prof !524

42:                                               ; preds = %39
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %41, ptr noundef null) #18
  br label %43

43:                                               ; preds = %42, %39
  %44 = zext i32 %40 to i64
  %45 = inttoptr i64 %44 to ptr
  %46 = tail call ptr @pointer_map_insert(ptr noundef %36, ptr noundef %41) #19
  store ptr %45, ptr %46, align 8, !tbaa !225
  %47 = add i32 %40, 1
  %48 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef %47, ptr noundef nonnull %4) #18, !range !518
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %39, !prof !525, !llvm.loop !526

50:                                               ; preds = %43, %35
  %51 = sext i32 %31 to i64
  %52 = inttoptr i64 %51 to ptr
  %53 = load ptr, ptr @cfun, align 8, !tbaa !225
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !229
  %56 = load ptr, ptr %55, align 8, !tbaa !245
  %57 = tail call ptr @pointer_map_insert(ptr noundef %36, ptr noundef %56) #19
  store ptr %52, ptr %57, align 8, !tbaa !225
  %58 = add nsw i32 %31, 1
  %59 = tail call ptr @new_graph(i32 noundef %58) #19
  %60 = load i32, ptr %59, align 8, !tbaa !527
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %64, !prof !529

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.graph, ptr %59, i64 0, i32 1
  br label %71

64:                                               ; preds = %71, %50
  %65 = phi i32 [ %60, %50 ], [ %77, %71 ]
  %66 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #18, !range !518
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %82, label %68, !prof !523

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %6, i64 8
  %70 = getelementptr inbounds %struct.graph, ptr %59, i64 0, i32 1
  br label %88

71:                                               ; preds = %62, %71
  %72 = phi i64 [ 0, %62 ], [ %76, %71 ]
  %73 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %74 = load ptr, ptr %63, align 8, !tbaa !530
  %75 = getelementptr inbounds %struct.vertex, ptr %74, i64 %72, i32 4
  store ptr %73, ptr %75, align 8, !tbaa !531
  %76 = add nuw nsw i64 %72, 1
  %77 = load i32, ptr %59, align 8, !tbaa !527
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %71, label %64, !prof !533, !llvm.loop !534

80:                                               ; preds = %121
  %81 = load i32, ptr %59, align 8, !tbaa !527
  br label %82

82:                                               ; preds = %80, %64
  %83 = phi i32 [ %81, %80 ], [ %65, %64 ]
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %136, !prof !529

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.graph, ptr %59, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !530
  br label %125

88:                                               ; preds = %68, %121
  %89 = phi i32 [ 0, %68 ], [ %122, %121 ]
  %90 = load ptr, ptr %4, align 8, !tbaa !225
  %91 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %90) #18
  %92 = extractvalue { i32, ptr } %91, 1
  store i32 0, ptr %6, align 8, !tbaa.struct !343
  store ptr %92, ptr %69, align 8, !tbaa.struct !302
  %93 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %92, ptr noundef nonnull %5) #18, !range !236
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %121, label %95, !prof !535

95:                                               ; preds = %88, %116
  %96 = load ptr, ptr %5, align 8, !tbaa !225
  %97 = load ptr, ptr %96, align 8, !tbaa !332
  %98 = tail call fastcc ptr @root_of_dom_tree(ptr noundef %97) #18
  %99 = icmp eq ptr %98, %90
  br i1 %99, label %116, label %100, !prof !536

100:                                              ; preds = %95
  %101 = tail call ptr @pointer_map_contains(ptr noundef %36, ptr noundef %98) #19
  %102 = load ptr, ptr %101, align 8, !tbaa !225
  %103 = ptrtoint ptr %102 to i64
  %104 = load ptr, ptr %70, align 8, !tbaa !530
  %105 = getelementptr inbounds %struct.vertex, ptr %104, i64 %103, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !531
  %107 = tail call i32 @bitmap_bit_p(ptr noundef %106, i32 noundef %89) #19
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %116, !prof !537

109:                                              ; preds = %100
  %110 = load ptr, ptr %70, align 8, !tbaa !530
  %111 = getelementptr inbounds %struct.vertex, ptr %110, i64 %103, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !531
  %113 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %112, i32 noundef %89) #19
  %114 = trunc i64 %103 to i32
  %115 = tail call ptr @add_edge(ptr noundef nonnull %59, i32 noundef %114, i32 noundef %89) #19
  br label %116

116:                                              ; preds = %100, %95, %109
  call fastcc void @ei_next(ptr noundef nonnull %6) #18
  %117 = load i32, ptr %6, align 8
  %118 = load ptr, ptr %69, align 8
  %119 = call fastcc zeroext i8 @ei_cond(i32 %117, ptr %118, ptr noundef nonnull %5) #18, !range !236
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %95, !prof !538, !llvm.loop !539

121:                                              ; preds = %116, %88
  %122 = add i32 %89, 1
  %123 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef %122, ptr noundef nonnull %4) #18, !range !518
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %80, label %88, !prof !525, !llvm.loop !540

125:                                              ; preds = %85, %125
  %126 = phi ptr [ %87, %85 ], [ %130, %125 ]
  %127 = phi i64 [ 0, %85 ], [ %132, %125 ]
  %128 = getelementptr inbounds %struct.vertex, ptr %126, i64 %127, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !531
  tail call void @bitmap_obstack_free(ptr noundef %129) #19
  %130 = load ptr, ptr %86, align 8, !tbaa !530
  %131 = getelementptr inbounds %struct.vertex, ptr %130, i64 %127, i32 4
  store ptr null, ptr %131, align 8, !tbaa !531
  %132 = add nuw nsw i64 %127, 1
  %133 = load i32, ptr %59, align 8, !tbaa !527
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %132, %134
  br i1 %135, label %125, label %136, !prof !533, !llvm.loop !541

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
  %146 = load i32, ptr %145, align 4, !tbaa !232
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %142, !prof !542, !llvm.loop !543

148:                                              ; preds = %142
  %149 = icmp eq i32 %143, -1
  br i1 %149, label %168, label %150, !prof !523

150:                                              ; preds = %148, %165
  %151 = phi i32 [ %166, %165 ], [ %143, %148 ]
  tail call fastcc void @determine_dominators_for_sons(ptr noundef nonnull %59, ptr noundef %1, i32 noundef %151, ptr noundef %139, ptr noundef %140) #18
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, ptr %140, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !232
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %162, label %156, !prof !544

156:                                              ; preds = %150, %156
  %157 = phi i32 [ %160, %156 ], [ %154, %150 ]
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, ptr %139, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !232
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %165, label %156, !prof !545, !llvm.loop !546

162:                                              ; preds = %150
  %163 = getelementptr inbounds i32, ptr %141, i64 %152
  %164 = load i32, ptr %163, align 4, !tbaa !232
  br label %165

165:                                              ; preds = %156, %162
  %166 = phi i32 [ %164, %162 ], [ %157, %156 ]
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %150, !prof !547, !llvm.loop !548

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
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !549 !PGOFuncName !550 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !551

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !420
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !552

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !225
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prune_bbs_to_update_dominators(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !514 !PGOFuncName !553 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %6 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #18, !range !518
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %70, label %8, !prof !554

8:                                                ; preds = %2
  %9 = icmp eq i8 %1, 0
  br label %10

10:                                               ; preds = %8, %63
  %11 = phi i32 [ 0, %8 ], [ %64, %63 ]
  br label %12

12:                                               ; preds = %10, %67
  %13 = load ptr, ptr %3, align 8, !tbaa !225
  %14 = load ptr, ptr @cfun, align 8, !tbaa !225
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !229
  %17 = load ptr, ptr %16, align 8, !tbaa !245
  %18 = icmp eq ptr %13, %17
  br i1 %18, label %67, label %19, !prof !555

19:                                               ; preds = %12
  %20 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %13) #18, !range !236
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22, !prof !556

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @single_pred(ptr noundef %13) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %13, ptr noundef %23) #18
  br label %67

24:                                               ; preds = %19
  br i1 %9, label %63, label %25, !prof !557

25:                                               ; preds = %24
  %26 = getelementptr inbounds i8, ptr %4, i64 8
  %27 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %13) #18
  %28 = extractvalue { i32, ptr } %27, 1
  store i32 0, ptr %4, align 8, !tbaa.struct !343
  store ptr %28, ptr %26, align 8, !tbaa.struct !302
  %29 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %28, ptr noundef nonnull %5) #18, !range !236
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %52, label %31, !prof !558

31:                                               ; preds = %25, %43
  %32 = phi i8 [ %45, %43 ], [ 1, %25 ]
  %33 = phi ptr [ %44, %43 ], [ null, %25 ]
  %34 = load ptr, ptr %5, align 8, !tbaa !225
  %35 = load ptr, ptr %34, align 8, !tbaa !332
  %36 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %35, ptr noundef %13) #18
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %43, !prof !559

38:                                               ; preds = %31
  %39 = icmp eq ptr %33, null
  %40 = load ptr, ptr %34, align 8, !tbaa !332
  br i1 %39, label %43, label %41, !prof !560

41:                                               ; preds = %38
  %42 = tail call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef nonnull %33, ptr noundef %40) #18
  br label %43

43:                                               ; preds = %38, %41, %31
  %44 = phi ptr [ %33, %31 ], [ %42, %41 ], [ %40, %38 ]
  %45 = phi i8 [ %32, %31 ], [ 0, %41 ], [ %32, %38 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %46 = load i32, ptr %4, align 8
  %47 = load ptr, ptr %26, align 8
  %48 = call fastcc zeroext i8 @ei_cond(i32 %46, ptr %47, ptr noundef nonnull %5) #18, !range !236
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %31, !prof !561, !llvm.loop !562

50:                                               ; preds = %43
  %51 = icmp eq ptr %44, null
  br i1 %51, label %52, label %54, !prof !271

52:                                               ; preds = %25, %50
  %53 = phi i8 [ %45, %50 ], [ 1, %25 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1109, ptr noundef nonnull @.str.1) #19
  br label %54

54:                                               ; preds = %50, %52
  %55 = phi i8 [ %45, %50 ], [ %53, %52 ]
  %56 = phi ptr [ %44, %50 ], [ null, %52 ]
  %57 = icmp eq i8 %55, 0
  br i1 %57, label %58, label %61, !prof !563

58:                                               ; preds = %54
  %59 = tail call ptr @find_edge(ptr noundef %56, ptr noundef %13) #19
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61, !prof !564

61:                                               ; preds = %58, %54
  %62 = load ptr, ptr %3, align 8, !tbaa !225
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %62, ptr noundef %56) #18
  br label %67

63:                                               ; preds = %58, %24
  %64 = add i32 %11, 1
  %65 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %0, i32 noundef %64, ptr noundef nonnull %3) #18, !range !518
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %10, !prof !565, !llvm.loop !566

67:                                               ; preds = %12, %61, %22
  tail call fastcc void @VEC_basic_block_base_unordered_remove(ptr noundef %0, i32 noundef %11) #18
  %68 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %0, i32 noundef %11, ptr noundef nonnull %3) #18, !range !518
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %12, !prof !567, !llvm.loop !566

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
define internal fastcc ptr @root_of_dom_tree(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !568 !PGOFuncName !569 {
  %2 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef 1) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 4, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !225
  %6 = tail call ptr @et_root(ptr noundef %5) #19
  %7 = load ptr, ptr %6, align 8, !tbaa !402
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
define internal fastcc void @determine_dominators_for_sons(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !570 !PGOFuncName !571 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %3, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !232
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %141, label %13, !prof !572

13:                                               ; preds = %5
  %14 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %1) #18
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %21, !prof !573

16:                                               ; preds = %13
  %17 = load ptr, ptr @cfun, align 8, !tbaa !225
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !229
  %20 = load ptr, ptr %19, align 8, !tbaa !245
  br label %23

21:                                               ; preds = %13
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef %2) #18
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %20, %16 ], [ %22, %21 ]
  %25 = sext i32 %11 to i64
  %26 = getelementptr inbounds i32, ptr %4, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !232
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %33, !prof !574

29:                                               ; preds = %23
  %30 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef %11) #18
  %31 = tail call ptr @recompute_dominator(i32 noundef 1, ptr noundef %30) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %30, ptr noundef %31) #18
  %32 = load i32, ptr %10, align 4, !tbaa !232
  tail call void @identify_vertices(ptr noundef %0, i32 noundef %2, i32 noundef %32) #19
  br label %141

33:                                               ; preds = %23
  %34 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %35 = load i32, ptr %10, align 4, !tbaa !232
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %44, label %37, !prof !575

37:                                               ; preds = %33, %37
  %38 = phi i32 [ %42, %37 ], [ %35, %33 ]
  %39 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %38) #19
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, ptr %4, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !232
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %37, !prof !576, !llvm.loop !577

44:                                               ; preds = %37, %33
  %45 = tail call i32 @graphds_scc(ptr noundef %0, ptr noundef %34) #19
  tail call void @bitmap_obstack_free(ptr noundef %34) #19
  %46 = sext i32 %45 to i64
  %47 = tail call ptr @xcalloc(i64 noundef %46, i64 noundef 8) #19
  %48 = load i32, ptr %10, align 4, !tbaa !232
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %52, label %50, !prof !575

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %57

52:                                               ; preds = %57, %44
  store i32 -1, ptr %6, align 4, !tbaa !232
  %53 = icmp sgt i32 %45, 0
  br i1 %53, label %54, label %132, !prof !578

54:                                               ; preds = %52
  %55 = getelementptr inbounds i8, ptr %8, i64 8
  %56 = zext nneg i32 %45 to i64
  br label %70

57:                                               ; preds = %50, %57
  %58 = phi i32 [ %48, %50 ], [ %66, %57 ]
  %59 = load ptr, ptr %51, align 8, !tbaa !530
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds %struct.vertex, ptr %59, i64 %60, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !579
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %47, i64 %63
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef %64, i32 noundef %58) #18
  %65 = getelementptr inbounds i32, ptr %4, i64 %60
  %66 = load i32, ptr %65, align 4, !tbaa !232
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %52, label %57, !prof !576, !llvm.loop !580

68:                                               ; preds = %119, %114
  %69 = icmp sgt i64 %71, 1
  br i1 %69, label %70, label %77, !prof !581, !llvm.loop !582

70:                                               ; preds = %54, %68
  %71 = phi i64 [ %56, %54 ], [ %72, %68 ]
  %72 = add nsw i64 %71, -1
  %73 = getelementptr inbounds ptr, ptr %47, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !225
  %75 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %74, i32 noundef 0, ptr noundef nonnull %6) #18, !range !518
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %112, label %80, !prof !583

77:                                               ; preds = %68
  br i1 %53, label %78, label %132, !prof !584

78:                                               ; preds = %77
  %79 = zext nneg i32 %45 to i64
  br label %127

80:                                               ; preds = %70, %104
  %81 = phi i32 [ %106, %104 ], [ 0, %70 ]
  %82 = phi ptr [ %105, %104 ], [ null, %70 ]
  %83 = load i32, ptr %6, align 4, !tbaa !232
  %84 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef %83) #18
  %85 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %84) #18
  %86 = extractvalue { i32, ptr } %85, 1
  store i32 0, ptr %8, align 8, !tbaa.struct !343
  store ptr %86, ptr %55, align 8, !tbaa.struct !302
  %87 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %86, ptr noundef nonnull %7) #18, !range !236
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %104, label %89, !prof !583

89:                                               ; preds = %80, %98
  %90 = phi ptr [ %99, %98 ], [ %82, %80 ]
  %91 = load ptr, ptr %7, align 8, !tbaa !225
  %92 = load ptr, ptr %91, align 8, !tbaa !332
  %93 = tail call fastcc ptr @root_of_dom_tree(ptr noundef %92) #18
  %94 = icmp eq ptr %93, %24
  br i1 %94, label %95, label %98, !prof !585

95:                                               ; preds = %89
  %96 = load ptr, ptr %91, align 8, !tbaa !332
  %97 = tail call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %90, ptr noundef %96) #18
  br label %98

98:                                               ; preds = %89, %95
  %99 = phi ptr [ %90, %89 ], [ %97, %95 ]
  call fastcc void @ei_next(ptr noundef nonnull %8) #18
  %100 = load i32, ptr %8, align 8
  %101 = load ptr, ptr %55, align 8
  %102 = call fastcc zeroext i8 @ei_cond(i32 %100, ptr %101, ptr noundef nonnull %7) #18, !range !236
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %89, !prof !586, !llvm.loop !587

104:                                              ; preds = %98, %80
  %105 = phi ptr [ %82, %80 ], [ %99, %98 ]
  %106 = add i32 %81, 1
  %107 = load ptr, ptr %73, align 8, !tbaa !225
  %108 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %107, i32 noundef %106, ptr noundef nonnull %6) #18, !range !518
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %80, !prof !588, !llvm.loop !589

110:                                              ; preds = %104
  %111 = icmp eq ptr %105, null
  br i1 %111, label %112, label %114, !prof !271

112:                                              ; preds = %70, %110
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1195, ptr noundef nonnull @.str.1) #19
  %113 = load ptr, ptr %73, align 8, !tbaa !225
  br label %114

114:                                              ; preds = %110, %112
  %115 = phi ptr [ %105, %110 ], [ null, %112 ]
  %116 = phi ptr [ %107, %110 ], [ %113, %112 ]
  %117 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %116, i32 noundef 0, ptr noundef nonnull %6) #18, !range !518
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %68, label %119, !prof !583

119:                                              ; preds = %114, %119
  %120 = phi i32 [ %123, %119 ], [ 0, %114 ]
  %121 = load i32, ptr %6, align 4, !tbaa !232
  %122 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef %121) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %122, ptr noundef %115) #18
  %123 = add i32 %120, 1
  %124 = load ptr, ptr %73, align 8, !tbaa !225
  %125 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %124, i32 noundef %123, ptr noundef nonnull %6) #18, !range !518
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %68, label %119, !prof !588, !llvm.loop !590

127:                                              ; preds = %78, %127
  %128 = phi i64 [ 0, %78 ], [ %130, %127 ]
  %129 = getelementptr inbounds ptr, ptr %47, i64 %128
  tail call fastcc void @VEC_int_heap_free(ptr noundef %129) #18
  %130 = add nuw nsw i64 %128, 1
  %131 = icmp eq i64 %130, %79
  br i1 %131, label %132, label %127, !prof !576, !llvm.loop !591

132:                                              ; preds = %127, %52, %77
  tail call void @free(ptr noundef %47) #18
  %133 = load i32, ptr %10, align 4, !tbaa !232
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %141, label %135, !prof !575

135:                                              ; preds = %132, %135
  %136 = phi i32 [ %139, %135 ], [ %133, %132 ]
  tail call void @identify_vertices(ptr noundef %0, i32 noundef %2, i32 noundef %136) #19
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, ptr %4, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !232
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %135, !prof !576, !llvm.loop !592

141:                                              ; preds = %135, %132, %5, %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  ret void
}

; Function Attrs: optsize
declare void @free_graph(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !593 !PGOFuncName !594 {
  %2 = load ptr, ptr %0, align 8, !tbaa !595
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !596 !PGOFuncName !597 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #18
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 !prof !598 !PGOFuncName !599 {
  %3 = load i32, ptr %0, align 8, !tbaa !420
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 8, !tbaa !420
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !225
  store ptr %9, ptr %5, align 8, !tbaa !225
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !596 !PGOFuncName !600 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #18, !range !236
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !601

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !595
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
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !602 !PGOFuncName !603 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !225
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !604 !PGOFuncName !605 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !606

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !607
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !609

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !232
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !232
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #13 !prof !602 !PGOFuncName !610 {
  %2 = load ptr, ptr %0, align 8, !tbaa !225
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !611

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !225
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !602 !PGOFuncName !612 {
  %2 = load ptr, ptr %0, align 8, !tbaa !225
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !613

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #19
  store ptr %6, ptr %0, align 8, !tbaa !225
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !602 !PGOFuncName !614 {
  %3 = load i32, ptr %0, align 4, !tbaa !607
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !607
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !232
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !602 !PGOFuncName !615 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !613

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !616
  %6 = load i32, ptr %0, align 4, !tbaa !607
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
define dso_local void @add_to_dominance_info(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !617 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = load ptr, ptr @cfun, align 8, !tbaa !225
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !229
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 8, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !232
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !618

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1388, ptr noundef nonnull @.str.1) #19
  br label %12

12:                                               ; preds = %2, %11
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %7
  %14 = load ptr, ptr %13, align 8, !tbaa !225
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !619

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1389, ptr noundef nonnull @.str.1) #19
  br label %17

17:                                               ; preds = %12, %16
  %18 = load ptr, ptr @cfun, align 8, !tbaa !225
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !229
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 9, i64 %7
  %22 = load i32, ptr %21, align 4, !tbaa !232
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !232
  %24 = tail call ptr @et_new_tree(ptr noundef nonnull %1) #19
  store ptr %24, ptr %13, align 8, !tbaa !225
  %25 = load ptr, ptr @cfun, align 8, !tbaa !225
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !229
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 8, i64 %7
  %29 = load i32, ptr %28, align 4, !tbaa !232
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %32, !prof !620

31:                                               ; preds = %17
  store i32 1, ptr %28, align 4, !tbaa !232
  br label %32

32:                                               ; preds = %31, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_from_dominance_info(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !621 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = load ptr, ptr @cfun, align 8, !tbaa !225
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !229
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 8, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !232
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !622

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1404, ptr noundef nonnull @.str.1) #19
  br label %12

12:                                               ; preds = %2, %11
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %7
  %14 = load ptr, ptr %13, align 8, !tbaa !225
  tail call void @et_free_tree(ptr noundef %14) #19
  store ptr null, ptr %13, align 8, !tbaa !225
  %15 = load ptr, ptr @cfun, align 8, !tbaa !225
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !229
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 9, i64 %7
  %19 = load i32, ptr %18, align 4, !tbaa !232
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 4, !tbaa !232
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 8, i64 %7
  %22 = load i32, ptr %21, align 4, !tbaa !232
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %25, !prof !623

24:                                               ; preds = %12
  store i32 1, ptr %21, align 4, !tbaa !232
  br label %25

25:                                               ; preds = %24, %12
  ret void
}

; Function Attrs: optsize
declare void @et_free_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @dom_info_state(i32 noundef %0) local_unnamed_addr #0 !prof !624 {
  %2 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %3 = load ptr, ptr @cfun, align 8, !tbaa !225
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !229
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 8, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !232
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_dom_info_availability(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !501 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = load ptr, ptr @cfun, align 8, !tbaa !225
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !229
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 8, i64 %7
  store i32 %1, ptr %8, align 4, !tbaa !232
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_dominance_info(i32 noundef %0) local_unnamed_addr #0 !prof !501 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !225
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !229
  %5 = load ptr, ptr %4, align 8, !tbaa !245
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !246
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !249
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %31, label %11

11:                                               ; preds = %1, %22
  %12 = phi ptr [ %24, %22 ], [ %7, %1 ]
  %13 = tail call ptr @get_immediate_dominator(i32 noundef %0, ptr noundef %12) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @stderr, align 8, !tbaa !225
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !254
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !254
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.5, i32 noundef %18, i32 noundef %20) #20
  br label %22

22:                                               ; preds = %11, %15
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !246
  %25 = load ptr, ptr @cfun, align 8, !tbaa !225
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !229
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !249
  %30 = icmp eq ptr %24, %29
  br i1 %30, label %31, label %11, !llvm.loop !625

31:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_dominance_tree(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !501 {
  tail call fastcc void @debug_dominance_tree_1(i32 noundef %0, ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @debug_dominance_tree_1(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !501 !PGOFuncName !626 {
  %5 = icmp ne i8 %3, 0
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %10 = load ptr, ptr @stderr, align 8, !tbaa !225
  %11 = tail call i32 @fputc(i32 9, ptr %10)
  %12 = add nuw i32 %9, 1
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %8, !llvm.loop !627

14:                                               ; preds = %8, %4
  %15 = load ptr, ptr @stderr, align 8, !tbaa !225
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !254
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
  br i1 %27, label %31, label %23, !llvm.loop !628

28:                                               ; preds = %14
  %29 = load ptr, ptr @stderr, align 8, !tbaa !225
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!223}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222}
!36 = !{ptr @calculate_dominance_info, ptr @dom_convert_dir_to_idx, i64 486459}
!37 = !{ptr @calculate_dominance_info, ptr @timevar_push_1, i64 1}
!38 = !{ptr @calculate_dominance_info, ptr @dom_info_available_p, i64 246292}
!39 = !{ptr @calculate_dominance_info, ptr @fancy_abort, i64 1}
!40 = !{ptr @calculate_dominance_info, ptr @et_new_tree, i64 8156076}
!41 = !{ptr @calculate_dominance_info, ptr @init_dom_info, i64 180940}
!42 = !{ptr @calculate_dominance_info, ptr @calc_dfs_tree, i64 180940}
!43 = !{ptr @calculate_dominance_info, ptr @calc_idoms, i64 180940}
!44 = !{ptr @calculate_dominance_info, ptr @et_set_father, i64 7794198}
!45 = !{ptr @calculate_dominance_info, ptr @free_dom_info, i64 180940}
!46 = !{ptr @calculate_dominance_info, ptr @compute_dom_fast_query, i64 246292}
!47 = !{ptr @calculate_dominance_info, ptr @timevar_pop_1, i64 1}
!48 = !{ptr @dom_convert_dir_to_idx, ptr @fancy_abort, i64 1}
!49 = !{ptr @dom_info_available_p, ptr @dom_convert_dir_to_idx, i64 5771556}
!50 = !{ptr @init_dom_info, ptr @xcalloc, i64 1447520}
!51 = !{ptr @init_dom_info, ptr @xmalloc, i64 542820}
!52 = !{ptr @init_dom_info, ptr @bitmap_obstack_alloc_stat, i64 93021}
!53 = !{ptr @init_dom_info, ptr @fancy_abort, i64 1}
!54 = !{ptr @calc_dfs_tree, ptr @calc_dfs_tree_nonrec, i64 215440}
!55 = !{ptr @calc_dfs_tree, ptr @VEC_edge_base_length, i64 3967253}
!56 = !{ptr @calc_dfs_tree, ptr @bitmap_set_bit, i64 34500}
!57 = !{ptr @calc_dfs_tree, ptr @fancy_abort, i64 1}
!58 = !{ptr @calc_idoms, ptr @ei_start_1, i64 7794220}
!59 = !{ptr @calc_idoms, ptr @bitmap_bit_p, i64 1}
!60 = !{ptr @calc_idoms, ptr @ei_end_p, i64 39815971}
!61 = !{ptr @calc_idoms, ptr @ei_edge, i64 12236849}
!62 = !{ptr @calc_idoms, ptr @ei_next, i64 12236849}
!63 = !{ptr @calc_idoms, ptr @eval, i64 16843174}
!64 = !{ptr @calc_idoms, ptr @link_roots, i64 7794220}
!65 = !{ptr @free_dom_info, ptr @free, i64 1990340}
!66 = !{ptr @free_dom_info, ptr @bitmap_obstack_free, i64 180940}
!67 = !{ptr @compute_dom_fast_query, ptr @dom_convert_dir_to_idx, i64 246292}
!68 = !{ptr @compute_dom_fast_query, ptr @dom_info_available_p, i64 246292}
!69 = !{ptr @compute_dom_fast_query, ptr @fancy_abort, i64 1}
!70 = !{ptr @compute_dom_fast_query, ptr @assign_dfs_numbers, i64 493388}
!71 = !{ptr @calc_dfs_tree_nonrec, ptr @xmalloc, i64 215438}
!72 = !{ptr @calc_dfs_tree_nonrec, ptr @ei_start_1, i64 20710552}
!73 = !{ptr @calc_dfs_tree_nonrec, ptr @ei_end_p, i64 40801781}
!74 = !{ptr @calc_dfs_tree_nonrec, ptr @ei_edge, i64 32826614}
!75 = !{ptr @calc_dfs_tree_nonrec, ptr @ei_next, i64 20091229}
!76 = !{ptr @calc_dfs_tree_nonrec, ptr @fancy_abort, i64 3}
!77 = !{ptr @calc_dfs_tree_nonrec, ptr @free, i64 215438}
!78 = !{ptr @ei_end_p, ptr @ei_container, i64 82746097}
!79 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 41378557}
!80 = !{ptr @ei_edge, ptr @ei_container, i64 51026071}
!81 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 25513036}
!82 = !{ptr @ei_next, ptr @ei_container, i64 51026071}
!83 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 25513036}
!84 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!85 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!86 = !{ptr @eval, ptr @compress, i64 2033181}
!87 = !{ptr @compress, ptr @compress, i64 2555990}
!88 = !{ptr @assign_dfs_numbers, ptr @assign_dfs_numbers, i64 14577886}
!89 = !{ptr @free_dominance_info, ptr @dom_convert_dir_to_idx, i64 762492}
!90 = !{ptr @free_dominance_info, ptr @dom_info_available_p, i64 762492}
!91 = !{ptr @free_dominance_info, ptr @et_free_tree_force, i64 7849251}
!92 = !{ptr @free_dominance_info, ptr @et_free_pools, i64 180941}
!93 = !{ptr @get_immediate_dominator, ptr @dom_convert_dir_to_idx, i64 16862387}
!94 = !{ptr @get_immediate_dominator, ptr @fancy_abort, i64 1}
!95 = !{ptr @set_immediate_dominator, ptr @dom_convert_dir_to_idx, i64 831225}
!96 = !{ptr @set_immediate_dominator, ptr @fancy_abort, i64 1}
!97 = !{ptr @set_immediate_dominator, ptr @et_split, i64 209818}
!98 = !{ptr @set_immediate_dominator, ptr @et_set_father, i64 397782}
!99 = !{ptr @get_dominated_by, ptr @dom_convert_dir_to_idx, i64 5121}
!100 = !{ptr @get_dominated_by, ptr @fancy_abort, i64 1}
!101 = !{ptr @get_dominated_by, ptr @VEC_basic_block_heap_safe_push, i64 4920}
!102 = !{ptr @VEC_basic_block_heap_safe_push, ptr @VEC_basic_block_heap_reserve, i64 1768588}
!103 = !{ptr @VEC_basic_block_heap_safe_push, ptr @VEC_basic_block_base_quick_push, i64 1768588}
!104 = !{ptr @VEC_basic_block_heap_reserve, ptr @VEC_basic_block_base_space, i64 1768588}
!105 = !{ptr @VEC_basic_block_heap_reserve, ptr @vec_heap_p_reserve, i64 173601}
!106 = !{ptr @get_dominated_by_region, ptr @first_dom_son, i64 10099}
!107 = !{ptr @get_dominated_by_region, ptr @VEC_basic_block_heap_safe_push, i64 14733}
!108 = !{ptr @get_dominated_by_region, ptr @next_dom_son, i64 16194}
!109 = !{ptr @first_dom_son, ptr @dom_convert_dir_to_idx, i64 13303598}
!110 = !{ptr @next_dom_son, ptr @dom_convert_dir_to_idx, i64 12667434}
!111 = !{ptr @get_all_dominated_blocks, ptr @VEC_basic_block_heap_safe_push, i64 1748904}
!112 = !{ptr @get_all_dominated_blocks, ptr @VEC_basic_block_base_index, i64 1748903}
!113 = !{ptr @get_all_dominated_blocks, ptr @first_dom_son, i64 1748903}
!114 = !{ptr @get_all_dominated_blocks, ptr @next_dom_son, i64 1694357}
!115 = !{ptr @get_all_dominated_blocks, ptr @VEC_basic_block_base_length, i64 1748903}
!116 = !{ptr @redirect_immediate_dominators, ptr @dom_convert_dir_to_idx, i64 129369}
!117 = !{ptr @redirect_immediate_dominators, ptr @fancy_abort, i64 1}
!118 = !{ptr @redirect_immediate_dominators, ptr @et_split, i64 169043}
!119 = !{ptr @redirect_immediate_dominators, ptr @et_set_father, i64 169043}
!120 = !{ptr @nearest_common_dominator, ptr @dom_convert_dir_to_idx, i64 2062670}
!121 = !{ptr @nearest_common_dominator, ptr @fancy_abort, i64 1}
!122 = !{ptr @nearest_common_dominator, ptr @et_nca, i64 2002278}
!123 = !{ptr @nearest_common_dominator_for_set, ptr @bitmap_first_set_bit, i64 136776}
!124 = !{ptr @nearest_common_dominator_for_set, ptr @VEC_basic_block_base_index, i64 1252607}
!125 = !{ptr @nearest_common_dominator_for_set, ptr @bmp_iter_set_init, i64 136776}
!126 = !{ptr @nearest_common_dominator_for_set, ptr @bmp_iter_set, i64 1252607}
!127 = !{ptr @nearest_common_dominator_for_set, ptr @nearest_common_dominator, i64 968696}
!128 = !{ptr @nearest_common_dominator_for_set, ptr @bmp_iter_next, i64 1115831}
!129 = !{ptr @dominated_by_p, ptr @dom_convert_dir_to_idx, i64 38356208}
!130 = !{ptr @dominated_by_p, ptr @fancy_abort, i64 1}
!131 = !{ptr @dominated_by_p, ptr @et_below, i64 4344399}
!132 = !{ptr @bb_dom_dfs_in, ptr @dom_convert_dir_to_idx, i64 1586611}
!133 = !{ptr @bb_dom_dfs_in, ptr @fancy_abort, i64 1}
!134 = !{ptr @bb_dom_dfs_out, ptr @dom_convert_dir_to_idx, i64 718341}
!135 = !{ptr @bb_dom_dfs_out, ptr @fancy_abort, i64 1}
!136 = !{ptr @recompute_dominator, ptr @dom_convert_dir_to_idx, i64 45512}
!137 = !{ptr @recompute_dominator, ptr @fancy_abort, i64 1}
!138 = !{ptr @recompute_dominator, ptr @ei_start_1, i64 45512}
!139 = !{ptr @recompute_dominator, ptr @ei_cond, i64 161400}
!140 = !{ptr @recompute_dominator, ptr @dominated_by_p, i64 115888}
!141 = !{ptr @recompute_dominator, ptr @nearest_common_dominator, i64 77828}
!142 = !{ptr @recompute_dominator, ptr @ei_next, i64 115888}
!143 = !{ptr @ei_cond, ptr @ei_end_p, i64 943521}
!144 = !{ptr @ei_cond, ptr @ei_edge, i64 847463}
!145 = !{ptr @iterate_fix_dominators, ptr @dom_convert_dir_to_idx, i64 55590}
!146 = !{ptr @iterate_fix_dominators, ptr @fancy_abort, i64 2}
!147 = !{ptr @iterate_fix_dominators, ptr @VEC_basic_block_base_iterate, i64 213966}
!148 = !{ptr @iterate_fix_dominators, ptr @set_immediate_dominator, i64 130415}
!149 = !{ptr @iterate_fix_dominators, ptr @prune_bbs_to_update_dominators, i64 55590}
!150 = !{ptr @iterate_fix_dominators, ptr @VEC_basic_block_base_length, i64 55590}
!151 = !{ptr @iterate_fix_dominators, ptr @VEC_basic_block_base_index, i64 34142}
!152 = !{ptr @iterate_fix_dominators, ptr @recompute_dominator, i64 34142}
!153 = !{ptr @iterate_fix_dominators, ptr @pointer_map_create, i64 12107}
!154 = !{ptr @iterate_fix_dominators, ptr @pointer_map_insert, i64 38353}
!155 = !{ptr @iterate_fix_dominators, ptr @new_graph, i64 12107}
!156 = !{ptr @iterate_fix_dominators, ptr @bitmap_obstack_alloc_stat, i64 38353}
!157 = !{ptr @iterate_fix_dominators, ptr @ei_start_1, i64 26246}
!158 = !{ptr @iterate_fix_dominators, ptr @ei_cond, i64 101928}
!159 = !{ptr @iterate_fix_dominators, ptr @root_of_dom_tree, i64 75682}
!160 = !{ptr @iterate_fix_dominators, ptr @pointer_map_contains, i64 67511}
!161 = !{ptr @iterate_fix_dominators, ptr @bitmap_bit_p, i64 67511}
!162 = !{ptr @iterate_fix_dominators, ptr @bitmap_set_bit, i64 37874}
!163 = !{ptr @iterate_fix_dominators, ptr @add_edge, i64 37874}
!164 = !{ptr @iterate_fix_dominators, ptr @ei_next, i64 75682}
!165 = !{ptr @iterate_fix_dominators, ptr @bitmap_obstack_free, i64 38353}
!166 = !{ptr @iterate_fix_dominators, ptr @pointer_map_destroy, i64 12107}
!167 = !{ptr @iterate_fix_dominators, ptr @xmalloc, i64 36321}
!168 = !{ptr @iterate_fix_dominators, ptr @graphds_domtree, i64 12107}
!169 = !{ptr @iterate_fix_dominators, ptr @determine_dominators_for_sons, i64 38353}
!170 = !{ptr @iterate_fix_dominators, ptr @free, i64 36321}
!171 = !{ptr @iterate_fix_dominators, ptr @free_graph, i64 12107}
!172 = !{ptr @prune_bbs_to_update_dominators, ptr @VEC_basic_block_base_iterate, i64 303540}
!173 = !{ptr @prune_bbs_to_update_dominators, ptr @single_pred_p, i64 247949}
!174 = !{ptr @prune_bbs_to_update_dominators, ptr @single_pred, i64 139053}
!175 = !{ptr @prune_bbs_to_update_dominators, ptr @set_immediate_dominator, i64 146641}
!176 = !{ptr @prune_bbs_to_update_dominators, ptr @ei_start_1, i64 15804}
!177 = !{ptr @prune_bbs_to_update_dominators, ptr @ei_cond, i64 1037659}
!178 = !{ptr @prune_bbs_to_update_dominators, ptr @dominated_by_p, i64 1021855}
!179 = !{ptr @prune_bbs_to_update_dominators, ptr @nearest_common_dominator, i64 1005743}
!180 = !{ptr @prune_bbs_to_update_dominators, ptr @ei_next, i64 1021855}
!181 = !{ptr @prune_bbs_to_update_dominators, ptr @fancy_abort, i64 2}
!182 = !{ptr @prune_bbs_to_update_dominators, ptr @find_edge, i64 15504}
!183 = !{ptr @prune_bbs_to_update_dominators, ptr @VEC_basic_block_base_unordered_remove, i64 146642}
!184 = !{ptr @root_of_dom_tree, ptr @dom_convert_dir_to_idx, i64 122453}
!185 = !{ptr @root_of_dom_tree, ptr @et_root, i64 122453}
!186 = !{ptr @determine_dominators_for_sons, ptr @VEC_basic_block_base_length, i64 17795}
!187 = !{ptr @determine_dominators_for_sons, ptr @VEC_basic_block_base_index, i64 46811}
!188 = !{ptr @determine_dominators_for_sons, ptr @recompute_dominator, i64 11369}
!189 = !{ptr @determine_dominators_for_sons, ptr @set_immediate_dominator, i64 26246}
!190 = !{ptr @determine_dominators_for_sons, ptr @identify_vertices, i64 26246}
!191 = !{ptr @determine_dominators_for_sons, ptr @bitmap_obstack_alloc_stat, i64 6426}
!192 = !{ptr @determine_dominators_for_sons, ptr @bitmap_set_bit, i64 14877}
!193 = !{ptr @determine_dominators_for_sons, ptr @graphds_scc, i64 6426}
!194 = !{ptr @determine_dominators_for_sons, ptr @bitmap_obstack_free, i64 6426}
!195 = !{ptr @determine_dominators_for_sons, ptr @xcalloc, i64 6426}
!196 = !{ptr @determine_dominators_for_sons, ptr @VEC_int_heap_safe_push, i64 14877}
!197 = !{ptr @determine_dominators_for_sons, ptr @VEC_int_base_iterate, i64 59508}
!198 = !{ptr @determine_dominators_for_sons, ptr @ei_start_1, i64 14877}
!199 = !{ptr @determine_dominators_for_sons, ptr @ei_cond, i64 61641}
!200 = !{ptr @determine_dominators_for_sons, ptr @root_of_dom_tree, i64 46764}
!201 = !{ptr @determine_dominators_for_sons, ptr @nearest_common_dominator, i64 41105}
!202 = !{ptr @determine_dominators_for_sons, ptr @ei_next, i64 46764}
!203 = !{ptr @determine_dominators_for_sons, ptr @fancy_abort, i64 1}
!204 = !{ptr @determine_dominators_for_sons, ptr @VEC_int_heap_free, i64 14877}
!205 = !{ptr @determine_dominators_for_sons, ptr @free, i64 6426}
!206 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 230690}
!207 = !{ptr @single_pred, ptr @single_pred_edge, i64 82889}
!208 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 82889}
!209 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!210 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 82889}
!211 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_heap_reserve, i64 14878}
!212 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_base_quick_push, i64 14878}
!213 = !{ptr @VEC_int_heap_free, ptr @free, i64 14877}
!214 = !{ptr @VEC_int_heap_reserve, ptr @VEC_int_base_space, i64 14878}
!215 = !{ptr @VEC_int_heap_reserve, ptr @vec_heap_o_reserve, i64 14877}
!216 = !{ptr @add_to_dominance_info, ptr @dom_convert_dir_to_idx, i64 202930}
!217 = !{ptr @add_to_dominance_info, ptr @fancy_abort, i64 2}
!218 = !{ptr @add_to_dominance_info, ptr @et_new_tree, i64 202930}
!219 = !{ptr @delete_from_dominance_info, ptr @dom_convert_dir_to_idx, i64 509801}
!220 = !{ptr @delete_from_dominance_info, ptr @fancy_abort, i64 1}
!221 = !{ptr @delete_from_dominance_info, ptr @et_free_tree, i64 509801}
!222 = !{ptr @dom_info_state, ptr @dom_convert_dir_to_idx, i64 1291555}
!223 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!224 = !{!"function_entry_count", i64 486459}
!225 = !{!226, !226, i64 0}
!226 = !{!"any pointer", !227, i64 0}
!227 = !{!"omnipotent char", !228, i64 0}
!228 = !{!"Simple C/C++ TBAA"}
!229 = !{!230, !226, i64 8}
!230 = !{!"function", !226, i64 0, !226, i64 8, !226, i64 16, !226, i64 24, !226, i64 32, !226, i64 40, !226, i64 48, !226, i64 56, !226, i64 64, !226, i64 72, !226, i64 80, !226, i64 88, !226, i64 96, !231, i64 104, !231, i64 108, !231, i64 112, !231, i64 116, !231, i64 120, !231, i64 124, !226, i64 128, !231, i64 136, !231, i64 137, !231, i64 138, !231, i64 138, !231, i64 138, !231, i64 138, !231, i64 138, !231, i64 138, !231, i64 138, !231, i64 139, !231, i64 139, !231, i64 139, !231, i64 139, !231, i64 139, !231, i64 139, !231, i64 139}
!231 = !{!"int", !227, i64 0}
!232 = !{!231, !231, i64 0}
!233 = !{!"branch_weights", i32 240168, i32 246293}
!234 = !{!227, !227, i64 0}
!235 = !{!"branch_weights", i32 246293, i32 1}
!236 = !{i8 0, i8 2}
!237 = !{!"branch_weights", i32 180941, i32 65353}
!238 = !{!"branch_weights", i32 180941, i32 1}
!239 = !{!"branch_weights", i32 1, i32 180940}
!240 = !{!"branch_weights", i32 180940, i32 7975203}
!241 = distinct !{!241, !242}
!242 = !{!"llvm.loop.mustprogress"}
!243 = !{!244, !231, i64 24}
!244 = !{!"control_flow_graph", !226, i64 0, !226, i64 8, !226, i64 16, !231, i64 24, !231, i64 28, !231, i64 32, !226, i64 40, !231, i64 48, !227, i64 52, !227, i64 60, !231, i64 68, !231, i64 72}
!245 = !{!244, !226, i64 0}
!246 = !{!247, !226, i64 56}
!247 = !{!"basic_block_def", !226, i64 0, !226, i64 8, !226, i64 16, !226, i64 24, !227, i64 32, !226, i64 48, !226, i64 56, !227, i64 64, !248, i64 72, !231, i64 80, !231, i64 84, !231, i64 88, !231, i64 92, !231, i64 96}
!248 = !{!"long", !227, i64 0}
!249 = !{!244, !226, i64 8}
!250 = !{!251, !226, i64 40}
!251 = !{!"dom_info", !226, i64 0, !226, i64 8, !226, i64 16, !226, i64 24, !226, i64 32, !226, i64 40, !226, i64 48, !226, i64 56, !226, i64 64, !226, i64 72, !226, i64 80, !231, i64 88, !231, i64 92, !226, i64 96}
!252 = !{!251, !226, i64 72}
!253 = !{!251, !226, i64 80}
!254 = !{!247, !231, i64 80}
!255 = !{!"branch_weights", i32 1, i32 7794263}
!256 = !{!"branch_weights", i32 180940, i32 7613323}
!257 = distinct !{!257, !242}
!258 = !{!"function_entry_count", i64 96017604}
!259 = !{!"dominance.c:dom_convert_dir_to_idx"}
!260 = !{!"branch_weights", i32 -1241315607, i32 31}
!261 = !{!"function_entry_count", i64 5771556}
!262 = !{!"function_entry_count", i64 180940}
!263 = !{!"dominance.c:init_dom_info"}
!264 = !{!251, !226, i64 0}
!265 = !{!251, !226, i64 16}
!266 = !{!"branch_weights", i32 180940, i32 1809400}
!267 = distinct !{!267, !242, !268, !269}
!268 = !{!"llvm.loop.isvectorized", i32 1}
!269 = !{!"llvm.loop.unroll.runtime.disable"}
!270 = !{!251, !226, i64 8}
!271 = !{!"branch_weights", i32 0, i32 -2147483648}
!272 = distinct !{!272, !242, !268, !269}
!273 = !{!251, !226, i64 24}
!274 = !{!251, !226, i64 32}
!275 = !{!251, !226, i64 48}
!276 = !{!251, !226, i64 56}
!277 = distinct !{!277, !242, !268, !269}
!278 = !{!251, !226, i64 64}
!279 = !{!244, !231, i64 32}
!280 = !{!251, !231, i64 88}
!281 = !{!251, !231, i64 92}
!282 = !{!"branch_weights", i32 1, i32 87919, i32 93023}
!283 = !{!251, !226, i64 96}
!284 = !{!"dominance.c:calc_dfs_tree"}
!285 = !{!"branch_weights", i32 87919, i32 93023}
!286 = !{!247, !226, i64 48}
!287 = !{!"branch_weights", i32 1, i32 93022}
!288 = !{!247, !226, i64 8}
!289 = !{!"branch_weights", i32 34456, i32 3932842}
!290 = !{!"branch_weights", i32 170, i32 3932673}
!291 = !{!"branch_weights", i32 93022, i32 3874275}
!292 = distinct !{!292, !242}
!293 = !{!"branch_weights", i32 2145636408, i32 1847240}
!294 = !{!"branch_weights", i32 1, i32 167}
!295 = !{!"branch_weights", i32 44, i32 19969}
!296 = !{!"branch_weights", i32 167, i32 39857}
!297 = distinct !{!297, !242}
!298 = !{!"dominance.c:calc_idoms"}
!299 = !{!"branch_weights", i32 180940, i32 1}
!300 = !{!"branch_weights", i32 7794263, i32 1}
!301 = !{!"branch_weights", i32 3932799, i32 34499}
!302 = !{i64 0, i64 8, !225}
!303 = !{!304, !231, i64 0}
!304 = !{!"", !231, i64 0, !226, i64 8}
!305 = !{!"branch_weights", i32 12236917, i32 7794263}
!306 = !{!"branch_weights", i32 5994247, i32 6242671}
!307 = !{!"branch_weights", i32 198276, i32 12038642}
!308 = !{!"branch_weights", i32 3462573, i32 8808843}
!309 = distinct !{!309, !242}
!310 = !{!"branch_weights", i32 1, i32 7794262}
!311 = !{!"branch_weights", i32 193276, i32 7600988}
!312 = !{!"branch_weights", i32 7794262, i32 1}
!313 = distinct !{!313, !242}
!314 = distinct !{!314, !242}
!315 = !{!"branch_weights", i32 7600988, i32 193276}
!316 = distinct !{!316, !242}
!317 = !{!"dominance.c:free_dom_info"}
!318 = !{!"function_entry_count", i64 246292}
!319 = !{!"dominance.c:compute_dom_fast_query"}
!320 = !{!"branch_weights", i32 1, i32 246293}
!321 = !{!"branch_weights", i32 1, i32 246292}
!322 = !{!323, !226, i64 16}
!323 = !{!"et_node", !226, i64 0, !231, i64 8, !231, i64 12, !226, i64 16, !226, i64 24, !226, i64 32, !226, i64 40, !226, i64 48, !226, i64 56}
!324 = !{!"branch_weights", i32 493392, i32 14577887}
!325 = !{!"branch_weights", i32 246292, i32 14824986}
!326 = distinct !{!326, !242}
!327 = !{!"function_entry_count", i64 215438}
!328 = !{!"dominance.c:calc_dfs_tree_nonrec"}
!329 = !{!"branch_weights", i32 87919, i32 127521}
!330 = !{!"branch_weights", i32 127, i32 1}
!331 = !{!"branch_weights", i32 6092965, i32 6335693}
!332 = !{!333, !226, i64 0}
!333 = !{!"edge_def", !226, i64 0, !226, i64 8, !227, i64 16, !226, i64 24, !226, i64 32, !231, i64 40, !231, i64 44, !231, i64 48, !231, i64 52, !248, i64 56}
!334 = !{!"branch_weights", i32 93023, i32 6242671}
!335 = !{!"branch_weights", i32 3932799, i32 2309873}
!336 = !{!"branch_weights", i32 4453455, i32 7975202}
!337 = distinct !{!337, !242}
!338 = !{!333, !226, i64 8}
!339 = !{!"branch_weights", i32 98719, i32 5994247}
!340 = !{!"branch_weights", i32 3826967, i32 2167281}
!341 = !{!"branch_weights", i32 1, i32 7759765}
!342 = !{!"branch_weights", i32 198276, i32 7561490}
!343 = !{i64 0, i64 4, !232, i64 8, i64 8, !225}
!344 = !{!"branch_weights", i32 1020825729, i32 127}
!345 = !{!"branch_weights", i32 215439, i32 7759765}
!346 = !{!"function_entry_count", i64 71089579}
!347 = !{!"dominance.c:VEC_edge_base_length"}
!348 = !{!"branch_weights", i32 13498, i32 71076083}
!349 = !{!350, !231, i64 0}
!350 = !{!"VEC_edge_base", !231, i64 0, !231, i64 4, !227, i64 8}
!351 = !{!"function_entry_count", i64 15865521}
!352 = !{!"dominance.c:ei_start_1"}
!353 = !{!"function_entry_count", i64 41378557}
!354 = !{!"dominance.c:ei_end_p"}
!355 = !{!"branch_weights", i32 11017, i32 41367542}
!356 = !{!"function_entry_count", i64 25513036}
!357 = !{!"dominance.c:ei_edge"}
!358 = !{!"branch_weights", i32 1, i32 25513037}
!359 = !{!"dominance.c:ei_next"}
!360 = !{!"branch_weights", i32 25513037, i32 1}
!361 = !{!"function_entry_count", i64 184798242}
!362 = !{!"dominance.c:ei_container"}
!363 = !{!"branch_weights", i32 1, i32 184798243}
!364 = !{!"function_entry_count", i64 25595925}
!365 = !{!"dominance.c:VEC_edge_base_index"}
!366 = !{!"function_entry_count", i64 11256834}
!367 = !{!"dominance.c:eval"}
!368 = !{!"branch_weights", i32 2265846, i32 8990990}
!369 = !{!"branch_weights", i32 6957809, i32 2033182}
!370 = !{!"branch_weights", i32 1174736, i32 7816255}
!371 = !{!"function_entry_count", i64 7794262}
!372 = !{!"dominance.c:link_roots"}
!373 = !{!"branch_weights", i32 3450053, i32 4344210}
!374 = !{!"branch_weights", i32 1947860, i32 1502194}
!375 = !{!"branch_weights", i32 0, i32 3450053}
!376 = distinct !{!376, !242}
!377 = !{!"branch_weights", i32 4355199, i32 3439065}
!378 = !{!"branch_weights", i32 3627439, i32 4166824}
!379 = !{!"branch_weights", i32 4166824, i32 0}
!380 = distinct !{!380, !242}
!381 = !{!"function_entry_count", i64 4589171}
!382 = !{!"dominance.c:compress"}
!383 = !{!"branch_weights", i32 2033182, i32 2555991}
!384 = !{!"branch_weights", i32 1480614, i32 1075378}
!385 = !{!"function_entry_count", i64 15071277}
!386 = !{!"dominance.c:assign_dfs_numbers"}
!387 = !{!323, !231, i64 8}
!388 = !{!323, !226, i64 24}
!389 = !{!"branch_weights", i32 7537067, i32 7534212}
!390 = !{!323, !226, i64 40}
!391 = !{!"branch_weights", i32 490536, i32 7043676}
!392 = !{!"branch_weights", i32 7043676, i32 0}
!393 = distinct !{!393, !242}
!394 = !{!323, !231, i64 12}
!395 = !{!"function_entry_count", i64 762492}
!396 = !{!"branch_weights", i32 581553, i32 180941}
!397 = !{!"branch_weights", i32 180940, i32 7668332}
!398 = distinct !{!398, !242}
!399 = !{!"function_entry_count", i64 16862387}
!400 = !{!"branch_weights", i32 1, i32 16862388}
!401 = !{!"branch_weights", i32 32007, i32 16830382}
!402 = !{!323, !226, i64 0}
!403 = !{!"function_entry_count", i64 831225}
!404 = !{!"branch_weights", i32 1, i32 831226}
!405 = !{!"branch_weights", i32 284239, i32 546988}
!406 = !{!"branch_weights", i32 337170, i32 209819}
!407 = !{!"branch_weights", i32 96275, i32 397783}
!408 = !{!"branch_weights", i32 9034, i32 485024}
!409 = !{!"function_entry_count", i64 5121}
!410 = !{!"branch_weights", i32 1, i32 5122}
!411 = !{!"branch_weights", i32 2252, i32 2871}
!412 = !{!"branch_weights", i32 820, i32 2051}
!413 = !{!"branch_weights", i32 2051, i32 0}
!414 = distinct !{!414, !242}
!415 = !{!"function_entry_count", i64 1768588}
!416 = !{!"dominance.c:VEC_basic_block_heap_safe_push"}
!417 = !{!"dominance.c:VEC_basic_block_heap_reserve"}
!418 = !{!"branch_weights", i32 173601, i32 1594989}
!419 = !{!"dominance.c:VEC_basic_block_base_quick_push"}
!420 = !{!421, !231, i64 0}
!421 = !{!"VEC_basic_block_base", !231, i64 0, !231, i64 4, !227, i64 8}
!422 = !{!"dominance.c:VEC_basic_block_base_space"}
!423 = !{!"branch_weights", i32 66057, i32 1702533}
!424 = !{!421, !231, i64 4}
!425 = !{!"function_entry_count", i64 8639}
!426 = !{!"branch_weights", i32 1, i32 8639}
!427 = !{!247, !231, i64 96}
!428 = !{!"branch_weights", i32 8639, i32 1461}
!429 = distinct !{!429, !242}
!430 = !{!"branch_weights", i32 1, i32 10099}
!431 = !{!"branch_weights", i32 14736, i32 1461}
!432 = !{!"branch_weights", i32 10099, i32 6097}
!433 = distinct !{!433, !242}
!434 = distinct !{!434, !242}
!435 = distinct !{!435, !242}
!436 = !{!"function_entry_count", i64 13303598}
!437 = !{!"branch_weights", i32 6258298, i32 7045302}
!438 = !{!"function_entry_count", i64 12667434}
!439 = !{!"branch_weights", i32 6879896, i32 5787540}
!440 = !{!"function_entry_count", i64 54547}
!441 = !{!"branch_weights", i32 54547, i32 1694387}
!442 = !{!"branch_weights", i32 1694387, i32 0}
!443 = distinct !{!443, !242}
!444 = !{!"branch_weights", i32 1694387, i32 54548}
!445 = distinct !{!445, !242}
!446 = !{!"function_entry_count", i64 4051206}
!447 = !{!"dominance.c:VEC_basic_block_base_index"}
!448 = !{!"function_entry_count", i64 1822318}
!449 = !{!"dominance.c:VEC_basic_block_base_length"}
!450 = !{!"branch_weights", i32 1235, i32 1821085}
!451 = !{!"function_entry_count", i64 129369}
!452 = !{!"branch_weights", i32 1, i32 129370}
!453 = !{!"branch_weights", i32 23136, i32 106235}
!454 = !{!"branch_weights", i32 106235, i32 62811}
!455 = distinct !{!455, !242}
!456 = !{!"branch_weights", i32 5884, i32 100352}
!457 = !{!"function_entry_count", i64 2062670}
!458 = !{!"branch_weights", i32 1, i32 2062671}
!459 = !{!"branch_weights", i32 60391, i32 2002281}
!460 = !{!"branch_weights", i32 1, i32 2002281}
!461 = !{!"function_entry_count", i64 136776}
!462 = !{!244, !226, i64 16}
!463 = !{!"branch_weights", i32 1, i32 136776}
!464 = !{!"branch_weights", i32 147136, i32 968704}
!465 = !{!"branch_weights", i32 136776, i32 979063}
!466 = distinct !{!466, !242}
!467 = !{!"dominance.c:bmp_iter_set_init"}
!468 = !{!469, !226, i64 0}
!469 = !{!"bitmap_head_def", !226, i64 0, !226, i64 8, !231, i64 16, !226, i64 24}
!470 = !{!471, !226, i64 0}
!471 = !{!"", !226, i64 0, !226, i64 8, !231, i64 16, !248, i64 24}
!472 = !{!471, !226, i64 8}
!473 = !{!"branch_weights", i32 1, i32 136777}
!474 = !{!475, !231, i64 16}
!475 = !{!"bitmap_element_def", !226, i64 0, !226, i64 8, !231, i64 16, !227, i64 24}
!476 = !{!471, !231, i64 16}
!477 = !{!248, !248, i64 0}
!478 = !{!471, !248, i64 24}
!479 = !{!"function_entry_count", i64 1252614}
!480 = !{!"dominance.c:bmp_iter_set"}
!481 = !{!"branch_weights", i32 265322, i32 987294}
!482 = !{!"branch_weights", i32 1115838, i32 1}
!483 = !{!"branch_weights", i32 5562120, i32 1115838}
!484 = distinct !{!484, !242}
!485 = !{!"branch_weights", i32 1, i32 198523}
!486 = !{!"branch_weights", i32 131726, i32 128546}
!487 = !{!"branch_weights", i32 198523, i32 61748}
!488 = distinct !{!488, !242}
!489 = !{!475, !226, i64 0}
!490 = !{!"branch_weights", i32 136777, i32 61748}
!491 = !{!"function_entry_count", i64 1115838}
!492 = !{!"dominance.c:bmp_iter_next"}
!493 = !{!"function_entry_count", i64 38356208}
!494 = !{!"branch_weights", i32 1, i32 38356209}
!495 = !{!"branch_weights", i32 34011811, i32 4344399}
!496 = !{!"branch_weights", i32 13699245, i32 20312567}
!497 = !{!"function_entry_count", i64 1586611}
!498 = !{!"branch_weights", i32 1586612, i32 1}
!499 = !{!"function_entry_count", i64 718341}
!500 = !{!"branch_weights", i32 718342, i32 1}
!501 = !{!"function_entry_count", i64 0}
!502 = distinct !{!502, !242}
!503 = !{!"function_entry_count", i64 45512}
!504 = !{!"branch_weights", i32 1, i32 45513}
!505 = !{!"branch_weights", i32 45513, i32 1}
!506 = !{!"branch_weights", i32 1, i32 45512}
!507 = !{!"branch_weights", i32 77825, i32 38049}
!508 = !{!"branch_weights", i32 45512, i32 70361}
!509 = distinct !{!509, !242}
!510 = distinct !{!510, !242}
!511 = !{!"function_entry_count", i64 943521}
!512 = !{!"dominance.c:ei_cond"}
!513 = !{!"branch_weights", i32 847465, i32 96058}
!514 = !{!"function_entry_count", i64 55590}
!515 = !{!"branch_weights", i32 55591, i32 1}
!516 = !{!"branch_weights", i32 1, i32 55591}
!517 = !{!"branch_weights", i32 43961, i32 11631}
!518 = !{i32 0, i32 2}
!519 = !{!"branch_weights", i32 1, i32 43960}
!520 = !{!"branch_weights", i32 43960, i32 49344}
!521 = distinct !{!521, !242}
!522 = !{!"branch_weights", i32 560007108, i32 432039932, i32 1579194144}
!523 = !{!"branch_weights", i32 1, i32 12107}
!524 = !{!"branch_weights", i32 23277, i32 2972}
!525 = !{!"branch_weights", i32 12107, i32 14141}
!526 = distinct !{!526, !242}
!527 = !{!528, !231, i64 0}
!528 = !{!"graph", !231, i64 0, !226, i64 8, !226, i64 16}
!529 = !{!"branch_weights", i32 12107, i32 1}
!530 = !{!528, !226, i64 8}
!531 = !{!532, !226, i64 24}
!532 = !{!"vertex", !226, i64 0, !226, i64 8, !231, i64 16, !231, i64 20, !226, i64 24}
!533 = !{!"branch_weights", i32 26248, i32 12107}
!534 = distinct !{!534, !242}
!535 = !{!"branch_weights", i32 1, i32 26247}
!536 = !{!"branch_weights", i32 8171, i32 67516}
!537 = !{!"branch_weights", i32 37877, i32 29640}
!538 = !{!"branch_weights", i32 26247, i32 49439}
!539 = distinct !{!539, !242}
!540 = distinct !{!540, !242}
!541 = distinct !{!541, !242}
!542 = !{!"branch_weights", i32 12108, i32 17790}
!543 = distinct !{!543, !242}
!544 = !{!"branch_weights", i32 29903, i32 8453}
!545 = !{!"branch_weights", i32 8453, i32 7}
!546 = distinct !{!546, !242}
!547 = !{!"branch_weights", i32 12107, i32 26248}
!548 = distinct !{!548, !242}
!549 = !{!"function_entry_count", i64 417362}
!550 = !{!"dominance.c:VEC_basic_block_base_iterate"}
!551 = !{!"branch_weights", i32 1594, i32 415770}
!552 = !{!"branch_weights", i32 293599, i32 122172}
!553 = !{!"dominance.c:prune_bbs_to_update_dominators"}
!554 = !{!"branch_weights", i32 1, i32 127}
!555 = !{!"branch_weights", i32 1, i32 147802}
!556 = !{!"branch_weights", i32 64913, i32 82890}
!557 = !{!"branch_weights", i32 55493, i32 9421}
!558 = !{!"branch_weights", i32 1, i32 9420}
!559 = !{!"branch_weights", i32 608957, i32 184}
!560 = !{!"branch_weights", i32 9421, i32 599537}
!561 = !{!"branch_weights", i32 9420, i32 599720}
!562 = distinct !{!562, !242}
!563 = !{!"branch_weights", i32 9243, i32 179}
!564 = !{!"branch_weights", i32 4899, i32 4345}
!565 = !{!"branch_weights", i32 127, i32 7115393}
!566 = distinct !{!566, !242}
!567 = !{!"branch_weights", i32 55590, i32 92212}
!568 = !{!"function_entry_count", i64 122453}
!569 = !{!"dominance.c:root_of_dom_tree"}
!570 = !{!"function_entry_count", i64 38354}
!571 = !{!"dominance.c:determine_dominators_for_sons"}
!572 = !{!"branch_weights", i32 20560, i32 17796}
!573 = !{!"branch_weights", i32 12108, i32 5689}
!574 = !{!"branch_weights", i32 11370, i32 6427}
!575 = !{!"branch_weights", i32 1, i32 6426}
!576 = !{!"branch_weights", i32 6426, i32 8453}
!577 = distinct !{!577, !242}
!578 = !{!"branch_weights", i32 6426, i32 1}
!579 = !{!532, !231, i64 16}
!580 = distinct !{!580, !242}
!581 = !{!"branch_weights", i32 8453, i32 6426}
!582 = distinct !{!582, !242}
!583 = !{!"branch_weights", i32 1, i32 14878}
!584 = !{!"branch_weights", i32 -2147483648, i32 0}
!585 = !{!"branch_weights", i32 41110, i32 5660}
!586 = !{!"branch_weights", i32 14878, i32 31891}
!587 = distinct !{!587, !242}
!588 = !{!"branch_weights", i32 14878, i32 1}
!589 = distinct !{!589, !242}
!590 = distinct !{!590, !242}
!591 = distinct !{!591, !242}
!592 = distinct !{!592, !242}
!593 = !{!"function_entry_count", i64 230690}
!594 = !{!"dominance.c:single_pred_p"}
!595 = !{!247, !226, i64 0}
!596 = !{!"function_entry_count", i64 82889}
!597 = !{!"dominance.c:single_pred"}
!598 = !{!"function_entry_count", i64 87411}
!599 = !{!"dominance.c:VEC_basic_block_base_unordered_remove"}
!600 = !{!"dominance.c:single_pred_edge"}
!601 = !{!"branch_weights", i32 1, i32 82890}
!602 = !{!"function_entry_count", i64 14878}
!603 = !{!"dominance.c:VEC_int_heap_safe_push"}
!604 = !{!"function_entry_count", i64 59512}
!605 = !{!"dominance.c:VEC_int_base_iterate"}
!606 = !{!"branch_weights", i32 1, i32 59513}
!607 = !{!608, !231, i64 0}
!608 = !{!"VEC_int_base", !231, i64 0, !231, i64 4, !227, i64 8}
!609 = !{!"branch_weights", i32 29757, i32 29757}
!610 = !{!"dominance.c:VEC_int_heap_free"}
!611 = !{!"branch_weights", i32 1, i32 14879}
!612 = !{!"dominance.c:VEC_int_heap_reserve"}
!613 = !{!"branch_weights", i32 14879, i32 1}
!614 = !{!"dominance.c:VEC_int_base_quick_push"}
!615 = !{!"dominance.c:VEC_int_base_space"}
!616 = !{!608, !231, i64 4}
!617 = !{!"function_entry_count", i64 202930}
!618 = !{!"branch_weights", i32 1, i32 202931}
!619 = !{!"branch_weights", i32 202931, i32 1}
!620 = !{!"branch_weights", i32 41843, i32 161089}
!621 = !{!"function_entry_count", i64 509801}
!622 = !{!"branch_weights", i32 1, i32 509802}
!623 = !{!"branch_weights", i32 28225, i32 481578}
!624 = !{!"function_entry_count", i64 1291555}
!625 = distinct !{!625, !242}
!626 = !{!"dominance.c:debug_dominance_tree_1"}
!627 = distinct !{!627, !242}
!628 = distinct !{!628, !242}
