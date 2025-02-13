; ModuleID = 'tree-ssa-loop-unswitch.c'
source_filename = "tree-ssa-loop-unswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.loop_iterator = type { ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@cfun = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [43 x i8] c";; Not unswitching anymore, hit max level\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c";; Not unswitching, not innermost loop\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c";; Not unswitching cold loops\0A\00", align 1
@eni_size_weights = external global %struct.eni_weights_d, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c";; Not unswitching, loop too big\0A\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c";; Unswitching loop\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"tree-ssa-loop-unswitch.c\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tree_ssa_unswitch_loops() local_unnamed_addr #0 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #13
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %0 ]
  %7 = phi i8 [ %9, %5 ], [ 0, %0 ]
  %8 = tail call fastcc zeroext i8 @tree_unswitch_single_loop(ptr noundef nonnull %6, i32 noundef 0) #13, !range !9
  %9 = or i8 %8, %7
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #13
  %10 = load ptr, ptr %2, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !10

12:                                               ; preds = %5
  %13 = icmp eq i8 %9, 0
  %14 = select i1 %13, i32 0, i32 32
  br label %15

15:                                               ; preds = %12, %0
  %16 = phi i32 [ 0, %0 ], [ %14, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #12
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !12
  %5 = load ptr, ptr @cfun, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !17
  store ptr null, ptr %1, align 8, !tbaa !5
  br label %45

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @number_of_loops() #13
  %12 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %11) #13
  store ptr %12, ptr %0, align 8, !tbaa !17
  %13 = load ptr, ptr @cfun, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.loops, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %3) #13, !range !20
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %10, %35
  %21 = phi ptr [ %36, %35 ], [ %13, %10 ]
  %22 = phi i32 [ %37, %35 ], [ 0, %10 ]
  %23 = load ptr, ptr %3, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, ptr %23, align 8, !tbaa !26
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 8, !tbaa !17
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %33, i32 noundef %30) #13
  %34 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %35

35:                                               ; preds = %20, %25, %29, %32
  %36 = phi ptr [ %21, %20 ], [ %21, %25 ], [ %21, %29 ], [ %34, %32 ]
  %37 = add i32 %22, 1
  %38 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !15
  %40 = getelementptr inbounds %struct.loops, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !18
  %42 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %41, i32 noundef %37, ptr noundef nonnull %3) #13, !range !20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %20, !llvm.loop !27

44:                                               ; preds = %35, %10
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #13
  br label %45

45:                                               ; preds = %44, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @tree_unswitch_single_loop(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 36, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !28
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %117, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %117, label %14

14:                                               ; preds = %10
  %15 = tail call i64 @fwrite(ptr nonnull @.str, i64 42, i64 1, ptr nonnull %8)
  br label %117

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %117, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %117, label %27

27:                                               ; preds = %23
  %28 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 39, i64 1, ptr nonnull %21)
  br label %117

29:                                               ; preds = %16
  %30 = tail call zeroext i8 @optimize_loop_for_size_p(ptr noundef nonnull %0) #14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %117, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %117, label %39

39:                                               ; preds = %35
  %40 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 30, i64 1, ptr nonnull %33)
  br label %117

41:                                               ; preds = %29
  %42 = tail call i32 @tree_num_loop_insns(ptr noundef nonnull %0, ptr noundef nonnull @eni_size_weights) #14
  %43 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.param_info, ptr %43, i64 35, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !28
  %46 = icmp ugt i32 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %117, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %117, label %54

54:                                               ; preds = %50
  %55 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 33, i64 1, ptr nonnull %48)
  br label %117

56:                                               ; preds = %41
  %57 = tail call ptr @get_loop_body(ptr noundef nonnull %0) #14
  %58 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  br label %59

59:                                               ; preds = %98, %56
  %60 = phi i32 [ 0, %56 ], [ %101, %98 ]
  %61 = phi ptr [ null, %56 ], [ %88, %98 ]
  %62 = phi i8 [ 0, %56 ], [ 1, %98 ]
  %63 = load i32, ptr %58, align 4, !tbaa !31
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %59
  %66 = zext i32 %60 to i64
  br label %67

67:                                               ; preds = %65, %74
  %68 = phi i64 [ %66, %65 ], [ %75, %74 ]
  %69 = getelementptr inbounds ptr, ptr %57, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = tail call fastcc ptr @tree_may_unswitch_on(ptr noundef %70, ptr noundef nonnull %0) #13
  %72 = icmp eq ptr %71, null
  %73 = load i32, ptr %58, align 4, !tbaa !31
  br i1 %72, label %74, label %78

74:                                               ; preds = %67
  %75 = add nuw nsw i64 %68, 1
  %76 = zext i32 %73 to i64
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %67, label %78, !llvm.loop !32

78:                                               ; preds = %67, %74
  %79 = phi i64 [ %75, %74 ], [ %68, %67 ]
  %80 = trunc i64 %79 to i32
  br label %81

81:                                               ; preds = %78, %59
  %82 = phi i32 [ %63, %59 ], [ %73, %78 ]
  %83 = phi i32 [ %60, %59 ], [ %80, %78 ]
  %84 = phi ptr [ %61, %59 ], [ %71, %78 ]
  %85 = icmp eq i32 %83, %82
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  tail call void @free(ptr noundef %57) #13
  br label %117

87:                                               ; preds = %81
  %88 = tail call fastcc ptr @simplify_using_entry_checks(ptr noundef nonnull %0, ptr noundef %84) #13
  %89 = zext i32 %83 to i64
  %90 = getelementptr inbounds ptr, ptr %57, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !5
  %92 = tail call ptr @last_stmt(ptr noundef %91) #14
  %93 = tail call i32 @integer_nonzerop(ptr noundef %88) #14
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = tail call i32 @integer_zerop(ptr noundef %88) #14
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95, %87
  %99 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), %87 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), %95 ]
  %100 = load ptr, ptr %99, align 8, !tbaa !5
  tail call void @gimple_cond_set_condition_from_tree(ptr noundef %92, ptr noundef %100) #14
  tail call fastcc void @update_stmt(ptr noundef %92) #13
  %101 = add i32 %83, 1
  br label %59

102:                                              ; preds = %95
  %103 = getelementptr inbounds ptr, ptr %57, i64 %89
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %105 = icmp eq ptr %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %102
  %107 = load i32, ptr @dump_flags, align 4, !tbaa !30
  %108 = and i32 %107, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 20, i64 1, ptr nonnull %104)
  br label %112

112:                                              ; preds = %110, %106, %102
  tail call void @initialize_original_copy_tables() #14
  %113 = load ptr, ptr %103, align 8, !tbaa !5
  %114 = tail call fastcc ptr @tree_unswitch_loop(ptr noundef nonnull %0, ptr noundef %113, ptr noundef %88) #13
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  tail call void @free_original_copy_tables() #14
  tail call void @free(ptr noundef nonnull %57) #13
  br label %117

117:                                              ; preds = %47, %50, %54, %32, %35, %39, %20, %23, %27, %7, %10, %14, %116, %86, %119
  %118 = phi i8 [ 1, %119 ], [ %62, %86 ], [ %62, %116 ], [ 0, %14 ], [ 0, %10 ], [ 0, %7 ], [ 0, %27 ], [ 0, %23 ], [ 0, %20 ], [ 0, %39 ], [ 0, %35 ], [ 0, %32 ], [ 0, %54 ], [ 0, %50 ], [ 0, %47 ]
  ret i8 %118

119:                                              ; preds = %112
  tail call void @update_ssa(i32 noundef 2048) #14
  tail call void @free_original_copy_tables() #14
  %120 = add nsw i32 %1, 1
  %121 = tail call fastcc zeroext i8 @tree_unswitch_single_loop(ptr noundef nonnull %114, i32 noundef %120) #13, !range !9
  %122 = tail call fastcc zeroext i8 @tree_unswitch_single_loop(ptr noundef nonnull %0, i32 noundef %120) #13, !range !9
  tail call void @free(ptr noundef nonnull %57) #13
  br label %117
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !12
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !17
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #13, !range !20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !12
  %13 = load i32, ptr %3, align 4, !tbaa !30
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #13
  store ptr %14, ptr %1, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !33

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #13
  store ptr null, ptr %1, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #14
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #2 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #13
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !34
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !5
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load i32, ptr %0, align 4, !tbaa !36
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !36
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !30
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !36
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !30
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !30
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #13
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @optimize_loop_for_size_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @tree_num_loop_insns(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tree_may_unswitch_on(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #12
  %4 = tail call ptr @last_stmt(ptr noundef %0) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %4) #13, !range !38
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %38

9:                                                ; preds = %6
  %10 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %11 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #13
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9, %22
  %14 = phi ptr [ %23, %22 ], [ %10, %9 ]
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = tail call fastcc ptr @gimple_bb(ptr noundef %16) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %1, ptr noundef nonnull %17) #14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %13, %19
  %23 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #13
  %24 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #13
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %13, label %26, !llvm.loop !40

26:                                               ; preds = %22, %9
  %27 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %4) #13, !range !41
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !5
  %29 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %4) #13
  %30 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %4) #13
  %31 = tail call ptr @build2_stat(i32 noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30) #14
  %32 = tail call i32 @integer_zerop(ptr noundef %31) #14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = tail call i32 @integer_nonzerop(ptr noundef %31) #14
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr %31, ptr null
  br label %38

38:                                               ; preds = %19, %34, %26, %2, %6
  %39 = phi ptr [ null, %6 ], [ null, %2 ], [ null, %26 ], [ %37, %34 ], [ null, %19 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #12
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_using_entry_checks(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @loop_preheader_edge(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %5 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %6 = load ptr, ptr %3, align 8, !tbaa !42
  br label %7

7:                                                ; preds = %43, %2
  %8 = phi ptr [ %6, %2 ], [ %45, %43 ]
  %9 = phi ptr [ %3, %2 ], [ %44, %43 ]
  %10 = tail call ptr @last_stmt(ptr noundef %8) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %7
  %13 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %10) #13, !range !38
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %10) #13, !range !41
  %17 = load i64, ptr %1, align 8
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %10) #13
  %23 = load ptr, ptr %4, align 8, !tbaa !39
  %24 = tail call i32 @operand_equal_p(ptr noundef %22, ptr noundef %23, i32 noundef 0) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %10) #13
  %28 = load ptr, ptr %5, align 8, !tbaa !39
  %29 = tail call i32 @operand_equal_p(ptr noundef %27, ptr noundef %28, i32 noundef 0) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !44
  %34 = and i32 %33, 1024
  %35 = icmp eq i32 %34, 0
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %37 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %38 = select i1 %35, ptr %37, ptr %36
  br label %51

39:                                               ; preds = %26, %21, %15, %12, %7
  %40 = load ptr, ptr %9, align 8, !tbaa !42
  %41 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %40) #13, !range !9
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = tail call fastcc ptr @single_pred_edge(ptr noundef %40) #13
  %45 = load ptr, ptr %44, align 8, !tbaa !42
  %46 = load ptr, ptr @cfun, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !45
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = icmp eq ptr %45, %49
  br i1 %50, label %51, label %7

51:                                               ; preds = %43, %39, %31
  %52 = phi ptr [ %38, %31 ], [ %1, %39 ], [ %1, %43 ]
  ret ptr %52
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gimple_cond_set_condition_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !9
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #14
  tail call void @update_stmt_operands(ptr noundef %0) #14
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @initialize_original_copy_tables() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tree_unswitch_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %6 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %1) #14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 291, ptr noundef nonnull @.str.6) #14
  br label %9

9:                                                ; preds = %3, %8
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #13
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 292, ptr noundef nonnull @.str.6) #14
  br label %15

15:                                               ; preds = %9, %14
  %16 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 293, ptr noundef nonnull @.str.6) #14
  br label %20

20:                                               ; preds = %15, %19
  call void @extract_true_false_edges_from_block(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %21 = load ptr, ptr %4, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = call ptr @unshare_expr(ptr noundef %2) #14
  %25 = sub i32 10000, %23
  %26 = call ptr @loop_version(ptr noundef nonnull %0, ptr noundef %24, ptr noundef null, i32 noundef %23, i32 noundef %23, i32 noundef %25, i8 noundef zeroext 0) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret ptr %26
}

; Function Attrs: optsize
declare void @free_original_copy_tables() local_unnamed_addr #4

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !51
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i8, ptr %0, align 8, !tbaa !53
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #13
  %8 = load ptr, ptr %3, align 8, !tbaa !55
  store ptr %8, ptr %2, align 8, !tbaa !54
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #13
  %17 = load ptr, ptr %11, align 8, !tbaa !61
  store ptr %17, ptr %10, align 8, !tbaa !58
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !53
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #13
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !58
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !54
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !tbaa !55
  store ptr %11, ptr %5, align 8, !tbaa !54
  br label %12

12:                                               ; preds = %10, %7, %2
  store i8 0, ptr %0, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !9
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #13, !range !9
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !38
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !38
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #13
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #13
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !63
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.6) #14
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !38
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #13
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #9 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !30
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #13
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #13, !range !9
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @.str.6) #14
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !64
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6) #13
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !65
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  ret ptr %3
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @loop_version(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{i8 0, i8 2}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !14, i64 8}
!13 = !{!"", !6, i64 0, !14, i64 8}
!14 = !{!"int", !7, i64 0}
!15 = !{!16, !6, i64 32}
!16 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !14, i64 104, !14, i64 108, !14, i64 112, !14, i64 116, !14, i64 120, !14, i64 124, !6, i64 128, !14, i64 136, !14, i64 137, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139}
!17 = !{!13, !6, i64 0}
!18 = !{!19, !6, i64 8}
!19 = !{!"loops", !14, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!20 = !{i32 0, i32 2}
!21 = !{!22, !6, i64 48}
!22 = !{!"loop", !14, i64 0, !14, i64 4, !6, i64 8, !6, i64 16, !23, i64 24, !14, i64 32, !14, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !24, i64 80, !24, i64 96, !7, i64 112, !7, i64 113, !14, i64 116, !6, i64 120, !6, i64 128, !7, i64 136, !6, i64 144}
!23 = !{!"lpt_decision", !14, i64 0, !14, i64 4}
!24 = !{!"", !25, i64 0, !25, i64 8}
!25 = !{!"long", !7, i64 0}
!26 = !{!22, !14, i64 0}
!27 = distinct !{!27, !11}
!28 = !{!29, !14, i64 8}
!29 = !{!"param_info", !6, i64 0, !14, i64 8, !7, i64 12, !14, i64 16, !14, i64 20, !6, i64 24}
!30 = !{!14, !14, i64 0}
!31 = !{!22, !14, i64 36}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = !{!35, !14, i64 0}
!35 = !{!"VEC_loop_p_base", !14, i64 0, !14, i64 4, !7, i64 8}
!36 = !{!37, !14, i64 0}
!37 = !{!"VEC_int_base", !14, i64 0, !14, i64 4, !7, i64 8}
!38 = !{i32 0, i32 256}
!39 = !{!7, !7, i64 0}
!40 = distinct !{!40, !11}
!41 = !{i32 0, i32 65536}
!42 = !{!43, !6, i64 0}
!43 = !{!"edge_def", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24, !6, i64 32, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !25, i64 56}
!44 = !{!43, !14, i64 48}
!45 = !{!16, !6, i64 8}
!46 = !{!47, !6, i64 0}
!47 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !6, i64 40, !14, i64 48, !7, i64 52, !7, i64 60, !14, i64 68, !14, i64 72}
!48 = !{!49, !6, i64 8}
!49 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !25, i64 72, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96}
!50 = !{!43, !14, i64 52}
!51 = !{!52, !14, i64 4}
!52 = !{!"ssa_operand_iterator_d", !7, i64 0, !14, i64 4, !6, i64 8, !6, i64 16, !14, i64 24, !14, i64 28, !6, i64 32}
!53 = !{!52, !7, i64 0}
!54 = !{!52, !6, i64 16}
!55 = !{!56, !6, i64 0}
!56 = !{!"use_optype_d", !6, i64 0, !57, i64 8}
!57 = !{!"ssa_use_operand_d", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24}
!58 = !{!52, !6, i64 8}
!59 = !{!60, !6, i64 8}
!60 = !{!"def_optype_d", !6, i64 0, !6, i64 8}
!61 = !{!60, !6, i64 0}
!62 = !{!57, !6, i64 24}
!63 = !{!25, !25, i64 0}
!64 = !{!49, !6, i64 0}
!65 = !{!66, !14, i64 0}
!66 = !{!"VEC_edge_base", !14, i64 0, !14, i64 4, !7, i64 8}
