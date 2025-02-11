; ModuleID = 'tree-ssa-loop-manip.c'
source_filename = "tree-ssa-loop-manip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"ivtmp\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@eni_size_weights = external global %struct.eni_weights_d, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"tree-ssa-loop-manip.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"unrinittmp\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @create_iv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef writeonly %6, ptr noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %11 = tail call ptr @loop_preheader_edge(ptr noundef %3) #17
  %12 = icmp eq ptr %2, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = tail call ptr @create_tmp_var(ptr noundef %15, ptr noundef nonnull @.str) #17
  %17 = tail call zeroext i8 @add_referenced_var(ptr noundef %16) #17
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi ptr [ %2, %8 ], [ %16, %13 ]
  %20 = tail call fastcc ptr @make_ssa_name(ptr noundef %19) #18
  %21 = icmp eq ptr %6, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store ptr %20, ptr %6, align 8, !tbaa !8
  br label %23

23:                                               ; preds = %22, %18
  %24 = tail call fastcc ptr @make_ssa_name(ptr noundef %19) #18
  %25 = icmp eq ptr %7, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store ptr %24, ptr %7, align 8, !tbaa !8
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i64, ptr %1, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 23
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 2097152
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef nonnull %33, ptr noundef nonnull %1) #17
  %39 = tail call i32 @tree_int_cst_lt(ptr noundef %38, ptr noundef nonnull %1) #17
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 63, i32 64
  %42 = select i1 %40, ptr %1, ptr %38
  br label %55

43:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #16
  %44 = call zeroext i8 @tree_expr_nonnegative_warnv_p(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = call zeroext i8 @may_negate_without_overflow_p(ptr noundef nonnull %1) #17
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %32, align 8, !tbaa !5
  %51 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %50, ptr noundef nonnull %1) #17
  br label %52

52:                                               ; preds = %49, %46, %43
  %53 = phi i32 [ 63, %43 ], [ 64, %49 ], [ 63, %46 ]
  %54 = phi ptr [ %1, %43 ], [ %51, %49 ], [ %1, %46 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #16
  br label %55

55:                                               ; preds = %37, %52, %27
  %56 = phi i32 [ %53, %52 ], [ 63, %27 ], [ %41, %37 ]
  %57 = phi ptr [ %54, %52 ], [ %1, %27 ], [ %42, %37 ]
  %58 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = load i64, ptr %59, align 8
  %61 = trunc i64 %60 to i16
  switch i16 %61, label %76 [
    i16 10, label %62
    i16 12, label %62
  ]

62:                                               ; preds = %55, %55
  %63 = load i64, ptr %0, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 121
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  call void @mark_addressable(ptr noundef %68) #17
  br label %69

69:                                               ; preds = %66, %62
  %70 = load ptr, ptr @sizetype_tab, align 16, !tbaa !8
  %71 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %70, ptr noundef %57) #17
  %72 = icmp eq i32 %56, 64
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load ptr, ptr @sizetype_tab, align 16, !tbaa !8
  %75 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %74, ptr noundef %71) #17
  br label %76

76:                                               ; preds = %69, %73, %55
  %77 = phi i32 [ %56, %55 ], [ 66, %73 ], [ 66, %69 ]
  %78 = phi ptr [ %57, %55 ], [ %75, %73 ], [ %71, %69 ]
  %79 = call ptr @force_gimple_operand(ptr noundef %78, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef null) #17
  %80 = load ptr, ptr %9, align 8, !tbaa !8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  %83 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %11, ptr noundef nonnull %80) #17
  br label %84

84:                                               ; preds = %82, %76
  %85 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %77, ptr noundef %24, ptr noundef %20, ptr noundef %79) #17
  %86 = icmp eq i8 %5, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  call void @gsi_insert_after(ptr noundef %4, ptr noundef %85, i32 noundef 0) #17
  br label %89

88:                                               ; preds = %84
  call void @gsi_insert_before(ptr noundef %4, ptr noundef %85, i32 noundef 0) #17
  br label %89

89:                                               ; preds = %88, %87
  %90 = call ptr @force_gimple_operand(ptr noundef nonnull %0, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef %19) #17
  %91 = load ptr, ptr %9, align 8, !tbaa !8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %11, ptr noundef nonnull %91) #17
  br label %95

95:                                               ; preds = %93, %89
  %96 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !10
  %98 = call ptr @create_phi_node(ptr noundef %20, ptr noundef %97) #17
  %99 = getelementptr inbounds %struct.tree_ssa_name, ptr %20, i64 0, i32 2
  store ptr %98, ptr %99, align 8, !tbaa !5
  %100 = call ptr @loop_preheader_edge(ptr noundef %3) #17
  call void @add_phi_arg(ptr noundef %98, ptr noundef %90, ptr noundef %100, i32 noundef 0) #17
  %101 = call ptr @loop_latch_edge(ptr noundef %3) #17
  call void @add_phi_arg(ptr noundef %98, ptr noundef %24, ptr noundef %101, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !8
  %3 = tail call ptr @make_ssa_name_fn(ptr noundef %2, ptr noundef %0, ptr noundef null) #17
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tree_expr_nonnegative_warnv_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @may_negate_without_overflow_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @mark_addressable(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rewrite_into_loop_closed_ssa(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @loops_state_set() #18
  %3 = tail call fastcc i32 @number_of_loops() #18
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @get_loops_exits() #18
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  tail call void @update_ssa(i32 noundef %1) #17
  %8 = load ptr, ptr @cfun, align 8, !tbaa !8
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %12) #18
  %14 = zext i32 %13 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 8) #17
  tail call fastcc void @find_uses_to_rename(ptr noundef %0, ptr noundef %15, ptr noundef %7) #18
  tail call fastcc void @add_exit_phis(ptr noundef %7, ptr noundef %15, ptr noundef %6) #18
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %5, %17
  %18 = phi i64 [ %21, %17 ], [ 0, %5 ]
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !8
  tail call void @bitmap_obstack_free(ptr noundef %20) #17
  store ptr null, ptr %19, align 8, !tbaa !8
  %21 = add nuw nsw i64 %18, 1
  %22 = icmp eq i64 %21, %14
  br i1 %22, label %23, label %17, !llvm.loop !22

23:                                               ; preds = %17, %5
  tail call void @free(ptr noundef %15) #18
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  tail call void @update_ssa(i32 noundef 2048) #17
  br label %24

24:                                               ; preds = %2, %23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_set() unnamed_addr #3 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !8
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = load i32, ptr %3, align 8, !tbaa !25
  %5 = or i32 %4, 32
  store i32 %5, ptr %3, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #4 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !8
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #18
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_loops_exits() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %4 = load ptr, ptr @cfun, align 8, !tbaa !8
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = load ptr, ptr %6, align 8, !tbaa !29
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !31
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !33
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %51, label %13

13:                                               ; preds = %0
  %14 = getelementptr inbounds i8, ptr %2, i64 8
  br label %15

15:                                               ; preds = %13, %42
  %16 = phi ptr [ %9, %13 ], [ %44, %42 ]
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef %16) #18
  store i32 0, ptr %2, align 8, !tbaa.struct !34
  store ptr %17, ptr %14, align 8, !tbaa.struct !36
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %1) #18, !range !37
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %15, %37
  %21 = load ptr, ptr %1, align 8, !tbaa !8
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = load ptr, ptr @cfun, align 8, !tbaa !8
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !28
  %26 = load ptr, ptr %25, align 8, !tbaa !29
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !40
  %31 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %30, ptr noundef %16) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !41
  %36 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %35) #17
  br label %42

37:                                               ; preds = %20, %28
  call fastcc void @ei_next(ptr noundef nonnull %2) #18
  %38 = load i32, ptr %2, align 8
  %39 = load ptr, ptr %14, align 8
  %40 = call fastcc zeroext i8 @ei_cond(i32 %38, ptr %39, ptr noundef nonnull %1) #18, !range !37
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %20, !llvm.loop !42

42:                                               ; preds = %37, %15, %33
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !31
  %45 = load ptr, ptr @cfun, align 8, !tbaa !8
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !28
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !33
  %50 = icmp eq ptr %44, %49
  br i1 %50, label %51, label %15, !llvm.loop !43

51:                                               ; preds = %42, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !44
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_uses_to_rename(ptr noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %6 = icmp eq ptr %0, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef nonnull %4) #18
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !37
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %10, %13
  %14 = load ptr, ptr @cfun, align 8, !tbaa !8
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !28
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = load i32, ptr %4, align 4, !tbaa !35
  %20 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %18, i32 noundef %19) #18
  tail call fastcc void @find_uses_to_rename_bb(ptr noundef %20, ptr noundef %1, ptr noundef %2) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !37
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %43, label %13, !llvm.loop !49

23:                                               ; preds = %7, %3
  %24 = load ptr, ptr @cfun, align 8, !tbaa !8
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !28
  %27 = load ptr, ptr %26, align 8, !tbaa !29
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !31
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !33
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %23, %33
  %34 = phi ptr [ %36, %33 ], [ %29, %23 ]
  tail call fastcc void @find_uses_to_rename_bb(ptr noundef %34, ptr noundef %1, ptr noundef %2) #18
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !31
  %37 = load ptr, ptr @cfun, align 8, !tbaa !8
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !28
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !33
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %43, label %33, !llvm.loop !50

43:                                               ; preds = %13, %33, %10, %23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_exit_phis(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %4) #18
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !37
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %3, %8
  %9 = load ptr, ptr @cfun, align 8, !tbaa !8
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = load i32, ptr %4, align 4, !tbaa !35
  %15 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %13, i32 noundef %14) #18
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds ptr, ptr %1, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !8
  tail call fastcc void @add_exit_phis_var(ptr noundef %15, ptr noundef %18, ptr noundef %2) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %19 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !37
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %8, !llvm.loop !51

21:                                               ; preds = %8, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_loop_closed_ssa() local_unnamed_addr #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %5 = tail call fastcc i32 @number_of_loops() #18
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %59, label %7

7:                                                ; preds = %0
  tail call void @verify_ssa(i8 noundef zeroext 0) #17
  %8 = load ptr, ptr @cfun, align 8, !tbaa !8
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = load ptr, ptr %10, align 8, !tbaa !29
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %59, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds i8, ptr %3, i64 8
  br label %28

19:                                               ; preds = %55, %52
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  %22 = load ptr, ptr @cfun, align 8, !tbaa !8
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !28
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !33
  %27 = icmp eq ptr %21, %26
  br i1 %27, label %59, label %28, !llvm.loop !52

28:                                               ; preds = %17, %19
  %29 = phi ptr [ %13, %17 ], [ %21, %19 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %29) #17
  %30 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !37
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = call fastcc ptr @ei_start_1(ptr noundef %29) #18
  br label %34

34:                                               ; preds = %32, %49
  %35 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !34
  store ptr %33, ptr %18, align 8, !tbaa.struct !36
  %36 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %33, ptr noundef nonnull %2) #18, !range !37
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %34, %38
  %39 = load ptr, ptr %2, align 8, !tbaa !8
  %40 = load ptr, ptr %39, align 8, !tbaa !38
  %41 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !53
  %43 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %35, i32 noundef %42) #18
  %44 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %43) #18
  call fastcc void @check_loop_closed_ssa_use(ptr noundef %40, ptr noundef %44) #18
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %45 = load i32, ptr %3, align 8
  %46 = load ptr, ptr %18, align 8
  %47 = call fastcc zeroext i8 @ei_cond(i32 %45, ptr %46, ptr noundef nonnull %2) #18, !range !37
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %38, !llvm.loop !54

49:                                               ; preds = %38, %34
  call fastcc void @gsi_next(ptr noundef nonnull %1) #18
  %50 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !37
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %34, label %52, !llvm.loop !55

52:                                               ; preds = %49, %28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %29) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  %53 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !37
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %19

55:                                               ; preds = %52, %55
  %56 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18
  call fastcc void @check_loop_closed_ssa_stmt(ptr noundef %29, ptr noundef %56) #18
  call fastcc void @gsi_next(ptr noundef nonnull %1) #18
  %57 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !37
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %55, label %19, !llvm.loop !57

59:                                               ; preds = %19, %7, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #16
  ret void
}

; Function Attrs: optsize
declare void @verify_ssa(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #8 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !37
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !8
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_loop_closed_ssa_use(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call fastcc ptr @gimple_bb(ptr noundef %11) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  %17 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %16, ptr noundef %0) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 425, ptr noundef nonnull @.str.2) #17
  br label %20

20:                                               ; preds = %19, %14, %9, %2, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = load ptr, ptr %3, align 8, !tbaa !8
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #18
  ret ptr %3
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.2) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !64
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  store ptr %4, ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_loop_closed_ssa_stmt(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  %4 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %1) #18, !range !37
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %1) #18
  %8 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %12, %10 ], [ %7, %6 ]
  tail call fastcc void @check_loop_closed_ssa_use(ptr noundef %0, ptr noundef %11) #18
  %12 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #18
  %13 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %10, label %15, !llvm.loop !69

15:                                               ; preds = %10, %6, %2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @split_loop_exit_edge(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = tail call ptr @split_edge(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %4) #17
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #18, !range !37
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1, %24
  %9 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #18
  %10 = call fastcc ptr @single_succ_edge(ptr noundef %5) #18
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %9, i32 noundef %12) #18
  %14 = call fastcc ptr @single_succ_edge(ptr noundef %5) #18
  %15 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %9, ptr noundef %14) #18
  %16 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %13) #18
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %20, label %24

20:                                               ; preds = %8
  %21 = call ptr @duplicate_ssa_name(ptr noundef nonnull %16, ptr noundef null) #17
  %22 = call ptr @create_phi_node(ptr noundef %21, ptr noundef %5) #17
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %21, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !5
  call void @add_phi_arg(ptr noundef %22, ptr noundef nonnull %16, ptr noundef %0, i32 noundef %15) #17
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %13, ptr noundef %21) #18
  br label %24

24:                                               ; preds = %8, %20
  call fastcc void @gsi_next(ptr noundef nonnull %2) #18
  %25 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #18, !range !37
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %8, label %27, !llvm.loop !71

27:                                               ; preds = %24, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #18, !range !37
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 645, ptr noundef nonnull @.str.2) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #18
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !53
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #18
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !73
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @duplicate_ssa_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  store ptr %1, ptr %4, align 8, !tbaa !8
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ip_end_pos(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ip_normal_pos(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %3) #18, !range !37
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @single_pred(ptr noundef %3) #18
  %8 = tail call ptr @last_stmt(ptr noundef %7) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #18, !range !76
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %15, i32 noundef 0) #18
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = load ptr, ptr %2, align 8, !tbaa !75
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %15, i32 noundef 1) #18
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi ptr [ %24, %21 ], [ %18, %13 ]
  %27 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %0, ptr noundef %26) #17
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, ptr %7, ptr null
  br label %30

30:                                               ; preds = %25, %6, %10, %1
  %31 = phi ptr [ null, %1 ], [ null, %10 ], [ null, %6 ], [ %29, %25 ]
  ret ptr %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !77
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #18
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @standard_iv_increment_position(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = tail call ptr @ip_normal_pos(ptr noundef %0) #18
  %7 = tail call ptr @ip_end_pos(ptr noundef %0) #18
  %8 = tail call ptr @last_stmt(ptr noundef %7) #17
  %9 = icmp eq ptr %6, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = icmp eq ptr %8, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #18, !range !76
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %7) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  br label %17

16:                                               ; preds = %12, %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  br label %17

17:                                               ; preds = %16, %15
  %18 = phi i8 [ 0, %16 ], [ 1, %15 ]
  store i8 %18, ptr %2, align 1, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @gimple_duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 2) #18, !range !37
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 1) #18, !range !37
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @cfun, align 8, !tbaa !8
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !28
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !78
  %19 = tail call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #17
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  tail call void @flush_pending_stmts(ptr noundef %1) #17
  tail call fastcc void @copy_phi_node_args(i32 noundef %18) #18
  tail call void @scev_reset() #17
  br label %22

22:                                               ; preds = %13, %10, %7, %21
  %23 = phi i8 [ 1, %21 ], [ 0, %7 ], [ 0, %10 ], [ 0, %13 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !8
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = load i32, ptr %4, align 8, !tbaa !25
  %6 = and i32 %5, %0
  %7 = icmp eq i32 %6, %0
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: optsize
declare zeroext i8 @duplicate_loop_to_header_edge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @flush_pending_stmts(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_phi_node_args(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !8
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !78
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  br label %12

11:                                               ; preds = %12
  br i1 %7, label %27, label %20

12:                                               ; preds = %8, %12
  %13 = phi i32 [ %0, %8 ], [ %18, %12 ]
  %14 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %10, i32 noundef %13) #18
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !79
  %17 = or i32 %16, 128
  store i32 %17, ptr %15, align 8, !tbaa !79
  %18 = add nuw i32 %13, 1
  %19 = icmp eq i32 %18, %6
  br i1 %19, label %11, label %12, !llvm.loop !80

20:                                               ; preds = %27, %1, %11
  %21 = phi ptr [ %4, %11 ], [ %4, %1 ], [ %36, %27 ]
  %22 = phi i32 [ %6, %11 ], [ %6, %1 ], [ %38, %27 ]
  %23 = icmp ugt i32 %22, %0
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  br label %40

27:                                               ; preds = %11, %27
  %28 = phi ptr [ %36, %27 ], [ %4, %11 ]
  %29 = phi i32 [ %33, %27 ], [ %0, %11 ]
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %31, i32 noundef %29) #18
  tail call void @add_phi_args_after_copy_bb(ptr noundef %32) #17
  %33 = add nuw i32 %29, 1
  %34 = load ptr, ptr @cfun, align 8, !tbaa !8
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !28
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !78
  %39 = icmp ult i32 %33, %38
  br i1 %39, label %27, label %20, !llvm.loop !81

40:                                               ; preds = %24, %40
  %41 = phi i32 [ %0, %24 ], [ %46, %40 ]
  %42 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %26, i32 noundef %41) #18
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 13
  %44 = load i32, ptr %43, align 8, !tbaa !79
  %45 = and i32 %44, -129
  store i32 %45, ptr %43, align 8, !tbaa !79
  %46 = add nuw i32 %41, 1
  %47 = icmp eq i32 %46, %22
  br i1 %47, label %48, label %40, !llvm.loop !82

48:                                               ; preds = %40, %20
  ret void
}

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_unroll_loop_p(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @single_dom_exit(ptr noundef %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %3
  %7 = tail call zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2, i8 noundef zeroext 0) #17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %44, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !83
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %15) #17
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !87
  %21 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %20) #17
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 4, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !88
  %26 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %25) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !89
  %31 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %30) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = tail call zeroext i8 @can_duplicate_loop_p(ptr noundef %0) #17
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @tree_num_loop_insns(ptr noundef %0, ptr noundef nonnull @eni_size_weights) #17
  %38 = mul i32 %37, %1
  %39 = load ptr, ptr @compiler_params, align 8, !tbaa !8
  %40 = getelementptr inbounds %struct.param_info, ptr %39, i64 26, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !90
  %42 = icmp ule i32 %38, %41
  %43 = zext i1 %42 to i8
  br label %44

44:                                               ; preds = %36, %33, %6, %9, %13, %18, %23, %28, %3
  %45 = phi i8 [ 0, %3 ], [ 0, %28 ], [ 0, %23 ], [ 0, %18 ], [ 0, %13 ], [ 0, %9 ], [ 0, %6 ], [ 0, %33 ], [ %43, %36 ]
  ret i8 %45
}

; Function Attrs: optsize
declare ptr @single_dom_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @number_of_iterations_exit(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @can_duplicate_loop_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_num_loop_insns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_transform_and_unroll_loop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef readonly %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gimple_stmt_iterator, align 8
  %15 = alloca %struct.gimple_stmt_iterator, align 8
  %16 = alloca ptr, align 8
  %17 = alloca %struct.gimple_stmt_iterator, align 8
  %18 = alloca ptr, align 8
  %19 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #16
  %20 = tail call ptr @loop_preheader_edge(ptr noundef %0) #17
  %21 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !92
  %23 = and i32 %22, 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #16
  store ptr null, ptr %18, align 8, !tbaa !8
  %24 = tail call i32 @expected_loop_iterations(ptr noundef %0) #17
  call fastcc void @determine_exit_conditions(ptr noundef %0, ptr noundef %3, i32 noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %12) #18
  %25 = load ptr, ptr %9, align 8, !tbaa !8
  %26 = tail call i32 @integer_nonzerop(ptr noundef %25) #17
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 9000, i32 10000
  %29 = tail call ptr @loop_version(ptr noundef %0, ptr noundef %25, ptr noundef null, i32 noundef %28, i32 noundef %28, i32 noundef 10000, i8 noundef zeroext 1) #17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 928, ptr noundef nonnull @.str.2) #17
  br label %32

32:                                               ; preds = %6, %31
  tail call void @update_ssa(i32 noundef 2048) #17
  %33 = udiv i32 %24, %1
  %34 = icmp ult i32 %33, 5
  %35 = tail call i32 @llvm.umin.i32(i32 %24, i32 5)
  %36 = select i1 %34, i32 %35, i32 %33
  %37 = tail call ptr @loop_preheader_edge(ptr noundef %29) #17
  %38 = load ptr, ptr %37, align 8, !tbaa !38
  %39 = tail call fastcc ptr @single_pred_edge(ptr noundef %38) #18
  %40 = tail call ptr @loop_latch_edge(ptr noundef %0) #17
  %41 = tail call ptr @split_edge(ptr noundef %40) #17
  %42 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  %44 = tail call fastcc ptr @single_pred(ptr noundef %43) #18
  %45 = load ptr, ptr %2, align 8, !tbaa !38
  %46 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 8
  %47 = load i32, ptr %46, align 4, !tbaa !93
  %48 = sub nsw i32 10000, %47
  tail call fastcc void @scale_dominated_blocks_in_loop(ptr noundef %0, ptr noundef %45, i32 noundef %48) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %17, ptr noundef %44) #18
  %49 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !8
  %50 = tail call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %49, ptr noundef %49, ptr noundef null, ptr noundef null) #17
  call void @gsi_insert_after(ptr noundef nonnull %17, ptr noundef %50, i32 noundef 0) #17
  %51 = or disjoint i32 %23, 2048
  %52 = call ptr @make_edge(ptr noundef %44, ptr noundef %38, i32 noundef %51) #17
  call void @rescan_loop_exit(ptr noundef %52, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  %53 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 9
  %54 = load i64, ptr %53, align 8, !tbaa !94
  %55 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 9
  store i64 %54, ptr %55, align 8, !tbaa !94
  %56 = load i32, ptr %46, align 4, !tbaa !93
  %57 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 8
  store i32 %56, ptr %57, align 4, !tbaa !93
  %58 = load ptr, ptr %42, align 8, !tbaa !75
  %59 = call fastcc ptr @single_pred_edge(ptr noundef %58) #18
  %60 = load i32, ptr %46, align 4, !tbaa !93
  %61 = sub nsw i32 10000, %60
  %62 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 8
  store i32 %61, ptr %62, align 4, !tbaa !93
  %63 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 7
  store i32 1024, ptr %63, align 8, !tbaa !92
  %64 = load i64, ptr %53, align 8, !tbaa !94
  %65 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 9
  %66 = load i64, ptr %65, align 8, !tbaa !94
  %67 = sub nsw i64 %66, %64
  %68 = call i64 @llvm.smax.i64(i64 %67, i64 0)
  store i64 %68, ptr %65, align 8, !tbaa !94
  call void @scale_bbs_frequencies_int(ptr noundef nonnull %42, i32 noundef 1, i32 noundef %61, i32 noundef 10000) #17
  %69 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %70 = call ptr @loop_preheader_edge(ptr noundef %29) #17
  %71 = call ptr @loop_latch_edge(ptr noundef %0) #17
  %72 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !10
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %14, ptr noundef %73) #17
  %74 = getelementptr inbounds %struct.loop, ptr %29, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !10
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %15, ptr noundef %75) #17
  %76 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %14) #18, !range !37
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %147

78:                                               ; preds = %32
  %79 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 6
  %80 = getelementptr inbounds %struct.edge_def, ptr %70, i64 0, i32 6
  %81 = getelementptr inbounds %struct.edge_def, ptr %71, i64 0, i32 6
  br label %82

82:                                               ; preds = %78, %140
  %83 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %14) #18
  %84 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %15) #18
  %85 = load i32, ptr %79, align 4, !tbaa !53
  %86 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %83, i32 noundef %85) #18
  %87 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %86) #18
  %88 = load i32, ptr %80, align 4, !tbaa !53
  %89 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %84, i32 noundef %88) #18
  %90 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %89) #18
  %91 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %87, ptr noundef %90) #17
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 997, ptr noundef nonnull @.str.2) #17
  br label %94

94:                                               ; preds = %82, %93
  %95 = load i32, ptr %81, align 4, !tbaa !53
  %96 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %83, i32 noundef %95) #18
  %97 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %96) #18
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 65535
  %100 = icmp eq i64 %99, 141
  br i1 %100, label %101, label %111

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  %104 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !5
  %106 = call zeroext i8 @useless_type_conversion_p(ptr noundef %103, ptr noundef %105) #17
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.tree_ssa_name, ptr %97, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  br label %140

111:                                              ; preds = %101, %94
  %112 = load i64, ptr %87, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 141
  br i1 %114, label %115, label %125

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !5
  %118 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !5
  %120 = call zeroext i8 @useless_type_conversion_p(ptr noundef %117, ptr noundef %119) #17
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.tree_ssa_name, ptr %87, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !5
  br label %140

125:                                              ; preds = %115, %111
  %126 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !5
  %128 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !5
  %130 = call zeroext i8 @useless_type_conversion_p(ptr noundef %127, ptr noundef %129) #17
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %125
  %133 = load ptr, ptr %126, align 8, !tbaa !5
  %134 = call ptr @create_tmp_var(ptr noundef %133, ptr noundef nonnull @.str.3) #17
  %135 = call zeroext i8 @add_referenced_var(ptr noundef %134) #17
  br label %140

136:                                              ; preds = %125
  %137 = load ptr, ptr %128, align 8, !tbaa !5
  %138 = call ptr @create_tmp_var(ptr noundef %137, ptr noundef nonnull @.str.3) #17
  %139 = call zeroext i8 @add_referenced_var(ptr noundef %138) #17
  br label %140

140:                                              ; preds = %122, %136, %132, %108
  %141 = phi ptr [ %110, %108 ], [ %124, %122 ], [ %134, %132 ], [ %138, %136 ]
  %142 = call fastcc ptr @make_ssa_name(ptr noundef %141) #18
  %143 = call ptr @create_phi_node(ptr noundef %142, ptr noundef %38) #17
  %144 = getelementptr inbounds %struct.tree_ssa_name, ptr %142, i64 0, i32 2
  store ptr %143, ptr %144, align 8, !tbaa !5
  call void @add_phi_arg(ptr noundef %143, ptr noundef nonnull %87, ptr noundef %39, i32 noundef 0) #17
  call void @add_phi_arg(ptr noundef %143, ptr noundef nonnull %97, ptr noundef %52, i32 noundef 0) #17
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %89, ptr noundef %142) #18
  call fastcc void @gsi_next(ptr noundef nonnull %14) #18
  call fastcc void @gsi_next(ptr noundef nonnull %15) #18
  %145 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %14) #18, !range !37
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %82, label %147, !llvm.loop !95

147:                                              ; preds = %140, %32
  %148 = call zeroext i8 @remove_path(ptr noundef nonnull %2) #17
  %149 = icmp eq ptr %4, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  call void %4(ptr noundef %0, ptr noundef %5) #17
  br label %151

151:                                              ; preds = %150, %147
  %152 = call ptr @sbitmap_alloc(i32 noundef %1) #17
  call void @sbitmap_ones(ptr noundef %152) #17
  %153 = add i32 %1, -1
  call fastcc void @RESET_BIT(ptr noundef %152, i32 noundef %153) #18
  %154 = call ptr @loop_latch_edge(ptr noundef %0) #17
  %155 = call zeroext i8 @gimple_duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %154, i32 noundef %153, ptr noundef %152, ptr noundef %52, ptr noundef nonnull %18, i32 noundef 1) #18, !range !37
  call void @free(ptr noundef %152) #18
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1047, ptr noundef nonnull @.str.2) #17
  br label %158

158:                                              ; preds = %151, %157
  %159 = load ptr, ptr %18, align 8
  %160 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %159, i32 noundef 0, ptr noundef nonnull %16) #18, !range !96
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %158, %168
  %163 = phi i32 [ %169, %168 ], [ 0, %158 ]
  %164 = load ptr, ptr %16, align 8, !tbaa !8
  %165 = call zeroext i8 @remove_path(ptr noundef %164) #17
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1052, ptr noundef nonnull @.str.2) #17
  br label %168

168:                                              ; preds = %162, %167
  %169 = add i32 %163, 1
  %170 = load ptr, ptr %18, align 8
  %171 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %170, i32 noundef %169, ptr noundef nonnull %16) #18, !range !96
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %162, !llvm.loop !97

173:                                              ; preds = %168, %158
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %18) #18
  call void @update_ssa(i32 noundef 2048) #17
  %174 = load ptr, ptr %72, align 8, !tbaa !10
  %175 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 11
  %176 = load i32, ptr %175, align 8, !tbaa !98
  %177 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %178 = load ptr, ptr %177, align 8, !tbaa !38
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 11
  %180 = load i32, ptr %179, align 8, !tbaa !98
  %181 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %182 = icmp eq i32 %176, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %173
  %184 = add i32 %36, 1
  br label %193

185:                                              ; preds = %173
  %186 = getelementptr inbounds %struct.edge_def, ptr %181, i64 0, i32 8
  %187 = load i32, ptr %186, align 4, !tbaa !93
  %188 = mul nsw i32 %187, %180
  %189 = add nsw i32 %188, 5000
  %190 = sdiv i32 %189, 10000
  %191 = add i32 %36, 1
  %192 = mul i32 %190, %191
  call void @scale_loop_frequencies(ptr noundef nonnull %0, i32 noundef %192, i32 noundef %176) #17
  br label %193

193:                                              ; preds = %183, %185
  %194 = phi i32 [ %184, %183 ], [ %191, %185 ]
  %195 = load ptr, ptr %42, align 8, !tbaa !75
  %196 = call fastcc ptr @single_pred(ptr noundef %195) #18
  %197 = call ptr @find_edge(ptr noundef %196, ptr noundef %38) #17
  %198 = call ptr @loop_preheader_edge(ptr noundef nonnull %0) #17
  %199 = getelementptr inbounds %struct.edge_def, ptr %198, i64 0, i32 9
  %200 = load i64, ptr %199, align 8, !tbaa !94
  %201 = getelementptr inbounds %struct.edge_def, ptr %197, i64 0, i32 9
  store i64 %200, ptr %201, align 8, !tbaa !94
  %202 = udiv i32 10000, %194
  %203 = getelementptr inbounds %struct.edge_def, ptr %197, i64 0, i32 8
  store i32 %202, ptr %203, align 4, !tbaa !93
  %204 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 8
  %205 = load i64, ptr %204, align 8, !tbaa !99
  %206 = add nsw i64 %205, %200
  store i64 %206, ptr %204, align 8, !tbaa !99
  %207 = load ptr, ptr %197, align 8, !tbaa !38
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %207, i64 0, i32 11
  %209 = load i32, ptr %208, align 8, !tbaa !98
  %210 = mul nsw i32 %209, %202
  %211 = add nsw i32 %210, 5000
  %212 = sdiv i32 %211, 10000
  %213 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 11
  %214 = load i32, ptr %213, align 8, !tbaa !98
  %215 = add nsw i32 %212, %214
  store i32 %215, ptr %213, align 8, !tbaa !98
  %216 = load ptr, ptr %42, align 8, !tbaa !75
  %217 = call fastcc ptr @single_pred_edge(ptr noundef %216) #18
  %218 = getelementptr inbounds %struct.edge_def, ptr %217, i64 0, i32 8
  %219 = load i32, ptr %218, align 4, !tbaa !93
  %220 = load i32, ptr %203, align 4, !tbaa !93
  %221 = sub nsw i32 10000, %220
  store i32 %221, ptr %218, align 4, !tbaa !93
  %222 = getelementptr inbounds %struct.basic_block_def, ptr %196, i64 0, i32 8
  %223 = load i64, ptr %222, align 8, !tbaa !99
  %224 = load i64, ptr %201, align 8, !tbaa !94
  %225 = sub nsw i64 %223, %224
  %226 = getelementptr inbounds %struct.edge_def, ptr %217, i64 0, i32 9
  %227 = call i64 @llvm.smax.i64(i64 %225, i64 0)
  store i64 %227, ptr %226, align 8, !tbaa !94
  %228 = icmp eq i32 %219, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %193
  call void @scale_bbs_frequencies_int(ptr noundef nonnull %42, i32 noundef 1, i32 noundef %221, i32 noundef %219) #17
  br label %230

230:                                              ; preds = %229, %193
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %19, ptr noundef nonnull %196) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #16
  %231 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %17) #18
  %232 = load ptr, ptr %10, align 8, !tbaa !8
  %233 = load ptr, ptr %11, align 8, !tbaa !8
  call void @create_iv(ptr noundef %232, ptr noundef %233, ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %17, i8 noundef zeroext 0, ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %234 = load i32, ptr %13, align 4, !tbaa !35
  call fastcc void @gimple_cond_set_code(ptr noundef %231, i32 noundef %234) #18
  %235 = load ptr, ptr %8, align 8, !tbaa !8
  call fastcc void @gimple_cond_set_lhs(ptr noundef %231, ptr noundef %235) #18
  %236 = load ptr, ptr %12, align 8, !tbaa !8
  call fastcc void @gimple_cond_set_rhs(ptr noundef %231, ptr noundef %236) #18
  call fastcc void @update_stmt(ptr noundef %231) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void
}

; Function Attrs: optsize
declare i32 @expected_loop_iterations(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_exit_conditions(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #0 {
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %10 = getelementptr inbounds %struct.tree_niter_desc, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = getelementptr inbounds %struct.tree_niter_desc, ptr %1, i64 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = getelementptr inbounds %struct.tree_niter_desc, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = tail call ptr @lower_bound_in_type(ptr noundef %17, ptr noundef %17) #17
  %19 = tail call ptr @upper_bound_in_type(ptr noundef %17, ptr noundef %17) #17
  %20 = getelementptr inbounds %struct.tree_niter_desc, ptr %1, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !83
  %22 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !8
  %23 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %17, ptr noundef %11) #17
  %24 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %17, ptr noundef %15) #17
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !8
  store ptr %25, ptr %3, align 8, !tbaa !8
  store ptr null, ptr %4, align 8, !tbaa !8
  store ptr null, ptr %5, align 8, !tbaa !8
  store i32 0, ptr %6, align 4, !tbaa !35
  store ptr null, ptr %7, align 8, !tbaa !8
  switch i32 %21, label %39 [
    i32 0, label %26
    i32 102, label %27
    i32 97, label %31
    i32 99, label %35
  ]

26:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 714, ptr noundef nonnull @.str.2) #17
  br label %39

27:                                               ; preds = %8
  %28 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %13) #17
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 97, i32 99
  br label %40

31:                                               ; preds = %8
  %32 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %13) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 729, ptr noundef nonnull @.str.2) #17
  br label %40

35:                                               ; preds = %8
  %36 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %13) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 733, ptr noundef nonnull @.str.2) #17
  br label %40

39:                                               ; preds = %26, %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 736, ptr noundef nonnull @.str.2) #17
  br label %40

40:                                               ; preds = %27, %38, %35, %34, %31, %39
  %41 = phi i32 [ 97, %34 ], [ 97, %31 ], [ 99, %35 ], [ 99, %38 ], [ %21, %39 ], [ %30, %27 ]
  %42 = getelementptr inbounds %struct.tree_niter_desc, ptr %1, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  %44 = tail call i32 @integer_zerop(ptr noundef %43) #17
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !8
  %48 = load ptr, ptr %42, align 8, !tbaa !86
  %49 = tail call ptr @invert_truthvalue_loc(i32 noundef 0, ptr noundef %48) #17
  %50 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %47, ptr noundef %49, ptr noundef %22) #17
  br label %51

51:                                               ; preds = %46, %40
  %52 = phi ptr [ %22, %40 ], [ %50, %46 ]
  %53 = zext i32 %2 to i64
  %54 = tail call ptr @build_int_cst_type(ptr noundef %17, i64 noundef %53) #17
  %55 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %17, ptr noundef nonnull %13, ptr noundef %54) #17
  %56 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %17, ptr noundef %55, ptr noundef nonnull %13) #17
  %57 = icmp eq i32 %41, 97
  %58 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !8
  %59 = select i1 %57, ptr %18, ptr %19
  %60 = select i1 %57, i32 100, i32 98
  %61 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %17, ptr noundef %59, ptr noundef %56) #17
  %62 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %60, ptr noundef %58, ptr noundef %24, ptr noundef %61) #17
  %63 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !8
  %64 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %63, ptr noundef %62, ptr noundef %52) #17
  %65 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %17, ptr noundef %24, ptr noundef %56) #17
  %66 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !8
  %67 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %41, ptr noundef %66, ptr noundef %23, ptr noundef %65) #17
  %68 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !8
  %69 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %68, ptr noundef %67, ptr noundef %64) #17
  %70 = tail call ptr @unshare_expr(ptr noundef %69) #17
  %71 = call ptr @force_gimple_operand(ptr noundef %70, ptr noundef nonnull %9, i8 noundef zeroext 0, ptr noundef null) #17
  %72 = load ptr, ptr %9, align 8, !tbaa !8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %51
  %75 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %76 = load ptr, ptr %9, align 8, !tbaa !8
  %77 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %75, ptr noundef %76) #17
  br label %78

78:                                               ; preds = %74, %51
  %79 = call zeroext i8 @is_gimple_condexpr(ptr noundef %71) #17
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = call ptr @force_gimple_operand(ptr noundef %71, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef null) #17
  %83 = load ptr, ptr %9, align 8, !tbaa !8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %87 = load ptr, ptr %9, align 8, !tbaa !8
  %88 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %86, ptr noundef %87) #17
  br label %89

89:                                               ; preds = %81, %85, %78
  %90 = phi ptr [ %71, %78 ], [ %82, %85 ], [ %82, %81 ]
  store ptr %90, ptr %3, align 8, !tbaa !8
  %91 = call ptr @unshare_expr(ptr noundef %23) #17
  %92 = call ptr @force_gimple_operand(ptr noundef %91, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef null) #17
  %93 = load ptr, ptr %9, align 8, !tbaa !8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %97 = load ptr, ptr %9, align 8, !tbaa !8
  %98 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %96, ptr noundef %97) #17
  br label %99

99:                                               ; preds = %95, %89
  %100 = call ptr @unshare_expr(ptr noundef %65) #17
  %101 = call ptr @force_gimple_operand(ptr noundef %100, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef null) #17
  %102 = load ptr, ptr %9, align 8, !tbaa !8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %106 = load ptr, ptr %9, align 8, !tbaa !8
  %107 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %105, ptr noundef %106) #17
  br label %108

108:                                              ; preds = %104, %99
  store ptr %92, ptr %4, align 8, !tbaa !8
  store ptr %55, ptr %5, align 8, !tbaa !8
  store i32 %41, ptr %6, align 4, !tbaa !35
  store ptr %101, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  ret void
}

; Function Attrs: optsize
declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_version(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #18, !range !37
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 655, ptr noundef nonnull @.str.2) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !77
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #18
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scale_dominated_blocks_in_loop(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %1) #17
  store ptr %7, ptr %4, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %6, %15
  %10 = phi ptr [ %17, %15 ], [ %7, %6 ]
  %11 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef nonnull %10) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  call void @scale_bbs_frequencies_int(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 10000, i32 noundef %2) #17
  %14 = load ptr, ptr %4, align 8, !tbaa !8
  call fastcc void @scale_dominated_blocks_in_loop(ptr noundef %0, ptr noundef %14, i32 noundef %2) #18
  br label %15

15:                                               ; preds = %9, %13
  %16 = load ptr, ptr %4, align 8, !tbaa !8
  %17 = call ptr @next_dom_son(i32 noundef 1, ptr noundef %16) #17
  store ptr %17, ptr %4, align 8, !tbaa !8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !100

19:                                               ; preds = %15, %6, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rescan_loop_exit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @scale_bbs_frequencies_int(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @operand_equal_for_phi_arg_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @remove_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !101
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
  %15 = load i64, ptr %14, align 8, !tbaa !103
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !5
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !103
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !104
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !8
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !8
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: optsize
declare void @scale_loop_frequencies(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #11 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !37
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #17
  tail call void @update_stmt_operands(ptr noundef %0) #17
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_unroll_loop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  tail call void @tree_transform_and_unroll_loop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @canonicalize_loop_ivs(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = load ptr, ptr %1, align 8, !tbaa !8
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1023
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %16 = tail call ptr @single_dom_exit(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %17 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %18) #17
  %19 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #18, !range !37
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !106
  %23 = call ptr %22(i32 noundef %15, i32 noundef 1) #17
  br label %56

24:                                               ; preds = %3, %38
  %25 = phi i32 [ %39, %38 ], [ %15, %3 ]
  %26 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #18
  %27 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %26) #18
  %28 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %27) #18
  %29 = call zeroext i8 @is_gimple_reg(ptr noundef %28) #17
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1023
  %37 = call i32 @llvm.umax.i32(i32 %36, i32 %25)
  br label %38

38:                                               ; preds = %31, %24
  %39 = phi i32 [ %25, %24 ], [ %37, %31 ]
  call fastcc void @gsi_next(ptr noundef nonnull %6) #18
  %40 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #18, !range !37
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %24, label %42, !llvm.loop !114

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !106
  %44 = call ptr %43(i32 noundef %39, i32 noundef 1) #17
  %45 = icmp eq i32 %15, %39
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %1, align 8, !tbaa !8
  %48 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %44, ptr noundef %47) #17
  store ptr %48, ptr %1, align 8, !tbaa !8
  %49 = call ptr @force_gimple_operand(ptr noundef %48, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null) #17
  store ptr %49, ptr %1, align 8, !tbaa !8
  %50 = load ptr, ptr %7, align 8, !tbaa !8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %54 = load ptr, ptr %7, align 8, !tbaa !8
  %55 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %53, ptr noundef %54) #17
  br label %56

56:                                               ; preds = %21, %46, %52, %42
  %57 = phi ptr [ %23, %21 ], [ %44, %46 ], [ %44, %52 ], [ %44, %42 ]
  %58 = icmp eq i8 %2, 0
  %59 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %60 = select i1 %58, ptr %17, ptr %59
  %61 = load ptr, ptr %60, align 8, !tbaa !8
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %61) #18
  %62 = call ptr @build_int_cst_type(ptr noundef %57, i64 noundef 0) #17
  %63 = call ptr @build_int_cst(ptr noundef %57, i64 noundef 1) #17
  call void @create_iv(ptr noundef %62, ptr noundef %63, ptr noundef null, ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext %2, ptr noundef nonnull %4, ptr noundef null) #18
  %64 = load ptr, ptr %4, align 8, !tbaa !8
  call fastcc void @rewrite_all_phi_nodes_with_iv(ptr noundef %0, ptr noundef %64) #18
  %65 = load ptr, ptr %16, align 8, !tbaa !38
  %66 = call ptr @last_stmt(ptr noundef %65) #17
  %67 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %68 = load i32, ptr %67, align 8, !tbaa !92
  %69 = and i32 %68, 1024
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %72 = load ptr, ptr %16, align 8, !tbaa !38
  call void @extract_true_false_edges_from_block(ptr noundef %72, ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  %73 = load ptr, ptr %8, align 8, !tbaa !8
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 7
  store i32 2048, ptr %74, align 8, !tbaa !92
  %75 = load ptr, ptr %9, align 8, !tbaa !8
  %76 = getelementptr inbounds %struct.edge_def, ptr %75, i64 0, i32 7
  store i32 1024, ptr %76, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %77

77:                                               ; preds = %71, %56
  call fastcc void @gimple_cond_set_code(ptr noundef %66, i32 noundef 97) #18
  %78 = load ptr, ptr %4, align 8, !tbaa !8
  call fastcc void @gimple_cond_set_lhs(ptr noundef %66, ptr noundef %78) #18
  %79 = load ptr, ptr %1, align 8, !tbaa !8
  call fastcc void @gimple_cond_set_rhs(ptr noundef %66, ptr noundef %79) #18
  call fastcc void @update_stmt(ptr noundef %66) #18
  %80 = load ptr, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %80
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !8
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_all_phi_nodes_with_iv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !115
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %2, %23
  %11 = phi i64 [ %24, %23 ], [ 0, %2 ]
  %12 = getelementptr inbounds ptr, ptr %6, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %13) #18
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %13) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  %18 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !37
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %20
  call fastcc void @rewrite_phi_with_iv(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1) #18
  %21 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !37
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %20, label %23, !llvm.loop !116

23:                                               ; preds = %20, %17, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  %24 = add nuw nsw i64 %11, 1
  %25 = load i32, ptr %7, align 4, !tbaa !115
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %10, label %28, !llvm.loop !117

28:                                               ; preds = %23, %2
  call void @free(ptr noundef %6) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !118
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = load ptr, ptr %1, align 8, !tbaa !46
  store ptr %4, ptr %0, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !122
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !120
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !123
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !125
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !103
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !126
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !35
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !126
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !35
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !127

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !35
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !35
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !125
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !120
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !125
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !103
  store i64 %35, ptr %3, align 8, !tbaa !126
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !35
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !35
  %40 = load i32, ptr %23, align 8, !tbaa !125
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !125
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !128

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !129
  store ptr %44, ptr %0, align 8, !tbaa !120
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !123
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !35
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !126
  store i32 %16, ptr %1, align 4, !tbaa !35
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_uses_to_rename_bb(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %9 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %8) #18
  store i32 0, ptr %6, align 8, !tbaa.struct !34
  %10 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %9, ptr %10, align 8, !tbaa.struct !36
  %11 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %9, ptr noundef nonnull %5) #18, !range !37
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %3, %28
  %14 = load ptr, ptr %5, align 8, !tbaa !8
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %16) #17
  %17 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !37
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 6
  br label %21

21:                                               ; preds = %19, %21
  %22 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18
  %23 = load i32, ptr %20, align 4, !tbaa !53
  %24 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %22, i32 noundef %23) #18
  %25 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %24) #18
  call fastcc void @find_uses_to_rename_use(ptr noundef %0, ptr noundef %25, ptr noundef %1, ptr noundef %2) #18
  call fastcc void @gsi_next(ptr noundef nonnull %4) #18
  %26 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !37
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %21, label %28, !llvm.loop !130

28:                                               ; preds = %21, %13
  call fastcc void @ei_next(ptr noundef nonnull %6) #18
  %29 = load i32, ptr %6, align 8
  %30 = load ptr, ptr %10, align 8
  %31 = call fastcc zeroext i8 @ei_cond(i32 %29, ptr %30, ptr noundef nonnull %5) #18, !range !37
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %13, !llvm.loop !131

33:                                               ; preds = %28, %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  %34 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !37
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33, %36
  %37 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18
  call fastcc void @find_uses_to_rename_stmt(ptr noundef %37, ptr noundef %1, ptr noundef %2) #18
  call fastcc void @gsi_next(ptr noundef nonnull %4) #18
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !37
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %36, label %40, !llvm.loop !132

40:                                               ; preds = %36, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !126
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !126
  %6 = load i32, ptr %1, align 4, !tbaa !35
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_uses_to_rename_use(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = tail call fastcc ptr @gimple_bb(ptr noundef %15) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = tail call fastcc ptr @loop_outer(ptr noundef %20) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %18
  %24 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %20, ptr noundef %0) #17
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = zext i32 %13 to i64
  %28 = getelementptr inbounds ptr, ptr %2, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %32, ptr %28, align 8, !tbaa !8
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi ptr [ %32, %31 ], [ %29, %26 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !41
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %36) #17
  %38 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %13) #17
  br label %39

39:                                               ; preds = %23, %18, %11, %8, %4, %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_uses_to_rename_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #16
  %5 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #18
  %6 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #18, !range !37
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %0) #18
  %10 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #18
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %14, %12 ], [ %9, %8 ]
  tail call fastcc void @find_uses_to_rename_use(ptr noundef %5, ptr noundef %13, ptr noundef %1, ptr noundef %2) #18
  %14 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #18
  %15 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #18
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %12, label %17, !llvm.loop !133

17:                                               ; preds = %12, %8, %3
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #18
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !76
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #18
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !135
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #18
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i8, ptr %0, align 8, !tbaa !137
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !138
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #18
  %8 = load ptr, ptr %3, align 8, !tbaa !139
  store ptr %8, ptr %2, align 8, !tbaa !138
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !142
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #18
  %17 = load ptr, ptr %11, align 8, !tbaa !144
  store ptr %17, ptr %10, align 8, !tbaa !141
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !137
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !141
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #18
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !138
  store i8 0, ptr %0, align 8, !tbaa !137
  %6 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !37
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !76
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_exit_phis_var(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = tail call fastcc ptr @gimple_bb(ptr noundef %7) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #17
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !41
  br i1 %10, label %15, label %13

13:                                               ; preds = %3
  %14 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %12) #17
  br label %17

15:                                               ; preds = %3
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %12) #17
  br label %17

17:                                               ; preds = %15, %13
  %18 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !41
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %20) #17
  tail call void @compute_global_livein(ptr noundef %1, ptr noundef %18) #17
  tail call void @bitmap_obstack_free(ptr noundef %18) #17
  call fastcc void @bmp_iter_and_init(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %1, ptr noundef nonnull %4) #18
  %22 = call fastcc zeroext i8 @bmp_iter_and(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !37
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %17, %24
  %25 = load ptr, ptr @cfun, align 8, !tbaa !8
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !28
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  %30 = load i32, ptr %4, align 4, !tbaa !35
  %31 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %29, i32 noundef %30) #18
  tail call fastcc void @add_exit_phis_edge(ptr noundef %31, ptr noundef %0) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %32 = call fastcc zeroext i8 @bmp_iter_and(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !37
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %24, !llvm.loop !145

34:                                               ; preds = %24, %17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @compute_global_livein(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_and_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #13 {
  %5 = load ptr, ptr %1, align 8, !tbaa !46
  store ptr %5, ptr %0, align 8, !tbaa !120
  %6 = load ptr, ptr %2, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %8 = icmp eq ptr %5, null
  %9 = select i1 %8, ptr null, ptr %6
  store ptr %9, ptr %7, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  br label %15

13:                                               ; preds = %21, %4
  store ptr @bitmap_zero_bits, ptr %7, align 8, !tbaa !122
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !120
  %14 = load i32, ptr getelementptr inbounds (%struct.bitmap_element_def, ptr @bitmap_zero_bits, i64 0, i32 2), align 8, !tbaa !123
  br label %26

15:                                               ; preds = %11, %21
  %16 = phi ptr [ %6, %11 ], [ %22, %21 ]
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !123
  %19 = load i32, ptr %12, align 8, !tbaa !123
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8, !tbaa !129
  store ptr %22, ptr %7, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %13, label %15

24:                                               ; preds = %15
  %25 = icmp eq i32 %19, %18
  br i1 %25, label %26, label %36

26:                                               ; preds = %13, %24
  %27 = phi ptr [ @bitmap_zero_bits, %13 ], [ %5, %24 ]
  %28 = phi ptr [ @bitmap_zero_bits, %13 ], [ %16, %24 ]
  %29 = phi i32 [ %14, %13 ], [ %18, %24 ]
  %30 = shl i32 %29, 7
  %31 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !103
  %33 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !103
  %35 = and i64 %34, %32
  br label %36

36:                                               ; preds = %24, %26
  %37 = phi i32 [ 0, %26 ], [ 1, %24 ]
  %38 = phi i64 [ %35, %26 ], [ 0, %24 ]
  %39 = phi i32 [ %30, %26 ], [ 0, %24 ]
  %40 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %37, ptr %40, align 8
  %41 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %38, ptr %41, align 8
  %42 = icmp eq i64 %38, 0
  %43 = zext i1 %42 to i32
  %44 = or disjoint i32 %39, %43
  store i32 %44, ptr %3, align 4, !tbaa !35
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_and(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !126
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %34, %2
  %7 = phi i64 [ %4, %2 ], [ %41, %34 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %77

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !35
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %75, !llvm.loop !146

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !35
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !35
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !125
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %0, align 8, !tbaa !120
  br label %28

28:                                               ; preds = %19, %73
  %29 = phi ptr [ %27, %19 ], [ %52, %73 ]
  %30 = phi i32 [ %25, %19 ], [ 0, %73 ]
  store i32 %30, ptr %23, align 8, !tbaa !125
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %49, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %26, align 8, !tbaa !122
  br label %34

34:                                               ; preds = %32, %43
  %35 = phi i32 [ %30, %32 ], [ %47, %43 ]
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !103
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %36
  %40 = load i64, ptr %39, align 8, !tbaa !103
  %41 = and i64 %40, %38
  store i64 %41, ptr %3, align 8, !tbaa !126
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %6

43:                                               ; preds = %34
  %44 = load i32, ptr %1, align 4, !tbaa !35
  %45 = add i32 %44, 64
  store i32 %45, ptr %1, align 4, !tbaa !35
  %46 = load i32, ptr %23, align 8, !tbaa !125
  %47 = add i32 %46, 1
  store i32 %47, ptr %23, align 8, !tbaa !125
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %34, !llvm.loop !147

49:                                               ; preds = %43, %28
  br label %50

50:                                               ; preds = %61, %49
  %51 = phi ptr [ %29, %49 ], [ %52, %61 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !129
  %53 = icmp eq ptr %52, null
  br i1 %53, label %76, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bitmap_element_def, ptr %52, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !123
  %57 = load ptr, ptr %26, align 8, !tbaa !122
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !123
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %71
  br label %50, !llvm.loop !148

62:                                               ; preds = %54
  store ptr %52, ptr %0, align 8, !tbaa !120
  br label %63

63:                                               ; preds = %62, %68
  %64 = phi ptr [ %57, %62 ], [ %69, %68 ]
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !123
  %67 = icmp ult i32 %66, %56
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load ptr, ptr %64, align 8, !tbaa !129
  store ptr %69, ptr %26, align 8, !tbaa !122
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %63, !llvm.loop !149

71:                                               ; preds = %63
  %72 = icmp eq i32 %56, %66
  br i1 %72, label %73, label %61

73:                                               ; preds = %71
  %74 = shl i32 %56, 7
  store i32 %74, ptr %1, align 4, !tbaa !35
  br label %28

75:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !126
  store i32 %16, ptr %1, align 4, !tbaa !35
  br label %77

76:                                               ; preds = %50
  store ptr null, ptr %0, align 8, !tbaa !120
  br label %77

77:                                               ; preds = %68, %6, %75, %76
  %78 = phi i8 [ 0, %76 ], [ 1, %75 ], [ 1, %6 ], [ 0, %68 ]
  ret i8 %78
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_exit_phis_edge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %8 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !34
  %9 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !36
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 3
  %11 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %3) #18, !range !37
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %2, %24
  %14 = load ptr, ptr %10, align 8, !tbaa !40
  %15 = load ptr, ptr %3, align 8, !tbaa !8
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = tail call ptr @find_common_loop(ptr noundef %14, ptr noundef %18) #17
  %20 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %19, ptr noundef %21) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %13
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %25 = load i32, ptr %4, align 8
  %26 = load ptr, ptr %9, align 8
  %27 = call fastcc zeroext i8 @ei_cond(i32 %25, ptr %26, ptr noundef nonnull %3) #18, !range !37
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %13, !llvm.loop !150

29:                                               ; preds = %24, %13, %2
  %30 = load ptr, ptr %3, align 8, !tbaa !8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = tail call ptr @create_phi_node(ptr noundef %1, ptr noundef %0) #17
  %34 = tail call fastcc ptr @gimple_phi_result(ptr noundef %33) #18
  %35 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %33) #18
  %36 = tail call ptr @create_new_def_for(ptr noundef %34, ptr noundef %33, ptr noundef nonnull %35) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !34
  store ptr %8, ptr %9, align 8, !tbaa.struct !36
  %37 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %3) #18, !range !37
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %32, %39
  %40 = load ptr, ptr %3, align 8, !tbaa !8
  tail call void @add_phi_arg(ptr noundef %33, ptr noundef %1, ptr noundef %40, i32 noundef 0) #17
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %41 = load i32, ptr %4, align 8
  %42 = load ptr, ptr %9, align 8
  %43 = call fastcc zeroext i8 @ei_cond(i32 %41, ptr %42, ptr noundef nonnull %3) #18, !range !37
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %39, !llvm.loop !151

45:                                               ; preds = %39, %32, %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_new_def_for(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  ret ptr %3
}

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !104
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.2) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !8
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3103, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !79
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !152
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !154
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #18
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !156
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !157
  store ptr %2, ptr %6, align 8, !tbaa !156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !156
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #18
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  store ptr %1, ptr %0, align 8, !tbaa !156
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !157
  store ptr %0, ptr %4, align 8, !tbaa !156
  store ptr %0, ptr %3, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !158
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare void @add_phi_args_after_copy_bb(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lower_bound_in_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @upper_bound_in_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_sign_bit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @invert_truthvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_condexpr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !37
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #18
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1665, ptr noundef nonnull @.str.2) #17
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !5
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !103
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !76
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !35
  ret i32 %4
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #13 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #18
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18, !range !37
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #18, !range !76
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #18
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18, !range !37
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !159

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_phi_with_iv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.affine_iv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #18
  %7 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %6) #18
  %8 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %7) #18
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %8) #17
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq ptr %8, %3
  %12 = or i1 %11, %10
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call fastcc void @gsi_next(ptr noundef %1) #18
  br label %45

14:                                               ; preds = %4
  %15 = call zeroext i8 @simple_iv(ptr noundef %0, ptr noundef %0, ptr noundef %8, ptr noundef nonnull %5, i8 noundef zeroext 1) #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call fastcc void @gsi_next(ptr noundef %1) #18
  br label %45

18:                                               ; preds = %14
  call void @remove_phi_node(ptr noundef %1, i8 noundef zeroext 0) #17
  %19 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %25 [
    i16 10, label %23
    i16 12, label %23
  ]

23:                                               ; preds = %18, %18
  %24 = load ptr, ptr @sizetype_tab, align 16, !tbaa !8
  br label %25

25:                                               ; preds = %18, %23
  %26 = phi ptr [ %24, %23 ], [ %20, %18 ]
  %27 = getelementptr inbounds %struct.affine_iv, ptr %5, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !160
  %29 = call ptr @unshare_expr(ptr noundef %28) #17
  %30 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %26, ptr noundef %3) #17
  %31 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %26, ptr noundef %29, ptr noundef %30) #17
  %32 = load i64, ptr %20, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 10
  %36 = icmp eq i32 %34, 12
  %37 = or i1 %35, %36
  %38 = select i1 %37, i32 66, i32 63
  %39 = load ptr, ptr %5, align 8, !tbaa !161
  %40 = call ptr @unshare_expr(ptr noundef %39) #17
  %41 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %38, ptr noundef nonnull %20, ptr noundef %40, ptr noundef %31) #17
  %42 = call ptr @force_gimple_operand_gsi(ptr noundef %2, ptr noundef %41, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #17
  %43 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %8, ptr noundef %42) #17
  call void @gsi_insert_before(ptr noundef %2, ptr noundef %43, i32 noundef 1) #17
  %44 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %25, %17, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !9, i64 8}
!11 = !{!"loop", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 16, !13, i64 24, !12, i64 32, !12, i64 36, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !14, i64 80, !14, i64 96, !6, i64 112, !6, i64 113, !12, i64 116, !9, i64 120, !9, i64 128, !6, i64 136, !9, i64 144}
!12 = !{!"int", !6, i64 0}
!13 = !{!"lpt_decision", !12, i64 0, !12, i64 4}
!14 = !{!"", !15, i64 0, !15, i64 8}
!15 = !{!"long", !6, i64 0}
!16 = !{!17, !9, i64 24}
!17 = !{!"function", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !9, i64 128, !12, i64 136, !12, i64 137, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139}
!18 = !{!19, !9, i64 16}
!19 = !{!"gimple_df", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !20, i64 32, !20, i64 48, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !12, i64 96, !21, i64 104}
!20 = !{!"pt_solution", !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !9, i64 8}
!21 = !{!"ssa_operands", !9, i64 0, !12, i64 8, !12, i64 12, !6, i64 16, !9, i64 24, !9, i64 32}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!17, !9, i64 32}
!25 = !{!26, !12, i64 0}
!26 = !{!"loops", !12, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!27 = !{!26, !9, i64 8}
!28 = !{!17, !9, i64 8}
!29 = !{!30, !9, i64 0}
!30 = !{!"control_flow_graph", !9, i64 0, !9, i64 8, !9, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !9, i64 40, !12, i64 48, !6, i64 52, !6, i64 60, !12, i64 68, !12, i64 72}
!31 = !{!32, !9, i64 56}
!32 = !{!"basic_block_def", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !9, i64 48, !9, i64 56, !6, i64 64, !15, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96}
!33 = !{!30, !9, i64 8}
!34 = !{i64 0, i64 4, !35, i64 8, i64 8, !8}
!35 = !{!12, !12, i64 0}
!36 = !{i64 0, i64 8, !8}
!37 = !{i8 0, i8 2}
!38 = !{!39, !9, i64 0}
!39 = !{!"edge_def", !9, i64 0, !9, i64 8, !6, i64 16, !9, i64 24, !9, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !15, i64 56}
!40 = !{!32, !9, i64 24}
!41 = !{!32, !12, i64 80}
!42 = distinct !{!42, !23}
!43 = distinct !{!43, !23}
!44 = !{!45, !12, i64 0}
!45 = !{!"VEC_tree_base", !12, i64 0, !12, i64 4, !6, i64 8}
!46 = !{!47, !9, i64 0}
!47 = !{!"bitmap_head_def", !9, i64 0, !9, i64 8, !12, i64 16, !9, i64 24}
!48 = !{!30, !9, i64 16}
!49 = distinct !{!49, !23}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !23}
!53 = !{!39, !12, i64 44}
!54 = distinct !{!54, !23}
!55 = distinct !{!55, !23}
!56 = !{i64 0, i64 8, !8, i64 8, i64 8, !8, i64 16, i64 8, !8}
!57 = distinct !{!57, !23}
!58 = !{!59, !9, i64 0}
!59 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16}
!60 = !{!61, !9, i64 0}
!61 = !{!"gimple_seq_node_d", !9, i64 0, !9, i64 8, !9, i64 16}
!62 = !{!63, !9, i64 24}
!63 = !{!"ssa_use_operand_d", !9, i64 0, !9, i64 8, !6, i64 16, !9, i64 24}
!64 = !{!65, !12, i64 0}
!65 = !{!"", !12, i64 0, !9, i64 8}
!66 = !{!61, !9, i64 16}
!67 = !{!59, !9, i64 8}
!68 = !{!59, !9, i64 16}
!69 = distinct !{!69, !23}
!70 = !{!39, !9, i64 8}
!71 = distinct !{!71, !23}
!72 = !{!32, !9, i64 8}
!73 = !{!74, !12, i64 40}
!74 = !{!"phi_arg_d", !63, i64 0, !9, i64 32, !12, i64 40}
!75 = !{!11, !9, i64 16}
!76 = !{i32 0, i32 256}
!77 = !{!32, !9, i64 0}
!78 = !{!30, !12, i64 32}
!79 = !{!32, !12, i64 96}
!80 = distinct !{!80, !23}
!81 = distinct !{!81, !23}
!82 = distinct !{!82, !23}
!83 = !{!84, !12, i64 72}
!84 = !{!"tree_niter_desc", !9, i64 0, !9, i64 8, !9, i64 16, !14, i64 24, !85, i64 40, !9, i64 64, !12, i64 72}
!85 = !{!"", !9, i64 0, !9, i64 8, !6, i64 16}
!86 = !{!84, !9, i64 8}
!87 = !{!84, !9, i64 40}
!88 = !{!84, !9, i64 48}
!89 = !{!84, !9, i64 64}
!90 = !{!91, !12, i64 8}
!91 = !{!"param_info", !9, i64 0, !12, i64 8, !6, i64 12, !12, i64 16, !12, i64 20, !9, i64 24}
!92 = !{!39, !12, i64 48}
!93 = !{!39, !12, i64 52}
!94 = !{!39, !15, i64 56}
!95 = distinct !{!95, !23}
!96 = !{i32 0, i32 2}
!97 = distinct !{!97, !23}
!98 = !{!32, !12, i64 88}
!99 = !{!32, !15, i64 72}
!100 = distinct !{!100, !23}
!101 = !{!102, !9, i64 0}
!102 = !{!"simple_bitmap_def", !9, i64 0, !12, i64 8, !12, i64 12, !6, i64 16}
!103 = !{!15, !15, i64 0}
!104 = !{!105, !12, i64 0}
!105 = !{!"VEC_edge_base", !12, i64 0, !12, i64 4, !6, i64 8}
!106 = !{!107, !9, i64 456}
!107 = !{!"lang_hooks", !9, i64 0, !15, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !108, i64 240, !109, i64 248, !110, i64 256, !111, i64 272, !112, i64 432, !113, i64 560, !9, i64 584, !9, i64 592, !9, i64 600, !9, i64 608, !9, i64 616, !9, i64 624, !9, i64 632, !9, i64 640, !9, i64 648, !9, i64 656, !9, i64 664, !6, i64 672}
!108 = !{!"lang_hooks_for_tree_inlining", !9, i64 0}
!109 = !{!"lang_hooks_for_callgraph", !9, i64 0}
!110 = !{!"lang_hooks_for_tree_dump", !9, i64 0, !9, i64 8}
!111 = !{!"lang_hooks_for_decls", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152}
!112 = !{!"lang_hooks_for_types", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !6, i64 120}
!113 = !{!"lang_hooks_for_lto", !9, i64 0, !9, i64 8, !9, i64 16}
!114 = distinct !{!114, !23}
!115 = !{!11, !12, i64 36}
!116 = distinct !{!116, !23}
!117 = distinct !{!117, !23}
!118 = !{!119, !12, i64 0}
!119 = !{!"VEC_loop_p_base", !12, i64 0, !12, i64 4, !6, i64 8}
!120 = !{!121, !9, i64 0}
!121 = !{!"", !9, i64 0, !9, i64 8, !12, i64 16, !15, i64 24}
!122 = !{!121, !9, i64 8}
!123 = !{!124, !12, i64 16}
!124 = !{!"bitmap_element_def", !9, i64 0, !9, i64 8, !12, i64 16, !6, i64 24}
!125 = !{!121, !12, i64 16}
!126 = !{!121, !15, i64 24}
!127 = distinct !{!127, !23}
!128 = distinct !{!128, !23}
!129 = !{!124, !9, i64 0}
!130 = distinct !{!130, !23}
!131 = distinct !{!131, !23}
!132 = distinct !{!132, !23}
!133 = distinct !{!133, !23}
!134 = !{!11, !9, i64 40}
!135 = !{!136, !12, i64 4}
!136 = !{!"ssa_operand_iterator_d", !6, i64 0, !12, i64 4, !9, i64 8, !9, i64 16, !12, i64 24, !12, i64 28, !9, i64 32}
!137 = !{!136, !6, i64 0}
!138 = !{!136, !9, i64 16}
!139 = !{!140, !9, i64 0}
!140 = !{!"use_optype_d", !9, i64 0, !63, i64 8}
!141 = !{!136, !9, i64 8}
!142 = !{!143, !9, i64 8}
!143 = !{!"def_optype_d", !9, i64 0, !9, i64 8}
!144 = !{!143, !9, i64 0}
!145 = distinct !{!145, !23}
!146 = distinct !{!146, !23}
!147 = distinct !{!147, !23}
!148 = distinct !{!148, !23}
!149 = distinct !{!149, !23}
!150 = distinct !{!150, !23}
!151 = distinct !{!151, !23}
!152 = !{!153, !9, i64 0}
!153 = !{!"gimple_bb_info", !9, i64 0, !9, i64 8}
!154 = !{!155, !9, i64 0}
!155 = !{!"gimple_seq_d", !9, i64 0, !9, i64 8, !9, i64 16}
!156 = !{!63, !9, i64 0}
!157 = !{!63, !9, i64 8}
!158 = !{!155, !9, i64 8}
!159 = distinct !{!159, !23}
!160 = !{!85, !9, i64 8}
!161 = !{!85, !9, i64 0}
