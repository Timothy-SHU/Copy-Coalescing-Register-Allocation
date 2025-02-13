; ModuleID = 'tree-loop-linear.c'
source_filename = "tree-loop-linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.loop_iterator = type { ptr, i32 }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.data_dependence_relation = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x ptr] }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.access_matrix = type { ptr, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.VEC_lambda_vector_base = type { i32, i32, [1 x ptr] }
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }

@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [67 x i8] c"Won't transform loop. Optimal transform is the identity transform\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Can't transform loop, transform is illegal:\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Before:\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"After:\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Successfully transformed loop.\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@chrec_known = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"./tree-data-ref.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @perfect_loop_nest_depth(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @single_exit(ptr noundef nonnull %0) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %2, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %8, %20
  %12 = phi ptr [ %23, %20 ], [ %9, %8 ]
  %13 = phi i32 [ %21, %20 ], [ 1, %8 ]
  %14 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = tail call ptr @single_exit(ptr noundef nonnull %12) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = add i32 %13, 1
  %22 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %11, !llvm.loop !45

25:                                               ; preds = %17, %11, %20, %8, %1, %5
  %26 = phi i32 [ 0, %5 ], [ 0, %1 ], [ 1, %8 ], [ 0, %17 ], [ 0, %11 ], [ %21, %20 ]
  ret i32 %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @linear_transform_loops() local_unnamed_addr #0 !prof !34 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.obstack, align 8
  %11 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr null, ptr %2, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store ptr null, ptr %3, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr null, ptr %4, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %12 = tail call fastcc ptr @VEC_gimple_heap_alloc() #13
  store ptr %12, ptr %5, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %6) #13
  %13 = load ptr, ptr %6, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.obstack, ptr %10, i64 0, i32 1
  %17 = getelementptr inbounds %struct.obstack, ptr %10, i64 0, i32 5
  %18 = getelementptr inbounds %struct.obstack, ptr %10, i64 0, i32 4
  %19 = getelementptr inbounds %struct.obstack, ptr %10, i64 0, i32 2
  %20 = getelementptr inbounds %struct.obstack, ptr %10, i64 0, i32 3
  br label %29

21:                                               ; preds = %129
  %22 = load ptr, ptr %5, align 8
  %23 = icmp eq i8 %130, 0
  br label %24

24:                                               ; preds = %21, %0
  %25 = phi ptr [ %12, %0 ], [ %22, %21 ]
  %26 = phi i1 [ true, %0 ], [ %23, %21 ]
  %27 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %7) #13, !range !48
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %140, label %133

29:                                               ; preds = %15, %129
  %30 = phi ptr [ %13, %15 ], [ %131, %129 ]
  %31 = phi i8 [ 0, %15 ], [ %130, %129 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  %32 = call i32 @perfect_loop_nest_depth(ptr noundef nonnull %30) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %129, label %34

34:                                               ; preds = %29
  %35 = call fastcc ptr @VEC_loop_p_heap_alloc() #13
  store ptr %35, ptr %11, align 8, !tbaa !47
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi ptr [ %39, %36 ], [ %30, %34 ]
  call fastcc void @VEC_loop_p_heap_safe_push(ptr noundef nonnull %11, ptr noundef nonnull %37) #13
  %38 = getelementptr inbounds %struct.loop, ptr %37, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36, !llvm.loop !49

41:                                               ; preds = %36
  %42 = call i32 @_obstack_begin(ptr noundef nonnull %10, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #11
  %43 = load ptr, ptr %2, align 8
  call fastcc void @VEC_tree_base_truncate(ptr noundef %43) #13
  %44 = load ptr, ptr %3, align 8
  call fastcc void @VEC_tree_base_truncate(ptr noundef %44) #13
  %45 = load ptr, ptr %4, align 8
  call fastcc void @VEC_tree_base_truncate(ptr noundef %45) #13
  %46 = call fastcc ptr @VEC_data_reference_p_heap_alloc() #13
  store ptr %46, ptr %9, align 8, !tbaa !47
  %47 = call fastcc ptr @VEC_ddr_p_heap_alloc() #13
  store ptr %47, ptr %8, align 8, !tbaa !47
  %48 = call zeroext i8 @compute_data_dependences_for_loop(ptr noundef nonnull %30, i8 noundef zeroext 1, ptr noundef nonnull %9, ptr noundef nonnull %8) #11
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %111, label %50

50:                                               ; preds = %41
  %51 = load ptr, ptr %9, align 8, !tbaa !47
  call void @lambda_collect_parameters(ptr noundef %51, ptr noundef nonnull %4) #11
  %52 = load ptr, ptr %9, align 8, !tbaa !47
  %53 = load ptr, ptr %4, align 8, !tbaa !47
  %54 = load ptr, ptr %11, align 8, !tbaa !47
  %55 = call zeroext i8 @lambda_compute_access_matrices(ptr noundef %52, ptr noundef %53, ptr noundef %54) #11
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %111, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %8, align 8, !tbaa !47
  call void @dump_ddrs(ptr noundef nonnull %58, ptr noundef %65) #11
  br label %66

66:                                               ; preds = %64, %60, %57
  %67 = call ptr @lambda_trans_matrix_new(i32 noundef %32, i32 noundef %32) #11
  %68 = load ptr, ptr %67, align 8, !tbaa !51
  call void @lambda_matrix_id(ptr noundef %68, i32 noundef %32) #11
  %69 = load ptr, ptr %8, align 8, !tbaa !47
  %70 = load ptr, ptr %9, align 8, !tbaa !47
  %71 = call fastcc ptr @try_interchange_loops(ptr noundef nonnull %67, i32 noundef %32, ptr noundef %69, ptr noundef %70, ptr noundef nonnull %30) #13
  %72 = call zeroext i8 @lambda_trans_matrix_id_p(ptr noundef nonnull %67) #11
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %66
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %76 = icmp eq ptr %75, null
  br i1 %76, label %111, label %77

77:                                               ; preds = %74
  %78 = call i64 @fwrite(ptr nonnull @.str, i64 66, i64 1, ptr nonnull %75)
  br label %111

79:                                               ; preds = %66
  %80 = load ptr, ptr %8, align 8, !tbaa !47
  %81 = call zeroext i8 @lambda_transform_legal_p(ptr noundef nonnull %67, i32 noundef %32, ptr noundef %80) #11
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %85 = icmp eq ptr %84, null
  br i1 %85, label %111, label %86

86:                                               ; preds = %83
  %87 = call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr nonnull %84)
  br label %111

88:                                               ; preds = %79
  %89 = call ptr @gcc_loopnest_to_lambda_loopnest(ptr noundef nonnull %30, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %10) #11
  %90 = icmp eq ptr %89, null
  br i1 %90, label %111, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = call i64 @fwrite(ptr nonnull @.str.2, i64 8, i64 1, ptr nonnull %92)
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !47
  call void @print_lambda_loopnest(ptr noundef %96, ptr noundef nonnull %89, i8 noundef signext 105) #11
  br label %97

97:                                               ; preds = %94, %91
  %98 = call ptr @lambda_loopnest_transform(ptr noundef nonnull %89, ptr noundef nonnull %67, ptr noundef nonnull %10) #11
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = call i64 @fwrite(ptr nonnull @.str.3, i64 7, i64 1, ptr nonnull %99)
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !47
  call void @print_lambda_loopnest(ptr noundef %103, ptr noundef %98, i8 noundef signext 117) #11
  br label %104

104:                                              ; preds = %101, %97
  %105 = load ptr, ptr %2, align 8, !tbaa !47
  %106 = load ptr, ptr %3, align 8, !tbaa !47
  call void @lambda_loopnest_to_gcc_loopnest(ptr noundef nonnull %30, ptr noundef %105, ptr noundef %106, ptr noundef nonnull %5, ptr noundef %98, ptr noundef nonnull %67, ptr noundef nonnull %10) #11
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = call i64 @fwrite(ptr nonnull @.str.4, i64 31, i64 1, ptr nonnull %107)
  br label %111

111:                                              ; preds = %104, %109, %88, %83, %86, %74, %77, %50, %41
  %112 = phi i8 [ %31, %77 ], [ %31, %74 ], [ 1, %109 ], [ 1, %104 ], [ %31, %88 ], [ %31, %86 ], [ %31, %83 ], [ %31, %50 ], [ %31, %41 ]
  %113 = load ptr, ptr %16, align 8, !tbaa !53
  %114 = ptrtoint ptr %113 to i64
  %115 = sub i64 0, %114
  store i64 %115, ptr %17, align 8, !tbaa !55
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load ptr, ptr %18, align 8, !tbaa !56
  %119 = ptrtoint ptr %118 to i64
  %120 = sub i64 %119, %114
  %121 = icmp sgt i64 %120, %115
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = getelementptr inbounds i8, ptr %113, i64 %115
  store ptr %123, ptr %19, align 8, !tbaa !57
  store ptr %123, ptr %20, align 8, !tbaa !58
  br label %126

124:                                              ; preds = %117, %111
  %125 = getelementptr inbounds i8, ptr %113, i64 %115
  call void @obstack_free(ptr noundef nonnull %10, ptr noundef %125) #11
  br label %126

126:                                              ; preds = %124, %122
  %127 = load ptr, ptr %8, align 8, !tbaa !47
  call void @free_dependence_relations(ptr noundef %127) #11
  %128 = load ptr, ptr %9, align 8, !tbaa !47
  call void @free_data_refs(ptr noundef %128) #11
  call fastcc void @VEC_loop_p_heap_free(ptr noundef nonnull %11) #13
  br label %129

129:                                              ; preds = %29, %126
  %130 = phi i8 [ %112, %126 ], [ %31, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %6) #13
  %131 = load ptr, ptr %6, align 8, !tbaa !47
  %132 = icmp eq ptr %131, null
  br i1 %132, label %21, label %29, !llvm.loop !59

133:                                              ; preds = %24, %133
  %134 = phi i32 [ %136, %133 ], [ 0, %24 ]
  %135 = load ptr, ptr %7, align 8, !tbaa !47
  call void @remove_iv(ptr noundef %135) #11
  %136 = add i32 %134, 1
  %137 = load ptr, ptr %5, align 8
  %138 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %137, i32 noundef %136, ptr noundef nonnull %7) #13, !range !48
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %133, !llvm.loop !60

140:                                              ; preds = %133, %24
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %2) #13
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %3) #13
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %5) #13
  call void @scev_reset() #11
  br i1 %26, label %142, label %141

141:                                              ; preds = %140
  call void @rewrite_into_loop_closed_ssa(ptr noundef null, i32 noundef 8192) #11
  br label %142

142:                                              ; preds = %141, %140
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc() unnamed_addr #0 !prof !34 !PGOFuncName !61 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #11
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !62 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !63
  %4 = load ptr, ptr @cfun, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !67
  store ptr null, ptr %1, align 8, !tbaa !47
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #13
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #13
  store ptr %11, ptr %0, align 8, !tbaa !67
  %12 = load ptr, ptr @cfun, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !70
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !67
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #13
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !71

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #13
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_loop_p_heap_alloc() unnamed_addr #0 !prof !34 !PGOFuncName !72 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #11
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !73 {
  tail call fastcc void @VEC_loop_p_heap_reserve(ptr noundef %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @VEC_loop_p_base_quick_push(ptr noundef %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_tree_base_truncate(ptr noundef writeonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !74 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !75
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_data_reference_p_heap_alloc() unnamed_addr #0 !prof !34 !PGOFuncName !77 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #11
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ddr_p_heap_alloc() unnamed_addr #0 !prof !34 !PGOFuncName !78 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 100) #11
  ret ptr %1
}

; Function Attrs: optsize
declare zeroext i8 @compute_data_dependences_for_loop(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lambda_collect_parameters(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @lambda_compute_access_matrices(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_ddrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lambda_trans_matrix_new(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lambda_matrix_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @try_interchange_loops(ptr noundef returned %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !34 !PGOFuncName !79 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.double_int, align 8
  %9 = alloca %struct.double_int, align 8
  %10 = alloca %struct.double_int, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  %13 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %2) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %112, label %15

15:                                               ; preds = %5
  %16 = tail call fastcc ptr @VEC_ddr_p_base_index(ptr noundef %2) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %112, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.data_dependence_relation, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !80
  %21 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !47
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %112, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr @compiler_params, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.param_info, ptr %24, i64 99, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !82
  %27 = shl nsw i32 %26, 10
  %28 = sext i32 %27 to i64
  %29 = tail call fastcc i64 @uhwi_to_double_int(i64 noundef %28) #13
  %30 = getelementptr inbounds %struct.param_info, ptr %24, i64 101, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !82
  %32 = shl nsw i32 %31, 10
  %33 = sext i32 %32 to i64
  %34 = tail call fastcc i64 @uhwi_to_double_int(i64 noundef %33) #13
  %35 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = icmp eq ptr %36, null
  br i1 %37, label %112, label %38

38:                                               ; preds = %23
  %39 = getelementptr inbounds { i64, i64 }, ptr %8, i64 0, i32 1
  %40 = getelementptr inbounds { i64, i64 }, ptr %9, i64 0, i32 1
  %41 = getelementptr inbounds { i64, i64 }, ptr %10, i64 0, i32 1
  br label %46

42:                                               ; preds = %106, %46
  %43 = getelementptr inbounds %struct.loop, ptr %47, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = icmp eq ptr %44, null
  br i1 %45, label %112, label %46, !llvm.loop !84

46:                                               ; preds = %38, %42
  %47 = phi ptr [ %36, %38 ], [ %44, %42 ]
  %48 = call fastcc i32 @loop_depth(ptr noundef %4) #13
  %49 = call fastcc i32 @loop_depth(ptr noundef nonnull %47) #13
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %42

51:                                               ; preds = %46, %106
  %52 = phi ptr [ %108, %106 ], [ %4, %46 ]
  call fastcc void @gather_interchange_stats(ptr noundef %2, ptr noundef %3, ptr noundef %52, ptr noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef nonnull %8) #13
  call fastcc void @gather_interchange_stats(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %47, ptr noundef %4, ptr noundef nonnull %7, ptr noundef nonnull %12, ptr noundef nonnull %9) #13
  %53 = load i64, ptr %8, align 8
  %54 = load i64, ptr %39, align 8
  %55 = load i64, ptr %9, align 8
  %56 = load i64, ptr %40, align 8
  %57 = call i32 @double_int_ucmp(i64 %53, i64 %54, i64 %55, i64 %56) #11
  %58 = icmp slt i32 %57, 0
  %59 = select i1 %58, i64 %54, i64 %56
  %60 = select i1 %58, i64 %53, i64 %55
  %61 = select i1 %58, i64 %56, i64 %54
  %62 = select i1 %58, i64 %55, i64 %53
  %63 = call i32 @double_int_ucmp(i64 %60, i64 %59, i64 %34, i64 0) #11
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %106, label %65

65:                                               ; preds = %51
  br i1 %58, label %66, label %68

66:                                               ; preds = %65
  %67 = call zeroext i8 @estimated_loop_iterations(ptr noundef nonnull %47, i8 noundef zeroext 0, ptr noundef nonnull %10) #11
  br label %70

68:                                               ; preds = %65
  %69 = call zeroext i8 @estimated_loop_iterations(ptr noundef %52, i8 noundef zeroext 0, ptr noundef nonnull %10) #11
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i8 [ %67, %66 ], [ %69, %68 ]
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %70
  %74 = load i64, ptr %10, align 8
  %75 = load i64, ptr %41, align 8
  %76 = call { i64, i64 } @double_int_mul(i64 %62, i64 %61, i64 %74, i64 %75) #11
  %77 = extractvalue { i64, i64 } %76, 0
  %78 = extractvalue { i64, i64 } %76, 1
  %79 = call i32 @double_int_ucmp(i64 %77, i64 %78, i64 %29, i64 0) #11
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %106, label %81

81:                                               ; preds = %73, %70
  %82 = load i32, ptr %6, align 4, !tbaa !50
  %83 = load i32, ptr %7, align 4, !tbaa !50
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = load i32, ptr %11, align 4, !tbaa !50
  %87 = load i32, ptr %12, align 4, !tbaa !50
  %88 = icmp ugt i32 %86, %87
  %89 = or i1 %58, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %85, %81
  %91 = load ptr, ptr %0, align 8, !tbaa !51
  %92 = call fastcc i32 @loop_depth(ptr noundef %52) #13
  %93 = call fastcc i32 @loop_depth(ptr noundef %4) #13
  %94 = sub i32 %92, %93
  %95 = call fastcc i32 @loop_depth(ptr noundef nonnull %47) #13
  %96 = sub i32 %95, %93
  call void @lambda_matrix_row_exchange(ptr noundef %91, i32 noundef %94, i32 noundef %96) #11
  %97 = call zeroext i8 @lambda_transform_legal_p(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #11
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = load ptr, ptr %0, align 8, !tbaa !51
  %101 = call fastcc i32 @loop_depth(ptr noundef %52) #13
  %102 = call fastcc i32 @loop_depth(ptr noundef %4) #13
  %103 = sub i32 %101, %102
  %104 = call fastcc i32 @loop_depth(ptr noundef nonnull %47) #13
  %105 = sub i32 %104, %102
  call void @lambda_matrix_row_exchange(ptr noundef %100, i32 noundef %103, i32 noundef %105) #11
  br label %106

106:                                              ; preds = %85, %99, %90, %73, %51
  %107 = getelementptr inbounds %struct.loop, ptr %52, i64 0, i32 8
  %108 = load ptr, ptr %107, align 8, !tbaa !35
  %109 = call fastcc i32 @loop_depth(ptr noundef %108) #13
  %110 = call fastcc i32 @loop_depth(ptr noundef nonnull %47) #13
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %51, label %42, !llvm.loop !85

112:                                              ; preds = %42, %23, %15, %18, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret ptr %0
}

; Function Attrs: optsize
declare zeroext i8 @lambda_trans_matrix_id_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @lambda_transform_legal_p(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gcc_loopnest_to_lambda_loopnest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_lambda_loopnest(ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lambda_loopnest_transform(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lambda_loopnest_to_gcc_loopnest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_dependence_relations(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_data_refs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_loop_p_heap_free(ptr nocapture noundef %0) unnamed_addr #5 !prof !34 !PGOFuncName !86 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #13
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !87 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !63
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !67
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #13, !range !48
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !63
  %13 = load i32, ptr %3, align 4, !tbaa !50
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #13
  store ptr %14, ptr %1, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !88

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #13
  store ptr null, ptr %1, align 8, !tbaa !47
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !34 !PGOFuncName !89 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !90
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !47
  ret i32 %14
}

; Function Attrs: optsize
declare void @remove_iv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #5 !prof !34 !PGOFuncName !92 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #13
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #5 !prof !34 !PGOFuncName !93 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #13
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #2

; Function Attrs: optsize
declare void @rewrite_into_loop_closed_ssa(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !94 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #11
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #7 !prof !34 !PGOFuncName !95 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #13
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !34 !PGOFuncName !97 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !98
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !47
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #6 !prof !34 !PGOFuncName !100 {
  %3 = load i32, ptr %0, align 4, !tbaa !101
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !101
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !34 !PGOFuncName !103 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #13
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !34 !PGOFuncName !105 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !98
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !34 !PGOFuncName !106 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !107 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = tail call fastcc i32 @VEC_loop_p_base_space(ptr noundef %2) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #11
  store ptr %6, ptr %0, align 8, !tbaa !47
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_loop_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !34 !PGOFuncName !108 {
  %3 = load i32, ptr %0, align 8, !tbaa !98
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !98
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_space(ptr noundef readonly %0) unnamed_addr #8 !prof !34 !PGOFuncName !109 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !110
  %6 = load i32, ptr %0, align 8, !tbaa !98
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ddr_p_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !34 !PGOFuncName !111 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !112
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_ddr_p_base_index(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !34 !PGOFuncName !114 {
  %2 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @uhwi_to_double_int(i64 noundef %0) unnamed_addr #9 !prof !34 !PGOFuncName !115 {
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !34 !PGOFuncName !116 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gather_interchange_stats(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) unnamed_addr #0 !prof !34 !PGOFuncName !117 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  store i32 0, ptr %4, align 4, !tbaa !50
  store i32 0, ptr %5, align 4, !tbaa !50
  %10 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 0) #13
  %11 = extractvalue { i64, i64 } %10, 0
  %12 = extractvalue { i64, i64 } %10, 1
  store i64 %11, ptr %6, align 8, !tbaa.struct !118
  %13 = getelementptr inbounds i8, ptr %6, i64 8
  store i64 %12, ptr %13, align 8, !tbaa.struct !120
  %14 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %8) #13, !range !48
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !47
  br label %23

18:                                               ; preds = %61, %7
  %19 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %9) #13, !range !48
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %133, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 8
  br label %65

23:                                               ; preds = %16, %61
  %24 = phi i32 [ 0, %16 ], [ %62, %61 ]
  %25 = load ptr, ptr %8, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.data_dependence_relation, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  %28 = icmp eq ptr %27, %17
  %29 = load ptr, ptr @chrec_known, align 8
  %30 = icmp eq ptr %27, %29
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %61, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.data_dependence_relation, ptr %25, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !121
  %35 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %34) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %32, %57
  %38 = phi i32 [ %58, %57 ], [ 0, %32 ]
  %39 = tail call fastcc ptr @VEC_lambda_vector_base_index(ptr noundef %34, i32 noundef %38) #13
  %40 = tail call fastcc i32 @loop_depth(ptr noundef %2) #13
  %41 = tail call fastcc i32 @loop_depth(ptr noundef %3) #13
  %42 = sub i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %39, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !50
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, ptr %5, align 4, !tbaa !50
  %49 = add i32 %48, 1
  store i32 %49, ptr %5, align 4, !tbaa !50
  br label %57

50:                                               ; preds = %37
  %51 = icmp slt i32 %45, 0
  %52 = load i32, ptr %4, align 4, !tbaa !50
  br i1 %51, label %53, label %55

53:                                               ; preds = %50
  %54 = sub i32 %52, %45
  store i32 %54, ptr %4, align 4, !tbaa !50
  br label %57

55:                                               ; preds = %50
  %56 = add i32 %52, %45
  store i32 %56, ptr %4, align 4, !tbaa !50
  br label %57

57:                                               ; preds = %53, %55, %47
  %58 = add nuw i32 %38, 1
  %59 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %34) #13
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %37, label %61, !llvm.loop !122

61:                                               ; preds = %57, %23, %32
  %62 = add i32 %24, 1
  %63 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %0, i32 noundef %62, ptr noundef nonnull %8) #13, !range !48
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %18, label %23, !llvm.loop !123

65:                                               ; preds = %21, %129
  %66 = phi i32 [ 0, %21 ], [ %130, %129 ]
  %67 = load ptr, ptr %9, align 8, !tbaa !47
  %68 = getelementptr inbounds %struct.data_reference, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !124
  %70 = load ptr, ptr %67, align 8, !tbaa !129
  %71 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %70) #13
  %72 = load ptr, ptr %22, align 8, !tbaa !35
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %77, label %74

74:                                               ; preds = %65
  %75 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %72, ptr noundef %71) #11
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %129, label %77

77:                                               ; preds = %74, %65
  %78 = getelementptr inbounds %struct.data_reference, ptr %67, i64 0, i32 5, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !130
  %80 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %79) #13
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %129, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.data_reference, ptr %67, i64 0, i32 7
  br label %84

84:                                               ; preds = %82, %122
  %85 = phi i32 [ 0, %82 ], [ %123, %122 ]
  %86 = phi ptr [ %69, %82 ], [ %125, %122 ]
  %87 = load ptr, ptr %83, align 8, !tbaa !131
  %88 = load i32, ptr %2, align 8, !tbaa !70
  %89 = tail call fastcc i32 @am_vector_index_for_loop(ptr noundef %87, i32 noundef %88) #13
  %90 = load ptr, ptr %83, align 8, !tbaa !131
  %91 = getelementptr inbounds %struct.access_matrix, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !132
  %93 = tail call fastcc ptr @VEC_lambda_vector_base_index(ptr noundef %92, i32 noundef %85) #13
  %94 = sext i32 %89 to i64
  %95 = getelementptr inbounds i32, ptr %93, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !50
  %97 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !134
  %99 = getelementptr inbounds %struct.tree_type, ptr %98, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !134
  %101 = icmp eq ptr %100, null
  br i1 %101, label %122, label %102

102:                                              ; preds = %84
  %103 = load i64, ptr %100, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 23
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %100) #11
  %108 = extractvalue { i64, i64 } %107, 0
  %109 = extractvalue { i64, i64 } %107, 1
  %110 = sext i32 %96 to i64
  %111 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef %110) #13
  %112 = extractvalue { i64, i64 } %111, 0
  %113 = extractvalue { i64, i64 } %111, 1
  %114 = tail call { i64, i64 } @double_int_mul(i64 %108, i64 %109, i64 %112, i64 %113) #11
  %115 = extractvalue { i64, i64 } %114, 0
  %116 = extractvalue { i64, i64 } %114, 1
  %117 = load i64, ptr %6, align 8
  %118 = load i64, ptr %13, align 8
  %119 = tail call { i64, i64 } @double_int_add(i64 %117, i64 %118, i64 %115, i64 %116) #11
  %120 = extractvalue { i64, i64 } %119, 0
  %121 = extractvalue { i64, i64 } %119, 1
  store i64 %120, ptr %6, align 8, !tbaa.struct !118
  store i64 %121, ptr %13, align 8, !tbaa.struct !120
  br label %122

122:                                              ; preds = %84, %102, %106
  %123 = add nuw i32 %85, 1
  %124 = getelementptr inbounds %struct.tree_exp, ptr %86, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !134
  %126 = load ptr, ptr %78, align 8, !tbaa !130
  %127 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %126) #13
  %128 = icmp ult i32 %123, %127
  br i1 %128, label %84, label %129, !llvm.loop !135

129:                                              ; preds = %122, %77, %74
  %130 = add i32 %66, 1
  %131 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %1, i32 noundef %130, ptr noundef nonnull %9) #13, !range !48
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %65, !llvm.loop !136

133:                                              ; preds = %129, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  ret void
}

; Function Attrs: optsize
declare i32 @double_int_ucmp(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @estimated_loop_iterations(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_mul(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lambda_matrix_row_exchange(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc { i64, i64 } @shwi_to_double_int(i64 noundef %0) unnamed_addr #9 !prof !34 !PGOFuncName !137 {
  %2 = ashr i64 %0, 63
  %3 = insertvalue { i64, i64 } poison, i64 %0, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_ddr_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !34 !PGOFuncName !138 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !112
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !47
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_lambda_vector_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !34 !PGOFuncName !139 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !140
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_lambda_vector_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !34 !PGOFuncName !142 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_data_reference_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !34 !PGOFuncName !143 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !144
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !47
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !34 !PGOFuncName !146 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !147
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !34 !PGOFuncName !149 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !75
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @am_vector_index_for_loop(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !150 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = load ptr, ptr %0, align 8, !tbaa !151
  %5 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %3) #13, !range !48
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %12
  %8 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %9 = load ptr, ptr %3, align 8, !tbaa !47
  %10 = load i32, ptr %9, align 8, !tbaa !70
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = add nuw nsw i32 %8, 1
  %14 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %4, i32 noundef %13, ptr noundef nonnull %3) #13, !range !48
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %7, !llvm.loop !152

16:                                               ; preds = %12, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 157, ptr noundef nonnull @.str.6) #11
  br label %17

17:                                               ; preds = %7, %16
  %18 = phi i32 [ 0, %16 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %18
}

; Function Attrs: optsize
declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !34 !PGOFuncName !153 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  ret ptr %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !34 !PGOFuncName !154 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !101
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !50
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !50
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #7 !prof !34 !PGOFuncName !155 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #5 !prof !34 !PGOFuncName !156 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #13
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { optsize }

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
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !40, i64 48}
!36 = !{!"loop", !37, i64 0, !37, i64 4, !40, i64 8, !40, i64 16, !41, i64 24, !37, i64 32, !37, i64 36, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !42, i64 80, !42, i64 96, !38, i64 112, !38, i64 113, !37, i64 116, !40, i64 120, !40, i64 128, !38, i64 136, !40, i64 144}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"any pointer", !38, i64 0}
!41 = !{!"lpt_decision", !37, i64 0, !37, i64 4}
!42 = !{!"", !43, i64 0, !43, i64 8}
!43 = !{!"long", !38, i64 0}
!44 = !{!36, !40, i64 56}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!40, !40, i64 0}
!48 = !{i32 0, i32 2}
!49 = distinct !{!49, !46}
!50 = !{!37, !37, i64 0}
!51 = !{!52, !40, i64 0}
!52 = !{!"lambda_trans_matrix_s", !40, i64 0, !37, i64 8, !37, i64 12, !37, i64 16}
!53 = !{!54, !40, i64 8}
!54 = !{!"obstack", !43, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !43, i64 40, !37, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !37, i64 80, !37, i64 80, !37, i64 80}
!55 = !{!54, !43, i64 40}
!56 = !{!54, !40, i64 32}
!57 = !{!54, !40, i64 16}
!58 = !{!54, !40, i64 24}
!59 = distinct !{!59, !46}
!60 = distinct !{!60, !46}
!61 = !{!"tree-loop-linear.c:VEC_gimple_heap_alloc"}
!62 = !{!"tree-loop-linear.c:fel_init"}
!63 = !{!64, !37, i64 8}
!64 = !{!"", !40, i64 0, !37, i64 8}
!65 = !{!66, !40, i64 32}
!66 = !{!"function", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !37, i64 104, !37, i64 108, !37, i64 112, !37, i64 116, !37, i64 120, !37, i64 124, !40, i64 128, !37, i64 136, !37, i64 137, !37, i64 138, !37, i64 138, !37, i64 138, !37, i64 138, !37, i64 138, !37, i64 138, !37, i64 138, !37, i64 139, !37, i64 139, !37, i64 139, !37, i64 139, !37, i64 139, !37, i64 139, !37, i64 139}
!67 = !{!64, !40, i64 0}
!68 = !{!69, !40, i64 24}
!69 = !{!"loops", !37, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!70 = !{!36, !37, i64 0}
!71 = distinct !{!71, !46}
!72 = !{!"tree-loop-linear.c:VEC_loop_p_heap_alloc"}
!73 = !{!"tree-loop-linear.c:VEC_loop_p_heap_safe_push"}
!74 = !{!"tree-loop-linear.c:VEC_tree_base_truncate"}
!75 = !{!76, !37, i64 0}
!76 = !{!"VEC_tree_base", !37, i64 0, !37, i64 4, !38, i64 8}
!77 = !{!"tree-loop-linear.c:VEC_data_reference_p_heap_alloc"}
!78 = !{!"tree-loop-linear.c:VEC_ddr_p_heap_alloc"}
!79 = !{!"tree-loop-linear.c:try_interchange_loops"}
!80 = !{!81, !40, i64 16}
!81 = !{!"data_dependence_relation", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !37, i64 56, !38, i64 60, !38, i64 61, !38, i64 62}
!82 = !{!83, !37, i64 8}
!83 = !{!"param_info", !40, i64 0, !37, i64 8, !38, i64 12, !37, i64 16, !37, i64 20, !40, i64 24}
!84 = distinct !{!84, !46}
!85 = distinct !{!85, !46}
!86 = !{!"tree-loop-linear.c:VEC_loop_p_heap_free"}
!87 = !{!"tree-loop-linear.c:fel_next"}
!88 = distinct !{!88, !46}
!89 = !{!"tree-loop-linear.c:VEC_gimple_base_iterate"}
!90 = !{!91, !37, i64 0}
!91 = !{!"VEC_gimple_base", !37, i64 0, !37, i64 4, !38, i64 8}
!92 = !{!"tree-loop-linear.c:VEC_tree_heap_free"}
!93 = !{!"tree-loop-linear.c:VEC_gimple_heap_free"}
!94 = !{!"tree-loop-linear.c:VEC_int_heap_alloc"}
!95 = !{!"tree-loop-linear.c:number_of_loops"}
!96 = !{!69, !40, i64 8}
!97 = !{!"tree-loop-linear.c:VEC_loop_p_base_iterate"}
!98 = !{!99, !37, i64 0}
!99 = !{!"VEC_loop_p_base", !37, i64 0, !37, i64 4, !38, i64 8}
!100 = !{!"tree-loop-linear.c:VEC_int_base_quick_push"}
!101 = !{!102, !37, i64 0}
!102 = !{!"VEC_int_base", !37, i64 0, !37, i64 4, !38, i64 8}
!103 = !{!"tree-loop-linear.c:loop_outer"}
!104 = !{!36, !40, i64 40}
!105 = !{!"tree-loop-linear.c:VEC_loop_p_base_length"}
!106 = !{!"tree-loop-linear.c:VEC_loop_p_base_index"}
!107 = !{!"tree-loop-linear.c:VEC_loop_p_heap_reserve"}
!108 = !{!"tree-loop-linear.c:VEC_loop_p_base_quick_push"}
!109 = !{!"tree-loop-linear.c:VEC_loop_p_base_space"}
!110 = !{!99, !37, i64 4}
!111 = !{!"tree-loop-linear.c:VEC_ddr_p_base_length"}
!112 = !{!113, !37, i64 0}
!113 = !{!"VEC_ddr_p_base", !37, i64 0, !37, i64 4, !38, i64 8}
!114 = !{!"tree-loop-linear.c:VEC_ddr_p_base_index"}
!115 = !{!"tree-loop-linear.c:uhwi_to_double_int"}
!116 = !{!"tree-loop-linear.c:loop_depth"}
!117 = !{!"tree-loop-linear.c:gather_interchange_stats"}
!118 = !{i64 0, i64 8, !119, i64 8, i64 8, !119}
!119 = !{!43, !43, i64 0}
!120 = !{i64 0, i64 8, !119}
!121 = !{!81, !40, i64 48}
!122 = distinct !{!122, !46}
!123 = distinct !{!123, !46}
!124 = !{!125, !40, i64 8}
!125 = !{!"data_reference", !40, i64 0, !40, i64 8, !40, i64 16, !38, i64 24, !126, i64 32, !127, i64 72, !128, i64 88, !40, i64 104}
!126 = !{!"innermost_loop_behavior", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32}
!127 = !{!"indices", !40, i64 0, !40, i64 8}
!128 = !{!"dr_alias", !40, i64 0, !40, i64 8}
!129 = !{!125, !40, i64 0}
!130 = !{!125, !40, i64 80}
!131 = !{!125, !40, i64 104}
!132 = !{!133, !40, i64 24}
!133 = !{!"access_matrix", !40, i64 0, !37, i64 8, !40, i64 16, !40, i64 24}
!134 = !{!38, !38, i64 0}
!135 = distinct !{!135, !46}
!136 = distinct !{!136, !46}
!137 = !{!"tree-loop-linear.c:shwi_to_double_int"}
!138 = !{!"tree-loop-linear.c:VEC_ddr_p_base_iterate"}
!139 = !{!"tree-loop-linear.c:VEC_lambda_vector_base_length"}
!140 = !{!141, !37, i64 0}
!141 = !{!"VEC_lambda_vector_base", !37, i64 0, !37, i64 4, !38, i64 8}
!142 = !{!"tree-loop-linear.c:VEC_lambda_vector_base_index"}
!143 = !{!"tree-loop-linear.c:VEC_data_reference_p_base_iterate"}
!144 = !{!145, !37, i64 0}
!145 = !{!"VEC_data_reference_p_base", !37, i64 0, !37, i64 4, !38, i64 8}
!146 = !{!"tree-loop-linear.c:loop_containing_stmt"}
!147 = !{!148, !40, i64 24}
!148 = !{!"basic_block_def", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !38, i64 32, !40, i64 48, !40, i64 56, !38, i64 64, !43, i64 72, !37, i64 80, !37, i64 84, !37, i64 88, !37, i64 92, !37, i64 96}
!149 = !{!"tree-loop-linear.c:VEC_tree_base_length"}
!150 = !{!"tree-loop-linear.c:am_vector_index_for_loop"}
!151 = !{!133, !40, i64 0}
!152 = distinct !{!152, !46}
!153 = !{!"tree-loop-linear.c:gimple_bb"}
!154 = !{!"tree-loop-linear.c:VEC_int_base_iterate"}
!155 = !{!"tree-loop-linear.c:get_loop"}
!156 = !{!"tree-loop-linear.c:VEC_int_heap_free"}
