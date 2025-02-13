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
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.graph = type { i32, ptr, ptr }
%struct.vertex = type { ptr, ptr, i32, i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }

@cfun = external local_unnamed_addr global ptr, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [12 x i8] c"dominance.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"dominator of %d status unknown\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"dominator of %d should be %d, not %d\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%i %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @calculate_dominance_info(i32 noundef %0) local_unnamed_addr #0 !prof !217 {
  %2 = alloca %struct.dom_info, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #17
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = icmp eq i32 %0, 2
  %5 = zext i1 %4 to i8
  %6 = load ptr, ptr @cfun, align 8, !tbaa !218
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !222
  %9 = zext i32 %3 to i64
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !225
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %106, label %13, !prof !226

13:                                               ; preds = %1
  %14 = load i8, ptr @timevar_enable, align 1, !tbaa !227
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16, !prof !228

16:                                               ; preds = %13
  tail call void @timevar_push_1(i32 noundef 112) #19
  br label %17

17:                                               ; preds = %16, %13
  %18 = tail call zeroext i8 @dom_info_available_p(i32 noundef %0) #18, !range !229
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %102, !prof !230

20:                                               ; preds = %17
  %21 = load ptr, ptr @cfun, align 8, !tbaa !218
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !222
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 9, i64 %9
  %25 = load i32, ptr %24, align 4, !tbaa !225
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !231

27:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 646, ptr noundef nonnull @.str.1) #19
  %28 = load ptr, ptr @cfun, align 8, !tbaa !218
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !222
  br label %31

31:                                               ; preds = %20, %27
  %32 = phi ptr [ %23, %20 ], [ %30, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !218
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35, !prof !232

35:                                               ; preds = %31, %35
  %36 = phi ptr [ %40, %35 ], [ %33, %31 ]
  %37 = tail call ptr @et_new_tree(ptr noundef nonnull %36) #19
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 4, i64 %9
  store ptr %37, ptr %38, align 8, !tbaa !218
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !218
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %35, !prof !233, !llvm.loop !234

42:                                               ; preds = %35
  %43 = load ptr, ptr @cfun, align 8, !tbaa !218
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !222
  br label %46

46:                                               ; preds = %42, %31
  %47 = phi ptr [ %45, %42 ], [ %32, %31 ]
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !236
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 9, i64 %9
  store i32 %49, ptr %50, align 4, !tbaa !225
  call fastcc void @init_dom_info(ptr noundef nonnull %2, i32 noundef %0) #18
  call fastcc void @calc_dfs_tree(ptr noundef nonnull %2, i8 noundef zeroext %5) #18
  call fastcc void @calc_idoms(ptr noundef nonnull %2, i8 noundef zeroext %5) #18
  %51 = load ptr, ptr @cfun, align 8, !tbaa !218
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !222
  %54 = load ptr, ptr %53, align 8, !tbaa !238
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !239
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %53, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !242
  %59 = icmp eq ptr %56, %58
  br i1 %59, label %97, label %60, !prof !232

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.dom_info, ptr %2, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !243
  %63 = getelementptr inbounds %struct.dom_info, ptr %2, i64 0, i32 9
  %64 = load ptr, ptr %63, align 8, !tbaa !245
  %65 = getelementptr inbounds %struct.dom_info, ptr %2, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !246
  br label %67

67:                                               ; preds = %60, %88
  %68 = phi ptr [ %51, %60 ], [ %89, %88 ]
  %69 = phi ptr [ %56, %60 ], [ %91, %88 ]
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !247
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %64, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !225
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %62, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !225
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %66, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !218
  %81 = icmp eq ptr %80, null
  br i1 %81, label %88, label %82, !prof !248

82:                                               ; preds = %67
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 4, i64 %9
  %84 = load ptr, ptr %83, align 8, !tbaa !218
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 4, i64 %9
  %86 = load ptr, ptr %85, align 8, !tbaa !218
  tail call void @et_set_father(ptr noundef %84, ptr noundef %86) #19
  %87 = load ptr, ptr @cfun, align 8, !tbaa !218
  br label %88

88:                                               ; preds = %82, %67
  %89 = phi ptr [ %87, %82 ], [ %68, %67 ]
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !239
  %92 = getelementptr inbounds %struct.function, ptr %89, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !222
  %94 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !242
  %96 = icmp eq ptr %91, %95
  br i1 %96, label %97, label %67, !prof !249, !llvm.loop !250

97:                                               ; preds = %88, %46
  call fastcc void @free_dom_info(ptr noundef nonnull %2) #18
  %98 = load ptr, ptr @cfun, align 8, !tbaa !218
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !222
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 8, i64 %9
  store i32 1, ptr %101, align 4, !tbaa !225
  br label %102

102:                                              ; preds = %97, %17
  tail call fastcc void @compute_dom_fast_query(i32 noundef %0) #18
  %103 = load i8, ptr @timevar_enable, align 1, !tbaa !227
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %106, label %105, !prof !228

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
define internal fastcc noundef i32 @dom_convert_dir_to_idx(i32 noundef %0) unnamed_addr #0 !prof !251 !PGOFuncName !252 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %5, label %4, !prof !253

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %1, %4
  ret i32 %2
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @dom_info_available_p(i32 noundef %0) local_unnamed_addr #0 !prof !254 {
  %2 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %3 = load ptr, ptr @cfun, align 8, !tbaa !218
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !222
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 8, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !225
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @et_new_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_dom_info(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #0 !prof !255 !PGOFuncName !256 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !218
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !222
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !236
  %8 = zext i32 %7 to i64
  %9 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  store ptr %9, ptr %0, align 8, !tbaa !257
  %10 = shl nuw nsw i64 %8, 2
  %11 = tail call ptr @xmalloc(i64 noundef %10) #19
  %12 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !258
  %13 = icmp eq i32 %7, 0
  br i1 %13, label %50, label %14, !prof !232

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
  store i32 %23, ptr %27, align 4, !tbaa !225
  br label %28

28:                                               ; preds = %26, %20
  %29 = extractelement <4 x i1> %24, i64 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = or disjoint i64 %21, 1
  %32 = getelementptr inbounds i32, ptr %11, i64 %31
  %33 = or disjoint i32 %23, 1
  store i32 %33, ptr %32, align 4, !tbaa !225
  br label %34

34:                                               ; preds = %30, %28
  %35 = extractelement <4 x i1> %24, i64 2
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = or disjoint i64 %21, 2
  %38 = getelementptr inbounds i32, ptr %11, i64 %37
  %39 = or disjoint i32 %23, 2
  store i32 %39, ptr %38, align 4, !tbaa !225
  br label %40

40:                                               ; preds = %36, %34
  %41 = extractelement <4 x i1> %24, i64 3
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = or disjoint i64 %21, 3
  %44 = getelementptr inbounds i32, ptr %11, i64 %43
  %45 = or disjoint i32 %23, 3
  store i32 %45, ptr %44, align 4, !tbaa !225
  br label %46

46:                                               ; preds = %42, %40
  %47 = add i64 %21, 4
  %48 = add <4 x i64> %22, <i64 4, i64 4, i64 4, i64 4>
  %49 = icmp eq i64 %47, %16
  br i1 %49, label %53, label %20, !prof !259, !llvm.loop !260

50:                                               ; preds = %2
  %51 = tail call ptr @xmalloc(i64 noundef %10) #19
  %52 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !263
  br label %92

53:                                               ; preds = %46
  %54 = tail call ptr @xmalloc(i64 noundef %10) #19
  %55 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !263
  br i1 %13, label %92, label %56, !prof !264

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
  store i32 %65, ptr %69, align 4, !tbaa !225
  br label %70

70:                                               ; preds = %68, %62
  %71 = extractelement <4 x i1> %66, i64 1
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = or disjoint i64 %63, 1
  %74 = getelementptr inbounds i32, ptr %54, i64 %73
  %75 = or disjoint i32 %65, 1
  store i32 %75, ptr %74, align 4, !tbaa !225
  br label %76

76:                                               ; preds = %72, %70
  %77 = extractelement <4 x i1> %66, i64 2
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = or disjoint i64 %63, 2
  %80 = getelementptr inbounds i32, ptr %54, i64 %79
  %81 = or disjoint i32 %65, 2
  store i32 %81, ptr %80, align 4, !tbaa !225
  br label %82

82:                                               ; preds = %78, %76
  %83 = extractelement <4 x i1> %66, i64 3
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  %85 = or disjoint i64 %63, 3
  %86 = getelementptr inbounds i32, ptr %54, i64 %85
  %87 = or disjoint i32 %65, 3
  store i32 %87, ptr %86, align 4, !tbaa !225
  br label %88

88:                                               ; preds = %84, %82
  %89 = add i64 %63, 4
  %90 = add <4 x i64> %64, <i64 4, i64 4, i64 4, i64 4>
  %91 = icmp eq i64 %89, %58
  br i1 %91, label %92, label %62, !prof !259, !llvm.loop !265

92:                                               ; preds = %88, %50, %53
  %93 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  %94 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  store ptr %93, ptr %94, align 8, !tbaa !243
  %95 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  %96 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 3
  store ptr %95, ptr %96, align 8, !tbaa !266
  %97 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  %98 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 4
  store ptr %97, ptr %98, align 8, !tbaa !267
  %99 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  %100 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  store ptr %99, ptr %100, align 8, !tbaa !268
  %101 = tail call ptr @xmalloc(i64 noundef %10) #19
  %102 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 7
  store ptr %101, ptr %102, align 8, !tbaa !269
  br i1 %13, label %135, label %103, !prof !232

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
  store i32 1, ptr %115, align 4, !tbaa !225
  br label %116

116:                                              ; preds = %114, %109
  %117 = extractelement <4 x i1> %112, i64 1
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = or disjoint i64 %110, 1
  %120 = getelementptr inbounds i32, ptr %101, i64 %119
  store i32 1, ptr %120, align 4, !tbaa !225
  br label %121

121:                                              ; preds = %118, %116
  %122 = extractelement <4 x i1> %112, i64 2
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = or disjoint i64 %110, 2
  %125 = getelementptr inbounds i32, ptr %101, i64 %124
  store i32 1, ptr %125, align 4, !tbaa !225
  br label %126

126:                                              ; preds = %123, %121
  %127 = extractelement <4 x i1> %112, i64 3
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = or disjoint i64 %110, 3
  %130 = getelementptr inbounds i32, ptr %101, i64 %129
  store i32 1, ptr %130, align 4, !tbaa !225
  br label %131

131:                                              ; preds = %128, %126
  %132 = add i64 %110, 4
  %133 = add <4 x i64> %111, <i64 4, i64 4, i64 4, i64 4>
  %134 = icmp eq i64 %132, %105
  br i1 %134, label %135, label %109, !prof !259, !llvm.loop !270

135:                                              ; preds = %131, %92
  %136 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  %137 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 8
  store ptr %136, ptr %137, align 8, !tbaa !271
  %138 = load ptr, ptr @cfun, align 8, !tbaa !218
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !222
  %141 = getelementptr inbounds %struct.control_flow_graph, ptr %140, i64 0, i32 5
  %142 = load i32, ptr %141, align 8, !tbaa !272
  %143 = add i32 %142, 1
  %144 = zext i32 %143 to i64
  %145 = tail call ptr @xcalloc(i64 noundef %144, i64 noundef 4) #19
  %146 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  store ptr %145, ptr %146, align 8, !tbaa !245
  %147 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 8) #19
  %148 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  store ptr %147, ptr %148, align 8, !tbaa !246
  %149 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 11
  store i32 1, ptr %149, align 8, !tbaa !273
  %150 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 12
  store i32 0, ptr %150, align 4, !tbaa !274
  switch i32 %1, label %156 [
    i32 1, label %151
    i32 2, label %153
  ], !prof !275

151:                                              ; preds = %135
  %152 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  store ptr null, ptr %152, align 8, !tbaa !276
  br label %157

153:                                              ; preds = %135
  %154 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %155 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  store ptr %154, ptr %155, align 8, !tbaa !276
  br label %157

156:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 178, ptr noundef nonnull @.str.1) #19
  br label %157

157:                                              ; preds = %156, %153, %151
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_dfs_tree(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !255 !PGOFuncName !277 {
  %3 = icmp eq i8 %1, 0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !218
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !222
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = select i1 %3, ptr %6, ptr %7, !prof !278
  %9 = load ptr, ptr %8, align 8, !tbaa !218
  %10 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !273
  %12 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !245
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !272
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %13, i64 %16
  store i32 %11, ptr %17, align 4, !tbaa !225
  %18 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !246
  %20 = zext i32 %11 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  store ptr %9, ptr %21, align 8, !tbaa !218
  %22 = add i32 %11, 1
  store i32 %22, ptr %10, align 8, !tbaa !273
  tail call fastcc void @calc_dfs_tree_nonrec(ptr noundef %0, ptr noundef %9, i8 noundef zeroext %1) #18
  %23 = load ptr, ptr @cfun, align 8, !tbaa !218
  br i1 %3, label %150, label %24, !prof !278

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !222
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !242
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !279
  %31 = load ptr, ptr %26, align 8, !tbaa !238
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %150, label %33, !prof !280

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  br label %35

35:                                               ; preds = %80, %33
  %36 = phi ptr [ %81, %80 ], [ %23, %33 ]
  %37 = phi ptr [ %83, %80 ], [ %30, %33 ]
  %38 = phi i8 [ %41, %80 ], [ 0, %33 ]
  br label %39

39:                                               ; preds = %35, %88
  %40 = phi ptr [ %91, %88 ], [ %37, %35 ]
  %41 = phi i8 [ 1, %88 ], [ %38, %35 ]
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !281
  %44 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %43) #18
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !247
  br i1 %45, label %54, label %48, !prof !282

48:                                               ; preds = %39
  %49 = load ptr, ptr %12, align 8, !tbaa !245
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds i32, ptr %49, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !225
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %88, label %80, !prof !283

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %56 = load ptr, ptr %34, align 8, !tbaa !276
  %57 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %56, i32 noundef %47) #19
  %58 = load i32, ptr %10, align 8, !tbaa !273
  %59 = load ptr, ptr %12, align 8, !tbaa !245
  %60 = load i32, ptr %55, align 8, !tbaa !247
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %59, i64 %61
  store i32 %58, ptr %62, align 4, !tbaa !225
  %63 = load ptr, ptr %18, align 8, !tbaa !246
  %64 = zext i32 %58 to i64
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  store ptr %40, ptr %65, align 8, !tbaa !218
  %66 = load ptr, ptr %12, align 8, !tbaa !245
  %67 = load ptr, ptr @cfun, align 8, !tbaa !218
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !222
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 5
  %71 = load i32, ptr %70, align 8, !tbaa !272
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %66, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !225
  %75 = load ptr, ptr %0, align 8, !tbaa !257
  %76 = getelementptr inbounds i32, ptr %75, i64 %64
  store i32 %74, ptr %76, align 4, !tbaa !225
  %77 = load i32, ptr %10, align 8, !tbaa !273
  %78 = add i32 %77, 1
  store i32 %78, ptr %10, align 8, !tbaa !273
  tail call fastcc void @calc_dfs_tree_nonrec(ptr noundef nonnull %0, ptr noundef nonnull %40, i8 noundef zeroext 1) #18
  %79 = load ptr, ptr @cfun, align 8, !tbaa !218
  br label %80

80:                                               ; preds = %48, %54
  %81 = phi ptr [ %79, %54 ], [ %36, %48 ]
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !279
  %84 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !222
  %86 = load ptr, ptr %85, align 8, !tbaa !238
  %87 = icmp eq ptr %83, %86
  br i1 %87, label %95, label %35, !prof !284, !llvm.loop !285

88:                                               ; preds = %48
  %89 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !279
  %92 = load ptr, ptr %89, align 8, !tbaa !222
  %93 = load ptr, ptr %92, align 8, !tbaa !238
  %94 = icmp eq ptr %91, %93
  br i1 %94, label %97, label %39, !prof !284, !llvm.loop !285

95:                                               ; preds = %80
  %96 = icmp eq i8 %41, 0
  br i1 %96, label %150, label %97, !prof !286

97:                                               ; preds = %88, %95
  %98 = phi ptr [ %81, %95 ], [ %36, %88 ]
  %99 = phi ptr [ %83, %95 ], [ %91, %88 ]
  %100 = phi ptr [ %85, %95 ], [ %92, %88 ]
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !242
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %102, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !279
  %105 = icmp eq ptr %104, %99
  br i1 %105, label %150, label %106, !prof !287

106:                                              ; preds = %97, %142
  %107 = phi ptr [ %143, %142 ], [ %98, %97 ]
  %108 = phi ptr [ %145, %142 ], [ %104, %97 ]
  %109 = load ptr, ptr %12, align 8, !tbaa !245
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 9
  %111 = load i32, ptr %110, align 8, !tbaa !247
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, ptr %109, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !225
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %142, !prof !288

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  %118 = load ptr, ptr %117, align 8, !tbaa !276
  %119 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %118, i32 noundef %111) #19
  %120 = load i32, ptr %10, align 8, !tbaa !273
  %121 = load ptr, ptr %12, align 8, !tbaa !245
  %122 = load i32, ptr %110, align 8, !tbaa !247
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, ptr %121, i64 %123
  store i32 %120, ptr %124, align 4, !tbaa !225
  %125 = load ptr, ptr %18, align 8, !tbaa !246
  %126 = zext i32 %120 to i64
  %127 = getelementptr inbounds ptr, ptr %125, i64 %126
  store ptr %108, ptr %127, align 8, !tbaa !218
  %128 = load ptr, ptr %12, align 8, !tbaa !245
  %129 = load ptr, ptr @cfun, align 8, !tbaa !218
  %130 = getelementptr inbounds %struct.function, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !222
  %132 = getelementptr inbounds %struct.control_flow_graph, ptr %131, i64 0, i32 5
  %133 = load i32, ptr %132, align 8, !tbaa !272
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, ptr %128, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !225
  %137 = load ptr, ptr %0, align 8, !tbaa !257
  %138 = getelementptr inbounds i32, ptr %137, i64 %126
  store i32 %136, ptr %138, align 4, !tbaa !225
  %139 = load i32, ptr %10, align 8, !tbaa !273
  %140 = add i32 %139, 1
  store i32 %140, ptr %10, align 8, !tbaa !273
  tail call fastcc void @calc_dfs_tree_nonrec(ptr noundef nonnull %0, ptr noundef nonnull %108, i8 noundef zeroext 1) #18
  %141 = load ptr, ptr @cfun, align 8, !tbaa !218
  br label %142

142:                                              ; preds = %106, %116
  %143 = phi ptr [ %107, %106 ], [ %141, %116 ]
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 5
  %145 = load ptr, ptr %144, align 8, !tbaa !279
  %146 = getelementptr inbounds %struct.function, ptr %143, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !222
  %148 = load ptr, ptr %147, align 8, !tbaa !238
  %149 = icmp eq ptr %145, %148
  br i1 %149, label %150, label %106, !prof !289, !llvm.loop !290

150:                                              ; preds = %142, %24, %97, %95, %2
  %151 = phi ptr [ %98, %97 ], [ %81, %95 ], [ %23, %2 ], [ %23, %24 ], [ %143, %142 ]
  %152 = load i32, ptr %10, align 8, !tbaa !273
  %153 = add i32 %152, -1
  %154 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 12
  store i32 %153, ptr %154, align 4, !tbaa !274
  %155 = getelementptr inbounds %struct.function, ptr %151, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !222
  %157 = getelementptr inbounds %struct.control_flow_graph, ptr %156, i64 0, i32 3
  %158 = load i32, ptr %157, align 8, !tbaa !236
  %159 = icmp eq i32 %152, %158
  br i1 %159, label %161, label %160, !prof !231

160:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 394, ptr noundef nonnull @.str.1) #19
  br label %161

161:                                              ; preds = %150, %160
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_idoms(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !255 !PGOFuncName !291 {
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %4 = icmp eq i8 %1, 0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !218
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !222
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = select i1 %4, ptr %7, ptr %8, !prof !278
  %10 = load ptr, ptr %9, align 8, !tbaa !218
  %11 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 12
  %12 = load i32, ptr %11, align 4, !tbaa !274
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %127, !prof !292

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
  %25 = load ptr, ptr %15, align 8, !tbaa !246
  %26 = getelementptr inbounds ptr, ptr %25, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !218
  %28 = load ptr, ptr %0, align 8, !tbaa !257
  %29 = getelementptr inbounds i32, ptr %28, i64 %24
  %30 = load i32, ptr %29, align 4, !tbaa !225
  %31 = trunc i64 %24 to i32
  br i1 %4, label %32, label %35, !prof !293

32:                                               ; preds = %23
  %33 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %27) #18
  %34 = extractvalue { i32, ptr } %33, 1
  br label %46

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 1
  %38 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef nonnull %37) #18
  %39 = extractvalue { i32, ptr } %38, 1
  %40 = load ptr, ptr %36, align 8, !tbaa !276
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !247
  %43 = tail call i32 @bitmap_bit_p(ptr noundef %40, i32 noundef %42) #19
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45, !prof !294

45:                                               ; preds = %35
  store ptr %39, ptr %16, align 8, !tbaa.struct !295
  store i32 0, ptr %3, align 8, !tbaa !296
  br label %59

46:                                               ; preds = %32, %35, %83
  %47 = phi ptr [ %87, %83 ], [ %39, %35 ], [ %34, %32 ]
  %48 = phi i32 [ %85, %83 ], [ %31, %35 ], [ %31, %32 ]
  %49 = phi <2 x i32> [ %86, %83 ], [ <i32 0, i32 undef>, %35 ], [ <i32 0, i32 undef>, %32 ]
  %50 = extractelement <2 x i32> %49, i64 0
  %51 = tail call fastcc zeroext i8 @ei_end_p(i32 %50, ptr %47) #18, !range !229
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %88, !prof !298

53:                                               ; preds = %46
  %54 = tail call fastcc ptr @ei_edge(i32 %50, ptr %47) #18
  %55 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  %56 = select i1 %4, ptr %54, ptr %55, !prof !299
  %57 = load ptr, ptr %56, align 8, !tbaa !218
  store <2 x i32> %49, ptr %3, align 8
  store ptr %47, ptr %16, align 8, !tbaa.struct !295
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %58 = icmp eq ptr %57, %10
  br i1 %58, label %59, label %65, !prof !300

59:                                               ; preds = %53, %45
  %60 = phi i32 [ %31, %45 ], [ %48, %53 ]
  %61 = load ptr, ptr @cfun, align 8, !tbaa !218
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !222
  %64 = getelementptr inbounds %struct.control_flow_graph, ptr %63, i64 0, i32 5
  br label %67

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 9
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi ptr [ %66, %65 ], [ %64, %59 ]
  %69 = phi i32 [ %48, %65 ], [ %60, %59 ]
  %70 = load ptr, ptr %21, align 8, !tbaa !245
  %71 = load i32, ptr %68, align 8, !tbaa !225
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %70, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !225
  %75 = zext i32 %74 to i64
  %76 = icmp ult i64 %24, %75
  br i1 %76, label %77, label %83, !prof !301

77:                                               ; preds = %67
  %78 = load ptr, ptr %17, align 8, !tbaa !263
  %79 = tail call fastcc i32 @eval(ptr noundef nonnull %0, i32 noundef %74) #18
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %78, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !225
  br label %83

83:                                               ; preds = %77, %67
  %84 = phi i32 [ %82, %77 ], [ %74, %67 ]
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 %69)
  %86 = load <2 x i32>, ptr %3, align 8
  %87 = load ptr, ptr %16, align 8, !tbaa.struct !295
  br label %46, !llvm.loop !302

88:                                               ; preds = %46
  %89 = load ptr, ptr %17, align 8, !tbaa !263
  %90 = getelementptr inbounds i32, ptr %89, i64 %24
  store i32 %48, ptr %90, align 4, !tbaa !225
  tail call fastcc void @link_roots(ptr noundef nonnull %0, i32 noundef %30, i32 noundef %31) #18
  %91 = load ptr, ptr %18, align 8, !tbaa !266
  %92 = zext i32 %48 to i64
  %93 = getelementptr inbounds i32, ptr %91, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !225
  %95 = load ptr, ptr %19, align 8, !tbaa !267
  %96 = getelementptr inbounds i32, ptr %95, i64 %24
  store i32 %94, ptr %96, align 4, !tbaa !225
  store i32 %31, ptr %93, align 4, !tbaa !225
  %97 = zext i32 %30 to i64
  %98 = getelementptr inbounds i32, ptr %91, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !225
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %121, label %101, !prof !303

101:                                              ; preds = %88, %101
  %102 = phi i32 [ %117, %101 ], [ %99, %88 ]
  %103 = tail call fastcc i32 @eval(ptr noundef nonnull %0, i32 noundef %102) #18
  %104 = load ptr, ptr %17, align 8, !tbaa !263
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds i32, ptr %104, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !225
  %108 = zext i32 %102 to i64
  %109 = getelementptr inbounds i32, ptr %104, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !225
  %111 = icmp ult i32 %107, %110
  %112 = load ptr, ptr %20, align 8, !tbaa !243
  %113 = getelementptr inbounds i32, ptr %112, i64 %108
  %114 = select i1 %111, i32 %103, i32 %30, !prof !304
  store i32 %114, ptr %113, align 4, !tbaa !225
  %115 = load ptr, ptr %19, align 8, !tbaa !267
  %116 = getelementptr inbounds i32, ptr %115, i64 %108
  %117 = load i32, ptr %116, align 4, !tbaa !225
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %101, !prof !305, !llvm.loop !306

119:                                              ; preds = %101
  %120 = load ptr, ptr %18, align 8, !tbaa !266
  br label %121

121:                                              ; preds = %119, %88
  %122 = phi ptr [ %120, %119 ], [ %91, %88 ]
  %123 = getelementptr inbounds i32, ptr %122, i64 %97
  store i32 0, ptr %123, align 4, !tbaa !225
  %124 = add nsw i64 %24, -1
  %125 = and i64 %124, 4294967294
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %23, !prof !249, !llvm.loop !307

127:                                              ; preds = %121, %2
  %128 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !243
  %130 = getelementptr inbounds i32, ptr %129, i64 1
  store i32 0, ptr %130, align 4, !tbaa !225
  %131 = load i32, ptr %11, align 4, !tbaa !274
  %132 = icmp ult i32 %131, 2
  br i1 %132, label %154, label %133, !prof !232

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !263
  br label %136

136:                                              ; preds = %133, %150
  %137 = phi i32 [ %131, %133 ], [ %151, %150 ]
  %138 = phi i32 [ 2, %133 ], [ %152, %150 ]
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, ptr %129, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !225
  %142 = getelementptr inbounds i32, ptr %135, i64 %139
  %143 = load i32, ptr %142, align 4, !tbaa !225
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %150, label %145, !prof !308

145:                                              ; preds = %136
  %146 = zext i32 %141 to i64
  %147 = getelementptr inbounds i32, ptr %129, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !225
  store i32 %148, ptr %140, align 4, !tbaa !225
  %149 = load i32, ptr %11, align 4, !tbaa !274
  br label %150

150:                                              ; preds = %136, %145
  %151 = phi i32 [ %137, %136 ], [ %149, %145 ]
  %152 = add i32 %138, 1
  %153 = icmp ugt i32 %152, %151
  br i1 %153, label %154, label %136, !prof !249, !llvm.loop !309

154:                                              ; preds = %150, %127
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare void @et_set_father(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_dom_info(ptr nocapture noundef %0) unnamed_addr #0 !prof !255 !PGOFuncName !310 {
  %2 = load ptr, ptr %0, align 8, !tbaa !257
  tail call void @free(ptr noundef %2) #18
  %3 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !258
  tail call void @free(ptr noundef %4) #18
  %5 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !263
  tail call void @free(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !243
  tail call void @free(ptr noundef %8) #18
  %9 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !266
  tail call void @free(ptr noundef %10) #18
  %11 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !267
  tail call void @free(ptr noundef %12) #18
  %13 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !268
  tail call void @free(ptr noundef %14) #18
  %15 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !269
  tail call void @free(ptr noundef %16) #18
  %17 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !271
  tail call void @free(ptr noundef %18) #18
  %19 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !245
  tail call void @free(ptr noundef %20) #18
  %21 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !246
  tail call void @free(ptr noundef %22) #18
  %23 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !276
  tail call void @bitmap_obstack_free(ptr noundef %24) #19
  store ptr null, ptr %23, align 8, !tbaa !276
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_dom_fast_query(i32 noundef %0) unnamed_addr #0 !prof !311 !PGOFuncName !312 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !tbaa !225
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = tail call zeroext i8 @dom_info_available_p(i32 noundef %0) #18, !range !229
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !313

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 615, ptr noundef nonnull @.str.1) #19
  br label %7

7:                                                ; preds = %1, %6
  %8 = load ptr, ptr @cfun, align 8, !tbaa !218
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !222
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 8, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !225
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %37, label %15, !prof !313

15:                                               ; preds = %7
  %16 = load ptr, ptr %10, align 8, !tbaa !218
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18, !prof !314

18:                                               ; preds = %15, %26
  %19 = phi ptr [ %28, %26 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 4, i64 %11
  %21 = load ptr, ptr %20, align 8, !tbaa !218
  %22 = getelementptr inbounds %struct.et_node, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !315
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !317

25:                                               ; preds = %18
  call fastcc void @assign_dfs_numbers(ptr noundef nonnull %21, ptr noundef nonnull %2) #18
  br label %26

26:                                               ; preds = %18, %25
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !218
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !prof !318, !llvm.loop !319

30:                                               ; preds = %26
  %31 = load ptr, ptr @cfun, align 8, !tbaa !218
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  br label %34

34:                                               ; preds = %30, %15
  %35 = phi ptr [ %33, %30 ], [ %10, %15 ]
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 8, i64 %11
  store i32 2, ptr %36, align 4, !tbaa !225
  br label %37

37:                                               ; preds = %7, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_dominance_info(i32 noundef %0) local_unnamed_addr #0 !prof !320 {
  %2 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %3 = tail call zeroext i8 @dom_info_available_p(i32 noundef %0) #18, !range !229
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5, !prof !321

5:                                                ; preds = %1
  %6 = load ptr, ptr @cfun, align 8, !tbaa !218
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !222
  %9 = load ptr, ptr %8, align 8, !tbaa !218
  %10 = icmp eq ptr %9, null
  %11 = zext i32 %2 to i64
  br i1 %10, label %19, label %12, !prof !232

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %17, %12 ], [ %9, %5 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 4, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !218
  tail call void @et_free_tree_force(ptr noundef %15) #19
  store ptr null, ptr %14, align 8, !tbaa !218
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !218
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %12, !prof !322, !llvm.loop !323

19:                                               ; preds = %12, %5
  tail call void @et_free_pools() #19
  %20 = load ptr, ptr @cfun, align 8, !tbaa !218
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !222
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 9, i64 %11
  store i32 0, ptr %23, align 4, !tbaa !225
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 8, i64 %11
  store i32 0, ptr %24, align 4, !tbaa !225
  br label %25

25:                                               ; preds = %1, %19
  ret void
}

; Function Attrs: optsize
declare void @et_free_tree_force(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @et_free_pools() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_immediate_dominator(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !324 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !218
  %7 = load ptr, ptr @cfun, align 8, !tbaa !218
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !222
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 8, i64 %4
  %11 = load i32, ptr %10, align 4, !tbaa !225
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !325

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 704, ptr noundef nonnull @.str.1) #19
  br label %14

14:                                               ; preds = %2, %13
  %15 = getelementptr inbounds %struct.et_node, ptr %6, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !315
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !326

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !327
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi ptr [ %19, %18 ], [ null, %14 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_immediate_dominator(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 !prof !328 {
  %4 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !218
  %8 = load ptr, ptr @cfun, align 8, !tbaa !218
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !222
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 8, i64 %5
  %12 = load i32, ptr %11, align 4, !tbaa !225
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !329

14:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 721, ptr noundef nonnull @.str.1) #19
  br label %15

15:                                               ; preds = %3, %14
  %16 = getelementptr inbounds %struct.et_node, ptr %7, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !315
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !330

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !327
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %36, label %22, !prof !331

22:                                               ; preds = %19
  tail call void @et_split(ptr noundef nonnull %7) #19
  br label %23

23:                                               ; preds = %22, %15
  %24 = icmp eq ptr %2, null
  br i1 %24, label %28, label %25, !prof !332

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %5
  %27 = load ptr, ptr %26, align 8, !tbaa !218
  tail call void @et_set_father(ptr noundef nonnull %7, ptr noundef %27) #19
  br label %28

28:                                               ; preds = %25, %23
  %29 = load ptr, ptr @cfun, align 8, !tbaa !218
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !222
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 8, i64 %5
  %33 = load i32, ptr %32, align 4, !tbaa !225
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %36, !prof !333

35:                                               ; preds = %28
  store i32 1, ptr %32, align 4, !tbaa !225
  br label %36

36:                                               ; preds = %28, %35, %19
  ret void
}

; Function Attrs: optsize
declare void @et_split(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_dominated_by(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !334 {
  %3 = alloca ptr, align 8
  %4 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !218
  %8 = getelementptr inbounds %struct.et_node, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !218
  %10 = load ptr, ptr @cfun, align 8, !tbaa !218
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !222
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 8, i64 %5
  %14 = load i32, ptr %13, align 4, !tbaa !225
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 746, ptr noundef nonnull @.str.1) #19
  br label %17

17:                                               ; preds = %2, %16
  %18 = icmp eq ptr %9, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %9, align 8, !tbaa !327
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %3, ptr noundef %20) #18
  %21 = getelementptr inbounds %struct.et_node, ptr %9, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !336
  %23 = icmp eq ptr %22, %9
  br i1 %23, label %30, label %24

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %28, %24 ], [ %22, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !327
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %3, ptr noundef %26) #18
  %27 = getelementptr inbounds %struct.et_node, ptr %25, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !336
  %29 = icmp eq ptr %28, %9
  br i1 %29, label %30, label %24, !llvm.loop !337

30:                                               ; preds = %24, %19
  %31 = load ptr, ptr %3, align 8, !tbaa !218
  br label %32

32:                                               ; preds = %17, %30
  %33 = phi ptr [ %31, %30 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !338 !PGOFuncName !339 {
  tail call fastcc void @VEC_basic_block_heap_reserve(ptr noundef %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !218
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_dominated_by_region(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !prof !334 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !218
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
  %14 = load ptr, ptr %13, align 8, !tbaa !218
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !340
  %17 = or i32 %16, 128
  store i32 %17, ptr %15, align 8, !tbaa !340
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, %7
  br i1 %19, label %8, label %11, !llvm.loop !341

20:                                               ; preds = %39
  br i1 %5, label %51, label %21

21:                                               ; preds = %20
  %22 = zext i32 %2 to i64
  br label %42

23:                                               ; preds = %9, %39
  %24 = phi i64 [ 0, %9 ], [ %40, %39 ]
  %25 = getelementptr inbounds ptr, ptr %1, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !218
  %27 = tail call ptr @first_dom_son(i32 noundef %0, ptr noundef %26) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %23, %36
  %30 = phi ptr [ %37, %36 ], [ %27, %23 ]
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 13
  %32 = load i32, ptr %31, align 8, !tbaa !340
  %33 = and i32 %32, 128
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %4, ptr noundef nonnull %30) #18
  br label %36

36:                                               ; preds = %29, %35
  %37 = tail call ptr @next_dom_son(i32 noundef %0, ptr noundef nonnull %30) #18
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %29, !llvm.loop !342

39:                                               ; preds = %36, %23
  %40 = add nuw nsw i64 %24, 1
  %41 = icmp eq i64 %40, %10
  br i1 %41, label %20, label %23, !llvm.loop !343

42:                                               ; preds = %21, %42
  %43 = phi i64 [ 0, %21 ], [ %49, %42 ]
  %44 = getelementptr inbounds ptr, ptr %1, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !218
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !340
  %48 = and i32 %47, -129
  store i32 %48, ptr %46, align 8, !tbaa !340
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %49, %22
  br i1 %50, label %51, label %42, !llvm.loop !344

51:                                               ; preds = %42, %3, %8, %20
  %52 = load ptr, ptr %4, align 8, !tbaa !218
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @first_dom_son(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !345 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !218
  %7 = getelementptr inbounds %struct.et_node, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !335
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !346

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 8, !tbaa !327
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi ptr [ %11, %10 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @next_dom_son(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !347 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !218
  %7 = getelementptr inbounds %struct.et_node, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !336
  %9 = getelementptr inbounds %struct.et_node, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !315
  %11 = getelementptr inbounds %struct.et_node, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !335
  %13 = icmp eq ptr %12, %8
  br i1 %13, label %16, label %14, !prof !348

14:                                               ; preds = %2
  %15 = load ptr, ptr %8, align 8, !tbaa !327
  br label %16

16:                                               ; preds = %2, %14
  %17 = phi ptr [ %15, %14 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_all_dominated_blocks(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !349 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !218
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
  br i1 %11, label %18, label %12, !prof !350

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %10, %5 ]
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %13) #18
  %14 = tail call ptr @next_dom_son(i32 noundef %0, ptr noundef nonnull %13) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !prof !351, !llvm.loop !352

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = phi ptr [ %17, %16 ], [ %6, %5 ]
  %20 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %19) #18
  %21 = icmp ult i32 %8, %20
  br i1 %21, label %5, label %22, !prof !353, !llvm.loop !354

22:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !355 !PGOFuncName !356 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !218
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !357 !PGOFuncName !358 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !359

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !360
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_immediate_dominators(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !362 {
  %4 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !218
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %5
  %9 = load ptr, ptr %8, align 8, !tbaa !218
  %10 = load ptr, ptr @cfun, align 8, !tbaa !218
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !222
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 8, i64 %5
  %14 = load i32, ptr %13, align 4, !tbaa !225
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !363

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 822, ptr noundef nonnull @.str.1) #19
  br label %17

17:                                               ; preds = %3, %16
  %18 = getelementptr inbounds %struct.et_node, ptr %7, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !335
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21, !prof !364

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %23, %21 ], [ %19, %17 ]
  tail call void @et_split(ptr noundef nonnull %22) #19
  tail call void @et_set_father(ptr noundef nonnull %22, ptr noundef %9) #19
  %23 = load ptr, ptr %18, align 8, !tbaa !335
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21, !prof !365, !llvm.loop !366

25:                                               ; preds = %21
  %26 = load ptr, ptr @cfun, align 8, !tbaa !218
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !222
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 8, i64 %5
  %30 = load i32, ptr %29, align 4, !tbaa !225
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %33, !prof !367

32:                                               ; preds = %25
  store i32 1, ptr %29, align 4, !tbaa !225
  br label %33

33:                                               ; preds = %25, %32, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @nearest_common_dominator(i32 noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 !prof !368 {
  %4 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %5 = load ptr, ptr @cfun, align 8, !tbaa !218
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !222
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 8, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !225
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !369

12:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 845, ptr noundef nonnull @.str.1) #19
  br label %13

13:                                               ; preds = %3, %12
  %14 = icmp eq ptr %1, null
  br i1 %14, label %24, label %15, !prof !370

15:                                               ; preds = %13
  %16 = icmp eq ptr %2, null
  br i1 %16, label %24, label %17, !prof !371

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %8
  %19 = load ptr, ptr %18, align 8, !tbaa !218
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %8
  %21 = load ptr, ptr %20, align 8, !tbaa !218
  %22 = tail call ptr @et_nca(ptr noundef %19, ptr noundef %21) #19
  %23 = load ptr, ptr %22, align 8, !tbaa !327
  br label %24

24:                                               ; preds = %15, %13, %17
  %25 = phi ptr [ %23, %17 ], [ %2, %13 ], [ %1, %15 ]
  ret ptr %25
}

; Function Attrs: optsize
declare ptr @et_nca(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @nearest_common_dominator_for_set(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !372 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %5 = tail call i32 @bitmap_first_set_bit(ptr noundef %1) #19
  %6 = load ptr, ptr @cfun, align 8, !tbaa !218
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !222
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !373
  %11 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %10, i32 noundef %5) #18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #18
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !229
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %32, label %14, !prof !374

14:                                               ; preds = %2, %27
  %15 = phi ptr [ %28, %27 ], [ %6, %2 ]
  %16 = phi ptr [ %29, %27 ], [ %11, %2 ]
  %17 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !222
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !373
  %21 = load i32, ptr %3, align 4, !tbaa !225
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %20, i32 noundef %21) #18
  %23 = icmp eq ptr %16, %22
  br i1 %23, label %27, label %24, !prof !375

24:                                               ; preds = %14
  %25 = tail call ptr @nearest_common_dominator(i32 noundef %0, ptr noundef %16, ptr noundef %22) #18
  %26 = load ptr, ptr @cfun, align 8, !tbaa !218
  br label %27

27:                                               ; preds = %14, %24
  %28 = phi ptr [ %26, %24 ], [ %15, %14 ]
  %29 = phi ptr [ %25, %24 ], [ %16, %14 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !229
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %14, !prof !376, !llvm.loop !377

32:                                               ; preds = %27, %2
  %33 = phi ptr [ %11, %2 ], [ %29, %27 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret ptr %33
}

; Function Attrs: optsize
declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !372 !PGOFuncName !378 {
  %4 = load ptr, ptr %1, align 8, !tbaa !379
  store ptr %4, ptr %0, align 8, !tbaa !381
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !383
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !384

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !381
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !385
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !387
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !388
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !389
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !225
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 !prof !390 !PGOFuncName !391 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !389
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !392

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !393

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !225
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !394, !llvm.loop !395

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !225
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !225
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !387
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !381
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !387
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !396

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !388
  store i64 %35, ptr %3, align 8, !tbaa !389
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !397

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !225
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !225
  %40 = load i32, ptr %23, align 8, !tbaa !387
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !387
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !398, !llvm.loop !399

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !400
  store ptr %44, ptr %0, align 8, !tbaa !381
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !401

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !385
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !225
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !389
  store i32 %16, ptr %1, align 4, !tbaa !225
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !402 !PGOFuncName !403 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !389
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !389
  %6 = load i32, ptr %1, align 4, !tbaa !225
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !225
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @dominated_by_p(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !404 {
  %4 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !218
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 4, i64 %5
  %9 = load ptr, ptr %8, align 8, !tbaa !218
  %10 = load ptr, ptr @cfun, align 8, !tbaa !218
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !222
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 8, i64 %5
  %14 = load i32, ptr %13, align 4, !tbaa !225
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22, !prof !405

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 957, ptr noundef nonnull @.str.1) #19
  %17 = load ptr, ptr @cfun, align 8, !tbaa !218
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !222
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 8, i64 %5
  %21 = load i32, ptr %20, align 4, !tbaa !225
  br label %22

22:                                               ; preds = %3, %16
  %23 = phi i32 [ %14, %3 ], [ %21, %16 ]
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %38, !prof !406

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.et_node, ptr %7, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !407
  %28 = getelementptr inbounds %struct.et_node, ptr %9, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !407
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %40, label %31, !prof !408

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.et_node, ptr %7, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !409
  %34 = getelementptr inbounds %struct.et_node, ptr %9, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !409
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
define dso_local i32 @bb_dom_dfs_in(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !410 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !218
  %7 = load ptr, ptr @cfun, align 8, !tbaa !218
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !222
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 8, i64 %4
  %11 = load i32, ptr %10, align 4, !tbaa !225
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %14, label %13, !prof !411

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 974, ptr noundef nonnull @.str.1) #19
  br label %14

14:                                               ; preds = %2, %13
  %15 = getelementptr inbounds %struct.et_node, ptr %6, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !407
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @bb_dom_dfs_out(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !412 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !218
  %7 = load ptr, ptr @cfun, align 8, !tbaa !218
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !222
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 8, i64 %4
  %11 = load i32, ptr %10, align 4, !tbaa !225
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %14, label %13, !prof !413

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 986, ptr noundef nonnull @.str.1) #19
  br label %14

14:                                               ; preds = %2, %13
  %15 = getelementptr inbounds %struct.et_node, ptr %6, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !409
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_dominators(i32 noundef %0) local_unnamed_addr #0 !prof !334 {
  %2 = alloca %struct.dom_info, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #17
  %3 = icmp eq i32 %0, 2
  %4 = zext i1 %3 to i8
  %5 = tail call zeroext i8 @dom_info_available_p(i32 noundef %0) #18, !range !229
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 999, ptr noundef nonnull @.str.1) #19
  br label %8

8:                                                ; preds = %1, %7
  call fastcc void @init_dom_info(ptr noundef nonnull %2, i32 noundef %0) #18
  call fastcc void @calc_dfs_tree(ptr noundef nonnull %2, i8 noundef zeroext %4) #18
  call fastcc void @calc_idoms(ptr noundef nonnull %2, i8 noundef zeroext %4) #18
  %9 = load ptr, ptr @cfun, align 8, !tbaa !218
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !222
  %12 = load ptr, ptr %11, align 8, !tbaa !238
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !239
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !242
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
  %33 = load i32, ptr %32, align 8, !tbaa !247
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2, i32 noundef %33) #19
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i32 [ %28, %26 ], [ 1, %31 ]
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !247
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %25, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !225
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %23, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !225
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %21, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !218
  %47 = icmp eq ptr %29, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !247
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !247
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, i32 noundef %37, i32 noundef %50, i32 noundef %52) #19
  br label %53

53:                                               ; preds = %34, %48
  %54 = phi i32 [ 1, %48 ], [ %35, %34 ]
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !239
  %57 = load ptr, ptr @cfun, align 8, !tbaa !218
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !222
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !242
  %62 = icmp eq ptr %56, %61
  br i1 %62, label %63, label %26, !llvm.loop !414

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
define dso_local ptr @recompute_dominator(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !415 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %6 = load ptr, ptr @cfun, align 8, !tbaa !218
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !222
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !225
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !416

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1040, ptr noundef nonnull @.str.1) #19
  br label %14

14:                                               ; preds = %2, %13
  %15 = icmp eq i32 %0, 1
  br i1 %15, label %16, label %37, !prof !417

16:                                               ; preds = %14
  %17 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %1) #18
  %18 = extractvalue { i32, ptr } %17, 1
  store i32 0, ptr %4, align 8, !tbaa.struct !418
  %19 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %18, ptr %19, align 8, !tbaa.struct !295
  %20 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %3) #18, !range !229
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %60, label %22, !prof !419

22:                                               ; preds = %16, %31
  %23 = phi ptr [ %32, %31 ], [ null, %16 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !218
  %25 = load ptr, ptr %24, align 8, !tbaa !420
  %26 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %25, ptr noundef %1) #18
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31, !prof !422

28:                                               ; preds = %22
  %29 = load ptr, ptr %24, align 8, !tbaa !420
  %30 = tail call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %23, ptr noundef %29) #18
  br label %31

31:                                               ; preds = %22, %28
  %32 = phi ptr [ %23, %22 ], [ %30, %28 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %33 = load i32, ptr %4, align 8
  %34 = load ptr, ptr %19, align 8
  %35 = call fastcc zeroext i8 @ei_cond(i32 %33, ptr %34, ptr noundef nonnull %3) #18, !range !229
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %60, label %22, !prof !423, !llvm.loop !424

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %39 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef nonnull %38) #18
  %40 = extractvalue { i32, ptr } %39, 1
  store i32 0, ptr %4, align 8, !tbaa.struct !418
  %41 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %40, ptr %41, align 8, !tbaa.struct !295
  %42 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %40, ptr noundef nonnull %3) #18, !range !229
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %37, %54
  %45 = phi ptr [ %55, %54 ], [ null, %37 ]
  %46 = load ptr, ptr %3, align 8, !tbaa !218
  %47 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !425
  %49 = tail call zeroext i8 @dominated_by_p(i32 noundef %0, ptr noundef %48, ptr noundef %1) #18
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load ptr, ptr %47, align 8, !tbaa !425
  %53 = tail call ptr @nearest_common_dominator(i32 noundef %0, ptr noundef %45, ptr noundef %52) #18
  br label %54

54:                                               ; preds = %44, %51
  %55 = phi ptr [ %45, %44 ], [ %53, %51 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %56 = load i32, ptr %4, align 8
  %57 = load ptr, ptr %41, align 8
  %58 = call fastcc zeroext i8 @ei_cond(i32 %56, ptr %57, ptr noundef nonnull %3) #18, !range !229
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %44, !llvm.loop !426

60:                                               ; preds = %54, %31, %37, %16
  %61 = phi ptr [ null, %16 ], [ null, %37 ], [ %32, %31 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc { i32, ptr } @ei_start_1(ptr noundef %0) unnamed_addr #7 !prof !427 !PGOFuncName !428 {
  %2 = insertvalue { i32, ptr } { i32 0, ptr poison }, ptr %0, 1
  ret { i32, ptr } %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !429 !PGOFuncName !430 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !229
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !431

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !218
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !432 !PGOFuncName !433 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !434

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !435

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !296
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !296
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @iterate_fix_dominators(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !436 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %7 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %10, label %9, !prof !437

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1240, ptr noundef nonnull @.str.1) #19
  br label %10

10:                                               ; preds = %3, %9
  %11 = load ptr, ptr @cfun, align 8, !tbaa !218
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !222
  %14 = zext i32 %7 to i64
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 8, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !225
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !438

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1241, ptr noundef nonnull @.str.1) #19
  br label %19

19:                                               ; preds = %10, %18
  %20 = icmp eq i8 %2, 0
  br i1 %20, label %21, label %30, !prof !438

21:                                               ; preds = %19
  %22 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #18, !range !439
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21, %24
  %25 = phi i32 [ %27, %24 ], [ 0, %21 ]
  %26 = load ptr, ptr %4, align 8, !tbaa !218
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %26, ptr noundef null) #18
  %27 = add i32 %25, 1
  %28 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef %27, ptr noundef nonnull %4) #18, !range !439
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %24, !llvm.loop !440

30:                                               ; preds = %24, %21, %19
  tail call fastcc void @prune_bbs_to_update_dominators(ptr noundef %1, i8 noundef zeroext %2) #18
  %31 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %1) #18
  switch i32 %31, label %35 [
    i32 0, label %169
    i32 1, label %32
  ], !prof !441

32:                                               ; preds = %30
  %33 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef 0) #18
  %34 = tail call ptr @recompute_dominator(i32 noundef 1, ptr noundef %33) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %33, ptr noundef %34) #18
  br label %169

35:                                               ; preds = %30
  %36 = tail call ptr @pointer_map_create() #19
  %37 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #18, !range !439
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %50, label %39, !prof !442

39:                                               ; preds = %35, %43
  %40 = phi i32 [ %47, %43 ], [ 0, %35 ]
  %41 = load ptr, ptr %4, align 8, !tbaa !218
  br i1 %20, label %43, label %42, !prof !443

42:                                               ; preds = %39
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %41, ptr noundef null) #18
  br label %43

43:                                               ; preds = %42, %39
  %44 = zext i32 %40 to i64
  %45 = inttoptr i64 %44 to ptr
  %46 = tail call ptr @pointer_map_insert(ptr noundef %36, ptr noundef %41) #19
  store ptr %45, ptr %46, align 8, !tbaa !218
  %47 = add i32 %40, 1
  %48 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef %47, ptr noundef nonnull %4) #18, !range !439
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %39, !prof !444, !llvm.loop !445

50:                                               ; preds = %43, %35
  %51 = sext i32 %31 to i64
  %52 = inttoptr i64 %51 to ptr
  %53 = load ptr, ptr @cfun, align 8, !tbaa !218
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !222
  %56 = load ptr, ptr %55, align 8, !tbaa !238
  %57 = tail call ptr @pointer_map_insert(ptr noundef %36, ptr noundef %56) #19
  store ptr %52, ptr %57, align 8, !tbaa !218
  %58 = add nsw i32 %31, 1
  %59 = tail call ptr @new_graph(i32 noundef %58) #19
  %60 = load i32, ptr %59, align 8, !tbaa !446
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %64, !prof !448

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.graph, ptr %59, i64 0, i32 1
  br label %71

64:                                               ; preds = %71, %50
  %65 = phi i32 [ %60, %50 ], [ %77, %71 ]
  %66 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #18, !range !439
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %82, label %68, !prof !442

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %6, i64 8
  %70 = getelementptr inbounds %struct.graph, ptr %59, i64 0, i32 1
  br label %88

71:                                               ; preds = %62, %71
  %72 = phi i64 [ 0, %62 ], [ %76, %71 ]
  %73 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %74 = load ptr, ptr %63, align 8, !tbaa !449
  %75 = getelementptr inbounds %struct.vertex, ptr %74, i64 %72, i32 4
  store ptr %73, ptr %75, align 8, !tbaa !450
  %76 = add nuw nsw i64 %72, 1
  %77 = load i32, ptr %59, align 8, !tbaa !446
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %71, label %64, !prof !452, !llvm.loop !453

80:                                               ; preds = %121
  %81 = load i32, ptr %59, align 8, !tbaa !446
  br label %82

82:                                               ; preds = %80, %64
  %83 = phi i32 [ %81, %80 ], [ %65, %64 ]
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %136, !prof !448

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.graph, ptr %59, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !449
  br label %125

88:                                               ; preds = %68, %121
  %89 = phi i32 [ 0, %68 ], [ %122, %121 ]
  %90 = load ptr, ptr %4, align 8, !tbaa !218
  %91 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %90) #18
  %92 = extractvalue { i32, ptr } %91, 1
  store i32 0, ptr %6, align 8, !tbaa.struct !418
  store ptr %92, ptr %69, align 8, !tbaa.struct !295
  %93 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %92, ptr noundef nonnull %5) #18, !range !229
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %121, label %95, !prof !454

95:                                               ; preds = %88, %116
  %96 = load ptr, ptr %5, align 8, !tbaa !218
  %97 = load ptr, ptr %96, align 8, !tbaa !420
  %98 = tail call fastcc ptr @root_of_dom_tree(ptr noundef %97) #18
  %99 = icmp eq ptr %98, %90
  br i1 %99, label %116, label %100, !prof !455

100:                                              ; preds = %95
  %101 = tail call ptr @pointer_map_contains(ptr noundef %36, ptr noundef %98) #19
  %102 = load ptr, ptr %101, align 8, !tbaa !218
  %103 = ptrtoint ptr %102 to i64
  %104 = load ptr, ptr %70, align 8, !tbaa !449
  %105 = getelementptr inbounds %struct.vertex, ptr %104, i64 %103, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !450
  %107 = tail call i32 @bitmap_bit_p(ptr noundef %106, i32 noundef %89) #19
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %116, !prof !456

109:                                              ; preds = %100
  %110 = load ptr, ptr %70, align 8, !tbaa !449
  %111 = getelementptr inbounds %struct.vertex, ptr %110, i64 %103, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !450
  %113 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %112, i32 noundef %89) #19
  %114 = trunc i64 %103 to i32
  %115 = tail call ptr @add_edge(ptr noundef nonnull %59, i32 noundef %114, i32 noundef %89) #19
  br label %116

116:                                              ; preds = %100, %95, %109
  call fastcc void @ei_next(ptr noundef nonnull %6) #18
  %117 = load i32, ptr %6, align 8
  %118 = load ptr, ptr %69, align 8
  %119 = call fastcc zeroext i8 @ei_cond(i32 %117, ptr %118, ptr noundef nonnull %5) #18, !range !229
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %95, !prof !457, !llvm.loop !458

121:                                              ; preds = %116, %88
  %122 = add i32 %89, 1
  %123 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %1, i32 noundef %122, ptr noundef nonnull %4) #18, !range !439
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %80, label %88, !prof !444, !llvm.loop !459

125:                                              ; preds = %85, %125
  %126 = phi ptr [ %87, %85 ], [ %130, %125 ]
  %127 = phi i64 [ 0, %85 ], [ %132, %125 ]
  %128 = getelementptr inbounds %struct.vertex, ptr %126, i64 %127, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !450
  tail call void @bitmap_obstack_free(ptr noundef %129) #19
  %130 = load ptr, ptr %86, align 8, !tbaa !449
  %131 = getelementptr inbounds %struct.vertex, ptr %130, i64 %127, i32 4
  store ptr null, ptr %131, align 8, !tbaa !450
  %132 = add nuw nsw i64 %127, 1
  %133 = load i32, ptr %59, align 8, !tbaa !446
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %132, %134
  br i1 %135, label %125, label %136, !prof !452, !llvm.loop !460

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
  %146 = load i32, ptr %145, align 4, !tbaa !225
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %142, !prof !461, !llvm.loop !462

148:                                              ; preds = %142
  %149 = icmp eq i32 %143, -1
  br i1 %149, label %168, label %150, !prof !442

150:                                              ; preds = %148, %165
  %151 = phi i32 [ %166, %165 ], [ %143, %148 ]
  tail call fastcc void @determine_dominators_for_sons(ptr noundef nonnull %59, ptr noundef %1, i32 noundef %151, ptr noundef %139, ptr noundef %140) #18
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, ptr %140, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !225
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %162, label %156, !prof !463

156:                                              ; preds = %150, %156
  %157 = phi i32 [ %160, %156 ], [ %154, %150 ]
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, ptr %139, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !225
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %165, label %156, !prof !464, !llvm.loop !465

162:                                              ; preds = %150
  %163 = getelementptr inbounds i32, ptr %141, i64 %152
  %164 = load i32, ptr %163, align 4, !tbaa !225
  br label %165

165:                                              ; preds = %156, %162
  %166 = phi i32 [ %164, %162 ], [ %157, %156 ]
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %150, !prof !466, !llvm.loop !467

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
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !468 !PGOFuncName !469 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !470

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !360
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !471

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !218
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !218
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prune_bbs_to_update_dominators(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !436 !PGOFuncName !472 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %6 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #18, !range !439
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %70, label %8, !prof !473

8:                                                ; preds = %2
  %9 = icmp eq i8 %1, 0
  %10 = getelementptr inbounds i8, ptr %4, i64 8
  br label %11

11:                                               ; preds = %8, %63
  %12 = phi i32 [ 0, %8 ], [ %64, %63 ]
  br label %13

13:                                               ; preds = %11, %67
  %14 = load ptr, ptr %3, align 8, !tbaa !218
  %15 = load ptr, ptr @cfun, align 8, !tbaa !218
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !222
  %18 = load ptr, ptr %17, align 8, !tbaa !238
  %19 = icmp eq ptr %14, %18
  br i1 %19, label %67, label %20, !prof !474

20:                                               ; preds = %13
  %21 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %14) #18, !range !229
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23, !prof !475

23:                                               ; preds = %20
  %24 = tail call fastcc ptr @single_pred(ptr noundef %14) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %14, ptr noundef %24) #18
  br label %67

25:                                               ; preds = %20
  br i1 %9, label %63, label %26, !prof !476

26:                                               ; preds = %25
  %27 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %14) #18
  %28 = extractvalue { i32, ptr } %27, 1
  store i32 0, ptr %4, align 8, !tbaa.struct !418
  store ptr %28, ptr %10, align 8, !tbaa.struct !295
  %29 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %28, ptr noundef nonnull %5) #18, !range !229
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %52, label %31, !prof !477

31:                                               ; preds = %26, %43
  %32 = phi i8 [ %45, %43 ], [ 1, %26 ]
  %33 = phi ptr [ %44, %43 ], [ null, %26 ]
  %34 = load ptr, ptr %5, align 8, !tbaa !218
  %35 = load ptr, ptr %34, align 8, !tbaa !420
  %36 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %35, ptr noundef %14) #18
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %43, !prof !478

38:                                               ; preds = %31
  %39 = icmp eq ptr %33, null
  %40 = load ptr, ptr %34, align 8, !tbaa !420
  br i1 %39, label %43, label %41, !prof !479

41:                                               ; preds = %38
  %42 = tail call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef nonnull %33, ptr noundef %40) #18
  br label %43

43:                                               ; preds = %38, %41, %31
  %44 = phi ptr [ %33, %31 ], [ %42, %41 ], [ %40, %38 ]
  %45 = phi i8 [ %32, %31 ], [ 0, %41 ], [ %32, %38 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %46 = load i32, ptr %4, align 8
  %47 = load ptr, ptr %10, align 8
  %48 = call fastcc zeroext i8 @ei_cond(i32 %46, ptr %47, ptr noundef nonnull %5) #18, !range !229
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %31, !prof !480, !llvm.loop !481

50:                                               ; preds = %43
  %51 = icmp eq ptr %44, null
  br i1 %51, label %52, label %54, !prof !264

52:                                               ; preds = %26, %50
  %53 = phi i8 [ %45, %50 ], [ 1, %26 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1109, ptr noundef nonnull @.str.1) #19
  br label %54

54:                                               ; preds = %50, %52
  %55 = phi i8 [ %45, %50 ], [ %53, %52 ]
  %56 = phi ptr [ %44, %50 ], [ null, %52 ]
  %57 = icmp eq i8 %55, 0
  br i1 %57, label %58, label %61, !prof !482

58:                                               ; preds = %54
  %59 = tail call ptr @find_edge(ptr noundef %56, ptr noundef %14) #19
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61, !prof !483

61:                                               ; preds = %58, %54
  %62 = load ptr, ptr %3, align 8, !tbaa !218
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %62, ptr noundef %56) #18
  br label %67

63:                                               ; preds = %58, %25
  %64 = add i32 %12, 1
  %65 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %0, i32 noundef %64, ptr noundef nonnull %3) #18, !range !439
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %11, !prof !484, !llvm.loop !485

67:                                               ; preds = %13, %61, %23
  tail call fastcc void @VEC_basic_block_base_unordered_remove(ptr noundef %0, i32 noundef %12) #18
  %68 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %3) #18, !range !439
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %13, !prof !486, !llvm.loop !485

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

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @root_of_dom_tree(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !487 !PGOFuncName !488 {
  %2 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef 1) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 4, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !218
  %6 = tail call ptr @et_root(ptr noundef %5) #19
  %7 = load ptr, ptr %6, align 8, !tbaa !327
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_edge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @graphds_domtree(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_dominators_for_sons(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !489 !PGOFuncName !490 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %3, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !225
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %141, label %13, !prof !491

13:                                               ; preds = %5
  %14 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %1) #18
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %21, !prof !492

16:                                               ; preds = %13
  %17 = load ptr, ptr @cfun, align 8, !tbaa !218
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !222
  %20 = load ptr, ptr %19, align 8, !tbaa !238
  br label %23

21:                                               ; preds = %13
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef %2) #18
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %20, %16 ], [ %22, %21 ]
  %25 = sext i32 %11 to i64
  %26 = getelementptr inbounds i32, ptr %4, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !225
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %33, !prof !493

29:                                               ; preds = %23
  %30 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef %11) #18
  %31 = tail call ptr @recompute_dominator(i32 noundef 1, ptr noundef %30) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %30, ptr noundef %31) #18
  %32 = load i32, ptr %10, align 4, !tbaa !225
  tail call void @identify_vertices(ptr noundef %0, i32 noundef %2, i32 noundef %32) #19
  br label %141

33:                                               ; preds = %23
  %34 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %35 = load i32, ptr %10, align 4, !tbaa !225
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %44, label %37, !prof !442

37:                                               ; preds = %33, %37
  %38 = phi i32 [ %42, %37 ], [ %35, %33 ]
  %39 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %38) #19
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, ptr %4, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !225
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %37, !prof !494, !llvm.loop !495

44:                                               ; preds = %37, %33
  %45 = tail call i32 @graphds_scc(ptr noundef %0, ptr noundef %34) #19
  tail call void @bitmap_obstack_free(ptr noundef %34) #19
  %46 = sext i32 %45 to i64
  %47 = tail call ptr @xcalloc(i64 noundef %46, i64 noundef 8) #19
  %48 = load i32, ptr %10, align 4, !tbaa !225
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %52, label %50, !prof !442

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %57

52:                                               ; preds = %57, %44
  store i32 -1, ptr %6, align 4, !tbaa !225
  %53 = icmp sgt i32 %45, 0
  br i1 %53, label %54, label %132, !prof !448

54:                                               ; preds = %52
  %55 = getelementptr inbounds i8, ptr %8, i64 8
  %56 = zext nneg i32 %45 to i64
  br label %70

57:                                               ; preds = %50, %57
  %58 = phi i32 [ %48, %50 ], [ %66, %57 ]
  %59 = load ptr, ptr %51, align 8, !tbaa !449
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds %struct.vertex, ptr %59, i64 %60, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !496
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %47, i64 %63
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef %64, i32 noundef %58) #18
  %65 = getelementptr inbounds i32, ptr %4, i64 %60
  %66 = load i32, ptr %65, align 4, !tbaa !225
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %52, label %57, !prof !494, !llvm.loop !497

68:                                               ; preds = %119, %114
  %69 = icmp sgt i64 %71, 1
  br i1 %69, label %70, label %77, !prof !498, !llvm.loop !499

70:                                               ; preds = %54, %68
  %71 = phi i64 [ %56, %54 ], [ %72, %68 ]
  %72 = add nsw i64 %71, -1
  %73 = getelementptr inbounds ptr, ptr %47, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !218
  %75 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %74, i32 noundef 0, ptr noundef nonnull %6) #18, !range !439
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %112, label %80, !prof !500

77:                                               ; preds = %68
  br i1 %53, label %78, label %132, !prof !501

78:                                               ; preds = %77
  %79 = zext nneg i32 %45 to i64
  br label %127

80:                                               ; preds = %70, %104
  %81 = phi i32 [ %106, %104 ], [ 0, %70 ]
  %82 = phi ptr [ %105, %104 ], [ null, %70 ]
  %83 = load i32, ptr %6, align 4, !tbaa !225
  %84 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef %83) #18
  %85 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %84) #18
  %86 = extractvalue { i32, ptr } %85, 1
  store i32 0, ptr %8, align 8, !tbaa.struct !418
  store ptr %86, ptr %55, align 8, !tbaa.struct !295
  %87 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %86, ptr noundef nonnull %7) #18, !range !229
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %104, label %89, !prof !500

89:                                               ; preds = %80, %98
  %90 = phi ptr [ %99, %98 ], [ %82, %80 ]
  %91 = load ptr, ptr %7, align 8, !tbaa !218
  %92 = load ptr, ptr %91, align 8, !tbaa !420
  %93 = tail call fastcc ptr @root_of_dom_tree(ptr noundef %92) #18
  %94 = icmp eq ptr %93, %24
  br i1 %94, label %95, label %98, !prof !502

95:                                               ; preds = %89
  %96 = load ptr, ptr %91, align 8, !tbaa !420
  %97 = tail call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %90, ptr noundef %96) #18
  br label %98

98:                                               ; preds = %89, %95
  %99 = phi ptr [ %90, %89 ], [ %97, %95 ]
  call fastcc void @ei_next(ptr noundef nonnull %8) #18
  %100 = load i32, ptr %8, align 8
  %101 = load ptr, ptr %55, align 8
  %102 = call fastcc zeroext i8 @ei_cond(i32 %100, ptr %101, ptr noundef nonnull %7) #18, !range !229
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %89, !prof !503, !llvm.loop !504

104:                                              ; preds = %98, %80
  %105 = phi ptr [ %82, %80 ], [ %99, %98 ]
  %106 = add i32 %81, 1
  %107 = load ptr, ptr %73, align 8, !tbaa !218
  %108 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %107, i32 noundef %106, ptr noundef nonnull %6) #18, !range !439
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %80, !prof !505, !llvm.loop !506

110:                                              ; preds = %104
  %111 = icmp eq ptr %105, null
  br i1 %111, label %112, label %114, !prof !264

112:                                              ; preds = %70, %110
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1195, ptr noundef nonnull @.str.1) #19
  %113 = load ptr, ptr %73, align 8, !tbaa !218
  br label %114

114:                                              ; preds = %110, %112
  %115 = phi ptr [ %105, %110 ], [ null, %112 ]
  %116 = phi ptr [ %107, %110 ], [ %113, %112 ]
  %117 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %116, i32 noundef 0, ptr noundef nonnull %6) #18, !range !439
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %68, label %119, !prof !500

119:                                              ; preds = %114, %119
  %120 = phi i32 [ %123, %119 ], [ 0, %114 ]
  %121 = load i32, ptr %6, align 4, !tbaa !225
  %122 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef %121) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %122, ptr noundef %115) #18
  %123 = add i32 %120, 1
  %124 = load ptr, ptr %73, align 8, !tbaa !218
  %125 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %124, i32 noundef %123, ptr noundef nonnull %6) #18, !range !439
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %68, label %119, !prof !505, !llvm.loop !507

127:                                              ; preds = %78, %127
  %128 = phi i64 [ 0, %78 ], [ %130, %127 ]
  %129 = getelementptr inbounds ptr, ptr %47, i64 %128
  tail call fastcc void @VEC_int_heap_free(ptr noundef %129) #18
  %130 = add nuw nsw i64 %128, 1
  %131 = icmp eq i64 %130, %79
  br i1 %131, label %132, label %127, !prof !494, !llvm.loop !508

132:                                              ; preds = %127, %52, %77
  tail call void @free(ptr noundef %47) #18
  %133 = load i32, ptr %10, align 4, !tbaa !225
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %141, label %135, !prof !442

135:                                              ; preds = %132, %135
  %136 = phi i32 [ %139, %135 ], [ %133, %132 ]
  tail call void @identify_vertices(ptr noundef %0, i32 noundef %2, i32 noundef %136) #19
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, ptr %4, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !225
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %135, !prof !494, !llvm.loop !509

141:                                              ; preds = %135, %132, %5, %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @free_graph(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_to_dominance_info(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !510 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = load ptr, ptr @cfun, align 8, !tbaa !218
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !222
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 8, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !225
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !511

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1388, ptr noundef nonnull @.str.1) #19
  br label %12

12:                                               ; preds = %2, %11
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %7
  %14 = load ptr, ptr %13, align 8, !tbaa !218
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !512

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1389, ptr noundef nonnull @.str.1) #19
  br label %17

17:                                               ; preds = %12, %16
  %18 = load ptr, ptr @cfun, align 8, !tbaa !218
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !222
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 9, i64 %7
  %22 = load i32, ptr %21, align 4, !tbaa !225
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !225
  %24 = tail call ptr @et_new_tree(ptr noundef nonnull %1) #19
  store ptr %24, ptr %13, align 8, !tbaa !218
  %25 = load ptr, ptr @cfun, align 8, !tbaa !218
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !222
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 8, i64 %7
  %29 = load i32, ptr %28, align 4, !tbaa !225
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %32, !prof !513

31:                                               ; preds = %17
  store i32 1, ptr %28, align 4, !tbaa !225
  br label %32

32:                                               ; preds = %31, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_from_dominance_info(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !514 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = load ptr, ptr @cfun, align 8, !tbaa !218
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !222
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 8, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !225
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !515

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1404, ptr noundef nonnull @.str.1) #19
  br label %12

12:                                               ; preds = %2, %11
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 4, i64 %7
  %14 = load ptr, ptr %13, align 8, !tbaa !218
  tail call void @et_free_tree(ptr noundef %14) #19
  store ptr null, ptr %13, align 8, !tbaa !218
  %15 = load ptr, ptr @cfun, align 8, !tbaa !218
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !222
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 9, i64 %7
  %19 = load i32, ptr %18, align 4, !tbaa !225
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 4, !tbaa !225
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 8, i64 %7
  %22 = load i32, ptr %21, align 4, !tbaa !225
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %25, !prof !516

24:                                               ; preds = %12
  store i32 1, ptr %21, align 4, !tbaa !225
  br label %25

25:                                               ; preds = %24, %12
  ret void
}

; Function Attrs: optsize
declare void @et_free_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @dom_info_state(i32 noundef %0) local_unnamed_addr #0 !prof !517 {
  %2 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %3 = load ptr, ptr @cfun, align 8, !tbaa !218
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !222
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 8, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !225
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_dom_info_availability(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !334 {
  %3 = tail call fastcc i32 @dom_convert_dir_to_idx(i32 noundef %0) #18
  %4 = load ptr, ptr @cfun, align 8, !tbaa !218
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !222
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 8, i64 %7
  store i32 %1, ptr %8, align 4, !tbaa !225
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_dominance_info(i32 noundef %0) local_unnamed_addr #0 !prof !334 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !218
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !222
  %5 = load ptr, ptr %4, align 8, !tbaa !238
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !239
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !242
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %31, label %11

11:                                               ; preds = %1, %22
  %12 = phi ptr [ %24, %22 ], [ %7, %1 ]
  %13 = tail call ptr @get_immediate_dominator(i32 noundef %0, ptr noundef %12) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @stderr, align 8, !tbaa !218
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !247
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !247
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.4, i32 noundef %18, i32 noundef %20) #20
  br label %22

22:                                               ; preds = %11, %15
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !239
  %25 = load ptr, ptr @cfun, align 8, !tbaa !218
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !222
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !242
  %30 = icmp eq ptr %24, %29
  br i1 %30, label %31, label %11, !llvm.loop !518

31:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_dominance_tree(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !334 {
  tail call fastcc void @debug_dominance_tree_1(i32 noundef %0, ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @debug_dominance_tree_1(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !334 !PGOFuncName !519 {
  %5 = icmp ne i8 %3, 0
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %10 = load ptr, ptr @stderr, align 8, !tbaa !218
  %11 = tail call i32 @fputc(i32 9, ptr %10)
  %12 = add nuw i32 %9, 1
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %8, !llvm.loop !520

14:                                               ; preds = %8, %4
  %15 = load ptr, ptr @stderr, align 8, !tbaa !218
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !247
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
  br i1 %27, label %31, label %23, !llvm.loop !521

28:                                               ; preds = %14
  %29 = load ptr, ptr @stderr, align 8, !tbaa !218
  %30 = tail call i32 @fputc(i32 10, ptr %29)
  br label %31

31:                                               ; preds = %23, %28
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_dfs_tree_nonrec(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !522 !PGOFuncName !523 {
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = load ptr, ptr @cfun, align 8, !tbaa !218
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !222
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !236
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 4
  %13 = tail call ptr @xmalloc(i64 noundef %12) #19
  %14 = icmp eq i8 %2, 0
  br i1 %14, label %21, label %15, !prof !524

15:                                               ; preds = %3
  %16 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef %1) #18
  %17 = load ptr, ptr @cfun, align 8, !tbaa !218
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !222
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  br label %28

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %23 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef nonnull %22) #18
  %24 = load ptr, ptr @cfun, align 8, !tbaa !218
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !222
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
  %34 = load ptr, ptr %31, align 8, !tbaa !218
  %35 = load ptr, ptr %30, align 8, !tbaa !218
  %36 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 9
  %37 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 11
  %38 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 10
  br label %39

39:                                               ; preds = %134, %28
  %40 = phi ptr [ %32, %28 ], [ %139, %134 ]
  %41 = phi i32 [ 0, %28 ], [ %138, %134 ]
  %42 = phi i32 [ 0, %28 ], [ %135, %134 ]
  %43 = tail call fastcc zeroext i8 @ei_end_p(i32 %41, ptr %40) #18, !range !229
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %131, !prof !525

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
  br i1 %14, label %73, label %55, !prof !526

55:                                               ; preds = %51
  %56 = load ptr, ptr %54, align 8, !tbaa !420
  %57 = icmp eq ptr %56, %35
  br i1 %57, label %66, label %58, !prof !527

58:                                               ; preds = %55
  %59 = load ptr, ptr %36, align 8, !tbaa !245
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !247
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %59, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !225
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66, !prof !528

66:                                               ; preds = %55, %58, %73, %77
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %67 = load i32, ptr %4, align 8
  %68 = load ptr, ptr %33, align 8
  %69 = tail call fastcc zeroext i8 @ei_end_p(i32 %67, ptr %68) #18, !range !229
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %51, label %127, !prof !529, !llvm.loop !530

71:                                               ; preds = %58
  %72 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  br label %87

73:                                               ; preds = %51
  %74 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !425
  %76 = icmp eq ptr %75, %35
  br i1 %76, label %66, label %77, !prof !531

77:                                               ; preds = %73
  %78 = load ptr, ptr %36, align 8, !tbaa !245
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !247
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, ptr %78, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !225
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %66, !prof !532

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 1
  br label %87

87:                                               ; preds = %85, %71
  %88 = phi ptr [ %86, %85 ], [ %56, %71 ]
  %89 = phi ptr [ %75, %85 ], [ %56, %71 ]
  %90 = phi ptr [ %54, %85 ], [ %72, %71 ]
  %91 = tail call fastcc { i32, ptr } @ei_start_1(ptr noundef nonnull %88) #18
  %92 = load ptr, ptr %90, align 8, !tbaa !218
  %93 = extractvalue { i32, ptr } %91, 1
  %94 = icmp eq ptr %89, %34
  br i1 %94, label %95, label %96, !prof !533

95:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 294, ptr noundef nonnull @.str.1) #19
  br label %96

96:                                               ; preds = %87, %95
  %97 = icmp eq ptr %92, %34
  %98 = load ptr, ptr %36, align 8, !tbaa !245
  br i1 %97, label %101, label %99, !prof !534

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 9
  br label %106

101:                                              ; preds = %96
  %102 = load ptr, ptr @cfun, align 8, !tbaa !218
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !222
  %105 = getelementptr inbounds %struct.control_flow_graph, ptr %104, i64 0, i32 5
  br label %106

106:                                              ; preds = %101, %99
  %107 = phi ptr [ %105, %101 ], [ %100, %99 ]
  %108 = load i32, ptr %107, align 8, !tbaa !225
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, ptr %98, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !225
  %112 = load i32, ptr %37, align 8, !tbaa !273
  %113 = add i32 %112, 1
  store i32 %113, ptr %37, align 8, !tbaa !273
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !247
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, ptr %98, i64 %116
  store i32 %112, ptr %117, align 4, !tbaa !225
  %118 = load ptr, ptr %38, align 8, !tbaa !246
  %119 = zext i32 %112 to i64
  %120 = getelementptr inbounds ptr, ptr %118, i64 %119
  store ptr %89, ptr %120, align 8, !tbaa !218
  %121 = load ptr, ptr %0, align 8, !tbaa !257
  %122 = getelementptr inbounds i32, ptr %121, i64 %119
  store i32 %111, ptr %122, align 4, !tbaa !225
  %123 = add i64 %48, 1
  %124 = getelementptr inbounds %struct.edge_iterator, ptr %13, i64 %48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %124, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !418
  store i32 0, ptr %4, align 8, !tbaa.struct !418
  store ptr %93, ptr %33, align 8, !tbaa.struct !295
  %125 = tail call fastcc zeroext i8 @ei_end_p(i32 0, ptr %93) #18, !range !229
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %47, label %129, !prof !535, !llvm.loop !530

127:                                              ; preds = %66
  %128 = trunc i64 %48 to i32
  br label %131

129:                                              ; preds = %106
  %130 = trunc i64 %123 to i32
  br label %131

131:                                              ; preds = %129, %127, %39
  %132 = phi i32 [ %42, %39 ], [ %128, %127 ], [ %130, %129 ]
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %140, label %134, !prof !536

134:                                              ; preds = %131
  %135 = add nsw i32 %132, -1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.edge_iterator, ptr %13, i64 %136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %137, i64 16, i1 false), !tbaa.struct !418
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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !537 !PGOFuncName !538 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !539

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !540
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !542 !PGOFuncName !543 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !544

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !432 !PGOFuncName !545 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !434

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !546 !PGOFuncName !547 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !548

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.1) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !218
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !549 !PGOFuncName !550 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !218
  ret ptr %5
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @eval(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !551 !PGOFuncName !552 {
  %3 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !268
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !225
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14, !prof !553

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !258
  %12 = getelementptr inbounds i32, ptr %11, i64 %5
  %13 = load i32, ptr %12, align 4, !tbaa !225
  br label %42

14:                                               ; preds = %2
  %15 = zext i32 %7 to i64
  %16 = getelementptr inbounds i32, ptr %4, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !225
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19, !prof !554

19:                                               ; preds = %14
  tail call fastcc void @compress(ptr noundef nonnull %0, i32 noundef %1) #18
  %20 = load ptr, ptr %3, align 8, !tbaa !268
  %21 = getelementptr inbounds i32, ptr %20, i64 %5
  %22 = load i32, ptr %21, align 4, !tbaa !225
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i64 [ %23, %19 ], [ %15, %14 ]
  %26 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !263
  %28 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !258
  %30 = getelementptr inbounds i32, ptr %29, i64 %25
  %31 = load i32, ptr %30, align 4, !tbaa !225
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %27, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !225
  %35 = getelementptr inbounds i32, ptr %29, i64 %5
  %36 = load i32, ptr %35, align 4, !tbaa !225
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %27, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !225
  %40 = icmp ult i32 %34, %39
  %41 = select i1 %40, i32 %31, i32 %36, !prof !555
  br label %42

42:                                               ; preds = %24, %9
  %43 = phi i32 [ %13, %9 ], [ %41, %24 ]
  ret i32 %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_roots(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 !prof !556 !PGOFuncName !557 {
  %4 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !263
  %6 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !258
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !271
  %12 = load i32, ptr %9, align 4, !tbaa !225
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %5, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !225
  %16 = getelementptr inbounds i32, ptr %11, i64 %8
  %17 = load i32, ptr %16, align 4, !tbaa !225
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %7, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !225
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %5, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !225
  %24 = icmp ult i32 %15, %23
  %25 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !269
  br i1 %24, label %27, label %73, !prof !558

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  br label %29

29:                                               ; preds = %27, %57
  %30 = phi i64 [ %18, %27 ], [ %66, %57 ]
  %31 = phi ptr [ %16, %27 ], [ %64, %57 ]
  %32 = phi i64 [ %8, %27 ], [ %63, %57 ]
  %33 = phi i32 [ %2, %27 ], [ %58, %57 ]
  %34 = getelementptr inbounds i32, ptr %26, i64 %32
  %35 = load i32, ptr %34, align 4, !tbaa !225
  %36 = getelementptr inbounds i32, ptr %11, i64 %30
  %37 = load i32, ptr %36, align 4, !tbaa !225
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %26, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !225
  %41 = add i32 %40, %35
  %42 = getelementptr inbounds i32, ptr %26, i64 %30
  %43 = load i32, ptr %42, align 4, !tbaa !225
  %44 = shl i32 %43, 1
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %53, label %46, !prof !559

46:                                               ; preds = %29
  %47 = load ptr, ptr %28, align 8, !tbaa !268
  %48 = getelementptr inbounds i32, ptr %47, i64 %30
  store i32 %33, ptr %48, align 4, !tbaa !225
  %49 = load i32, ptr %31, align 4, !tbaa !225
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %11, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !225
  store i32 %52, ptr %31, align 4, !tbaa !225
  br label %57

53:                                               ; preds = %29
  store i32 %35, ptr %42, align 4, !tbaa !225
  %54 = load i32, ptr %31, align 4, !tbaa !225
  %55 = load ptr, ptr %28, align 8, !tbaa !268
  %56 = getelementptr inbounds i32, ptr %55, i64 %32
  store i32 %54, ptr %56, align 4, !tbaa !225
  br label %57

57:                                               ; preds = %53, %46
  %58 = phi i32 [ %33, %46 ], [ %54, %53 ]
  %59 = load i32, ptr %9, align 4, !tbaa !225
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %5, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !225
  %63 = zext i32 %58 to i64
  %64 = getelementptr inbounds i32, ptr %11, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !225
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %7, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !225
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %5, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !225
  %72 = icmp ult i32 %62, %71
  br i1 %72, label %29, label %73, !prof !560, !llvm.loop !561

73:                                               ; preds = %57, %3
  %74 = phi i32 [ %2, %3 ], [ %58, %57 ]
  %75 = phi i32 [ %12, %3 ], [ %59, %57 ]
  %76 = phi i64 [ %8, %3 ], [ %63, %57 ]
  %77 = getelementptr inbounds i32, ptr %7, i64 %76
  store i32 %75, ptr %77, align 4, !tbaa !225
  %78 = getelementptr inbounds i32, ptr %26, i64 %8
  %79 = load i32, ptr %78, align 4, !tbaa !225
  %80 = zext i32 %1 to i64
  %81 = getelementptr inbounds i32, ptr %26, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !225
  %83 = add i32 %82, %79
  store i32 %83, ptr %81, align 4, !tbaa !225
  %84 = load i32, ptr %78, align 4, !tbaa !225
  %85 = shl i32 %84, 1
  %86 = icmp ult i32 %83, %85
  br i1 %86, label %87, label %90, !prof !562

87:                                               ; preds = %73
  %88 = getelementptr inbounds i32, ptr %11, i64 %80
  %89 = load i32, ptr %88, align 4, !tbaa !225
  store i32 %74, ptr %88, align 4, !tbaa !225
  br label %90

90:                                               ; preds = %87, %73
  %91 = phi i32 [ %89, %87 ], [ %74, %73 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %103, label %93, !prof !563

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !268
  br label %96

96:                                               ; preds = %93, %96
  %97 = phi i32 [ %91, %93 ], [ %101, %96 ]
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %95, i64 %98
  store i32 %1, ptr %99, align 4, !tbaa !225
  %100 = getelementptr inbounds i32, ptr %11, i64 %98
  %101 = load i32, ptr %100, align 4, !tbaa !225
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %96, !prof !564, !llvm.loop !565

103:                                              ; preds = %96, %90
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compress(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !566 !PGOFuncName !567 {
  %3 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !268
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !225
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %4, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !225
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %12, !prof !568

12:                                               ; preds = %2
  tail call fastcc void @compress(ptr noundef nonnull %0, i32 noundef %7) #18
  %13 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !263
  %15 = getelementptr inbounds %struct.dom_info, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !258
  %17 = getelementptr inbounds i32, ptr %16, i64 %8
  %18 = load i32, ptr %17, align 4, !tbaa !225
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %14, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !225
  %22 = getelementptr inbounds i32, ptr %16, i64 %5
  %23 = load i32, ptr %22, align 4, !tbaa !225
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %14, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !225
  %27 = icmp ult i32 %21, %26
  br i1 %27, label %28, label %29, !prof !569

28:                                               ; preds = %12
  store i32 %18, ptr %22, align 4, !tbaa !225
  br label %29

29:                                               ; preds = %28, %12
  %30 = load ptr, ptr %3, align 8, !tbaa !268
  %31 = getelementptr inbounds i32, ptr %30, i64 %8
  %32 = load i32, ptr %31, align 4, !tbaa !225
  %33 = getelementptr inbounds i32, ptr %30, i64 %5
  store i32 %32, ptr %33, align 4, !tbaa !225
  br label %34

34:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @assign_dfs_numbers(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #11 !prof !570 !PGOFuncName !571 {
  %3 = load i32, ptr %1, align 4, !tbaa !225
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %1, align 4, !tbaa !225
  %5 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !407
  %6 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !335
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9, !prof !572

9:                                                ; preds = %2
  tail call fastcc void @assign_dfs_numbers(ptr noundef nonnull %7, ptr noundef nonnull %1) #18
  %10 = load ptr, ptr %6, align 8, !tbaa !335
  %11 = getelementptr inbounds %struct.et_node, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !336
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %20, label %14, !prof !573

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %9 ]
  tail call fastcc void @assign_dfs_numbers(ptr noundef %15, ptr noundef nonnull %1) #18
  %16 = getelementptr inbounds %struct.et_node, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !336
  %18 = load ptr, ptr %6, align 8, !tbaa !335
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %14, !prof !574, !llvm.loop !575

20:                                               ; preds = %14, %9, %2
  %21 = load i32, ptr %1, align 4, !tbaa !225
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %1, align 4, !tbaa !225
  %23 = getelementptr inbounds %struct.et_node, ptr %0, i64 0, i32 2
  store i32 %21, ptr %23, align 4, !tbaa !409
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !338 !PGOFuncName !576 {
  %2 = load ptr, ptr %0, align 8, !tbaa !218
  %3 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !577

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #19
  store ptr %6, ptr %0, align 8, !tbaa !218
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !338 !PGOFuncName !578 {
  %3 = load i32, ptr %0, align 8, !tbaa !360
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !360
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !218
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !338 !PGOFuncName !579 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !580

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !581
  %6 = load i32, ptr %0, align 8, !tbaa !360
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !582 !PGOFuncName !583 {
  %2 = load ptr, ptr %0, align 8, !tbaa !584
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !585 !PGOFuncName !586 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #18
  %3 = load ptr, ptr %2, align 8, !tbaa !420
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !prof !587 !PGOFuncName !588 {
  %3 = load i32, ptr %0, align 8, !tbaa !360
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 8, !tbaa !360
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !218
  store ptr %9, ptr %5, align 8, !tbaa !218
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !585 !PGOFuncName !589 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #18, !range !229
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !590

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !584
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
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !591 !PGOFuncName !592 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !218
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !593 !PGOFuncName !594 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !595

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !596
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !598

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !225
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !225
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !591 !PGOFuncName !599 {
  %2 = load ptr, ptr %0, align 8, !tbaa !218
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !600

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !218
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !591 !PGOFuncName !601 {
  %2 = load ptr, ptr %0, align 8, !tbaa !218
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !602

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #19
  store ptr %6, ptr %0, align 8, !tbaa !218
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #6 !prof !591 !PGOFuncName !603 {
  %3 = load i32, ptr %0, align 4, !tbaa !596
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !596
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !225
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !591 !PGOFuncName !604 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !602

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !605
  %6 = load i32, ptr %0, align 4, !tbaa !596
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { cold optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!216}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215}
!35 = !{ptr @calculate_dominance_info, ptr @dom_convert_dir_to_idx, i64 2702}
!36 = !{ptr @calculate_dominance_info, ptr @timevar_push_1, i64 1}
!37 = !{ptr @calculate_dominance_info, ptr @dom_info_available_p, i64 1372}
!38 = !{ptr @calculate_dominance_info, ptr @fancy_abort, i64 1}
!39 = !{ptr @calculate_dominance_info, ptr @et_new_tree, i64 5517471}
!40 = !{ptr @calculate_dominance_info, ptr @init_dom_info, i64 1025}
!41 = !{ptr @calculate_dominance_info, ptr @calc_dfs_tree, i64 1025}
!42 = !{ptr @calculate_dominance_info, ptr @calc_idoms, i64 1025}
!43 = !{ptr @calculate_dominance_info, ptr @et_set_father, i64 5515423}
!44 = !{ptr @calculate_dominance_info, ptr @free_dom_info, i64 1025}
!45 = !{ptr @calculate_dominance_info, ptr @compute_dom_fast_query, i64 1372}
!46 = !{ptr @calculate_dominance_info, ptr @timevar_pop_1, i64 1}
!47 = !{ptr @dom_convert_dir_to_idx, ptr @fancy_abort, i64 1}
!48 = !{ptr @dom_info_available_p, ptr @dom_convert_dir_to_idx, i64 2518850}
!49 = !{ptr @init_dom_info, ptr @xcalloc, i64 8208}
!50 = !{ptr @init_dom_info, ptr @xmalloc, i64 3078}
!51 = !{ptr @init_dom_info, ptr @bitmap_obstack_alloc_stat, i64 498}
!52 = !{ptr @init_dom_info, ptr @fancy_abort, i64 1}
!53 = !{ptr @calc_dfs_tree, ptr @calc_dfs_tree_nonrec, i64 1570}
!54 = !{ptr @calc_dfs_tree, ptr @VEC_edge_base_length, i64 2459537}
!55 = !{ptr @calc_dfs_tree, ptr @bitmap_set_bit, i64 544}
!56 = !{ptr @calc_dfs_tree, ptr @fancy_abort, i64 1}
!57 = !{ptr @calc_idoms, ptr @ei_start_1, i64 5518148}
!58 = !{ptr @calc_idoms, ptr @bitmap_bit_p, i64 1}
!59 = !{ptr @calc_idoms, ptr @ei_end_p, i64 30867433}
!60 = !{ptr @calc_idoms, ptr @ei_edge, i64 9916369}
!61 = !{ptr @calc_idoms, ptr @ei_next, i64 9916369}
!62 = !{ptr @calc_idoms, ptr @eval, i64 13756590}
!63 = !{ptr @calc_idoms, ptr @link_roots, i64 5518148}
!64 = !{ptr @free_dom_info, ptr @free, i64 11286}
!65 = !{ptr @free_dom_info, ptr @bitmap_obstack_free, i64 1026}
!66 = !{ptr @compute_dom_fast_query, ptr @dom_convert_dir_to_idx, i64 1372}
!67 = !{ptr @compute_dom_fast_query, ptr @dom_info_available_p, i64 1372}
!68 = !{ptr @compute_dom_fast_query, ptr @fancy_abort, i64 1}
!69 = !{ptr @compute_dom_fast_query, ptr @assign_dfs_numbers, i64 2741}
!70 = !{ptr @free_dominance_info, ptr @dom_convert_dir_to_idx, i64 39138}
!71 = !{ptr @free_dominance_info, ptr @dom_info_available_p, i64 39138}
!72 = !{ptr @free_dominance_info, ptr @et_free_tree_force, i64 5205657}
!73 = !{ptr @free_dominance_info, ptr @et_free_pools, i64 1027}
!74 = !{ptr @get_immediate_dominator, ptr @dom_convert_dir_to_idx, i64 8350859}
!75 = !{ptr @get_immediate_dominator, ptr @fancy_abort, i64 1}
!76 = !{ptr @set_immediate_dominator, ptr @dom_convert_dir_to_idx, i64 316238}
!77 = !{ptr @set_immediate_dominator, ptr @fancy_abort, i64 1}
!78 = !{ptr @set_immediate_dominator, ptr @et_split, i64 6309}
!79 = !{ptr @set_immediate_dominator, ptr @et_set_father, i64 17437}
!80 = !{ptr @VEC_basic_block_heap_safe_push, ptr @VEC_basic_block_heap_reserve, i64 1082652}
!81 = !{ptr @VEC_basic_block_heap_safe_push, ptr @VEC_basic_block_base_quick_push, i64 1082652}
!82 = !{ptr @first_dom_son, ptr @dom_convert_dir_to_idx, i64 6902880}
!83 = !{ptr @next_dom_son, ptr @dom_convert_dir_to_idx, i64 6545708}
!84 = !{ptr @get_all_dominated_blocks, ptr @VEC_basic_block_heap_safe_push, i64 1080628}
!85 = !{ptr @get_all_dominated_blocks, ptr @VEC_basic_block_base_index, i64 1080627}
!86 = !{ptr @get_all_dominated_blocks, ptr @first_dom_son, i64 1080627}
!87 = !{ptr @get_all_dominated_blocks, ptr @next_dom_son, i64 1080095}
!88 = !{ptr @get_all_dominated_blocks, ptr @VEC_basic_block_base_length, i64 1080627}
!89 = !{ptr @redirect_immediate_dominators, ptr @dom_convert_dir_to_idx, i64 1420}
!90 = !{ptr @redirect_immediate_dominators, ptr @fancy_abort, i64 1}
!91 = !{ptr @redirect_immediate_dominators, ptr @et_split, i64 3207}
!92 = !{ptr @redirect_immediate_dominators, ptr @et_set_father, i64 3207}
!93 = !{ptr @nearest_common_dominator, ptr @dom_convert_dir_to_idx, i64 2880227}
!94 = !{ptr @nearest_common_dominator, ptr @fancy_abort, i64 1}
!95 = !{ptr @nearest_common_dominator, ptr @et_nca, i64 2879376}
!96 = !{ptr @nearest_common_dominator_for_set, ptr @bitmap_first_set_bit, i64 90305}
!97 = !{ptr @nearest_common_dominator_for_set, ptr @VEC_basic_block_base_index, i64 733094}
!98 = !{ptr @nearest_common_dominator_for_set, ptr @bmp_iter_set_init, i64 90305}
!99 = !{ptr @nearest_common_dominator_for_set, ptr @bmp_iter_set, i64 733094}
!100 = !{ptr @nearest_common_dominator_for_set, ptr @nearest_common_dominator, i64 552484}
!101 = !{ptr @nearest_common_dominator_for_set, ptr @bmp_iter_next, i64 642789}
!102 = !{ptr @dominated_by_p, ptr @dom_convert_dir_to_idx, i64 10800763}
!103 = !{ptr @dominated_by_p, ptr @fancy_abort, i64 1}
!104 = !{ptr @dominated_by_p, ptr @et_below, i64 1609018}
!105 = !{ptr @bb_dom_dfs_in, ptr @dom_convert_dir_to_idx, i64 957975}
!106 = !{ptr @bb_dom_dfs_in, ptr @fancy_abort, i64 1}
!107 = !{ptr @bb_dom_dfs_out, ptr @dom_convert_dir_to_idx, i64 584423}
!108 = !{ptr @bb_dom_dfs_out, ptr @fancy_abort, i64 1}
!109 = !{ptr @recompute_dominator, ptr @dom_convert_dir_to_idx, i64 189}
!110 = !{ptr @recompute_dominator, ptr @fancy_abort, i64 1}
!111 = !{ptr @recompute_dominator, ptr @ei_start_1, i64 189}
!112 = !{ptr @recompute_dominator, ptr @ei_cond, i64 470714}
!113 = !{ptr @recompute_dominator, ptr @dominated_by_p, i64 470525}
!114 = !{ptr @recompute_dominator, ptr @nearest_common_dominator, i64 470511}
!115 = !{ptr @recompute_dominator, ptr @ei_next, i64 470525}
!116 = !{ptr @ei_cond, ptr @ei_end_p, i64 2626669}
!117 = !{ptr @ei_cond, ptr @ei_edge, i64 2623982}
!118 = !{ptr @ei_next, ptr @ei_container, i64 44954447}
!119 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 22477224}
!120 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!121 = !{ptr @iterate_fix_dominators, ptr @dom_convert_dir_to_idx, i64 707}
!122 = !{ptr @iterate_fix_dominators, ptr @fancy_abort, i64 2}
!123 = !{ptr @iterate_fix_dominators, ptr @VEC_basic_block_base_iterate, i64 1823}
!124 = !{ptr @iterate_fix_dominators, ptr @set_immediate_dominator, i64 866}
!125 = !{ptr @iterate_fix_dominators, ptr @prune_bbs_to_update_dominators, i64 707}
!126 = !{ptr @iterate_fix_dominators, ptr @VEC_basic_block_base_length, i64 707}
!127 = !{ptr @iterate_fix_dominators, ptr @VEC_basic_block_base_index, i64 182}
!128 = !{ptr @iterate_fix_dominators, ptr @recompute_dominator, i64 182}
!129 = !{ptr @iterate_fix_dominators, ptr @pointer_map_create, i64 236}
!130 = !{ptr @iterate_fix_dominators, ptr @pointer_map_insert, i64 901}
!131 = !{ptr @iterate_fix_dominators, ptr @new_graph, i64 236}
!132 = !{ptr @iterate_fix_dominators, ptr @bitmap_obstack_alloc_stat, i64 899}
!133 = !{ptr @iterate_fix_dominators, ptr @ei_start_1, i64 665}
!134 = !{ptr @iterate_fix_dominators, ptr @ei_cond, i64 554894}
!135 = !{ptr @iterate_fix_dominators, ptr @root_of_dom_tree, i64 554229}
!136 = !{ptr @iterate_fix_dominators, ptr @pointer_map_contains, i64 554228}
!137 = !{ptr @iterate_fix_dominators, ptr @bitmap_bit_p, i64 554228}
!138 = !{ptr @iterate_fix_dominators, ptr @bitmap_set_bit, i64 1128}
!139 = !{ptr @iterate_fix_dominators, ptr @add_edge, i64 1128}
!140 = !{ptr @iterate_fix_dominators, ptr @ei_next, i64 554229}
!141 = !{ptr @iterate_fix_dominators, ptr @bitmap_obstack_free, i64 899}
!142 = !{ptr @iterate_fix_dominators, ptr @pointer_map_destroy, i64 236}
!143 = !{ptr @iterate_fix_dominators, ptr @xmalloc, i64 708}
!144 = !{ptr @iterate_fix_dominators, ptr @graphds_domtree, i64 236}
!145 = !{ptr @iterate_fix_dominators, ptr @determine_dominators_for_sons, i64 899}
!146 = !{ptr @iterate_fix_dominators, ptr @free, i64 708}
!147 = !{ptr @iterate_fix_dominators, ptr @free_graph, i64 236}
!148 = !{ptr @prune_bbs_to_update_dominators, ptr @VEC_basic_block_base_iterate, i64 39061}
!149 = !{ptr @prune_bbs_to_update_dominators, ptr @single_pred_p, i64 38353}
!150 = !{ptr @prune_bbs_to_update_dominators, ptr @single_pred, i64 37166}
!151 = !{ptr @prune_bbs_to_update_dominators, ptr @set_immediate_dominator, i64 37492}
!152 = !{ptr @prune_bbs_to_update_dominators, ptr @ei_start_1, i64 1185}
!153 = !{ptr @prune_bbs_to_update_dominators, ptr @ei_cond, i64 1048158}
!154 = !{ptr @prune_bbs_to_update_dominators, ptr @dominated_by_p, i64 1046973}
!155 = !{ptr @prune_bbs_to_update_dominators, ptr @nearest_common_dominator, i64 1045786}
!156 = !{ptr @prune_bbs_to_update_dominators, ptr @ei_next, i64 1046973}
!157 = !{ptr @prune_bbs_to_update_dominators, ptr @fancy_abort, i64 1}
!158 = !{ptr @prune_bbs_to_update_dominators, ptr @find_edge, i64 1184}
!159 = !{ptr @prune_bbs_to_update_dominators, ptr @VEC_basic_block_base_unordered_remove, i64 37494}
!160 = !{ptr @root_of_dom_tree, ptr @dom_convert_dir_to_idx, i64 1114230}
!161 = !{ptr @root_of_dom_tree, ptr @et_root, i64 1114230}
!162 = !{ptr @determine_dominators_for_sons, ptr @VEC_basic_block_base_length, i64 243}
!163 = !{ptr @determine_dominators_for_sons, ptr @VEC_basic_block_base_index, i64 1330}
!164 = !{ptr @determine_dominators_for_sons, ptr @recompute_dominator, i64 8}
!165 = !{ptr @determine_dominators_for_sons, ptr @set_immediate_dominator, i64 665}
!166 = !{ptr @determine_dominators_for_sons, ptr @identify_vertices, i64 665}
!167 = !{ptr @determine_dominators_for_sons, ptr @bitmap_obstack_alloc_stat, i64 236}
!168 = !{ptr @determine_dominators_for_sons, ptr @bitmap_set_bit, i64 657}
!169 = !{ptr @determine_dominators_for_sons, ptr @graphds_scc, i64 236}
!170 = !{ptr @determine_dominators_for_sons, ptr @bitmap_obstack_free, i64 236}
!171 = !{ptr @determine_dominators_for_sons, ptr @xcalloc, i64 236}
!172 = !{ptr @determine_dominators_for_sons, ptr @VEC_int_heap_safe_push, i64 657}
!173 = !{ptr @determine_dominators_for_sons, ptr @VEC_int_base_iterate, i64 2628}
!174 = !{ptr @determine_dominators_for_sons, ptr @ei_start_1, i64 657}
!175 = !{ptr @determine_dominators_for_sons, ptr @ei_cond, i64 554266}
!176 = !{ptr @determine_dominators_for_sons, ptr @root_of_dom_tree, i64 553609}
!177 = !{ptr @determine_dominators_for_sons, ptr @nearest_common_dominator, i64 553608}
!178 = !{ptr @determine_dominators_for_sons, ptr @ei_next, i64 553609}
!179 = !{ptr @determine_dominators_for_sons, ptr @fancy_abort, i64 1}
!180 = !{ptr @determine_dominators_for_sons, ptr @VEC_int_heap_free, i64 657}
!181 = !{ptr @determine_dominators_for_sons, ptr @free, i64 236}
!182 = !{ptr @add_to_dominance_info, ptr @dom_convert_dir_to_idx, i64 13049}
!183 = !{ptr @add_to_dominance_info, ptr @fancy_abort, i64 2}
!184 = !{ptr @add_to_dominance_info, ptr @et_new_tree, i64 13049}
!185 = !{ptr @delete_from_dominance_info, ptr @dom_convert_dir_to_idx, i64 332707}
!186 = !{ptr @delete_from_dominance_info, ptr @fancy_abort, i64 1}
!187 = !{ptr @delete_from_dominance_info, ptr @et_free_tree, i64 332707}
!188 = !{ptr @dom_info_state, ptr @dom_convert_dir_to_idx, i64 1085235}
!189 = !{ptr @calc_dfs_tree_nonrec, ptr @xmalloc, i64 1569}
!190 = !{ptr @calc_dfs_tree_nonrec, ptr @ei_start_1, i64 12345359}
!191 = !{ptr @calc_dfs_tree_nonrec, ptr @ei_end_p, i64 27708214}
!192 = !{ptr @calc_dfs_tree_nonrec, ptr @ei_edge, i64 22187175}
!193 = !{ptr @calc_dfs_tree_nonrec, ptr @ei_next, i64 15362855}
!194 = !{ptr @calc_dfs_tree_nonrec, ptr @fancy_abort, i64 2}
!195 = !{ptr @calc_dfs_tree_nonrec, ptr @free, i64 1569}
!196 = !{ptr @ei_end_p, ptr @ei_container, i64 67055788}
!197 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 33527988}
!198 = !{ptr @ei_edge, ptr @ei_container, i64 44954447}
!199 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 22477224}
!200 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!201 = !{ptr @eval, ptr @compress, i64 2423027}
!202 = !{ptr @compress, ptr @compress, i64 3226452}
!203 = !{ptr @assign_dfs_numbers, ptr @assign_dfs_numbers, i64 7681851}
!204 = !{ptr @VEC_basic_block_heap_reserve, ptr @VEC_basic_block_base_space, i64 1082652}
!205 = !{ptr @VEC_basic_block_heap_reserve, ptr @vec_heap_p_reserve, i64 2844}
!206 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 74536}
!207 = !{ptr @single_pred, ptr @single_pred_edge, i64 36683}
!208 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 36683}
!209 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!210 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 36683}
!211 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_heap_reserve, i64 660}
!212 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_base_quick_push, i64 660}
!213 = !{ptr @VEC_int_heap_free, ptr @free, i64 659}
!214 = !{ptr @VEC_int_heap_reserve, ptr @VEC_int_base_space, i64 660}
!215 = !{ptr @VEC_int_heap_reserve, ptr @vec_heap_o_reserve, i64 659}
!216 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!217 = !{!"function_entry_count", i64 2702}
!218 = !{!219, !219, i64 0}
!219 = !{!"any pointer", !220, i64 0}
!220 = !{!"omnipotent char", !221, i64 0}
!221 = !{!"Simple C/C++ TBAA"}
!222 = !{!223, !219, i64 8}
!223 = !{!"function", !219, i64 0, !219, i64 8, !219, i64 16, !219, i64 24, !219, i64 32, !219, i64 40, !219, i64 48, !219, i64 56, !219, i64 64, !219, i64 72, !219, i64 80, !219, i64 88, !219, i64 96, !224, i64 104, !224, i64 108, !224, i64 112, !224, i64 116, !224, i64 120, !224, i64 124, !219, i64 128, !224, i64 136, !224, i64 137, !224, i64 138, !224, i64 138, !224, i64 138, !224, i64 138, !224, i64 138, !224, i64 138, !224, i64 138, !224, i64 139, !224, i64 139, !224, i64 139, !224, i64 139, !224, i64 139, !224, i64 139, !224, i64 139}
!224 = !{!"int", !220, i64 0}
!225 = !{!224, !224, i64 0}
!226 = !{!"branch_weights", i32 1331, i32 1373}
!227 = !{!220, !220, i64 0}
!228 = !{!"branch_weights", i32 1373, i32 1}
!229 = !{i8 0, i8 2}
!230 = !{!"branch_weights", i32 1027, i32 347}
!231 = !{!"branch_weights", i32 1027, i32 1}
!232 = !{!"branch_weights", i32 1, i32 1026}
!233 = !{!"branch_weights", i32 1026, i32 5524553}
!234 = distinct !{!234, !235}
!235 = !{!"llvm.loop.mustprogress"}
!236 = !{!237, !224, i64 24}
!237 = !{!"control_flow_graph", !219, i64 0, !219, i64 8, !219, i64 16, !224, i64 24, !224, i64 28, !224, i64 32, !219, i64 40, !224, i64 48, !220, i64 52, !220, i64 60, !224, i64 68, !224, i64 72}
!238 = !{!237, !219, i64 0}
!239 = !{!240, !219, i64 56}
!240 = !{!"basic_block_def", !219, i64 0, !219, i64 8, !219, i64 16, !219, i64 24, !220, i64 32, !219, i64 48, !219, i64 56, !220, i64 64, !241, i64 72, !224, i64 80, !224, i64 84, !224, i64 88, !224, i64 92, !224, i64 96}
!241 = !{!"long", !220, i64 0}
!242 = !{!237, !219, i64 8}
!243 = !{!244, !219, i64 40}
!244 = !{!"dom_info", !219, i64 0, !219, i64 8, !219, i64 16, !219, i64 24, !219, i64 32, !219, i64 40, !219, i64 48, !219, i64 56, !219, i64 64, !219, i64 72, !219, i64 80, !224, i64 88, !224, i64 92, !219, i64 96}
!245 = !{!244, !219, i64 72}
!246 = !{!244, !219, i64 80}
!247 = !{!240, !224, i64 80}
!248 = !{!"branch_weights", i32 1, i32 5523527}
!249 = !{!"branch_weights", i32 1026, i32 5522501}
!250 = distinct !{!250, !235}
!251 = !{!"function_entry_count", i64 42448672}
!252 = !{!"dominance.c:dom_convert_dir_to_idx"}
!253 = !{!"branch_weights", i32 -880976290, i32 80}
!254 = !{!"function_entry_count", i64 2518850}
!255 = !{!"function_entry_count", i64 1026}
!256 = !{!"dominance.c:init_dom_info"}
!257 = !{!244, !219, i64 0}
!258 = !{!244, !219, i64 16}
!259 = !{!"branch_weights", i32 1026, i32 1379970}
!260 = distinct !{!260, !235, !261, !262}
!261 = !{!"llvm.loop.isvectorized", i32 1}
!262 = !{!"llvm.loop.unroll.runtime.disable"}
!263 = !{!244, !219, i64 8}
!264 = !{!"branch_weights", i32 0, i32 -2147483648}
!265 = distinct !{!265, !235, !261, !262}
!266 = !{!244, !219, i64 24}
!267 = !{!244, !219, i64 32}
!268 = !{!244, !219, i64 48}
!269 = !{!244, !219, i64 56}
!270 = distinct !{!270, !235, !261, !262}
!271 = !{!244, !219, i64 64}
!272 = !{!237, !224, i64 32}
!273 = !{!244, !224, i64 88}
!274 = !{!244, !224, i64 92}
!275 = !{!"branch_weights", i32 1, i32 529, i32 499}
!276 = !{!244, !219, i64 96}
!277 = !{!"dominance.c:calc_dfs_tree"}
!278 = !{!"branch_weights", i32 529, i32 499}
!279 = !{!240, !219, i64 48}
!280 = !{!"branch_weights", i32 1, i32 498}
!281 = !{!240, !219, i64 8}
!282 = !{!"branch_weights", i32 544, i32 2463789}
!283 = !{!"branch_weights", i32 3, i32 2463787}
!284 = !{!"branch_weights", i32 498, i32 2463834}
!285 = distinct !{!285, !235}
!286 = !{!"branch_weights", i32 2134575473, i32 12908175}
!287 = !{!"branch_weights", i32 1, i32 191}
!288 = !{!"branch_weights", i32 1, i32 623}
!289 = !{!"branch_weights", i32 191, i32 39681}
!290 = distinct !{!290, !235}
!291 = !{!"dominance.c:calc_idoms"}
!292 = !{!"branch_weights", i32 1026, i32 1}
!293 = !{!"branch_weights", i32 5523527, i32 1}
!294 = !{!"branch_weights", i32 2463789, i32 544}
!295 = !{i64 0, i64 8, !218}
!296 = !{!297, !224, i64 0}
!297 = !{!"", !224, i64 0, !219, i64 8}
!298 = !{!"branch_weights", i32 9926035, i32 5523527}
!299 = !{!"branch_weights", i32 5562005, i32 4364031}
!300 = !{!"branch_weights", i32 1317, i32 9924719}
!301 = !{!"branch_weights", i32 3226072, i32 6700507}
!302 = distinct !{!302, !235}
!303 = !{!"branch_weights", i32 1, i32 5523526}
!304 = !{!"branch_weights", i32 207916, i32 5315612}
!305 = !{!"branch_weights", i32 5523526, i32 1}
!306 = distinct !{!306, !235}
!307 = distinct !{!307, !235}
!308 = !{!"branch_weights", i32 5315612, i32 207916}
!309 = distinct !{!309, !235}
!310 = !{!"dominance.c:free_dom_info"}
!311 = !{!"function_entry_count", i64 1372}
!312 = !{!"dominance.c:compute_dom_fast_query"}
!313 = !{!"branch_weights", i32 1, i32 1373}
!314 = !{!"branch_weights", i32 1, i32 1372}
!315 = !{!316, !219, i64 16}
!316 = !{!"et_node", !219, i64 0, !224, i64 8, !224, i64 12, !219, i64 16, !219, i64 24, !219, i64 32, !219, i64 40, !219, i64 48, !219, i64 56}
!317 = !{!"branch_weights", i32 2745, i32 7681852}
!318 = !{!"branch_weights", i32 1372, i32 7683224}
!319 = distinct !{!319, !235}
!320 = !{!"function_entry_count", i64 39138}
!321 = !{!"branch_weights", i32 38113, i32 1027}
!322 = !{!"branch_weights", i32 1026, i32 5204895}
!323 = distinct !{!323, !235}
!324 = !{!"function_entry_count", i64 8350859}
!325 = !{!"branch_weights", i32 1, i32 8350860}
!326 = !{!"branch_weights", i32 177, i32 8350684}
!327 = !{!316, !219, i64 0}
!328 = !{!"function_entry_count", i64 316238}
!329 = !{!"branch_weights", i32 1, i32 316239}
!330 = !{!"branch_weights", i32 11796, i32 304444}
!331 = !{!"branch_weights", i32 298136, i32 6309}
!332 = !{!"branch_weights", i32 668, i32 17437}
!333 = !{!"branch_weights", i32 29, i32 18076}
!334 = !{!"function_entry_count", i64 0}
!335 = !{!316, !219, i64 24}
!336 = !{!316, !219, i64 40}
!337 = distinct !{!337, !235}
!338 = !{!"function_entry_count", i64 1082652}
!339 = !{!"dominance.c:VEC_basic_block_heap_safe_push"}
!340 = !{!240, !224, i64 96}
!341 = distinct !{!341, !235}
!342 = distinct !{!342, !235}
!343 = distinct !{!343, !235}
!344 = distinct !{!344, !235}
!345 = !{!"function_entry_count", i64 6902880}
!346 = !{!"branch_weights", i32 3321267, i32 3581615}
!347 = !{!"function_entry_count", i64 6545708}
!348 = !{!"branch_weights", i32 3440561, i32 3105149}
!349 = !{!"function_entry_count", i64 533}
!350 = !{!"branch_weights", i32 533, i32 1082120}
!351 = !{!"branch_weights", i32 1082120, i32 0}
!352 = distinct !{!352, !235}
!353 = !{!"branch_weights", i32 1082120, i32 534}
!354 = distinct !{!354, !235}
!355 = !{!"function_entry_count", i64 2369758}
!356 = !{!"dominance.c:VEC_basic_block_base_index"}
!357 = !{!"function_entry_count", i64 1083602}
!358 = !{!"dominance.c:VEC_basic_block_base_length"}
!359 = !{!"branch_weights", i32 1, i32 1083603}
!360 = !{!361, !224, i64 0}
!361 = !{!"VEC_basic_block_base", !224, i64 0, !224, i64 4, !220, i64 8}
!362 = !{!"function_entry_count", i64 1420}
!363 = !{!"branch_weights", i32 1, i32 1421}
!364 = !{!"branch_weights", i32 1206, i32 216}
!365 = !{!"branch_weights", i32 216, i32 2996}
!366 = distinct !{!366, !235}
!367 = !{!"branch_weights", i32 49, i32 168}
!368 = !{!"function_entry_count", i64 2880227}
!369 = !{!"branch_weights", i32 1, i32 2880228}
!370 = !{!"branch_weights", i32 850, i32 2879379}
!371 = !{!"branch_weights", i32 1, i32 2879379}
!372 = !{!"function_entry_count", i64 90305}
!373 = !{!237, !219, i64 16}
!374 = !{!"branch_weights", i32 1, i32 90305}
!375 = !{!"branch_weights", i32 90306, i32 552491}
!376 = !{!"branch_weights", i32 90305, i32 552491}
!377 = distinct !{!377, !235}
!378 = !{!"dominance.c:bmp_iter_set_init"}
!379 = !{!380, !219, i64 0}
!380 = !{!"bitmap_head_def", !219, i64 0, !219, i64 8, !224, i64 16, !219, i64 24}
!381 = !{!382, !219, i64 0}
!382 = !{!"", !219, i64 0, !219, i64 8, !224, i64 16, !241, i64 24}
!383 = !{!382, !219, i64 8}
!384 = !{!"branch_weights", i32 1, i32 90306}
!385 = !{!386, !224, i64 16}
!386 = !{!"bitmap_element_def", !219, i64 0, !219, i64 8, !224, i64 16, !220, i64 24}
!387 = !{!382, !224, i64 16}
!388 = !{!241, !241, i64 0}
!389 = !{!382, !241, i64 24}
!390 = !{!"function_entry_count", i64 733100}
!391 = !{!"dominance.c:bmp_iter_set"}
!392 = !{!"branch_weights", i32 232232, i32 500870}
!393 = !{!"branch_weights", i32 642795, i32 1}
!394 = !{!"branch_weights", i32 5217469, i32 642795}
!395 = distinct !{!395, !235}
!396 = !{!"branch_weights", i32 1, i32 180035}
!397 = !{!"branch_weights", i32 127840, i32 141927}
!398 = !{!"branch_weights", i32 180035, i32 89731}
!399 = distinct !{!399, !235}
!400 = !{!386, !219, i64 0}
!401 = !{!"branch_weights", i32 90306, i32 89731}
!402 = !{!"function_entry_count", i64 642795}
!403 = !{!"dominance.c:bmp_iter_next"}
!404 = !{!"function_entry_count", i64 10800763}
!405 = !{!"branch_weights", i32 1, i32 10800764}
!406 = !{!"branch_weights", i32 9191747, i32 1609018}
!407 = !{!316, !224, i64 8}
!408 = !{!"branch_weights", i32 4585255, i32 4606493}
!409 = !{!316, !224, i64 12}
!410 = !{!"function_entry_count", i64 957975}
!411 = !{!"branch_weights", i32 957976, i32 1}
!412 = !{!"function_entry_count", i64 584423}
!413 = !{!"branch_weights", i32 584424, i32 1}
!414 = distinct !{!414, !235}
!415 = !{!"function_entry_count", i64 189}
!416 = !{!"branch_weights", i32 1, i32 190}
!417 = !{!"branch_weights", i32 190, i32 1}
!418 = !{i64 0, i64 4, !225, i64 8, i64 8, !218}
!419 = !{!"branch_weights", i32 1, i32 189}
!420 = !{!421, !219, i64 0}
!421 = !{!"edge_def", !219, i64 0, !219, i64 8, !220, i64 16, !219, i64 24, !219, i64 32, !224, i64 40, !224, i64 44, !224, i64 48, !224, i64 52, !241, i64 56}
!422 = !{!"branch_weights", i32 475484, i32 1}
!423 = !{!"branch_weights", i32 189, i32 475295}
!424 = distinct !{!424, !235}
!425 = !{!421, !219, i64 8}
!426 = distinct !{!426, !235}
!427 = !{!"function_entry_count", i64 11050764}
!428 = !{!"dominance.c:ei_start_1"}
!429 = !{!"function_entry_count", i64 2626669}
!430 = !{!"dominance.c:ei_cond"}
!431 = !{!"branch_weights", i32 2623984, i32 2687}
!432 = !{!"function_entry_count", i64 22477224}
!433 = !{!"dominance.c:ei_next"}
!434 = !{!"branch_weights", i32 1, i32 22477225}
!435 = !{!"branch_weights", i32 22477225, i32 1}
!436 = !{!"function_entry_count", i64 707}
!437 = !{!"branch_weights", i32 708, i32 1}
!438 = !{!"branch_weights", i32 1, i32 708}
!439 = !{i32 0, i32 2}
!440 = distinct !{!440, !235}
!441 = !{!"branch_weights", i32 99303, i32 121800, i32 76677}
!442 = !{!"branch_weights", i32 1, i32 236}
!443 = !{!"branch_weights", i32 1, i32 668}
!444 = !{!"branch_weights", i32 236, i32 432}
!445 = distinct !{!445, !235}
!446 = !{!447, !224, i64 0}
!447 = !{!"graph", !224, i64 0, !219, i64 8, !219, i64 16}
!448 = !{!"branch_weights", i32 236, i32 1}
!449 = !{!447, !219, i64 8}
!450 = !{!451, !219, i64 24}
!451 = !{!"vertex", !219, i64 0, !219, i64 8, !224, i64 16, !224, i64 20, !219, i64 24}
!452 = !{!"branch_weights", i32 668, i32 236}
!453 = distinct !{!453, !235}
!454 = !{!"branch_weights", i32 1, i32 667}
!455 = !{!"branch_weights", i32 1, i32 557123}
!456 = !{!"branch_weights", i32 1134, i32 555990}
!457 = !{!"branch_weights", i32 667, i32 556456}
!458 = distinct !{!458, !235}
!459 = distinct !{!459, !235}
!460 = distinct !{!460, !235}
!461 = !{!"branch_weights", i32 237, i32 244}
!462 = distinct !{!462, !235}
!463 = !{!"branch_weights", i32 480, i32 425}
!464 = !{!"branch_weights", i32 425, i32 1}
!465 = distinct !{!465, !235}
!466 = !{!"branch_weights", i32 236, i32 668}
!467 = distinct !{!467, !235}
!468 = !{!"function_entry_count", i64 40366}
!469 = !{!"dominance.c:VEC_basic_block_base_iterate"}
!470 = !{!"branch_weights", i32 1, i32 40367}
!471 = !{!"branch_weights", i32 39188, i32 1180}
!472 = !{!"dominance.c:prune_bbs_to_update_dominators"}
!473 = !{!"branch_weights", i32 1, i32 127}
!474 = !{!"branch_weights", i32 1, i32 37854}
!475 = !{!"branch_weights", i32 1171, i32 36684}
!476 = !{!"branch_weights", i32 1, i32 1171}
!477 = !{!"branch_weights", i32 1, i32 1170}
!478 = !{!"branch_weights", i32 1034271, i32 1}
!479 = !{!"branch_weights", i32 1171, i32 1033101}
!480 = !{!"branch_weights", i32 1170, i32 1033101}
!481 = distinct !{!481, !235}
!482 = !{!"branch_weights", i32 1171, i32 1}
!483 = !{!"branch_weights", i32 850, i32 322}
!484 = !{!"branch_weights", i32 127, i32 90369}
!485 = distinct !{!485, !235}
!486 = !{!"branch_weights", i32 707, i32 37147}
!487 = !{!"function_entry_count", i64 1114230}
!488 = !{!"dominance.c:root_of_dom_tree"}
!489 = !{!"function_entry_count", i64 903}
!490 = !{!"dominance.c:determine_dominators_for_sons"}
!491 = !{!"branch_weights", i32 661, i32 244}
!492 = !{!"branch_weights", i32 237, i32 8}
!493 = !{!"branch_weights", i32 8, i32 237}
!494 = !{!"branch_weights", i32 236, i32 425}
!495 = distinct !{!495, !235}
!496 = !{!451, !224, i64 16}
!497 = distinct !{!497, !235}
!498 = !{!"branch_weights", i32 425, i32 236}
!499 = distinct !{!499, !235}
!500 = !{!"branch_weights", i32 1, i32 660}
!501 = !{!"branch_weights", i32 -2147483648, i32 0}
!502 = !{!"branch_weights", i32 557109, i32 1}
!503 = !{!"branch_weights", i32 660, i32 556449}
!504 = distinct !{!504, !235}
!505 = !{!"branch_weights", i32 660, i32 1}
!506 = distinct !{!506, !235}
!507 = distinct !{!507, !235}
!508 = distinct !{!508, !235}
!509 = distinct !{!509, !235}
!510 = !{!"function_entry_count", i64 13049}
!511 = !{!"branch_weights", i32 1, i32 13050}
!512 = !{!"branch_weights", i32 13050, i32 1}
!513 = !{!"branch_weights", i32 99, i32 12952}
!514 = !{!"function_entry_count", i64 332707}
!515 = !{!"branch_weights", i32 1, i32 332708}
!516 = !{!"branch_weights", i32 278, i32 332431}
!517 = !{!"function_entry_count", i64 1085235}
!518 = distinct !{!518, !235}
!519 = !{!"dominance.c:debug_dominance_tree_1"}
!520 = distinct !{!520, !235}
!521 = distinct !{!521, !235}
!522 = !{!"function_entry_count", i64 1569}
!523 = !{!"dominance.c:calc_dfs_tree_nonrec"}
!524 = !{!"branch_weights", i32 529, i32 1042}
!525 = !{!"branch_weights", i32 127, i32 1}
!526 = !{!"branch_weights", i32 5562680, i32 4364529}
!527 = !{!"branch_weights", i32 499, i32 4364031}
!528 = !{!"branch_weights", i32 2463789, i32 1900243}
!529 = !{!"branch_weights", i32 4402656, i32 5524552}
!530 = distinct !{!530, !235}
!531 = !{!"branch_weights", i32 676, i32 5562005}
!532 = !{!"branch_weights", i32 3059196, i32 2502810}
!533 = !{!"branch_weights", i32 1, i32 5522984}
!534 = !{!"branch_weights", i32 1317, i32 5521668}
!535 = !{!"branch_weights", i32 707142529, i32 127}
!536 = !{!"branch_weights", i32 1570, i32 5522984}
!537 = !{!"function_entry_count", i64 58544079}
!538 = !{!"dominance.c:VEC_edge_base_length"}
!539 = !{!"branch_weights", i32 249, i32 58543832}
!540 = !{!541, !224, i64 0}
!541 = !{!"VEC_edge_base", !224, i64 0, !224, i64 4, !220, i64 8}
!542 = !{!"function_entry_count", i64 33527988}
!543 = !{!"dominance.c:ei_end_p"}
!544 = !{!"branch_weights", i32 188, i32 33527802}
!545 = !{!"dominance.c:ei_edge"}
!546 = !{!"function_entry_count", i64 156964685}
!547 = !{!"dominance.c:ei_container"}
!548 = !{!"branch_weights", i32 1, i32 156964686}
!549 = !{!"function_entry_count", i64 22513907}
!550 = !{!"dominance.c:VEC_edge_base_index"}
!551 = !{!"function_entry_count", i64 8749597}
!552 = !{!"dominance.c:eval"}
!553 = !{!"branch_weights", i32 1309959, i32 7439640}
!554 = !{!"branch_weights", i32 5016613, i32 2423028}
!555 = !{!"branch_weights", i32 927331, i32 6512310}
!556 = !{!"function_entry_count", i64 5523526}
!557 = !{!"dominance.c:link_roots"}
!558 = !{!"branch_weights", i32 2408512, i32 3115015}
!559 = !{!"branch_weights", i32 1624203, i32 784310}
!560 = !{!"branch_weights", i32 0, i32 2408512}
!561 = distinct !{!561, !235}
!562 = !{!"branch_weights", i32 3302106, i32 2221422}
!563 = !{!"branch_weights", i32 2409589, i32 3113938}
!564 = !{!"branch_weights", i32 3113938, i32 0}
!565 = distinct !{!565, !235}
!566 = !{!"function_entry_count", i64 5649479}
!567 = !{!"dominance.c:compress"}
!568 = !{!"branch_weights", i32 2423028, i32 3226453}
!569 = !{!"branch_weights", i32 2094145, i32 1132309}
!570 = !{!"function_entry_count", i64 7684595}
!571 = !{!"dominance.c:assign_dfs_numbers"}
!572 = !{!"branch_weights", i32 4285001, i32 3399596}
!573 = !{!"branch_weights", i32 1, i32 3399595}
!574 = !{!"branch_weights", i32 3399595, i32 882662}
!575 = distinct !{!575, !235}
!576 = !{!"dominance.c:VEC_basic_block_heap_reserve"}
!577 = !{!"branch_weights", i32 2844, i32 1079810}
!578 = !{!"dominance.c:VEC_basic_block_base_quick_push"}
!579 = !{!"dominance.c:VEC_basic_block_base_space"}
!580 = !{!"branch_weights", i32 534, i32 1082120}
!581 = !{!361, !224, i64 4}
!582 = !{!"function_entry_count", i64 74536}
!583 = !{!"dominance.c:single_pred_p"}
!584 = !{!240, !219, i64 0}
!585 = !{!"function_entry_count", i64 36683}
!586 = !{!"dominance.c:single_pred"}
!587 = !{!"function_entry_count", i64 37004}
!588 = !{!"dominance.c:VEC_basic_block_base_unordered_remove"}
!589 = !{!"dominance.c:single_pred_edge"}
!590 = !{!"branch_weights", i32 1, i32 36684}
!591 = !{!"function_entry_count", i64 660}
!592 = !{!"dominance.c:VEC_int_heap_safe_push"}
!593 = !{!"function_entry_count", i64 2640}
!594 = !{!"dominance.c:VEC_int_base_iterate"}
!595 = !{!"branch_weights", i32 1, i32 2641}
!596 = !{!597, !224, i64 0}
!597 = !{!"VEC_int_base", !224, i64 0, !224, i64 4, !220, i64 8}
!598 = !{!"branch_weights", i32 1321, i32 1321}
!599 = !{!"dominance.c:VEC_int_heap_free"}
!600 = !{!"branch_weights", i32 1, i32 661}
!601 = !{!"dominance.c:VEC_int_heap_reserve"}
!602 = !{!"branch_weights", i32 661, i32 1}
!603 = !{!"dominance.c:VEC_int_base_quick_push"}
!604 = !{!"dominance.c:VEC_int_base_space"}
!605 = !{!597, !224, i64 4}
